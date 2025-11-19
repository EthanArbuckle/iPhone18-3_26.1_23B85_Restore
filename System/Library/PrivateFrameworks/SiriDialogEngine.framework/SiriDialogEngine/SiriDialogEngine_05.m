uint64_t CATValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D5317C();
  if (!v2)
  {
    v6 = v13[4];
    v7 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
    OUTLINED_FUNCTION_4_22();
    sub_222D459C8(v9, v10);
    sub_222D5309C();
    OUTLINED_FUNCTION_10_11();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    *a2 = v12;
    *(a2 + 8) = v7;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 32) = 3;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CATValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_222D5319C();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_18_9(v8, v9, v10, v11, v12, v13, v14, v15, v23, v2, v3, v4, v5, v28, v29, v30, v31);
      sub_222CF2084();
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_18_9(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_26_6();
      sub_222D530DC();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    case 3:
      OUTLINED_FUNCTION_18_9(v8, v9, v10, v11, v12, v13, v14, v15, v23, v2, v25, v26, v27, v28, v29, v30, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
      OUTLINED_FUNCTION_0_23();
      sub_222D459C8(v18, v19);
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_18_9(v8, v9, v10, v11, v12, v13, v14, v15, v23, v2, v25, v26, v27, v28, v29, v30, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C740, &qword_222D58860);
      OUTLINED_FUNCTION_0_23();
      sub_222D458FC(v16, v17);
LABEL_8:
      sub_222D530EC();
      break;
    case 5:
      OUTLINED_FUNCTION_6_17();
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_222D530CC();
      break;
    case 6:
      OUTLINED_FUNCTION_18_9(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_26_6();
      sub_222D530FC();
      break;
    default:
      __swift_mutable_project_boxed_opaque_existential_1(&v28, v31);
      sub_222D530BC();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
}

uint64_t Dictionary<>.toCATDictionary.getter()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = sub_222D51F2C();
  OUTLINED_FUNCTION_24_7(v0);
  sub_222D51F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
  OUTLINED_FUNCTION_0_23();
  sub_222D459C8(v1, v2);
  sub_222D51F0C();
  OUTLINED_FUNCTION_32_4();
  objc_opt_self();
  OUTLINED_FUNCTION_12_6();
  v5 = sub_222D5212C();
  v12 = OUTLINED_FUNCTION_31_5(v5, sel_JSONObjectWithData_options_error_, v6, v7, v8, v9, v10, v11, v23, v24, v26, 0);

  if (v12)
  {
    v13 = v27;
    sub_222D52D6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    v14 = MEMORY[0x277D84F70];
    if (OUTLINED_FUNCTION_30_5())
    {
      v15 = OUTLINED_FUNCTION_112();
      sub_222CE6210(v15, v16);
      v14 = v25;
    }

    else
    {
      sub_222D528BC();
      v21 = OUTLINED_FUNCTION_12_6();
      sub_222CE6210(v21, v22);
    }
  }

  else
  {
    v17 = v27;
    OUTLINED_FUNCTION_21_7();
    v18 = sub_222D5207C();

    v14 = v18;
    swift_willThrow();
    v19 = OUTLINED_FUNCTION_112();
    sub_222CE6210(v19, v20);
    sub_222D528BC();
  }

  v3 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t CATType.toCATValues.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_222D51F2C();
  OUTLINED_FUNCTION_24_7(v3);
  sub_222D51F1C();
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_11_7();
  sub_222D51F0C();

  v5 = sub_222D51EFC();
  OUTLINED_FUNCTION_24_7(v5);
  sub_222D51EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
  OUTLINED_FUNCTION_4_22();
  sub_222D459C8(v6, v7);
  sub_222D51EDC();
  v8 = OUTLINED_FUNCTION_11_7();
  sub_222CE6210(v8, v9);

  return v11;
}

uint64_t sub_222D45774()
{
  DynamicType = swift_getDynamicType();
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    v2 = dynamic_cast_existential_1_conditional(DynamicType);
    if (!v2)
    {
      break;
    }

    v4 = v2;
    v5 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = *(v1 + 16);
      sub_222D28284();
      v1 = v10;
    }

    v6 = *(v1 + 16);
    if (v6 >= *(v1 + 24) >> 1)
    {
      sub_222D28284();
      v1 = v11;
    }

    *(v1 + 16) = v6 + 1;
    v7 = v1 + 16 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    if (!dynamic_cast_existential_0_class_conditional(v4))
    {
      break;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!class_getSuperclass(ObjCClassFromMetadata))
    {
      break;
    }

    DynamicType = swift_getObjCClassMetadata();
  }

  return v1;
}

unint64_t sub_222D45868(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_222D45878(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_222D45888(unint64_t result)
{
  if (result != 16)
  {
    return sub_222D45868(result);
  }

  return result;
}

unint64_t sub_222D45898(unint64_t result)
{
  if (result != 16)
  {
    return sub_222D45878(result);
  }

  return result;
}

unint64_t sub_222D458A8()
{
  result = qword_27D03C738;
  if (!qword_27D03C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C738);
  }

  return result;
}

uint64_t sub_222D458FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C740, &qword_222D58860);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D45974()
{
  result = qword_27D03C758;
  if (!qword_27D03C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C758);
  }

  return result;
}

uint64_t sub_222D459C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C728, &qword_222D58858);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriDialogEngine16NLGParameterTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222D45A64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D45AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_222D45B14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222D45B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 33))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 6)
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

uint64_t sub_222D45B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_222D45BE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_222D45C98()
{
  result = qword_27D03C768;
  if (!qword_27D03C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C768);
  }

  return result;
}

unint64_t sub_222D45CEC()
{
  result = qword_27D03C770;
  if (!qword_27D03C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C770);
  }

  return result;
}

uint64_t sub_222D45D40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C658, &qword_222D58030);
  v36 = a2;
  result = sub_222D52E9C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_222D45FF4(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_222CE0BC0(v23, v37);
    }

    else
    {
      sub_222CE4EC0(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_222D5313C();
    sub_222D529DC();
    result = sub_222D5315C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_222CE0BC0(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_222D45FF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222D58840;
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

void StructuredParameter.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C788, &qword_222D58AF0);
  OUTLINED_FUNCTION_113(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222D46594();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    OUTLINED_FUNCTION_6_18();
    v10 = sub_222D52EDC();
    v12 = v11;
    if (!v11)
    {
      LOBYTE(v36[0]) = 1;
      OUTLINED_FUNCTION_6_18();
      v10 = sub_222D52F4C();
      v12 = v14;
    }

    v50 = v10;
    LOBYTE(v35[0]) = 3;
    v13 = sub_222D52F4C();
    sub_222D434C4(v13, v15);
    v31 = v36[0];
    if (v36[0] == 16)
    {
      v34 = 0xEC00000065707974;
      v29 = 0x5F6E776F6E6B6E75;
    }

    else
    {
      sub_222D432E0();
      v29 = v16;
      v34 = v17;
    }

    OUTLINED_FUNCTION_6_18();
    v28 = sub_222D52F4C();
    v33 = v18;
    LOBYTE(v36[0]) = 5;
    OUTLINED_FUNCTION_6_18();
    v30 = sub_222D52F5C() & 1;
    LOBYTE(v35[0]) = 2;
    sub_222D47374();
    sub_222D52F6C();
    v19 = sub_222D51EFC();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_222D51EEC();
    sub_222D458A8();
    sub_222D51EDC();
    v22 = OUTLINED_FUNCTION_2();
    v23(v22);
    sub_222D45898(v31);

    OUTLINED_FUNCTION_15_8();
    v32 = v44;
    v27 = v45;
    v26 = v46;
    v25 = v47;
    v24 = v48;
    v35[0] = v50;
    v35[1] = v12;
    v35[2] = v44;
    v35[3] = v45;
    v35[4] = v46;
    v35[5] = v47;
    LOBYTE(v35[6]) = v48;
    *(&v35[6] + 1) = *v49;
    HIDWORD(v35[6]) = *&v49[3];
    v35[7] = v29;
    v35[8] = v34;
    v35[9] = v28;
    v35[10] = v33;
    LOBYTE(v35[11]) = v30;
    memcpy(v4, v35, 0x59uLL);
    sub_222D2792C(v35, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v36[0] = v50;
    v36[1] = v12;
    v36[2] = v32;
    v36[3] = v27;
    v36[4] = v26;
    v36[5] = v25;
    v37 = v24;
    *v38 = *v49;
    *&v38[3] = *&v49[3];
    v39 = v29;
    v40 = v34;
    v41 = v28;
    v42 = v33;
    v43 = v30;
    sub_222D27964(v36);
  }

  OUTLINED_FUNCTION_20();
}

unint64_t sub_222D46594()
{
  result = qword_27D03C790;
  if (!qword_27D03C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C790);
  }

  return result;
}

void StructuredParameter.encode(to:)()
{
  OUTLINED_FUNCTION_19_4();
  v48 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7A0, &qword_222D58AF8);
  OUTLINED_FUNCTION_113(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[3];
  v16 = v0[4];
  v15 = v0[5];
  v40 = v0[2];
  v41 = v16;
  v42 = v15;
  v39 = *(v0 + 48);
  v17 = v0[8];
  v47 = v0[7];
  v45 = v14;
  v46 = v17;
  v18 = v0[9];
  v43 = v0[10];
  v44 = v18;
  v54[0] = *(v0 + 88);
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_222D46594();
  sub_222D531AC();
  LOBYTE(v49) = 0;
  v20 = v48;
  sub_222D52FDC();
  if (v20)
  {
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v22 = v43;
    v21 = v44;
    v23 = v45;
    LOBYTE(v49) = 3;
    sub_222D52FDC();
    v48 = v6;
    if (v22)
    {
      v49 = v21;
      v50 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
      OUTLINED_FUNCTION_0_24();
      sub_222D474A0(v24);
      OUTLINED_FUNCTION_2_23();
    }

    v25 = v23;
    v26 = v41;
    if (v54[0] == 2)
    {
      v27 = v40;
      v28 = v42;
    }

    else
    {
      LOBYTE(v49) = v54[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
      OUTLINED_FUNCTION_0_24();
      sub_222D47700(v29);
      OUTLINED_FUNCTION_2_23();
      v28 = v42;
      v27 = v40;
    }

    v30 = sub_222D51F2C();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_222D51F1C();
    v49 = v27;
    v50 = v25;
    v51 = v26;
    v52 = v28;
    v53 = v39;
    sub_222D24948(v27, v25, v26, v28, v39);
    sub_222D45974();
    v33 = sub_222D51F0C();
    v35 = v34;
    sub_222D249C4(v49, v50, v51, v52, v53);

    v49 = v33;
    v50 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7A8, &qword_222D58B00);
    sub_222D473C8();
    OUTLINED_FUNCTION_2_23();
    v36 = OUTLINED_FUNCTION_11_8();
    v37(v36);
    sub_222D27918(v33, v35);
  }

  OUTLINED_FUNCTION_20();
}

void SiriResponseManifest.__allocating_init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_19_4();
  v62 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7D8, &unk_222D58B18);
  v60 = OUTLINED_FUNCTION_113(v14);
  v61 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70) - 8) + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = sub_222D5210C();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v26 = *(v10 + 48);
  v27 = *(v10 + 52);
  swift_allocObject();
  v28 = sub_222D26260(0, 0, 0, &v72, 0, 0, v24, 2, 0);
  v30 = v13[3];
  v29 = v13[4];
  v63 = v13;
  v31 = v13;
  v32 = v20;
  __swift_project_boxed_opaque_existential_1(v31, v30);
  sub_222D474FC();
  v33 = v62;
  sub_222D5318C();
  if (v33)
  {
  }

  else
  {
    v62 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7E8, &qword_222D58B28);
    v71 = 0;
    sub_222D47550();
    v34 = v60;
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_0();
    v35 = *(v28 + 16);
    *(v28 + 16) = a10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C308, &qword_222D58B30);
    v70 = 2;
    sub_222D47628();
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    v59 = v24;
    v57 = v73;
    v58 = v72;
    v55 = v75;
    v56 = v74;
    OUTLINED_FUNCTION_16_0();
    v36 = *(v28 + 24);
    v37 = *(v28 + 40);
    v38 = *(v28 + 72);
    v69[2] = *(v28 + 56);
    v69[3] = v38;
    v69[0] = v36;
    v69[1] = v37;
    v39 = v58;
    *(v28 + 40) = v57;
    *(v28 + 24) = v39;
    v40 = v56;
    *(v28 + 72) = v55;
    *(v28 + 56) = v40;
    sub_222CDC53C(v69, &qword_27D03C308, &qword_222D58B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
    v64 = 3;
    OUTLINED_FUNCTION_4_23();
    sub_222D474A0(v41);
    v42 = v34;
    sub_222D52F6C();
    v43 = v67;
    v44 = v68;
    OUTLINED_FUNCTION_16_0();
    v45 = *(v28 + 96);
    *(v28 + 88) = v43;
    *(v28 + 96) = v44;

    v66 = 4;
    v46 = v42;
    sub_222D52F6C();
    v49 = v61;
    v50 = v62;
    v51 = v59;
    if (v65)
    {
      sub_222D520BC();

      v47 = v51;
      v48 = 0;
    }

    else
    {
      v47 = v59;
      v48 = 1;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v50);
    v52 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
    swift_beginAccess();
    sub_222D27804(v51, v28 + v52);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
    v66 = 6;
    OUTLINED_FUNCTION_4_23();
    sub_222D47700(v53);
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    LOBYTE(v52) = v64;
    (*(v49 + 8))(v32, v46);
    v54 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
    OUTLINED_FUNCTION_16_0();
    *(v28 + v54) = v52;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  OUTLINED_FUNCTION_20();
}

void SiriResponseManifest.encode(to:)()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_222D5210C();
  v7 = OUTLINED_FUNCTION_113(v6);
  v41 = v8;
  v42 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70) - 8) + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C820, &qword_222D58B38);
  OUTLINED_FUNCTION_113(v16);
  v43 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v20);
  v21 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_222D474FC();
  sub_222D531AC();
  OUTLINED_FUNCTION_25();
  if (*(v3 + 16))
  {
    *&v49[0] = *(v3 + 16);
    LOBYTE(v45) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C838, &unk_222D58B40);
    sub_222D47834();
    OUTLINED_FUNCTION_5_18();
    v2 = v1;
    if (v1)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_25();
  if (*(v3 + 32))
  {
    v22 = *(v3 + 40);
    v49[0] = *(v3 + 24);
    v49[1] = v22;
    v23 = *(v3 + 72);
    v49[2] = *(v3 + 56);
    v49[3] = v23;
    v24 = *(v3 + 40);
    v45 = *(v3 + 24);
    v46 = v24;
    v25 = *(v3 + 72);
    v47 = *(v3 + 56);
    v48 = v25;
    sub_222CDD5C0(v49, v44, &qword_27D03C308, &qword_222D58B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C308, &qword_222D58B30);
    sub_222D4775C();
    OUTLINED_FUNCTION_5_18();
    v2 = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_13_8();
      sub_222CDC53C(v44, &qword_27D03C308, &qword_222D58B30);
LABEL_17:
      v38 = OUTLINED_FUNCTION_12_7();
      v39(v38);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_13_8();
    sub_222CDC53C(v44, &qword_27D03C308, &qword_222D58B30);
  }

  OUTLINED_FUNCTION_25();
  v26 = *(v3 + 96);
  if (v26)
  {
    *&v45 = *(v3 + 88);
    *(&v45 + 1) = v26;
    v44[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
    OUTLINED_FUNCTION_0_24();
    sub_222D474A0(v27);
    OUTLINED_FUNCTION_5_18();
    v2 = v1;
    if (v1)
    {
      goto LABEL_17;
    }
  }

  v28 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  OUTLINED_FUNCTION_25();
  sub_222CDD5C0(v3 + v28, v15, &qword_27D03BE40, &unk_222D54A70);
  v29 = v42;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v42);
  sub_222CDC53C(v15, &qword_27D03BE40, &unk_222D54A70);
  if (EnumTagSinglePayload == 1)
  {
LABEL_15:
    v36 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
    OUTLINED_FUNCTION_25();
    if (*(v3 + v36) != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
      OUTLINED_FUNCTION_0_24();
      sub_222D47700(v37);
      OUTLINED_FUNCTION_5_18();
    }

    goto LABEL_17;
  }

  if (!__swift_getEnumTagSinglePayload(v3 + v28, 1, v29))
  {
    v31 = v41;
    v32 = v3 + v28;
    v33 = v40;
    (*(v41 + 16))(v40, v32, v29);
    sub_222D520FC();
    (*(v31 + 8))(v33, v42);
  }

  v44[0] = 4;
  sub_222D52FDC();
  if (!v2)
  {

    goto LABEL_15;
  }

  v34 = OUTLINED_FUNCTION_12_7();
  v35(v34);

LABEL_18:
  OUTLINED_FUNCTION_20();
}

unint64_t sub_222D47374()
{
  result = qword_27D03C798;
  if (!qword_27D03C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C798);
  }

  return result;
}

unint64_t sub_222D473C8()
{
  result = qword_27D03C7B0;
  if (!qword_27D03C7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7A8, &qword_222D58B00);
    sub_222D4744C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C7B0);
  }

  return result;
}

unint64_t sub_222D4744C()
{
  result = qword_27D03C7B8;
  if (!qword_27D03C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C7B8);
  }

  return result;
}

uint64_t sub_222D474A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C448, &unk_222D56E00);
    result = OUTLINED_FUNCTION_14_8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D474FC()
{
  result = qword_27D03C7E0;
  if (!qword_27D03C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C7E0);
  }

  return result;
}

unint64_t sub_222D47550()
{
  result = qword_27D03C7F0;
  if (!qword_27D03C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7E8, &qword_222D58B28);
    sub_222D475D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C7F0);
  }

  return result;
}

unint64_t sub_222D475D4()
{
  result = qword_27D03C7F8;
  if (!qword_27D03C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C7F8);
  }

  return result;
}

unint64_t sub_222D47628()
{
  result = qword_27D03C800;
  if (!qword_27D03C800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C308, &qword_222D58B30);
    sub_222D476AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C800);
  }

  return result;
}

unint64_t sub_222D476AC()
{
  result = qword_27D03C808;
  if (!qword_27D03C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C808);
  }

  return result;
}

uint64_t sub_222D47700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7C0, &unk_222D58B08);
    result = OUTLINED_FUNCTION_14_8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D4775C()
{
  result = qword_27D03C828;
  if (!qword_27D03C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C308, &qword_222D58B30);
    sub_222D477E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C828);
  }

  return result;
}

unint64_t sub_222D477E0()
{
  result = qword_27D03C830;
  if (!qword_27D03C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C830);
  }

  return result;
}

unint64_t sub_222D47834()
{
  result = qword_27D03C840;
  if (!qword_27D03C840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C838, &unk_222D58B40);
    sub_222D478B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C840);
  }

  return result;
}

unint64_t sub_222D478B8()
{
  result = qword_27D03C848;
  if (!qword_27D03C848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7E8, &qword_222D58B28);
    sub_222D4793C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C848);
  }

  return result;
}

unint64_t sub_222D4793C()
{
  result = qword_27D03C850;
  if (!qword_27D03C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C850);
  }

  return result;
}

uint64_t sub_222D47990()
{
  v0 = sub_222D52ECC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_222D479E4(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x656D614E6C6F6F74;
      break;
    case 2:
      result = 0x676F6C616964;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D47AD0()
{
  v0 = sub_222D52ECC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D47B20(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65756C6176;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x74696E61666F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D47BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D47990();
  *a2 = result;
  return result;
}

unint64_t sub_222D47C14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D479E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D47C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D479DC();
  *a1 = result;
  return result;
}

uint64_t sub_222D47C90(uint64_t a1)
{
  v2 = sub_222D474FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D47CCC(uint64_t a1)
{
  v2 = sub_222D474FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D47D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D47AD0();
  *a2 = result;
  return result;
}

uint64_t sub_222D47D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D47B20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D47D90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D47B1C();
  *a1 = result;
  return result;
}

uint64_t sub_222D47DC4(uint64_t a1)
{
  v2 = sub_222D46594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D47E00(uint64_t a1)
{
  v2 = sub_222D46594();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall SiriResponseManifest.asJSONString()()
{
  v1 = *v0;
  v2 = sub_222D5296C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_222D51F2C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_222D51F1C();
  sub_222D47F98();
  v7 = sub_222D51F0C();
  v9 = v8;

  sub_222D5295C();
  v10 = sub_222D5294C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_222CE6210(v7, v9);
  }

  else
  {
    sub_222CE6210(v7, v9);
    v13 = 0xE200000000000000;
    v12 = 32123;
  }

  v14 = v12;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

unint64_t sub_222D47F98()
{
  result = qword_27D03C858;
  if (!qword_27D03C858)
  {
    type metadata accessor for SiriResponseManifest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseManifestCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseManifestCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredParameterCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StructuredParameterCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D482BC()
{
  result = qword_27D03C860;
  if (!qword_27D03C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C860);
  }

  return result;
}

unint64_t sub_222D48314()
{
  result = qword_27D03C868;
  if (!qword_27D03C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C868);
  }

  return result;
}

unint64_t sub_222D4836C()
{
  result = qword_27D03C870;
  if (!qword_27D03C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C870);
  }

  return result;
}

unint64_t sub_222D483C4()
{
  result = qword_27D03C878;
  if (!qword_27D03C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C878);
  }

  return result;
}

unint64_t sub_222D4841C()
{
  result = qword_27D03C880;
  if (!qword_27D03C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C880);
  }

  return result;
}

unint64_t sub_222D48474()
{
  result = qword_27D03C888;
  if (!qword_27D03C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C888);
  }

  return result;
}

uint64_t sub_222D484D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D48528();
}

uint64_t sub_222D484FC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
}

uint64_t sub_222D48528()
{
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t DialogLocationValue.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t DialogLocationValue.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222D48590()
{
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t sub_222D485E0(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 664))();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
}

uint64_t sub_222D48670()
{
  type metadata accessor for DialogLocationValue();
  v0 = swift_allocObject();

  DialogLocationValue.init(builder:)(v1);
  return v0;
}

uint64_t DialogLocationValue.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocationValue.init(builder:)(a1);
  return v2;
}

uint64_t DialogLocationValue.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DialogLocationValue.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t DialogLocationValue.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_8();
  v3 = *(a1 + 16);

  *(v1 + 24) = v3;
  return v1;
}

double sub_222D487E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v5 || (sub_222D5305C()) && (v6 = *(v3 + 24)) != 0)
  {
    *(a3 + 24) = type metadata accessor for DialogLocationAddress();
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

BOOL sub_222D4887C()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D488D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D4887C();
  *a2 = result;
  return result;
}

BOOL sub_222D48938@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D4887C();
  *a1 = result;
  return result;
}

uint64_t sub_222D48964(uint64_t a1)
{
  v2 = sub_222D48B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D489A0(uint64_t a1)
{
  v2 = sub_222D48B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogLocationValue.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DialogLocationValue.__deallocating_deinit()
{
  DialogLocationValue.deinit();
  v0 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D48A30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C890, &qword_222D58E10);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D48B9C();
  sub_222D531AC();
  v16[1] = *(v2 + 24);
  type metadata accessor for DialogLocationAddress();
  OUTLINED_FUNCTION_0_25();
  sub_222D48EF8(v13, 255, v14);
  sub_222D52FBC();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_222D48B9C()
{
  result = qword_27D03C898;
  if (!qword_27D03C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C898);
  }

  return result;
}

uint64_t DialogLocationValue.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocationValue.init(from:)(a1);
  return v2;
}

uint64_t DialogLocationValue.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8A0, &qword_222D58E18);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D48B9C();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogLocationValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DialogLocationAddress();
    OUTLINED_FUNCTION_0_25();
    sub_222D48EF8(v13, 255, v14);
    sub_222D52F1C();
    (*(v7 + 8))(v11, v4);
    *(v1 + 24) = v16[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D48E74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D48EF8(&qword_27D03BF30, a2, type metadata accessor for DialogLocationValue);
  result = sub_222D48EF8(&qword_27D03BF18, v3, type metadata accessor for DialogLocationValue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D48EF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_222D48F40@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of DialogLocationValue.Builder.withAddress(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

_BYTE *storeEnumTagSinglePayload for DialogLocationValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D49300()
{
  result = qword_27D03C8A8;
  if (!qword_27D03C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8A8);
  }

  return result;
}

unint64_t sub_222D49358()
{
  result = qword_27D03C8B0;
  if (!qword_27D03C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8B0);
  }

  return result;
}

unint64_t sub_222D493B0()
{
  result = qword_27D03C8B8;
  if (!qword_27D03C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8B8);
  }

  return result;
}

uint64_t sub_222D49404()
{
  v0 = sub_222D5292C();
  v2 = v1;
  if (v0 == sub_222D5292C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_3_20();
  }

  return v5 & 1;
}

uint64_t sub_222D49488(unsigned __int8 a1, char a2)
{
  v2 = 7955819;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7955819;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x65756C6176;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x74616D726F66;
      break;
    case 5:
      OUTLINED_FUNCTION_33_6();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x74616D726F66;
      break;
    case 5:
      v2 = 0x74696E61666F7270;
      v6 = 0xEF7265746C694679;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D49600(unsigned __int8 a1, char a2)
{
  v2 = 0x6574656D61726170;
  v3 = 0xEA00000000007372;
  v4 = a1;
  v5 = 0x6574656D61726170;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x656D614E6C6F6F74;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 3:
      v5 = 0x6574616C706D6574;
      v3 = 0xEA00000000006449;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x8000000222D59D90;
      break;
    case 5:
      v3 = 0x8000000222D59DB0;
      v5 = 0xD000000000000015;
      break;
    case 6:
      v3 = 0x8000000222D59DD0;
      v5 = 0xD000000000000013;
      break;
    default:
      break;
  }

  v6 = 0xEA00000000007372;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x656D614E6C6F6F74;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 3:
      v2 = 0x6574616C706D6574;
      v6 = 0xEA00000000006449;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x8000000222D59D90;
      break;
    case 5:
      v6 = 0x8000000222D59DB0;
      v2 = 0xD000000000000015;
      break;
    case 6:
      v6 = 0x8000000222D59DD0;
      v2 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D497F0(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D4987C(char a1, char a2)
{
  v2 = 0xD000000000000025;
  v3 = "rofanityFilter";
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = "ntact#Person#firstName";
    }

    else
    {
      v4 = "ntact#Person#lastName";
    }

    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000026;
    v4 = "rofanityFilter";
  }

  if (a2)
  {
    v3 = "ntact#Person#firstName";
    if (a2 != 1)
    {
      v3 = "ntact#Person#lastName";
    }
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222D5305C();
  }

  return v7 & 1;
}

uint64_t sub_222D49970(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6449707061;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x8000000222D59A40;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6449707061;
  }

  if (a2)
  {
    v6 = 0x8000000222D59A40;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D49A1C(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D49AA4(unsigned __int8 a1, char a2)
{
  v2 = 1918985593;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1918985593;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_26_7();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 3:
      OUTLINED_FUNCTION_29_6();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D49BA8(unsigned __int8 a1, char a2)
{
  v2 = 1935893875;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1935893875;
  switch(v4)
  {
    case 1:
      v5 = 0x657366664F637475;
      v6 = 0x7363655374;
      goto LABEL_5;
    case 2:
      v5 = OUTLINED_FUNCTION_26_7();
      break;
    case 3:
      v5 = 0x6D726F4665746164;
      v6 = 0x7265747461;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x657366664F637475;
      v8 = 0x7363655374;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_29_6();
      break;
    case 3:
      v2 = 0x6D726F4665746164;
      v8 = 0x7265747461;
LABEL_10:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_20();
  }

  return v10 & 1;
}

uint64_t sub_222D49CEC(char a1)
{
  if (a1)
  {
    v1 = 0xEE006E756F6E6F72;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D49D9C(char a1, char a2)
{
  v2 = 0x65756C6176;
  if (a1)
  {
    OUTLINED_FUNCTION_9_12();
    if (v3)
    {
      v5 = 0x7374696E75;
    }

    else
    {
      v5 = 0x6E5574757074756FLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000737469;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x65756C6176;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v7)
    {
      v2 = 0x7374696E75;
    }

    else
    {
      v2 = 0x6E5574757074756FLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000737469;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_20();
  }

  return v11 & 1;
}

uint64_t sub_222D49E88()
{
  OUTLINED_FUNCTION_14_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_222D5305C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_222D49F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_20();
  }

  return v10 & 1;
}

uint64_t sub_222D49F98(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D4A024(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6365537472617473;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73636553646E65;
    }

    else
    {
      v5 = 0x656E6F5A656D6974;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x6365537472617473;
    v6 = 0xE900000000000073;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73636553646E65;
    }

    else
    {
      v3 = 0x656E6F5A656D6974;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222D5305C();
  }

  return v8 & 1;
}

uint64_t sub_222D4A124(char a1, char a2)
{
  v2 = 1701869940;
  if (a1)
  {
    OUTLINED_FUNCTION_9_12();
    if (v3)
    {
      v5 = 0x65756C6176;
    }

    else
    {
      v5 = 0x6C6562616CLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701869940;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
    if (v7)
    {
      v2 = 0x65756C6176;
    }

    else
    {
      v2 = 0x6C6562616CLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_20();
  }

  return v11 & 1;
}

uint64_t sub_222D4A1F8(char a1)
{
  if (a1)
  {
    v1 = 0xEB0000000065646FLL;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D4A28C(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20();
  }

  return v8 & 1;
}

uint64_t sub_222D4A334()
{
  v0 = OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_6_19(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A3AC()
{
  v0 = OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_6_19(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A46C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_31_6();
  a2(v5, a1);
  return sub_222D5315C();
}

uint64_t sub_222D4A570(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_31_6();
  a2(a1);
  OUTLINED_FUNCTION_32_5();

  return sub_222D5315C();
}

uint64_t sub_222D4A5D8()
{
  OUTLINED_FUNCTION_31_6();
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4A62C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_5_19();
      break;
    case 3:
      OUTLINED_FUNCTION_23_8();
      break;
    case 5:
      OUTLINED_FUNCTION_33_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4A6E0()
{
  sub_222D529DC();
}

uint64_t sub_222D4A818()
{
  sub_222D529DC();
}

uint64_t sub_222D4A880()
{
  sub_222D529DC();
}

uint64_t sub_222D4A918()
{
  sub_222D529DC();
}

uint64_t sub_222D4A99C()
{
  sub_222D529DC();
}

uint64_t sub_222D4AA24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_27_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4AAB8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_27_6();
      break;
    default:
      break;
  }

  sub_222D529DC();
}

uint64_t sub_222D4AB70()
{
  sub_222D529DC();
}

uint64_t sub_222D4ABFC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AC78()
{
  sub_222D529DC();
}

uint64_t sub_222D4ACE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_222D529DC();
}

uint64_t sub_222D4AD6C()
{
  sub_222D529DC();
}

uint64_t sub_222D4ADD4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_15_9();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AE68(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_23_8();
  }

  sub_222D529DC();
}

uint64_t sub_222D4AED8()
{
  sub_222D529DC();
}

uint64_t sub_222D4AF48()
{
  sub_222D529DC();
}

uint64_t sub_222D4AFAC()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B014()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B088()
{
  OUTLINED_FUNCTION_18_10();
  if (v0)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_23_8();
  }

  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B0FC()
{
  v0 = sub_222D5313C();
  OUTLINED_FUNCTION_6_19(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B148()
{
  OUTLINED_FUNCTION_18_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_15_9();
  }

  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B1C8()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B280()
{
  OUTLINED_FUNCTION_18_10();
  sub_222D529DC();

  return sub_222D5315C();
}

uint64_t sub_222D4B2E4()
{
  OUTLINED_FUNCTION_18_10();
  if (v0)
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
  }

  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B37C()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B424(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_222D5313C();
  a3(v6, a2);
  return sub_222D5315C();
}

uint64_t sub_222D4B494()
{
  sub_222D5313C();
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B4E0()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B560()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B5E8()
{
  sub_222D5313C();
  sub_222D529DC();

  return sub_222D5315C();
}

uint64_t sub_222D4B67C()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_9();

  return sub_222D5315C();
}

uint64_t sub_222D4B6E8()
{
  v0 = sub_222D5313C();
  OUTLINED_FUNCTION_6_19(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_222D529DC();
  return sub_222D5315C();
}

uint64_t sub_222D4B764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_222D5313C();
  a3(a2);
  OUTLINED_FUNCTION_32_5();

  return sub_222D5315C();
}

uint64_t PhonemeData.asNameComponents(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_222D5206C();
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v58 = sub_222D5217C();
  v59 = v14;
  v56 = 45;
  v57 = 0xE100000000000000;
  v54 = 95;
  v55 = 0xE100000000000000;
  sub_222CE0BD0();
  v15 = sub_222D52D5C();
  v17 = v16;

  if (*(v13 + 16))
  {
    v18 = sub_222CE1050(v15, v17);
    v20 = v19;

    if (v20)
    {
      v50 = v8;
      v51 = v5;
      v52 = a2;
      v21 = (*(v13 + 56) + 72 * v18);
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[6];
      v28 = v21[7];
      v29 = v21[8];
      v30 = *v21;
      v46 = v21[2];
      v47 = v22;
      sub_222D4D814(v30);
      v53 = v24;
      v48 = v26;
      v49 = v25;
      sub_222D4D814(v24);
      sub_222D4D814(v27);
      v31 = sub_222D5205C();
      if (v27)
      {
        MEMORY[0x28223BE20](v31);
        OUTLINED_FUNCTION_24_8();
        *(v32 - 32) = a1;
        *(v32 - 24) = v27;
        *(v32 - 16) = v28;
        *(v32 - 8) = v29;
        v58 = sub_222D4BC84(sub_222D4E6DC, v33, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        sub_222D4D874(v27);
      }

      v35 = sub_222D5204C();
      v5 = v51;
      v36 = v53;
      if (v23)
      {
        MEMORY[0x28223BE20](v35);
        OUTLINED_FUNCTION_24_8();
        *(v37 - 32) = a1;
        *(v37 - 24) = v23;
        v38 = v46;
        *(v37 - 16) = v47;
        *(v37 - 8) = v38;
        v58 = sub_222D4BC84(sub_222D4E6DC, v39, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        v36 = v53;
        sub_222D4D874(v23);
      }

      a2 = v52;
      OUTLINED_FUNCTION_6();
      v40 = sub_222D51FDC();
      if (v36)
      {
        MEMORY[0x28223BE20](v40);
        OUTLINED_FUNCTION_24_8();
        *(v41 - 32) = a1;
        *(v41 - 24) = v36;
        v42 = v48;
        *(v41 - 16) = v49;
        *(v41 - 8) = v42;
        v58 = sub_222D4BC84(sub_222D4D854, v43, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
        sub_222D3DAFC();
        OUTLINED_FUNCTION_8_13();
        sub_222D528DC();

        sub_222D4D874(v36);
      }

      OUTLINED_FUNCTION_6();
      sub_222D51FFC();
      (*(v50 + 32))(a2, v12, v5);
      v34 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v34, 1, v5);
    }
  }

  else
  {
  }

  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  sub_222D52C2C();
  sub_222D5280C();
  v34 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v34, 1, v5);
}

uint64_t sub_222D4BC84(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = v5[1];
      v30[0] = *v5;
      v30[1] = v7;
      v8 = v5[3];
      v10 = *v5;
      v9 = v5[1];
      v30[2] = v5[2];
      v30[3] = v8;
      v26 = v10;
      v27 = v9;
      v11 = v5[3];
      v28 = v5[2];
      v29 = v11;
      sub_222D4DC78(v30, &v20);
      v31(&v24, &v26);
      if (v3)
      {
        break;
      }

      v20 = v26;
      v21 = v27;
      v22 = v28;
      v23 = v29;
      sub_222D4DCB0(&v20);
      v12 = v25;
      if (v25)
      {
        v13 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(v6 + 16);
          sub_222D28358();
          v6 = v17;
        }

        v14 = *(v6 + 16);
        if (v14 >= *(v6 + 24) >> 1)
        {
          sub_222D28358();
          v6 = v18;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;
      }

      v5 += 4;
      if (!--v4)
      {
        return v6;
      }
    }

    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    sub_222D4DCB0(&v20);
  }

  return v6;
}

uint64_t sub_222D4BE04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v17[0] = a1;
      v17[1] = v7;
      v11 = *(v17 + v6);
      if (*(v17 + v6) < 0)
      {
        OUTLINED_FUNCTION_25_7();
        switch(v15)
        {
          case 1:
LABEL_19:
            v14 = 2;
            v11 = v12[1] & 0x3F | ((v11 & 0x1F) << 6);
            break;
          case 2:
LABEL_20:
            v11 = ((v11 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v14 = 3;
            break;
          case 3:
LABEL_21:
            v11 = ((v11 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v14 = 4;
            break;
          default:
            goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v9 = sub_222D52E2C();
      }

      v10 = *(v9 + v6);
      v11 = *(v9 + v6);
      if (v10 < 0)
      {
        OUTLINED_FUNCTION_25_7();
        switch(v13)
        {
          case 1:
            goto LABEL_19;
          case 2:
            goto LABEL_20;
          case 3:
            goto LABEL_21;
          default:
            break;
        }
      }
    }

LABEL_15:
    v14 = 1;
LABEL_16:
    v6 += v14;
    v5 = (v11 - v5 + 32 * v5);
    if (v6 >= v2)
    {
      return v5;
    }
  }

  v11 = sub_222D52DAC();
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  __break(1u);
  return 0;
}

uint64_t sub_222D4BFA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000222D5D010 == a2;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63656843656D616ELL && a2 == 0xEC0000006D75736BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D5305C();

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

uint64_t sub_222D4C07C(char a1)
{
  if (a1)
  {
    return 0x63656843656D616ELL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_222D4C0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4BFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4C0F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D4C074();
  *a1 = result;
  return result;
}

uint64_t sub_222D4C118(uint64_t a1)
{
  v2 = sub_222D4D8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4C154(uint64_t a1)
{
  v2 = sub_222D4D8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PhonemeData.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8C0, &qword_222D59048);
  OUTLINED_FUNCTION_113(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28_7();
  sub_222D4D8B4();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8D0, &qword_222D59050);
    sub_222D4D908();
    OUTLINED_FUNCTION_13_9();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_5();
    v10 = sub_222D52F7C();
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    *v5 = v1;
    *(v5 + 8) = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D4C310()
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

unint64_t sub_222D4C35C(char a1)
{
  result = 0xD000000000000025;
  if (!a1)
  {
    return 0xD000000000000026;
  }

  return result;
}

uint64_t sub_222D4C3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D4C310();
  *a2 = result;
  return result;
}

unint64_t sub_222D4C418@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D4C35C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D4C44C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D4C310();
  *a1 = result;
  return result;
}

uint64_t sub_222D4C474(uint64_t a1)
{
  v2 = sub_222D4D9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4C4B0(uint64_t a1)
{
  v2 = sub_222D4D9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getFirstName()()
{
  v2 = OUTLINED_FUNCTION_1_22(*v1, v1[1], v1[2], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getLastName()()
{
  v2 = OUTLINED_FUNCTION_1_22(v1[3], v1[4], v1[5], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

SiriDialogEngine::TokenPhonemeDataList_optional __swiftcall PhonemeDataLocaleEntry.getNickName()()
{
  v2 = OUTLINED_FUNCTION_1_22(v1[6], v1[7], v1[8], v0);
  result.value.value._object = v4;
  result.value.value._countAndFlagsBits = v3;
  result.value.tokenPhonemeDataList._rawValue = v2;
  result.is_nil = v5;
  return result;
}

void PhonemeDataLocaleEntry.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C8E8, &qword_222D59058);
  OUTLINED_FUNCTION_113(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_7();
  sub_222D4D9E8();
  OUTLINED_FUNCTION_30_6();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    sub_222D4DA3C();
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v15 = v19;
    v16 = v20;
    v17 = v21;
    LOBYTE(v18[0]) = 1;
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v12 = v19;
    v13 = v20;
    v14 = v21;
    OUTLINED_FUNCTION_4_24();
    sub_222D52F1C();
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    v11 = v28;
    v10 = v29;
    v9 = v30;
    v18[0] = v15;
    v18[1] = v16;
    v18[2] = v17;
    v18[3] = v12;
    v18[4] = v13;
    v18[5] = v14;
    v18[6] = v28;
    v18[7] = v29;
    v18[8] = v30;
    memcpy(v2, v18, 0x48uLL);
    sub_222D4DA90(v18, &v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    sub_222D4DAC8(&v19);
  }

  OUTLINED_FUNCTION_20();
}

Swift::String __swiftcall TokenPhonemeDataList.getValue()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  v3 = OUTLINED_FUNCTION_6();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_222D4C854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_222D521AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v14 = a1[6];
  result = a1[7];
  if (v12)
  {
    v15 = HIBYTE(v12) & 0xF;
    v59 = a1[2];
    if ((v12 & 0x2000000000000000) == 0)
    {
      v15 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v51 = v3;
      v52 = a3;
      (*(v8 + 16))(v11, a2, v7);
      v57 = sub_222D5217C();
      v58 = v16;
      v55 = 45;
      v56 = 0xE100000000000000;
      v53 = 95;
      v54 = 0xE100000000000000;
      v17 = sub_222CE0BD0();
      v47 = v17;
      v48 = v17;
      v45 = MEMORY[0x277D837D0];
      v46 = v17;
      v18 = sub_222D52D5C();
      v20 = v19;

      if (qword_27D03BCE8 != -1)
      {
        swift_once();
      }

      v21 = sub_222D2822C(v18, v20, qword_27D03C0B0);

      if (v21)
      {

        v22 = sub_222D50CDC();

        (*(v8 + 8))(v11, v7);
        v23 = v22;

        v24 = sub_222D508A0(v59, v12, v21, v22);
        v26 = v25;

        swift_bridgeObjectRelease_n();
      }

      else
      {
        if (qword_280D3DB78 != -1)
        {
          swift_once();
        }

        v50 = qword_280D3DB80;
        v49[1] = sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_222D53980;
        sub_222D4E680();
        v29 = sub_222D5303C();
        v31 = v30;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_222CDDCB0();
        *(v28 + 32) = v29;
        *(v28 + 40) = v31;
        sub_222D5280C();

        (*(v8 + 8))(v11, v7);
        v24 = 0;
        v26 = 0;
      }

      if ((sub_222D15214(v24, v26) & 1) == 0)
      {
        if (!v26)
        {
          goto LABEL_26;
        }

        v32 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v32 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v57 = sub_222D5217C();
          v58 = v33;
          v55 = 45;
          v56 = 0xE100000000000000;
          v53 = 95;
          v54 = 0xE100000000000000;
          v48 = v17;
          v46 = v17;
          v45 = MEMORY[0x277D837D0];
          v34 = sub_222D52D5C();
          v36 = v35;

          v57 = v34;
          v58 = v36;
          MEMORY[0x28223BE20](v37);
          v47 = &v57;
          LOBYTE(v34) = sub_222D3D900(sub_222CE9D88, &v45, &unk_283621008);

          if (v34)
          {
            v57 = 0xD000000000000017;
            v58 = 0x8000000222D5D070;
          }

          else
          {
            v57 = 0x686C3D696F745C1BLL;
            v58 = 0xEA00000000005C70;
          }

          MEMORY[0x223DCB4F0](v24, v26);
          MEMORY[0x223DCB4F0](0x726F3D696F745C1BLL, 0xEB000000005C6874);

          goto LABEL_30;
        }
      }

LABEL_26:
      v57 = sub_222D5217C();
      v58 = v38;
      v55 = 45;
      v56 = 0xE100000000000000;
      v53 = 95;
      v54 = 0xE100000000000000;
      v48 = v17;
      v46 = v17;
      v45 = MEMORY[0x277D837D0];
      v39 = sub_222D52D5C();
      v41 = v40;

      v57 = v39;
      v58 = v41;
      MEMORY[0x28223BE20](v42);
      v47 = &v57;
      LOBYTE(v39) = sub_222D3D900(sub_222CE9D68, &v45, &unk_283621008);

      if (v39)
      {
        v57 = 0xD000000000000017;
        v58 = 0x8000000222D5D070;
      }

      else
      {
        v57 = 0x686C3D696F745C1BLL;
        v58 = 0xEA00000000005C70;
      }

      MEMORY[0x223DCB4F0](v59, v12);
      result = MEMORY[0x223DCB4F0](0x726F3D696F745C1BLL, 0xEB000000005C6874);
LABEL_30:
      v43 = v58;
      v44 = v52;
      *v52 = v57;
      v44[1] = v43;
      return result;
    }
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v27 = HIBYTE(result) & 0xF;
  if ((result & 0x2000000000000000) == 0)
  {
    v27 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    *a3 = v14;
    a3[1] = result;
  }

  else
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_222D4CEBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000222D5D030 == a2;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D5305C();

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

uint64_t sub_222D4CF88(char a1)
{
  OUTLINED_FUNCTION_31_6();
  MEMORY[0x223DCBC20](a1 & 1);
  return sub_222D5315C();
}

uint64_t sub_222D4CFC8(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_222D4D008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4CEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4D030(uint64_t a1)
{
  v2 = sub_222D4DAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4D06C(uint64_t a1)
{
  v2 = sub_222D4DAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TokenPhonemeDataList.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C900, &qword_222D59060);
  OUTLINED_FUNCTION_113(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_7();
  sub_222D4DAF8();
  OUTLINED_FUNCTION_30_6();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C910, &qword_222D59068);
    sub_222D4DB4C();
    OUTLINED_FUNCTION_13_9();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_5();
    v8 = sub_222D52F4C();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    *v2 = v3;
    v2[1] = v8;
    v2[2] = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  OUTLINED_FUNCTION_20();
}

Swift::String_optional __swiftcall TokenPhonemeData.getApgId()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = OUTLINED_FUNCTION_6();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall TokenPhonemeData.getTtsData()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_6();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Int_optional __swiftcall TokenPhonemeData.getTokenOffset()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall TokenPhonemeData.getOrthography()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_6();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_222D4D2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449677061 && a2 == 0xE500000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61746144737474 && a2 == 0xE700000000000000;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x66664F6E656B6F74 && a2 == 0xEB00000000746573;
      if (v7 || (sub_222D5305C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870)
      {

        return 3;
      }

      else
      {
        v9 = sub_222D5305C();

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

uint64_t sub_222D4D440(char a1)
{
  result = 0x6449677061;
  switch(a1)
  {
    case 1:
      result = 0x61746144737474;
      break;
    case 2:
      result = 0x66664F6E656B6F74;
      break;
    case 3:
      result = 0x6172676F6874726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D4D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D4D2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D4D508(uint64_t a1)
{
  v2 = sub_222D4DC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D4D544(uint64_t a1)
{
  v2 = sub_222D4DC24();

  return MEMORY[0x2821FE720](a1, v2);
}

void TokenPhonemeData.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C928, &qword_222D59070);
  OUTLINED_FUNCTION_113(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_222D4DC24();
  sub_222D5318C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    OUTLINED_FUNCTION_21_8();
    v12 = sub_222D52EDC();
    v14 = v13;
    v29 = v12;
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_21_8();
    *&v28 = sub_222D52EDC();
    *(&v28 + 1) = v15;
    LOBYTE(v33[0]) = 2;
    OUTLINED_FUNCTION_21_8();
    v27 = sub_222D52F0C();
    v39 = v16 & 1;
    v17 = sub_222D52EDC();
    v18 = v10;
    v20 = v19;
    (*(v5 + 8))(v18, v3);
    v21 = v29;
    *&v30[0] = v29;
    *(&v30[0] + 1) = v14;
    v22 = v27;
    v23 = v28;
    v30[1] = v28;
    *&v31 = v27;
    HIDWORD(v26) = v39;
    BYTE8(v31) = v39;
    *&v32 = v17;
    *(&v32 + 1) = v20;
    v24 = v28;
    *v2 = v30[0];
    v2[1] = v24;
    v25 = v32;
    v2[2] = v31;
    v2[3] = v25;
    sub_222D4DC78(v30, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    v33[0] = v21;
    v33[1] = v14;
    v34 = __PAIR128__(*(&v28 + 1), v23);
    v35 = v22;
    v36 = BYTE4(v26);
    v37 = v17;
    v38 = v20;
    sub_222D4DCB0(v33);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D4D814(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_222D4D854@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_222D4C854(a1, v2[2], a2);
}

uint64_t sub_222D4D874(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_222D4D8B4()
{
  result = qword_27D03C8C8;
  if (!qword_27D03C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8C8);
  }

  return result;
}

unint64_t sub_222D4D908()
{
  result = qword_27D03C8D8;
  if (!qword_27D03C8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C8D0, &qword_222D59050);
    sub_222D4D994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8D8);
  }

  return result;
}

unint64_t sub_222D4D994()
{
  result = qword_27D03C8E0;
  if (!qword_27D03C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8E0);
  }

  return result;
}

unint64_t sub_222D4D9E8()
{
  result = qword_27D03C8F0;
  if (!qword_27D03C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8F0);
  }

  return result;
}

unint64_t sub_222D4DA3C()
{
  result = qword_27D03C8F8;
  if (!qword_27D03C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C8F8);
  }

  return result;
}

unint64_t sub_222D4DAF8()
{
  result = qword_27D03C908;
  if (!qword_27D03C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C908);
  }

  return result;
}

unint64_t sub_222D4DB4C()
{
  result = qword_27D03C918;
  if (!qword_27D03C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C910, &qword_222D59068);
    sub_222D4DBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C918);
  }

  return result;
}

unint64_t sub_222D4DBD0()
{
  result = qword_27D03C920;
  if (!qword_27D03C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C920);
  }

  return result;
}

unint64_t sub_222D4DC24()
{
  result = qword_27D03C930;
  if (!qword_27D03C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C930);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_222D4DCF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_222D4DD34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriDialogEngine20TokenPhonemeDataListVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222D4DD98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_222D4DDEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_222D4DE70(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_222D4DEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222D4DEFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_222D4DF50(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TokenPhonemeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222D4E0AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_222D4E184(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D4E264()
{
  result = qword_27D03C938;
  if (!qword_27D03C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C938);
  }

  return result;
}

unint64_t sub_222D4E2BC()
{
  result = qword_27D03C940;
  if (!qword_27D03C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C940);
  }

  return result;
}

unint64_t sub_222D4E314()
{
  result = qword_27D03C948;
  if (!qword_27D03C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C948);
  }

  return result;
}

unint64_t sub_222D4E36C()
{
  result = qword_27D03C950;
  if (!qword_27D03C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C950);
  }

  return result;
}

unint64_t sub_222D4E3C4()
{
  result = qword_27D03C958;
  if (!qword_27D03C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C958);
  }

  return result;
}

unint64_t sub_222D4E41C()
{
  result = qword_27D03C960;
  if (!qword_27D03C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C960);
  }

  return result;
}

unint64_t sub_222D4E474()
{
  result = qword_27D03C968;
  if (!qword_27D03C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C968);
  }

  return result;
}

unint64_t sub_222D4E4CC()
{
  result = qword_27D03C970;
  if (!qword_27D03C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C970);
  }

  return result;
}

unint64_t sub_222D4E524()
{
  result = qword_27D03C978;
  if (!qword_27D03C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C978);
  }

  return result;
}

unint64_t sub_222D4E57C()
{
  result = qword_27D03C980;
  if (!qword_27D03C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C980);
  }

  return result;
}

unint64_t sub_222D4E5D4()
{
  result = qword_27D03C988;
  if (!qword_27D03C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C988);
  }

  return result;
}

unint64_t sub_222D4E62C()
{
  result = qword_27D03C990;
  if (!qword_27D03C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C990);
  }

  return result;
}

unint64_t sub_222D4E680()
{
  result = qword_27D03C998;
  if (!qword_27D03C998)
  {
    sub_222D521AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C998);
  }

  return result;
}

unint64_t sub_222D4E708(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    OUTLINED_FUNCTION_5_20();
    result = sub_222D52A0C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_222D52AEC();
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222D4E7C0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20();
    result = sub_222D52CEC();
    if (v2)
    {
      result = v1;
    }

    if (v1 >> 14 >= result >> 14)
    {
      OUTLINED_FUNCTION_8_14();
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

int64_t sub_222D4E844(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_222CF78D4(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_222D4F100(result, v3, a2);
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init(print:speak:)(Swift::String print, Swift::String_optional speak)
{
  object = print._object;
  countAndFlagsBits = print._countAndFlagsBits;
  v5 = v2;
  if (!speak.value._object)
  {

    OUTLINED_FUNCTION_5_20();
  }

  v5->value._countAndFlagsBits = countAndFlagsBits;
  v5->value._object = object;
  v5[1] = speak;
  result.speak = speak.value;
  result.print = print;
  return result;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init(serializedValue:)(Swift::String serializedValue)
{
  object = serializedValue._object;
  countAndFlagsBits = serializedValue._countAndFlagsBits;
  v4 = v1;
  OUTLINED_FUNCTION_5_20();
  if (sub_222D52A9C())
  {
    OUTLINED_FUNCTION_5_20();
    if (sub_222D52AAC())
    {
      if (qword_280D3BDF8 != -1)
      {
        swift_once();
      }

      v35 = v4;
      sub_222D4E708(qword_280D3DDD0, countAndFlagsBits, object);
      OUTLINED_FUNCTION_0_26();
      if (qword_280D3BDF0 != -1)
      {
        swift_once();
      }

      v5 = sub_222D4EBF4(qword_280D3DDC8);
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = v7 >> 14;
      object = 0x3A7374742FLL;
      while (1)
      {
        v4 = (v5 >> 14);
        if (v5 >> 14 >= v13)
        {
          countAndFlagsBits = MEMORY[0x223DCB480](v6, v8, v10, v12);
          object = v24;

          v22 = countAndFlagsBits;
          v23 = object;
          v4 = v35;
          goto LABEL_12;
        }

        v14 = OUTLINED_FUNCTION_2_24();
        countAndFlagsBits = v15;
        v17 = sub_222D4EFC0(0x3A7374742FLL, 0xE500000000000000, v14, v16);

        if (v17)
        {
          break;
        }

        v5 = sub_222D52CCC();
      }

      if (v4 < v6 >> 14)
      {
        __break(1u);
      }

      else
      {

        v25 = OUTLINED_FUNCTION_2_24();
        v27 = v26;
        v29 = v28;
        v31 = v30;

        countAndFlagsBits = MEMORY[0x223DCB480](v25, v27, v29, v31);
        object = v32;

        OUTLINED_FUNCTION_2_24();

        v4 = v35;
        if (qword_280D3BDE8 == -1)
        {
LABEL_16:
          v33 = sub_222D4E7C0(qword_280D3DDC0);
          v22 = MEMORY[0x223DCB480](v33);
          v23 = v34;

          goto LABEL_12;
        }
      }

      swift_once();
      goto LABEL_16;
    }
  }

  v22 = countAndFlagsBits;
  v23 = object;
LABEL_12:
  *v4 = countAndFlagsBits;
  v4[1] = object;
  v4[2] = v22;
  v4[3] = v23;
  result.speak._object = v21;
  result.speak._countAndFlagsBits = v20;
  result.print._object = v19;
  result.print._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_222D4EBF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20();
    result = sub_222D52CEC();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      v3 = result;
    }

    if (v3 >> 14 >= v1 >> 14)
    {
      OUTLINED_FUNCTION_8_14();
      OUTLINED_FUNCTION_0_26();

      return OUTLINED_FUNCTION_1_23();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222D4EC7C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_222D52A0C();
    sub_222D52AEC();
    OUTLINED_FUNCTION_0_26();

    return OUTLINED_FUNCTION_1_23();
  }

  return result;
}

uint64_t static SpeakableString.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222D5305C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_222D5305C();
    }
  }

  return result;
}

uint64_t sub_222D4EDC8()
{
  result = sub_222D529EC();
  qword_280D3DDD0 = result;
  return result;
}

uint64_t sub_222D4EDF4()
{
  result = sub_222D529EC();
  qword_280D3DDC8 = result;
  return result;
}

uint64_t sub_222D4EE1C()
{
  result = sub_222D529EC();
  qword_280D3DDC0 = result;
  return result;
}

uint64_t SpeakableString.print.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SpeakableString.speak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SiriDialogEngine::SpeakableString __swiftcall SpeakableString.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t SpeakableString.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_13();
  sub_222D5317C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_7_13();
    v6._countAndFlagsBits = sub_222D5306C();
    SpeakableString.init(serializedValue:)(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t String.toSpeakableString.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a2;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_222D4EFC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    OUTLINED_FUNCTION_4_25();
    v7 = sub_222D52D1C();
    v9 = v8;
    OUTLINED_FUNCTION_4_25();
    v6 = sub_222D52CCC();
    v10 = sub_222D52A2C();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_222D5305C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_222D52A2C();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

unint64_t sub_222D4F100(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_222D4F16C()
{
  OUTLINED_FUNCTION_14_2();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_222D4F1EC()
{
  OUTLINED_FUNCTION_19_10();
  type metadata accessor for CATExecutor();
  OUTLINED_FUNCTION_11_9();
  v2 = v1;
  v0[10] = v1;
  if (v3)
  {
    swift_willThrow();

LABEL_3:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  if (!v1)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_7_14("CATResponse: executor object is nil");
    swift_willThrow();
    goto LABEL_3;
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_17_7(v8);
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  sub_222CF279C();
  *v10 = v0;
  v10[1] = sub_222D4F390;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D4F390()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  *(v2 + 104) = v0;

  if (!v0)
  {
    v8 = *(v2 + 88);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

double sub_222D4F4CC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngineP33_0765C0C49696B08FD742D29DC8B43ED916CATParamsWrapper_mCatParams);
  v4 = sub_222D528FC();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_222D52D6C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_222D4F70C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CATParamsWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_25_8();
  v13 = *v0;
  v1[12] = v12;
  v1[13] = v13;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

id sub_222D4F7E4()
{
  OUTLINED_FUNCTION_15_10();
  v1 = v0[3];
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v3 = v0[12];
    v4 = v0[13];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_16_6(v5);
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_1_24(v6);

    return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4F8E0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t static CATResponse.executeDialog(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_25_8();
  v13 = *v0;
  v1[12] = v12;
  v1[13] = v13;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

id sub_222D4FAC8()
{
  OUTLINED_FUNCTION_15_10();
  v1 = v0[3];
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v3 = v0[12];
    v4 = v0[13];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_16_6(v5);
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_1_24(v6);

    return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4FBC4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t static CATResponse.executeDialog(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v9 = sub_222D5210C();
  v1[9] = v9;
  v10 = *(v9 - 8);
  v1[10] = v10;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_25_8();
  v13 = *v3;
  v1[11] = v12;
  v1[12] = v13;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void *sub_222D4FD88()
{
  OUTLINED_FUNCTION_15_10();
  v1 = v0[8];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v0[13] = v3;
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v5 = result;
    v6 = v0[11];
    v7 = v0[12];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_16_6(v8);
    *v9 = v10;
    v9[1] = sub_222D4FED4;
    v11 = v0[11];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[4];
    v15 = v0[5];
    v16 = v0[3];

    return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v11, v16, v14, v15, v12, v13, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D4FED4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_15();
  v4 = v3;
  OUTLINED_FUNCTION_3_22();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t static CATResponse.executeVisual(templateDir:visualCatId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_222D4FFFC()
{
  if (qword_280D3DB38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_10();
  type metadata accessor for CATExecutor();
  OUTLINED_FUNCTION_11_9();
  v2 = v1;
  v0[10] = v1;
  if (v3)
  {
    swift_willThrow();

LABEL_5:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  if (!v1)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_7_14("CATResponse: executor object is nil");
    swift_willThrow();
    goto LABEL_5;
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_17_7(v8);
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  sub_222CF279C();
  *v10 = v0;
  v10[1] = sub_222D501E8;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D501E8()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  *(v2 + 104) = v0;

  if (!v0)
  {
    v8 = *(v2 + 88);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_222D502EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  v13 = OUTLINED_FUNCTION_113(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - v18;
  (*(v15 + 16))(&v23 - v18, a1, v12);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v15 + 32))(v21 + v20, v19, v12);
  aBlock[4] = a6;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222CE3BA4;
  aBlock[3] = a7;
  v22 = _Block_copy(aBlock);

  [v24 executeWithCompletionBlock_];
  _Block_release(v22);
}

uint64_t sub_222D504E4(void *a1)
{
  type metadata accessor for CATResultProvider();
  sub_222D0C8D4(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52B9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52BAC();
  }
}

uint64_t static CATResponse.executeVisual(bundle:visualCatId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v8 = OUTLINED_FUNCTION_5_21(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_13(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_25_8();
  v13 = *v0;
  v1[12] = v12;
  v1[13] = v13;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

id sub_222D50638()
{
  OUTLINED_FUNCTION_15_10();
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v2 = v0[12];
    v3 = v0[13];
    sub_222D5292C();
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_18_11();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_16_6(v4);
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_1_24(v5);

    return static CATResponse.executeVisual(templateDir:visualCatId:parameters:globals:callback:options:)(v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  OUTLINED_FUNCTION_113(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_222D50810(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return sub_222D504E4(a1);
}

uint64_t sub_222D508A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x277D84F90];
  v35 = 4 * v6;
  v8 = 15;
  while (1)
  {
    if (v35 <= v8 >> 14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
      OUTLINED_FUNCTION_1_25();
      sub_222D50C94(v30, v31, &qword_222D560C0);
      v32 = sub_222D528DC();

      return v32;
    }

    if (!v4)
    {
      break;
    }

    v9 = sub_222D528FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA18, &qword_222D59888);
    sub_222D50C94(&unk_27D03CA20, &qword_27D03CA18, &qword_222D59888);
    sub_222CE0BD0();
    v10 = sub_222D52C9C();
    v12 = [v4 firstMatchInString:v9 options:4 range:{v10, v11}];

    if (!v12)
    {
      break;
    }

    [v12 range];
    sub_222D52BEC();
    if (v14)
    {

      if (qword_280D3DB78 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    v8 = v13;
    v15 = sub_222D52AEC();
    v16 = MEMORY[0x223DCB480](v15);
    v18 = v17;

    if (!*(a3 + 16))
    {

LABEL_22:

      if (qword_280D3DB78 == -1)
      {
LABEL_23:
        sub_222D52C3C();
        sub_222D5280C();

        return 0;
      }

LABEL_26:
      OUTLINED_FUNCTION_0();
      goto LABEL_23;
    }

    v19 = sub_222CE1050(v16, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = (*(a3 + 56) + 16 * v19);
    v23 = *v22;
    v24 = v22[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v7 + 16);
      sub_222D28358();
      v7 = v28;
    }

    v25 = *(v7 + 16);
    if (v25 >= *(v7 + 24) >> 1)
    {
      sub_222D28358();
      v7 = v29;
    }

    *(v7 + 16) = v25 + 1;
    v26 = v7 + 16 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
    v4 = a4;
  }

  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_222D52C3C();
  sub_222D5280C();
  return 0;
}

uint64_t sub_222D50C94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_222D50CDC()
{

  v27 = sub_222D5109C(v0);
  sub_222D51030(&v27);
  v1 = v27;
  v2 = *(v27 + 16);
  v3 = 0x277CCA000uLL;
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_222CEA040(0, v2, 0);
    v4 = v27;
    v5 = objc_opt_self();
    v6 = (v1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_222D528FC();
      v10 = [v5 escapedPatternForString_];

      v11 = sub_222D5292C();
      v13 = v12;

      v27 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_222CEA040(v14 > 1, v15 + 1, 1);
        v4 = v27;
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v6 += 2;
      --v2;
    }

    while (v2);

    v3 = 0x277CCA000;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v27 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
  OUTLINED_FUNCTION_1_25();
  sub_222D50C94(v17, v18, &qword_222D560C0);
  v19 = sub_222D528DC();
  v21 = v20;

  v27 = 40;
  v28 = 0xE100000000000000;
  MEMORY[0x223DCB4F0](v19, v21);

  MEMORY[0x223DCB4F0](41, 0xE100000000000000);
  v22 = v27;
  v23 = v28;
  v24 = objc_allocWithZone(*(v3 + 3176));
  v25 = sub_222D50F54(v22, v23, 0);

  return v25;
}

id sub_222D50F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_222D528FC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_222D5207C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_222D51030(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222D51EC8(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_222D51158(v5);
  *a1 = v2;
  return result;
}

void *sub_222D5109C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_222D28868(*(a1 + 16), 0);
  v4 = sub_222D51D64(&v6, v3 + 4, v1, a1);

  sub_222D51EC0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_222D51158(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222D5302C();
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
        v6 = sub_222D52B6C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_222D51350(v7, v8, a1, v4);
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
    return sub_222D5124C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222D5124C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
    while (2)
    {
      v8 = (v5 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      v19 = v7;
      v20 = v6;
      do
      {
        v11 = *(v6 - 2);
        v12 = *(v6 - 1);

        v13 = sub_222D529EC();
        v14 = sub_222D529EC();

        if (v14 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v15 = *v6;
        v16 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v16;
        *(v6 - 2) = v15;
        v6 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v20 + 2;
      v7 = v19 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_222D51350(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v98 = (v8 + 16);
      v99 = *(v8 + 16);
      while (v99 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v100 = v8;
        v101 = (v8 + 16 * v99);
        v102 = *v101;
        v103 = &v98[2 * v99];
        v8 = v103[1];
        sub_222D519FC((*a3 + 16 * *v101), (*a3 + 16 * *v103), (*a3 + 16 * v8), v116);
        if (v5)
        {
          break;
        }

        if (v8 < v102)
        {
          goto LABEL_117;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_118;
        }

        *v101 = v102;
        v101[1] = v8;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_119;
        }

        v99 = *v98 - 1;
        memmove(v103, v103 + 2, 16 * v104);
        *v98 = v99;
        v8 = v100;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_222D51C50(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v106 = v8;
      v107 = v5;
      v11 = (*a3 + 16 * v10);
      v12 = *v11;
      v8 = v11[1];
      v13 = (*a3 + 16 * v7);
      v111 = 16 * v7;
      v14 = *v13;
      v5 = v13[1];

      v116 = sub_222D529EC();
      v113 = sub_222D529EC();

      v15 = v13 + 3;
      v16 = v9 + 2;
      while (1)
      {
        v17 = v16;
        v18 = v10 + 1;
        if (v18 >= v6)
        {
          break;
        }

        v19 = v15 + 2;
        v8 = v15[2];
        v20 = *(v15 - 1);
        v21 = v18;
        v23 = *v15;
        v22 = v15[1];

        v24 = sub_222D529EC();
        v5 = sub_222D529EC();

        v10 = v21;

        v16 = v17 + 1;
        v15 = v19;
        if (v113 < v116 == v5 >= v24)
        {
          goto LABEL_9;
        }
      }

      v10 = v6;
LABEL_9:
      if (v113 >= v116)
      {
        v8 = v106;
        v5 = v107;
      }

      else
      {
        v25 = v9;
        if (v10 < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= v10)
        {
          v8 = v106;
          v5 = v107;
        }

        else
        {
          if (v6 >= v17)
          {
            v26 = v17;
          }

          else
          {
            v26 = v6;
          }

          v27 = 16 * v26;
          v28 = v10;
          v8 = v106;
          v5 = v107;
          v29 = v111;
          do
          {
            if (v25 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v31 = (v30 + v29);
              v32 = v30 + v27;
              v33 = *v31;
              v34 = v31[1];
              *v31 = *(v32 - 16);
              *(v32 - 16) = v33;
              *(v32 - 8) = v34;
            }

            ++v25;
            v27 -= 16;
            v29 += 16;
          }

          while (v25 < v28);
        }
      }
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = *(v8 + 16);
      sub_222D28794();
      v8 = v96;
    }

    v52 = *(v8 + 16);
    v53 = v52 + 1;
    if (v52 >= *(v8 + 24) >> 1)
    {
      sub_222D28794();
      v8 = v97;
    }

    *(v8 + 16) = v53;
    v54 = v8 + 32;
    v55 = (v8 + 32 + 16 * v52);
    *v55 = v9;
    v55[1] = v10;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v116 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        v57 = (v54 + 16 * (v53 - 1));
        v58 = (v8 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v8 + 32);
          v60 = *(v8 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_59:
          if (v62)
          {
            goto LABEL_108;
          }

          v74 = *v58;
          v73 = v58[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_111;
          }

          v78 = v57[1];
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_116;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v53 < 2)
        {
          goto LABEL_110;
        }

        v81 = *v58;
        v80 = v58[1];
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_74:
        if (v77)
        {
          goto LABEL_113;
        }

        v83 = *v57;
        v82 = v57[1];
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v84 < v76)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_103:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v88 = v8;
        v89 = (v54 + 16 * (v56 - 1));
        v90 = *v89;
        v91 = v56;
        v8 = v54 + 16 * v56;
        v92 = *(v8 + 8);
        sub_222D519FC((*a3 + 16 * *v89), (*a3 + 16 * *v8), (*a3 + 16 * v92), v115);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v92 < v90)
        {
          goto LABEL_103;
        }

        v5 = *(v88 + 16);
        if (v91 > v5)
        {
          goto LABEL_104;
        }

        *v89 = v90;
        v89[1] = v92;
        if (v91 >= v5)
        {
          goto LABEL_105;
        }

        v93 = v91;
        v53 = v5 - 1;
        memmove(v8, (v8 + 16), 16 * (v5 - 1 - v93));
        v8 = v88;
        *(v88 + 16) = v5 - 1;
        v94 = v5 > 2;
        v5 = 0;
        if (!v94)
        {
          goto LABEL_88;
        }
      }

      v63 = v54 + 16 * v53;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_106;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_107;
      }

      v70 = v58[1];
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_109;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_112;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = v57[1];
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_120;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  v36 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v36)
  {
    goto LABEL_39;
  }

  v108 = v5;
  v37 = *a3;
  v38 = *a3 + 16 * v10;
  v109 = v9;
  v39 = v9 - v10;
  v112 = v36;
LABEL_32:
  v114 = v38;
  v116 = v10;
  v40 = (v37 + 16 * v10);
  v41 = *v40;
  v42 = v40[1];
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *(v44 - 2);
    v46 = *(v44 - 1);

    v47 = sub_222D529EC();
    v48 = sub_222D529EC();

    if (v48 >= v47)
    {
LABEL_37:
      v10 = (v116 + 1);
      v38 = v114 + 16;
      --v39;
      if (v116 + 1 == v112)
      {
        v10 = v112;
        v5 = v108;
        v9 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v49 = *v44;
    v50 = v44[1];
    *v44 = *(v44 - 1);
    *(v44 - 1) = v50;
    *(v44 - 2) = v49;
    v44 -= 2;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_222D519FC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_222D289CC(a1, (a2 - a1) / 16, a4);
    for (i = &v4[16 * v8]; ; i = v12)
    {
      if (v4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      v12 = i;
      v13 = v5;
      v14 = *v6;
      v15 = *(v6 + 1);
      v16 = *v4;
      v17 = *(v4 + 1);

      v18 = v6;
      v19 = sub_222D529EC();
      v20 = sub_222D529EC();

      if (v20 >= v19)
      {
        break;
      }

      v21 = v18;
      v6 = v18 + 16;
      if (v7 != v18)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 16;
      v5 = v13;
    }

    v21 = v4;
    v22 = v7 == v4;
    v4 += 16;
    v6 = v18;
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v7 = *v21;
    goto LABEL_12;
  }

  sub_222D289CC(a2, (a3 - a2) / 16, a4);
  i = &v4[16 * v9];
  v41 = v4;
  v40 = v7;
LABEL_14:
  v23 = v6 - 16;
  v24 = v5 - 16;
  while (i > v4 && v6 > v7)
  {
    v26 = v24;
    v28 = *(i - 2);
    v29 = *(i - 1);
    v27 = i - 16;
    v30 = *(v6 - 2);
    v31 = *(v6 - 1);
    v32 = v6;
    v33 = i;

    v34 = sub_222D529EC();
    v35 = sub_222D529EC();

    v5 = v26;
    v36 = v26 + 16;
    if (v35 < v34)
    {
      v22 = v36 == v32;
      v6 = v23;
      v7 = v40;
      i = v33;
      v4 = v41;
      if (!v22)
      {
        *v26 = *v23;
        v6 = v23;
      }

      goto LABEL_14;
    }

    if (v33 != v36)
    {
      *v26 = *v27;
    }

    v24 = v26 - 16;
    i = v27;
    v7 = v40;
    v4 = v41;
    v6 = v32;
  }

LABEL_27:
  v37 = (i - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v37])
  {
    memmove(v6, v4, 16 * v37);
  }

  return 1;
}

char *sub_222D51C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3D0, &unk_222D567A0);
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

uint64_t sub_222D51D64(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}