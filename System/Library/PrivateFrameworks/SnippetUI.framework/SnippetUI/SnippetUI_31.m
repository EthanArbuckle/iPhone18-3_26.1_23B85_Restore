void sub_26A7A2AA4()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7AF8, &unk_26A8846C8);
  OUTLINED_FUNCTION_37_15();
  sub_26A84B718();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D62DA0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2B7C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7AE8, &unk_26A8846B8);
  OUTLINED_FUNCTION_37_15();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CC8C40], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2C54()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7E00, &unk_26A884C48);
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for MenuOverlayData();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for MenuOverlayData, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2D2C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7E08, &unk_26A884C50);
  OUTLINED_FUNCTION_37_15();
  sub_26A84F2E8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CDF8E0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2E28()
{
  OUTLINED_FUNCTION_76_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_81();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_32_11();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_86_1(v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_19_27();
    v13[2] = v11;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v13 != v0 || &v0[v11 + 4] <= v13 + 4)
    {
      v16 = OUTLINED_FUNCTION_77_0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_77_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2F14()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A70);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void *sub_26A7A2FE4()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A40);
  v3 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_19_27();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

uint64_t sub_26A7A30B8()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA8);
  v1 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v1);
  return v0;
}

uint64_t sub_26A7A3164()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  v5 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v5);
  return v0;
}

void *sub_26A7A3228()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v1;
  v5 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v6 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_2_97();
  v6[2] = v4;
  v6[3] = v7;
  return v6;
}

uint64_t sub_26A7A3280()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C98);
  v1 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v1);
  return v0;
}

uint64_t sub_26A7A3318()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D18);
  v1 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v1);
  return v0;
}

uint64_t sub_26A7A3378()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D10);
  v1 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v1);
  return v0;
}

size_t sub_26A7A33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_40_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_2_5(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7A34F0()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D08);
  v1 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v1);
  return v0;
}

void *sub_26A7A3578()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA8);
  v3 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_20_30();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

uint64_t sub_26A7A35F0()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  v5 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_6_65(v5);
  return v0;
}

size_t sub_26A7A3644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_40_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  v9 = OUTLINED_FUNCTION_37_15();
  v10 = a5(v9);
  OUTLINED_FUNCTION_2_5(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26A7A3758(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3798(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A37BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A37E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3800(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3860(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3910(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[368 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3964(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A398C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

void sub_26A7A39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_72_3();
  if (v8 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4), OUTLINED_FUNCTION_46(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_30_16();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    OUTLINED_FUNCTION_30_16();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_26A7A3A90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

void sub_26A7A3B18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_72_3();
  if (v8 && (a4(0), OUTLINED_FUNCTION_46(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_30_16();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_30_16();

    swift_arrayInitWithTakeFrontToBack();
  }
}

unint64_t sub_26A7A3C48(uint64_t a1)
{
  result = sub_26A7A3CA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A7A3CA0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A7A3CEC()
{
  sub_26A7A410C(319, &qword_2803B79C0, &qword_2803B79C8, &unk_26A8843C8, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_26A7A410C(319, &qword_2803B79D0, &qword_2803B79D8, &unk_26A8843D0, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_26A7A4200(319, &qword_28157FF10, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A7A3E9C()
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A7A4200(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A7A4200(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
      if (v2 <= 0x3F)
      {
        sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A7A410C(319, &qword_2803A9220, &qword_2803A91C8, &unk_26A856820, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26A7A416C();
              if (v6 <= 0x3F)
              {
                sub_26A5046B4();
                if (v7 <= 0x3F)
                {
                  sub_26A7A4200(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_26A7A410C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_40_3(0, a2, a3);
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8);
    v10 = a5(a1, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_26A7A416C()
{
  if (!qword_2803B79F0)
  {
    type metadata accessor for FactItemButtonViewModel(255);
    sub_26A7A3CA0();
    v0 = sub_26A84F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B79F0);
    }
  }
}

void sub_26A7A4200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A7A4250()
{
  result = qword_2803B79F8;
  if (!qword_2803B79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7980);
    sub_26A7A4308();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B79F8);
  }

  return result;
}

unint64_t sub_26A7A4308()
{
  result = qword_2803B7A00;
  if (!qword_2803B7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7978);
    sub_26A7A4394();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7A00);
  }

  return result;
}

unint64_t sub_26A7A4394()
{
  result = qword_2803B7A08;
  if (!qword_2803B7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7970);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7A08);
  }

  return result;
}

id sub_26A7A4494(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_26A7A44AC()
{
  result = qword_2803B7B68;
  if (!qword_2803B7B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B50);
    sub_26A7A4538();
    sub_26A5C896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B68);
  }

  return result;
}

unint64_t sub_26A7A4538()
{
  result = qword_2803B7B70;
  if (!qword_2803B7B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0920);
    type metadata accessor for RFButtonStyle();
    sub_26A6091D0();
    sub_26A7A3CA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B70);
  }

  return result;
}

unint64_t sub_26A7A4648()
{
  result = qword_2803B7B80;
  if (!qword_2803B7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B38);
    sub_26A7A4538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B80);
  }

  return result;
}

uint64_t sub_26A7A46D4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7A4728()
{
  v0 = OUTLINED_FUNCTION_41_12();
  v1 = type metadata accessor for FactItemButtonView(v0);
  OUTLINED_FUNCTION_79(v1);
  v2 = OUTLINED_FUNCTION_9_43();

  return sub_26A79F320(v2, v3, v4);
}

unint64_t sub_26A7A478C()
{
  result = qword_2803B7BB0;
  if (!qword_2803B7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BA0);
    sub_26A7A4844();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BB0);
  }

  return result;
}

unint64_t sub_26A7A4844()
{
  result = qword_2803B7BB8;
  if (!qword_2803B7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BC0);
    sub_26A7A48C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BB8);
  }

  return result;
}

unint64_t sub_26A7A48C8()
{
  result = qword_2803B7BC8;
  if (!qword_2803B7BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BD0);
    sub_26A7A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BC8);
  }

  return result;
}

unint64_t sub_26A7A4954()
{
  result = qword_2803B7BD8;
  if (!qword_2803B7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BE0);
    sub_26A53770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BD8);
  }

  return result;
}

unint64_t sub_26A7A49E0()
{
  result = qword_2803B7C20;
  if (!qword_2803B7C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BF8);
    sub_26A7A4A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C20);
  }

  return result;
}

unint64_t sub_26A7A4A6C()
{
  result = qword_2803B7C28;
  if (!qword_2803B7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7C30);
    sub_26A7A478C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C28);
  }

  return result;
}

uint64_t objectdestroy_108Tm()
{
  type metadata accessor for FactItemButtonView(0);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_70_0();
  if (v5)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  OUTLINED_FUNCTION_39_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v6 = OUTLINED_FUNCTION_81_2();
  v7 = *(v6 + 52);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);
  v10(v3 + *(v6 + 56), v8);
  v11 = v4 + *(v2 + 32);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v13 = OUTLINED_FUNCTION_65_4(v12);
  (v10)(v13);
  v10(v11 + *(v6 + 56), v8);
  OUTLINED_FUNCTION_1_7(v0[6]);

  OUTLINED_FUNCTION_1_7(v0[7]);

  OUTLINED_FUNCTION_91_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = type metadata accessor for ActionType();
  if (OUTLINED_FUNCTION_9_44(v14))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v2);
  }

LABEL_11:
  v16 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v1 + v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();

  return swift_deallocObject();
}

uint64_t sub_26A7A4E78()
{
  v0 = OUTLINED_FUNCTION_41_12();
  v1 = type metadata accessor for FactItemButtonView(v0);
  OUTLINED_FUNCTION_79(v1);
  v2 = OUTLINED_FUNCTION_9_43();

  return sub_26A79F574(v2, v3, v4);
}

uint64_t sub_26A7A4EDC()
{
  v3 = OUTLINED_FUNCTION_41_12();
  v4 = type metadata accessor for FactItemButtonView(v3);
  OUTLINED_FUNCTION_2_5(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A79F834(v0, v1 + v9, v10, v2);
}

uint64_t sub_26A7A4F78()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7A4FCC()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v0;
}

uint64_t sub_26A7A501C()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v0;
}

uint64_t sub_26A7A506C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7A50EC()
{
  result = qword_2803B7C90;
  if (!qword_2803B7C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B60);
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &unk_26A884758, sub_26A7A4648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C90);
  }

  return result;
}

unint64_t sub_26A7A51A4()
{
  result = qword_2803B7D70;
  if (!qword_2803B7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA58);
    sub_26A7A525C();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D70);
  }

  return result;
}

unint64_t sub_26A7A525C()
{
  result = qword_2803B7D78;
  if (!qword_2803B7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA48);
    sub_26A7A52E8();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D78);
  }

  return result;
}

unint64_t sub_26A7A52E8()
{
  result = qword_2803B7D80;
  if (!qword_2803B7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA50);
    sub_26A7A3CA0();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D80);
  }

  return result;
}

uint64_t sub_26A7A53D0()
{
  OUTLINED_FUNCTION_41_12();
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_9_43();

  return sub_26A79BFA8(v1);
}

void *sub_26A7A5464()
{
  OUTLINED_FUNCTION_41_12();
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_9_43();

  return sub_26A79C328(v1);
}

uint64_t objectdestroy_130Tm()
{
  sub_26A84BBB8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_26A7A5560()
{
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  sub_26A79C08C();
}

uint64_t sub_26A7A55D8()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

size_t OUTLINED_FUNCTION_6_65(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return swift_arrayInitWithCopy();
}

__n128 OUTLINED_FUNCTION_16_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __n128 a26, __int128 a27, uint64_t a28)
{
  result = a26;
  *(a1 + 16) = a26;
  *(a1 + 32) = a27;
  *(a1 + 48) = a28;
  return result;
}

__n128 OUTLINED_FUNCTION_29_19(uint64_t a1)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 224);
  return result;
}

void OUTLINED_FUNCTION_33_15(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_26A7A3B18(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  v2 = v1 + *(v0 + 20);
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_54_5@<Q0>(__n128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *v1 = *a1;
  v1[1] = v3;
  v4 = a1[2];
  v5 = a1[3];
  v1[2] = v4;
  v1[3] = v5;
  v1[4] = v2;
  v1[5] = v3;
  v1[6] = v4;
  v1[7] = v5;
  return v1[3];
}

size_t OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A7A3644(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_4()
{
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_26A505D1C();
}

uint64_t OUTLINED_FUNCTION_71_3@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_1@<X0>(uint64_t a1@<X8>)
{
  v2[24] = v3;
  v2[27] = v1;
  v2[28] = a1;

  return sub_26A6A8134((v2 + 24));
}

uint64_t OUTLINED_FUNCTION_80_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a19 = v24;
  a22 = v23;
  a23 = a1;

  return sub_26A6A8134(&a19);
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return type metadata accessor for FactItemConstants();
}

uint64_t OUTLINED_FUNCTION_84_2()
{

  return sub_26A7A501C();
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_26A7A501C();
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

void *OUTLINED_FUNCTION_87_1(void *a1)
{

  return memcpy(a1, (v1 + 400), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_26A505D1C();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_26A505D1C();
}

uint64_t sub_26A7A5BEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84E2D8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84E298();
  sub_26A84E2B8();
  (*(v10 + 8))(v13, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D62B70], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860);
  v14 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26A8570D0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277D62A28], v14);
  sub_26A67BF28(v18);
  sub_26A84B688();

  (*(v4 + 8))(v7, v2);
  v19 = sub_26A84B718();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v19);
}

uint64_t sub_26A7A5E74(const void *a1, uint64_t a2)
{
  v4 = sub_26A851618();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v19 = sub_26A851648();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  if (qword_2803A8F90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_26A7C7B0C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A4F8A68;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  OUTLINED_FUNCTION_111_0();

  sub_26A851638();
  sub_26A7C7B4C(&qword_2803B60D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A7C7B94(&qword_2803B60E0, &unk_2803B1C60);
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v16, v10, a1);
  _Block_release(a1);
  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v19);
}

uint64_t sub_26A7A613C()
{
  v7 = sub_26A851F18();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26A851EC8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26A851648();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26A4EC5B0(0, &qword_28157D830);
  sub_26A851638();
  v8 = MEMORY[0x277D84F90];
  sub_26A7C7B4C(&qword_2803B7F78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F80);
  sub_26A7C7B94(&qword_2803B7F88, &qword_2803B7F80);
  sub_26A852118();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_26A851F48();
  qword_2803B7F50 = result;
  return result;
}

void sub_26A7A8B10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_338();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v26))
  {
    goto LABEL_14;
  }

  if (v27)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v53 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v53, qword_281588A30);
    v54 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v54))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v55 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      OUTLINED_FUNCTION_257();
      v62 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v62, v63, v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_60_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_51_7();
      v69 = OUTLINED_FUNCTION_238();
      v70 = MEMORY[0x26D663B00](v69);
      OUTLINED_FUNCTION_107_0(v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v31 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
    v32 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v32))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      *(v28 + 22) = 2082;
      v40 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_60_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_51_7();
      v47 = OUTLINED_FUNCTION_238();
      v48 = MEMORY[0x26D663B00](v47);
      OUTLINED_FUNCTION_107_0(v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_295(v75, v76, v77, v78);
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_148_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7AA0C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_45_9();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v26))
  {
    if (v27)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v55 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v55, qword_281588A30);
      v56 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_260(v56))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_132_0();
        *v30 = 136446978;
        v57 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_48_6();
        OUTLINED_FUNCTION_256();
        v64 = OUTLINED_FUNCTION_88_1();
        OUTLINED_FUNCTION_229_0(v64, v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_98_0();

        *(v30 + 24) = v28;
        *(v30 + 32) = 2080;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();
        OUTLINED_FUNCTION_121_0();
        OUTLINED_FUNCTION_51_7();
        v71 = OUTLINED_FUNCTION_278();
        MEMORY[0x26D663B00](v71);
        v48 = a11;
        v72 = [v48 description];
        sub_26A8517B8();
        OUTLINED_FUNCTION_285();

        OUTLINED_FUNCTION_159_0();

        OUTLINED_FUNCTION_107_0(v73, v74, v75, v76, v77);
        OUTLINED_FUNCTION_227_0();
        *(v30 + 34) = v29;
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v31 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
      v32 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_260(v32))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_132_0();
        *v30 = 136446978;
        v33 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_48_6();
        *(v30 + 22) = 2082;
        v40 = OUTLINED_FUNCTION_88_1();
        OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
        OUTLINED_FUNCTION_98_0();

        *(v30 + 24) = v28;
        *(v30 + 32) = 2082;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();
        OUTLINED_FUNCTION_121_0();
        OUTLINED_FUNCTION_51_7();
        v47 = OUTLINED_FUNCTION_278();
        MEMORY[0x26D663B00](v47);
        v48 = a11;
        v49 = [v48 description];
        sub_26A8517B8();
        OUTLINED_FUNCTION_285();

        OUTLINED_FUNCTION_159_0();

        OUTLINED_FUNCTION_107_0(v50, v51, v52, v53, v54);
        OUTLINED_FUNCTION_227_0();
        *(v30 + 34) = v29;
LABEL_14:
        OUTLINED_FUNCTION_217_0();
        OUTLINED_FUNCTION_304(v78, v79, v80, v81);
        OUTLINED_FUNCTION_64_3();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        OUTLINED_FUNCTION_109_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7AA92C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_45_9();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v26))
  {
    if (v27)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v55 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v55, qword_281588A30);
      v56 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_260(v56))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_132_0();
        *v30 = 136446978;
        v57 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_48_6();
        OUTLINED_FUNCTION_256();
        v64 = OUTLINED_FUNCTION_88_1();
        OUTLINED_FUNCTION_229_0(v64, v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_98_0();

        *(v30 + 24) = v28;
        *(v30 + 32) = 2080;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();
        OUTLINED_FUNCTION_121_0();
        OUTLINED_FUNCTION_51_7();
        v71 = OUTLINED_FUNCTION_336();
        MEMORY[0x26D663B00](v71);
        v48 = a11;
        v72 = [v48 description];
        sub_26A8517B8();
        OUTLINED_FUNCTION_285();

        OUTLINED_FUNCTION_159_0();

        OUTLINED_FUNCTION_107_0(v73, v74, v75, v76, v77);
        OUTLINED_FUNCTION_227_0();
        *(v30 + 34) = v29;
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v31 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
      v32 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_260(v32))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_132_0();
        *v30 = 136446978;
        v33 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_48_6();
        *(v30 + 22) = 2082;
        v40 = OUTLINED_FUNCTION_88_1();
        OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
        OUTLINED_FUNCTION_98_0();

        *(v30 + 24) = v28;
        *(v30 + 32) = 2082;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();
        OUTLINED_FUNCTION_121_0();
        OUTLINED_FUNCTION_51_7();
        v47 = OUTLINED_FUNCTION_336();
        MEMORY[0x26D663B00](v47);
        v48 = a11;
        v49 = [v48 description];
        sub_26A8517B8();
        OUTLINED_FUNCTION_285();

        OUTLINED_FUNCTION_159_0();

        OUTLINED_FUNCTION_107_0(v50, v51, v52, v53, v54);
        OUTLINED_FUNCTION_227_0();
        *(v30 + 34) = v29;
LABEL_14:
        OUTLINED_FUNCTION_217_0();
        OUTLINED_FUNCTION_304(v78, v79, v80, v81);
        OUTLINED_FUNCTION_64_3();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        OUTLINED_FUNCTION_109_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7ACC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_293();
  v18 = v17;
  v19 = a14;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v18))
  {
    OUTLINED_FUNCTION_334();
    if (v14)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v30 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v30, qword_281588A30);
      v21 = sub_26A84EAB8();
      if (os_log_type_enabled(v21, v18))
      {
        OUTLINED_FUNCTION_221_0();
        v39 = a14;
        v31 = OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_343(v31);
        v32 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_365(v32, v33);
        OUTLINED_FUNCTION_197_0();
        *(a14 + 4) = v21;
        OUTLINED_FUNCTION_165_0();
        *(a14 + 14) = a6;
        OUTLINED_FUNCTION_256();
        v34 = sub_26A852268();
        OUTLINED_FUNCTION_365(v34, v35);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_333();
        v40 = 0;
        v41 = v36;
        sub_26A852248();

        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_348();
        v37 = OUTLINED_FUNCTION_136_0();
        MEMORY[0x26D663B00](v37, 0xE600000000000000);
        MEMORY[0x26D663B00](a12, a13);
        OUTLINED_FUNCTION_270();
        swift_getErrorValue();
        v38 = sub_26A852658();
        MEMORY[0x26D663B00](v38);

        sub_26A7C74C8(0, v41, v42);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 34) = &v40;
        v29 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v20 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v20, qword_281588A30);
      v21 = sub_26A84EAB8();
      if (os_log_type_enabled(v21, v18))
      {
        OUTLINED_FUNCTION_221_0();
        v39 = a14;
        v22 = OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_343(v22);
        v23 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_365(v23, v24);
        OUTLINED_FUNCTION_197_0();
        *(a14 + 4) = v21;
        OUTLINED_FUNCTION_165_0();
        *(a14 + 14) = a6;
        *(a14 + 22) = 2082;
        v25 = sub_26A852268();
        OUTLINED_FUNCTION_365(v25, v26);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 24) = v21;
        *(a14 + 32) = 2082;
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_26A852248();

        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_348();
        v27 = OUTLINED_FUNCTION_136_0();
        MEMORY[0x26D663B00](v27, 0xE600000000000000);
        MEMORY[0x26D663B00](a12, a13);
        OUTLINED_FUNCTION_270();
        swift_getErrorValue();
        v28 = sub_26A852658();
        MEMORY[0x26D663B00](v28);

        sub_26A7C74C8(0, 0xE000000000000000, v42);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 34) = &v40;
        v29 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_304(&dword_26A48D000, a5, v18, v29);
        OUTLINED_FUNCTION_64_3();
        OUTLINED_FUNCTION_103_0();
        v19 = v39;
        OUTLINED_FUNCTION_219_0();

        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_16:
}

void sub_26A7ACFE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSObject *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_38_12();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v27))
  {
    OUTLINED_FUNCTION_167_0();
    if (v26)
    {
      if (!v31)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v55 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v55, qword_281588A30);
      v56 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_316(v56))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_113_0();
        OUTLINED_FUNCTION_132_0();
        *v26 = 136446978;
        v57 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_232();
        v64 = OUTLINED_FUNCTION_19_28();
        OUTLINED_FUNCTION_229_0(v64, v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_227_0();
        OUTLINED_FUNCTION_29_20();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        OUTLINED_FUNCTION_332();
        sub_26A851AE8();
        OUTLINED_FUNCTION_279();

        OUTLINED_FUNCTION_107_0(v71, v72, v73, v74, v75);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 34) = v30;
        v53 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_16;
      }
    }

    else
    {
      if (!v31)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v32 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v32, qword_281588A30);
      v33 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_316(v33))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_113_0();
        OUTLINED_FUNCTION_132_0();
        *v26 = 136446978;
        v34 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v34, v35, v36, v37, v38, v39, v40);
        OUTLINED_FUNCTION_232();
        v41 = OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_229_0(v41, v42, v43, v44, v45, v46, v47);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 24) = v30;
        *(v26 + 32) = v28;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        OUTLINED_FUNCTION_332();
        sub_26A851AE8();
        OUTLINED_FUNCTION_279();

        OUTLINED_FUNCTION_107_0(v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 34) = v30;
        v53 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_16:
        OUTLINED_FUNCTION_254(&dword_26A48D000, a10, v27, v53);
        OUTLINED_FUNCTION_129_0();
        OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_103_0();

        OUTLINED_FUNCTION_109_0();
        return;
      }
    }

    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_109_0();
  }
}

void sub_26A7AEFE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_338();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v26))
  {
    goto LABEL_14;
  }

  if (v27)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v53 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v53, qword_281588A30);
    v54 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v54))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v55 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      OUTLINED_FUNCTION_257();
      v62 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v62, v63, v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_60_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_51_7();
      v69 = OUTLINED_FUNCTION_277();
      v70 = MEMORY[0x26D663B00](v69);
      OUTLINED_FUNCTION_107_0(v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v31 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
    v32 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v32))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      *(v28 + 22) = 2082;
      v40 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_60_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_51_7();
      v47 = OUTLINED_FUNCTION_277();
      v48 = MEMORY[0x26D663B00](v47);
      OUTLINED_FUNCTION_107_0(v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_295(v75, v76, v77, v78);
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_148_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7B21A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSObject *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_38_12();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v27))
  {
    OUTLINED_FUNCTION_167_0();
    if (v26)
    {
      if (!v31)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v56 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v56, qword_281588A30);
      v57 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_316(v57))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_113_0();
        OUTLINED_FUNCTION_132_0();
        *v26 = 136446978;
        v58 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v58, v59, v60, v61, v62, v63, v64);
        OUTLINED_FUNCTION_232();
        v65 = OUTLINED_FUNCTION_19_28();
        OUTLINED_FUNCTION_229_0(v65, v66, v67, v68, v69, v70, v71);
        OUTLINED_FUNCTION_227_0();
        OUTLINED_FUNCTION_29_20();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        v72 = sub_26A4EC5B0(0, qword_2815804E0);
        MEMORY[0x26D663D60](a11, v72);
        OUTLINED_FUNCTION_279();

        OUTLINED_FUNCTION_248();
        OUTLINED_FUNCTION_107_0(v73, v74, v75, v76, v77);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 34) = v30;
        v54 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_16;
      }
    }

    else
    {
      if (!v31)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v32 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v32, qword_281588A30);
      v33 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_316(v33))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_113_0();
        OUTLINED_FUNCTION_132_0();
        *v26 = 136446978;
        v34 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_229_0(v34, v35, v36, v37, v38, v39, v40);
        OUTLINED_FUNCTION_232();
        v41 = OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_229_0(v41, v42, v43, v44, v45, v46, v47);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 24) = v30;
        *(v26 + 32) = v28;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        v48 = sub_26A4EC5B0(0, qword_2815804E0);
        MEMORY[0x26D663D60](a11, v48);
        OUTLINED_FUNCTION_279();

        OUTLINED_FUNCTION_248();
        OUTLINED_FUNCTION_107_0(v49, v50, v51, v52, v53);
        OUTLINED_FUNCTION_227_0();
        *(v26 + 34) = v30;
        v54 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_16:
        OUTLINED_FUNCTION_254(&dword_26A48D000, a10, v27, v54);
        OUTLINED_FUNCTION_129_0();
        OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_103_0();

        OUTLINED_FUNCTION_109_0();
        return;
      }
    }

    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_109_0();
  }
}

void sub_26A7B3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v29))
  {
    if (v28)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v55 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v55, qword_281588A30);
      v56 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v56))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_126_0();
        *v30 = 136446978;
        v57 = OUTLINED_FUNCTION_127_0();
        v35 = v28;
        OUTLINED_FUNCTION_229_0(v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_73_1();
        OUTLINED_FUNCTION_307();
        v64 = sub_26A852268();
        OUTLINED_FUNCTION_229_0(v64, v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_276();
        *(v30 + 24) = v31;
        *(v30 + 32) = 2080;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        MEMORY[0x26D663B00](*(a28 + 16), *(a28 + 24));
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_107_0(v71, v72, v73, v74, v75);
        OUTLINED_FUNCTION_276();
        *(v30 + 34) = v31;
        v54 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v32 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v32, qword_281588A30);
      v33 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v33))
      {
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_126_0();
        *v30 = 136446978;
        v34 = OUTLINED_FUNCTION_127_0();
        v35 = v28;
        OUTLINED_FUNCTION_229_0(v34, v36, v37, v38, v39, v40, v41);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_73_1();
        *(v30 + 22) = 2082;
        v42 = sub_26A852268();
        OUTLINED_FUNCTION_229_0(v42, v43, v44, v45, v46, v47, v48);
        OUTLINED_FUNCTION_276();
        *(v30 + 24) = v31;
        *(v30 + 32) = 2082;
        OUTLINED_FUNCTION_42_11();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_142_0();
        MEMORY[0x26D663B00](*(a28 + 16), *(a28 + 24));
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_107_0(v49, v50, v51, v52, v53);
        OUTLINED_FUNCTION_276();
        *(v30 + 34) = v31;
        v54 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        _os_log_impl(&dword_26A48D000, v35, v29, v54, v30, 0x2Au);
        OUTLINED_FUNCTION_65_5();
        OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_177_0();

        sub_26A6A7DE0(a28);
        OUTLINED_FUNCTION_109_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_109_0();

  sub_26A6A7DE0(v76);
}

uint64_t sub_26A7B65EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12)
{
  OUTLINED_FUNCTION_293();
  v16 = v15;
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  v21 = a11;
  if (os_log_type_enabled(qword_2815801F0, v16))
  {
    v21 = a9;
    if (v12)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v34 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v34, qword_281588A30);
      v35 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_263(v35))
      {
        OUTLINED_FUNCTION_221_0();
        v50 = OUTLINED_FUNCTION_153_0();
        v36 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v36, v37);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 4) = v12;
        OUTLINED_FUNCTION_165_0();
        *(a12 + 14) = a6;
        OUTLINED_FUNCTION_256();
        v38 = sub_26A852268();
        OUTLINED_FUNCTION_261(v38, v39);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_333();
        v48 = 0;
        v49 = v40;
        sub_26A852248();
        OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D663B00](0xD00000000000004ALL);
        v41 = OUTLINED_FUNCTION_346();
        VRXIdiom.idiom.getter(v41, v20);
        OUTLINED_FUNCTION_179_0();
        sub_26A7C7B4C(v42, v43);
        v44 = sub_26A852568();
        MEMORY[0x26D663B00](v44);

        v45 = OUTLINED_FUNCTION_1_30();
        v46(v45);
        OUTLINED_FUNCTION_299(0);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 34) = &v48;
        OUTLINED_FUNCTION_304(&dword_26A48D000, v12, v16, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_356();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v22 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v22, qword_281588A30);
      v23 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_263(v23))
      {
        OUTLINED_FUNCTION_221_0();
        v50 = OUTLINED_FUNCTION_153_0();
        v24 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v24, v25);
        OUTLINED_FUNCTION_197_0();
        *(a12 + 4) = v12;
        OUTLINED_FUNCTION_165_0();
        *(a12 + 14) = a6;
        *(a12 + 22) = 2082;
        v26 = sub_26A852268();
        OUTLINED_FUNCTION_261(v26, v27);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 24) = v12;
        *(a12 + 32) = 2082;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_26A852248();
        OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D663B00](0xD00000000000004ALL);
        v28 = OUTLINED_FUNCTION_346();
        VRXIdiom.idiom.getter(v28, v20);
        OUTLINED_FUNCTION_179_0();
        sub_26A7C7B4C(v29, v30);
        v31 = sub_26A852568();
        MEMORY[0x26D663B00](v31);

        v32 = OUTLINED_FUNCTION_1_30();
        v33(v32);
        OUTLINED_FUNCTION_299(0);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 34) = &v48;
        OUTLINED_FUNCTION_304(&dword_26A48D000, a5, v16, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_356();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        goto LABEL_14;
      }
    }

    v21 = a11;
  }

LABEL_14:
  sub_26A4D82E8(a10, v21 & 1);
}

void sub_26A7B6E94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_338();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v26))
  {
    goto LABEL_14;
  }

  if (v27)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v52 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v52, qword_281588A30);
    v53 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v53))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v54 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v54, v55, v56, v57, v58, v59, v60);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      OUTLINED_FUNCTION_257();
      v61 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v61, v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();

      OUTLINED_FUNCTION_78_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_107_0(v68, v69, v70, v71, v72);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v31 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
    v32 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v32))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      *(v28 + 22) = 2082;
      v40 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();

      OUTLINED_FUNCTION_78_3();
      VRXIdiom.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_107_0(v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_295(v73, v74, v75, v76);
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_148_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7B9CDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_36_10();
  v32 = v31;
  OUTLINED_FUNCTION_99_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v26))
  {
    goto LABEL_14;
  }

  if (v27)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v55 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v55, qword_281588A30);
    v56 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v56))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_126_0();
      OUTLINED_FUNCTION_345(4.8755e-34);
      v57 = sub_26A852268();
      OUTLINED_FUNCTION_229_0(v57, v58, v59, v60, v61, v62, v63);
      OUTLINED_FUNCTION_111_0();

      *(v30 + 4) = v32;
      OUTLINED_FUNCTION_191_0();
      *(v30 + 14) = v29;
      OUTLINED_FUNCTION_308();
      v64 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v64, v65, v66, v67, v68, v69, v70);
      OUTLINED_FUNCTION_98_0();

      *(v30 + 24) = v28;
      *(v30 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      v71 = OUTLINED_FUNCTION_87_2();
      MEMORY[0x26D663B00](v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7FA8);
      sub_26A852778();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      OUTLINED_FUNCTION_324();
      OUTLINED_FUNCTION_107_0(v72, v73, v74, v75, v76);
      OUTLINED_FUNCTION_98_0();

      *(v30 + 34) = v28;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v33 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v33, qword_281588A30);
    v34 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v34))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_126_0();
      OUTLINED_FUNCTION_345(4.8755e-34);
      v35 = sub_26A852268();
      OUTLINED_FUNCTION_229_0(v35, v36, v37, v38, v39, v40, v41);
      OUTLINED_FUNCTION_111_0();

      *(v30 + 4) = v32;
      OUTLINED_FUNCTION_191_0();
      *(v30 + 14) = v29;
      *(v30 + 22) = 2082;
      v42 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v42, v43, v44, v45, v46, v47, v48);
      OUTLINED_FUNCTION_98_0();

      *(v30 + 24) = v28;
      *(v30 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      v49 = OUTLINED_FUNCTION_87_2();
      MEMORY[0x26D663B00](v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7FA8);
      sub_26A852778();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      OUTLINED_FUNCTION_324();
      OUTLINED_FUNCTION_107_0(v50, v51, v52, v53, v54);
      OUTLINED_FUNCTION_98_0();

      *(v30 + 34) = v28;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_297(v77, v78, v79, v80);
      OUTLINED_FUNCTION_61_5();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_180_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7BC1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v11))
  {
    if (v10)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v31 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
      v32 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v32))
      {
        OUTLINED_FUNCTION_221_0();
        log = v10;
        v59 = OUTLINED_FUNCTION_89_2();
        v60 = v59;
        *v10 = 136446978;
        v33 = OUTLINED_FUNCTION_131_0();
        v35 = sub_26A7C74C8(v33, v34, &v60);

        *(v10 + 4) = v35;
        OUTLINED_FUNCTION_92_1();
        *(v10 + 14) = v13;
        *(v10 + 22) = 2082;
        v36 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_370(v36, v37, v38, v39, v40);
        OUTLINED_FUNCTION_368();
        *(v10 + 24) = v12;
        *(v10 + 32) = 2080;
        v41 = a10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088);
        v42 = sub_26A8517F8();
        OUTLINED_FUNCTION_370(v42, v43, v44, v45, v46);
        OUTLINED_FUNCTION_368();
        *(v10 + 34) = v12;
        v30 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v14 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v14, qword_281588A30);
      v15 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v15))
      {
        OUTLINED_FUNCTION_221_0();
        log = v10;
        v59 = OUTLINED_FUNCTION_89_2();
        v60 = v59;
        *v10 = 136446978;
        v16 = OUTLINED_FUNCTION_131_0();
        v18 = sub_26A7C74C8(v16, v17, &v60);

        *(v10 + 4) = v18;
        OUTLINED_FUNCTION_92_1();
        *(v10 + 14) = v13;
        *(v10 + 22) = 2082;
        v19 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_370(v19, v20, v21, v22, v23);
        OUTLINED_FUNCTION_368();
        *(v10 + 24) = v12;
        *(v10 + 32) = 2082;
        v24 = a10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088);
        v25 = sub_26A8517F8();
        OUTLINED_FUNCTION_370(v25, v26, v27, v28, v29);
        OUTLINED_FUNCTION_368();
        *(v10 + 34) = v12;
        v30 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        v47 = v11;
        v48 = log;
        _os_log_impl(&dword_26A48D000, log, v47, v30, v10, 0x2Au);
        OUTLINED_FUNCTION_325(v49, v50, MEMORY[0x277D84F70] + 8, v51, v52, v53, v54, v55, log, v59);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_177_0();
        OUTLINED_FUNCTION_95_0();

        OUTLINED_FUNCTION_306();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_306();
}

void sub_26A7BEA40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_125_0();
  v30 = v29;
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_338();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v26))
  {
    goto LABEL_14;
  }

  if (v27)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v52 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v52, qword_281588A30);
    v53 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v53))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v54 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v54, v55, v56, v57, v58, v59, v60);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      OUTLINED_FUNCTION_257();
      v61 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v61, v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();

      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_142_0();
      VRXSiriEvent.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_107_0(v68, v69, v70, v71, v72);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v31 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v31, qword_281588A30);
    v32 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v32))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_117_0(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_56_4();
      *(v28 + 22) = 2082;
      v40 = OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_229_0(v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 24) = v30;
      *(v28 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();

      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_142_0();
      VRXSiriEvent.description.getter(a10);
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_107_0(v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_227_0();
      *(v28 + 34) = v30;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_295(v73, v74, v75, v76);
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_148_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A7BFCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_169_0();
  a33 = v38;
  a34 = v39;
  OUTLINED_FUNCTION_149_0();
  v41 = v40;
  OUTLINED_FUNCTION_152_0();
  v42 = a36;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v37))
  {
    if (v36)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v57 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v57, qword_281588A30);
      v58 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v58))
      {
        OUTLINED_FUNCTION_221_0();
        v59 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v59);
        v60 = OUTLINED_FUNCTION_357(4.8755e-34);
        OUTLINED_FUNCTION_261(v60, v61);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_308();
        v62 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_261(v62, v63);
        OUTLINED_FUNCTION_5_42();
        *(v42 + 24) = v36;
        OUTLINED_FUNCTION_161_0();
        a20 = 0;
        a21 = v64;
        sub_26A852248();

        OUTLINED_FUNCTION_75_2();
        a20 = v66;
        a21 = v65;
        v67 = qword_2803AADF8;
        v53 = off_2803AAE00;

        MEMORY[0x26D663B00](v67, v53);

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v68 = OUTLINED_FUNCTION_290();
        MEMORY[0x26D663B00](v68);

        OUTLINED_FUNCTION_299(a20);
        OUTLINED_FUNCTION_5_42();
        *(v42 + 34) = &a20;
        OUTLINED_FUNCTION_297(&dword_26A48D000, v36, v37, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v43 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v43, qword_281588A30);
      v44 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v44))
      {
        OUTLINED_FUNCTION_221_0();
        v45 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v45);
        v46 = OUTLINED_FUNCTION_357(4.8755e-34);
        OUTLINED_FUNCTION_261(v46, v47);
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_80_3();
        *(v42 + 22) = 2082;
        v48 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_261(v48, v49);
        OUTLINED_FUNCTION_5_42();
        *(v42 + 24) = v36;
        *(v42 + 32) = 2082;
        a20 = 0;
        a21 = 0xE000000000000000;
        sub_26A852248();

        OUTLINED_FUNCTION_75_2();
        a20 = v51;
        a21 = v50;
        v52 = qword_2803AADF8;
        v53 = off_2803AAE00;

        MEMORY[0x26D663B00](v52, v53);

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v54 = OUTLINED_FUNCTION_291();
        MEMORY[0x26D663B00](v54);

        OUTLINED_FUNCTION_299(a20);
        OUTLINED_FUNCTION_5_42();
        *(v42 + 34) = &a20;
        OUTLINED_FUNCTION_184_0(&dword_26A48D000, v55, v56, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

LABEL_13:
        OUTLINED_FUNCTION_138_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_138_0();
}

uint64_t sub_26A7C076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v13))
  {

    return sub_26A6A7DE0(a12);
  }

  OUTLINED_FUNCTION_334();
  if (v12)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v28 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v28, qword_281588A30);
    v29 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_287(v29))
    {
      OUTLINED_FUNCTION_221_0();
      v30 = OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_343(v30);
      OUTLINED_FUNCTION_345(4.8755e-34);
      v31 = sub_26A852268();
      v32 = v12;
      OUTLINED_FUNCTION_379(v31, v33);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 4) = a5;
      OUTLINED_FUNCTION_191_0();
      *(a12 + 14) = a6;
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_13_9();
      v34 = sub_26A852268();
      OUTLINED_FUNCTION_379(v34, v35);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 24) = a5;
      OUTLINED_FUNCTION_161_0();
      __dst[0] = 0;
      __dst[1] = v36;
      sub_26A852248();
      v42 = 0;
      v43 = __dst[1];
      OUTLINED_FUNCTION_91_2();
      v37 = OUTLINED_FUNCTION_326();
      MEMORY[0x26D663B00](v37);
      sub_26A54E058(v40);
      OUTLINED_FUNCTION_298();
      v38 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
      OUTLINED_FUNCTION_354();
      VRXIdiom.description.getter(*&a11[v38]);
      OUTLINED_FUNCTION_371();

      OUTLINED_FUNCTION_284();
      memcpy(__dst, a12, sizeof(__dst));
      PluginView.description.getter();
      OUTLINED_FUNCTION_371();

      sub_26A7C74C8(v42, v43, v44);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 34) = a5;
      OUTLINED_FUNCTION_297(&dword_26A48D000, v32, v13, "%{public}s:%{public}lu [%{public}s] %s");
      OUTLINED_FUNCTION_129_0();
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_219_0();

      return sub_26A6A7DE0(a12);
    }

LABEL_14:

    return sub_26A6A7DE0(a12);
  }

  if (qword_2815801E0 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v16 = sub_26A84EAC8();
  OUTLINED_FUNCTION_20_29(v16, qword_281588A30);
  v17 = sub_26A84EAB8();
  if (!OUTLINED_FUNCTION_287(v17))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_221_0();
  v18 = OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_343(v18);
  OUTLINED_FUNCTION_345(4.8755e-34);
  v19 = sub_26A852268();
  v20 = v12;
  OUTLINED_FUNCTION_379(v19, v21);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 4) = a5;
  OUTLINED_FUNCTION_191_0();
  *(a12 + 14) = a6;
  *(a12 + 22) = 2082;
  OUTLINED_FUNCTION_13_9();
  v22 = sub_26A852268();
  OUTLINED_FUNCTION_379(v22, v23);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 24) = a5;
  *(a12 + 32) = 2082;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_26A852248();
  v42 = 0;
  v43 = 0xE000000000000000;
  OUTLINED_FUNCTION_91_2();
  v24 = OUTLINED_FUNCTION_326();
  MEMORY[0x26D663B00](v24);
  sub_26A54E058(v40);
  OUTLINED_FUNCTION_298();
  v25 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_354();
  VRXIdiom.description.getter(*&a11[v25]);
  OUTLINED_FUNCTION_371();

  OUTLINED_FUNCTION_284();
  memcpy(__dst, a12, sizeof(__dst));
  PluginView.description.getter();
  OUTLINED_FUNCTION_371();

  sub_26A7C74C8(v42, v43, v44);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 34) = a5;
  OUTLINED_FUNCTION_184_0(&dword_26A48D000, v26, v27, "%{public}s:%{public}lu [%{public}s] %{public}s");
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_219_0();

  return sub_26A6A7DE0(a12);
}

void sub_26A7C0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_99_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v11))
  {
    goto LABEL_14;
  }

  if (v12)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v28 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v28, qword_281588A30);
    v29 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_260(v29))
    {
      OUTLINED_FUNCTION_221_0();
      v49 = OUTLINED_FUNCTION_89_2();
      *v12 = 136446978;
      v30 = OUTLINED_FUNCTION_178_0();
      v35 = OUTLINED_FUNCTION_377(v30, v31, v32, v33, v34);

      *(v12 + 4) = v35;
      OUTLINED_FUNCTION_92_1();
      *(v12 + 14) = v13;
      *(v12 + 22) = 2082;
      v36 = OUTLINED_FUNCTION_128_0();
      v41 = OUTLINED_FUNCTION_377(v36, v37, v38, v39, v40);

      *(v12 + 24) = v41;
      *(v12 + 32) = 2080;
      *(v12 + 34) = sub_26A7C74C8(a10, a11, &v49);
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v14 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v14, qword_281588A30);
    v15 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_260(v15))
    {
      OUTLINED_FUNCTION_221_0();
      v49 = OUTLINED_FUNCTION_89_2();
      *v12 = 136446978;
      v16 = OUTLINED_FUNCTION_178_0();
      v21 = OUTLINED_FUNCTION_377(v16, v17, v18, v19, v20);

      *(v12 + 4) = v21;
      OUTLINED_FUNCTION_92_1();
      *(v12 + 14) = v13;
      *(v12 + 22) = 2082;
      v22 = OUTLINED_FUNCTION_128_0();
      v27 = OUTLINED_FUNCTION_377(v22, v23, v24, v25, v26);

      *(v12 + 24) = v27;
      *(v12 + 32) = 2082;
      *(v12 + 34) = sub_26A7C74C8(a10, a11, &v49);
LABEL_13:
      OUTLINED_FUNCTION_217_0();
      _os_log_impl(v42, v43, v44, v45, v12, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_95_0();

LABEL_14:
      OUTLINED_FUNCTION_306();
      return;
    }
  }

  OUTLINED_FUNCTION_306();
}

void sub_26A7C30BC()
{
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_99_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v0))
  {
    goto LABEL_14;
  }

  if (v1)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v26 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v26, qword_281588A30);
    v27 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v27))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_126_0();
      *v3 = 136446978;
      v28 = OUTLINED_FUNCTION_127_0();
      OUTLINED_FUNCTION_229_0(v28, v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_256();
      v35 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v35, v36, v37, v38, v39, v40, v41);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 24) = v2;
      *(v3 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_112_0();
      MEMORY[0x26D663B00]();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_352();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      v42 = OUTLINED_FUNCTION_164_0();
      v43 = MEMORY[0x26D663B00](v42);
      OUTLINED_FUNCTION_107_0(v43, v44, v45, v46, v47);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 34) = v2;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v4 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v4, qword_281588A30);
    v5 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v5))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_126_0();
      *v3 = 136446978;
      v6 = OUTLINED_FUNCTION_127_0();
      OUTLINED_FUNCTION_229_0(v6, v7, v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_48_6();
      *(v3 + 22) = 2082;
      v13 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 24) = v2;
      *(v3 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_112_0();
      MEMORY[0x26D663B00]();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_352();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      v20 = OUTLINED_FUNCTION_164_0();
      v21 = MEMORY[0x26D663B00](v20);
      OUTLINED_FUNCTION_107_0(v21, v22, v23, v24, v25);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 34) = v2;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_304(v48, v49, v50, v51);
      OUTLINED_FUNCTION_61_5();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_219_0();

LABEL_14:
      OUTLINED_FUNCTION_166_0();
      return;
    }
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_26A7C4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_149_0();
  v15 = v14;
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v12))
  {
    if (v11)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v36 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v36, qword_281588A30);
      v37 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v37))
      {
        OUTLINED_FUNCTION_221_0();
        v38 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v38);
        v39 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v39, v40);
        v41 = v11;
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_308();
        OUTLINED_FUNCTION_14_29();
        v42 = sub_26A852268();
        OUTLINED_FUNCTION_261(v42, v43);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 24) = v11;
        OUTLINED_FUNCTION_161_0();
        sub_26A852248();

        OUTLINED_FUNCTION_77_1();
        v69 = v45;
        v71 = v44;
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v46 = v64;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v47, v48, v49, v50, v51, v52, v53, v54, v57, v58, v59, a10, v60, v61, v62, v63, v64, v65, v66, v67, a10, v69, v71);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v46;
        OUTLINED_FUNCTION_297(&dword_26A48D000, v41, v12, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v16 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v16, qword_281588A30);
      v17 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v17))
      {
        OUTLINED_FUNCTION_221_0();
        v18 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v18);
        v19 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v19, v20);
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_80_3();
        *(a11 + 22) = 2082;
        OUTLINED_FUNCTION_14_29();
        v21 = sub_26A852268();
        OUTLINED_FUNCTION_261(v21, v22);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_309();
        sub_26A852248();

        OUTLINED_FUNCTION_77_1();
        v68 = v24;
        v70 = v23;
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v25 = v60;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v26, v27, v28, v29, v30, v31, v32, v33, v57, v58, v59, a10, v60, v61, v62, v63, v64, v65, v66, v67, a10, v68, v70);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v25;
        OUTLINED_FUNCTION_184_0(&dword_26A48D000, v34, v35, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

LABEL_13:
        OUTLINED_FUNCTION_305();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_305();
}

void sub_26A7C4B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_149_0();
  v15 = v14;
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v12))
  {
    if (v11)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v34 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v34, qword_281588A30);
      v35 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v35))
      {
        OUTLINED_FUNCTION_221_0();
        v36 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v36);
        v37 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v37, v38);
        v39 = v11;
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_308();
        OUTLINED_FUNCTION_14_29();
        v40 = sub_26A852268();
        OUTLINED_FUNCTION_261(v40, v41);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 24) = v11;
        OUTLINED_FUNCTION_161_0();
        v68 = v42;
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_143_0();
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v43 = v61;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, v56, a10, v57, v58, v59, v60, v61, v62, v63, v64, v65, 0, v68);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v43;
        OUTLINED_FUNCTION_297(&dword_26A48D000, v39, v12, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88();
      }

      v16 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v16, qword_281588A30);
      v17 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v17))
      {
        OUTLINED_FUNCTION_221_0();
        v18 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v18);
        v19 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v19, v20);
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_80_3();
        *(a11 + 22) = 2082;
        OUTLINED_FUNCTION_14_29();
        v21 = sub_26A852268();
        OUTLINED_FUNCTION_261(v21, v22);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_309();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_143_0();
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323();
        v23 = v57;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v24, v25, v26, v27, v28, v29, v30, v31, v54, v55, v56, a10, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v23;
        OUTLINED_FUNCTION_184_0(&dword_26A48D000, v32, v33, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_61_5();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

LABEL_13:
        OUTLINED_FUNCTION_305();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_305();
}

void sub_26A7C5640()
{
  OUTLINED_FUNCTION_1_99();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v0))
  {
    goto LABEL_14;
  }

  if (v1)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v32 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v32, qword_281588A30);
    v33 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v33))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_126_0();
      v34 = OUTLINED_FUNCTION_58_6(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_111_0();

      v41 = OUTLINED_FUNCTION_10_51();
      OUTLINED_FUNCTION_229_0(v41, v42, v43, v44, v45, v46, v47);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_8_65();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_51_7();
      MEMORY[0x26D663B00](0xD00000000000005BLL);
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_107_0(v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 34) = v2;
      v31 = "%{public}s:%{public}lu [%{public}s] %s";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v4 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v4, qword_281588A30);
    v5 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v5))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_126_0();
      v6 = OUTLINED_FUNCTION_58_6(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v6, v7, v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_111_0();

      v13 = OUTLINED_FUNCTION_11_52();
      OUTLINED_FUNCTION_229_0(v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_14_44();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_51_7();
      MEMORY[0x26D663B00](0xD00000000000005BLL);
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_107_0(v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_98_0();

      *(v3 + 34) = v2;
      v31 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
      OUTLINED_FUNCTION_70_1(&dword_26A48D000, v25, v26, v31, v27, v28, v29, v30, v55, v56, v57);
      OUTLINED_FUNCTION_61_5();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_94_1();

LABEL_14:
      OUTLINED_FUNCTION_166_0();
      return;
    }
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_26A7C7120(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t), os_log_t oslog, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_125_0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v34))
  {
    goto LABEL_14;
  }

  if (v30)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v59 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v59, qword_281588A30);

    osloga = sub_26A84EAB8();

    if (os_log_type_enabled(osloga, v34))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_126_0();
      *v32 = 136446978;
      v60 = OUTLINED_FUNCTION_178_0();
      OUTLINED_FUNCTION_229_0(v60, v61, v62, v63, v64, v65, v66);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_327();
      *(v32 + 22) = 2082;
      v67 = sub_26A852268();
      OUTLINED_FUNCTION_229_0(v67, v68, v69, v70, v71, v72, v73);
      OUTLINED_FUNCTION_98_0();

      *(v32 + 24) = v28;
      *(v32 + 32) = 2080;
      v75 = a11(v74);
      OUTLINED_FUNCTION_229_0(v75, v76, v77, v78, v79, v80, v81);
      OUTLINED_FUNCTION_98_0();

      *(v32 + 34) = v28;
      v58 = "%{public}s:%{public}lu [%{public}s] %s";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88();
    }

    v35 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v35, qword_281588A30);

    osloga = sub_26A84EAB8();

    if (os_log_type_enabled(osloga, v34))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_126_0();
      *v32 = 136446978;
      v36 = OUTLINED_FUNCTION_178_0();
      OUTLINED_FUNCTION_229_0(v36, v37, v38, v39, v40, v41, v42);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_327();
      *(v32 + 22) = 2082;
      v43 = sub_26A852268();
      OUTLINED_FUNCTION_229_0(v43, v44, v45, v46, v47, v48, v49);
      OUTLINED_FUNCTION_98_0();

      *(v32 + 24) = v28;
      *(v32 + 32) = 2082;
      v51 = a11(v50);
      OUTLINED_FUNCTION_229_0(v51, v52, v53, v54, v55, v56, v57);
      OUTLINED_FUNCTION_98_0();

      *(v32 + 34) = v28;
      v58 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
      _os_log_impl(&dword_26A48D000, osloga, v34, v58, v32, 0x2Au);
      OUTLINED_FUNCTION_61_5();
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_151_0();

LABEL_14:
      OUTLINED_FUNCTION_109_0();
      return;
    }
  }

  OUTLINED_FUNCTION_109_0();
}

uint64_t sub_26A7C73D0()
{
  sub_26A4EC5B0(0, &qword_281580030);
  OUTLINED_FUNCTION_214_0();
  result = sub_26A852058();
  qword_2815801F0 = result;
  return result;
}

uint64_t sub_26A7C743C()
{
  v0 = sub_26A84EAC8();
  __swift_allocate_value_buffer(v0, qword_281588A30);
  __swift_project_value_buffer(v0, qword_281588A30);
  if (qword_2815801E8 != -1)
  {
    swift_once();
  }

  v1 = qword_2815801F0;
  return sub_26A84EAD8();
}

unint64_t sub_26A7C74C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A7C758C(v11, 0, 0, 1, a1, a2);
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
    sub_26A5136A0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26A7C758C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26A7C768C(a5, a6);
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
    result = sub_26A8522B8();
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

uint64_t sub_26A7C768C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26A7C76D8(a1, a2);
  sub_26A7C77F0(&unk_287B13040);
  return v3;
}

uint64_t sub_26A7C76D8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_26A8518B8())
  {
    result = sub_26A7C78D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26A852218();
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
          result = sub_26A8522B8();
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

uint64_t sub_26A7C77F0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26A7C7944(result, v7, 1, v3);
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

void *sub_26A7C78D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26A7C7944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F58);
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

uint64_t sub_26A7C7A38(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A7C7A9C(void *a1)
{
  v2 = [a1 responseModel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A7C7B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A7C7B94(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7C7BE8()
{
  result = qword_2803AE0E8;
  if (!qword_2803AE0E8)
  {
    sub_26A4EC5B0(255, &qword_2803B10F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE0E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_66()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_7_70()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_10_51()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v0;
  *(v2 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_11_52()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v0;
  *(v2 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_18_30()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_19_28()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_20_31()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
  *(v1 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_21_31()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
  *(v1 + 22) = 2082;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_22_30()
{
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
}

void OUTLINED_FUNCTION_23_24()
{
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
}

uint64_t OUTLINED_FUNCTION_31_19()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_48_6()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_55_4(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_56_4()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

void OUTLINED_FUNCTION_57_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_58_6(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_60_3()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_61_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_68_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_69_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_70_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v12, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_73_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

void OUTLINED_FUNCTION_80_3()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_81_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_82_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v13, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_86_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v13, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_89_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_94_1()
{

  JUMPOUT(0x26D665630);
}

void OUTLINED_FUNCTION_95_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_103_0()
{

  JUMPOUT(0x26D665630);
}

unint64_t OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, ...)
{
  va_start(va, a7);

  return sub_26A7C74C8(a6, a7, va);
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, ...)
{
  va_start(va, a5);

  return sub_26A7C74C8(a4, a5, va);
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_116_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_117_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_127_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_131_0()
{

  return sub_26A852268();
}

unint64_t OUTLINED_FUNCTION_135_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_26A7C74C8(a20, a21, (v21 - 88));
}

void OUTLINED_FUNCTION_139_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_141_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_144_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_147_0()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

void OUTLINED_FUNCTION_148_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_151_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_26A852568();
}

unint64_t OUTLINED_FUNCTION_157_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, ...)
{
  va_start(va, a7);

  return sub_26A7C74C8(a6, a7, va);
}

void OUTLINED_FUNCTION_159_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_160_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_162_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_177_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_178_0()
{

  return sub_26A852268();
}

void OUTLINED_FUNCTION_180_0()
{

  JUMPOUT(0x26D665630);
}

void OUTLINED_FUNCTION_184_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x2Au);
}

void OUTLINED_FUNCTION_185_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_186_0()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_187_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_188_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_189_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_190_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_192_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_193_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_194_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_197_0()
{
}

void OUTLINED_FUNCTION_216_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_219_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_221_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_223_0(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_224_0(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_225_0(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_226_0()
{
}

uint64_t OUTLINED_FUNCTION_227_0()
{
}

unint64_t OUTLINED_FUNCTION_228_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_229_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_231(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_232()
{
}

void OUTLINED_FUNCTION_242()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_243(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_244()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_245()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_246()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_247()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_248()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_249()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_250()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_251(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_252(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_253(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void OUTLINED_FUNCTION_254(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

BOOL OUTLINED_FUNCTION_255(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

BOOL OUTLINED_FUNCTION_258(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void OUTLINED_FUNCTION_259()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_260(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_261(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_262()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_263(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000039, a2, a3);
}

void OUTLINED_FUNCTION_266()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_270()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_271()
{

  return sub_26A852268();
}

void OUTLINED_FUNCTION_272(void *a1, int a2, os_log_type_t a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, a3, a4, v12, 0x2Au);
}

void OUTLINED_FUNCTION_274()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_275()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_276()
{
}

void OUTLINED_FUNCTION_279()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_280()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_281(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000034, a2, a3);
}

unint64_t OUTLINED_FUNCTION_282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{

  return sub_26A7C74C8(a22, a23, (v23 - 88));
}

void OUTLINED_FUNCTION_283()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_284()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_286()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_287(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_288()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_26A852658();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_26A852658();
}

unint64_t OUTLINED_FUNCTION_292(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000031, a2, a3);
}

void OUTLINED_FUNCTION_295(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_297(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_298()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_299(uint64_t a1)
{

  return sub_26A7C74C8(a1, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_300()
{

  return sub_26A8517F8();
}

void OUTLINED_FUNCTION_301()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_302(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002ALL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_303(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000020, a2, a3);
}

void OUTLINED_FUNCTION_304(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_310()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_311(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002CLL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_312(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000027, a2, a3);
}

unint64_t OUTLINED_FUNCTION_313(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000038, a2, a3);
}

uint64_t OUTLINED_FUNCTION_314()
{
}

void OUTLINED_FUNCTION_315()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_316(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_317(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000037, a2, a3);
}

unint64_t OUTLINED_FUNCTION_318(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000028, a2, a3);
}

void OUTLINED_FUNCTION_319()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000030, a2, a3);
}

void OUTLINED_FUNCTION_321()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_322()
{
}

uint64_t OUTLINED_FUNCTION_323()
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_324()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_327()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_329()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_340()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_344()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_346()
{
  v2 = *(v0 - 156) & 1;
  v3 = *(v0 - 128);

  return sub_26A58224C(v3, v2);
}

uint64_t OUTLINED_FUNCTION_347(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_348()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_349(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_350(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_351(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_352()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_353(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_354()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_355()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_356()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_357(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_358()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_359(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000051, a2, a3);
}

id OUTLINED_FUNCTION_360(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return v13;
}

uint64_t OUTLINED_FUNCTION_361()
{
}

unint64_t OUTLINED_FUNCTION_362(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000003BLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_363()
{

  return sub_26A8523D8();
}

uint64_t OUTLINED_FUNCTION_364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a13);
}

unint64_t OUTLINED_FUNCTION_365(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 96));
}

void OUTLINED_FUNCTION_366()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_367()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_368()
{
}

void OUTLINED_FUNCTION_369()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_370(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_26A7C74C8(a1, a2, va);
}

void OUTLINED_FUNCTION_371()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_372()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_373(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000001FLL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_374(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002BLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_375@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  LOBYTE(a10) = a9;

  return sub_26A7AED10(a1, a2, a3, a4, a5, a6, a7, a8, a10, v30, v29, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

unint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000036, a2, a3);
}

unint64_t OUTLINED_FUNCTION_377(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000022, a2, a3);
}

unint64_t OUTLINED_FUNCTION_379(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 96));
}

uint64_t sub_26A7C9FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_26A67F998(a1, a2);
  v25 = sub_26A565D4C() & 1;
  v26 = v15;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a1;
  v18[3] = a2;
  v19 = a3;
  v20 = v25;
  v21 = v15;
  OUTLINED_FUNCTION_59_2();
  v16 = type metadata accessor for ExpandableContentModifier();
  MEMORY[0x26D662ED0](v18, a6, v16, a8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7CA0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A7CA0CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A7CA15C()
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t sub_26A7CA1EC(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

uint64_t sub_26A7CA234()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A7CA32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851078();
  return v1;
}

uint64_t sub_26A7CA380()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = sub_26A7CA32C();
  }

  sub_26A67F998(v1, v2);
  return v3;
}

uint64_t sub_26A7CA3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v44 = a3;
  v5 = type metadata accessor for ExpandableContentStyle();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_10_52();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  v36 = sub_26A84FE88();
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v48 = v36;
  v49 = v7;
  v50 = WitnessTable;
  v51 = v8;
  v9 = sub_26A84F358();
  OUTLINED_FUNCTION_15();
  v43 = v10;
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - v12;
  OUTLINED_FUNCTION_8_66();
  v13 = swift_getWitnessTable();
  v40 = v13;
  OUTLINED_FUNCTION_6_67();
  v39 = sub_26A7CD5E0();
  v48 = v9;
  v49 = v5;
  v50 = v13;
  v51 = v39;
  v41 = MEMORY[0x277CDEB20];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v42 = v14;
  MEMORY[0x28223BE20](v15);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v31 - v18;
  sub_26A7CA380();
  v45 = v7;
  v46 = v8;
  v47 = v38;

  v19 = v32;
  sub_26A84F348();
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v20 = v3 + v5[5];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v5[6];
  *(v3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8);
  swift_storeEnumTagMultiPayload();
  v22 = v3 + v5[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v3 + v5[8];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v35;
  v26 = v39;
  v25 = v40;
  sub_26A850B58();
  sub_26A7CD0B0();
  (*(v43 + 8))(v19, v9);
  v48 = v9;
  v49 = v5;
  v50 = v25;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = OpaqueTypeMetadata2;
  sub_26A80757C(v24);
  v29 = *(v42 + 8);
  v29(v24, v28);
  sub_26A80757C(v27);
  return (v29)(v27, v28);
}

uint64_t sub_26A7CA840(uint64_t a1)
{
  type metadata accessor for ExpandableContentModifier();
  swift_getWitnessTable();
  v2 = sub_26A84FE88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  swift_getWitnessTable();
  sub_26A80757C(a1);
  sub_26A80757C(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26A7CA97C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for ExpandableContentStyle();
  OUTLINED_FUNCTION_20_32();
  if (!v6)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v9;
  }

  return v0 & 1;
}

uint64_t sub_26A7CAA9C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for ExpandableContentStyle();
  OUTLINED_FUNCTION_20_32();
  if (!v6)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v9;
  }

  return v0 & 1;
}

uint64_t type metadata accessor for ExpandableContentStyle()
{
  result = qword_2803B8058;
  if (!qword_2803B8058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26A7CAC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8068);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &__src[-v6];
  *v7 = sub_26A84FBF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8070);
  sub_26A7CAD8C(v2, a1, &v7[*(v8 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4BBC44();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8078);
  return memcpy((a2 + *(v9 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A7CAD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8080);
  MEMORY[0x28223BE20](v118);
  v119 = &v99 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8088);
  MEMORY[0x28223BE20](v117);
  v104 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v99 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E50);
  MEMORY[0x28223BE20](v113);
  v102 = &v99 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8090);
  MEMORY[0x28223BE20](v107);
  v112 = &v99 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1840);
  MEMORY[0x28223BE20](v111);
  v103 = &v99 - v11;
  v12 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v12);
  v106 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8098);
  MEMORY[0x28223BE20](v14 - 8);
  v109 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80A0);
  MEMORY[0x28223BE20](v18);
  v20 = &v99 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80A8);
  MEMORY[0x28223BE20](v108);
  v120 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80B0);
  MEMORY[0x28223BE20](v22 - 8);
  v114 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v116 = &v99 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80B8);
  MEMORY[0x28223BE20](v26);
  v115 = &v99 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80C0);
  MEMORY[0x28223BE20](v28 - 8);
  v122 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v99 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80C8);
  MEMORY[0x28223BE20](v33 - 8);
  v121 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v99 - v36;
  *v37 = sub_26A84FA38();
  *(v37 + 1) = 0;
  v38 = 1;
  v37[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80D0);
  v40 = a1;
  sub_26A7CBC38(a2, &v37[*(v39 + 44)]);
  if (sub_26A850168())
  {
    v101 = v26;
    v100 = v32;
    *v20 = sub_26A84FBF8();
    *(v20 + 1) = 0x4030000000000000;
    v20[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80E0);
    sub_26A850198();
    v41 = sub_26A850268();
    v42 = &v20[*(v18 + 36)];
    *v42 = v41;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    v42[40] = 1;
    v43 = *(v12 + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_26A84FB88();
    v46 = v106;
    (*(*(v45 - 8) + 104))(&v106[v43], v44, v45);
    __asm { FMOV            V0.2D, #8.0 }

    *v46 = _Q0;
    v52 = sub_26A7CAA9C();
    v99 = v40;
    if (v52)
    {
      v53 = v111;
      v54 = v103;
      v55 = &v103[*(v111 + 52)];
      sub_26A850E88();
      v56 = sub_26A850E68();

      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838) + 36);
      v58 = *MEMORY[0x277CE13B8];
      v59 = sub_26A8514D8();
      (*(*(v59 - 8) + 104))(v55 + v57, v58, v59);
      *v55 = v56;
      sub_26A7CD274();
      *&v54[*(v53 + 56)] = 256;
    }

    else
    {
      v60 = sub_26A850DF8();
      v61 = v102;
      sub_26A7CD274();
      v62 = v113;
      *&v61[*(v113 + 52)] = v60;
      *&v61[*(v62 + 56)] = 256;
    }

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A7CD0B0();
    sub_26A4D7EA8();
    v63 = sub_26A851448();
    v65 = v64;
    v66 = &v120[*(v108 + 36)];
    sub_26A4D7EA8();
    v67 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80F8) + 36)];
    *v67 = v63;
    v67[1] = v65;
    sub_26A4D7EA8();
    v68 = sub_26A7CAA9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8100);
    v69 = v100;
    if (v68)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A8570F0;
      v71 = sub_26A850268();
      *(inited + 32) = v71;
      v72 = sub_26A850238();
      *(inited + 33) = v72;
      v73 = sub_26A850288();
      sub_26A850288();
      v74 = sub_26A850288();
      v75 = v117;
      if (v74 != v71)
      {
        v73 = sub_26A850288();
      }

      sub_26A850288();
      v76 = sub_26A850288();
      v77 = v105;
      if (v76 != v72)
      {
        v73 = sub_26A850288();
      }

      sub_26A4D7E54();
      v78 = &v77[*(v75 + 36)];
      *v78 = v73;
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
      v78[40] = 1;
    }

    else
    {
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_26A8570F0;
      v80 = sub_26A850268();
      *(v79 + 32) = v80;
      v81 = sub_26A850238();
      *(v79 + 33) = v81;
      v82 = sub_26A850288();
      sub_26A850288();
      v83 = sub_26A850288();
      v84 = v117;
      if (v83 != v80)
      {
        v82 = sub_26A850288();
      }

      sub_26A850288();
      if (sub_26A850288() != v81)
      {
        v82 = sub_26A850288();
      }

      sub_26A84ED48();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = v104;
      sub_26A4D7E54();
      v94 = &v93[*(v84 + 36)];
      *v94 = v82;
      *(v94 + 1) = v86;
      *(v94 + 2) = v88;
      *(v94 + 3) = v90;
      *(v94 + 4) = v92;
      v94[40] = 0;
    }

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A7CD400(&qword_2803B8108, &qword_2803B8088, &unk_26A885010, sub_26A7CD104);
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A505D1C();
    sub_26A4D7EA8();
    v124 = 0x3FF0000000000000;
    v125 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8138);
    sub_26A506A30();
    v95 = sub_26A84F048();
    v96 = v115;
    sub_26A4D7EA8();
    v97 = v101;
    *&v96[*(v101 + 36)] = v95;
    sub_26A4D7EA8();
    v32 = v69;
    v38 = 0;
    v26 = v97;
  }

  __swift_storeEnumTagSinglePayload(v32, v38, 1, v26);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80D8);
  sub_26A4D7E54();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7CBC38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8148);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_26A850178();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_26A850188();
  sub_26A7CBEC4(a1, v8);
  v16 = sub_26A84FA38();
  v17 = &v8[*(v5 + 44)];
  *v17 = v16;
  v17[1] = sub_26A732AD8;
  v17[2] = 0;
  v18 = *(v10 + 16);
  v18(v12, v15, v9);
  v24 = 1;
  sub_26A4D7E54();
  v18(a2, v12, v9);
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8150) + 48)];
  v20 = v24;
  *v19 = 0;
  v19[8] = v20;
  sub_26A4D7E54();
  sub_26A505D1C();
  v21 = *(v10 + 8);
  v21(v15, v9);
  sub_26A505D1C();
  return (v21)(v12, v9);
}

uint64_t sub_26A7CBEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_26A84F588();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A8501A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for ExpandableContentStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8158);
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  sub_26A7CD274();
  v17 = a1;
  v18 = a1;
  v19 = v6;
  (*(v7 + 16))(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v6);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  sub_26A7CD2C8(v12, v22 + v20);
  (*(v7 + 32))(v22 + v21, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v34 = v27[1];
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8160);
  sub_26A7CD400(&qword_2803B8168, &qword_2803B8160, &unk_26A8850C0, sub_26A7CD470);
  sub_26A8510D8();
  v23 = v30;
  sub_26A84F578();
  sub_26A506A30();
  sub_26A7CD5E0();
  v24 = v28;
  v25 = v31;
  sub_26A850978();
  (*(v32 + 8))(v23, v25);
  return (*(v29 + 8))(v16, v24);
}

uint64_t sub_26A7CC300()
{
  sub_26A7CA97C();
  sub_26A8514C8();
  sub_26A84F1C8();
}

uint64_t sub_26A7CC38C()
{
  v0 = sub_26A850158();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_26A7CC3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v61 = a1;
  v3 = sub_26A84F4E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8188);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v50 - v12);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8178);
  MEMORY[0x28223BE20](v58);
  v59 = &v50 - v14;
  sub_26A850E88();
  v15 = sub_26A850E68();

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838) + 36);
  v17 = *MEMORY[0x277CE13B8];
  v18 = sub_26A8514D8();
  (*(*(v18 - 8) + 104))(v13 + v16, v17, v18);
  *v13 = v15;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8198) + 56)) = 256;
  sub_26A851448();
  sub_26A84F028();
  v19 = (v13 + *(v11 + 44));
  v20 = v72;
  *v19 = v71;
  v19[1] = v20;
  v19[2] = v73;
  v53 = *(type metadata accessor for ExpandableContentStyle() + 24);
  sub_26A7204E0(v9);
  v21 = *(v4 + 104);
  v52 = *MEMORY[0x277CDFA90];
  v51 = v21;
  v21(v6);
  sub_26A84F4D8();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v54 = v3;
  v22(v9, v3);
  v23 = sub_26A850F08();
  v56 = sub_26A84FEA8();
  sub_26A850468();
  sub_26A850308();

  v55 = sub_26A8502E8();

  KeyPath = swift_getKeyPath();
  v25 = 0.0;
  if (sub_26A850168())
  {
    sub_26A7204E0(v9);
    v61 = v23;
    v26 = v54;
    v51(v6, v52, v54);
    v27 = sub_26A84F4D8();
    v22(v6, v26);
    v28 = v26;
    v23 = v61;
    v22(v9, v28);
    if (v27)
    {
      v25 = -1.57079633;
    }

    else
    {
      v25 = 1.57079633;
    }
  }

  sub_26A8515A8();
  v30 = v29;
  v32 = v31;
  v33 = sub_26A851448();
  v35 = v34;
  v62[0] = v23;
  v36 = v56;
  LODWORD(v62[1]) = v56;
  v37 = v55;
  v62[2] = KeyPath;
  v62[3] = v55;
  *&v62[4] = v25;
  v62[5] = v30;
  v62[6] = v32;
  v62[7] = v33;
  v62[8] = v34;
  v38 = v59;
  sub_26A4D7EA8();
  memcpy(&v38[*(v58 + 36)], v62, 0x48uLL);
  v62[9] = v23;
  v63 = v36;
  v64 = KeyPath;
  v65 = v37;
  v66 = v25;
  v67 = v30;
  v68 = v32;
  v69 = v33;
  v70 = v35;
  sub_26A4D7E54();
  sub_26A505D1C();
  LOBYTE(v33) = sub_26A850298();
  sub_26A84ED48();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v60;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8160);
  v49 = v47 + *(result + 36);
  *v49 = v33;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  return result;
}

double sub_26A7CC954@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectGetMinX(*&a2);
  v10.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetMinY(v10);
  v11.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetWidth(v11);
  v12.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetHeight(v12);
  sub_26A8514F8();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double sub_26A7CCA04@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_26A7CC954(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_26A7CCA4C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_26A7CCA58(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_26A7CCA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7CDC08();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26A7CCAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7CDC08();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26A7CCB4C(uint64_t a1)
{
  v2 = sub_26A7CDC08();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_26A7CCB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  OUTLINED_FUNCTION_11_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84FE88();
  sub_26A84EF28();
  v2 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  sub_26A6F43B0();
  sub_26A850CC8();
  OUTLINED_FUNCTION_7_71();
  v12 = swift_getWitnessTable();
  v17[2] = WitnessTable;
  v17[3] = v12;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_2();
  sub_26A80757C(v13);
  v14 = *(v4 + 8);
  v14(v7, v2);
  OUTLINED_FUNCTION_59_2();
  sub_26A80757C(v15);
  return (v14)(v10, v2);
}

uint64_t sub_26A7CCD8C(uint64_t a1)
{
  sub_26A84F4E8();
  OUTLINED_FUNCTION_15();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F798();
}

unint64_t sub_26A7CCE48()
{
  result = qword_2803B8040;
  if (!qword_2803B8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8040);
  }

  return result;
}

unint64_t sub_26A7CCE9C()
{
  result = qword_2803B8050;
  if (!qword_2803B8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8050);
  }

  return result;
}

void sub_26A7CCF38()
{
  sub_26A7CD040(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_26A7CD040(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A7CD040(319, &qword_2803B4FB0, MEMORY[0x277CDFAA0]);
      if (v2 <= 0x3F)
      {
        sub_26A5923A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A7CD040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A7CD0B0()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A7CD104()
{
  result = qword_2803B8110;
  if (!qword_2803B8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B80A8);
    sub_26A7CD1BC();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8110);
  }

  return result;
}

unint64_t sub_26A7CD1BC()
{
  result = qword_2803B8118;
  if (!qword_2803B8118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B80A0);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8118);
  }

  return result;
}

uint64_t sub_26A7CD274()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7CD2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandableContentStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7CD32C()
{
  type metadata accessor for ExpandableContentStyle();
  sub_26A8501A8();

  return sub_26A7CC300();
}

uint64_t sub_26A7CD400(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7CD470()
{
  result = qword_2803B8170;
  if (!qword_2803B8170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8178);
    sub_26A7CD528();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8170);
  }

  return result;
}

unint64_t sub_26A7CD528()
{
  result = qword_2803B8180;
  if (!qword_2803B8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8188);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8180);
  }

  return result;
}

unint64_t sub_26A7CD5E0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A7CD650()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A7CD6C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26A7CD7FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26A7CDA18()
{
  result = qword_2803B8238;
  if (!qword_2803B8238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8078);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8238);
  }

  return result;
}

unint64_t sub_26A7CDB18()
{
  result = qword_2803B8258;
  if (!qword_2803B8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8258);
  }

  return result;
}

unint64_t sub_26A7CDB70()
{
  result = qword_2803B8260;
  if (!qword_2803B8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8260);
  }

  return result;
}

unint64_t sub_26A7CDC08()
{
  result = qword_2803B8268;
  if (!qword_2803B8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8268);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_32@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t sub_26A7CDD40(uint64_t a1)
{
  v2 = v1;
  v194 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0(&v191 - v5);
  v197 = sub_26A850858();
  OUTLINED_FUNCTION_15();
  v196 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v9 - v8);
  v204 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v207 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF6A0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0(&v191 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8270);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_0(&v191 - v19);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v191 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8);
  v24 = OUTLINED_FUNCTION_79(v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v191 - v28;
  v30 = sub_26A84AA38();
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v32 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v34 = v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v191 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v191 - v42;
  v209 = [v2 inline_image_element];
  if (v209)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A8570D0;
    v45 = [v2 engageable];
    if (v45)
    {
      v46 = v45;
      sub_26A7CED2C(&v212);

      v47 = v212;
      v48 = v213;
    }

    else
    {
      v47 = 0;
      v48 = -1;
    }

    v212 = v47;
    LOBYTE(v213) = v48;
    v99 = [v2 color];
    sub_26A5B462C(&v212, v99, inited + 32);

    sub_26A5066E8(v212, v213);
    v100 = MEMORY[0x277D84F90];
    v101 = *(inited + 72);
    if (v101 >> 8 < 0xFF)
    {
      v102 = *(inited + 32);
      v103 = *(inited + 40);
      v104 = *(inited + 48);
      v105 = *(inited + 56);
      v106 = *(inited + 64);
      sub_26A5064E8(v102, v103, v104, v105, v106, *(inited + 72), SBYTE1(v101));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A1034();
        v100 = v110;
      }

      v107 = *(v100 + 16);
      v108 = v100;
      if (v107 >= *(v100 + 24) >> 1)
      {
        sub_26A7A1034();
        v108 = v111;
      }

      *(v108 + 16) = v107 + 1;
      v100 = v108;
      v109 = v108 + 48 * v107;
      *(v109 + 32) = v102;
      *(v109 + 40) = v103;
      *(v109 + 48) = v104;
      *(v109 + 56) = v105;
      *(v109 + 64) = v106;
      *(v109 + 72) = v101;
    }

    swift_setDeallocating();
    sub_26A7A0BDC();
    return v100;
  }

  v208 = v27;
  v201 = v22;
  v192 = v38;
  v193 = v34;
  v199 = v43;
  v209 = v32;
  sub_26A58945C(v2);
  if (!v49)
  {
    v112 = v2;
    v113 = sub_26A851E98();
    LOBYTE(v190) = 2;
    sub_26A7AA92C(v113, 1, "SnippetUI/RFFormattedText+FormattedTextView.swift", 49, 2, 67, "asFormattedTextRuns(sectionId:)", 31, v190, v112, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
    return MEMORY[0x277D84F90];
  }

  sub_26A84AA28();
  sub_26A84A9D8();
  v202 = v2;
  v50 = [v2 text_encapsulation];
  if (v50)
  {
    v51 = v50;
    sub_26A8076A4();
    sub_26A51D0F8(v29, v208, &qword_2803B4AB8);
    sub_26A6ED544();
    sub_26A84A9E8();

    sub_26A4DBD10(v29, &qword_2803B4AB8);
  }

  v52 = OUTLINED_FUNCTION_11_54();
  v55 = sub_26A4EC1C4(v52, v53, v54);
  v56 = v205;
  v57 = v207;
  if (!v55)
  {
LABEL_25:
    v81 = v202;
    v82 = [v202 is_highlighted];
    v83 = v209;
    v84 = v192;
    if (v82)
    {
      v85 = v82;
      if ([v82 value])
      {
        sub_26A850E88();
        v86 = sub_26A850E68();

        v212 = v86;
        sub_26A7CFEF8();
        sub_26A84A9E8();
      }
    }

    (*(v193 + 16))(v84, v199, v83);
    v87 = sub_26A850888();
    v89 = v88;
    v91 = v90;
    v92 = [v81 is_bold];
    if (v92)
    {
      v93 = v92;
      [v93 value];
      v94 = sub_26A850728();
      v96 = v95;
      v98 = v97;
    }

    else
    {
      v114 = OUTLINED_FUNCTION_6_68();
      sub_26A4EF6C0(v114, v115, v116);

      v94 = v87;
      v96 = v89;
      v98 = v91;
    }

    v117 = OUTLINED_FUNCTION_6_68();
    sub_26A4EC448(v117, v118, v119);

    v120 = OUTLINED_FUNCTION_11_54();
    v122 = [v120 v121];
    if (v122)
    {
      v123 = v122;
      [v122 value];
    }

    v124 = sub_26A8507F8();
    v126 = v125;
    v128 = v127;
    sub_26A4EC448(v94, v96, v98 & 1);

    v129 = OUTLINED_FUNCTION_11_54();
    v131 = [v129 v130];
    if (v131)
    {
      v132 = v131;
      [v131 value];
    }

    v133 = v195;
    sub_26A850848();
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v134 = byte_2803B0440;
    v135 = objc_opt_self();
    v136 = &selRef_systemGrayColor;
    if (!v134)
    {
      v136 = &selRef_systemGray4Color;
    }

    v137 = [v135 *v136];
    sub_26A850D38();
    v138 = sub_26A850868();
    v140 = v139;
    v142 = v141;
    v144 = v143;

    sub_26A4EC448(v124, v126, v128 & 1);

    (*(v196 + 8))(v133, v197);
    v145 = OUTLINED_FUNCTION_11_54();
    v147 = [v145 v146];
    if (v147)
    {
      v148 = v147;
      sub_26A68D9FC(&v212);
      __swift_project_boxed_opaque_existential_1(&v212, v214);
      v149 = sub_26A8506B8();
      v151 = v150;
      v153 = v152;
      v155 = v154;

      __swift_destroy_boxed_opaque_existential_1(&v212);
    }

    else
    {
      sub_26A4EF6C0(v138, v140, v142 & 1);

      v149 = v138;
      v151 = v140;
      v153 = v142;
      v155 = v144;
    }

    sub_26A4EC448(v138, v140, v142 & 1);

    v156 = v202;
    v157 = [v202 font];
    if (v157)
    {
      v158 = v157;
      v159 = sub_26A5FA038();

      v160 = v155;
      if (v159)
      {

        v161 = sub_26A850738();
        v163 = v162;
        v165 = v164;
        v167 = v166;

        OUTLINED_FUNCTION_0_95();
        v149 = v161;
        v151 = v163;
        v156 = v202;
        v153 = v165;
        v160 = v167;
      }
    }

    else
    {
      v160 = v155;
    }

    v168 = [v156 weight];
    v169 = v198;
    if (v168)
    {
      sub_26A5FA2E0([v156 weight]);
      sub_26A850578();
      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_0_95();
      OUTLINED_FUNCTION_2_99();
    }

    if ([v156 design])
    {
      sub_26A5FA454([v156 design]);
      sub_26A850568();
      OUTLINED_FUNCTION_14_45();
      sub_26A4DBD10(v169, &qword_2803AB208);
      OUTLINED_FUNCTION_0_95();
      OUTLINED_FUNCTION_2_99();
    }

    v170 = sub_26A4EC1C4(v156, &selRef_attributions, &qword_2803B3308);
    if (v170)
    {
      v171 = v170;
      v172 = OUTLINED_FUNCTION_10_53();
      v100 = sub_26A7CF830(v172, v173, v174, v175, v171);

      OUTLINED_FUNCTION_0_95();
      v176 = OUTLINED_FUNCTION_15_39();
      v177(v176);
    }

    else
    {
      v178 = [v156 engageable];
      if (v178)
      {
        v179 = v178;
        v180 = [v178 command_reference];
        v181 = [v179 preview_list];
        v182 = OUTLINED_FUNCTION_10_53();
        sub_26A7CFBB0(v182, v183, v184, v185, v180, v181);
        v187 = v186;

        v100 = v187;
        OUTLINED_FUNCTION_0_95();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_26A8570D0;
        *(v100 + 32) = v149;
        *(v100 + 40) = v151;
        *(v100 + 48) = v153 & 1;
        *(v100 + 56) = v160;
        *(v100 + 64) = 0;
        *(v100 + 72) = 0;
      }

      v188 = OUTLINED_FUNCTION_15_39();
      v189(v188);
    }

    return v100;
  }

  v58 = v55;
  result = sub_26A73670C(v55);
  v60 = v199;
  v61 = v211;
  v208 = result;
  if (!result)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v208 >= 1)
  {
    v62 = 0;
    v206 = v58 & 0xC000000000000001;
    v63 = (v193 + 16);
    v64 = (v193 + 8);
    v200 = (v57 + 8);
    v207 = v58;
    do
    {
      if (v206)
      {
        v65 = MEMORY[0x26D6644E0](v62, v58);
      }

      else
      {
        v65 = *(v58 + 8 * v62 + 32);
      }

      v66 = v65;
      v67 = v209;
      (*v63)(v41, v60, v209);
      v68 = sub_26A67C23C(v66, &selRef_substring);
      if (v69)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0xE000000000000000;
      }

      v212 = v70;
      v213 = v71;
      v72 = sub_26A84AD18();
      __swift_storeEnumTagSinglePayload(v61, 1, 1, v72);
      sub_26A7D0020(&qword_2803B8288, MEMORY[0x277CC8C40]);
      sub_26A53ACC8();
      sub_26A84AAF8();
      v61 = v211;
      sub_26A4DBD10(v211, &qword_2803AF6A0);

      (*v64)(v41, v67);
      if (__swift_getEnumTagSinglePayload(v56, 1, v210) == 1)
      {

        v73 = v56;
        v74 = &qword_2803B8270;
      }

      else
      {
        v75 = v56;
        v76 = v201;
        sub_26A7CFF4C(v75, v201);
        v77 = v203;
        sub_26A84ACB8();
        v78 = sub_26A84AC78();
        v80 = v79;
        (*v200)(v77, v204);
        sub_26A7CEF6C(v78, v80, v76);
        v61 = v211;

        v73 = v76;
        v56 = v205;
        v74 = &qword_2803B8278;
      }

      sub_26A4DBD10(v73, v74);
      ++v62;
      v58 = v207;
    }

    while (v208 != v62);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_26A7CED2C(uint64_t a1@<X8>)
{
  v3 = [v1 preview_list];
  if (!v3)
  {
    v25 = [v1 command_reference];
    if (v25)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    goto LABEL_25;
  }

  v4 = v3;
  v5 = sub_26A4EC1C4(v3, &selRef_previews, &qword_2803B2438);
  if (!v5)
  {

    v25 = 0;
    v24 = -1;
LABEL_25:
    *a1 = v25;
    *(a1 + 8) = v24;
    return;
  }

  v6 = v5;
  v28 = a1;
  v7 = sub_26A73670C(v5);
  v8 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v8)
    {

      v24 = 2;
      a1 = v28;
      v25 = v29;
      goto LABEL_25;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6644E0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = sub_26A67C23C(v9, &selRef_text);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v12;
    v15 = v13;
    v16 = [v10 command_reference];
    if (v16)
    {
      v17 = v16;

      v27 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A0F68();
        v19 = v22;
      }

      v20 = v19[2];
      if (v20 >= v19[3] >> 1)
      {
        sub_26A7A0F68();
        v26 = v23;
      }

      else
      {
        v26 = v19;
      }

      v26[2] = v20 + 1;
      v21 = &v26[4 * v20];
      v21[4] = v14;
      v21[5] = v15;
      v21[6] = v17;
      *(v21 + 56) = 0;
      v8 = v11;
      v29 = v26;
    }

    else
    {

LABEL_12:

      ++v8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_26A7CEF6C(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3)
{
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278);
  MEMORY[0x28223BE20](v3);
  v57 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8298);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v43 - v10;
  v11 = sub_26A8506E8();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26A84A978();
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A84A958();
  v51 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v43 - v18;
  v19 = sub_26A84A988();
  v49 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26A84AA98();
  v22 = *(v48 - 1);
  MEMORY[0x28223BE20](v48);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82A0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v43 - v27;
  v66 = v58;
  v67 = v59;
  v29 = sub_26A7CFFBC();
  v58 = v3;
  v50 = v29;
  sub_26A84AA08();
  sub_26A84AA88();
  (*(v22 + 8))(v24, v48);
  v30 = v49;
  (*(v49 + 16))(v28, v21, v19);
  v31 = *(v26 + 44);
  v32 = v28;
  v60 = sub_26A7D0020(&qword_2803B82B0, MEMORY[0x277CC8C08]);
  sub_26A851D88();
  (*(v30 + 8))(v21, v19);
  v59 = (v52 + 8);
  v48 = (v51 + 16);
  v47 = (v51 + 32);
  v43 = (v54 + 32);
  v46 = (v54 + 16);
  v45 = (v54 + 8);
  v44 = (v51 + 8);
  v54 = v15;
  v51 = v28;
  v52 = v19;
  v49 = v31;
  while (1)
  {
    v33 = v61;
    sub_26A851DD8();
    sub_26A7D0020(&qword_2803B82B8, MEMORY[0x277CC8BF8]);
    v34 = v62;
    v35 = sub_26A851758();
    (*v59)(v33, v34);
    if (v35)
    {
      break;
    }

    v36 = sub_26A851E18();
    v37 = v53;
    (*v48)(v53);
    v36(v65, 0);
    sub_26A851DE8();
    (*v47)(v64, v37, v15);
    sub_26A7D0068();
    v38 = v63;
    sub_26A84A968();
    if (__swift_getEnumTagSinglePayload(v38, 1, v11) == 1)
    {
      sub_26A8506D8();
      if (__swift_getEnumTagSinglePayload(v63, 1, v11) != 1)
      {
        sub_26A4DBD10(v63, &qword_2803B8298);
      }
    }

    else
    {
      (*v43)(v13, v63, v11);
    }

    sub_26A62A9E0();
    sub_26A8506C8();
    v39 = v57;
    sub_26A84A948();
    v40 = v55;
    (*v46)(v55, v13, v11);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v11);
    v41 = sub_26A84A9F8();
    sub_26A51D0F8(v40, v56, &qword_2803B8298);
    sub_26A84AAA8();
    sub_26A4DBD10(v40, &qword_2803B8298);
    v41(v65, 0);
    sub_26A4DBD10(v39, &qword_2803B8278);
    (*v45)(v13, v11);
    v15 = v54;
    (*v44)(v64, v54);
    v32 = v51;
  }

  return sub_26A4DBD10(v32, &qword_2803B82A0);
}

uint64_t sub_26A7CF830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  v11 = sub_26A73670C(a5);
  v12 = 0;
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D6644E0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v6 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = sub_26A67C23C(v14, &selRef_localized_index);
    if (v16)
    {
      v8 = v15;
      v7 = v16;
      if (v12)
      {
        v17 = sub_26A67C23C(v6, &selRef_localized_separator);
        if (v18)
        {
          LOBYTE(v9) = v18;
          MEMORY[0x26D663B00](v17);
        }
      }

      v5 = v43;
      MEMORY[0x26D663B00](v8, v7);
    }

    ++v12;
  }

  sub_26A53ACC8();
  sub_26A850898();
  sub_26A4F5F10();
  v19 = sub_26A850698();
  v21 = v20;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_6_68();
  sub_26A4EC448(v24, v25, v26);

  sub_26A4F5D20();
  swift_bridgeObjectRetain_n();
  v5 = sub_26A850698();
  v42 = v27;
  v29 = v28;
  v30 = v23 & 1;
  v13 = v31;
  sub_26A4EC448(v19, v21, v30);

  v32 = v29;
  v6 = sub_26A850698();
  v7 = v33;
  LOBYTE(v19) = v34;
  v36 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A857110;
  v8 = v19 & 1;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v36;
  *(v10 + 64) = 0;
  *(v10 + 72) = 256;
  v9 = v42 & 1;
  *(v10 + 80) = v5;
  *(v10 + 88) = v13;
  *(v10 + 96) = v9;
  *(v10 + 104) = v32;
  *(v10 + 112) = 0;
  *(v10 + 120) = 768;
  sub_26A4EF6C0(v6, v7, v8);

  sub_26A4EF6C0(v5, v13, v9);
  v37 = qword_2803A8BE8;

  if (v37 == -1)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift_once();
LABEL_15:
  v38 = xmmword_2803B00E0;
  v39 = byte_2803B00F0;
  v40 = qword_2803B00F8;
  *(v10 + 128) = xmmword_2803B00E0;
  *(v10 + 144) = v39;
  *(v10 + 152) = v40;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  sub_26A4EF6C0(v38, *(&v38 + 1), v39);

  sub_26A4EC448(v6, v7, v8);

  sub_26A4EC448(v5, v13, v9);

  return v10;
}

void sub_26A7CFBB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (!a6)
  {
    v9 = a5;
    if (a5)
    {
      sub_26A53AC74();
      v28 = v9;
      sub_26A850698();
      OUTLINED_FUNCTION_12_51();
      sub_26A5066FC(a5, 0);
    }

    else
    {
      sub_26A4EF6C0(a1, a2, a3 & 1);

      LOBYTE(v9) = a3;
    }

LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26A8570D0;
    OUTLINED_FUNCTION_7_72(v29, v9 & 1);
    return;
  }

  v9 = a6;
  v10 = sub_26A4EC1C4(v9, &selRef_previews, &qword_2803B2438);
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26A8570D0;
    OUTLINED_FUNCTION_7_72(v30, a3 & 1);
    sub_26A4EF6C0(a1, a2, a3 & 1);

    return;
  }

  v11 = v10;
  v33 = v9;
  v12 = sub_26A73670C(v10);
  v13 = 0;
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v13)
    {

      sub_26A53AC74();
      sub_26A850698();
      OUTLINED_FUNCTION_12_51();

      sub_26A5066FC(v34, 2u);
      goto LABEL_23;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D6644E0](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v17 = sub_26A67C23C(v14, &selRef_text);
    if (!v18)
    {
      goto LABEL_12;
    }

    v9 = v17;
    v19 = v18;
    v20 = [v15 command_reference];
    if (v20)
    {
      v21 = v20;

      v32 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A0F68();
        v23 = v26;
      }

      v24 = v23[2];
      if (v24 >= v23[3] >> 1)
      {
        sub_26A7A0F68();
        v31 = v27;
      }

      else
      {
        v31 = v23;
      }

      v31[2] = v24 + 1;
      v25 = &v31[4 * v24];
      v25[4] = v9;
      v25[5] = v19;
      v25[6] = v21;
      *(v25 + 56) = 0;
      v13 = v16;
      v34 = v31;
    }

    else
    {

LABEL_12:

      ++v13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t sub_26A7CFEF8()
{
  result = qword_2803B8280;
  if (!qword_2803B8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8280);
  }

  return result;
}

uint64_t sub_26A7CFF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7CFFBC()
{
  result = qword_2803B82A8;
  if (!qword_2803B82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82A8);
  }

  return result;
}

uint64_t sub_26A7D0020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A7D0068()
{
  result = qword_2803B82C0;
  if (!qword_2803B82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_95()
{
  sub_26A4EC448(v2, v1, v0 & 1);
}

uint64_t OUTLINED_FUNCTION_7_72@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = a2;
  *(result + 56) = v2;
  *(result + 64) = 0;
  *(result + 72) = 1280;
  return result;
}

uint64_t sub_26A7D0190()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_26A7D02D4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 25) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v5;
}

uint64_t sub_26A7D0434@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlainTextView();
  sub_26A7D1400(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84EE68();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7D0624()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PlainTextView() + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t PlainTextView.init(_:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v2 = type metadata accessor for PlainTextView();
  v3 = *(v2 + 24);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + *(v2 + 28);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  sub_26A8517E8();
}

uint64_t type metadata accessor for PlainTextView()
{
  result = qword_2803B82E8;
  if (!qword_2803B82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlainTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v70 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v67 = v4 - v3;
  sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v61 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = *(type metadata accessor for PlainTextView() + 32);
  sub_26A84AF68();
  v20 = sub_26A84AF48();
  v22 = v21;
  (*(v14 + 8))(v18, v12);
  v71 = v20;
  v72 = v22;
  sub_26A53ACC8();
  v23 = sub_26A850898();
  v25 = v24;
  v27 = v26;
  sub_26A7D0D8C();
  v64 = sub_26A850738();
  v65 = v28;
  v30 = v29;
  v32 = v31;

  sub_26A4EC448(v23, v25, v27 & 1);

  v66 = v19;
  sub_26A84AF88();
  v33 = sub_26A84DFA8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
  {
    sub_26A4E2544(v11, &qword_2803AD038);
  }

  else
  {
    v34 = v61;
    sub_26A84DF78();
    v35 = _ProtoColor.swiftValue.getter();
    (*(v62 + 8))(v34, v63);
    (*(*(v33 - 8) + 8))(v11, v33);
    if (v35)
    {

      v36 = v64;
      v37 = sub_26A8506A8();
      v62 = v38;
      v63 = v37;
      v40 = v39;
      v42 = v41;

      goto LABEL_6;
    }
  }

  v36 = v64;
  sub_26A4EF6C0(v64, v30, v32 & 1);
  v43 = v65;

  v62 = v30;
  v63 = v36;
  v40 = v32;
  v42 = v43;
LABEL_6:
  v44 = v67;
  v45 = v68;
  sub_26A4EC448(v36, v30, v32 & 1);

  v46 = sub_26A84AF98();
  if (v47)
  {
    v48 = sub_26A7D02D4();
    v50 = v49;
  }

  else
  {
    v48 = v46;
    v50 = 0;
  }

  KeyPath = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v53 = sub_26A7D0624();
  if (v53 == 2 || (v53 & 1) == 0)
  {
    sub_26A7D0434(v44);
  }

  else
  {
    (*(v70 + 104))(v44, *MEMORY[0x277CDF3D0], v45);
  }

  v54 = v44;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82E0);
  v56 = v69;
  v57 = (v69 + *(v55 + 36));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  result = (*(v70 + 32))(v57 + *(v58 + 28), v54, v45);
  *v57 = v52;
  v60 = v62;
  *v56 = v63;
  *(v56 + 8) = v60;
  *(v56 + 16) = v40 & 1;
  *(v56 + 24) = v42;
  *(v56 + 32) = KeyPath;
  *(v56 + 40) = v48;
  *(v56 + 48) = v50 & 1;
  return result;
}

uint64_t sub_26A7D0D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  type metadata accessor for PlainTextView();
  sub_26A84AF28();
  v6 = sub_26A84AEF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26A4E2544(v5, &qword_2803AD048);
  }

  else
  {
    v7 = sub_26A5500C8();
    (*(*(v6 - 8) + 8))(v5, v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_26A7D0190();
  if (!v8)
  {
    v8 = sub_26A8502F8();
  }

  v7 = v8;
LABEL_7:
  v9 = sub_26A84AF18();
  if (v9 == 2 || (v9 & 1) == 0)
  {

    v10 = v7;
  }

  else
  {
    v10 = sub_26A850308();
  }

  v11 = sub_26A84AF78();
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_26A8503D8();

    v10 = v12;
  }

  sub_26A84AED8();
  v13 = sub_26A84C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
  if (EnumTagSinglePayload == 1)
  {

    sub_26A4E2544(v2, &qword_2803AD040);
  }

  else
  {
    sub_26A5506E0(EnumTagSinglePayload);
    v16 = v15;
    (*(*(v13 - 8) + 8))(v2, v13);
    if (v16)
    {
    }

    else
    {
      v17 = sub_26A850428();

      return v17;
    }
  }

  return v10;
}

uint64_t sub_26A7D1040()
{
  result = swift_allocObject();
  *(result + 16) = sub_26A7D1098;
  *(result + 24) = 0;
  qword_2803B82D0 = sub_26A7D14F8;
  *algn_2803B82D8 = result;
  return result;
}

uint64_t sub_26A7D1098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_26A4EF6C0(v3, v2, v4);
}

uint64_t sub_26A7D10E8@<X0>(void *a1@<X8>)
{
  if (qword_2803A8F98 != -1)
  {
    swift_once();
  }

  v2 = qword_2803B82D0;
  v3 = *algn_2803B82D8;
  *a1 = qword_2803B82D0;
  a1[1] = v3;

  return sub_26A4C2304(v2);
}

uint64_t sub_26A7D1158()
{
  sub_26A7D1470();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A7D11D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A84F958();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_26A7D1248()
{
  sub_26A576B80(319, &qword_2803B2890, &qword_2803B2898);
  if (v0 <= 0x3F)
  {
    sub_26A576B80(319, &qword_2803B18A8, &qword_2803AB3B8);
    if (v1 <= 0x3F)
    {
      sub_26A5B96FC();
      if (v2 <= 0x3F)
      {
        sub_26A576B80(319, &qword_2803B2E18, &qword_2803AFAE8);
        if (v3 <= 0x3F)
        {
          sub_26A84AFA8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A7D135C()
{
  result = qword_2803B82F8;
  if (!qword_2803B82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B82E0);
    sub_26A6ECA88();
    sub_26A5C9C88(&qword_2803A9E40, &unk_2803A9E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82F8);
  }

  return result;
}

uint64_t sub_26A7D1400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7D1470()
{
  result = qword_2803B8300;
  if (!qword_2803B8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8300);
  }

  return result;
}

void sub_26A7D1500()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8318);
  OUTLINED_FUNCTION_46();
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DynamicFormattedTextView();
  OUTLINED_FUNCTION_46();
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *(v1 + 64);
  if (v12)
  {
    v13 = *(v1 + 56);
    v14 = *(v1 + 48);
    v33 = *(v1 + 40);
    v34 = v14;
    v15 = v13 & 1;
    v35 = v13 & 1;
    v36 = v12;
    v32 = v2;
    v31 = *(v1 + 88);
    v30 = *(v1 + 96);
    v16 = OUTLINED_FUNCTION_5_21();
    sub_26A4EF6C0(v16, v17, v15);

    sub_26A850B28();
    sub_26A4EF6D0();
    sub_26A7D5580();
    sub_26A851248();
    v18 = OUTLINED_FUNCTION_5_21();
    sub_26A4EC448(v18, v19, v15);

    sub_26A51CE58(v1);
    sub_26A4DBD10(v6, &qword_2803B8318);
  }

  else
  {
    memcpy(&v30 - v10, v1, 0x78uLL);
    if (qword_2803A8FA0 != -1)
    {
      swift_once();
    }

    type metadata accessor for DynamicFormattedTextView.TextCache();
    OUTLINED_FUNCTION_1_100();
    sub_26A7D5640(v20, v21, v22);

    *(v11 + 15) = sub_26A84F258();
    *(v11 + 16) = v23;
    v24 = *(v7 + 24);
    *&v11[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(KeyPath);
    v26 = *(v7 + 32);
    *&v11[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0);
    swift_storeEnumTagMultiPayload();
    v27 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v27);
    v28 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v28);
    v29 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v29);
    sub_26A7D5528();
    sub_26A7D5640(&qword_2803B8320, 255, type metadata accessor for DynamicFormattedTextView);
    OUTLINED_FUNCTION_5_21();
    sub_26A851248();
    sub_26A7D5AD4();
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D18DC()
{
  v1 = 0;
  result = 0;
  v3 = *(*v0 + 16);
LABEL_2:
  v4 = (*v0 + 73 + 48 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *v4;
    v4 += 48;
    ++v1;
    if (v6 == 1)
    {
      v1 = v5;
      if (!__OFADD__(result++, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_26A7D193C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a4 & 1;
  v13 = *(a1 + 16);
  v14 = (a1 + 73);
  if (v13)
  {
    while (1)
    {
      v15 = *v14;
      if (((1 << v15) & 3) == 0 && (v15 != 4 || !*(*(v14 - 41) + 80)))
      {
        break;
      }

      v14 += 48;
      if (!--v13)
      {
        goto LABEL_6;
      }
    }

    v27 = OUTLINED_FUNCTION_13_9();
    sub_26A4EF6C0(v27, v28, v29);

    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
LABEL_6:
    swift_bridgeObjectRetain_n();
    v16 = OUTLINED_FUNCTION_13_9();
    sub_26A4EF6C0(v16, v17, v18);

    v19 = OUTLINED_FUNCTION_13_9();
    sub_26A502D68(v19, v20, v21, a5);
    v50 = v23;
    v51 = v22;
    v25 = v24;
    v49 = v26;

    v48 = v25 & 1;
  }

  v30 = *(a1 + 16);
  v31 = (a1 + 73);
  if (v30)
  {
    while (1)
    {
      v32 = *v31;
      if (((1 << v32) & 3) == 0 && (v32 != 4 || !*(*(v31 - 41) + 80)))
      {
        break;
      }

      v31 += 48;
      if (!--v30)
      {
        goto LABEL_13;
      }
    }

    if (qword_2803A8BD0 != -1)
    {
      swift_once();
    }

    v39 = *(&xmmword_2803B0080 + 1);
    v37 = xmmword_2803B0080;
    v41 = byte_2803B0090;
    v43 = qword_2803B0098;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);
  }

  else
  {
LABEL_13:

    v33 = OUTLINED_FUNCTION_13_9();
    sub_26A502D68(v33, v34, v35, a5);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
  }

  v44 = OUTLINED_FUNCTION_13_9();
  sub_26A4EC448(v44, v45, v46);

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v54;
  *(a8 + 32) = a5;
  *(a8 + 40) = v51;
  *(a8 + 48) = v50;
  *(a8 + 56) = v48;
  *(a8 + 64) = v49;
  *(a8 + 72) = v37;
  *(a8 + 80) = v39;
  *(a8 + 88) = v41 & 1;
  *(a8 + 96) = v43;
  *(a8 + 104) = a6;
  *(a8 + 112) = a7;
  return result;
}

BOOL sub_26A7D1C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 73); ; i += 48)
  {
    v3 = v1 - 1;
    if (!v1)
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    switch(v5)
    {
      case 2:
        if (v4 != 255)
        {
          return v1 != 0;
        }

        break;
      case 4:
        v23 = *(i - 17);
        v24 = *(i - 9);
        v21 = *(i - 33);
        v22 = *(i - 25);
        v6 = *(i - 41);
        v7 = *(v6 + 24);
        v8 = *(v6 + 40);
        v9 = *(v6 + 56);
        v10 = *(v6 + 72);
        v15 = *(v6 + 64);
        v16 = *(v6 + 16);
        v13 = *(v6 + 32);
        v14 = *(v6 + 80);
        v11 = *(v6 + 96);
        v25 = *(v6 + 88);
        v17 = *(v6 + 104);
        v19 = *(i - 1);
        v20 = v1;
        sub_26A5064E8(v6, v21, v22, v23, v24, v4, 4);

        sub_26A4EF6C0(v7, v13, v8);

        sub_26A505318(v9, v15, v10, v14);
        sub_26A4EF6C0(v25, v11, v17);

        v18 = sub_26A7D1C0C(v16);

        sub_26A4EC448(v7, v13, v8);

        sub_26A506720(v9, v15, v10, v14);
        sub_26A4EC448(v25, v11, v17);

        sub_26A506604(v6, v21, v22, v23, v24, v19, 4);
        v1 = v20;
        if (v18)
        {
          return v1 != 0;
        }

        break;
      case 5:
        return v1 != 0;
    }

    v1 = v3;
  }

  return v1 != 0;
}

uint64_t sub_26A7D1E08@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 24);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  switch(*(result + 41))
  {
    case 2:
    case 3:
      break;
    case 4:
      v6 = v3[7];
      v7 = v3[8];
      v8 = v3[9];
      v9 = v3[10];
      result = sub_26A505318(v6, v7, v8, v9);
      break;
    default:
      v8 = *(result + 16) & 1;
      sub_26A4EF6C0(*result, v4, *(result + 16) & 1);

      v6 = v3;
      v7 = v4;
      v9 = v5;
      break;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_26A7D1ECC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 24);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  switch(*(result + 41))
  {
    case 1:
      goto LABEL_4;
    case 2:
    case 3:
      break;
    case 4:
      v6 = v3[7];
      v7 = v3[8];
      v8 = v3[9];
      v9 = v3[10];
      result = sub_26A505318(v6, v7, v8, v9);
      break;
    default:
      if (*(result + 32))
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      else
      {
LABEL_4:
        v8 = *(result + 16) & 1;
        sub_26A4EF6C0(*result, v4, *(result + 16) & 1);

        v6 = v3;
        v7 = v4;
        v9 = v5;
      }

      break;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_26A7D1FAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC0) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC8) + 28);
  v6 = *MEMORY[0x277CE1050];
  sub_26A850F88();
  OUTLINED_FUNCTION_46();
  (*(v7 + 104))(v4 + v5, v6);
  *v4 = swift_getKeyPath();
  *a2 = a1;
}

void sub_26A7D2084()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8338);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-1] - v2;
  memcpy(v10, v0, sizeof(v10));
  sub_26A7D2194(v10, v3);
  v4 = sub_26A7D278C();
  v6 = v5;
  v8 = v7;
  sub_26A7D59A8();
  sub_26A850B28();
  sub_26A4EC448(v4, v6, v8 & 1);

  sub_26A4DBD10(v3, &qword_2803B8338);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D2194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8358);
  MEMORY[0x28223BE20](v30);
  v5 = v27 - v4;
  v6 = type metadata accessor for DynamicFormattedTextView();
  v27[2] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27[1] = v7;
  v27[3] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8350);
  MEMORY[0x28223BE20](v29);
  v28 = (v27 - v8);
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(v6 + 40);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
LABEL_3:
      v15 = *a1;

      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v14, 0);
    (*(v10 + 8))(v12, v9);
    if (v34 != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = sub_26A7D2A70(*a1);
LABEL_6:
  v17 = v2 + *(v6 + 44);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v10 + 8))(v12, v9);
    if (v33 != 1)
    {
      goto LABEL_12;
    }
  }

  if (sub_26A7D1C0C(v15))
  {
    v20 = sub_26A84FA78();
    v21 = v28;
    *v28 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8360);
    sub_26A56C934(v15);
    v32 = v22;
    swift_getKeyPath();
    sub_26A7D5528();
    swift_allocObject();
    sub_26A7D5A60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
    sub_26A54FF6C(&qword_2803B8370, &qword_2803B8368);
    sub_26A6D1B70();
    sub_26A8512F8();

    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350);
    sub_26A84FDF8();
    return sub_26A4DBD10(v21, &qword_2803B8350);
  }

LABEL_12:

  *v5 = sub_26A7D32B4(a1);
  *(v5 + 1) = v24;
  v5[16] = v25 & 1;
  *(v5 + 3) = v26;
  swift_storeEnumTagMultiPayload();
  sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350);
  return sub_26A84FDF8();
}

uint64_t sub_26A7D278C()
{
  v1 = type metadata accessor for DynamicFormattedTextView();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0 + *(v2 + 48);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {
    v17 = v5;

    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v10, 0);
    (*(v4 + 8))(v7, v17);
    if (v18 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = sub_26A7D2A70(v8);
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  sub_26A7D5528();
  v12 = swift_allocObject();
  sub_26A7D5A60();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A7D5AB8;
  *(v13 + 24) = v12;
  v14 = sub_26A50388C(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v8, sub_26A7D5AD0, v13);

  return v14;
}

uint64_t sub_26A7D2A70(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 73);
    ++v2;
    v5 += 48;
    if (v7 != 3)
    {
      v8 = *(v5 - 16);
      v9 = *v5;
      v10 = *(v5 + 8);
      v11 = *(v5 + 16);
      v12 = *(v5 + 24);
      v16 = *(v5 - 8);
      sub_26A5064E8(v8, v16, *v5, v10, v11, v12, v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v1;
      if ((result & 1) == 0)
      {
        result = sub_26A7DCE88(0, *(v4 + 16) + 1, 1);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_26A7DCE88(v13 > 1, v14 + 1, 1);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 48 * v14;
      *(v15 + 32) = v8;
      *(v15 + 40) = v16;
      *(v15 + 48) = v9;
      *(v15 + 56) = v10;
      *(v15 + 64) = v11;
      *(v15 + 72) = v12;
      *(v15 + 73) = v7;
      v2 = v6;
      v1 = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26A7D2BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v21 = *(a1 + 8);
  v22 = v3;
  v23 = v5;
  v24 = v4;
  KeyPath = v6;
  v26 = v7;
  if (v8 == 5)
  {
    v27 = 5;
    v9 = sub_26A7D2D8C(&v21);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    KeyPath = swift_getKeyPath();
    v26 = 0;
    v28 = swift_getKeyPath();
    v29 = 0;
    swift_unknownObjectWeakInit();
    v30 = 0;
    v31 = 0;
    v21 = v9;
    v22 = v11;
    LOBYTE(v23) = v13 & 1;
    v24 = v15;
    sub_26A4EF6D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8378);
    sub_26A7D5E74();
    sub_26A851248();
    sub_26A4DBD10(&v21, &qword_2803B8378);
  }

  else
  {
    v27 = v8;
    v21 = sub_26A7D2D8C(&v21);
    v22 = v16;
    LOBYTE(v23) = v17 & 1;
    v24 = v18;
    sub_26A851248();
  }

  result = sub_26A84FDF8();
  v20 = v22;
  *a2 = v21;
  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_26A7D2D8C(uint64_t a1)
{
  v2 = sub_26A84F988();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for LoadableText.Context(0);
  MEMORY[0x28223BE20](v5);
  v39 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-v8];
  v10 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  switch(*(a1 + 41))
  {
    case 2:
      v37 = *(a1 + 24);
      v38 = v13;
      v17 = type metadata accessor for DynamicFormattedTextView();
      v18 = v42;
      v35 = *(v17 + 24);
      sub_26A720064(v9);
      v19 = v18 + *(v17 + 28);
      v20 = *v19;
      LODWORD(v19) = *(v19 + 8);
      v36 = v20;
      v34 = v19;
      if (v19)
      {
        v21 = v20;
      }

      else
      {

        sub_26A851EA8();
        v22 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v20, 0);
        (*(v40 + 8))(v4, v41);
        v21 = v44[0];
      }

      sub_26A7D36EC();
      *&v9[*(v5 + 20)] = v21;
      *&v9[*(v5 + 24)] = v23;
      (v11)(v9);
      sub_26A7D5AD4();
      sub_26A7D3CE8();
      v25 = v38;
      if (v26)
      {
        v11 = v24;
        sub_26A7D5AD4();
      }

      else
      {
        v27 = v39;
        sub_26A720064(v39);
        if (v34)
        {
          v28 = v36;
        }

        else
        {
          v29 = v36;

          sub_26A851EA8();
          v30 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v29, 0);
          (*(v40 + 8))(v4, v41);
          v28 = v44[0];
        }

        sub_26A7D36EC();
        *&v27[*(v5 + 20)] = v28;
        *&v27[*(v5 + 24)] = v31;
        v11 = v25(v27);
        sub_26A7D5AD4();
        sub_26A7D5AD4();
      }

      break;
    case 3:

      sub_26A4EF6C0(v11, v12, v13 & 1);
      sub_26A7D36EC();
      if (v14)
      {
        v15 = v14;
        v16 = Text.superScript(for:)(v14);

        sub_26A4EC448(v11, v12, v13 & 1);

        v11 = v16;
      }

      break;
    case 4:
      memcpy(v44, (v11 + 16), 0x78uLL);
      sub_26A4F5680(v44, &v43);
      v11 = sub_26A7D32B4(v44);
      sub_26A51CE58(v44);
      break;
    default:
      sub_26A4EF6C0(*a1, *(a1 + 8), v13 & 1);

      break;
  }

  return v11;
}

uint64_t sub_26A7D32B4(uint64_t a1)
{
  v3 = type metadata accessor for DynamicFormattedTextView();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v5 = sub_26A84F988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(v4 + 48);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {
    v19 = v7;

    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v11, 0);
    (*(v6 + 8))(v9, v19);
    if (v20 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = sub_26A7D2A70(*a1);
    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = *a1;

LABEL_6:
  sub_26A7D5528();
  v14 = swift_allocObject();
  sub_26A7D5A60();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26A7D5B28;
  *(v15 + 24) = v14;
  v16 = sub_26A50388C(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v12, sub_26A7D60F4, v15);

  return v16;
}

uint64_t sub_26A7D35B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v1;
  v7 = v2;
  return sub_26A7D2D8C(v5);
}

uint64_t sub_26A7D3604(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  if (v4 == 5 || !*(a1 + 41)) && (v2)
  {
    if (qword_2803A8BD0 != -1)
    {
      swift_once();
    }

    v5 = xmmword_2803B0080;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);
  }

  else
  {
    v7[0] = *a1;
    v7[1] = v1;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    return sub_26A7D2D8C(v7);
  }

  return v5;
}

void sub_26A7D36EC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A850438();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v15 = (v0 + *(type metadata accessor for DynamicFormattedTextView() + 36));
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_26A851EA8();
    v21 = v8;
    v18 = v3;
    v19 = v1;
    v20 = sub_26A8501F8();
    sub_26A84EA78();

    v1 = v19;
    v3 = v18;
    sub_26A84F978();
    OUTLINED_FUNCTION_13_9();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v10 + 8))(v14, v21);
    v16 = v22;
  }

  if (v16)
  {
    sub_26A720490(v7);
    sub_26A8502B8();

    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_27_0();
}

void *sub_26A7D38F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LoadableText.Source(0);
  sub_26A7D5640(qword_28157F700, 255, type metadata accessor for LoadableText.Source);
  v5 = sub_26A8516A8();
  v6 = MEMORY[0x277D84FA0];
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

void *sub_26A7D3990()
{
  type metadata accessor for DynamicFormattedTextView.TextCache();
  swift_allocObject();
  result = sub_26A7D38F0(&unk_26A8858E0, 0);
  qword_2803D2720 = result;
  return result;
}

uint64_t sub_26A7D39E4()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A7D3A90;

  return sub_26A539448();
}

uint64_t sub_26A7D3A90()
{
  OUTLINED_FUNCTION_11_55();
  v6 = *v3;
  OUTLINED_FUNCTION_0_12();
  *v7 = v6;
  *v7 = *v3;
  *(v6 + 40) = v1;

  if (v1)
  {
    v8 = sub_26A851B78();
    v10 = v9;
    v11 = sub_26A7D3C8C;
  }

  else
  {
    *(v6 + 72) = v4;
    *(v6 + 48) = v5;
    *(v6 + 56) = v2;
    *(v6 + 64) = v0;
    v8 = sub_26A851B78();
    v10 = v12;
    v11 = sub_26A7D3C1C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_26A7D3C1C()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  return v2(v3, v4, v1 & 1, v5);
}

uint64_t sub_26A7D3C8C()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

void sub_26A7D3CE8()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for LoadableText.Source(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  swift_beginAccess();
  v13 = *(v0 + 16);
  if (*(v13 + 16))
  {

    v14 = sub_26A548888(v3);
    if (v15)
    {
      sub_26A4EF6C0(*(*(v13 + 56) + 32 * v14), *(*(v13 + 56) + 32 * v14 + 8), *(*(v13 + 56) + 32 * v14 + 16));

      goto LABEL_7;
    }
  }

  v23[0] = v12;
  v23[1] = v9;
  v24 = v7;
  swift_beginAccess();

  sub_26A6B5174();
  v17 = v16;

  OUTLINED_FUNCTION_16_33();
  if ((v17 & 1) == 0)
  {
    sub_26A7D5528();
    swift_beginAccess();
    sub_26A6B9864();
    sub_26A7D5AD4();
    swift_endAccess();
    v18 = sub_26A851C18();
    v19 = v24;
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v18);
    sub_26A7D5528();
    sub_26A851BD8();

    v20 = sub_26A851BC8();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v1;
    OUTLINED_FUNCTION_2_100();
    sub_26A7D5A60();
    sub_26A601D48(0, 0, v19, &unk_26A8857A8, v21);

    OUTLINED_FUNCTION_16_33();
  }

LABEL_7:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D4000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(type metadata accessor for LoadableText.Source(0) - 8);
  v5[10] = v6;
  v5[11] = *(v6 + 64);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8308);
  v5[13] = swift_task_alloc();
  sub_26A851BD8();
  v5[14] = sub_26A851BC8();
  v8 = sub_26A851B78();
  v5[15] = v8;
  v5[16] = v7;

  return MEMORY[0x2822009F8](sub_26A7D4130, v8, v7);
}

uint64_t sub_26A7D4130()
{
  OUTLINED_FUNCTION_1_10();
  v4 = (*(v0[8] + 32) + **(v0[8] + 32));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26A7D4220;
  v2 = v0[9];

  return v4(v2);
}

uint64_t sub_26A7D4220()
{
  OUTLINED_FUNCTION_11_55();
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_0_12();
  *v8 = v7;
  *(v6 + 144) = v1;

  if (v1)
  {
    v9 = *(v6 + 120);
    v10 = *(v6 + 128);
    v11 = &sub_26A7D4500;
  }

  else
  {
    *(v6 + 176) = v4;
    *(v6 + 152) = v5;
    *(v6 + 160) = v2;
    *(v6 + 168) = v0;
    v9 = *(v6 + 120);
    v10 = *(v6 + 128);
    v11 = sub_26A7D4354;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}