uint64_t IntelligenceSupportAgent.RequestParameters.windowSnapshotImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 104);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.downscaleWindowSnapshots.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.screenSnapshotImages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 112);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.screenSnapshotImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 112);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.snapshotsIgnoreAssistantUI.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.snapshotsIgnoreDisableUpdateMasks.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowContentGeneratedPDFCollection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 124);
  v4 = sub_22BB1F0BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowContentGeneratedPDFCollection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 124);
  v4 = sub_22BB1F0BC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageRepresentations.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 128));
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageRepresentations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 128);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22BAFC6D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t IntelligenceSupportAgent.RequestParameters.requestedComponents.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *a1 = *(v1 + *(result + 132));
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.Components.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (&unk_283F6B158 + 24 * v1 + 32);
  while (++v1 != 3)
  {
    v6 = v5 + 3;
    v7 = *v5;
    v5 += 3;
    if ((v7 & ~v2) == 0)
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB033A8(0, v4[2] + 1, 1);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_22BB033A8((v10 > 1), v11 + 1, 1);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A8, &unk_22BB220C0);
  swift_arrayDestroy();
  v13 = v4[2];
  if (v13)
  {
    sub_22BAC8968(0, v13, 0);
    v14 = v3;
    v15 = v4 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_22BAC8968((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v13;
    }

    while (v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v21 = sub_22BB1F63C();
  v23 = v22;

  MEMORY[0x23189D130](v21, v23);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_22BAFCAAC()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAFCAF4()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

BOOL sub_22BAFCB64(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22BAFCB94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22BAFCBC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22BAFCC6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.commandOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 136);
  v4 = sub_22BB1EE9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.commandOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 136);
  v4 = sub_22BB1EE9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloads.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BAFDFB4;
}

uint64_t IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  sub_22BAD6B34(v0 + *(v5 + 76), v4, &qword_27D8DF3A0, &qword_22BB220B8);
  v6 = sub_22BB1EC1C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_22BAC81E8(v4, &qword_27D8DF3A0, &qword_22BB220B8);
    v8 = 0;
  }

  else
  {
    v8 = sub_22BB1EBCC();
    (*(v7 + 8))(v4, v6);
  }

  return v8 & 1;
}

uint64_t sub_22BAFD118@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  sub_22BAD6B34(a1 + *(v8 + 76), v7, &qword_27D8DF3A0, &qword_22BB220B8);
  v9 = sub_22BB1EC1C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    result = sub_22BAC81E8(v7, &qword_27D8DF3A0, &qword_22BB220B8);
    v12 = 0;
  }

  else
  {
    v12 = sub_22BB1EBCC();
    result = (*(v10 + 8))(v7, v9);
  }

  *a2 = v12 & 1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.setter(char a1)
{
  v3 = sub_22BB1EC1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v15 - v9;
  if ((a1 & 1) != 0 && (v11 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76), sub_22BAD6B34(v1 + v11, v10, &qword_27D8DF3A0, &qword_22BB220B8), v12 = (*(v4 + 48))(v10, 1, v3), sub_22BAC81E8(v10, &qword_27D8DF3A0, &qword_22BB220B8), v12 == 1))
  {
    sub_22BB1ECCC();
    sub_22BB1EBDC();
    sub_22BAC81E8(v1 + v11, &qword_27D8DF3A0, &qword_22BB220B8);
    (*(v4 + 32))(v1 + v11, v7, v3);
    return (*(v4 + 56))(v1 + v11, 0, 1, v3);
  }

  else
  {
    v14 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
    result = (*(v4 + 48))(v1 + *(v14 + 76), 1, v3);
    if (!result)
    {
      return sub_22BB1EBDC();
    }
  }

  return result;
}

void (*IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_22BB1EC1C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[3] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  *(v5 + 16) = v13;
  sub_22BAD6B34(v1 + v13, v12, &qword_27D8DF3A0, &qword_22BB220B8);
  v14 = *(v8 + 48);
  v5[6] = v14;
  v5[7] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v12, 1, v6) == 1)
  {
    sub_22BAC81E8(v12, &qword_27D8DF3A0, &qword_22BB220B8);
    v15 = 0;
  }

  else
  {
    v15 = sub_22BB1EBCC();
    (*(v8 + 8))(v12, v6);
  }

  *(v5 + 68) = v15 & 1;
  return sub_22BAFD68C;
}

void sub_22BAFD68C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];
    v6 = *v2;
    IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.setter(*(*a1 + 68));
  }

  else
  {
    if (*(*a1 + 68) && (v8 = v2[6], v7 = v2[7], v9 = v2[4], v10 = v2[1], sub_22BAD6B34(*v2 + *(v2 + 16), v9, &qword_27D8DF3A0, &qword_22BB220B8), LODWORD(v10) = v8(v9, 1, v10), sub_22BAC81E8(v9, &qword_27D8DF3A0, &qword_22BB220B8), v10 == 1))
    {
      v11 = *(v2 + 16);
      v13 = v2[2];
      v12 = v2[3];
      v15 = *v2;
      v14 = v2[1];
      sub_22BB1ECCC();
      sub_22BB1EBDC();
      sub_22BAC81E8(v15 + v11, &qword_27D8DF3A0, &qword_22BB220B8);
      (*(v13 + 32))(v15 + v11, v12, v14);
      (*(v13 + 56))(v15 + v11, 0, 1, v14);
    }

    else
    {
      v16 = v2[7];
      if (!(v2[6])(*v2 + *(v2 + 16), 1, v2[1]))
      {
        sub_22BB1EBDC();
      }
    }

    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];
  }

  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

BOOL _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV17includeAppIntentsSbvg_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  sub_22BAD6B34(v0 + *(v5 + 76), v4, &qword_27D8DF3A0, &qword_22BB220B8);
  v6 = sub_22BB1EC1C();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22BAC81E8(v4, &qword_27D8DF3A0, &qword_22BB220B8);
  return v7;
}

uint64_t sub_22BAFD910@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  v7 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  sub_22BAD6B34(a1 + *(v7 + 76), v6, &qword_27D8DF3A0, &qword_22BB220B8);
  v8 = sub_22BB1EC1C();
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_22BAC81E8(v6, &qword_27D8DF3A0, &qword_22BB220B8);
  *a2 = a1;
  return result;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV17includeAppIntentsSbvs_0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  if (a1)
  {
    sub_22BAD6B34(v1 + v10, v9, &qword_27D8DF3A0, &qword_22BB220B8);
    v11 = sub_22BB1EC1C();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    result = sub_22BAC81E8(v9, &qword_27D8DF3A0, &qword_22BB220B8);
    if (v13 == 1)
    {
      sub_22BB1ECCC();
      (*(v12 + 56))(v6, 0, 1, v11);
      return sub_22BAC2A3C(v6, v1 + v10);
    }
  }

  else
  {
    sub_22BAC81E8(v1 + v10, &qword_27D8DF3A0, &qword_22BB220B8);
    v15 = sub_22BB1EC1C();
    v16 = *(*(v15 - 8) + 56);

    return v16(v1 + v10, 1, 1, v15);
  }

  return result;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppEntities.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BB06EB8;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppIntents.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BAFDFB4;
}

void sub_22BAFDFB8(int **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 76);
  if (a2)
  {
    if (*(*a1 + 76))
    {
      v5 = *(v2 + 7);
      v4 = *(v2 + 8);
      v6 = *(v2 + 5);
      v7 = v2[18];
      v8 = *(v2 + 1);
      goto LABEL_6;
    }

LABEL_8:
    v16 = *(v2 + 5);
    v17 = *(v2 + 6);
    v18 = v2[18];
    v19 = *v2;
    sub_22BAC81E8(*v2 + v18, &qword_27D8DF3A0, &qword_22BB220B8);
    (*(v17 + 56))(v19 + v18, 1, 1, v16);
    goto LABEL_9;
  }

  if (!*(*a1 + 76))
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 7);
  v9 = *(v2 + 8);
  v6 = *(v2 + 5);
  v7 = v2[18];
  v8 = *(v2 + 3);
LABEL_6:
  sub_22BAD6B34(*v2 + v7, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = v5(v8, 1, v6);
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  if (v10 == 1)
  {
    v11 = *(v2 + 5);
    v12 = *(v2 + 6);
    v13 = v2[18];
    v14 = *(v2 + 2);
    v15 = *v2;
    sub_22BB1ECCC();
    (*(v12 + 56))(v14, 0, 1, v11);
    sub_22BAC2A3C(v14, v15 + v13);
  }

LABEL_9:
  v20 = *(v2 + 3);
  v22 = *(v2 + 1);
  v21 = *(v2 + 2);
  free(*(v2 + 4));
  free(v20);
  free(v21);
  free(v22);

  free(v2);
}

unint64_t sub_22BAFE140(char a1)
{
  result = 0x74756F656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6E696C646165645FLL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 6:
    case 13:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x476564756C636E69;
      break;
    case 14:
      v3 = 10;
      goto LABEL_24;
    case 15:
    case 21:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6974704F74786574;
      break;
    case 17:
      result = 0x6974634172657375;
      break;
    case 18:
      result = 0x746E656D75636F64;
      break;
    case 19:
      v3 = 9;
LABEL_24:
      result = v3 | 0xD000000000000014;
      break;
    case 20:
      result = 0x6E6F436567616D69;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0x4F646E616D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BAFE4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BB05E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BAFE4F0(uint64_t a1)
{
  v2 = sub_22BB04A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAFE52C(uint64_t a1)
{
  v2 = sub_22BB04A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3B0, &unk_22BB220D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04A40();
  sub_22BB1FE2C();
  v11 = *v3;
  LOBYTE(v42) = 0;
  sub_22BB1FD2C();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    LOBYTE(v42) = 1;
    sub_22BB1FD0C();
    *&v42 = v3[3];
    v44 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BB04A94();
    sub_22BB1FCFC();
    *&v42 = v3[4];
    v44 = 3;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3C0, &qword_22BB220E0);
    v15 = sub_22BB04E68(&qword_27D8DF3C8);
    v41[1] = v14;
    sub_22BB1FCFC();
    v41[0] = v15;
    *&v42 = v3[5];
    v44 = 4;
    sub_22BB1FD4C();
    *&v42 = v3[6];
    v44 = 5;
    sub_22BB1FD4C();
    v16 = *(v3 + 56);
    LOBYTE(v42) = 6;
    sub_22BB1FD1C();
    v17 = *(v3 + 57);
    LOBYTE(v42) = 7;
    sub_22BB1FD1C();
    v18 = *(v3 + 58);
    LOBYTE(v42) = 8;
    sub_22BB1FD1C();
    v19 = *(v3 + 5);
    v42 = *(v3 + 4);
    v43 = v19;
    v44 = 9;
    sub_22BB04B48();
    sub_22BB1FD4C();
    v20 = *(v3 + 96);
    LOBYTE(v42) = 10;
    sub_22BB1FD1C();
    v21 = v3[13];
    v22 = *(v3 + 112);
    LOBYTE(v42) = 11;
    sub_22BB1FCEC();
    v23 = *(v3 + 113);
    LOBYTE(v42) = 12;
    sub_22BB1FD1C();
    v24 = *(v3 + 114);
    LOBYTE(v42) = 13;
    sub_22BB1FD1C();
    v25 = *(v3 + 115);
    LOBYTE(v42) = 14;
    sub_22BB1FD1C();
    v26 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
    v27 = v26[19];
    LOBYTE(v42) = 15;
    sub_22BB1EC1C();
    sub_22BACFADC(&qword_27D8DF3D8, MEMORY[0x277D747A8]);
    sub_22BB1FCFC();
    v28 = v26[20];
    LOBYTE(v42) = 16;
    sub_22BB1EC9C();
    sub_22BACFADC(&qword_27D8DF3E0, MEMORY[0x277D74870]);
    sub_22BB1FD4C();
    v29 = v26[21];
    LOBYTE(v42) = 17;
    sub_22BB1EC5C();
    sub_22BACFADC(&qword_27D8DF3E8, MEMORY[0x277D74800]);
    sub_22BB1FD4C();
    v30 = v26[22];
    LOBYTE(v42) = 18;
    sub_22BB1EC7C();
    sub_22BACFADC(&qword_27D8DF3F0, MEMORY[0x277D74850]);
    sub_22BB1FD4C();
    *&v42 = *(v3 + v26[23]);
    v44 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BB04B9C();
    sub_22BB1FD4C();
    v31 = v26[24];
    LOBYTE(v42) = 20;
    sub_22BB1FD4C();
    v32 = v26[25];
    LOBYTE(v42) = 21;
    sub_22BB1FD4C();
    v33 = v26[26];
    LOBYTE(v42) = 22;
    sub_22BB1FD4C();
    v34 = *(v3 + v26[27]);
    LOBYTE(v42) = 23;
    sub_22BB1FD1C();
    v35 = v26[28];
    LOBYTE(v42) = 24;
    sub_22BB1FD4C();
    v36 = *(v3 + v26[29]);
    LOBYTE(v42) = 25;
    sub_22BB1FD1C();
    v37 = *(v3 + v26[30]);
    LOBYTE(v42) = 26;
    sub_22BB1FD1C();
    v38 = v26[31];
    LOBYTE(v42) = 27;
    sub_22BB1F0BC();
    sub_22BACFADC(&qword_27D8DF410, MEMORY[0x277D748E8]);
    sub_22BB1FD4C();
    *&v42 = *(v3 + v26[32]);
    v44 = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BB04C50();
    sub_22BB1FD4C();
    *&v42 = *(v3 + v26[33]);
    v44 = 29;
    sub_22BB04D04();
    sub_22BB1FD4C();
    v39 = v26[34];
    LOBYTE(v42) = 30;
    sub_22BB1EE9C();
    sub_22BACFADC(&qword_27D8DF438, MEMORY[0x277D74898]);
    sub_22BB1FD4C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IntelligenceSupportAgent.RequestParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v108 = a2;
  v107 = sub_22BB1EE9C();
  v104 = *(v107 - 8);
  v2 = *(v104 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22BB1F0BC();
  v89 = *(v103 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v103);
  v105 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22BB1EC7C();
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v102 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v101 = v71 - v9;
  MEMORY[0x28223BE20](v10);
  v100 = v71 - v11;
  MEMORY[0x28223BE20](v12);
  v99 = v71 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = v71 - v15;
  v95 = sub_22BB1EC5C();
  v90 = *(v95 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22BB1EC9C();
  v79 = *(v87 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v109 = v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF440, &qword_22BB220F8);
  v112 = *(v23 - 8);
  v113 = v23;
  v24 = *(v112 + 64);
  MEMORY[0x28223BE20](v23);
  v116 = v71 - v25;
  v26 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v30 = 0x3FE8000000000000;
  *(v30 + 1) = 0;
  *(v30 + 3) = 0;
  v111 = v30 + 24;
  v30[16] = 1;
  v31 = MEMORY[0x277D84FA0];
  *(v30 + 4) = 0;
  *(v30 + 5) = v31;
  *(v30 + 6) = v31;
  v30[56] = sub_22BB1EDAC() & 1;
  v30[57] = sub_22BB1ED6C() & 1;
  v30[58] = sub_22BB1EDDC() & 1;
  *(v30 + 4) = xmmword_22BB22080;
  *(v30 + 5) = xmmword_22BB22090;
  v30[96] = sub_22BB1EE2C() & 1;
  *(v30 + 13) = sub_22BB1EDFC();
  v30[112] = 0;
  v30[113] = sub_22BB1ED4C() & 1;
  v30[114] = sub_22BB1EDBC() & 1;
  v30[115] = sub_22BB1EE1C() & 1;
  v32 = v27[21];
  sub_22BB1ECCC();
  v33 = sub_22BB1EC1C();
  v34 = *(*(v33 - 8) + 56);
  v76 = v32;
  v110 = v33;
  v34(&v30[v32], 0, 1);
  v80 = v27[22];
  sub_22BB1ECDC();
  v81 = v27[23];
  sub_22BB1ECEC();
  v82 = v27[24];
  sub_22BB1ECEC();
  v35 = v27[25];
  v36 = sub_22BB1EE0C();
  v85 = v35;
  v84 = v36;
  *&v30[v35] = v36;
  v86 = v27[26];
  sub_22BB1ECEC();
  v88 = v27[27];
  sub_22BB1ECEC();
  v91 = v27[28];
  sub_22BB1ECEC();
  v37 = v27[29];
  v38 = sub_22BB1EDCC();
  v92 = v37;
  v30[v37] = v38 & 1;
  v93 = v27[30];
  sub_22BB1ECEC();
  v39 = v27[31];
  v40 = sub_22BB1EDEC();
  v96 = v39;
  v30[v39] = v40 & 1;
  v41 = v27[32];
  v42 = sub_22BB1EE3C();
  v97 = v41;
  v30[v41] = v42 & 1;
  v43 = v27[33];
  sub_22BB1ECEC();
  v44 = v27[34];
  v45 = sub_22BB1ED7C();
  *&v30[v44] = v45;
  v46 = sub_22BB1ED3C() & 1;
  v47 = sub_22BB1ED2C();
  v48 = v46 | 2;
  if ((v47 & 1) == 0)
  {
    v48 = v46;
  }

  v49 = v27[35];
  *&v30[v49] = v48;
  v50 = v27[36];
  v115 = v30;
  sub_22BB1ECFC();
  v51 = v117[4];
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  sub_22BB04A40();
  v52 = v114;
  sub_22BB1FE1C();
  if (v52)
  {
    v70 = v117;
    v66 = v115;
  }

  else
  {
    v53 = v111;
    v72 = v43;
    v73 = v45;
    v74 = v44;
    v75 = v49;
    v114 = v50;
    v54 = v112;
    LOBYTE(v118) = 0;
    sub_22BB1FC9C();
    v56 = v115;
    *v115 = v57;
    LOBYTE(v118) = 1;
    *(v56 + 1) = sub_22BB1FC7C();
    v56[16] = v58 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    v120 = 2;
    v59 = sub_22BB04DB4();
    sub_22BB1FC6C();
    v71[1] = v59;
    *v53 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3C0, &qword_22BB220E0);
    v120 = 3;
    sub_22BB04E68(&qword_27D8DF448);
    sub_22BB1FC6C();
    *(v56 + 4) = v118;
    v120 = 4;
    sub_22BB1FCBC();
    *(v56 + 5) = v118;
    v120 = 5;
    sub_22BB1FCBC();
    *(v56 + 6) = v118;
    LOBYTE(v118) = 6;
    v56[56] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 7;
    v56[57] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 8;
    v56[58] = sub_22BB1FC8C() & 1;
    v120 = 9;
    sub_22BB04ED4();
    sub_22BB1FCBC();
    v60 = v119;
    v61 = v115;
    *(v115 + 4) = v118;
    *(v61 + 5) = v60;
    LOBYTE(v118) = 10;
    v115[96] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 11;
    v62 = sub_22BB1FC5C();
    v63 = v115;
    *(v115 + 13) = v62;
    v63[112] = v64 & 1;
    LOBYTE(v118) = 12;
    v115[113] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 13;
    v115[114] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 14;
    v115[115] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 15;
    sub_22BACFADC(&qword_27D8DF458, MEMORY[0x277D747A8]);
    sub_22BB1FC6C();
    sub_22BAC2A3C(v109, &v115[v76]);
    LOBYTE(v118) = 16;
    sub_22BACFADC(&qword_27D8DF460, MEMORY[0x277D74870]);
    sub_22BB1FCBC();
    (*(v79 + 40))(&v115[v80], v83, v87);
    LOBYTE(v118) = 17;
    sub_22BACFADC(&qword_27D8DF468, MEMORY[0x277D74800]);
    sub_22BB1FCBC();
    (*(v90 + 40))(&v115[v81], v94, v95);
    LOBYTE(v118) = 18;
    sub_22BACFADC(&qword_27D8DF470, MEMORY[0x277D74850]);
    sub_22BB1FCBC();
    v65 = *(v77 + 40);
    v65(&v115[v82], v98, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3F8, &qword_22BB220E8);
    v120 = 19;
    sub_22BB04F28();
    sub_22BB1FCBC();

    *&v115[v85] = v118;
    LOBYTE(v118) = 20;
    sub_22BB1FCBC();
    v65(&v115[v86], v99, v78);
    LOBYTE(v118) = 21;
    sub_22BB1FCBC();
    v65(&v115[v88], v100, v78);
    LOBYTE(v118) = 22;
    sub_22BB1FCBC();
    v65(&v115[v91], v101, v78);
    LOBYTE(v118) = 23;
    v115[v92] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 24;
    sub_22BB1FCBC();
    v65(&v115[v93], v102, v78);
    LOBYTE(v118) = 25;
    v115[v96] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 26;
    v115[v97] = sub_22BB1FC8C() & 1;
    LOBYTE(v118) = 27;
    sub_22BACFADC(&qword_27D8DF488, MEMORY[0x277D748E8]);
    sub_22BB1FCBC();
    (*(v89 + 40))(&v115[v72], v105, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF418, &qword_22BB220F0);
    v120 = 28;
    sub_22BB04FDC();
    sub_22BB1FCBC();

    *&v115[v74] = v118;
    v120 = 29;
    sub_22BB05090();
    sub_22BB1FCBC();
    v66 = v115;
    *&v115[v75] = v118;
    LOBYTE(v118) = 30;
    sub_22BACFADC(&qword_27D8DF4A8, MEMORY[0x277D74898]);
    v67 = v113;
    v68 = v116;
    sub_22BB1FCBC();
    (*(v54 + 8))(v68, v67);
    v69 = v117;
    (*(v104 + 40))(v66 + v114, v106, v107);
    sub_22BB050E4(v66, v108);
    v70 = v69;
  }

  __swift_destroy_boxed_opaque_existential_0(v70);
  return sub_22BB04D58(v66);
}

uint64_t static IntelligenceSupportAgent.RequestParameters.debugPresets(verbose:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  IntelligenceSupportAgent.RequestParameters.init()(a2);
  v4 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
  v5 = sub_22BB1EC1C();
  result = (*(*(v5 - 8) + 48))(a2 + v4, 1, v5);
  if (result)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_22BB1EBDC();
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  *(a2 + 57) = 0;
  *(a2 + 114) = 1;
  return result;
}

uint64_t static IntelligenceSupportAgent.RequestParameters.debugCustomParsed(arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntelligenceSupportAgent.RequestParameters.init()(v8);
  v9 = *(v5 + 84);
  v10 = sub_22BB1EC1C();
  if (!(*(*(v10 - 8) + 48))(&v8[v9], 1, v10))
  {
    sub_22BB1EBDC();
  }

  result = sub_22BB05148(v8, a2);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_22BB002A4(v14, v15);

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_22BB002A4(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF520, &unk_22BB227C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v230 = &v218 - v7;
  v229 = sub_22BB1F31C();
  v227 = *(v229 - 8);
  v8 = *(v227 + 64);
  MEMORY[0x28223BE20](v229);
  v228 = &v218 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1EC7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v224 = &v218 - v16;
  MEMORY[0x28223BE20](v17);
  v223 = &v218 - v18;
  MEMORY[0x28223BE20](v19);
  v225 = &v218 - v20;
  MEMORY[0x28223BE20](v21);
  v226 = &v218 - v22;
  v23 = sub_22BB1EBEC();
  v231 = *(v23 - 8);
  v232 = v23;
  v24 = *(v231 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v218 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22BB1EC1C();
  v233 = *(v27 - 8);
  v234 = v27;
  v28 = *(v233 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238[0] = 61;
  v238[1] = 0xE100000000000000;
  v237 = v238;

  v32 = sub_22BB02FE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_22BB06EC0, v236, a1, a2, v31);
  v33 = v32;
  v34 = v32[2];
  if (!v34)
  {
    goto LABEL_9;
  }

  v222 = 0;
  v219 = v14;
  v220 = v10;
  v221 = v11;
  v235 = v2;
  v35 = v32[4];
  v36 = v32[5];
  v37 = v32[6];
  v38 = v32[7];

  v39 = sub_22BB1FA3C();
  v41 = v40;

  if (v34 > v33[2])
  {
    __break(1u);
  }

  else
  {
    v42 = &v33[4 * v34];
    v43 = *v42;
    v38 = v42[1];
    v34 = v42[2];
    v37 = v42[3];

    v33 = v43;

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "timeout");
    v241[1] = 0xE700000000000000;
    sub_22BB068B4();
    if (sub_22BB1FA6C())
    {

      v44 = sub_22BB1F83C();
      if ((v45 & 1) == 0)
      {
        v56 = v44;

        *v235 = v56;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = 0x746567726174;
    v241[1] = 0xE600000000000000;
    if (sub_22BB1FA6C())
    {
      v238[0] = v39;
      v238[1] = v41;
      v241[0] = 7368801;
      v241[1] = 0xE300000000000000;
      if (sub_22BB1FA6C() & 1) != 0 || (v238[0] = v39, v238[1] = v41, v241[0] = 0x656C646E7562, v241[1] = 0xE600000000000000, (sub_22BB1FA6C()))
      {

        v238[0] = v43;
        v238[1] = v38;
        v239 = v34;
        v240 = v37;
        v241[0] = 44;
        v241[1] = 0xE100000000000000;
        sub_22BB0697C();
        v46 = sub_22BB1FA5C();

        v47 = sub_22BB1DCC8(v46);

        v48 = v235;
        v49 = *(v235 + 32);

        *(v48 + 32) = v47;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "exclude");
    v241[1] = 0xE700000000000000;
    if (sub_22BB1FA6C())
    {
      v238[0] = v39;
      v238[1] = v41;
      v241[0] = 7368801;
      v241[1] = 0xE300000000000000;
      if (sub_22BB1FA6C() & 1) != 0 || (v238[0] = v39, v238[1] = v41, v241[0] = 0x656C646E7562, v241[1] = 0xE600000000000000, (sub_22BB1FA6C()))
      {

        v238[0] = v43;
        v238[1] = v38;
        v239 = v34;
        v240 = v37;
        v241[0] = 44;
        v241[1] = 0xE100000000000000;
        sub_22BB0697C();
        v50 = sub_22BB1FA5C();

        v51 = sub_22BB1DCC8(v50);

        v52 = v235;
        v53 = *(v235 + 48);

        *(v52 + 48) = v51;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "management");
    BYTE3(v241[1]) = 0;
    HIDWORD(v241[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v54 = sub_22BB1FA2C();

      v55 = [v54 BOOLValue];

      *(v235 + 56) = v55;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = 0x656E757270;
    v241[1] = 0xE500000000000000;
    if (sub_22BB1FA6C())
    {

      v57 = sub_22BB1FA2C();

      v58 = [v57 BOOLValue];

      *(v235 + 57) = v58;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "windowfraction");
    HIBYTE(v241[1]) = -18;
    if (sub_22BB1FA6C())
    {

      v59 = sub_22BB1F83C();
      if ((v60 & 1) == 0)
      {
        v69 = v59;

        MEMORY[0x28223BE20](v70);
        *(&v218 - 2) = v69;
        MEMORY[0x28223BE20](v71);
        *(&v218 - 2) = v69;
        sub_22BB1EAEC();
        *(v235 + 64) = v69;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "windowarea");
    BYTE3(v241[1]) = 0;
    HIDWORD(v241[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v61 = sub_22BB1F83C();
      if ((v62 & 1) == 0)
      {
        v72 = v61;

        MEMORY[0x28223BE20](v73);
        *(&v218 - 2) = v72;
        MEMORY[0x28223BE20](v74);
        *(&v218 - 2) = v72;
        sub_22BB1EAEC();
        *(v235 + 72) = v72;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "fraction");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v63 = sub_22BB1F83C();
      if ((v64 & 1) == 0)
      {
        v77 = v63;

        MEMORY[0x28223BE20](v78);
        *(&v218 - 2) = v77;
        MEMORY[0x28223BE20](v79);
        *(&v218 - 2) = v77;
        sub_22BB1EAEC();
        *(v235 + 80) = v77;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = 1634038369;
    v241[1] = 0xE400000000000000;
    if (sub_22BB1FA6C())
    {

      v65 = sub_22BB1F83C();
      if ((v66 & 1) == 0)
      {
        v80 = v65;

        MEMORY[0x28223BE20](v81);
        *(&v218 - 2) = v80;
        MEMORY[0x28223BE20](v82);
        *(&v218 - 2) = v80;
        sub_22BB1EAEC();
        *(v235 + 88) = v80;
        return;
      }
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "visible");
    v241[1] = 0xE700000000000000;
    if (sub_22BB1FA6C())
    {

      v67 = sub_22BB1FA2C();

      v68 = [v67 BOOLValue];

      *(v235 + 58) = v68;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "selected");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v75 = sub_22BB1FA2C();

      v76 = [v75 BOOLValue];

      *(v235 + 96) = v76;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = 0xD000000000000010;
    v241[1] = 0x800000022BB27CB0;
    if (sub_22BB1FA6C())
    {

      if ((v38 ^ v43) >> 14)
      {
        v83 = sub_22BB04250(v43, v38, v34, v37, 10);
        if ((v84 & 0x100) != 0)
        {
          v83 = sub_22BB03844(v43, v38, v34, v37, 10);
        }

        v85 = v83;
        v86 = v84;

        if (v86)
        {
          v87 = 0;
        }

        else
        {
          v87 = v85;
        }
      }

      else
      {

        v87 = 0;
        v86 = 1;
      }

      v88 = v235;
      *(v235 + 104) = v87;
      *(v88 + 112) = v86 & 1;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "geometry");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v89 = sub_22BB1FA2C();

      v90 = [v89 BOOLValue];

      *(v235 + 113) = v90;
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "customtype");
    BYTE3(v241[1]) = 0;
    HIDWORD(v241[1]) = -369098752;
    if (sub_22BB1FA6C() & 1) != 0 || (v238[0] = v39, v238[1] = v41, strcpy(v241, "typename"), BYTE1(v241[1]) = 0, WORD1(v241[1]) = 0, HIDWORD(v241[1]) = -402653184, (sub_22BB1FA6C()))
    {

      v91 = sub_22BB1FA2C();

      v92 = [v91 BOOLValue];

      *(v235 + 114) = v92;
      return;
    }
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "accessibility");
  HIWORD(v241[1]) = -4864;
  if (sub_22BB1FA6C())
  {

    v93 = sub_22BB1FA2C();

    v94 = [v93 BOOLValue];

    *(v235 + 115) = v94;
    return;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "appintents");
  BYTE3(v241[1]) = 0;
  HIDWORD(v241[1]) = -369098752;
  if (sub_22BB1FA6C() & 1) != 0 || (v238[0] = v39, v238[1] = v41, strcpy(v241, "appentities"), HIDWORD(v241[1]) = -352321536, (sub_22BB1FA6C()))
  {

    v95 = sub_22BB1FA2C();
    v96 = [v95 BOOLValue];

    if (v96)
    {
      goto LABEL_57;
    }

    v238[0] = v33;
    v238[1] = v38;
    v239 = v34;
    v240 = v37;
    v241[0] = 1954047348;
    v241[1] = 0xE400000000000000;
    sub_22BB0697C();
    if (sub_22BB1FA6C())
    {
      goto LABEL_57;
    }

    v238[0] = v33;
    v238[1] = v38;
    v239 = v34;
    v240 = v37;
    strcpy(v241, "complete");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    if (sub_22BB1FA6C())
    {
LABEL_57:
      sub_22BB1EC0C();
      v238[0] = v33;
      v238[1] = v38;
      v239 = v34;
      v240 = v37;
      strcpy(v241, "complete");
      BYTE1(v241[1]) = 0;
      WORD1(v241[1]) = 0;
      HIDWORD(v241[1]) = -402653184;
      sub_22BB0697C();
      v97 = sub_22BB1FA6C();

      v98 = MEMORY[0x277D74790];
      if ((v97 & 1) == 0)
      {
        v98 = MEMORY[0x277D74788];
      }

      (*(v231 + 104))(v26, *v98, v232);
      sub_22BB1EBBC();
      sub_22BB1EBDC();
      v99 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
      v100 = v235;
      sub_22BAC81E8(v235 + v99, &qword_27D8DF3A0, &qword_22BB220B8);
      v102 = v233;
      v101 = v234;
      (*(v233 + 32))(v100 + v99, v30, v234);
      (*(v102 + 56))(v100 + v99, 0, 1, v101);
    }

    else
    {

      v114 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);
      v115 = v235;
      sub_22BAC81E8(v235 + v114, &qword_27D8DF3A0, &qword_22BB220B8);
      (*(v233 + 56))(v115 + v114, 1, 1, v234);
    }

    return;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "useractivit");
  HIDWORD(v241[1]) = -352321536;
  if (sub_22BB1FA6C())
  {

    v103 = sub_22BB1FA3C();
    v105 = v104;

    v238[0] = v103;
    v238[1] = v105;
    v241[0] = 7105633;
    v241[1] = 0xE300000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v238[0] = v103;
      v238[1] = v105;
      strcpy(v241, "current");
      v241[1] = 0xE700000000000000;
      v116 = sub_22BB1FA6C();

      v117 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 84);
      v118 = sub_22BB1EC5C();
      v119 = *(v118 - 8);
      (*(v119 + 8))(v235 + v117, v118);
      if (v116)
      {
        v120 = MEMORY[0x277D747D8];
      }

      else
      {
        v120 = MEMORY[0x277D747F0];
      }

      (*(v119 + 104))(v235 + v117, *v120, v118);
      return;
    }

    v106 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 84);
    v107 = sub_22BB1EC5C();
    v108 = *(v107 - 8);
    v109 = v235;
    (*(v108 + 8))(v235 + v106, v107);
    v110 = MEMORY[0x277D747E0];
    goto LABEL_88;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "windowcontent");
  HIWORD(v241[1]) = -4864;
  if (sub_22BB1FA6C())
  {

    v111 = sub_22BB1FA3C();
    v113 = v112;

    v238[0] = v111;
    v238[1] = v113;
    v241[0] = 1869903201;
    v241[1] = 0xE400000000000000;
    if (sub_22BB1FA6C())
    {

      v106 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 124);
      v107 = sub_22BB1F0BC();
      v108 = *(v107 - 8);
      v109 = v235;
      (*(v108 + 8))(v235 + v106, v107);
      v110 = MEMORY[0x277D748D8];
    }

    else
    {
      v238[0] = v111;
      v238[1] = v113;
      v241[0] = 0x656C62616E65;
      v241[1] = 0xE600000000000000;
      if (sub_22BB1FA6C())
      {
      }

      else
      {
        v125 = sub_22BB1F66C();

        v126 = [v125 BOOLValue];

        if (!v126)
        {
          v106 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 124);
          v107 = sub_22BB1F0BC();
          v108 = *(v107 - 8);
          v109 = v235;
          (*(v108 + 8))(v235 + v106, v107);
          v110 = MEMORY[0x277D748D0];
          goto LABEL_88;
        }
      }

      v106 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 124);
      v107 = sub_22BB1F0BC();
      v108 = *(v107 - 8);
      v109 = v235;
      (*(v108 + 8))(v235 + v106, v107);
      v110 = MEMORY[0x277D748B8];
    }

LABEL_88:
    (*(v108 + 104))(v109 + v106, *v110, v107);
    return;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "downscale");
  WORD1(v241[1]) = 0;
  HIDWORD(v241[1]) = -385875968;
  if (sub_22BB1FA6C())
  {

    v121 = sub_22BB1FA2C();

    v122 = [v121 BOOLValue];

    v123 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 108);
LABEL_77:
    *(v235 + v123) = v122;
    return;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "assistantui");
  HIDWORD(v241[1]) = -352321536;
  if (sub_22BB1FA6C())
  {

    v124 = sub_22BB1FA2C();

    v122 = [v124 BOOLValue];

    v123 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 116);
    goto LABEL_77;
  }

  v238[0] = v39;
  v238[1] = v41;
  v241[0] = sub_22BB1F6BC();
  v241[1] = v127;
  v128 = sub_22BB1FA6C();

  if (v128)
  {

    v129 = sub_22BB1FA3C();
    v131 = v130;

    v238[0] = v129;
    v238[1] = v131;
    v241[0] = 28526;
    v241[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v238[0] = v129;
      v238[1] = v131;
      strcpy(v241, "collect");
      v241[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v238[0] = v129;
        v238[1] = v131;
        v241[0] = 1701603686;
        v241[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v238[0] = v129;
          v238[1] = v131;
          v241[0] = 1886217588;
          v241[1] = 0xE400000000000000;
          v132 = sub_22BB1FA6C();

          if (v132)
          {
            v133 = MEMORY[0x277D74838];
          }

          else
          {
            v133 = MEMORY[0x277D74830];
          }

          (*(v221 + 104))(v226, *v133, v220);
        }

        else
        {

          (*(v221 + 104))(v226, *MEMORY[0x277D74848], v220);
        }

        v178 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
        (*(v221 + 40))(v235 + *(v178 + 104), v226, v220);
        return;
      }
    }

    v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 104);
    goto LABEL_128;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "imagemedia");
  BYTE3(v241[1]) = 0;
  HIDWORD(v241[1]) = -369098752;
  if (sub_22BB1FA6C())
  {

    v134 = sub_22BB1FA3C();
    v136 = v135;

    v238[0] = v134;
    v238[1] = v136;
    v241[0] = 28526;
    v241[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v238[0] = v134;
      v238[1] = v136;
      strcpy(v241, "collect");
      v241[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v238[0] = v134;
        v238[1] = v136;
        v241[0] = 1701603686;
        v241[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v238[0] = v134;
          v238[1] = v136;
          v241[0] = 1886217588;
          v241[1] = 0xE400000000000000;
          v137 = sub_22BB1FA6C();

          if (v137)
          {
            v138 = MEMORY[0x277D74838];
          }

          else
          {
            v138 = MEMORY[0x277D74830];
          }

          (*(v221 + 104))(v225, *v138, v220);
        }

        else
        {

          (*(v221 + 104))(v225, *MEMORY[0x277D74848], v220);
        }

        v191 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
        v192 = *(v221 + 40);
        v193 = v235 + *(v191 + 100);
        v194 = &v245;
        goto LABEL_164;
      }
    }

    v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 100);
LABEL_128:
    v174 = v221;
    v175 = v235;
    v176 = v220;
    (*(v221 + 8))(v235 + v139, v220);
    v177 = MEMORY[0x277D74820];
    goto LABEL_129;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "imagecontent");
  BYTE5(v241[1]) = 0;
  HIWORD(v241[1]) = -5120;
  if (sub_22BB1FA6C())
  {

    v140 = sub_22BB1FA3C();
    v142 = v141;

    v238[0] = v140;
    v238[1] = v142;
    v241[0] = 28526;
    v241[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v238[0] = v140;
      v238[1] = v142;
      strcpy(v241, "collect");
      v241[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v238[0] = v140;
        v238[1] = v142;
        v241[0] = 1701603686;
        v241[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v238[0] = v140;
          v238[1] = v142;
          v241[0] = 1886217588;
          v241[1] = 0xE400000000000000;
          v143 = sub_22BB1FA6C();

          if (v143)
          {
            v144 = MEMORY[0x277D74838];
          }

          else
          {
            v144 = MEMORY[0x277D74830];
          }

          (*(v221 + 104))(v223, *v144, v220);
        }

        else
        {

          (*(v221 + 104))(v223, *MEMORY[0x277D74848], v220);
        }

        v204 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
        v192 = *(v221 + 40);
        v193 = v235 + *(v204 + 96);
        v194 = &v243;
        goto LABEL_164;
      }
    }

    v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 96);
    goto LABEL_128;
  }

  v238[0] = v39;
  v238[1] = v41;
  strcpy(v241, "document");
  BYTE1(v241[1]) = 0;
  WORD1(v241[1]) = 0;
  HIDWORD(v241[1]) = -402653184;
  if ((sub_22BB1FA6C() & 1) == 0 || (v238[0] = v39, v238[1] = v41, v241[0] = 1701869940, v241[1] = 0xE400000000000000, (sub_22BB1FA6C() & 1) == 0))
  {
    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "document");
    BYTE1(v241[1]) = 0;
    WORD1(v241[1]) = 0;
    HIDWORD(v241[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v161 = sub_22BB1FA3C();
      v163 = v162;

      v238[0] = v161;
      v238[1] = v163;
      v241[0] = 28526;
      v241[1] = 0xE200000000000000;
      if ((sub_22BB1FA6C() & 1) == 0)
      {
        v238[0] = v161;
        v238[1] = v163;
        strcpy(v241, "collect");
        v241[1] = 0xE700000000000000;
        if (sub_22BB1FA6C())
        {
          v238[0] = v161;
          v238[1] = v163;
          v241[0] = 1701603686;
          v241[1] = 0xE400000000000000;
          if (sub_22BB1FA6C())
          {
            v238[0] = v161;
            v238[1] = v163;
            v241[0] = 1886217588;
            v241[1] = 0xE400000000000000;
            v164 = sub_22BB1FA6C();

            if (v164)
            {
              v165 = MEMORY[0x277D74838];
            }

            else
            {
              v165 = MEMORY[0x277D74830];
            }

            (*(v221 + 104))(v224, *v165, v220);
          }

          else
          {

            (*(v221 + 104))(v224, *MEMORY[0x277D74848], v220);
          }

          v209 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
          v192 = *(v221 + 40);
          v193 = v235 + *(v209 + 88);
          v194 = &v244;
          goto LABEL_164;
        }
      }

      v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 88);
      goto LABEL_128;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "components");
    BYTE3(v241[1]) = 0;
    HIDWORD(v241[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v166 = sub_22BB1FA3C();
      v168 = v167;

      v238[0] = v166;
      v238[1] = v168;
      v241[0] = 44;
      v241[1] = 0xE100000000000000;
      v169 = sub_22BB1FA5C();

      v170 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
      v171 = *(v170 + 132);
      *(v235 + v171) = 0;
      strcpy(v238, "elements");
      BYTE1(v238[1]) = 0;
      WORD1(v238[1]) = 0;
      HIDWORD(v238[1]) = -402653184;
      MEMORY[0x28223BE20](v170);
      *(&v218 - 2) = v238;
      v172 = sub_22BAF9210(sub_22BB06EC0, (&v218 - 4), v169);
      if (v172)
      {
        *(v235 + v171) = 1;
        v173 = 3;
      }

      else
      {
        v173 = 2;
      }

      strcpy(v238, "commands");
      BYTE1(v238[1]) = 0;
      WORD1(v238[1]) = 0;
      HIDWORD(v238[1]) = -402653184;
      MEMORY[0x28223BE20](v172);
      *(&v218 - 2) = v238;
      v198 = sub_22BAF9210(sub_22BB06EC0, (&v218 - 4), v169);

      if (v198)
      {
        *(v235 + v171) = v173;
      }

      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    strcpy(v241, "commandoptions");
    HIBYTE(v241[1]) = -18;
    if (sub_22BB1FA6C())
    {

      v179 = sub_22BB1FA3C();
      v181 = v180;

      v238[0] = v179;
      v238[1] = v181;
      v241[0] = 44;
      v241[1] = 0xE100000000000000;
      v182 = sub_22BB1FA5C();

      strcpy(v238, "nonperformable");
      HIBYTE(v238[1]) = -18;
      MEMORY[0x28223BE20](v183);
      *(&v218 - 2) = v238;
      v184 = sub_22BAF9210(sub_22BB06908, (&v218 - 4), v182);
      if (v184 & 1) != 0 || (strcpy(v238, "disabled"), BYTE1(v238[1]) = 0, WORD1(v238[1]) = 0, HIDWORD(v238[1]) = -402653184, MEMORY[0x28223BE20](v184), *(&v218 - 2) = v238, v185 = sub_22BAF9210(sub_22BB06EC0, (&v218 - 4), v182), (v185))
      {
        v186 = v235 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 136);
        v185 = sub_22BB1EE7C();
      }

      strcpy(v238, "untitled");
      BYTE1(v238[1]) = 0;
      WORD1(v238[1]) = 0;
      HIDWORD(v238[1]) = -402653184;
      MEMORY[0x28223BE20](v185);
      *(&v218 - 2) = v238;
      v187 = sub_22BAF9210(sub_22BB06EC0, (&v218 - 4), v182);
      if (v187)
      {
        v188 = v235 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 136);
        v187 = sub_22BB1EE5C();
      }

      v238[0] = 0x646568636163;
      v238[1] = 0xE600000000000000;
      MEMORY[0x28223BE20](v187);
      *(&v218 - 2) = v238;
      v189 = sub_22BAF9210(sub_22BB06EC0, (&v218 - 4), v182);

      if (v189)
      {
        v190 = v235 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 136);
        sub_22BB1EE6C();
      }

      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = sub_22BB1F6BC();
    v241[1] = v199;
    v200 = sub_22BB1FA6C();

    if (v200)
    {

      v201 = sub_22BB1FA2C();

      v202 = [v201 BOOLValue];

      if (!v202)
      {
        return;
      }

      v175 = v235;
      v203 = *(v235 + 24);

      *(v175 + 24) = MEMORY[0x277D84FA0];
      v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 112);
      v174 = v221;
      v176 = v220;
      (*(v221 + 8))(v175 + v139, v220);
      v177 = MEMORY[0x277D74848];
LABEL_129:
      (*(v174 + 104))(v175 + v139, *v177, v176);
      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = sub_22BB1F6BC();
    v241[1] = v205;
    v206 = sub_22BB1FA6C();

    if (v206)
    {

      v207 = sub_22BB1FA2C();

      v208 = [v207 BOOLValue];

      if (v208)
      {
        *(v235 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 120)) = 1;
      }

      return;
    }

    v238[0] = v39;
    v238[1] = v41;
    v241[0] = sub_22BB1F6BC();
    v241[1] = v210;
    v211 = sub_22BB1FA6C();

    if (v211)
    {
      v212 = sub_22BB1FA3C();
      v214 = v213;

      v238[0] = v212;
      v238[1] = v214;
      v241[0] = 28526;
      v241[1] = 0xE200000000000000;
      if ((sub_22BB1FA6C() & 1) != 0 || (v238[0] = v212, v238[1] = v214, strcpy(v241, "collect"), v241[1] = 0xE700000000000000, (sub_22BB1FA6C() & 1) == 0))
      {

        v139 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 112);
        goto LABEL_128;
      }

      v238[0] = v212;
      v238[1] = v214;
      v241[0] = 1701603686;
      v241[1] = 0xE400000000000000;
      if (sub_22BB1FA6C())
      {
        v238[0] = v212;
        v238[1] = v214;
        v241[0] = 1886217588;
        v241[1] = 0xE400000000000000;
        v215 = sub_22BB1FA6C();

        if (v215)
        {
          v216 = MEMORY[0x277D74838];
        }

        else
        {
          v216 = MEMORY[0x277D74830];
        }

        (*(v221 + 104))(v219, *v216, v220);
        goto LABEL_177;
      }

LABEL_174:

      (*(v221 + 104))(v219, *MEMORY[0x277D74848], v220);
LABEL_177:
      v217 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
      v192 = *(v221 + 40);
      v193 = v235 + *(v217 + 112);
      v194 = &v242;
LABEL_164:
      v192(v193, *(v194 - 32), v220);
      return;
    }

LABEL_9:

    return;
  }

  v145 = sub_22BB1FA3C();
  v147 = v146;

  v238[0] = v145;
  v238[1] = v147;
  v241[0] = 44;
  v241[1] = 0xE100000000000000;
  v148 = sub_22BB1FA5C();

  v149 = *(v148 + 16);
  if (v149)
  {
    v150 = 0;
    v151 = (v227 + 48);
    v152 = (v227 + 32);
    v153 = (v148 + 40);
    v154 = MEMORY[0x277D84F90];
    while (v150 < *(v148 + 16))
    {
      v156 = *(v153 - 1);
      v155 = *v153;

      v157 = v230;
      sub_22BB1F32C();
      if ((*v151)(v157, 1, v229) == 1)
      {
        sub_22BAC81E8(v230, &qword_27D8DF520, &unk_22BB227C0);
      }

      else
      {
        v158 = *v152;
        (*v152)(v228, v230, v229);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_22BAF6218(0, *(v154 + 2) + 1, 1, v154);
        }

        v160 = *(v154 + 2);
        v159 = *(v154 + 3);
        if (v160 >= v159 >> 1)
        {
          v154 = sub_22BAF6218(v159 > 1, v160 + 1, 1, v154);
        }

        *(v154 + 2) = v160 + 1;
        v158(&v154[((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v160], v228, v229);
      }

      ++v150;
      v153 += 2;
      if (v149 == v150)
      {
        goto LABEL_147;
      }
    }

    __break(1u);
    goto LABEL_174;
  }

  v154 = MEMORY[0x277D84F90];
LABEL_147:

  v195 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 92);
  v196 = v235;
  v197 = *(v235 + v195);

  *(v196 + v195) = v154;
}

uint64_t sub_22BB02D84()
{
  v0 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  __swift_allocate_value_buffer(v0, qword_281424E90);
  v1 = __swift_project_value_buffer(v0, qword_281424E90);
  return IntelligenceSupportAgent.RequestParameters.init()(v1);
}

uint64_t sub_22BB02DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_22BB033C8(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22BB033C8((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_22BAEEDE4(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22BB02ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22BAC8968(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22BABDE24(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22BAC8968((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_22BB02FE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22BB1F79C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22BAF6240(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22BAF6240((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22BB1F77C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22BB1F6FC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22BB1F6FC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22BB1F79C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22BAF6240(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22BB1F79C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22BAF6240(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22BAF6240((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22BB1F6FC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_22BB033A8(void *a1, int64_t a2, char a3)
{
  result = sub_22BB03490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BB033C8(char *a1, int64_t a2, char a3)
{
  result = sub_22BB035D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22BB033E8(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF300, &qword_22BB21FD8, MEMORY[0x277D746F8]);
  *v3 = result;
  return result;
}

size_t sub_22BB0342C(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF560, &qword_22BB227E8, MEMORY[0x277D74708]);
  *v3 = result;
  return result;
}

void *sub_22BB03470(void *a1, int64_t a2, char a3)
{
  result = sub_22BB03710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BB03490(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF550, &qword_22BB227E0);
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
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A8, &unk_22BB220C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BB035D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF510, &qword_22BB227B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22BB03710(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF570, &qword_22BB22808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF578, &unk_22BB22810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_22BB03844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22BB069D0();

  result = sub_22BB1F78C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22BB03DDC();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22BB1FBBC();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22BB03DDC()
{
  v0 = sub_22BB1F79C();
  v4 = sub_22BB03E5C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22BB03E5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22BB1F6DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22BB1FA4C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22BABFC38(v9, 0);
  v12 = sub_22BB03FB4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22BB1F6DC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22BB1FBBC();
LABEL_4:

  return sub_22BB1F6DC();
}

unint64_t sub_22BB03FB4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22BB041D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22BB1F75C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22BB1FBBC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22BB041D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22BB1F72C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22BB041D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BB1F76C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23189D160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22BB04250(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22BB1FBBC();
  }

  result = sub_22BB06A24(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22BB04358()
{
  result = qword_27D8DF390;
  if (!qword_27D8DF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF390);
  }

  return result;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EC1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF540, &unk_22BB227D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v18 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_25;
    }
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = v15;
    v22 = *(a2 + 24);

    sub_22BAF92BC(v19, v20);
    v24 = v23;

    v15 = v21;
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v20)
  {
    goto LABEL_25;
  }

  v25 = *(a1 + 32);
  v26 = *(a2 + 32);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_25;
    }

    v27 = v15;
    v28 = *(a2 + 32);

    v29 = sub_22BAF966C(v25, v26);

    if ((v29 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = v15;
    if (v26)
    {
      goto LABEL_25;
    }
  }

  sub_22BAF92BC(*(a1 + 40), *(a2 + 40));
  if ((v30 & 1) == 0 || (sub_22BAF966C(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))))) & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    goto LABEL_25;
  }

  v33 = *(a2 + 112);
  if (*(a1 + 112))
  {
    if (!*(a2 + 112))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 104) != *(a2 + 104))
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 113) != *(a2 + 113) || *(a1 + 114) != *(a2 + 114) || *(a1 + 115) != *(a2 + 115))
  {
    goto LABEL_25;
  }

  v48 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v34 = v48[19];
  v35 = *(v27 + 48);
  sub_22BAD6B34(a1 + v34, v17, &qword_27D8DF3A0, &qword_22BB220B8);
  v49 = v35;
  sub_22BAD6B34(a2 + v34, &v17[v35], &qword_27D8DF3A0, &qword_22BB220B8);
  v36 = *(v5 + 48);
  if (v36(v17, 1, v4) != 1)
  {
    sub_22BAD6B34(v17, v12, &qword_27D8DF3A0, &qword_22BB220B8);
    if (v36(&v17[v49], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v49], v4);
      sub_22BACFADC(&qword_27D8DF548, MEMORY[0x277D747A8]);
      v37 = sub_22BB1F65C();
      v38 = *(v5 + 8);
      v38(v8, v4);
      v38(v12, v4);
      sub_22BAC81E8(v17, &qword_27D8DF3A0, &qword_22BB220B8);
      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_43;
    }

    (*(v5 + 8))(v12, v4);
LABEL_41:
    sub_22BAC81E8(v17, &qword_27D8DF540, &unk_22BB227D0);
    goto LABEL_25;
  }

  if (v36(&v17[v49], 1, v4) != 1)
  {
    goto LABEL_41;
  }

  sub_22BAC81E8(v17, &qword_27D8DF3A0, &qword_22BB220B8);
LABEL_43:
  if (MEMORY[0x23189C6B0](a1 + v48[20], a2 + v48[20]))
  {
    v39 = v48[21];
    if (sub_22BB1EC4C())
    {
      v40 = v48[22];
      if (sub_22BB1EC4C() & 1) != 0 && (sub_22BAF9C1C(*(a1 + v48[23]), *(a2 + v48[23]), MEMORY[0x277D85578], &qword_27D8DF518, MEMORY[0x277D85578], MEMORY[0x277D85590]))
      {
        v41 = v48[24];
        if (sub_22BB1EC4C())
        {
          v42 = v48[25];
          if (sub_22BB1EC4C())
          {
            v43 = v48[26];
            if ((sub_22BB1EC4C() & 1) != 0 && *(a1 + v48[27]) == *(a2 + v48[27]))
            {
              v44 = v48[28];
              if ((sub_22BB1EC4C() & 1) != 0 && *(a1 + v48[29]) == *(a2 + v48[29]) && *(a1 + v48[30]) == *(a2 + v48[30]))
              {
                v45 = v48[31];
                if (sub_22BB1EC4C())
                {
                  sub_22BAF9824(*(a1 + v48[32]), *(a2 + v48[32]));
                  if ((v46 & 1) != 0 && *(a1 + v48[33]) == *(a2 + v48[33]))
                  {
                    v47 = v48[34];
                    v31 = sub_22BB1EE8C();
                    return v31 & 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  v31 = 0;
  return v31 & 1;
}

unint64_t sub_22BB04A40()
{
  result = qword_27D8DF3B8;
  if (!qword_27D8DF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF3B8);
  }

  return result;
}

unint64_t sub_22BB04A94()
{
  result = qword_27D8DF1C8;
  if (!qword_27D8DF1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFADC(&qword_27D8DF158, MEMORY[0x277D74708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1C8);
  }

  return result;
}

unint64_t sub_22BB04B48()
{
  result = qword_27D8DF3D0;
  if (!qword_27D8DF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF3D0);
  }

  return result;
}

unint64_t sub_22BB04B9C()
{
  result = qword_27D8DF400;
  if (!qword_27D8DF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BACFADC(&qword_27D8DF408, MEMORY[0x277D85578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF400);
  }

  return result;
}

unint64_t sub_22BB04C50()
{
  result = qword_27D8DF420;
  if (!qword_27D8DF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BACFADC(&qword_27D8DF428, MEMORY[0x277D74500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF420);
  }

  return result;
}

unint64_t sub_22BB04D04()
{
  result = qword_27D8DF430;
  if (!qword_27D8DF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF430);
  }

  return result;
}

uint64_t sub_22BB04D58(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BB04DB4()
{
  result = qword_27D8DF1F0;
  if (!qword_27D8DF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFADC(&qword_27D8DF148, MEMORY[0x277D74708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1F0);
  }

  return result;
}

uint64_t sub_22BB04E68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3C0, &qword_22BB220E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BB04ED4()
{
  result = qword_27D8DF450;
  if (!qword_27D8DF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF450);
  }

  return result;
}

unint64_t sub_22BB04F28()
{
  result = qword_27D8DF478;
  if (!qword_27D8DF478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BACFADC(&qword_27D8DF480, MEMORY[0x277D85578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF478);
  }

  return result;
}

unint64_t sub_22BB04FDC()
{
  result = qword_27D8DF490;
  if (!qword_27D8DF490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BACFADC(&qword_27D8DF498, MEMORY[0x277D74500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF490);
  }

  return result;
}

unint64_t sub_22BB05090()
{
  result = qword_27D8DF4A0;
  if (!qword_27D8DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4A0);
  }

  return result;
}

uint64_t sub_22BB050E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB05148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22BB051E8()
{
  result = qword_27D8DF4C8;
  if (!qword_27D8DF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4C8);
  }

  return result;
}

unint64_t sub_22BB05240()
{
  result = qword_27D8DF4D0;
  if (!qword_27D8DF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4D0);
  }

  return result;
}

unint64_t sub_22BB05294()
{
  result = qword_281424EB0;
  if (!qword_281424EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424EB0);
  }

  return result;
}

unint64_t sub_22BB052EC()
{
  result = qword_281424EA8;
  if (!qword_281424EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424EA8);
  }

  return result;
}

void sub_22BB05368()
{
  sub_22BB0575C(319, &unk_281424090);
  if (v0 <= 0x3F)
  {
    sub_22BB0561C(319, &qword_281424110, &qword_27D8DF1C0, &qword_22BB21AE8);
    if (v1 <= 0x3F)
    {
      sub_22BB0561C(319, &qword_281424100, &qword_27D8DF3C0, &qword_22BB220E0);
      if (v2 <= 0x3F)
      {
        sub_22BB05670();
        if (v3 <= 0x3F)
        {
          sub_22BB05704();
          if (v4 <= 0x3F)
          {
            sub_22BB0575C(319, &qword_2814240F8);
            if (v5 <= 0x3F)
            {
              sub_22BB057A8(319, &qword_2814250A8, MEMORY[0x277D747A8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22BB1EC9C();
                if (v7 <= 0x3F)
                {
                  sub_22BB1EC5C();
                  if (v8 <= 0x3F)
                  {
                    sub_22BB1EC7C();
                    if (v9 <= 0x3F)
                    {
                      sub_22BB057A8(319, &unk_281424158, MEMORY[0x277D85578], MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        sub_22BB1F0BC();
                        if (v11 <= 0x3F)
                        {
                          sub_22BB0580C();
                          if (v12 <= 0x3F)
                          {
                            sub_22BB1EE9C();
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

void sub_22BB0561C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22BB1FA1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22BB05670()
{
  if (!qword_281424118)
  {
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708]);
    v0 = sub_22BB1F88C();
    if (!v1)
    {
      atomic_store(v0, &qword_281424118);
    }
  }
}

void sub_22BB05704()
{
  if (!qword_281424108)
  {
    v0 = sub_22BB1F88C();
    if (!v1)
    {
      atomic_store(v0, &qword_281424108);
    }
  }
}

void sub_22BB0575C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22BB1FA1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22BB057A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BB0580C()
{
  if (!qword_281424120)
  {
    sub_22BB1E67C();
    sub_22BACFADC(&qword_281425110, MEMORY[0x277D74500]);
    v0 = sub_22BB1F88C();
    if (!v1)
    {
      atomic_store(v0, &qword_281424120);
    }
  }
}

uint64_t sub_22BB058A0(uint64_t a1, int a2)
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

uint64_t sub_22BB058C0(uint64_t result, int a2, int a3)
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

uint64_t _s14descr283F6AF29O17RequestParametersV10ComponentsVwet(uint64_t a1, int a2)
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

uint64_t _s14descr283F6AF29O17RequestParametersV10ComponentsVwst(uint64_t result, int a2, int a3)
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

uint64_t _s14descr283F6AF29O17RequestParametersV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr283F6AF29O17RequestParametersV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BB05AC4()
{
  result = qword_27D8DF4D8;
  if (!qword_27D8DF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4D8);
  }

  return result;
}

unint64_t sub_22BB05B1C()
{
  result = qword_27D8DF4E0;
  if (!qword_27D8DF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4E0);
  }

  return result;
}

unint64_t sub_22BB05B74()
{
  result = qword_27D8DF4E8;
  if (!qword_27D8DF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4E8);
  }

  return result;
}

unint64_t sub_22BB05BCC()
{
  result = qword_27D8DF4F0;
  if (!qword_27D8DF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4F0);
  }

  return result;
}

unint64_t sub_22BB05C24()
{
  result = qword_27D8DF4F8;
  if (!qword_27D8DF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4F8);
  }

  return result;
}

unint64_t sub_22BB05C7C()
{
  result = qword_27D8DF500;
  if (!qword_27D8DF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF500);
  }

  return result;
}

uint64_t sub_22BB05CD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022BB27960 == a2;
  if (v3 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27980 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973695661657261 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22BB05E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696C646165645FLL && a2 == 0xE900000000000065 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB279A0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022BB279C0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB279E0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022BB27A00 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BB27A20 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BB27A40 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27A60 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27A80 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022BB27AA0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022BB27AD0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x476564756C636E69 && a2 == 0xEF797274656D6F65 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BB27AF0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022BB27B10 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27B30 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6974704F74786574 && a2 == 0xEB00000000736E6FLL || (sub_22BB1FD9C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00736569746976 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF746E65746E6F43 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022BB27B50 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E6F436567616D69 && a2 == 0xEC000000746E6574 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27B70 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27B90 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022BB27BB0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27BD0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27BF0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022BB27C10 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022BB27C40 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27C70 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB27C90 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4F646E616D6D6F63 && a2 == 0xEE00736E6F697470)
  {

    return 30;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
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

unint64_t sub_22BB068B4()
{
  result = qword_27D8DF528;
  if (!qword_27D8DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF528);
  }

  return result;
}

uint64_t sub_22BB06924(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22BB1FD9C() & 1;
  }
}

unint64_t sub_22BB0697C()
{
  result = qword_27D8DF530;
  if (!qword_27D8DF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF530);
  }

  return result;
}

unint64_t sub_22BB069D0()
{
  result = qword_27D8DF538;
  if (!qword_27D8DF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF538);
  }

  return result;
}

uint64_t sub_22BB06A24(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22BB041D4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22BB1F74C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22BB041D4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22BB041D4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22BB1F74C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22BB06EF4(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_22BB1F52C();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22BB1F56C();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F5BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = _s17AsyncProviderTaskVMa();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v39 = &v38 - v23;
  sub_22BB1F0DC();
  v42 = a1;
  sub_22BAC8A94(v13, 0xD000000000000017, 0x800000022BB27DC0, v17);
  (*(v10 + 8))(v13, v9);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_22BAC81E8(v17, &qword_27D8DF048, &unk_22BB216E0);
  }

  v25 = v39;
  sub_22BACDEBC(v17, v39);
  sub_22BAC9EBC(v25, v21);
  v26 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v27 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_22BACDEBC(v21, v29 + v26);
  v30 = (v29 + v27);
  v32 = v40;
  v31 = v41;
  *v30 = v40;
  v30[1] = v31;
  *(v29 + v28) = v42;
  aBlock[4] = sub_22BB074EC;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_3;
  v33 = _Block_copy(aBlock);
  v34 = v32;
  v31;

  v35 = v43;
  sub_22BB1F54C();
  v49 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  v36 = v45;
  v37 = v48;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v35, v36, v33);
  _Block_release(v33);
  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v46);
  sub_22BAC9F20(v25);
}

void sub_22BB07434(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = sub_22BB07588(a4, a2, a3);
  if (qword_281424D70 != -1)
  {
    v4 = swift_once();
  }

  v5 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock((v5 + 40));
  sub_22BACB55C((v5 + 16));
  os_unfair_lock_unlock((v5 + 40));
}

void sub_22BB074EC()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  sub_22BB07434(v0 + v2, v6, v7, v8);
}

uint64_t sub_22BB07588(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25[-v7];
  v9 = sub_22BB1EA5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v12 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a2 connectedIdentities];
  sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
  sub_22BB0787C();
  v16 = sub_22BB1F84C();

  v17 = a2;
  v18 = a3;
  sub_22BB07FDC(v16, v17);

  sub_22BB1EA4C();
  sub_22BB1EA0C();
  sub_22BB1F0FC();
  v19 = sub_22BB1F2EC();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_22BB1EA3C();
  if (qword_281424D70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF300, &qword_22BB21FD8);
  v20 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22BB20A70;
  (*(v10 + 16))(v22 + v21, v14, v9);
  sub_22BAE6F48(v22);
  swift_setDeallocating();
  v23 = *(v22 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return (*(v10 + 8))(v14, v9);
}

unint64_t sub_22BB0787C()
{
  result = qword_27D8DF580;
  if (!qword_27D8DF580)
  {
    sub_22BAC83C0(255, &qword_2814240C0, 0x277D0ACF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF580);
  }

  return result;
}

void sub_22BB078E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22BB1F21C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = v39 - v9;
  v39[0] = sub_22BB1E82C();
  v10 = *(v39[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v39[0]);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1E80C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  *&v17 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 isMainDisplay];
  v21 = MEMORY[0x277D74608];
  if (v20 && ![a1 isExternal])
  {
    v21 = MEMORY[0x277D74600];
  }

  v22 = [a1 hardwareIdentifier];
  if (v22)
  {
    v23 = v22;
    sub_22BB1F68C();
  }

  v24 = [a1 isCarDisplay];
  v25 = MEMORY[0x277D745F0];
  if (!v24)
  {
    v25 = MEMORY[0x277D745F8];
  }

  (*(v15 + 104))(v19, *v25, v14);
  (*(v10 + 104))(v13, *v21, v39[0]);
  [a1 bounds];
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = 0;
  [a1 pointScale];
  sub_22BB1E87C();
  sub_22BB1F1EC();
  v30 = [a1 name];
  sub_22BB1F68C();

  v31 = [a1 hardwareIdentifier];
  if (v31)
  {
    v32 = v31;
    sub_22BB1F68C();
  }

  [a1 pointScale];
  [a1 bounds];
  v33 = *(MEMORY[0x277CD9DE8] + 80);
  v46 = *(MEMORY[0x277CD9DE8] + 64);
  v47 = v33;
  v34 = *(MEMORY[0x277CD9DE8] + 112);
  v48 = *(MEMORY[0x277CD9DE8] + 96);
  v49 = v34;
  v35 = *(MEMORY[0x277CD9DE8] + 16);
  v42 = *MEMORY[0x277CD9DE8];
  v43 = v35;
  v36 = *(MEMORY[0x277CD9DE8] + 48);
  v44 = *(MEMORY[0x277CD9DE8] + 32);
  v45 = v36;
  v37 = v40;
  sub_22BB1F23C();
  v38 = sub_22BB1F2AC();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  sub_22BB1E85C();
}

id sub_22BB07D64()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  sub_22BB1F93C();
  return [objc_allocWithZone(MEMORY[0x277D0AD38]) init];
}

void *sub_22BB07FDC(uint64_t a1, void *a2)
{
  v69 = a2;
  v65 = sub_22BB1E93C();
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22BB1E88C();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = sub_22BB1E96C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v50 - v19;
  v55 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22BB1FACC();
    sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
    sub_22BB0787C();
    result = sub_22BB1F87C();
    a1 = v72;
    v21 = v73;
    v22 = v74;
    v23 = v75;
    v24 = v76;
  }

  else
  {
    v25 = -1 << *(a1 + 32);
    v21 = a1 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(a1 + 56);

    v23 = 0;
  }

  v54 = v22;
  v60 = (v7 + 16);
  v59 = *MEMORY[0x277D74668];
  v58 = (v4 + 104);
  v57 = (v7 + 8);
  v67 = (v15 + 48);
  v68 = (v15 + 56);
  v51 = v15;
  v52 = (v15 + 32);
  v28 = (v22 + 64) >> 6;
  v56 = MEMORY[0x277D84F90];
  v61 = v14;
  v66 = v28;
LABEL_8:
  for (i = v23; a1 < 0; v24 = v70)
  {
    v33 = sub_22BB1FAFC();
    if (!v33)
    {
      goto LABEL_28;
    }

    v71 = v33;
    sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
    swift_dynamicCast();
    v32 = v77;
    v23 = i;
    v70 = v24;
    if (!v77)
    {
      goto LABEL_28;
    }

LABEL_17:
    v34 = [v69 configurationForIdentity_];
    if (v34)
    {
      v35 = v34;
      v36 = v13;
      v37 = v62;
      sub_22BB078E4(v35, v62);
      [v35 bounds];
      v38 = v64;
      v39 = v21;
      v40 = a1;
      v41 = v63;
      (*v60)(v64, v37, v63);
      (*v58)(v38, v59, v65);
      sub_22BB1E6BC();

      v42 = v37;
      v13 = v36;
      v14 = v61;
      v43 = v41;
      a1 = v40;
      v21 = v39;
      v28 = v66;
      (*v57)(v42, v43);
      (*v68)(v13, 0, 1, v14);
    }

    else
    {
      (*v68)(v13, 1, 1, v14);
    }

    if ((*v67)(v13, 1, v14) != 1)
    {
      v44 = v21;
      v45 = *v52;
      v46 = v50;
      (*v52)(v50, v13, v14);
      v45(v53, v46, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_22BAD34A8(0, v56[2] + 1, 1, v56);
      }

      v48 = v56[2];
      v47 = v56[3];
      v21 = v44;
      if (v48 >= v47 >> 1)
      {
        v56 = sub_22BAD34A8(v47 > 1, v48 + 1, 1, v56);
      }

      v28 = v66;
      v49 = v56;
      v56[2] = v48 + 1;
      result = (v45)(v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v48, v53, v14);
      v24 = v70;
      goto LABEL_8;
    }

    result = sub_22BAC81E8(v13, &unk_27D8DF5D0, qword_22BB22830);
    i = v23;
  }

  v30 = i;
  v31 = v24;
  v23 = i;
  if (v24)
  {
LABEL_13:
    v70 = (v31 - 1) & v31;
    v32 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v31)))));
    if (v32)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_22BB086F8();
    return v56;
  }

  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      goto LABEL_28;
    }

    v31 = *(v21 + 8 * v23);
    ++v30;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22BB08700(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1F45C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = mach_continuous_time();
  v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v8 = sub_22BB095B4(a1, a2, 0);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  aBlock[4] = sub_22BB09B8C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB08CEC;
  aBlock[3] = &block_descriptor_27_0;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v11 getDeviceManagementPolicyWithCompletionHandler_];

  _Block_release(v10);
}

uint64_t sub_22BB08A68(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_22BB1F35C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F3AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_22BB1F38C();
  sub_22BB1F38C();
  sub_22BB1F39C();
  v17 = a2;
  sub_22BB1F33C();
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD381C(v19);
  v20 = sub_22BB1F39C();
  v21 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v22 = swift_slowAlloc();
    v27 = v4;
    v23 = v22;
    *v22 = 134217984;
    *(v22 + 4) = v28;
    v24 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v20, v21, v24, "PrewarmManagementPolicy", "%{public, signpost.description:begin_time}llu", v23, 0xCu);
    v25 = v23;
    v4 = v27;
    MEMORY[0x23189DF20](v25, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return (v18)(v16, v9);
}

uint64_t sub_22BB08CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22BB08D40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{

  v6 = sub_22BB1A2A0(&v8, a1, a2);

  *a3 = v6 & 1;
  return result;
}

void sub_22BB08DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  os_unfair_lock_lock(v2 + 16);
  sub_22BB097BC(&v2[4]);
  os_unfair_lock_unlock(v2 + 16);
  if (qword_281424D70 != -1)
  {
    v3 = swift_once();
  }

  v4 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock((v4 + 40));
  sub_22BACB55C((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));
}

unint64_t sub_22BB08E94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = mach_continuous_time();
  *(a1 + 24) = 0;
  v8 = *(a1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 32);
  result = sub_22BB0EF34(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_22BB08F1C()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281424348 = result;
  return result;
}

uint64_t sub_22BB0917C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F5BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF590, &qword_22BB22918);
  v13 = swift_allocObject();
  *(v13 + 64) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v14 = MEMORY[0x277D84FA0];
  *(v13 + 48) = MEMORY[0x277D84F98];
  *(v13 + 56) = v14;
  *(v2 + v12) = v13;
  sub_22BB1F0CC();
  sub_22BB1F10C();
  sub_22BB1F5DC();
  v15 = sub_22BB1F11C();
  (*(*(v15 - 8) + 8))(a1, v15);
  (*(v5 + 8))(v8, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline, v11, v4);
  return v2;
}

uint64_t sub_22BB09358()
{
  v1 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline;
  v2 = sub_22BB1F5BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagementPolicyProvider()
{
  result = qword_281424320;
  if (!qword_281424320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB09458()
{
  result = sub_22BB1F5BC();
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

uint64_t getEnumTagSinglePayload for ManagementPolicyProvider.PolicyStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

id sub_22BB095B4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BB1F66C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22BB096AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BB09714(uint64_t a1)
{
  v3 = *(*(_s17AsyncProviderTaskVMa() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  sub_22BB08DB4(a1, v4);
}

uint64_t sub_22BB0978C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 != 0);
}

uint64_t sub_22BB097DC()
{
  v0 = sub_22BB1F52C();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BB1F56C();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F53C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v13 = sub_22BB1F94C();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000015;
  *(v14 + 24) = 0x800000022BB27EF0;
  aBlock[4] = sub_22BB09B84;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_21_0;
  v15 = _Block_copy(aBlock);
  sub_22BB1F54C();
  v20 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v7, v3, v15);
  _Block_release(v15);

  (*(v19 + 8))(v3, v0);
  (*(v4 + 8))(v7, v18);
}

uint64_t sub_22BB09BA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF650, &qword_22BB22C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_22BB1EA5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_22BAC81E8(a1, &unk_27D8DF650, &qword_22BB22C38);
    sub_22BB0E328(a2, v8);
    v15 = sub_22BB1E9DC();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_22BAC81E8(v8, &unk_27D8DF650, &qword_22BB22C38);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_22BB0E9D8(v14, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_22BB1E9DC();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_22BB09DD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_22BB1E68C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_22BAC81E8(a1, &unk_27D8DF5F0, &qword_22BB22BD8);
    sub_22BB0E4C8(a2, v8);
    v15 = sub_22BB1F2AC();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_22BAC81E8(v8, &unk_27D8DF5F0, &qword_22BB22BD8);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_22BB0F1F0(v14, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_22BB1F2AC();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_22BB0A000(char *a1)
{
  v2 = v1;
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v102 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF650, &qword_22BB22C38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v97 - v15;
  v119 = sub_22BB1E9DC();
  v105 = *(v119 - 1);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v119);
  v98 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v117 = &v97 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = &v97 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v97 - v24;
  v120 = sub_22BB1EA5C();
  v107 = *(v120 - 8);
  v26 = *(v107 + 64);
  MEMORY[0x28223BE20](v120);
  v97 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v97 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v97 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v97 - v38;
  v40 = sub_22BB1EFBC();
  v121 = v1;
  if ((v40 & 1) == 0)
  {
    sub_22BB1E97C();
    if ((*(v5 + 48))(v39, 1, v4) == 1)
    {
      sub_22BAC81E8(v39, &qword_27D8DEEA0, &qword_22BB20A30);
      v2 = v121;
    }

    else
    {
      v41 = sub_22BB1EA9C();
      v42 = v39;
      v44 = v43;
      (*(v5 + 8))(v42, v4);
      v2 = v121;
      if (v44)
      {
        v45 = v41;
        v46 = *(v121 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider);
        sub_22BAC96C4(v45, v44, v121);
      }
    }
  }

  v101 = v36;
  v103 = v5;
  v104 = v4;
  v110 = *(v107 + 16);
  v111 = v107 + 16;
  v110(v32, a1, v120);
  v124 = MEMORY[0x277D84F90];
  sub_22BB1E9FC();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v97 - 4) = a1;
  *(&v97 - 3) = v2;
  *(&v97 - 2) = &v124;
  sub_22BB1F7FC();

  v109 = v32;
  sub_22BB1EA0C();
  v106 = v124;
  v48 = *(v124 + 16);
  v49 = v119;
  if (v48)
  {
    v115 = *(v105 + 16);
    v50 = (v106 + ((*(v105 + 80) + 32) & ~*(v105 + 80)));
    v51 = *(v105 + 72);
    v116 = v105 + 16;
    v52 = (v105 + 8);
    v113 = (v107 + 56);
    v114 = v51;
    v112 = (v107 + 48);
    do
    {
      v57 = v16;
      v58 = v115;
      v115(v25, v50, v49);
      v59 = v117;
      v58(v117, v25, v49);
      v60 = v49;
      v61 = v121;
      swift_beginAccess();
      v62 = v118;
      sub_22BACF13C(v118, v59);
      swift_endAccess();
      v63 = *v52;
      (*v52)(v62, v60);
      swift_beginAccess();
      v64 = *(v61 + 56);
      if (*(v64 + 16))
      {
        v65 = sub_22BB19424(v25);
        v16 = v57;
        if (v66)
        {
          v67 = *(v64 + 56) + *(v107 + 72) * v65;
          v68 = v120;
          v110(v57, v67, v120);
          v69 = 0;
        }

        else
        {
          v69 = 1;
          v68 = v120;
        }
      }

      else
      {
        v69 = 1;
        v68 = v120;
        v16 = v57;
      }

      (*v113)(v16, v69, 1, v68);
      swift_endAccess();
      if ((*v112)(v16, 1, v68) == 1)
      {
        sub_22BAC81E8(v16, &unk_27D8DF650, &qword_22BB22C38);
        v53 = v121;
        swift_beginAccess();
        v54 = v108;
        v110(v108, v109, v68);
        v55 = *(v53 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = *(v53 + 48);
        *(v53 + 48) = 0x8000000000000000;
        sub_22BB0E9D8(v54, v25, isUniquelyReferenced_nonNull_native);
        *(v53 + 48) = v122;
        swift_endAccess();
        v49 = v119;
        v63(v25, v119);
      }

      else
      {
        v49 = v119;
        v63(v25, v119);
        sub_22BAC81E8(v16, &unk_27D8DF650, &qword_22BB22C38);
      }

      v50 += v114;
      --v48;
    }

    while (v48);
  }

  v70 = v100;
  v71 = v109;
  sub_22BB1EA1C();
  v72 = v105;
  if ((*(v105 + 48))(v70, 1, v49) == 1)
  {
    sub_22BAC81E8(v70, &qword_27D8DF630, &qword_22BB22C18);
    v73 = v97;
    v110(v97, v71, v120);
    v74 = v121;
    swift_beginAccess();
    v75 = *(v74 + 16);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *(v74 + 16) = v75;
    v77 = v103;
    v78 = v102;
    v79 = v101;
    if ((v76 & 1) == 0)
    {
      v75 = sub_22BAF609C(0, v75[2] + 1, 1, v75);
      *(v74 + 16) = v75;
    }

    v81 = v75[2];
    v80 = v75[3];
    v82 = v104;
    if (v81 >= v80 >> 1)
    {
      v75 = sub_22BAF609C(v80 > 1, v81 + 1, 1, v75);
    }

    v75[2] = v81 + 1;
    (*(v107 + 32))(v75 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v81, v73, v120);
    *(v74 + 16) = v75;
    swift_endAccess();
  }

  else
  {
    v83 = v98;
    (*(v72 + 32))(v98, v70, v49);
    v117 = *(v72 + 16);
    v84 = v118;
    (v117)(v118, v83, v49);
    v119 = *(v107 + 56);
    v85 = v99;
    v86 = v120;
    (v119)(v99, 1, 1, v120);
    v74 = v121;
    swift_beginAccess();
    sub_22BB09BA8(v85, v84);
    swift_endAccess();
    (v117)(v84, v83, v49);
    v110(v85, v109, v86);
    (v119)(v85, 0, 1, v86);
    swift_beginAccess();
    sub_22BB09BA8(v85, v84);
    swift_endAccess();
    v87 = v83;
    v71 = v109;
    (*(v72 + 8))(v87, v49);
    v82 = v104;
    v77 = v103;
    v78 = v102;
    v79 = v101;
  }

  sub_22BB1E97C();
  if ((*(v77 + 48))(v79, 1, v82) == 1)
  {
    (*(v107 + 8))(v71, v120);
    sub_22BAC81E8(v79, &qword_27D8DEEA0, &qword_22BB20A30);
  }

  else
  {
    (*(v77 + 32))(v78, v79, v82);
    swift_beginAccess();
    v88 = *(v74 + 64);
    if (*(v88 + 16) && (v89 = sub_22BB1927C(v78), (v90 & 1) != 0))
    {
      v91 = *(*(v88 + 56) + 8 * v89);
      swift_endAccess();

      v92 = sub_22BB1E9EC();
      v123 = v91;
      sub_22BAE1D28(v92);
      v93 = v123;
    }

    else
    {
      swift_endAccess();
      v93 = sub_22BB1E9EC();
    }

    swift_beginAccess();
    v94 = *(v74 + 64);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v122 = *(v74 + 64);
    *(v74 + 64) = 0x8000000000000000;
    sub_22BB0E80C(v93, v78, v95);
    *(v74 + 64) = v122;
    swift_endAccess();
    (*(v77 + 8))(v78, v82);
    (*(v107 + 8))(v71, v120);
  }
}

void *sub_22BB0AC78()
{
  v152 = type metadata accessor for FragmentCollator.PendingRemoteDetails(0);
  v151 = *(v152 - 8);
  v1 = *(v151 + 64);
  v2 = MEMORY[0x28223BE20](v152);
  v140 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v164 = &v139 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v143 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v139 - v9;
  v174 = sub_22BB1EADC();
  v11 = *(v174 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v174);
  v139 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v163 = &v139 - v15;
  v183 = sub_22BB1E96C();
  v16 = *(v183 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v183);
  v153 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BB1EA5C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v142 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v139 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v139 - v27;
  MEMORY[0x28223BE20](v26);
  v157 = &v139 - v29;
  v30 = sub_22BB1E9DC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v146 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v144 = &v139 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v139 - v38;
  MEMORY[0x28223BE20](v37);
  v156 = &v139 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF618, &qword_22BB22C00);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v166 = &v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v165 = &v139 - v45;
  swift_beginAccess();
  v145 = v0;
  v46 = *(v0 + 48);
  v47 = v30;
  v48 = v46 + 64;
  v49 = 1 << *(v46 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v180 = v50 & *(v46 + 64);
  v147 = (v49 + 63) >> 6;
  v171 = (v31 + 16);
  v159 = v20 + 16;
  v178 = (v31 + 32);
  v175 = (v20 + 32);
  v154 = v16 + 16;
  v155 = v16;
  v51 = (v16 + 8);
  v168 = (v11 + 48);
  v150 = (v11 + 32);
  v149 = (v11 + 16);
  v52 = (v11 + 8);
  v53 = v174;
  v148 = v52;
  v160 = v20;
  v54 = (v20 + 8);
  v55 = v19;
  v56 = v10;
  v167 = v54;
  v161 = v31;
  v169 = (v31 + 8);
  v158 = v46;

  v58 = 0;
  v173 = MEMORY[0x277D84F90];
  v172 = v55;
  v181 = v39;
  v182 = v47;
  v176 = v28;
  v177 = v10;
  v162 = v48;
  while (1)
  {
    v59 = v180;
    if (!v180)
    {
      break;
    }

    v179 = v58;
    v60 = v58;
LABEL_16:
    v180 = (v59 - 1) & v59;
    v63 = __clz(__rbit64(v59)) | (v60 << 6);
    v64 = v158;
    v65 = v161;
    (*(v161 + 16))(v156, *(v158 + 48) + *(v161 + 72) * v63, v182);
    v66 = *(v64 + 56);
    v67 = v160;
    v68 = v157;
    (*(v160 + 16))(v157, v66 + *(v160 + 72) * v63, v55);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
    v70 = *(v69 + 48);
    v71 = v166;
    (*(v65 + 32))();
    v72 = &v71[v70];
    v55 = v172;
    (*(v67 + 32))(v72, v68, v172);
    (*(*(v69 - 8) + 56))(v71, 0, 1, v69);
    v28 = v176;
    v56 = v177;
    v53 = v174;
    v39 = v181;
LABEL_17:
    v73 = v71;
    v74 = v165;
    sub_22BAD7044(v73, v165, &qword_27D8DF618, &qword_22BB22C00);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
    if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
    {

      v99 = v145;
      swift_beginAccess();
      v100 = *(v99 + 56);

      v102 = sub_22BACEEDC(v101);
      swift_beginAccess();
      if (*(*(v99 + 40) + 16) <= *(v102 + 16) >> 3)
      {
        v184 = v102;

        sub_22BB0F7AC(v106);

        v105 = v184;
      }

      else
      {
        v103 = *(v99 + 40);

        v105 = sub_22BB0F9C8(v104, v102);
      }

      v107 = 0;
      v108 = 1 << *(v105 + 32);
      v109 = -1;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      v110 = v109 & *(v105 + 56);
      v111 = (v108 + 63) >> 6;
      v183 = MEMORY[0x277D84F90];
      while (v110)
      {
LABEL_42:
        v113 = __clz(__rbit64(v110));
        v110 &= v110 - 1;
        v114 = v161;
        v115 = *(v161 + 16);
        v116 = v144;
        v117 = v182;
        v115(v144, *(v105 + 48) + *(v161 + 72) * (v113 | (v107 << 6)), v182);
        v118 = *(v114 + 32);
        v119 = v146;
        v118(v146, v116, v117);
        v120 = v145;
        swift_beginAccess();
        v121 = *(v120 + 56);
        if (*(v121 + 16) && (v122 = sub_22BB19424(v119), (v123 & 1) != 0))
        {
          v124 = *(v121 + 56);
          v125 = v160;
          v126 = v142;
          v127 = v172;
          (*(v160 + 16))(v142, v124 + *(v160 + 72) * v122, v172);
          v128 = v141;
          (*(v125 + 32))(v141, v126, v127);
          swift_endAccess();
          v129 = v143;
          sub_22BB1E97C();
          v130 = v129;
          if ((*v168)(v129, 1, v174) == 1)
          {
            (*v167)(v128, v127);
            (*v169)(v146, v182);
            result = sub_22BAC81E8(v129, &qword_27D8DEEA0, &qword_22BB20A30);
          }

          else
          {
            v131 = v139;
            v132 = v130;
            v133 = v174;
            (*v150)(v139, v132, v174);
            v134 = v140;
            v115(v140, v146, v182);
            v135 = v152;
            (*v149)(v134 + *(v152 + 20), v131, v133);
            *(v134 + *(v135 + 24)) = sub_22BB1E9FC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v183 = sub_22BAF60C4(0, v183[2] + 1, 1, v183);
            }

            v137 = v183[2];
            v136 = v183[3];
            if (v137 >= v136 >> 1)
            {
              v183 = sub_22BAF60C4(v136 > 1, v137 + 1, 1, v183);
            }

            (*v148)(v139, v174);
            (*v167)(v128, v172);
            (*v169)(v146, v182);
            v138 = v183;
            v183[2] = v137 + 1;
            result = sub_22BABE43C(v140, v138 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v137, type metadata accessor for FragmentCollator.PendingRemoteDetails);
          }
        }

        else
        {
          swift_endAccess();
          result = (*v169)(v119, v182);
        }
      }

      while (1)
      {
        v112 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_53;
        }

        if (v112 >= v111)
        {

          return v173;
        }

        v110 = *(v105 + 56 + 8 * v112);
        ++v107;
        if (v110)
        {
          v107 = v112;
          goto LABEL_42;
        }
      }
    }

    v76 = *(v75 + 48);
    (*v178)(v39, v74, v182);
    (*v175)(v28, v74 + v76, v55);
    v185 = MEMORY[0x277D84F90];
    v77 = sub_22BB1E9FC();
    v78 = *(v77 + 16);
    if (v78)
    {
      v79 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v170 = v77;
      v80 = v77 + v79;
      v81 = *(v155 + 72);
      v82 = *(v155 + 16);
      v83 = v183;
      v84 = v181;
      v85 = v153;
      do
      {
        v86 = v82(v85, v80, v83);
        MEMORY[0x28223BE20](v86);
        *(&v139 - 2) = v84;
        *(&v139 - 1) = &v185;
        sub_22BB1E7CC();
        v83 = v183;
        (*v51)(v85, v183);
        v80 += v81;
        --v78;
      }

      while (v78);

      v53 = v174;
      v55 = v172;
      v28 = v176;
      v56 = v177;
    }

    else
    {
    }

    sub_22BB1E97C();
    v87 = (*v168)(v56, 1, v53);
    v88 = v182;
    v48 = v162;
    if (v87 == 1)
    {
      (*v167)(v28, v55);
      sub_22BAC81E8(v56, &qword_27D8DEEA0, &qword_22BB20A30);
    }

    else
    {
      v89 = v55;
      v90 = v163;
      (*v150)(v163, v56, v53);
      v91 = v53;
      v92 = v164;
      (*v171)(v164, v181, v88);
      v93 = v152;
      (*v149)(v92 + *(v152 + 20), v90, v91);
      *(v92 + *(v93 + 24)) = v185;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v173 = sub_22BAF60C4(0, v173[2] + 1, 1, v173);
      }

      v95 = v173[2];
      v94 = v173[3];
      v53 = v91;
      if (v95 >= v94 >> 1)
      {
        v173 = sub_22BAF60C4(v94 > 1, v95 + 1, 1, v173);
      }

      v28 = v176;
      (*v148)(v163, v91);
      (*v167)(v28, v89);
      v96 = v173;
      v173[2] = v95 + 1;
      v97 = v96 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v95;
      v55 = v89;
      sub_22BABE43C(v164, v97, type metadata accessor for FragmentCollator.PendingRemoteDetails);
      v56 = v177;
      v88 = v182;
    }

    v39 = v181;
    result = (*v169)(v181, v88);
    v58 = v179;
  }

  if (v147 <= v58 + 1)
  {
    v61 = v58 + 1;
  }

  else
  {
    v61 = v147;
  }

  v62 = v61 - 1;
  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v147)
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
      v71 = v166;
      (*(*(v98 - 8) + 56))(v166, 1, 1, v98);
      v179 = v62;
      v180 = 0;
      goto LABEL_17;
    }

    v59 = *(v48 + 8 * v60);
    ++v58;
    if (v59)
    {
      v179 = v60;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_22BB0BDCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF660, &unk_22BB22C70);
    v2 = sub_22BB1FC2C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22BABDE24(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22BAEEDE4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22BAEEDE4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22BAEEDE4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22BB1FB0C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22BAEEDE4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22BB0C094(uint64_t a1)
{
  v2 = sub_22BB1E93C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_22BB1E95C();
}

uint64_t sub_22BB0C15C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, __n128)@<X1>, uint64_t a3@<X2>, size_t *a4@<X3>, char *a5@<X8>)
{
  v126 = a4;
  v147 = a3;
  v142 = a2;
  v150 = a5;
  v127 = sub_22BB1E9DC();
  v125 = *(v127 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v123 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22BB1E9AC();
  v121 = *(v122 - 8);
  v8 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v133 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v124 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v134 = &v119 - v14;
  v15 = sub_22BB1F2AC();
  v135 = *(v15 - 8);
  v136 = v15;
  v16 = *(v135 + 64);
  MEMORY[0x28223BE20](v15);
  v119 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v128 = &v119 - v19;
  v20 = sub_22BB1EC7C();
  v145 = *(v20 - 8);
  v146 = v20;
  v21 = *(v145 + 64);
  MEMORY[0x28223BE20](v20);
  v143 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v144 = &v119 - v24;
  v132 = sub_22BB1EADC();
  v131 = *(v132 - 8);
  v25 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v120 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v130 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v138 = &v119 - v31;
  v32 = sub_22BB1E88C();
  v140 = *(v32 - 8);
  v141 = v32;
  v33 = *(v140 + 64);
  MEMORY[0x28223BE20](v32);
  v139 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22BB1E93C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v129 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v137 = &v119 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v119 - v42;
  v148 = sub_22BB1E91C();
  v44 = *(v148 - 1);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v148);
  v48 = &v119 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v36 + 16);
  v149 = a1;
  v49(v43, a1, v35, v46);
  v50 = *(v36 + 88);
  v51 = v50(v43, v35);
  if (v51 != *MEMORY[0x277D74670])
  {
    v148 = *(v36 + 8);
    v148(v43, v35);
    v65 = v137;
    (v49)(v137, v149, v35);
    v66 = v35;
    if (v50(v65, v35) == *MEMORY[0x277D74668])
    {
      v142 = v49;
      v148 = (v36 + 16);
      (*(v36 + 96))(v65, v35);
      (*(v140 + 32))(v139, v65, v141);
      v67 = v147;
      v68 = sub_22BB1F00C();
      v69 = v149;
      if (v68)
      {
        v70 = sub_22BB1E86C();
        if (v71 >> 60 != 15)
        {
          v72 = v70;
          v73 = v71;
          v74 = v69;
          v75 = v66;
          v76 = __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), *(v67 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24));
          v77 = sub_22BB1E7FC();
          v78 = *v76;
          v66 = v75;
          v69 = v74;
          sub_22BAF0A40(v72, v73, v77, v79, v67);

          sub_22BB13DE8(v72, v73);
        }
      }

      v80 = v144;
      sub_22BB1EF7C();
      v82 = v145;
      v81 = v146;
      v83 = v143;
      (*(v145 + 104))(v143, *MEMORY[0x277D74820], v146);
      sub_22BADBCE0(&qword_281425098, MEMORY[0x277D74850]);
      v84 = sub_22BB1F65C();
      v85 = *(v82 + 8);
      v85(v83, v81);
      v85(v80, v81);
      if (v84)
      {
        (*(v140 + 8))(v139, v141);
      }

      else
      {
        v109 = v124;
        v110 = v139;
        sub_22BB1E84C();
        v112 = v135;
        v111 = v136;
        if ((*(v135 + 48))(v109, 1, v136) == 1)
        {
          (*(v140 + 8))(v110, v141);
          sub_22BAC81E8(v109, &qword_27D8DF588, &unk_22BB22BE0);
        }

        else
        {
          v117 = v119;
          (*(v112 + 32))(v119, v109, v111);
          sub_22BB14290(v117, v67);
          (*(v112 + 8))(v117, v111);
          (*(v140 + 8))(v110, v141);
        }
      }
    }

    else
    {
      v148(v65, v35);
      v86 = v129;
      v69 = v149;
      (v49)(v129, v149, v66);
      if (v50(v86, v66) != *MEMORY[0x277D74658])
      {
        v148(v86, v66);
        return (v49)(v150, v69, v66);
      }

      v142 = v49;
      v148 = (v36 + 16);
      (*(v36 + 96))(v86, v66);
      v87 = v121;
      v88 = v122;
      (*(v121 + 32))(v133, v86, v122);
      v89 = v123;
      sub_22BB1E99C();
      v90 = v126;
      v91 = *v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v90 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = sub_22BAF634C(0, v91[2] + 1, 1, v91);
        *v90 = v91;
      }

      v94 = v91[2];
      v93 = v91[3];
      if (v94 >= v93 >> 1)
      {
        *v90 = sub_22BAF634C(v93 > 1, v94 + 1, 1, v91);
      }

      (*(v87 + 8))(v133, v88);
      v95 = *v90;
      *(v95 + 16) = v94 + 1;
      (*(v125 + 32))(v95 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v94, v89, v127);
    }

    v49 = v142;
    return (v49)(v150, v69, v66);
  }

  LODWORD(v149) = v51;
  v52 = v35;
  (*(v36 + 96))(v43, v35);
  v141 = *(v44 + 32);
  v141(v48, v43, v148);
  sub_22BB1E97C();
  sub_22BB1E8DC();
  v53 = sub_22BB1E8AC();
  v55 = v147;
  v56 = v48;
  if (v54)
  {
    v57 = v53;
    v58 = v54;
    swift_beginAccess();
    sub_22BB1A2A0(&v151, v57, v58);
    swift_endAccess();
  }

  v59 = sub_22BB1E8FC();
  v142 = v52;
  if ((v59 & 1) == 0)
  {
    goto LABEL_23;
  }

  v60 = v55;
  v61 = v130;
  sub_22BB1E8CC();
  v62 = v131;
  v63 = v132;
  if ((*(v131 + 48))(v61, 1, v132) == 1)
  {
    sub_22BAC81E8(v61, &qword_27D8DEEA0, &qword_22BB20A30);
    v64 = v60;
  }

  else
  {
    v96 = v120;
    (*(v62 + 32))(v120, v61, v63);
    if (sub_22BB1EA8C() & 1) != 0 || (sub_22BB1EACC())
    {
      (*(v62 + 8))(v96, v63);
      goto LABEL_23;
    }

    v118 = sub_22BB1EA7C();
    (*(v62 + 8))(v96, v63);
    v64 = v60;
    if (v118)
    {
      goto LABEL_23;
    }
  }

  *(v64 + 32) = 1;
LABEL_23:
  v97 = v144;
  sub_22BB1EF9C();
  v99 = v145;
  v98 = v146;
  v100 = v56;
  v101 = v143;
  (*(v145 + 104))(v143, *MEMORY[0x277D74820], v146);
  sub_22BADBCE0(&qword_281425098, MEMORY[0x277D74850]);
  v102 = sub_22BB1F65C();
  v103 = *(v99 + 8);
  v104 = v101;
  v105 = v100;
  v103(v104, v98);
  v103(v97, v98);
  if ((v102 & 1) == 0)
  {
    v106 = v134;
    sub_22BB1E8EC();
    v108 = v135;
    v107 = v136;
    if ((*(v135 + 48))(v106, 1, v136) == 1)
    {
      sub_22BAC81E8(v106, &qword_27D8DF588, &unk_22BB22BE0);
    }

    else
    {
      v113 = v128;
      (*(v108 + 32))(v128, v106, v107);
      sub_22BB14290(v113, v147);
      v114 = v113;
      v105 = v100;
      (*(v108 + 8))(v114, v107);
    }
  }

  v115 = v150;
  v141(v150, v105, v148);
  return (*(v36 + 104))(v115, v149, v142);
}

uint64_t sub_22BB0D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = a4;
  v33 = a3;
  v31 = a2;
  v5 = sub_22BB1E9DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1E93C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BB1E9AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_22BB1E94C();
  if ((*(v11 + 88))(v14, v10) != *MEMORY[0x277D74658])
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 96))(v14, v10);
  (*(v16 + 32))(v19, v14, v15);
  sub_22BB1E99C();
  v20 = sub_22BB1E9CC();
  (*(v6 + 8))(v9, v5);
  if ((v20 & 1) == 0)
  {
    return (*(v16 + 8))(v19, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2D0, &unk_22BB227F0);
  v21 = sub_22BB1E96C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22BB20A70;
  (*(v22 + 16))(v25 + v24, v30, v21);
  v26 = sub_22BB1E75C();
  v34 = v25;
  sub_22BAE1E48(v26);
  (*(v16 + 8))(v19, v15);
  v27 = *v32;
  *v32 = v34;
}

uint64_t sub_22BB0D394()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[12];

  sub_22BAD2FB8(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter, type metadata accessor for Snapshotter);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22BB0D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = swift_projectBox();
  swift_beginAccess();
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);
  swift_beginAccess();
  sub_22BAD6B34(v15, v14, &qword_27D8DF5E0, &qword_22BB22BC8);
  sub_22BADBCD0(v16, v17);
  sub_22BAD7C38(a1, a3, v16, v17, v14, a6, v20);
  sub_22BADBD28(v16, v17);
  return sub_22BAC81E8(v14, &qword_27D8DF5E0, &qword_22BB22BC8);
}

uint64_t sub_22BB0D58C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BB1F5BC();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Snapshotter();
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BB1F11C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84FA0];
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = v18;
  *(v3 + 32) = 0;
  *(v3 + 40) = v18;
  *(v3 + 48) = sub_22BAF6C50(v17);
  *(v3 + 56) = sub_22BAF6C50(v17);
  v19 = sub_22BAF6E70(v17);
  v20 = MEMORY[0x277D84F98];
  *(v3 + 64) = v19;
  *(v3 + 72) = v20;
  v40 = v13;
  v21 = *(v13 + 16);
  v21(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_request, a1, v12);
  v45 = a2;
  sub_22BAD6B34(a2, &v46, &qword_27D8DF640, &qword_22BB22C28);
  if (v47)
  {
    sub_22BAD7560(&v46, &v48);
  }

  else
  {
    v22 = type metadata accessor for EmbeddedWindowVisibilityProvider();
    v49 = v22;
    v50 = &off_283F6BA70;
    v21(v16, a1, v12);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    *&v48 = sub_22BAF03B8(v16);
    if (v47)
    {
      sub_22BAC81E8(&v46, &qword_27D8DF640, &qword_22BB22C28);
    }
  }

  sub_22BAD7560(&v48, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider);
  v21(v16, a1, v12);
  v25 = type metadata accessor for ManagementPolicyProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider) = sub_22BB0917C(v16);
  v21(v16, a1, v12);
  v28 = a1;
  v29 = v41;
  v30 = *(v41 + 24);
  v31 = sub_22BAF6A30(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF648, &qword_22BB22C30);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = v31;
  *&v11[v30] = v32;
  v21(&v11[*(v29 + 20)], v16, v12);
  sub_22BB1F0CC();
  v33 = v42;
  sub_22BB1F10C();
  sub_22BB1F5DC();
  (*(v43 + 8))(v33, v44);
  v34 = *(v40 + 8);
  v34(v16, v12);
  sub_22BABE43C(v11, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter, type metadata accessor for Snapshotter);
  if (sub_22BB1EF1C())
  {
    v35 = sub_22BB07D64();
    v37 = v36;
    sub_22BB06EF4(v3, v35, v36);
  }

  else if (sub_22BB1F00C())
  {
    v38 = *__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24));
    sub_22BAF05A8();
  }

  sub_22BAC81E8(v45, &qword_27D8DF640, &qword_22BB22C28);
  v34(v28, v12);
  return v3;
}

char *sub_22BB0DA2C()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  v7 = *(v0 + 9);

  v8 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_request;
  v9 = sub_22BB1F11C();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider]);
  v10 = *&v0[OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider];

  sub_22BAD2FB8(&v0[OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter], type metadata accessor for Snapshotter);
  return v0;
}

uint64_t sub_22BB0DB08()
{
  sub_22BB0DA2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22BB0DB88()
{
  result = sub_22BB1F11C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Snapshotter();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22BB0DC94()
{
  result = type metadata accessor for Snapshotter();
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

uint64_t sub_22BB0DD78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22BB0DDD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_22BB0DE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v3 = sub_22BB1E93C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_22BB1E91C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  sub_22BB1E94C();
  v17 = *(v4 + 88);
  v18 = v17(v9, v3);
  if (v18 != *MEMORY[0x277D74670])
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = *(v4 + 96);
  v42 = v4 + 96;
  v43 = v17;
  v41 = v20;
  v20(v9, v3);
  v40 = *(v11 + 32);
  v40(v16, v9, v10);
  v21 = sub_22BB1E8AC();
  if (!v22)
  {
    (*(v11 + 8))(v16, v10);
    return 0;
  }

  v44 = v16;
  v45 = v10;
  v23 = v49;
  if (!*(v49 + 16))
  {

    goto LABEL_12;
  }

  v39 = sub_22BAD6B9C(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_12:
    (*(v11 + 8))(v44, v45);
    return 0;
  }

  v39 = *(*(v23 + 56) + 8 * v39);
  v9 = v48;
  sub_22BB1E94C();
  if (v43(v9, v3) != v19)
  {
    (*(v11 + 8))(v44, v45);
LABEL_14:
    (*(v4 + 8))(v9, v3);
    return 0;
  }

  v41(v9, v3);
  v26 = v45;
  v27 = v46;
  v40(v46, v9, v45);
  v28 = sub_22BB1E8AC();
  if (!v29)
  {
    v36 = *(v11 + 8);
    v36(v27, v26);
    v36(v44, v26);
    return 0;
  }

  if (*(v23 + 16))
  {
    v30 = sub_22BAD6B9C(v28, v29);
    v32 = v31;

    if (v32)
    {
      v33 = *(*(v23 + 56) + 8 * v30);
      v34 = *(v11 + 8);
      v34(v27, v26);
      v34(v44, v26);
      return v33 < v39;
    }
  }

  else
  {
  }

  v37 = *(v11 + 8);
  v37(v27, v26);
  v37(v44, v26);
  return 0;
}

unint64_t sub_22BB0E2A4()
{
  result = qword_27D8DF5A0;
  if (!qword_27D8DF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF5A0);
  }

  return result;
}

uint64_t sub_22BB0E2F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22BB0E328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22BB19424(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAEB86C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22BB1E9DC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_22BB1EA5C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_22BAEAD50(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22BB1EA5C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22BB0E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22BB19350(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAECC04();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22BB1F2AC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_22BB1E68C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_22BAEB094(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22BB1E68C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22BB0E668(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = _s17AsyncProviderTaskVMa();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22BACDF20(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22BAEB618();
      goto LABEL_7;
    }

    sub_22BAE8950(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_22BACDF20(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22BABE3D4(a2, v11, _s17AsyncProviderTaskVMa);
      return sub_22BB0F41C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_22BB0E80C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1EADC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22BB1927C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22BAEB858();
      goto LABEL_7;
    }

    sub_22BAE8CD8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_22BB1927C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22BB0F4D0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_22BB0E9D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1E9DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22BB19424(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22BAEB86C();
      goto LABEL_7;
    }

    sub_22BAE8CEC(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_22BB19424(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22BB0F6AC(v15, v12, a1, v21, MEMORY[0x277D746D8], MEMORY[0x277D746F8]);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_22BB1EA5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_22BB0EC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BAD6B9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BAE9578(v16, a4 & 1);
      v20 = *v5;
      result = sub_22BAD6B9C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEBAE8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_22BB0ED68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1F2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22BACB688(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22BAEC3A0();
      goto LABEL_7;
    }

    sub_22BAE9F74(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_22BACB688(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22BB0F588(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_22BB0EF34(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BAD6B9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BAEA350(v16, a4 & 1);
      v20 = *v5;
      result = sub_22BAD6B9C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEC8F8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

_OWORD *sub_22BB0F0A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22BAD6B9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22BAECA60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22BAEA5F0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22BAD6B9C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22BB1FDBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_22BAEEDE4(a1, v23);
  }

  else
  {
    sub_22BB0F640(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22BB0F1F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1F2AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22BB19350(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22BAECC04();
      goto LABEL_7;
    }

    sub_22BAEA8A8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_22BB19350(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22BB0F6AC(v15, v12, a1, v21, MEMORY[0x277D74928], MEMORY[0x277D74538]);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_22BB1E68C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_22BB0F41C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s17AsyncProviderTaskVMa();
  result = sub_22BABE43C(a2, v8 + *(*(v9 - 8) + 72) * a1, _s17AsyncProviderTaskVMa);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22BB0F4D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22BB1EADC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22BB0F588(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22BB1F2EC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_22BB0F640(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22BAEEDE4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22BB0F6AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_22BB0F7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_22BB1E9DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_22BAC81E8(v6, &qword_27D8DF630, &qword_22BB22C18))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_22BAED268(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BB0F9C8(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_22BB1E9DC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_22BAC81E8(v32, &qword_27D8DF630, &qword_22BB22C18);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8]);
    v35 = sub_22BB1F61C();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_22BADBCE0(&unk_2814250F0, MEMORY[0x277D746D8]);
    v39 = sub_22BB1F65C();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_22BAC81E8(v26, &qword_27D8DF630, &qword_22BB22C18);
        a2 = sub_22BB10900(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22BB1F61C();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_22BB1F65C();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_22BB1F65C();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_22BB1042C(v68, v69, v84, v26, &v93);

  MEMORY[0x23189DF20](v68, -1, -1);
LABEL_52:
  sub_22BB086F8();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22BB1042C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_22BB1E9DC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_22BAC81E8(v12, &qword_27D8DF630, &qword_22BB22C18);
          v48 = v64;

          return sub_22BB10900(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8]);
        v38 = sub_22BB1F61C();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_22BADBCE0(&unk_2814250F0, MEMORY[0x277D746D8]);
        v46 = sub_22BB1F65C();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22BB10900(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_22BB1E9DC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  result = sub_22BB1FB5C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8]);
    result = sub_22BB1F61C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_22BB10C28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22BB10CB4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22BB10CC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_22BB1E96C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t *sub_22BB10DAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22BAD3980(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22BB10E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB10EB0(uint64_t a1, char a2, uint64_t a3)
{
  if (sub_22BB1E8FC())
  {
    return 0;
  }

  if (*(a3 + 33))
  {
    return 0;
  }

  if (*(a3 + 90) != 1)
  {
    return 0;
  }

  v5 = sub_22BB1E8AC();
  if (!v6)
  {
    return 0;
  }

  v7 = *(a3 + 40);
  if (v7[2])
  {
    v8 = sub_22BAD6B9C(v5, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v12 = v7[7];
    v13 = *(v12 + 8 * v8);
    if (v13)
    {
      return 0;
    }

    v14 = 0;
    v17 = v7[8];
    v16 = v7 + 8;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v22 = v14;
LABEL_19:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = *(v12 + ((v22 << 9) | (8 * v23))) == 0;
      v25 = __OFADD__(v13, v24);
      v13 += v24;
      if (v25)
      {
        __break(1u);
        return v13 == 1 || a2 == 1;
      }
    }

    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        return v13 == 1 || a2 == 1;
      }

      v20 = v16[v22];
      ++v14;
      if (v20)
      {
        v14 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_22BB10FF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v137 = a5;
  v149 = sub_22BB1E93C();
  v9 = *(v149 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v149);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v124 - v14;
  MEMORY[0x28223BE20](v16);
  v130 = (&v124 - v17);
  MEMORY[0x28223BE20](v18);
  v136 = &v124 - v19;
  v148 = sub_22BB1E91C();
  v142 = *(v148 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x28223BE20](v148);
  v128 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v140 = &v124 - v23;
  MEMORY[0x28223BE20](v24);
  v129 = (&v124 - v25);
  MEMORY[0x28223BE20](v26);
  v138 = (&v124 - v27);
  v28 = sub_22BB1E96C();
  v143 = *(v28 - 8);
  v29 = *(v143 + 64);
  MEMORY[0x28223BE20](v28);
  v147 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v145 = &v124 - v32;
  MEMORY[0x28223BE20](v33);
  v151 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v150 = &v124 - v36;
  v146 = *(v37 + 72);
  if (!v146)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v146 == -1)
  {
    goto LABEL_104;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v146 == -1)
  {
    goto LABEL_105;
  }

  v39 = (a2 - a1) / v146;
  v154 = a1;
  v153 = a4;
  if (v39 >= v38 / v146)
  {
    v42 = v38 / v146 * v146;
    if (a4 < a2 || a2 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v42 < 1)
    {
      v83 = a4 + v42;
      goto LABEL_101;
    }

    v127 = v12;
    v81 = -v146;
    v138 = (v143 + 16);
    v146 = v9 + 88;
    LODWORD(v141) = *MEMORY[0x277D74670];
    v134 = (v9 + 8);
    v133 = (v9 + 96);
    v131 = (v142 + 32);
    v130 = (v142 + 8);
    v136 = (v143 + 8);
    v82 = a4 + v42;
    v139 = v15;
    v83 = a4 + v42;
    v144 = a4;
    v151 = v81;
    while (1)
    {
      v126 = v83;
      v84 = a2;
      a2 += v81;
      v142 = a2;
      v143 = v84;
      while (1)
      {
        if (v84 <= a1)
        {
          v154 = v84;
          v152 = v126;
          goto LABEL_102;
        }

        v135 = v83;
        v85 = *v138;
        v150 = (v82 + v81);
        v85(v145);
        v86 = v28;
        v87 = a2;
        v88 = v86;
        (v85)(v147, a2);
        sub_22BB1E94C();
        v89 = *v146;
        v90 = v149;
        v91 = (*v146)(v15, v149);
        if (v91 != v141)
        {
          (*v134)(v15, v90);
LABEL_77:
          v116 = 0;
          a2 = v87;
          v28 = v88;
          goto LABEL_81;
        }

        v92 = *v133;
        (*v133)(v15, v90);
        v93 = v140;
        v94 = v15;
        v95 = v148;
        v132 = *v131;
        (v132)(v140, v94, v148);
        v96 = sub_22BB1E8AC();
        if (!v97)
        {
          (*v130)(v93, v95);
          goto LABEL_77;
        }

        v129 = v92;
        if (*(v137 + 16))
        {
          v98 = sub_22BAD6B9C(v96, v97);
          v100 = v99;
          a2 = v142;

          v101 = v140;
          v28 = v88;
          if (v100)
          {
            v102 = *(*(v137 + 56) + 8 * v98);
            v103 = v127;
            sub_22BB1E94C();
            v104 = v149;
            v105 = v89(v103, v149);
            if (v105 == v141)
            {
              v129(v103, v104);
              v106 = v128;
              v107 = v148;
              (v132)();
              v108 = sub_22BB1E8AC();
              if (v109)
              {
                v110 = v137;
                if (*(v137 + 16))
                {
                  v129 = v102;
                  v125 = sub_22BAD6B9C(v108, v109);
                  LODWORD(v132) = v111;

                  v112 = *v130;
                  if (v132)
                  {
                    v113 = *(*(v110 + 56) + 8 * v125);
                    v114 = v106;
                    v115 = v148;
                    v112(v114, v148);
                    v112(v140, v115);
                    v116 = v113 < v129;
                    a2 = v142;
                    goto LABEL_81;
                  }

                  a2 = v142;
                }

                else
                {

                  v112 = *v130;
                }

                v122 = v148;
                v112(v106, v148);
                v112(v140, v122);
              }

              else
              {
                v121 = *v130;
                (*v130)(v106, v107);
                v121(v140, v107);
              }
            }

            else
            {
              (*v130)(v140, v148);
              (*v134)(v103, v104);
            }

            goto LABEL_80;
          }
        }

        else
        {
          a2 = v87;

          v101 = v140;
          v28 = v88;
        }

        (*v130)(v101, v148);
LABEL_80:
        v116 = 0;
LABEL_81:
        v117 = &v151[a3];
        v118 = *v136;
        (*v136)(v147, v28);
        v118(v145, v28);
        if (v116)
        {
          break;
        }

        v119 = v150;
        v83 = v150;
        if (a3 < v82 || v117 >= v82)
        {
          a3 = v117;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v120 = a3 == v82;
          a3 = v117;
          if (!v120)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v82 = v83;
        v84 = v143;
        v15 = v139;
        v81 = v151;
        if (v119 <= v144)
        {
          a2 = v143;
          goto LABEL_101;
        }
      }

      if (a3 < v143 || v117 >= v143)
      {
        a3 = v117;
        swift_arrayInitWithTakeFrontToBack();
        v123 = v144;
        v83 = v135;
      }

      else
      {
        v120 = a3 == v143;
        v123 = v144;
        a3 = v117;
        v83 = v135;
        if (!v120)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v15 = v139;
      v81 = v151;
      if (v82 <= v123)
      {
LABEL_101:
        v154 = a2;
        v152 = v83;
        goto LABEL_102;
      }
    }
  }

  v40 = v39 * v146;
  if (a4 < a1 || a1 + v40 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v41 = v136;
  }

  else
  {
    v41 = v136;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v141 = a4 + v40;
  v152 = a4 + v40;
  if (v40 >= 1 && a2 < a3)
  {
    v140 = *(v143 + 16);
    v147 = (v9 + 88);
    LODWORD(v145) = *MEMORY[0x277D74670];
    v134 = (v9 + 96);
    v135 = (v9 + 8);
    v133 = (v142 + 32);
    v131 = (v142 + 8);
    v143 += 16;
    v139 = (v143 - 8);
    v132 = a3;
    while (1)
    {
      v44 = a3;
      v45 = a2;
      v46 = a2;
      v47 = v140;
      (v140)(v150, v45, v28);
      (v47)(v151, a4, v28);
      sub_22BB1E94C();
      v48 = *v147;
      v49 = v149;
      v50 = (*v147)(v41, v149);
      if (v50 != v145)
      {
        (*v135)(v41, v49);
        v77 = v146;
        a2 = v46;
        a3 = v44;
        goto LABEL_42;
      }

      v142 = v46;
      v51 = *v134;
      (*v134)(v41, v49);
      v52 = *v133;
      v53 = v138;
      v54 = v41;
      v55 = v148;
      (*v133)(v138, v54, v148);
      v56 = sub_22BB1E8AC();
      if (!v57)
      {
        (*v131)(v53, v55);
        goto LABEL_36;
      }

      v144 = a4;
      if (!*(v137 + 16))
      {

LABEL_38:
        (*v131)(v138, v148);
LABEL_39:
        a2 = v142;
        a4 = v144;
        goto LABEL_40;
      }

      v58 = sub_22BAD6B9C(v56, v57);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        goto LABEL_38;
      }

      v61 = *(*(v137 + 56) + 8 * v58);
      v62 = v130;
      sub_22BB1E94C();
      v63 = v149;
      v64 = v48(v62, v149);
      if (v64 != v145)
      {
        (*v131)(v138, v148);
        (*v135)(v62, v63);
        goto LABEL_39;
      }

      v51(v62, v63);
      v65 = v129;
      v66 = v148;
      (v52)(v129, v62, v148);
      v67 = sub_22BB1E8AC();
      a4 = v144;
      if (!v68)
      {
        v79 = *v131;
        (*v131)(v65, v66);
        v79(v138, v66);
LABEL_36:
        a2 = v142;
LABEL_40:
        a3 = v132;
        v41 = v136;
LABEL_41:
        v77 = v146;
LABEL_42:
        v78 = *v139;
        (*v139)(v151, v28);
        v78(v150, v28);
LABEL_43:
        if (a1 < a4 || a1 >= a4 + v77)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v153 = a4 + v77;
        a4 += v77;
        goto LABEL_49;
      }

      v69 = v137;
      a2 = v142;
      if (!*(v137 + 16))
      {
        break;
      }

      v128 = v61;
      v70 = sub_22BAD6B9C(v67, v68);
      v72 = v71;

      v73 = *v131;
      if ((v72 & 1) == 0)
      {
        a4 = v144;
        goto LABEL_56;
      }

      v74 = *(*(v69 + 56) + 8 * v70);
      v75 = v148;
      v73(v129, v148);
      v73(v138, v75);
      v76 = *v139;
      (*v139)(v151, v28);
      v76(v150, v28);
      a4 = v144;
      a3 = v132;
      v41 = v136;
      v77 = v146;
      if (v74 >= v128)
      {
        goto LABEL_43;
      }

      if (a1 < a2 || a1 >= a2 + v146)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v77;
LABEL_49:
      a1 += v77;
      v154 = a1;
      if (a4 >= v141 || a2 >= a3)
      {
        goto LABEL_102;
      }
    }

    v73 = *v131;
LABEL_56:
    v41 = v136;
    v80 = v148;
    v73(v129, v148);
    v73(v138, v80);
    a3 = v132;
    goto LABEL_41;
  }

LABEL_102:
  sub_22BB10CC8(&v154, &v153, &v152);
}