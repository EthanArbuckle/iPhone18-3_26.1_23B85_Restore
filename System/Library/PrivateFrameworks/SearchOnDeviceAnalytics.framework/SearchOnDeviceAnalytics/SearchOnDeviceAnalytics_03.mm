uint64_t sub_21AFC37D8(uint64_t a1)
{
  v75 = a1;
  v2 = sub_21B111334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v78 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v65 - v7;
  v8 = sub_21B1112A4();
  v84 = *(v8 - 8);
  v9 = v84[8];
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B110F84();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B111514();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v76 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 64);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v19);
  if (!result)
  {
    return result;
  }

  v22 = v21;
  v69 = v16;
  v70 = v15;
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 32);
  swift_unknownObjectRetain();
  if ((v24(ObjectType, v22) & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  swift_getObjectType();
  v25 = dynamic_cast_existential_1_conditional(v19);
  if (!v25)
  {
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v33 = sub_21B1122D4();
    __swift_project_value_buffer(v33, qword_2811FAB28);
    v34 = sub_21B1122B4();
    v35 = sub_21B112704();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21AF80000, v34, v35, "Failed to find SODAHostEnvironment for harvesting telemetry", v36, 2u);
      MEMORY[0x21CEEA9A0](v36, -1, -1);
    }

    sub_21AFC53EC();
    swift_allocError();
    *v37 = 3;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v66 = v26;
  v67 = v25;
  swift_unknownObjectRetain();
  sub_21B111534();
  result = sub_21B1114B4();
  v28 = *(result + 16);
  v29 = v28 - v27;
  v68 = v19;
  if (v28 == v27)
  {

    v30 = 0;
    v31 = 0;
    v8 = v69;
    v32 = v77;
LABEL_31:
    v52 = v72;
    sub_21B110F64();
    sub_21B110F44();
    v54 = v53;
    (*(v73 + 8))(v52, v74);
    v55 = v32;
    v56 = sub_21B0BE474();
    v40 = v32;
    v29 = v70;
    if (v55)
    {
      if (qword_2811FAAD8 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    v62 = (v54 - v56) / 604800.0 + -1.0;
    v63 = swift_getObjectType();
    result = sub_21B0C67B8(v63, v66);
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v64 = v70;
      if (v62 > -9.22337204e18)
      {
        if (v62 < 9.22337204e18)
        {
          sub_21AFCB8A0(v31, v30, v62);
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          return (*(v8 + 8))(v76, v64);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v28 <= v27)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v27 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v28)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v71 = 0;
  v83 = v84[2];
  v84 += 2;
  v38 = (*(v84 + 64) + 32) & ~*(v84 + 64);
  v39 = v84[7];
  v81 = v3 + 16;
  v82 = v39;
  v80 = v3 + 8;
  v40 = (v84 - 1);
  v65 = result;
  v41 = result + v38 + v27 * v39;
  while (1)
  {
    v83(v11, v41, v8);
    v42 = sub_21B111294();
    if (!*(v42 + 16) || (v43 = sub_21AF98B58(0x735F657669746361, 0xEF736E6F69737365), (v44 & 1) == 0))
    {

      goto LABEL_23;
    }

    v45 = v79;
    (*(v3 + 16))(v79, *(v42 + 56) + *(v3 + 72) * v43, v2);

    sub_21B111314();
    (*(v3 + 8))(v45, v2);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_23:
    v46 = sub_21B111294();
    if (*(v46 + 16) && (v47 = sub_21AF98B58(0x65735F6C61746F74, 0xEE00736E6F697373), (v48 & 1) != 0))
    {
      v49 = v2;
      v50 = v78;
      (*(v3 + 16))(v78, *(v46 + 56) + *(v3 + 72) * v47, v49);

      sub_21B111314();
      v51 = v50;
      v2 = v49;
      (*(v3 + 8))(v51, v49);
      (*v40)(v11, v8);
      if (swift_dynamicCast())
      {
        if (__CFADD__(v71, v85))
        {
          goto LABEL_41;
        }

        LODWORD(v71) = v71 + v85;
      }
    }

    else
    {

      (*v40)(v11, v8);
    }

    v41 += v82;
    if (!--v29)
    {

      v31 = HIDWORD(v71);
      v30 = v71;
      v32 = v77;
      v8 = v69;
      goto LABEL_31;
    }
  }

  if (!__CFADD__(HIDWORD(v71), v85))
  {
    HIDWORD(v71) += v85;
    goto LABEL_23;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_33:
  v57 = sub_21B1122D4();
  __swift_project_value_buffer(v57, qword_2811FAB28);
  v58 = sub_21B1122B4();
  v59 = sub_21B112704();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_21AF80000, v58, v59, "Failed to find data start time for harvesting telemetry", v60, 2u);
    MEMORY[0x21CEEA9A0](v60, -1, -1);
  }

  sub_21AFC53EC();
  swift_allocError();
  *v61 = 3;
  swift_willThrow();

  swift_unknownObjectRelease_n();
  return (*(v8 + 8))(v76, v29);
}

uint64_t sub_21AFC4100(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43580, &qword_21B116E70);
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC52D0();
  sub_21B112F34();
  v13[30] = 0;
  sub_21AFC57F0();
  sub_21B112AC4();
  v11 = v13[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
  v13[15] = 1;
  sub_21AFC5844(&qword_27CD43590);
  sub_21B112A84();
  (*(v5 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_21AFC430C(uint64_t a1, char a2, uint64_t a3)
{
  sub_21AF92198(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  result = swift_dynamicCast();
  if (result)
  {
    if (sub_21AFAC470(a2 & 1, v7))
    {
      if (a3)
      {
        if (v8)
        {

          v6 = sub_21B09984C(a3, v8);
          swift_bridgeObjectRelease_n();
          if (v6)
          {
            return 1;
          }
        }

        return 0;
      }

      if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_21AFC43DC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x6867696C746F7073;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v6)
  {
    v8 = 0x800000021B12FFA0;
  }

  else
  {
    v8 = 0xEE00797272614374;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x6867696C746F7073;
  }

  else
  {
    v10 = 0xD000000000000010;
  }

  if (v9)
  {
    v11 = 0x800000021B12FFA0;
  }

  else
  {
    v11 = 0xEE00797272614374;
  }

  if (v7 == v10 && v8 == v11)
  {

    if (a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = sub_21B112D04();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

    if (a2)
    {
LABEL_19:
      if (a4)
      {

        v15 = sub_21B09984C(a2, a4);

        if (v15)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return !a4;
}

uint64_t sub_21AFC44E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795464616F6C7075 && a2 == 0xEA00000000006570;
  if (v4 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B132E70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21AFC45D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x795464616F6C7075;
  }
}

uint64_t sub_21AFC461C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AFC44E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AFC4664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AFC45C0();
  *a1 = result;
  return result;
}

uint64_t sub_21AFC468C(uint64_t a1)
{
  v2 = sub_21AFC52D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AFC46C8(uint64_t a1)
{
  v2 = sub_21AFC52D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21AFC4704(void *a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43530, &unk_21B116E40);
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC52D0();
  sub_21B112F44();
  v20 = a2 & 1;
  v19 = 0;
  sub_21AFC5324();
  sub_21B112B54();
  if (!v3)
  {
    v17[1] = a3;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
    sub_21AFC5844(&qword_27CD43548);
    sub_21B112B04();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_21AFC48D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21AFC4100(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_21AFC4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21B110D94();
  v11 = OUTLINED_FUNCTION_1(v10);
  v65 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v49[-v18];
  *(v5 + 16) = 0;
  sub_21AFC555C(a3, __dst, &qword_27CD43568, &unk_21B1290A0);
  if (!__dst[3])
  {
    v22 = a4;
    sub_21AFA8918(__dst, &qword_27CD43568, &unk_21B1290A0);
LABEL_7:
    sub_21AFC55C4();
    swift_allocError();
    *v23 = 0xD00000000000001BLL;
    v23[1] = 0x800000021B132E50;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_21AFA8918(v22, &qword_27CD42EF0, qword_21B114840);
    sub_21AFA8918(a3, &qword_27CD43568, &unk_21B1290A0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = a4;
    goto LABEL_7;
  }

  v55 = v5;
  v50 = LOBYTE(v62[0]);
  v20 = v62[1];
  sub_21AFC555C(a4, v63, &qword_27CD42EF0, qword_21B114840);
  v53 = a4;
  v54 = a3;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = sub_21B112334();
  }

  v51 = v21;
  v52 = a1;
  v62[8] = a1;
  v62[9] = a2;
  v62[15] = v21;
  type metadata accessor for UploadBlock();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();

  v26 = [v25 bundleForClass_];
  v27 = sub_21B1123D4();
  v28 = sub_21B1123D4();
  v29 = [v26 URLForResource:v27 withExtension:v28];

  if (!v29)
  {
    sub_21AFC53EC();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  sub_21B110D34();

  v30 = v65;
  (*(v65 + 32))(v19, v17, v10);
  v31 = sub_21B110B84();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_21B110B74();
  v34 = v56;
  v35 = sub_21B110DC4();
  if (v34)
  {
    (*(v30 + 8))(v19, v10);

LABEL_13:
    v5 = v55;
    OUTLINED_FUNCTION_1_10(v53);
    sub_21AFA8918(v54, &qword_27CD43568, &unk_21B1290A0);
    OUTLINED_FUNCTION_1_10(v63);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v39 = v35;
  v40 = v36;
  sub_21AFC5618();
  sub_21B110B64();
  v5 = v55;
  v41 = OUTLINED_FUNCTION_2_11();
  v42(v41);
  sub_21AF99728(v39, v40);

  *&v62[1] = v57;
  v62[3] = v58;
  v62[4] = v59;
  *&v62[5] = v60;
  v62[7] = v61;
  sub_21AFC555C(v63, &v62[10], &qword_27CD42EF0, qword_21B114840);
  LOBYTE(v62[16]) = v50;
  v43 = sub_21B110DF4();
  if (v44 >> 60 != 15)
  {
    v46 = v43;
    v47 = v44;
    sub_21AF99818(v43, v44);
    v48 = sub_21AFC566C(v46, v47);

    sub_21AFC5440(v46, v47);
    sub_21AFA8918(v53, &qword_27CD42EF0, qword_21B114840);
    sub_21AFA8918(v54, &qword_27CD43568, &unk_21B1290A0);
    sub_21AFA8918(v63, &qword_27CD42EF0, qword_21B114840);
    v62[0] = v48;
    v5 = v55;
    memcpy(__dst, v62, 0x81uLL);
    memcpy((v55 + 24), __dst, 0x81uLL);
    return v5;
  }

  sub_21AFC53EC();
  swift_allocError();
  *v45 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_1_10(v53);
  sub_21AFA8918(v54, &qword_27CD43568, &unk_21B1290A0);
  OUTLINED_FUNCTION_1_10(v63);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_10(&v62[10]);

LABEL_14:
  type metadata accessor for UploadBlock();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_21AFC4FDC(uint64_t a1)
{
  sub_21AFC2D48(a1);
  if (!v2)
  {
    *(v1 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21AFC501C()
{
  sub_21AFA8918(v0 + 24, &qword_27CD43550, &unk_21B116E50);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_21AFC5088(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21AFC50DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21AFC5148(uint64_t a1)
{
  v2 = *v1;
  sub_21AFC4FDC(a1);
  return 1;
}

unint64_t sub_21AFC5198()
{
  result = qword_27CD43518;
  if (!qword_27CD43518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43518);
  }

  return result;
}

unint64_t sub_21AFC51F0()
{
  result = qword_27CD43520;
  if (!qword_27CD43520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43520);
  }

  return result;
}

id sub_21AFC5244(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B110E34();
    sub_21AFC5440(a2, a3);
  }

  v8 = [v3 initWithType:a1 data:v5];

  return v8;
}

unint64_t sub_21AFC52D0()
{
  result = qword_27CD43538;
  if (!qword_27CD43538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43538);
  }

  return result;
}

unint64_t sub_21AFC5324()
{
  result = qword_27CD43540;
  if (!qword_27CD43540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43540);
  }

  return result;
}

unint64_t sub_21AFC53EC()
{
  result = qword_27CD43558;
  if (!qword_27CD43558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43558);
  }

  return result;
}

uint64_t sub_21AFC5440(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AF99728(a1, a2);
  }

  return a1;
}

unint64_t sub_21AFC5504()
{
  result = qword_27CD433D8;
  if (!qword_27CD433D8)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD433D8);
  }

  return result;
}

uint64_t sub_21AFC555C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_21AFC55C4()
{
  result = qword_27CD43570;
  if (!qword_27CD43570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43570);
  }

  return result;
}

unint64_t sub_21AFC5618()
{
  result = qword_27CD43578;
  if (!qword_27CD43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43578);
  }

  return result;
}

uint64_t sub_21AFC566C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B110EA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_21AF98C84(v10, 0);
      v14 = sub_21B110DE4();
      sub_21AF99728(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_21AF99728(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v13;
  }
}

unint64_t sub_21AFC57F0()
{
  result = qword_27CD43588;
  if (!qword_27CD43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43588);
  }

  return result;
}

uint64_t sub_21AFC5844(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47280, &qword_21B12A150);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadBlock.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AFC59A0()
{
  result = qword_27CD43598;
  if (!qword_27CD43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43598);
  }

  return result;
}

unint64_t sub_21AFC59F4(uint64_t a1)
{
  result = sub_21AFC55C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21AFC5A20()
{
  result = qword_27CD435A0;
  if (!qword_27CD435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435A0);
  }

  return result;
}

unint64_t sub_21AFC5A78()
{
  result = qword_27CD435A8;
  if (!qword_27CD435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return sub_21AFA8918(a1, v1, v2);
}

id sub_21AFC5B20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21B1123D4();
  if (a3)
  {
    a3 = sub_21B1122E4();
  }

  v6 = [v3 retrieveAssetSet:v5 usages:a3];

  return v6;
}

uint64_t sub_21AFC5BA4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_21AFC5C14(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_21AFC5C14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_21AFC5C84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B110D94();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  sub_21AFC6010(a1, &v34);
  if (v35)
  {
    sub_21AF81D68(&v34, v36);
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v13 = sub_21B1122D4();
    __swift_project_value_buffer(v13, qword_2811FAB28);
    sub_21AF92198(v36, &v34);
    sub_21AF92198(v36, v33);
    sub_21AF92198(v36, v32);
    v14 = sub_21B1122B4();
    v15 = sub_21B1126E4();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_18_3();
      v16 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v16 = 136643331;
      v17 = __swift_project_boxed_opaque_existential_0(&v34, v35);
      (*(v7 + 16))(v12, v17, v4);
      sub_21AFC9108();
      sub_21B112B84();
      v31 = a2;
      (*(v7 + 8))(v12, v4);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      v18 = OUTLINED_FUNCTION_35_2();
      v21 = sub_21AFCEC24(v18, v19, v20);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      __swift_project_boxed_opaque_existential_0(v33, v33[3]);
      OUTLINED_FUNCTION_45();
      v22 = type metadata accessor for SODAAsset();
      v23 = (v21 + *(v22 + 24));
      v24 = *v23;
      v25 = v23[1];

      __swift_destroy_boxed_opaque_existential_0(v33);
      sub_21AFCEC24(v24, v25, &v37);
      OUTLINED_FUNCTION_21_2();

      *(v16 + 14) = v24;
      *(v16 + 22) = 2048;
      v26 = __swift_project_boxed_opaque_existential_0(v32, v32[3]);
      v27 = *(v22 + 20);
      a2 = v31;
      v28 = *(v26 + v27);
      __swift_destroy_boxed_opaque_existential_0(v32);
      *(v16 + 24) = v28;
      _os_log_impl(&dword_21AF80000, v14, v15, "Successfully fetched recipe location %{sensitive}s, asset version: %s, content version: %lu ", v16, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v32);

      __swift_destroy_boxed_opaque_existential_0(&v34);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    v30 = __swift_project_boxed_opaque_existential_0(v36, v36[3]);
    (*(v7 + 16))(a2, v30, v4);
    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_21AFA8918(&v34, &qword_27CD435B0, &unk_21B1170D0);
    sub_21AFC90B4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_21AFC6010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = sub_21B110D94();
  v4 = OUTLINED_FUNCTION_1(v75);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  sub_21AFC6760(a1, v92);
  v12 = (v2 + *(type metadata accessor for SODAAssetProvider() + 28));
  v13 = *v12;
  sub_21AFC7C04(a1, v12[1], v90);
  sub_21AFC91AC(v92, &v86);
  if (v87)
  {
    sub_21AF81D68(&v86, v89);
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v14 = sub_21B1122D4();
    __swift_project_value_buffer(v14, qword_2811FAB28);
    sub_21AF92198(a1, &v86);
    sub_21AF92198(v89, &v83);
    sub_21AF92198(v89, v81);
    sub_21AF92198(v89, v79);
    v15 = sub_21B1122B4();
    v16 = sub_21B1126F4();
    v17 = &unk_21B117000;
    v74 = v6;
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      v78[0] = OUTLINED_FUNCTION_38_2();
      *v18 = 136315907;
      v73 = v16;
      v19 = v88;
      __swift_project_boxed_opaque_existential_0(&v86, v87);
      v20 = *(v19 + 24);
      v21 = OUTLINED_FUNCTION_20_3();
      v22(v21, v19);
      __swift_destroy_boxed_opaque_existential_0(&v86);
      v23 = OUTLINED_FUNCTION_35_2();
      v26 = sub_21AFCEC24(v23, v24, v25);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2080;
      __swift_project_boxed_opaque_existential_0(&v83, v84);
      OUTLINED_FUNCTION_45();
      v27 = type metadata accessor for SODAAsset();
      v28 = (v26 + *(v27 + 24));
      v29 = *v28;
      v30 = v28[1];

      __swift_destroy_boxed_opaque_existential_0(&v83);
      sub_21AFCEC24(v29, v30, v78);
      OUTLINED_FUNCTION_20_3();

      *(v18 + 14) = v29;
      *(v18 + 22) = 2048;
      v31 = *(__swift_project_boxed_opaque_existential_0(v81, v82) + *(v27 + 20));
      __swift_destroy_boxed_opaque_existential_0(v81);
      *(v18 + 24) = v31;
      *(v18 + 32) = 2085;
      v32 = __swift_project_boxed_opaque_existential_0(v79, v80);
      (*(v6 + 16))(v11, v32, v75);
      v33 = sub_21B110C94();
      v35 = v34;
      (*(v6 + 8))(v11, v75);
      __swift_destroy_boxed_opaque_existential_0(v79);
      v36 = v33;
      v17 = &unk_21B117000;
      v37 = sub_21AFCEC24(v36, v35, v78);

      *(v18 + 34) = v37;
      _os_log_impl(&dword_21AF80000, v15, v73, "Successfully fetched UAF asset: %s, asset version: %s, content version: %lu, from %{sensitive}s", v18, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v81);

      __swift_destroy_boxed_opaque_existential_0(&v86);
      __swift_destroy_boxed_opaque_existential_0(&v83);
      __swift_destroy_boxed_opaque_existential_0(v79);
    }

    sub_21AFC91AC(v90, &v83);
    if (v84)
    {
      sub_21AF81D68(&v83, &v86);
      sub_21AF92198(a1, &v83);
      sub_21AF92198(&v86, v81);
      sub_21AF92198(&v86, v79);
      sub_21AF92198(&v86, v78);
      v40 = sub_21B1122B4();
      v41 = sub_21B1126F4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v77 = OUTLINED_FUNCTION_38_2();
        *v42 = v17[5];
        v43 = v85;
        __swift_project_boxed_opaque_existential_0(&v83, v84);
        v44 = *(v43 + 8);
        v45 = OUTLINED_FUNCTION_19_0();
        v47 = v46(v45, v43);
        if (v48)
        {
          v49 = v47;
        }

        else
        {
          v49 = 6369134;
        }

        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0xE300000000000000;
        }

        __swift_destroy_boxed_opaque_existential_0(&v83);
        sub_21AFCEC24(v49, v50, &v77);
        OUTLINED_FUNCTION_19_0();

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        __swift_project_boxed_opaque_existential_0(v81, v82);
        OUTLINED_FUNCTION_45();
        v51 = type metadata accessor for SODAAsset();
        v52 = (v49 + *(v51 + 24));
        v53 = *v52;
        v54 = v52[1];

        __swift_destroy_boxed_opaque_existential_0(v81);
        v55 = OUTLINED_FUNCTION_35_2();
        v58 = sub_21AFCEC24(v55, v56, v57);

        *(v42 + 14) = v58;
        *(v42 + 22) = 2048;
        v59 = *(__swift_project_boxed_opaque_existential_0(v79, v80) + *(v51 + 20));
        __swift_destroy_boxed_opaque_existential_0(v79);
        *(v42 + 24) = v59;
        *(v42 + 32) = 2085;
        v60 = __swift_project_boxed_opaque_existential_0(v78, v78[3]);
        (*(v74 + 16))(v11, v60, v75);
        v61 = sub_21B110C94();
        v63 = v62;
        (*(v74 + 8))(v11, v75);
        __swift_destroy_boxed_opaque_existential_0(v78);
        sub_21AFCEC24(v61, v63, &v77);
        OUTLINED_FUNCTION_19_0();

        *(v42 + 34) = v61;
        _os_log_impl(&dword_21AF80000, v40, v41, "Successfully fetched OS Installed asset: %s, asset version: %s, content version: %lu, from %{sensitive}s", v42, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_44();
        MEMORY[0x21CEEA9A0]();
        OUTLINED_FUNCTION_44();
        MEMORY[0x21CEEA9A0]();

        v64 = OUTLINED_FUNCTION_17_5();
        sub_21AFA8918(v64, v65, &unk_21B1170D0);
        OUTLINED_FUNCTION_15_6();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v79);

        v68 = OUTLINED_FUNCTION_17_5();
        sub_21AFA8918(v68, v69, &unk_21B1170D0);
        OUTLINED_FUNCTION_15_6();
        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(v81);
        __swift_destroy_boxed_opaque_existential_0(&v83);
      }

      __swift_project_boxed_opaque_existential_0(v89, v89[3]);
      OUTLINED_FUNCTION_45();
      v70 = type metadata accessor for SODAAsset();
      v71 = *(&qword_27CD435B0 + *(v70 + 20));
      if (*(__swift_project_boxed_opaque_existential_0(&v86, v87) + *(v70 + 20)) >= v71)
      {
        v72 = &v86;
      }

      else
      {
        v72 = v89;
      }

      sub_21AF92198(v72, a2);
      __swift_destroy_boxed_opaque_existential_0(&v86);
    }

    else
    {
      v66 = OUTLINED_FUNCTION_17_5();
      sub_21AFA8918(v66, v67, &unk_21B1170D0);
      OUTLINED_FUNCTION_15_6();
      sub_21AFA8918(&v83, &qword_27CD435B0, &unk_21B1170D0);
      sub_21AF92198(v89, a2);
    }

    return __swift_destroy_boxed_opaque_existential_0(v89);
  }

  else
  {
    OUTLINED_FUNCTION_15_6();
    result = sub_21AFA8918(&v86, &qword_27CD435B0, &unk_21B1170D0);
    v39 = v90[1];
    *a2 = v90[0];
    *(a2 + 16) = v39;
    *(a2 + 32) = v91;
  }

  return result;
}

uint64_t sub_21AFC6760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v9);
  v242 = &boxed_opaque_existential_1 - v10;
  v240 = sub_21B110CA4();
  v11 = OUTLINED_FUNCTION_1(v240);
  v238 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v239 = v16 - v15;
  v17 = sub_21B110D94();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31_3();
  MEMORY[0x28223BE20](v27);
  v29 = &boxed_opaque_existential_1 - v28;
  v30 = sub_21B111A24();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  result = type metadata accessor for SODAAssetProvider();
  if (*(v4 + *(result + 32)) != 1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v231 = v29;
  v232 = v20;
  v233 = v17;
  v237 = a2;
  v40 = v4[5];
  v41 = v4 + *(result + 24);
  sub_21B111DF4();
  sub_21AFCB4D0(65, v38, &v249);
  (*(v33 + 8))(v38, v30);
  v42 = v4[3];
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v42);
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v45 = sub_21B0E3C3C();
  v47 = v46;
  v48 = a1[3];
  v49 = a1[4];
  v50 = OUTLINED_FUNCTION_30_2();
  __swift_project_boxed_opaque_existential_0(v50, v51);
  v52 = (*(v49 + 40))(v48, v49);
  v53 = (*(v43 + 8))(v45, v47, v52, v42, v43);

  if (!v53)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v64 = sub_21B1122D4();
    __swift_project_value_buffer(v64, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    v65 = sub_21B1122B4();
    v66 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v66))
    {
      v67 = OUTLINED_FUNCTION_37_2();
      v244[0] = swift_slowAlloc();
      *v67 = 136315394;
      v68 = OUTLINED_FUNCTION_17_5();
      __swift_project_boxed_opaque_existential_0(v68, v69);
      OUTLINED_FUNCTION_8_9();
      v71 = v70;
      sub_21B0E3C3C();
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v248);
      v72 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v72, v73, v74);
      OUTLINED_FUNCTION_5_9();

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      v75 = v247[3];
      v76 = v247[4];
      OUTLINED_FUNCTION_9_4(v247);
      v78 = *(v77 + 40);
      v79 = OUTLINED_FUNCTION_2_12();
      v81 = v80(v79);
      sub_21B112314();
      OUTLINED_FUNCTION_25_1();
      __swift_destroy_boxed_opaque_existential_0(v247);
      sub_21AFCEC24(v75, v76, v244);
      OUTLINED_FUNCTION_20_3();

      *(v67 + 14) = v81;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v82, v83, v84, v85, v86, 0x16u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v110();
    goto LABEL_28;
  }

  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v54);
  (*(v55 + 32))(v54, v55);
  v56 = sub_21B1123D4();

  v57 = [v53 assetNamed_];

  if (!v57)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v87 = sub_21B1122D4();
    __swift_project_value_buffer(v87, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    v88 = sub_21B1122B4();
    v89 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v89))
    {
      v90 = OUTLINED_FUNCTION_37_2();
      v244[0] = swift_slowAlloc();
      *v90 = 136315394;
      OUTLINED_FUNCTION_9_4(v248);
      v92 = *(v91 + 24);
      v93 = OUTLINED_FUNCTION_2_12();
      v94(v93);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v248);
      v95 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v95, v96, v97);
      OUTLINED_FUNCTION_5_9();

      *(v90 + 4) = v56;
      *(v90 + 12) = 2080;
      OUTLINED_FUNCTION_9_4(v247);
      v99 = *(v98 + 32);
      v100 = OUTLINED_FUNCTION_2_12();
      v101(v100);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v247);
      v102 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v102, v103, v104);
      OUTLINED_FUNCTION_5_9();

      *(v90 + 14) = v56;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v105, v106, v107, v108, v109, 0x16u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v111();

    goto LABEL_28;
  }

  v58 = [v57 location];
  if (!v58)
  {
    goto LABEL_22;
  }

  v59 = v58;
  sub_21B110D34();

  v60 = v232;
  v61 = v231;
  v62 = v233;
  (*(v232 + 32))(v231, v3, v233);
  v63 = sub_21B110D14();
  if ((v63 & 1) == 0)
  {
    (*(v60 + 8))(v61, v62);
LABEL_22:
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v123 = sub_21B1122D4();
    __swift_project_value_buffer(v123, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    sub_21AF92198(a1, v244);
    v124 = sub_21B1122B4();
    v125 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v125))
    {
      OUTLINED_FUNCTION_18_3();
      v126 = swift_slowAlloc();
      v243 = OUTLINED_FUNCTION_38_2();
      *v126 = 136315650;
      v127 = OUTLINED_FUNCTION_17_5();
      __swift_project_boxed_opaque_existential_0(v127, v128);
      OUTLINED_FUNCTION_8_9();
      v130 = v129;
      sub_21B0E3C3C();
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v248);
      v131 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v131, v132, v133);
      OUTLINED_FUNCTION_5_9();

      *(v126 + 4) = v130;
      *(v126 + 12) = 2080;
      OUTLINED_FUNCTION_9_4(v247);
      v135 = *(v134 + 32);
      v136 = OUTLINED_FUNCTION_2_12();
      v137(v136);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v247);
      v138 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v138, v139, v140);
      OUTLINED_FUNCTION_5_9();

      *(v126 + 14) = v130;
      *(v126 + 22) = 2080;
      v141 = v245;
      v142 = v246;
      OUTLINED_FUNCTION_9_4(v244);
      v144 = *(v143 + 40);
      v145 = OUTLINED_FUNCTION_2_12();
      v147 = v146(v145);
      sub_21B112314();
      OUTLINED_FUNCTION_25_1();
      __swift_destroy_boxed_opaque_existential_0(v244);
      sub_21AFCEC24(v141, v142, &v243);
      OUTLINED_FUNCTION_20_3();

      *(v126 + 24) = v147;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v148, v149, v150, v151, v152, 0x20u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
      __swift_destroy_boxed_opaque_existential_0(v244);
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v153();

    goto LABEL_28;
  }

  v229 = v57;
  v230 = v53;
  v112 = a1[3];
  v113 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v112);
  v248[0] = (*(v113 + 16))(v112, v113);
  v248[1] = v114;
  v115 = v238;
  v117 = v238 + 104;
  v116 = *(v238 + 104);
  v118 = v239;
  v226 = *MEMORY[0x277CC91D8];
  v119 = v240;
  v228 = v116;
  v116(v239);
  v227 = sub_21AFC921C();
  sub_21B110D84();
  v120 = v119;
  v121 = *(v115 + 8);
  v121(v118, v120);

  v122 = sub_21B110D14();
  v238 = v117;
  if (v122)
  {
    v155 = v250;
    v156 = v251;
    __swift_project_boxed_opaque_existential_0(&v249, v250);
    (*(v156 + 8))(81, v155, v156);
    v157 = *(v232 + 16);
    v158 = v235;
    v159 = v233;
    v157(v235, v241, v233);
    v160 = [v229 metadata];
    v234 = sub_21B112304();

    v161 = type metadata accessor for SODAAsset();
    v162 = v237;
    v237[3] = v161;
    v162[4] = &off_282C96950;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v162);
    v157(boxed_opaque_existential_1, v158, v159);
    v163 = v121;
    v164 = v239;
    v165 = v240;
    v228(v239, v226, v240);
    sub_21B110D74();
    v163(v164, v165);
    v207 = sub_21B110DC4();
    v209 = v208;
    v210 = v161;
    v211 = sub_21B110B84();
    v212 = *(v211 + 48);
    v213 = *(v211 + 52);
    swift_allocObject();
    sub_21B110B74();
    sub_21AFC92C0();
    sub_21B110B64();
    v214 = v234;
    v215 = *(v232 + 8);
    v216 = v233;
    v215(v236, v233);

    sub_21AF99728(v207, v209);
    v217 = v210;
    v218 = boxed_opaque_existential_1;
    *(boxed_opaque_existential_1 + *(v210 + 20)) = v248[0];
    v219 = OUTLINED_FUNCTION_23_3();
    v221 = sub_21B0DF160(v219, v220, v214);
    v223 = v222;

    if (!v223)
    {
      v221 = 0x302E302E30;
      v223 = 0xE500000000000000;
    }

    v215(v158, v216);
    v224 = (v218 + *(v217 + 24));
    *v224 = v221;
    v224[1] = v223;

    v215(v241, v216);
    v215(v231, v216);
    return __swift_destroy_boxed_opaque_existential_0(&v249);
  }

  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v166 = sub_21B1122D4();
  __swift_project_value_buffer(v166, qword_2811FAB28);
  v167 = v232;
  v168 = v234;
  v169 = v241;
  v170 = v233;
  (*(v232 + 16))(v234, v241, v233);
  sub_21AF92198(a1, v248);
  OUTLINED_FUNCTION_36_2();
  sub_21AF92198(a1, v244);
  v171 = sub_21B1122B4();
  v172 = sub_21B112704();
  if (OUTLINED_FUNCTION_14_6(v172))
  {
    v173 = v168;
    v174 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    *v174 = 136643587;
    sub_21AFC9108();
    sub_21B112B84();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_27_3();
    v167(v173, v170);
    v175 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v175, v176, v177);
    OUTLINED_FUNCTION_5_9();

    *(v174 + 4) = v173;
    *(v174 + 12) = 2080;
    v178 = OUTLINED_FUNCTION_17_5();
    __swift_project_boxed_opaque_existential_0(v178, v179);
    OUTLINED_FUNCTION_8_9();
    v181 = v180;
    sub_21B0E3C3C();
    OUTLINED_FUNCTION_10_5();
    __swift_destroy_boxed_opaque_existential_0(v248);
    v182 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v182, v183, v184);
    OUTLINED_FUNCTION_5_9();

    *(v174 + 14) = v181;
    *(v174 + 22) = 2080;
    OUTLINED_FUNCTION_9_4(v247);
    v186 = *(v185 + 32);
    v187 = OUTLINED_FUNCTION_2_12();
    v188(v187);
    OUTLINED_FUNCTION_10_5();
    __swift_destroy_boxed_opaque_existential_0(v247);
    v189 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v189, v190, v191);
    OUTLINED_FUNCTION_5_9();

    *(v174 + 24) = v181;
    *(v174 + 32) = 2080;
    v169 = v241;
    v192 = v245;
    v193 = v246;
    OUTLINED_FUNCTION_9_4(v244);
    v195 = *(v194 + 40);
    v196 = OUTLINED_FUNCTION_2_12();
    v198 = v197(v196);
    sub_21B112314();
    OUTLINED_FUNCTION_25_1();
    __swift_destroy_boxed_opaque_existential_0(v244);
    sub_21AFCEC24(v192, v193, &v243);
    OUTLINED_FUNCTION_20_3();
    v170 = v233;

    *(v174 + 34) = v198;
    OUTLINED_FUNCTION_13_4();
    _os_log_impl(v199, v200, v201, v202, v203, 0x2Au);
    OUTLINED_FUNCTION_32_2();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {

    OUTLINED_FUNCTION_27_3();
    v167(v168, v170);
    OUTLINED_FUNCTION_29_3();
    __swift_destroy_boxed_opaque_existential_0(v244);
  }

  v204 = v230;
  v205 = v229;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_33_3();
  v206();

  v167(v169, v170);
  v167(v231, v170);
LABEL_28:
  v154 = v237;
  v237[4] = 0;
  *v154 = 0u;
  *(v154 + 1) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(&v249);
}

void sub_21AFC7C04(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a2;
  v79 = sub_21B110CA4();
  v6 = OUTLINED_FUNCTION_1(v79);
  v75 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v67 - v15;
  v17 = sub_21B110D94();
  v18 = OUTLINED_FUNCTION_1(v17);
  v80 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v76 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_2();
  v77 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_2();
  v78 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31_3();
  MEMORY[0x28223BE20](v28);
  v30 = v67 - v29;
  v31 = *(a1 + 24);
  v32 = *(a1 + 32);
  v33 = OUTLINED_FUNCTION_8_9();
  __swift_project_boxed_opaque_existential_0(v33, v34);
  v35 = *(v32 + 8);
  v36 = OUTLINED_FUNCTION_5_9();
  v37(v36, v32);
  if (v38)
  {
    OUTLINED_FUNCTION_10_5();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    sub_21B112484();
    sub_21B110D24();
    sub_21AFA8918(v16, &qword_27CD43750, &qword_21B117A30);

    v81 = a1;
    v82 = v31;
    v71 = *MEMORY[0x277CC91D8];
    v39 = v75;
    v70 = *(v75 + 104);
    v40 = v79;
    v70(v12);
    v69 = sub_21AFC921C();
    sub_21B110D84();
    v68 = *(v39 + 8);
    v68(v12, v40);
    v41 = v80;
    v75 = *(v80 + 8);
    (v75)(v3, v17);

    v42 = *(v41 + 16);
    v43 = v78;
    v73 = v30;
    v42(v78, v30, v17);
    v74 = sub_21B112334();
    v44 = type metadata accessor for SODAAsset();
    *(a3 + 24) = v44;
    *(a3 + 32) = &off_282C96950;
    v67[1] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v45 = v17;
    v80 = v41 + 16;
    v67[0] = v42;
    v42(boxed_opaque_existential_1, v43, v17);
    v46 = v79;
    (v70)(v12, v71, v79);
    sub_21B110D74();
    v68(v12, v46);
    v51 = sub_21B110DC4();
    v53 = v52;
    v54 = sub_21B110B84();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_21B110B74();
    sub_21AFC92C0();
    sub_21B110B64();
    v57 = v75;
    (v75)(v77, v45);

    sub_21AF99728(v51, v53);
    v58 = v44;
    v59 = *(v44 + 20);
    v60 = boxed_opaque_existential_1;
    *(boxed_opaque_existential_1 + v59) = v81;
    v61 = OUTLINED_FUNCTION_23_3();
    v63 = sub_21B0DF160(v61, v62, v74);
    v65 = v64;

    if (!v65)
    {
      v63 = 0x302E302E30;
      v65 = 0xE500000000000000;
    }

    v57(v78, v45);
    v66 = (v60 + *(v58 + 24));
    *v66 = v63;
    v66[1] = v65;
    v57(v73, v45);
  }

  else
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v47 = sub_21B1122D4();
    __swift_project_value_buffer(v47, qword_2811FAB28);
    v48 = sub_21B1122B4();
    v49 = sub_21B1126E4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_21AF80000, v48, v49, "Failed to Fetch OS Installed asset since none specified", v50, 2u);
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_21AFC8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  return MEMORY[0x2822009F8](sub_21AFC8498, 0, 0);
}

uint64_t sub_21AFC8498()
{
  v1 = v0;
  v2 = v0 + 10;
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = v1[28];
  v4 = sub_21B1122D4();
  v1[30] = __swift_project_value_buffer(v4, qword_2811FAB28);
  v5 = OUTLINED_FUNCTION_35_2();
  sub_21AF92198(v5, v6);
  v7 = sub_21B1122B4();
  v8 = sub_21B1126F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_3();
    v34 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = v1[14];
    __swift_project_boxed_opaque_existential_0(v2, v1[13]);
    v11 = *(v10 + 48);
    v12 = OUTLINED_FUNCTION_16_6();
    v14 = v13(v12, v10);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v15 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v15, v16, v17);
    OUTLINED_FUNCTION_16_6();

    *(v9 + 4) = v14;
    _os_log_impl(&dword_21AF80000, v7, v8, "Executing subscription to known recipe: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  v18 = v1[28];
  v19 = v1[29];
  v20 = [objc_opt_self() sharedManager];
  v1[31] = v20;
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = OUTLINED_FUNCTION_8_9();
  __swift_project_boxed_opaque_existential_0(v23, v24);
  v25 = *(v22 + 56);
  v26 = OUTLINED_FUNCTION_2_12();
  v27(v26);
  v28 = sub_21B1123D4();
  v1[32] = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435C8, &qword_21B1170F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21B117050;
  *(v29 + 32) = v19;
  sub_21AFC9314();
  v30 = v19;
  v31 = sub_21B1125E4();
  v1[33] = v31;

  v1[2] = v1;
  v1[3] = sub_21AFC87DC;
  v32 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435D8, &qword_21B1170F8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21AFC5BA4;
  v1[13] = &block_descriptor_0;
  v1[14] = v32;
  [v20 subscribe:v28 subscriptions:v31 queue:0 completion:v2];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21AFC87DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_21AFC8958;
  }

  else
  {
    v3 = sub_21AFC88EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21AFC88EC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21AFC8958()
{
  v38 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  swift_willThrow();

  sub_21AF92198(v6, (v0 + 10));
  sub_21AF92198(v6, (v0 + 18));
  sub_21AF92198(v6, (v0 + 23));
  v7 = sub_21B1122B4();
  v8 = sub_21B112704();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[34];
  if (v9)
  {
    OUTLINED_FUNCTION_18_3();
    v11 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_38_2();
    *v11 = 136315650;
    v12 = v0[14];
    __swift_project_boxed_opaque_existential_0(v0 + 10, v0[13]);
    v13 = *(v12 + 48);
    v14 = OUTLINED_FUNCTION_16_6();
    v16 = v15(v14, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
    v17 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v17, v18, v19);
    OUTLINED_FUNCTION_16_6();

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v20 = v0[22];
    __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
    OUTLINED_FUNCTION_34_3();
    v21 = sub_21B0E3C3C();
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    v22 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v22, v23, v24);
    OUTLINED_FUNCTION_16_6();

    *(v11 + 14) = v21;
    *(v11 + 22) = 2080;
    v25 = v0[27];
    __swift_project_boxed_opaque_existential_0(v0 + 23, v0[26]);
    v26 = *(v25 + 40);
    v27 = OUTLINED_FUNCTION_16_6();
    v29 = v28(v27, v25);
    v30 = sub_21B112314();
    v32 = v31;

    __swift_destroy_boxed_opaque_existential_0(v0 + 23);
    sub_21AFCEC24(v30, v32, &v37);
    OUTLINED_FUNCTION_21_2();

    *(v11 + 24) = v29;
    _os_log_impl(&dword_21AF80000, v7, v8, "Failed to UAFAssetSetManager.subscribe %s, assetSetName: %s, usageTypes: %s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0](v33);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0](v34);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_21AFC8C08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6556657069636572 && a2 == 0xED00006E6F697372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21B112D04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21AFC8CAC()
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21AFC8CF0()
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21AFC8D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AFC8C08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21AFC8D8C(uint64_t a1)
{
  v2 = sub_21AFC9558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AFC8DC8(uint64_t a1)
{
  v2 = sub_21AFC9558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21AFC8E04(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43610, &qword_21B117270);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC9558();
  sub_21B112F34();
  if (!v1)
  {
    v12 = sub_21B112AB4();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_21AFC8F4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43620, &qword_21B117278);
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC9558();
  sub_21B112F44();
  sub_21B112B44();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_30_2();
  return v11(v10);
}

uint64_t sub_21AFC906C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AFC8E04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21AFC90B4()
{
  result = qword_27CD435B8;
  if (!qword_27CD435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435B8);
  }

  return result;
}

unint64_t sub_21AFC9108()
{
  result = qword_2811FAAF0;
  if (!qword_2811FAAF0)
  {
    sub_21B110D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FAAF0);
  }

  return result;
}

uint64_t type metadata accessor for SODAAssetProvider()
{
  result = qword_27CD435E8;
  if (!qword_27CD435E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFC91AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435B0, &unk_21B1170D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFC921C()
{
  result = qword_27CD477D0;
  if (!qword_27CD477D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD477D0);
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
    JUMPOUT(0x21CEEA9A0);
  }

  return result;
}

unint64_t sub_21AFC92C0()
{
  result = qword_27CD435C0;
  if (!qword_27CD435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435C0);
  }

  return result;
}

unint64_t sub_21AFC9314()
{
  result = qword_27CD435D0;
  if (!qword_27CD435D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD435D0);
  }

  return result;
}

uint64_t sub_21AFC93BC()
{
  result = sub_21AFC9498(319, &qword_27CD435F8);
  if (v1 <= 0x3F)
  {
    result = sub_21AFC9498(319, &qword_27CD43600);
    if (v2 <= 0x3F)
    {
      result = sub_21B111E34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21AFC9498(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_21AFC9504()
{
  result = qword_27CD43608;
  if (!qword_27CD43608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43608);
  }

  return result;
}

unint64_t sub_21AFC9558()
{
  result = qword_27CD43618;
  if (!qword_27CD43618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigPlistLoader(unsigned int *a1, int a2)
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

_BYTE *sub_21AFC95FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_21AFC96AC()
{
  result = qword_27CD43628;
  if (!qword_27CD43628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43628);
  }

  return result;
}

unint64_t sub_21AFC9704()
{
  result = qword_27CD43630;
  if (!qword_27CD43630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43630);
  }

  return result;
}

unint64_t sub_21AFC975C()
{
  result = qword_27CD43638;
  if (!qword_27CD43638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43638);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_10()
{
  v1 = *(v0 - 96);
  result = __swift_project_boxed_opaque_existential_0((v0 - 128), *(v0 - 104));
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6()
{
  v2 = *(*(v1 - 360) + 8);
  result = v0;
  v4 = *(v1 - 352);
  return result;
}

BOOL OUTLINED_FUNCTION_14_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_21AFA8918(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_21AF92198(v0, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_25_1()
{
}

uint64_t OUTLINED_FUNCTION_29_3()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_0((v0 - 208));
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_21AF92198(v0, v1 - 208);
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_slowAlloc();
}

uint64_t sub_21AFC9A34(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_21B110F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if ((a2 & 1) == 0)
  {
    sub_21B110F34();
    sub_21B110F04();
    v16 = *(v9 + 8);
    v16(v13, v8);
    sub_21B0B98E8(v15, 1);
    v18 = v17;
    v16(v15, v8);
    if (a4)
    {
      return *&v18;
    }

    else if (v18 >= *&a3)
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_21AFC9BB4(uint64_t result, char a2, double a3, double a4)
{
  v4 = a3 - (a4 + 604800.0);
  if (v4 >= 0.0)
  {
    v5 = v4 / 86400.0;
    if (COERCE__INT64(fabs(v4 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v6 = v5;
        if (v5 > 6)
        {
          return result;
        }

        v7 = v5;
        if ((a2 & 1) == 0)
        {
          v8 = a3 / 86400.0;
          if (v8 <= -9.22337204e18)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v8 >= 9.22337204e18)
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          v9 = *&result / 86400.0;
          v10 = COERCE__INT64(fabs(*&result / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL;
          if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v10)
          {
            goto LABEL_27;
          }

          if (v9 <= -9.22337204e18)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v9 >= 9.22337204e18)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v11 = v8 - v9;
          if (__OFSUB__(v8, v9))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v12 = __OFSUB__(v11, 1);
          v7 = v11 - 1;
          if (v12)
          {
LABEL_31:
            __break(1u);
            return result;
          }
        }

        if (v7 >= v6)
        {
          v7 = v6;
        }

        v12 = __OFSUB__(7, v6);
        v13 = 7 - v6;
        if (!v12)
        {
          if (!__OFADD__(v13, v7))
          {
            return result;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21AFC9D08()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_21AF93F6C(v1, &v10 - v4);
  v6 = sub_21B111DA4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_21AF9F660(v5, &qword_27CD42C28, &unk_21B113F30);
    return 0x636F486441;
  }

  else
  {
    v7 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
    OUTLINED_FUNCTION_7_2(v6);
    (*(v8 + 8))(v5, v6);
  }

  return v7;
}

uint64_t sub_21AFC9E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  OUTLINED_FUNCTION_7_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  sub_21AF93F6C(v3, &v17[-v10]);
  v12 = sub_21B111DA4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_2(v12);
  LODWORD(result) = (*(v14 + 88))(v11, v12);
  if (result == *MEMORY[0x277D39E10] || result == *MEMORY[0x277D39E08])
  {
    if (!a2)
    {
      return 0;
    }

    sub_21AFB4EF8(a1, a2, v18);
    result = OUTLINED_FUNCTION_0_11();
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x277D39DF8] && result != *MEMORY[0x277D39E00])
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    return 0;
  }

  sub_21AFB4EF8(a1, a2, v18);
  result = OUTLINED_FUNCTION_0_11();
  if (result < 0)
  {
    __break(1u);
LABEL_20:
    result = sub_21B112CF4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AFC9FB0(uint64_t a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
      return 51;
    case 10:
      result = 4;
      break;
    case 11:
      result = 5;
      break;
    case 12:
      result = 6;
      break;
    case 13:
      result = 7;
      break;
    case 20:
      result = 8;
      break;
    case 21:
      result = 9;
      break;
    case 22:
      result = 10;
      break;
    case 23:
      result = 11;
      break;
    case 24:
      result = 12;
      break;
    case 25:
      result = 13;
      break;
    case 26:
      result = 14;
      break;
    case 27:
      result = 15;
      break;
    case 28:
      result = 16;
      break;
    case 29:
      result = 17;
      break;
    case 30:
      result = 18;
      break;
    case 50:
      result = 19;
      break;
    case 51:
      result = 20;
      break;
    case 61:
      result = 21;
      break;
    case 62:
      result = 22;
      break;
    case 63:
      result = 23;
      break;
    case 64:
      result = 24;
      break;
    case 65:
      result = 25;
      break;
    case 66:
      result = 26;
      break;
    case 67:
      result = 27;
      break;
    default:
      if (!v2 & v1)
      {
        switch(a1)
        {
          case 300:
            return 42;
          case 301:
            return 43;
          case 302:
            return 44;
          default:
            return 51;
        }
      }

      else
      {
        switch(a1)
        {
          case 200:
            result = 32;
            break;
          case 201:
            result = 33;
            break;
          case 202:
            result = 34;
            break;
          case 203:
            result = 35;
            break;
          case 204:
            result = 36;
            break;
          case 205:
            result = 37;
            break;
          case 206:
            result = 38;
            break;
          case 207:
            result = 39;
            break;
          case 208:
            result = 40;
            break;
          case 209:
            result = 41;
            break;
          default:
            JUMPOUT(0);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_21AFCA23C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AFC9FB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21AFCA268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AFC9F9C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21AFCA294()
{
  v0 = type metadata accessor for RecipeIdentifier();
  __swift_allocate_value_buffer(v0, qword_27CD6E770);
  v1 = __swift_project_value_buffer(v0, qword_27CD6E770);
  v2 = sub_21B111DA4();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  *(v1 + *(v0 + 20)) = 0;
  return result;
}

BOOL static RecipeIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43640, &qword_21B1173A8) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21AF93F6C(a1, &v24 - v16);
  sub_21AF93F6C(a2, &v17[v18]);
  OUTLINED_FUNCTION_3_11(v17);
  if (!v19)
  {
    sub_21AF93F6C(v17, v12);
    OUTLINED_FUNCTION_3_11(&v17[v18]);
    if (!v19)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_21AFCA5DC();
      v21 = sub_21B1123C4();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21AF9F660(v17, &qword_27CD42C28, &unk_21B113F30);
      if (v21)
      {
        goto LABEL_12;
      }

      return 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_21AF9F660(v17, &qword_27CD43640, &qword_21B1173A8);
    return 0;
  }

  OUTLINED_FUNCTION_3_11(&v17[v18]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_21AF9F660(v17, &qword_27CD42C28, &unk_21B113F30);
LABEL_12:
  v23 = type metadata accessor for RecipeIdentifier();
  return *(a1 + *(v23 + 20)) == *(a2 + *(v23 + 20));
}

uint64_t type metadata accessor for RecipeIdentifier()
{
  result = qword_27CD43650;
  if (!qword_27CD43650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21AFCA5DC()
{
  result = qword_27CD43648;
  if (!qword_27CD43648)
  {
    sub_21B111DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43648);
  }

  return result;
}

void sub_21AFCA660()
{
  sub_21AFCA6D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21AFCA6D4()
{
  if (!qword_27CD43660)
  {
    sub_21B111DA4();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD43660);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecipeActivityOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xCE)
  {
    if (a2 + 50 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 50) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 51;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x33;
  v5 = v6 - 51;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RecipeActivityOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 50 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 50) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xCE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCD)
  {
    v6 = ((a2 - 206) >> 8) + 1;
    *result = a2 + 50;
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
          *result = a2 + 50;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AFCA894()
{
  result = qword_27CD43668;
  if (!qword_27CD43668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43668);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  v2 = *(v0 - 56);
  *(v0 - 80) = *(v0 - 64);
  *(v0 - 72) = v2;

  return Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
}

uint64_t sub_21AFCA92C(uint64_t *a1)
{
  sub_21AF92198(a1, v1 + 56);
  v4 = type metadata accessor for FeedbackSchemaProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_21AFD20D0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
    type metadata accessor for FeedbackSchemaTableProvider();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v4;
    v11 = MEMORY[0x277D3E628];
    *&v9 = v7;
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_21AF81D68(&v9, v1 + 16);
  }

  return v1;
}

void *sub_21AFCA9F8()
{
  result = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  v2 = *(*(*result + 16) + 16);
  if ((v2 - 0x400000000000000) >> 59 == 31)
  {
    return (32 * v2);
  }

  __break(1u);
  return result;
}

unint64_t sub_21AFCAA50@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21B111894();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*__swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80)) + 16);
  v8 = *__swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));

  sub_21B0B0020(v6);
  v9 = type metadata accessor for FeedbackFilesEnumerator();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_21B0D3354(v7, v6);
  a1[3] = v9;
  result = sub_21AFCAC0C();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_21AFCAB38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_21AFCAC0C()
{
  result = qword_27CD43670;
  if (!qword_27CD43670)
  {
    type metadata accessor for FeedbackFilesEnumerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43670);
  }

  return result;
}

void static CASupportedRecipe.allCases.getter()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for CASupportedRecipe();
  v1 = OUTLINED_FUNCTION_10_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_21B111D74();
  v10 = *(v9 + 16);
  if (v10)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21AFCC5F4();
    v16 = sub_21B111DA4();
    v11 = *(v16 - 8);
    v12 = *(v11 + 16);
    v13 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    do
    {
      v12(v8, v13, v16);
      v15 = *(v17 + 16);
      if (v15 >= *(v17 + 24) >> 1)
      {
        sub_21AFCC5F4();
      }

      *(v17 + 16) = v15 + 1;
      sub_21AFCC64C(v8, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_77();
}

uint64_t type metadata accessor for CASupportedRecipe()
{
  result = qword_27CD43690;
  if (!qword_27CD43690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CASupportedRecipe.init(rawValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &a9 - v26;
  v28 = sub_21B111DA4();
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v36 = (v35 - v34);
  v37 = type metadata accessor for CASupportedRecipe();
  v38 = OUTLINED_FUNCTION_4_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v43 = v42 - v41;
  sub_21B111D84();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_21AF99BE0(v27, &qword_27CD42C28, &unk_21B113F30);
    v44 = 1;
  }

  else
  {
    v45 = *(v31 + 32);
    v45(v36, v27, v28);
    v45(v43, v36, v28);
    sub_21AFCC64C(v43, v23);
    v44 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v44, 1, v37);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFCB038@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21B111DA4();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 104);

  return v7(a2, v3, v5);
}

uint64_t sub_21AFCB0A8@<X0>(uint64_t *a1@<X8>)
{
  result = CASupportedRecipe.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21AFCB0F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_21B112904();
    v5 = 0xD000000000000041;
    v6 = 0x800000021B133090;
  }

  else
  {
    sub_21B112904();
    OUTLINED_FUNCTION_5_7();
    v5 = 0xD000000000000039;
  }

  MEMORY[0x21CEE9770](v5, v6);
  MEMORY[0x21CEE9770](a1, a2);
  return 0;
}

uint64_t SODAActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = sub_21B0B522C();
  return v0;
}

uint64_t SODAActivityMonitor.init()()
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = sub_21B0B522C();
  return v0;
}

uint64_t sub_21AFCB270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  result = sub_21AFCB3B4(a2, a3);
  if (!v13)
  {
    v23 = *(v12 + 16);
    return sub_21AF9A6D8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_21AFCB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_21AFCB3B4(a2, a3);
  if (!v9)
  {
    v19 = *(v8 + 16);
    return sub_21AF9B2AC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_21AFCB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_21B111A24();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_21B111E64();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = *(v3 + 16);
  (*(v10 + 16))(v15, a2, v7);

  sub_21B111E74();
  v22 = type metadata accessor for ResourceAccessSpan();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  result = sub_21B0EBE74(v21, a1, v20, 0, 1);
  a3[3] = v22;
  a3[4] = &off_282C93248;
  *a3 = result;
  return result;
}

void sub_21AFCB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_7();
  v6 = sub_21B1123D4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  OUTLINED_FUNCTION_8_10();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v10[2] = v8;
  v10[3] = &block_descriptor_19;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_21AFCB6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  *(inited + 32) = 0x735F657669746361;
  *(inited + 40) = 0xEF736E6F69737365;
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "total_sessions");
  *(inited + 71) = -18;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 0x5F79636E6574616CLL;
  *(inited + 88) = 0xEF737961645F6E69;
  *(inited + 96) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

id sub_21AFCB814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21AFCD0E8();
    v5 = sub_21B1122E4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21AFCB8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_7();
  v6 = sub_21B1123D4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  OUTLINED_FUNCTION_8_10();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v10[2] = v8;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_21AFCB96C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  *(inited + 32) = 0x735F657669746361;
  *(inited + 40) = 0xEF736E6F69737365;
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "total_sessions");
  *(inited + 71) = -18;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000021B133030;
  *(inited + 96) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

void sub_21AFCBA7C()
{
  OUTLINED_FUNCTION_76();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_21B111CB4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_7();
  v13 = sub_21B1123D4();
  (*(v9 + 16))(v12, v5, v6);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v14, v12, v6);
  *(v17 + v15) = v3;
  v18 = v22;
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v23[4] = sub_21AFCD12C;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v23[2] = v19;
  v23[3] = &block_descriptor_1;
  v20 = _Block_copy(v23);

  AnalyticsSendEventLazy();
  _Block_release(v20);

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFCBC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x6D6165727473;
  *(inited + 40) = 0xE600000000000000;
  sub_21B111C74();
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "lostDuration");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 1953722220;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_21B1126B4();
  *(inited + 104) = 0x6574736576726168;
  *(inited + 112) = 0xE900000000000064;
  *(inited + 120) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

void sub_21AFCBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34[3] = a5;
  v34[2] = a4;
  v34[1] = a3;
  v35 = a2;
  v37 = 0xD00000000000001FLL;
  v6 = sub_21B111DA4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = *(v9 + 104);
  v17(v34 - v15, *MEMORY[0x277D39DF8], v6);
  v18 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v16, v6);
  v36 = "Weekly.Intervals";
  if (v18 == a1 && v20 == v35)
  {
    goto LABEL_13;
  }

  v34[0] = a1;
  v23 = v35;
  v24 = sub_21B112D04();

  if (v24)
  {
    goto LABEL_14;
  }

  v17(v14, *MEMORY[0x277D39E00], v6);
  v25 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v27 = v26;
  v21(v14, v6);
  if (v25 == v34[0] && v27 == v23)
  {
    v36 = "ODAActivityMonitor";
    v37 = 0xD000000000000020;
LABEL_13:

    goto LABEL_14;
  }

  v29 = sub_21B112D04();

  if ((v29 & 1) == 0)
  {
    return;
  }

  v36 = "ODAActivityMonitor";
  v37 = 0xD000000000000020;
LABEL_14:
  v30 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_21B112674();
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_21B1127D4();
  strcpy((inited + 80), "recipe_version");
  *(inited + 95) = -18;
  *(inited + 96) = sub_21B1127D4();
  *(inited + 104) = 0x7473615073796164;
  *(inited + 112) = 0xEB00000000657544;
  *(inited + 120) = sub_21B1126B4();
  sub_21AFCD0E8();
  sub_21B112334();
  strcpy(v38, "com.apple.odla");
  v38[15] = -18;
  MEMORY[0x21CEE9770](46, 0xE100000000000000);
  MEMORY[0x21CEE9770](v30, v36 | 0x8000000000000000);

  v32 = sub_21B1123D4();

  v33 = sub_21B1122E4();
  AnalyticsSendEvent();
}

uint64_t SODAActivityMonitor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SODAActivityMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_21AFCC250(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_21AFCC2E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_21AFCC320()
{
  OUTLINED_FUNCTION_17_6();
  if (v3 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840), result = OUTLINED_FUNCTION_4_1(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_3_12();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
    OUTLINED_FUNCTION_3_12();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_21AFCC3E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_21AFCC408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_21AFCC430(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_6();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_4_1(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_12();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_12();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_21AFCC4E4()
{
  v1 = *v0;
  sub_21AFCCA28();
  *v0 = v2;
}

void sub_21AFCC504()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

char *sub_21AFCC55C(char *a1, int64_t a2, char a3)
{
  result = sub_21AFCCB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21AFCC57C(char *a1, int64_t a2, char a3)
{
  result = sub_21AFCCCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_21AFCC59C()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

void sub_21AFCC5F4()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

uint64_t sub_21AFCC64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CASupportedRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFCC6B4()
{
  result = qword_27CD43678;
  if (!qword_27CD43678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD43680, &qword_21B117730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43678);
  }

  return result;
}

unint64_t sub_21AFCC718(uint64_t a1)
{
  result = sub_21AFCC740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21AFCC740()
{
  result = qword_27CD43688;
  if (!qword_27CD43688)
  {
    type metadata accessor for SODAActivityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43688);
  }

  return result;
}

uint64_t sub_21AFCC7E0()
{
  result = sub_21B111DA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21AFCC900()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

void sub_21AFCC958()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

void sub_21AFCC9B0()
{
  v1 = *v0;
  sub_21AFCCFE4();
  *v0 = v2;
}

void sub_21AFCC9D0()
{
  v1 = *v0;
  sub_21AFCCE0C();
  *v0 = v2;
}

void sub_21AFCCA28()
{
  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    OUTLINED_FUNCTION_6_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_11_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_21AFCCB04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436D8, &qword_21B117888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_21AFCCC04()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436E0, &qword_21B117890);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  v13 = 16 * v7;
  if (v1)
  {
    if (v9 != v0 || &v12[v13] <= v11)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v13);
  }
}

char *sub_21AFCCCDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436A0, &qword_21B117848);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_21AFCCE0C()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_6_7();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_11_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_10_6(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_21AFCC430(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_77();
}

void sub_21AFCCFE4()
{
  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    OUTLINED_FUNCTION_6_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_11_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B0, &qword_21B117858);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_7(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_12_7();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
    OUTLINED_FUNCTION_12_7();
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_21AFCD0E8()
{
  result = qword_27CD46FA0;
  if (!qword_27CD46FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD46FA0);
  }

  return result;
}

uint64_t sub_21AFCD12C()
{
  v1 = sub_21B111CB4();
  OUTLINED_FUNCTION_10_6(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21AFCBC48();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AFCD1E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21AFCB96C();
}

uint64_t sub_21AFCD1EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21AFCB6FC();
}

unint64_t sub_21AFCD1F8()
{
  result = qword_27CD43718;
  if (!qword_27CD43718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43718);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AFCD26C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_21AFCD2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_21AFCD410()
{
  v1 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory + 8);
  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

uint64_t sub_21AFCD45C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory + 8);
  v6 = *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory);
  ObjectType = swift_getObjectType();
  return (*(*(v5 + 8) + 16))(a1, a2, ObjectType);
}

uint64_t sub_21AFCD514()
{
  v0 = SODAHostTask.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory);
  swift_unknownObjectRelease();
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for SODARegisteredHostTask()
{
  result = qword_27CD43738;
  if (!qword_27CD43738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFCD620()
{
  v1 = sub_21B1123D4();
  v2 = [v0 configBoolForKey_];

  return v2 ^ 1;
}

char *sub_21AFCD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v10 = sub_21B1122D4();
  v11 = __swift_project_value_buffer(v10, qword_2811FAB28);
  (*(*(v10 - 8) + 16))(&v4[v9], v11, v10);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *&v4[OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_config] = a4;
  return v4;
}

uint64_t sub_21AFCD74C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B110F84();
  v5 = OUTLINED_FUNCTION_1(v4);
  v66 = v6;
  v67 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21B110FB4();
  v11 = OUTLINED_FUNCTION_1(v10);
  v64 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_21B111BF4();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v58[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v58[-v29];
  v31 = *(v1 + 24);
  if ((*(*(v1 + 32) + 16))())
  {
    v63 = a1;
    sub_21AFCDCD0(*(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_config), v30);
    v32 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
    v62 = v20;
    v33 = *(v20 + 16);
    v33(v28, v30, v17);
    v33(v25, v30, v17);
    v34 = v2 + v32;
    v35 = sub_21B1122B4();
    v36 = sub_21B1126E4();
    if (OUTLINED_FUNCTION_3_13(v36))
    {
      v37 = swift_slowAlloc();
      v60 = v35;
      v38 = v37;
      v61 = swift_slowAlloc();
      v68 = v61;
      *v38 = 136315394;
      v59 = v34;
      sub_21B111BC4();
      sub_21AFCF328(&qword_27CD43788, MEMORY[0x277CC95F0]);
      v39 = sub_21B112B84();
      v41 = v40;
      (*(v64 + 8))(v16, v10);
      v42 = v62;
      v64 = *(v62 + 8);
      (v64)(v28, v17);
      v43 = sub_21AFCEC24(v39, v41, &v68);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = v65;
      sub_21B111BB4();
      sub_21AFCF328(&qword_27CD43790, MEMORY[0x277CC9578]);
      v45 = v67;
      v46 = sub_21B112B84();
      v48 = v47;
      (*(v66 + 8))(v44, v45);
      (v64)(v25, v17);
      v49 = sub_21AFCEC24(v46, v48, &v68);

      *(v38 + 14) = v49;
      v50 = v60;
      _os_log_impl(&dword_21AF80000, v60, v59, "Read federated identifier %s from store, created %s.", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {

      v42 = v62;
      v56 = *(v62 + 8);
      v56(v25, v17);
      v56(v28, v17);
    }

    v57 = v63;
    (*(v42 + 32))(v63, v30, v17);
    return __swift_storeEnumTagSinglePayload(v57, 0, 1, v17);
  }

  else
  {
    v51 = v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
    v52 = sub_21B1122B4();
    v53 = sub_21B1126F4();
    if (OUTLINED_FUNCTION_3_13(v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_21AF80000, v52, v51, "Production build. No FID.", v54, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_21AFCDCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v71 = a2;
  v3 = sub_21B110F84();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v56 - v8;
  v9 = sub_21B111BF4();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_21B111A04();
  v70 = *(v19 - 8);
  v20 = v70[8];
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21B110D94();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  v73[0] = *(v2 + 16);
  v30 = v73[0];
  sub_21AFCEBE0();
  sub_21B111A44();
  v57 = v16;
  v58 = v18;
  v60 = v2;
  v59 = v13;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  (*(v68 + 2))(v27, v29, v69);
  v34 = v30;
  sub_21B1119F4();
  sub_21B1119E4();
  (v70[1])(v22, v19);
  v32[1](v29, v33);
  sub_21AF81D68(v72, v73);
  __swift_project_boxed_opaque_existential_0(v73, v74);
  sub_21AFCF328(&qword_27CD437A8, MEMORY[0x277D39DA8]);
  v35 = v31;
  v36 = v65;
  sub_21B1119D4();
  if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
  {
    sub_21AFCF2D4(v36, &qword_27CD43798, &qword_21B117AD0);
    v37 = v66;
LABEL_7:
    v54 = v59;
    sub_21B111BE4();
    __swift_project_boxed_opaque_existential_0(v73, v74);
    sub_21AFCF328(&qword_27CD437B0, MEMORY[0x277D39DA8]);
    sub_21B1119C4();
    __swift_destroy_boxed_opaque_existential_0(v73);
    return (*(v37 + 32))(v71, v54, v35);
  }

  v37 = v66;
  v38 = *(v66 + 32);
  v39 = v58;
  v38(v58, v36, v35);
  if ((sub_21B111BD4() & 1) == 0)
  {
    (*(v37 + 8))(v39, v35);
    goto LABEL_7;
  }

  v40 = v57;
  (*(v37 + 16))(v57, v39, v35);
  v41 = sub_21B1122B4();
  v42 = sub_21B1126F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v68 = v43;
    v70 = swift_slowAlloc();
    *&v72[0] = v70;
    *v43 = 136315138;
    v44 = v61;
    LODWORD(v69) = v42;
    sub_21B111BB4();
    sub_21AFCF328(&qword_27CD43790, MEMORY[0x277CC9578]);
    v45 = v63;
    v46 = sub_21B112B84();
    v47 = v40;
    v49 = v48;
    (*(v62 + 8))(v44, v45);
    (*(v37 + 8))(v47, v35);
    v50 = sub_21AFCEC24(v46, v49, v72);

    v51 = v68;
    *(v68 + 1) = v50;
    v52 = v51;
    _os_log_impl(&dword_21AF80000, v41, v69, "Found federatedID created on %s", v51, 0xCu);
    v53 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x21CEEA9A0](v53, -1, -1);
    v39 = v58;
    MEMORY[0x21CEEA9A0](v52, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v40, v35);
  }

  __swift_destroy_boxed_opaque_existential_0(v73);
  return (v38)(v71, v39, v35);
}

uint64_t sub_21AFCE670()
{
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
  v2 = sub_21B1122D4();
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_config);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21AFCE6DC()
{
  sub_21AFCE670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39[-v7];
  v9 = sub_21B110D94();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v39[-v21];
  v44 = a1;
  sub_21AFCEBE0();
  sub_21B111A44();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  (*(v12 + 32))(v22, v8, v9);
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v43 = a2;
  v23 = sub_21B1122D4();
  __swift_project_value_buffer(v23, qword_2811FAB28);
  (*(v12 + 16))(v20, v22, v9);
  v24 = sub_21B1122B4();
  v25 = sub_21B1126E4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = v26;
    v42 = swift_slowAlloc();
    v44 = v42;
    *v26 = 136315138;
    sub_21AFCF328(&qword_2811FAAF0, MEMORY[0x277CC9260]);
    v40 = v25;
    v27 = sub_21B112B84();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_2_13();
    v2(v30);
    v31 = sub_21AFCEC24(v27, v29, &v44);

    v32 = v41;
    *(v41 + 1) = v31;
    _os_log_impl(&dword_21AF80000, v24, v40, "PegasusConfiguration container URL: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v33 = OUTLINED_FUNCTION_2_13();
    v2(v33);
  }

  sub_21B111A54();
  sub_21B110D04();

  sub_21B111A94();
  v34 = sub_21B111A84();
  v35 = sub_21B110CE4();
  v36 = sub_21B1123D4();
  v37 = [v34 loadWithUrl:v35 userAgent:v36 userDefaults:v43];
  swift_unknownObjectRelease();

  (v2)(v17, v9);
  (v2)(v22, v9);
  return v37;
}

unint64_t sub_21AFCEBE0()
{
  result = qword_2811FA668[0];
  if (!qword_2811FA668[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_2811FA668);
  }

  return result;
}

uint64_t sub_21AFCEC24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21AFCECE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21AF94C04(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21AFCECE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21AFCEDE8(a5, a6);
    *a1 = v9;
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
    result = sub_21B112944();
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

uint64_t sub_21AFCEDE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_21AFCEE34(a1, a2);
  sub_21AFCEF4C(&unk_282C8D620);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21AFCEE34(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21B112514())
  {
    result = sub_21AF98C84(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21B1128E4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21B112944();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21AFCEF4C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_21AFCF030(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21AFCF030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t type metadata accessor for FederatedIdentifierProvider()
{
  result = qword_27CD43770;
  if (!qword_27CD43770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFCF178()
{
  result = sub_21B1122D4();
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

_BYTE *storeEnumTagSinglePayload for ConfigPlistLoader(_BYTE *result, int a2, int a3)
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

uint64_t sub_21AFCF2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_21AFCF328(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL OUTLINED_FUNCTION_3_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21AFCF3A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21AFCF438(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_21B111CB4() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t SODAStreamPruner.__allocating_init(userDefaults:fileManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  SODAStreamPruner.init(userDefaults:fileManager:)(a1, a2);
  return v4;
}

void *SODAStreamPruner.init(userDefaults:fileManager:)(uint64_t a1, id a2)
{
  v3 = v2;
  v5 = a1;
  if (!a1)
  {
    sub_21AFCF63C();
    a1 = sub_21B0C7218();
  }

  v2[2] = a1;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_opt_self();
    v6 = v5;
    a2 = [v7 defaultManager];
  }

  v3[3] = a2;
  type metadata accessor for SODAActivityMonitor();
  v8 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v9 = sub_21B0B522C();

  *(v8 + 16) = v9;
  v10 = sub_21AFD0228();
  v3[4] = v8;
  v3[5] = v10;
  return v3;
}

unint64_t sub_21AFCF63C()
{
  result = qword_27CD437B8;
  if (!qword_27CD437B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD437B8);
  }

  return result;
}

void sub_21AFCF680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v58 = a4;
  v59 = a2;
  v62 = sub_21B110F84();
  v5 = OUTLINED_FUNCTION_1(v62);
  v60 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_21B111B24();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v61 = sub_21B111C94();
  v27 = v26;
  v28 = v64;
  sub_21B111C04();
  if (v28)
  {

    return;
  }

  v56 = v4;
  v63 = v11;
  v64 = 0;
  v29 = v62;
  v30 = sub_21B111AF4();
  (*(v20 + 8))(v25, v17);
  v31 = objc_allocWithZone(MEMORY[0x277CF1810]);
  v32 = sub_21AFD0328(v61, v27, v30);
  if (v32)
  {
    v33 = v32;
    sub_21B0DF298(v58, v16);
    v34 = v56;
    sub_21AFD1CB0(v16, v56);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v29);
    v36 = 0.0;
    v37 = v60;
    v38 = v63;
    if (EnumTagSinglePayload != 1)
    {
      (*(v60 + 32))(v63, v34, v29);
      sub_21B110EC4();
      v36 = v39;
      (*(v37 + 8))(v38, v29);
    }

    sub_21AFD1D20(v16);
    sub_21B110EC4();
    v41 = v40;
    if (EnumTagSinglePayload == 1)
    {
      v42 = v40;
    }

    else
    {
      v42 = v36;
    }

    if (v42 >= v40)
    {
      v61 = 0;
    }

    else
    {
      v43 = (v40 - v42) / 3600.0;
      if (COERCE__INT64(fabs((v41 - v42) / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v43 <= -9.22337204e18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v43 >= 9.22337204e18)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (__OFADD__(v43, 1))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v61 = v43 + 1;
    }

    v67 = 0;
    v66 = 0;
    sub_21B110ED4();
    sub_21B110EC4();
    v45 = v44;
    v46 = *(v37 + 8);
    v46(v38, v29);
    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    *(v47 + 24) = &v67;
    *(v47 + 32) = &v66;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_21AFD1D88;
    *(v48 + 24) = v47;
    aBlock[4] = sub_21AFD1D94;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21AFCFBD0;
    aBlock[3] = &block_descriptor_2;
    v49 = _Block_copy(aBlock);

    [v33 removeEventsFrom:1 to:v49 reason:v45 usingBlock:v41];
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v50 = v57;
      if (EnumTagSinglePayload != 1)
      {
        v51 = v63;
        sub_21B110ED4();
        sub_21B110EC4();
        v53 = v52;
        v46(v51, v29);
        if (v36 != v53)
        {
          if (v67 | v66)
          {
            v54 = *(v50 + 32);
            sub_21AFCBA7C();
          }
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_21AFCFB9C(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 < a1)
  {
    v5 = *a4 + 1;
    if (!__OFADD__(*a4, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *a5 + 1;
  if (!__OFADD__(*a5, 1))
  {
    a4 = a5;
LABEL_7:
    *a4 = v5;
    return;
  }

  __break(1u);
}

void sub_21AFCFBFC()
{
  v2 = v0;
  v57 = sub_21B111AE4();
  v3 = OUTLINED_FUNCTION_1(v57);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_21B111C24();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = v20;
  v23 = v21;
  sub_21B111C84();
  v24 = v61;
  sub_21B111C14();
  if (v24)
  {
  }

  else
  {
    v56 = v1;
    v50 = 0;
    v51 = v22;
    v52 = v19;
    v53 = v14;
    v54 = v11;
    v49 = sub_21B0C204C(v22);
    v25 = sub_21B111AB4();
    v26 = 0;
    v27 = *(v25 + 16);
    v60 = v5 + 16;
    v61 = v27;
    v59 = (v5 + 8);
    v55 = (v5 + 32);
    v58 = MEMORY[0x277D84F90];
    v28 = v57;
    while (v61 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v29 = v2;
      v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v31 = *(v5 + 72);
      (*(v5 + 16))(v10, v25 + v30 + v31 * v26, v28);
      if (sub_21B111AD4())
      {
        v48 = *v55;
        v48(v56, v10, v28);
        v32 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = *(v32 + 16);
          sub_21AFCC900();
          v32 = v63;
        }

        v35 = *(v32 + 16);
        v36 = v35 + 1;
        v37 = v56;
        if (v35 >= *(v32 + 24) >> 1)
        {
          v58 = *(v32 + 16);
          v38 = v35 + 1;
          sub_21AFCC900();
          v36 = v38;
          v28 = v57;
          v35 = v58;
          v37 = v56;
          v32 = v63;
        }

        ++v26;
        *(v32 + 16) = v36;
        v58 = v32;
        v48(v32 + v30 + v35 * v31, v37, v28);
        v2 = v29;
      }

      else
      {
        (*v59)(v10, v28);
        ++v26;
        v2 = v29;
      }
    }

    v63 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437C8, &qword_21B117AE0);
    sub_21AFD1BA4();
    v39 = sub_21B1126D4();

    v40 = sub_21AFD038C(v39);

    v62 = v40;
    v24 = v50;
    v41 = sub_21AFD0280(&v62);
    if (!v24)
    {
      v42 = v62;
      MEMORY[0x28223BE20](v41);
      v43 = v52;
      *(&v47 - 4) = v2;
      *(&v47 - 3) = v43;
      *(&v47 - 2) = v49;
      sub_21AFCF438(sub_21AFD1C08, (&v47 - 6), v42);
      v45 = v53;
      v44 = v54;
      v46 = v51;

      (*(v45 + 8))(v43, v44);
      return;
    }

LABEL_16:

    __break(1u);
  }
}

uint64_t sub_21AFD0024()
{
  v0 = sub_21B111C94();
  v2 = v1;
  if (v0 == sub_21B111C94() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B112D04();
  }

  return v5 & 1;
}

uint64_t sub_21AFD00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B110F84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B111C34();
  sub_21AFCF680(a1, v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t SODAStreamPruner.deinit()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SODAStreamPruner.__deallocating_deinit()
{
  SODAStreamPruner.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_21AFD0228()
{
  result = qword_27CD437C0;
  if (!qword_27CD437C0)
  {
    type metadata accessor for SODAActivityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD437C0);
  }

  return result;
}

uint64_t sub_21AFD0280(uint64_t *a1)
{
  v2 = *(sub_21B111CB4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D6334(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_21AFD0480(v7);
  *a1 = v3;
  return result;
}

id sub_21AFD0328(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21B1123D4();

  v6 = [v3 initWithStream:v5 config:a3];

  return v6;
}

size_t sub_21AFD038C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_21B0D55BC(*(a1 + 16), 0);
  v4 = *(sub_21B111CB4() - 8);
  sub_21B0BFD70(&v8, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v1, a1);
  v6 = v5;

  sub_21AF9C4BC();
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_21AFD0480(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B111CB4();
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B111CB4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21AFD08D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AFD05B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFD05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B111CB4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_21B111C94();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_21B111C94() && v32 == v33)
        {
          break;
        }

        v35 = sub_21B112D04();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AFD08D0(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_21B111CB4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v151 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v142 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v142 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v160 = &v142 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v159 = &v142 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v27 = &v142 - v23;
  v157 = v24;
  v158 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_114:
    v169 = *v146;
    if (!v169)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v165 = v25;
  v142 = a4;
  v29 = 0;
  v169 = v24 + 16;
  v167 = (v24 + 32);
  v168 = (v24 + 8);
  v30 = MEMORY[0x277D84F90];
  v161 = v8;
  v153 = v16;
  v143 = v26;
  v145 = &v142 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v148 = v29;
    if (v29 + 1 < v28)
    {
      v163 = v28;
      v144 = v30;
      v33 = v27;
      v34 = *v158;
      v35 = *(v24 + 72);
      v36 = v26;
      v156 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v145;
      v155 = v39;
      v39(v36, v40, v8);
      LODWORD(v162) = sub_21AFD0024();
      if (v5)
      {
        v141 = *v168;
        (*v168)(v36, v8);
        (v141)(v41, v8);
LABEL_124:

        return;
      }

      v147 = 0;
      v30 = v168;
      v42 = *v168;
      (*v168)(v36, v8);
      v154 = v42;
      (v42)(v41, v8);
      v43 = v148 + 2;
      v44 = &v34[v35 * (v148 + 2)];
      v32 = v156;
      v45 = v35;
      v166 = v35;
      v46 = v163;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v161;
        v5 = v155;
        (v155)(v159, v44, v161);
        v5(v160, v38, v49);
        v50 = sub_21B111C94();
        v52 = v51;
        if (v50 == sub_21B111C94() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_21B112D04();
        }

        v56 = v161;
        v30 = v154;
        (v154)(v160, v161);
        (v30)(v159, v56);
        v45 = v166;
        v44 += v166;
        v38 += v166;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v163;
        if ((v162 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v162)
      {
        v31 = v148;
        if (v32 < v148)
        {
          goto LABEL_149;
        }

        v5 = v147;
        if (v148 >= v32)
        {
          v24 = v157;
          v30 = v144;
          v8 = v161;
          v16 = v153;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v148;
        v61 = v148 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v158;
            if (!*v158)
            {
              goto LABEL_154;
            }

            v64 = v161;
            v163 = *v167;
            v163(v151, &v63[v61], v161);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v163(&v63[v58], v151, v64);
            v5 = v147;
            v45 = v166;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v147;
      }

      v24 = v157;
      v30 = v144;
      v8 = v161;
      v16 = v153;
      v31 = v148;
    }

LABEL_39:
    v66 = v158[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v142)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21B0D4B14(0, *(v30 + 2) + 1, 1, v30);
      v30 = v132;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v156 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_21B0D4B14(v88 > 1, v89 + 1, 1, v30);
      v30 = v133;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v156;
    *v92 = v148;
    *(v92 + 1) = v93;
    v166 = *v146;
    if (!v166)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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

        if (!*v158)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_21AFD148C(&(*v158)[*(v157 + 72) * *v127], &(*v158)[*(v157 + 72) * *v128], &(*v158)[*(v157 + 72) * v129], v166);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_21B0D61C0(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v153;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v157;
    v28 = v158[1];
    v29 = v156;
    v8 = v161;
    v26 = v143;
    v27 = v145;
    if (v156 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v142);
  if (__OFADD__(v31, v142))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v158[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_21B0D61A8(v30);
LABEL_116:
    v134 = v30 + 16;
    v135 = *(v30 + 2);
    while (v135 >= 2)
    {
      if (!*v158)
      {
        goto LABEL_153;
      }

      v136 = v30;
      v30 += 16 * v135;
      v137 = *v30;
      v138 = &v134[2 * v135];
      v139 = *(v138 + 1);
      sub_21AFD148C(&(*v158)[*(v157 + 72) * *v30], &(*v158)[*(v157 + 72) * *v138], &(*v158)[*(v157 + 72) * v139], v169);
      if (v5)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_141;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_142;
      }

      *v30 = v137;
      *(v30 + 1) = v139;
      v140 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_143;
      }

      v135 = *v134 - 1;
      sub_21B0D61C0(v138 + 16, v140, v138);
      *v134 = v135;
      v30 = v136;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v144 = v30;
  v147 = v5;
  v68 = *v158;
  v69 = *(v24 + 72);
  v166 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v162 = -v69;
  v163 = v68;
  v71 = (v31 - v32);
  v149 = v69;
  v150 = v67;
  v72 = &v68[v32 * v69];
  v73 = v165;
LABEL_48:
  v155 = v70;
  v156 = v32;
  v152 = v72;
  v154 = v71;
  while (1)
  {
    v74 = v166;
    (v166)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_21B111C94();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_21B111C94() && v79 == v80)
    {

      v87 = *v168;
      (*v168)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_21B112D04();

    v84 = *v168;
    (*v168)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v165;
LABEL_60:
      v32 = v156 + 1;
      v70 = &v155[v149];
      v71 = v154 - 1;
      v72 = &v152[v149];
      if (v156 + 1 == v150)
      {
        v32 = v150;
        v5 = v147;
        v30 = v144;
        v31 = v148;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v163)
    {
      break;
    }

    v85 = *v167;
    v86 = v164;
    (*v167)(v164, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v162;
    v72 += v162;
    v65 = __CFADD__(v71++, 1);
    v73 = v165;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_21AFD148C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_21B111CB4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_21AFCC308(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_21B111C94();
      v37 = v36;
      if (v35 == sub_21B111C94() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_21B112D04();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_21AFCC308(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_21B111C94();
    v55 = v54;
    if (v53 == sub_21B111C94() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_21B112D04();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_21AFD1AC0(&v78, &v77, &v76, MEMORY[0x277D39DE0]);
  return 1;
}

uint64_t sub_21AFD1AC0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_21AFD1BA4()
{
  result = qword_27CD437D0;
  if (!qword_27CD437D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD437C8, &qword_21B117AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD437D0);
  }

  return result;
}

uint64_t sub_21AFD1CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFD1D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AFD1D94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AFD1E04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_21AFD1E44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for FeedbackSchemaProvider()
{
  result = qword_27CD437D8;
  if (!qword_27CD437D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFD1EEC()
{
  sub_21AFA861C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_21AFD1F84()
{
  v0 = sub_21B111CB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D39DD8], v0);
  v5 = sub_21B111C64();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27CD6E790 = v5;
  *algn_27CD6E798 = v7;
  return result;
}

uint64_t sub_21AFD2084()
{
  v0 = sub_21B112A34();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21AFD20D0()
{
  v49 = sub_21B1110C4();
  v2 = OUTLINED_FUNCTION_1(v49);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v48 = v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v37 - v9;
  v46 = sub_21B1111C4();
  v10 = OUTLINED_FUNCTION_1(v46);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v20);
  v21 = qword_27CD6E7A0;
  v22 = sub_21B111894();
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  if (qword_27CD42520 != -1)
  {
    swift_once();
  }

  sub_21B111924();
  v23 = OUTLINED_FUNCTION_5_11();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);

  v26 = sub_21B111184();
  v27 = v26;
  if (!v1)
  {
    v37 = 0;
    v51 = MEMORY[0x277D84F90];
    v38 = v26;

    sub_21AFCC59C();
    v28 = 0;
    v29 = v51;
    v44 = *(v4 + 104);
    v41 = *MEMORY[0x277D3E600];
    v40 = *MEMORY[0x277D3E5C8];
    v39 = *MEMORY[0x277D3E5F8];
    v45 = v4 + 104;
    v30 = (v4 + 32);
    v43 = v50 + 32;
    v42 = *MEMORY[0x277D3E5E8];
    do
    {
      v31 = v16;
      v32 = v42;
      switch(byte_282C8D9C0[v28 + 32])
      {
        case 1:
          v32 = v39;
          break;
        case 2:
          v32 = v40;
          break;
        case 3:
          v32 = v41;
          break;
        default:
          break;
      }

      v34 = v48;
      v33 = v49;
      v44(v48, v32, v49);
      (*v30)(v47, v34, v33);
      v16 = v31;
      sub_21B1111B4();
      v51 = v29;
      v35 = *(v29 + 16);
      if (v35 >= *(v29 + 24) >> 1)
      {
        sub_21AFCC59C();
        v29 = v51;
      }

      ++v28;
      *(v29 + 16) = v35 + 1;
      (*(v50 + 32))(v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35, v31, v46);
    }

    while (v28 != 4);
    v27 = v38;
    sub_21B111174();
  }

  return v27;
}

uint64_t sub_21AFD2514()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21B111194();
  sub_21B111814();
  if (v1)
  {
  }

  v9 = sub_21B111894();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v10 = qword_27CD6E7A0;
  swift_beginAccess();
  sub_21AFA867C(v7, v0 + v10);
  return swift_endAccess();
}

uint64_t sub_21AFD2618@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_21AFD2084();
  if (v2)
  {
    if (v2 == 4)
    {
      result = OUTLINED_FUNCTION_3_14();
      __break(1u);
    }

    else
    {
      v7 = v2;
      v8 = sub_21B111134();
      v10 = v9;
      sub_21AFD2734(v7, v8, v9, a1);
      return sub_21AF99728(v8, v10);
    }
  }

  else
  {
    sub_21B111154();
    Double.fromReferenceToUnixTime.getter(v3);
    *a1 = v4;
    v5 = sub_21B1119B4();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  return result;
}

uint64_t sub_21AFD2734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v99 = a2;
  v100 = a3;
  v98 = a1;
  v96 = a4;
  v5 = sub_21B111804();
  v6 = OUTLINED_FUNCTION_1(v5);
  v90 = v7;
  v91 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v89 = v11 - v10;
  v12 = sub_21B1117E4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v93 = v14;
  v94 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v88 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437E8, &qword_21B117C88);
  v20 = OUTLINED_FUNCTION_25(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  v95 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v92 = &v88 - v26;
  MEMORY[0x28223BE20](v25);
  v97 = &v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  OUTLINED_FUNCTION_25(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v37);
  v39 = &v88 - v38;
  v40 = sub_21B111894();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2();
  v48 = v47 - v46;
  v49 = qword_27CD6E7A0;
  swift_beginAccess();
  sub_21AFC555C(v4 + v49, v39, &qword_27CD43038, &qword_21B114C10);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    sub_21AFA8918(v39, &qword_27CD43038, &qword_21B114C10);
LABEL_20:
    result = OUTLINED_FUNCTION_3_14();
    __break(1u);
  }

  else
  {
    (*(v43 + 32))(v48, v39, v40);
    v50 = v101;
    sub_21B111884();
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_1_13();
      return v52(v51);
    }

    else
    {
      switch(v98)
      {
        case 1:
          sub_21B111974();
          v54 = OUTLINED_FUNCTION_1_13();
          v55(v54);

          v56 = sub_21B1119B4();
          v57 = OUTLINED_FUNCTION_5_11();
          if (__swift_getEnumTagSinglePayload(v57, v58, v56) == 1)
          {
            v59 = v96;
            *v96 = 0;
            swift_storeEnumTagMultiPayload();
            v60 = OUTLINED_FUNCTION_5_11();
            if (__swift_getEnumTagSinglePayload(v60, v61, v56) != 1)
            {
              sub_21AFA8918(v33, &qword_27CD43048, &unk_21B117C90);
            }
          }

          else
          {
            v59 = v96;
            sub_21AFD2EFC(v33, v96);
          }

          v73 = v59;
          goto LABEL_16;
        case 2:
          v62 = v97;
          OUTLINED_FUNCTION_9_6();
          v63 = v92;
          sub_21AFC555C(v62, v92, &qword_27CD437E8, &qword_21B117C88);
          v64 = v94;
          if (__swift_getEnumTagSinglePayload(v63, 1, v94) == 1)
          {

            sub_21AFA8918(v62, &qword_27CD437E8, &qword_21B117C88);
            v65 = OUTLINED_FUNCTION_1_13();
            v66(v65);
            goto LABEL_12;
          }

          (*(v93 + 32))(v88, v63, v64);
          v75 = v89;
          sub_21B1117C4();
          v101 = sub_21B1117F4();
          v77 = v76;

          (*(v90 + 8))(v75, v91);
          v78 = OUTLINED_FUNCTION_8_11();
          v79(v78);
          sub_21AFA8918(v97, &qword_27CD437E8, &qword_21B117C88);
          v80 = OUTLINED_FUNCTION_1_13();
          v81(v80);
          v82 = v96;
          *v96 = v101;
          v82[1] = v77;
          v56 = sub_21B1119B4();
          swift_storeEnumTagMultiPayload();
          v73 = v82;
LABEL_16:
          v74 = 0;
          v72 = v56;
          break;
        case 3:
          v67 = v95;
          OUTLINED_FUNCTION_9_6();
          v68 = OUTLINED_FUNCTION_5_11();
          if (__swift_getEnumTagSinglePayload(v68, v69, v94) == 1)
          {
            v70 = OUTLINED_FUNCTION_1_13();
            v71(v70);

            sub_21AFA8918(v67, &qword_27CD437E8, &qword_21B117C88);
LABEL_12:
            v72 = sub_21B1119B4();
            v73 = v96;
            v74 = 1;
          }

          else
          {
            v83 = v96;
            sub_21B1117D4();

            v84 = OUTLINED_FUNCTION_1_13();
            v85(v84);
            v86 = OUTLINED_FUNCTION_8_11();
            v87(v86);
            v72 = sub_21B1119B4();
            v73 = v83;
            v74 = 0;
          }

          break;
        default:
          goto LABEL_20;
      }

      return __swift_storeEnumTagSinglePayload(v73, v74, 1, v72);
    }
  }

  return result;
}

uint64_t sub_21AFD2E70()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E7A0, &qword_27CD43038, &qword_21B114C10);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AFD2EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B1119B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return sub_21B1129C4();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_21B111994();
}

uint64_t sub_21AFD2FEC(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_282C8D7A0 != a1);
  return v2 & 1;
}

uint64_t sub_21AFD3014(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_282C8D778 != a1);
  return v2 & 1;
}

void sub_21AFD3040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_3_15();
      sub_21B112274();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_2_15(v25, xmmword_21B113D90);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_2_15(v17, xmmword_21B113DB0);
      sub_21AF92198(v18, v19);
      v15 = OUTLINED_FUNCTION_4_11();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_2_15(v20, xmmword_21B1141D0);
      sub_21AF92198(v21, v22);
      v23 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_2_15(v10, xmmword_21B113D80);
      sub_21AF92198(v11, v12);
      v13 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v13, v14);
      sub_21AF92198(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_2_15(v26, xmmword_21B115FB0);
      sub_21AF92198(v27, v28);
      v29 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v29, v30);
      sub_21AF92198(a10 + 112, &v26[7]);
      sub_21AF92198(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_21AF92198(v15, v16);
      OUTLINED_FUNCTION_3_15();
      sub_21B112274();

      break;
    default:
      return;
  }
}

uint64_t sub_21AFD33D0()
{
  OUTLINED_FUNCTION_11_5();
  v1 = sub_21B1112D4();
  v2 = OUTLINED_FUNCTION_1_15(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = OUTLINED_FUNCTION_0_14(v5, v24);
  v7(v6);
  v8 = OUTLINED_FUNCTION_4_12();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D3DF98])
  {
    v11 = OUTLINED_FUNCTION_3_16();
    v12(v11);
    return 5;
  }

  else if (v10 == *MEMORY[0x277D3DF88] || v10 == *MEMORY[0x277D3DF78])
  {
    v16 = OUTLINED_FUNCTION_10_7();
    v17(v16);
    v25 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12())
    {
      v18 = OUTLINED_FUNCTION_5_12();
      v13 = v19(v18);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else if (v10 == *MEMORY[0x277D3DF90])
  {
    v20 = OUTLINED_FUNCTION_3_16();
    v21(v20);
    return 7;
  }

  else if (v10 == *MEMORY[0x277D3DF80])
  {
    return 11;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_3_16();
    v23(v22);
    return 0;
  }

  return v13;
}

uint64_t sub_21AFD359C(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD437F0, MEMORY[0x277D3DFA0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD35F4()
{
  v0 = sub_21B111374();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_2_16(v4, v15);
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_8();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D3E040])
  {
    v10 = 9;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == *MEMORY[0x277D3E048])
  {
    v11 = 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = OUTLINED_FUNCTION_7_7();
  v13(v12);
  return v11;
}

uint64_t sub_21AFD36D8(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD437F8, MEMORY[0x277D3E050]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3730()
{
  v0 = sub_21B111384();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_2_16(v4, v16);
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_8();
  v9 = v8(v7);
  v10 = *MEMORY[0x277D3E060];
  v11 = *MEMORY[0x277D3E068];
  v12 = OUTLINED_FUNCTION_7_7();
  v13(v12);
  if (v9 == v11 || v9 == v10)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFD3814(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43800, MEMORY[0x277D3E070]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD386C()
{
  OUTLINED_FUNCTION_11_5();
  v1 = sub_21B111464();
  v2 = OUTLINED_FUNCTION_1_15(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = OUTLINED_FUNCTION_0_14(v5, v20);
  v7(v6);
  v8 = OUTLINED_FUNCTION_4_12();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D3E110] || v10 == *MEMORY[0x277D3E108])
  {
    v12 = OUTLINED_FUNCTION_10_7();
    v13(v12);
    v21 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12())
    {
      v14 = OUTLINED_FUNCTION_5_12();
      v18 = v15(v14);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_16();
    v17(v16);
    return 0;
  }

  return v18;
}

uint64_t sub_21AFD39C4(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43808, MEMORY[0x277D3E118]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3A1C()
{
  OUTLINED_FUNCTION_11_5();
  v1 = sub_21B1112F4();
  v2 = OUTLINED_FUNCTION_1_15(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = OUTLINED_FUNCTION_0_14(v5, v27);
  v7(v6);
  v8 = OUTLINED_FUNCTION_4_12();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D3E020] || v10 == *MEMORY[0x277D3E018])
  {
    v12 = OUTLINED_FUNCTION_3_16();
    v13(v12);
    return 11;
  }

  else if (v10 == *MEMORY[0x277D3E010] || v10 == *MEMORY[0x277D3E000] || v10 == *MEMORY[0x277D3E008])
  {
    v17 = OUTLINED_FUNCTION_3_16();
    v18(v17);
    return 12;
  }

  else if (v10 == *MEMORY[0x277D3DFF8] || v10 == *MEMORY[0x277D3DFF0])
  {
    v20 = OUTLINED_FUNCTION_10_7();
    v21(v20);
    v28 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12())
    {
      v22 = OUTLINED_FUNCTION_5_12();
      v14 = v23(v22);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_3_16();
    v25(v24);
    return 0;
  }

  return v14;
}

uint64_t sub_21AFD3BFC(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43810, MEMORY[0x277D3E028]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3C54()
{
  OUTLINED_FUNCTION_11_5();
  v0 = sub_21B1116B4();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_0_14(v4, v18);
  v6(v5);
  v7 = OUTLINED_FUNCTION_4_12();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D3E250])
  {
    v10 = 35;
  }

  else if (v9 == *MEMORY[0x277D3E268])
  {
    v10 = 36;
  }

  else if (v9 == *MEMORY[0x277D3E2B0])
  {
    v10 = 34;
  }

  else
  {
    if (v9 != *MEMORY[0x277D3E270])
    {
      if (v9 == *MEMORY[0x277D3E240])
      {
        v10 = 32;
        goto LABEL_11;
      }

      if (v9 == *MEMORY[0x277D3E248] || v9 == *MEMORY[0x277D3E260])
      {
        return 33;
      }

      if (v9 == *MEMORY[0x277D3E2C0] || v9 == *MEMORY[0x277D3E2E0] || v9 == *MEMORY[0x277D3E278] || v9 == *MEMORY[0x277D3E2D8])
      {
        return 34;
      }

      if (v9 == *MEMORY[0x277D3E258])
      {
        return 37;
      }

      if (v9 == *MEMORY[0x277D3E2A0])
      {
        return 38;
      }

      if (v9 == *MEMORY[0x277D3E288])
      {
        return 39;
      }

      if (v9 == *MEMORY[0x277D3E2B8])
      {
        return 38;
      }

      if (v9 == *MEMORY[0x277D3E280])
      {
        return 40;
      }

      if (v9 == *MEMORY[0x277D3E2C8])
      {
        return 41;
      }
    }

    v10 = 10;
  }

LABEL_11:
  v11 = OUTLINED_FUNCTION_3_16();
  v12(v11);
  return v10;
}

uint64_t sub_21AFD3EA8(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43818, MEMORY[0x277D3E2E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3F00()
{
  v0 = sub_21B111454();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_2_16(v4, v14);
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_8();
  v9 = v8(v7);
  v10 = *MEMORY[0x277D3E0F0];
  v11 = OUTLINED_FUNCTION_7_7();
  v12(v11);
  if (v9 == v10)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFD3FD4(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43820, MEMORY[0x277D3E0F8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD402C()
{
  OUTLINED_FUNCTION_11_5();
  v0 = sub_21B1112E4();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_0_14(v4, v14);
  v6(v5);
  v7 = OUTLINED_FUNCTION_4_12();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D3DFC0])
  {
    v10 = 45;
  }

  else if (v9 == *MEMORY[0x277D3DFB0])
  {
    v10 = 46;
  }

  else if (v9 == *MEMORY[0x277D3DFB8])
  {
    v10 = 47;
  }

  else if (v9 == *MEMORY[0x277D3DFD0])
  {
    v10 = 48;
  }

  else if (v9 == *MEMORY[0x277D3DFD8])
  {
    v10 = 49;
  }

  else if (v9 == *MEMORY[0x277D3DFC8])
  {
    v10 = 48;
  }

  else
  {
    v10 = 0;
  }

  v11 = OUTLINED_FUNCTION_3_16();
  v12(v11);
  return v10;
}

uint64_t sub_21AFD4184(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43828, MEMORY[0x277D3DFE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD41FC()
{
  v0 = sub_21B111474();
  v1 = OUTLINED_FUNCTION_1_15(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = OUTLINED_FUNCTION_2_16(v4, v15);
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_8();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D3E130])
  {
    v10 = 50;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == *MEMORY[0x277D3E128])
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = OUTLINED_FUNCTION_7_7();
  v13(v12);
  return v11;
}

uint64_t sub_21AFD42E0(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43830, MEMORY[0x277D3E138]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4340(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43838, MEMORY[0x277D85678]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21AFD43E0(uint64_t a1)
{
  result = sub_21AF94BA0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43848, &unk_21B117F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  sub_21AF81D68((v0 - 128), v0 - 72);
  v1 = *(v0 - 48);
  v2 = *(v0 - 40);
  __swift_project_boxed_opaque_existential_0((v0 - 72), v1);
  v3 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  return sub_21AFD4408(v0 - 128);
}

BOOL sub_21AFD45D8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_21AFD4664()
{
  sub_21B099D04();

  return sub_21B111F34();
}

uint64_t sub_21AFD4760@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD47B0()
{
  sub_21B0AA8EC();

  return sub_21B111F34();
}

uint64_t sub_21AFD4890@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD48C4()
{
  sub_21B09A0A0();

  return sub_21B111F34();
}

uint64_t sub_21AFD49A4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementActionTarget.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD49F4()
{
  sub_21B09A04C();

  return sub_21B111F34();
}

uint64_t sub_21AFD4AD4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementDestination.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CardSectionType.init(rawValue:)(unint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 0x3E)
  {
    switch(a2)
    {
      case 0xC8uLL:
        a2 = 64;
        break;
      case 0xC9uLL:
        a2 = 65;
        break;
      case 0xCAuLL:
        a2 = 66;
        break;
      case 0xCBuLL:
        a2 = 67;
        break;
      case 0xCCuLL:
        a2 = 68;
        break;
      case 0xCDuLL:
        a2 = 69;
        break;
      case 0xCEuLL:
        a2 = 70;
        break;
      case 0xCFuLL:
        a2 = 71;
        break;
      case 0xD0uLL:
        a2 = 72;
        break;
      case 0xD1uLL:
        a2 = 73;
        break;
      case 0xD2uLL:
        a2 = 74;
        break;
      case 0xD3uLL:
        a2 = 75;
        break;
      case 0xD4uLL:
        a2 = 76;
        break;
      case 0xD5uLL:
        a2 = 77;
        break;
      case 0xD6uLL:
        a2 = 78;
        break;
      default:
        v2 = 62;
        if (a2 != 63)
        {
          v2 = a2;
        }

        if (a2 == 64)
        {
          a2 = 63;
        }

        else
        {
          a2 = v2;
        }

        break;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B127DA0[result];
  }

  return result;
}

uint64_t sub_21AFD4C4C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4C80()
{
  sub_21B09A1F0();

  return sub_21B111F34();
}

uint64_t sub_21AFD4D7C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardSectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4DC0()
{
  sub_21B0AA898();

  return sub_21B111F34();
}

uint64_t sub_21AFD4EA0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FBTH.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4EF0()
{
  sub_21B09A0F4();

  return sub_21B111F34();
}

uint64_t sub_21AFD4FD0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5014()
{
  sub_21B09A6DC();

  return sub_21B111F34();
}

uint64_t sub_21AFD50F4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SessionEndTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5128()
{
  sub_21B09A244();

  return sub_21B111F34();
}

uint64_t sub_21AFD5208@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ActionCardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5258()
{
  sub_21B09A2EC();

  return sub_21B111F34();
}

uint64_t sub_21AFD5338@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5388()
{
  sub_21B09A394();

  return sub_21B111F34();
}

uint64_t sub_21AFD5468@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EndpointType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD54AC()
{
  sub_21B0AA844();

  return sub_21B111F34();
}

uint64_t sub_21AFD558C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_IndexType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD55C0()
{
  sub_21B09A4E4();

  return sub_21B111F34();
}

uint64_t sub_21AFD56A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardDisappearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD56D4()
{
  sub_21B09A538();

  return sub_21B111F34();
}

uint64_t sub_21AFD57B4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ClearInputTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD57E8()
{
  sub_21B09A58C();

  return sub_21B111F34();
}

uint64_t sub_21AFD58C8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD58FC()
{
  sub_21B09A5E0();

  return sub_21B111F34();
}

uint64_t sub_21AFD59DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_VisibleSectionHeaderType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5A2C()
{
  sub_21B09A490();

  return sub_21B111F34();
}

uint64_t sub_21AFD5B0C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_KnownFeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5B50()
{
  sub_21B09A634();

  return sub_21B111F34();
}

uint64_t sub_21AFD5C30@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackGrade.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5C80()
{
  sub_21B099FF8();

  return sub_21B111F34();
}

uint64_t sub_21AFD5D60@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerEngagementEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5DA0()
{
  sub_21AFB4A1C();

  return sub_21B111F34();
}

uint64_t sub_21AFD5E80@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewAppearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5ED0()
{
  sub_21B099F50();

  return sub_21B111F34();
}

uint64_t sub_21AFD5FB0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewDisappearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6000()
{
  sub_21B0AA7F0();

  return sub_21B111F34();
}

uint64_t sub_21AFD60FC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TimingDataDictKeys.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CommandType.init(rawValue:)(uint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 48;
  if (a2 != 50)
  {
    v2 = a2;
  }

  if (a2 < 0x30)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B128018[result];
  }

  return result;
}

uint64_t sub_21AFD6180@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD61B4()
{
  sub_21B09A19C();

  return sub_21B111F34();
}

uint64_t sub_21AFD62AC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CommandType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD62E0()
{
  sub_21B0AA79C();

  return sub_21B111F34();
}

uint64_t sub_21AFD63C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD63F4()
{
  sub_21B0AA748();

  return sub_21B111F34();
}

uint64_t sub_21AFD64D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6508()
{
  sub_21B0AA6F4();

  return sub_21B111F34();
}

uint64_t sub_21AFD65E8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD661C()
{
  sub_21B099DAC();

  return sub_21B111F34();
}

uint64_t sub_21AFD66FC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6730()
{
  sub_21B099E00();

  return sub_21B111F34();
}

uint64_t sub_21AFD6810@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_HideReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6844()
{
  sub_21B099E54();

  return sub_21B111F34();
}

uint64_t sub_21AFD6924@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MailSuggestionDataSources.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6958()
{
  sub_21B099EA8();

  return sub_21B111F34();
}

uint64_t sub_21AFD6A38@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6A6C()
{
  sub_21B099EFC();

  return sub_21B111F34();
}

uint64_t sub_21AFD6B4C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EmbeddingStatusType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6B9C()
{
  sub_21B0AA6A0();

  return sub_21B111F34();
}

uint64_t sub_21AFD6C7C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ContactActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6CB0()
{
  sub_21B09A148();

  return sub_21B111F34();
}

uint64_t sub_21AFD6D90@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CounterfactualError.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 0:
      case 1:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        break;
      case 2:
        a2 = 1;
        break;
      case 3:
        a2 = 2;
        break;
      case 5:
        a2 = 4;
        break;
      case 6:
        a2 = 5;
        break;
      case 12:
        a2 = 6;
        break;
      case 13:
        a2 = 7;
        break;
      case 14:
        a2 = 8;
        break;
      default:
        switch(a2)
        {
          case 62:
            a2 = 9;
            break;
          case 124:
            a2 = 10;
            break;
          case 125:
            a2 = 11;
            break;
          case 127:
            a2 = 12;
            break;
          case 201:
            a2 = 3;
            break;
        }

        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 172:
        a2 = 13;
        break;
      case 173:
        a2 = 14;
        break;
      case 174:
        a2 = 15;
        break;
      case 175:
        a2 = 16;
        break;
      case 176:
        a2 = 17;
        break;
      case 177:
        a2 = 18;
        break;
      case 178:
        a2 = 19;
        break;
      case 179:
        a2 = 20;
        break;
      case 180:
        a2 = 21;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B1281A0[result];
  }

  return result;
}

uint64_t sub_21AFD6F58@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6F8C()
{
  sub_21B09A298();

  return sub_21B111F34();
}

uint64_t sub_21AFD7088@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD70BC()
{
  sub_21B0AA64C();

  return sub_21B111F34();
}

uint64_t sub_21AFD719C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SKStoreProductPageResult.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD71E0()
{
  sub_21B09A340();

  return sub_21B111F34();
}

uint64_t sub_21AFD72C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7304()
{
  sub_21B09A3E8();

  return sub_21B111F34();
}

uint64_t sub_21AFD73E4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7418()
{
  sub_21B099FA4();

  return sub_21B111F34();
}

uint64_t sub_21AFD74F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SpotlightQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD752C()
{
  sub_21B0AA5F8();

  return sub_21B111F34();
}

uint64_t sub_21AFD760C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7650()
{
  sub_21B09A43C();

  return sub_21B111F34();
}

uint64_t sub_21AFD7730@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosLibraryBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7780()
{
  sub_21B099D58();

  return sub_21B111F34();
}

uint64_t sub_21AFD7860@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosRetrievalBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7894()
{
  sub_21B09A688();

  return sub_21B111F34();
}

uint64_t sub_21AFD7974@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupHintRelevancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_21AFD79D8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7A0C()
{
  sub_21B0AA5A4();

  return sub_21B111F34();
}

uint64_t sub_21AFD7B08@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FlusherEndpoint.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_FeedbackType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 'd':
      a2 = 45;
      break;
    case 'e':
      a2 = 46;
      break;
    case 'f':
      a2 = 47;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B128250[result];
  }

  return result;
}

uint64_t sub_21AFD7BB8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7BEC()
{
  sub_21B0AA550();

  return sub_21B111F34();
}

uint64_t sub_21AFD7CE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7D1C()
{
  sub_21B0AA4FC();

  return sub_21B111F34();
}

uint64_t sub_21AFD7DFC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupSelectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7E30()
{
  sub_21B09A730();

  return sub_21B111F34();
}

uint64_t sub_21AFD7F10@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7F44()
{
  sub_21B0AA4A8();

  return sub_21B111F34();
}

uint64_t sub_21AFD8024@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PrivateRelayStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NullValue.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_815();
  }
}

uint64_t sub_21AFD8080@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD80B4()
{
  sub_21B0AA454();

  return sub_21B111F34();
}

uint64_t sub_21AFD81B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_NullValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD81E4()
{
  sub_21B09A784();

  return sub_21B111F34();
}

uint64_t sub_21AFD82C4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CBAEngagementType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8314()
{
  sub_21B0AA400();

  return sub_21B111F34();
}

uint64_t sub_21AFD8410@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_BundleIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8444()
{
  sub_21B0AA3AC();

  return sub_21B111F34();
}

uint64_t sub_21AFD8524@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_UserReportType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8568()
{
  sub_21B0AA358();

  return sub_21B111F34();
}

uint64_t sub_21AFD8648@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_Client.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8698()
{
  sub_21B0AA304();

  return sub_21B111F34();
}

uint64_t sub_21AFD8734()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_688();
  v2 = *v0;
  *v0 = v1;
}

uint64_t sub_21AFD87B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackDeletionReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v3);
  v5 = OUTLINED_FUNCTION_650(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B02E86C(v7);
    OUTLINED_FUNCTION_20_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_344();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD891C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B02E86C(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_371();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.minRtt.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21B02E86C(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 72) = *(v0 + 64);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9018(uint64_t a1)
{
  OUTLINED_FUNCTION_159(a1);
  v5 = OUTLINED_FUNCTION_500();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B02E86C(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 64) = v3;

  free(v1);
}