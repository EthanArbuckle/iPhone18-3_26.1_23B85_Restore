uint64_t sub_26B9E3610()
{
  result = sub_26B9E68EC();
  qword_280434178 = result;
  return result;
}

uint64_t sub_26B9E3728()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_defaultExtensions);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434120, &qword_26B9E6E48);
    v3 = sub_26B9E692C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26B9E4894(0, *(v3 + 16) + 1, 1, v3);
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26B9E4894((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = sub_26B9E390C();
  *(v3 + 16) = v5 + 1;
  *(v3 + 8 * v5 + 32) = v6;
  return v3;
}

id sub_26B9E3868()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

unint64_t sub_26B9E390C()
{
  result = qword_280434128;
  if (!qword_280434128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434128);
  }

  return result;
}

uint64_t registerForContinuityDisplay()()
{
  type metadata accessor for ContinuityProfileProvider();
  swift_allocObject();
  sub_26B9E39EC();
  sub_26B9E68BC();
}

unint64_t sub_26B9E39EC()
{
  result = qword_280434130;
  if (!qword_280434130)
  {
    type metadata accessor for ContinuityProfileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434130);
  }

  return result;
}

uint64_t sub_26B9E3A44(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v2 setPreferredLevel_];
  [a1 setClientSettings_];
  v5[4] = sub_26B9E50CC;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26B9E3B68;
  v5[3] = &block_descriptor_11;
  v3 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_26B9E3B68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_26B9E3C0C(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v8 setPreferredLevel_];
  [a1 setClientSettings_];
  v11[4] = a3;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26B9E3B68;
  v11[3] = a4;
  v9 = _Block_copy(v11);

  [a1 updateSettingsWithBlock_];

  _Block_release(v9);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9E3D30(void *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v4 setPreferredLevel_];
  [a1 setClientSettings_];
  v7[4] = sub_26B9E50CC;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26B9E3B68;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);

  [a1 updateSettingsWithBlock_];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9E3E64()
{
  v1 = *v0;
  v2 = sub_26B9E680C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-1] - v8;
  v10 = sub_26B9E689C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9E68AC();
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277D54F80])
  {
    sub_26B9E67EC();
    *(swift_allocObject() + 16) = v1;
    sub_26B9E67FC();

    v15 = *(v3 + 8);
    v15(v7, v2);
    v19[3] = v2;
    v19[4] = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_26B9E67DC();
    v15(v9, v2);
    sub_26B9E684C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_26B9E682C();

    sub_26B9E682C();
  }

  else
  {
    sub_26B9E682C();
    sub_26B9E682C();

    sub_26B9E682C();

    (*(v11 + 8))(v14, v10);
  }

  v16 = sub_26B9E682C();

  return v16;
}

uint64_t sub_26B9E41B0(uint64_t a1)
{
  *(v1 + 72) = a1;
  sub_26B9E695C();
  *(v1 + 80) = sub_26B9E694C();
  v3 = sub_26B9E693C();

  return MEMORY[0x2822009F8](sub_26B9E4248, v3, v2);
}

uint64_t sub_26B9E4248()
{
  v4 = v1[9];
  v3 = v1[10];

  v5 = sub_26B9E4C74(v4);
  v6 = sub_26B9E4DA4(v4);
  v7 = sub_26B9E4EFC(v4);
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v32 = v7;
  v33 = v5;
  v31 = v6;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = 3;
  v11 = 0x279D11000uLL;
LABEL_2:
  if (v8 > 3)
  {
    v10 = v8;
  }

  while (v8 != 3)
  {
    if (v10 == v8)
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_22:
      *(swift_task_alloc() + 16) = v2;
      v25 = sub_26B9E681C();

      v26 = 0x279D11000;
      if (!v5)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v12 = v1[v8++ + 6];
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      v15 = [v13 *(v11 + 3768)];
      [v15 preferredLevel];
      v2 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26B9E4998(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      v0 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_26B9E4998((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v0;
      *&v9[8 * v18 + 32] = v2;
      v11 = v14;
      v10 = 3;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434138, &qword_26B9E6ED8);
  swift_arrayDestroy();
  v19 = *(v9 + 2);
  if (v19)
  {
    v2 = *(v9 + 4);
    v20 = v19 - 1;
    if (v20)
    {
      v21 = (v9 + 40);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v2 < v22)
        {
          v2 = v23;
        }

        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v2 = 0.0;
  }

  if (sub_26B9E65D8())
  {
    v24 = v1[9];
    v30 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v0 = [objc_allocWithZone(type metadata accessor for ContinuityDragAndDropSceneSpecification()) init];
    if (qword_280434118 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v25 = 0;
  v26 = 0x279D11000uLL;
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_25:
  [v33 *(v26 + 3760)];
LABEL_26:
  if (v6)
  {
    [v31 *(v26 + 3760)];
  }

  if (v7)
  {
    [v32 *(v26 + 3760)];
  }

  if (v25)
  {
    v27 = v25;
    [v27 *(v26 + 3760)];
  }

  v28 = v1[1];

  return v28();
}

uint64_t sub_26B9E45C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_26B9E4654(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9E46F0;

  return sub_26B9E41B0(a1);
}

uint64_t sub_26B9E46F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_26B9E4894(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434148, &qword_26B9E6EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26B9E4998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434140, &qword_26B9E6EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_26B9E4A9C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434150, &unk_26B9E6EF0);
  v10 = *(sub_26B9E67AC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9E67AC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26B9E4C74(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = [objc_allocWithZone(MEMORY[0x277D67CB8]) init];
  v3 = sub_26B9E68EC();
  v4 = [objc_opt_self() identityForDaemonJobLabel_];

  v5 = [objc_opt_self() identityForProcessIdentity_];
  v6 = sub_26B9E681C();

  return v6;
}

uint64_t sub_26B9E4DA4(void *a1)
{
  if (![objc_opt_self() isSupported])
  {
    return 0;
  }

  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [objc_allocWithZone(MEMORY[0x277D67DF8]) init];
  v4 = sub_26B9E68EC();
  v5 = [objc_opt_self() identityForDaemonJobLabel_];

  v6 = [objc_opt_self() identityForProcessIdentity_];
  v7 = sub_26B9E681C();

  return v7;
}

uint64_t sub_26B9E4EFC(void *a1)
{
  if (![objc_opt_self() isSupported])
  {
    return 0;
  }

  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [objc_allocWithZone(MEMORY[0x277D67E00]) init];
  v4 = sub_26B9E68EC();
  v5 = [objc_opt_self() identityForDaemonJobLabel_];

  v6 = [objc_opt_self() identityForProcessIdentity_];
  v7 = sub_26B9E681C();

  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static ContinuityDisplayProfile.profile.getter()
{
  v0 = sub_26B9E688C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *MEMORY[0x277D54FB0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434158, &qword_26B9E6F10);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B9E6F00;
  v13 = v12 + v11;
  v14 = v9[14];
  sub_26B9E67BC();
  *(v13 + v14) = _s26SpringBoardDisplayServices010ContinuityC7ProfileO13sceneRequestsSay13ShellSceneKit0J7RequestVGvgZ_0();
  sub_26B9E61B8(v12);
  swift_setDeallocating();
  sub_26B9E638C(v13);
  swift_deallocClassInstance();
  sub_26B9E687C();
  sub_26B9E697C();
  (*(v1 + 16))(v5, v7, v0);
  v15 = sub_26B9E696C();
  (*(v1 + 8))(v7, v0);
  return v15;
}

uint64_t sub_26B9E5328(size_t *a1)
{
  v3 = sub_26B9E67AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  if (qword_280434118 != -1)
  {
    swift_once();
  }

  v12 = qword_280434180;
  v13 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  v51 = a1;
  v14 = *a1;
  v15 = v14[2];
  if (v15)
  {
    v47 = v12;
    v48 = v4;
    v49 = v1;
    v16 = v4 + 16;
    v54 = *(v4 + 16);
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v46 = v13;
    v20 = v13;
    v45 = v14;
    sub_26B9E682C();
    v21 = MEMORY[0x277D84F90];
    v53 = v3;
    do
    {
      v54(v11, v17, v3);
      v22 = sub_26B9E679C();
      if (v22)
      {
        v23 = v22;
        [v22 preferredLevel];
        v25 = v24;

        (*v19)(v11, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_26B9E4998(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_26B9E4998((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        *&v21[8 * v27 + 32] = v25;
        v3 = v53;
      }

      else
      {
        (*v19)(v11, v3);
      }

      v17 += v18;
      --v15;
    }

    while (v15);

    v4 = v48;
    v28 = v46;
    v12 = v47;
  }

  else
  {
    v28 = v13;
    v29 = v13;
    v21 = MEMORY[0x277D84F90];
  }

  v30 = COERCE_DOUBLE(sub_26B9E45C8(v21));
  v32 = v31;

  v33 = v30 + 1.0;
  if (v32)
  {
    v33 = 1.0;
  }

  [v28 setPreferredLevel_];

  [objc_allocWithZone(type metadata accessor for ContinuityDragAndDropSceneSpecification()) init];
  v34 = v28;
  v35 = v12;
  v36 = v52;
  sub_26B9E678C();
  v37 = v50;
  (*(v4 + 16))(v50, v36, v3);
  v38 = v51;
  v39 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_26B9E4A9C(0, v39[2] + 1, 1, v39);
    *v38 = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    *v38 = sub_26B9E4A9C(v41 > 1, v42 + 1, 1, v39);
  }

  (*(v4 + 8))(v52, v3);
  v43 = *v38;
  *(v43 + 16) = v42 + 1;
  return (*(v4 + 32))(v43 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v42, v37, v3);
}

uint64_t sub_26B9E577C(uint64_t a1, uint64_t a2)
{
  sub_26B9E694C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_26B9E65B0();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_26B9E698C();
    MEMORY[0x26D688540](0xD00000000000003FLL, 0x800000026B9E7200);
    v8 = sub_26B9E69CC();
    MEMORY[0x26D688540](v8);

    MEMORY[0x26D688540](46, 0xE100000000000000);
    result = sub_26B9E699C();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B9E5904(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26B9E67CC();
  sub_26B9E6550(&qword_28158B068);
  v5 = sub_26B9E68CC();

  return sub_26B9E5988(a1, v5);
}

unint64_t sub_26B9E5988(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26B9E67CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26B9E6550(&qword_280434170);
      v16 = sub_26B9E68DC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *_s26SpringBoardDisplayServices010ContinuityC7ProfileO13sceneRequestsSay13ShellSceneKit0J7RequestVGvgZ_0()
{
  v0 = sub_26B9E67AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v43 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v43 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_26B9E68EC();
  v17 = [objc_opt_self() identityForDaemonJobLabel_];

  v18 = [objc_opt_self() identityForProcessIdentity_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v19 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CB8]) init];
  v51 = v19;
  v54 = v18;
  sub_26B9E678C();
  v20 = *(v1 + 16);
  v52 = v15;
  v49 = v20;
  v20(v13, v15, v0);
  v21 = sub_26B9E4A9C(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_26B9E4A9C(v22 > 1, v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = *(v1 + 32);
  v47 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v48 = v24;
  v25 = *(v1 + 72);
  v24(&v21[v47 + v25 * v23], v13, v0);
  v55 = v21;
  v26 = [objc_opt_self() isSupported];
  v53 = v1;
  if (v26)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v27 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67DF8]) init];
    v28 = v54;
    v29 = v27;
    v30 = v50;
    sub_26B9E678C();
    v31 = v44;
    v49(v44, v30, v0);
    v33 = *(v21 + 2);
    v32 = *(v21 + 3);
    if (v33 >= v32 >> 1)
    {
      v21 = sub_26B9E4A9C(v32 > 1, v33 + 1, 1, v21);
    }

    v1 = v53;

    (*(v1 + 8))(v50, v0);
    *(v21 + 2) = v33 + 1;
    v48(&v21[v47 + v33 * v25], v31, v0);
    v55 = v21;
  }

  if ([objc_opt_self() isSupported])
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v34 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E00]) init];
    v35 = v54;
    v36 = v34;
    v37 = v45;
    sub_26B9E678C();
    v38 = v46;
    v49(v46, v37, v0);
    v40 = *(v21 + 2);
    v39 = *(v21 + 3);
    if (v40 >= v39 >> 1)
    {
      v21 = sub_26B9E4A9C(v39 > 1, v40 + 1, 1, v21);
    }

    v1 = v53;
    (*(v53 + 8))(v37, v0);
    *(v21 + 2) = v40 + 1;
    v48(&v21[v47 + v40 * v25], v38, v0);
    v55 = v21;
  }

  if (sub_26B9E65D8())
  {
    v41 = sub_26B9E695C();
    MEMORY[0x28223BE20](v41);
    *(&v43 - 2) = &v55;
    sub_26B9E577C(sub_26B9E6594, (&v43 - 4));

    (*(v1 + 8))(v52, v0);
  }

  else
  {
    (*(v1 + 8))(v52, v0);
  }

  return v55;
}

unint64_t sub_26B9E61B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434168, &unk_26B9E6F70);
    v8 = sub_26B9E69AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26B9E64E0(v10, v6);
      result = sub_26B9E5904(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26B9E67CC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_26B9E638C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContinuityDisplayProfile(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContinuityDisplayProfile(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_26B9E64E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9E6550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26B9E67CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B9E65B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26B9E65D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_26B9E68FC();
    v4 = v3;

    v5 = v2 == 0xD000000000000015 && 0x800000026B9E7270 == v4;
    if (v5 || (sub_26B9E69BC() & 1) != 0 || (v2 == 0xD00000000000001FLL ? (v6 = 0x800000026B9E7250 == v4) : (v6 = 0), v6))
    {

      return 1;
    }

    v7 = sub_26B9E69BC();

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_26B9E66F0()
{
  v0 = sub_26B9E68EC();
  v1 = [objc_opt_self() identityForAngelJobLabel_];

  v2 = [objc_opt_self() identityForProcessIdentity_];
  qword_280434180 = v2;
}