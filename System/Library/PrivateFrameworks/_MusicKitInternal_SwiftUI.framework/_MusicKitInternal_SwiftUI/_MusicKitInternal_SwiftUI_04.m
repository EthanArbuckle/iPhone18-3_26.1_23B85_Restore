uint64_t sub_2178C1BC8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_2178C107C(a1, *(v1 + 16), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t Artwork.image(width:height:cropStyle:format:)()
{
  OUTLINED_FUNCTION_62();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v6 = sub_21796588C();
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  v1[29] = OUTLINED_FUNCTION_16_2();
  v9 = sub_2179658AC();
  v1[30] = v9;
  OUTLINED_FUNCTION_64_0(v9);
  v1[31] = v10;
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_16_2();
  v13 = sub_21796557C();
  v1[33] = v13;
  OUTLINED_FUNCTION_64_0(v13);
  v1[34] = v14;
  v16 = *(v15 + 64);
  v1[35] = OUTLINED_FUNCTION_16_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v17);
  v19 = *(v18 + 64);
  v1[36] = OUTLINED_FUNCTION_16_2();
  v20 = sub_21796572C();
  v1[37] = v20;
  OUTLINED_FUNCTION_64_0(v20);
  v1[38] = v21;
  v23 = *(v22 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2178C1D88()
{
  v40 = v0;
  v1 = v0[28];
  sub_217968B2C();
  if (v0[21])
  {
    sub_2178C2C34(0, &qword_2811AD300, 0x277CD5D50);
    if (swift_dynamicCast())
    {
      v2 = v0[22];
      v0[41] = v2;
      v3 = [v2 dataSource];
      if (v3)
      {
        v4 = v3;
        v5 = [v2 token];
        sub_2179694AC();
        swift_unknownObjectRelease();
        v6 = objc_allocWithZone(MEMORY[0x277CD5D50]);
        v7 = sub_2178C29B4(v39, v4);
      }

      else
      {
        v7 = v2;
      }

      v0[42] = v7;
      v33 = v0[24];
      v34 = v0[25];
      v35 = v7;
      [v35 setFittingSize_];
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_2178C21E4;
      v36 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2C0, &qword_21796D6C0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2178C28AC;
      v0[13] = &block_descriptor_0;
      v0[14] = v36;
      [v35 requestImageWithCompletion_];
      OUTLINED_FUNCTION_15_3();

      return MEMORY[0x282200938]();
    }
  }

  else
  {
    sub_2178653BC((v0 + 18), &qword_27CB8A7F0, &unk_21796B180);
  }

  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[26];
  v14 = v0[24];
  sub_217968B6C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[29];
    v18 = v0[30];
    sub_2178653BC(v0[36], &qword_27CB8B218, &unk_217970AE0);
    sub_21796587C();
    sub_2178C2A30(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_2();
    sub_2178C2F48(v19, v20);
    sub_2179656BC();
    sub_21796589C();
    (*(v16 + 8))(v15, v18);
    swift_willThrow();
    OUTLINED_FUNCTION_1_5();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_15_3();

    __asm { BRAA            X1, X16 }
  }

  v23 = v0[39];
  v24 = v0[38];
  v25 = v0[35];
  (*(v24 + 32))(v0[40], v0[36], v0[37]);
  v26 = *(v24 + 16);
  v27 = OUTLINED_FUNCTION_63_0();
  v28(v27);
  sub_21796556C();
  v0[44] = [objc_opt_self() sharedSession];
  v29 = *(MEMORY[0x277CC9D18] + 4);
  v30 = swift_task_alloc();
  v0[45] = v30;
  *v30 = v0;
  v30[1] = sub_2178C238C;
  v31 = v0[35];
  OUTLINED_FUNCTION_15_3();

  return MEMORY[0x28211ECF8]();
}

uint64_t sub_2178C21E4()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_11_4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 344) = *(v4 + 48);
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2178C22E8()
{
  v2 = v0[41];
  v1 = v0[42];

  v3 = v0[23];
  OUTLINED_FUNCTION_1_5();

  v4 = OUTLINED_FUNCTION_13_6();

  return v5(v4);
}

uint64_t sub_2178C238C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  OUTLINED_FUNCTION_11_4();
  *v8 = v7;
  v9 = *(v6 + 360);
  v10 = *v4;
  OUTLINED_FUNCTION_11_4();
  *v11 = v10;
  v14[46] = v12;
  v14[47] = v13;
  v14[48] = v3;

  v15 = *(v6 + 352);
  if (!v3)
  {
  }

  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2178C24CC()
{
  v1 = v0[46];
  v2 = v0[47];
  sub_2178C2C34(0, &qword_2811AD2E8, 0x277D755B8);
  v3 = OUTLINED_FUNCTION_63_0();
  sub_2178C2B84(v3, v4);
  v5 = OUTLINED_FUNCTION_63_0();
  v7 = sub_2178C293C(v5, v6);
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[34];
  v14 = v0[35];
  v15 = v0[33];
  if (v7)
  {
    sub_2178C2BDC(v0[46], v0[47]);
    (*(v13 + 8))(v14, v15);
    (*(v11 + 8))(v10, v12);
    OUTLINED_FUNCTION_1_5();

    v16 = OUTLINED_FUNCTION_13_6();

    return v17(v16);
  }

  else
  {
    v27 = v0[37];
    v28 = v0[40];
    v20 = v0[31];
    v19 = v0[32];
    v26 = v0[35];
    v21 = v0[29];
    v22 = v0[30];
    sub_21796586C();
    sub_2178C2A30(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_2();
    sub_2178C2F48(v23, v24);
    sub_2179656BC();
    sub_21796589C();
    (*(v20 + 8))(v19, v22);
    swift_willThrow();
    sub_2178C2BDC(v9, v8);
    (*(v13 + 8))(v26, v15);
    (*(v11 + 8))(v28, v27);
    OUTLINED_FUNCTION_1_5();

    OUTLINED_FUNCTION_39();

    return v25();
  }
}

uint64_t sub_2178C272C()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  swift_willThrow();

  v4 = v0[43];
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_39();

  return v5();
}

uint64_t sub_2178C27E0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  (*(v0[34] + 8))(v0[35], v0[33]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[48];
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_39();

  return v5();
}

uint64_t *sub_2178C28AC(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2178C0CF0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2178C0D5C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2178C293C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21796573C();
  v6 = [v4 initWithData_];

  sub_2178C2BDC(a1, a2);
  return v6;
}

id sub_2178C29B4(uint64_t *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithToken:sub_21796968C() dataSource:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

unint64_t sub_2178C2A30(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2C8, &qword_21796D6C8);
  v2 = sub_2179695BC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2178C2D60(v6, &v15, &qword_27CB8C2D0, &qword_21796D6D0);
    v7 = v15;
    v8 = v16;
    result = sub_2178C2CE8(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2178C2DBC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2178C2B84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2178C2BDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2178C2C34(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2178C2C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2178C2CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21796973C();
  sub_217968FCC();
  v6 = sub_21796977C();

  return sub_2178C2DCC(a1, a2, v6);
}

uint64_t sub_2178C2D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_63_0();
  v9(v8);
  return a2;
}

_OWORD *sub_2178C2DBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2178C2DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21796969C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2178C2E80(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 80);

  return sub_2178C1618(a1, a2);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2178C2F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_5()
{
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[32];
  v7 = v0[29];
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_task_alloc();
}

uint64_t sub_2178C30A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_217967B8C();
  v3 = sub_21796756C();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v7 = *MEMORY[0x277CE1058];
  v8 = sub_217967BCC();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = sub_217967B4C();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E8, &unk_217973810);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

unint64_t sub_2178C31EC()
{
  result = qword_27CB8C2F0;
  if (!qword_27CB8C2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C2E8, &unk_217973810);
    sub_217898118();
    sub_21786615C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C2F0);
  }

  return result;
}

uint64_t _s5StateVMa()
{
  result = qword_27CB8C2F8;
  if (!qword_27CB8C2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2178C3304()
{
  sub_2179688CC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeControlStatus();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_2178C33E0(uint64_t a1, uint64_t a2)
{
  if ((sub_21796889C() & 1) != 0 && (v4 = _s5StateVMa(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178C3458()
{
  sub_2179688CC();
  sub_2178C371C(qword_27CB8C310, MEMORY[0x277CD8238]);
  sub_217968ECC();
  v1 = _s5StateVMa();
  MEMORY[0x21CEA86B0](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = *(v0 + v1[7]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v3);
}

uint64_t sub_2178C352C()
{
  sub_21796973C();
  sub_2178C3458();
  return sub_21796977C();
}

uint64_t sub_2178C3578()
{
  sub_21796973C();
  sub_2178C3458();
  return sub_21796977C();
}

unint64_t sub_2178C35B4()
{
  v5[2] = 0xD000000000000022;
  v5[3] = 0x8000000217974CC0;
  strcpy(v5, "\n  song: ");
  BYTE3(v5[1]) = 0;
  HIDWORD(v5[1]) = -369098752;
  v1 = sub_21796885C();
  MEMORY[0x21CEA7F50](v1);

  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](v5[0], v5[1]);

  sub_21796950C();

  strcpy(v5, ",\n  status: ");
  HIWORD(v5[1]) = -4864;
  v4 = *(v0 + *(_s5StateVMa() + 20));
  v2 = sub_21796966C();
  MEMORY[0x21CEA7F50](v2);

  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](v5[0], v5[1]);

  MEMORY[0x21CEA7F50](10506, 0xE200000000000000);
  return 0xD000000000000022;
}

uint64_t sub_2178C371C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2178C3764()
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_2_3();

  return sub_217966ACC();
}

uint64_t sub_2178C37AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178C37E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2178C383C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2178C38E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_21796705C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C398, &qword_21796D918);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3A0, &qword_21796D920);
  v20 = OUTLINED_FUNCTION_2(v19);
  v32 = v21;
  v33 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v31 - v24;
  sub_21796702C();
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3A8, &qword_21796D928);
  sub_2178C46E8();
  sub_21796674C();
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_2_3();
  sub_217966A9C();
  sub_2178DA64C();

  OUTLINED_FUNCTION_1_6();
  v27 = sub_217864B2C(v26, &qword_27CB8C398, &qword_21796D918);
  sub_21796691C();
  (*(v14 + 8))(v18, v11);
  v39 = v11;
  v40 = v27;
  OUTLINED_FUNCTION_0_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v33;
  MEMORY[0x21CEA6000](v25, v33, OpaqueTypeConformance2);
  return (*(v32 + 8))(v25, v29);
}

uint64_t sub_2178C3BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v61 = sub_2179665FC();
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C1A8, &qword_21796D4B0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v59 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  v14 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v63 = &v59 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C430, &qword_21796D960);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3F0, &qword_21796D948);
  v23 = *(v22 - 8);
  v64 = v22;
  v65 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  v27 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v29 = &v59 - v28;
  v30 = a3;
  v31 = a4;
  _s9ViewModelCMa();
  swift_getWitnessTable();
  v32 = a1;
  v33 = a2;
  sub_217966A9C();
  sub_2178DA64C();
  LOBYTE(a2) = v34;

  if (a2)
  {
    sub_2179665EC();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ABA0, &qword_21796B190);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AB98, &qword_21796BD70);
    v36 = sub_2179671EC();
    v37 = sub_217864B2C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70);
    v38 = sub_2178C4CC0(&qword_27CB8ABB0, MEMORY[0x277CDE330]);
    v73 = v35;
    v74 = v36;
    v75 = v37;
    v76 = v38;
    swift_getOpaqueTypeConformance2();
    sub_217967C5C();
    if (qword_27CB8A3B0 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97920, *algn_27CB97928, qword_27CB97930);
    sub_217864B2C(&qword_27CB8C3E8, &qword_27CB8C3F0, &qword_21796D948);
    v39 = v64;
    sub_21796790C();

    (*(v65 + 8))(v26, v39);
    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = 1;
    v42 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3D0, &qword_21796D938) + 36)];
    *v42 = KeyPath;
    v42[1] = sub_2178C4D08;
    v42[2] = v41;
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v43 = qword_27CB977C8;
    v44 = swift_getKeyPath();
    v45 = &v29[*(v68 + 36)];
    *v45 = v44;
    v45[1] = v43;
    sub_21784EAC8(v29, v70);
    swift_storeEnumTagMultiPayload();
    sub_2178C4774();
    sub_2178C49CC();

    sub_217966F8C();
    return sub_21784EB38(v29);
  }

  else
  {
    v47 = v62;
    sub_2179665EC();
    v48 = swift_allocObject();
    v48[2] = v30;
    v48[3] = v31;
    v48[4] = v32;
    v48[5] = v33;

    v49 = v60;
    MEMORY[0x21CEA6BE0](v47, sub_2178C4B3C, v48);
    if (qword_27CB8A3B0 != -1)
    {
      swift_once();
    }

    sub_2178EE0A8(qword_27CB97920, *algn_27CB97928, qword_27CB97930);
    sub_217864B2C(&qword_27CB8C1A0, &qword_27CB8C1A8, &qword_21796D4B0);
    v50 = v63;
    v51 = v67;
    sub_21796790C();

    (*(v66 + 8))(v49, v51);
    v52 = swift_getKeyPath();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v54 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C420, &qword_21796D958) + 36));
    *v54 = v52;
    v54[1] = sub_2178C4BAC;
    v54[2] = v53;
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v55 = qword_27CB977C8;
    v56 = swift_getKeyPath();
    v57 = v70;
    v58 = (v50 + *(v71 + 36));
    *v58 = v56;
    v58[1] = v55;
    sub_2178C4BE8(v50, v57);
    swift_storeEnumTagMultiPayload();
    sub_2178C4774();
    sub_2178C49CC();

    sub_217966F8C();
    return sub_2178C4C58(v50);
  }
}

uint64_t sub_2178C442C()
{
  v0 = sub_2179671EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB98, &qword_21796BD70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_21796677C();
  sub_2179671DC();
  sub_217864B2C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70);
  sub_2178C4CC0(&qword_27CB8ABB0, MEMORY[0x277CDE330]);
  sub_21796766C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2178C4630()
{
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178DC24C();
}

unint64_t sub_2178C46E8()
{
  result = qword_27CB8C3B0;
  if (!qword_27CB8C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3A8, &qword_21796D928);
    sub_2178C4774();
    sub_2178C49CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3B0);
  }

  return result;
}

unint64_t sub_2178C4774()
{
  result = qword_27CB8C3B8;
  if (!qword_27CB8C3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3C0, &qword_21796D930);
    sub_2178C482C();
    sub_217864B2C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3B8);
  }

  return result;
}

unint64_t sub_2178C482C()
{
  result = qword_27CB8C3C8;
  if (!qword_27CB8C3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3D0, &qword_21796D938);
    sub_2178C48E4();
    sub_217864B2C(&qword_27CB8C3F8, &qword_27CB8C400, &unk_21796F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3C8);
  }

  return result;
}

unint64_t sub_2178C48E4()
{
  result = qword_27CB8C3D8;
  if (!qword_27CB8C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3E0, &qword_21796D940);
    sub_217864B2C(&qword_27CB8C3E8, &qword_27CB8C3F0, &qword_21796D948);
    sub_2178C4CC0(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C3D8);
  }

  return result;
}

unint64_t sub_2178C49CC()
{
  result = qword_27CB8C408;
  if (!qword_27CB8C408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C410, &qword_21796D950);
    sub_2178C4A84();
    sub_217864B2C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C408);
  }

  return result;
}

unint64_t sub_2178C4A84()
{
  result = qword_27CB8C418;
  if (!qword_27CB8C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C420, &qword_21796D958);
    sub_2178BDB78();
    sub_217864B2C(&qword_27CB8C3F8, &qword_27CB8C400, &unk_21796F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C418);
  }

  return result;
}

uint64_t sub_2178C4B3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2178C4630();
}

uint64_t sub_2178C4B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2178C4BBC(uint64_t *a1)
{
  v1 = *a1;

  return sub_217966C9C();
}

uint64_t sub_2178C4BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178C4C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C410, &qword_21796D950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178C4CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_getWitnessTable();
}

uint64_t sub_2178C4D74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_2179682DC() == a4 || sub_21796831C() == a4 || sub_21796595C() == a4)
  {
    v12 = (*(a5 + 80))(a4, a5);
  }

  else
  {
    v9 = (*(a5 + 72))(a4, a5);
    v11 = 32;
    if (a2)
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }
  }

  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2178C4EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2178C4EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2178C4F54@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    *&v18 = a1;
    *(&v18 + 1) = a2;
    sub_217873C34();

    v7 = sub_21796763C();
    v9 = v8;
    v11 = v10;
    sub_217967B4C();
    if ((a3 & 0x100) != 0)
    {
      sub_217967B2C();
    }

    v12 = sub_2179675AC();
    v14 = v13;
    v16 = v15;

    sub_21788C9B8(v7, v9, v11 & 1);

    sub_21796755C();
    sub_2179675DC();

    sub_21788C9B8(v12, v14, v16 & 1);

    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEA0, &unk_21796DA80);
  sub_21788C8AC();
  sub_217966F8C();
  *a4 = v18;
  *(a4 + 16) = v19;
  result = *&v20;
  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  return result;
}

double sub_2178C515C@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2178C4F54(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

unint64_t sub_2178C517C()
{
  result = qword_27CB8C438;
  if (!qword_27CB8C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C440, &qword_21796DA90);
    sub_21788C8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C438);
  }

  return result;
}

id sub_2178C5208()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_3_9(0x8000000217974CF0);
  return OUTLINED_FUNCTION_4_8(v0, v1);
}

id sub_2178C527C()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_3_9(0x8000000217974D80);
  return OUTLINED_FUNCTION_4_8(v0, v1);
}

id sub_2178C52F0()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_2_4(v0, v1);
}

id sub_2178C5350()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_2_4(v0, v1);
}

void OUTLINED_FUNCTION_1_7()
{
  *v0 = 0x4F435F53474E4F53;
  v0[1] = 0xEB00000000544E55;
  v0[2] = 0x636950636973754DLL;
  v0[3] = 0xEB0000000072656BLL;
}

id OUTLINED_FUNCTION_2_4@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a1;
  v2[5] = v3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v2[6] = a2;

  return a1;
}

void OUTLINED_FUNCTION_3_9(unint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v1[1] = a1;
  v1[2] = 0x636950636973754DLL;
  v1[3] = 0xEB0000000072656BLL;
}

id OUTLINED_FUNCTION_4_8@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v3[4] = a1;
  v3[5] = v2;
  v3[6] = a2;

  return a1;
}

uint64_t sub_2178C5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v16 = *a10;
  v17 = *(a10 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v18 = type metadata accessor for MusicPicker.SheetPresentationModifier();
  v19 = v18[9];
  sub_21796944C();
  v20 = sub_217967D5C();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a4, v20);
  v22 = (a9 + v18[10]);
  *v22 = a5;
  v22[1] = a6;
  v22[2] = a7;
  *(a9 + v18[11]) = a8;
  v23 = a9 + v18[12];
  *v23 = v16;
  *(v23 + 8) = v17;
  v24 = (a9 + v18[13]);
  *v24 = a11;
  v24[1] = a12;
  return result;
}

uint64_t sub_2178C5588()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  sub_217967D3C();
  return v2;
}

uint64_t sub_2178C55E4(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  sub_21796944C();
  sub_217967D5C();
  return sub_217967D3C();
}

uint64_t sub_2178C5634(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v6 = *v2;
  v7 = *(v2 + 1);
  v3 = *(a1 + 16);
  sub_21796919C();
  sub_217967D5C();
  sub_217967D3C();
  return v5;
}

uint64_t sub_2178C569C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a1;
  v42 = a3;
  v6 = *(a2 - 8);
  v40 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_2179670BC();
  v10 = *(a2 + 16);
  v36 = *(a2 + 24);
  v37 = v10;
  _s17MainViewContainerVMa();
  v11 = sub_21796698C();
  v12 = v9;
  v33 = v9;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE0880];
  v34 = swift_getWitnessTable();
  v43 = v12;
  v44 = v11;
  v45 = WitnessTable;
  v46 = v34;
  v38 = MEMORY[0x277CDEE28];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v32 = v31 - v19;
  sub_2178C5588();
  v31[1] = v20;
  (*(v6 + 16))(v8, v4, a2);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 16) = v37;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, v8, a2);
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = v34;
  v27 = v35;
  sub_2179679BC();

  v43 = v24;
  v44 = v25;
  v45 = v27;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_2179560E4(v18, OpaqueTypeMetadata2);
  v29 = *(v39 + 8);
  v29(v18, OpaqueTypeMetadata2);
  sub_2179560E4(v28, OpaqueTypeMetadata2);
  return (v29)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_2178C5A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  sub_21796944C();
  v7 = sub_217967D5C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = a3;
  v41 = &v38[-v9];
  v10 = _s17MainViewContainerVMa();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38[-v12];
  v14 = sub_21796698C();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v45 = &v38[-v18];
  v19 = type metadata accessor for MusicPicker.SheetPresentationModifier();
  v20 = sub_2178C5588();
  v42 = v21;
  v43 = v20;
  v39 = v22;
  sub_2178C55E4(v19);
  v23 = sub_2178C5634(v19);
  v25 = v24;
  v27 = v26;
  v28 = v19[12];
  v29 = *(a1 + v19[11]);
  LOBYTE(v24) = *(a1 + v28 + 8);
  v51 = *(a1 + v28);
  v52 = v24;
  v30 = (a1 + v19[13]);
  v32 = *v30;
  v31 = v30[1];
  sub_2178BF534(v51, v24);

  sub_2178BE168(v43, v42, v39 & 1, v41, v23, v25, v27, v29, v13, &v51, v32, v31, a2, v40);
  sub_21796741C();
  WitnessTable = swift_getWitnessTable();
  sub_2179669BC();
  v34 = v44;
  sub_2179677DC();
  (*(v46 + 8))(v13, v10);
  v49 = WitnessTable;
  v50 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  v35 = v45;
  sub_2179560E4(v34, v14);
  v36 = *(v47 + 8);
  v36(v34, v14);
  sub_2179560E4(v35, v14);
  return (v36)(v35, v14);
}

uint64_t View.musicPicker<A>(isPresented:selection:reason:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a8;
  v36 = a7;
  v37 = a6;
  v34 = a4;
  v35 = a2;
  v38 = a3;
  v39 = a9;
  v33[1] = a12;
  v40 = a11;
  sub_21796944C();
  v14 = sub_217967D5C();
  OUTLINED_FUNCTION_2(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v19);
  v21 = v33 - v20;
  v22 = type metadata accessor for MusicPicker.SheetPresentationModifier();
  OUTLINED_FUNCTION_2(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v27);
  v29 = v33 - v28;
  v30 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  (*(v16 + 16))(v21, v34, v14);

  v31 = v35;

  v42 = sub_217968E7C();
  sub_21796919C();
  sub_217967D4C();

  v42 = v30;
  v43 = a5;
  sub_2178C5468(a1, v31, v38, v21, v44, v45, v46, 0, v29, &v42, v37, v36);
  sub_2178BF534(v30, a5);

  MEMORY[0x21CEA69A0](v29, v41, v22, v40);
  return (*(v24 + 8))(v29, v22);
}

uint64_t View.musicPicker<A>(isPresented:selection:reason:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v45 = a3;
  v50 = a9;
  v43 = a10;
  v44 = a8;
  v39[1] = a14;
  v40 = a2;
  v49 = a13;
  v16 = sub_21796944C();
  OUTLINED_FUNCTION_2(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v21);
  v23 = v39 - v22;
  v24 = *(*(sub_217967D5C() - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v25);
  v27 = v39 - v26;
  v28 = type metadata accessor for MusicPicker.SheetPresentationModifier();
  v41 = OUTLINED_FUNCTION_2(v28);
  v42 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  v34 = v39 - v33;
  v35 = *a7;
  LOBYTE(a7) = *(a7 + 8);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, a12);

  v36 = v40;

  sub_217967D4C();
  (*(v18 + 8))(v23, v16);
  v52 = v35;
  v53 = a7;
  sub_2178C5468(a1, v36, v45, v27, v46, v47, v48, 1, v34, &v52, v44, v43);

  sub_2178BF534(v35, a7);

  v37 = v41;
  MEMORY[0x21CEA69A0](v34, v51, v41, v49);
  return (*(v42 + 8))(v34, v37);
}

uint64_t _s5ClickVwet(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MusicPicker(_BYTE *result, int a2, int a3)
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

void sub_2178C63F8(uint64_t a1)
{
  sub_2178BFC6C(319, &qword_27CB8C280, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_21796944C();
    sub_217967D5C();
    if (v4 <= 0x3F)
    {
      sub_21796919C();
      sub_217967D5C();
      if (v5 <= 0x3F)
      {
        sub_2178BFC6C(319, &qword_27CB8C288, &type metadata for MusicPicker.Reason, MEMORY[0x277D83D88]);
        if (v6 <= 0x3F)
        {
          sub_217875494();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2178C653C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  if (v6)
  {
    v11 = 53;
  }

  else
  {
    v11 = 54;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 | 7;
  if (v9 >= a2)
  {
LABEL_34:
    if (v9 == 0x7FFFFFFF)
    {
      v21 = *(result + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v10 + ((((result + v12 + 17) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = ((v11 + *(*(v4 - 8) + 64) - (((-17 - v10) | v10) + ((-18 - v12) | v12))) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = a2 - v9;
    v15 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 2:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v19 = *(result + v13);
        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_30:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          LODWORD(v15) = *result;
        }

        result = v9 + (v15 | v20) + 1;
        break;
      default:
        goto LABEL_34;
    }
  }

  return result;
}

void sub_2178C66FC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= 0)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = ((((v13 + 16) & ~v13) + v14 + (((v13 | 7) + 17) & ~(v13 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 < a3)
  {
    v16 = a3 - v12;
    if (((((v13 + 16) & ~v13) + v14 + (((v13 | 7) + 17) & ~(v13 | 7)) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (v12 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              a1[16] = 0;
              *a1 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              *(a1 + 1) = a2 - 1;
            }
          }

          else
          {
            v21 = (v13 + (((&a1[(v13 | 7) + 17] & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13;
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(v21, v22, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v12;
    }

    if (v15)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2178C696C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for MusicPicker.SheetPresentationModifier() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2178C5A7C(v6, v3, v4, a1);
}

uint64_t sub_2178C6A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C450, &qword_21796DBE0);
  sub_217967C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C458, &qword_21796DBE8);
  sub_2179664EC();
  sub_2178C6E30();
  sub_2178C6E94();
  sub_21796771C();
}

uint64_t sub_2178C6ACC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2178C6A10();
}

uint64_t View.artworkLoadingObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_2179664EC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_2179664DC();
  sub_217967C0C();
  MEMORY[0x21CEA69A0](&v13, a3, &_s27LoadingObserverViewModifierVN, a4);
}

uint64_t sub_2178C6BD4(uint64_t a1, double a2, double a3, uint64_t a4, void (*a5)(char *, uint64_t *, double, double))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  v13 = sub_217968C2C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  if ((sub_217968BCC() & 1) == 0)
  {
    sub_2178C6EEC(v12);
    (*(*(v13 - 8) + 16))(v12, a1, v13);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  }

  sub_21795F90C(&v17);
  v15 = v17;
  v16 = v18;
  a5(v12, &v15, a2, a3);
  return sub_2178C6EEC(v12);
}

unint64_t sub_2178C6D34()
{
  result = qword_2811AD440;
  if (!qword_2811AD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD440);
  }

  return result;
}

uint64_t sub_2178C6D88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2178C6DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2178C6E30()
{
  result = qword_2811AD460;
  if (!qword_2811AD460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C458, &qword_21796DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD460);
  }

  return result;
}

unint64_t sub_2178C6E94()
{
  result = qword_2811AD5E0;
  if (!qword_2811AD5E0)
  {
    sub_2179664EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD5E0);
  }

  return result;
}

uint64_t sub_2178C6EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178C6F54@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_21796616C();
  sub_21796615C();
  *a5 = sub_2178C7014();
  a5[1] = v10;
  v11 = _s9CellTitleVMa();
  result = (*(*(a4 - 8) + 32))(a5 + v11[9], a1, a4);
  *(a5 + v11[10]) = a2;
  *(a5 + v11[11]) = a3;
  return result;
}

uint64_t sub_2178C7014()
{
  sub_21796616C();
  sub_2178C8B38(qword_27CB8C460, MEMORY[0x277D2AC80]);

  return sub_2179668BC();
}

void sub_2178C70A8(uint64_t a1)
{
  sub_2178C7514();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2178C7140(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2178C72C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 2;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) != -2)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2178C7514()
{
  if (!qword_27CB8C4E8)
  {
    sub_21796616C();
    sub_2178C8B38(qword_27CB8C460, MEMORY[0x277D2AC80]);
    v0 = sub_2179668CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8C4E8);
    }
  }
}

uint64_t sub_2178C75EC(uint64_t a1)
{
  v3 = sub_2179659BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  if (*(v1 + *(a1 + 44)) != 1)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = v1 + *(a1 + 36);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C508, &unk_217973820);
  if (!swift_dynamicCast())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_217875F0C(v17, &qword_27CB8C510, &qword_21796DC70);
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  sub_21784A7D4(v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_21796590C();
  (*(v4 + 104))(v8, *MEMORY[0x277D2A4B0], v3);
  v14 = sub_2179659AC();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14 & 1;
}

uint64_t sub_2178C77FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21796760C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C4F0, &qword_21796DC60);
  v12 = OUTLINED_FUNCTION_2(v11);
  v32 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  v18 = *(a1 + 36);
  v19 = (*(*(a1 + 24) + 64))(*(a1 + 16), *(a1 + 24));
  if (v20)
  {
    v31 = v4;
    sub_2178C7AE4(v19, v20, v34);

    v21 = v34[1];
    v22 = v35;
    v30 = v34[0];
    if (sub_2178C75EC(a1))
    {
      v23 = sub_2178C837C(a1);
      v25 = v24;
      v27 = v26;
      v29 = a2;
      sub_2179675EC();
      sub_21788C9B8(v23, v25, v27 & 1);
      a2 = v29;
    }

    else
    {
      sub_2179675FC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C4F8, &qword_21796DC68);
    sub_2178C8ABC();
    sub_2179676EC();
    (*(v33 + 8))(v10, v31);
    sub_21788C9B8(v30, v21, v22);

    (*(v32 + 32))(a2, v17, v11);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v11);
  }
}

uint64_t sub_2178C7AE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_217966D7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_217966D6C();
  sub_217966D5C();
  v8 = _s9CellTitleVMa();
  v9 = sub_2178C7D58(a1, a2, v8);
  v11 = v10;
  LOBYTE(a1) = v12;
  sub_217966D2C();
  sub_21788C9B8(v9, v11, a1 & 1);

  sub_217966D5C();
  v13 = sub_2178C7E6C(v8);
  v15 = v14;
  LOBYTE(v9) = v16;
  sub_217966D2C();
  sub_21788C9B8(v13, v15, v9 & 1);

  sub_217966D5C();
  sub_217966D9C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v17 = qword_27CB978B8;
  v18 = sub_21796761C();
  v20 = v19;
  v22 = v21;
  sub_21796747C();
  v23 = sub_2179675DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21788C9B8(v18, v20, v22 & 1);

  *a3 = v23;
  *(a3 + 8) = v25;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  return result;
}

uint64_t sub_2178C7D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217873C34();

  v5 = sub_21796763C();
  v7 = v6;
  v9 = v8;
  if (*(v3 + *(a3 + 40)) == 1)
  {
    sub_217967B4C();
    sub_217967B2C();
  }

  else
  {
    sub_217967B3C();
  }

  v10 = sub_2179675AC();

  sub_21788C9B8(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_2178C7E6C(uint64_t a1)
{
  v3 = sub_21796870C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C518, &qword_21796DC78);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C520, &qword_21796DC80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(a1 + 36);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v44 = a1;
  v45 = v1;
  v24 = v4;
  (*(v23 + 120))(v22);
  (*(v4 + 104))(v18, *MEMORY[0x277CD8000], v3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  v25 = *(v8 + 56);
  sub_2178C8B80(v20, v11, &qword_27CB8C520, &qword_21796DC80);
  sub_2178C8B80(v18, &v11[v25], &qword_27CB8C520, &qword_21796DC80);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_217875F0C(v18, &qword_27CB8C520, &qword_21796DC80);
    sub_217875F0C(v20, &qword_27CB8C520, &qword_21796DC80);
    if (__swift_getEnumTagSinglePayload(&v11[v25], 1, v3) == 1)
    {
      sub_217875F0C(v11, &qword_27CB8C520, &qword_21796DC80);
      v27 = v44;
      v26 = v45;
LABEL_8:
      v29 = sub_2178C87FC();
      goto LABEL_10;
    }

LABEL_6:
    sub_217875F0C(v11, &qword_27CB8C518, &qword_21796DC78);
    v29 = 0;
    v30 = 0xE000000000000000;
    v27 = v44;
    v26 = v45;
    goto LABEL_10;
  }

  v28 = v43;
  sub_2178C8B80(v11, v43, &qword_27CB8C520, &qword_21796DC80);
  if (__swift_getEnumTagSinglePayload(&v11[v25], 1, v3) == 1)
  {
    sub_217875F0C(v18, &qword_27CB8C520, &qword_21796DC80);
    sub_217875F0C(v20, &qword_27CB8C520, &qword_21796DC80);
    (*(v24 + 8))(v28, v3);
    goto LABEL_6;
  }

  v31 = v42;
  (*(v24 + 32))(v42, &v11[v25], v3);
  sub_2178C8B38(&qword_27CB8C528, MEMORY[0x277CD8008]);
  v32 = sub_217968F1C();
  v33 = *(v24 + 8);
  v33(v31, v3);
  sub_217875F0C(v18, &qword_27CB8C520, &qword_21796DC80);
  sub_217875F0C(v20, &qword_27CB8C520, &qword_21796DC80);
  v33(v28, v3);
  sub_217875F0C(v11, &qword_27CB8C520, &qword_21796DC80);
  v27 = v44;
  v26 = v45;
  if (v32)
  {
    goto LABEL_8;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
LABEL_10:
  v46 = v29;
  v47 = v30;
  sub_217873C34();
  v34 = sub_21796763C();
  v36 = v35;
  v38 = v37;
  v39 = *(v26 + *(v27 + 40));
  sub_217967B4C();
  if (v39 == 1)
  {
    sub_217967B2C();
  }

  v40 = sub_2179675AC();

  sub_21788C9B8(v34, v36, v38 & 1);

  return v40;
}

uint64_t sub_2178C837C(uint64_t a1)
{
  v45 = a1;
  v1 = sub_217966D7C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  sub_217966D8C();
  v7 = sub_21796761C();
  v9 = v8;
  v11 = v10;
  sub_217967B0C();
  v12 = sub_2179675AC();
  v47 = v13;
  v48 = v12;
  v49 = v14;
  v50 = v15;

  sub_21788C9B8(v7, v9, v11 & 1);

  sub_217966D8C();
  v16 = sub_21796761C();
  v18 = v17;
  v20 = v19;
  v21 = sub_2179674BC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v21);
  sub_21796751C();
  sub_217875F0C(v6, &qword_27CB8AEC0, &qword_21796B610);
  v22 = sub_2179675DC();
  v24 = v23;
  v26 = v25;

  sub_21788C9B8(v16, v18, v20 & 1);

  if (sub_2178C75EC(v45))
  {
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_217967B0C();
  }

  v27 = sub_2179675AC();
  v29 = v28;
  v31 = v30;

  sub_21788C9B8(v22, v24, v26 & 1);

  v32 = sub_21796759C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_21788C9B8(v27, v29, v31 & 1);

  sub_217966D6C();
  sub_217966D5C();
  v40 = v47;
  v39 = v48;
  sub_217966D2C();
  sub_217966D5C();
  HIDWORD(v44) = v36;
  v45 = v32;
  v46 = v38;
  sub_217966D2C();
  sub_217966D5C();
  sub_217966D9C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v41 = qword_27CB978B8;
  v42 = sub_21796761C();
  sub_21788C9B8(v45, v34, BYTE4(v44) & 1);

  sub_21788C9B8(v39, v40, v49 & 1);

  return v42;
}

uint64_t sub_2178C87FC()
{
  v1 = 3028656112;
  v2 = sub_21796627C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C530, &qword_21796DC88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = *(v0 + 8);
  sub_21796614C();
  sub_21796626C();
  (*(v3 + 8))(v6, v2);
  sub_2178C8B80(v16, v14, &qword_27CB8C530, &qword_21796DC88);
  v18 = sub_21796625C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1 || (sub_2178C8B80(v14, v11, &qword_27CB8C530, &qword_21796DC88), v19 = *(v18 - 8), v20 = (*(v19 + 88))(v11, v18), v20 == *MEMORY[0x277D2AE18]))
  {
    v21 = v14;
  }

  else
  {
    if (v20 == *MEMORY[0x277D2AE10])
    {
      v1 = 11768802;
    }

    else
    {
      (*(v19 + 8))(v11, v18);
    }

    v21 = v16;
    v16 = v14;
  }

  sub_217875F0C(v21, &qword_27CB8C530, &qword_21796DC88);
  sub_217875F0C(v16, &qword_27CB8C530, &qword_21796DC88);
  return v1;
}

unint64_t sub_2178C8ABC()
{
  result = qword_27CB8C500;
  if (!qword_27CB8C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C4F8, &qword_21796DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C500);
  }

  return result;
}

uint64_t sub_2178C8B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2178C8B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2178C8BE8()
{
  result = qword_27CB8C538;
  if (!qword_27CB8C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C540, &qword_21796DC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C4F8, &qword_21796DC68);
    sub_2178C8ABC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C538);
  }

  return result;
}

void sub_2178C8CA8()
{
  v0 = _s13PreviewPlayerCMa();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2178C8CE8();
  qword_27CB978B0 = v3;
}

void sub_2178C8CE8()
{
  OUTLINED_FUNCTION_81();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_2(v30);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C588, &qword_21796DCF8);
  OUTLINED_FUNCTION_2(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__state;
  _s5StateVMa();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_2178CCB68(v23, v20);
  sub_21796655C();
  sub_2178653BC(v23, &qword_27CB8C058, &qword_21796D1D8);
  (*(v10 + 32))(v0 + v24, v2, v8);
  v29 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__isPreviewing;
  v31 = 0;
  sub_21796655C();
  (*(v4 + 32))(v0 + v29, v1, v30);
  *(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) = sub_2178C8F18();
  sub_2178C94EC();
  OUTLINED_FUNCTION_80();
}

id sub_2178C8F18()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() auxiliarySession];
  v1 = *MEMORY[0x277CB8030];
  v18[0] = 0;
  if ([v0 setCategory:v1 error:v18])
  {
    v2 = v18[0];
  }

  else
  {
    v3 = v18[0];
    v4 = sub_2179656CC();

    swift_willThrow();
    if (qword_27CB8A478 != -1)
    {
      swift_once();
    }

    v5 = sub_21796653C();
    __swift_project_value_buffer(v5, qword_27CB97AE8);
    v6 = v4;
    v7 = sub_21796651C();
    v8 = sub_21796937C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18[0] = v10;
      *v9 = 136446210;
      v11 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
      v12 = sub_217968F8C();
      v14 = sub_217957F4C(v12, v13, v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_217846000, v7, v8, "Failed to set AVAudioSession category with error: %{public}s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    else
    {
    }
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CE6598]) init];
  [v15 setAudioSession_];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_2178C9170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_3();
  sub_21796657C();
}

uint64_t sub_2178C91E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178CCB68(a1, v1);

  sub_21796658C();
  OUTLINED_FUNCTION_21_3();
  return sub_2178653BC(v7, v8, v9);
}

void (*sub_2178C92B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_21796656C();
  return sub_2178C9348;
}

void sub_2178C9348(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2178C93B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  return v1;
}

uint64_t sub_2178C9424()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21796658C();
}

void sub_2178C9494(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player);
  *(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) = a1;
  v3 = a1;

  sub_2178C94EC();
}

uint64_t sub_2178C94EC()
{
  v1 = sub_2179693EC();
  v3 = v2;
  v5 = v4;
  v6 = HIDWORD(v2);
  v7 = *(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player);
  sub_2178C2C34(0, &qword_27CB8C590, 0x277D85C78);
  v8 = v7;
  v9 = sub_2179693AC();
  OUTLINED_FUNCTION_27_2();
  v10 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2178CCF68;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2178C9924;
  v17 = &block_descriptor_30;
  v11 = _Block_copy(&v14);

  v14 = v1;
  v15 = __PAIR64__(v6, v3);
  v16 = v5;
  v12 = [v8 addPeriodicTimeObserverForInterval:&v14 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_2179694AC();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v14);
}

uint64_t sub_2178C966C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_21796920C();

  v13 = sub_2179691FC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  *(v14 + 40) = a1;
  *(v14 + 48) = v4;
  *(v14 + 52) = v6;
  *(v14 + 56) = a3;

  sub_2178D2328();
}

uint64_t sub_2178C97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_21796920C();
  v7[10] = sub_2179691FC();
  v9 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178C9890, v9, v8);
}

uint64_t sub_2178C9890()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 72);
    sub_2178CBA70(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_39();

  return v5();
}

uint64_t sub_2178C9924(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(v2, v3, v4);
}

uint64_t sub_2178C9990()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_5();
  sub_2178CAB08(v0);
  v5 = _s5StateVMa();
  OUTLINED_FUNCTION_24_3(v0, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  OUTLINED_FUNCTION_21_3();
  sub_2178653BC(v8, v9, v10);
  return v7;
}

void sub_2178C9A40()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = sub_21796809C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v45 = v9;
  v46 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  OUTLINED_FUNCTION_48(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  v25 = sub_21796869C();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14();
  v33 = v32 - v31;
  sub_2179687BC();
  sub_2179687AC();
  v34 = sub_21796878C();

  if (v34)
  {
    v35 = sub_21796888C();
    if (v35)
    {
      sub_217936580(v35);

      OUTLINED_FUNCTION_24_3(v24, 1, v25);
      if (!v36)
      {
        (*(v28 + 32))(v33, v24, v25);
        sub_21796867C();
        (*(v28 + 8))(v33, v25);
        sub_21796572C();
        v37 = OUTLINED_FUNCTION_22_1();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v39);
        sub_2178653BC(v0, &qword_27CB8B218, &unk_217970AE0);
        if (EnumTagSinglePayload != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v25);
    }

    sub_2178653BC(v24, &qword_27CB8C5D0, &qword_21796DD68);
LABEL_9:
    sub_2179688CC();
    sub_2179684BC();
    sub_21796808C();
    (*(v45 + 8))(v14, v46);
    v44 = sub_21796862C();
    OUTLINED_FUNCTION_24_3(v6, 1, v44);
    sub_2178653BC(v6, &qword_27CB8AC40, &qword_21796B248);
  }

LABEL_10:
  OUTLINED_FUNCTION_80();
}

void sub_2178C9D88()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  v5 = sub_2179688CC();
  v6 = OUTLINED_FUNCTION_2(v5);
  v91 = v7;
  v92 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v88 = v10;
  v90 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  v89 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  v87 = sub_21796572C();
  v22 = OUTLINED_FUNCTION_2(v87);
  v85 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  OUTLINED_FUNCTION_48(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_3();
  v33 = sub_21796869C();
  v34 = OUTLINED_FUNCTION_2(v33);
  v86 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_16_3();
  v45 = _s5StateVMa();
  v46 = OUTLINED_FUNCTION_3(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14();
  v51 = v50 - v49;
  v93 = v0;
  sub_2178CAB08(v1);
  OUTLINED_FUNCTION_24_3(v1, 1, v45);
  if (v52)
  {
    sub_2178653BC(v1, &qword_27CB8C058, &qword_21796D1D8);
    v53 = sub_21796888C();
    if (v53)
    {
      sub_217936580(v53);

      v54 = OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_24_3(v54, v55, v33);
      if (!v52)
      {
        v56 = v86;
        (*(v86 + 32))(v40, v2, v33);
        sub_21796867C();
        v57 = v87;
        OUTLINED_FUNCTION_24_3(v21, 1, v87);
        if (!v52)
        {
          v80 = v85;
          (*(v85 + 32))(v28, v21, v57);
          sub_2178CACC4();
          (*(v80 + 8))(v28, v57);
          v81 = *(v56 + 8);
          v82 = OUTLINED_FUNCTION_28_1();
          v83(v82);
          goto LABEL_15;
        }

        v58 = *(v56 + 8);
        v59 = OUTLINED_FUNCTION_28_1();
        v60(v59);
        v61 = &qword_27CB8B218;
        v62 = &unk_217970AE0;
        v63 = v21;
LABEL_14:
        sub_2178653BC(v63, v61, v62);
        sub_21796923C();
        OUTLINED_FUNCTION_13_7();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
        OUTLINED_FUNCTION_27_2();
        v71 = swift_allocObject();
        swift_weakInit();
        v73 = v90;
        v72 = v91;
        v74 = v92;
        (*(v91 + 16))(v90, v4, v92);
        sub_21796920C();

        v75 = sub_2179691FC();
        v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v77 = (v88 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        v79 = MEMORY[0x277D85700];
        *(v78 + 16) = v75;
        *(v78 + 24) = v79;
        (*(v72 + 32))(v78 + v76, v73, v74);
        *(v78 + v77) = v71;

        OUTLINED_FUNCTION_26_2();
        sub_2178D207C();

        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v33);
    }

    v61 = &qword_27CB8C5D0;
    v62 = &qword_21796DD68;
    v63 = v2;
    goto LABEL_14;
  }

  sub_2178CCDB0(v1, v51);
  if (*(v51 + *(v45 + 20)) == 2)
  {
    sub_2178CC0F4();
  }

  else
  {
    sub_2178CBC5C();
  }

  sub_2178B927C(v51);
LABEL_15:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178CA2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_2179688CC();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_21796572C();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = sub_21796869C();
  v5[16] = v14;
  v15 = *(v14 - 8);
  v5[17] = v15;
  v16 = *(v15 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = sub_21796920C();
  v5[20] = sub_2179691FC();
  v17 = swift_task_alloc();
  v5[21] = v17;
  *v17 = v5;
  v17[1] = sub_2178CA524;

  return Song.catalogPreviewAssets.getter();
}

uint64_t sub_2178CA524()
{
  OUTLINED_FUNCTION_84();
  v2 = v0;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  *(v9 + 176) = v8;
  *(v9 + 184) = v2;

  v11 = sub_2179691BC();
  if (v2)
  {
    v12 = sub_2178CA848;
  }

  else
  {
    v12 = sub_2178CA678;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2178CA678()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[22];
  v2 = v0[20];

  if (!v1)
  {
    goto LABEL_12;
  }

  v4 = v0[15];
  v3 = v0[16];
  sub_217936580(v0[22]);

  OUTLINED_FUNCTION_24_3(v4, 1, v3);
  if (v10)
  {
    v5 = v0[15];
    v6 = &qword_27CB8C5D0;
    v7 = &qword_21796DD68;
LABEL_8:
    sub_2178653BC(v5, v6, v7);
    goto LABEL_12;
  }

  v9 = v0[11];
  v8 = v0[12];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  sub_21796867C();
  OUTLINED_FUNCTION_24_3(v9, 1, v8);
  if (v10)
  {
    v11 = v0[11];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v6 = &qword_27CB8B218;
    v7 = &unk_217970AE0;
    v5 = v11;
    goto LABEL_8;
  }

  v12 = v0[7];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  OUTLINED_FUNCTION_11_5();
  if (swift_weakLoadStrong())
  {
    v13 = v0[14];
    v14 = v0[6];
    sub_2178CACC4();
  }

  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v16 + 8))(v15, v17);
LABEL_12:
  v18 = v0[18];
  v19 = v0[14];
  v20 = v0[15];
  v22 = v0[10];
  v21 = v0[11];

  OUTLINED_FUNCTION_39();

  return v23();
}

uint64_t sub_2178CA848()
{
  v35 = v0;
  v1 = v0[20];

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v2 = v0[23];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = sub_21796653C();
  __swift_project_value_buffer(v7, qword_27CB97B00);
  (*(v4 + 16))(v3, v6, v5);
  v8 = v2;
  v9 = sub_21796651C();
  v10 = sub_21796937C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136446466;
    OUTLINED_FUNCTION_1_9();
    sub_2178CCE14(v17, v18);
    v19 = sub_21796966C();
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_217957F4C(v19, v21, &v34);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v0[5] = v12;
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v24 = sub_217968F8C();
    v26 = sub_217957F4C(v24, v25, &v34);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_217846000, v9, v10, "Failed to fetch catalogPreviewAssets for song: %{public}s. Error = %{public}s.", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v27 = v0[18];
  v28 = v0[14];
  v29 = v0[15];
  v31 = v0[10];
  v30 = v0[11];

  OUTLINED_FUNCTION_39();

  return v32();
}

uint64_t sub_2178CAB08@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  v7 = _s5StateVMa();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  OUTLINED_FUNCTION_24_3(v1, 1, v7);
  if (v14)
  {
    sub_2178653BC(v1, &qword_27CB8C058, &qword_21796D1D8);
LABEL_7:
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v20, 1, v7);
  }

  sub_2178CCDB0(v1, v13);
  sub_2179688CC();
  OUTLINED_FUNCTION_1_9();
  sub_2178CCE14(v15, v16);
  v17 = sub_21796848C();
  if ((v17 & 1) == 0)
  {
    sub_2178B927C(v13);
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_28_1();
  sub_2178CCDB0(v18, v19);
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v20, 1, v7);
}

void sub_2178CACC4()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = sub_2179688CC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v73 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v15);
  v16 = sub_21796572C();
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_5();
  v71 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v30);
  v32 = &v67 - v31;
  v77 = v7;
  v33 = *(v7 + 16);
  v72 = v1;
  v75 = v4;
  v68 = v33;
  v33(&v67 - v31, v1, v4);
  v34 = _s5StateVMa();
  *&v32[v34[5]] = 1;
  *&v32[v34[6]] = 0x40F86A0000000000;
  *&v32[v34[7]] = 0;
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
  sub_2178C91E4(v32);
  sub_2178C2C34(0, &qword_27CB8C5B8, 0x277CE6650);
  v76 = v19;
  v35 = *(v19 + 16);
  v74 = v3;
  v67 = v35;
  v35(v26, v3, v16);
  v36 = sub_2178CB27C(v26);
  v37 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  sub_21796923C();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_27_2();
  v42 = swift_allocObject();
  swift_weakInit();
  sub_21796920C();

  v43 = v36;
  v44 = sub_2179691FC();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D85700];
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v42;
  v45[5] = v43;
  v70 = v43;

  OUTLINED_FUNCTION_26_2();
  sub_2178D2328();

  v47 = v37;
  sub_2178CBC5C();
  v69 = v47;

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v48 = sub_21796653C();
  __swift_project_value_buffer(v48, qword_27CB97B00);
  v49 = v73;
  v50 = v75;
  v68(v73, v72, v75);
  v51 = v71;
  v67(v71, v74, v16);
  v52 = sub_21796651C();
  v53 = sub_21796939C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v50;
    v55 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v78 = v74;
    *v55 = 136446466;
    OUTLINED_FUNCTION_1_9();
    sub_2178CCE14(v56, v57);
    v58 = sub_21796966C();
    v59 = v16;
    v61 = v60;
    (*(v77 + 8))(v49, v54);
    v62 = sub_217957F4C(v58, v61, &v78);

    *(v55 + 4) = v62;
    *(v55 + 12) = 2082;
    v63 = sub_2179656EC();
    v65 = v64;
    (*(v76 + 8))(v51, v59);
    v66 = sub_217957F4C(v63, v65, &v78);

    *(v55 + 14) = v66;
    _os_log_impl(&dword_217846000, v52, v53, "Starting preview for song: %{public}s with previewURL: %{public}s.", v55, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {

    (*(v76 + 8))(v51, v16);
    (*(v77 + 8))(v49, v50);
  }

  OUTLINED_FUNCTION_80();
}

id sub_2178CB27C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21796570C();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_21796572C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_2178CB31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21796920C();
  v5[8] = sub_2179691FC();
  v7 = sub_2179691BC();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_2178CB3B8, v7, v6);
}

uint64_t sub_2178CB3B8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_2178CB4AC;
    v4 = *(v0 + 56);

    return sub_2178CB650();
  }

  else
  {
    v6 = *(v0 + 64);

    **(v0 + 40) = *(v0 + 88) == 0;
    OUTLINED_FUNCTION_39();

    return v7();
  }
}

uint64_t sub_2178CB4AC()
{
  OUTLINED_FUNCTION_84();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = *(v1 + 80);
  v7 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2178CB5E4, v7, v6);
}

uint64_t sub_2178CB5E4()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 64);

  **(v0 + 40) = *(v0 + 88) == 0;
  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_2178CB650()
{
  OUTLINED_FUNCTION_62();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = sub_21796920C();
  v1[9] = sub_2179691FC();
  v4 = sub_2179691BC();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_2178CB6E8, v4, v3);
}

uint64_t sub_2178CB6E8()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5B0, &qword_21796DD50);
  v2 = sub_2179658FC();
  v0[12] = v2;
  v3 = sub_2179691FC();
  v0[13] = v3;
  v4 = *(MEMORY[0x277D82DC0] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2178CB7D0;
  v6 = v0[6];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 15, v2, v3, v7);
}

uint64_t sub_2178CB7D0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;

  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {

    v8 = v3[10];
    v9 = v3[11];
    v10 = sub_2178CBA18;
  }

  else
  {

    v8 = v3[10];
    v9 = v3[11];
    v10 = sub_2178CB938;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2178CB938()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = sub_2178C92B8(v0 + 2);
  v8 = v7;
  v9 = _s5StateVMa();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    sub_2179693FC();
    *(v8 + *(v9 + 24)) = v10;
  }

  (v6)(v0 + 2, 0);
  OUTLINED_FUNCTION_39();

  return v11();
}

uint64_t sub_2178CBA18()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_39();

  return v2();
}

void sub_2178CBA70(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_3();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v9 = _s5StateVMa();
  v10 = OUTLINED_FUNCTION_22_1();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    sub_2178653BC(v3, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    v12 = *(v3 + v9[6]);
    sub_2178653BC(v3, &qword_27CB8C058, &qword_21796D1D8);
    v13 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player;
    if ([*(v2 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) timeControlStatus])
    {
      sub_2179693FC();
      v15 = v12 - v14;
      v16 = sub_2178C92B8(v24);
      v18 = OUTLINED_FUNCTION_19_2(v16, v17);
      if (!__swift_getEnumTagSinglePayload(v18, v19, v9))
      {
        *(a2 + v9[7]) = v15;
      }

      (v16)(v24, 0);
      v20 = sub_2178C92B8(v24);
      v22 = OUTLINED_FUNCTION_19_2(v20, v21);
      if (!__swift_getEnumTagSinglePayload(v22, v23, v9))
      {
        *(a2 + v9[5]) = [*(v2 + v13) timeControlStatus];
      }

      (v20)(v24, 0);
      if (v15 <= 0.0)
      {
        sub_2178CC26C();
      }
    }

    else
    {
      sub_2178CC0F4();
    }
  }
}

void sub_2178CBC5C()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) replaceCurrentItemWithPlayerItem_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v10 = _s5StateVMa();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_2178653BC(v9, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    v11 = *&v9[*(v10 + 20)];
    sub_2178653BC(v9, &qword_27CB8C058, &qword_21796D1D8);
    if (v11 == 2)
    {
      goto LABEL_24;
    }
  }

  v12 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player;
  [*(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) play];
  v13 = [*(v1 + v12) error];
  if (v13)
  {
    v14 = v13;
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v15 = sub_21796653C();
    __swift_project_value_buffer(v15, qword_27CB97B00);
    v16 = v14;
    v17 = sub_21796651C();
    v18 = sub_21796937C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v16;
      v39 = v20;
      *v19 = 136315138;
      v21 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
      v22 = sub_217968F8C();
      v24 = sub_217957F4C(v22, v23, &v39);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_217846000, v17, v18, "Failed to play preview. Error=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    v39 = v16;
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    type metadata accessor for AVError();
    if (swift_dynamicCast())
    {
      v26 = v38;
      v39 = v38;
      sub_2178CCE14(&qword_27CB8A560, type metadata accessor for AVError);
      sub_21796568C();
      if (v38 == -11912)
      {
        v27 = sub_21796651C();
        v28 = sub_21796939C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_217846000, v27, v28, "Attempting to rebuild the preview player.", v29, 2u);
          OUTLINED_FUNCTION_73();
        }

        v30 = sub_2178C8F18();
        sub_2178C9494(v30);
        if (v3 && (v31 = [v3 asset]) != 0)
        {
          v32 = v31;
          v33 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
          v34 = v33;
          sub_2178CBC5C(v33);
        }

        else
        {
          v35 = sub_21796651C();
          v36 = sub_21796937C();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_217846000, v35, v36, "Cannot preview item because the AVPlayerItem does not exist.", v37, 2u);
            OUTLINED_FUNCTION_73();
          }
        }
      }
    }
  }

  sub_2178C9424();
LABEL_24:
  OUTLINED_FUNCTION_80();
}

void sub_2178CC0F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_3();
  sub_21796657C();

  v8 = _s5StateVMa();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8))
  {
    sub_2178653BC(v6, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    KeyPath = *&v6[*(v8 + 20)];
    sub_2178653BC(v6, &qword_27CB8C058, &qword_21796D1D8);
    if (!KeyPath)
    {
      return;
    }
  }

  v9 = sub_2178C92B8(v13);
  v11 = OUTLINED_FUNCTION_19_2(v9, v10);
  if (!__swift_getEnumTagSinglePayload(v11, v12, v8))
  {
    *(KeyPath + *(v8 + 20)) = 0;
  }

  (v9)(v13, 0);
  [*(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) pause];
  sub_2178C9424();
  sub_2178CC3BC();
}

void sub_2178CC26C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  v2 = OUTLINED_FUNCTION_48(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v9 = _s5StateVMa();
  v10 = OUTLINED_FUNCTION_22_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);
  OUTLINED_FUNCTION_21_3();
  sub_2178653BC(v13, v14, v15);
  if (EnumTagSinglePayload != 1)
  {
    [*(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) replaceCurrentItemWithPlayerItem_];
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
    sub_2178C91E4(v7);
    sub_2178CC3BC();
  }
}

void sub_2178CC3BC()
{
  OUTLINED_FUNCTION_81();
  v1 = sub_217967ECC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  v31 = sub_217967EFC();
  v9 = OUTLINED_FUNCTION_2(v31);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = sub_217967EDC();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v25 = v24 - v23;
  sub_2178C2C34(0, &qword_27CB8C590, 0x277D85C78);
  (*(v20 + 104))(v25, *MEMORY[0x277D851B8], v17);
  v26 = sub_2179693CC();
  (*(v20 + 8))(v25, v17);
  v33[4] = sub_2178CCC80;
  v34 = v0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_2178CC7E8;
  v33[3] = &block_descriptor_1;
  v27 = _Block_copy(v33);

  sub_217967EEC();
  sub_2178CCE14(&qword_27CB8C598, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5A0, &qword_21796DD00);
  sub_2178CCCA0();
  sub_2179694BC();
  MEMORY[0x21CEA8320](0, v16, v8, v27);
  _Block_release(v27);

  v28 = *(v32 + 8);
  v29 = OUTLINED_FUNCTION_28_1();
  v30(v29);
  (*(v11 + 8))(v16, v31);

  OUTLINED_FUNCTION_80();
}

void sub_2178CC6D8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) audioSession];
  v9[0] = 0;
  v2 = [v1 setActive:0 withOptions:1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_2179656CC();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2178CC7E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2178CC82C()
{
  v1 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C588, &qword_21796DCF8);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__isPreviewing;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 8))(v0 + v4);

  return v0;
}

uint64_t sub_2178CC8E4()
{
  sub_2178CC82C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s13PreviewPlayerCMa()
{
  result = qword_27CB8C560;
  if (!qword_27CB8C560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2178CC990()
{
  sub_2178CCA68();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2178CCACC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2178CCA68()
{
  if (!qword_27CB8C570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C058, &qword_21796D1D8);
    v0 = sub_21796659C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8C570);
    }
  }
}

void sub_2178CCACC()
{
  if (!qword_27CB8C578)
  {
    v0 = sub_21796659C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8C578);
    }
  }
}

uint64_t sub_2178CCB28@<X0>(uint64_t *a1@<X8>)
{
  _s13PreviewPlayerCMa();
  result = sub_21796654C();
  *a1 = result;
  return result;
}

uint64_t sub_2178CCB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178CCBFC(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_3();
  sub_2178CCB68(a1, v2);
  v9 = *a2;
  return sub_2178C91E4(v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2178CCCA0()
{
  result = qword_27CB8C5A8;
  if (!qword_27CB8C5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5A0, &qword_21796DD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5A8);
  }

  return result;
}

uint64_t sub_2178CCD04()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_4(v5);
  *v6 = v7;
  v6[1] = sub_217864540;
  v8 = OUTLINED_FUNCTION_8_6();

  return sub_2178CB31C(v8, v9, v10, v4, v3);
}

uint64_t sub_2178CCDB0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178CCE14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2178CCE5C()
{
  v1 = *(sub_2179688CC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_4(v5);
  *v6 = v7;
  v6[1] = sub_2178655D0;
  v8 = OUTLINED_FUNCTION_8_6();

  return sub_2178CA2EC(v8, v9, v10, v11, v4);
}

uint64_t sub_2178CCF70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_4(v7);
  *v8 = v9;
  v8[1] = sub_2178655D0;
  v10 = OUTLINED_FUNCTION_8_6();

  return sub_2178C97F0(v10, v11, v12, v3, v4, v6, v5);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_beginAccess();
}

uint64_t sub_2178CD180(uint64_t a1, unsigned int a2)
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

uint64_t sub_2178CD1D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2178CD250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_217966FAC();
  v9 = OUTLINED_FUNCTION_2(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D8, &qword_21796DE70);
  v15 = OUTLINED_FUNCTION_2(v38);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E0, &qword_21796DE78);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v36 - v24;
  if (a3 && (a2 == 0x2E6E6F7276656863 ? (v26 = a3 == 0xEF64726177726F66) : (v26 = 0), v26 || (sub_21796969C() & 1) != 0))
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E8, &unk_21796DE80);
    (*(*(v27 - 8) + 16))(v25, a1, v27);
    swift_storeEnumTagMultiPayload();
    v28 = sub_2178CD59C();
    v29 = sub_2178CD600();
    v39 = v27;
    v40 = v8;
    v41 = v28;
    v42 = v29;
    OUTLINED_FUNCTION_0_9();
    return sub_217966F8C();
  }

  else
  {
    sub_217966A8C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E8, &unk_21796DE80);
    v32 = sub_2178CD59C();
    v33 = sub_2178CD600();
    v36[1] = a4;
    v34 = v33;
    sub_21796773C();
    (*(v37 + 8))(v14, v8);
    v35 = v38;
    (*(v17 + 16))(v25, v21, v38);
    swift_storeEnumTagMultiPayload();
    v39 = v31;
    v40 = v8;
    v41 = v32;
    v42 = v34;
    OUTLINED_FUNCTION_0_9();
    sub_217966F8C();
    return (*(v17 + 8))(v21, v35);
  }
}

unint64_t sub_2178CD59C()
{
  result = qword_27CB8C5F0;
  if (!qword_27CB8C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5E8, &unk_21796DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5F0);
  }

  return result;
}

unint64_t sub_2178CD600()
{
  result = qword_27CB8AE00;
  if (!qword_27CB8AE00)
  {
    sub_217966FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE00);
  }

  return result;
}

unint64_t sub_2178CD658()
{
  result = qword_27CB8C5F8;
  if (!qword_27CB8C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8C600, &unk_21796DE90);
    sub_2178CD59C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5E8, &unk_21796DE80);
    sub_217966FAC();
    sub_2178CD600();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 sub_2178CD764@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v15 = *(a2 + 8);
  v8 = *(a2 + 3);
  v9 = _s17PlaylistEntryCellVMa();
  v10 = (a4 + v9[11]);
  *v10 = xmmword_21796DEA0;
  v10[1] = xmmword_21796B360;
  v10[2] = xmmword_21796DEB0;
  v10[3] = xmmword_21796DEC0;
  v11 = sub_217968DFC();
  OUTLINED_FUNCTION_3(v11);
  (*(v12 + 32))(a4, a1);
  v13 = a4 + v9[9];
  *v13 = v7;
  result = v15;
  *(v13 + 8) = v15;
  *(v13 + 24) = v8;
  *(a4 + v9[10]) = a3;
  return result;
}

uint64_t sub_2178CD864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C770, &qword_21796E048);
  v9 = (a2 + v8[12]);
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  _s13PreviewPlayerCMa();
  sub_2178CF218(&qword_27CB8AFE0, _s13PreviewPlayerCMa);

  *v9 = sub_2179668BC();
  v9[1] = v10;
  v11 = (a2 + v8[13]);
  __asm { FMOV            V1.2D, #5.0 }

  *v11 = xmmword_21796B360;
  v11[1] = _Q1;
  v11[2] = xmmword_21796B370;
  v17 = sub_217968DFC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a2, a1, v17);
  *(a2 + v8[9]) = a3;
  sub_2178767B4(&v27);
  v19 = *(&v28 + 1);
  v20 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v21 = (*(v20 + 104))(v19, v20) * a3;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  *(a2 + v8[10]) = v21;
  sub_2178CF218(&qword_27CB8B0E0, MEMORY[0x277CD8590]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v22 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
LABEL_9:
    (*(v18 + 8))(a1, v17);
    result = sub_2178653BC(&v27, &qword_27CB8B088, &qword_21796B740);
    goto LABEL_10;
  }

  v23 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  (*(v23 + 96))(v26, v22, v23);
  (*(v18 + 8))(a1, v17);
  v24 = LOBYTE(v26[0]);
  result = __swift_destroy_boxed_opaque_existential_1(&v27);
  if (v24)
  {
    a4 = v21 * 0.5;
  }

LABEL_10:
  *(a2 + v8[11]) = a4;
  return result;
}

uint64_t sub_2178CDB84(uint64_t a1)
{
  result = sub_217968DFC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = _s17PlaylistEntryCellV9ConstantsVMa();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2178CDC64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2178CDCB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178CDCD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2178CDD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v123 = sub_217966FAC();
  OUTLINED_FUNCTION_0_1();
  v121 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v120 = v7;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v108 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52(&v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = sub_217968DFC();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v124 = v19;
  v20 = *(a1 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C708, &qword_21796E010);
  v100 = v21;
  OUTLINED_FUNCTION_3_10();
  v24 = sub_2178CF218(v22, v23);
  v99 = v24;
  v25 = *(a1 + 24);
  OUTLINED_FUNCTION_2_5();
  v98 = sub_217864B2C(v26, &qword_27CB8C708, &qword_21796E010);
  v129 = v13;
  v130 = v20;
  v131 = v21;
  v132 = v24;
  v133 = v25;
  v134 = v98;
  v27 = v25;
  _s9HItemCellVMa();
  OUTLINED_FUNCTION_0_1();
  v116 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52(&v95[-v32]);
  OUTLINED_FUNCTION_5_5();
  v34 = v33;
  v106 = v33;
  WitnessTable = swift_getWitnessTable();
  v105 = WitnessTable;
  OUTLINED_FUNCTION_4_9();
  v104 = sub_2178CF218(v36, v37);
  v129 = v34;
  v130 = v123;
  v131 = WitnessTable;
  v132 = v104;
  v113 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v114 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52(&v95[-v42]);
  v111 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v118 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52(&v95[-v47]);
  v117 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v119 = v48;
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v51);
  v112 = &v95[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52(&v95[-v54]);
  v55 = v102;
  v56 = v13;
  (*(v15 + 16))(v124, v102, v13);
  v57 = *(a1 + 40);
  v58 = v55;
  v59 = v55 + *(a1 + 36);
  v60 = *(v59 + 8);
  v61 = *(v59 + 16);
  v62 = *(v59 + 24);
  LOBYTE(v129) = *v59;
  v130 = v60;
  v131 = v61;
  v132 = v62;
  v97 = v58 + *(a1 + 44);
  v63 = *(v97 + 48);
  v96 = *(v58 + v57);
  v64 = v103;
  (*(v9 + 16))(v103);
  v65 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v20;
  *(v66 + 24) = v27;
  (*(v9 + 32))(v66 + v65, v64, a1);
  v67 = v56;
  v68 = v100;
  v69 = v99;
  v70 = v98;
  v71 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v71, &v136);
  v72 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v72, v135);
  v73 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v73, &v134);
  LOBYTE(v64) = OUTLINED_FUNCTION_59();

  sub_217863EC4(v62);
  v92 = v68;
  v74 = v109;
  sub_2178EFD2C(v124, &v129, v108 & 1, v103 & 1, 0, 0, v102 & 1, 11, v109, v63, v64 & 1, 0, 0, v96, v20, sub_2178CEF90, v66, v67, v20, v92, v69, v27, v70);
  v75 = v120;
  v76 = v106;
  v77 = v123;
  v78 = v105;
  v79 = v104;
  sub_217884F70();
  OUTLINED_FUNCTION_59();
  v80 = v101;
  sub_21796773C();
  (*(v121 + 8))(v75, v77);
  (*(v116 + 8))(v74, v76);
  sub_21796742C();
  v81 = v97;
  v82 = *(v97 + 56);
  v129 = v76;
  v130 = v77;
  v131 = v78;
  v132 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v107;
  v85 = OpaqueTypeMetadata2;
  sub_217967A0C();
  (*(v114 + 8))(v80, v85);
  v86 = *(v81 + 40);
  v127 = OpaqueTypeConformance2;
  v128 = MEMORY[0x277CDF918];
  v93 = v111;
  v94 = swift_getWitnessTable();
  sub_2178935BC();
  v87 = v112;
  sub_2179679AC();
  (*(v118 + 8))(v84, v93);
  v125 = v94;
  v126 = MEMORY[0x277CDFC60];
  v88 = v117;
  swift_getWitnessTable();
  v89 = v115;
  sub_2179560E4(v87, v88);
  v90 = *(v119 + 8);
  v90(v87, v88);
  sub_2179560E4(v89, v88);
  return v90(v89, v88);
}

uint64_t sub_2178CE644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_217968DFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C718, &qword_21796E018);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C720, &qword_21796E020);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C728, &qword_21796E028);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C730, &qword_21796E030);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v65 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v60 - v22;
  v23 = *(v4 + 16);
  v63 = v3;
  v61 = v23;
  v23(v17, a1, v3);
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C738, &qword_21796E038) + 36)] = 0;
  LOBYTE(v3) = sub_21796742C();
  v24 = *(_s17PlaylistEntryCellVMa() + 44);
  v64 = a1;
  v25 = a1 + v24;
  v26 = *(a1 + v24);
  sub_21796660C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C740, &qword_21796E040) + 36)];
  *v35 = v3;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_21796743C();
  v37 = *(v25 + 8);
  sub_21796660C();
  v38 = &v17[*(v14 + 36)];
  *v38 = v36;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v43 = xmmword_27CB979E0;
  v44 = qword_27CB979F0;
  v72 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x657469726F766166, 0xE800000000000000);

  sub_2178EE0A8(v72, *(&v72 + 1), v44);

  sub_2178CF01C();
  sub_21796790C();

  sub_2178653BC(v17, &qword_27CB8C728, &qword_21796E028);
  v45 = v62;
  v61(v62, v64, v63);
  v46 = v66;
  sub_2178CD864(v45, v66, *(v25 + 16), *(v25 + 24));
  LOBYTE(v45) = sub_21796743C();
  v47 = *(v25 + 32);
  sub_21796660C();
  v48 = v46 + *(v67 + 36);
  *v48 = v45;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v72 = v43;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  sub_2178EE0A8(v72, *(&v72 + 1), v44);

  sub_2178CF160();
  v53 = v68;
  sub_21796790C();

  sub_2178653BC(v46, &qword_27CB8C718, &qword_21796E018);
  v54 = v71;
  v55 = v65;
  sub_2178AEC6C(v71, v65, &qword_27CB8C730, &qword_21796E030);
  v56 = v69;
  sub_2178AEC6C(v53, v69, &qword_27CB8C720, &qword_21796E020);
  v57 = v70;
  sub_2178AEC6C(v55, v70, &qword_27CB8C730, &qword_21796E030);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C778, &unk_21796E050);
  sub_2178AEC6C(v56, v57 + *(v58 + 48), &qword_27CB8C720, &qword_21796E020);
  sub_2178653BC(v53, &qword_27CB8C720, &qword_21796E020);
  sub_2178653BC(v54, &qword_27CB8C730, &qword_21796E030);
  sub_2178653BC(v56, &qword_27CB8C720, &qword_21796E020);
  return sub_2178653BC(v55, &qword_27CB8C730, &qword_21796E030);
}

uint64_t sub_2178CED0C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v7);
  v8 = v0[7];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v8);
}

uint64_t sub_2178CEDDC()
{
  sub_21796973C();
  sub_2178CED0C();
  return sub_21796977C();
}

BOOL sub_2178CEE24(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_2178CEC80(v10, v11);
}

uint64_t sub_2178CEE78()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_2178CEDDC();
}

uint64_t sub_2178CEEB4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_2178CED0C();
}

uint64_t sub_2178CEEF0()
{
  sub_21796973C();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_2178CED0C();
  return sub_21796977C();
}

uint64_t sub_2178CEF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(_s17PlaylistEntryCellVMa() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2178CE644(v6, a1);
}

unint64_t sub_2178CF01C()
{
  result = qword_27CB8C748;
  if (!qword_27CB8C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C728, &qword_21796E028);
    sub_2178CF0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C748);
  }

  return result;
}

unint64_t sub_2178CF0A8()
{
  result = qword_27CB8C750;
  if (!qword_27CB8C750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C740, &qword_21796E040);
    sub_217864B2C(&qword_27CB8C758, &qword_27CB8C738, &qword_21796E038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C750);
  }

  return result;
}

unint64_t sub_2178CF160()
{
  result = qword_27CB8C760;
  if (!qword_27CB8C760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C718, &qword_21796E018);
    sub_217864B2C(&qword_27CB8C768, &qword_27CB8C770, &qword_21796E048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C760);
  }

  return result;
}

uint64_t sub_2178CF218(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2178CF2E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2178CF33C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2178CF398()
{
  type metadata accessor for MusicKitInternal_SwiftUI_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CB978B8 = result;
  return result;
}

__n128 sub_2178CF3F0@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v14 = *(a2 + 8);
  v8 = *(a2 + 3);
  v9 = _s17SearchContentViewVMa();
  *(a4 + *(v9 + 56)) = xmmword_21796E0A0;
  v10 = *(a3 + 8);
  v11 = sub_21796810C();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  v12 = a4 + *(v9 + 52);
  *v12 = v7;
  result = v14;
  *(v12 + 8) = v14;
  *(v12 + 24) = v8;
  return result;
}

uint64_t sub_2178CF4E8(void *a1)
{
  v2 = a1[2];
  v3 = *(a1[4] + 8);
  result = sub_21796810C();
  if (v5 <= 0x3F)
  {
    v7 = a1[3];
    v8 = a1[5];
    result = _s17SearchContentViewV9ConstantsVMa();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2178CF5E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178CF638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_21796708C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9 = sub_21796810C();
  v10 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  *&v12 = v6;
  *(&v12 + 1) = *(a1 + 24);
  v29 = v12;
  *&v13 = v7;
  *(&v13 + 1) = *(a1 + 40);
  v28 = v13;
  v39 = v12;
  v40 = v13;
  _s16SearchResultCellVMa();
  swift_getTupleTypeMetadata2();
  v14 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v39 = v9;
  *(&v39 + 1) = AssociatedTypeWitness;
  *&v40 = v14;
  *(&v40 + 1) = WitnessTable;
  v41 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_19_0();
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  v17 = sub_21796665C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v28 - v23;
  sub_217966E6C();
  v25 = *(v31 + *(a1 + 56) + 8);
  v33 = v29;
  v34 = v28;
  v35 = v31;
  sub_21789A9E0();
  sub_21796664C();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  sub_2179560E4(v22, v17);
  v26 = *(v18 + 8);
  v26(v22, v17);
  sub_2179560E4(v24, v17);
  return (v26)(v24, v17);
}

uint64_t sub_2178CF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v64 = a1;
  v68 = a2;
  v69 = a3;
  v55 = a3;
  v56 = a5;
  v70 = a4;
  v71 = a5;
  v62 = _s17SearchContentViewVMa();
  v60 = *(v62 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = v48 - v10;
  v11 = *(a4 + 8);
  v12 = sub_21796810C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  v48[1] = v48 - v15;
  v17 = *(a4 + 40);
  v54 = a4;
  v52 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v68 = a2;
  v69 = a3;
  v49 = a2;
  v70 = a4;
  v71 = a5;
  _s16SearchResultCellVMa();
  swift_getTupleTypeMetadata2();
  v19 = sub_217967E9C();
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v53 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = v12;
  v69 = AssociatedTypeWitness;
  v48[2] = v12;
  v70 = v19;
  v71 = WitnessTable;
  v72 = AssociatedConformanceWitness;
  v22 = sub_217967D9C();
  v57 = *(v22 - 8);
  v23 = *(v57 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v48 - v24;
  v26 = sub_21796698C();
  v58 = *(v26 - 8);
  v27 = *(v58 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v48 - v31;
  v33 = v16;
  v34 = v64;
  (*(v13 + 16))(v33, v64, v12);
  v35 = v59;
  v36 = v60;
  v37 = v62;
  (*(v60 + 16))(v59, v34, v62);
  v38 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v39 = swift_allocObject();
  v41 = v54;
  v40 = v55;
  *(v39 + 2) = v49;
  *(v39 + 3) = v40;
  v42 = v56;
  *(v39 + 4) = v41;
  *(v39 + 5) = v42;
  (*(v36 + 32))(&v39[v38], v35, v37);
  v43 = swift_getWitnessTable();
  sub_217967D8C();
  sub_21796742C();
  v44 = *(v64 + *(v37 + 56));
  v67 = v43;
  v45 = swift_getWitnessTable();
  sub_217967A0C();
  (*(v57 + 8))(v25, v22);
  v65 = v45;
  v66 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_2179560E4(v30, v26);
  v46 = *(v58 + 8);
  v46(v30, v26);
  sub_2179560E4(v32, v26);
  return (v46)(v32, v26);
}

uint64_t sub_2178CFF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v52 = a2;
  v53 = a7;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v13;
  v58 = v14;
  v59 = v15;
  v60 = v16;
  v17 = _s16SearchResultCellVMa();
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v49 = &v44 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v44 - v25;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v27 = *(*(v50 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v50);
  v45 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v44 - v30;
  sub_217967D6C();
  v32 = sub_21796743C();
  v33 = &v26[*(v23 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  sub_2178D05C4(v26, v31);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v23);
  (*(v9 + 16))(v12, a1, a3);
  v57 = a3;
  v58 = v47;
  v59 = v48;
  v60 = v46;
  v34 = v52 + *(_s17SearchContentViewVMa() + 52);
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  LOBYTE(v57) = *v34;
  v58 = v35;
  v59 = v36;
  v60 = v37;
  sub_217940474(v12, &v57, 0, 0, a3, v21);
  WitnessTable = swift_getWitnessTable();
  v39 = v49;
  sub_2179560E4(v21, v17);

  sub_217863EC4(v37);
  v40 = v51;
  v41 = *(v51 + 8);
  v41(v21, v17);
  v42 = v45;
  sub_2178D0634(v31, v45);
  v57 = v42;
  (*(v40 + 16))(v21, v39, v17);
  v58 = v21;
  v56[0] = v50;
  v56[1] = v17;
  v54 = sub_2178D06A4();
  v55 = WitnessTable;
  sub_2178B9390(&v57, 2, v56);
  v41(v39, v17);
  sub_2178D0728(v31);
  v41(v21, v17);
  return sub_2178D0728(v42);
}

uint64_t sub_2178D0354(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x21CEA86D0](*&v3);
}

uint64_t sub_2178D03A4(double a1, double a2)
{
  sub_21796973C();
  sub_2178D0354(a1, a2);
  return sub_21796977C();
}

BOOL sub_2178D0424(double *a1, double *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v9 = a3[5];
  return sub_2178D0340(v3, v4, v5, v6);
}

uint64_t sub_2178D043C(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2178D03A4(*v1, v1[1]);
}

uint64_t sub_2178D0450(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_2178D0354(*v2, v2[1]);
}

uint64_t sub_2178D0464(uint64_t a1, void *a2)
{
  sub_21796973C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_2178D0354(*v2, v2[1]);
  return sub_21796977C();
}

uint64_t sub_2178D04B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178D0508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s17SearchContentViewVMa() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_2178CFF30(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_2178D05C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178D0634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2178D06A4()
{
  result = qword_27CB8A7B8;
  if (!qword_27CB8A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
    sub_217864C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7B8);
  }

  return result;
}

uint64_t sub_2178D0728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178D0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  sub_217967C0C();
  v8 = v11;
  v9 = v12;
  v11 = a1;
  v12 = a2;
  v13 = v8;
  v14 = v9;
  MEMORY[0x21CEA69A0](&v11, a3, &_s23FirstAppearanceModifierVN, a4);
}

uint64_t sub_2178D0830(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2178D0870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2178D08DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C880, &qword_21796E278);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C888, &unk_21796E280) + 36));
  *v14 = sub_2178D0AB8;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

uint64_t sub_2178D09E4(uint64_t (*a1)(uint64_t))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  if (v4)
  {
  }

  sub_217967C2C();

  return a1(v3);
}

uint64_t sub_2178D0AB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_2178D09E4(*(v0 + 16));
}

unint64_t sub_2178D0AC8()
{
  result = qword_27CB8C890;
  if (!qword_27CB8C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C888, &unk_21796E280);
    sub_2178D0B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C890);
  }

  return result;
}

unint64_t sub_2178D0B54()
{
  result = qword_27CB8C898;
  if (!qword_27CB8C898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C880, &qword_21796E278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C898);
  }

  return result;
}

uint64_t ArtworkImage.Proxy.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217968C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double ArtworkImage.Proxy.size.getter()
{
  v1 = v0 + *(type metadata accessor for ArtworkImage.Proxy() + 20);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for ArtworkImage.Proxy()
{
  result = qword_27CB8C8A0;
  if (!qword_27CB8C8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ArtworkImage.Proxy.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkImage.Proxy() + 24));
  v2 = v1;
  return v1;
}

BOOL static ArtworkImage.Proxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_217968C1C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkImage.Proxy();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_2178D0D80();
      v14 = v13;
      v15 = v12;
      v16 = sub_21796941C();

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v13;
}

unint64_t sub_2178D0D80()
{
  result = qword_2811AD2E8;
  if (!qword_2811AD2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AD2E8);
  }

  return result;
}

void sub_2178D0DF0()
{
  sub_217968C2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize();
    if (v1 <= 0x3F)
    {
      sub_2178D0E8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2178D0E8C()
{
  if (!qword_27CB8C8B0)
  {
    sub_2178D0D80();
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8C8B0);
    }
  }
}

uint64_t MusicSubscriptionOffer.Options.figaroCampaignToken.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19figaroCampaignTokenSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t MusicSubscriptionOffer.Options.figaroCampaignGroup.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19figaroCampaignGroupSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t MusicSubscriptionOffer.Options.homePodSerialNumber.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19homePodSerialNumberSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t sub_2178D1008(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t MusicSubscriptionOffer.Options.homePodUniqueDeviceIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E29homePodUniqueDeviceIdentifierSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t sub_2178D10AC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

double sub_2178D1150(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  v5 = 0;
  v6 = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  [v2 getHue:v8 saturation:&v7 brightness:&v6 alpha:&v5];

  result = *v8;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2178D11F8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_2178D121C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178D123C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_2178D127C()
{
  result = qword_27CB8C8B8[0];
  if (!qword_27CB8C8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8C8B8);
  }

  return result;
}

uint64_t sub_2178D12D0(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x21CEA86D0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x21CEA86D0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x21CEA86D0](*&v9);
}

uint64_t sub_2178D1350(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

uint64_t sub_2178D13EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21796973C();
  sub_2178D12D0(v1, v2, v3, v4);
  return sub_21796977C();
}

void sub_2178D1454(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_21796944C();
  v2 = sub_217967D5C();
  if (v3 <= 0x3F)
  {
    v42 = *(v2 - 8) + 64;
    sub_21796919C();
    v4 = sub_21796659C();
    if (v5 <= 0x3F)
    {
      v43 = *(v4 - 8) + 64;
      sub_2178E363C(319, &qword_27CB8C578);
      if (v7 <= 0x3F)
      {
        v8 = *(v6 - 8) + 64;
        sub_2178E363C(319, &qword_27CB8C940);
        if (v10 <= 0x3F)
        {
          v44 = *(v9 - 8) + 64;
          sub_2178E36EC(319, &qword_27CB8C948, &qword_27CB8A578, &qword_21796A750, MEMORY[0x277CBCED0]);
          if (v12 <= 0x3F)
          {
            v45 = *(v11 - 8) + 64;
            sub_2178E3688(319, &qword_27CB8C950, MEMORY[0x277CDD968], MEMORY[0x277CBCED0]);
            if (v14 <= 0x3F)
            {
              v46 = *(v13 - 8) + 64;
              sub_2178E36EC(319, &qword_27CB8C958, &qword_27CB8C960, &qword_21796E480, MEMORY[0x277CBCED0]);
              if (v16 <= 0x3F)
              {
                v47 = *(v15 - 8) + 64;
                sub_2178E36EC(319, &qword_27CB8C968, &qword_27CB8B0A0, &qword_21796B758, MEMORY[0x277CBCED0]);
                if (v18 <= 0x3F)
                {
                  v48 = *(v17 - 8) + 64;
                  sub_2178E36EC(319, &qword_27CB8C970, &unk_27CB8C978, &unk_21796E488, MEMORY[0x277CBCED0]);
                  if (v20 <= 0x3F)
                  {
                    v49 = *(v19 - 8) + 64;
                    sub_2178E36EC(319, &qword_27CB8C980, &qword_27CB8B938, &qword_21796C740, MEMORY[0x277CBCED0]);
                    if (v22 <= 0x3F)
                    {
                      v50 = *(v21 - 8) + 64;
                      sub_2178E363C(319, &qword_27CB8C988);
                      if (v24 <= 0x3F)
                      {
                        v51 = *(v23 - 8) + 64;
                        sub_2178E36EC(319, &qword_27CB8C990, &qword_27CB8B958, &qword_21796C750, MEMORY[0x277CBCED0]);
                        if (v26 <= 0x3F)
                        {
                          v52 = *(v25 - 8) + 64;
                          sub_2178E36EC(319, &qword_27CB8C998, &qword_27CB8BA30, &qword_21796C848, MEMORY[0x277CBCED0]);
                          if (v28 <= 0x3F)
                          {
                            v53 = *(v27 - 8) + 64;
                            sub_2178E36EC(319, &qword_27CB8C9A0, &qword_27CB8BA28, &qword_21796C840, MEMORY[0x277CBCED0]);
                            if (v30 <= 0x3F)
                            {
                              v31 = *(v29 - 8) + 64;
                              sub_2178E36EC(319, &qword_27CB8C9A8, &qword_27CB8B238, &qword_21796C6B0, MEMORY[0x277CBCED0]);
                              if (v33 <= 0x3F)
                              {
                                v54 = *(v32 - 8) + 64;
                                sub_2178E36EC(319, &qword_27CB8C9B0, &qword_27CB8B800, &unk_21796C658, MEMORY[0x277CBCED0]);
                                if (v35 <= 0x3F)
                                {
                                  v55 = *(v34 - 8) + 64;
                                  sub_2178E3688(319, &qword_27CB8C9B8, MEMORY[0x277CD8608], MEMORY[0x277D83D88]);
                                  if (v37 <= 0x3F)
                                  {
                                    v56 = *(v36 - 8) + 64;
                                    sub_2178E36EC(319, &qword_27CB8C9C0, &qword_27CB8C9C8, &qword_21796E4A8, MEMORY[0x277D83D88]);
                                    if (v39 <= 0x3F)
                                    {
                                      v57 = *(v38 - 8) + 64;
                                      sub_2178E36EC(319, &qword_27CB8C9D0, &qword_27CB8C9D8, qword_21796E4B0, MEMORY[0x277CBCED0]);
                                      if (v41 <= 0x3F)
                                      {
                                        v58 = *(v40 - 8) + 64;
                                        swift_initClassMetadata2();
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

void sub_2178D1C94()
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v66 = v0;
  v70 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_45_0();
  v72 = v13;
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = v19;
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC50, &qword_21796F620);
  OUTLINED_FUNCTION_48(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_107();
  v25 = sub_21796595C();
  v26 = OUTLINED_FUNCTION_2(v25);
  v65 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v71 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13_4();
  v32 = v31;
  v68 = v7;
  v69 = v15;
  v33 = *(v15 + 16);
  v33(v20, v7, v5);
  v34 = v3;
  v35 = *(v3 + 8);
  OUTLINED_FUNCTION_182();
  sub_21796596C();
  v36 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_24_3(v36, v37, v25);
  if (v38)
  {
    sub_2178BE050(v1, &qword_27CB8CC50, &qword_21796F620);
  }

  else
  {
    v39 = v65;
    v60 = v5;
    v61 = v32;
    v40 = *(v65 + 32);
    v62 = v65 + 32;
    v63 = v40;
    v64 = v34;
    v40(v32, v1, v25);
    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    OUTLINED_FUNCTION_27_2();
    v45 = swift_allocObject();
    swift_weakInit();
    (*(v39 + 16))(v71, v32, v25);
    v46 = v60;
    v33(v20, v68, v60);
    sub_21796920C();

    v47 = sub_2179691FC();
    v48 = (*(v39 + 80) + 72) & ~*(v39 + 80);
    v49 = v39;
    v50 = v69;
    v51 = (v29 + *(v69 + 80) + v48) & ~*(v69 + 80);
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D85700];
    *(v52 + 2) = v47;
    *(v52 + 3) = v53;
    v55 = v70;
    v54 = v71;
    *(v52 + 4) = *(v70 + 80);
    *(v52 + 5) = v46;
    v56 = *(v55 + 88);
    v57 = v63;
    v58 = v64;
    *(v52 + 6) = v56;
    *(v52 + 7) = v58;
    *(v52 + 8) = v45;
    v57(&v52[v48], v54, v25);
    (*(v50 + 32))(&v52[v51], v20, v46);

    OUTLINED_FUNCTION_50_2();
    sub_2178D207C();

    (*(v49 + 8))(v61, v25);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2178D207C()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_160();
  v13 = OUTLINED_FUNCTION_224();
  sub_2178EBFC4(v13, v14, &qword_27CB8A810);
  v15 = sub_21796923C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v0, &qword_27CB8A810, &unk_21796A9A0);
  }

  else
  {
    sub_21796922C();
    OUTLINED_FUNCTION_10(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);
    OUTLINED_FUNCTION_171();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2179691BC();
  OUTLINED_FUNCTION_151();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217968F9C();
  OUTLINED_FUNCTION_171();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();
  OUTLINED_FUNCTION_123();

  sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);

LABEL_9:
  OUTLINED_FUNCTION_80();
}

void sub_2178D2328()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_160();
  v12 = OUTLINED_FUNCTION_224();
  sub_2178EBFC4(v12, v13, &qword_27CB8A810);
  v14 = sub_21796923C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v0, &qword_27CB8A810, &unk_21796A9A0);
  }

  else
  {
    sub_21796922C();
    OUTLINED_FUNCTION_10(v14);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_57_0();
    v19(v18);
  }

  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);
    OUTLINED_FUNCTION_171();
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAF8, &qword_21796E730);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2179691BC();
  OUTLINED_FUNCTION_151();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217968F9C();
  OUTLINED_FUNCTION_171();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAF8, &qword_21796E730);
  swift_task_create();
  OUTLINED_FUNCTION_75_1();

  sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);

LABEL_9:
  OUTLINED_FUNCTION_80();
}

void sub_2178D25E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32 * v1);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
  }

  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_117();
}

void sub_2178D2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968A2C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v35 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC58, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_129(v35, v36);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v37 = sub_217968A2C();
    OUTLINED_FUNCTION_3(v37);
    v39 = *(v38 + 16);
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
    OUTLINED_FUNCTION_210();
  }
}

void sub_2178D2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968DFC();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v35 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC78, &qword_27CB8AAE8, &qword_21796AFA0);
    OUTLINED_FUNCTION_129(v35, v36);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v37 = sub_217968DFC();
    OUTLINED_FUNCTION_3(v37);
    v39 = *(v38 + 16);
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
    OUTLINED_FUNCTION_210();
  }
}

void sub_2178D28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968AFC();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v35 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC98, &qword_27CB8AB40, &qword_21796BEC0);
    OUTLINED_FUNCTION_129(v35, v36);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v37 = sub_217968AFC();
    OUTLINED_FUNCTION_3(v37);
    v39 = *(v38 + 16);
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
    OUTLINED_FUNCTION_210();
  }
}

uint64_t sub_2178D2A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_217965D9C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_217965D9C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL sub_2178D2B00(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_152();
  sub_217864B2C(v2, v3, v4);
  OUTLINED_FUNCTION_141();
  sub_2179692AC();
  OUTLINED_FUNCTION_141();
  sub_2179692EC();
  return v7 == v6;
}

void sub_2178D2C28()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = sub_217965EFC();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70_0();
  v17 = sub_21796832C();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  if (sub_2178D86A8())
  {
  }

  else
  {
    v23 = sub_21796969C();

    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_2178D8938();
  OUTLINED_FUNCTION_24_3(v0, 1, v17);
  if (!v24)
  {
    v25 = *(v20 + 32);
    v26 = OUTLINED_FUNCTION_111();
    v27(v26);
    v50 = sub_2179682EC();
    v28 = OUTLINED_FUNCTION_47_0();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    v31 = _s12SearchColumnVMa();
    v32 = OUTLINED_FUNCTION_86_0(&qword_27CB8CB68);
    sub_2178E4920(sub_2178EC8D8, 0, v30, v31, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v33);
    OUTLINED_FUNCTION_75_1();

    v34 = *(v20 + 8);
    v35 = OUTLINED_FUNCTION_183();
    v36(v35);
    goto LABEL_12;
  }

  sub_2178BE050(v0, &qword_27CB8BA28, &qword_21796C840);
LABEL_7:
  if (sub_2178D86A8() & 1) == 0 || (OUTLINED_FUNCTION_100())
  {
    sub_2178D8900();
    OUTLINED_FUNCTION_24_3(v6, 1, v7);
    if (v24)
    {
      sub_2178BE050(v6, &qword_27CB8B238, &qword_21796C6B0);
    }

    else
    {
      v37 = *(v10 + 32);
      v38 = OUTLINED_FUNCTION_153();
      v39(v38);
      v50 = sub_217965E2C();
      v40 = OUTLINED_FUNCTION_47_0();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      v43 = _s12SearchColumnVMa();
      v44 = OUTLINED_FUNCTION_86_0(&qword_27CB8CB68);
      sub_2178E4920(sub_2178EC8D8, 0, v42, v43, MEMORY[0x277D84A98], v44, MEMORY[0x277D84AC0], v45);

      v46 = *(v10 + 8);
      v47 = OUTLINED_FUNCTION_28_1();
      v48(v47);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_80();
}

void sub_2178D3000()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BB98, &qword_21796C948);
  v2 = OUTLINED_FUNCTION_2(v1);
  v64 = v3;
  v65 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_45_0();
  v63 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  v9 = OUTLINED_FUNCTION_48(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  v68 = v12;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = sub_21796832C();
  v17 = OUTLINED_FUNCTION_2(v16);
  v67 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_88();
  v66 = v21;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_5();
  v29 = sub_217965EFC();
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14();
  v37 = v36 - v35;
  v38 = sub_2178D8034();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_18;
  }

  if ((sub_2178D86A8() & 1) == 0)
  {
    sub_2178D8900();
    OUTLINED_FUNCTION_24_3(v0, 1, v29);
    if (!v42)
    {
      OUTLINED_FUNCTION_208();
      v46 = OUTLINED_FUNCTION_143();
      v47(v46);
      v48 = sub_217965E2C();
      (*(v32 + 8))(v37, v29);
LABEL_17:
      v62 = *(v48 + 16);

      goto LABEL_18;
    }

    v43 = &qword_27CB8B238;
    v44 = &qword_21796C6B0;
    v45 = v0;
    goto LABEL_16;
  }

  if (!sub_2178D3474())
  {
LABEL_13:
    v54 = v68;
    sub_2178D8938();
    OUTLINED_FUNCTION_60_1(v54);
    if (!v42)
    {
      v55 = v67;
      v56 = *(v67 + 32);
      v57 = OUTLINED_FUNCTION_47_0();
      v58(v57);
      v48 = sub_2179682EC();
      v59 = *(v55 + 8);
      v60 = OUTLINED_FUNCTION_145();
      v61(v60);
      goto LABEL_17;
    }

    v43 = &qword_27CB8BA28;
    v44 = &qword_21796C840;
    v45 = v54;
LABEL_16:
    sub_2178BE050(v45, v43, v44);
    goto LABEL_18;
  }

  sub_2178D88C8();
  OUTLINED_FUNCTION_60_1(v15);
  if (v42)
  {
    sub_2178BE050(v15, &qword_27CB8BA28, &qword_21796C840);
    goto LABEL_13;
  }

  v49 = v67;
  OUTLINED_FUNCTION_208();
  v50 = OUTLINED_FUNCTION_144();
  v51(v50);
  v52 = v63;
  sub_2179682FC();
  v53 = sub_2178D2B00(qword_27CB8BB98, &qword_21796C948);
  (*(v64 + 8))(v52, v65);
  (*(v49 + 8))(v24, v16);
  if (!v53)
  {
    goto LABEL_13;
  }

LABEL_18:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D3428(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  result = sub_2178D86A8();
  *v1 = result;
  return result;
}

BOOL sub_2178D3474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  if ((sub_2178D86A8() & 1) == 0)
  {

    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_100();

  if (v12)
  {
LABEL_5:
    sub_2178D8890();
    v20 = sub_21796846C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v20);
    v17 = &qword_27CB8BA30;
    v18 = &qword_21796C848;
    v19 = v11;
    goto LABEL_6;
  }

  sub_2178D88C8();
  sub_21796832C();
  v13 = OUTLINED_FUNCTION_61_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v15);
  v17 = &qword_27CB8BA28;
  v18 = &qword_21796C840;
  v19 = v5;
LABEL_6:
  sub_2178BE050(v19, v17, v18);
  return EnumTagSinglePayload != 1;
}

uint64_t sub_2178D35C4()
{
  OUTLINED_FUNCTION_39_2();
  v2 = *(v0 + *(v1 + 320));

  sub_217965C9C();
}

void sub_2178D3614()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C960, &qword_21796E480);
  OUTLINED_FUNCTION_48(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_107();
  sub_2179683FC();
  sub_2178D80D0();
  v4 = sub_21796843C();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_153();
  v8(v7);
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  sub_2178D83EC();
  sub_2178E4DA0();
}

void sub_2178D3708(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2179668AC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  (*(v10 + 16))(v9 - v8, a1);
  v11 = *a2;
  sub_2178D8240();
}

uint64_t sub_2178D37C0(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  result = sub_2178D8034();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_2178D37E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  OUTLINED_FUNCTION_68_2();
  return sub_2178D80D0();
}

void sub_2178D3824(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    a1 = sub_2178D8034();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_2178D80D0();

    sub_2178E4DA0();
  }

  else
  {
  }
}

uint64_t sub_2178D38D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v25) = a8;
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_144();
  sub_2178D3A74(v21, v22, a3, a4, a5, a6, a7, HIDWORD(v25), a9, a10, a11, a12, a9, a10, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  return v20;
}

uint64_t sub_2178D3984(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_21796655C();
  return (*(v4 + 8))(a1, a2);
}

void sub_2178D3A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_81();
  a19 = v27;
  a20 = v28;
  v29 = v24;
  LODWORD(v595) = v30;
  v608 = v31;
  v610 = v33;
  v611 = v32;
  v606 = v34;
  HIDWORD(v592) = v35;
  v607 = v36;
  v605 = v37;
  v609 = a24;
  v594 = a23;
  v593 = a22;
  v38 = a21;
  v39 = *v24;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB70, &qword_21796EFC8);
  OUTLINED_FUNCTION_8_5(v45, &a15);
  v612 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB78, &qword_21796EFD0);
  OUTLINED_FUNCTION_8_5(v51, &a12);
  v598 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB80, &qword_21796EFD8);
  OUTLINED_FUNCTION_8_5(v57, v619);
  v591 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB88, &qword_21796EFE0);
  OUTLINED_FUNCTION_8_5(v63, &v616);
  v588 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB90, &qword_21796EFE8);
  OUTLINED_FUNCTION_8_5(v69, &v614);
  v586 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB98, &qword_21796EFF0);
  OUTLINED_FUNCTION_8_5(v80, v613);
  v582 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA0, &qword_21796EFF8);
  OUTLINED_FUNCTION_8_5(v91, &v608);
  v578 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  OUTLINED_FUNCTION_48(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA8, &qword_21796F000);
  OUTLINED_FUNCTION_8_5(v102, &v604);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  OUTLINED_FUNCTION_48(v107);
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB0, &qword_21796F008);
  OUTLINED_FUNCTION_8_5(v112, &v600);
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB8, &qword_21796F010);
  OUTLINED_FUNCTION_8_5(v117, &v597);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC0, &qword_21796F018);
  OUTLINED_FUNCTION_8_5(v122, &v594);
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC8, &qword_21796F020);
  OUTLINED_FUNCTION_8_5(v127, &v590);
  v574 = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_48(v133);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD0, &qword_21796F028);
  OUTLINED_FUNCTION_8_5(v138, v587);
  v140 = *(v139 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C960, &qword_21796E480);
  OUTLINED_FUNCTION_48(v143);
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD8, &qword_21796F030);
  OUTLINED_FUNCTION_8_5(v148, &v583);
  v553 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v153);
  v154 = sub_2179668AC();
  v155 = OUTLINED_FUNCTION_48(v154);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v159 - v158);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE0, &qword_21796F038);
  OUTLINED_FUNCTION_8_5(v160, v580);
  v513 = v161;
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v166);
  v168 = *(v167 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v170);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE8, &qword_21796F040);
  OUTLINED_FUNCTION_8_5(v171, &v577);
  v173 = v172;
  v175 = *(v174 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_160();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_8_5(v177, &a17);
  v613[0] = v178;
  v180 = *(v179 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_9_5();
  v182 = v39[10];
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  v183 = sub_21796659C();
  OUTLINED_FUNCTION_2(v183);
  v185 = v184;
  v187 = *(v186 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_70_0();
  v601 = *v38;
  HIDWORD(v603) = *(v38 + 8);
  v189 = v39[19];
  v604 = v182;
  v190 = sub_21796911C();
  v580[0] = v39[11];
  sub_2178D56F0(v190);
  (*(v185 + 32))(&v24[v189], v26, v183);
  OUTLINED_FUNCTION_34_1();
  v192 = *(v191 + 160);
  sub_2178D572C();
  v193 = v613[0] + 32;
  v194 = *(v613[0] + 32);
  v195 = v602;
  v194(&v24[v192], v25, v602);
  OUTLINED_FUNCTION_34_1();
  v197 = *(v196 + 168);
  sub_2178D575C();
  (*(v173 + 32))(&v24[v197], v24);
  OUTLINED_FUNCTION_34_1();
  v199 = *(v198 + 176);
  _s5AlertVMa(0);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
  OUTLINED_FUNCTION_149(&v578);
  sub_2178D58A0(v493, v204, v205, &qword_27CB8A578, &qword_21796A750, v206, v207, v208, v473, v483, v493, v503, v513, v523, v533, v543, v553, v563);
  v209 = OUTLINED_FUNCTION_55_2(&v579);
  v210(v209);
  OUTLINED_FUNCTION_34_1();
  v212 = *(v211 + 184);
  sub_21796689C();
  OUTLINED_FUNCTION_149(&v581);
  sub_2178D578C();
  v213 = OUTLINED_FUNCTION_55_2(&v582);
  v214(v213);
  OUTLINED_FUNCTION_34_1();
  v216 = *(v215 + 192);
  sub_2178D572C();
  v575 = v194;
  v613[0] = v193;
  v194(&v29[v216], v25, v195);
  OUTLINED_FUNCTION_34_1();
  v218 = *(v217 + 200);
  sub_2178D572C();
  v194(&v29[v218], v25, v195);
  OUTLINED_FUNCTION_34_1();
  v220 = *(v219 + 208);
  sub_21796843C();
  OUTLINED_FUNCTION_147(&v584);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v224);
  OUTLINED_FUNCTION_149(&v585);
  sub_2178D58A0(v193, v225, v226, &qword_27CB8C960, &qword_21796E480, v227, v228, v229, v474, v484, v494, v504, v514, v524, v534, v544, v554, v564);
  v230 = OUTLINED_FUNCTION_55_2(&v586);
  v231(v230);
  OUTLINED_FUNCTION_34_1();
  v233 = *(v232 + 216);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v234);
  sub_2178D58A0(v573, v238, v239, &qword_27CB8B0A0, &qword_21796B758, v240, v241, v242, v475, v485, v495, v505, v515, v525, v535, v545, v555, v565);
  v243 = *(v574 + 32);
  v243(&v29[v233]);
  OUTLINED_FUNCTION_34_1();
  v245 = *(v244 + 224);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v246, v247, v248, v249, v250, v251, v252, v253, v476, v486, v496, v506, v516, v526, v536, v546, v556, v566);
  v254 = OUTLINED_FUNCTION_157();
  v243(v254);
  OUTLINED_FUNCTION_34_1();
  v256 = *(v255 + 232);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v257, v258, v259, v260, v261, v262, v263, v264, v477, v487, v497, v507, v517, v527, v537, v547, v557, v567);
  v265 = OUTLINED_FUNCTION_157();
  v243(v265);
  OUTLINED_FUNCTION_34_1();
  v267 = *(v266 + 240);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v268, v269, v270, v271, v272, v273, v274, v275, v478, v488, v498, v508, v518, v528, v538, v548, v558, v568);
  v276 = OUTLINED_FUNCTION_157();
  v243(v276);
  OUTLINED_FUNCTION_34_1();
  v278 = *(v277 + 248);
  OUTLINED_FUNCTION_175(&v592);
  sub_2178D5A68(v279, v280, v281, v282, v283);
  v284 = OUTLINED_FUNCTION_33_0(&v593);
  v285(v284);
  OUTLINED_FUNCTION_34_1();
  v287 = *(v286 + 256);
  OUTLINED_FUNCTION_175(&v595);
  sub_2178D5A68(v288, v289, v290, v291, v292);
  v293 = OUTLINED_FUNCTION_33_0(&v596);
  v294(v293);
  OUTLINED_FUNCTION_34_1();
  v296 = *(v295 + 264);
  OUTLINED_FUNCTION_175(&v598);
  sub_2178D5990();
  v297 = OUTLINED_FUNCTION_33_0(&v599);
  v298(v297);
  OUTLINED_FUNCTION_34_1();
  v300 = *(v299 + 272);
  _s12SearchColumnVMa();
  OUTLINED_FUNCTION_147(&v601);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v301, v302, v303, v304);
  OUTLINED_FUNCTION_175(&v602);
  sub_2178D59C4();
  v305 = OUTLINED_FUNCTION_33_0(&v603);
  v306(v305);
  OUTLINED_FUNCTION_34_1();
  v308 = *(v307 + 280);
  sub_21796846C();
  OUTLINED_FUNCTION_147(&v605);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v309, v310, v311, v312);
  OUTLINED_FUNCTION_175(&v606);
  sub_2178D58A0(v267, v313, v314, &qword_27CB8BA30, &qword_21796C848, v315, v316, v317, v479, v489, v499, v509, v519, v529, v539, v549, v559, v569);
  v318 = OUTLINED_FUNCTION_33_0(&v607);
  v319(v318);
  OUTLINED_FUNCTION_34_1();
  v321 = *(v320 + 288);
  v322 = sub_21796832C();
  v323 = v580[1];
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v324, v325, v326, v322);
  v327 = v581;
  sub_2178D58A0(v323, v328, v329, &qword_27CB8BA28, &qword_21796C840, v330, v331, v332, v480, v490, v500, v510, v520, v530, v540, v550, v560, v570);
  v333 = *(v582 + 32);
  v334 = v583;
  v333(&v29[v321], v327, v583);
  OUTLINED_FUNCTION_34_1();
  v336 = *(v335 + 296);
  sub_217965EFC();
  v337 = v584;
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v338, v339, v340, v341);
  v342 = v585;
  sub_2178D58A0(v337, v343, v344, &qword_27CB8B238, &qword_21796C6B0, v345, v346, v347, v481, v491, v501, v511, v521, v531, v541, v551, v561, v571);
  (*(v586 + 32))(&v29[v336], v342, v587[0]);
  OUTLINED_FUNCTION_34_1();
  v349 = *(v348 + 304);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v350, v351, v352, v322);
  sub_2178D58A0(v323, v353, v354, &qword_27CB8BA28, &qword_21796C840, v355, v356, v357, v482, v492, v502, v512, v522, v532, v542, v552, v562, v572);
  v333(&v29[v349], v327, v334);
  OUTLINED_FUNCTION_34_1();
  v359 = *(v358 + 312);
  v360 = v587[1];
  sub_2178D5A68(MEMORY[0x277D84F90], v361, v362, &qword_27CB8B800, &unk_21796C658);
  (*(v588 + 32))(&v29[v359], v360, v589);
  OUTLINED_FUNCTION_34_1();
  v364 = *(v363 + 320);
  v365 = sub_217965CBC();
  v366 = *(v365 + 48);
  v367 = *(v365 + 52);
  swift_allocObject();
  *&v29[v364] = sub_217965CAC();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v368 + 328));
  OUTLINED_FUNCTION_26_3(*(v369 + 336));
  OUTLINED_FUNCTION_26_3(*(v370 + 344));
  OUTLINED_FUNCTION_26_3(*(v371 + 352));
  OUTLINED_FUNCTION_26_3(*(v372 + 360));
  OUTLINED_FUNCTION_26_3(*(v373 + 368));
  OUTLINED_FUNCTION_26_3(*(v374 + 376));
  OUTLINED_FUNCTION_26_3(*(v375 + 384));
  v377 = *(v376 + 392);
  sub_217968E3C();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v378, v379, v380, v381);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v382 + 400));
  OUTLINED_FUNCTION_26_3(*(v383 + 408));
  v385 = *(v384 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9C8, &qword_21796E4A8);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v386, v387, v388, v389);
  OUTLINED_FUNCTION_34_1();
  v391 = *(v390 + 424);
  sub_2179687BC();
  *&v29[v391] = sub_2179687AC();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v392 + 432));
  v394 = *(v393 + 440);
  OUTLINED_FUNCTION_149(&v617);
  sub_2178D5AA8(0);
  v395 = OUTLINED_FUNCTION_55_2(&v618);
  v396(v395);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v397 + 456));
  v399 = *(v398 + 464);
  sub_21796860C();
  sub_2179685FC();
  sub_2179685DC();
  OUTLINED_FUNCTION_219();

  *&v29[v399] = v391;
  OUTLINED_FUNCTION_34_1();
  v29[*(v400 + 472)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v401 + 480)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v402 + 488)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v403 + 496)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v404 + 504)] = 0;
  OUTLINED_FUNCTION_34_1();
  v406 = *(v405 + 512);
  OUTLINED_FUNCTION_149(&v591);
  sub_2178D572C();
  v575(&v29[v406], v391, v602);
  OUTLINED_FUNCTION_34_1();
  v29[*(v407 + 520)] = 0;
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v408 + 528));
  *&v29[*(v409 + 536)] = MEMORY[0x277D84FA0];
  v410 = v607;
  *(v29 + 8) = v605;
  *(v29 + 9) = v410;
  v29[80] = BYTE4(v592);
  OUTLINED_FUNCTION_34_1();
  v412 = *(v411 + 136);
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v413 = sub_217967D5C();
  v602 = *(v413 - 8);
  v414 = *(v602 + 16);
  v613[0] = v413;
  v414(&v29[v412], v611);
  OUTLINED_FUNCTION_34_1();
  v416 = &v29[*(v415 + 144)];
  v417 = v609;
  v418 = v610;
  *v416 = v606;
  *(v416 + 1) = v418;
  *(v416 + 2) = v608;
  v29[16] = v595;
  v419 = v601;
  *(v29 + 3) = v601;
  LOBYTE(v323) = BYTE4(v603);
  v29[32] = BYTE4(v603);
  v420 = v594;
  *(v29 + 5) = v593;
  *(v29 + 6) = v420;
  *(v29 + 7) = v417;
  v595 = objc_opt_self();
  v421 = objc_opt_self();

  sub_2178BF534(v419, v323);
  v422 = [v421 autoupdatingActiveAccount];
  v423 = [v595 sharedMonitorForIdentity_];

  OUTLINED_FUNCTION_34_1();
  v425 = *(v424 + 448);
  *&v29[v425] = v423;
  v426 = [v423 subscriptionStatus];
  v427 = v604;
  v428 = v580[0];
  v613[3] = v604;
  v614 = v580[0];
  swift_getKeyPath();
  v613[1] = v427;
  v613[2] = v428;
  swift_getKeyPath();
  v615 = v426;

  sub_21796658C();
  v429 = *&v29[v425];
  OUTLINED_FUNCTION_27_2();
  swift_allocObject();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_137();
  v430 = swift_allocObject();
  v430[2] = v427;
  v430[3] = v428;
  v430[4] = v426;
  v619[0] = sub_2178EC134;
  v619[1] = v430;
  v615 = MEMORY[0x277D85DD0];
  v616 = 1107296256;
  v617 = sub_2178D5D9C;
  v618 = &block_descriptor_267;
  v431 = _Block_copy(&v615);

  v432 = v429;

  v433 = [v432 beginObservingSubscriptionStatusWithHandler_];
  _Block_release(v431);

  OUTLINED_FUNCTION_34_1();
  v435 = *(v434 + 456);
  v436 = *&v29[v435];
  *&v29[v435] = v433;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_34_1();
  v438 = *&v29[*(v437 + 320)];

  sub_217965C4C();

  OUTLINED_FUNCTION_27_2();
  swift_allocObject();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_137();
  v439 = swift_allocObject();
  *(OUTLINED_FUNCTION_216(v439) + 32) = v438;
  sub_217864B2C(&qword_27CB8CBF0, &qword_27CB8CB78, &qword_21796EFD0);
  OUTLINED_FUNCTION_166();
  sub_2179665AC();
  OUTLINED_FUNCTION_150();

  OUTLINED_FUNCTION_54(&a13);
  v440 = OUTLINED_FUNCTION_144();
  v441(v440);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_188(*(v442 + 352));
  OUTLINED_FUNCTION_34_1();
  v444 = *&v29[*(v443 + 424)];
  v445 = v599;
  sub_21796879C();
  OUTLINED_FUNCTION_27_2();
  swift_allocObject();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_137();
  v446 = swift_allocObject();
  *(OUTLINED_FUNCTION_216(v446) + 32) = v444;
  sub_217864B2C(&qword_27CB8CBF8, &qword_27CB8CB70, &qword_21796EFC8);
  OUTLINED_FUNCTION_166();
  v447 = v600;
  v448 = v445;
  v449 = v445;
  sub_2179665AC();
  OUTLINED_FUNCTION_150();

  v450 = *(v612 + 8);
  v612 += 8;
  v450(v449, v447);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_188(*(v451 + 432));
  if (HIDWORD(v603) != 255)
  {
    if (HIDWORD(v603) != 1)
    {
      if (HIDWORD(v603))
      {
        sub_2178E3790(v601, BYTE4(v603));
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_27_2();
      swift_allocObject();
      OUTLINED_FUNCTION_73_2();
      v452 = swift_allocObject();
      v453 = OUTLINED_FUNCTION_216(v452);
      *(v453 + 32) = v448;
      *(v453 + 40) = v447;
      sub_2178BF548(v447, 0);
      OUTLINED_FUNCTION_166();
      sub_2179665AC();
      OUTLINED_FUNCTION_150();

      v450(v449, v447);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_188(*(v454 + 384));
      sub_21796923C();
      OUTLINED_FUNCTION_147(&v576);
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v455, v456, v457, v458);
      OUTLINED_FUNCTION_27_2();
      swift_allocObject();
      OUTLINED_FUNCTION_73_2();

      OUTLINED_FUNCTION_92_0();
      v459 = swift_allocObject();
      v460 = OUTLINED_FUNCTION_213(v459);
      v460[4] = v427;
      v460[5] = v428;
      v460[6] = v449;
      OUTLINED_FUNCTION_50_2();
      sub_2178D2328();
      v461 = v447;
      v462 = 0;
      goto LABEL_7;
    }

    if (v601)
    {
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_27_2();
      swift_allocObject();
      OUTLINED_FUNCTION_73_2();
      v463 = swift_allocObject();
      v464 = OUTLINED_FUNCTION_216(v463);
      *(v464 + 32) = v448;
      *(v464 + 40) = v447;
      sub_2178BF548(v447, 1u);
      OUTLINED_FUNCTION_166();
      sub_2179665AC();
      OUTLINED_FUNCTION_150();

      v450(v449, v447);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_188(*(v465 + 384));
      sub_21796923C();
      OUTLINED_FUNCTION_147(&v576);
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v466, v467, v468, v469);
      OUTLINED_FUNCTION_27_2();
      swift_allocObject();
      OUTLINED_FUNCTION_73_2();

      OUTLINED_FUNCTION_92_0();
      v470 = swift_allocObject();
      v471 = OUTLINED_FUNCTION_213(v470);
      v471[4] = v427;
      v471[5] = v428;
      v471[6] = v449;
      OUTLINED_FUNCTION_50_2();
      sub_2178D2328();
      v461 = v447;
      v462 = 1;
LABEL_7:
      sub_2178E3790(v461, v462);
    }
  }

LABEL_9:

  sub_2178DD648();

  OUTLINED_FUNCTION_54(&a17);
  v472(v611, v613[0]);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D56F0(char a1)
{
  v1 = sub_21796919C();
  v9 = OUTLINED_FUNCTION_158(v1, v2, v3, v4, v5, v6, v7, v8, v12, a1);
  return sub_2178D3984(v9, v10);
}

void sub_2178D578C()
{
  OUTLINED_FUNCTION_241();
  v0 = sub_2179668AC();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_159();
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_45();
  v7();
  v8 = OUTLINED_FUNCTION_72_0();
  (v7)(v8);
  OUTLINED_FUNCTION_153();
  sub_21796655C();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_68_2();
  v9(v10);
  v11 = OUTLINED_FUNCTION_140();
  v9(v11);
  OUTLINED_FUNCTION_242();
}

void sub_2178D58A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_241();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v20);
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  sub_2178EBFC4(v25, &a9 - v31, v23);
  v33 = OUTLINED_FUNCTION_120();
  sub_2178EBFC4(v33, v34, v23);
  OUTLINED_FUNCTION_183();
  sub_21796655C();
  sub_2178BE050(v25, v23, v21);
  sub_2178BE050(v32, v23, v21);
  OUTLINED_FUNCTION_242();
}

uint64_t sub_2178D59C4()
{
  v0 = OUTLINED_FUNCTION_51_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_117();
  sub_2178EBFC4(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_183();
  sub_2178D3984(v9, v10);
  v11 = OUTLINED_FUNCTION_68_2();
  return sub_2178BE050(v11, v12, &qword_21796C750);
}

uint64_t sub_2178D5A68(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_158(v5, v6, v7, v8, v9, v10, v11, v12, v14, a1);
  return sub_21796655C();
}

uint64_t sub_2178D5AA8(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9D8, qword_21796E4B0);
  OUTLINED_FUNCTION_158(v1, v2, v3, v4, v5, v6, v7, v8, v10, a1);
  return sub_21796655C();
}

uint64_t sub_2178D5AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_21796920C();
  v14 = a2;

  v15 = sub_2179691FC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = v13;
  v16[7] = a2;

  sub_2178D2328();
}

uint64_t sub_2178D5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21796920C();
  v5[8] = sub_2179691FC();
  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178D5D0C, v7, v6);
}

uint64_t sub_2178D5D0C()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 56);
    sub_2178E2948();
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_39();

  return v5();
}

void sub_2178D5D9C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_2178D5E28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v13;
  v14[7] = v11;

  sub_2178D2328();
}

uint64_t sub_2178D5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2178D5FA0, 0, 0);
}

uint64_t sub_2178D5FA0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 72) = OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v2 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v5();
  }
}

uint64_t sub_2178D6058()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_2178D60D0();

  v4 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2178D60D0()
{

  sub_2178D8AA4();
}

uint64_t sub_2178D60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = v11;
  sub_2178D2328();
}

uint64_t sub_2178D6238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D6258, 0, 0);
}

uint64_t sub_2178D6258()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 64) = OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v2 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v5();
  }
}

uint64_t sub_2178D6310()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_2178DC0A4();

  v3 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2178D6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2178D639C, 0, 0);
}

uint64_t sub_2178D639C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 72) = OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v2 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v5();
  }
}

uint64_t sub_2178D6454()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_2178D64C4();

  v4 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2178D64C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_217965B4C();
  v9 = sub_2178D2B00(&qword_27CB8B0A8, &unk_21796B760);
  (*(v5 + 8))(v8, v4);
  if (!v9 || (sub_217965BBC() & 1) == 0)
  {
    sub_217965B4C();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    sub_2178D8540();
  }
}

uint64_t sub_2178D665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D667C, 0, 0);
}

uint64_t sub_2178D667C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178E2FA0();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178D6740()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2178D6840()
{
  OUTLINED_FUNCTION_241();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_3();
  sub_21796923C();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_27_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = v1;
  v15[6] = v14;
  v15[7] = v5;

  sub_2178D2328();

  OUTLINED_FUNCTION_242();
}

uint64_t sub_2178D6964()
{
  OUTLINED_FUNCTION_23_2();
  v2 = v1;
  v4 = *(v3 + 456);
  if (*(v0 + v4))
  {
    [*(v0 + *(v1 + 448)) endObservingSubscriptionStatusWithToken_];
    v5 = *(v0 + v4);
  }

  *(v0 + v4) = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_2();
  v139 = *(v6 + 352);
  OUTLINED_FUNCTION_199(v139);
  OUTLINED_FUNCTION_39_2();
  v143 = *(v7 + 432);
  OUTLINED_FUNCTION_199(v143);
  OUTLINED_FUNCTION_39_2();
  v140 = *(v8 + 384);
  OUTLINED_FUNCTION_199(v140);
  OUTLINED_FUNCTION_39_2();
  v141 = *(v9 + 408);
  OUTLINED_FUNCTION_199(v141);
  OUTLINED_FUNCTION_39_2();
  v138 = *(v10 + 360);
  OUTLINED_FUNCTION_199(v138);
  OUTLINED_FUNCTION_39_2();
  v12 = *(v11 + 368);
  v13 = *(v0 + v12);
  *(v0 + v12) = 0;

  OUTLINED_FUNCTION_39_2();
  v15 = *(v14 + 376);
  v16 = *(v0 + v15);
  *(v0 + v15) = 0;

  sub_2178E3790(*(v0 + 24), *(v0 + 32));
  v17 = *(v0 + 40);

  v18 = *(v0 + 56);

  v142 = v4;
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);

  OUTLINED_FUNCTION_39_2();
  v22 = *(v21 + 136);
  v23 = *(v2 + 80);
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v24 = sub_217967D5C();
  OUTLINED_FUNCTION_4_1(v24);
  (*(v25 + 8))(v0 + v22);
  OUTLINED_FUNCTION_39_2();
  v27 = (v0 + *(v26 + 144));
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];

  OUTLINED_FUNCTION_39_2();
  v32 = *(v31 + 152);
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  v33 = sub_21796659C();
  OUTLINED_FUNCTION_4_1(v33);
  (*(v34 + 8))(v0 + v32);
  OUTLINED_FUNCTION_39_2();
  v36 = *(v35 + 160);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 8);
  v39(v0 + v36, v37);
  OUTLINED_FUNCTION_39_2();
  v41 = *(v40 + 168);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE8, &qword_21796F040);
  OUTLINED_FUNCTION_4_1(v42);
  (*(v43 + 8))(v0 + v41);
  OUTLINED_FUNCTION_39_2();
  v45 = *(v44 + 176);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE0, &qword_21796F038);
  OUTLINED_FUNCTION_4_1(v46);
  (*(v47 + 8))(v0 + v45);
  OUTLINED_FUNCTION_39_2();
  v49 = *(v48 + 184);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD8, &qword_21796F030);
  OUTLINED_FUNCTION_4_1(v50);
  (*(v51 + 8))(v0 + v49);
  OUTLINED_FUNCTION_39_2();
  v39(v0 + *(v52 + 192), v37);
  OUTLINED_FUNCTION_39_2();
  v39(v0 + *(v53 + 200), v37);
  OUTLINED_FUNCTION_39_2();
  v55 = *(v54 + 208);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD0, &qword_21796F028);
  OUTLINED_FUNCTION_4_1(v56);
  (*(v57 + 8))(v0 + v55);
  OUTLINED_FUNCTION_39_2();
  v59 = *(v58 + 216);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC8, &qword_21796F020);
  OUTLINED_FUNCTION_3(v60);
  v62 = *(v61 + 8);
  v62(v0 + v59, v60);
  OUTLINED_FUNCTION_39_2();
  v64 = OUTLINED_FUNCTION_230(*(v63 + 224));
  (v62)(v64);
  OUTLINED_FUNCTION_39_2();
  v66 = OUTLINED_FUNCTION_230(*(v65 + 232));
  (v62)(v66);
  OUTLINED_FUNCTION_39_2();
  v68 = OUTLINED_FUNCTION_230(*(v67 + 240));
  (v62)(v68);
  OUTLINED_FUNCTION_39_2();
  v70 = *(v69 + 248);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC0, &qword_21796F018);
  OUTLINED_FUNCTION_4_1(v71);
  (*(v72 + 8))(v0 + v70);
  OUTLINED_FUNCTION_39_2();
  v74 = *(v73 + 256);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB8, &qword_21796F010);
  OUTLINED_FUNCTION_4_1(v75);
  (*(v76 + 8))(v0 + v74);
  OUTLINED_FUNCTION_39_2();
  v78 = *(v77 + 264);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB0, &qword_21796F008);
  OUTLINED_FUNCTION_4_1(v79);
  (*(v80 + 8))(v0 + v78);
  OUTLINED_FUNCTION_39_2();
  v82 = *(v81 + 272);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA8, &qword_21796F000);
  OUTLINED_FUNCTION_4_1(v83);
  (*(v84 + 8))(v0 + v82);
  OUTLINED_FUNCTION_39_2();
  v86 = *(v85 + 280);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA0, &qword_21796EFF8);
  OUTLINED_FUNCTION_4_1(v87);
  (*(v88 + 8))(v0 + v86);
  OUTLINED_FUNCTION_39_2();
  v90 = *(v89 + 288);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB98, &qword_21796EFF0);
  OUTLINED_FUNCTION_3(v91);
  v93 = *(v92 + 8);
  v93(v0 + v90, v91);
  OUTLINED_FUNCTION_39_2();
  v95 = *(v94 + 296);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB90, &qword_21796EFE8);
  OUTLINED_FUNCTION_4_1(v96);
  (*(v97 + 8))(v0 + v95);
  OUTLINED_FUNCTION_39_2();
  v99 = OUTLINED_FUNCTION_230(*(v98 + 304));
  (v93)(v99);
  OUTLINED_FUNCTION_39_2();
  v101 = *(v100 + 312);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB88, &qword_21796EFE0);
  OUTLINED_FUNCTION_4_1(v102);
  (*(v103 + 8))(v0 + v101);
  OUTLINED_FUNCTION_39_2();
  v105 = *(v0 + *(v104 + 320));

  OUTLINED_FUNCTION_39_2();
  v107 = *(v0 + *(v106 + 328));

  OUTLINED_FUNCTION_39_2();
  v109 = *(v0 + *(v108 + 336));

  OUTLINED_FUNCTION_39_2();
  v111 = *(v0 + *(v110 + 344));

  v112 = *(v0 + v139);

  v113 = *(v0 + v138);

  v114 = *(v0 + v12);

  v115 = *(v0 + v15);

  v116 = *(v0 + v140);

  OUTLINED_FUNCTION_39_2();
  sub_2178BE050(v0 + *(v117 + 392), qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_39_2();
  v119 = *(v0 + *(v118 + 400));

  v120 = *(v0 + v141);

  OUTLINED_FUNCTION_39_2();
  sub_2178BE050(v0 + *(v121 + 416), &qword_27CB8C9E0, &qword_21796E520);
  OUTLINED_FUNCTION_39_2();
  v123 = *(v0 + *(v122 + 424));

  v124 = *(v0 + v143);

  OUTLINED_FUNCTION_39_2();
  v126 = *(v125 + 440);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB80, &qword_21796EFD8);
  OUTLINED_FUNCTION_4_1(v127);
  (*(v128 + 8))(v0 + v126);
  OUTLINED_FUNCTION_39_2();

  v130 = *(v0 + v142);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_2();
  v132 = *(v0 + *(v131 + 464));

  OUTLINED_FUNCTION_39_2();
  v39(v0 + *(v133 + 512), v37);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  v136 = *(v0 + *(v135 + 536));

  return v0;
}

uint64_t sub_2178D728C()
{
  sub_2178D6964();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2178D72FC()
{
  OUTLINED_FUNCTION_229();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  MEMORY[0x21CEA6C70](&v2, v0);
  return v2;
}

uint64_t sub_2178D7348()
{
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  return sub_217967D1C();
}

void sub_2178D7398()
{
  OUTLINED_FUNCTION_81();
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_21796944C();
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = sub_217967D5C();
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_70_0();
  (*(v12 + 16))(v1, v0 + *(v2 + 136), v10);
  v16 = *(v6 + 16);
  OUTLINED_FUNCTION_45();
  v17();
  OUTLINED_FUNCTION_93_0();
  sub_217967D1C();
  v18 = *(v6 + 8);
  v19 = OUTLINED_FUNCTION_68_2();
  v20(v19);
  v21 = *(v12 + 8);
  v22 = OUTLINED_FUNCTION_120();
  v23(v22);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D7524()
{
  OUTLINED_FUNCTION_23_2();
  v2 = (v0 + *(v1 + 144));
  v6 = *v2;
  v7 = *(v2 + 1);
  OUTLINED_FUNCTION_53_1();
  v4 = *(v3 + 80);
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  sub_217967D5C();
  return sub_217967D1C();
}

uint64_t sub_2178D75EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  if (sub_2178D8034() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_21796969C();

    if ((v12 & 1) == 0)
    {
      v14 = sub_21796923C();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_21796920C();

      v16 = sub_2179691FC();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v19 = *(v5 + 80);
      v17[4] = v19;
      v20 = *(v5 + 88);
      v17[5] = v20;
      v17[6] = v15;

      sub_2178D2328();

      v21 = sub_2178D8034();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        return sub_2178D79C0();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v26[4] = v19;
        v26[5] = v20;
        v26[6] = v25;
        sub_2178D2328();
      }
    }
  }

  return result;
}

uint64_t sub_2178D789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178D7934, v6, v5);
}

uint64_t sub_2178D7934()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2178D75D8();
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t sub_2178D79C0()
{
  v1 = *v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v14 - v3;
  v5 = sub_2178D8034();
  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v5;
    if (sub_2178D86A8())
    {
      sub_21796969C();
    }

    v11 = sub_21796923C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = *(v1 + 80);
    v13[5] = *(v1 + 88);
    v13[6] = v12;
    v13[7] = v9;
    v13[8] = v7;
    sub_2178D2328();
  }

  else
  {
  }
}

uint64_t sub_2178D7C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D7C3C, 0, 0);
}

uint64_t sub_2178D7C3C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 64) = OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v2 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v5();
  }
}

uint64_t sub_2178D7CF4()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_2178D7D64();

  v3 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2178D7D64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = *(*v0 + 328);
  v18 = *(v0 + v17);
  *(v0 + v17) = 0;

  v19 = *(*v0 + 336);
  v20 = *(v0 + v19);
  *(v0 + v19) = 0;

  v21 = *(*v0 + 344);
  v22 = *(v0 + v21);
  *(v0 + v21) = 0;

  v23 = *(*v0 + 360);
  v24 = *(v0 + v23);
  *(v0 + v23) = 0;

  v25 = *(*v0 + 368);
  v26 = *(v0 + v25);
  *(v0 + v25) = 0;

  v27 = *(*v0 + 376);
  v28 = *(v0 + v27);
  *(v0 + v27) = 0;

  v29 = sub_21796846C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v29);
  sub_2178D88A4();
  v30 = sub_21796832C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v30);
  sub_2178D88DC();
  v31 = sub_217965EFC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v31);
  sub_2178D8914();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v30);
  sub_2178D89E0();
  v32 = _s12SearchColumnVMa();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v32);
  sub_2178D886C();
}

uint64_t sub_2178D8034()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_52_1();
  v4 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_45();
  sub_21796657C();

  return v5;
}

uint64_t sub_2178D80D0()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_53_1();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_0();
  sub_21796657C();

  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  sub_2178D75EC(v5, v6);
}

void sub_2178D8240()
{
  OUTLINED_FUNCTION_241();
  v1 = *v0;
  v2 = sub_2179668AC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = *(v5 + 16);
  v11 = OUTLINED_FUNCTION_141();
  v12(v11);

  OUTLINED_FUNCTION_140();
  sub_21796658C();
  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_63_0();
  v15(v14);
  OUTLINED_FUNCTION_242();
}

void sub_2178D8410()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20]();
  v13 = v18 - v12;
  v19 = *(v8 + 80);
  v14 = v19;
  v15 = *(v8 + 88);
  v20 = v15;
  swift_getKeyPath();
  v18[0] = v14;
  v18[1] = v15;
  swift_getKeyPath();
  sub_2178EBFC4(v7, v13, v4);

  sub_21796658C();
  v16 = OUTLINED_FUNCTION_47_0();
  sub_2178BE050(v16, v17, v2);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D865C(char a1)
{
  v2 = sub_2178D86A8();
  result = sub_2178FF258(v2, a1 & 1);
  if ((result & 1) == 0)
  {

    return sub_2178D79C0();
  }

  return result;
}

uint64_t sub_2178D86A8()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_52_1();
  v4 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_45();
  sub_21796657C();

  return v5;
}

uint64_t sub_2178D8744()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_53_1();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_145();
  sub_21796657C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21796658C();
  return sub_2178D865C(v5);
}

uint64_t sub_2178D894C()
{
  OUTLINED_FUNCTION_23_2();
  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_53_1();
  v4 = *(v1 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_145();
  sub_21796657C();
}

void sub_2178D8A18()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_53_1();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  OUTLINED_FUNCTION_210();
}

void sub_2178D8AB8()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  OUTLINED_FUNCTION_218();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_218();
  v5 = *(v4 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  OUTLINED_FUNCTION_210();
}

uint64_t sub_2178D8B4C()
{
  v1 = v0;
  v68 = sub_2179688CC();
  v64 = *(v68 - 8);
  v2 = *(v64 + 64);
  v3 = MEMORY[0x28223BE20](v68);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = &v57 - v6;
  MEMORY[0x28223BE20](v5);
  v62 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v57 - v10;
  v11 = sub_217968A2C();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v57 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  v16 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v18 = &v57 - v17;
  v19 = sub_217968E3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v66 = *(v28 - 8);
  v29 = *(v66 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v65 = &v57 - v33;
  v34 = *(*v1 + 392);
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v34, 1, v19);
  v60 = v1;
  if (EnumTagSinglePayload)
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  }

  else
  {
    (*(v20 + 16))(v23, v1 + v34, v19);
    sub_217968E0C();
    (*(v20 + 8))(v23, v19);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      v36 = v65;
      (*(v66 + 32))(v65, v27, v28);
      goto LABEL_7;
    }
  }

  v36 = v65;
  sub_2179680AC();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
  {
    sub_2178BE050(v27, &qword_27CB8A720, &unk_21796A910);
  }

LABEL_7:
  (*(v66 + 16))(v32, v36, v28);
  sub_217864B2C(&qword_27CB8CB30, &qword_27CB8A6E8, &qword_21796A8E8);
  sub_21796905C();
  v37 = *(v72 + 36);
  sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
  v71 = (v67 + 32);
  v72 = v67 + 16;
  v38 = (v67 + 88);
  v70 = *MEMORY[0x277CD8368];
  v69 = (v67 + 8);
  v57 = (v67 + 96);
  v61 = (v64 + 32);
  v67 = MEMORY[0x277D84F90];
LABEL_8:
  for (i = v11; ; (*v69)(v43, i))
  {
    sub_2179692EC();
    if (*&v18[v37] == v75[0])
    {
      break;
    }

    v40 = sub_21796934C();
    v41 = v73;
    v11 = i;
    (*v72)(v73);
    v40(v75, 0);
    v42 = v28;
    sub_2179692FC();
    v43 = v74;
    (*v71)(v74, v41, i);
    v44 = (*v38)(v43, i);
    if (v44 == v70)
    {
      (*v57)(v43, i);
      v45 = *v61;
      v46 = v58;
      v47 = v43;
      v48 = v68;
      (*v61)(v58, v47, v68);
      v45(v63, v46, v48);
      v45(v62, v63, v48);
      v49 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_2178E81D4(0, *(v49 + 16) + 1, 1, v49);
      }

      v28 = v42;
      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      if (v51 >= v50 >> 1)
      {
        v49 = sub_2178E81D4(v50 > 1, v51 + 1, 1, v49);
      }

      *(v49 + 16) = v51 + 1;
      v52 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = v49;
      v45((v49 + v52 + *(v64 + 72) * v51), v62, v68);
      goto LABEL_8;
    }
  }

  sub_2178BE050(v18, &qword_27CB8A820, &qword_21796A9C0);
  v53 = sub_2178D9438(20, v67);

  v75[0] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB00, &qword_21796E770);
  sub_217864B2C(&qword_27CB8CB08, &qword_27CB8CB00, &qword_21796E770);
  v54 = v59;
  sub_21796811C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
  sub_2178D8578();
  return (*(v66 + 8))(v65, v28);
}

uint64_t sub_2178D9438(int64_t a1, uint64_t a2)
{
  v7 = sub_2179688CC();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v27 - v11;
  v12 = *(a2 + 16);
  if (v12 < a1)
  {

    return a2;
  }

  v28 = a1;
  v13 = v12 - a1;
  if (__OFSUB__(v12, a1))
  {
    goto LABEL_33;
  }

  v2 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v2 < v12 - 1)
  {
    v31 = v32 + 16;
    v14 = (v32 + 40);

    v29 = v2;
    v30 = v14;
    while (!HIDWORD(v12))
    {
      a1 = v12 - 1;
      v15 = arc4random_uniform(v12);
      if (v12 - 1 != v15)
      {
        if (a1 < 0)
        {
          goto LABEL_29;
        }

        v16 = *(a2 + 16);
        if (a1 >= v16)
        {
          goto LABEL_30;
        }

        v36 = v15;
        v17 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v2 = v7;
        v3 = *(v32 + 72);
        v4 = *(v32 + 16);
        v33 = v3 * a1;
        (v4)(v35, a2 + v17 + v3 * a1, v7);
        if (v16 <= v36)
        {
          goto LABEL_31;
        }

        v18 = v3 * v36;
        (v4)(v34, a2 + v17 + v3 * v36, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_2178EBDC4(a2);
        }

        v3 = a2 + v17;
        v4 = *v30;
        (*v30)(a2 + v17 + v33, v34, v7);
        if (*(a2 + 16) <= v36)
        {
          goto LABEL_32;
        }

        (v4)(v3 + v18, v35, v7);
        v2 = v29;
      }

      v19 = v12 - 2;
      --v12;
      if (v2 >= v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_19:
  a1 = sub_2178E7504(v28, a2);
  v2 = v20;
  v3 = v21;
  v4 = v22;
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2179696AC();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_35;
  }

  if (v25 != (v4 >> 1) - v3)
  {
LABEL_36:
    swift_unknownObjectRelease();
LABEL_20:
    sub_2178E8590(a1, v2, v3, v4);
    a2 = v23;
    swift_unknownObjectRelease();
    return a2;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!a2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return a2;
}

uint64_t sub_2178D978C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_39_2();
  v4 = *(v3 + 392);
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  return sub_2178EBFC4(v1 + v4, a1, qword_27CB8AC48);
}

uint64_t sub_2178D97F8()
{
  OUTLINED_FUNCTION_39_2();
  v1 = *(v0 + 392);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_117();
  sub_2178EBD58(v2, v3, v4);
  swift_endAccess();
  sub_2178D8B4C();
  v5 = OUTLINED_FUNCTION_68_2();
  return sub_2178BE050(v5, v6, &unk_21796FF10);
}

uint64_t sub_2178D9884()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_52_1();
  v4 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_105();

  return v5;
}

uint64_t sub_2178D9910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  *a4 = v9;
  return result;
}

uint64_t sub_2178D99B0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;

  return sub_21796658C();
}

uint64_t sub_2178D9A48(char a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v20 - v11;
  if ((a1 & 1) != 0 && (*(v1 + v3[61]) & 1) == 0)
  {
    sub_2178D859C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
    result = sub_2178BE050(v12, &qword_27CB8B0A0, &qword_21796B758);
    if (EnumTagSinglePayload == 1)
    {
      v15 = sub_21796923C();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
      v16 = swift_allocObject();
      swift_weakInit();
      sub_21796920C();

      v17 = sub_2179691FC();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v3[10];
      v18[5] = v3[11];
      v18[6] = v16;

      sub_2178D2328();
    }
  }

  return result;
}

uint64_t sub_2178D9C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178D9CF8, v6, v5);
}

uint64_t sub_2178D9CF8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_77_0(v2);

    return sub_2178D9EF8();
  }

  else
  {
    v4 = v0[7];

    OUTLINED_FUNCTION_25_1();

    return v5();
  }
}

uint64_t sub_2178D9DC8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = v0[11];
  v3 = v0[10];
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_217();
  v7 = *(v6 + 72);
  v8 = v0[8];

  return MEMORY[0x2822009F8](sub_2178EC8F8, v8, v7);
}

uint64_t sub_2178D9EF8()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB18, &qword_21796E810);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB20, &qword_21796E818);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_21796920C();
  v1[11] = sub_2179691FC();
  v10 = sub_2179691BC();
  v1[12] = v10;
  v1[13] = v9;

  return MEMORY[0x2822009F8](sub_2178DA098, v10, v9);
}

uint64_t sub_2178DA098()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0[3];
  v2 = *(*v1 + 488);
  v0[14] = v2;
  if (*(v1 + v2))
  {
    v3 = v0[11];

    OUTLINED_FUNCTION_191();

    OUTLINED_FUNCTION_39();

    return v4();
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v6 = sub_21796653C();
    v0[15] = __swift_project_value_buffer(v6, qword_27CB97B00);
    v7 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v9);
      OUTLINED_FUNCTION_131(&dword_217846000, v10, v11, "Fetching recently played songs from Apple Music catalog.");
      OUTLINED_FUNCTION_87_1();
    }

    v12 = v0[10];
    v13 = v0[8];

    sub_2179688CC();
    sub_2178EBD10(&qword_27CB8CB28, MEMORY[0x277CD8238]);
    sub_21796835C();
    sub_21796833C();
    *(v1 + v2) = 1;
    v14 = *(MEMORY[0x277CD7D98] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v0[16] = v15;
    *v15 = v16;
    v15[1] = sub_2178DA2A8;
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];

    return MEMORY[0x282124750](v18, v19);
  }
}

uint64_t sub_2178DA2A8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 128);
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 104);
  v8 = *(v1 + 96);
  if (v0)
  {
    v9 = sub_2178DA4C0;
  }

  else
  {
    v9 = sub_2178DA3D0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178DA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[14];
  v15 = v12[10];
  v14 = v12[11];
  v16 = v12[8];
  v17 = v12[9];
  v19 = v12[6];
  v18 = v12[7];
  v21 = v12[4];
  v20 = v12[5];
  v22 = v12[3];

  *(v22 + v13) = 0;
  sub_21796839C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v23 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_2178D85B0();
  v27 = *(v19 + 8);
  v28 = OUTLINED_FUNCTION_93_0();
  v29(v28);
  v30 = *(v17 + 8);
  v31 = OUTLINED_FUNCTION_68_2();
  v32(v31);
  OUTLINED_FUNCTION_191();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}