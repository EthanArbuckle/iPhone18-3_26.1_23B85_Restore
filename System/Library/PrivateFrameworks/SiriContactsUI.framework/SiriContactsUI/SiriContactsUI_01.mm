uint64_t sub_2669B2078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_24_0();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v25 = OUTLINED_FUNCTION_2_2(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &a9 - v31;
  v33 = sub_2669C5954();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v35 = *(ContactQuickActionButtonsView + 20);
  sub_2669B4E38(v32, v30, &qword_2800ABF80, &qword_2669C76E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  sub_2669C6344();
  sub_2669B5184(v32, &qword_2800ABF80, &qword_2669C76E8);
  (*((*MEMORY[0x277D85000] & **(v23 + *(ContactQuickActionButtonsView + 28) + 8)) + 0x208))(v21);
  OUTLINED_FUNCTION_23_0();
}

void sub_2669B2230()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_6();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_1(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  v18 = OUTLINED_FUNCTION_9_1();
  sub_2669B2CB0(v0, v18 + v2);
  *(v18 + v7) = v4;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC758, &qword_2669C84C0);
  OUTLINED_FUNCTION_1_6();
  sub_26699A174(v20, &qword_2800AC758, &qword_2669C84C0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B23AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8);
  return sub_2669C6314();
}

uint64_t sub_2669B2478@<X0>(uint64_t a1@<X8>)
{
  sub_2669C5904();
  sub_2669C66C4();

  sub_266999FC4();
  v2 = sub_2669C6164();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2669C58A4();
  v9 = sub_2669C6164();
  v11 = v10;
  v12 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v15;
  v16 = OUTLINED_FUNCTION_15_1();
  sub_2669A22A8(v16, v17, v18);

  sub_2669A22A8(v9, v11, v14);

  sub_26699A018(v9, v11, v14);

  v19 = OUTLINED_FUNCTION_15_1();
  sub_26699A018(v19, v20, v21);
}

uint64_t sub_2669B25B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

uint64_t sub_2669B25EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_26699F950())
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    v5 = v4;
    sub_2669C5904();
  }

  sub_266999FC4();
  result = sub_2669C6164();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_2669B26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = a4[3];
  v15 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v14);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_2669B5530(a1, a2, a3, v19, a5, a6, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v21;
}

id sub_2669B27E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockGetContactQuickActionButtonsViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2669B2890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2669B2960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2669B2A38(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B2A70()
{
  sub_26699AD38();
  if (v0 <= 0x3F)
  {
    sub_2669B2B34();
    if (v1 <= 0x3F)
    {
      sub_26699F8F0(319, &qword_2800AC598, 0x277CBDA58);
      if (v2 <= 0x3F)
      {
        sub_2669B2B98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2669B2B34()
{
  if (!qword_2800AC590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF80, &qword_2669C76E8);
    v0 = sub_2669C6354();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AC590);
    }
  }
}

void sub_2669B2B98()
{
  if (!qword_2800AC5A0)
  {
    type metadata accessor for GetContactQuickActionButtonsViewModel();
    sub_2669B3724(&qword_2800AC018, type metadata accessor for GetContactQuickActionButtonsViewModel);
    v0 = sub_2669C5E34();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AC5A0);
    }
  }
}

uint64_t sub_2669B2C48(uint64_t a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  (*(*(ContactQuickActionButtonsView - 8) + 16))(a2, a1, ContactQuickActionButtonsView);
  return a2;
}

uint64_t sub_2669B2CB0(uint64_t a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  (*(*(ContactQuickActionButtonsView - 8) + 32))(a2, a1, ContactQuickActionButtonsView);
  return a2;
}

unint64_t sub_2669B2D5C()
{
  result = qword_2800AC5D0;
  if (!qword_2800AC5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC5C0, &qword_2669C8328);
    sub_26699A174(&qword_2800AC5D8, &qword_2800AC5E0, &qword_2669C8330);
    sub_26699A174(&qword_2800AC5E8, &qword_2800AC5F0, &qword_2669C8338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC5D0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  OUTLINED_FUNCTION_24_0();
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2(ContactQuickActionButtonsView);
  v6 = *(v5 + 64);
  v7 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  v8 = v7 + v0[5];
  v9 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v9))
  {
    OUTLINED_FUNCTION_14_1(v2);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_15_1();
    v13(v12);
  }

  v14 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#") + 28)];

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

void sub_2669B2FA4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_8_1();
  sub_2669AF9F0();
  OUTLINED_FUNCTION_23_0();
}

char *sub_2669B3008(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC790, &qword_2669C84E0);
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

void *sub_2669B3108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC798, &qword_2669C84E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void sub_2669B318C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC810, &qword_2669C85A0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2669B3288(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC830, qword_2669C85B8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_2669B3378(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC828, &qword_2669C85B0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

void *sub_2669B3468(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC798, &qword_2669C84E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC788, &qword_2669C84D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2669B35A0()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F24();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_2669B35D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2669C5F34();
}

uint64_t sub_2669B3600()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F04();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2669B366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5E0, &qword_2669C8330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B3724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669B376C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2669B4C30(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2669B3F6C(v5);
  *a1 = v2;
  return result;
}

void *sub_2669B37D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2669B3108(*(a1 + 16), 0);
  v4 = sub_2669B4AB0(&v6, v3 + 4, v1, a1);

  sub_2669B544C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2669B38C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2669B38FC()
{
  result = qword_2800AC6D8;
  if (!qword_2800AC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC660, &qword_2669C83C8);
    sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
    sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC6D8);
  }

  return result;
}

uint64_t sub_2669B39E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_0_7();
    sub_26699A174(v7, v8, v9);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2669B3A80()
{
  result = qword_2800AC6F0;
  if (!qword_2800AC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC638, &qword_2669C83A0);
    sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC6F0);
  }

  return result;
}

unint64_t sub_2669B3B30()
{
  result = qword_2800AC700;
  if (!qword_2800AC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC620, &qword_2669C8388);
    sub_26699A174(&qword_2800AC708, &qword_2800AC710, &qword_2669C8438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC700);
  }

  return result;
}

void sub_2669B3D1C()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  v1 = *(v0 + 80);
  sub_2669B0B94();
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_2669B3D94(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

void sub_2669B3DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2669B0C20();
}

unint64_t sub_2669B3E08()
{
  result = qword_2800AC740;
  if (!qword_2800AC740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC738, &qword_2669C84B0);
    sub_26699A174(&qword_2800AC748, &qword_2800AC750, &qword_2669C84B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC740);
  }

  return result;
}

uint64_t sub_2669B3F6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2669C6A74();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC788, &qword_2669C84D8);
        v6 = sub_2669C6784();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_2669B414C(v7, v8, a1, v4);
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
    return sub_2669B4070(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2669B4070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2669C6A94();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2669B414C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = result;
  v93 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        result = *v11;
        v12 = v11[1];
        v13 = (*a3 + 24 * v9);
        if (result == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          result = sub_2669C6A94();
          v15 = result;
        }

        v7 = v9 + 2;
        v16 = v10 + 24 * v9;
        v17 = 24 * v9;
        v18 = (v16 + 56);
        while (v7 < v6)
        {
          result = *(v18 - 1);
          if (result == *(v18 - 4) && *v18 == *(v18 - 3))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_2669C6A94();
            if ((v15 ^ result))
            {
              break;
            }
          }

          ++v7;
          v18 += 3;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v20 = 24 * v7;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v17);
              v25 = v23 + v20;
              v26 = *v24;
              v27 = *(v24 + 1);
              v28 = *(v25 - 24);
              v24[2] = *(v25 - 8);
              *v24 = v28;
              *(v25 - 24) = v26;
              *(v25 - 16) = v27;
            }

            ++v22;
            v20 -= 24;
            v17 += 24;
          }

          while (v22 < v21);
        }
      }

LABEL_28:
      v29 = a3[1];
      if (v7 < v29)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v29)
          {
            v30 = a3[1];
          }

          else
          {
            v30 = (v9 + a4);
          }

          if (v30 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v7 != v30)
          {
            v31 = *a3;
            v32 = *a3 + 24 * v7 - 24;
            v90 = v9;
            v33 = (v9 - v7);
            do
            {
              v34 = (v31 + 24 * v7);
              result = *v34;
              v35 = v34[1];
              v36 = v33;
              v37 = v32;
              do
              {
                if (result == *v37 && v35 == *(v37 + 8))
                {
                  break;
                }

                result = sub_2669C6A94();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_125;
                }

                v39 = *(v37 + 32);
                v40 = *(v37 + 16);
                result = *(v37 + 24);
                *(v37 + 24) = *v37;
                *(v37 + 40) = v40;
                *v37 = result;
                *(v37 + 8) = v39;
                v35 = v39;
                v37 -= 24;
              }

              while (!__CFADD__(v36++, 1));
              ++v7;
              v32 += 24;
              --v33;
            }

            while (v7 != v30);
            v7 = v30;
            v9 = v90;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2669B3008(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 16);
      v42 = *(v8 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_2669B3008((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v44;
      v45 = v8 + 32;
      v46 = (v8 + 32 + 16 * v43);
      *v46 = v9;
      v46[1] = v7;
      v91 = *v88;
      if (!*v88)
      {
        goto LABEL_128;
      }

      if (v43)
      {
        v89 = v8 + 32;
        while (1)
        {
          v47 = v44 - 1;
          v48 = (v45 + 16 * (v44 - 1));
          v49 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v50 = *(v8 + 32);
            v51 = *(v8 + 40);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_70:
            if (v53)
            {
              goto LABEL_110;
            }

            v65 = *v49;
            v64 = v49[1];
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_113;
            }

            v69 = v48[1];
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_118;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v47 = v44 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v44 < 2)
          {
            goto LABEL_112;
          }

          v72 = *v49;
          v71 = v49[1];
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_85:
          if (v68)
          {
            goto LABEL_115;
          }

          v74 = *v48;
          v73 = v48[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (v75 < v67)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v47 - 1 >= v44)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v79 = (v45 + 16 * (v47 - 1));
          v80 = *v79;
          v81 = v47;
          v82 = (v45 + 16 * v47);
          v83 = v82[1];
          result = sub_2669B47D4((*a3 + 24 * *v79), (*a3 + 24 * *v82), *a3 + 24 * v83, v91);
          if (v5)
          {
          }

          if (v83 < v80)
          {
            goto LABEL_105;
          }

          v84 = v8;
          v85 = *(v8 + 16);
          if (v81 > v85)
          {
            goto LABEL_106;
          }

          *v79 = v80;
          v79[1] = v83;
          if (v81 >= v85)
          {
            goto LABEL_107;
          }

          v44 = v85 - 1;
          result = memmove(v82, v82 + 2, 16 * (v85 - 1 - v81));
          *(v84 + 16) = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          v45 = v89;
          if (!v86)
          {
            goto LABEL_99;
          }
        }

        v54 = v45 + 16 * v44;
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_108;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_109;
        }

        v61 = v49[1];
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_111;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = v48[1];
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_119;
          }

          if (v52 < v78)
          {
            v47 = v44 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v93 = v8;
        break;
      }
    }
  }

  if (!*v88)
  {
    goto LABEL_129;
  }

  sub_2669B469C(&v93, *v88, a3);
}

uint64_t sub_2669B469C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2669B49C8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2669B47D4((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2669B47D4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2669C6A94() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2669C6A94() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2669B49DC(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2669C6654();

  return v3;
}

void sub_2669B4A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2669C6624();

  [a3 setAceId_];
}

uint64_t sub_2669B4AB0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t objectdestroy_82Tm()
{
  OUTLINED_FUNCTION_24_0();
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2(ContactQuickActionButtonsView);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v1 + v5;

  v9 = v1 + v5 + v0[5];
  v10 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v10))
  {
    OUTLINED_FUNCTION_14_1(v2);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
  }

  v15 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#") + 28));

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_2669B4DE8()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5EC4();
  *v0 = result;
  return result;
}

uint64_t sub_2669B4E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669B4EB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2669B00C0();
}

uint64_t sub_2669B4EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2669B018C(a1);
}

void sub_2669B4ECC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2669B0C20();
}

uint64_t sub_2669B4F38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_2_2(ContactQuickActionButtonsView);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_2669B4FC8()
{
  OUTLINED_FUNCTION_24_0();
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2(ContactQuickActionButtonsView);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);

  v8 = v1 + v5;
  v9 = v1 + v5 + v0[5];
  v10 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v10))
  {
    OUTLINED_FUNCTION_14_1(v2);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
  }

  v15 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#") + 28));

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

void sub_2669B50EC()
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_2_2(ContactQuickActionButtonsView);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_2669B0F90(v3, v4);
}

uint64_t sub_2669B5184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_2669B51E4()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0;
  v3 = v2;
  v4 = *(v1 + 80);
  v5 = *(v3 + 64);
  v6 = OUTLINED_FUNCTION_5_1((v4 + 16) & ~v4);

  sub_2669B05B4(v6);
}

void sub_2669B52AC()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0;
  v3 = v2;
  v4 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_5_1(v4);
  sub_2669B18BC();
}

uint64_t sub_2669B531C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2669B1CA4();
}

uint64_t sub_2669B5324@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2669B1D70(a1);
}

uint64_t sub_2669B5334()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F24();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void sub_2669B5368()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2669B0C20();
}

void sub_2669B53E8()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_8_1();
  v0(v3);
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_2669B546C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  v8 = OUTLINED_FUNCTION_5_1(v6);
  return a1(v8);
}

uint64_t sub_2669B5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v42 = a7;
  v36 = a2;
  v37 = a5;
  v39 = a1;
  v40 = a3;
  v38 = a9;
  v35 = sub_2669C5894();
  v43 = *(v35 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v35);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2669C5B54();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v34 - v25;
  (*(v20 + 32))(&v34 - v25, a4, a8);
  v27 = v36;
  (*(v15 + 16))(v19, v36, v14);
  v28 = v37;
  v29 = v35;
  (*(v43 + 16))(v13, v37, v35);
  (*(v20 + 16))(v24, v26, a8);
  sub_2669C14A4(v39, v19, v40, v24, v13, v41, v42, a8, v38, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v31 = v30;
  (*(v43 + 8))(v28, v29);
  (*(v15 + 8))(v27, v34);
  (*(v20 + 8))(v26, a8);
  return v31;
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

uint64_t OUTLINED_FUNCTION_2_6()
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v2 = *(ContactQuickActionButtonsView - 8);
  return ContactQuickActionButtonsView - 8;
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v2 = *(ContactQuickActionButtonsView - 8);
  return ContactQuickActionButtonsView - 8;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v3 = (v1 + ((*(v0 + 80) + 16) & ~*(v0 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *v10;

  return sub_2669B2C48(v9, &a9 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return sub_2669C6364();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_2669C5E74();
}

uint64_t sub_2669B5B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2669C5C14();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2669B5C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_2669C5C14();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ModifyContactAttributeConfirmationView()
{
  result = qword_2800AC838;
  if (!qword_2800AC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B5D94()
{
  sub_26699ADCC();
  if (v0 <= 0x3F)
  {
    sub_26699AD38();
    if (v1 <= 0x3F)
    {
      sub_2669C5C14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2669B5E4C@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v2 = sub_2669C5BB4();
  v3 = OUTLINED_FUNCTION_0_8(v2, v135);
  v112 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_2(&v93 - v8);
  v9 = sub_2669C6444();
  v10 = OUTLINED_FUNCTION_0_8(v9, &v141);
  v127 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_2(&v93 - v15);
  v16 = sub_2669C6474();
  v17 = OUTLINED_FUNCTION_0_8(v16, &v139);
  v124 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_2(&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ModifyContactAttributeConfirmationView();
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v106 = v25;
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC878, &qword_2669C8680);
  v123 = *(v27 - 8);
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC880, &qword_2669C8688);
  v32 = OUTLINED_FUNCTION_0_8(v31, &v140);
  v126 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  v94 = &v93 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC888, &unk_2669C8690);
  v39 = OUTLINED_FUNCTION_0_8(v38, v131);
  v125 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  v100 = &v93 - v44;
  OUTLINED_FUNCTION_2_7();
  v107 = v45;
  v119 = v1;
  v103 = v26;
  sub_2669B77D4(v1, v26, v46);
  v105 = *(v24 + 80);
  v47 = (v105 + 16) & ~v105;
  v104 = v47;
  v48 = swift_allocObject();
  sub_2669B7700(v26, v48 + v47);
  v129 = v1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v132 = MEMORY[0x277CE0BD8];
  v133 = MEMORY[0x277CE0BC8];
  v101 = OUTLINED_FUNCTION_7_1();
  v97 = v30;
  sub_2669C6364();
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v49 = v120;
  sub_2669C5FC4();
  v118 = sub_26699A174(&qword_2800AC890, &qword_2800AC878, &qword_2669C8680);
  v50 = sub_2669B787C(&qword_2800AC898, MEMORY[0x277D63B78]);
  v51 = v121;
  v96 = v50;
  sub_2669C6214();
  OUTLINED_FUNCTION_8_2(&v143);
  v124 = v52;
  v99 = v53;
  v54 = v51;
  v53(v49, v51);
  OUTLINED_FUNCTION_8_2(&v142);
  v123 = v55;
  v98 = v56;
  v57 = v27;
  v95 = v27;
  v56(v30, v27);
  v58 = v119 + *(v23 + 32);
  v59 = v109;
  sub_2669C5BC4();
  v60 = v112;
  v61 = v111;
  v62 = v113;
  (v112[13])(v111, *MEMORY[0x277D55AC8], v113);
  LOBYTE(v58) = sub_2669C5BA4();
  v63 = v60[1];
  v63(v61, v62);
  v63(v59, v62);
  v64 = v127;
  v65 = *(v127 + 104);
  v113 = v65;
  v66 = MEMORY[0x277D63A78];
  if ((v58 & 1) == 0)
  {
    v66 = MEMORY[0x277D63A90];
  }

  v67 = v110;
  v68 = v122;
  v65(v110, *v66, v122);
  v132 = v57;
  v133 = v54;
  v134 = v118;
  v135[0] = v50;
  v69 = OUTLINED_FUNCTION_7_1();
  v70 = v100;
  OUTLINED_FUNCTION_6_2();
  v71 = v94;
  sub_2669C6184();
  v72 = *(v64 + 8);
  v127 = v64 + 8;
  v112 = v72;
  (v72)(v67, v68);
  OUTLINED_FUNCTION_8_2(&v145);
  v126 = v73;
  v111 = v74;
  v74(v71, v59);
  v132 = v59;
  v133 = v69;
  OUTLINED_FUNCTION_7_1();
  v75 = v108;
  v76 = sub_2669C6174();
  OUTLINED_FUNCTION_8_2(&v144);
  v125 = v77;
  v110 = v78;
  v78(v70, v75);
  v135[0] = MEMORY[0x277CE11C8];
  v135[1] = MEMORY[0x277D63A60];
  v132 = v76;
  v79 = v119;
  v80 = v103;
  sub_2669B77D4(v119, v103, v107);
  v81 = v104;
  v82 = swift_allocObject();
  sub_2669B7700(v80, v82 + v81);
  v128 = v79;
  v83 = v97;
  sub_2669C6364();
  v84 = v120;
  sub_2669C5FC4();
  v85 = v115;
  v86 = v95;
  v87 = v121;
  sub_2669C6214();
  v99(v84, v87);
  v98(v83, v86);
  v88 = v116;
  v89 = v122;
  v113(v116, *MEMORY[0x277D63A88], v122);
  v90 = v114;
  OUTLINED_FUNCTION_6_2();
  sub_2669C6184();
  (v112)(v88, v89);
  v111(v85, v87);
  v91 = sub_2669C6174();
  v110(v90, v75);
  v131[1] = MEMORY[0x277D63A60];
  v131[0] = MEMORY[0x277CE11C8];
  v130 = v91;
  return sub_2669C6494();
}

uint64_t sub_2669B68E4(uint64_t a1)
{
  v2 = sub_2669C5854();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1 + *(type metadata accessor for ModifyContactAttributeConfirmationView() + 24);
  sub_2669C5BF4();
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277D55978])
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 96))(v6, v2);
  v8 = *v6;
  v9 = v6[1];
  sub_26699BE4C(v6[2], v6[3]);
  sub_2669B6A34(v8, v9);
  return sub_26699BE4C(v8, v9);
}

void sub_2669B6A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v4 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266996000, oslog, v4, "#GetContactAttributeButtonableView could not obtain direct invocation for button press", v5, 2u);
      MEMORY[0x26D5E4D50](v5, -1, -1);
    }

LABEL_16:

    return;
  }

  sub_26699BEF0();
  sub_26699BF34(a1, a2);
  v8 = sub_2669C6844();
  if (!v8)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v12 = sub_2669C5C94();
    __swift_project_value_buffer(v12, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v13 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266996000, oslog, v13, "#GetContactAttributeButtonableView could not convert direct invocation to actionable command", v14, 2u);
      MEMORY[0x26D5E4D50](v14, -1, -1);
    }

    sub_26699BE4C(a1, a2);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = v2 + *(type metadata accessor for ModifyContactAttributeConfirmationView() + 20);
  if (*v10)
  {
    v11 = *v10;
    sub_2669C65C4();

    sub_26699BE4C(a1, a2);
  }

  else
  {
    v15 = *(v10 + 8);
    sub_2669C65D4();
    sub_2669B787C(&qword_2800AC010, MEMORY[0x277D63F60]);
    sub_2669C5E74();
    __break(1u);
  }
}

uint64_t sub_2669B6CEC(uint64_t a1)
{
  v2 = sub_2669C5854();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1 + *(type metadata accessor for ModifyContactAttributeConfirmationView() + 24);
  sub_2669C5BF4();
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277D55978])
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 96))(v6, v2);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  sub_26699BE4C(v8, v9);
  sub_2669B6A34(v10, v11);
  return sub_26699BE4C(v10, v11);
}

uint64_t sub_2669B6E3C(uint64_t a1, void (*a2)(void))
{
  v3 = *(type metadata accessor for ModifyContactAttributeConfirmationView() + 24);
  a2();
  sub_266999FC4();
  v4 = sub_2669C6164();
  v6 = v5;
  v8 = v7 & 1;
  sub_2669C6254();
  sub_26699A018(v4, v6, v8);
}

uint64_t sub_2669B6F04()
{
  v1 = type metadata accessor for ModifyContactAttributeConfirmationView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2_7();
  sub_2669B77D4(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_2669B7700(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC848, &qword_2669C8660);
  sub_26699A174(&qword_2800AC850, &qword_2800AC848, &qword_2669C8660);
  return sub_2669C6484();
}

uint64_t sub_2669B7058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v66 = a2;
  v60 = sub_2669C5814();
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2669C64A4();
  v62 = *(v59 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC858, &qword_2669C8668);
  v65 = *(v63 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v54 = &v51 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC860, &qword_2669C8670);
  v61 = *(v64 - 8);
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v64);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v12;
  v13 = sub_2669C60E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ModifyContactAttributeBodyView();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v52 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (&v51 - v23);
  v25 = *(type metadata accessor for ModifyContactAttributeConfirmationView() + 24);
  v26 = v19[9];
  v27 = sub_2669C5C14();
  (*(*(v27 - 8) + 16))(v24 + v26, a1 + v25, v27);
  sub_2669C65D4();
  sub_2669B787C(&qword_2800AC010, MEMORY[0x277D63F60]);
  *v24 = sub_2669C5E84();
  v24[1] = v28;
  v29 = v19[7];
  v67 = 0x402E000000000000;
  v30 = *MEMORY[0x277CE0A68];
  v31 = *(v14 + 104);
  v31(v17, v30, v13);
  sub_26699BF8C();
  sub_2669C5D84();
  v32 = v19[8];
  v67 = 0x4031000000000000;
  v31(v17, v30, v13);
  sub_2669C5D84();
  v33 = v53;
  sub_2669B5E4C(v53);
  v35 = v56;
  v34 = v57;
  v36 = v60;
  (*(v57 + 104))(v56, *MEMORY[0x277D62F38], v60);
  v37 = sub_2669B787C(&qword_2800AC868, MEMORY[0x277D63C38]);
  v38 = v54;
  v39 = v59;
  sub_2669C6194();
  (*(v34 + 8))(v35, v36);
  (*(v62 + 8))(v33, v39);
  v67 = v39;
  v68 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v55;
  v41 = v63;
  sub_2669C61B4();
  (*(v65 + 8))(v38, v41);
  v42 = v52;
  sub_2669B77D4(v24, v52, type metadata accessor for ModifyContactAttributeBodyView);
  v43 = v61;
  v44 = *(v61 + 16);
  v45 = v58;
  v46 = v64;
  v44(v58, v40, v64);
  v47 = v66;
  sub_2669B77D4(v42, v66, type metadata accessor for ModifyContactAttributeBodyView);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC870, &qword_2669C8678);
  v44((v47 + *(v48 + 48)), v45, v46);
  v49 = *(v43 + 8);
  v49(v40, v46);
  sub_26699C0CC(v24);
  v49(v45, v46);
  return sub_26699C0CC(v42);
}

uint64_t sub_2669B7700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B7764@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModifyContactAttributeConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2669B7058(v4, a1);
}

uint64_t sub_2669B77D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669B787C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ModifyContactAttributeConfirmationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2669C5D44();
    OUTLINED_FUNCTION_0(v6);
    (*(v7 + 8))(v0 + v3);
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v1 + 24);
  v10 = sub_2669C5C14();
  OUTLINED_FUNCTION_0(v10);
  (*(v11 + 8))(&v5[v9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669B7A28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ModifyContactAttributeConfirmationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t OUTLINED_FUNCTION_0_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  result = v0;
  v3 = *(v1 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669B7BAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2669C5C14();
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2669B7CA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5C14();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ModifyContactAttributeBodyView()
{
  result = qword_2800AC8B0;
  if (!qword_2800AC8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B7DC4()
{
  sub_26699AD38();
  if (v0 <= 0x3F)
  {
    sub_2669A2C2C();
    if (v1 <= 0x3F)
    {
      sub_2669C5C14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_2669B7E7C()
{
  v1 = v0 + *(type metadata accessor for ModifyContactAttributeBodyView() + 28);
  v2 = sub_2669C5BD4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

uint64_t sub_2669B7ED4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for ModifyContactAttributeBodyView() + 28);
  v9 = sub_2669C5BD4();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    return sub_2669C5BD4();
  }

  sub_2669C5BE4();
  v14 = sub_2669C5964();
  (*(v2 + 8))(v7, v0);
  v15 = sub_2669C6924();

  return v15;
}

uint64_t sub_2669B800C()
{
  v1 = type metadata accessor for ModifyContactAttributeBodyView();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = sub_2669C5BB4();
  v8 = OUTLINED_FUNCTION_2(v7);
  v110 = v9;
  v111 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v108 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  OUTLINED_FUNCTION_2_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v18);
  v20 = v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8D0, qword_2669C8750);
  OUTLINED_FUNCTION_2(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v26);
  v107 = v100 - v27;
  v106 = *(v1 + 28);
  v28 = sub_2669BB520();
  v29 = sub_2669B7ED4();
  if (v28)
  {
    v101 = v4;
    v102 = v23;
    v103 = v6;
    v104 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v105 = v21;
    v112 = v29;
    v113 = v30;
    sub_266999FC4();
    sub_2669C6164();
    OUTLINED_FUNCTION_7_2();
    v31 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v32 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v20, v33, v34, v32);
    sub_2669C60C4();
    sub_2669B913C(v20);
    v35 = sub_2669C6154();
    v37 = v36;
    LOBYTE(v31) = v38;

    v39 = OUTLINED_FUNCTION_6_3();
    sub_26699A018(v39, v40, v41);

    sub_2669C60B4();
    v100[0] = sub_2669C6124();
    v43 = v42;
    v45 = v44;
    v100[1] = v46;
    sub_26699A018(v35, v37, v31 & 1);

    if (!sub_2669B7E7C())
    {
      v47 = v109;
      sub_2669C5BC4();
      v49 = v110;
      v48 = v111;
      v50 = v108;
      (*(v110 + 104))(v108, *MEMORY[0x277D55AC8], v111);
      sub_2669C5BA4();
      v51 = *(v49 + 8);
      v51(v50, v48);
      v51(v47, v48);
    }

    v52 = v100[0];
    v53 = sub_2669C6114();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_26699A018(v52, v43, v45 & 1);

    v112 = v53;
    v113 = v55;
    v114 = v57 & 1;
    v115 = v59;
    v60 = v104;
    sub_2669B91EC(v0, v104);
    v61 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v62 = swift_allocObject();
    sub_2669B93AC(v60, v62 + v61);
    v63 = MEMORY[0x277CE0BD8];
    v64 = MEMORY[0x277CE0BC8];
    v65 = v107;
    sub_2669C6234();

    sub_26699A018(v53, v55, v57 & 1);

    v112 = v63;
    v113 = v64;
    swift_getOpaqueTypeConformance2();
    v66 = v105;
    v67 = sub_2669C6174();
    (*(v102 + 8))(v65, v66);
  }

  else
  {
    v112 = v29;
    v113 = v30;
    sub_266999FC4();
    sub_2669C6164();
    OUTLINED_FUNCTION_7_2();
    v68 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v69 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v20, v70, v71, v69);
    sub_2669C60C4();
    sub_2669B913C(v20);
    v72 = sub_2669C6154();
    v74 = v73;
    v76 = v75;

    v77 = OUTLINED_FUNCTION_6_3();
    sub_26699A018(v77, v78, v79);

    sub_2669C60B4();
    v80 = sub_2669C6124();
    v82 = v81;
    v84 = v83;
    v107 = v85;
    sub_26699A018(v72, v74, v76 & 1);

    if (!sub_2669B7E7C())
    {
      v86 = v109;
      sub_2669C5BC4();
      v88 = v110;
      v87 = v111;
      v89 = v108;
      (*(v110 + 104))(v108, *MEMORY[0x277D55AC8], v111);
      sub_2669C5BA4();
      v90 = *(v88 + 8);
      v90(v89, v87);
      v90(v86, v87);
    }

    v91 = sub_2669C6114();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    sub_26699A018(v80, v82, v84 & 1);

    v112 = v91;
    v113 = v93;
    v98 = v95 & 1;
    v114 = v95 & 1;
    v115 = v97;
    v67 = sub_2669C6174();
    sub_26699A018(v91, v93, v98);
  }

  return v67;
}

uint64_t sub_2669B879C(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for ModifyContactAttributeBodyView() + 28);
  v3 = sub_2669C5B94();
  if (*a1)
  {
    v5 = v3;
    v6 = v4;
    v7 = *a1;
    sub_26699AE40(v5, v6, v7);

    return sub_26699BE4C(v5, v6);
  }

  else
  {
    v9 = *(a1 + 8);
    sub_2669C65D4();
    sub_2669B91A4(&qword_2800AC010, MEMORY[0x277D63F60]);
    result = sub_2669C5E74();
    __break(1u);
  }

  return result;
}

uint64_t sub_2669B8888()
{
  sub_2669C5FE4();
  v0 = sub_2669C6144();
  v2 = v1;
  v4 = v3;
  sub_2669C6134();
  OUTLINED_FUNCTION_7_2();
  sub_26699A018(v0, v2, v4 & 1);

  return OUTLINED_FUNCTION_6_3();
}

uint64_t sub_2669B8958@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v99 = sub_2669C5814();
  v2 = OUTLINED_FUNCTION_2(v99);
  v97 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = sub_2669C5844();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  OUTLINED_FUNCTION_2_2(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  v17 = v90 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2(v101);
  v100 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v21);
  v23 = v90 - v22;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  OUTLINED_FUNCTION_2(v92);
  v91 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1(v90 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8C0, &qword_2669C8748);
  OUTLINED_FUNCTION_2(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v34);
  v36 = v90 - v35;
  v95 = sub_2669C6544();
  v37 = OUTLINED_FUNCTION_2(v95);
  v94 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v41);
  v42 = sub_2669B7E7C();
  v102 = v1;
  v43 = sub_2669B800C();
  v44 = v43;
  v45 = MEMORY[0x277CE11C8];
  if (v42)
  {
    v115 = v43;
    v46 = MEMORY[0x277CE11C0];
    sub_2669C6254();

    v115 = v45;
    v116 = v46;
    OUTLINED_FUNCTION_2_8();
    swift_getOpaqueTypeConformance2();
    v44 = sub_2669C6174();
    (*(v31 + 8))(v36, v29);
  }

  v117 = v45;
  v118 = MEMORY[0x277D63A60];
  v114 = 0;
  v115 = v44;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v47 = v102;
  v48 = sub_2669B7E7C();
  v49 = v101;
  if (v48)
  {
    v50 = 0;
    v51 = 0;
    v105 = 0;
    v104 = 0;
    v106 = 0;
    v52 = v100;
  }

  else
  {
    v53 = type metadata accessor for ModifyContactAttributeBodyView();
    v54 = v47 + *(v53 + 28);
    sub_2669C5BE4();
    v55 = sub_2669C5964();
    (*(v100 + 8))(v23, v49);
    v56 = sub_2669C6924();
    v58 = v57;

    v104 = v56;
    v105 = v58;
    sub_266999FC4();
    v59 = sub_2669C6164();
    v61 = v60;
    LOBYTE(v56) = v62;
    v63 = *(v53 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v64 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v17, v65, v66, v64);
    sub_2669C60C4();
    sub_2669B913C(v17);
    v67 = sub_2669C6154();
    v69 = v68;
    v71 = v70;
    v73 = v72;

    sub_26699A018(v59, v61, v56 & 1);

    v104 = v67;
    v105 = v69;
    LOBYTE(v106) = v71 & 1;
    v107 = v73;
    v74 = MEMORY[0x277CE0BD8];
    v75 = MEMORY[0x277CE0BC8];
    v76 = v90[1];
    sub_2669C6254();
    sub_26699A018(v67, v69, v71 & 1);
    v47 = v102;

    v104 = v74;
    v49 = v101;
    v105 = v75;
    v52 = v100;
    OUTLINED_FUNCTION_2_8();
    swift_getOpaqueTypeConformance2();
    v77 = v92;
    v78 = sub_2669C6174();
    (*(v91 + 8))(v76, v77);
    v104 = v78;
    v51 = MEMORY[0x277D63A60];
    v50 = MEMORY[0x277CE11C8];
  }

  v107 = v50;
  v108 = v51;
  v79 = v47 + *(type metadata accessor for ModifyContactAttributeBodyView() + 28);
  sub_2669C5BE4();
  v80 = sub_2669C5964();
  (*(v52 + 8))(v23, v49);
  v81 = [v80 identifier];

  sub_2669C6654();
  sub_2669C5834();

  v103[3] = sub_2669C6454();
  v103[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v103);
  sub_2669C6464();
  v82 = v93;
  sub_2669C6534();
  v83 = v97;
  v84 = v96;
  v85 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x277D62F38], v99);
  OUTLINED_FUNCTION_1_7();
  sub_2669B91A4(v86, v87);
  v88 = v95;
  sub_2669C6194();
  (*(v83 + 8))(v84, v85);
  return (*(v94 + 8))(v82, v88);
}

uint64_t sub_2669B913C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669B91A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669B91EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeBodyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B9250()
{
  v1 = (type metadata accessor for ModifyContactAttributeBodyView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);
  v8 = v1[9];
  v9 = sub_2669C5C14();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669B93AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeBodyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B9410()
{
  v1 = type metadata accessor for ModifyContactAttributeBodyView();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2669B879C(v3);
}

uint64_t sub_2669B946C()
{
  sub_2669C6544();
  OUTLINED_FUNCTION_1_7();
  sub_2669B91A4(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669B9574()
{
  v0 = sub_2669C60E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0x4028000000000000;
  v5 = *MEMORY[0x277CE0A68];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_26699BF8C();
  sub_2669C5D84();
  v7 = *(type metadata accessor for GetContactQuickActionButtonLabelStyle(0) + 20);
  v10 = 0x4030000000000000;
  v6(v4, v5, v0);
  return sub_2669C5D84();
}

uint64_t sub_2669B9704()
{
  OUTLINED_FUNCTION_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2669B9768()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v0 = OUTLINED_FUNCTION_0_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2669B97C4()
{
  OUTLINED_FUNCTION_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2669B9828()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v0 = OUTLINED_FUNCTION_0_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_2669B9890()
{
  sub_2669A2C2C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2669B9918@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2669C5F94();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8F8, &unk_2669C8840);
  return sub_2669B997C(a1 + *(v2 + 44));
}

uint64_t sub_2669B997C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC900, &qword_2669C8850);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC908, &qword_2669C8858);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  sub_2669C6004();
  v20 = *(type metadata accessor for GetContactQuickActionButtonLabelStyle(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v21 = &v19[*(v13 + 44)];
  v22 = v35;
  *v21 = v34;
  *(v21 + 1) = v22;
  *(v21 + 2) = v36;
  sub_2669C6014();
  sub_2669C5D94();
  v23 = sub_2669C60A4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v23);
  v24 = sub_2669C60C4();
  sub_2669B9E20(v4, &qword_2800AC2E8, &qword_2669C81D0);
  KeyPath = swift_getKeyPath();
  v26 = &v11[*(v6 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_2669B9DB8(v19, v17, &qword_2800AC908, &qword_2669C8858);
  v27 = v32;
  sub_2669B9DB8(v11, v32, &qword_2800AC900, &qword_2669C8850);
  v28 = v33;
  sub_2669B9DB8(v17, v33, &qword_2800AC908, &qword_2669C8858);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC910, &qword_2669C8890);
  sub_2669B9DB8(v27, v28 + *(v29 + 48), &qword_2800AC900, &qword_2669C8850);
  sub_2669B9E20(v11, &qword_2800AC900, &qword_2669C8850);
  sub_2669B9E20(v19, &qword_2800AC908, &qword_2669C8858);
  sub_2669B9E20(v27, &qword_2800AC900, &qword_2669C8850);
  return sub_2669B9E20(v17, &qword_2800AC908, &qword_2669C8858);
}

double sub_2669B9CE0@<D0>(uint64_t a1@<X8>)
{
  sub_2669C6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC908, &qword_2669C8858) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_2669B9DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2669B9E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2669B9E84()
{
  result = qword_2800AC918;
  if (!qword_2800AC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC920, &qword_2669C8898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC918);
  }

  return result;
}

unint64_t sub_2669B9EEC()
{
  result = qword_2800AC928;
  if (!qword_2800AC928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC908, &qword_2669C8858);
    sub_2669B9F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC928);
  }

  return result;
}

unint64_t sub_2669B9F78()
{
  result = qword_2800AC930;
  if (!qword_2800AC930)
  {
    sub_2669C5FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC930);
  }

  return result;
}

uint64_t sub_2669B9FE4()
{
  v1 = sub_2669C5A94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for GetContactAttributeAgeView() + 20);
  v7 = *(type metadata accessor for GetContactAttributeViewModel() + 20);
  result = MEMORY[0x26D5E3750]();
  if (*(result + 16))
  {
    (*(v2 + 16))(v5, result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

    v9 = sub_2669C5A64();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    if (v11)
    {
      return v9;
    }

    else
    {
      return 48;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GetContactAttributeAgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView();
  v3 = ContactAttributeAgeView - 8;
  v87 = *(ContactAttributeAgeView - 8);
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](ContactAttributeAgeView);
  v88 = v5;
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2669C5844();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_6();
  v86 = v8;
  v9 = sub_2669C5A94();
  v10 = OUTLINED_FUNCTION_2(v9);
  v78 = v11;
  v79 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_6();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v93 = OUTLINED_FUNCTION_2(v23);
  v94 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v93);
  v28 = &v77 - v27;
  v29 = sub_2669C6584();
  v30 = OUTLINED_FUNCTION_2(v29);
  v82 = v31;
  v83 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_6();
  v81 = v34;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC938, &unk_2669C88A0);
  v35 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - v36;
  v37 = sub_2669B9FE4();
  v114 = MEMORY[0x277D837D0];
  v115 = MEMORY[0x277D63F90];
  v112 = v37;
  v113 = v38;
  v39 = *(v3 + 28);
  v90 = v1;
  v92 = v1 + v39;
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v40 = *(ContactAttributeViewModel + 20);
  sub_2669C5AE4();
  v41 = sub_2669C5964();
  (*(v18 + 8))(v22, v15);
  v42 = sub_2669C6924();
  v44 = v43;

  v107 = v42;
  v108 = v44;
  sub_266999FC4();
  v45 = sub_2669C6164();
  v47 = v46;
  v107 = v45;
  v108 = v46;
  v49 = v48 & 1;
  v109 = v48 & 1;
  v110 = v50;
  v51 = MEMORY[0x277CE0BD8];
  v52 = MEMORY[0x277CE0BC8];
  sub_2669C6254();
  v53 = v45;
  v54 = v92;
  sub_26699A018(v53, v47, v49);

  v107 = v51;
  v108 = v52;
  swift_getOpaqueTypeConformance2();
  v55 = v93;
  v56 = sub_2669C6174();
  v57 = (*(v94 + 8))(v28, v55);
  v110 = MEMORY[0x277CE11C8];
  v111 = MEMORY[0x277D63A68];
  v107 = v56;
  result = MEMORY[0x26D5E3750](v57);
  if (*(result + 16))
  {
    v60 = v77;
    v59 = v78;
    v61 = v79;
    (*(v78 + 16))(v77, result + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v79);

    v62 = sub_2669C5A54();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (v64)
    {
      v65 = MEMORY[0x277D63F90];
      v66 = MEMORY[0x277D837D0];
    }

    else
    {
      v62 = 0;
      v66 = 0;
      v65 = 0;
      v104 = 0;
    }

    v102 = v62;
    v103 = v64;
    v105 = v66;
    v106 = v65;
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v67 = sub_2669C4E90();
    if (v68)
    {
      v69 = MEMORY[0x277D63F90];
      v70 = MEMORY[0x277D837D0];
    }

    else
    {
      v67 = 0;
      v70 = 0;
      v69 = 0;
      v95[7] = 0;
    }

    v95[5] = v67;
    v95[6] = v68;
    v95[8] = v70;
    v95[9] = v69;
    sub_2669C5AC4();
    sub_2669C5834();

    v95[3] = sub_2669C6454();
    v95[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v95);
    sub_2669C6464();
    v71 = v81;
    sub_2669C6574();
    v72 = *(v54 + *(ContactAttributeViewModel + 28));
    v73 = v84;
    (*(v82 + 32))(v84, v71, v83);
    *(v73 + *(v85 + 36)) = v72;
    v74 = v89;
    sub_2669BAB88(v90, v89);
    v75 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v76 = swift_allocObject();
    sub_2669BAD4C(v74, v76 + v75);
    sub_2669BAE10();

    sub_2669C6234();

    return sub_2669BAF58(v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for GetContactAttributeAgeView()
{
  result = qword_2800AC950;
  if (!qword_2800AC950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669BA814(uint64_t a1)
{
  v2 = sub_2669C65A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2669C5B54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for GetContactAttributeAgeView() + 20);
  v13 = v12 + *(type metadata accessor for GetContactAttributeViewModel() + 20);
  sub_2669C5A34();
  v14 = sub_2669C5B24();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  if (v16 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v17 = sub_2669C5C94();
    __swift_project_value_buffer(v17, qword_2800ACC88);
    v18 = sub_2669C5C74();
    v19 = sub_2669C6864();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266996000, v18, v19, "#GetContactAttributeAgeView could not obtain direct invocation for button press", v20, 2u);
      MEMORY[0x26D5E4D50](v20, -1, -1);
    }
  }

  else
  {
    sub_26699BEF0();
    v21 = sub_2669C6844();
    if (v21)
    {
      v22 = v21;
      sub_2669C64D4();
      v23 = v22;
      sub_2669C6594();

      sub_26699BE4C(v14, v16);
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v24 = sub_2669C5C94();
      __swift_project_value_buffer(v24, qword_2800ACC88);
      v25 = sub_2669C5C74();
      v26 = sub_2669C6864();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_266996000, v25, v26, "#GetContactAttributeAgeView could not convert direct invocation to actionable command", v27, 2u);
        MEMORY[0x26D5E4D50](v27, -1, -1);
      }

      sub_26699BE4C(v14, v16);
    }
  }
}

uint64_t sub_2669BAB88(uint64_t a1, uint64_t a2)
{
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView();
  (*(*(ContactAttributeAgeView - 8) + 16))(a2, a1, ContactAttributeAgeView);
  return a2;
}

uint64_t sub_2669BABEC()
{
  v1 = (type metadata accessor for GetContactAttributeAgeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2669C64F4();
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = (v0 + v3 + v1[7]);
  __swift_destroy_boxed_opaque_existential_0(v7);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v9 = ContactAttributeViewModel[5];
  v10 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 8))(v7 + v9);
  v12 = ContactAttributeViewModel[6];
  v13 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v13);
  (*(v14 + 8))(v7 + v12);
  v15 = *(v7 + ContactAttributeViewModel[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669BAD4C(uint64_t a1, uint64_t a2)
{
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView();
  (*(*(ContactAttributeAgeView - 8) + 32))(a2, a1, ContactAttributeAgeView);
  return a2;
}

void sub_2669BADB0()
{
  v1 = *(type metadata accessor for GetContactAttributeAgeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2669BA814(v2);
}

unint64_t sub_2669BAE10()
{
  result = qword_2800AC940;
  if (!qword_2800AC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC938, &unk_2669C88A0);
    sub_2669BAE9C();
    sub_2669BAEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC940);
  }

  return result;
}

unint64_t sub_2669BAE9C()
{
  result = qword_2800AC948;
  if (!qword_2800AC948)
  {
    sub_2669C6584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC948);
  }

  return result;
}

unint64_t sub_2669BAEF4()
{
  result = qword_2800AC168;
  if (!qword_2800AC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC170, &qword_2669C7BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC168);
  }

  return result;
}

uint64_t sub_2669BAF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC938, &unk_2669C88A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669BAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2669C64F4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    ContactAttributeViewModel = v6;
    v8 = a1;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, ContactAttributeViewModel);
}

uint64_t sub_2669BB0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2669C64F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    ContactAttributeViewModel = v8;
    v10 = a1;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, ContactAttributeViewModel);
}

uint64_t sub_2669BB148()
{
  result = sub_2669C64F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GetContactAttributeViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2669BB1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC938, &unk_2669C88A0);
  sub_2669BAE10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669BB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2669BB76C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_9(v4);
  return v3;
}

uint64_t sub_2669BB284(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2669BB7E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_9(v3);
  return v2;
}

void *sub_2669BB2CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2669BB6D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_2669BB314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2669BB76C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_2669BB37C(unsigned int *a1)
{
  v2 = sub_2669C5864();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v10 = v9 - v8;
  v11 = sub_2669C5894();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v19 = v18 - v17;
  v20 = sub_2669C5C04();
  v21 = MEMORY[0x26D5E3530](v20);
  (*(v14 + 8))(v19, v11);
  (*(v5 + 104))(v10, *a1, v2);
  v22 = sub_2669BB284(v10, v21);
  v24 = v23;

  (*(v5 + 8))(v10, v2);
  if (!v24)
  {
    return sub_2669C66D4();
  }

  return v22;
}

BOOL sub_2669BB520()
{
  v0 = sub_2669C5B74();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = sub_2669C5854();
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v17 = v16 - v15;
  sub_2669C5BF4();
  v18 = (*(v12 + 88))(v17, v9);
  v19 = *MEMORY[0x277D55970];
  (*(v12 + 8))(v17, v9);
  if (v18 != v19)
  {
    return 0;
  }

  sub_2669C5B64();
  v20 = (*(v3 + 88))(v8, v0) == *MEMORY[0x277D55AB0];
  (*(v3 + 8))(v8, v0);
  return v20;
}

unint64_t sub_2669BB6D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2669C6654();
  sub_2669C6AC4();
  sub_2669C66F4();
  v4 = sub_2669C6AD4();

  return sub_2669BB868(a1, v4);
}

unint64_t sub_2669BB76C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2669C6AC4();
  sub_2669C66F4();
  v6 = sub_2669C6AD4();

  return sub_2669BB960(a1, a2, v6);
}

unint64_t sub_2669BB7E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2669C5864();
  sub_2669BBBBC(&qword_2800AC960);
  v5 = sub_2669C6604();

  return sub_2669BBA14(a1, v5);
}

unint64_t sub_2669BB868(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_2669C6654();
    v8 = v7;
    if (v6 == sub_2669C6654() && v8 == v9)
    {

      return i;
    }

    v11 = sub_2669C6A94();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2669BB960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2669C6A94() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2669BBA14(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2669C5864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2669BBBBC(&qword_2800AC968);
    v10 = sub_2669C6614();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2669BBBBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2669C5864();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

void sub_2669BBC20()
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v4 = sub_2669C5894();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  v8 = sub_2669C5B54();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v30[-1] - v21;
  sub_2669C59F4();
  v23 = sub_2669C5964();
  (*(v17 + 8))(v22, v15);
  sub_2669C59C4();
  if (sub_2669C59D4())
  {
    v24 = sub_2669C62D4();
  }

  else
  {
    v24 = sub_2669C62C4();
  }

  v25 = v24;
  sub_2669C5A04();
  v26 = [objc_opt_self() sharedInstance];
  v30[3] = sub_26699F8F0(0, &qword_2800ACAF0, 0x277D6EDF8);
  v30[4] = &off_28782C1C0;
  v30[0] = v26;
  (*(v0 + 488))(v23, v14, v25, v30, v1, [objc_allocWithZone(MEMORY[0x277CFBF28]) init]);
  v27 = sub_2669C5A14();
  OUTLINED_FUNCTION_0_1(v27);
  (*(v28 + 8))(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669BBE7C(uint64_t *a1)
{
  v2 = *a1;
  sub_2669BBF38();
  v3 = OUTLINED_FUNCTION_31_0();
  v4 = sub_2669BB2CC(v3, v1);

  if (!v4 || (v5 = [v4 array], v4, v6 = sub_2669C6764(), v5, v7 = sub_2669BE878(v6), , !v7))
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_2669BBFC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2669C5CD4();

  return v1;
}

uint64_t sub_2669BC044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2669C5CE4();
}

uint64_t sub_2669BC0E8(unsigned int *a1)
{
  v3 = sub_2669C5864();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  v9 = MEMORY[0x26D5E3530]();
  (*(v6 + 104))(v1, *a1, v3);
  v10 = sub_2669BB284(v1, v9);
  v12 = v11;

  (*(v6 + 8))(v1, v3);
  if (!v12)
  {
    return sub_2669C66D4();
  }

  return v10;
}

uint64_t sub_2669BC1FC(uint64_t a1)
{
  v3 = sub_2669C5954();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  (*(v6 + 16))(v1, a1, v3);
  v9 = *(v6 + 88);
  v10 = OUTLINED_FUNCTION_45();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D55A28])
  {
    return sub_2669BC0D0();
  }

  if (v12 == *MEMORY[0x277D55A18])
  {
    return sub_2669BC0AC();
  }

  if (v12 == *MEMORY[0x277D55A38])
  {
    return sub_2669BC0DC();
  }

  if (v12 == *MEMORY[0x277D55A20])
  {
    return sub_2669BC0C4();
  }

  if (v12 == *MEMORY[0x277D55A30])
  {
    return sub_2669BC0B8();
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

uint64_t sub_2669BC35C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  OUTLINED_FUNCTION_2_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v19[1] = MEMORY[0x277D84F98];
  sub_2669BC4C4();
  sub_2669BE194();
  sub_2669BBF4C();
  sub_2669C67C4();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_51(v6);
  v7 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v7, v8, v5, v9, v6);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_51(v10);
  v11 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v11, v12, v5, v13, v10);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_51(v14);
  v15 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v15, v16, v5, v17, v14);
}

void sub_2669BC4C4()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v74 = sub_2669C5954();
  v3 = OUTLINED_FUNCTION_2(v74);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v73 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_0();
  v72 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v65 = &v63 - v17;
  v83 = MEMORY[0x277D84F90];
  v75 = v0;
  v18 = [*(v0 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
  OUTLINED_FUNCTION_43();
  v19 = sub_2669C6764();

  v20 = sub_26699F950(v19);
  if (v20)
  {
    if (v20 >= 1)
    {
      v64 = v2;
      v21 = 0;
      v69 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v67 = (v5 + 104);
      v68 = v19 & 0xC000000000000001;
      v22 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v66 = *MEMORY[0x277D55A18];
      v23 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v24 = v65;
      v70 = v20;
      v71 = v19;
      while (1)
      {
        v25 = v68 ? MEMORY[0x26D5E4670](v21, v19) : *(v19 + 8 * v21 + 32);
        v26 = v25;
        v27 = sub_2669C13D0([v25 v22[32]]);
        v80 = v21;
        if (v28)
        {
          v78 = v28;
          v79 = v27;
        }

        else
        {
          v29 = [v26 v22[32]];
          v30 = [v29 v23[44]];

          v24 = v65;
          v31 = sub_2669C6654();
          v78 = v32;
          v79 = v31;
        }

        v33 = sub_2669C66A4();
        v35 = v34;
        v36 = [v26 v22[32]];
        v37 = [v36 v23[44]];

        sub_2669C6654();
        v38 = sub_2669C66B4();
        v40 = v39;

        v81 = v33;
        v82 = v35;

        MEMORY[0x26D5E43B0](v38, v40);

        sub_2669C57B4();

        v41 = sub_2669C5874();
        v42 = [v26 identifier];
        v43 = sub_2669C6654();
        v45 = v44;

        if (!*(v41 + 16))
        {
          break;
        }

        v46 = sub_2669BB76C(v43, v45);
        v48 = v47;

        if ((v48 & 1) == 0)
        {
          goto LABEL_14;
        }

        v49 = (*(v41 + 56) + 16 * v46);
        v50 = v49[1];
        v77 = *v49;

LABEL_17:
        sub_2669C6674();
        v53 = [v26 v22[32]];
        v54 = [v53 v23[44]];

        sub_2669C6654();
        (*v67)(v73, v66, v74);
        v76 = v26;
        v55 = v24;
        sub_2669B9DB8(v24, v72, &qword_2800AC540, &qword_2669C8220);
        v56 = objc_allocWithZone(sub_2669C5914());
        v57 = sub_2669C58B4();
        MEMORY[0x26D5E43F0]();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_49();
        }

        v21 = v80 + 1;
        OUTLINED_FUNCTION_45();
        sub_2669C6794();

        sub_2669C0BA0(v55, &qword_2800AC540, &qword_2669C8220);
        v24 = v55;
        v19 = v71;
        v22 = &_OBJC_LABEL_PROTOCOL___NSObject;
        v23 = &_OBJC_LABEL_PROTOCOL___NSObject;
        if (v70 == v21)
        {
          v58 = v83;

          v2 = v64;
          goto LABEL_22;
        }
      }

LABEL_14:

      v51 = [v26 label];
      if (v51)
      {
        v52 = v51;
        v77 = sub_2669C6654();
      }

      else
      {
        v77 = 0;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
LABEL_22:
    v59 = *MEMORY[0x277CBCF70];
    sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
    sub_2669BFE64(v58);

    if (sub_2669BFFAC())
    {
      v60 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v81 = *v2;
      v61 = OUTLINED_FUNCTION_3();
      sub_2669C10DC(v61, v62);
      *v2 = v81;
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
  }
}

uint64_t sub_2669BCABC()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v6 = sub_2669C6434();
  v1[13] = v6;
  OUTLINED_FUNCTION_10_1(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v10 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2669BCBAC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact);
  v2 = *(MEMORY[0x277D55AD0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_2669BCC48;

  return MEMORY[0x2821B7678]();
}

uint64_t sub_2669BCC48()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2669BCEE4()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v6 = sub_2669C6434();
  v1[13] = v6;
  OUTLINED_FUNCTION_10_1(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v10 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2669BCFD4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact);
  v2 = *(MEMORY[0x277D55AD8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_2669BD070;

  return MEMORY[0x2821B7680]();
}

uint64_t sub_2669BD070()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2669BD30C()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v6 = sub_2669C6434();
  v1[13] = v6;
  OUTLINED_FUNCTION_10_1(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v10 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2669BD3FC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact);
  v2 = *(MEMORY[0x277D55AE0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_2669BD498;

  return MEMORY[0x2821B7688]();
}

uint64_t sub_2669BD498()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2669BD734()
{
  OUTLINED_FUNCTION_35();
  v124 = v0;
  v2 = v1;
  v130 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v120 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v112 - v11;
  v123 = sub_2669C59B4();
  v12 = OUTLINED_FUNCTION_2(v123);
  v125 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v18 = v17 - v16;
  v19 = sub_2669C5954();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  v27 = v26 - v25;
  v28 = *(v22 + 104);
  v28(v26 - v25, *MEMORY[0x277D55A18], v19);
  v29 = sub_2669997AC(v2, v27);
  v129 = v22;
  v30 = *(v22 + 8);
  v30(v27, v19);
  v31 = *MEMORY[0x277D55A38];
  if (v29 & 1) != 0 || (v28(v27, *MEMORY[0x277D55A38], v19), v32 = sub_2669997AC(v2, v27), v30(v27, v19), (v32))
  {
    v28(v27, v31, v19);
    v119 = v2;
    v121 = sub_2669997AC(v2, v27);
    v118 = v19;
    v30(v27, v19);
    v122 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v33 = *(v130 + 16);
    if (v33)
    {
      v117 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact;
      v116 = *(v125 + 16);
      v115 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v34 = v130 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v114 = (v129 + 16);
      v113 = (v125 + 8);
      v125 += 16;
      v112 = *(v125 + 56);
      while (1)
      {
        v129 = v34;
        v130 = v33;
        v116(v18);
        v35 = sub_2669C5984();
        v36 = v124;
        if (v35)
        {
          sub_26699F8F0(0, &qword_2800ACAB8, 0x277CBDB70);
          sub_2669C59A4();
          v37 = sub_2669C0808();
          v38 = sub_2669C1440(v37);
          v40 = v118;
          if (!v39)
          {
            v38 = sub_2669C59A4();
          }

          v127 = v39;
          v128 = v38;
          v41 = *(v36 + v117);
          sub_2669C59A4();
          sub_2669C6904();
        }

        else
        {
          v42 = sub_2669C59A4();
          v127 = v43;
          v128 = v42;
          v44 = *(v36 + v117);
          sub_2669C59A4();
          sub_2669C68F4();

          v40 = v118;
        }

        v45 = sub_2669C5874();
        v46 = sub_2669C5974();
        if (!*(v45 + 16))
        {
          break;
        }

        v48 = sub_2669BB76C(v46, v47);
        v50 = v49;

        if ((v50 & 1) == 0)
        {
          goto LABEL_14;
        }

        v51 = (*(v45 + 56) + 16 * v48);
        v52 = v51[1];
        v126 = *v51;

LABEL_15:
        sub_2669C6684();
        sub_2669C59A4();
        (*v114)(v27, v119, v40);
        v53 = v131;
        sub_2669B9DB8(v131, v120, &qword_2800AC540, &qword_2669C8220);
        v54 = objc_allocWithZone(sub_2669C5914());
        v55 = sub_2669C58B4();
        [v122 addObject_];

        sub_2669C0BA0(v53, &qword_2800AC540, &qword_2669C8220);
        (*v113)(v18, v123);
        v34 = v129 + v112;
        v33 = v130 - 1;
        if (v130 == 1)
        {
          goto LABEL_16;
        }
      }

LABEL_14:

      v126 = sub_2669C5994();
      goto LABEL_15;
    }

LABEL_16:
    v56 = v122;
    v57 = [v56 count];
    v58 = v124;
    if (v57 < 1)
    {
    }

    else
    {
      if (v121)
      {

        v59 = *MEMORY[0x277CBCF80];
        sub_2669BBF38();
        v60 = OUTLINED_FUNCTION_31_0();
        v61 = sub_2669BB2CC(v60, v58);

        if (v61 && (v62 = [v61 mutableCopy], v61, v62))
        {
          [v62 unionOrderedSet_];
          swift_getKeyPath();
          swift_getKeyPath();
          v63 = v62;
          v64 = sub_2669C5CC4();
          v66 = v65;
          v67 = *v65;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v66);
          sub_2669C10DC(v63, v59);
          *v66 = v132;
          v68 = OUTLINED_FUNCTION_42();
          v64(v68);
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v92 = v56;
          v93 = sub_2669C5CC4();
          v95 = v94;
          v96 = *v94;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v95);
          v97 = OUTLINED_FUNCTION_3();
          sub_2669C10DC(v97, v98);
          *v95 = v132;
          v99 = OUTLINED_FUNCTION_42();
          v93(v99);
        }
      }

      else
      {
        sub_2669C6684();
        v75 = v74;
        sub_2669BBF60();
        v76 = OUTLINED_FUNCTION_31_0();
        v77 = sub_2669BB314(v76, v75, v58);

        if (v77)
        {

          sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
          v78 = OUTLINED_FUNCTION_31_0();
          sub_2669BFE64(v78);

          v79 = sub_2669BFFAC();
          [v79 unionOrderedSet_];
          v80 = sub_2669C6684();
          v82 = v81;
          v83 = [v79 array];
          v84 = sub_2669C6764();

          v85 = sub_2669BE878(v84);

          if (v85)
          {
            v86 = v85;
          }

          else
          {
            v86 = MEMORY[0x277D84F90];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v87 = sub_2669C5CC4();
          v89 = v88;
          v90 = *v88;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v89);
          sub_2669C1208(v86, v80, v82);
          *v89 = v132;

          v91 = OUTLINED_FUNCTION_42();
          v87(v91);
        }

        else
        {
          v100 = sub_2669C6684();
          v102 = v101;
          v103 = [v56 array];

          v104 = sub_2669C6764();
          v105 = sub_2669BE878(v104);

          if (v105)
          {
            v106 = v105;
          }

          else
          {
            v106 = MEMORY[0x277D84F90];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v107 = sub_2669C5CC4();
          v109 = v108;
          v110 = *v108;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v109);
          sub_2669C1208(v106, v100, v102);
          *v109 = v132;

          v111 = OUTLINED_FUNCTION_42();
          v107(v111);
        }
      }
    }
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v69 = sub_2669C5C94();
    __swift_project_value_buffer(v69, qword_2800ACC88);
    v70 = sub_2669C5C74();
    v71 = sub_2669C6864();
    if (OUTLINED_FUNCTION_34_0(v71))
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_50(&dword_266996000, v72, v73, "#GetContactQuickActionButtonsViewModel didn't get a FaceTimeable action type, returning");
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_37();
}

void sub_2669BE194()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v7;
  v63 = sub_2669C5954();
  v8 = OUTLINED_FUNCTION_2(v63);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v62 = v14 - v13;
  v72 = MEMORY[0x277D84F90];
  v65 = v0;
  v15 = [*(v0 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
  OUTLINED_FUNCTION_43();
  v16 = sub_2669C6764();

  v17 = sub_26699F950(v16);
  if (v17)
  {
    if (v17 >= 1)
    {
      v55 = v2;
      v18 = 0;
      v58 = v16 & 0xC000000000000001;
      v59 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v57 = (v10 + 104);
      v19 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v56 = *MEMORY[0x277D55A28];
      v60 = v17;
      v61 = v16;
      v20 = v64;
      while (1)
      {
        v21 = v58 ? MEMORY[0x26D5E4670](v18, v16) : *(v16 + 8 * v18 + 32);
        v22 = v21;
        v23 = sub_2669C13D0([v21 v19[32]]);
        if (v24)
        {
          v69 = v24;
          v70 = v23;
        }

        else
        {
          v25 = [v22 v19[32]];
          v26 = [v25 stringValue];

          v27 = sub_2669C6654();
          v69 = v28;
          v70 = v27;
        }

        v29 = sub_2669C5874();
        v30 = [v22 identifier];
        v31 = sub_2669C6654();
        v33 = v32;

        if (!*(v29 + 16))
        {
          break;
        }

        v34 = sub_2669BB76C(v31, v33);
        v36 = v35;

        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }

        v37 = (*(v29 + 56) + 16 * v34);
        v38 = *v37;
        v67 = v37[1];
        v68 = v38;

LABEL_17:
        sub_2669C6694();
        v66 = v43;
        v44 = [v22 v19[32]];
        v45 = [v44 stringValue];

        sub_2669C6654();
        (*v57)(v62, v56, v63);
        v46 = sub_2669C57C4();
        __swift_storeEnumTagSinglePayload(v20, 1, 1, v46);
        v47 = [v22 identifier];
        sub_2669C6654();

        v48 = objc_allocWithZone(sub_2669C5914());
        v49 = sub_2669C58B4();
        MEMORY[0x26D5E43F0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_49();
        }

        ++v18;
        sub_2669C6794();

        v16 = v61;
        v19 = &_OBJC_LABEL_PROTOCOL___NSObject;
        if (v60 == v18)
        {
          v50 = v72;

          v2 = v55;
          goto LABEL_22;
        }
      }

LABEL_14:

      v39 = [v22 label];
      if (v39)
      {
        v40 = v39;
        v41 = sub_2669C6654();
        v67 = v42;
        v68 = v41;
      }

      else
      {
        v67 = 0xE000000000000000;
        v68 = 0;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
LABEL_22:
    v51 = *MEMORY[0x277CBCF78];
    sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
    sub_2669BFE64(v50);

    if (sub_2669BFFAC())
    {
      v52 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v71 = *v2;
      v53 = OUTLINED_FUNCTION_3();
      sub_2669C10DC(v53, v54);
      *v2 = v71;
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
  }
}

void sub_2669BE6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  v4 = *v3;
  sub_2669BE73C(a1, a2, a3);
}

void sub_2669BE73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_2669BE80C;
    v6[3] = &block_descriptor_104;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 launchAppForDialRequest:a1 completion:v5];
  _Block_release(v5);
}

void sub_2669BE80C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2669BE878(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2669C6A04();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_26699F890(v3, v6);
    sub_2669C5914();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2669C69E4();
    v4 = *(v7 + 16);
    sub_2669C6A14();
    sub_2669C6A24();
    sub_2669C69F4();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_2669BE964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2669BBF4C();
}

uint64_t sub_2669BE990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2669BBF74();
}

uint64_t sub_2669BE9BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2669BBF9C();
}

uint64_t sub_2669BE9E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2669BC030();
}

void sub_2669BEB30()
{
  v1 = *&v0[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_cancelableTokens];
  v2 = sub_26699F950(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v7.receiver = v0;
      v7.super_class = type metadata accessor for GetContactQuickActionButtonsViewModel();
      objc_msgSendSuper2(&v7, sel_dealloc);
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_45();
      v4 = MEMORY[0x26D5E4670](v6);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v4 cancel];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t type metadata accessor for GetContactQuickActionButtonsViewModel()
{
  result = qword_2800ACA30;
  if (!qword_2800ACA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669BEE74()
{
  OUTLINED_FUNCTION_35();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  OUTLINED_FUNCTION_2_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v3);
  v59 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v11 = sub_2669C57C4();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = sub_2669C5954();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_1();
  v31 = v30 - v29;
  sub_2669C58F4();
  v32 = sub_2669C5924();
  (*(v26 + 8))(v31, v23);
  if ((v32 & 1) == 0)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v39 = sub_2669C5C94();
    __swift_project_value_buffer(v39, qword_2800ACC88);
    v34 = sub_2669C5C74();
    v40 = sub_2669C6864();
    if (!OUTLINED_FUNCTION_34_0(v40))
    {
      goto LABEL_12;
    }

    *OUTLINED_FUNCTION_7() = 0;
    v38 = "#GetContactQuickActionButtonsViewModel performCall provided action type mismatched";
    goto LABEL_11;
  }

  sub_2669C58E4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v41 = v14;
    (*(v14 + 32))(v22, v10, v11);
    sub_26699F8F0(0, &qword_2800ACA70, 0x277D6EED0);
    (*(v14 + 16))(v19, v22, v11);
    v42 = sub_2669BF318(v19);
    if (v42)
    {
      v43 = v42;
      if ([v42 isValid])
      {
        v44 = sub_2669C67C4();
        v45 = v59;
        __swift_storeEnumTagSinglePayload(v59, 1, 1, v44);
        OUTLINED_FUNCTION_32();
        v46 = swift_allocObject();
        v47 = OUTLINED_FUNCTION_51(v46);
        v48 = OUTLINED_FUNCTION_13_2();
        sub_2669BF8F0(v48, v49, v45, v50, v46);

LABEL_22:
        v55 = *(v41 + 8);
        v56 = OUTLINED_FUNCTION_3();
        v57(v56);
        goto LABEL_23;
      }
    }

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v51 = sub_2669C5C94();
    __swift_project_value_buffer(v51, qword_2800ACC88);
    v52 = sub_2669C5C74();
    v53 = sub_2669C6864();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_7();
      *v54 = 0;
      _os_log_impl(&dword_266996000, v52, v53, "#GetContactQuickActionButtonsViewModel performCall failed to construct dial request", v54, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    goto LABEL_22;
  }

  sub_2669C0BA0(v10, &qword_2800AC540, &qword_2669C8220);
  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v33 = sub_2669C5C94();
  __swift_project_value_buffer(v33, qword_2800ACC88);
  v34 = sub_2669C5C74();
  v35 = sub_2669C6864();
  if (!OUTLINED_FUNCTION_34_0(v35))
  {
    goto LABEL_12;
  }

  *OUTLINED_FUNCTION_7() = 0;
  v38 = "#GetContactQuickActionButtonsViewModel performCall but no URL available, cannot execute";
LABEL_11:
  OUTLINED_FUNCTION_50(&dword_266996000, v36, v37, v38);
  OUTLINED_FUNCTION_4_0();
LABEL_12:

LABEL_23:
  OUTLINED_FUNCTION_37();
}

id sub_2669BF318(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2669C57A4();
  v4 = [v2 initWithURL_];

  v5 = sub_2669C57C4();
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_2669BF3C8()
{
  v1 = v0[22];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_2669BF510;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA78, &qword_2669C8A90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2669BF810;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 launchAppForDialRequest:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2669BF510()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_2669BF668;
  }

  else
  {
    v5 = sub_2669BF610;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2669BF610()
{
  OUTLINED_FUNCTION_12_1();

  OUTLINED_FUNCTION_15_2();

  return v1();
}

uint64_t sub_2669BF668()
{
  v21 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v3 = v0[24];
  v4 = sub_2669C5C94();
  __swift_project_value_buffer(v4, qword_2800ACC88);
  v5 = v3;
  v6 = sub_2669C5C74();
  v7 = sub_2669C6864();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_2669C6AB4();
    v17 = sub_26699F100(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_266996000, v6, v7, "#GetContactQuickActionButtonsViewModel performCall TU task caught: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_2();

  return v18();
}

uint64_t sub_2669BF810(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2669BF880(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_2669BF880(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA80, &qword_2669C8A98);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2669BF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2669B9DB8(a3, v26 - v11, &unk_2800ACA60, &unk_2669C8A58);
  v13 = sub_2669C67C4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2669C0BA0(v12, &unk_2800ACA60, &unk_2669C8A58);
  }

  else
  {
    sub_2669C67B4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2669C67A4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2669C6664() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2669C0BA0(a3, &unk_2800ACA60, &unk_2669C8A58);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2669C0BA0(a3, &unk_2800ACA60, &unk_2669C8A58);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2669BFBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669C1DA8;

  return sub_2669BCABC();
}

uint64_t sub_2669BFC64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669BFCF4;

  return sub_2669BCEE4();
}

uint64_t sub_2669BFCF4()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_14_2();
  *v4 = v3;

  OUTLINED_FUNCTION_15_2();

  return v5();
}

uint64_t sub_2669BFDD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669C1DA8;

  return sub_2669BD30C();
}

void sub_2669BFE64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2669C6A54();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2669C0F58(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5E4670](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        sub_2669C5914();
        swift_dynamicCast();
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2669C0F58(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        *(v4 + 16) = v7 + 1;
        sub_2669C1960(&v8, (v4 + 32 * v7 + 32));
      }

      while (v2 != v3);
    }
  }
}

id sub_2669BFFAC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2669C6754();

  v2 = [v0 initWithArray_];

  return v2;
}

void sub_2669C0024(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v55 - v5;
  v66 = sub_2669C5954();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2669C59B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v15 = v14;
    v16 = *(a2 + 16);
    if (v16)
    {
      v61 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v18 = *(v10 + 16);
      v17 = v10 + 16;
      v60 = v18;
      v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v59 = *(v17 + 56);
      v58 = *MEMORY[0x277D55A28];
      v57 = (v6 + 104);
      v62 = v17;
      v56 = (v17 - 8);
      v63 = v9;
      v64 = v14;
      v20 = v67;
      while (1)
      {
        v73 = v16;
        v60(v13, v19, v9);
        v21 = sub_2669C5874();
        v22 = sub_2669C5974();
        if (!*(v21 + 16))
        {
          break;
        }

        v24 = sub_2669BB76C(v22, v23);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_8;
        }

        v27 = (*(v21 + 56) + 16 * v24);
        v28 = *v27;
        v71 = v27[1];
        v72 = v28;

LABEL_9:
        v31 = sub_2669C6694();
        v69 = v32;
        v70 = v31;
        sub_2669C59A4();
        sub_2669C59A4();
        (*v57)(v65, v58, v66);
        v33 = sub_2669C57C4();
        __swift_storeEnumTagSinglePayload(v20, 1, 1, v33);
        sub_2669C5974();
        v34 = objc_allocWithZone(sub_2669C5914());
        v35 = sub_2669C58B4();
        v15 = v64;
        [v64 addObject_];

        v9 = v63;
        (*v56)(v13, v63);
        v19 += v59;
        v16 = v73 - 1;
        if (v73 == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_8:

      v29 = sub_2669C5994();
      v71 = v30;
      v72 = v29;
      goto LABEL_9;
    }

LABEL_10:
    if ([v15 count] <= 0)
    {
    }

    else
    {
      v36 = *MEMORY[0x277CBCF78];
      v37 = sub_2669BBF38();
      v38 = sub_2669BB2CC(v36, v37);

      if (v38 && (v39 = [v38 mutableCopy], v38, v39))
      {
        [v39 unionOrderedSet_];
        swift_getKeyPath();
        swift_getKeyPath();
        v40 = v39;
        v41 = Strong;
        v42 = sub_2669C5CC4();
        v44 = v43;
        v45 = *v43;
        swift_isUniquelyReferenced_nonNull_native();
        v74 = *v44;
        sub_2669C10DC(v40, v36);
        *v44 = v74;
        v42(v75, 0);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v40 = v15;
        v50 = Strong;
        v51 = sub_2669C5CC4();
        v53 = v52;
        v54 = *v52;
        swift_isUniquelyReferenced_nonNull_native();
        v74 = *v53;
        sub_2669C10DC(v40, v36);
        *v53 = v74;
        v51(v75, 0);
      }
    }
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v46 = sub_2669C5C94();
    __swift_project_value_buffer(v46, qword_2800ACC88);
    v47 = sub_2669C5C74();
    v48 = sub_2669C6864();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_266996000, v47, v48, "#GetContactQuickActionButtonsViewModel tried to process actions but already got dealloc'ed", v49, 2u);
      MEMORY[0x26D5E4D50](v49, -1, -1);
    }
  }
}

uint64_t sub_2669C06B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2669C06FC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_2669C5954();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v8 + 104))(v3, *a3, v5);
    sub_2669BD734();

    v13 = *(v8 + 8);
    v14 = OUTLINED_FUNCTION_45();
    return v15(v14);
  }

  return result;
}

id sub_2669C0808()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2669C6624();

  v2 = [v0 initWithStringValue_];

  return v2;
}

void sub_2669C08BC()
{
  v0 = sub_2669C5B54();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_2669C5894();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2669C0A74(319, &qword_2800ACA40, &qword_2800ACA48, &qword_2669C8A10);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2669C0A74(319, &qword_2800ACA50, &qword_2800ACA58, &qword_2669C8A18);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2669C0A74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_43();
    v5 = sub_2669C5CF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2669C0AD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GetContactQuickActionButtonsViewModel();
  result = sub_2669C5CA4();
  *a1 = result;
  return result;
}

uint64_t sub_2669C0B14()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BF3A8(v3, v4, v5, v6);
}

uint64_t sub_2669C0BA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2669C0BF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2669C0CEC;

  return v7(a1);
}

uint64_t sub_2669C0CEC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_14_2();
  *v4 = v3;

  OUTLINED_FUNCTION_15_2();

  return v5();
}

uint64_t sub_2669C0DD0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2669C0E04()
{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_22_0(v4);

  return v7(v6);
}

uint64_t sub_2669C0E98()
{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_22_0(v4);

  return v7(v6);
}

uint64_t sub_2669C0FB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2669BB6D8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAA8, &qword_2669C8AB8);
  sub_2669C6A34();

  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for CNActionType(0);
  sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
  sub_2669C1A24(&qword_2800ACAB0, type metadata accessor for CNActionType);
  sub_2669C6A44();
  *v2 = v11;
  return v9;
}

void sub_2669C10DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2669BB6D8(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAA8, &qword_2669C8AB8);
  if ((sub_2669C6A34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_2669BB6D8(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CNActionType(0);
    sub_2669C6AA4();
    __break(1u);
    return;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v8);
    *(v14 + 8 * v8) = a1;
  }

  else
  {
    sub_2669C1344(v8, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t sub_2669C1208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2669BB76C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAC0, &qword_2669C8B50);
  if ((sub_2669C6A34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2669BB76C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2669C6AA4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_2669C1388(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_2669C1344(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_2669C1388(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_2669C13D0(void *a1)
{
  v2 = [a1 formattedStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2669C6654();

  return v3;
}

uint64_t sub_2669C1440(void *a1)
{
  v1 = [a1 formattedStringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2669C6654();

  return v3;
}

void sub_2669C14A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_35();
  v22 = v21;
  v24 = v23;
  v69 = v26;
  v70 = v25;
  v28 = v27;
  v71 = v30;
  v72 = v29;
  v68 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA88, &qword_2669C8AA0);
  OUTLINED_FUNCTION_2(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA90, &unk_2669C8AA8);
  OUTLINED_FUNCTION_2(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v43);
  v45 = &v67 - v44;
  v75[3] = v22;
  v75[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, v28, v22);
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_cancelableTokens] = MEMORY[0x277D84F90];
  v47 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_lock;
  *&v24[v47] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v48 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel__actionsByType;
  v49 = MEMORY[0x277D84F98];
  v74 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA48, &qword_2669C8A10);
  sub_2669C5CB4();
  (*(v40 + 32))(&v24[v48], v45, v38);
  v74 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA58, &qword_2669C8A18);
  OUTLINED_FUNCTION_35_0();
  v50 = *(v34 + 32);
  v51 = OUTLINED_FUNCTION_29_0();
  v50(v51);
  v74 = v49;
  OUTLINED_FUNCTION_35_0();
  v52 = OUTLINED_FUNCTION_29_0();
  v50(v52);
  v74 = v49;
  OUTLINED_FUNCTION_35_0();
  v53 = OUTLINED_FUNCTION_29_0();
  v50(v53);
  v54 = v68;
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact] = v68;
  sub_2669C18FC(v75, &v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_dialRequestPerformer]);
  v55 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_directInvocationsModel;
  v56 = sub_2669C5B54();
  v57 = *(v56 - 8);
  (*(v57 + 16))(&v24[v55], v72, v56);
  v58 = objc_allocWithZone(MEMORY[0x277CFBF30]);
  v68 = v54;
  v59 = v69;
  v60 = [v58 initWithDiscoveringEnvironment_];
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_dataSource] = v60;
  v61 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
  v62 = sub_2669C5894();
  v63 = *(v62 - 8);
  v64 = v70;
  (*(v63 + 16))(&v24[v61], v70, v62);
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_textColor] = v71;

  sub_2669C62D4();
  LOBYTE(v54) = sub_2669C6294();

  v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_shouldUseLightBackground] = v54 & 1;
  ContactQuickActionButtonsViewModel = type metadata accessor for GetContactQuickActionButtonsViewModel();
  v73.receiver = v24;
  v73.super_class = ContactQuickActionButtonsViewModel;
  v66 = objc_msgSendSuper2(&v73, sel_init);
  sub_2669BC35C();

  (*(v63 + 8))(v64, v62);
  (*(v57 + 8))(v72, v56);
  __swift_destroy_boxed_opaque_existential_0(v75);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669C18FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2669C1960(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2669C1970(uint64_t *a1)
{
  OUTLINED_FUNCTION_41(a1);
  result = sub_2669BBF60();
  *v1 = result;
  return result;
}

uint64_t sub_2669C199C(uint64_t *a1)
{
  OUTLINED_FUNCTION_41(a1);
  result = sub_2669BBF38();
  *v1 = result;
  return result;
}

uint64_t sub_2669C19C8()
{
  MEMORY[0x26D5E4DE0](v0 + 16);
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2669C1A24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2669C1A68()
{
  result = qword_2800ACAE0;
  if (!qword_2800ACAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACAD8, &qword_2669C8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACAE0);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2669C1B34()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFBD4();
}

uint64_t sub_2669C1BC0()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFC64();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2669C1C88()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFDD4();
}

uint64_t sub_2669C1D14(uint64_t *a1)
{
  OUTLINED_FUNCTION_41(a1);
  result = sub_2669BBFB0();
  *v1 = result;
  return result;
}

uint64_t sub_2669C1D40(uint64_t *a1)
{
  OUTLINED_FUNCTION_41(a1);
  result = sub_2669BBF88();
  *v1 = result;
  return result;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_7_3()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v7 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return MEMORY[0x2821FCEB0](v1, v2, a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_17_2()
{

  JUMPOUT(0x26D5E4550);
}

void OUTLINED_FUNCTION_18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_2669C5CB4();
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{
  v3 = a1 + 16;

  return MEMORY[0x2821FEC40](v3, v1);
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_2669C6774();
}

void OUTLINED_FUNCTION_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_51(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;

  return v1;
}

uint64_t sub_2669C2108()
{
  v1 = sub_2669C5954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D55A28])
  {
    return 0x2E6567617373656DLL;
  }

  if (v6 == *MEMORY[0x277D55A18])
  {
    v8 = 0x2E656E6F6870;
    return v8 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v6 == *MEMORY[0x277D55A38])
  {
    v8 = 0x2E6F65646976;
    return v8 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v6 == *MEMORY[0x277D55A20])
  {
    return 0x65706F6C65766E65;
  }

  if (v6 == *MEMORY[0x277D55A30])
  {
    return 0xD000000000000029;
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

uint64_t sub_2669C2308()
{
  v0 = sub_2669C5844();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2669C5824();
  return sub_2669C6464();
}

uint64_t GetContactAttributeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v210 = a1;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB60, &qword_2669C8C60);
  OUTLINED_FUNCTION_0(v209);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9();
  v208 = v4;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB68, &qword_2669C8C68);
  OUTLINED_FUNCTION_0(v189);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_2(v8);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v9 = OUTLINED_FUNCTION_0(ContactAttributeViewModel);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v186 = v13 - v12;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB70, &qword_2669C8C70);
  OUTLINED_FUNCTION_0(v187);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v188 = v17;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB78, &qword_2669C8C78);
  OUTLINED_FUNCTION_0(v206);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_2(v21);
  v182 = sub_2669C60E4();
  v22 = OUTLINED_FUNCTION_2(v182);
  v181 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_2(v27 - v26);
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v28 = OUTLINED_FUNCTION_0(ContactAttributeSingleResultView);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_2(v32 - v31);
  v33 = sub_2669C5D44();
  v34 = OUTLINED_FUNCTION_2(v33);
  v195 = v35;
  v196 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_2(&v175 - v40);
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView();
  v41 = OUTLINED_FUNCTION_0(ContactAttributeAgeView);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_1();
  v193 = v45 - v44;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB80, &qword_2669C8C80);
  OUTLINED_FUNCTION_0(v202);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9();
  v204 = v49;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB88, &qword_2669C8C88);
  OUTLINED_FUNCTION_0(v197);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9();
  v199 = v53;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB90, &qword_2669C8C90);
  OUTLINED_FUNCTION_0(v203);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_9();
  v200 = v57;
  ContactView = type metadata accessor for GetContactView();
  v58 = OUTLINED_FUNCTION_0(ContactView);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1_1();
  v63 = v62 - v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB98, &unk_2669C8C98);
  OUTLINED_FUNCTION_0(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9();
  v205 = v68;
  v69 = sub_2669C5B04();
  v70 = OUTLINED_FUNCTION_2(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v76 = MEMORY[0x28223BE20](v75);
  v78 = &v175 - v77;
  v79 = MEMORY[0x28223BE20](v76);
  v81 = (&v175 - v80);
  v82 = MEMORY[0x28223BE20](v79);
  MEMORY[0x28223BE20](v82);
  v84 = &v175 - v83;
  ContactAttributeView = type metadata accessor for GetContactAttributeView();
  v86 = OUTLINED_FUNCTION_0(ContactAttributeView);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1_1();
  v91 = v90 - v89;
  sub_2669C39DC(v207, v90 - v89, type metadata accessor for GetContactAttributeView);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2669C3A3C(v91, type metadata accessor for GetContactAttributeView);
    swift_storeEnumTagMultiPayload();
    sub_2669C3594();
    return sub_2669C5FB4();
  }

  else
  {
    v207 = v64;
    (*(v72 + 32))(v84, v91, v69);
    v93 = v72;
    if (sub_2669C5A24())
    {
      v176 = v72;
      v94 = *(v72 + 16);
      OUTLINED_FUNCTION_13_3();
      v95();
      sub_2669C59E4();
      swift_storeEnumTagMultiPayload();
      sub_2669C39DC(v63, v199, type metadata accessor for GetContactView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_5();
      sub_2669C392C(v96, v97);
      OUTLINED_FUNCTION_5_4();
      sub_2669C392C(v98, v99);
      v100 = v200;
      sub_2669C5FB4();
      sub_2669C397C(v100, v204, &qword_2800ACB90, &qword_2669C8C90);
      swift_storeEnumTagMultiPayload();
      sub_2669C3620();
      sub_2669C370C();
      v101 = v205;
      sub_2669C5FB4();
      sub_26699A428(v100, &qword_2800ACB90, &qword_2669C8C90);
      sub_2669C3A3C(v63, type metadata accessor for GetContactView);
      v102 = v84;
      v81 = v176;
      v103 = v69;
      v93 = v101;
      v104 = v208;
    }

    else
    {
      v105 = sub_26699A5AC();
      v177 = v84;
      if (v105)
      {
        v106 = *(v72 + 16);
        OUTLINED_FUNCTION_13_3();
        v106();
        v107 = [objc_opt_self() sharedInstance];
        v212 = sub_2669C38E8();
        v213 = &off_28782C1C0;
        v211 = v107;
        v108 = v193 + *(ContactAttributeAgeView + 20);
        sub_2669C18FC(&v211, v108);
        v109 = ContactAttributeViewModel;
        (v106)(v108 + *(ContactAttributeViewModel + 20), v81, v69);
        v110 = sub_2669C5AD4();
        v112 = v195;
        v111 = v196;
        v113 = *(v195 + 104);
        OUTLINED_FUNCTION_11_3(v110);
        v114 = v185;
        v115(v185);
        (*(v112 + 32))(v108 + *(v109 + 24), v114, v111);
        if (sub_2669C5AD4())
        {
          v116 = sub_2669C62D4();
        }

        else
        {
          v116 = sub_2669C62C4();
        }

        v130 = v116;
        v131 = *(v93 + 8);
        v175 = v69;
        v131(v81, v69);
        __swift_destroy_boxed_opaque_existential_0(&v211);
        *(v108 + *(v109 + 28)) = v130;
        v132 = v193;
        sub_2669C64E4();
        sub_2669C39DC(v132, v199, type metadata accessor for GetContactAttributeAgeView);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_5();
        sub_2669C392C(v133, v134);
        OUTLINED_FUNCTION_5_4();
        sub_2669C392C(v135, v136);
        v137 = v200;
        sub_2669C5FB4();
        sub_2669C397C(v137, v204, &qword_2800ACB90, &qword_2669C8C90);
        swift_storeEnumTagMultiPayload();
        sub_2669C3620();
        sub_2669C370C();
        OUTLINED_FUNCTION_8_4();
        sub_2669C5FB4();
        sub_26699A428(v137, &qword_2800ACB90, &qword_2669C8C90);
        sub_2669C3A3C(v132, type metadata accessor for GetContactAttributeAgeView);
        v103 = v175;
        v104 = v208;
        v102 = v177;
      }

      else
      {
        v117 = sub_2669C5AB4();
        v118 = *(v72 + 16);
        if (v117)
        {
          OUTLINED_FUNCTION_13_3();
          v118();
          v119 = [objc_opt_self() sharedInstance];
          v212 = sub_2669C38E8();
          v213 = &off_28782C1C0;
          v211 = v119;
          v120 = v191 + *(ContactAttributeSingleResultView + 5);
          sub_2669C18FC(&v211, v120);
          v121 = OUTLINED_FUNCTION_14_3();
          v103 = v69;
          (v118)(v121, v78, v69);
          v122 = sub_2669C5AD4();
          v124 = v195;
          v123 = v196;
          v125 = *(v195 + 104);
          OUTLINED_FUNCTION_11_3(v122);
          v126 = v178;
          v127(v178);
          (*(v124 + 32))(v120 + *(v63 + 24), v126, v123);
          v128 = sub_2669C5AD4();
          v104 = v208;
          if (v128)
          {
            v129 = sub_2669C62D4();
          }

          else
          {
            v129 = sub_2669C62C4();
          }

          v151 = v129;
          (*(v93 + 8))(v78, v69);
          __swift_destroy_boxed_opaque_existential_0(&v211);
          *(v120 + *(v63 + 28)) = v151;
          sub_2669C65D4();
          OUTLINED_FUNCTION_3_8();
          sub_2669C392C(v152, v153);
          v154 = sub_2669C5E84();
          v155 = v191;
          *v191 = v154;
          v155[1] = v156;
          v81 = ContactAttributeSingleResultView;
          v157 = *(ContactAttributeSingleResultView + 6);
          v211 = 0x402E000000000000;
          (*(v181 + 104))(v180, *MEMORY[0x277CE0A68], v182);
          sub_26699BF8C();
          sub_2669C5D84();
          sub_2669C39DC(v155, v188, type metadata accessor for GetContactAttributeSingleResultView);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_3();
          sub_2669C392C(v158, v159);
          sub_2669C37C8();
          v160 = v190;
          sub_2669C5FB4();
          sub_2669C397C(v160, v204, &qword_2800ACB78, &qword_2669C8C78);
          swift_storeEnumTagMultiPayload();
          sub_2669C3620();
          sub_2669C370C();
          OUTLINED_FUNCTION_8_4();
          sub_2669C5FB4();
          sub_26699A428(v160, &qword_2800ACB78, &qword_2669C8C78);
          sub_2669C3A3C(v191, type metadata accessor for GetContactAttributeSingleResultView);
        }

        else
        {
          v138 = v184;
          OUTLINED_FUNCTION_13_3();
          v118();
          v139 = [objc_opt_self() sharedInstance];
          v212 = sub_2669C38E8();
          v213 = &off_28782C1C0;
          v211 = v139;
          v140 = v186;
          sub_2669C18FC(&v211, v186);
          v141 = OUTLINED_FUNCTION_14_3();
          v81 = v69;
          (v118)(v141, v138, v69);
          v142 = sub_2669C5AD4();
          v143 = v195;
          v144 = v196;
          v145 = *(v195 + 104);
          OUTLINED_FUNCTION_11_3(v142);
          v146 = v179;
          v147(v179);
          v148 = *(v143 + 32);
          ContactAttributeAgeView = *(v63 + 24);
          v148(v140 + ContactAttributeAgeView, v146, v144);
          v149 = sub_2669C5AD4();
          v104 = v208;
          if (v149)
          {
            v150 = sub_2669C62D4();
          }

          else
          {
            v150 = sub_2669C62C4();
          }

          v161 = v150;
          v162 = *(v93 + 8);
          v175 = v81;
          v162(v184, v81);
          __swift_destroy_boxed_opaque_existential_0(&v211);
          v163 = v186;
          *(v186 + *(v63 + 28)) = v161;
          v164 = *(type metadata accessor for GetContactAttributeMultiResultView() + 20);
          v207 = type metadata accessor for GetContactAttributeViewModel;
          v165 = v183;
          sub_2669C39DC(v163, v183 + v164, type metadata accessor for GetContactAttributeViewModel);
          sub_2669C65D4();
          OUTLINED_FUNCTION_3_8();
          sub_2669C392C(v166, v167);
          *v165 = sub_2669C5E84();
          v165[1] = v168;
          KeyPath = swift_getKeyPath();
          v170 = (v165 + *(v189 + 36));
          v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
          (*(v195 + 16))(v170 + *(v171 + 28), v163 + ContactAttributeAgeView, v196);
          *v170 = KeyPath;
          sub_2669C397C(v165, v188, &qword_2800ACB68, &qword_2669C8C68);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_3();
          sub_2669C392C(v172, v173);
          sub_2669C37C8();
          v174 = v190;
          sub_2669C5FB4();
          sub_2669C397C(v174, v204, &qword_2800ACB78, &qword_2669C8C78);
          swift_storeEnumTagMultiPayload();
          sub_2669C3620();
          sub_2669C370C();
          OUTLINED_FUNCTION_8_4();
          v103 = v175;
          sub_2669C5FB4();
          sub_26699A428(v174, &qword_2800ACB78, &qword_2669C8C78);
          sub_26699A428(v165, &qword_2800ACB68, &qword_2669C8C68);
          sub_2669C3A3C(v163, v207);
        }

        v102 = v177;
      }
    }

    sub_2669C397C(v93, v104, &qword_2800ACB98, &unk_2669C8C98);
    swift_storeEnumTagMultiPayload();
    sub_2669C3594();
    sub_2669C5FB4();
    sub_26699A428(v93, &qword_2800ACB98, &unk_2669C8C98);
    return v81[1](v102, v103);
  }
}

uint64_t type metadata accessor for GetContactAttributeView()
{
  result = qword_2800ACBE0;
  if (!qword_2800ACBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2669C3594()
{
  result = qword_2800ACBA0;
  if (!qword_2800ACBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB98, &unk_2669C8C98);
    sub_2669C3620();
    sub_2669C370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBA0);
  }

  return result;
}

unint64_t sub_2669C3620()
{
  result = qword_2800ACBA8;
  if (!qword_2800ACBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB90, &qword_2669C8C90);
    sub_2669C392C(&qword_2800ACBB0, type metadata accessor for GetContactView);
    sub_2669C392C(&qword_2800ACBB8, type metadata accessor for GetContactAttributeAgeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBA8);
  }

  return result;
}

unint64_t sub_2669C370C()
{
  result = qword_2800ACBC0;
  if (!qword_2800ACBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB78, &qword_2669C8C78);
    sub_2669C392C(&qword_2800ACBC8, type metadata accessor for GetContactAttributeSingleResultView);
    sub_2669C37C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBC0);
  }

  return result;
}

unint64_t sub_2669C37C8()
{
  result = qword_2800ACBD0;
  if (!qword_2800ACBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB68, &qword_2669C8C68);
    sub_2669C392C(&qword_2800ACBD8, type metadata accessor for GetContactAttributeMultiResultView);
    sub_2669C3884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBD0);
  }

  return result;
}

unint64_t sub_2669C3884()
{
  result = qword_2800AC470;
  if (!qword_2800AC470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC430, &qword_2669C80A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC470);
  }

  return result;
}

unint64_t sub_2669C38E8()
{
  result = qword_2800ACAF0;
  if (!qword_2800ACAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ACAF0);
  }

  return result;
}

uint64_t sub_2669C392C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669C397C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669C39DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669C3A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2669C3AB4()
{
  result = sub_2669C5B04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2669C3B18()
{
  result = qword_2800ACBF0;
  if (!qword_2800ACBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2800ACBF8, qword_2669C8D60);
    sub_2669C3594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v1 = v2;
  }

  v3 = *v1;
  return result;
}

uint64_t sub_2669C3C50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2669C3CEC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 2) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *&a1[v16];
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0xFE)
      {
        v27 = &a1[v11 + 2] & ~v11;
        if (v7 != v14)
        {
          v27 = (v27 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v27, v7, v5);
      }

      else
      {
        v24 = *a1;
        v25 = v24 >= 2;
        v26 = (v24 + 2147483646) & 0x7FFFFFFF;
        if (v25)
        {
          return (v26 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = a1[v16];
  if (!a1[v16])
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_2669C3F18(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 2) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        return;
      case 2:
        *&a1[v18] = v24;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v18] = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x2669C41E8);
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (a2)
      {
LABEL_30:
        if (v13 > 0xFE)
        {
          v28 = &a1[v15 + 2] & ~v15;
          if (v9 != v14)
          {
            v28 = (v28 + v16 + v17) & ~v17;
            v9 = v12;
            v7 = v10;
          }

          __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
        }

        else
        {
          *a1 = a2 + 1;
        }
      }

      return;
  }
}

uint64_t sub_2669C4228(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669C426C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = a1[2];
  v7 = a1[4];
  v6 = a1[5];
  KeyPath = a1[3];
  v4 = KeyPath;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  v8 = sub_2669C6104();
  v9 = OUTLINED_FUNCTION_2(v8);
  v34 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v13;
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  v33 = WitnessTable;
  v32 = sub_2669C4794();
  KeyPath = v8;
  v47 = &type metadata for GetContactQuickActionPrimitiveButtonStyle;
  v48 = WitnessTable;
  v49 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  v41 = v5;
  v42 = v4;
  v43 = v7;
  v44 = v6;
  v45 = v3;
  v36 = v5;
  v37 = v4;
  v38 = v7;
  v39 = v6;
  v40 = v3;
  v26 = v31;
  sub_2669C60F4();
  LOBYTE(v5) = *v3;
  LOBYTE(v6) = v3[1];
  KeyPath = swift_getKeyPath();
  LOBYTE(v47) = 0;
  BYTE1(v47) = v5;
  BYTE2(v47) = v6;
  sub_2669C6214();

  (*(v34 + 8))(v26, v8);
  v27 = *(v18 + 16);
  v27(v25, v23, OpaqueTypeMetadata2);
  v28 = *(v18 + 8);
  v28(v23, OpaqueTypeMetadata2);
  v27(v35, v25, OpaqueTypeMetadata2);
  return (v28)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_2669C4558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v13;
  ContactQuickActionButton = type metadata accessor for GetContactQuickActionButton(0, v17);
  v15 = *(v6 + 16);
  v15(v9, a1 + *(ContactQuickActionButton + 56), a2);
  v15(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_2669C4674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v13;
  ContactQuickActionButton = type metadata accessor for GetContactQuickActionButton(0, v17);
  v15 = *(v6 + 16);
  v15(v9, a1 + *(ContactQuickActionButton + 60), a2);
  v15(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

unint64_t sub_2669C4794()
{
  result = qword_2800ACC80;
  if (!qword_2800ACC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACC80);
  }

  return result;
}

uint64_t sub_2669C4830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2669C5F04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2669C4888(int8x16_t *a1)
{
  v2 = vextq_s8(*a1, *a1, 8uLL);
  v3 = vextq_s8(a1[1], a1[1], 8uLL);
  sub_2669C6104();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  sub_2669C4794();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669C4928()
{
  v0 = sub_2669C5C94();
  __swift_allocate_value_buffer(v0, qword_2800ACC88);
  __swift_project_value_buffer(v0, qword_2800ACC88);
  return sub_2669C5C84();
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2669C5C94();
  v3 = __swift_project_value_buffer(v2, qword_2800ACC88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2669C4AECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2669C4B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2669C5B04();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2669C5D44();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2669C4C7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2669C5B04();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5D44();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for GetContactAttributeViewModel()
{
  result = qword_2800ACCA0;
  if (!qword_2800ACCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2669C4D90()
{
  result = sub_2669C4E34();
  if (v1 <= 0x3F)
  {
    result = sub_2669C5B04();
    if (v2 <= 0x3F)
    {
      result = sub_2669C5D44();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2669C4E34()
{
  result = qword_2800ACCB0;
  if (!qword_2800ACCB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800ACCB0);
  }

  return result;
}

uint64_t sub_2669C4E90()
{
  v1 = sub_2669C5864();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = sub_2669C5894();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v18 = v17 - v16;
  v19 = v0 + *(type metadata accessor for GetContactAttributeViewModel() + 20);
  v20 = sub_2669C5AF4();
  v21 = MEMORY[0x26D5E3530](v20);
  (*(v13 + 8))(v18, v10);
  (*(v4 + 104))(v9, *MEMORY[0x277D559C0], v1);
  v22 = sub_2669BB284(v9, v21);

  (*(v4 + 8))(v9, v1);
  return v22;
}

uint64_t sub_2669C5030@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v35 - v7;
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  if ((*(v10 + 8))(v9, v10))
  {
    if (a1)
    {
      v11 = sub_2669C66A4();
      v13 = v12;
      v14 = sub_2669C66B4();
      v16 = v15;
      v35[0] = v11;
      v35[1] = v13;

      MEMORY[0x26D5E43B0](v14, v16);

      sub_2669C57B4();

      v17 = sub_2669C57C4();
      if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
      {
        (*(*(v17 - 8) + 32))(a2, v8, v17);
        v24 = a2;
        v25 = 0;
        v26 = 1;
        v27 = v17;
        return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      }

      sub_2669C5708(v8);
    }

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v18 = sub_2669C5C94();
    __swift_project_value_buffer(v18, qword_2800ACC88);
    v19 = sub_2669C5C74();
    v20 = sub_2669C6864();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v22, v23, "#GetContactAttributeViewModel callURL could not be built");
      MEMORY[0x26D5E4D50](v21, -1, -1);
    }

    sub_2669C57C4();
    v24 = OUTLINED_FUNCTION_3_9();
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v28 = sub_2669C5C94();
    __swift_project_value_buffer(v28, qword_2800ACC88);
    v29 = sub_2669C5C74();
    v30 = sub_2669C6864();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v32, v33, "#GetContactAttributeViewModel callURL but telephony unavailable");
      MEMORY[0x26D5E4D50](v31, -1, -1);
    }

    sub_2669C57C4();
    v24 = OUTLINED_FUNCTION_3_9();
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

void sub_2669C5344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2669C57C4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  sub_2669C5510();
  (*(v7 + 16))(v12, a1, v4);
  v13 = sub_2669BF318(v12);
  if (v13)
  {
    v14 = v13;
    v15 = v2[3];
    v16 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v15);
    (*(v16 + 16))(v14, sub_2669C5554, 0, v15, v16);
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v17 = sub_2669C5C94();
    __swift_project_value_buffer(v17, qword_2800ACC88);
    v14 = sub_2669C5C74();
    v18 = sub_2669C6864();
    if (os_log_type_enabled(v14, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266996000, v14, v18, "#GetContactAttributeViewModel performCall failed to construct dial request", v19, 2u);
      MEMORY[0x26D5E4D50](v19, -1, -1);
    }
  }
}

unint64_t sub_2669C5510()
{
  result = qword_2800ACA70;
  if (!qword_2800ACA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ACA70);
  }

  return result;
}

void sub_2669C5554(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    v4 = a1;
    v5 = sub_2669C5C74();
    v6 = sub_2669C6864();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_2669C6AB4();
      v11 = sub_26699F100(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_266996000, v5, v6, "#GetContactAttributeViewModel performCall error opening dial request %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5E4D50](v8, -1, -1);
      MEMORY[0x26D5E4D50](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2669C5708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}