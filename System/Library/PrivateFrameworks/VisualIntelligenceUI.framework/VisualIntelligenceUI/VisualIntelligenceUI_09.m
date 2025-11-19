id sub_21E0182F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          v7 = [objc_opt_self() sharedShimmeringLight];
LABEL_25:
          v8 = v7;
          v9 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

          [v9 setActivationTransitionDirection_];
LABEL_29:
          [v9 setDeactivationTransitionDirection_];
          return v9;
        }

        v2 = [objc_opt_self() sharedShimmeringLight];
        v3 = [objc_allocWithZone(MEMORY[0x277D76030]) initWithLightSource:v2 radius:1 region:8.0];
LABEL_28:
        v9 = v3;

        [v9 setActivationTransitionDirection_];
        goto LABEL_29;
      }

      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(MEMORY[0x277D76030]);
      v5 = 2.0;
LABEL_27:
      v3 = [v4 initWithLightSource:v2 radius:0 region:v5];
      goto LABEL_28;
    }

    if (a1)
    {
      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(MEMORY[0x277D76030]);
      v5 = 5.0;
      goto LABEL_27;
    }

    v6 = objc_allocWithZone(MEMORY[0x277D76038]);

    return [v6 initWithMode_];
  }

  else
  {
    if (a1 <= 7u)
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {

          return sub_21E0197B0();
        }

        else
        {
          sub_21DF3ED18(0, &qword_27CEAA6D8);
          v10 = [objc_opt_self() textAssistantReplacementBuildInPalette];
          v11 = sub_21E142604();
          [v11 setDuration_];
          [v11 setDirection_];
          v12 = [objc_opt_self() directionalLightWithConfiguration_];
          v13 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

          return v13;
        }
      }

      v7 = [objc_opt_self() sharedLight];
      goto LABEL_25;
    }

    if (a1 == 8)
    {

      return sub_21E0198C8();
    }

    else
    {
      if (a1 == 9)
      {
        v2 = [objc_opt_self() sharedShimmeringLight];
        v4 = objc_allocWithZone(MEMORY[0x277D76030]);
        v5 = 3.0;
        goto LABEL_27;
      }

      return sub_21E0199EC();
    }
  }
}

uint64_t sub_21E01868C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TamaleVisualEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TamaleVisualEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_21E01884C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - v8;
  if ([objc_opt_self() isMainThread])
  {

    return sub_21E018B1C(a3, a1, a2);
  }

  else
  {
    v20 = 0;
    sub_21DF3ED18(0, &qword_280F68C78);
    v11 = sub_21E1425C4();
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = &v20;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    (*(v7 + 32))(v13 + v12, v9, v6);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21E019AEC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_21E019B74;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E09DB40;
    aBlock[3] = &block_descriptor_26;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v11, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v17 = v20;
      if (v20)
      {

        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_21E018B1C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  [v5 _setContinuousCornerRadius_];
  v6 = *(a3 + 16);
  if (v6)
  {
    v11 = MEMORY[0x277D84F90];

    sub_21E142924();
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      sub_21E0182F4(v8);
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  sub_21DF3ED18(0, &qword_27CEAA6D0);
  v9 = sub_21E1422C4();

  [v5 setBackgroundEffects_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8);
  sub_21E1406D4();
  *(v11 + 16) = a3;

  return v5;
}

uint64_t sub_21E018CA8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = a3;
  v28 = a1;
  v6 = sub_21E141E74();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E141E94();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_21DF3ED18(0, &qword_280F68C78);
  v26 = sub_21E1425C4();
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = v19 + v18;
  v21 = v28;
  *v20 = v27;
  *(v20 + 8) = a4;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_21E0195C8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  v23 = v21;

  sub_21E141E84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E01968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21E0196E4();
  sub_21E142764();
  v24 = v26;
  MEMORY[0x223D52E10](0, v11, v8, v22);
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_21E019048(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8);
  sub_21E1406D4();
  v7 = *(v21 + 16);

  v8 = sub_21E0E04FC(v7, a3);

  if (v8)
  {
  }

  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21E142924();
    v12 = (a3 + 32);
    do
    {
      v13 = *v12++;
      sub_21E0182F4(v13);
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      --v10;
    }

    while (v10);
    v11 = v21;
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = v11;
  v25 = sub_21E019748;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_21E079CD4;
  v24 = &block_descriptor_11;
  v16 = _Block_copy(&v21);
  v17 = a4;

  [v14 animateWithDuration:v16 animations:0.9];
  _Block_release(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a1;
  v25 = sub_21E01979C;
  v26 = v18;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_21E079CD4;
  v24 = &block_descriptor_17;
  v19 = _Block_copy(&v21);

  v20 = v17;

  [v14 animateWithDuration:v19 animations:0.05];
  _Block_release(v19);
  sub_21E1406D4();
  *(v21 + 16) = a3;

  sub_21E1406D4();
  *(v21 + 24) = a1;
}

void sub_21E019330(void *a1)
{
  sub_21DF3ED18(0, &qword_27CEAA6D0);
  v2 = sub_21E1422C4();
  [a1 setBackgroundEffects_];
}

uint64_t sub_21E0193C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for VisualEffectView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;
}

unint64_t sub_21E019430()
{
  result = qword_27CEAA6B8;
  if (!qword_27CEAA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA6B8);
  }

  return result;
}

uint64_t sub_21E019484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E019574();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E0194E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E019574();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E01954C()
{
  sub_21E019574();
  sub_21E1402A4();
  __break(1u);
}

unint64_t sub_21E019574()
{
  result = qword_27CEAA6C0;
  if (!qword_27CEAA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA6C0);
  }

  return result;
}

uint64_t sub_21E0195C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v0 + v4);

  return sub_21E019048(v7, v0 + v2, v6, v8);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E01968C()
{
  result = qword_280F68CE8;
  if (!qword_280F68CE8)
  {
    sub_21E141E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68CE8);
  }

  return result;
}

unint64_t sub_21E0196E4()
{
  result = qword_280F68CA8;
  if (!qword_280F68CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68CA8);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{

  return swift_deallocObject();
}

id sub_21E0197B0()
{
  v0 = [objc_opt_self() sharedLight];
  v1 = [objc_opt_self() mainBundle];
  v2 = objc_allocWithZone(MEMORY[0x277D76028]);
  v3 = sub_21E1420F4();
  v4 = sub_21E1420F4();
  v5 = [v2 initWithLightSource:v0 lightMaterial:v3 darkMaterial:v4 bundle:v1];

  [v5 setActivationTransitionDirection_];
  [v5 setDeactivationTransitionDirection_];
  return v5;
}

id sub_21E0198C8()
{
  sub_21DF3ED18(0, &qword_27CEAA6D8);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = sub_21E142604();
  [v1 setDirection_];
  [v1 setReverse_];
  [v1 setDuration_];
  v2 = [objc_opt_self() directionalLightWithConfiguration_];
  v3 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];
  [v3 setActivationTransitionDirection_];
  [v3 setDeactivationTransitionDirection_];

  return v3;
}

id sub_21E0199EC()
{
  sub_21DF3ED18(0, &qword_27CEAA6D8);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = sub_21E142604();
  [v1 setDuration_];
  [v1 setDirection_];
  [v1 setReverse_];
  v2 = [objc_opt_self() directionalLightWithConfiguration_];
  v3 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

  return v3;
}

uint64_t sub_21E019AEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8) - 8);
  v2 = *(v0 + 16);
  *v2 = sub_21E018B1C(*(v0 + 32), v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), *(v0 + 24));

  return MEMORY[0x2821F96F8]();
}

uint64_t getEnumTagSinglePayload for ContentOverlayBackdropModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ContentOverlayBackdropModifier(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21E019D30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6E0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6F0);
  MEMORY[0x28223BE20](v38);
  v11 = &v35 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6F8);
  MEMORY[0x28223BE20](v42);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA700);
  MEMORY[0x28223BE20](v41);
  v18 = &v35 - v17;
  if (a2)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA708);
    (*(*(v19 - 8) + 16))(v18, v39, v19);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAA718, &qword_27CEAA708);
    sub_21E01A628();
    return sub_21E1402F4();
  }

  else
  {
    v21 = sub_21E141CC4();
    v36 = v16;
    v23 = v22;
    v24 = sub_21E140914();
    v35 = v4;
    v25 = v24;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA708);
    (*(*(v37 - 8) + 16))(v9, v39, v37);
    v26 = &v9[*(v7 + 36)];
    *v26 = 0x3FF0000000000000;
    v26[8] = 1;
    v26[9] = v25;
    v26[10] = 0;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    sub_21E141484();
    v27 = sub_21E141514();

    LOBYTE(v23) = sub_21E140914();
    sub_21DF3DE9C(v9, v11, &qword_27CEAA6E8);
    v28 = &v11[*(v38 + 36)];
    *v28 = v27;
    v28[8] = v23;
    sub_21E141484();
    v29 = sub_21E141514();

    v30 = *(v35 + 36);
    v31 = *MEMORY[0x277CE13F0];
    v32 = sub_21E141D94();
    (*(*(v32 - 8) + 104))(v6 + v30, v31, v32);
    *v6 = v29;
    LOBYTE(v31) = sub_21E140914();
    v33 = &v13[*(v42 + 36)];
    sub_21DF3DE9C(v6, v33, &qword_27CEAA6E0);
    *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA710) + 36)) = v31;
    sub_21DF3DE9C(v11, v13, &qword_27CEAA6F0);
    v34 = v36;
    sub_21DF3DE9C(v13, v36, &qword_27CEAA6F8);
    sub_21E01A5B8(v34, v18);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAA718, &qword_27CEAA708);
    sub_21E01A628();
    sub_21E1402F4();
    return sub_21E01A87C(v34);
  }
}

uint64_t sub_21E01A2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E141A34();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA760);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  sub_21E1405F4();
  v13 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA768) + 36)] = v13;
  LOBYTE(v13) = sub_21E140974();
  sub_21E13F374();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA770) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(v13) = sub_21E140904();
  sub_21E13F374();
  v23 = &v12[*(v10 + 44)];
  *v23 = v13;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_21E140144();
  (*(*(v29 - 8) + 104))(v4, v28, v29);
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21E140604();
  v30 = sub_21E141514();

  sub_21E01A8E4(v4, v8);
  *&v8[*(v6 + 60)] = v30;
  *&v8[*(v6 + 64)] = 256;
  v31 = sub_21E141CC4();
  v33 = v32;
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA778) + 36);
  sub_21DF3DE9C(v8, v34, &qword_27CEA6EF8);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA780) + 36));
  *v35 = v31;
  v35[1] = v33;
  return sub_21DF3DE9C(v12, a1, &qword_27CEAA760);
}

uint64_t sub_21E01A5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E01A628()
{
  result = qword_27CEAA720;
  if (!qword_27CEAA720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA6F8);
    sub_21E01A6E0();
    sub_21DF23E5C(&qword_27CEAA758, &qword_27CEAA710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA720);
  }

  return result;
}

unint64_t sub_21E01A6E0()
{
  result = qword_27CEAA728;
  if (!qword_27CEAA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA6F0);
    sub_21E01A798();
    sub_21DF23E5C(&qword_27CEAA748, &qword_27CEAA750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA728);
  }

  return result;
}

unint64_t sub_21E01A798()
{
  result = qword_27CEAA730;
  if (!qword_27CEAA730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA6E8);
    sub_21DF23E5C(&qword_27CEAA718, &qword_27CEAA708);
    sub_21DF23E5C(&qword_27CEAA738, &qword_27CEAA740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA730);
  }

  return result;
}

uint64_t sub_21E01A87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E01A8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E141A34();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E01A948()
{
  result = qword_27CEAA788;
  if (!qword_27CEAA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA790);
    sub_21DF23E5C(&qword_27CEAA718, &qword_27CEAA708);
    sub_21E01A628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA788);
  }

  return result;
}

unint64_t sub_21E01AA00()
{
  result = qword_27CEAA798;
  if (!qword_27CEAA798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA778);
    sub_21E01AB14(&qword_27CEAA7A0, &qword_27CEAA760, &unk_21E14E9A8, sub_21E01AAE4);
    sub_21DF23E5C(&qword_27CEAA7B8, &qword_27CEAA780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA798);
  }

  return result;
}

uint64_t sub_21E01AB14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E01AB98()
{
  result = qword_27CEAA7B0;
  if (!qword_27CEAA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA768);
    sub_21DF4DD08();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA7B0);
  }

  return result;
}

uint64_t type metadata accessor for EventResultView()
{
  result = qword_27CEAA7C0;
  if (!qword_27CEAA7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E01ACC4()
{
  sub_21E01B12C(319, &qword_280F69050, &qword_27CEA79F0, &unk_21E147F90, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21E01B12C(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21E01B078(319, &qword_280F69040, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21E01B078(319, &qword_27CEA7108, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21DF3ED18(319, &qword_27CEA9B18);
          if (v4 <= 0x3F)
          {
            sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21E13D304();
              if (v6 <= 0x3F)
              {
                sub_21E01B078(319, &qword_27CEAA7D0, type metadata accessor for CGImage, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_21E01B078(319, &qword_27CEA9290, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SessionAnalytics();
                    if (v9 <= 0x3F)
                    {
                      sub_21E01B12C(319, &qword_27CEA8280, &qword_27CEAD110, &unk_21E148960, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_21E01B0DC(319, &qword_280F68D48, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                        if (v11 <= 0x3F)
                        {
                          sub_21E01B12C(319, &qword_27CEAA7D8, &qword_27CEA8878, &unk_21E1498F0, MEMORY[0x277CE10B8]);
                          if (v12 <= 0x3F)
                          {
                            sub_21E01B12C(319, &qword_27CEAA7E0, &qword_27CEA9B00, &unk_21E14C830, MEMORY[0x277CE10B8]);
                            if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_21E01B078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21E01B0DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21E01B12C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21E01B1AC()
{
  v1 = sub_21E13FF94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_21E142574();
    v7 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21E01B2F0()
{
  type metadata accessor for EventResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  result = sub_21E141714();
  if (v3 == 1)
  {
    result = sub_21E01B1AC();
    if (result)
    {
      v1 = result;
      swift_beginAccess();
      if (*(v1 + 16) == 1)
      {
        *(v1 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21E023BCC(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction);
        sub_21E13D3B4();
      }
    }
  }

  return result;
}

uint64_t sub_21E01B484@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for EventResultView();
  v4 = *(v3 - 8);
  v39 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA7E8);
  MEMORY[0x28223BE20](v34);
  v7 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA7F0);
  MEMORY[0x28223BE20](v38);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA7F8);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x28223BE20](v10);
  v40 = &v33 - v12;
  *v7 = sub_21E1401C4();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA800);
  sub_21E01BA68(v2, &v7[*(v13 + 44)]);
  sub_21E021688(v2, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_21E0216EC(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_21DF23E5C(&qword_27CEAA808, &qword_27CEAA7E8);
  v33 = v9;
  sub_21E140E94();

  sub_21DF23614(v7, &qword_27CEAA7E8);
  sub_21E021688(v2, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_21E0216EC(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  v17 = &v9[*(v38 + 36)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = sub_21E021AA0;
  *(v17 + 3) = v16;
  v18 = v2 + *(v39 + 84);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v42) = v19;
  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141734();
  sub_21E021688(v2, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_21E0216EC(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v14);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA810);
  v23 = sub_21E021B28();
  v24 = sub_21E021C24();
  v25 = v38;
  v26 = v33;
  sub_21E141274();

  sub_21DF23614(v26, &qword_27CEAA7F0);
  v27 = v2 + *(v39 + 88);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v42) = v28;
  v43 = v29;
  sub_21E141734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA828);
  sub_21E141714();
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA830);
  v42 = v25;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_21E021D0C();
  sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830);
  v30 = v35;
  v31 = v40;
  sub_21E141224();

  sub_21DF23614(&v46, &qword_27CEA9B00);
  return (*(v36 + 8))(v31, v30);
}

uint64_t sub_21E01BA68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA850);
  MEMORY[0x28223BE20](v68);
  v61 = (&v59 - v3);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA858);
  MEMORY[0x28223BE20](v64);
  v67 = &v59 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA860);
  MEMORY[0x28223BE20](v65);
  v60 = (&v59 - v5);
  v6 = sub_21E1401B4();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA868);
  MEMORY[0x28223BE20](v69);
  v66 = &v59 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA870);
  MEMORY[0x28223BE20](v70);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA878);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA880);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA888);
  MEMORY[0x28223BE20](v18 - 8);
  v72 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v71 = sub_21E01C490();
  v23 = (a1 + *(type metadata accessor for EventResultView() + 84));
  v24 = *v23;
  v25 = *(v23 + 1);
  v75 = v24;
  v76 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  if (v74 == 1)
  {
    sub_21E01C964(v14);
    v26 = sub_21E140904();
    v27 = &v14[*(v12 + 36)];
    *v27 = v26;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    v27[40] = 1;
    sub_21E023114();
    sub_21E141164();
    sub_21DF23614(v14, &qword_27CEAA878);
    sub_21E13F6A4();
    sub_21E13F6B4();
    sub_21E13F6C4();

    sub_21E13F694();
    v28 = sub_21E13F6C4();

    *&v17[*(v15 + 36)] = v28;
    v29 = &qword_27CEAA880;
    sub_21DF236C0(v17, v11, &qword_27CEAA880);
    swift_storeEnumTagMultiPayload();
    sub_21E022FA0();
    sub_21E0237EC();
    sub_21E1402F4();
    v30 = v17;
  }

  else
  {
    v59 = v15;
    v31 = v11;
    sub_21E021E38(&qword_27CEA7140, MEMORY[0x277CE02A8], v8);
    v32 = sub_21E1401A4();
    (*(v62 + 8))(v8, v63);
    if (v32)
    {
      v33 = sub_21E1401C4();
      v34 = v60;
      *v60 = v33;
      *(v34 + 8) = 0x4020000000000000;
      *(v34 + 16) = 0;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9C8);
      sub_21E01D214(v34 + *(v35 + 44));
      v36 = sub_21E140904();
      v37 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA8C8) + 36);
      *v37 = v36;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      *(v37 + 40) = 1;
      v38 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA8B8) + 36));
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
      v40 = *MEMORY[0x277CDF420];
      v41 = sub_21E13F454();
      (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
      *v38 = swift_getKeyPath();
      sub_21E13F6A4();
      sub_21E13F6B4();
      sub_21E13F6C4();

      sub_21E13F694();
      v42 = sub_21E13F6C4();

      *(v34 + *(v65 + 36)) = v42;
      v43 = &qword_27CEAA860;
      sub_21DF236C0(v34, v67, &qword_27CEAA860);
    }

    else
    {
      v45 = sub_21E140004();
      v34 = v61;
      *v61 = v45;
      *(v34 + 8) = 0x4022000000000000;
      *(v34 + 16) = 0;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA890);
      sub_21E01D214(v34 + *(v46 + 44));
      v47 = sub_21E140904();
      v48 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA898) + 36);
      *v48 = v47;
      *(v48 + 8) = 0u;
      *(v48 + 24) = 0u;
      *(v48 + 40) = 1;
      v49 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA8A0) + 36));
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
      v51 = *MEMORY[0x277CDF420];
      v52 = sub_21E13F454();
      (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
      *v49 = swift_getKeyPath();
      sub_21E13F6A4();
      sub_21E13F6B4();
      sub_21E13F6C4();

      sub_21E13F694();
      v53 = sub_21E13F6C4();

      v54 = v67;
      *(v34 + *(v68 + 36)) = v53;
      v43 = &qword_27CEAA850;
      sub_21DF236C0(v34, v54, &qword_27CEAA850);
    }

    swift_storeEnumTagMultiPayload();
    sub_21E022B50();
    sub_21E022D78();
    v44 = v66;
    sub_21E1402F4();
    sub_21DF23614(v34, v43);
    v29 = &qword_27CEAA868;
    sub_21DF236C0(v44, v31, &qword_27CEAA868);
    swift_storeEnumTagMultiPayload();
    sub_21E022FA0();
    sub_21E0237EC();
    sub_21E1402F4();
    v30 = v44;
  }

  sub_21DF23614(v30, v29);
  v55 = v72;
  sub_21DF236C0(v22, v72, &qword_27CEAA888);
  v56 = v73;
  *v73 = v71;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9C0);
  sub_21DF236C0(v55, v56 + *(v57 + 48), &qword_27CEAA888);

  sub_21DF23614(v22, &qword_27CEAA888);
  sub_21DF23614(v55, &qword_27CEAA888);
}

uint64_t sub_21E01C490()
{
  v1 = sub_21E13F1B4();
  v21[1] = *(v1 - 8);
  v21[2] = v1;
  MEMORY[0x28223BE20](v1);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E13D484();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D304();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = sub_21E13D044();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_21E13D4A4();
  v22 = *(v13 - 8);
  v23 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EventResultView();
  v21[3] = *(v0 + v16[9]);
  v17 = *(v6 + 16);
  v17(v11, v0 + v16[11], v5);
  v17(v8, v0 + v16[12], v5);

  sub_21E13D034();

  v18 = v24;
  sub_21E13D494();
  sub_21E13D474();
  v19 = sub_21E13D464();
  (*(v25 + 8))(v18, v26);
  (*(v22 + 8))(v15, v23);
  return v19;
}

uint64_t sub_21E01C964@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v53 = type metadata accessor for CapsuleButtonStyle();
  MEMORY[0x28223BE20](v53);
  v52 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA988);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA980);
  MEMORY[0x28223BE20](v58);
  v54 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9D0);
  MEMORY[0x28223BE20](v56);
  v57 = &v47 - v6;
  v7 = sub_21E140714();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for EventResultView();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA958);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA940);
  MEMORY[0x28223BE20](v55);
  v16 = &v47 - v15;
  v17 = sub_21E141C74();
  v50 = v2;
  sub_21E021688(v2, &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_21E0216EC(&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9D8);
    sub_21E0238D0();
    sub_21E141764();
    v20 = &v14[*(v12 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
    v22 = *MEMORY[0x277CDF420];
    v23 = sub_21E13F454();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    sub_21E140704();
    sub_21E023428();
    sub_21E023BCC(&qword_27CEA72E8, MEMORY[0x277CDE400]);
    sub_21E140DC4();
    (*(v48 + 8))(v9, v7);
    sub_21DF23614(v14, &qword_27CEAA958);
    v24 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA950) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
    sub_21E13FD04();
    *v24 = swift_getKeyPath();
    v25 = sub_21E1414B4();
    KeyPath = swift_getKeyPath();
    v27 = &v16[*(v55 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = &qword_27CEAA940;
    sub_21DF236C0(v16, v57, &qword_27CEAA940);
    swift_storeEnumTagMultiPayload();
    sub_21E02322C();
    sub_21E02350C();
    sub_21E1402F4();
    v29 = v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9390);
    sub_21DFD10E4();
    v30 = v49;
    sub_21E141764();
    v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9A0) + 36));
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
    v33 = *MEMORY[0x277CDF420];
    v34 = sub_21E13F454();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    v35 = (v30 + *(v51 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
    sub_21E13FD04();
    *v35 = swift_getKeyPath();
    v36 = v50 + *(v47 + 84);
    v37 = *v36;
    v38 = *(v36 + 8);
    v61 = v37;
    v62 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141714();
    LOBYTE(v35) = v60;
    v39 = swift_getKeyPath();
    v40 = v52;
    *v52 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    *(v40 + *(v53 + 20)) = (v35 & 1) == 0;
    sub_21E023650();
    sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
    v41 = v54;
    sub_21E140DD4();
    sub_21DF42B90(v40);
    sub_21DF23614(v30, &qword_27CEAA988);
    v42 = sub_21E1414B4();
    v43 = swift_getKeyPath();
    v44 = v57;
    v45 = (v41 + *(v58 + 36));
    *v45 = v43;
    v45[1] = v42;
    v28 = &qword_27CEAA980;
    sub_21DF236C0(v41, v44, &qword_27CEAA980);
    swift_storeEnumTagMultiPayload();
    sub_21E02322C();
    sub_21E02350C();
    sub_21E1402F4();
    v29 = v41;
  }

  return sub_21DF23614(v29, v28);
}

uint64_t sub_21E01D214@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v94 = &v72 - v2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9E8);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v72 - v7;
  v8 = type metadata accessor for EventResultView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v10;
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9F8);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v13 = &v72 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA00);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA08);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v72 - v19;
  sub_21E021688(v1, v11);
  v79 = *(v9 + 80);
  v20 = (v79 + 16) & ~v79;
  v78 = v20;
  v21 = swift_allocObject();
  sub_21E0216EC(v11, v21 + v20);
  v98 = v1;
  v22 = v1;
  v73 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA10);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7200);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA18);
  v25 = sub_21DF4232C();
  v26 = sub_21E0239EC();
  v99 = v23;
  v100 = MEMORY[0x277CE1350];
  v101 = v24;
  v102 = v25;
  v27 = MEMORY[0x277CE1340];
  v103 = MEMORY[0x277CE1340];
  v104 = v26;
  v76 = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeConformance2();
  v28 = v13;
  sub_21E141764();
  sub_21E141C84();
  v97 = v22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA30);
  v75 = MEMORY[0x277CDF028];
  v31 = sub_21DF23E5C(&qword_27CEAAA38, &qword_27CEAA9F8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA40);
  v33 = sub_21E140194();
  v34 = sub_21E023AE8();
  v35 = sub_21E023BCC(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
  v99 = v32;
  v100 = v33;
  v101 = v34;
  v102 = v35;
  v74 = MEMORY[0x277CDE668];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_21E023C14();
  v38 = v15;
  v39 = v81;
  v40 = MEMORY[0x277CE1350];
  sub_21E141354();
  (*(v82 + 8))(v28, v39);
  v99 = v39;
  v100 = v40;
  v41 = v40;
  v101 = v29;
  v102 = v30;
  v103 = v31;
  v104 = v27;
  v105 = OpaqueTypeConformance2;
  v106 = v37;
  v82 = MEMORY[0x277CE0E60];
  swift_getOpaqueTypeConformance2();
  v42 = v83;
  sub_21E141164();
  (*(v84 + 8))(v38, v42);
  v43 = v73;
  v44 = v77;
  sub_21E021688(v73, v77);
  v45 = v78;
  v46 = swift_allocObject();
  sub_21E0216EC(v44, v46 + v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72A8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72B0);
  v48 = sub_21DF4275C();
  v99 = MEMORY[0x277CE0BD8];
  v100 = v41;
  v49 = v41;
  v101 = v47;
  v102 = MEMORY[0x277CE0BC8];
  v103 = v27;
  v104 = v48;
  swift_getOpaqueTypeConformance2();
  sub_21E141764();
  sub_21E141C84();
  v96 = v43;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72C0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72C8);
  v52 = sub_21DF23E5C(&qword_27CEA72D0, &qword_27CEA71C8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72D8);
  v54 = sub_21E140714();
  v55 = sub_21DF427E0();
  v56 = sub_21E023BCC(&qword_27CEA72E8, MEMORY[0x277CDE400]);
  v99 = v53;
  v100 = v54;
  v101 = v55;
  v102 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = type metadata accessor for CapsuleButtonStyle();
  v59 = sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  v99 = v53;
  v100 = v58;
  v101 = v55;
  v102 = v59;
  v71 = swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v89;
  v62 = v94;
  sub_21E141354();
  (*(v90 + 8))(v62, v61);
  v99 = v61;
  v100 = v49;
  v101 = v50;
  v102 = v51;
  v103 = v52;
  v104 = v27;
  v105 = v57;
  v106 = v71;
  swift_getOpaqueTypeConformance2();
  v63 = v87;
  v64 = v91;
  sub_21E141164();
  (*(v92 + 8))(v60, v64);
  v65 = v95;
  v66 = v85;
  sub_21DF236C0(v95, v85, &qword_27CEAAA08);
  v67 = v88;
  sub_21DF236C0(v63, v88, &qword_27CEAA9F0);
  v68 = v93;
  sub_21DF236C0(v66, v93, &qword_27CEAAA08);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA58);
  sub_21DF236C0(v67, v68 + *(v69 + 48), &qword_27CEAA9F0);
  sub_21DF23614(v63, &qword_27CEAA9F0);
  sub_21DF23614(v65, &qword_27CEAAA08);
  sub_21DF23614(v67, &qword_27CEAA9F0);
  return sub_21DF23614(v66, &qword_27CEAAA08);
}

uint64_t sub_21E01DDB4()
{
  type metadata accessor for EventResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA848);
  return sub_21E141724();
}

uint64_t sub_21E01DE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventResultView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21E01DF30();
  sub_21E021688(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21E0216EC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = sub_21E140934();
  *a2 = v7;
  *(a2 + 8) = sub_21E021D60;
  *(a2 + 16) = v9;
  *(a2 + 24) = result;
  return result;
}

id sub_21E01DF30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_21E13D264();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EventResultView();
  v10 = *(v0 + v9[8]);
  v11 = [objc_opt_self() eventWithEventStore_];
  v12 = sub_21E1420F4();
  [v11 setTitle_];

  v13 = sub_21E13D2C4();
  [v11 setStartDate_];

  v14 = sub_21E13D2C4();
  [v11 setEndDate_];

  [v11 setAllDay_];
  v15 = [v10 defaultCalendarForNewEvents];
  [v11 setCalendar_];

  v16 = (v1 + v9[10]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = sub_21E1420F4();
      [v11 setLocation_];
    }
  }

  v21 = (v1 + v9[14]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = sub_21E1420F4();
      [v11 setNotes_];
    }
  }

  sub_21DF236C0(v1 + v9[16], v4, &qword_27CEA9990);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_21DF23614(v4, &qword_27CEA9990);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v26 = sub_21E13D1D4();
    [v11 setURL_];

    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

uint64_t sub_21E01E2A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EventResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  if (a1)
  {
    v7 = *(a4 + *(v6 + 32));
    v8 = sub_21E1420F4();
    v9 = [v7 eventWithIdentifier_];

    if (v9)
    {
      sub_21E0221D4(v9);
    }
  }

  sub_21E141724();
  result = sub_21E01B2F0();
  v11 = (a4 + *(v6 + 72));
  if (*v11)
  {
    return (*v11)(result);
  }

  return result;
}

uint64_t sub_21E01E3F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EventResultView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21E1400D4();
  sub_21E021688(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21E0216EC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_21E141774();
}

uint64_t sub_21E01E53C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13D384();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21E1420E4();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13D054();
  if (!v6)
  {
    sub_21E142084();
    sub_21DF3ED18(0, &qword_280F68C20);
    if (!sub_21E1426B4())
    {
      v7 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    sub_21E142184();
  }

  sub_21DF252E0();
  result = sub_21E140C94();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_21E01E6F4(uint64_t a1)
{
  v2 = type metadata accessor for EventResultView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21E1423F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21E021688(a1, v5);
  sub_21E1423C4();
  v10 = sub_21E1423B4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21E0216EC(v5, v12 + v11);
  sub_21E0C2E04(0, 0, v8, &unk_21E14EDE8, v12);
}

uint64_t sub_21E01E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for EventResultView() - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21E1423C4();
  v4[8] = sub_21E1423B4();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_21E01EA38;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 11, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v7);
}

uint64_t sub_21E01EA38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21E01ED20;
  }

  else
  {
    v2 = sub_21E01EB4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E01EB4C()
{
  *(v0 + 89) = *(v0 + 88);
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E01EBCC, v2, v1);
}

uint64_t sub_21E01EBCC()
{
  v1 = *(v0 + 89);

  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = sub_21E1423F4();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_21E021688(v4, v3);
    v7 = sub_21E1423B4();
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v7;
    *(v9 + 24) = v10;
    sub_21E0216EC(v3, v9 + v8);
    sub_21E0C2E04(0, 0, v2, &unk_21E14EDF8, v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21E01ED20()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E01EDA4, v2, v1);
}

uint64_t sub_21E01EDA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E01EE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21E1423C4();
  *(v4 + 24) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E01EEAC, v6, v5);
}

uint64_t sub_21E01EEAC()
{
  v6 = v0;
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  sub_21E141D64();
  sub_21E13F864();

  type metadata accessor for EventResultView();
  v4 = 10;
  v5[0] = 5;
  sub_21E0F8C08(&v4, v5);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21E01EF9C()
{
  type metadata accessor for EventResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21E01F018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200);
  MEMORY[0x28223BE20](v0);
  v2 = v12 - v1;
  sub_21E1400D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = sub_21E140C64();
  v6 = v5;
  v12[1] = v4;
  v12[2] = v5;
  v8 = v7 & 1;
  v13 = v7 & 1;
  v14 = v9;
  sub_21E141164();
  sub_21DF3DE8C(v4, v6, v8);

  v10 = sub_21E141C84();
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA18);
  sub_21DF4232C();
  sub_21E0239EC();
  sub_21E141364();
  return sub_21DF23614(v2, &qword_27CEA7200);
}

uint64_t sub_21E01F27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_21E13F444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7218);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7208);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF236C0(a1, v13, &qword_27CEA7200);
  v18 = (v13 + *(v11 + 36));
  v19 = v34;
  v18[4] = v33;
  v18[5] = v19;
  v18[6] = v35;
  v20 = v30;
  *v18 = v29;
  v18[1] = v20;
  v21 = v32;
  v18[2] = v31;
  v18[3] = v21;
  sub_21DF423E8();
  sub_21E1411F4();
  sub_21DF23614(v13, &qword_27CEA7218);
  type metadata accessor for EventResultView();
  sub_21E021E38(&qword_27CEAD070, MEMORY[0x277CDF3E0], v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3C0], v4);
  LOBYTE(v13) = sub_21E13F434();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  if (v13)
  {
    v23 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    v23 = sub_21E141484();
  }

  v24 = v23;
  v25 = v28;
  (*(v15 + 32))(v28, v17, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA18);
  *(v25 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_21E01F5EC(uint64_t a1)
{
  v2 = sub_21E140194();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA40);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v10 = (&v13 + *(v9 + 36) - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9F8);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  sub_21E140184();
  sub_21E023AE8();
  sub_21E023BCC(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
  sub_21E140DC4();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEAAA40);
}

uint64_t sub_21E01F814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v28 = a3;
  v3 = sub_21E13F444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for CapsuleButtonStyle();
  MEMORY[0x28223BE20](v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA68);
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v10 + 20)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9F8);
  sub_21DF23E5C(&qword_27CEAAA38, &qword_27CEAA9F8);
  sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  sub_21E140DD4();
  sub_21DF42B90(v12);
  type metadata accessor for EventResultView();
  sub_21E021E38(&qword_27CEAD070, MEMORY[0x277CDF3E0], v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
  v16 = sub_21E13F434();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v17(v9, v3);
  if (v16)
  {
    v18 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    v18 = sub_21E141484();
  }

  v19 = v18;
  KeyPath = swift_getKeyPath();
  v29 = v19;
  v21 = sub_21E13F674();
  v22 = v28;
  (*(v26 + 32))(v28, v15, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA30);
  v24 = (v22 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v21;
  return result;
}

unint64_t sub_21E01FBCC(uint64_t a1)
{
  v2 = type metadata accessor for EventResultView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21[-v8];
  v10 = sub_21E01DF30();
  v11 = *(a1 + *(v3 + 40));
  v12 = sub_21E1423F4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_21E021688(a1, v6);
  sub_21E1423C4();
  v13 = v11;
  v14 = v10;
  v15 = sub_21E1423B4();
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v15;
  v18[3] = v19;
  v18[4] = v13;
  sub_21E0216EC(v6, v18 + v16);
  *(v18 + v17) = v14;
  sub_21E0C2E04(0, 0, v9, &unk_21E14ED78, v18);

  v23 = 9;
  v22 = 5;
  return sub_21E0F8C08(&v23, &v22);
}

uint64_t sub_21E01FE00()
{
  sub_21E1400D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v0 = [objc_opt_self() mainBundle];
  }

  v1 = sub_21E140C64();
  v3 = v2;
  v5 = v4;
  sub_21E140AC4();
  v6 = sub_21E140C44();
  v8 = v7;
  v10 = v9;

  sub_21DF3DE8C(v1, v3, v5 & 1);

  sub_21E141C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72B0);
  sub_21DF4275C();
  sub_21E141364();
  sub_21DF3DE8C(v6, v8, v10 & 1);
}

uint64_t sub_21E01FFE8(uint64_t a1)
{
  v2 = sub_21E140714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v10 = (&v13 + *(v9 + 36) - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  sub_21E140704();
  sub_21DF427E0();
  sub_21E023BCC(&qword_27CEA72E8, MEMORY[0x277CDE400]);
  sub_21E140DC4();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEA72D8);
}

uint64_t sub_21E020210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapsuleButtonStyle();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8];
  v11 = &v17[*(v10 + 36) - v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v11 = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = (a2 + *(type metadata accessor for EventResultView() + 84));
  v14 = *v13;
  v15 = *(v13 + 1);
  v17[16] = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  LOBYTE(a2) = v17[15];
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v4 + 20)) = (a2 & 1) == 0;
  sub_21DF427E0();
  sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  sub_21E140DD4();
  sub_21DF42B90(v6);
  return sub_21DF23614(v9, &qword_27CEA72D8);
}

uint64_t sub_21E020484(uint64_t a1)
{
  v2 = sub_21E13FF94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_21E13D264();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for EventResultView() + 88));
  v14 = *(v13 + 2);
  v31 = *v13;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA848);
  result = sub_21E141714();
  v16 = v30;
  if (v30)
  {
    v23 = v3;
    v24 = v2;
    v17 = v29;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_21E142884();

    *&v31 = 0xD000000000000013;
    *(&v31 + 1) = 0x800000021E15D1B0;
    v29 = v17;
    v30 = v16;
    v27 = 58;
    v28 = 0xE100000000000000;
    v25 = 47;
    v26 = 0xE100000000000000;
    sub_21DF252E0();
    v18 = sub_21E142734();
    v20 = v19;

    MEMORY[0x223D52A60](v18, v20);

    sub_21E13D244();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_21DF23614(v8, &qword_27CEA9990);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v21 = *(a1 + 16);
      if (*(a1 + 32) == 1)
      {
      }

      else
      {

        sub_21E142574();
        v22 = sub_21E1408C4();
        sub_21E13F184();

        sub_21E13FF84();
        swift_getAtKeyPath();
        sub_21DF446B8();
        (*(v23 + 8))(v5, v24);
        v21 = v31;
      }

      LOBYTE(v31) = 1;
      v21(v12, &v31);

      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

__n128 sub_21E020868@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9390);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  sub_21E141684();
  v6 = sub_21E140AC4();
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(v3 + 44)];
  *v8 = KeyPath;
  v8[1] = v6;
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21E02395C(v5, a1);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA9D8) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_21E0209F4@<X0>(uint64_t a1@<X8>)
{
  sub_21E141684();
  v2 = sub_21E140AC4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9390);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_21E020AA8@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21E020B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v7 = sub_21E1406F4();
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  v8 = type metadata accessor for EventResultView();
  v6[46] = v8;
  v9 = *(v8 - 8);
  v6[47] = v9;
  v6[48] = *(v9 + 64);
  v6[49] = swift_task_alloc();
  sub_21E1423C4();
  v6[50] = sub_21E1423B4();
  v11 = sub_21E142364();
  v6[51] = v11;
  v6[52] = v10;

  return MEMORY[0x2822009F8](sub_21E020CF8, v11, v10);
}

uint64_t sub_21E020CF8()
{
  v1 = v0[40];
  v0[2] = v0;
  v0[7] = v0 + 54;
  v0[3] = sub_21E020E14;
  v2 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA60);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_21E021458;
  v0[23] = &block_descriptor_65;
  v0[24] = v2;
  [v1 requestFullAccessToEventsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21E020E14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  v3 = *(v1 + 416);
  v4 = *(v1 + 408);
  if (v2)
  {
    v5 = sub_21E0212EC;
  }

  else
  {
    v5 = sub_21E020F44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21E020F44()
{

  if (*(v0 + 432) == 1)
  {
    sub_21E0221D4(*(v0 + 336));
    v1 = *(v0 + 392);
    v2 = *(v0 + 376);
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v5 = *(v0 + 344);
    v6 = *(v0 + 328);
    *(swift_task_alloc() + 16) = v6;
    sub_21E021688(v6, v1);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_21E0216EC(v1, v8 + v7);
    sub_21E141D64();
    sub_21E1406E4();
    sub_21E13F854();

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E145380;
    *(inited + 32) = sub_21E142124();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000021E15D250;
    sub_21DF2667C(inited);
    swift_setDeallocating();
    sub_21DF23614(inited + 32, &qword_27CEA6B98);
    v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v12 = sub_21E1420F4();
    v13 = sub_21E141FF4();

    v14 = [v11 initWithDomain:v12 code:1 userInfo:v13];

    swift_willThrow();
    v15 = *(v0 + 368);
    v16 = *(v0 + 328);
    v17 = v14;
    sub_21DFEAEF0(v14, (v0 + 224));
    sub_21DF236C0(v0 + 224, v0 + 264, &qword_27CEA9B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA828);
    sub_21E141724();
    sub_21DF23614(v0 + 224, &qword_27CEA9B00);
    v18 = v16 + *(v15 + 80);
    v19 = *(v18 + 8);
    *(v0 + 304) = *v18;
    *(v0 + 312) = v19;
    *(v0 + 433) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141724();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_21E0212EC()
{

  swift_willThrow();
  v1 = *(v0 + 424);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = v1;
  sub_21DFEAEF0(v1, (v0 + 224));
  sub_21DF236C0(v0 + 224, v0 + 264, &qword_27CEA9B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA828);
  sub_21E141724();
  sub_21DF23614(v0 + 224, &qword_27CEA9B00);
  v5 = v3 + *(v2 + 80);
  v6 = *(v5 + 8);
  *(v0 + 304) = *v5;
  *(v0 + 312) = v6;
  *(v0 + 433) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21E021458(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21E021524()
{
  type metadata accessor for EventResultView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  return sub_21E01B2F0();
}

void sub_21E0215B0(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  [v6 drawInRect_];
}

void sub_21E021638(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_21E021688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventResultView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0216EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventResultView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for EventResultView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  j__swift_release();
  sub_21DF446B8();
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E1401B4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  v8 = sub_21E13D304();
  v9 = *(*(v8 - 8) + 8);
  v9(v2 + v7, v8);
  v9(v2 + v1[12], v8);

  v10 = v1[16];
  v11 = sub_21E13D264();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  if (*(v2 + v1[18]))
  {
  }

  v13 = v2 + v1[23];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return swift_deallocObject();
}

uint64_t sub_21E021AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventResultView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E01DE24(v4, a1);
}

unint64_t sub_21E021B28()
{
  result = qword_27CEAA818;
  if (!qword_27CEAA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA7E8);
    sub_21DF23E5C(&qword_27CEAA808, &qword_27CEAA7E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA818);
  }

  return result;
}

unint64_t sub_21E021C24()
{
  result = qword_27CEAA820;
  if (!qword_27CEAA820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA810);
    sub_21E021CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA820);
  }

  return result;
}

unint64_t sub_21E021CB0()
{
  result = qword_27CEADB00;
  if (!qword_27CEADB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADB00);
  }

  return result;
}

unint64_t sub_21E021D0C()
{
  result = qword_27CEAA838;
  if (!qword_27CEAA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA838);
  }

  return result;
}

uint64_t sub_21E021D60(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for EventResultView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21E01E2A4(a1, a2, a3, v8);
}

uint64_t sub_21E021E38@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_21E13FF94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_21DF236C0(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_21E142574();
    v17 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_21E02205C(uint64_t a1)
{
  v2 = sub_21E13F454();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x223D50600](v5);
}

uint64_t sub_21E022124@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x223D50720]();
  *a1 = result;
  return result;
}

uint64_t sub_21E02217C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FF64();
  *a1 = result;
  return result;
}

void sub_21E0221D4(void *a1)
{
  v87 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v3 = sub_21E13F1B4();
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = v76 - v7;
  v8 = sub_21E13D264();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v83 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v76 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v76 - v15;
  v86 = type metadata accessor for EventResultView();
  v17 = *(v86 + 60);
  v88 = v1;
  v18 = *(v1 + v17);
  if (v18)
  {
    v84 = v2;
    v19 = objc_opt_self();
    v20 = v18;
    v77 = v19;
    v21 = [v19 defaultManager];
    v22 = [v21 temporaryDirectory];

    sub_21E13D214();
    v81 = v16;
    sub_21E13D1F4();
    v24 = v9 + 8;
    v23 = *(v9 + 8);
    v82 = v8;
    v79 = v9;
    v80 = v23;
    v23(v13, v8);
    v25 = CGImageGetWidth(v20) * 0.8;
    v26 = CGImageGetHeight(v20) * 0.8;
    v27 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
    [v27 setScale_];
    v28 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v27 format:{v25, v26}];
    v29 = swift_allocObject();
    *(v29 + 16) = v20;
    *(v29 + 24) = v25;
    *(v29 + 32) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_21E022AE4;
    *(v30 + 24) = v29;
    v94 = sub_21E022AF0;
    v95 = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v92 = sub_21E021638;
    v93 = &block_descriptor_7;
    v31 = _Block_copy(&aBlock);
    v32 = v20;

    v33 = [v28 imageWithActions_];
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    v78 = v32;
    v34 = UIImagePNGRepresentation(v33);
    if (v34)
    {
      v35 = v34;
      v76[1] = v24;
      v36 = sub_21E13D284();
      v38 = v37;

      v39 = v81;
      v40 = v84;
      sub_21E13D294();
      if (!v40)
      {
        v84 = 0;

        sub_21DFA15AC(v36, v38);
        v51 = v79;
        v49 = v85;
        v42 = v82;
        (*(v79 + 16))(v85, v39, v82);
        v41 = 0;
        v43 = v39;
        v50 = v86;
        goto LABEL_12;
      }

      sub_21DFA15AC(v36, v38);
      v84 = 0;
      v41 = 1;
      v42 = v82;
      v43 = v39;
    }

    else
    {

      v41 = 1;
      v43 = v81;
      v42 = v82;
    }

    v49 = v85;
    v50 = v86;
    v51 = v79;
LABEL_12:
    (*(v51 + 56))(v49, v41, 1, v42);

    v52 = (*(v51 + 48))(v49, 1, v42);
    v53 = v80;
    if (v52 == 1)
    {
      sub_21DF23614(v49, &qword_27CEA9990);
      v54 = v87;
    }

    else
    {
      v55 = v83;
      (*(v51 + 32))(v83, v49, v42);
      v56 = objc_allocWithZone(MEMORY[0x277CC5998]);
      v57 = sub_21E13D1D4();
      v58 = [v56 initWithFilepath_];

      v54 = v87;
      [v87 addAttachment_];

      v53(v55, v42);
    }

    v59 = v88;
    v60 = *(v88 + *(v50 + 32));
    *&aBlock = 0;
    if ([v60 saveEvent:v54 span:0 error:&aBlock])
    {
      v61 = aBlock;
      v62 = [v54 eventIdentifier];
      if (v62)
      {
        v63 = v62;
        v64 = sub_21E142124();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      v68 = (v59 + *(v50 + 88));
      v69 = *(v68 + 2);
      aBlock = *v68;
      v92 = v69;
      v89 = v64;
      v90 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA848);
      sub_21E141724();
      v70 = [v77 defaultManager];
      v71 = sub_21E13D1D4();
      *&aBlock = 0;
      v72 = [v70 removeItemAtURL:v71 error:&aBlock];

      if (v72)
      {
        v73 = aBlock;
        v53(v43, v42);
      }

      else
      {
        v74 = aBlock;
        v75 = sub_21E13D0F4();

        swift_willThrow();
        v53(v43, v42);
      }
    }

    else
    {
      v67 = aBlock;
      sub_21E13D0F4();

      swift_willThrow();
      v53(v43, v42);
    }

    return;
  }

  v44 = v3;
  v45 = v84;
  sub_21E13EBE4();
  v46 = sub_21E13F1A4();
  v47 = sub_21E142554();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_21DF05000, v46, v47, "Tried to save a nil image to the new event, early returning", v48, 2u);
    MEMORY[0x223D540B0](v48, -1, -1);
  }

  v45[1](v5, v44);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E022B50()
{
  result = qword_27CEAA8A8;
  if (!qword_27CEAA8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA860);
    sub_21E022C08();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8A8);
  }

  return result;
}

unint64_t sub_21E022C08()
{
  result = qword_27CEAA8B0;
  if (!qword_27CEAA8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA8B8);
    sub_21E022CC0();
    sub_21DF23E5C(&qword_27CEA7188, &qword_27CEA7158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8B0);
  }

  return result;
}

unint64_t sub_21E022CC0()
{
  result = qword_27CEAA8C0;
  if (!qword_27CEAA8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA8C8);
    sub_21DF23E5C(&qword_27CEAA8D0, &qword_27CEAA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8C0);
  }

  return result;
}

unint64_t sub_21E022D78()
{
  result = qword_27CEAA8E0;
  if (!qword_27CEAA8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA850);
    sub_21E022E30();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8E0);
  }

  return result;
}

unint64_t sub_21E022E30()
{
  result = qword_27CEAA8E8;
  if (!qword_27CEAA8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA8A0);
    sub_21E022EE8();
    sub_21DF23E5C(&qword_27CEA7188, &qword_27CEA7158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8E8);
  }

  return result;
}

unint64_t sub_21E022EE8()
{
  result = qword_27CEAA8F0;
  if (!qword_27CEAA8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA898);
    sub_21DF23E5C(&qword_27CEAA8F8, &qword_27CEAA900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA8F0);
  }

  return result;
}

unint64_t sub_21E022FA0()
{
  result = qword_27CEAA908;
  if (!qword_27CEAA908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA880);
    sub_21E023058();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA908);
  }

  return result;
}

unint64_t sub_21E023058()
{
  result = qword_27CEAA910;
  if (!qword_27CEAA910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA918);
    sub_21E023114();
    sub_21E023BCC(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA910);
  }

  return result;
}

unint64_t sub_21E023114()
{
  result = qword_27CEAA920;
  if (!qword_27CEAA920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA878);
    sub_21E0231A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA920);
  }

  return result;
}

unint64_t sub_21E0231A0()
{
  result = qword_27CEAA928;
  if (!qword_27CEAA928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA930);
    sub_21E02322C();
    sub_21E02350C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA928);
  }

  return result;
}

unint64_t sub_21E02322C()
{
  result = qword_27CEAA938;
  if (!qword_27CEAA938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA940);
    sub_21E0232E4();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA938);
  }

  return result;
}

unint64_t sub_21E0232E4()
{
  result = qword_27CEAA948;
  if (!qword_27CEAA948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA958);
    sub_21E140714();
    sub_21E023428();
    sub_21E023BCC(&qword_27CEA72E8, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA948);
  }

  return result;
}

unint64_t sub_21E023428()
{
  result = qword_27CEAA960;
  if (!qword_27CEAA960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA958);
    sub_21DF23E5C(&qword_27CEAA968, &qword_27CEAA970);
    sub_21DF23E5C(&qword_27CEA7188, &qword_27CEA7158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA960);
  }

  return result;
}

unint64_t sub_21E02350C()
{
  result = qword_27CEAA978;
  if (!qword_27CEAA978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA988);
    type metadata accessor for CapsuleButtonStyle();
    sub_21E023650();
    sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA978);
  }

  return result;
}

unint64_t sub_21E023650()
{
  result = qword_27CEAA990;
  if (!qword_27CEAA990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA988);
    sub_21E023708();
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA990);
  }

  return result;
}

unint64_t sub_21E023708()
{
  result = qword_27CEAA998;
  if (!qword_27CEAA998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA9A0);
    sub_21DF23E5C(&qword_27CEAA9A8, &qword_27CEAA9B0);
    sub_21DF23E5C(&qword_27CEA7188, &qword_27CEA7158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA998);
  }

  return result;
}

unint64_t sub_21E0237EC()
{
  result = qword_27CEAA9B8;
  if (!qword_27CEAA9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA868);
    sub_21E022B50();
    sub_21E022D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA9B8);
  }

  return result;
}

unint64_t sub_21E0238D0()
{
  result = qword_27CEAA9E0;
  if (!qword_27CEAA9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA9D8);
    sub_21DFD10E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA9E0);
  }

  return result;
}

uint64_t sub_21E02395C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E0239EC()
{
  result = qword_27CEAAA20;
  if (!qword_27CEAAA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7218);
    sub_21DF423E8();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAA20);
  }

  return result;
}

unint64_t sub_21E023AE8()
{
  result = qword_27CEAAA48;
  if (!qword_27CEAAA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA40);
    sub_21DF23E5C(&qword_27CEAAA38, &qword_27CEAA9F8);
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAA48);
  }

  return result;
}

uint64_t sub_21E023BCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E023C14()
{
  result = qword_27CEAAA50;
  if (!qword_27CEAAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA9F8);
    type metadata accessor for CapsuleButtonStyle();
    sub_21DF23E5C(&qword_27CEAAA38, &qword_27CEAA9F8);
    sub_21E023BCC(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA7298, &qword_27CEA72A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAA50);
  }

  return result;
}

uint64_t sub_21E023DA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EventResultView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21E023E20(uint64_t a1)
{
  v4 = *(type metadata accessor for EventResultView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21DF8DAF8;

  return sub_21E020B9C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_21E023F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E023FF8()
{
  v1 = type metadata accessor for EventResultView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 80) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_21E024074(uint64_t a1)
{
  v4 = *(type metadata accessor for EventResultView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF4AA04;

  return sub_21E01E8AC(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_74Tm()
{
  v1 = type metadata accessor for EventResultView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  j__swift_release();
  sub_21DF446B8();
  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E13F444();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21E1401B4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  v9 = sub_21E13D304();
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v10(v3 + v1[12], v9);

  v11 = v1[16];
  v12 = sub_21E13D264();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  if (*(v3 + v1[18]))
  {
  }

  v14 = v3 + v1[23];
  if (*(v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  return swift_deallocObject();
}

uint64_t sub_21E0244BC(uint64_t a1)
{
  v4 = *(type metadata accessor for EventResultView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E01EE14(a1, v6, v7, v1 + v5);
}

uint64_t Omnibar.sheetModel.getter()
{
  type metadata accessor for Omnibar();
}

uint64_t type metadata accessor for Omnibar()
{
  result = qword_280F694A8;
  if (!qword_280F694A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21E024668()
{
  v1 = sub_21E13FF94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return *(v0 + 24);
  }

  sub_21E142574();
  v7 = sub_21E1408C4();
  sub_21E13F184();

  sub_21E13FF84();
  swift_getAtKeyPath();
  sub_21DFE0F78(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t Omnibar.model.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Omnibar.bar.getter()
{
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t Omnibar.items.getter()
{
  v1 = *(v0 + 40);
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

id Omnibar.sheetAssistant.getter()
{
  v1 = *(v0 + *(type metadata accessor for Omnibar() + 36));

  return v1;
}

void Omnibar.sheetAssistant.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Omnibar() + 36);

  *(v1 + v3) = a1;
}

uint64_t sub_21E024AEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Omnibar() + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21E02D3B8;
  a2[1] = v6;
}

uint64_t sub_21E024B6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for Omnibar() + 40));

  *v6 = sub_21E02D37C;
  v6[1] = v5;
  return result;
}

uint64_t Omnibar.handler.getter()
{
  v1 = *(v0 + *(type metadata accessor for Omnibar() + 40));

  return v1;
}

uint64_t Omnibar.handler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Omnibar() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Omnibar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for Omnibar();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = v2 - 8;
  v41 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA70);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v39 - v7);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA78);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - v9;
  *v8 = sub_21E141CC4();
  v8[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAA80);
  sub_21E025348(v1, v8 + *(v11 + 44));
  v12 = v1;
  sub_21E02C8A4(v1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_21E02C908(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v8 + *(v6 + 36));
  *v15 = sub_21E02C96C;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = v12;
  v17 = *(*(v12 + *(v5 + 44)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v51 = v17;
  sub_21E02E4A0(&qword_280F6C000, type metadata accessor for SheetModel);

  sub_21E13D3C4();

  swift_beginAccess();
  v18 = *(v17 + 32);

  LODWORD(v50) = v18;
  sub_21E02C8A4(v12, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_21E02C908(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v13);
  sub_21E02CA4C();
  v20 = v40;
  sub_21E141324();

  sub_21DF23614(v8, &qword_27CEAAA70);
  v21 = sub_21E141D64();
  v22 = *(v12 + 40);
  swift_getKeyPath();
  v50 = v22;
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  LOBYTE(v23) = *(v22 + v23);
  v24 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAA0) + 36);
  *v24 = v21;
  *(v24 + 8) = v23;
  v25 = sub_21E141D64();
  swift_getKeyPath();
  v49 = v22;
  sub_21E13D3C4();

  v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v27 = *(v22 + v26);
  swift_getKeyPath();
  v48 = v27;
  sub_21E02E4A0(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v29 = *(v27 + v28);

  v30 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAA8) + 36));
  *v30 = v25;
  v30[1] = v29;
  v31 = sub_21E141D64();
  v32 = v16 + *(v41 + 88);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v32) = *(v32 + 16);
  v44 = v33;
  v45 = v34;
  v46 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v47, v35);
  v36 = v47;
  v37 = v20 + *(v42 + 36);
  *v37 = v31;
  *(v37 + 8) = v36;
  swift_getKeyPath();
  v44 = v22;
  sub_21E13D3C4();

  swift_beginAccess();
  type metadata accessor for SessionAnalytics();
  sub_21E02CB04();
  sub_21E02E4A0(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

  sub_21E140DF4();

  return sub_21DF23614(v20, &qword_27CEAAA78);
}

uint64_t sub_21E025348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a2;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAE8);
  MEMORY[0x28223BE20](v301);
  v310 = &v263 - v3;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAF0);
  MEMORY[0x28223BE20](v303);
  v304 = &v263 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v302 = &v263 - v6;
  MEMORY[0x28223BE20](v7);
  v329 = &v263 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAF8);
  v268 = *(v9 - 8);
  v269 = v9;
  MEMORY[0x28223BE20](v9);
  v267 = &v263 - v10;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB00);
  MEMORY[0x28223BE20](v280);
  *&v271 = &v263 - v11;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB08);
  v273 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v272 = &v263 - v12;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB10);
  MEMORY[0x28223BE20](v275);
  v279 = &v263 - v13;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v276);
  v270 = &v263 - v14;
  v15 = sub_21E1403A4();
  v285 = *(v15 - 8);
  v286 = v15;
  MEMORY[0x28223BE20](v15);
  v283 = &v263 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v284 = &v263 - v18;
  v19 = sub_21E1403C4();
  v289 = *(v19 - 8);
  v290 = v19;
  MEMORY[0x28223BE20](v19);
  v287 = &v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v288 = &v263 - v22;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB18);
  v266 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v274 = &v263 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB20);
  v299 = *(v24 - 8);
  v300 = v24;
  MEMORY[0x28223BE20](v24);
  v277 = &v263 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB28);
  MEMORY[0x28223BE20](v26 - 8);
  v328 = &v263 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v332 = &v263 - v29;
  v30 = sub_21E13FFD4();
  v319 = *(v30 - 8);
  v320 = v30;
  MEMORY[0x28223BE20](v30);
  v317 = &v263 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  KeyPath = &v263 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB30);
  v323 = *(v34 - 8);
  v324 = v34;
  MEMORY[0x28223BE20](v34);
  v322 = (&v263 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB38);
  MEMORY[0x28223BE20](v36 - 8);
  v327 = &v263 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v334 = &v263 - v39;
  v306 = type metadata accessor for Omnibar();
  v40 = *(v306 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v306);
  v42 = type metadata accessor for ColorSchemeTracker();
  MEMORY[0x28223BE20](v42);
  v44 = (&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8328);
  v46 = v45 - 8;
  MEMORY[0x28223BE20](v45);
  v326 = &v263 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v263 - v49;
  *v44 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  sub_21E02E4A0(qword_280F6A9A8, type metadata accessor for ColorSchemeTracker);
  sub_21E141004();
  sub_21E02E4E8(v44, type metadata accessor for ColorSchemeTracker);
  v335 = a1;
  sub_21E02C8A4(a1, &v263 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v52 = swift_allocObject();
  sub_21E02C908(&v263 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51);
  v53 = *(v46 + 44);
  v325 = v50;
  v54 = &v50[v53];
  *v54 = sub_21E02D41C;
  v54[1] = v52;
  v55 = *(a1 + 40);
  swift_getKeyPath();
  v56 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v350 = v55;
  v57 = sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v58 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v59 = *(v55 + v58);
  swift_getKeyPath();
  *&v350 = v59;
  sub_21E02E4A0(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v60 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v61 = *(v59 + v60);

  v62 = v56;

  OpaqueTypeConformance2 = *(v61 + 16);

  swift_getKeyPath();
  *&v350 = v55;
  v333 = v57;
  sub_21E13D3C4();

  v63 = *(v55 + v58);
  swift_getKeyPath();
  *&v350 = v63;

  v64 = v306;
  sub_21E13D3C4();

  v65 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v66 = *(v63 + v65);

  v67 = *(v66 + 16);

  v68 = *(v335 + v64[9]);
  v69 = OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_isActive;
  swift_beginAccess();
  v321 = v68;
  if (*(v68 + v69) == 1)
  {
    v70 = NewSaliencyModel.shouldPeekForPresentedEntity.getter() ^ 1;
  }

  else
  {
    v70 = 1;
  }

  v71 = OpaqueTypeConformance2 == 0;
  v72 = v67 == 0;
  swift_getKeyPath();
  *&v350 = v55;
  v309 = v62;
  sub_21E13D3C4();

  v73 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
  swift_beginAccess();
  v74 = *(v55 + v73);
  swift_getKeyPath();
  *&v350 = v74;
  sub_21E02E4A0(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v75 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  swift_beginAccess();
  v307 = *(v74 + v75);

  LODWORD(v282) = v70;
  v76 = v72 | v70;
  v77 = 1;
  v78 = v310;
  if ((v76 & 1) == 0 || (v71 & v307) != 0)
  {
    v79 = sub_21E140004();
    v80 = v322;
    *v322 = v79;
    v80[1] = 0;
    *(v80 + 16) = 1;
    sub_21E141CC4();
    sub_21E13F664();
    v81 = v374;
    v82 = v375;
    v83 = v377;
    v84 = v379;
    v315 = v378;
    v316 = v376;
    v85 = v335 + v64[20];
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v85) = *(v85 + 16);
    *&v350 = v86;
    *(&v350 + 1) = v87;
    LOBYTE(v351[0]) = v85;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
    MEMORY[0x223D52200](&v336, v88);
    if (v336 == 1)
    {
      v89 = (v335 + v64[16]);
      v90 = *v89;
      v91 = v89[1];
      *&v350 = v90;
      *(&v350 + 1) = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
      sub_21E141714();
    }

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC10);
    v93 = v322;
    v94 = v322 + *(v92 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC18);
    v95 = v335;
    sub_21E140EB4();
    *v94 = v81;
    v94[8] = v82;
    v96 = v315;
    *(v94 + 2) = v316;
    v94[24] = v83;
    *(v94 + 4) = v96;
    *(v94 + 5) = v84;
    v97 = sub_21E141CC4();
    v99 = v98;
    v100 = (v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC20) + 36));
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC28);
    sub_21E02791C(v100 + *(v101 + 36));
    *v100 = v97;
    v100[1] = v99;
    LOBYTE(v97) = sub_21E140904();
    sub_21E13F374();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v110 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC30) + 36);
    *v110 = v97;
    *(v110 + 8) = v103;
    *(v110 + 16) = v105;
    *(v110 + 24) = v107;
    *(v110 + 32) = v109;
    *(v110 + 40) = 0;
    LOBYTE(v99) = sub_21E140934();
    sub_21E024668();
    sub_21E13F374();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v119 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC38) + 36);
    *v119 = v99;
    *(v119 + 8) = v112;
    *(v119 + 16) = v114;
    *(v119 + 24) = v116;
    *(v119 + 32) = v118;
    *(v119 + 40) = 0;
    v120 = (v95 + v64[14]);
    v121 = *v120;
    v122 = v120[1];
    *&v350 = v121;
    *(&v350 + 1) = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
    sub_21E141714();
    v123 = v336;
    *(v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC40) + 36)) = v123;
    v124 = KeyPath;
    sub_21E13FFC4();
    v126 = v319;
    v125 = v320;
    (*(v319 + 16))(v317, v124, v320);
    sub_21E02E4A0(&qword_27CEA6B20, MEMORY[0x277CE0068]);
    v127 = sub_21E13F704();
    (*(v126 + 8))(v124, v125);
    *(v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC48) + 36)) = v127;
    *(v93 + v324[9]) = 0;
    sub_21DF3DE9C(v93, v334, &qword_27CEAAB30);
    v77 = 0;
    v78 = v310;
  }

  (*(v323 + 56))(v334, v77, 1, v324);
  v128 = v335;
  v129 = v335 + v64[20];
  v130 = *v129;
  v131 = *(v129 + 8);
  LOBYTE(v129) = *(v129 + 16);
  *&v350 = v130;
  *(&v350 + 1) = v131;
  LOBYTE(v351[0]) = v129;

  v324 = v321;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419F4();
  v322 = *(&v336 + 1);
  v323 = v336;
  LODWORD(v321) = v337;
  v132 = (v128 + v64[14]);
  v133 = *v132;
  v134 = v132[1];
  *&v336 = *v132;
  *(&v336 + 1) = v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141734();
  v319 = *(&v350 + 1);
  v320 = v350;
  v298 = *&v351[0];
  KeyPath = swift_getKeyPath();
  v368 = 0;
  *&v336 = 0;
  sub_21E141704();
  v317 = *(&v350 + 1);
  v136 = v350;
  *&v336 = 0;
  sub_21E141704();
  v312 = *(&v350 + 1);
  v313 = v350;
  v311 = v368;
  LODWORD(v316) = sub_21E140904();
  sub_21E13F374();
  v314 = v138;
  v315 = v137;
  v140 = v139;
  v297 = v141;
  v367 = 0;
  v142 = (v128 + v64[12]);
  v143 = *v142;
  v144 = v142[1];
  *&v350 = v143;
  v293 = v144;
  *(&v350 + 1) = v144;
  sub_21E141714();
  v145 = v336;
  v146 = (v128 + v64[13]);
  v147 = *v146;
  v148 = v146[1];
  *&v350 = v147;
  *(&v350 + 1) = v148;
  sub_21E141714();
  v149 = v336;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v295 = v151;
  v296 = v150;
  swift_getKeyPath();
  *&v350 = v55;
  sub_21E13D3C4();

  v152 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  v153 = swift_beginAccess();
  v292 = v152;
  v154 = 0;
  if ((*(v55 + v152) & 1) == 0)
  {
    *&v350 = v133;
    *(&v350 + 1) = v134;
    v153 = sub_21E141714();
    v154 = v336;
  }

  v331 = v55;
  v308 = v140;
  v294 = v154;
  v291 = v134;
  if (OpaqueTypeConformance2)
  {
    v155 = 1;
    v156 = v332;
  }

  else
  {
    v265 = v135;
    if (v282 & 1 | ((v307 & 1) == 0))
    {
      MEMORY[0x28223BE20](v153);
      v157 = v335;
      *(&v263 - 2) = v335;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB80);
      sub_21E02D67C();
      v158 = v267;
      sub_21E141684();
      sub_21DF23E5C(&qword_280F68DA0, &qword_27CEAAAF8);
      sub_21E02D7B8();
      v159 = v271;
      v160 = v269;
      sub_21E140DA4();
      (*(v268 + 8))(v158, v160);
      v161 = sub_21E1404B4();
      *(v159 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB90) + 36)) = v161;
      v162 = (v159 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB98) + 36));
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
      v164 = *MEMORY[0x277CDF3C0];
      v165 = sub_21E13F444();
      (*(*(v165 - 8) + 104))(v162 + v163, v164, v165);
      *v162 = swift_getKeyPath();
      v166 = (v157 + v64[15]);
      v168 = v166[1];
      *&v350 = *v166;
      v167 = v350;
      *(&v350 + 1) = v168;
      sub_21E141714();
      v169 = v336;
      *(v159 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAABA0) + 36)) = v169;
      v170 = MEMORY[0x223D52580](0.3, 0.825, 0.0);
      *&v350 = v167;
      *(&v350 + 1) = v168;
      sub_21E141714();
      v171 = v336;
      v172 = (v159 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAABA8) + 36));
      *v172 = v170;
      v172[1] = v171;
      v173 = v284;
      sub_21E140394();
      v175 = v285;
      v174 = v286;
      (*(v285 + 16))(v283, v173, v286);
      v176 = v288;
      sub_21E1403B4();
      (*(v175 + 8))(v173, v174);
      v178 = v289;
      v177 = v290;
      (*(v289 + 16))(v287, v176, v290);
      sub_21E02E4A0(&qword_280F68E58, MEMORY[0x277CE0418]);
      v179 = sub_21E13F704();
      (*(v178 + 8))(v176, v177);
      *(v159 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAABB0) + 36)) = v179;
      LOBYTE(v179) = sub_21E140904();
      v180 = sub_21E13F374();
      v181 = v280;
      v182 = v159 + *(v280 + 36);
      *v182 = v179;
      *(v182 + 8) = v183;
      *(v182 + 16) = v184;
      *(v182 + 24) = v185;
      *(v182 + 32) = v186;
      *(v182 + 40) = 0;
      MEMORY[0x28223BE20](v180);
      *(&v263 - 2) = v157;
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAABB8);
      v188 = sub_21E02D814();
      *&v350 = v181;
      *(&v350 + 1) = v188;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v189 = v272;
      sub_21E140CE4();
      sub_21DF23614(v159, &qword_27CEAAB00);
      v190 = v273;
      v191 = v281;
      (*(v273 + 16))(v279, v189, v281);
      swift_storeEnumTagMultiPayload();
      v192 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABC0);
      v193 = sub_21E02DC90();
      v194 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
      *&v350 = v192;
      *(&v350 + 1) = v276;
      *&v351[0] = v193;
      *(&v351[0] + 1) = v194;
      swift_getOpaqueTypeConformance2();
      *&v350 = v181;
      v55 = v331;
      *(&v350 + 1) = v187;
      *&v351[0] = v188;
      *(&v351[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v195 = v277;
      sub_21E1402F4();
      (*(v190 + 8))(v189, v191);
      v140 = v308;
    }

    else
    {
      v264 = v145;
      v267 = v133;
      v268 = v136;
      OpaqueTypeConformance2 = sub_21E1401C4();
      LOBYTE(v336) = 0;
      sub_21E027F54(&v350);
      v272 = *(&v350 + 1);
      v273 = v350;
      v196 = v351[0];
      v307 = BYTE8(v351[1]);
      v282 = v352;
      v271 = *(v351 + 8);
      LOBYTE(v350) = v351[0];
      v197 = v336;
      LODWORD(v269) = sub_21E140904();
      sub_21E13F374();
      v199 = v198;
      v201 = v200;
      v203 = v202;
      v205 = v204;
      v368 = 0;
      v206 = (v335 + v64[17]);
      v208 = v206[1];
      *&v350 = *v206;
      v207 = v350;
      *(&v350 + 1) = v208;
      v209 = sub_21E141714();
      v210 = v336;
      v211 = MEMORY[0x223D52580](v209, 0.3, 0.825, 0.0);
      *&v350 = v207;
      *(&v350 + 1) = v208;
      sub_21E141714();
      v212 = v336;
      v213 = v284;
      sub_21E140394();
      v215 = v285;
      v214 = v286;
      (*(v285 + 16))(v283, v213, v286);
      v216 = v288;
      sub_21E1403B4();
      (*(v215 + 8))(v213, v214);
      v218 = v289;
      v217 = v290;
      (*(v289 + 16))(v287, v216, v290);
      sub_21E02E4A0(&qword_280F68E58, MEMORY[0x277CE0418]);
      v219 = sub_21E13F704();
      (*(v218 + 8))(v216, v217);
      *&v336 = OpaqueTypeConformance2;
      *(&v336 + 1) = 0x4018000000000000;
      LOBYTE(v337) = v197;
      *(&v337 + 1) = v273;
      *&v338 = v272;
      BYTE8(v338) = v196;
      v339 = v271;
      LOBYTE(v340) = v307;
      *(&v340 + 1) = v282;
      LOBYTE(v341) = v269;
      *(&v341 + 1) = v199;
      *&v342 = v201;
      *(&v342 + 1) = v203;
      *&v343 = v205;
      BYTE8(v343) = 0;
      *&v344 = v210;
      *(&v344 + 1) = v211;
      *&v345 = v212;
      *(&v345 + 1) = v219;
      v220 = *MEMORY[0x277CDFA10];
      v221 = sub_21E13F9D4();
      v222 = v270;
      (*(*(v221 - 8) + 104))(v270, v220, v221);
      sub_21E02E4A0(&unk_280F68FD8, MEMORY[0x277CDFA28]);
      result = sub_21E142074();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAABC0);
      v224 = sub_21E02DC90();
      v225 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
      v226 = v274;
      v227 = v276;
      sub_21E140F74();
      sub_21DF23614(v222, &qword_27CEA6DF8);
      v355 = v342;
      v356 = v343;
      v357 = v344;
      v358 = v345;
      v351[1] = v338;
      v352 = v339;
      v353 = v340;
      v354 = v341;
      v350 = v336;
      v351[0] = v337;
      sub_21DF23614(&v350, &qword_27CEAABC0);
      v228 = v266;
      v229 = v278;
      (*(v266 + 16))(v279, v226, v278);
      swift_storeEnumTagMultiPayload();
      *&v336 = OpaqueTypeConformance2;
      *(&v336 + 1) = v227;
      *&v337 = v224;
      *(&v337 + 1) = v225;
      swift_getOpaqueTypeConformance2();
      v230 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABB8);
      v231 = sub_21E02D814();
      v232 = v280;
      *&v336 = v280;
      *(&v336 + 1) = v231;
      v233 = swift_getOpaqueTypeConformance2();
      *&v336 = v232;
      *(&v336 + 1) = v230;
      *&v337 = v231;
      *(&v337 + 1) = v233;
      swift_getOpaqueTypeConformance2();
      v195 = v277;
      sub_21E1402F4();
      (*(v228 + 8))(v274, v229);
      v133 = v267;
      v136 = v268;
      v140 = v308;
      v145 = v264;
    }

    v234 = v332;
    sub_21DF3DE9C(v195, v332, &qword_27CEAAB20);
    v156 = v234;
    v155 = 0;
    v78 = v310;
  }

  v235 = v149;
  v236 = (*(v299 + 56))(v156, v155, 1, v300);
  MEMORY[0x28223BE20](v236);
  *(&v263 - 2) = v335;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB40);
  sub_21E02D494();
  sub_21E140444();
  *&v350 = v143;
  *(&v350 + 1) = v293;
  sub_21E141714();
  v237 = v78 + *(v301 + 36);
  *v237 = v336;
  *(v237 + 8) = 0;
  swift_getKeyPath();
  *&v350 = v55;
  sub_21E13D3C4();

  v238 = 0;
  if ((*(v55 + v292) & 1) == 0)
  {
    *&v350 = v133;
    *(&v350 + 1) = v291;
    sub_21E141714();
    v238 = v336;
  }

  v239 = v302;
  sub_21DF3DE9C(v78, v302, &qword_27CEAAAE8);
  *(v239 + *(v303 + 36)) = v238;
  v240 = v329;
  sub_21DF3DE9C(v239, v329, &qword_27CEAAAF0);
  v241 = v326;
  sub_21DF236C0(v325, v326, &qword_27CEA8328);
  v242 = v327;
  sub_21DF236C0(v334, v327, &qword_27CEAAB38);
  sub_21DF236C0(v332, v328, &qword_27CEAAB28);
  v243 = v240;
  v244 = v304;
  sub_21DF236C0(v243, v304, &qword_27CEAAAF0);
  v245 = v241;
  v246 = v305;
  sub_21DF236C0(v245, v305, &qword_27CEA8328);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB70);
  sub_21DF236C0(v242, v246 + v247[12], &qword_27CEAAB38);
  v248 = v246 + v247[16];
  *&v336 = KeyPath;
  BYTE8(v336) = v311;
  *(&v336 + 9) = v373[0];
  HIDWORD(v336) = *(v373 + 3);
  *&v337 = v331;
  *(&v337 + 1) = v324;
  v249 = v136;
  *&v338 = v136;
  *(&v338 + 1) = v317;
  *&v339 = v313;
  *(&v339 + 1) = v312;
  *&v340 = v320;
  *(&v340 + 1) = v319;
  v250 = v298;
  *&v341 = v298;
  *(&v341 + 1) = v323;
  *&v342 = v322;
  BYTE8(v342) = v321;
  HIDWORD(v342) = *&v372[3];
  *(&v342 + 9) = *v372;
  LOBYTE(v343) = v316;
  DWORD1(v343) = *&v371[3];
  *(&v343 + 1) = *v371;
  *(&v343 + 1) = v315;
  *&v344 = v140;
  *(&v344 + 1) = v314;
  v251 = v296;
  v252 = v297;
  *&v345 = v297;
  BYTE8(v345) = 0;
  *(&v345 + 9) = *v370;
  HIDWORD(v345) = *&v370[3];
  *&v346 = v145;
  BYTE8(v346) = 0;
  *(&v346 + 9) = *v369;
  HIDWORD(v346) = *&v369[3];
  *&v347 = v149;
  *(&v347 + 1) = v149;
  *&v348 = v296;
  v254 = v294;
  v253 = v295;
  *(&v348 + 1) = v295;
  v349 = v294;
  v255 = v345;
  *(v248 + 128) = v344;
  *(v248 + 144) = v255;
  v256 = v343;
  *(v248 + 96) = v342;
  *(v248 + 112) = v256;
  v257 = v341;
  *(v248 + 64) = v340;
  *(v248 + 80) = v257;
  v258 = v339;
  *(v248 + 32) = v338;
  *(v248 + 48) = v258;
  v259 = v337;
  *v248 = v336;
  *(v248 + 16) = v259;
  v260 = v348;
  *(v248 + 208) = v349;
  v261 = v346;
  *(v248 + 176) = v347;
  *(v248 + 192) = v260;
  *(v248 + 160) = v261;
  v262 = v328;
  sub_21DF236C0(v328, v246 + v247[20], &qword_27CEAAB28);
  sub_21DF236C0(v244, v246 + v247[24], &qword_27CEAAAF0);
  sub_21E02D604(&v336, &v350);
  sub_21DF23614(v329, &qword_27CEAAAF0);
  sub_21DF23614(v332, &qword_27CEAAB28);
  sub_21DF23614(v334, &qword_27CEAAB38);
  sub_21DF23614(v325, &qword_27CEA8328);
  sub_21DF23614(v244, &qword_27CEAAAF0);
  sub_21DF23614(v262, &qword_27CEAAB28);
  *&v350 = KeyPath;
  BYTE8(v350) = v311;
  *(&v350 + 9) = v373[0];
  HIDWORD(v350) = *(v373 + 3);
  *&v351[0] = v331;
  *(&v351[0] + 1) = v324;
  *&v351[1] = v249;
  *(&v351[1] + 1) = v317;
  *&v352 = v313;
  *(&v352 + 1) = v312;
  *&v353 = v320;
  *(&v353 + 1) = v319;
  *&v354 = v250;
  *(&v354 + 1) = v323;
  *&v355 = v322;
  BYTE8(v355) = v321;
  HIDWORD(v355) = *&v372[3];
  *(&v355 + 9) = *v372;
  LOBYTE(v356) = v316;
  DWORD1(v356) = *&v371[3];
  *(&v356 + 1) = *v371;
  *(&v356 + 1) = v315;
  *&v357 = v308;
  *(&v357 + 1) = v314;
  *&v358 = v252;
  BYTE8(v358) = 0;
  *(&v358 + 9) = *v370;
  HIDWORD(v358) = *&v370[3];
  v359 = v145;
  v360 = 0;
  *&v361[3] = *&v369[3];
  *v361 = *v369;
  v362 = v235;
  v363 = v235;
  v364 = v251;
  v365 = v253;
  v366 = v254;
  sub_21DF23614(&v350, &qword_27CEAAB78);
  sub_21DF23614(v327, &qword_27CEAAB38);
  return sub_21DF23614(v326, &qword_27CEA8328);
}

uint64_t sub_21E0277C4(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  type metadata accessor for Omnibar();
  (v10)(v5, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530);
  sub_21E141724();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_21E02791C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_21E13F554();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_21E13F564();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_21E141B14();
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC50);
  v13 = swift_allocObject();
  v51 = xmmword_21E14EE00;
  *(v13 + 16) = xmmword_21E14EE00;
  sub_21E02DF44(&unk_282F3BF08);
  *(v13 + 32) = v14;
  sub_21E02DF44(&unk_282F3BF30);
  *(v13 + 40) = v15;
  sub_21E02DF44(&unk_282F3BF58);
  *(v13 + 48) = v16;
  sub_21E02DF44(&unk_282F3BF80);
  *(v13 + 56) = v17;
  sub_21E02DF44(&unk_282F3BFA8);
  *(v13 + 64) = v18;
  sub_21E02DF44(&unk_282F3BFD0);
  *(v13 + 72) = v19;
  sub_21E02DF44(&unk_282F3BFF8);
  *(v13 + 80) = v20;
  sub_21E02DF44(&unk_282F3C020);
  *(v13 + 88) = v21;
  sub_21E02DF44(&unk_282F3C048);
  *(v13 + 96) = v22;
  sub_21E02DF44(&unk_282F3C070);
  *(v13 + 104) = v23;
  sub_21E02DF44(&unk_282F3C098);
  *(v13 + 112) = v24;
  sub_21E02DF44(&unk_282F3C0C0);
  *(v13 + 120) = v25;
  sub_21E02DF44(&unk_282F3C0E8);
  *(v13 + 128) = v26;
  sub_21E02DF44(&unk_282F3C110);
  *(v13 + 136) = v27;
  sub_21E02DF44(&unk_282F3C138);
  *(v13 + 144) = v28;
  sub_21E02DF44(&unk_282F3C160);
  *(v13 + 152) = v29;
  sub_21E02DF44(&unk_282F3C188);
  *(v13 + 160) = v30;
  sub_21E02DF44(&unk_282F3C1B0);
  *(v13 + 168) = v31;
  sub_21E02DF44(&unk_282F3C1D8);
  *(v13 + 176) = v32;
  sub_21E02DF44(&unk_282F3C200);
  *(v13 + 184) = v33;
  sub_21E02DF44(&unk_282F3C228);
  *(v13 + 192) = v34;
  sub_21E02DF44(&unk_282F3C250);
  *(v13 + 200) = v35;
  sub_21E02DF44(&unk_282F3C278);
  *(v13 + 208) = v36;
  sub_21E02DF44(&unk_282F3C2A0);
  *(v13 + 216) = v37;
  sub_21E02DF44(&unk_282F3C2C8);
  *(v13 + 224) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8320);
  v39 = swift_allocObject();
  *(v39 + 16) = v51;
  *(v39 + 32) = sub_21E1414A4();
  *(v39 + 40) = sub_21E1414A4();
  *(v39 + 48) = sub_21E1414A4();
  *(v39 + 56) = sub_21E1414A4();
  *(v39 + 64) = sub_21E1414A4();
  *(v39 + 72) = sub_21E1414A4();
  sub_21E141484();
  v40 = sub_21E141514();

  *(v39 + 80) = v40;
  sub_21E141484();
  v41 = sub_21E141514();

  *(v39 + 88) = v41;
  sub_21E141484();
  v42 = sub_21E141514();

  *(v39 + 96) = v42;
  *(v39 + 104) = sub_21E1414A4();
  *(v39 + 112) = sub_21E1414A4();
  sub_21E141484();
  v43 = sub_21E141514();

  *(v39 + 120) = v43;
  sub_21E141484();
  v44 = sub_21E141514();

  *(v39 + 128) = v44;
  sub_21E141484();
  v45 = sub_21E141514();

  *(v39 + 136) = v45;
  *(v39 + 144) = sub_21E1414A4();
  *(v39 + 152) = sub_21E1414A4();
  sub_21E141484();
  v46 = sub_21E141514();

  *(v39 + 160) = v46;
  sub_21E141484();
  v47 = sub_21E141514();

  *(v39 + 168) = v47;
  sub_21E141484();
  v48 = sub_21E141514();

  *(v39 + 176) = v48;
  *(v39 + 184) = sub_21E1414A4();
  *(v39 + 192) = sub_21E1414A4();
  *(v39 + 200) = sub_21E141484();
  *(v39 + 208) = sub_21E141484();
  *(v39 + 216) = sub_21E141484();
  *(v39 + 224) = sub_21E1414A4();
  sub_21E1414A4();
  sub_21E141B04();
  *v6 = v13;
  (*(v4 + 104))(v6, *MEMORY[0x277CDF588], v53);
  *v3 = v39;
  (*(v54 + 104))(v3, *MEMORY[0x277CDF580], v55);
  v49 = v52;
  (*(v7 + 16))(v9, v12, v52);
  sub_21E13F544();
  return (*(v7 + 8))(v12, v49);
}

uint64_t sub_21E027F54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E140A64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_21E140C64();
  v9 = v8;
  v11 = v10;
  sub_21E140994();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  sub_21E140A94();

  (*(v3 + 8))(v5, v2);
  v12 = sub_21E140C44();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_21DF3DE8C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  result = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E0281A0@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_21E028284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Omnibar();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = sub_21E141634();
  v9 = (a1 + *(v5 + 96));
  v10 = *v9;
  v11 = v9[1];
  v21 = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC58);
  sub_21E141714();
  v12 = v20[1];
  v13 = *(a1 + 40);
  swift_getKeyPath();
  v21 = v13;
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v14 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted);
  sub_21E02C8A4(a1, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_21E02C908(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB80) + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8188);
  sub_21E1423D4();
  *(v17 + *(v18 + 40)) = v14;
  *v17 = &unk_21E14F400;
  v17[1] = v16;
  *a2 = v8;
  *(a2 + 8) = v12;
  result = 0.7;
  *(a2 + 16) = xmmword_21E14EE10;
  return result;
}

uint64_t sub_21E0284D8()
{
  v0[2] = sub_21E1423C4();
  v0[3] = sub_21E1423B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21DF81DC0;

  return sub_21E028584();
}

uint64_t sub_21E028584()
{
  v1[15] = v0;
  v2 = sub_21E142994();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_21E1423C4();
  v1[20] = sub_21E1423B4();
  v4 = sub_21E142364();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_21E028684, v4, v3);
}

uint64_t sub_21E028684()
{
  v1 = *(v0[15] + 40);
  swift_getKeyPath();
  v0[10] = v1;
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if ((*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted) & 1) != 0 || (v2 = v0[15], v3 = type metadata accessor for Omnibar(), v0[23] = v3, v4 = (v2 + *(v3 + 84)), v5 = *v4, v0[24] = *v4, v6 = v4[1], v0[2] = v5, v0[25] = v6, v0[3] = v6, v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090), sub_21E141714(), v0[11] > 7))
  {

    v13 = v0[1];

    return v13();
  }

  else
  {
    v7 = v0[15];
    sub_21E141D74();
    *(swift_task_alloc() + 16) = v7;
    sub_21E13F864();

    v8 = sub_21E142C94();
    v10 = v9;
    sub_21E142BB4();
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_21E028900;

    return sub_21E077260(v8, v10, 0, 0, 1);
  }
}

uint64_t sub_21E028900()
{
  v2 = *v1;
  v2[28] = v0;

  v3 = v2[19];
  v4 = v2[17];
  v5 = v2[16];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[30] = v6;
    v6(v3, v5);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_21E028C8C;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[29] = v10;
    v10(v3, v5);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_21E028AA0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E028AA0()
{
  v0[31] = v0[29];
  if (sub_21E142434())
  {
    v1 = v0[23];
    v2 = v0[15];

    v3 = (v2 + *(v1 + 88));
    v4 = *v3;
    v5 = v3[1];
    v0[8] = v4;
    v0[9] = v5;
    v0[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC58);
    sub_21E141724();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[15];
    sub_21E141D74();
    *(swift_task_alloc() + 16) = v8;
    sub_21E13F864();

    v9 = sub_21E142C94();
    v11 = v10;
    sub_21E142BB4();
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_21E028E7C;

    return sub_21E077260(v9, v11, 0, 0, 1);
  }
}

uint64_t sub_21E028C8C()
{
  v0[31] = v0[30];
  if (sub_21E142434())
  {
    v1 = v0[23];
    v2 = v0[15];

    v3 = (v2 + *(v1 + 88));
    v4 = *v3;
    v5 = v3[1];
    v0[8] = v4;
    v0[9] = v5;
    v0[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC58);
    sub_21E141724();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[15];
    sub_21E141D74();
    *(swift_task_alloc() + 16) = v8;
    sub_21E13F864();

    v9 = sub_21E142C94();
    v11 = v10;
    sub_21E142BB4();
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_21E028E7C;

    return sub_21E077260(v9, v11, 0, 0, 1);
  }
}

uint64_t sub_21E028E7C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[31];
  v5 = v2[18];
  v6 = v2[16];
  if (v0)
  {

    v4(v5, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_21E02E550;
  }

  else
  {
    v4(v5, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_21E02902C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E02902C()
{
  if (sub_21E142434())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 32) = *(v0 + 192);
    *(v0 + 40) = v3;

    result = sub_21E141714();
    v4 = *(v0 + 96);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 48) = *(v0 + 192);
      *(v0 + 104) = v6;
      sub_21E141724();

      v7 = swift_task_alloc();
      *(v0 + 264) = v7;
      *v7 = v0;
      v7[1] = sub_21E029170;

      return sub_21E028584();
    }
  }

  return result;
}

uint64_t sub_21E029170()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21E029290, v3, v2);
}

uint64_t sub_21E029290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E029300(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Omnibar();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21E02C8A4(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21E02C908(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB00);
  sub_21E02D814();
  sub_21E140E94();
}

void sub_21E029438(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  NewSaliencyModel.reportGroundingLabels()();
}

uint64_t sub_21E029570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21E140004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC60);
  sub_21E0296F8(a1, a2 + *(v4 + 44));
  v5 = sub_21E140904();
  sub_21E024668();
  type metadata accessor for Omnibar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  sub_21E13F374();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB58) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_21E141D64();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v20, v16);
  v17 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB40);
  v19 = a2 + *(result + 36);
  *v19 = v15;
  *(v19 + 8) = v17;
  return result;
}

uint64_t sub_21E0296F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v101 = type metadata accessor for SearchButtonStyle(0);
  MEMORY[0x28223BE20](v101);
  v100 = (&v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC68);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v93 - v6;
  v7 = type metadata accessor for AskButtonStyle(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_21E140054();
  v113 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Omnibar();
  v111 = *(v114 - 8);
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v114);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC70);
  v112 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v15 = &v93 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC78);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v120 = &v93 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC80);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v98 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC88);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  v118 = a1;
  v23 = *(a1 + 40);
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v122 = v23;
  v25 = sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v110 = v24;
  v109 = v25;
  sub_21E13D3C4();

  v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI;
  swift_beginAccess();
  v27 = 1;
  v28 = *(v23 + v26) == 1;
  v115 = v22;
  if (v28)
  {
    v29 = v118;
    sub_21E02C8A4(v118, &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v31 = swift_allocObject();
    v32 = sub_21E02C908(&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v32);
    *(&v93 - 2) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC90);
    v96 = v12;
    sub_21E02E0E0();
    sub_21E141764();
    sub_21E140044();
    v95 = sub_21DF23E5C(&qword_280F68D30, &qword_27CEAAC70);
    v94 = sub_21E02E4A0(&qword_280F68E88, MEMORY[0x277CDDE78]);
    v33 = v119;
    v34 = v121;
    sub_21E140DA4();
    (*(v113 + 8))(v11, v34);
    (*(v112 + 8))(v15, v33);
    swift_getKeyPath();
    v122 = v23;
    sub_21E13D3C4();

    v35 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
    swift_beginAccess();
    v36 = *(v23 + v35);
    v37 = v9;
    v38 = v7;
    v39 = v15;
    v40 = v11;
    v41 = v114;
    v42 = v29 + *(v114 + 76);
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(v42) = *(v42 + 16);
    v122 = v43;
    v123 = v44;
    LOBYTE(v124) = v42;

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
    MEMORY[0x223D52200](&v127, v45);
    LOBYTE(v34) = v127;
    v46 = *(v41 + 52);
    v11 = v40;
    v15 = v39;
    v47 = (v29 + v46);
    v22 = v115;
    v48 = *v47;
    v49 = v47[1];
    v122 = v48;
    v123 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
    sub_21E141714();
    v50 = v127;
    *v37 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    *(v37 + v38[5]) = v36;
    *(v37 + v38[6]) = v34;
    v13 = v97;
    *(v37 + v38[7]) = v50;
    v122 = v119;
    v123 = v121;
    v124 = v95;
    v125 = v94;
    swift_getOpaqueTypeConformance2();
    sub_21E02E4A0(&qword_280F6B8F8, type metadata accessor for AskButtonStyle);
    v51 = v98;
    v52 = v117;
    v53 = v120;
    sub_21E140DD4();
    sub_21E02E4E8(v37, type metadata accessor for AskButtonStyle);
    (*(v116 + 8))(v53, v52);
    (*(v107 + 32))(v22, v51, v108);
    v27 = 0;
  }

  (*(v107 + 56))(v22, v27, 1, v108);
  v54 = v118;
  sub_21E02C8A4(v118, v13);
  v55 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v56 = swift_allocObject();
  v57 = sub_21E02C908(v13, v56 + v55);
  MEMORY[0x28223BE20](v57);
  *(&v93 - 2) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC90);
  sub_21E02E0E0();
  sub_21E141764();
  sub_21E140044();
  v58 = sub_21DF23E5C(&qword_280F68D30, &qword_27CEAAC70);
  v59 = sub_21E02E4A0(&qword_280F68E88, MEMORY[0x277CDDE78]);
  v60 = v15;
  v62 = v120;
  v61 = v121;
  v63 = v11;
  v64 = v119;
  sub_21E140DA4();
  (*(v113 + 8))(v63, v61);
  (*(v112 + 8))(v60, v64);
  swift_getKeyPath();
  v122 = v23;
  sub_21E13D3C4();

  v65 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v66 = *(v23 + v65);
  v67 = v114;
  v68 = v54 + *(v114 + 76);
  v69 = *v68;
  v70 = *(v68 + 8);
  LOBYTE(v68) = *(v68 + 16);
  v122 = v69;
  v123 = v70;
  LOBYTE(v124) = v68;

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v126, v71);
  v72 = v126;
  v73 = (v54 + *(v67 + 52));
  v74 = *v73;
  v75 = v73[1];
  v122 = v74;
  v123 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  v76 = v126;
  KeyPath = swift_getKeyPath();
  v78 = v100;
  *v100 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v79 = v101;
  *(v78 + *(v101 + 20)) = v66;
  *(v78 + *(v79 + 24)) = v72;
  *(v78 + *(v79 + 28)) = v76;
  v122 = v64;
  v123 = v61;
  v124 = v58;
  v125 = v59;
  swift_getOpaqueTypeConformance2();
  sub_21E02E4A0(&unk_280F6AA48, type metadata accessor for SearchButtonStyle);
  v80 = v102;
  v81 = v117;
  sub_21E140DD4();
  sub_21E02E4E8(v78, type metadata accessor for SearchButtonStyle);
  (*(v116 + 8))(v62, v81);
  v82 = v115;
  v83 = v99;
  sub_21DF236C0(v115, v99, &qword_27CEAAC88);
  v84 = v104;
  v85 = *(v104 + 16);
  v86 = v103;
  v87 = v105;
  v85(v103, v80, v105);
  v88 = v106;
  sub_21DF236C0(v83, v106, &qword_27CEAAC88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC98);
  v90 = v88 + *(v89 + 48);
  *v90 = 0;
  *(v90 + 8) = 1;
  v85((v88 + *(v89 + 64)), v86, v87);
  v91 = *(v84 + 8);
  v91(v80, v87);
  sub_21DF23614(v82, &qword_27CEAAC88);
  v91(v86, v87);
  return sub_21DF23614(v83, &qword_27CEAAC88);
}

uint64_t sub_21E02A5A4(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for Omnibar() + 40));
  v3 = *(a1 + 40);
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v5 = *(v3 + v4);
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6BEE0, type metadata accessor for NewBarModel);

  sub_21E13D3C4();

  v6 = *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask);

  swift_getKeyPath();
  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v2(v6, v8);
}

uint64_t sub_21E02A7A4@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21E141684();

  type metadata accessor for Omnibar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v3 = v2;
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC90);
  v7 = (a1 + *(result + 36));
  *v7 = v8;
  v7[1] = v8;
  v7[2] = v3;
  v7[3] = v5;
  return result;
}

uint64_t sub_21E02A90C(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for Omnibar() + 40));
  v3 = *(a1 + 40);
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_search);
  swift_getKeyPath();

  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
  swift_beginAccess();
  v7 = *(v3 + v6);

  v2(v5, v7);
}

uint64_t sub_21E02AA88@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21E141684();

  type metadata accessor for Omnibar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v3 = v2;
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC90);
  v7 = (a1 + *(result + 36));
  *v7 = v8;
  v7[1] = v8;
  v7[2] = v3;
  v7[3] = v5;
  return result;
}

uint64_t sub_21E02ABF0()
{
  v1 = sub_21E13D834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v72 = v5;
  v7 = sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    NewSaliencyModel.shouldPeekForPresentedEntity.getter();
  }

  swift_getKeyPath();
  v72 = v5;
  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v67 = v8;
  v68 = v6;
  v64 = *(v2 + 16);
  v9 = v5 + v8;
  v10 = v8;
  v11 = v1;
  v64(v4, v9, v1);
  v62[1] = v2 + 16;
  sub_21DF4AC58(v4);
  v13 = v12;
  v63 = *(v2 + 8);
  v63(v4, v1);
  v66 = type metadata accessor for Omnibar();
  v14 = (v0 + v66[12]);
  v15 = *v14;
  v16 = v14[1];
  v69 = v13;
  v70 = v15;
  v71 = v16;
  v62[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  swift_getKeyPath();
  v62[3] = v2 + 8;
  v62[4] = v7;
  v70 = v5;
  sub_21E13D3C4();

  v17 = v5 + v10;
  v62[0] = v1;
  v18 = v64;
  v64(v4, v17, v1);
  v65 = v0;
  sub_21DF4B2E4(v4);
  v20 = v19;
  v21 = v63;
  v63(v4, v11);
  v22 = v66;
  v23 = (v0 + v66[13]);
  v24 = *v23;
  v25 = v23[1];
  v69 = v20;
  v70 = v24;
  v71 = v25;
  sub_21E141724();
  swift_getKeyPath();
  v70 = v5;
  sub_21E13D3C4();

  v26 = v62[0];
  v18(v4, v5 + v67, v62[0]);
  v27 = v65;
  sub_21DF4BA24(v4);
  v29 = v28;
  v21(v4, v26);
  v30 = (v27 + v22[14]);
  v31 = *v30;
  v32 = v30[1];
  v69 = v29;
  v70 = v31;
  v71 = v32;
  sub_21E141724();
  swift_getKeyPath();
  v70 = v5;
  sub_21E13D3C4();

  v33 = v67;
  v64(v4, v5 + v67, v26);
  v34 = v65;
  sub_21DF4C0AC(v4);
  v36 = v35;
  v63(v4, v26);
  v37 = (v34 + v66[15]);
  v38 = *v37;
  v39 = v37[1];
  v69 = v36;
  v70 = v38;
  v71 = v39;
  sub_21E141724();
  swift_getKeyPath();
  v70 = v5;
  sub_21E13D3C4();

  v40 = v64;
  v64(v4, v5 + v33, v26);
  v41 = v65;
  sub_21DF4C2EC(v4);
  v43 = v42;
  v44 = v63;
  v63(v4, v26);
  v45 = v66;
  v46 = (v41 + v66[16]);
  v47 = *v46;
  v48 = v46[1];
  v69 = v43;
  v70 = v47;
  v71 = v48;
  sub_21E141724();
  swift_getKeyPath();
  v70 = v5;
  sub_21E13D3C4();

  v49 = v62[0];
  v40(v4, v5 + v67, v62[0]);
  v50 = v65;
  sub_21DF4C690(v4);
  v52 = v51;
  v44(v4, v49);
  v53 = (v50 + v45[17]);
  v54 = *v53;
  v55 = v53[1];
  v69 = v52;
  v70 = v54;
  v71 = v55;
  sub_21E141724();
  swift_getKeyPath();
  v70 = v5;
  sub_21E13D3C4();

  v40(v4, v5 + v67, v49);
  sub_21DF4CCB0(v4);
  v57 = v56;
  v44(v4, v49);
  v58 = (v50 + v66[18]);
  v59 = *v58;
  v60 = v58[1];
  v69 = v57;
  v70 = v59;
  v71 = v60;
  return sub_21E141724();
}

uint64_t sub_21E02B27C()
{
  MEMORY[0x223D52580](0.3, 0.825, 0.0);
  sub_21E13F864();
}

uint64_t Omnibar.init(model:sheetAssistant:arePartnerActionsEnabled:isUnified:handler:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  LODWORD(v110) = a8;
  v107 = a6;
  v108 = a7;
  LODWORD(v102) = a5;
  v104 = a3;
  v105 = a4;
  v101 = a2;
  v91 = a1;
  v106 = a11;
  KeyPath = a10;
  v12 = sub_21E13D834();
  v111 = *(v12 - 8);
  v112 = v12;
  MEMORY[0x28223BE20](v12);
  v96 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E140034();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21E13F444();
  v16 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v97 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = (v84 - v19);
  v20 = sub_21E13EE04();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  v24 = type metadata accessor for Omnibar();
  v25 = *(v21 + 104);
  v25(v23, *MEMORY[0x277D79668], v20);
  sub_21E13EDF4();
  v26 = *(v21 + 8);
  v26(v23, v20);
  v25(v23, *MEMORY[0x277D79658], v20);
  sub_21E13EDF4();
  v26(v23, v20);
  v27 = v95;
  v28 = v98;
  (*(v16 + 104))(v95, *MEMORY[0x277CDF3D0], v98);
  (*(v16 + 16))(v97, v27, v28);
  sub_21E141704();
  (*(v16 + 8))(v27, v28);
  v85 = (a9 + v24[12]);
  v114 = 0;
  sub_21E141704();
  v84[1] = *(&v113 + 1);
  v88 = (a9 + v24[13]);
  v114 = 0;
  sub_21E141704();
  v86 = *(&v113 + 1);
  v90 = (a9 + v24[14]);
  v114 = 0;
  sub_21E141704();
  v89 = *(&v113 + 1);
  v93 = (a9 + v24[15]);
  v114 = 0;
  sub_21E141704();
  v92 = *(&v113 + 1);
  v95 = (a9 + v24[16]);
  v114 = 0;
  sub_21E141704();
  v94 = *(&v113 + 1);
  v29 = (a9 + v24[17]);
  v114 = 0;
  sub_21E141704();
  v30 = *(&v113 + 1);
  *v29 = v113;
  v29[1] = v30;
  v98 = (a9 + v24[18]);
  v114 = 0;
  sub_21E141704();
  v97 = *(&v113 + 1);
  v31 = v24[21];
  v114 = 0;
  sub_21E141704();
  *(a9 + v31) = v113;
  v32 = (a9 + v24[22]);
  v114 = 0;
  sub_21E141704();
  v33 = *(&v113 + 1);
  *v32 = v113;
  v32[1] = v33;
  v34 = v24[23];
  (*(v99 + 13))(v87, *MEMORY[0x277CE00F0], v100);
  *(a9 + v34) = sub_21E141644();
  v35 = v91;
  *(a9 + 40) = v91;
  v36 = v101;
  *(a9 + v24[9]) = v101;
  v37 = a9 + v24[19];
  v38 = v105;
  *v37 = v104;
  *(v37 + 8) = v38;
  *(v37 + 16) = v102;
  v39 = a9 + v24[20];
  v40 = v108;
  *v39 = v107;
  *(v39 + 8) = v40;
  *(v39 + 16) = v110;
  v41 = (a9 + v24[10]);
  v42 = v106;
  *v41 = KeyPath;
  v41[1] = v42;
  KeyPath = swift_getKeyPath();
  v102 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v113 = v35;
  v43 = sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);

  v87 = v36;

  v110 = v43;
  sub_21E13D3C4();

  v44 = v35;
  v45 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  KeyPath = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v47 = v111;
  v46 = v112;
  v48 = v111 + 16;
  v49 = *(v111 + 16);
  v50 = v44 + v45;
  v51 = v96;
  v49(v96, v50, v112);
  v99 = v49;
  v100 = v48;
  sub_21DF4AC58(v51);
  v53 = v52;
  v54 = *(v47 + 8);
  v111 = v47 + 8;
  v101 = v54;
  v54(v51, v46);

  v55 = v85;
  *v85 = v53;
  v55[1] = 0;
  swift_getKeyPath();
  v114 = v44;
  sub_21E13D3C4();

  v56 = KeyPath;
  v57 = v51;
  v58 = v51;
  v59 = v112;
  v49(v58, v44 + KeyPath, v112);
  v103 = a9;
  sub_21DF4B2E4(v57);
  v61 = v60;
  v62 = v101;
  v101(v57, v59);

  v63 = v88;
  *v88 = v61;
  v63[1] = 0;
  swift_getKeyPath();
  v114 = v44;
  sub_21E13D3C4();

  v64 = v44 + v56;
  v65 = v112;
  v66 = v99;
  v99(v57, v64, v112);
  sub_21DF4BA24(v57);
  v68 = v67;
  v62(v57, v65);

  v69 = v90;
  *v90 = v68;
  v69[1] = 0;
  swift_getKeyPath();
  v114 = v44;
  sub_21E13D3C4();

  v70 = KeyPath;
  v71 = v112;
  v66(v57, v44 + KeyPath, v112);
  sub_21DF4C0AC(v57);
  v73 = v72;
  v74 = v101;
  v101(v57, v71);

  v75 = v93;
  *v93 = v73;
  v75[1] = 0;
  swift_getKeyPath();
  v114 = v44;
  sub_21E13D3C4();

  v76 = v99;
  v99(v57, v44 + v70, v71);
  sub_21DF4C2EC(v57);
  v78 = v77;
  v74(v57, v71);

  v79 = v95;
  *v95 = v78;
  v79[1] = 0;
  swift_getKeyPath();
  v114 = v44;
  sub_21E13D3C4();

  v76(v57, v44 + KeyPath, v71);
  sub_21DF4CCB0(v57);
  v81 = v80;

  v74(v57, v71);

  v83 = v98;
  *v98 = v81;
  v83[1] = 0;
  return result;
}

uint64_t sub_21E02BE2C()
{
  v0 = sub_21E13FAD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21E140BA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E147C80;
  *(v4 + 32) = sub_21E141484();
  *(v4 + 40) = sub_21E1414A4();
  MEMORY[0x223D52380](v4);
  sub_21E13FAB4();

  sub_21E13FA54();
  sub_21DF61704(v7);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21E02BFB4()
{
  type metadata accessor for Omnibar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAC58);
  return sub_21E141724();
}

uint64_t sub_21E02C03C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - v1;
  v3 = sub_21E140A64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  *v9 = sub_21E140004();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7650);
  sub_21E02C3E8(&v9[*(v10 + 44)]);
  sub_21E140994();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  v11 = sub_21E140A94();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAD8) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = swift_getKeyPath();
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAAE0) + 36)];
  *v15 = v14;
  *(v15 + 1) = 2;
  v15[16] = 0;
  v16 = swift_getKeyPath();
  v17 = &v9[*(v7 + 36)];
  *v17 = v16;
  v17[8] = 1;
  v18 = *MEMORY[0x277CDFA10];
  v19 = sub_21E13F9D4();
  (*(*(v19 - 8) + 104))(v2, v18, v19);
  sub_21E02E4A0(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    sub_21E02D128();
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    sub_21E140F74();
    sub_21DF23614(v2, &qword_27CEA6DF8);
    return sub_21DF23614(v9, &qword_27CEAAAD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E02C3E8@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_21E140584();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21E140564();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21E140574();
  sub_21E140594();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7658) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_21E02C6D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted);
  return result;
}

uint64_t sub_21E02C7B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E02E4A0(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21E02C8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Omnibar();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E02C908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Omnibar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E02C9CC()
{
  type metadata accessor for Omnibar();

  return sub_21E02B27C();
}

unint64_t sub_21E02CA4C()
{
  result = qword_27CEAAA88;
  if (!qword_27CEAAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA70);
    sub_21DF23E5C(&qword_27CEAAA90, &qword_27CEAAA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAA88);
  }

  return result;
}

unint64_t sub_21E02CB04()
{
  result = qword_27CEAAAB0;
  if (!qword_27CEAAAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA78);
    sub_21E02CBBC();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAAB0);
  }

  return result;
}

unint64_t sub_21E02CBBC()
{
  result = qword_27CEAAAB8;
  if (!qword_27CEAAAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAA8);
    sub_21E02CC74();
    sub_21DF23E5C(&qword_280F68E78, &qword_27CEAAAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAAB8);
  }

  return result;
}

unint64_t sub_21E02CC74()
{
  result = qword_27CEAAAC0;
  if (!qword_27CEAAAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA70);
    sub_21E02CA4C();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAAC0);
  }

  return result;
}

void sub_21E02CDC0()
{
  sub_21E02CFF0();
  if (v0 <= 0x3F)
  {
    sub_21E02D0AC(319, &qword_280F69048, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NewSaliencyModel();
      if (v2 <= 0x3F)
      {
        sub_21E13EEE4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SheetTrackingAssistant();
          if (v4 <= 0x3F)
          {
            sub_21DFB9568();
            if (v5 <= 0x3F)
            {
              sub_21E02D054();
              if (v6 <= 0x3F)
              {
                sub_21E02D0AC(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_21E02D0AC(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                  if (v8 <= 0x3F)
                  {
                    sub_21E02D0AC(319, &qword_280F68D38, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_21E02D0AC(319, &qword_280F68D58, MEMORY[0x277CE0EC8], MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
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
  }
}

void sub_21E02CFF0()
{
  if (!qword_280F69020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA79E8);
    v0 = sub_21E13F464();
    if (!v1)
    {
      atomic_store(v0, &qword_280F69020);
    }
  }
}

void sub_21E02D054()
{
  if (!qword_280F68D68)
  {
    sub_21E13F444();
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68D68);
    }
  }
}

void sub_21E02D0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21E02D128()
{
  result = qword_280F68ED8;
  if (!qword_280F68ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAD0);
    sub_21E02D1E0();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68ED8);
  }

  return result;
}

unint64_t sub_21E02D1E0()
{
  result = qword_280F68F08;
  if (!qword_280F68F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAE0);
    sub_21E02D298();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F08);
  }

  return result;
}

unint64_t sub_21E02D298()
{
  result = qword_280F68F60;
  if (!qword_280F68F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAD8);
    sub_21DF23E5C(&qword_280F68D28, &qword_27CEA7660);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F60);
  }

  return result;
}

uint64_t sub_21E02D37C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_21E02D41C(uint64_t a1)
{
  type metadata accessor for Omnibar();

  return sub_21E0277C4(a1);
}

unint64_t sub_21E02D494()
{
  result = qword_27CEAAB48;
  if (!qword_27CEAAB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB40);
    sub_21E02D54C();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAB48);
  }

  return result;
}

unint64_t sub_21E02D54C()
{
  result = qword_27CEAAB50;
  if (!qword_27CEAAB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB58);
    sub_21DF23E5C(&qword_27CEAAB60, &qword_27CEAAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAB50);
  }

  return result;
}

uint64_t sub_21E02D604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E02D67C()
{
  result = qword_280F68F10;
  if (!qword_280F68F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB80);
    sub_21E02D734();
    sub_21DF23E5C(&qword_280F68E68, &qword_27CEA8188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F10);
  }

  return result;
}

unint64_t sub_21E02D734()
{
  result = qword_280F68F70;
  if (!qword_280F68F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F70);
  }

  return result;
}

unint64_t sub_21E02D7B8()
{
  result = qword_280F6A0E8[0];
  if (!qword_280F6A0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F6A0E8);
  }

  return result;
}

unint64_t sub_21E02D814()
{
  result = qword_280F68EA0;
  if (!qword_280F68EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB00);
    sub_21E02D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EA0);
  }

  return result;
}

unint64_t sub_21E02D8A0()
{
  result = qword_280F68EB0;
  if (!qword_280F68EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABB0);
    sub_21E02D958();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EB0);
  }

  return result;
}

unint64_t sub_21E02D958()
{
  result = qword_280F68EC8;
  if (!qword_280F68EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABA8);
    sub_21E02DA10();
    sub_21DF23E5C(&qword_280F68E80, qword_27CEA7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EC8);
  }

  return result;
}

unint64_t sub_21E02DA10()
{
  result = qword_280F68EF0;
  if (!qword_280F68EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABA0);
    sub_21E02DA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EF0);
  }

  return result;
}

unint64_t sub_21E02DA9C()
{
  result = qword_280F68F30;
  if (!qword_280F68F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB98);
    sub_21E02DB54();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F30);
  }

  return result;
}

unint64_t sub_21E02DB54()
{
  result = qword_280F68FA8;
  if (!qword_280F68FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAF8);
    sub_21DF23E5C(&qword_280F68DA0, &qword_27CEAAAF8);
    sub_21E02D7B8();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FA8);
  }

  return result;
}

unint64_t sub_21E02DC90()
{
  result = qword_27CEAABC8;
  if (!qword_27CEAABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABC0);
    sub_21E02DD48();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAABC8);
  }

  return result;
}

unint64_t sub_21E02DD48()
{
  result = qword_27CEAABD0;
  if (!qword_27CEAABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABD8);
    sub_21E02DE00();
    sub_21DF23E5C(&qword_280F68E80, qword_27CEA7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAABD0);
  }

  return result;
}

unint64_t sub_21E02DE00()
{
  result = qword_27CEAABE0;
  if (!qword_27CEAABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABE8);
    sub_21E02DE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAABE0);
  }

  return result;
}

unint64_t sub_21E02DE8C()
{
  result = qword_27CEAABF0;
  if (!qword_27CEAABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAABF8);
    sub_21DF23E5C(&qword_27CEAAC00, &qword_27CEAAC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAABF0);
  }

  return result;
}

uint64_t sub_21E02DF44(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_21E02DFB4()
{
  type metadata accessor for Omnibar();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DF4AA04;

  return sub_21E0284D8();
}

unint64_t sub_21E02E0E0()
{
  result = qword_280F68F68;
  if (!qword_280F68F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAC90);
    sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F68);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for Omnibar() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21DF446B8();
  sub_21DFE0F78(*(v2 + 24), *(v2 + 32));

  v3 = v1[9];
  v4 = sub_21E13EEE4();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[10], v4);

  v6 = v2 + v1[13];
  v7 = sub_21E13F444();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530);

  return swift_deallocObject();
}

uint64_t sub_21E02E424(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Omnibar() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21E02E4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E02E4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BundleTextDetailView.init(bundle:renderOnly:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for BundleTextDetailView();
  v7 = a3 + v6[7];
  sub_21E141704();
  *v7 = v12;
  *(v7 + 1) = v13;
  v8 = a3 + v6[8];
  sub_21E141704();
  *v8 = v12;
  *(v8 + 1) = v13;
  v9 = v6[5];
  v10 = sub_21E13EDA4();
  result = (*(*(v10 - 8) + 32))(a3 + v9, a1, v10);
  *(a3 + v6[6]) = a2;
  return result;
}

uint64_t type metadata accessor for BundleTextDetailView()
{
  result = qword_280F6A180;
  if (!qword_280F6A180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E02E6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_21E02E8D0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21E02E900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21E13F444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE60);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  *v14 = sub_21E1401C4();
  *(v14 + 1) = 0x4028000000000000;
  v14[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE78);
  sub_21E02EB7C(a1);
  v15 = sub_21E140914();
  v16 = &v14[*(v12 + 44)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_21E02E6D0(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(a1) = sub_21E13F434();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if (a1)
  {
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    sub_21E141484();
  }

  v18 = sub_21E141514();

  sub_21DF3DE9C(v14, a2, &qword_27CEAAE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE38);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = 256;
  return result;
}

uint64_t sub_21E02EB7C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BundleTextDetailView() + 28));
  v2 = *v1;
  v3 = *(v1 + 1);
  LOBYTE(v7[0]) = v2;
  v7[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE80);
  sub_21E141714();
  v4 = sub_21E13E104();
  if (v6 == 1)
  {
    v7[0] = v4;

    sub_21E032FD0(v7);

    v4 = v7[0];
  }

  v7[0] = v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE90);
  sub_21DF23E5C(&qword_27CEAAE98, &qword_27CEAAE88);
  sub_21E032ED0(&qword_27CEAAEA0, MEMORY[0x277D79360]);
  sub_21E032F18();
  return sub_21E141A74();
}

uint64_t sub_21E02ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21E1401C4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEC0);
  return sub_21E02ED94(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_21E02ED94@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEC8);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v46 - v3);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAED0) - 8;
  MEMORY[0x28223BE20](v53);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v8;
  v72 = sub_21E13E0D4();
  v73 = v9;
  sub_21DF252E0();
  v10 = sub_21E140C94();
  v12 = v11;
  v14 = v13;
  sub_21E140994();
  v15 = sub_21E140C44();
  v17 = v16;
  v19 = v18;

  sub_21DF3DE8C(v10, v12, v14 & 1);

  sub_21E1409E4();
  v20 = sub_21E140BD4();
  v46 = v20;
  v47 = v21;
  v23 = v22;
  v48 = v24;
  sub_21DF3DE8C(v15, v17, v19 & 1);

  sub_21E141CD4();
  sub_21E13FCE4();
  LOBYTE(v15) = v23 & 1;
  v85 = v23 & 1;
  v25 = sub_21E140004();
  v26 = v50;
  *v50 = v25;
  v26[1] = 0;
  *(v26 + 16) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAED8);
  sub_21E02F248(v49, v26 + *(v27 + 44));
  sub_21E141CC4();
  sub_21E13FCE4();
  v28 = v26;
  v29 = v51;
  sub_21DF3DE9C(v28, v51, &qword_27CEAAEC8);
  v30 = v52;
  v31 = (v29 + *(v53 + 44));
  v32 = v89;
  v33 = v91;
  v31[4] = v90;
  v31[5] = v33;
  v31[6] = v92;
  v34 = v87;
  *v31 = v86;
  v31[1] = v34;
  v31[2] = v88;
  v31[3] = v32;
  sub_21DF3DE9C(v29, v30, &qword_27CEAAED0);
  v35 = v54;
  sub_21DF236C0(v30, v54, &qword_27CEAAED0);
  v36 = v47;
  *&v63 = v20;
  *(&v63 + 1) = v47;
  LOBYTE(v64) = v15;
  *(&v64 + 1) = *v84;
  DWORD1(v64) = *&v84[3];
  v37 = v48;
  *(&v64 + 1) = v48;
  v69 = v60;
  v70 = v61;
  v71 = v62;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v38 = v61;
  v39 = v55;
  v55[6] = v60;
  v39[7] = v38;
  v39[8] = v71;
  v40 = v66;
  v39[2] = v65;
  v39[3] = v40;
  v41 = v68;
  v39[4] = v67;
  v39[5] = v41;
  v42 = v64;
  *v39 = v63;
  v39[1] = v42;
  v43 = v39;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEE0);
  sub_21DF236C0(v35, v43 + *(v44 + 48), &qword_27CEAAED0);
  sub_21DF236C0(&v63, &v72, &qword_27CEA72B0);
  sub_21DF23614(v30, &qword_27CEAAED0);
  sub_21DF23614(v35, &qword_27CEAAED0);
  v72 = v46;
  v73 = v36;
  v74 = v15;
  *v75 = *v84;
  *&v75[3] = *&v84[3];
  v76 = v37;
  v81 = v60;
  v82 = v61;
  v83 = v62;
  v77 = v56;
  v78 = v57;
  v79 = v58;
  v80 = v59;
  return sub_21DF23614(&v72, &qword_27CEA72B0);
}

uint64_t sub_21E02F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v123 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v2 - 8);
  v124 = &v104 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEE8) - 8;
  MEMORY[0x28223BE20](v125);
  v122 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v121 = &v104 - v6;
  MEMORY[0x28223BE20](v7);
  v120 = &v104 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v104 - v10;
  v126 = sub_21E13E0E4();
  v127 = v12;
  sub_21DF252E0();
  v13 = sub_21E140C94();
  v15 = v14;
  v17 = v16;
  sub_21E140AB4();
  v18 = sub_21E140C44();
  v20 = v19;
  v22 = v21;

  sub_21DF3DE8C(v13, v15, v17 & 1);

  sub_21E1409E4();
  v23 = sub_21E140BD4();
  v25 = v24;
  LOBYTE(v15) = v26;
  v112 = v27;
  sub_21DF3DE8C(v18, v20, v22 & 1);

  v117 = *MEMORY[0x277CE09A0];
  v28 = v117;
  v29 = sub_21E1409D4();
  v113 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v116 = v30 + 104;
  v118 = v31;
  v32 = v124;
  v31(v124, v28, v29);
  v33 = *(v30 + 56);
  v114 = v30 + 56;
  v115 = v33;
  v33(v32, 0, 1, v29);
  v34 = sub_21E140BC4();
  v36 = v35;
  LOBYTE(v29) = v37;
  v107 = v38;
  sub_21DF3DE8C(v23, v25, v15 & 1);

  sub_21DF23614(v32, &unk_27CEAD410);
  v106 = sub_21E140974();
  sub_21E13F374();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  LOBYTE(v32) = v29 & 1;
  v129 = v29 & 1;
  v128 = 0;
  v105 = sub_21E140904();
  sub_21E13F374();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  LOBYTE(v126) = 0;
  LODWORD(v25) = sub_21E1404B4();
  LODWORD(v23) = sub_21E1404B4();
  v55 = &v11[*(v125 + 44)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF0);
  v57 = *(v56 + 52);
  v108 = v56;
  v111 = *MEMORY[0x277CE0118];
  v58 = v111;
  v110 = sub_21E140144();
  v59 = *(v110 - 8);
  v109 = *(v59 + 104);
  v112 = v59 + 104;
  v109(&v55[v57], v58, v110);
  *v55 = v23;
  *(v55 + 1) = 1053609165;
  *&v55[*(v56 + 56)] = 256;
  *v11 = v34;
  *(v11 + 1) = v36;
  v11[16] = v32;
  *(v11 + 3) = v107;
  v11[32] = v106;
  *(v11 + 5) = v40;
  *(v11 + 6) = v42;
  *(v11 + 7) = v44;
  *(v11 + 8) = v46;
  v11[72] = 0;
  v11[80] = v105;
  *(v11 + 11) = v48;
  *(v11 + 12) = v50;
  *(v11 + 13) = v52;
  *(v11 + 14) = v54;
  v11[120] = 0;
  *(v11 + 31) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF8);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_21E145380;
  sub_21E13E0C4();
  v61 = MEMORY[0x277D83B08];
  *(v60 + 56) = MEMORY[0x277D83A90];
  *(v60 + 64) = v61;
  *(v60 + 32) = v62;
  v126 = sub_21E142154();
  v127 = v63;
  MEMORY[0x223D52A60](0x656469666E6F4320, 0xEB0000000065636ELL);
  sub_21E140AB4();
  v64 = sub_21E140C44();
  v66 = v65;
  LOBYTE(v57) = v67;

  sub_21E1409E4();
  v68 = sub_21E140BD4();
  v70 = v69;
  LOBYTE(v55) = v71;
  sub_21DF3DE8C(v64, v66, v57 & 1);

  v72 = v124;
  v73 = v113;
  v118(v124, v117, v113);
  v115(v72, 0, 1, v73);
  v74 = sub_21E140BC4();
  v119 = v75;
  LOBYTE(v57) = v76;
  v118 = v77;
  sub_21DF3DE8C(v68, v70, v55 & 1);

  sub_21DF23614(v72, &unk_27CEAD410);
  LOBYTE(v32) = sub_21E140974();
  sub_21E13F374();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  LOBYTE(v34) = v57 & 1;
  v129 = v57 & 1;
  v128 = 0;
  LOBYTE(v55) = sub_21E140904();
  sub_21E13F374();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  LOBYTE(v126) = 0;
  LODWORD(v68) = sub_21E1404B4();
  LODWORD(v72) = sub_21E1404B4();
  v94 = v120;
  v95 = &v120[*(v125 + 44)];
  v96 = v108;
  v109(&v95[*(v108 + 52)], v111, v110);
  *v95 = v72;
  *(v95 + 1) = 1053609165;
  *&v95[*(v96 + 56)] = 256;
  v97 = v119;
  *v94 = v74;
  *(v94 + 8) = v97;
  *(v94 + 16) = v34;
  *(v94 + 24) = v118;
  *(v94 + 32) = v32;
  *(v94 + 40) = v79;
  *(v94 + 48) = v81;
  *(v94 + 56) = v83;
  *(v94 + 64) = v85;
  *(v94 + 72) = 0;
  *(v94 + 80) = v55;
  *(v94 + 88) = v87;
  *(v94 + 96) = v89;
  *(v94 + 104) = v91;
  *(v94 + 112) = v93;
  *(v94 + 120) = 0;
  *(v94 + 124) = v68;
  v98 = v121;
  sub_21DF236C0(v11, v121, &qword_27CEAAEE8);
  v99 = v122;
  sub_21DF236C0(v94, v122, &qword_27CEAAEE8);
  v100 = v123;
  sub_21DF236C0(v98, v123, &qword_27CEAAEE8);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF00);
  sub_21DF236C0(v99, v100 + *(v101 + 48), &qword_27CEAAEE8);
  v102 = v100 + *(v101 + 64);
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_21DF23614(v94, &qword_27CEAAEE8);
  sub_21DF23614(v11, &qword_27CEAAEE8);
  sub_21DF23614(v99, &qword_27CEAAEE8);
  return sub_21DF23614(v98, &qword_27CEAAEE8);
}

uint64_t BundleTextDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v55 = type metadata accessor for BundleTextDetailView();
  v64 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v65 = v3;
  v66 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACA8);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACB0);
  MEMORY[0x28223BE20](v60);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACB8);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v59 = &v54 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACC0);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACC8);
  MEMORY[0x28223BE20](v61);
  v15 = &v54 - v14;
  *v6 = sub_21E1401C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACD0);
  sub_21E03015C(v1, &v6[*(v16 + 44)]);
  v17 = sub_21E140914();
  sub_21E13F374();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACD8) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAACE0) + 36)];
  sub_21E141BC4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B80);
  v29 = &v27[*(v28 + 52)];
  v30 = *(sub_21E13FCA4() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_21E140144();
  v33 = &v29[v30];
  v34 = v55;
  (*(*(v32 - 8) + 104))(v33, v31, v32);
  __asm { FMOV            V0.2D, #24.0 }

  *v29 = _Q0;
  *&v27[*(v28 + 56)] = 256;
  v40 = v2 + *(v34 + 32);
  v41 = *v40;
  v42 = *(v40 + 8);
  v69 = v41;
  v70 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  if (v68)
  {
    v43 = 0.2;
  }

  else if (*(v2 + *(v34 + 24)))
  {
    v43 = 0.8;
  }

  else
  {
    v43 = 1.0;
  }

  sub_21DF3DE9C(v6, v8, &qword_27CEAACA0);
  *&v8[*(v57 + 36)] = v43;
  sub_21DF3DE9C(v8, v10, &qword_27CEAACA8);
  v10[*(v60 + 36)] = 0;
  v44 = v66;
  sub_21DFA212C(v2, v66);
  v45 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v46 = swift_allocObject();
  sub_21E032158(v44, v46 + v45);
  sub_21E03221C();
  v47 = v59;
  sub_21E140E94();

  sub_21DF23614(v10, &qword_27CEAACB0);
  sub_21E141484();
  v48 = sub_21E141514();

  v49 = v56;
  (*(v62 + 32))(v56, v47, v63);
  v50 = v49 + *(v58 + 36);
  *v50 = v48;
  *(v50 + 8) = xmmword_21E14F4B0;
  *(v50 + 24) = 0x4010000000000000;
  v51 = sub_21E140914();
  sub_21DF3DE9C(v49, v15, &qword_27CEAACC0);
  v52 = &v15[*(v61 + 36)];
  *v52 = v51;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  v52[40] = 1;
  sub_21E03255C();
  sub_21E141164();
  return sub_21DF23614(v15, &qword_27CEAACC8);
}

uint64_t sub_21E03015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v80 - v4);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD60);
  MEMORY[0x28223BE20](v86);
  v85 = &v80 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD68);
  MEMORY[0x28223BE20](v87);
  v8 = &v80 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD70);
  MEMORY[0x28223BE20](v95);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = &v80 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD78);
  MEMORY[0x28223BE20](v91);
  v89 = &v80 - v13;
  v14 = sub_21E13F444();
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  v82 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD80);
  MEMORY[0x28223BE20](v18 - 8);
  v94 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD88);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v92 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  type metadata accessor for BundleTextDetailView();
  v28 = sub_21E13ED64();
  *v27 = sub_21E140004();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v29 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD90) + 44)];
  v90 = a1;
  sub_21E030BF8(a1, v28, v29);
  LOBYTE(a1) = sub_21E140904();
  v30 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD98) + 36)];
  *v30 = a1;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  LOBYTE(a1) = sub_21E140974();
  sub_21E13F374();
  v31 = &v27[*(v23 + 44)];
  *v31 = a1;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = *(v28 + 16);

  if (v36)
  {
    *v5 = sub_21E141CC4();
    v5[1] = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAADA0);
    sub_21E031984(v90, v5 + *(v38 + 44));
    sub_21E141CC4();
    sub_21E13FCE4();
    v39 = v85;
    sub_21DF3DE9C(v5, v85, &qword_27CEAAD58);
    v40 = (v39 + *(v86 + 36));
    v41 = v105;
    v40[4] = v104;
    v40[5] = v41;
    v40[6] = v106;
    v42 = v101;
    *v40 = v100;
    v40[1] = v42;
    v43 = v103;
    v40[2] = v102;
    v40[3] = v43;
    sub_21DF3DE9C(v39, v8, &qword_27CEAAD60);
    *&v8[*(v87 + 36)] = 256;
    sub_21DF3DE9C(v8, v10, &qword_27CEAAD68);
    *&v10[*(v95 + 36)] = 256;
    v44 = v88;
    sub_21DF3DE9C(v10, v88, &qword_27CEAAD70);
    sub_21DF236C0(v44, v89, &qword_27CEAAD70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAADA8);
    sub_21E032A14();
    sub_21E032B58();
    v45 = v93;
    sub_21E1402F4();
    sub_21DF23614(v44, &qword_27CEAAD70);
    v46 = v96;
  }

  else
  {
    v88 = v27;
    sub_21E140994();
    v47 = sub_21E140C44();
    v49 = v48;
    v51 = v50;

    sub_21E1409E4();
    v52 = sub_21E140BD4();
    v54 = v53;
    v56 = v55;
    sub_21DF3DE8C(v47, v49, v51 & 1);

    LODWORD(v100) = sub_21E1404B4();
    v57 = sub_21E140C24();
    v86 = v58;
    v87 = v57;
    v60 = v59;
    v62 = v61;
    sub_21DF3DE8C(v52, v54, v56 & 1);

    v63 = sub_21E140914();
    v98 = v60 & 1;
    v97 = 1;
    sub_21E141CC4();
    sub_21E13FCE4();
    *&v99[55] = v103;
    *&v99[71] = v104;
    *&v99[87] = v105;
    *&v99[103] = v106;
    *&v99[7] = v100;
    *&v99[23] = v101;
    *&v99[39] = v102;
    v64 = v81;
    sub_21E02E6D0(v81);
    v65 = v82;
    v66 = v83;
    v67 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277CDF3D0], v84);
    LOBYTE(v52) = sub_21E13F434();
    v68 = *(v66 + 8);
    v68(v65, v67);
    v68(v64, v67);
    if (v52)
    {
      _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    }

    else
    {
      sub_21E141484();
    }

    v69 = sub_21E141514();

    v70 = v89;
    *(v89 + 40) = 0u;
    *(v70 + 56) = 0u;
    v71 = *&v99[80];
    *(v70 + 137) = *&v99[64];
    *(v70 + 153) = v71;
    *(v70 + 169) = *&v99[96];
    v72 = *&v99[16];
    *(v70 + 73) = *v99;
    *(v70 + 89) = v72;
    v73 = *&v99[48];
    *(v70 + 105) = *&v99[32];
    v74 = v86;
    *v70 = v87;
    *(v70 + 8) = v74;
    *(v70 + 16) = v60 & 1;
    *(v70 + 24) = v62;
    *(v70 + 32) = v63;
    *(v70 + 72) = 1;
    v75 = *&v99[111];
    *(v70 + 121) = v73;
    *(v70 + 184) = v75;
    *(v70 + 192) = v69;
    *(v70 + 200) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAADA8);
    sub_21E032A14();
    sub_21E032B58();
    v45 = v93;
    sub_21E1402F4();
    v46 = v96;
    v27 = v88;
  }

  v76 = v92;
  sub_21DF236C0(v27, v92, &qword_27CEAAD88);
  v77 = v94;
  sub_21DF236C0(v45, v94, &qword_27CEAAD80);
  sub_21DF236C0(v76, v46, &qword_27CEAAD88);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAADF8);
  sub_21DF236C0(v77, v46 + *(v78 + 48), &qword_27CEAAD80);
  sub_21DF23614(v45, &qword_27CEAAD80);
  sub_21DF23614(v27, &qword_27CEAAD88);
  sub_21DF23614(v77, &qword_27CEAAD80);
  return sub_21DF23614(v76, &qword_27CEAAD88);
}

uint64_t sub_21E030BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v109 = a3;
  v93 = sub_21E140384();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF08);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v81 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF10);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v81 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF18);
  MEMORY[0x28223BE20](v84);
  v83 = &v81 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF20);
  v107 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v82 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF28);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v81 - v14;
  v100 = sub_21E13F9D4();
  v15 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF30);
  v18 = *(v17 - 8);
  v101 = v17;
  v102 = v18;
  MEMORY[0x28223BE20](v17);
  v97 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF38);
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v104 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF40);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v112 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  v95 = type metadata accessor for BundleTextDetailView();
  v96 = a1;
  sub_21E13ED24();
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = *(v25 + 48);
  v31 = v29 + *(v25 + 52);
  v111 = v29;
  *(v29 + v30) = 1;
  *v31 = 0x4038000000000000;
  *(v31 + 8) = 0;
  v115 = sub_21E13ED14();
  v116 = v32;
  sub_21DF252E0();
  v33 = sub_21E140C94();
  v35 = v34;
  v37 = v36;
  sub_21E140A44();
  v38 = sub_21E140C44();
  v40 = v39;
  LOBYTE(v29) = v41;
  v43 = v42;

  sub_21DF3DE8C(v33, v35, v37 & 1);

  v115 = v38;
  v116 = v40;
  v44 = v29 & 1;
  v117 = v29 & 1;
  v118 = v43;
  v45 = v99;
  v46 = v100;
  (*(v15 + 104))(v99, *MEMORY[0x277CDF9D8], v100);
  v47 = MEMORY[0x277CE0BC8];
  v48 = v97;
  sub_21E140F64();
  (*(v15 + 8))(v45, v46);
  sub_21DF3DE8C(v38, v40, v44);
  v49 = v95;

  sub_21E1409E4();
  v115 = MEMORY[0x277CE0BD8];
  v116 = v47;
  v50 = v103;
  swift_getOpaqueTypeConformance2();
  v51 = v98;
  v52 = v101;
  sub_21E140D84();
  v53 = v96;
  (*(v102 + 8))(v48, v52);
  v54 = 1;
  if ((*(v53 + *(v49 + 24)) & 1) == 0)
  {
    sub_21E1400D4();
    v55 = (v53 + *(v49 + 28));
    v56 = *v55;
    v57 = *(v55 + 1);
    v113 = v56;
    v114 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE80);
    sub_21E141734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF48);
    sub_21E0345EC();
    sub_21E034640();
    v58 = v87;
    sub_21E141844();
    v59 = v91;
    sub_21E140374();
    sub_21DF23E5C(&qword_27CEAAF60, &qword_27CEAAF08);
    v60 = v85;
    v61 = v90;
    v62 = v93;
    sub_21E140E14();
    (*(v92 + 8))(v59, v62);
    (*(v89 + 8))(v58, v61);
    if (*(v94 + 16))
    {
      v63 = 1.0;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = v83;
    (*(v86 + 32))(v83, v60, v88);
    *(v64 + *(v84 + 36)) = v63;
    v65 = v82;
    sub_21DF3DE9C(v64, v82, &qword_27CEAAF18);
    *(v65 + *(v50 + 36)) = 257;
    v66 = v65;
    v67 = v81;
    sub_21DF3DE9C(v66, v81, &qword_27CEAAF20);
    sub_21DF3DE9C(v67, v110, &qword_27CEAAF20);
    v54 = 0;
  }

  v68 = v110;
  (*(v107 + 56))(v110, v54, 1, v50);
  v69 = v112;
  sub_21DF236C0(v111, v112, &qword_27CEAAF40);
  v71 = v104;
  v70 = v105;
  v72 = *(v105 + 16);
  v73 = v51;
  v74 = v106;
  v72(v104, v51, v106);
  v75 = v108;
  sub_21DF236C0(v68, v108, &qword_27CEAAF28);
  v76 = v109;
  sub_21DF236C0(v69, v109, &qword_27CEAAF40);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF68);
  v72((v76 + v77[12]), v71, v74);
  v78 = v76 + v77[16];
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_21DF236C0(v75, v76 + v77[20], &qword_27CEAAF28);
  sub_21DF23614(v68, &qword_27CEAAF28);
  v79 = *(v70 + 8);
  v79(v73, v74);
  sub_21DF23614(v111, &qword_27CEAAF40);
  sub_21DF23614(v75, &qword_27CEAAF28);
  v79(v71, v74);
  return sub_21DF23614(v112, &qword_27CEAAF40);
}

uint64_t sub_21E0317D4()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAD48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF70);
  sub_21DF23E5C(&qword_27CEAAF78, &qword_27CEAAD48);
  sub_21E0345EC();
  swift_getOpaqueTypeConformance2();
  return sub_21E141A74();
}

uint64_t sub_21E031910@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_21E141634();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 9) = 1;
  return result;
}

uint64_t sub_21E031984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for BundleTextDetailView();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE00);
  MEMORY[0x28223BE20](v20);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE08);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  if (*(a1 + *(v3 + 24)))
  {
    *v6 = sub_21E1401C4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE28);
    v22 = sub_21E13ED64();
    v18[1] = swift_getKeyPath();
    sub_21DFA212C(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v16 = swift_allocObject();
    sub_21E032158(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE38);
    sub_21DF23E5C(&qword_27CEAAE40, &qword_27CEAAE30);
    sub_21E032ED0(&qword_27CEAAE48, MEMORY[0x277D79370]);
    sub_21E032D60();
    sub_21E141A74();
    sub_21DF236C0(v6, v9, &qword_27CEAAE00);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAAE20, &qword_27CEAAE10);
    sub_21DF23E5C(&qword_27CEAAE18, &qword_27CEAAE00);
    sub_21E1402F4();
    return sub_21DF23614(v6, &qword_27CEAAE00);
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    sub_21E1408F4();
    sub_21DF23E5C(&qword_27CEAAE18, &qword_27CEAAE00);
    sub_21E13F3C4();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEAAE20, &qword_27CEAAE10);
    sub_21E1402F4();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_21E031ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BundleTextDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  *a2 = sub_21E1401C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE28);
  v10[1] = sub_21E13ED64();
  swift_getKeyPath();
  sub_21DFA212C(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21E032158(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAE38);
  sub_21DF23E5C(&qword_27CEAAE40, &qword_27CEAAE30);
  sub_21E032ED0(&qword_27CEAAE48, MEMORY[0x277D79370]);
  sub_21E032D60();
  return sub_21E141A74();
}

uint64_t sub_21E0320EC()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E032158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTextDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0321BC()
{
  type metadata accessor for BundleTextDetailView();

  return sub_21E0320EC();
}

unint64_t sub_21E03221C()
{
  result = qword_27CEAACE8;
  if (!qword_27CEAACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACB0);
    sub_21E0322D4();
    sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAACE8);
  }

  return result;
}

unint64_t sub_21E0322D4()
{
  result = qword_27CEAACF0;
  if (!qword_27CEAACF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACA8);
    sub_21E032360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAACF0);
  }

  return result;
}

unint64_t sub_21E032360()
{
  result = qword_27CEAACF8;
  if (!qword_27CEAACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACA0);
    sub_21E0323EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAACF8);
  }

  return result;
}

unint64_t sub_21E0323EC()
{
  result = qword_27CEAAD00;
  if (!qword_27CEAAD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACE0);
    sub_21E0324A4();
    sub_21DF23E5C(qword_27CEAA470, &qword_27CEA8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD00);
  }

  return result;
}

unint64_t sub_21E0324A4()
{
  result = qword_27CEAAD08;
  if (!qword_27CEAAD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACD8);
    sub_21DF23E5C(&qword_27CEAAD10, &qword_27CEAAD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD08);
  }

  return result;
}

unint64_t sub_21E03255C()
{
  result = qword_27CEAAD20;
  if (!qword_27CEAAD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACC8);
    sub_21E0325E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD20);
  }

  return result;
}

unint64_t sub_21E0325E8()
{
  result = qword_27CEAAD28;
  if (!qword_27CEAAD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAACB0);
    sub_21E03221C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD28);
  }

  return result;
}

uint64_t sub_21E0326CC()
{
  type metadata accessor for BundleTextDetailView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  sub_21E141724();
}

void sub_21E0327B4()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21E13EDA4();
    if (v1 <= 0x3F)
    {
      sub_21DF48E78(319, &qword_280F68D88);
      if (v2 <= 0x3F)
      {
        sub_21DF48E78(319, &qword_280F68D48);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21E032890()
{
  result = qword_27CEAAD30;
  if (!qword_27CEAAD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAD38);
    sub_21E03255C();
    sub_21E032ED0(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD30);
  }

  return result;
}

unint64_t sub_21E0329A4()
{
  result = qword_27CEAAD50;
  if (!qword_27CEAAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAD50);
  }

  return result;
}

unint64_t sub_21E032A14()
{
  result = qword_27CEAADB0;
  if (!qword_27CEAADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAADA8);
    sub_21E032ACC();
    sub_21DF23E5C(&qword_27CEAADC8, &qword_27CEAADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAADB0);
  }

  return result;
}

unint64_t sub_21E032ACC()
{
  result = qword_27CEAADB8;
  if (!qword_27CEAADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAADC0);
    sub_21DF3DE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAADB8);
  }

  return result;
}

unint64_t sub_21E032B58()
{
  result = qword_27CEAADD8;
  if (!qword_27CEAADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAD70);
    sub_21E032C10();
    sub_21DF23E5C(&qword_27CEA85B0, &qword_27CEA85B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAADD8);
  }

  return result;
}

unint64_t sub_21E032C10()
{
  result = qword_27CEAADE0;
  if (!qword_27CEAADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAD68);
    sub_21E032C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAADE0);
  }

  return result;
}

unint64_t sub_21E032C9C()
{
  result = qword_27CEAADE8;
  if (!qword_27CEAADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAD60);
    sub_21DF23E5C(&qword_27CEAADF0, &qword_27CEAAD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAADE8);
  }

  return result;
}

unint64_t sub_21E032D60()
{
  result = qword_27CEAAE50;
  if (!qword_27CEAAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAE38);
    sub_21E032E18();
    sub_21DF23E5C(&qword_27CEAADC8, &qword_27CEAADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAE50);
  }

  return result;
}

unint64_t sub_21E032E18()
{
  result = qword_27CEAAE58;
  if (!qword_27CEAAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAE60);
    sub_21DF23E5C(&qword_27CEAAE68, &qword_27CEAAE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAE58);
  }

  return result;
}

uint64_t sub_21E032ED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E032F18()
{
  result = qword_27CEAAEA8;
  if (!qword_27CEAAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAE90);
    sub_21DF23E5C(&qword_27CEAAEB0, &qword_27CEAAEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAEA8);
  }

  return result;
}

void sub_21E032FD0(void **a1)
{
  v2 = *(sub_21E13E0F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E10193C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21E033078(v5);
  *a1 = v3;
}

void sub_21E033078(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13E0F4();
        v6 = sub_21E142314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21E13E0F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21E033444(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21E0331A4(0, v2, 1, a1);
  }
}

void sub_21E0331A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21E13E0F4();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      (v46)(v48, v21, v8, v14);
      v26 = v49;
      v25(v49, v23, v8);
      sub_21E13E0C4();
      v28 = v27;
      sub_21E13E0C4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = &v40[v36];
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21E033444(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_21E13E0F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v122 - v13;
  MEMORY[0x28223BE20](v14);
  v144 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v18;
  v135 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_128:
      v117 = sub_21E101914(a3);
    }

    v145 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        sub_21E033E54(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *&v117[16 * a3 + 16]], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_21E101914(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_21E101888(a3 - 1);
        v117 = v145;
        a3 = *(v145 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v136 = v19;
      v129 = v6;
      v24 = v10[9];
      v5 = &(*v135)[v24 * v23];
      v132 = *v135;
      v25 = v132;
      v26 = v10[2];
      v27 = v143;
      v26(v143, &v132[v24 * v23], v9, v17);
      v28 = &v25[v24 * v22];
      v29 = v144;
      v137 = v26;
      (v26)(v144, v28, v9);
      sub_21E13E0C4();
      v31 = v30;
      sub_21E13E0C4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v141;
      v35(v29, v9);
      v133 = v35;
      v35(v27, v9);
      v123 = v34;
      v36 = v34 + 2;
      v139 = v24;
      v37 = &v132[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        a3 = v143;
        v39 = v137;
        v137(v143, v37, v9);
        v40 = v144;
        v39(v144, v5, v9);
        sub_21E13E0C4();
        v42 = v41;
        sub_21E13E0C4();
        v44 = v43;
        v45 = v133;
        (v133)(v40, v9);
        v45(a3, v9);
        v10 = v134;
        ++v36;
        v37 += v139;
        v5 += v139;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v128;
      v6 = v129;
      a4 = v124;
      v22 = v123;
      if (v33 < v31)
      {
        if (v38 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v38)
        {
          v47 = v38;
          a3 = v139 * (v38 - 1);
          v5 = v38 * v139;
          v136 = v38;
          v48 = v123 * v139;
          do
          {
            if (v22 != --v47)
            {
              v129 = v6;
              v49 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v50 = *v140;
              (*v140)(v127, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v50(&v49[a3], v127, v9);
              v46 = v128;
              v6 = v129;
            }

            ++v22;
            a3 -= v139;
            v5 -= v139;
            v48 += v139;
          }

          while (v22 < v47);
          v10 = v134;
          a4 = v124;
          v22 = v123;
          v38 = v136;
        }
      }
    }

    v51 = v135[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v128;
    }

    else
    {
      v21 = sub_21E06A15C(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v21 = sub_21E06A15C((v52 > 1), a3 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_21E033E54(&(*v135)[v10[9] * v94], &(*v135)[v10[9] * *&v21[16 * v5 + 32]], &(*v135)[v10[9] * v95], v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_21E101914(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v145 = v93;
        sub_21E101888(v5);
        v21 = v145;
        v53 = *(v145 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v135[1];
    v20 = v130;
    a4 = v124;
    if (v130 >= v19)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v97 = *v135;
  v98 = v10[9];
  v139 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = (v100 - v38);
  v137 = v97;
  v126 = v98;
  v103 = &v97[v38 * v98];
  v130 = v5;
LABEL_85:
  v136 = v38;
  v131 = v103;
  v132 = v102;
  v104 = v103;
  v133 = v99;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v104, v9, v17);
    v107 = v144;
    v106(v144, v99, v9);
    sub_21E13E0C4();
    v109 = v108;
    sub_21E13E0C4();
    v111 = v110;
    v112 = *v141;
    (*v141)(v107, v9);
    v113 = v105;
    a3 = v9;
    v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v136 + 1;
      v99 = &v133[v126];
      v102 = v132 - 1;
      v5 = v130;
      v103 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v22 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v114 = *v140;
    v115 = v138;
    (*v140)(v138, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_21E033E54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_21E13E0F4();
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v67 = a1;
  v66 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v17;
    if (v17 >= 1)
    {
      v34 = -v13;
      v56 = a4;
      v57 = (v8 + 16);
      v54 = (v8 + 8);
      v55 = a1;
      v35 = v33;
      v58 = -v13;
      do
      {
        v53 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v60 = v36;
        v61 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v67 = v36;
            v65 = v53;
            goto LABEL_58;
          }

          v39 = a3;
          v59 = v33;
          v40 = a3 + v34;
          v41 = v35 + v34;
          v42 = *v57;
          v43 = v62;
          v44 = v64;
          (*v57)(v62, v41, v64);
          v45 = v37;
          v46 = v63;
          (v42)(v63, v45, v44);
          sub_21E13E0C4();
          v48 = v47;
          sub_21E13E0C4();
          v50 = v49;
          v51 = *v54;
          (*v54)(v46, v44);
          v51(v43, v44);
          if (v50 < v48)
          {
            break;
          }

          v33 = v41;
          a3 = v40;
          if (v39 < v35 || v40 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v61;
            a1 = v55;
          }

          else
          {
            v37 = v61;
            a1 = v55;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v41;
          v38 = v41 > v56;
          v34 = v58;
          v36 = v60;
          if (!v38)
          {
            a2 = v60;
            goto LABEL_57;
          }
        }

        a3 = v40;
        if (v39 < v60 || v40 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v55;
          v34 = v58;
          v33 = v59;
        }

        else
        {
          a2 = v61;
          a1 = v55;
          v34 = v58;
          v33 = v59;
          if (v39 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v56);
    }

LABEL_57:
    v67 = a2;
    v65 = v33;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v16;
    v65 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v59 = a3;
      v60 = v8 + 16;
      v57 = (v8 + 8);
      v58 = v19;
      v20 = v63;
      do
      {
        v21 = a1;
        v22 = v62;
        v23 = a2;
        v24 = v64;
        v25 = a2;
        v26 = v58;
        (v58)(v62, v23, v64);
        v26(v20, a4, v24);
        sub_21E13E0C4();
        v28 = v27;
        sub_21E13E0C4();
        v30 = v29;
        v31 = *v57;
        (*v57)(v20, v24);
        v31(v22, v24);
        if (v30 >= v28)
        {
          v32 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v32 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v32 + v13;
        v67 = a1;
      }

      while (a4 < v61 && a2 < v59);
    }
  }

LABEL_58:
  sub_21E06C5C0(&v67, &v66, &v65);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for BundleTextDetailView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = sub_21E13EDA4();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21E03456C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleTextDetailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E02E900(v4, a1);
}

unint64_t sub_21E0345EC()
{
  result = qword_27CEAAF50;
  if (!qword_27CEAAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAF50);
  }

  return result;
}

unint64_t sub_21E034640()
{
  result = qword_27CEAAF58;
  if (!qword_27CEAAF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAF48);
    sub_21E0345EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAF58);
  }

  return result;
}

uint64_t SelectedSubjectReticuleView.init(contentsRect:entryPoint:selectedSubjectBundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  v10 = type metadata accessor for SelectedSubjectReticuleView();
  v11 = *(v10 + 20);
  v12 = sub_21E13D834();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  v13 = *(v10 + 24);
  v14 = sub_21E13EDA4();
  v15 = *(*(v14 - 8) + 32);

  return v15(a3 + v13, a2, v14);
}

uint64_t type metadata accessor for SelectedSubjectReticuleView()
{
  result = qword_280F69BB0;
  if (!qword_280F69BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SelectedSubjectReticuleView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for SelectedSubjectReticuleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21E0354DC(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectedSubjectReticuleView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_21E034D78(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_21E034DDC;
  a1[1] = v7;
  return result;
}

uint64_t sub_21E034934@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  MEMORY[0x28223BE20](v48);
  v4 = &x - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &x - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF90);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&x - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF98);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &x - v14;
  v16 = *(type metadata accessor for SelectedSubjectReticuleView() + 24);
  sub_21E13ED94();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_21E13F714();
  v57.size.width = v25;
  v57.size.height = v26;
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v58 = CGRectInset(v57, 3.5, 3.5);
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  sub_21E13F714();
  sub_21E034DFC(v18, v20, v22, v24, v30, v31);
  sub_21E13F714();
  sub_21E13F714();
  sub_21E142614();
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v60 = CGRectIntersection(v59, v61);
  v32 = v60.origin.x;
  v33 = v60.origin.y;
  v34 = v60.size.width;
  v35 = v60.size.height;
  sub_21E141CC4();
  sub_21E13FCE4();
  v36 = v11 + *(v9 + 44);
  *(v36 + 1) = 0x4046800000000000;
  type metadata accessor for LighterRotatingContentLight(0);
  v37 = sub_21E13F834();
  (*(*(v37 - 8) + 56))(v7, 1, 2, v37);
  sub_21E0354DC(v7, v4, type metadata accessor for LighterRotatingContentLight.LoadingState);
  sub_21E141704();
  v38 = sub_21E035544(v7);
  *v36 = 0;
  v39 = v51;
  *v11 = v50;
  v11[1] = v39;
  v11[6] = v56;
  v40 = v55;
  v11[4] = v54;
  v11[5] = v40;
  v41 = v53;
  v11[2] = v52;
  v11[3] = v41;
  v42 = MEMORY[0x223D52580](v38, 0.5, 1.0, 0.0);
  sub_21DF3DE9C(v11, v15, &qword_27CEAAF90);
  v43 = &v15[*(v13 + 44)];
  *v43 = v32;
  *(v43 + 1) = v33;
  *(v43 + 2) = v34;
  *(v43 + 3) = v35;
  *(v43 + 2) = xmmword_21E14AFA0;
  *(v43 + 3) = xmmword_21E14F8F0;
  *(v43 + 8) = v42;
  *(v43 + 9) = v32;
  *(v43 + 10) = v33;
  *(v43 + 11) = v34;
  *(v43 + 12) = v35;
  if (MEMORY[0x223D4F5B0](a1 + v16, a1 + v16))
  {
    v44 = 0.9;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = v49;
  sub_21DF3DE9C(v15, v49, &qword_27CEAAF98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFA0);
  *(v45 + *(result + 36)) = v44;
  return result;
}

uint64_t sub_21E034D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedSubjectReticuleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21E034DFC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v13 = sub_21E13ED04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  sub_21E142664();
  sub_21E13ECF4();
  v21 = v20;
  v23 = v22;
  v24 = *(v14 + 8);
  v24(v19, v13);
  type metadata accessor for SelectedSubjectReticuleView();
  if (sub_21E13D7F4())
  {
    if (a6 > 0.0)
    {
      v21 = 0.75 / (a5 / a6) * (v21 + -0.5) + 0.5;
    }
  }

  else
  {
    *&v37[4] = a5;
    v38 = a6;
    v26 = *v7;
    v25 = v7[1];
    *&v37[2] = a3;
    *&v37[3] = a4;
    v27 = v7[2];
    v28 = v7[3];
    v39.origin.x = v26;
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v28;
    MinX = CGRectGetMinX(v39);
    *&v37[1] = a2;
    v30 = MinX;
    v40.origin.x = v26;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v28;
    v21 = v30 + v21 * CGRectGetWidth(v40);
    v41.origin.x = v26;
    v41.origin.y = v25;
    v41.size.width = v27;
    v41.size.height = v28;
    MinY = CGRectGetMinY(v41);
    v42.origin.x = v26;
    v42.origin.y = v25;
    v42.size.width = v27;
    v42.size.height = v28;
    v23 = MinY + v23 * CGRectGetHeight(v42);
  }

  sub_21E142664();
  sub_21E13ECA4();
  v24(v16, v13);
  if ((sub_21E13D7F4() & 1) == 0)
  {
    v32 = *v7;
    v33 = v7[1];
    v34 = v7[2];
    v35 = v7[3];
    v43.origin.x = *v7;
    v43.origin.y = v33;
    v43.size.width = v34;
    v43.size.height = v35;
    CGRectGetMinX(v43);
    v38 = v23;
    v44.origin.x = v32;
    v44.origin.y = v33;
    v44.size.width = v34;
    v44.size.height = v35;
    CGRectGetWidth(v44);
    v45.origin.x = v32;
    v45.origin.y = v33;
    v45.size.width = v34;
    v45.size.height = v35;
    CGRectGetMinY(v45);
    v46.origin.x = v32;
    v46.origin.y = v33;
    v46.size.width = v34;
    v46.size.height = v35;
    CGRectGetHeight(v46);
  }

  return v21;
}

uint64_t sub_21E035110@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21E0354DC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectedSubjectReticuleView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_21E034D78(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_21E0355A0;
  a2[1] = v7;
  return result;
}

void sub_21E035238()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_21E13D834();
    if (v1 <= 0x3F)
    {
      sub_21E13EDA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21E0352D4()
{
  result = qword_27CEAAF80;
  if (!qword_27CEAAF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAF80);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for SelectedSubjectReticuleView();
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 20);
  v5 = sub_21E13D834();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v2 + 32);
  v7 = sub_21E13EDA4();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_21E03545C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SelectedSubjectReticuleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E034934(v4, a1);
}

uint64_t sub_21E0354DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E035544(uint64_t a1)
{
  v2 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E0355A4(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = sub_21E13D844();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E1400C4();
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7758);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v43 = v2;
    v59 = MEMORY[0x277D84F90];
    sub_21DF5C15C(0, v11, 0);
    v12 = v59;
    v13 = sub_21E13DD74();
    v14 = *(v13 - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v46 = (v4 + 8);
    v47 = v13;
    v45 = (v14 + 16);
    v44 = *(v14 + 72);
    v48 = v10;
    do
    {
      v55 = v15;
      v56 = v12;
      v57 = v11;
      sub_21E1400B4();
      sub_21E1400A4();
      v16 = v52;
      sub_21E13DD64();
      sub_21E03B498();
      (*v46)(v16, v53);
      sub_21E141634();
      sub_21E140084();

      sub_21E1400A4();
      sub_21E1400E4();
      v17 = sub_21E140C64();
      v19 = v18;
      v21 = v20;
      sub_21E140A84();
      v22 = sub_21E140C44();
      v24 = v23;
      LOBYTE(v16) = v25;

      sub_21DF3DE8C(v17, v19, v21 & 1);

      v58 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
      v26 = sub_21E140C24();
      v28 = v27;
      v30 = v29;
      v31 = v22;
      v32 = v48;
      sub_21DF3DE8C(v31, v24, v16 & 1);

      v33 = v55;

      v34 = v50;

      sub_21E13FAF4();

      sub_21E13F9E4();
      v12 = v56;
      v36 = v35;
      v38 = v37;
      sub_21DF3DE8C(v26, v28, v30 & 1);

      v39 = (v32 + *(v34 + 64));
      (*v45)(v32, v33, v47);
      *v39 = v36;
      v39[1] = v38;
      v59 = v12;
      v41 = *(v12 + 16);
      v40 = *(v12 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21DF5C15C(v40 > 1, v41 + 1, 1);
        v12 = v59;
      }

      *(v12 + 16) = v41 + 1;
      sub_21DF3DE9C(v32, v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41, &qword_27CEA7758);
      v15 = v33 + v44;
      v11 = v57 - 1;
    }

    while (v57 != 1);
  }

  return v12;
}

uint64_t sub_21E035AB8(uint64_t a1, uint64_t *a2)
{
  v39 = a2;
  v38 = sub_21E13F9F4();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v35[0] = v2;
    v48 = MEMORY[0x277D84F90];
    sub_21DF5C118(0, v7, 0);
    v8 = v48;
    v35[1] = v4 + 32;
    v36 = v6;
    v9 = (a1 + 56);
    v37 = v4;
    do
    {
      v43 = v9;
      v44 = v8;
      v45 = v7;
      v10 = *(v9 - 2);
      v11 = *v9;
      v40 = *v39;
      v41 = v11;
      v42 = v10;
      v46 = sub_21E1421C4();
      v47 = v12;
      sub_21DF252E0();

      v13 = sub_21E140C94();
      v15 = v14;
      v17 = v16;
      sub_21E140AA4();
      sub_21E140A04();
      sub_21E140A54();

      v18 = sub_21E140C44();
      v20 = v19;
      v22 = v21;

      sub_21DF3DE8C(v13, v15, v17 & 1);

      _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
      v23 = sub_21E141514();

      v46 = v23;
      v24 = sub_21E140C24();
      v26 = v25;
      v28 = v27;
      v29 = v18;
      v30 = v36;
      sub_21DF3DE8C(v29, v20, v22 & 1);

      sub_21E13FAF4();
      v31 = v28 & 1;
      v8 = v44;
      sub_21DF3DE8C(v24, v26, v31);

      v48 = v8;
      v33 = *(v8 + 16);
      v32 = *(v8 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21DF5C118(v32 > 1, v33 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v33 + 1;
      (*(v37 + 32))(v8 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, v30, v38);
      v9 = v43 + 4;
      v7 = v45 - 1;
    }

    while (v45 != 1);
  }

  return v8;
}

uint64_t sub_21E035E0C(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  v29 = sub_21E13F9F4();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v26[0] = v2;
  v38 = MEMORY[0x277D84F90];
  sub_21DF5C118(0, v7, 0);
  v8 = v38;
  v26[1] = v4 + 32;
  v27 = v6;
  v9 = (a1 + 56);
  v28 = v4;
  do
  {
    v31 = v9;
    v35 = v8;
    v36 = v7;
    v10 = *(v9 - 2);
    v11 = *v9;
    v33 = *v30;
    v34 = v10;
    swift_bridgeObjectRetain_n();

    sub_21E140AA4();
    sub_21E140A04();
    sub_21E140A54();

    v32 = v11;
    v12 = sub_21E140C44();
    v14 = v13;
    LOBYTE(v11) = v15;

    v37 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v16 = sub_21E140C24();
    v18 = v17;
    v20 = v19;
    v21 = v11 & 1;
    v22 = v27;
    sub_21DF3DE8C(v12, v14, v21);
    v8 = v35;

    sub_21E13FAF4();
    sub_21DF3DE8C(v16, v18, v20 & 1);

    v38 = v8;
    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_21DF5C118(v23 > 1, v24 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v24 + 1;
    (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v22, v29);
    v9 = v31 + 4;
    v7 = v36 - 1;
  }

  while (v36 != 1);
  return v8;
}

uint64_t sub_21E036108(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_21E13E244();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v22;
      if (v22)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v23;
    v19 = v21;
    v20 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    if ((result & 1) == 0)
    {
      result = sub_21E06A6D4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v16 = v8[2];
    v15 = v8[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_21E06A6D4((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v8[2] = v17;
    v18 = &v8[4 * v16];
    v18[4] = v19;
    v18[5] = v13;
    v18[6] = v25;
    v18[7] = v20;
  }

  while (v7 != v4);
  return v8;
}

uint64_t AnnotationViewConfiguration.wantsAnnotationCanvas.getter()
{
  if (sub_21E13E944() & 1) != 0 || (sub_21E13E8D4() & 1) != 0 || (sub_21E13E964())
  {
    return 1;
  }

  return sub_21E13E9A4();
}