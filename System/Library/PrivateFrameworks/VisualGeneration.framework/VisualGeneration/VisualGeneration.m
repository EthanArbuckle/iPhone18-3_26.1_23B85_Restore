uint64_t getEnumTagSinglePayload for PixelDimensions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PixelDimensions(uint64_t result, int a2, int a3)
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

void *sub_19A2E088C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19A2E08A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A572CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19A2E08D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A2E0928()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E0A50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19A2E0A60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19A2E0A74()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_19A2E0AAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19A2E0B3C@<X0>(uint64_t a1@<X8>)
{
  result = GenerativePlayground.generationSeed.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19A2E0BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E0C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSo8_NSRangeV16VisualGeneration9AmbiguityVAC7ConceptOSgIeghHgynr_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19A2E0D94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for GenerationState();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_19A2E0ECC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for GenerationState();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_19A2E1004(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A2E1070(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

_OWORD *sub_19A2E10E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_19A2E10F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E1128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19A2E11D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E1218()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120);
  v1 = *(v14 - 8);
  v17 = *(v1 + 80);
  v12 = (v17 + 32) & ~v17;
  v2 = (((*(v1 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_19A57102C();
  v3 = *(v13 - 8);
  v16 = *(v3 + 80);
  v4 = (v16 + ((v2 + 87) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
  v5 = (((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8) - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v12, v14);

  (*(v3 + 8))(v0 + v4, v13);
  v8 = (v7 + v5 + 8) & ~v7;

  v9 = sub_19A57112C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v16 | v7 | 7);
}

uint64_t sub_19A2E152C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for GenerationState();
  v37 = *(*(v6 - 8) + 80);
  v7 = (v37 + v5 + 8) & ~v37;
  v34 = (((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8) - 8);
  v36 = *(v8 + 80);
  v35 = *(v8 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v9 = v0 + v7;
  v10 = sub_19A57102C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v7, v10);
  v13 = *(v6 + 20);
  if (!(*(v11 + 48))(v0 + v7 + v13, 1, v10))
  {
    v12(v9 + v13, v10);
  }

  v33 = v12;

  v14 = v9 + *(v6 + 28);
  v15 = type metadata accessor for GenerationRecipe(0);
  v16 = v14 + v15[5];

  v17 = v16 + *(_s23GenerationConfigurationVMa() + 52);
  v18 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_19A570EAC();
    (*(*(v19 - 8) + 8))(v17, v19);
  }

  v20 = (((((v34 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v21 = v14 + v15[8];
  v22 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    v24 = *(*(v23 - 8) + 8);
    v24(v21, v23);
    v24(v21 + *(v22 + 20), v23);
    v20 = (((((v34 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(v14 + v15[14]))
  {
  }

  v33(v14 + v15[18], v10);

  v25 = *(v14 + v15[21] + 24);
  if (v25)
  {
  }

  v26 = *(v14 + v15[22] + 24);
  if (v26)
  {
  }

  v27 = v14 + v15[23];
  v28 = *(v27 + 24);
  if (v28)
  {
  }

  v29 = (v36 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v36;

  if (*(v14 + v15[30] + 16) != 1)
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v34);

  v30 = sub_19A57112C();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v0 + v29, 1, v30))
  {
    (*(v31 + 8))(v0 + v29, v30);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v37 | v36 | 7);
}

uint64_t sub_19A2E1BF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E1C48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E1C80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E1CB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E1D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A2E1D54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A2E1D94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19A2E1DDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A2E1E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E1E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneratedImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_19A2E1F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneratedImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E1FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E20C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E21C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A2E2200()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E2244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AugmentedPrompt();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E233C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AugmentedPrompt();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E2408()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E2448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_19A570BEC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19A2E2544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_19A570BEC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_19A2E2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NamedEntityData.NamedEntityType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E26FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NamedEntityData.NamedEntityType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E27A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A2E280C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_19A2E288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19A2E2958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A57102C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19A2E2A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImageProvenance();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E2ADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImageProvenance();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E2B9C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C18);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_19A2E2BCC(uint64_t a1)
{
  result = sub_19A393954(&qword_1EAF9F340, type metadata accessor for InProcessDiffusionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A2E2C2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_19A57112C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E2CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_19A57112C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E2D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AugmentedPrompt();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E2E28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AugmentedPrompt();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E2ECC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = _s23GenerationConfigurationVMa();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = sub_19A57102C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[18];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_19A2E3048(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = _s23GenerationConfigurationVMa();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = sub_19A57102C();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_19A2E327C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E3338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E33E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E34A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E3554()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E35C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19A2E3694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A57102C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19A2E374C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E3784()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A2E37D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E380C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_19A2E38D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E3984()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_6;
    }
  }

  if (*(v0 + 32))
  {
  }

LABEL_6:

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E39E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19A2E3A8C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1088);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E3B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1088);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E3BF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A2E3C40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E3C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E3CE0()
{

  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_6;
    }
  }

  if (*(v0 + 48))
  {
  }

LABEL_6:

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A2E3D48()
{
  v1 = (type metadata accessor for ImageProvenance() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for GeneratedImage() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v13 = *(*v5 + 64);
  v8 = v2 | v6;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  v9 = v1[7];
  v10 = sub_19A57102C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);

  v11(v0 + v7 + v5[7] + v1[7], v10);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v13, v8 | 7);
}

uint64_t sub_19A2E3F4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19A2E3F94@<X0>(uint64_t a1@<X8>)
{
  result = KeyboardEmojiGenerator.generationSeed.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19A2E3FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E40C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E4190(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A2E41FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A2E426C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E42A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19A2E434C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E43C8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11E8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_19A2E4428()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E4460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_19A2E452C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A57102C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_19A2E45F0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A2E4678()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_19A2E46D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AugmentedPrompt();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E477C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AugmentedPrompt();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E4820(uint64_t a1)
{
  result = sub_19A419D98(&qword_1EAFA1480, type metadata accessor for TextPrompt);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A2E4878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneratedImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E4934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneratedImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E49EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E4A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA14D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19A2E4ACC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_19A2E4B14(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_19A2E4B58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_19A2E4C14(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E4CC8(uint64_t a1)
{
  result = sub_19A433FA0(&qword_1EAF9F298, type metadata accessor for InProcessWordCloudGeneratorOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A2E4D38(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_19A57112C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E4DE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_19A57112C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E4E88()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_19A33EFC4(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E4ED0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E4F8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E503C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E5074(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E5130(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E51E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A570BEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A2E524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A570BEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A2E52D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_19A57112C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E5384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_19A57112C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E5504(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E55B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E5670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E5720()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E577C()
{
  v17 = sub_19A571C6C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_19A571DFC();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_19A57102C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v13 | 7);
}

uint64_t sub_19A2E598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GenerationRecipe(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19A2E5A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GenerationRecipe(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19A2E5BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19A2E5C5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E5D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E5E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_19A2E5F0C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t sub_19A2E5F94()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_19A2E6034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E6100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E61DC(uint64_t a1)
{
  result = sub_19A485C10(&qword_1EAF9F248, type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A2E6234()
{
  if (*(v0 + 24) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_19A2E6278(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for GenerationRecipe(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_19A2E6408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for GenerationRecipe(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_19A2E658C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E65C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A2E6604()
{
  v1 = (type metadata accessor for GeneratedImage() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[7];
  v6 = *(type metadata accessor for ImageProvenance() + 20);
  v7 = sub_19A57102C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_19A2E675C()
{
  v1 = (type metadata accessor for GeneratedImage() - 8);
  v32 = *(*v1 + 80);
  v2 = (v32 + 32) & ~v32;
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for GenerationRecipe(0);
  v31 = *(*(v4 - 1) + 80);
  v5 = (v3 + v31 + 16) & ~v31;
  v30 = *(*(v4 - 1) + 64);
  swift_unknownObjectRelease();

  v6 = v0 + v2 + v1[7];
  v7 = *(type metadata accessor for ImageProvenance() + 20);
  v8 = sub_19A57102C();
  v9 = v6 + v7;
  v10 = *(*(v8 - 8) + 8);
  v10(v9, v8);

  v11 = v5;

  v12 = v0 + v5;
  v13 = v0 + v5 + v4[5];

  v14 = v13 + *(_s23GenerationConfigurationVMa() + 52);
  v15 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = sub_19A570EAC();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  v17 = v12 + v4[8];
  v18 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    v20 = *(*(v19 - 8) + 8);
    v20(v17, v19);
    v21 = v19;
    v11 = v5;
    v20(v17 + *(v18 + 20), v21);
  }

  if (*(v12 + v4[14]))
  {
  }

  v10(v12 + v4[18], v8);

  v22 = *(v12 + v4[21] + 24);
  if (v22)
  {
  }

  v23 = *(v12 + v4[22] + 24);
  if (v23)
  {
  }

  v24 = v12 + v4[23];
  v25 = *(v24 + 24);
  if (v25)
  {
  }

  if (*(v12 + v4[30] + 16) != 1)
  {
  }

  v26 = (v30 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 103) & 0xFFFFFFFFFFFFFFF8;
  v28 = v0 + v26;

  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 56);

  return MEMORY[0x1EEE6BDD0](v0, v27 + 8, v32 | v31 | 7);
}

uint64_t sub_19A2E6C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E6CA0()
{
  v1 = (type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_19A570EAC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_19A2E6DCC()
{
  v1 = *(type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ConcreteAdapter();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  v10 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v11 = &unk_1EAFA2608;
  }

  else
  {

    v11 = &unk_1EAFA2600;
  }

  v12 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v11) + 48);
  if (!(*(v6 + 48))(v12, 1, v5))
  {
    v13 = *(v5 + 20);
    v14 = sub_19A570EAC();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
    v15 = (v12 + *(v5 + 24));
    if (v15[1] != 1)
    {
    }

    if (v15[5])
    {
    }

    if (v15[25] != 1)
    {
    }
  }

  v16 = *(v5 + 20);
  v17 = sub_19A570EAC();
  (*(*(v17 - 8) + 8))(v0 + v8 + v16, v17);
  v18 = (v0 + v8 + *(v5 + 24));
  if (v18[1] != 1)
  {
  }

  if (v18[5])
  {
  }

  if (v18[25] != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v2 | v7 | 7);
}

uint64_t sub_19A2E71B0()
{
  v1 = (type metadata accessor for ConcreteAdapter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v1[7];
  v6 = sub_19A570EAC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = (v0 + v3 + v1[8]);
  if (v7[1] != 1)
  {
  }

  if (v7[5])
  {
  }

  if (v7[25] != 1)
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 40, v2 | 7);
}

uint64_t sub_19A2E7398()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2E73D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v5 = (v3 + *(result + 28));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A2E7424(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v6 = v4 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  return result;
}

uint64_t sub_19A2E749C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v5 = (v3 + *(result + 44));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 4);
  *a2 = v6;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_19A2E74F0(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a2 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v6 = v4 + *(result + 44);
  *v6 = v2;
  *(v6 + 4) = v3;
  return result;
}

uint64_t sub_19A2E7548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v5 = (v3 + *(result + 48));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 4);
  *a2 = v6;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_19A2E759C(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a2 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v6 = v4 + *(result + 48);
  *v6 = v2;
  *(v6 + 4) = v3;
  return result;
}

uint64_t sub_19A2E75F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  *a2 = *(v3 + *(result + 20) + 50);
  return result;
}

uint64_t sub_19A2E7640(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for DefinitionSession() + 88);
  result = type metadata accessor for GenerationRecipe(0);
  *(v3 + *(result + 20) + 50) = v2;
  return result;
}

uint64_t sub_19A2E7688(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_19A57102C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for UserPromptRewriter();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v15 = _s17AssignmentOptionsVMa();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[11]);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1020);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[17];
      goto LABEL_9;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28C0);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[18];
      goto LABEL_9;
    }

    v20 = type metadata accessor for GenerationRecipe(0);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[22];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_19A2E7940(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for UserPromptRewriter();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  result = _s17AssignmentOptionsVMa();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1020);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[17];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28C0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v20 = type metadata accessor for GenerationRecipe(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[22];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_19A2E7BF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E7C30()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_6;
    }
  }

  if (*(v0 + 32))
  {
  }

LABEL_6:

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A2E7C90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19A2E7D4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E7DFC()
{
  v1 = type metadata accessor for GenerationRecipe(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  }

  v5 = v0 + v3;
  v6 = v0 + v3 + v1[5];

  v7 = v6 + *(_s23GenerationConfigurationVMa() + 52);
  v8 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_19A570EAC();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = v5 + v1[8];
  v11 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = v4;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    v14 = *(*(v13 - 8) + 8);
    v14(v10, v13);
    v15 = v13;
    v4 = v12;
    v3 = (v2 + 88) & ~v2;
    v14(v10 + *(v11 + 20), v15);
  }

  if (*(v5 + v1[14]))
  {
  }

  v16 = v1[18];
  v17 = sub_19A57102C();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  v18 = *(v5 + v1[21] + 24);
  if (v18)
  {
  }

  v19 = *(v5 + v1[22] + 24);
  if (v19)
  {
  }

  v20 = v5 + v1[23];
  v21 = *(v20 + 24);
  if (v21)
  {
  }

  if (*(v5 + v1[30] + 16) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A2E81B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E826C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E8320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneratedImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_19A2E83DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneratedImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E84E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleDiffusionUnet();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_19A57236C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19A2E8608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppleDiffusionUnet();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_19A57236C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19A2E872C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E87F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E88B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_19A2E88FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E89B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E8ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_19A2E8AF8(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_19A2E8B10(a1);
  }
}

uint64_t sub_19A2E8B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PipelineConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A2E8BD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PipelineConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A2E8C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_19A2E8CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E8D70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A570EAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E8E2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E8E64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2E8E9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_19A570EAC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A2E9004()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_19A570EAC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_19A2E91C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_19A2E928C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E9350()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_19A2E939C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[35];

  return v15(v16, a2, v14);
}

uint64_t sub_19A2E952C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[35];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_19A2E96BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_19A2E9784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A2E9908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A570EAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E99CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase05AppleA13ModelMetadataV13SchedulerInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A2E9AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 40);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_19A2E9BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A570EAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 40) = a2;
  }

  return result;
}

uint64_t sub_19A2E9C94()
{
  v1 = sub_19A570EAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A2E9DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19A2E9E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A570EAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A2E9F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19A2EA004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A570EAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19A2EA0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A5714FC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A2EA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A5714FC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A2EA19C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A2EA1D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A2EA224()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A2EA288()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3840);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_19A2EA2B8()
{
  v1 = (type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = v0 + v3;

  v7 = v1[7];
  v8 = sub_19A570EAC();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);

  v9(v0 + v5 + v1[7], v8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v2 | 7);
}

uint64_t sub_19A2EA460(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19A2EA4C4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonIndications.Indication(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PersonIndications.Indication(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_19A2EA648(uint64_t a1, int a2)
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

uint64_t sub_19A2EA668(uint64_t result, int a2, int a3)
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

uint64_t sub_19A2EA6C8()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t sub_19A2EA73C()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t sub_19A2EA850(uint64_t a1, id *a2)
{
  result = sub_19A572CDC();
  *a2 = 0;
  return result;
}

uint64_t sub_19A2EA8C8(uint64_t a1, id *a2)
{
  v3 = sub_19A572CEC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19A2EA948@<X0>(uint64_t *a1@<X8>)
{
  sub_19A572CFC();
  v2 = sub_19A572CCC();

  *a1 = v2;
  return result;
}

_DWORD *sub_19A2EA98C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_19A2EAB78()
{
  sub_19A5740BC();
  swift_getWitnessTable();
  sub_19A57151C();
  return sub_19A57410C();
}

uint64_t sub_19A2EABDC(uint64_t a1)
{
  v2 = sub_19A2EB008(&qword_1EAF9FB18, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_19A2EB008(&qword_1EAF9FB20, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19A2EAC98(uint64_t a1)
{
  v2 = sub_19A2EB008(&qword_1EAF9FB28, type metadata accessor for NLTagScheme);
  v3 = sub_19A2EB008(&unk_1EAF9FB30, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19A2EAD54(uint64_t a1)
{
  v2 = sub_19A2EB008(&qword_1EAF9F078, type metadata accessor for Key);
  v3 = sub_19A2EB008(&qword_1EAF9FB40, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19A2EAE10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_19A572CCC();

  *a1 = v2;
  return result;
}

uint64_t sub_19A2EAE58(uint64_t a1)
{
  v2 = sub_19A2EB008(&qword_1EAF9FB48, type metadata accessor for CIImageOption);
  v3 = sub_19A2EB008(&unk_1EAF9FB50, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19A2EB008(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19A2EB25C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_19A2EB458()
{
  v0 = sub_19A572CFC();
  v1 = MEMORY[0x19A900AD0](v0);

  return v1;
}

uint64_t sub_19A2EB494()
{
  sub_19A572CFC();
  sub_19A572E4C();
}

uint64_t sub_19A2EB4E8()
{
  sub_19A572CFC();
  sub_19A5740BC();
  sub_19A572E4C();
  v0 = sub_19A57410C();

  return v0;
}

uint64_t sub_19A2EB55C()
{
  v0 = sub_19A572CFC();
  v2 = v1;
  if (v0 == sub_19A572CFC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19A573F1C();
  }

  return v5 & 1;
}

void sub_19A2EB8AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69AE308]) initWithModelType:a2 safetyType:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19A576E00;
  *(v13 + 32) = v12;
  sub_19A2F1600(0, &qword_1EAF9F0A8);
  v14 = v12;
  v15 = sub_19A57307C();

  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_19A2F1514;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A3B899C;
  aBlock[3] = &block_descriptor_23;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  [a3 performRequests:v15 onPixelBuffer:v21 withOrientation:1 andIdentifier:0 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_19A2EBB34(int a1, id a2, int a3, id a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);
    v7 = v4;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [a4 error];
  if (v11)
  {
    v12 = v11;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);
    v4 = v12;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_19A2DE000, v8, v9, "MADImageCaptionRequest failed with error: %@", v14, 0xCu);
    sub_19A2F3FA0(v15, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v15, -1, -1);
    MEMORY[0x19A902C50](v14, -1, -1);
LABEL_11:

    v32 = v4;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD30);
    return sub_19A57315C();
  }

  v19 = [a4 results];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  sub_19A2F1600(0, &qword_1EAF9F030);
  v21 = sub_19A57308C();

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_23:

    goto LABEL_24;
  }

  result = sub_19A573B4C();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x19A901520](0, v21);
    goto LABEL_19;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_19:
    v23 = v22;

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v32 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD30);
      return sub_19A57316C();
    }

LABEL_24:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v25 = sub_19A5723FC();
    __swift_project_value_buffer(v25, qword_1ED82BCF0);
    v26 = sub_19A5723DC();
    v27 = sub_19A57355C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_19A31F114(0xD000000000000075, 0x800000019A595E30, &v32);
      _os_log_impl(&dword_19A2DE000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x19A902C50](v29, -1, -1);
      MEMORY[0x19A902C50](v28, -1, -1);
    }

    sub_19A2F1130();
    v30 = swift_allocError();
    *v31 = 0xD000000000000075;
    *(v31 + 8) = 0x800000019A595E30;
    *(v31 + 16) = 1;
    v32 = v30;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_19A2EBFE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD18);
  v35 = *(v5 - 8);
  v36 = v5;
  v32 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - v6;
  v7 = sub_19A57114C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E69AE3C8]) init];
  v15 = sub_19A2EC3F8(a2);
  sub_19A2F4194(&qword_1EAF9FD20, MEMORY[0x1E6969B50]);
  sub_19A57387C();
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v18 = *v17++;
      aBlock[6] = v18;
      sub_19A57385C();
      --v16;
    }

    while (v16);
  }

  (*(v8 + 32))(v13, v11, v7);
  v19 = sub_19A57113C();
  (*(v8 + 8))(v13, v7);
  [v14 setDomains_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19A576E00;
  *(v20 + 32) = v14;
  sub_19A2F1600(0, &qword_1EAF9F0A8);
  v21 = v14;
  v22 = sub_19A57307C();

  v23 = v35;
  v24 = v33;
  v25 = v36;
  (*(v35 + 16))(v33, v34, v36);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = (v32 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + v26, v24, v25);
  *(v28 + v27) = v21;
  aBlock[4] = sub_19A2F1430;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A3B899C;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);
  v30 = v21;

  [v37 performRequests:v22 onPixelBuffer:v38 withOrientation:1 andIdentifier:0 completionHandler:v29];
  _Block_release(v29);
}

uint64_t sub_19A2EC3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_19A3225A0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_19A57389C();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    if (v11 < 0)
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_19A3225A0((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_25;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_26;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_19A2F1470(result, v12, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_20;
        }
      }

      sub_19A2F1470(result, v12, 0);
LABEL_20:
      v6 = v24;
    }

    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_19A2EC618(int a1, id a2, int a3, id a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);
    v7 = v4;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [a4 error];
  if (v11)
  {
    v12 = v11;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);
    v4 = v12;
    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_19A2DE000, v8, v9, "MADRichLabelClassificationRequest failed with error: %@", v14, 0xCu);
    sub_19A2F3FA0(v15, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v15, -1, -1);
    MEMORY[0x19A902C50](v14, -1, -1);
LABEL_11:

    v27 = v4;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD18);
    return sub_19A57315C();
  }

  v19 = [a4 richLabelResult];
  if (!v19)
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v20 = sub_19A5723FC();
    __swift_project_value_buffer(v20, qword_1ED82BCF0);
    v21 = sub_19A5723DC();
    v22 = sub_19A57355C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_19A31F114(0xD000000000000059, 0x800000019A595DD0, &v27);
      _os_log_impl(&dword_19A2DE000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x19A902C50](v24, -1, -1);
      MEMORY[0x19A902C50](v23, -1, -1);
    }

    sub_19A2F1130();
    v25 = swift_allocError();
    *v26 = 0xD000000000000059;
    *(v26 + 8) = 0x800000019A595DD0;
    *(v26 + 16) = 1;
    v27 = v25;
    goto LABEL_12;
  }

  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD18);
  return sub_19A57316C();
}

uint64_t sub_19A2ECA0C(uint64_t a1)
{

  v3 = sub_19A41EF90(v2);
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  do
  {
    if (!v7)
    {
      do
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_19;
        }

        if (v17 >= v8)
        {

          return v11;
        }

        v7 = *(v4 + 8 * v17);
        ++v10;
      }

      while (!v7);
      v10 = v17;
      if (*(a1 + 16))
      {
        goto LABEL_8;
      }

LABEL_4:
      v12 = 0;
      goto LABEL_5;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_8:

    v15 = sub_19A31F9C8(v14);
    if (v16)
    {
      v12 = *(*(a1 + 56) + 8 * v15);
    }

    else
    {
      v12 = 0;
    }

LABEL_5:
    v7 &= v7 - 1;
    v13 = __OFADD__(v11, v12);
    v11 += v12;
  }

  while (!v13);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A2ECB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = sub_19A572F9C();
  v8 = MEMORY[0x19A900970](v7);
  v10 = v9;

  v11 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_19A31CE20(0, *(v11 + 2) + 1, 1, v11);
    *a6 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_19A31CE20((v13 > 1), v14 + 1, 1, v11);
    *a6 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v8;
  *(v15 + 5) = v10;
  return 1;
}

uint64_t sub_19A2ECC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v23 = a3;
  v22 = a2;
  while (1)
  {
    v10 = sub_19A2EF6C8(a1 + 32, v8, (2 * v7) | 1, a2, a3);
    if (v3)
    {

      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    v13 = v11;

    if (v13)
    {

LABEL_17:
      sub_19A5741BC();
      return swift_bridgeObjectRelease_n();
    }

    if (v7 < v12)
    {
      break;
    }

    if (v12 < 0)
    {
      goto LABEL_20;
    }

    sub_19A2EF780(a1, a1 + 32, v12, (2 * v7) | 1, a2, a3);
    v16 = v15;
    result = swift_unknownObjectRelease();
    v17 = v16 >> 1;
    if (v16 >> 1 < v12)
    {
      goto LABEL_21;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_19A31CF2C((v18 > 1), v19 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v19 + 1;
    v20 = v9 + 16 * v19;
    *(v20 + 32) = v12;
    *(v20 + 40) = v17;
    if (v17 >= v7)
    {
      goto LABEL_17;
    }

    v8 = v17 + 1;
    v21 = v7 < (v17 + 1);
    a3 = v23;
    a2 = v22;
    if (v21)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_19A2ECDFC()
{
  v5 = MEMORY[0x1E69E7CD0];
  result = sub_19A4727CC(0xD000000000000018, 0x800000019A595CE0);
  while (1)
  {
    sub_19A2EF668(result);

    sub_19A421234(&unk_1F0DA77B0);

    sub_19A2F132C(&unk_1F0DA77D0);
    v3 = v5;
    v4 = *(v5 + 16);
    if (!v4)
    {
      break;
    }

    v1 = sub_19A31EE8C(v4, 0);
    v2 = sub_19A32E7DC(&v5, v1 + 4, v4, v3);
    result = sub_19A2EA480();
    if (v2 == v4)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_6:
  qword_1EAF9FC80 = v1;
  return result;
}

uint64_t sub_19A2ECF0C()
{
  v2 = MEMORY[0x1E69E7CD0];
  v0 = sub_19A472514(0xD000000000000021, 0x800000019A595CB0);
  sub_19A2EF5F8(v0);

  sub_19A4210F8(0, 0xE000000000000000);

  qword_1EAF9FC88 = v2;
  return result;
}

uint64_t sub_19A2ECFB4()
{
  v2 = MEMORY[0x1E69E7CD0];
  v0 = sub_19A472514(0xD000000000000026, 0x800000019A595D00);
  sub_19A2EF5F8(v0);

  sub_19A4210F8(0, 0xE000000000000000);

  qword_1EAFCA270 = v2;
  return result;
}

uint64_t sub_19A2ED05C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_19A2ED1FC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_19A2F1380(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x19A902C50](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_19A2ED1FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_19A5740BC();

          sub_19A572E4C();
          v13 = sub_19A57410C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_19A573F1C() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_19A2ED3DC(v25, a2, v24, a4);
}

uint64_t sub_19A2ED3DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCF8);
  result = sub_19A57391C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_19A5740BC();

    sub_19A572E4C();
    result = sub_19A57410C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_19A2ED600(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_19A57112C();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD50);
  result = sub_19A57391C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_19A2F4194(&qword_1EAF9F8D8, MEMORY[0x1E6969770]);
    result = sub_19A572B3C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_19A2ED944()
{
  v9 = v0;
  v8 = vdupq_n_s64(0x80uLL);
  v1 = sub_19A3941B4(&v8, 0x42475241u);
  v0[3] = v1;
  v2 = v1;
  v3 = [objc_opt_self() service];
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = 3;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_19A2F1600(0, &qword_1EAF9F090);
  *v5 = v0;
  v5[1] = sub_19A2EDC14;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x800000019A595D30, sub_19A2F41E0, v4, v6);
}

uint64_t sub_19A2EDC14()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_19A2EDDA4;
  }

  else
  {

    v3 = sub_19A2EDD3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A2EDD3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A2EDDA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1ED82BCF0);
  v4 = v2;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Failed to prewarm captioning model, error: %{public}@", v7, 0xCu);
    sub_19A2F3FA0(v8, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A2EDF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A2EDF74, 0, 0);
}

uint64_t sub_19A2EDF74()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_19A2F1600(0, &qword_1EAF9FD08);
  *v3 = v0;
  v3[1] = sub_19A2EE088;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000004DLL, 0x800000019A595D60, sub_19A2F1424, v2, v4);
}

uint64_t sub_19A2EE088()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_19A2EE25C;
  }

  else
  {

    v2 = sub_19A2EE1A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2EE1A4()
{
  v1 = *(v0 + 16);
  v2 = [v1 resultItems];
  sub_19A2F1600(0, &qword_1EAF9FD10);
  v3 = sub_19A57308C();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_19A2EE25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A2EE2C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v1 = sub_19A572CCC();
  [v0 setString_];

  v3 = MEMORY[0x1E69E7CC0];
  sub_19A5734AC();

  return v3;
}

uint64_t sub_19A2EE3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A2EE3D0, 0, 0);
}

uint64_t sub_19A2EE3D0()
{
  v37 = v0;
  v1 = sub_19A2EE2C0();
  v0[11] = v1;
  v34 = v1;
  if (v1)
  {
    v33 = v0 + 2;
    v2 = sub_19A32F7D8(qword_1F0DA7770);
    v0[12] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD00);
    swift_arrayDestroy();
    v35 = v0;
    v0[4] = MEMORY[0x1E69E7CD0];
    v3 = v2 + 8;
    v4 = -1;
    v5 = -1 << *(v2 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & v2[8];
    v7 = (63 - v5) >> 6;

    v9 = 0;
    v29 = v7;
    v30 = v2 + 8;
    v31 = v2;
LABEL_7:
    if (v6)
    {
      v10 = v9;
LABEL_12:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (v10 << 9) | (8 * v11);
      v32 = *(v2[6] + v12);
      v13 = *(v2[7] + v12);
      v14 = *(v13 + 16);

      v15 = (v13 + 40);
      v16 = -v14;
      v17 = -1;
      while (1)
      {
        if (v16 + v17 == -1)
        {

LABEL_6:
          v9 = v10;
          v3 = v30;
          v2 = v31;
          v7 = v29;
          goto LABEL_7;
        }

        if (++v17 >= *(v13 + 16))
        {
          break;
        }

        v18 = v15 + 2;
        v19 = *v15;
        v35[2] = *(v15 - 1);
        v35[3] = v19;
        v20 = swift_task_alloc();
        *(v20 + 16) = v33;

        v21 = sub_19A374F10(sub_19A2F13CC, v20, v34);

        v15 = v18;
        if (v21)
        {

          result = sub_19A322920(&v36, v32);
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          v0 = v35;
          v22 = v35[4];
          v35[13] = v22;
          if (!*(v22 + 16))
          {
            v27 = v35[9];

            v26 = v27;
            v1 = v35[8];
            goto LABEL_23;
          }

          v23 = swift_task_alloc();
          v35[14] = v23;
          *v23 = v35;
          v23[1] = sub_19A2EE700;
          v24 = v35[10];
          v25 = v35[7];

          return sub_19A2EDF50(v25, v22, v24);
        }

        v6 = v3[v10];
        ++v9;
        if (v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
LABEL_23:
    v28 = v0[1];

    return v28(v1, v26);
  }

  return result;
}

uint64_t sub_19A2EE700(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {

    v4 = sub_19A2EEF54;
  }

  else
  {
    v4 = sub_19A2EE854;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A2EE854()
{
  v62 = v0;
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_46:
    v3 = v0[11];
LABEL_47:

    v0[6] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v38 = sub_19A572BEC();
    v37 = v39;

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v40 = sub_19A5723FC();
    __swift_project_value_buffer(v40, qword_1ED82BCF0);

    v41 = sub_19A5723DC();
    v42 = sub_19A57356C();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = v0[8];
      v43 = v0[9];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136380931;
      *(v45 + 4) = sub_19A31F114(v44, v43, &v61);
      *(v45 + 12) = 2081;
      *(v45 + 14) = sub_19A31F114(v38, v37, &v61);
      _os_log_impl(&dword_19A2DE000, v41, v42, "Original caption: %{private}s. Enriched caption: %{private}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v46, -1, -1);
      MEMORY[0x19A902C50](v45, -1, -1);
    }

    goto LABEL_52;
  }

LABEL_45:
  if (!sub_19A573B4C())
  {
    goto LABEL_46;
  }

LABEL_3:
  v2 = 0;
  v53 = v1 & 0xFFFFFFFFFFFFFF8;
  v54 = v1 & 0xC000000000000001;
  v3 = v0[11];
  v51 = v0[15] + 32;
  v52 = v0[12];
LABEL_6:
  v56 = v3 + 40;
  while (1)
  {
    if (v54)
    {
      v4 = MEMORY[0x19A901520](v2, v0[15]);
    }

    else
    {
      if (v2 >= *(v53 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v4 = *(v51 + 8 * v2);
    }

    v5 = v4;
    if (__OFADD__(v2++, 1))
    {
      goto LABEL_43;
    }

    v7 = [v4 domain];
    v8 = [v5 displayLabel];
    v57 = sub_19A572CFC();
    v10 = v9;

    if (!*(v52 + 16))
    {
      break;
    }

    v1 = v0[12];
    v11 = sub_19A31F95C(v7);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v58 = v5;
    v13 = *(*(v0[12] + 56) + 8 * v11);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = *(v3 + 2);
      v55 = v13 + 32;
      v59 = v3;
      while (!v16)
      {
LABEL_15:
        ++v15;
        v3 = v59;
        if (v15 == v14)
        {
          goto LABEL_25;
        }
      }

      v17 = 0;
      v18 = v56;
      v19 = (v55 + 16 * v15);
      v1 = *v19;
      v20 = v19[1];
      while (1)
      {
        v21 = *(v18 - 1) == v1 && *v18 == v20;
        if (v21 || (sub_19A573F1C() & 1) != 0)
        {
          break;
        }

        ++v17;
        v18 += 16;
        if (v16 == v17)
        {
          goto LABEL_15;
        }
      }

      v0 = v50;
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v22 = sub_19A5723FC();
      __swift_project_value_buffer(v22, qword_1ED82BCF0);

      v23 = sub_19A5723DC();
      v24 = sub_19A57353C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v61 = v26;
        *v25 = 136380931;
        v50[5] = v7;
        v27 = sub_19A573EDC();
        v29 = sub_19A31F114(v27, v28, &v61);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2081;
        v30 = v57;
        *(v25 + 14) = sub_19A31F114(v57, v10, &v61);
        _os_log_impl(&dword_19A2DE000, v23, v24, "For domain %{private}s, inserted displayLabel %{private}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v26, -1, -1);
        MEMORY[0x19A902C50](v25, -1, -1);

        v31 = v49;
      }

      else
      {

        v31 = v49;
        v30 = v57;
      }

      v3 = v59;
      v1 = *(v59 + 2);
      if (v1 < v17)
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v59;
      if (!isUniquelyReferenced_nonNull_native || v1 >= *(v59 + 3) >> 1)
      {
        v3 = sub_19A31CE20(isUniquelyReferenced_nonNull_native, v1 + 1, 1, v59);
        v60 = v3;
      }

      v1 = &v60;
      sub_19A415B28(v17, v17, 1, v30, v10);

      if (v2 == v31)
      {
        goto LABEL_47;
      }

      goto LABEL_6;
    }

LABEL_25:

    v0 = v50;
    if (v2 == v49)
    {
      goto LABEL_47;
    }
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v33 = sub_19A5723FC();
  __swift_project_value_buffer(v33, qword_1ED82BCF0);
  v34 = sub_19A5723DC();
  v35 = sub_19A57355C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_19A2DE000, v34, v35, "No domain keywords for a domain that we had found initially? This makes no sense and suggests programmer error.", v36, 2u);
    MEMORY[0x19A902C50](v36, -1, -1);
  }

  v37 = v0[9];

  v38 = v0[8];

LABEL_52:
  v47 = v0[1];

  return v47(v38, v37);
}

uint64_t sub_19A2EEF6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = v3;
  *(v2 + 120) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_19A2EEF98, 0, 0);
}

uint64_t sub_19A2EEF98()
{
  sub_19A387F80();
  v0[5] = v1;
  v2 = v1;
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = 3;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_19A2F1600(0, &qword_1EAF9F090);
  *v5 = v0;
  v5[1] = sub_19A2EF118;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x800000019A595D30, sub_19A2F13C0, v4, v6);
}

uint64_t sub_19A2EF118()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_19A2EF378;
  }

  else
  {

    v2 = sub_19A2EF234;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2EF234()
{
  v1 = v0[2];
  v0[9] = v1;
  v2 = [v1 caption];
  if (v2)
  {
    v3 = v2;
    v4 = sub_19A572CFC();
    v6 = v5;

    v0[10] = v6;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_19A2EF3E0;
    v8 = v0[5];
    v9 = v0[3];

    return sub_19A2EE3AC(v8, v4, v6, v9);
  }

  else
  {
    v11 = v0[5];

    v12 = v0[1];

    return v12(0, 0);
  }
}

uint64_t sub_19A2EF378()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A2EF3E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_19A2EF588;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_19A2EF514;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19A2EF514()
{
  v1 = v0[9];
  v2 = v0[5];

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_19A2EF588()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A2EF5F8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_19A322A18(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_19A2EF668(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;

      sub_19A322B68(&v4, v3);

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_19A2EF6C8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v8 = a2;
    if (a2 <= v5)
    {
      v9 = a3 >> 1;
    }

    else
    {
      v9 = a2;
    }

    v10 = (result + 16 * a2 + 8);
    while (v9 != v8)
    {
      if (*(v10 - 1) == a4 && *v10 == a5)
      {
        return v8;
      }

      result = sub_19A573F1C();
      if (result)
      {
        return v8;
      }

      ++v8;
      v10 += 2;
      if (v5 == v8)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A2EF780(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 >> 1;
  v8 = a3;
  if (a4 >> 1 != a3)
  {
    v14 = result;
    if (a3 <= v7)
    {
      v11 = a4 >> 1;
    }

    else
    {
      v11 = a3;
    }

    v12 = (a2 + 16 * a3 + 8);
    v8 = a3;
    while (1)
    {
      if (v11 == v8)
      {
        __break(1u);
        goto LABEL_21;
      }

      result = *(v12 - 1);
      if (result != a5 || *v12 != a6)
      {
        result = sub_19A573F1C();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v8;
      v12 += 2;
      if (v7 == v8)
      {
        v8 = v7;
        break;
      }
    }

    result = v14;
    if (v8 >= a3)
    {
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  if (v7 < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 < v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A2EF894(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = a1[2];
  if (!v16)
  {
    return 0;
  }

  v17 = *(a2 + 16);
  if (v17 < v16)
  {
    return 0;
  }

  v42 = v13;
  v19 = a1;
  v20 = a1[4];
  v45 = a1;
  v46 = v20;
  v21 = a2;
  v44 = a2;
  v22 = v19[5];
  v47 = v5;
  v23 = v12;
  swift_bridgeObjectRetain_n();
  v24 = v21;
  v25 = v46;
  v46 = v4;
  v26 = v15;
  sub_19A2ECC14(v24, v25, v22);
  v27 = v46;

  v43 = v23;
  v41 = v26;
  sub_19A5741CC();
  v28 = v47;
  (*(v47 + 16))(v10, v7, v27);
  v29 = *(v8 + 36);
  sub_19A2F12E4(&qword_1EAF9E748, &qword_1EAF9FCE0);
  sub_19A5733DC();
  (*(v28 + 8))(v7, v27);
  v47 = 0;
  v30 = v44 + 32;
  v45 += 7;
  do
  {
LABEL_5:
    sub_19A57341C();
    if (*&v10[v29] == v48[0])
    {
      sub_19A2F3FA0(v10, &qword_1EAF9FCE8);
      (*(v42 + 8))(v41, v43);
      return v47;
    }

    v31 = sub_19A57345C();
    v34 = *v32;
    v33 = v32[1];
    v31(v48, 0);
    result = sub_19A57342C();
  }

  while (v34 == v33);
  if (v33 >= v34)
  {
    while (v34 < v33)
    {
      if (__OFADD__(v34, v16))
      {
        goto LABEL_30;
      }

      if (v17 >= (v34 + v16))
      {
        if (v16 != 1)
        {
          v36 = v45;
          v37 = 1;
          while (1)
          {
            v38 = v34 + v37;
            if (__OFADD__(v34, v37))
            {
              break;
            }

            if (v38 >= v17)
            {
              goto LABEL_28;
            }

            result = *(v36 - 1);
            v39 = (v30 + 16 * v38);
            if (result != *v39 || *v36 != v39[1])
            {
              result = sub_19A573F1C();
              if ((result & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            ++v37;
            v36 += 2;
            if (v16 == v37)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_9:
        if (__OFADD__(v47++, 1))
        {
          goto LABEL_31;
        }
      }

LABEL_10:
      if (++v34 == v33)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A2EFCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A32F8E0(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v7 = *i;

    v9 = sub_19A2EF894(v8, a2);
    if (v9 < 1)
    {

      goto LABEL_4;
    }

    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_19A31F9C8(v7);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v4[3] >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v12;
        sub_19A32BF00();
        v12 = v21;
        if (v18)
        {
LABEL_12:
          v20 = v12;

          *(v4[7] + 8 * v20) = v10;
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_19A3288B4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_19A31F9C8(v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }
    }

    if (v18)
    {
      goto LABEL_12;
    }

LABEL_14:
    v4[(v12 >> 6) + 8] |= 1 << v12;
    *(v4[6] + 8 * v12) = v7;
    *(v4[7] + 8 * v12) = v10;
    v22 = v4[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v4[2] = v23;
LABEL_4:
    if (!--v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A2EFE6C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v10 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v9 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
      sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
      v6 = sub_19A572BEC();
      v8 = v7;

      sub_19A322A18(&v9, v6, v8);

      --v3;
    }

    while (v3);
    return v10;
  }

  return result;
}

BOOL sub_19A2EFF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v93 = a4;
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = v87 - v7;
  v118 = sub_19A5728AC();
  v8 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v99 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCA0);
  MEMORY[0x1EEE9AC00](v112);
  v11 = v87 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCA8);
  v12 = MEMORY[0x1EEE9AC00](v88);
  v87[2] = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v87 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v114 = v87 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v87 - v19;
  v21 = sub_19A57288C();
  MEMORY[0x1EEE9AC00](v21);
  v24 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *a1;
  v89 = *(a1 + 8);
  v94 = a2;
  v95 = *(a2 + 16);
  if (!v95)
  {
LABEL_10:
    if (v93)
    {
      v42 = v92;
    }

    else
    {
      v42 = 0;
    }

    if (v93)
    {
      v43 = v93;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v44 = sub_19A2EE2C0();
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EAF9F910 != -1)
    {
      swift_once();
    }

    v46 = qword_1EAFCA270;

    v47 = *(sub_19A2ED05C(v45, v46) + 16);

    if (v47)
    {
      v48 = v90;
      v49 = v90;

      v50 = sub_19A421AC4(v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_19A576E10;
      *(v51 + 56) = &type metadata for InputImageCaptionPolicy;
      *(v51 + 64) = sub_19A2F1184();
      v52 = swift_allocObject();
      *(v51 + 32) = v52;
      *(v52 + 16) = v48;
      *(v52 + 24) = v89;
      *(v52 + 32) = v46;
      *(v52 + 40) = v42;
      *(v52 + 48) = v43;
      *(v52 + 56) = v50;
      v53 = type metadata accessor for GenerationState();
      v54 = v91;
      (*(*(v53 - 8) + 56))(v91, 1, 1, v53);
      v55 = type metadata accessor for PolicyViolationError();
      sub_19A2F4194(&qword_1EAF9EB20, type metadata accessor for PolicyViolationError);
      swift_allocError();
      *v56 = v51;
      sub_19A2F11D8(v54, v56 + *(v55 + 20));
      swift_willThrow();
      return v57;
    }

    if (qword_1EAF9F900 != -1)
    {
      swift_once();
    }

    v58 = qword_1EAF9FC80;
    v59 = sub_19A2EFCBC(qword_1EAF9FC80, v45);
    v60 = sub_19A2ECA0C(v59);
    if (v95)
    {

      if (v60 >= 1)
      {

        return 1;
      }

      goto LABEL_36;
    }

    if (!v60)
    {

      return 0;
    }

    v45 = sub_19A2EFE6C(v58);
    v68 = sub_19A41EF90(v59);
    v69 = v68;
    v70 = *(v68 + 16);
    if (v70)
    {
      v71 = sub_19A31EE8C(*(v68 + 16), 0);
      v72 = sub_19A32E7DC(&v116, v71 + 4, v70, v69);
      sub_19A2EA480();
      if (v72 != v70)
      {
        __break(1u);
LABEL_36:
        if (qword_1EAF9F908 != -1)
        {
          swift_once();
        }

        v73 = qword_1EAF9FC88;

        v74 = sub_19A2ED05C(v45, v73);

        v75 = *(v74 + 16);

        return v75 == 0;
      }
    }

    else
    {

      v71 = MEMORY[0x1E69E7CC0];
    }

    v76 = sub_19A2EFE6C(v71);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_19A576E20;
    *(v77 + 56) = &type metadata for InputImageCaptionPolicy;
    *(v77 + 64) = sub_19A2F1184();
    v78 = swift_allocObject();
    *(v77 + 32) = v78;
    v79 = v90;
    *(v78 + 16) = v90;
    v80 = v89;
    *(v78 + 24) = v89;
    *(v78 + 32) = v45;
    *(v78 + 40) = v42;
    *(v78 + 48) = v43;
    *(v78 + 56) = v76;
    *(v77 + 96) = &type metadata for InputImageFacesPolicy;
    *(v77 + 104) = sub_19A2F1248();
    v81 = swift_allocObject();
    *(v77 + 72) = v81;
    *(v81 + 16) = v79;
    *(v81 + 24) = v80;
    *(v81 + 32) = xmmword_19A576E30;
    *(v81 + 48) = v94;
    v82 = type metadata accessor for GenerationState();
    v83 = v91;
    (*(*(v82 - 8) + 56))(v91, 1, 1, v82);
    v84 = type metadata accessor for PolicyViolationError();
    sub_19A2F4194(&qword_1EAF9EB20, type metadata accessor for PolicyViolationError);
    swift_allocError();
    *v85 = v77;
    sub_19A2F11D8(v83, v85 + *(v84 + 20));
    swift_willThrow();
    v86 = v79;

    return v57;
  }

  v26 = *(v23 + 16);
  v25 = v23 + 16;
  v107 = v26;
  v27 = v94 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
  v106 = *MEMORY[0x1E6984398];
  v105 = *MEMORY[0x1E6984370];
  v103 = (v8 + 56);
  v104 = (v8 + 104);
  v102 = (v8 + 48);
  v96 = (v8 + 32);
  v98 = (v8 + 8);
  v108 = v25;
  v109 = (v25 - 8);
  v101 = *(v25 + 56);
  v28 = v95;
  v97 = v16;
  v113 = v11;
  v110 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v21;
  while (1)
  {
    v115 = v28;
    v107(v24, v27, v21);
    sub_19A57287C();
    v30 = sub_19A5728CC();
    v31 = v20;
    v32 = v114;
    (*(*(v30 - 8) + 104))(v114, v106, v30);
    v33 = v118;
    (*v104)(v32, v105, v118);
    (*v103)(v32, 0, 1, v33);
    v34 = *(v112 + 48);
    sub_19A2F10C0(v31, v11);
    sub_19A2F10C0(v32, &v11[v34]);
    v35 = *v102;
    if ((*v102)(v11, 1, v33) != 1)
    {
      break;
    }

    sub_19A2F3FA0(v32, &qword_1EAF9FCA8);
    sub_19A2F3FA0(v31, &qword_1EAF9FCA8);
    if (v35(&v11[v34], 1, v118) != 1)
    {
      goto LABEL_29;
    }

    v20 = v31;
    sub_19A2F3FA0(v11, &qword_1EAF9FCA8);
    v21 = v111;
    v36 = v115;
LABEL_3:
    v29 = v110;
    (*v109)(v110, v21);
    v24 = v29;
    v27 += v101;
    v28 = v36 - 1;
    v11 = v113;
    if (!v28)
    {
      goto LABEL_10;
    }
  }

  v37 = v97;
  sub_19A2F10C0(v11, v97);
  if (v35(&v11[v34], 1, v118) != 1)
  {
    v38 = &v11[v34];
    v39 = v118;
    v40 = v99;
    (*v96)(v99, v38, v118);
    sub_19A2F4194(&qword_1EAF9FCD0, MEMORY[0x1E6984378]);
    v100 = sub_19A572C2C();
    v41 = *v98;
    (*v98)(v40, v39);
    sub_19A2F3FA0(v114, &qword_1EAF9FCA8);
    v20 = v31;
    sub_19A2F3FA0(v31, &qword_1EAF9FCA8);
    v41(v37, v39);
    sub_19A2F3FA0(v113, &qword_1EAF9FCA8);
    v21 = v111;
    v36 = v115;
    if ((v100 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_3;
  }

  sub_19A2F3FA0(v114, &qword_1EAF9FCA8);
  sub_19A2F3FA0(v31, &qword_1EAF9FCA8);
  (*v98)(v37, v118);
LABEL_29:
  sub_19A2F3FA0(v11, &qword_1EAF9FCA0);
  v21 = v111;
LABEL_30:
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD00000000000004BLL, 0x800000019A595C60);
  v62 = v109;
  v61 = v110;
  sub_19A57287C();
  v63 = sub_19A572DAC();
  MEMORY[0x19A900A50](v63);

  v64 = v116;
  v65 = v117;
  sub_19A2F1130();
  swift_allocError();
  *v66 = v64;
  *(v66 + 8) = v65;
  *(v66 + 16) = 1;
  swift_willThrow();
  (*v62)(v61, v21);
  return v57;
}

BOOL sub_19A2F0C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v33[-v10];
  v47 = sub_19A5727BC();
  v11 = *(v47 - 8);
  v12 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v33[-v14];
  v44 = sub_19A57288C();
  v15 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a2 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v34 = v19;
    v35 = v18;
    v36 = a3;
    v37 = a4;
    v38 = v4;
    v50 = MEMORY[0x1E69E7CC0];
    sub_19A3225E0(0, v20, 0);
    v21 = v50;
    v42 = (v11 + 16);
    v41 = *MEMORY[0x1E6984398];
    v39 = v15 + 32;
    v40 = (v11 + 8);
    v22 = a2 + 64;
    v43 = v15;
    do
    {
      v49 = v20;
      v52 = v21;

      v23 = v45;
      sub_19A57278C();
      v24 = v47;
      (*v42)(v46, v23, v47);
      v25 = sub_19A5728CC();
      v26 = *(v25 - 8);
      v27 = v48;
      (*(v26 + 104))(v48, v41, v25);
      (*(v26 + 56))(v27, 0, 1, v25);
      sub_19A57285C();

      v28 = v23;
      v21 = v52;
      (*v40)(v28, v24);
      v50 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_19A3225E0(v29 > 1, v30 + 1, 1);
        v21 = v50;
      }

      v22 += 48;
      *(v21 + 16) = v30 + 1;
      (*(v43 + 32))(v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v30, v17, v44);
      v20 = v49 - 1;
    }

    while (v49 != 1);
    a4 = v37;
    v18 = v35;
    a3 = v36;
    LOBYTE(v19) = v34;
  }

  v50 = v18;
  v51 = v19;
  v31 = sub_19A2EFF78(&v50, v21, a3, a4);

  return v31;
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

uint64_t sub_19A2F10C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A2F1130()
{
  result = qword_1EAF9FCB0;
  if (!qword_1EAF9FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9FCB0);
  }

  return result;
}

unint64_t sub_19A2F1184()
{
  result = qword_1EAF9FCC0;
  if (!qword_1EAF9FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9FCC0);
  }

  return result;
}

uint64_t sub_19A2F11D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A2F1248()
{
  result = qword_1EAF9FCC8;
  if (!qword_1EAF9FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9FCC8);
  }

  return result;
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

uint64_t sub_19A2F12E4(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_19A2F1380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_19A2ED1FC(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A2F1470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_16Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t sub_19A2F153C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t sub_19A2F1600(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19A2F1648(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for DetectedPeoplePolicy();
  v2[5] = swift_task_alloc();
  v3 = sub_19A571FCC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_19A57112C();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F1764, 0, 0);
}

uint64_t sub_19A2F1764()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for GeneratedImage() + 40));
  if (v2 <= 1)
  {
    if (!v2)
    {

      v3 = 0;
      goto LABEL_9;
    }

LABEL_5:
    v4 = sub_19A573F1C();

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v8 = v0[4];
      v7 = v0[5];
      sub_19A2F40CC(v0[2], v7, type metadata accessor for GeneratedImage);
      *(v7 + *(v8 + 20)) = sub_19A3796E4(&unk_1F0DA77E0);
      *(v7 + *(v8 + 24)) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_19A576E10;
      *(v3 + 56) = v8;
      *(v3 + 64) = sub_19A2F4194(&qword_1EAF9EC50, type metadata accessor for DetectedPeoplePolicy);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
      sub_19A2F4064(v7, boxed_opaque_existential_1, type metadata accessor for DetectedPeoplePolicy);
    }

LABEL_9:

    v10 = v0[1];

    return v10(v3);
  }

  if (v2 == 2)
  {
    goto LABEL_5;
  }

  sub_19A5710EC();
  sub_19A571FDC();
  swift_allocObject();
  v0[10] = sub_19A571F9C();
  v15 = *v0[2];
  v5 = v15;
  sub_19A387E74();
  v0[11] = v6;
  v12 = v6;

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_19A2F1ACC;
  v14 = v0[8];

  return MEMORY[0x1EEE33BD0](v14, v12);
}

uint64_t sub_19A2F1ACC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_19A2F1E10;
  }

  else
  {
    v2 = sub_19A2F1BE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2F1BE0()
{
  v1 = sub_19A571FAC();
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  if (v1)
  {
    (*(v4 + 8))(v0[8], v0[6]);

    v6 = 2;
  }

  else
  {
    v7 = sub_19A571FBC();

    (*(v4 + 8))(v3, v5);
    if ((v7 & 1) == 0)
    {

      goto LABEL_8;
    }

    v6 = 1;
  }

  v8 = sub_19A573F1C();

  if ((v8 & 1) == 0)
  {
    v10 = v0[4];
    v9 = v0[5];
    sub_19A2F40CC(v0[2], v9, type metadata accessor for GeneratedImage);
    *(v9 + *(v10 + 20)) = sub_19A3796E4(&unk_1F0DA77E0);
    *(v9 + *(v10 + 24)) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A576E10;
    *(v11 + 56) = v10;
    *(v11 + 64) = sub_19A2F4194(&qword_1EAF9EC50, type metadata accessor for DetectedPeoplePolicy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    sub_19A2F4064(v9, boxed_opaque_existential_1, type metadata accessor for DetectedPeoplePolicy);
    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  v13 = v0[1];

  return v13(v11);
}

uint64_t sub_19A2F1E10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A2F1EA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for DetectedPeoplePolicy();
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for GeneratedImage();
  v2[7] = swift_task_alloc();
  v3 = sub_19A571FCC();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_19A57112C();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F1FEC, 0, 0);
}

uint64_t sub_19A2F1FEC()
{
  v33 = v0;
  v1 = *(v0[2] + *(v0[6] + 40));
  if (v1 <= 1)
  {
    if (!*(v0[2] + *(v0[6] + 40)))
    {

      goto LABEL_8;
    }

    v2 = 0;
LABEL_7:
    v3 = sub_19A573F1C();

    if ((v3 & 1) == 0)
    {
      if (v2)
      {
      }

      else
      {
        v22 = sub_19A573F1C();

        if ((v22 & 1) == 0)
        {
LABEL_16:
          v21 = 0;
LABEL_19:

          v26 = v0[1];

          return v26(v21);
        }
      }

      v24 = v0[4];
      v23 = v0[5];
      sub_19A2F40CC(v0[2], v23, type metadata accessor for GeneratedImage);
      *(v23 + *(v24 + 20)) = sub_19A3796E4(&unk_1F0DA7808);
      *(v23 + *(v24 + 24)) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_19A576E10;
      *(v21 + 56) = v24;
      *(v21 + 64) = sub_19A2F4194(&qword_1EAF9EC50, type metadata accessor for DetectedPeoplePolicy);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
      sub_19A2F4064(v23, boxed_opaque_existential_1, type metadata accessor for DetectedPeoplePolicy);
      goto LABEL_19;
    }

LABEL_8:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[2];
    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1ED82BCF0);
    sub_19A2F40CC(v5, v4, type metadata accessor for GeneratedImage);
    v7 = sub_19A5723DC();
    v8 = sub_19A57356C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[7];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      v13 = GeneratedImage.description.getter();
      v15 = v14;
      sub_19A2F4134(v10, type metadata accessor for GeneratedImage);
      v16 = sub_19A31F114(v13, v15, &v31);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_19A2DE000, v7, v8, "The generated image from the personalization flow %s has no people detected. This is expected to sometimes occur.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x19A902C50](v12, -1, -1);
      MEMORY[0x19A902C50](v11, -1, -1);
    }

    else
    {

      sub_19A2F4134(v10, type metadata accessor for GeneratedImage);
    }

    goto LABEL_16;
  }

  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_7;
  }

  sub_19A5710EC();
  sub_19A571FDC();
  swift_allocObject();
  v0[12] = sub_19A571F9C();
  v17 = v0[2];
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v31 = v18;
  v32 = v17;
  v19 = v18;
  sub_19A387E74();
  v0[13] = v20;
  v28 = v20;

  v29 = swift_task_alloc();
  v0[14] = v29;
  *v29 = v0;
  v29[1] = sub_19A2F2548;
  v30 = v0[10];

  return MEMORY[0x1EEE33BD0](v30, v28);
}

uint64_t sub_19A2F2548()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_19A2F2A7C;
  }

  else
  {
    v2 = sub_19A2F265C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2F265C()
{
  v30 = v0;
  v1 = sub_19A571FAC();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  if (v1)
  {
    (*(v4 + 8))(v0[10], v0[8]);

    v6 = 2;
  }

  else
  {
    v7 = sub_19A571FBC();

    (*(v4 + 8))(v3, v5);
    if ((v7 & 1) == 0)
    {

      goto LABEL_9;
    }

    v6 = 1;
  }

  v8 = sub_19A573F1C();

  if (v8)
  {
LABEL_9:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v10 = v0[2];
    v11 = sub_19A5723FC();
    __swift_project_value_buffer(v11, qword_1ED82BCF0);
    sub_19A2F40CC(v10, v9, type metadata accessor for GeneratedImage);
    v12 = sub_19A5723DC();
    v13 = sub_19A57356C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[7];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = GeneratedImage.description.getter();
      v20 = v19;
      sub_19A2F4134(v15, type metadata accessor for GeneratedImage);
      v21 = sub_19A31F114(v18, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_19A2DE000, v12, v13, "The generated image from the personalization flow %s has no people detected. This is expected to sometimes occur.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v16, -1, -1);
    }

    else
    {

      sub_19A2F4134(v15, type metadata accessor for GeneratedImage);
    }

    goto LABEL_16;
  }

  if (v1)
  {

LABEL_15:
    v24 = v0[4];
    v23 = v0[5];
    sub_19A2F40CC(v0[2], v23, type metadata accessor for GeneratedImage);
    *(v23 + *(v24 + 20)) = sub_19A3796E4(&unk_1F0DA7808);
    *(v23 + *(v24 + 24)) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCB8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_19A576E10;
    *(v25 + 56) = v24;
    *(v25 + 64) = sub_19A2F4194(&qword_1EAF9EC50, type metadata accessor for DetectedPeoplePolicy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
    sub_19A2F4064(v23, boxed_opaque_existential_1, type metadata accessor for DetectedPeoplePolicy);
    goto LABEL_17;
  }

  v22 = sub_19A573F1C();

  if (v22)
  {
    goto LABEL_15;
  }

LABEL_16:
  v25 = 0;
LABEL_17:

  v27 = v0[1];

  return v27(v25);
}

uint64_t sub_19A2F2A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A2F2B18(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  type metadata accessor for GenerationRecipe(0);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F2BA8, 0, 0);
}

uint64_t sub_19A2F2BA8()
{
  v31 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for GenerationState();
  sub_19A2F40CC(v3 + *(v4 + 28), v1, type metadata accessor for GenerationRecipe);
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  v7 = (*(v6 + 8))(v1, v5, v6);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;
      v10 = &qword_1ED824000;
      do
      {
        sub_19A2F3EF0(v9, v0 + 16);
        if (v10[10] != -1)
        {
          swift_once();
        }

        v11 = sub_19A5723FC();
        __swift_project_value_buffer(v11, qword_1ED82BCF0);
        sub_19A2EA460((v0 + 16), v0 + 56);
        v12 = sub_19A5723DC();
        v13 = sub_19A57356C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = v10;
          v16 = swift_slowAlloc();
          v30 = v16;
          *v14 = 136315138;
          sub_19A2F3EF0(v0 + 56, v0 + 96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD48);
          v17 = sub_19A572DAC();
          v19 = v18;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
          v20 = sub_19A31F114(v17, v19, &v30);

          *(v14 + 4) = v20;
          _os_log_impl(&dword_19A2DE000, v12, v13, "evaluating unprepared generation recipe with %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          v21 = v16;
          v10 = v15;
          MEMORY[0x19A902C50](v21, -1, -1);
          MEMORY[0x19A902C50](v14, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
        }

        v9 += 40;
        --v8;
      }

      while (v8);
      v22 = *(v0 + 152);

      goto LABEL_17;
    }
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v23 = sub_19A5723FC();
  __swift_project_value_buffer(v23, qword_1ED82BCF0);
  v24 = sub_19A5723DC();
  v25 = sub_19A57356C();
  v26 = os_log_type_enabled(v24, v25);
  v22 = *(v0 + 152);
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19A2DE000, v24, v25, "no policies to evaluate for an unprepared generation recipe", v27, 2u);
    MEMORY[0x19A902C50](v27, -1, -1);
  }

LABEL_17:
  sub_19A2F4134(v22, type metadata accessor for GenerationRecipe);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_19A2F2F2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A2F2F4C, 0, 0);
}

uint64_t sub_19A2F2F4C()
{
  v27 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v5 = (*(v4 + 16))(v2, v3, v4);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      v8 = &qword_1ED824000;
      do
      {
        sub_19A2F3EF0(v7, v0 + 16);
        if (v8[10] != -1)
        {
          swift_once();
        }

        v9 = sub_19A5723FC();
        __swift_project_value_buffer(v9, qword_1ED82BCF0);
        sub_19A2EA460((v0 + 16), v0 + 56);
        v10 = sub_19A5723DC();
        v11 = sub_19A57356C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = v8;
          v14 = swift_slowAlloc();
          v26 = v14;
          *v12 = 136315138;
          sub_19A2F3EF0(v0 + 56, v0 + 96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD48);
          v15 = sub_19A572DAC();
          v17 = v16;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
          v18 = sub_19A31F114(v15, v17, &v26);

          *(v12 + 4) = v18;
          _os_log_impl(&dword_19A2DE000, v10, v11, "evaluating prepared recipe with %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          v19 = v14;
          v8 = v13;
          MEMORY[0x19A902C50](v19, -1, -1);
          MEMORY[0x19A902C50](v12, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
        }

        v7 += 40;
        --v6;
      }

      while (v6);

      goto LABEL_17;
    }
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v20 = sub_19A5723FC();
  __swift_project_value_buffer(v20, qword_1ED82BCF0);
  v21 = sub_19A5723DC();
  v22 = sub_19A57356C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_19A2DE000, v21, v22, "no policies to evaluate for a prepared recipe", v23, 2u);
    MEMORY[0x19A902C50](v23, -1, -1);
  }

LABEL_17:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_19A2F3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD38);
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for PolicyViolationError();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F33A8, 0, 0);
}

uint64_t sub_19A2F33A8()
{
  v29 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  v6 = (*(v5 + 24))(v3, v2, v4, v5);
  v0[26] = v6;
  if (v6)
  {
    v7 = *(v6 + 16);
    v0[27] = v7;
    if (v7)
    {
      v8 = MEMORY[0x1E69E7CC0];
      v0[28] = 0;
      v0[29] = v8;
      if (*(v6 + 16))
      {
        sub_19A2F3EF0(v6 + 32, (v0 + 2));
        if (qword_1ED824050 == -1)
        {
LABEL_5:
          v9 = sub_19A5723FC();
          __swift_project_value_buffer(v9, qword_1ED82BCF0);
          sub_19A2F3EF0((v0 + 2), (v0 + 7));
          v10 = sub_19A5723DC();
          v11 = sub_19A57356C();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v28 = v13;
            *v12 = 136315138;
            sub_19A2F3EF0((v0 + 7), (v0 + 12));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD48);
            v14 = sub_19A572DAC();
            v16 = v15;
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
            v17 = sub_19A31F114(v14, v16, &v28);

            *(v12 + 4) = v17;
            _os_log_impl(&dword_19A2DE000, v10, v11, "evaluating generated image with %s", v12, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v13);
            MEMORY[0x19A902C50](v13, -1, -1);
            MEMORY[0x19A902C50](v12, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
          }

          v24 = swift_task_alloc();
          v0[30] = v24;
          *v24 = v0;
          v24[1] = sub_19A2F375C;
          v25 = v0[18];
          v26 = v0[19];
          v27 = v0[17];

          return sub_19A38C490(v27, v25, v26);
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_5;
    }
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v18 = sub_19A5723FC();
  __swift_project_value_buffer(v18, qword_1ED82BCF0);
  v19 = sub_19A5723DC();
  v20 = sub_19A57356C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_19A2DE000, v19, v20, "no policies to evaluate for a generated image", v21, 2u);
    MEMORY[0x19A902C50](v21, -1, -1);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_19A2F375C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {

    v4 = sub_19A2F3E24;
  }

  else
  {
    v4 = sub_19A2F3884;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void *sub_19A2F3884()
{
  v40 = v0;
  v1 = v0[31];
  v2 = v0[29];
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = v2[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[29];
  if (result && v5 <= v2[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    result = sub_19A31CF40(result, v10, 1, v0[29]);
    v2 = result;
    if (*(v1 + 16))
    {
LABEL_6:
      if ((v2[3] >> 1) - v2[2] < v3)
      {
        __break(1u);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD40);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v7 = v2[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v2[2] = v9;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (v3)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_15:
  v11 = v0[27];
  v12 = v0[28] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  if (v12 == v11)
  {
    v14 = v0[20];
    v13 = v0[21];

    sub_19A2F40CC(v14, v13, type metadata accessor for GenerationState);
    v15 = type metadata accessor for GenerationState();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];
    if (v2[2])
    {
      sub_19A2F11D8(v18, v19 + *(v16 + 20));
      *v19 = v2;
      (*(v17 + 56))(v19, 0, 1, v16);
    }

    else
    {
      sub_19A2F3FA0(v18, &qword_1EAF9FC98);

      (*(v17 + 56))(v19, 1, 1, v16);
    }

    v35 = v0[22];
    if ((*(v0[24] + 48))(v35, 1, v0[23]) == 1)
    {
      sub_19A2F3FA0(v35, &qword_1EAF9FD38);
    }

    else
    {
      v37 = v0[25];
      sub_19A2F4064(v35, v37, type metadata accessor for PolicyViolationError);
      sub_19A2F4194(&qword_1EAF9EB20, type metadata accessor for PolicyViolationError);
      swift_allocError();
      sub_19A2F40CC(v37, v38, type metadata accessor for PolicyViolationError);
      swift_willThrow();
      sub_19A2F4134(v37, type metadata accessor for PolicyViolationError);
    }

    v36 = v0[1];

    return v36();
  }

  v20 = v0[28] + 1;
  v0[28] = v20;
  v0[29] = v2;
  v21 = v0[26];
  if (v20 >= *(v21 + 16))
  {
    goto LABEL_35;
  }

  sub_19A2F3EF0(v21 + 40 * v20 + 32, (v0 + 2));
  if (qword_1ED824050 != -1)
  {
LABEL_36:
    swift_once();
  }

  v22 = sub_19A5723FC();
  __swift_project_value_buffer(v22, qword_1ED82BCF0);
  sub_19A2F3EF0((v0 + 2), (v0 + 7));
  v23 = sub_19A5723DC();
  v24 = sub_19A57356C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    sub_19A2F3EF0((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD48);
    v27 = sub_19A572DAC();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
    v30 = sub_19A31F114(v27, v29, &v39);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_19A2DE000, v23, v24, "evaluating generated image with %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x19A902C50](v26, -1, -1);
    MEMORY[0x19A902C50](v25, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
  }

  v31 = swift_task_alloc();
  v0[30] = v31;
  *v31 = v0;
  v31[1] = sub_19A2F375C;
  v32 = v0[18];
  v33 = v0[19];
  v34 = v0[17];

  return sub_19A38C490(v34, v32, v33);
}

uint64_t sub_19A2F3E24()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19A2F3EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

uint64_t sub_19A2F3FA0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_19A2F4064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A2F40CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A2F4134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A2F4194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A2F41E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t), uint64_t a7)
{
  v14 = type metadata accessor for Concept(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v33 = a7;
    v34 = a6;
    v17 = sub_19A572CFC();
    v19 = v18;
    if (v17 == sub_19A572CFC() && v19 == v20)
    {
      v23 = a1;
    }

    else
    {
      v22 = sub_19A573F1C();
      v32 = a1;

      if ((v22 & 1) == 0)
      {

        return 1;
      }
    }

    v24 = sub_19A572F9C();
    v25 = MEMORY[0x19A900970](v24);
    v27 = v26;

    *v16 = v25;
    v16[1] = v27;
    swift_storeEnumTagMultiPayload();
    v37 = a2;
    v38 = a3;
    v35 = a4;
    v36 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD58);
    sub_19A2F43EC();
    sub_19A2F4450();
    v28 = sub_19A57375C();
    v34(v16, v28, v29);

    sub_19A2F44A4(v16);
  }

  return 1;
}

unint64_t sub_19A2F43EC()
{
  result = qword_1EAF9F0B8;
  if (!qword_1EAF9F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F0B8);
  }

  return result;
}

unint64_t sub_19A2F4450()
{
  result = qword_1ED823FC8;
  if (!qword_1ED823FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FC8);
  }

  return result;
}

uint64_t sub_19A2F44A4(uint64_t a1)
{
  v2 = type metadata accessor for Concept(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A2F4500()
{
  v0 = sub_19A57102C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getDynamicType();
  v7[0] = sub_19A5741FC();
  v7[1] = v4;
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  sub_19A57396C();
  sub_19A2F4644();
  v5 = sub_19A573EDC();
  MEMORY[0x19A900A50](v5);

  (*(v1 + 8))(v3, v0);
  return v7[0];
}

unint64_t sub_19A2F4644()
{
  result = qword_1ED8252D8;
  if (!qword_1ED8252D8)
  {
    sub_19A57102C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8252D8);
  }

  return result;
}

uint64_t sub_19A2F46A4()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelManagerOperation()
{
  result = qword_1EAF9F478;
  if (!qword_1EAF9F478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A2F47A8()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A2F4840()
{
  swift_getWitnessTable();

  return sub_19A2F4500();
}

uint64_t sub_19A2F4894@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A2F4958(uint64_t a1)
{
  *(a1 + 8) = sub_19A2F4A34(&qword_1EAF9F488, type metadata accessor for ModelManagerOperation);
  result = sub_19A2F4A34(&qword_1EAF9F490, type metadata accessor for ModelManagerOperation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A2F49DC(uint64_t a1)
{
  result = sub_19A2F4A34(&qword_1EAF9FD68, type metadata accessor for ModelManagerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A2F4A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenerativePlayground.Error.errorDescription.getter()
{
  sub_19A57112C();
  MEMORY[0x1EEE9AC00]();
  sub_19A572CBC();
  MEMORY[0x1EEE9AC00]();
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t GenerativePlayground.__allocating_init()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];
  v2 = sub_19A572CFC();
  v4 = v3;

  LODWORD(v1) = [v0 processIdentifier];
  v5 = getuid();

  v7[0] = v2;
  v7[1] = v4;
  v8 = v1;
  v9 = v5;
  return _s16VisualGeneration20GenerativePlaygroundC6clientAcA14ClientIdentityV_tcfC_0(v7);
}

uint64_t sub_19A2F4CAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DefinitionSession();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v62 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v60 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v60 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00F8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v1 + 176) = v12;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v13 = sub_19A5723FC();
  v14 = __swift_project_value_buffer(v13, qword_1ED82BCF0);
  sub_19A331B84(a1, v11, type metadata accessor for DefinitionSession);
  sub_19A331B84(a1, v9, type metadata accessor for DefinitionSession);
  v15 = sub_19A5723DC();
  v16 = sub_19A57356C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61 = a1;
    v18 = v17;
    v60[0] = swift_slowAlloc();
    *&v63 = v60[0];
    *v18 = 136315394;
    v19 = &v11[v4[5]];
    v20 = *(v19 + 1);
    *&v66 = *v19;
    *(&v66 + 1) = v20;
    *&v67 = *(v19 + 2);

    v21 = sub_19A572DAC();
    v22 = v4;
    v24 = v23;
    v60[1] = v14;
    sub_19A331764(v11, type metadata accessor for DefinitionSession);
    v25 = sub_19A31F114(v21, v24, &v63);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = v22[22];
    v27 = &v9[v26 + *(type metadata accessor for GenerationRecipe(0) + 20)];
    v28 = *v27;
    v29 = v27[1];

    sub_19A331764(v9, type metadata accessor for DefinitionSession);
    v30 = v28;
    v4 = v22;
    v31 = sub_19A31F114(v30, v29, &v63);

    *(v18 + 14) = v31;
    _os_log_impl(&dword_19A2DE000, v15, v16, "Creating generator for %s targeting %s", v18, 0x16u);
    v32 = v60[0];
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v32, -1, -1);
    v33 = v18;
    a1 = v61;
    MEMORY[0x19A902C50](v33, -1, -1);
  }

  else
  {

    sub_19A331764(v9, type metadata accessor for DefinitionSession);
    sub_19A331764(v11, type metadata accessor for DefinitionSession);
  }

  v34 = *(v2 + 176);

  os_unfair_lock_lock((v34 + 24));
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v35 = static AppleDiffusionResourceFactory.shared(reset:)(0);

  *(v34 + 16) = v35;
  os_unfair_lock_unlock((v34 + 24));

  v36 = *(a1 + v4[15]);
  *(v2 + 96) = v36;
  v37 = v36;
  v38 = *(*(sub_19A44F978() + 16) + 16);
  os_unfair_lock_lock((v38 + 24));
  v39 = *(v38 + 16);

  os_unfair_lock_unlock((v38 + 24));

  *(v2 + 104) = v39;
  v40 = a1 + v4[22];
  v41 = (v40 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v42 = *v41;
  v43 = v41[1];
  *(v2 + 112) = *v41;
  *(v2 + 120) = v43;
  type metadata accessor for ImageGenerator();

  sub_19A34F314(v42, v43, &v66);
  v44 = v67;
  *(v2 + 128) = v66;
  *(v2 + 144) = v44;
  *(v2 + 160) = v68;
  sub_19A34F314(v42, v43, &v66);
  v45 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v46 = v68;
    __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
    (*(v46 + 48))(&v63, v45, v46);
    __swift_destroy_boxed_opaque_existential_0Tm(&v66);
    v47 = v63;
    v48 = v64;
    v49 = v65;
  }

  else
  {
    sub_19A2F3FA0(&v66, &qword_1EAF9FDA8);
    v48 = 0;
    v47 = 0uLL;
    v49 = 1;
  }

  *(v2 + 16) = v47;
  *(v2 + 32) = v48;
  *(v2 + 36) = v49;
  sub_19A4B9270(&v66);
  v50 = v67;
  v51 = BYTE4(v67);
  *(v2 + 40) = v66;
  *(v2 + 56) = v50;
  *(v2 + 60) = v51;
  sub_19A34F314(v42, v43, &v66);
  v52 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v53 = v68;
    __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
    (*(v53 + 48))(&v63, v52, v53);
    __swift_destroy_boxed_opaque_existential_0Tm(&v66);
    v54 = v63;
    v55 = v64;
    v56 = v65;
  }

  else
  {
    sub_19A2F3FA0(&v66, &qword_1EAF9FDA8);
    v55 = 0;
    v54 = 0uLL;
    v56 = 1;
  }

  *(v2 + 64) = v54;
  *(v2 + 80) = v55;
  *(v2 + 84) = v56;
  *(v2 + 88) = sub_19A33112C(a1);
  v57 = v62;
  sub_19A331B84(a1, v62, type metadata accessor for DefinitionSession);
  type metadata accessor for DefinitionSessionAccessor();
  v58 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_19A3319E4(v57, v58 + OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession, type metadata accessor for DefinitionSession);
  sub_19A331764(a1, type metadata accessor for DefinitionSession);
  *(v2 + 168) = v58;
  return v2;
}

uint64_t GenerativePlayground.hasRequiredResources.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F5420, 0, 0);
}

uint64_t sub_19A2F5420()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F5444, v1, 0);
}

uint64_t sub_19A2F5444()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F54EC, 0, 0);
}

uint64_t sub_19A2F54EC()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  sub_19A331764(v0[7], type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(1);
}

uint64_t GenerativePlayground.assignedPrompt.getter()
{
  *(v1 + 40) = v0;
  type metadata accessor for DefinitionSession();
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F5640, 0, 0);
}

uint64_t sub_19A2F5640()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F5664, v1, 0);
}

uint64_t sub_19A2F5664()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F570C, 0, 0);
}

uint64_t sub_19A2F570C()
{
  v1 = *(v0 + 48);
  v2 = sub_19A4B9374();
  v4 = v3;
  sub_19A331764(v1, type metadata accessor for DefinitionSession);
  if (v4)
  {
  }

  else
  {
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t GenerativePlayground.PromptAssignmentOptions.personalizationUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0) + 24);

  return sub_19A3315F4(a1, v3);
}

uint64_t GenerativePlayground.PromptAssignmentOptions.performLanguageCheck.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.languageAnalysisParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.languageAnalysisParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0) + 32);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.reportSinglePersonAmbiguities.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.performPromptRewrite.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.initialPromptReuseCount.setter(uint64_t a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.rewrittenPromptReuseCount.setter(uint64_t a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.maxRewriteAttemptsForPersonalization.setter(uint64_t a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.maxRewriteAttemptsForNonPersonalization.setter(uint64_t a1)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.promptRewriteStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.promptRewriteStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.promptRewriteSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.personalizationObservationID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentOptions.init()@<X0>(char *a1@<X8>)
{
  *a1 = 257;
  v2 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  v3 = v2[6];
  v4 = sub_19A57102C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[v2[7]] = 1;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  *&a1[v2[11]] = 1;
  *&a1[v2[12]] = 1;
  *&a1[v2[13]] = 4;
  *&a1[v2[14]] = 4;
  a1[v2[15]] = 3;
  v5 = &a1[v2[16]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[17]];
  *v6 = 0;
  v6[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
  v7 = *(sub_19A57112C() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19A576E10;
  result = sub_19A474D68(v9 + v8);
  v11 = &a1[v2[8]];
  *v11 = v9;
  *(v11 + 1) = 5;
  *(v11 + 4) = 1064514355;
  return result;
}

uint64_t sub_19A2F61EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A33478C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_19A2E0A50(v3);
}

uint64_t sub_19A2F626C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A334754;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentInteractable.eventsHandler.getter()
{
  v1 = *v0;
  sub_19A2E0A50(*v0);
  return v1;
}

uint64_t GenerativePlayground.PromptAssignmentInteractable.eventsHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19A2E0A60(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_19A2F6394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_19A578A80;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_19A2E0A50(v3);
}

uint64_t sub_19A2F6414(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_19A582290;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t GenerativePlayground.PromptAssignmentInteractable.ambiguityResolver.getter()
{
  v1 = *(v0 + 16);
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.PromptAssignmentInteractable.ambiguityResolver.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19A2E0A60(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double GenerativePlayground.PromptAssignmentInteractable.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t GenerativePlayground.assign(prompt:options:interactable:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for DefinitionSession();
  *(v5 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  v8 = a4[1];
  *(v5 + 88) = *a4;
  *(v5 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A2F6680, 0, 0);
}

uint64_t sub_19A2F6680()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_19A33546C(*(v0 + 32), v3, &qword_1EAF9FD90);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 80);
  if (v5 == 1)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    *v6 = 257;
    v9 = v7[6];
    v10 = sub_19A57102C();
    (*(*(v10 - 8) + 56))(&v6[v9], 1, 1, v10);
    v6[v7[7]] = 1;
    v6[v7[9]] = 0;
    v6[v7[10]] = 0;
    *&v6[v7[11]] = 1;
    *&v6[v7[12]] = 1;
    *&v6[v7[13]] = 4;
    *&v6[v7[14]] = 4;
    v6[v7[15]] = 3;
    v11 = &v6[v7[16]];
    *v11 = 0;
    v11[8] = 1;
    v12 = &v6[v7[17]];
    *v12 = 0;
    v12[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
    v13 = *(sub_19A57112C() - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19A576E10;
    sub_19A474D68(v15 + v14);
    v16 = &v6[v7[8]];
    *v16 = v15;
    *(v16 + 1) = 5;
    *(v16 + 4) = 1064514355;
    if (v4(v8, 1, v7) != 1)
    {
      sub_19A2F3FA0(*(v0 + 56), &qword_1EAF9FD90);
    }
  }

  else
  {
    sub_19A3319E4(*(v0 + 56), *(v0 + 80), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  }

  v17 = *(v0 + 80);
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  v21 = *(v0 + 104);
  v22 = *(v0 + 88);
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  *(v20 + 48) = v17;
  *(v20 + 56) = v22;
  *(v20 + 72) = v21;
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_19A2F6998;
  v24 = *(v0 + 48);

  return sub_19A379EE8(v24, &unk_19A5770F0, v20);
}

uint64_t sub_19A2F6998()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_19A2F6B74;
  }

  else
  {
    sub_19A331764(*(v2 + 48), type metadata accessor for DefinitionSession);

    v3 = sub_19A2F6AD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A2F6AD4()
{
  sub_19A331764(*(v0 + 80), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A2F6B74()
{
  v1 = *(v0 + 80);

  sub_19A331764(v1, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A2F6C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  *(v8 + 176) = swift_task_alloc();
  v9 = type metadata accessor for DefinitionSession();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F6D28, 0, 0);
}

uint64_t sub_19A2F6D28()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 184) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_19A331B84(*(v0 + 96), v4, type metadata accessor for DefinitionSession);
  sub_19A331B84(v7, v5, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  type metadata accessor for GenerativePlayground.PromptAssignmentTask();
  v11 = swift_allocObject();
  *(v0 + 208) = v11;
  sub_19A57101C();
  sub_19A3319E4(v4, v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v6;
  sub_19A2EA460((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__sendableCanceller);
  sub_19A3319E4(v5, v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground20PromptAssignmentTask__assignmentOptions, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  *(v0 + 72) = v15;
  *(v0 + 56) = v16;

  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_19A2F6F8C;
  v13 = *(v0 + 88);

  return sub_19A3E5364(v13, (v0 + 56));
}

uint64_t sub_19A2F6F8C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_19A2F7150;
  }

  else
  {
    v2 = sub_19A2F70A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2F70A0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[11];

  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A2F7150()
{
  v11 = v0;
  v1 = *(v0 + 224);
  v2 = v1;
  sub_19A3E40B8(v1, &v9);
  v3 = v10;
  v4 = *(v0 + 224);
  if (v10 == 255)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v9;
    sub_19A331E10();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall GenerativePlayground.dropPromptAssignment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD000000000000016, 0x800000019A595F80, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A577108;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A577120, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A2F750C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A2F759C;

  return sub_19A2F771C();
}

uint64_t sub_19A2F759C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GenerativePlayground.dropPromptAssignment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  return sub_19A2F771C();
}

uint64_t sub_19A2F771C()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F77B0, 0, 0);
}

uint64_t sub_19A2F77B0()
{
  v1 = *(*(v0 + 64) + 168);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F77D4, v1, 0);
}

uint64_t sub_19A2F77D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[12] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F7880, 0, 0);
}

uint64_t sub_19A2F7880()
{
  v1 = *(v0 + 80) + *(*(v0 + 72) + 88);
  v2 = type metadata accessor for GenerationRecipe(0);
  v3 = *(v2 + 76);

  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + v3) = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 96);

  *(v1 + v5) = v4;
  if (qword_1ED8248B0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v7 = qword_1ED82BD08;
    v6 = unk_1ED82BD10;
    v8 = qword_1ED82BD18;
    v9 = unk_1ED82BD20;
    v10 = (v1 + *(v2 + 104));
    v27 = v1;

    *v10 = v7;
    v10[1] = v6;
    v10[2] = v8;
    v10[3] = v9;
    *(v1 + *(v2 + 108)) = 0;
    *(v1 + *(v2 + 116)) = 0;
    v11 = (v1 + *(v2 + 120));
    sub_19A331DC8(*v11, v11[1], v11[2]);
    *v11 = 0;
    v11[1] = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = 1;
    *(v11 + 37) = 0;
    v12 = *(v2 + 100);
    v2 = *(v1 + v12);
    v13 = *(v2 + 16);
    if (!v13)
    {
      break;
    }

    v25 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19A32E550(v2);
    }

    v1 = 0;
    v14 = v2 + 72;
    while (v1 != v13)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v15 = *(v14 + 72 * v1);
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        while (v1 < *(v2 + 16))
        {
          if (v18 >= *(v15 + 2))
          {
            goto LABEL_29;
          }

          v20 = v15[v17 + 75];
          if (v20 != 2 && (v20 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v14 + 72 * v1) = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v15 = sub_19A32E53C(v15);
              *(v14 + 72 * v1) = v15;
            }

            if (v18 >= *(v15 + 2))
            {
              goto LABEL_30;
            }

            v19 = &v15[v17];
            v19[74] = 0;
            *(v19 + 36) = 3;
            *(v14 + 72 * v1) = v15;
          }

          ++v18;
          v17 += 48;
          if (v16 == v18)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_6:
      if (++v1 == v13)
      {
        *(v27 + v25) = v2;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_25:
  v23 = *(v26 + 88);
  sub_19A4C64E0();

  return MEMORY[0x1EEE6DFA0](sub_19A2F7B4C, v23, 0);
}

uint64_t sub_19A2F7B4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A2F7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  type metadata accessor for DefinitionSession();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F7CAC, 0, 0);
}

uint64_t sub_19A2F7CAC()
{
  v1 = *(*(v0 + 104) + 168);
  *(v0 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F7CD0, v1, 0);
}

uint64_t sub_19A2F7CD0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[16] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_19A2F7DBC;
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  return sub_19A2F8010(v5, v6, v10, v8, v9, v7);
}

uint64_t sub_19A2F7DBC()
{
  v2 = *v1;

  v3 = *(v2 + 120);
  if (v0)
  {

    v4 = sub_19A2F7FBC;
  }

  else
  {
    v4 = sub_19A2F7EF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A2F7EF4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A331764(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A2F8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v6[8] = swift_task_alloc();
  v6[9] = _s17AssignmentOptionsVMa();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A2F80E4, 0, 0);
}

uint64_t sub_19A2F80E4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v41 = v3;
  v49 = v0[7];
  v50 = v0[6];
  v4 = v0[3];
  v47 = v0[5];
  v48 = v0[4];
  v46 = v0[2];
  v43 = *v4;
  v42 = v4[1];
  v5 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  sub_19A33546C(&v4[v5[6]], v3, &qword_1EAF9FD80);
  v6 = &v4[v5[8]];
  v30 = *v6;
  v40 = *(v6 + 1);
  v7 = *(v6 + 4);
  v38 = v4[v5[9]];
  v39 = v4[v5[7]];
  v37 = v4[v5[10]];
  v35 = *&v4[v5[12]];
  v36 = *&v4[v5[11]];
  v33 = *&v4[v5[14]];
  v34 = *&v4[v5[13]];
  v8 = &v4[v5[17]];
  v32 = *v8;
  v31 = v8[8];
  v29 = v4[v5[15]];
  v9 = &v4[v5[16]];
  v28 = *v9;
  v27 = v9[8];
  v10 = v1[6];
  v45 = sub_19A57102C();
  v44 = *(*(v45 - 8) + 56);
  v44(&v2[v10], 1, 1, v45);
  v11 = v1[7];
  v25 = v1[10];
  v26 = v1[9];
  v23 = v1[12];
  v24 = v1[11];
  v12 = v1[13];
  v22 = v1[14];
  v13 = v1[16];
  v14 = &v2[v1[15]];
  v2[v13] = 3;
  v15 = &v2[v1[17]];
  *&v2[v1[18]] = 5;
  *v2 = v43;
  v2[1] = v42;

  sub_19A3315F4(v41, &v2[v10]);
  v2[v11] = v39;
  v16 = &v2[v1[8]];
  *v16 = v30;
  *(v16 + 1) = v40;
  *(v16 + 4) = v7;
  v2[v26] = v38;
  v2[v25] = v37;
  *&v2[v24] = v36;
  *&v2[v23] = v35;
  *&v2[v12] = v34;
  *&v2[v22] = v33;
  *v14 = v32;
  v14[8] = v31;
  v2[v13] = v29;
  *v15 = v28;
  v15[8] = v27;
  sub_19A4B9828(v2);
  sub_19A331764(v2, _s17AssignmentOptionsVMa);
  v17 = type metadata accessor for DefinitionSession();
  v18 = (v46 + *(v17 + 32));

  v18[1] = v48;
  v18[2] = v47;
  sub_19A436024();

  v18[3] = v50;
  v18[4] = v49;
  sub_19A436024();
  v19 = *(v17 + 28);
  sub_19A2F3FA0(v46 + v19, &qword_1EAF9FD80);
  v44((v46 + v19), 1, 1, v45);
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_19A2F8470;

  return sub_19A4C4EB0();
}

uint64_t sub_19A2F8470()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GenerativePlayground.promptGuidanceSketchDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  sub_19A33546C(v1 + 128, v8, &qword_1EAF9FDA8);
  v3 = v9;
  if (!v9)
  {
    result = sub_19A2F3FA0(v8, &qword_1EAF9FDA8);
    goto LABEL_5;
  }

  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 48))(&v11, v3, v4);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (v12)
  {
LABEL_5:
    v7 = 0uLL;
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = v11;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v6;
  return result;
}

uint64_t GenerativePlayground.PromptGuidanceSketchAssignmentOptions.scribbleStrength.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t GenerativePlayground.assign(promptGuidanceSketch:options:eventsHandler:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  *(v4 + 16) = *a1;
  *(v4 + 24) = v7;
  *(v4 + 32) = v9;
  *(v4 + 28) = v8;
  *(v4 + 33) = v10;
  v11 = swift_task_alloc();
  *(v4 + 40) = v11;
  *v11 = v4;
  v11[1] = sub_19A2F87B0;

  return sub_19A2F88FC((v4 + 16), v4 + 28, a3, a4);
}

uint64_t sub_19A2F87B0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A2F88E4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A2F88FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 104) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  *(v5 + 128) = swift_task_alloc();
  v8 = type metadata accessor for DefinitionSession();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  *(v5 + 240) = *(a1 + 8);
  LODWORD(v10) = *a2;
  *(v5 + 188) = *(a2 + 4);
  *(v5 + 184) = v10;
  *(v5 + 241) = *(a2 + 5);

  return MEMORY[0x1EEE6DFA0](sub_19A2F8A44, 0, 0);
}

uint64_t sub_19A2F8A44()
{
  v1 = *(*(v0 + 120) + 168);
  *(v0 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A2F8A68, v1, 0);
}

uint64_t sub_19A2F8A68()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[25] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A331B84(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F8B18, 0, 0);
}

uint64_t sub_19A2F8B18()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 136) + 88);
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2);
  sub_19A34F6F4(*v3, v3[1]);
  v4 = *(v0 + 240);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 241) | *(v0 + 188) & 1;
  if (*(v0 + 241))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + 184);
  }

  sub_19A331B84(*(v0 + 160), *(v0 + 152), type metadata accessor for DefinitionSession);
  type metadata accessor for GenerativePlayground.PromptGuidanceSketchAssignmentTask();
  v9 = swift_allocObject();
  *(v0 + 208) = v9;
  *(v0 + 40) = &type metadata for CurrentTaskCanceller;
  *(v0 + 48) = &off_1F0DAF620;
  v10 = v5;
  sub_19A57101C();
  sub_19A3319E4(v6, v9 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  sub_19A2EA460((v0 + 16), v9 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller);
  *(v9 + 28) = v8;
  *(v9 + 32) = v7;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_19A2F8D3C;
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);

  return sub_19A369D40(v12, v13, v14);
}

uint64_t sub_19A2F8D3C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_19A2F9064;
  }

  else
  {
    v2 = sub_19A2F8E50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A2F8E50()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];

  sub_19A331764(v2, type metadata accessor for DefinitionSession);
  (*(v4 + 56))(v5, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_19A2F8F14, v1, 0);
}

uint64_t sub_19A2F8F14()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0);
  }

  else
  {
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[21];
    sub_19A3319E4(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A331CD0(v4, v3 + v2, type metadata accessor for DefinitionSession);
    swift_endAccess();
    sub_19A331764(v4, type metadata accessor for DefinitionSession);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A2F9064()
{

  v0[29] = v0[28];
  v1 = v0[24];
  sub_19A331764(v0[20], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A2F90F4, v1, 0);
}

uint64_t sub_19A2F90F4()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall GenerativePlayground.dropPromptGuidanceSketchAssignment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD000000000000024, 0x800000019A595FA0, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A577158;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A577160, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}