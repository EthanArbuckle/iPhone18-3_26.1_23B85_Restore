uint64_t SpatialPhoto.GenerationEffectAnimator.__allocating_init(device:commandQueue:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v4 = swift_allocObject();
  SpatialPhoto.GenerationEffectAnimator.init(device:commandQueue:)(a1, a2);
  return v4;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.init(device:commandQueue:)(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0x400000003F19999ALL;
  *(v4 + 40) = 0;
  _s24GenerationEffectRendererCMa();
  swift_allocObject();
  sub_25E6C991C(a1, a2);
  if (v3)
  {
    type metadata accessor for SpatialPhoto.GenerationEffectAnimator();
    OUTLINED_FUNCTION_2();
  }

  else
  {
    *(v4 + 24) = v7;
  }

  return v4;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.__allocating_init()()
{
  OUTLINED_FUNCTION_0();
  v0 = swift_allocObject();
  SpatialPhoto.GenerationEffectAnimator.init()();
  return v0;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.init()()
{
  v2 = v0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0x400000003F19999ALL;
  *(v0 + 40) = 0;
  v3 = MTLCreateSystemDefaultDevice();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 newCommandQueue];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_25E6B7598();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v6 = v5;
  _s24GenerationEffectRendererCMa();
  swift_allocObject();
  sub_25E6C991C(v4, v6);
  if (v1)
  {
LABEL_7:
    type metadata accessor for SpatialPhoto.GenerationEffectAnimator();
    OUTLINED_FUNCTION_2();
    return v2;
  }

  *(v2 + 24) = v7;
  return v2;
}

uint64_t sub_25E6B709C(uint64_t a1)
{

  sub_25E6C9CDC(a1);
}

uint64_t sub_25E6B70E4(void *a1)
{
  v3 = v1;
  *(v3 + 40) = 0;

  sub_25E6C9CA0(a1);

  if (!v2)
  {
    result = swift_beginAccess();
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t sub_25E6B7164(void *a1)
{

  sub_25E6C9CA0(a1);
}

uint64_t sub_25E6B71A8(double a1)
{
  result = OUTLINED_FUNCTION_3();
  if (*(v1 + 16) == 1)
  {
    v4 = a1;
    *(v1 + 40) = *(v1 + 40) + v4;
  }

  return result;
}

uint64_t sub_25E6B71F0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];

  sub_25E6C9D18(v1, v2, v3);
}

uint64_t sub_25E6B7254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6B72AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6B72D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t SpatialPhoto.GenerationEffectAnimator.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25E6B7378()
{
  v0 = sub_25E6D80F4();
  v2 = v1;
  if (v0 == sub_25E6D80F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25E6D83B4();
  }

  return v5 & 1;
}

uint64_t sub_25E6B73FC(unsigned __int8 a1, char a2)
{
  v2 = 1701602409;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701602409;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E69646E6570;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x800000025E6DBAB0;
      break;
    case 3:
      v5 = 0x6E6552736465656ELL;
      v3 = 0xEB00000000726564;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x800000025E6DBAB0;
      break;
    case 3:
      v2 = 0x6E6552736465656ELL;
      v6 = 0xEB00000000726564;
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
    v8 = sub_25E6D83B4();
  }

  return v8 & 1;
}

unint64_t sub_25E6B7598()
{
  result = qword_27FD00A88;
  if (!qword_27FD00A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00A88);
  }

  return result;
}

uint64_t _s16RegionOfInterestOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6B77E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B77F8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25E6B7858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B7870(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s29GenerationAnimationParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s29GenerationAnimationParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_25E6B7944(uint64_t a1, id *a2)
{
  result = sub_25E6D80D4();
  *a2 = 0;
  return result;
}

uint64_t sub_25E6B79BC(uint64_t a1, id *a2)
{
  v3 = sub_25E6D80E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E6B7A3C()
{
  sub_25E6D80F4();
  v0 = sub_25E6D80C4();

  return v0;
}

uint64_t sub_25E6B7A74()
{
  swift_getWitnessTable();

  return sub_25E6D78F4();
}

uint64_t sub_25E6B7B38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B7A3C();
  *a1 = result;
  return result;
}

uint64_t sub_25E6B7B68()
{
  v0 = sub_25E6D80F4();
  v1 = MEMORY[0x25F8BC440](v0);

  return v1;
}

uint64_t sub_25E6B7BA8()
{
  sub_25E6D80F4();
  sub_25E6D8114();
}

uint64_t sub_25E6B7C04()
{
  sub_25E6D80F4();
  sub_25E6D8414();
  sub_25E6D8114();
  v0 = sub_25E6D8434();

  return v0;
}

void sub_25E6B7C90(uint64_t a1@<X8>)
{
  sub_25E6B7CC4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_25E6B7CCC@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_25E6B7D9C()
{
  sub_25E6D8414();
  swift_getWitnessTable();
  sub_25E6D7904();
  return sub_25E6D8434();
}

uint64_t sub_25E6B7E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E6B7E94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25E6D80C4();

  *a1 = v2;
  return result;
}

uint64_t sub_25E6B7EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B7F08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E6B7F0C(uint64_t a1)
{
  v2 = sub_25E6B7E4C(&qword_27FD01480, type metadata accessor for CIImageOption);
  v3 = sub_25E6B7E4C(&unk_27FD00CE0, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E6B7FD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6B7FF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_25E6B8058(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_beginAccess();
}

uint64_t SpatialPhoto.GyroView.init(url:rendererKind:metalDevice:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a6;
  v49 = a7;
  v45 = a4;
  v46 = a5;
  v51 = a2;
  v43 = a8;
  v47 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v44 = v10;
  MEMORY[0x28223BE20](v11, v12, v13, v14);
  OUTLINED_FUNCTION_4();
  v42 = v16 - v15;
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v41[2] = v18;
  v41[3] = v17;
  MEMORY[0x28223BE20](v17, v19, v20, v21);
  OUTLINED_FUNCTION_4();
  v22 = sub_25E6D7844();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  v29 = MEMORY[0x28223BE20](v25, v26, v27, v28);
  MEMORY[0x28223BE20](v29, v30, v31, v32);
  (*(v24 + 16))(v41 - v33, a1, v22);
  sub_25E6D7CF4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v50 = a3;
  sub_25E6D7C84();
  v34 = v44;
  v35 = v51;
  v36 = v47;
  (*(v44 + 16))(v42, v51, v47);
  v37 = OUTLINED_FUNCTION_9();
  SpatialPhoto.GyroView.init(scene:rendererKind:renderView:)(v37, v38, v45, v46, v48, v49, v39);
  swift_unknownObjectRelease();
  (*(v34 + 8))(v35, v36);
  return (*(v24 + 8))(a1, v22);
}

uint64_t SpatialPhoto.GyroView.init(scene:rendererKind:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for SpatialPhoto.GyroView();
  v15 = &a7[v14[12]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v14[13];
  *&a7[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78);
  swift_storeEnumTagMultiPayload();
  v17 = &a7[v14[14]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *&a7[v14[10]] = a1;
  *a7 = a3;
  *(a7 + 1) = a4;
  v18 = v14[9];
  v19 = sub_25E6D7D24();
  OUTLINED_FUNCTION_7();
  v24 = v20;
  (*(v20 + 16))(&a7[v18], a2, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  OUTLINED_FUNCTION_6();
  _s8GyroViewV5StateVMa();
  sub_25E6D7E04();
  v22 = *(v24 + 8);

  return v22(a2, v19);
}

uint64_t sub_25E6B87C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B87E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6B87E8()
{
  v0 = sub_25E6D7A84();
  MEMORY[0x28223BE20](v0, v1, v0, v2);
  (*(v4 + 104))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D3CB80]);
  sub_25E6D7AB4();
  swift_allocObject();
  v5 = sub_25E6D7A94();
  sub_25E6BB770();

  v6 = sub_25E6D8274();
  v9 = 0;
  type metadata accessor for SpatialPhoto.GyroCameraAnimator();
  swift_allocObject();
  SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(v6, &v9, sub_25E6BB768, v5);
  return v5;
}

uint64_t sub_25E6B8930()
{
  _s8GyroViewV5StateVMa();
  sub_25E6D7E24();
  sub_25E6D7E14();
  return v1;
}

uint64_t sub_25E6B8980(uint64_t a1)
{
  v3 = sub_25E6D7E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(a1 + 48));
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    sub_25E6D8234();
    v13 = sub_25E6D7FA4();
    sub_25E6D7DD4();

    sub_25E6D7E74();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v9, v3);
    return v15[1];
  }

  return v11;
}

uint64_t EnvironmentValues.spatialPhotoCameraController.getter()
{
  sub_25E6BA974();
  sub_25E6D7E94();
  return v1;
}

uint64_t sub_25E6B8B0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoCameraController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25E6B8BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25E6D7E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78);
  MEMORY[0x28223BE20](v12, v13, v14, v15);
  v17 = &v20 - v16;
  sub_25E6BB698(v2 + *(a1 + 52), &v20 - v16, &qword_27FD00E78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25E6BB6F8(v17, a2);
  }

  sub_25E6D8234();
  v19 = sub_25E6D7FA4();
  sub_25E6D7DD4();

  sub_25E6D7E74();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v11, v5);
}

uint64_t EnvironmentValues.spatialPhotoRenderKindOverride.getter()
{
  sub_25E6BA9C8();

  return sub_25E6D7E94();
}

uint64_t sub_25E6B8DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5);
  v7 = &v9 - v6;
  sub_25E6BB698(a1, &v9 - v6, &qword_27FD00E90);
  return EnvironmentValues.spatialPhotoRenderKindOverride.setter(v7);
}

uint64_t EnvironmentValues.spatialPhotoRenderKindOverride.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  OUTLINED_FUNCTION_11(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_9();
  sub_25E6BB698(v7, v8, &qword_27FD00E90);
  sub_25E6BA9C8();
  sub_25E6D7EA4();
  return sub_25E6BAA1C(a1);
}

uint64_t sub_25E6B8F3C(uint64_t a1)
{
  v3 = sub_25E6D7E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1 + *(a1 + 56);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_25E6D8234();
    v12 = sub_25E6D7FA4();
    sub_25E6D7DD4();

    sub_25E6D7E74();
    swift_getAtKeyPath();
    sub_25E6BAB08(v11, 0);
    (*(v4 + 8))(v9, v3);
    LOBYTE(v11) = v14[15];
  }

  return v11 & 1;
}

uint64_t EnvironmentValues.spatialPhotoDisableGyroAnimator.getter()
{
  sub_25E6BAA84();
  sub_25E6D7E94();
  return v1;
}

uint64_t sub_25E6B90CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoDisableGyroAnimator.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SpatialPhoto.GyroView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a5;
  v105 = a1;
  v6 = a1 - 8;
  v114 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v121 = v7;
  v113 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  OUTLINED_FUNCTION_11(v8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v14 = &v98 - v13;
  v15 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v104 = v16;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  OUTLINED_FUNCTION_4();
  v106 = v22 - v21;
  v23 = *(v6 + 24);
  v119 = *(v6 + 32);
  v120 = v23;
  v24 = type metadata accessor for SpatialPhoto.SceneView();
  OUTLINED_FUNCTION_1_0();
  v107 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26, v27, v28, v29);
  v117 = (&v98 - v30);
  OUTLINED_FUNCTION_6();
  sub_25E6D7E64();
  OUTLINED_FUNCTION_1_0();
  v109 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32, v33, v34, v35);
  v118 = &v98 - v36;
  v122 = v37;
  v38 = sub_25E6D7E64();
  OUTLINED_FUNCTION_1_0();
  v112 = v39;
  v44 = MEMORY[0x28223BE20](v40, v41, v42, v43);
  v111 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v44, v46, v47, v48);
  v108 = &v98 - v50;
  MEMORY[0x28223BE20](v49, v51, v52, v53);
  v110 = &v98 - v54;
  v55 = sub_25E6D7F94();
  OUTLINED_FUNCTION_1_0();
  v57 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v58, v59, v60, v61);
  v63 = &v98 - v62;
  v64 = *(v5 + *(v6 + 48));
  v65 = MEMORY[0x277CE0790];
  v66 = MEMORY[0x277CE1410];
  if (v64)
  {
    v102 = &v98 - v62;
    v103 = v55;
    v67 = v64;

    v68 = v105;
    sub_25E6B8BA0(v105, v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      v69 = v106;
      (*(v104 + 16))(v106, v5 + *(v68 + 36), v15);
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
      {
        sub_25E6BAA1C(v14);
      }
    }

    else
    {
      v69 = v106;
      (*(v104 + 32))(v106, v14, v15);
    }

    v106 = v57;
    v71 = sub_25E6B8980(v68);
    v115 = v24;
    v101 = v38;
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = sub_25E6B8930();
    }

    v73 = *v5;
    v74 = v5[1];
    v100 = v67;

    v75 = v119;
    v76 = v120;
    SpatialPhoto.SceneView.init(scene:rendererKind:cameraProvider:renderer:renderEffect:renderView:)(v67, v69, v72, MEMORY[0x277D3CB88], 0, 0, 0, v117, v73, v74, v120, v119);
    v77 = v114;
    v104 = *(v114 + 16);
    v78 = v113;
    (v104)(v113, v5, v68);
    v99 = v5;
    v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v76;
    *(v80 + 24) = v75;
    v114 = *(v77 + 32);
    (v114)(v80 + v79, v78, v68);
    OUTLINED_FUNCTION_0_0();
    v81 = v115;
    WitnessTable = swift_getWitnessTable();
    v83 = v117;
    sub_25E6D7FF4();

    (*(v107 + 8))(v83, v81);
    (v104)(v78, v99, v68);
    v84 = swift_allocObject();
    v85 = v119;
    *(v84 + 16) = v120;
    *(v84 + 24) = v85;
    (v114)(v84 + v79, v78, v68);
    v125 = WitnessTable;
    v86 = MEMORY[0x277CE0790];
    v126 = MEMORY[0x277CE0790];
    v87 = v122;
    v88 = swift_getWitnessTable();
    v89 = v108;
    v90 = v118;
    sub_25E6D7FD4();

    (*(v109 + 8))(v90, v87);
    v123 = v88;
    v124 = v86;
    v65 = v86;
    v91 = v101;
    swift_getWitnessTable();
    v92 = v112;
    v93 = *(v112 + 16);
    v94 = v110;
    v93(v110, v89, v91);
    v95 = *(v92 + 8);
    v95(v89, v91);
    v96 = v111;
    v93(v111, v94, v91);
    v63 = v102;
    sub_25E6B9B60(v96, v91);

    v95(v96, v91);
    v95(v94, v91);
    v55 = v103;
    v57 = v106;
    v66 = MEMORY[0x277CE1410];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    v135 = swift_getWitnessTable();
    v136 = v65;
    OUTLINED_FUNCTION_2_0();
    v133 = swift_getWitnessTable();
    v134 = v65;
    OUTLINED_FUNCTION_9();
    v70 = swift_getWitnessTable();
    sub_25E6B9C58(v70, v38, MEMORY[0x277CE1428]);
  }

  OUTLINED_FUNCTION_0_0();
  v131 = swift_getWitnessTable();
  v132 = v65;
  OUTLINED_FUNCTION_2_0();
  v129 = swift_getWitnessTable();
  v130 = v65;
  OUTLINED_FUNCTION_9();
  v127 = swift_getWitnessTable();
  v128 = v66;
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  (*(v57 + 16))(v116, v63, v55);
  return (*(v57 + 8))(v63, v55);
}

uint64_t sub_25E6B9A70()
{
  v0 = type metadata accessor for SpatialPhoto.GyroView();
  result = sub_25E6B8F3C(v0);
  if ((result & 1) == 0)
  {
    sub_25E6B8930();

    sub_25E6CE07C();
  }

  return result;
}

uint64_t sub_25E6B9AD8()
{
  type metadata accessor for SpatialPhoto.GyroView();
  sub_25E6B8930();

  sub_25E6CE3DC();
}

uint64_t sub_25E6B9B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E6D7F74();
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25E6D7F84();
}

uint64_t sub_25E6B9C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25E6D7F74();
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25E6D7F84();
}

uint64_t sub_25E6B9D50()
{
  v0 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  sub_25E6D7A24();
  return sub_25E6D7AA4();
}

uint64_t sub_25E6B9E04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6B9DFC();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.spatialPhotoCameraController.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25E6BA974();
  sub_25E6D7E94();
  return sub_25E6B9E90;
}

uint64_t sub_25E6B9E90(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7EA4();
  }

  sub_25E6D7EA4();
}

uint64_t sub_25E6B9F24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E6D7D24();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_25E6B9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E6BB59C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.spatialPhotoRenderKindOverride.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  v3[1] = __swift_coroFrameAllocStub(v6);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = sub_25E6BA9C8();
  sub_25E6D7E94();
  return sub_25E6BA0A8;
}

void sub_25E6BA0A8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_25E6BB698((*a1)[3], (*a1)[2], &qword_27FD00E90);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_25E6BB698(v3[2], v3[1], &qword_27FD00E90);
    sub_25E6D7EA4();
    sub_25E6BAA1C(v6);
  }

  else
  {
    sub_25E6D7EA4();
  }

  sub_25E6BAA1C(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_25E6BA1A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6BA198();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.spatialPhotoDisableGyroAnimator.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6BAA84();
  sub_25E6D7E94();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E6BA240;
}

unint64_t sub_25E6BA278(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E6BA33C(v11, 0, 0, 1, a1, a2);
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
    sub_25E6BB7B4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25E6BA33C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E6BA43C(a5, a6);
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
    result = sub_25E6D8334();
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

uint64_t sub_25E6BA43C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E6BA488(a1, a2);
  sub_25E6BA5A0(&unk_28705E198);
  return v3;
}

uint64_t sub_25E6BA488(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_25E6D8134())
  {
    result = sub_25E6BA684(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25E6D8304();
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
          result = sub_25E6D8334();
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

uint64_t sub_25E6BA5A0(uint64_t result)
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

    result = sub_25E6BA6F4(result, v7, 1, v3);
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

void *sub_25E6BA684(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00FE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_25E6BA6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00FE8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25E6BA84C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoCameraController.getter();
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25E6BA8EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.spatialPhotoDisableGyroAnimator.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25E6BA974()
{
  result = qword_27FD00E80;
  if (!qword_27FD00E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E80);
  }

  return result;
}

unint64_t sub_25E6BA9C8()
{
  result = qword_27FD00E88;
  if (!qword_27FD00E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E88);
  }

  return result;
}

uint64_t sub_25E6BAA1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E6BAA84()
{
  result = qword_27FD00E98;
  if (!qword_27FD00E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00E98);
  }

  return result;
}

uint64_t sub_25E6BAB08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  OUTLINED_FUNCTION_6();
  v1 = type metadata accessor for SpatialPhoto.GyroView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[9];
  v6 = sub_25E6D7D24();
  OUTLINED_FUNCTION_5();
  v12 = *(v7 + 8);
  v12(v0 + v3 + v5, v6);

  v8 = v0 + v3 + v1[11];
  _s8GyroViewV5StateVMa();
  OUTLINED_FUNCTION_6();
  sub_25E6D8024();
  OUTLINED_FUNCTION_5();
  (*(v9 + 8))(v8);
  OUTLINED_FUNCTION_6();
  sub_25E6D8034();

  j__swift_release();
  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!__swift_getEnumTagSinglePayload(v4 + v10, 1, v6))
    {
      v12(v4 + v10, v6);
    }
  }

  else
  {
  }

  sub_25E6BAB08(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_25E6BAD50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for SpatialPhoto.GyroView();
  OUTLINED_FUNCTION_11(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_25E6BAE64()
{
  sub_25E6BB234();
  if (v0 <= 0x3F)
  {
    sub_25E6D7D24();
    if (v1 <= 0x3F)
    {
      sub_25E6BB27C();
      if (v2 <= 0x3F)
      {
        _s8GyroViewV5StateVMa();
        sub_25E6D7E24();
        if (v3 <= 0x3F)
        {
          sub_25E6BB31C(319, &qword_27FD00F38, &qword_27FD00F40);
          if (v4 <= 0x3F)
          {
            sub_25E6BB31C(319, &qword_27FD00F48, &qword_27FD00E90);
            if (v5 <= 0x3F)
            {
              sub_25E6BB370();
              if (v6 <= 0x3F)
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

uint64_t sub_25E6BAFB4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_25E6D7D24();
    OUTLINED_FUNCTION_7();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[9];
    }

    else
    {
      _s8GyroViewV5StateVMa();
      sub_25E6D7E24();
      OUTLINED_FUNCTION_7();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD00EA0);
        v11 = a3[13];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_25E6BB0EC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_25E6D7D24();
    OUTLINED_FUNCTION_7();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      _s8GyroViewV5StateVMa();
      sub_25E6D7E24();
      OUTLINED_FUNCTION_7();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD00EA0);
        v11 = a4[13];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

unint64_t sub_25E6BB234()
{
  result = qword_27FD00F28;
  if (!qword_27FD00F28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD00F28);
  }

  return result;
}

void sub_25E6BB27C()
{
  if (!qword_27FD00F30)
  {
    sub_25E6D7CF4();
    v0 = sub_25E6D82E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD00F30);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_25E6BB31C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_25E6D7E34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25E6BB370()
{
  if (!qword_27FD00F50[0])
  {
    v0 = sub_25E6D7E34();
    if (!v1)
    {
      atomic_store(v0, qword_27FD00F50);
    }
  }
}

uint64_t sub_25E6BB3C0()
{
  type metadata accessor for SpatialPhoto.SceneView();
  sub_25E6D7E64();
  sub_25E6D7E64();
  sub_25E6D7F94();
  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_25E6BB4D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E6BB520(uint64_t *a1, int a2)
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

uint64_t sub_25E6BB560(uint64_t result, int a2, int a3)
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

unint64_t sub_25E6BB59C()
{
  result = qword_27FD00FD8;
  if (!qword_27FD00FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD00E90);
    sub_25E6BB650(&qword_27FD00FE0, MEMORY[0x277D3CBD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD00FD8);
  }

  return result;
}

uint64_t sub_25E6BB650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E6BB698(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25E6BB6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD00E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E6BB770()
{
  result = qword_27FD01600;
  if (!qword_27FD01600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01600);
  }

  return result;
}

uint64_t sub_25E6BB7B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_25E6BB918()
{
  result = sub_25E6BB938();
  qword_27FD00FF0 = result;
  return result;
}

id sub_25E6BB938()
{
  v0 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E6DAB50;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x800000025E6DBC60;
  sub_25E6D7AF4();
  *(inited + 72) = MEMORY[0x277D83A90];
  *(inited + 48) = v2;
  sub_25E6D80A4();
  v3 = sub_25E6D8094();

  [v0 registerDefaults_];

  return v0;
}

uint64_t SpatialPhoto.RegionOfInterest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 32))
  {
    sub_25E6D8314();

    v13 = 0xD000000000000019;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v4, v3];
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v13 = 0x286C61756E616D2ELL;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v4, v3];
LABEL_5:
    v6 = v5;
    v7 = sub_25E6D80F4();
    v9 = v8;

    MEMORY[0x25F8BC420](v7, v9);

    MEMORY[0x25F8BC420](58, 0xE100000000000000);
    return v13;
  }

  if (v1 == 1 && (v4 | v2 | v3) == 0)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v12 = 0xD000000000000019;
  }

  if (v4 | v2 | v1 | v3)
  {
    return v12;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t static SpatialPhoto.RegionOfInterest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    return OUTLINED_FUNCTION_42(v4, *a1);
  }

  if (*(a1 + 32) != 1)
  {
    v10 = *(a1 + 16) | *(a1 + 8);
    if (v10 | *&v2 | v3)
    {
      v11 = v10 | v3;
      if (*&v2 == 1 && v11 == 0)
      {
        v13 = v7 | v5 | v6;
        v14 = v8 == 2 && v4 == 1;
      }

      else
      {
        v13 = v7 | v5 | v6;
        v14 = v8 == 2 && v4 == 2;
      }

      if (!v14 || v13 != 0)
      {
        return 0;
      }
    }

    else
    {
      v15 = v7 | v5 | v4 | v6;
      if (v8 != 2 || v15 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v8 == 1)
  {
    return OUTLINED_FUNCTION_42(v4, *a1);
  }

  return 0;
}

char *SpatialPhoto.MetalUIView.__allocating_init(frame:isSecondary:)(char a1)
{
  OUTLINED_FUNCTION_4_0();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_3_1();
  return SpatialPhoto.MetalUIView.init(frame:isSecondary:)(a1);
}

char *SpatialPhoto.MetalUIView.init(frame:isSecondary:)(char a1)
{
  OUTLINED_FUNCTION_4_0();
  v4 = sub_25E6D79B4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11, v12, v13, v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing) = 1;
  v15 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  *v15 = 1;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 2;
  v16 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = -1;
  v17 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale;
  sub_25E6D7AF4();
  *(v1 + v17) = v18;
  v19 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  v20 = *MEMORY[0x277D3CB98];
  sub_25E6D7AC4();
  OUTLINED_FUNCTION_5();
  (*(v21 + 104))(v1 + v19, v20);
  v22 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  v23 = *MEMORY[0x277D3CB58];
  sub_25E6D7A64();
  OUTLINED_FUNCTION_5();
  (*(v24 + 104))(v1 + v22, v23);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  v25 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  v26 = *MEMORY[0x277D3CB28];
  sub_25E6D7A04();
  OUTLINED_FUNCTION_5();
  (*(v27 + 104))(v1 + v25, v26);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize) = 0u;
  v28 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore;
  *(v1 + v28) = dispatch_semaphore_create(3);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) = 0;
  v29 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget;
  *(v1 + v29) = [objc_allocWithZone(_s17DisplayLinkTargetCMa()) init];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler) = 0u;
  v77 = v4;
  v78 = v6;
  v76 = *MEMORY[0x277D3CAE8];
  v75 = *(v6 + 104);
  v75(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) = 0u;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath) = 0;
  v30 = v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest;
  *v30 = 1;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 2;
  v31 = a1;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) = a1;
  if (qword_27FD00A18 != -1)
  {
    swift_once();
  }

  v32 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_device;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_device) = qword_27FD00FF8;
  v33 = qword_27FD00A20;
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_commandQueue) = qword_27FD01000;
  v34 = *(v1 + v32);
  v35 = objc_allocWithZone(type metadata accessor for SpatialPhotoMTKView());
  swift_unknownObjectRetain();
  v36 = [v35 initWithFrame:v34 device:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) = v36;
  [v36 contentScaleFactor];
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkViewDefaultContentScaleFactor) = v37;
  type metadata accessor for SpatialPhoto.MetalUIView();
  v38 = OUTLINED_FUNCTION_3_1();
  v41 = objc_msgSendSuper2(v39, v40, v38);
  v42 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView;
  v43 = *&v41[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  v44 = v41;
  v45 = v43;
  [v44 bounds];
  [v45 setFrame_];

  [*&v41[v42] setDelegate_];
  *(*&v41[v42] + OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8) = &off_28705E830;
  swift_unknownObjectWeakAssign();
  v46 = *&v41[v42];
  swift_beginAccess();
  v47 = sub_25E6BC630();
  swift_endAccess();
  [v46 setColorPixelFormat_];
  [*&v41[v42] setAutoResizeDrawable_];
  v48 = [*&v41[v42] layer];
  objc_opt_self();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12();
  v49 = swift_dynamicCastObjCClassUnconditional();
  LODWORD(v46) = PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression(v49, 1);

  if (v46)
  {
    [*&v41[v42] setFramebufferOnly_];
  }

  if (qword_27FD00A10 != -1)
  {
    swift_once();
  }

  v50 = qword_27FD00FF0;
  v51 = sub_25E6D80C4();
  [v50 floatForKey_];
  v53 = v52;

  sub_25E6D7AF4();
  if (v53 != v54)
  {
    sub_25E6D7D04();
    v55 = sub_25E6D7DE4();
    v56 = sub_25E6D8244();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = v53;
      _os_log_impl(&dword_25E6B5000, v55, v56, "SpatialPhotoMetalUIView setting texture scale to %f", v57, 0xCu);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    v58 = OUTLINED_FUNCTION_40();
    v59(v58);
    *&v44[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale] = v53;
  }

  [*&v41[v42] setPreferredFramesPerSecond_];
  [*&v41[v42] setPaused_];
  [*&v41[v42] setEnableSetNeedsDisplay_];
  [*&v41[v42] setPresentsWithTransaction_];
  if (v31)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 1.0;
  }

  if (v31)
  {
    v61 = &selRef_clearColor;
  }

  else
  {
    v61 = &selRef_blackColor;
  }

  [*&v41[v42] setClearColor_];
  v62 = *&v41[v42];
  v63 = objc_opt_self();
  v64 = v62;
  v65 = [v63 *v61];
  [v64 setBackgroundColor_];

  v66 = [*&v41[v42] layer];
  objc_opt_self();
  OUTLINED_FUNCTION_12();
  v67 = swift_dynamicCastObjCClassUnconditional();
  (v75)(v2, v76, v77);
  v68 = sub_25E6D79A4();
  (*(v78 + 8))(v2, v77);
  [v67 setColorspace_];

  if ((v31 & 1) == 0)
  {
    [v44 addSubview_];
  }

  v69 = *&v44[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget];
  OUTLINED_FUNCTION_20();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = &v69[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  v72 = *&v69[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  *v71 = sub_25E6BDF80;
  v71[1] = v70;
  v73 = v69;

  sub_25E6BDF88(v72);

  sub_25E6C1698();

  return v44;
}

uint64_t sub_25E6BC630()
{
  v1 = sub_25E6D7A04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v7, v0, v1);
  v8 = (*(v2 + 88))(v7, v1);
  if (v8 == *MEMORY[0x277D3CB28] || v8 == *MEMORY[0x277D3CB08] || v8 == *MEMORY[0x277D3CB20])
  {
    return 81;
  }

  if (v8 == *MEMORY[0x277D3CB00])
  {
    return 10;
  }

  if (v8 == *MEMORY[0x277D3CB10] || v8 == *MEMORY[0x277D3CB18])
  {
    return 81;
  }

  result = sub_25E6D8354();
  __break(1u);
  return result;
}

void sub_25E6BC7C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25E6BF9B0();
  }
}

void sub_25E6BC820(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v4 = [*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAllowsDisplayCompositing_];
  }
}

uint64_t sub_25E6BC8D4()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_25E6BC914(char a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_25E6BC820(v4);
}

void (*sub_25E6BC96C())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_15(v2);
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_25E6BC9E0;
}

void sub_25E6BC9E0(uint64_t a1)
{
  v1 = *a1;
  sub_25E6BC914(*(*a1 + 32));

  free(v1);
}

double sub_25E6BCA20@<D0>(uint64_t a1@<X8>)
{
  sub_25E6BCAA4(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6BCA64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

__n128 sub_25E6BCAA4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32);
  result = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6BCAC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = (v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v8 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  v9 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24);
  if (!*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32))
  {
    if (*(a1 + 32))
    {
LABEL_30:
      OUTLINED_FUNCTION_33();
      sub_25E6BD008(v16);
      return;
    }

    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32) == 1)
  {
    if (v6 != 1)
    {
      goto LABEL_30;
    }

LABEL_6:
    if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest), *a1))
    {
      return;
    }

    goto LABEL_28;
  }

  v10 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16) | *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8);
  if (!(v10 | v8 | v9))
  {
    if (v6 == 2 && !(v4 | v3 | v2 | v5))
    {
      return;
    }

    goto LABEL_28;
  }

  v11 = v10 | v9;
  if (v8 == 1 && v11 == 0)
  {
    if (v6 != 2 || v2 != 1)
    {
      goto LABEL_28;
    }

LABEL_27:
    if (!(v4 | v3 | v5))
    {
      return;
    }

    goto LABEL_28;
  }

  if (v6 == 2 && v2 == 2)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v7[2].i8[0] != 2)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_34(v7[1], *v7);
  if (v15)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_33();
  sub_25E6BD35C(v17);

  sub_25E6BE848();
}

void (*sub_25E6BCC24(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32);
  v5 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16);
  *v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest);
  *(v3 + 1) = v5;
  *(v3 + 32) = v4;
  return sub_25E6BCC90;
}

void sub_25E6BCC90(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6BCAC4(v6);

  free(v1);
}

uint64_t sub_25E6BCCF0(uint64_t *a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5, v6, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[3];
  v13 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v14 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v15 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8];
  v17 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16];
  v16 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24];
  v18 = v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  if (!*(a1 + 32))
  {
    if (v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32])
    {
LABEL_27:
      sub_25E6D7D04();
      v25 = v1;
      v26 = sub_25E6D7DE4();
      v27 = sub_25E6D8204();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = v3;
        v29 = v28;
        v30 = swift_slowAlloc();
        v44 = v30;
        *v29 = 136446466;
        *&v41 = v25;
        v31 = sub_25E6D8444();
        v33 = sub_25E6BA278(v31, v32, &v44);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v34 = v13[32];
        v35 = *(v13 + 1);
        v41 = *v13;
        v42 = v35;
        v43 = v34;
        v36 = SpatialPhoto.RegionOfInterest.description.getter();
        v38 = sub_25E6BA278(v36, v37, &v44);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_25E6B5000, v26, v27, "SpatialPhotoMetalUIView[%{public}s] regionOfInterest:%s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8BCEB0](v30, -1, -1);
        MEMORY[0x25F8BCEB0](v29, -1, -1);

        (*(v4 + 8))(v10, v40);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }

      sub_25E6C1698();
      return [v25 setNeedsLayout];
    }

LABEL_6:
    result = CGRectEqualToRect(*a1, *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest]);
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (*(a1 + 32) == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v19 = a1[2] | a1[1];
  if (v19 | v11 | v12)
  {
    if (v11 != 1 || v19 | v12)
    {
      v20 = v17 | v15 | v16;
      v21 = v18 == 2 && v14 == 2;
    }

    else
    {
      v20 = v17 | v15 | v16;
      v21 = v18 == 2 && v14 == 1;
    }

    if (!v21 || v20 != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = v17 | v15 | v14 | v16;
    if (v18 != 2 || v22 != 0)
    {
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_25E6BD038(uint64_t *a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5, v6, v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v12 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest];
  v13 = v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32];
  if (v11 == 255)
  {
    if (v13 == 255)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v13 != 255)
  {
    v27 = *a1;
    v28 = a1[3];
    v29 = *v12;
    v30 = *(v12 + 1);
    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    if (*(a1 + 32))
    {
      if (v11 != 1)
      {
        v34 = a1[2] | a1[1];
        if (v34 | v27 | v28)
        {
          if (v27 != 1 || v34 | v28)
          {
            v35 = v32 | v30 | v31;
            v36 = v13 == 2 && v29 == 2;
          }

          else
          {
            v35 = v32 | v30 | v31;
            v36 = v13 == 2 && v29 == 1;
          }

          if (v36 && v35 == 0)
          {
            return result;
          }
        }

        else
        {
          v37 = v32 | v30 | v29 | v31;
          if (v13 == 2 && v37 == 0)
          {
            return result;
          }
        }

        goto LABEL_5;
      }

      if (v13 != 1)
      {
        goto LABEL_5;
      }
    }

    else if (v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32])
    {
      goto LABEL_5;
    }

    result = CGRectEqualToRect(*a1, *v12);
    if (result)
    {
      return result;
    }
  }

LABEL_5:
  sub_25E6D7D04();
  v14 = v1;
  v15 = sub_25E6D7DE4();
  v16 = sub_25E6D8204();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446466;
    *&v40[0] = v14;
    v19 = sub_25E6D8444();
    v21 = sub_25E6BA278(v19, v20, &v42);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v12[32];
    if (v22 == 255)
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      v23 = *(v12 + 1);
      v40[0] = *v12;
      v40[1] = v23;
      v41 = v22;
      v24 = SpatialPhoto.RegionOfInterest.description.getter();
      v26 = v25;
    }

    v33 = sub_25E6BA278(v24, v26, &v42);

    *(v17 + 14) = v33;
    _os_log_impl(&dword_25E6B5000, v15, v16, "SpatialPhotoMetalUIView[%{public}s] pendingRegionOfInterest:%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8BCEB0](v18, -1, -1);
    MEMORY[0x25F8BCEB0](v17, -1, -1);
  }

  return (*(v4 + 8))(v10, v3);
}

id SpatialPhoto.MetalUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.MetalUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v0 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView());
  OUTLINED_FUNCTION_3_1();
  v1 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

void sub_25E6BD4A4()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing) = 1;
  v1 = v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  *v1 = 1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 2;
  v2 = v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = -1;
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale;
  sub_25E6D7AF4();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  v6 = *MEMORY[0x277D3CB98];
  sub_25E6D7AC4();
  OUTLINED_FUNCTION_5();
  (*(v7 + 104))(v0 + v5, v6);
  v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  v9 = *MEMORY[0x277D3CB58];
  sub_25E6D7A64();
  OUTLINED_FUNCTION_5();
  (*(v10 + 104))(v0 + v8, v9);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  OUTLINED_FUNCTION_22(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  v12 = *MEMORY[0x277D3CB28];
  sub_25E6D7A04();
  OUTLINED_FUNCTION_5();
  (*(v13 + 104))(v0 + v11, v12);
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize) = 0u;
  v14 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore;
  *(v0 + v14) = dispatch_semaphore_create(3);
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) = 0;
  v15 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget;
  *(v0 + v15) = [objc_allocWithZone(_s17DisplayLinkTargetCMa()) init];
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler) = 0u;
  v16 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace;
  v17 = *MEMORY[0x277D3CAE8];
  sub_25E6D79B4();
  OUTLINED_FUNCTION_5();
  (*(v18 + 104))(v0 + v16, v17);
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) = 0u;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath) = 0;
  v19 = v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest;
  *v19 = 1;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 2;
  sub_25E6D8354();
  __break(1u);
}

double sub_25E6BD830(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  sub_25E6BD888(a3);
  OUTLINED_FUNCTION_41();

  return v3;
}

id sub_25E6BD888(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SpatialPhoto.MetalUIView();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_25E6BD94C()
{
  OUTLINED_FUNCTION_4_0();
  v7 = type metadata accessor for SpatialPhoto.MetalUIView();
  v1 = OUTLINED_FUNCTION_3_1();
  objc_msgSendSuper2(v2, v3, v1, v0, v7);
  [v0 bounds];
  return sub_25E6C1324(v4, v5);
}

void sub_25E6BD9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.MetalUIView();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  sub_25E6C175C();
  v1 = [v0 window];
  if (v1)
  {

    [v0 setNeedsLayout];
    sub_25E6BE848();
  }

  else
  {
    sub_25E6C0F2C(0);
  }
}

uint64_t sub_25E6BDA80()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SpatialPhoto.MetalUIView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  sub_25E6C1BA0();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_1_1();
    sub_25E6C5CB0(v2, v3);
    OUTLINED_FUNCTION_30();
    sub_25E6D7B54();
    return swift_unknownObjectRelease();
  }

  return result;
}

id SpatialPhoto.MetalUIView.__deallocating_deinit()
{
  sub_25E6C381C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.MetalUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6BDD90()
{
  result = sub_25E6C1A98();
  if (result)
  {

    return [v0 setNeedsLayout];
  }

  return result;
}

id sub_25E6BDE34()
{
  result = MTLCreateSystemDefaultDevice();
  qword_27FD00FF8 = result;
  return result;
}

void sub_25E6BDE54()
{
  if (qword_27FD00A18 != -1)
  {
    swift_once();
  }

  if (qword_27FD00FF8)
  {
    v0 = [swift_unknownObjectRetain() newCommandQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    v0 = 0;
  }

  qword_27FD01000 = v0;
}

uint64_t type metadata accessor for SpatialPhoto.MetalUIView()
{
  result = qword_27FD011C8;
  if (!qword_27FD011C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6BDF4C()
{
  MEMORY[0x25F8BCF80](v0 + 16);
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6BDF88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E6BDFC0()
{
  sub_25E6C1034();
  sub_25E6C13DC();
  sub_25E6C1498();
  return sub_25E6D7D14();
}

id sub_25E6BE040()
{
  v1 = v0;
  v2 = sub_25E6D7AC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  sub_25E6C5CB0(&qword_27FD01320, MEMORY[0x277D3CBA0]);
  v10 = sub_25E6D80B4();
  result = (*(v3 + 8))(v8, v2);
  if ((v10 & 1) == 0)
  {
    return sub_25E6C175C();
  }

  return result;
}

void sub_25E6BE1F4()
{
  OUTLINED_FUNCTION_48();
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v1);
  v0[4] = sub_25E6D7AC4();
  OUTLINED_FUNCTION_1_0();
  v0[5] = v2;
  v4 = *(v3 + 64);
  v0[6] = __swift_coroFrameAllocStub(v4);
  v0[7] = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  OUTLINED_FUNCTION_49();
}

id sub_25E6BE300()
{
  v1 = v0;
  v2 = sub_25E6D7A64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  sub_25E6C5CB0(&qword_27FD01318, MEMORY[0x277D3CB68]);
  v10 = sub_25E6D80B4();
  result = (*(v3 + 8))(v8, v2);
  if ((v10 & 1) == 0)
  {
    return sub_25E6C18F0();
  }

  return result;
}

void sub_25E6BE4B4()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12, v13, v14);
  v16 = &v19 - v15;
  v17 = *v4;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  (*(v10 + 16))(v16, v0 + v17, v8);
  swift_beginAccess();
  (*(v10 + 24))(v0 + v17, v6, v8);
  swift_endAccess();
  v2(v16);
  v18 = *(v10 + 8);
  v18(v6, v8);
  v18(v16, v8);
  OUTLINED_FUNCTION_49();
}

void sub_25E6BE608()
{
  OUTLINED_FUNCTION_48();
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v1);
  v0[4] = sub_25E6D7A64();
  OUTLINED_FUNCTION_1_0();
  v0[5] = v2;
  v4 = *(v3 + 64);
  v0[6] = __swift_coroFrameAllocStub(v4);
  v0[7] = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_25E6BE72C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_24(v3, OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_25E6C5D08;
}

id sub_25E6BE7A0()
{
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_25E6D7AE4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_25E6BE848()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    v9 = [v0 window];
    if (v9)
    {

      OUTLINED_FUNCTION_8_0();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        sub_25E6D7AD4();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_25E6D79C4();
    v10 = v0;
    v11 = sub_25E6D7DE4();
    v12 = sub_25E6D8214();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_45();
      v27[0] = OUTLINED_FUNCTION_32();
      *v13 = 136446466;
      v14 = sub_25E6D8444();
      v16 = sub_25E6BA278(v14, v15, v27);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = 0xE400000000000000;
      v18 = 1701602409;
      switch(v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          v18 = OUTLINED_FUNCTION_26();
          break;
        case 2:
          v17 = 0x800000025E6DBAB0;
          v18 = 0xD000000000000012;
          break;
        case 3:
          v18 = OUTLINED_FUNCTION_18();
          break;
        default:
          break;
      }

      v19 = sub_25E6BA278(v18, v17, v27);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_25E6B5000, v11, v12, "SpatialPhotoMetalUIView[%{public}s] setNeedsRender() renderState:%s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v4 + 8))(v1, v2);
    v20 = 3;
    switch(v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
    {
      case 1:
      case 3:
        break;
      case 2:
        goto LABEL_13;
      default:
        [*&v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView] setNeedsDisplay];
        v20 = 1;
LABEL_13:
        sub_25E6C0F2C(v20);
        break;
    }

    if (!*&v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink])
    {
      sub_25E6C4840();
      v21 = *&v10[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLinkTarget];
      v27[3] = _s17DisplayLinkTargetCMa();
      v27[0] = v21;
      v22 = v21;
      v23 = sub_25E6BED78(v27, sel_handleDisplayLink_);
      if (qword_27FD00A28 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      if (qword_27FD00A30 != -1)
      {
        swift_once();
      }

      v24 = byte_27FD01020;
      LOBYTE(v27[0]) = 0;
      sub_25E6D8264();
      [v23 setPreferredFrameRateRange_];
      if ((v24 & 1) == 0)
      {
        [v23 setHighFrameRateReason_];
      }

      v25 = [objc_opt_self() mainRunLoop];
      [v23 addToRunLoop:v25 forMode:*MEMORY[0x277CBE738]];

      v26 = v23;
      sub_25E6C0FD4(v23);
    }
  }

  OUTLINED_FUNCTION_28();
}

unint64_t sub_25E6BECE0(char a1)
{
  result = 1701602409;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E6570;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6552736465656ELL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_25E6BED78(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = sub_25E6D83A4();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t sub_25E6BEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_25E6BEE48()
{
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_25E6BEE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_25E6BEF04(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_24(v3, OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_25E6BEF78;
}

uint64_t sub_25E6BEF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  OUTLINED_FUNCTION_37();
  (*(v13 + 16))(v6, a1);
  return a6(v6);
}

void sub_25E6BF040()
{
  v1 = v0;
  v2 = sub_25E6D7A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  sub_25E6C5CB0(&qword_27FD01310, MEMORY[0x277D3CB30]);
  v10 = sub_25E6D80B4();
  (*(v3 + 8))(v8, v2);
  if ((v10 & 1) == 0)
  {
    sub_25E6C3874();
  }
}

uint64_t sub_25E6BF1C0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  a2(0);
  OUTLINED_FUNCTION_5();
  return (*(v7 + 16))(a3, v3 + v6);
}

void sub_25E6BF274()
{
  OUTLINED_FUNCTION_48();
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_15(v1);
  v0[4] = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v0[5] = v2;
  v4 = *(v3 + 64);
  v0[6] = __swift_coroFrameAllocStub(v4);
  v0[7] = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  OUTLINED_FUNCTION_49();
}

void sub_25E6BF380()
{
  OUTLINED_FUNCTION_48();
  v5 = v4;
  v7 = *v6;
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_21();
    v10(v9);
    v5(v1);
    (*(v3 + 8))(v0, v2);
  }

  else
  {
    v1 = *(v7 + 48);
    v0 = *(v7 + 56);
    v4(v0);
  }

  free(v0);
  free(v1);
  OUTLINED_FUNCTION_49();

  free(v11);
}

uint64_t sub_25E6BF420@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v34 = &v32 - v7;
  v43 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  v8 = [v43 superview];
  v33 = v2;
  if (v8)
  {

    v35 = 0;
    v36 = 0;
  }

  else
  {
    v9 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_25E6C48B8;
    *(v11 + 24) = v10;
    v41 = sub_25E6C48D0;
    v42 = v11;
    OUTLINED_FUNCTION_11_0();
    v38 = 1107296256;
    v39 = sub_25E6BF880;
    v40 = &block_descriptor;
    v12 = _Block_copy(aBlock);
    v13 = v1;

    [v9 performWithoutAnimation_];
    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
      return result;
    }

    v35 = sub_25E6C48B8;
    v36 = v10;
  }

  v15 = swift_allocBox();
  v17 = v16;
  v18 = sub_25E6D7B24();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  OUTLINED_FUNCTION_20();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = (v19 + 16);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v1;
  v21[4] = v19;
  v22 = &v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler];
  v23 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler];
  *v22 = sub_25E6C498C;
  v22[1] = v21;
  v24 = v1;

  sub_25E6BDF88(v23);
  [v43 draw];
  v25 = *v22;
  if (*v22)
  {
    *v22 = 0;
    v22[1] = 0;
    sub_25E6BDF88(v25);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v26 = 6;
LABEL_9:
    v28 = v35;
LABEL_10:
    swift_willThrow();

    return sub_25E6BDF88(v28);
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  if (*v20)
  {
    v27 = *v20;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v29 = v34;
  sub_25E6C4998(v17, v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v18);
  v28 = v35;
  if (EnumTagSinglePayload == 1)
  {
    sub_25E6C4A5C(v29, &qword_27FD010E8);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v31 = 5;
    goto LABEL_10;
  }

  (*(*(v18 - 8) + 32))(v32, v29, v18);

  return sub_25E6BDF88(v28);
}

id sub_25E6BF81C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  [a1 bounds];
  [v2 setFrame_];
  [a1 addSubview_];
  sub_25E6C175C();
  return sub_25E6C1BA0();
}

uint64_t sub_25E6BF8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v5 = &v9[-v4];
  v6 = swift_projectBox();
  sub_25E6C2E1C(v5);
  v7 = sub_25E6D7B24();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_25E6C5BFC(v5, v6);
}

void sub_25E6BF9B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink];
  if (v14)
  {
    sub_25E6C4840();
    v15 = v3;
    v16 = v14;
    v17 = sub_25E6D82D4();

    if (v17)
    {
      sub_25E6D79C4();
      v18 = v15;
      v19 = v1;
      v20 = sub_25E6D7DE4();
      v21 = sub_25E6D8214();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_45();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v22 = 136446466;
        v23 = sub_25E6D8444();
        v25 = v18;
        v26 = sub_25E6BA278(v23, v24, &v30);

        *(v22 + 4) = v26;
        v18 = v25;
        *(v22 + 12) = 2048;
        [v25 targetTimestamp];
        *(v22 + 14) = v27;
        _os_log_impl(&dword_25E6B5000, v20, v21, "SpatialPhotoMetalUIView[%{public}s] handleDisplayLink: %f", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v13, v4);
      if (qword_27FD00A28 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      if ((byte_27FD01010 & 1) == 0 && (v19[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary] & 1) == 0)
      {
        sub_25E6BE848();
      }

      v28 = [v19 window];
      if (!v28 || (v28, v19[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary] == 1))
      {
        sub_25E6C0F2C(0);
      }

      switch(v19[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          break;
        case 2:
          sub_25E6C0F2C(0);
          break;
        case 3:
          sub_25E6C0F2C(1);
          [*&v19[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView] setNeedsDisplay];
          break;
        default:
          [v18 invalidate];
          sub_25E6C0FD4(0);
          break;
      }
    }
  }

  OUTLINED_FUNCTION_28();
}

void sub_25E6BFCD4()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_37();
  v11 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest];
  v12 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_pendingRegionOfInterest + 32];
  if (v12 != 255)
  {
    v13 = *(v11 + 1);
    v33 = *v11;
    v34 = v13;
    v35 = v12;
    sub_25E6BD008(&v33);
    v33 = 0u;
    v34 = 0u;
    v35 = -1;
    sub_25E6BD35C(&v33);
  }

  sub_25E6C1BA0();
  sub_25E6C1498();
  v16 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize;
  v17 = vmovn_s64(vceqq_s64(v15, *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_lastROISize]));
  if ((v17.i8[0] & 1) == 0 || (v17.i8[4] & 1) == 0)
  {
    v31 = v14;
    v32 = v15;
    sub_25E6C13DC();
    v30 = v18;
    sub_25E6D7D04();
    v19 = v0;
    v20 = sub_25E6D7DE4();
    sub_25E6D8244();
    OUTLINED_FUNCTION_25();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v33 = v23;
      *v22 = 136448002;
      v36 = v19;
      v24 = sub_25E6D8444();
      v26 = sub_25E6BA278(v24, v25, &v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 1024;
      v27 = v19[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary];

      *(v22 + 14) = v27;
      *(v22 + 18) = 2050;
      *(v22 + 20) = v30;
      *(v22 + 30) = *(&v30 + 1);
      *(v22 + 28) = 2050;
      *(v22 + 38) = 2048;
      *(v22 + 40) = v31;
      *(v22 + 48) = 2048;
      *(v22 + 50) = *(&v31 + 1);
      *(v22 + 58) = 2048;
      *(v22 + 60) = v32.i64[0];
      *(v22 + 68) = 2048;
      *(v22 + 70) = v32.i64[1];
      _os_log_impl(&dword_25E6B5000, v20, v2, "SpatialPhotoMetalUIView[%{public}s] isSecondary:%{BOOL}d spatialPhotoMTKViewWillDraw viewSize:(%{public}ld, %{public}ld) ROI:(x:%ld, y:%ld, w:%ld, h:%ld)", v22, 0x4Eu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();

      v28 = OUTLINED_FUNCTION_40();
      v29(v28);
    }

    else
    {

      (*(v6 + 8))(v1, v4);
    }

    *&v3[v16] = v32;
  }

  OUTLINED_FUNCTION_28();
}

uint64_t sub_25E6BFFA4(double a1, double a2)
{
  v6 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  sub_25E6D7D04();
  v13 = v2;
  v14 = sub_25E6D7DE4();
  v15 = sub_25E6D8214();
  if (os_log_type_enabled(v14, v15))
  {
    v27 = v6;
    v16 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_32();
    *v16 = 136446722;
    v17 = sub_25E6D8444();
    v19 = sub_25E6BA278(v17, v18, &v28);

    *(v16 + 4) = v19;
    *(v16 + 12) = 1024;
    v20 = v13[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary];

    *(v16 + 14) = v20;
    *(v16 + 18) = 2082;
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{%.2f, %.2f}", *&a1, *&a2];
    sub_25E6D80F4();

    v22 = OUTLINED_FUNCTION_27();
    v25 = sub_25E6BA278(v22, v23, v24);

    *(v16 + 20) = v25;
    _os_log_impl(&dword_25E6B5000, v14, v15, "SpatialPhotoMetalUIView[%{public}s] isSecondary:%{BOOL}d drawableSizeWillChange:%{public}s", v16, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();

    (*(v8 + 8))(v3, v27);
  }

  else
  {

    (*(v8 + 8))(v3, v6);
  }

  return sub_25E6C15F4();
}

void sub_25E6C0280()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v80 = v6;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_14();
  v79 = v11 - v12;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  v22 = v73 - v21;
  v23 = sub_25E6D79B4();
  MEMORY[0x28223BE20](v23 - 8, v24, v25, v26);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  sub_25E6D79E4();
  OUTLINED_FUNCTION_1_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32, v33, v34, v35);
  OUTLINED_FUNCTION_4();
  sub_25E6D7B24();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v36, v37, v38, v39);
  OUTLINED_FUNCTION_4();
  v44 = v43 - v42;
  v45 = (v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler);
  v46 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_immediateDrawHandler);
  if (v46)
  {
    *v45 = 0;
    v45[1] = 0;
    v46(v4);
    OUTLINED_FUNCTION_28();

    sub_25E6BDF88(v47);
  }

  else
  {
    v74 = v4;
    ObjectType = v1;
    v76 = v44;
    v73[1] = v41;
    v73[2] = v40;
    v78 = v5;
    sub_25E6C0F2C(2);
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v50 = v80;
    v73[0] = v31;
    if (Strong)
    {
      v77 = v29;
      swift_getObjectType();
      OUTLINED_FUNCTION_1_1();
      sub_25E6C5CB0(v51, v52);
      sub_25E6D7B54();
      swift_unknownObjectRelease();
    }

    if ((*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) & 1) == 0)
    {
      v53 = swift_unknownObjectWeakLoadStrong();
      if (v53)
      {
        v77 = v53;
        ObjectType = v22;
        v54 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable;
        if ((*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable) & 1) != 0 || (v55 = [v74 layer], objc_opt_self(), OUTLINED_FUNCTION_30(), OUTLINED_FUNCTION_12(), v56 = objc_msgSend(swift_dynamicCastObjCClassUnconditional(), sel_isDrawableAvailable), v55, v56))
        {
          *(v2 + v54) = 0;
          sub_25E6C2E1C(v76);
          ObjectType = swift_getObjectType();
          OUTLINED_FUNCTION_1_1();
          sub_25E6C5CB0(v57, v58);
          sub_25E6D7B44();
          sub_25E6D79D4();
          sub_25E6C12CC();
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_27();
          v71(v70);
          v72 = OUTLINED_FUNCTION_40();
          v65(v72, v64);
        }

        else
        {
          v66 = ObjectType;
          sub_25E6D7D04();
          v67 = sub_25E6D7DE4();
          v68 = sub_25E6D8204();
          if (os_log_type_enabled(v67, v68))
          {
            OUTLINED_FUNCTION_19();
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_25E6B5000, v67, v68, "Unable to draw, drawable is not available, skipping this frame", v69, 2u);
            v66 = ObjectType;
            OUTLINED_FUNCTION_7_0();
            MEMORY[0x25F8BCEB0]();
          }

          (*(v80 + 8))(v66, v78);
          sub_25E6BE848();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v59 = ObjectType;
        sub_25E6D7D04();
        v60 = sub_25E6D7DE4();
        v61 = sub_25E6D8224();
        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_19();
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_25E6B5000, v60, v61, "Unable to draw, nil delegate", v62, 2u);
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0](v63);
        }

        (*(v50 + 8))(v59, v78);
      }
    }

    OUTLINED_FUNCTION_28();
  }
}

uint64_t sub_25E6C09A8(unsigned __int8 a1)
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](a1);
  return sub_25E6D8434();
}

uint64_t sub_25E6C0A0C()
{
  v1 = *v0;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v1);
  return sub_25E6D8434();
}

uint64_t sub_25E6C0A60()
{
  v0 = sub_25E6D8384();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25E6C0AC0()
{
  sub_25E6D8414();
  sub_25E6C0B10();
  return sub_25E6D8434();
}

uint64_t sub_25E6C0B10()
{
  sub_25E6D8114();
}

uint64_t sub_25E6C0BE4()
{
  sub_25E6D8414();
  sub_25E6C0B10();
  return sub_25E6D8434();
}

uint64_t sub_25E6C0C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6C0A60();
  *a1 = result;
  return result;
}

unint64_t sub_25E6C0C58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25E6BECE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E6C0C84(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_25E6D7DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState;
  result = sub_25E6B73FC(a1, v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState]);
  if ((result & 1) == 0)
  {
    sub_25E6D79C4();
    v13 = v2;
    v14 = sub_25E6D7DE4();
    v15 = sub_25E6D8214();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v13;
      v27 = v25;
      *v16 = 136446466;
      v17 = sub_25E6D8444();
      v19 = sub_25E6BA278(v17, v18, &v27);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = 0xE400000000000000;
      v21 = 1701602409;
      switch(v2[v11])
      {
        case 1:
          v20 = 0xE700000000000000;
          v21 = 0x676E69646E6570;
          break;
        case 2:
          v20 = 0x800000025E6DBAB0;
          v21 = 0xD000000000000012;
          break;
        case 3:
          v20 = 0xEB00000000726564;
          v21 = 0x6E6552736465656ELL;
          break;
        default:
          break;
      }

      v22 = sub_25E6BA278(v21, v20, &v27);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_25E6B5000, v14, v15, "SpatialPhotoMetalUIView[%{public}s] renderState:%s", v16, 0x16u);
      v23 = v25;
      swift_arrayDestroy();
      MEMORY[0x25F8BCEB0](v23, -1, -1);
      MEMORY[0x25F8BCEB0](v16, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_25E6C0F2C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState) = a1;
  return sub_25E6C0C84(v2);
}

uint64_t sub_25E6C0F44(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink);
  if (result)
  {
    if (!v2)
    {

      return sub_25E6C381C();
    }
  }

  else if (v2)
  {
    v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval;
    if (!*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval))
    {
      *(v1 + v3) = sub_25E6D7B74();
    }
  }

  return result;
}

void sub_25E6C0FD4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_displayLink) = a1;
  v2 = a1;
  sub_25E6C0F44(v3);
}

void sub_25E6C1034()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 screen];

    [v3 nativeScale];
  }
}

void sub_25E6C10B8()
{
  v1 = v0;
  v2 = sub_25E6D79B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderedColorSpace;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v8, v0 + v9, v2);
  sub_25E6C5CB0(&qword_27FD011E8, MEMORY[0x277D3CAF0]);
  v11 = sub_25E6D80B4();
  v12 = *(v3 + 8);
  v12(v8, v2);
  if ((v11 & 1) == 0)
  {
    v15 = [*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) layer];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v10(v8, v1 + v9, v2);
    v14 = sub_25E6D79A4();
    v12(v8, v2);
    [v13 setColorspace_];
  }
}

uint64_t sub_25E6C1300(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) != a1 || *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8) != a2)
  {
    return sub_25E6C15F4();
  }

  return result;
}

uint64_t sub_25E6C1324(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size);
  v4 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size);
  v5 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_25E6C1300(v4, v5);
}

double sub_25E6C1344()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
  [v1 drawableSize];
  v3 = v2;
  [v1 bounds];
  v6 = v5;
  if (v4 <= 0.0)
  {
    sub_25E6C1034();
    v7 = v8;
  }

  else
  {
    v7 = v3 / v4;
  }

  if (v6 <= 0.0)
  {
    sub_25E6C1034();
  }

  return v7;
}

void sub_25E6C13DC()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size + 8);
  v2 = round(*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_size) * sub_25E6C1344());
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round(v1 * v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

void sub_25E6C1498()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  [v1 drawableSize];
  v10 = v7;
  v11 = v6;
  v8 = v3 * sub_25E6C1344();
  if (v8 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 * v9 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 * v9 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v5 * v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25E6C15F4()
{
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_1_1();
    sub_25E6C5CB0(v1, v2);
    OUTLINED_FUNCTION_30();
    sub_25E6D7B34();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_25E6C1698()
{
  v1 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v2 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  if (v2 == 1)
  {
LABEL_9:
    if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] == 1)
    {
      v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] = 0;
      v6 = &selRef__removeBoundingPathChangeObserver_;
      return [v0 *v6];
    }

    return result;
  }

  if (v2 == 2)
  {
    v3 = vorrq_s8(*v1, v1[1]);
    if (!*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      goto LABEL_9;
    }

    v4 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath];
    if ((v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] & 1) == 0)
    {
      goto LABEL_12;
    }

    v5 = vorrq_s8(*v1, v1[1]);
    if (!*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath];
    if ((v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isObservingBoundingPath] & 1) == 0)
    {
LABEL_12:
      *v4 = 1;
      v6 = &selRef__addBoundingPathChangeObserver_;
      return [v0 *v6];
    }
  }

  return result;
}

id sub_25E6C175C()
{
  v2 = sub_25E6D7AC4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_29();
  v10(v9);
  v11 = (*(v4 + 88))(v1, v2);
  v12 = 1.0;
  if (v11 == *MEMORY[0x277D3CB90])
  {
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setContentScaleFactor_];
  }

  if (v11 == *MEMORY[0x277D3CB98])
  {
    v12 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mxiTextureScale);
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setContentScaleFactor_];
  }

  result = sub_25E6D8354();
  __break(1u);
  return result;
}

id sub_25E6C18F0()
{
  v2 = sub_25E6D7A64();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_29();
  v10(v9);
  v11 = (*(v4 + 88))(v1, v2);
  if (v11 == *MEMORY[0x277D3CB58])
  {
    return [*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView) setDepthStencilPixelFormat_];
  }

  if (v11 == *MEMORY[0x277D3CB60])
  {
    v13 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    [v13 setDepthStencilStorageMode_];
    [v13 setDepthStencilPixelFormat_];
    return [v13 setClearDepth_];
  }

  else
  {
    result = sub_25E6D8354();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C1A98()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
    if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32])
    {
      if (v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32] == 2 && *v3 == 2 && (*(v3 + 2) | *(v3 + 3) | *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8]) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!CGRectEqualToRect(*v3, *MEMORY[0x277D3A850]))
    {
LABEL_12:

      return 1;
    }

    [v0 bounds];
    v6 = v5;
    [v2 bounds];
    if (v7 < v6)
    {
      goto LABEL_12;
    }

    [v0 bounds];
    v9 = v8;
    [v2 bounds];
    v11 = v10;

    return v11 < v9;
  }

  return result;
}

id sub_25E6C1BA0()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v144 = v3;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  OUTLINED_FUNCTION_14();
  v10 = v8 - v9;
  v15 = MEMORY[0x28223BE20](v11, v12, v13, v14);
  v141 = &v140 - v16;
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v22 = &v140 - v21;
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v140 - v26;
  [v0 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v37 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest];
  v38 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 8];
  v40 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 16];
  v39 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 24];
  v41 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest + 32];
  v149.i64[0] = v37;
  v149.i64[1] = v38;
  v150.i64[0] = v40;
  v150.i64[1] = v39;
  v151 = v41;
  v42 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest];
  v43 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest];
  v44 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 8];
  v46 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 16];
  v45 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 24];
  v47 = v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_previousRegionOfInterest + 32];
  v48 = &off_25E6DA000;
  v143 = v10;
  if (!v47)
  {
    if (v41)
    {
      goto LABEL_35;
    }

    goto LABEL_6;
  }

  if (v47 == 1)
  {
    if (v41 != 1)
    {
      goto LABEL_35;
    }

LABEL_6:
    if (OUTLINED_FUNCTION_42(v37, v43))
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v49 = v46 | v44;
  if (v49 | *&v43 | v45)
  {
    v50 = v49 | v45;
    if (*&v43 == 1 && v50 == 0)
    {
      v52 = v40 | v38 | v39;
      v53 = v41 == 2 && v37 == 1;
    }

    else
    {
      v52 = v40 | v38 | v39;
      v53 = v41 == 2 && v37 == 2;
    }

    if (v53 && v52 == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v54 = v40 | v38 | v37 | v39;
    if (v41 == 2 && v54 == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  if (v42[2].i8[0] == 2)
  {
    OUTLINED_FUNCTION_34(v42[1], *v42);
    if (!v57)
    {
      sub_25E6C2668();
      if (v58)
      {
        v149 = 0u;
        v150 = 0u;
        v151 = 2;
        sub_25E6D7D04();
        v59 = v0;
        v60 = sub_25E6D7DE4();
        v61 = sub_25E6D8204();

        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_23();
          v140 = OUTLINED_FUNCTION_32();
          v145[0].i64[0] = v140;
          *v2 = 136446466;
          *&v152 = v59;
          v62 = sub_25E6D8444();
          sub_25E6BA278(v62, v63, v145[0].i64);
          OUTLINED_FUNCTION_47();
          *(v2 + 4) = &off_25E6DA000;
          *(v2 + 12) = 2080;
          v64 = v36[32];
          v65 = *(v36 + 1);
          v152 = *v36;
          v153 = v65;
          v154 = v64;
          v66 = SpatialPhoto.RegionOfInterest.description.getter();
          sub_25E6BA278(v66, v67, v145[0].i64);
          OUTLINED_FUNCTION_47();
          *(v2 + 14) = &off_25E6DA000;
          v48 = &off_25E6DA000;
          _os_log_impl(&dword_25E6B5000, v60, v61, "SpatialPhotoMetalUIView[%{public}s] overriding desired regionOfInterest:%s, with .none due to animation", v2, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0]();
          v2 = v142;
          OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8BCEB0]();
        }

        OUTLINED_FUNCTION_9_0();
        v68(v27, v2);
      }
    }
  }

LABEL_35:
  v69 = *&v149.i64[1];
  v70 = *v149.i64;
  v72 = *&v150.i64[1];
  v71 = *v150.i64;
  if (v151)
  {
    if (v151 == 1)
    {
LABEL_47:
      v89 = v149;
      v91 = v150;
      v29 = v70;
      v31 = v69;
      v33 = v71;
      v35 = v72;
      v87 = v151;
      goto LABEL_48;
    }

    if (!(v150.i64[0] | v149.i64[1] | v149.i64[0] | v150.i64[1]))
    {
      v70 = v29;
      v69 = v31;
      v71 = v33;
      v72 = v35;
      goto LABEL_47;
    }

    v73 = *MEMORY[0x277D3A850];
    v74 = *(MEMORY[0x277D3A850] + 8);
    v75 = *(MEMORY[0x277D3A850] + 16);
    v76 = *(MEMORY[0x277D3A850] + 24);
  }

  else
  {
    v74 = *&v149.i64[1];
    v73 = *v149.i64;
    v76 = *&v150.i64[1];
    v75 = *v150.i64;
  }

  sub_25E6C2790(&v152, v73, v74, v75, v76);
  if ((v154 & 1) == 0)
  {
    v72 = *(&v153 + 1);
    v71 = *&v153;
    v69 = *(&v152 + 1);
    v70 = *&v152;
    goto LABEL_47;
  }

  v77 = v48;
  sub_25E6D7D04();
  v78 = v1;
  v79 = sub_25E6D7DE4();
  v80 = sub_25E6D8214();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_23();
    v148 = v82;
    *v81 = *(v77 + 365);
    v145[0].i64[0] = v78;
    v83 = sub_25E6D8444();
    OUTLINED_FUNCTION_44(v83, v84);
    OUTLINED_FUNCTION_47();
    *(v81 + 4) = v78;
    *(v81 + 12) = 2080;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    v145[0] = v149;
    v145[1] = v150;
    v146 = v151;
    v85 = SpatialPhoto.RegionOfInterest.description.getter();
    OUTLINED_FUNCTION_44(v85, v86);
    OUTLINED_FUNCTION_47();
    *(v81 + 14) = v78;
    _os_log_impl(&dword_25E6B5000, v79, v80, "SpatialPhotoMetalUIView[%{public}s] Unable to layout with desired regionOfInterest:%s, falling back to .none", v81, 0x16u);
    v87 = 2;
    swift_arrayDestroy();
    v2 = v142;
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();
    OUTLINED_FUNCTION_7_0();
    MEMORY[0x25F8BCEB0]();

    OUTLINED_FUNCTION_9_0();
    v88(v22, v2);
    v89 = 0uLL;
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    v90(v22, v2);
    v89 = 0uLL;
    v87 = 2;
  }

  v91 = 0uLL;
LABEL_48:
  *v42 = v89;
  v42[1] = v91;
  v42[2].i8[0] = v87;
  [v1 px_screenScale];
  v93 = round((v29 + v33) * v92) / v92;
  v94 = round((v31 + v35) * v92) / v92;
  v95 = round(v29 * v92) / v92;
  v96 = round(v31 * v92);
  v97 = v93 - v95;
  v98 = v96 / v92;
  v99 = v94 - v96 / v92;
  v100 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView];
  [v100 frame];
  if (vabdd_f64(v104, v95) > 0.00000999999975 || vabdd_f64(v101, v98) > 0.00000999999975 || vabdd_f64(v102, v97) > 0.00000999999975 || vabdd_f64(v103, v99) > 0.00000999999975)
  {
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    if (v151 == 2 && v149.i64[0] == 2 && !(v150.i64[0] | v150.i64[1] | v149.i64[1]))
    {
      switch(v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderState])
      {
        case 1:
          OUTLINED_FUNCTION_26();
          goto LABEL_59;
        case 2:

          goto LABEL_60;
        case 3:
          OUTLINED_FUNCTION_18();
          goto LABEL_59;
        default:
LABEL_59:
          v105 = sub_25E6D83B4();

          if (v105)
          {
LABEL_60:
            v106 = v141;
            sub_25E6D7D04();
            v107 = v1;
            v108 = sub_25E6D7DE4();
            v109 = sub_25E6D8214();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = v2;
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v147 = v107;
              v148 = v112;
              *v111 = 136446210;
              v113 = sub_25E6D8444();
              v115 = OUTLINED_FUNCTION_44(v113, v114);
              v140 = v1;
              v116 = v100;
              v117 = v106;
              v118 = v115;

              *(v111 + 4) = v118;
              _os_log_impl(&dword_25E6B5000, v108, v109, "SpatialPhotoMetalUIView[%{public}s] already rendered this frame, but forcing render due to frame change", v111, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v112);
              OUTLINED_FUNCTION_7_0();
              MEMORY[0x25F8BCEB0]();
              OUTLINED_FUNCTION_7_0();
              MEMORY[0x25F8BCEB0]();

              OUTLINED_FUNCTION_9_0();
              v120 = v117;
              v100 = v116;
              v1 = v140;
              v121 = v110;
            }

            else
            {

              OUTLINED_FUNCTION_9_0();
              v120 = v106;
              v121 = v2;
            }

            v119(v120, v121);
            sub_25E6C0F2C(0);
          }

          break;
      }
    }

    sub_25E6D7D04();
    v122 = v1;
    v123 = sub_25E6D7DE4();
    v124 = sub_25E6D8214();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_23();
      v147 = v122;
      v148 = v126;
      *v125 = 136446722;
      v127 = sub_25E6D8444();
      v129 = OUTLINED_FUNCTION_44(v127, v128);

      *(v125 + 4) = v129;
      *(v125 + 12) = 1026;
      *(v125 + 14) = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
      *(v125 + 18) = 2082;
      v130 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v95, *&v98, *&v97, *&v99];
      v131 = sub_25E6D80F4();
      v140 = v1;
      v132 = v100;
      v133 = v144;
      v135 = v134;

      v136 = sub_25E6BA278(v131, v135, &v148);

      *(v125 + 20) = v136;
      _os_log_impl(&dword_25E6B5000, v123, v124, "SpatialPhotoMetalUIView[%{public}s] isAnimating:%{BOOL,public}d set frame %{public}s", v125, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();

      (*(v133 + 8))(v143, v142);
      v100 = v132;
    }

    else
    {

      v137 = OUTLINED_FUNCTION_27();
      v138(v137);
    }

    v122[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_shouldWaitForNextDrawable] = 1;
    [v100 setFrame_];
    sub_25E6C15F4();
    sub_25E6BE848();
  }

  return sub_25E6C1698();
}

void sub_25E6C2668()
{
  OUTLINED_FUNCTION_31();
  if (([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
  {
    v1 = sub_25E6C5AFC([v0 layer]);
    if (v1)
    {
      v2 = (v1 + 40);
      v3 = *(v1 + 16) + 1;
      do
      {
        if (!--v3)
        {
          break;
        }

        v4 = *(v2 - 1);
        v5 = *v2;
        v6 = v4 == 0x6E6F697469736F70 && v5 == 0xE800000000000000;
        if (v6 || (sub_25E6D83B4() & 1) != 0)
        {
          break;
        }

        if (v4 == 0x732E73646E756F62 && v5 == 0xEB00000000657A69)
        {
          break;
        }

        v2 += 2;
      }

      while ((sub_25E6D83B4() & 1) == 0);
    }
  }

  OUTLINED_FUNCTION_28();
}

void sub_25E6C2790(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v14 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  v24 = [v5 window];
  v25 = 0uLL;
  if (v24)
  {
    v26 = v24;
    if (sub_25E6C1A98())
    {
      v27 = v26;
      [v5 frame];
      [v27 convertRect:v5 fromCoordinateSpace:?];
      v86 = v28;
      v84 = v29;
      v31 = v30;
      v88 = v32;
      [v27 bounds];
      OUTLINED_FUNCTION_41();

      v93.origin.x = a5 + a2 * v7;
      v93.origin.y = v6 + a3 * v8;
      v33 = v7 * a4;
      v34 = v8 * a5;
      x = v93.origin.x;
      y = v93.origin.y;
      v93.size.width = v33;
      v93.size.height = v34;
      v106.origin.x = v86;
      v106.origin.y = v84;
      v106.size.width = v31;
      v106.size.height = v88;
      v94 = CGRectIntersection(v93, v106);
      v90 = v94.origin.x;
      v82 = v94.origin.y;
      width = v94.size.width;
      height = v94.size.height;
      v94.origin.x = v86;
      v94.origin.y = v84;
      v94.size.width = v31;
      v94.size.height = v88;
      if (!CGRectIsNull(v94))
      {
        v95.origin.x = v90;
        v95.origin.y = v82;
        v95.size.width = width;
        v95.size.height = height;
        if (!CGRectIsNull(v95))
        {
          v96.origin.x = x;
          v96.origin.y = y;
          v96.size.width = v33;
          v96.size.height = v34;
          v76 = v34;
          MaxY = CGRectGetMaxY(v96);
          v97.origin.x = v90;
          v97.origin.y = v82;
          v97.size.width = width;
          v97.size.height = height;
          v79 = -(MaxY - CGRectGetMaxY(v97));
          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = v33;
          v98.size.height = v76;
          MaxX = CGRectGetMaxX(v98);
          v99.origin.x = OUTLINED_FUNCTION_35();
          v78 = -(MaxX - CGRectGetMaxX(v99));
          v100.origin.x = OUTLINED_FUNCTION_35();
          CGRectGetMinY(v100);
          v101.origin.x = x;
          v101.origin.y = y;
          v101.size.width = v33;
          v101.size.height = v76;
          CGRectGetMinY(v101);
          v102.origin.x = v90;
          v102.origin.y = v82;
          v102.size.width = width;
          v102.size.height = height;
          CGRectGetMinX(v102);
          v103.origin.x = OUTLINED_FUNCTION_36();
          CGRectGetMinX(v103);
          v63 = OUTLINED_FUNCTION_36();
          v104.origin.x = UIEdgeInsetsInsetRect(v63, v64, v65, v66, v79, v78);
          v107.origin.x = v86;
          v107.origin.y = v84;
          v107.size.width = v31;
          v107.size.height = v88;
          v105 = CGRectIntersection(v104, v107);
          [v27 convertRect:v5 toCoordinateSpace:{v105.origin.x, v105.origin.y, v105.size.width, v105.size.height}];
          v85 = v68;
          v87 = v67;
          v89 = v70;
          v91 = v69;
          sub_25E6C1034();
          v83 = v71;

          v59 = 0;
          v72.f64[0] = v87;
          v72.f64[1] = v85;
          v73 = vdupq_lane_s64(v83, 0);
          v74 = v72;
          v75.f64[0] = v91;
          v75.f64[1] = v89;
          v25 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v72, *&v83)), v73);
          v60 = vsubq_f64(vdivq_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(v74, v75), *&v83)), v73), v25);
          goto LABEL_12;
        }
      }

      sub_25E6D7D04();
      v37 = v5;
      v38 = sub_25E6D7DE4();
      v39 = sub_25E6D8204();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v40 = 136446978;
        v77 = v39;
        v41 = sub_25E6D8444();
        v43 = sub_25E6BA278(v41, v42, v92);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2082;
        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v86, *&v84, *&v31, *&v88];
        v45 = sub_25E6D80F4();
        v47 = v46;

        v48 = sub_25E6BA278(v45, v47, v92);

        *(v40 + 14) = v48;
        *(v40 + 22) = 2082;
        v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&x, *&y, *&v33, *&v34];
        sub_25E6D80F4();

        v50 = OUTLINED_FUNCTION_27();
        v53 = sub_25E6BA278(v50, v51, v52);

        *(v40 + 24) = v53;
        *(v40 + 32) = 2082;
        v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v90, *&v82, *&width, *&height];
        sub_25E6D80F4();

        v55 = OUTLINED_FUNCTION_27();
        v58 = sub_25E6BA278(v55, v56, v57);

        *(v40 + 34) = v58;
        _os_log_impl(&dword_25E6B5000, v38, v77, "SpatialPhotoMetalUIView[%{public}s] Unable to intersect window bounds, frameInWindow:%{public}s windowBounds:%{public}s clipped:%{public}s falling back to bounds", v40, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      else
      {
      }

      (*(v16 + 8))(v23, v14);
    }

    else
    {
    }

    v59 = 1;
    v60 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v59 = 1;
    v60 = 0uLL;
  }

LABEL_12:
  *a1 = v25;
  *(a1 + 16) = v60;
  *(a1 + 32) = v59;
}

void sub_25E6C2E1C(uint64_t a1@<X8>)
{
  v4 = v1;
  v73[1] = a1;
  v80 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_14();
  v13 = v11 - v12;
  v18 = MEMORY[0x28223BE20](v14, v15, v16, v17);
  v20 = v73 - v19;
  MEMORY[0x28223BE20](v18, v21, v22, v23);
  OUTLINED_FUNCTION_39();
  v28 = MEMORY[0x28223BE20](v24, v25, v26, v27);
  v30 = v73 - v29;
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v35 = v73 - v34;
  if (*(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_commandQueue))
  {
    v36 = [swift_unknownObjectRetain() commandBuffer];
    if (!v36)
    {
      sub_25E6D7D04();
      v55 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v55, v56))
      {
        OUTLINED_FUNCTION_19();
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_25E6B5000, v55, v2, "Unable to draw, nil commandBuffer", v57, 2u);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v20, v80);
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v58, 1);
      goto LABEL_19;
    }

    v37 = v36;
    v73[0] = *(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_inFlightSemaphore);
    sub_25E6D82A4();
    v38 = *(v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    v39 = [v38 currentDrawable];
    if (!v39)
    {
      sub_25E6D7D04();
      v59 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_19();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_43(&dword_25E6B5000, v61, v62, "Unable to draw, nil currentDrawable");
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v3, v80);
      sub_25E6D82B4();
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v63, 2);
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v40 = v39;
    v41 = [v38 currentRenderPassDescriptor];
    if (!v41)
    {
      sub_25E6D7D04();
      v64 = sub_25E6D7DE4();
      sub_25E6D8224();
      OUTLINED_FUNCTION_25();
      if (os_log_type_enabled(v64, v65))
      {
        OUTLINED_FUNCTION_19();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_43(&dword_25E6B5000, v66, v67, "Unable to draw, nil currentRenderPassDescriptor");
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x25F8BCEB0]();
      }

      (*(v6 + 8))(v30, v80);
      sub_25E6D82B4();
      sub_25E6C4A08();
      OUTLINED_FUNCTION_12();
      swift_allocError();
      OUTLINED_FUNCTION_46(v68, 3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v42 = v41;
    v43 = [v37 renderCommandEncoderWithDescriptor_];
    if (v43)
    {
      v44 = v43;
      OUTLINED_FUNCTION_20();
      v45 = swift_allocObject();
      v46 = v73[0];
      *(v45 + 16) = v73[0];
      v78 = sub_25E6C5B60;
      v79 = v45;
      OUTLINED_FUNCTION_11_0();
      v75 = 1107296256;
      v76 = sub_25E6C36CC;
      v77 = &block_descriptor_95;
      v47 = _Block_copy(aBlock);
      v48 = v46;

      [v37 addCompletedHandler_];
      _Block_release(v47);
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      *(v49 + 24) = v37;
      v50 = swift_allocObject();
      *(v50 + 16) = v37;
      *(v50 + 24) = v40;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      sub_25E6D7B14();
LABEL_19:
      swift_unknownObjectRelease();
      return;
    }

    sub_25E6D7D04();
    v69 = sub_25E6D7DE4();
    sub_25E6D8224();
    OUTLINED_FUNCTION_25();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_19();
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_25E6B5000, v69, v2, "Unable to draw, nil commandEncoder", v71, 2u);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v6 + 8))(v35, v80);
    sub_25E6D82B4();
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    OUTLINED_FUNCTION_46(v72, 4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_25E6D7D04();
    v51 = sub_25E6D7DE4();
    v52 = sub_25E6D8224();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_19();
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_25E6B5000, v51, v52, "Unable to draw, nil commandQueue", v53, 2u);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x25F8BCEB0]();
    }

    (*(v6 + 8))(v13, v80);
    sub_25E6C4A08();
    OUTLINED_FUNCTION_12();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();
  }
}

uint64_t sub_25E6C34DC(void *a1)
{
  v2 = sub_25E6D7DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] == 5)
  {
    sub_25E6D7D04();
    swift_unknownObjectRetain();
    v9 = sub_25E6D7DE4();
    v10 = sub_25E6D8224();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = [a1 error];
      if (v13)
      {
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      *(v11 + 4) = v13;
      *v12 = v14;
      _os_log_impl(&dword_25E6B5000, v9, v10, "SpatialPhoto.MetalUIView command buffer encountered error:%{public}@", v11, 0xCu);
      sub_25E6C4A5C(v12, &unk_27FD010F8);
      MEMORY[0x25F8BCEB0](v12, -1, -1);
      MEMORY[0x25F8BCEB0](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  return sub_25E6D82B4();
}

uint64_t sub_25E6C36CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_25E6C372C(uint64_t a1, void *a2, void *a3)
{
  result = sub_25E6C97D0();
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8BC620](i, a1);
      v9 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    [v9 waitUntilScheduled];
    result = swift_unknownObjectRelease();
  }

  [a2 waitUntilScheduled];

  return [a3 present];
}

uint64_t sub_25E6C381C()
{
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval))
  {
    *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_renderSignpostInterval) = 0;
    sub_25E6D7B64();
  }

  return result;
}

void sub_25E6C3874()
{
  OUTLINED_FUNCTION_48();
  v1 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  OUTLINED_FUNCTION_14();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11, v12, v13, v14);
  v16 = &v24 - v15;
  if (*(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_isSecondary) == 1)
  {
    v17 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_mtkView);
    v18 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    [v17 setColorPixelFormat_];
    (*(v3 + 16))(v16, v0 + v18, v1);
    (*(v3 + 104))(v10, *MEMORY[0x277D3CB28], v1);
    v19 = sub_25E6D79F4();
    v20 = *(v3 + 8);
    v20(v10, v1);
    v20(v16, v1);
    if (v19)
    {
      v21 = [v17 superview];
      if (v21)
      {

        [v17 removeFromSuperview];
        [v17 releaseDrawables];
        v22 = [v17 layer];
        objc_opt_self();
        OUTLINED_FUNCTION_12();
        v23 = swift_dynamicCastObjCClassUnconditional();
        [v23 discardContents];
        [v23 removeBackBuffers];
      }
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_25E6C3AC0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_25E6C5D08;
}

void (*sub_25E6C3B54(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7AC4();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_optimizationMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BE2E8;
}

void (*sub_25E6C3C88(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7A64();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_depthBufferMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BE6FC;
}

uint64_t (*sub_25E6C3DC4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_primaryRenderDestination;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_25E6C5D08;
}

void sub_25E6C3E50(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_25E6C3EE0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_25E6D7A04();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  v7 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[7] = v8;
  v9 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_occlusionMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v3[8] = v10;
  v3[9] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v8, v1 + v9, v4);
  return sub_25E6BF368;
}

uint64_t sub_25E6C4024(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_25E6BDF88(v2);
  }

  return result;
}

id sub_25E6C4108()
{
  v1 = &v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhotoP33_316EEE9A3719DF1F49F4981B8747918217DisplayLinkTarget_handler];
  v2 = _s17DisplayLinkTargetCMa();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_25E6C41A8()
{
  result = sub_25E6C41D4();
  qword_27FD01008 = result;
  byte_27FD01010 = v1 & 1;
  return result;
}

uint64_t sub_25E6C41D4()
{
  v0 = sub_25E6D7DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_25E6D80C4();
  v9 = [v7 integerForKey_];

  if (v9 < 1)
  {
    return 0;
  }

  sub_25E6D7D04();
  v10 = sub_25E6D7DE4();
  v11 = sub_25E6D8244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_25E6B5000, v10, v11, "SpatialPhoto Rendering: SpatialPhotoRenderingFixedFrameRate overridden to %ldfps", v12, 0xCu);
    MEMORY[0x25F8BCEB0](v12, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  return v9;
}

uint64_t sub_25E6C439C()
{
  result = sub_25E6C43C8();
  qword_27FD01018 = result;
  byte_27FD01020 = v1 & 1;
  return result;
}

uint64_t sub_25E6C43C8()
{
  v0 = sub_25E6D7DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_25E6D80C4();
  v9 = [v7 integerForKey_];

  if (v9 < 1)
  {
    return 0;
  }

  sub_25E6D7D04();
  v10 = sub_25E6D7DE4();
  v11 = sub_25E6D8244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_25E6B5000, v10, v11, "SpatialPhoto Rendering: SpatialPhotoRenderingPreferredFrameRate overridden to %ldfps", v12, 0xCu);
    MEMORY[0x25F8BCEB0](v12, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  return v9;
}

id sub_25E6C4590()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_25E6BFCD4();
    swift_unknownObjectRelease();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhotoMTKView();
  return objc_msgSendSuper2(&v2, sel_draw);
}

id sub_25E6C4640(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13.receiver = v5;
  v13.super_class = type metadata accessor for SpatialPhotoMTKView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_device_, a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v11;
}

id sub_25E6C4744(void *a1)
{
  *&v1[OBJC_IVAR____TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView_drawDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpatialPhotoMTKView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  return v3;
}

id sub_25E6C47F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_25E6C4840()
{
  result = qword_27FD010E0;
  if (!qword_27FD010E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD010E0);
  }

  return result;
}

uint64_t sub_25E6C4884()
{
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25E6C4910()
{
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6C4944()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E6C4998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E6C4A08()
{
  result = qword_27FD010F0;
  if (!qword_27FD010F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD010F0);
  }

  return result;
}

uint64_t sub_25E6C4A5C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25E6C4AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6BC8D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6C4C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6BE714();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6C4C78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6BEE3C();
  *a1 = result;
  a1[1] = v3;
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

uint64_t _s16RegionOfInterestOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t _s16RegionOfInterestOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25E6C4DD0(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25E6C4DE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_25E6C4E1C()
{
  result = sub_25E6D7AC4();
  if (v1 <= 0x3F)
  {
    result = sub_25E6D7A64();
    if (v2 <= 0x3F)
    {
      result = sub_25E6D7A04();
      if (v3 <= 0x3F)
      {
        result = sub_25E6D79B4();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t _s11MetalUIViewC11RenderStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11MetalUIViewC11RenderStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6C5834);
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

uint64_t _s11MetalUIViewC5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s11MetalUIViewC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6C59D0);
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

unint64_t sub_25E6C5A0C()
{
  result = qword_27FD011D8;
  if (!qword_27FD011D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD011D8);
  }

  return result;
}

unint64_t sub_25E6C5A64()
{
  result = qword_27FD011E0;
  if (!qword_27FD011E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD011E0);
  }

  return result;
}

uint64_t sub_25E6C5AFC(void *a1)
{
  v2 = [a1 animationKeys];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_25E6D8154();

  return v3;
}

id sub_25E6C5B68()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) endEncoding];

  return [v1 commit];
}

uint64_t objectdestroy_97Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6C5BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD010E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E6C5CB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  *(v0 + 64) = *(v2 + 16);
  *(v0 + 72) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

__n128 OUTLINED_FUNCTION_13@<Q0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v4 = v3 + v2;
  result = *a1;
  v6 = *(a1 + 16);
  *(v4 + 32) = a2;
  *v4 = result;
  *(v4 + 16) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 40) = v2;
  *(a1 + 48) = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_42@<W0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = a1;
  v10 = v6;
  v11 = v7;
  v12 = v5;

  return CGRectEqualToRect(*&a2, *&v9);
}

void OUTLINED_FUNCTION_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_44(uint64_t a1, unint64_t a2)
{

  return sub_25E6BA278(a1, a2, (v2 - 232));
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_47()
{
}

uint64_t SpatialPhoto.Player.PlayState.hashValue.getter()
{
  v1 = *v0;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v1);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.Player.Style.hashValue.getter()
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  return sub_25E6D8434();
}

uint64_t sub_25E6C6238()
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.Player.__allocating_init(scene:size:renderScale:queue:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  SpatialPhoto.Player.init(scene:size:renderScale:queue:)(a1, a2);
  return v4;
}

uint64_t SpatialPhoto.Player.init(scene:size:renderScale:queue:)(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v40 = v7;
  v41 = v6;
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  v42 = v12 - v11;
  v13 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v39 = v14;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = sub_25E6D7A84();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;
  v32 = sub_25E6D7C14();
  MEMORY[0x28223BE20](v32 - 8, v33, v34, v35);
  OUTLINED_FUNCTION_4();
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 16) = a2;
  v43 = a2;
  sub_25E6D7C04();
  sub_25E6D7C24();
  swift_allocObject();
  v36 = sub_25E6D7BD4();
  if (v3)
  {

    sub_25E6BDF88(*(v4 + 40));
    swift_unknownObjectRelease();
    type metadata accessor for SpatialPhoto.Player();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 72) = v36;
    (*(v24 + 104))(v31, *MEMORY[0x277D3CB80], v22);
    sub_25E6D7AB4();
    swift_allocObject();
    *(v4 + 80) = sub_25E6D7A94();
    (*(v39 + 104))(v21, *MEMORY[0x277D3CBC8], v13);
    (*(v40 + 104))(v42, *MEMORY[0x277D3CB28], v41);
    sub_25E6D7DC4();
    swift_allocObject();

    v37 = sub_25E6D7D94();

    *(v4 + 64) = v37;
  }

  return v4;
}

uint64_t (*sub_25E6C673C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = *(v1 + 64);
  *a1 = sub_25E6D7DA4();
  return sub_25E6C6788;
}

uint64_t sub_25E6C6788(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7DB4();
  }

  sub_25E6D7DB4();
}

uint64_t (*sub_25E6C6850(void *a1))()
{
  a1[2] = *(v1 + 72);
  sub_25E6D7BE4();
  *a1 = v3;
  a1[1] = v4;
  return sub_25E6C689C;
}

uint64_t (*sub_25E6C690C(void *a1))()
{
  a1[1] = *(v1 + 72);
  sub_25E6D7B94();
  *a1 = v3;
  return sub_25E6C6958;
}

uint64_t sub_25E6C6980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6C6A40(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25E6C69F4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 24))
  {
    return sub_25E6C77D8();
  }

  return result;
}

uint64_t sub_25E6C6A40@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_1();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_25E6C6A78(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_3_2();
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v5[0] = v3;
  return sub_25E6C69F4(v5);
}

void (*sub_25E6C6ABC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 24);
  return sub_25E6C6B34;
}

void sub_25E6C6B34(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_25E6C6A78(v3);

  free(v2);
}

void sub_25E6C6BB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E6C6D40(v1);
}

void sub_25E6C6BE0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 32);
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v4 || (type metadata accessor for CVBuffer(0), sub_25E6C9784(&qword_27FD01468, type metadata accessor for CVBuffer), v5 = v4, v6 = sub_25E6D78F4(), v5, (v6 & 1) == 0))
  {
LABEL_6:
    swift_beginAccess();
    v7 = *(v2 + 40);
    if (v7)
    {
      v8 = *(v2 + 32);
      sub_25E6C6FC8(v7);
      v9 = v8;
      v7(v8);
      sub_25E6BDF88(v7);
    }
  }
}

void *sub_25E6C6D08()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_25E6C6D40(void *a1)
{
  OUTLINED_FUNCTION_3_2();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = a1;
  sub_25E6C6BE0(v3);
}

void (*sub_25E6C6D98(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  v3[3] = v4;
  v5 = v4;
  return sub_25E6C6E18;
}

void sub_25E6C6E18(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_25E6C6D40(v3);
  }

  else
  {
    sub_25E6C6D40(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_25E6C6E84@<X0>(void *a1@<X8>)
{
  result = sub_25E6C6F84();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_25E6C9758;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6C6EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6C9720;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1);
  return sub_25E6C6FD8(v4, v3);
}

uint64_t sub_25E6C6F84()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *(v0 + 40);
  sub_25E6C6FC8(v1);
  return v1;
}

uint64_t sub_25E6C6FC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E6C6FD8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_25E6BDF88(v5);
}

uint64_t sub_25E6C7074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6C70E8(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25E6C70E8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_1();
  *a1 = *(v1 + 56);
  return result;
}

uint64_t sub_25E6C7120(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_25E6C7154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01460);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27FD013F0 = result;
  return result;
}

uint64_t sub_25E6C71A0(uint64_t a1, void *a2)
{
  if (qword_27FD00A38 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD013F0;
  os_unfair_lock_lock((qword_27FD013F0 + 24));
  sub_25E6C7230((v3 + 16), a2, &v5);
  os_unfair_lock_unlock((v3 + 24));
  return v5;
}

uint64_t sub_25E6C7230@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01438);
  v8 = MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440);
  v17 = *(v16 - 8);
  v21 = MEMORY[0x28223BE20](v16, v18, v19, v20);
  v61 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = &v61 - v26;
  v66 = a1;
  v28 = *a1;
  if (*(v28 + 16) && (v29 = sub_25E6C9458(), (v30 & 1) != 0))
  {
    (*(v17 + 16))(v15, *(v28 + 56) + *(v17 + 72) * v29, v16);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v31, 1, v16);
  sub_25E6C94B0(v15, v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v16);
  v63 = v17;
  if (EnumTagSinglePayload == 1)
  {
    sub_25E6D7984();
    sub_25E6C9520(v10, &qword_27FD01438);
  }

  else
  {
    (*(v17 + 32))(v27, v10, v16);
  }

  v64 = v16;
  v62 = v27;
  v33 = sub_25E6D7974();
  v34 = sub_25E6C8F54(v33);
  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {

      type metadata accessor for SpatialPhoto.CinematicCameraAnimator();
      v42 = swift_allocObject();
      v43 = sub_25E6D0C84(v67, 0, 3.0, 0, v42);
      v44 = sub_25E6C9784(&qword_27FD01450, type metadata accessor for SpatialPhoto.CinematicCameraAnimator);
      v45 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      v68 = *v45;
      v46 = v68;
      v47 = sub_25E6C9458();
      if (__OFADD__(*(v46 + 16), (v48 & 1) == 0))
      {
        goto LABEL_28;
      }

      v49 = v47;
      v50 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01458);
      v51 = sub_25E6D8344();
      v52 = v68;
      if (v51)
      {
        v53 = sub_25E6C9458();
        if ((v50 & 1) != (v54 & 1))
        {
          goto LABEL_29;
        }

        v49 = v53;
      }

      *v66 = v52;
      if ((v50 & 1) == 0)
      {
        v55 = v61;
        sub_25E6D7984();
        sub_25E6C9638(v49, v55, v52);
      }

      v56 = v63;
      v57 = v64;
      sub_25E6D7964();
      result = (*(v56 + 8))(v62, v57);
LABEL_25:
      v60 = v65;
      *v65 = v43;
      v60[1] = v44;
      return result;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x25F8BC620](i, v33);
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v36 = *(v33 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_25E6C9580();
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v36);
    v38 = v37;
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 16))(ObjectType, v38);
    v41 = sub_25E6D82D4();

    if (v41)
    {

      (*(v63 + 8))(v62, v64);
      swift_getObjectType();
      result = dynamic_cast_existential_1_unconditional(v36);
      v43 = result;
      v44 = v59;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_25E6D83C4();
  __break(1u);
  return result;
}

uint64_t sub_25E6C7724(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 32))(v2, ObjectType, a2);
  }

  return result;
}

uint64_t sub_25E6C777C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  swift_unknownObjectRetain();
  sub_25E6C7724(v3, v4);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_25E6C77D8()
{
  v1 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *(v0 + 16);
  *(v9 - v8) = v11;
  (*(v3 + 104))(v9 - v8, *MEMORY[0x277D85200], v1);
  v12 = v11;
  v13 = sub_25E6D8084();
  result = (*(v3 + 8))(v10, v1);
  if (v13)
  {
    result = swift_beginAccess();
    v15 = *(v0 + 88);
    if (*(v0 + 24) == 1)
    {
      if (!v15)
      {
        v16 = sub_25E6C71A0(result, v12);
        result = sub_25E6C777C(v16, v17);
        v18 = *(v0 + 88);
        if (v18)
        {
          v19 = *(v0 + 96);
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 24);
          swift_unknownObjectRetain();
          v21(v0, ObjectType, v19);
          OUTLINED_FUNCTION_5_1();
          *(v0 + 56) = 1;
          sub_25E6C79D0(v18, v19);
          return swift_unknownObjectRelease();
        }
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_5_1();
      *(v0 + 56) = 0;
      sub_25E6D7BB4();
      return sub_25E6C777C(0, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C79D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v51[1] = v7;
  v51[2] = v6;
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  v51[0] = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
  OUTLINED_FUNCTION_1_0();
  v54 = v14;
  v55 = v13;
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  OUTLINED_FUNCTION_1_0();
  v52 = v21;
  v53 = v20;
  MEMORY[0x28223BE20](v20, v22, v23, v24);
  v26 = v51 - v25;
  v27 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30, v31, v32, v33);
  OUTLINED_FUNCTION_4();
  v36 = v35 - v34;
  v37 = *(v3 + 16);
  *(v35 - v34) = v37;
  (*(v29 + 104))(v35 - v34, *MEMORY[0x277D85200], v27);
  v38 = v37;
  LOBYTE(v37) = sub_25E6D8084();
  result = (*(v29 + 8))(v36, v27);
  if (v37)
  {
    v40 = *(v3 + 88);
    if (v40)
    {
      if (v40 == a1)
      {
        type metadata accessor for SpatialPhoto.Player();

        sub_25E6D7954();
        v56 = a1;
        v57 = a2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01418);
        v41 = sub_25E6D7934();
        v45 = MEMORY[0x28223BE20](v41, v42, v43, v44);
        v51[-4] = v3;
        v51[-3] = a1;
        v51[-2] = a2;
        MEMORY[0x28223BE20](v45, &v51[-6], v46, v47);
        v51[-4] = v38;
        v51[-3] = v26;
        v51[-2] = v19;
        sub_25E6D7884();
        sub_25E6D7BC4();
        v48 = sub_25E6D7B84();
        sub_25E6C6D40(v48);
        v50 = v52;
        v49 = v53;
        (*(v54 + 8))(v19, v55);
        return (*(v50 + 8))(v26, v49);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6C7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  ObjectType = swift_getObjectType();
  (*(a3 + 48))(ObjectType, a3);
  return sub_25E6D7AA4();
}

uint64_t (*sub_25E6C7F3C(void *a1, uint64_t a2, uint64_t a3))()
{
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15, v16, v17);
  v19 = &v26 - v18;
  (*(v13 + 16))(&v26 - v18, a2, v12);
  (*(v6 + 16))(v11, a3, v5);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = (v14 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v27;
  (*(v13 + 32))(v22 + v20, v19, v12);
  (*(v6 + 32))(v22 + v21, v11, v5);
  v24 = v23;
  return sub_25E6C90C8;
}

uint64_t sub_25E6C8168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v39 = sub_25E6D8044();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5, v6, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25E6D8064();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v9, v10, v11);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v36 - v26;
  (*(v21 + 16))(&v36 - v26, a2, v20);
  (*(v14 + 16))(v19, a3, v13);
  v28 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v29 = (v22 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = swift_allocObject();
  (*(v21 + 32))(v30 + v28, v27, v20);
  (*(v14 + 32))(v30 + v29, v19, v13);
  aBlock[4] = sub_25E6C92F8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25E6C8654;
  aBlock[3] = &block_descriptor_0;
  v31 = _Block_copy(aBlock);
  v32 = v36;
  sub_25E6D8054();
  v43 = MEMORY[0x277D84F90];
  sub_25E6C9784(&qword_27FD01420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01428);
  sub_25E6C93F4();
  v33 = v37;
  v34 = v39;
  sub_25E6D82F4();
  MEMORY[0x25F8BC580](0, v32, v33, v31);
  _Block_release(v31);
  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v40);
}

uint64_t sub_25E6C85C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  result = sub_25E6D7944();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
    sub_25E6D7924();
    (sub_25E6C79D0)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25E6C8654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t SpatialPhoto.Player.deinit()
{
  sub_25E6BDF88(*(v0 + 40));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SpatialPhoto.Player.__deallocating_deinit()
{
  SpatialPhoto.Player.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_25E6C8720()
{
  result = qword_27FD013F8;
  if (!qword_27FD013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD013F8);
  }

  return result;
}

unint64_t sub_25E6C8778()
{
  result = qword_27FD01400;
  if (!qword_27FD01400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01400);
  }

  return result;
}

uint64_t sub_25E6C87CC()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C66F4();
  *v0 = result;
  return result;
}

uint64_t sub_25E6C87F8()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C6808();
  *v0 = v2;
  v0[1] = v3;
  return result;
}

uint64_t sub_25E6C8824()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C68C4();
  *v0 = v2;
  return result;
}

void *sub_25E6C8884()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6C6D08();
  *v0 = result;
  return result;
}

uint64_t _s14GyroMotionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6PlayerC9PlayStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6C8DC4);
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

uint64_t _s6PlayerC5StyleOwet(unsigned int *a1, int a2)
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

_BYTE *_s6PlayerC5StyleOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25E6C8EF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E6C8F54(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_25E6C8F78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_25E6C90C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_25E6C8168(v5, v0 + v2, v6);
}

uint64_t sub_25E6C91B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_25E6C92F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01408);

  return sub_25E6C85C0();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E6C93F4()
{
  result = qword_27FD01430;
  if (!qword_27FD01430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD01428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01430);
  }

  return result;
}

uint64_t sub_25E6C9458()
{
  sub_25E6D8414();
  MEMORY[0x25F8BC720](0);
  v0 = sub_25E6D8434();

  return sub_25E6C960C(v0);
}

uint64_t sub_25E6C94B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6C9520(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25E6C9580()
{
  result = qword_27FD01448;
  if (!qword_27FD01448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01448);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E6C9638(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v6 = *(a3 + 56);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440);
  result = (*(*(v7 - 8) + 32))(v6 + *(*(v7 - 8) + 72) * a1, a2, v7);
  v9 = *(a3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v11;
  }

  return result;
}

uint64_t sub_25E6C96E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6C9720(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25E6C9784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_beginAccess();
}

unint64_t sub_25E6C9838(char a1)
{
  result = 0xD000000000000026;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25E6C991C(void *a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = [v5 bundleForClass_];
  v21[0] = 0;
  v7 = [a1 newDefaultLibraryWithBundle:v6 error:v21];

  if (!v7)
  {
    v19 = v21[0];
    sub_25E6D7834();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _s24GenerationEffectRendererCMa();
    swift_deallocPartialClassInstance();
    return;
  }

  v8 = v21[0];
  v9 = sub_25E6D80C4();
  v10 = [v7 newFunctionWithName_];

  v11 = sub_25E6D80C4();
  v12 = [v7 newFunctionWithName_];

  v13 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_25E6CA734(0xD00000000000001BLL, 0x800000025E6DC550, v13);
  [v13 setVertexFunction_];
  [v13 setFragmentFunction_];
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (v15)
  {
    [v15 setPixelFormat_];

    v21[0] = 0;
    v16 = [a1 newRenderPipelineStateWithDescriptor:v13 error:v21];
    if (v16)
    {
      v17 = v16;
      v18 = v21[0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v2[6] = v17;
      return;
    }

    v20 = v21[0];
    sub_25E6D7834();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  __break(1u);
}

void sub_25E6C9CA0(void *a1)
{
  sub_25E6CA0D0(a1);
  if (!v2)
  {
    *(v1 + 24) = v3;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25E6C9CDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_25E6C9D18(float a1, float a2, float a3)
{
  v7 = [*(v3 + 40) commandBuffer];
  if (!v7)
  {
    sub_25E6B7598();
    OUTLINED_FUNCTION_0_1();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = *(v3 + 16);
  if (!v9)
  {
    sub_25E6B7598();
    OUTLINED_FUNCTION_0_1();
    v22 = 5;
LABEL_13:
    *v21 = v22;
    swift_willThrow();
    goto LABEL_14;
  }

  v10 = *(v3 + 24);
  if (!v10)
  {
    sub_25E6B7598();
    OUTLINED_FUNCTION_0_1();
    v22 = 6;
    goto LABEL_13;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CD6F50]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [v11 init];
  v13 = [v12 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v14 setTexture_];

  v15 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setLoadAction_];

  v16 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v16 setStoreAction_];

  v17 = OUTLINED_FUNCTION_1_2([v12 colorAttachments]);
  if (!v17)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v17 setClearColor_];

  v18 = [v8 renderCommandEncoderWithDescriptor_];
  if (v18)
  {
    v19 = v18;
    [v18 setRenderPipelineState_];
    [v19 setFragmentTexture:v10 atIndex:0];
    *v24 = a1;
    *&v24[1] = a2;
    *&v24[2] = a3;
    [v19 setFragmentBytes:v24 length:12 atIndex:0];
    [v19 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v19 endEncoding];
    [v8 commit];
    [v8 waitUntilCompleted];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  sub_25E6B7598();
  OUTLINED_FUNCTION_0_1();
  *v23 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_25E6CA0D0(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E6DAB50;
  v6 = *MEMORY[0x277CBFA50];
  *(inited + 32) = *MEMORY[0x277CBFA50];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  type metadata accessor for CIImageOption(0);
  sub_25E6CA644();
  v7 = v6;
  v8 = sub_25E6D80A4();
  objc_allocWithZone(MEMORY[0x277CBF758]);
  v9 = sub_25E6CA69C(a1, v8);
  if (!v9)
  {
    sub_25E6B7598();
    OUTLINED_FUNCTION_0_1();
    *v12 = 1;
    swift_willThrow();
    return;
  }

  v10 = v9;
  v11 = sub_25E6D82C4();
  if (v2)
  {

    return;
  }

  v13 = v11;
  [v11 extent];
  Width = CGRectGetWidth(v29);
  v15 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v13 extent];
  Height = CGRectGetHeight(v30);
  v17 = Height;
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = *(v3 + 32);
  v19 = [objc_opt_self() contextWithMTLDevice_];
  v20 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v20)
  {
    v21 = v20;
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 texture2DDescriptorWithPixelFormat:70 width:v15 height:v17 mipmapped:0];
    [v24 setUsage_];
    v25 = [v18 newTextureWithDescriptor_];
    if (v25)
    {
      v26 = v25;
      [v13 extent];
      [v19 render:v13 toMTLTexture:v26 commandBuffer:0 bounds:v23 colorSpace:?];
    }

    else
    {
      sub_25E6B7598();
      OUTLINED_FUNCTION_0_1();
      *v28 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_25E6B7598();
    OUTLINED_FUNCTION_0_1();
    *v27 = 2;
    swift_willThrow();
  }
}

uint64_t sub_25E6CA450()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_25E6CA490()
{
  sub_25E6CA450();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *_s21GenerationEffectErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6CA5B4);
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

unint64_t sub_25E6CA5F0()
{
  result = qword_27FD01470;
  if (!qword_27FD01470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01470);
  }

  return result;
}

unint64_t sub_25E6CA644()
{
  result = qword_27FD01480;
  if (!qword_27FD01480)
  {
    type metadata accessor for CIImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01480);
  }

  return result;
}

id sub_25E6CA69C(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CIImageOption(0);
    sub_25E6CA644();
    v4 = sub_25E6D8094();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithImage:a1 options:v4];

  return v5;
}

void sub_25E6CA734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25E6D80C4();

  [a3 setLabel_];
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_1_2(void *a1)
{

  return [a1 (v1 + 3960)];
}

id SpatialPhoto.SpatialPhotoSceneSecondaryUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.SpatialPhotoSceneSecondaryUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = 0;
  v1 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView());
  v2 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(1);
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) = v2;
  [v2 setAutoresizingMask_];
  v8 = type metadata accessor for SpatialPhoto.SpatialPhotoSceneSecondaryUIView();
  v3 = OUTLINED_FUNCTION_3_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  [v6 addSubview_];
  return v6;
}

void sub_25E6CA900()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = 0;
  sub_25E6D8354();
  __break(1u);
}

double sub_25E6CA988@<D0>(uint64_t a1@<X8>)
{
  sub_25E6CAA0C(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6CA9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6CAA38(v3);
}

__n128 sub_25E6CAA0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void sub_25E6CAA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

void (*sub_25E6CAA80(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 1) = v6;
  *(v3 + 32) = v5;
  return sub_25E6CAAF8;
}

void sub_25E6CAAF8(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6CAA38(v6);

  free(v1);
}

uint64_t sub_25E6CAB58()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_25E6CABD8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6CAB58() & 1;
  return sub_25E6CAC24;
}

uint64_t sub_25E6CAC58(uint64_t result)
{
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel;
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel);
  if (result)
  {
    if (v3 == result)
    {
      return result;
    }

    v4 = sub_25E6D7D74();
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
      swift_unknownObjectRelease();
      if (v6 == v5)
      {
        sub_25E6D7D84();
      }
    }

    v3 = *(v1 + v2);
  }

  if (v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_metalView);
    sub_25E6CAFF4();

    v8 = v7;
    sub_25E6D7D84();
  }

  return result;
}

uint64_t sub_25E6CAD40(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel) = a1;

  sub_25E6CAC58(v2);
}

id SpatialPhoto.SpatialPhotoSceneSecondaryUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SpatialPhotoSceneSecondaryUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6CAE4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6CAB58();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25E6CAFF4()
{
  result = qword_27FD01498;
  if (!qword_27FD01498)
  {
    type metadata accessor for SpatialPhoto.MetalUIView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01498);
  }

  return result;
}

uint64_t SpatialPhoto.SceneView.init(scene:rendererKind:cameraProvider:renderer:renderEffect:renderView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a6;
  v37 = a7;
  v38 = a2;
  v39 = a5;
  v35 = a11;
  v33 = a4;
  v34 = a12;
  v16 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v25 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8[1] = a10;
  a8[2] = a1;
  *a8 = a9;
  (*(v18 + 16))(v25, a2, v16);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = a1;
  *(v28 + 3) = a3;
  *(v28 + 4) = v33;
  (*(v18 + 32))(&v28[v26], v25, v16);
  v29 = &v28[v27];
  v30 = v37;
  *v29 = v36;
  *(v29 + 1) = v30;
  type metadata accessor for SpatialPhoto.SceneView();
  sub_25E6D7DC4();
  swift_retain_n();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_25E6D7E04();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v18 + 8))(v38, v16);
}

uint64_t SpatialPhoto.SceneView.init(viewModel:renderView:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_25E6D7DA4();
  a3[1] = a2;
  a3[2] = v6;
  *a3 = a1;
  type metadata accessor for SpatialPhoto.SceneView();
  sub_25E6D7DC4();
  return sub_25E6D7E04();
}

uint64_t sub_25E6CB2E8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v3 = sub_25E6D7A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E6D7D24();
  MEMORY[0x28223BE20](v10, v11, v10, v12);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v4 + 104))(v9, *MEMORY[0x277D3CB28], v3);
  sub_25E6D7DC4();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  result = sub_25E6D7D94();
  *v17 = result;
  return result;
}

uint64_t sub_25E6CB4D8()
{
  v1 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_25E6CB5AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_25E6D7D24() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_25E6CB2E8(v4, a1);
}

uint64_t sub_25E6CB678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0);
  sub_25E6D7E14();
  return v1;
}

uint64_t SpatialPhoto.SceneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v53 = *(v7 + 64);
  v12 = MEMORY[0x28223BE20](v8, v9, v10, v11);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v12 + 16);
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v12, v15, v16, v17);
  v58 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0);
  v51 = v19;
  v48 = *(a1 + 24);
  v20 = v48;
  v52 = sub_25E6CBA68();
  v59 = v14;
  v60 = v19;
  v61 = v20;
  v62 = v52;
  v54 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v55 = v22;
  v27 = MEMORY[0x28223BE20](v23, v24, v25, v26);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30, v31, v32);
  v50 = &v47 - v33;
  v34 = *v3;
  sub_25E6CB678();
  v34();

  v59 = *(v3 + 16);
  v35 = v49;
  (*(v6 + 16))(v49, v3, a1);
  v36 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 16) = v14;
  *(v37 + 24) = v38;
  (*(v6 + 32))(v37 + v36, v35, a1);

  v39 = v51;
  v40 = v52;
  v41 = v38;
  v42 = v58;
  sub_25E6D8004();

  (*(v56 + 8))(v42, v14);
  v59 = v14;
  v60 = v39;
  v61 = v41;
  v62 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v50;
  sub_25E6BB844(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v45 = *(v55 + 8);
  v45(v29, OpaqueTypeMetadata2);
  sub_25E6BB844(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v45)(v44, OpaqueTypeMetadata2);
}

unint64_t sub_25E6CBA68()
{
  result = qword_27FD014A8;
  if (!qword_27FD014A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0);
    sub_25E6CBE9C(&qword_27FD014B0, MEMORY[0x277D3CBB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD014A8);
  }

  return result;
}

uint64_t sub_25E6CBB1C()
{
  type metadata accessor for SpatialPhoto.SceneView();
  sub_25E6CB678();

  sub_25E6D7DB4();
}

uint64_t sub_25E6CBB78()
{
  v1 = (type metadata accessor for SpatialPhoto.SceneView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD014B8);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD014C0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25E6CBC9C()
{
  type metadata accessor for SpatialPhoto.SceneView();

  return sub_25E6CBB1C();
}

__n128 SpatialPhoto.MetalView.init(viewModel:regionOfInterest:isSecondary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 41) = a3;
  return result;
}

char *SpatialPhoto.MetalView.makeUIView(context:)()
{
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  v3 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView());
  v4 = SpatialPhoto.MetalUIView.init(frame:isSecondary:)(v2);
  OUTLINED_FUNCTION_0_2();
  sub_25E6CBE9C(v5, v6);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_2();
  if (v2 == 1)
  {
    sub_25E6D7D84();
  }

  else
  {
    sub_25E6D7D64();
  }

  v11[0] = v9;
  v11[1] = v10;
  v12 = v1;
  sub_25E6BCAC4(v11);
  v7 = &v4[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate];
  swift_beginAccess();
  *(v7 + 1) = MEMORY[0x277D3CBE8];
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_25E6CBE9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SpatialPhoto.MetalView.updateUIView(_:context:)(uint64_t a1)
{
  v10 = *(v1 + 24);
  v11 = *(v1 + 8);
  v3 = *(v1 + 40);
  if (*(v1 + 41) == 1)
  {
    OUTLINED_FUNCTION_0_2();
    sub_25E6CBE9C(v4, v5);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D84();
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    sub_25E6CBE9C(v6, v7);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_2();
    sub_25E6D7D64();
  }

  v12[0] = v11;
  v12[1] = v10;
  v13 = v3;
  sub_25E6BCAC4(v12);
  v8 = a1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_delegate;
  swift_beginAccess();
  *(v8 + 8) = MEMORY[0x277D3CBE8];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25E6CC048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6CC7A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25E6CC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6CC7A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25E6CC110()
{
  sub_25E6CC7A4();
  sub_25E6D7F44();
  __break(1u);
}

uint64_t SpatialPhoto.OcclusionMode.blendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7, v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v11, v1, v3);
  v12 = (*(v5 + 88))(v11, v3);
  if (v12 == *MEMORY[0x277D3CB28] || v12 == *MEMORY[0x277D3CB08] || v12 == *MEMORY[0x277D3CB20])
  {
LABEL_15:
    v15 = MEMORY[0x277CE13D8];
    goto LABEL_16;
  }

  if (v12 != *MEMORY[0x277D3CB00])
  {
    if (v12 != *MEMORY[0x277D3CB10] && v12 != *MEMORY[0x277D3CB18])
    {
      result = sub_25E6D8354();
      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  v15 = MEMORY[0x277CE13C0];
LABEL_16:
  v17 = *v15;
  v18 = sub_25E6D8014();
  return (*(*(v18 - 8) + 104))(a1, v17, v18);
}

unint64_t sub_25E6CC370()
{
  result = qword_27FD014C8;
  if (!qword_27FD014C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD014C8);
  }

  return result;
}

void sub_25E6CC3D8()
{
  sub_25E6BB234();
  if (v0 <= 0x3F)
  {
    sub_25E6CC61C(319, &qword_27FD00F30, MEMORY[0x277D3CBB8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25E6CC61C(319, &qword_27FD01558, MEMORY[0x277D3CBF0], MEMORY[0x277CDF338]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25E6CC4E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_25E6CC590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD014D0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_25E6CC61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25E6CC694(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_25E6CC6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E6CC730()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD014A0);
  sub_25E6CBA68();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25E6CC7A4()
{
  result = qword_27FD01560;
  if (!qword_27FD01560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD01560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_unknownObjectRetain();
}

void SpatialPhoto.GyroFilter.init()(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v2 = sub_25E6D8164();
  *(v2 + 16) = 64;
  bzero((v2 + 32), 0x100uLL);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = v2;
}

void __swiftcall SpatialPhoto.GyroFilter.update(targetValue:)(SPRotation3D *__return_ptr retstr, SPRotation3D *targetValue)
{
  v5 = v2;
  v62 = v3;
  v64 = v4;
  v6 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = sub_25E6D81D4();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20, v21, v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  if (qword_27FD00A40 != -1)
  {
    swift_once();
  }

  if ((byte_27FD01568 & 1) == 0)
  {
    v61 = v8;
    v26 = v62.f64[1];
    v27 = v62.f64[0];
    v29 = v64.f64[1];
    v28 = v64.f64[0];
    if ((*(v5 + 32) & 1) == 0)
    {
      v27 = *v5;
      v26 = *(v5 + 8);
      v29 = *(v5 + 24);
      v28 = *(v5 + 16);
    }

    *v5 = v62;
    v59 = v62.f64[0];
    v56 = v64.f64[0];
    *(v5 + 16) = v64;
    *(v5 + 32) = 0;
    v55 = v64.f64[1];
    v57 = v62.f64[1];
    v30 = acos(fmin(fmax(fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v62, 0), vmulq_f64(v64, xmmword_25E6DB550)))), 0.0), 1.0));
    v31.f64[0] = v28;
    v31.f64[1] = v29;
    v32.f64[0] = v27;
    v32.f64[1] = v26;
    v33 = acos(fmin(fmax(fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v62, v32), vmulq_f64(v64, v31)))), 0.0), 1.0));
    v34 = v33 + v33;
    sub_25E6CCF4C(v33 + v33);
    v36 = v35;
    if (qword_27FD00A48 != -1)
    {
      swift_once();
    }

    v37 = *&qword_27FD01570;
    if (qword_27FD00A50 != -1)
    {
      swift_once();
    }

    if (*&qword_27FD01578 > v37)
    {
      v38 = (v36 - v37) / (*&qword_27FD01578 - v37);
    }

    else
    {
      v38 = 1.0 - (v36 - *&qword_27FD01578) / (v37 - *&qword_27FD01578);
    }

    if (qword_27FD00A58 != -1)
    {
      swift_once();
    }

    v39 = *&qword_27FD01580;
    if (*&qword_27FD01580 >= v38)
    {
      v39 = v38;
    }

    if (v39 < 0.0)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = v39;
    }

    if (qword_27FD00A70 != -1)
    {
      swift_once();
    }

    v41 = (v36 - *&qword_27FD01598) / (0.0 - *&qword_27FD01598);
    if (*&qword_27FD01598 >= 0.0)
    {
      v41 = 1.0 - v36 / *&qword_27FD01598;
    }

    v42 = fmin(fmax(fmin(v41, 1.0), 0.0), 1.0);
    if (qword_27FD00A60 != -1)
    {
      swift_once();
    }

    v43 = fmax(v42, 0.0);
    v44 = *&qword_27FD01588;
    if (qword_27FD00A68 != -1)
    {
      swift_once();
    }

    v45 = v44 + v43 * (*&qword_27FD01590 - v44);
    v46 = *(v5 + 104);
    if (v46 <= v40)
    {
      v46 = v40;
    }

    v47 = v45 * v46;
    *(v5 + 104) = v45 * v46;
    PXFloatSaturate();
    (*(v18 + 104))(v25, *MEMORY[0x277D85448], v16);
    sub_25E6D81C4();
    v63 = v48;
    v65 = v49;
    (*(v18 + 8))(v25, v16);
    *(v5 + 48) = v63;
    *(v5 + 64) = v65;
    v50 = sub_25E6D8294();
    *&v67[2] = v56;
    *&v67[3] = v55;
    *v67 = v59;
    *&v67[1] = v57;
    SPRotation3DGetEulerAngles(v68, v67, v50, v66);
    v58 = *&v66[2];
    v51 = *&v66[1];
    v60 = *v66;
    PFKTraceSpatialPhotoGyroFilter();
    sub_25E6D7D04();
    v52 = sub_25E6D7DE4();
    v53 = sub_25E6D8214();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134220288;
      *(v54 + 4) = v60 * 180.0 / 3.14159265;
      *(v54 + 12) = 2048;
      *(v54 + 14) = v51 * 180.0 / 3.14159265;
      *(v54 + 22) = 2048;
      *(v54 + 24) = 180.0 * v58 / 3.14159265;
      *(v54 + 32) = 2048;
      *(v54 + 34) = v60;
      *(v54 + 42) = 2048;
      *(v54 + 44) = v51;
      *(v54 + 52) = 2048;
      *(v54 + 54) = v30 + v30;
      *(v54 + 62) = 2048;
      *(v54 + 64) = v34;
      *(v54 + 72) = 2048;
      *(v54 + 74) = v36;
      *(v54 + 82) = 2048;
      *(v54 + 84) = v47;
      *(v54 + 92) = 2048;
      *(v54 + 94) = v43;
      _os_log_impl(&dword_25E6B5000, v52, v53, "SpatialGyroFilter deg:(%f, %f, %f) rad:(%f, %f) angle:%f angleDelta:%f motionLevel:%f allowedMotion:%f decaySpeed%f", v54, 0x66u);
      MEMORY[0x25F8BCEB0](v54, -1, -1);
    }

    (*(v61 + 8))(v15, v6);
  }
}

uint64_t sub_25E6CCF4C(double a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25E6CD9EC(v3);
  v3 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = *(v3 + 16);
  if (v4 >= v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = a1;
  v8 = (v3 + 32);
  *(v3 + 32 + 4 * v4) = v7;
  *v1 = v3;
  v1[1] = (v4 + 1) & 0x3F;
  v9 = 0.0;
  do
  {
    v10 = *v8++;
    v9 = v9 + v10;
    --v6;
  }

  while (v6);
  return result;
}

Swift::Void __swiftcall SpatialPhoto.GyroFilter.reset()()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_25E6D7D04();
  v12 = sub_25E6D7DE4();
  v13 = sub_25E6D8214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25E6B5000, v12, v13, "SpatialGyroFilter reset", v14, 2u);
    MEMORY[0x25F8BCEB0](v14, -1, -1);
  }

  (*(v4 + 8))(v11, v2);
  sub_25E6CD150();
  v1[13] = 0;
  if (v1[4])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0x3FF0000000000000;
  }

  else
  {
    v15 = *v1;
    v16 = v1[1];
    v18 = v1[3];
    v17 = v1[2];
  }

  v1[6] = v15;
  v1[7] = v16;
  v1[8] = v17;
  v1[9] = v18;
}

void sub_25E6CD150()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_25E6CD9EC(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(v1 + 32, 4 * v2);
      *v0 = v1;
    }
  }
}

__n128 SpatialPhoto.GyroFilter.targetValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6CD1D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD01568 = v2;
}

void sub_25E6CD268()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01570 = v2;
}

void sub_25E6CD2E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01578 = v2;
}

void sub_25E6CD360()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01580 = v2;
}

void sub_25E6CD3D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01588 = v2;
}

void sub_25E6CD454()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01590 = v2;
}

void sub_25E6CD4D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_25E6D8254();
  v2 = v1;

  qword_27FD01598 = v2;
}

void SPRotation3DGetEulerAngles(SPRotation3D a1@<0:Q0, 16:Q1>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  _Q1 = *a2;
  if (a3 == 2)
  {
    v7 = *a2;
    _Q1.i64[0] = *(a2 + 16);
  }

  else if (a3 == 1)
  {
    v7 = vextq_s8(_Q1, *(a2 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a2 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a3 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a3 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a4 = v23;
  *(a4 + 16) = v22;
  *(a4 + 32) = a3;
}

char *sub_25E6CD698(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD015A0);
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

uint64_t _s10GyroFilterVwxx(uint64_t a1)
{
}

uint64_t _s10GyroFilterVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);
  v7 = v5;

  return a1;
}

uint64_t _s10GyroFilterVwca(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 32);
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  v8 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 10);
  v10 = *(a1 + 80);
  *(a1 + 80) = v9;
  v11 = v9;

  *(a1 + 88) = *(a2 + 11);

  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

uint64_t _s10GyroFilterVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  *(a1 + 48) = v5;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t _s10GyroFilterVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t _s10GyroFilterVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}