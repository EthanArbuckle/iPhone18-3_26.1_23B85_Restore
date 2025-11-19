uint64_t IntelligenceElement.recursiveMap<A>(_:transform:)@<X0>(void *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v31 = a4;
  v9 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = v4[1];
  *v15 = *v4;
  v15[1] = v14;
  v17 = *v4;
  v16 = v4[1];
  v15[2] = v4[2];
  *(v15 + 41) = *(v4 + 41);
  v27 = v17;
  v28 = v16;
  *v29 = v4[2];
  *(&v29[1] + 1) = *(v4 + 41);
  sub_1BBA9B788(v30, v25);
  swift_getAtKeyPath();
  a2(v12);
  (*(v10 + 8))(v12, v9);
  if (v5)
  {
    v25[0] = v27;
    v25[1] = v28;
    v26[0] = *v29;
    *(v26 + 9) = *(&v29[1] + 1);
    return sub_1BBA9E174(v25);
  }

  else
  {
    v18 = v31;
    swift_setAtWritableKeyPath();
    v24 = v29[0];
    sub_1BBA8BD24(v29[0]);
    sub_1BBB4EE40(a1, a2, a3, v25);
    sub_1BBA8ABF8(v24);
    v19 = *&v25[0];
    sub_1BBA8ABF8(v29[0]);
    v29[0] = v19;
    v20 = Array<A>.recursiveMap<A>(_:transform:)(a1, a2, a3, v29[1]);

    v29[1] = v20;
    v22 = v28;
    *v18 = v27;
    v18[1] = v22;
    v18[2] = *v29;
    *(v18 + 41) = *(&v29[1] + 1);
  }

  return result;
}

void IntelligenceElement.boundingBox.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1BBADB980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7BBA8);
  return IntelligenceElement.visibleRegion.setter(v4);
}

void (*IntelligenceElement.visibleRegion.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  IntelligenceElement.visibleRegion.getter(v4);
  return sub_1BBADBB08;
}

void sub_1BBADBB08(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1BBA8BC5C(*(a1 + 16), v2, &qword_1EBC7BBA8);
    IntelligenceElement.visibleRegion.setter(v2);
    sub_1BBA8BCC4(v3, &qword_1EBC7BBA8);
  }

  else
  {
    IntelligenceElement.visibleRegion.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t IntelligenceElement.subelements.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void (*IntelligenceElement.exceedsVisibleSubelementLimit.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for IntelligenceElement.StorageValue();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  *(v5 + 48) = IntelligenceElement.exceedsVisibleSubelementLimit.getter() & 1;
  return sub_1BBADBD94;
}

uint64_t sub_1BBADBDA4(unsigned __int8 a1)
{
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(v1 + 48);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_1BBA99764(a1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1BBA966C4(*(v10 + 56) + *(v4 + 72) * v11, v9, type metadata accessor for IntelligenceElement.StorageValue);
  sub_1BBA966C4(v9, v6, type metadata accessor for IntelligenceElement.StorageValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v6;
  }

  else
  {
    sub_1BBA9C144(v6, type metadata accessor for IntelligenceElement.StorageValue);
    v13 = 0;
  }

  sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
  return v13;
}

uint64_t sub_1BBADBF28(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = type metadata accessor for IntelligenceElement.StorageValue();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  if (*a1 == 1)
  {
    *v10 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v10, v13, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  return sub_1BBA993C4(v13, a5);
}

uint64_t sub_1BBADC0B8(char a1, char a2)
{
  v4 = type metadata accessor for IntelligenceElement.StorageValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  if (a1)
  {
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v7, v10, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  return sub_1BBA993C4(v10, a2);
}

void (*IntelligenceElement.exceedsOffscreenSubelementLimit.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for IntelligenceElement.StorageValue();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  *(v5 + 48) = IntelligenceElement.exceedsOffscreenSubelementLimit.getter() & 1;
  return sub_1BBADC3A4;
}

void sub_1BBADC3AC(uint64_t a1, char a2, char a3)
{
  v4 = *a1;
  if (a2)
  {
    v5 = 1;
    if (*(*a1 + 48))
    {
      v7 = v4[3];
      v6 = v4[4];
      *v7 = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BBA969BC(v7, v6, type metadata accessor for IntelligenceElement.StorageValue);
      v5 = 0;
    }

    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[3];
    (*(v4[2] + 56))(v8, v5, 1, v4[1]);
    v11 = v8;
  }

  else
  {
    v12 = 1;
    if (*(*a1 + 48))
    {
      v13 = v4[5];
      v14 = v4[3];
      *v14 = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BBA969BC(v14, v13, type metadata accessor for IntelligenceElement.StorageValue);
      v12 = 0;
    }

    v11 = v4[4];
    v8 = v4[5];
    v10 = v4[3];
    (*(v4[2] + 56))(v8, v12, 1, v4[1]);
    v9 = v8;
  }

  sub_1BBA993C4(v8, a3);
  free(v9);
  free(v11);
  free(v10);

  free(v4);
}

unint64_t IntelligenceElement.extraAttributes.getter()
{
  v1 = type metadata accessor for IntelligenceElement.StorageValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = *(v0 + 48);
  if (*(v8 + 16) && (v9 = sub_1BBA99764(3u), (v10 & 1) != 0))
  {
    sub_1BBA966C4(*(v8 + 56) + *(v2 + 72) * v9, v7, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA966C4(v7, v4, type metadata accessor for IntelligenceElement.StorageValue);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v11 = *v4;
      v12 = v4[8];
      sub_1BBA9C144(v7, type metadata accessor for IntelligenceElement.StorageValue);
      if (v12)
      {

        os_unfair_lock_lock((v11 + 72));
        if (*(v11 + 56))
        {
          v13 = *(v11 + 56);
        }

        else
        {
          v13 = *(v11 + 64);
        }

        os_unfair_lock_unlock((v11 + 72));
        sub_1BBAE5820(v11, 1);
        sub_1BBAE5820(v11, 1);
        return v13;
      }
    }

    else
    {
      sub_1BBA9C144(v4, type metadata accessor for IntelligenceElement.StorageValue);
      v11 = sub_1BBAC7BA8(MEMORY[0x1E69E7CC0]);
      sub_1BBA9C144(v7, type metadata accessor for IntelligenceElement.StorageValue);
    }

    return v11;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];

    return sub_1BBAC7BA8(v14);
  }
}

uint64_t IntelligenceElement.extraAttributes.setter(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceElement.StorageValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1BBAC7BA8(MEMORY[0x1E69E7CC0]);
  v10 = sub_1BBAE25CC(a1, 0, v9, 0, sub_1BBADF29C);
  sub_1BBAE5820(v9, 0);
  if (v10)
  {
    sub_1BBAE5820(a1, 0);
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  else
  {
    *v5 = a1;
    v5[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v5, v8, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  return sub_1BBA993C4(v8, 3);
}

uint64_t (*IntelligenceElement.extraAttributes.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntelligenceElement.extraAttributes.getter();
  return sub_1BBADC974;
}

uint64_t (*IntelligenceElement.customTypeNames.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntelligenceElement.customTypeNames.getter();
  return sub_1BBADCA08;
}

uint64_t sub_1BBADCA20(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_1BBADCA98(unsigned __int8 a1)
{
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(v1 + 48);
  if (!*(v10 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1BBA99764(a1);
  if ((v12 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BBA966C4(*(v10 + 56) + *(v4 + 72) * v11, v9, type metadata accessor for IntelligenceElement.StorageValue);
  sub_1BBA966C4(v9, v6, type metadata accessor for IntelligenceElement.StorageValue);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1BBA9C144(v6, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *v6;
  v14 = v6[8];
  sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  os_unfair_lock_lock((v13 + 72));
  if (*(v13 + 56))
  {
    v15 = *(v13 + 56);
  }

  else
  {
    v15 = *(v13 + 64);
  }

  os_unfair_lock_unlock((v13 + 72));
  sub_1BBAE5820(v13, 1);
  sub_1BBAE5820(v13, 1);
  return v15;
}

uint64_t sub_1BBADCC98(uint64_t a1, char a2)
{
  v4 = type metadata accessor for IntelligenceElement.StorageValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BBAE25CC(a1, 0, MEMORY[0x1E69E7CC0], 0, sub_1BBAFF548);
  sub_1BBAE5820(v11, 0);
  if (v12)
  {
    sub_1BBAE5820(a1, 0);
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  else
  {
    *v7 = a1;
    v7[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v7, v10, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  return sub_1BBA993C4(v10, a2);
}

uint64_t (*IntelligenceElement.customControllerTypeNames.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntelligenceElement.customControllerTypeNames.getter();
  return sub_1BBADCED8;
}

uint64_t (*IntelligenceElement.appEntityIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IntelligenceElement.appEntityIdentifier.getter();
  a1[1] = v3;
  return sub_1BBADCF6C;
}

uint64_t (*IntelligenceElement.appIntentIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IntelligenceElement.appIntentIdentifier.getter();
  a1[1] = v3;
  return sub_1BBADD000;
}

uint64_t sub_1BBADD018(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v6 = v3;
  sub_1BBAE588C(v5[0], v1, v2, v3);
  return IntelligenceElement.loadableAppIntentsPayload.setter(v5);
}

uint64_t IntelligenceElement.loadableAppIntentsPayload.setter(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceElement.StorageValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1BBAE288C(v9, v10, v11, v12, 0, 0, 0, 0);
  sub_1BBAE5840(0, 0, 0, 0);
  if (v13)
  {
    sub_1BBAE5840(v9, v10, v11, v12);
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  else
  {
    *v5 = v9;
    *(v5 + 1) = v10;
    *(v5 + 2) = v11;
    v5[24] = v12;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v5, v8, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  return sub_1BBA993C4(v8, 8);
}

void (*IntelligenceElement.loadableAppIntentsPayload.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  IntelligenceElement.loadableAppIntentsPayload.getter(v3);
  return sub_1BBADD2E8;
}

void sub_1BBADD2E8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v9 = v7;
  if (a2)
  {
    sub_1BBAE588C(v4, v5, v6, v7);
    IntelligenceElement.loadableAppIntentsPayload.setter(v8);
    sub_1BBAE5840(*v3, v3[1], v3[2], *(v3 + 24));
  }

  else
  {
    IntelligenceElement.loadableAppIntentsPayload.setter(v8);
  }

  free(v3);
}

uint64_t IntelligenceElement.appIntentsPayload.setter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    return IntelligenceElement.loadableAppIntentsPayload.setter(&v14);
  }

  else
  {
    sub_1BBAE58D8(a1, a2);
    IntelligenceElement.loadableAppIntentsPayload.getter(&v14);
    v5 = v14;
    v6 = v15;
    v7 = v16;
    if (v17 == 1)
    {
      sub_1BBAE588C(v14, v15, v16, 1);
      os_unfair_lock_lock((v5 + 104));
      v9 = *(v5 + 56);
      v8 = *(v5 + 64);
      v10 = *(v5 + 72);
      v12 = v8;
      v13 = v9;
      v11 = v10;
      if (v10 == 1)
      {
        v11 = *(v5 + 96);
        v12 = *(v5 + 88);
        v13 = *(v5 + 80);
        sub_1BBAE5898(v13, v12, v11);
      }

      sub_1BBAE592C(v9, v8, v10);
      os_unfair_lock_unlock((v5 + 104));
      sub_1BBAE5840(v5, v6, v7, 1);
      sub_1BBAE5840(v5, v6, v7, 1);
      v6 = v12;
      v5 = v13;
      v7 = v11;
    }

    if (v7)
    {
      sub_1BBAB42C8(a1, a2);
      sub_1BBA885E8(v5, v6);
      v14 = a1;
      v15 = a2;
      v16 = v7;
      v17 = 0;
      sub_1BBAE58D8(a1, a2);

      IntelligenceElement.loadableAppIntentsPayload.setter(&v14);
      sub_1BBA885E8(a1, a2);
    }

    else
    {
      v14 = a1;
      v15 = a2;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = 0;
      IntelligenceElement.loadableAppIntentsPayload.setter(&v14);
      return sub_1BBAB42C8(a1, a2);
    }
  }
}

uint64_t (*IntelligenceElement.appIntentsPayload.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IntelligenceElement.appIntentsPayload.getter();
  a1[1] = v3;
  return sub_1BBADD5B4;
}

uint64_t sub_1BBADD5B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return IntelligenceElement.appIntentsPayload.setter(*a1, v3);
  }

  sub_1BBAE593C(*a1, v3);
  IntelligenceElement.appIntentsPayload.setter(v2, v3);

  return sub_1BBAB42C8(v2, v3);
}

uint64_t IntelligenceElement.appIntentsPayloadDebugDescription.getter()
{
  IntelligenceElement.loadableAppIntentsPayload.getter(&v10);
  v0 = v10;
  v1 = v11;
  v2 = v12;
  if (v13 == 1)
  {
    sub_1BBAE588C(v10, v11, v12, 1);
    os_unfair_lock_lock((v0 + 104));
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = v3;
    v7 = v4;
    v8 = v5;
    if (v5 == 1)
    {
      v6 = *(v0 + 80);
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      sub_1BBAE5898(v6, v7, v8);
    }

    sub_1BBAE592C(v3, v4, v5);
    os_unfair_lock_unlock((v0 + 104));
    sub_1BBAE5840(v0, v1, v2, 1);
    sub_1BBAE5840(v0, v1, v2, 1);
    v0 = v6;
    v1 = v7;
    v2 = v8;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BBAE584C(v0, v1, v2);
  return v2;
}

uint64_t IntelligenceElement.appIntentsPayloadDebugDescription.setter(uint64_t a1)
{
  IntelligenceElement.loadableAppIntentsPayload.getter(&v12);
  v3 = *(&v12 + 1);
  v2 = v12;
  v4 = v13;
  if (v14 == 1)
  {
    sub_1BBAE588C(v12, *(&v12 + 1), v13, 1);
    os_unfair_lock_lock((v2 + 104));
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = *(v2 + 72);
    v8 = v5;
    v9 = v6;
    v10 = v7;
    if (v7 == 1)
    {
      v8 = *(v2 + 80);
      v9 = *(v2 + 88);
      v10 = *(v2 + 96);
      sub_1BBAE5898(v8, v9, v10);
    }

    sub_1BBAE592C(v5, v6, v7);
    os_unfair_lock_unlock((v2 + 104));
    sub_1BBAE5840(v2, v3, v4, 1);
    sub_1BBAE5840(v2, v3, v4, 1);
    v2 = v8;
    v3 = v9;
    v4 = v10;
  }

  if (v4)
  {

    *&v12 = v2;
    *(&v12 + 1) = v3;
    v13 = a1;
    v14 = 0;
    sub_1BBAE58D8(v2, v3);

    IntelligenceElement.loadableAppIntentsPayload.setter(&v12);
    sub_1BBA885E8(v2, v3);
  }

  else
  {
    v12 = xmmword_1BBB87880;
    v13 = a1;
    v14 = 0;
    return IntelligenceElement.loadableAppIntentsPayload.setter(&v12);
  }
}

uint64_t (*IntelligenceElement.appIntentsPayloadDebugDescription.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntelligenceElement.appIntentsPayloadDebugDescription.getter();
  return sub_1BBADD95C;
}

uint64_t (*IntelligenceElement.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IntelligenceElement.accessibilityLabel.getter();
  a1[1] = v3;
  return sub_1BBADD9E0;
}

uint64_t sub_1BBADD9F8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t IntelligenceElement.userActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  IntelligenceElement.loadableUserActivity.getter(&v6 - v3);
  sub_1BBAC05AC(a1);
  return sub_1BBA8BCC4(v4, &qword_1EBC7BBB8);
}

uint64_t sub_1BBADDB24@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  IntelligenceElement.loadableUserActivity.getter(&v6 - v3);
  sub_1BBAC05AC(a1);
  return sub_1BBA8BCC4(v4, &qword_1EBC7BBB8);
}

uint64_t sub_1BBADDBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BBA8BC5C(a1, &v15 - v12, &qword_1EBC7B830);
  sub_1BBA8BC5C(v13, v10, &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  sub_1BBA8BC5C(v10, v7, &qword_1EBC7BBB8);
  sub_1BBADE980(v7, v4);
  sub_1BBA993C4(v4, 11);
  sub_1BBA8BCC4(v10, &qword_1EBC7BBB8);
  return sub_1BBA8BCC4(v13, &qword_1EBC7B830);
}

uint64_t IntelligenceElement.userActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1BBA8BC5C(a1, &v12 - v9, &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  sub_1BBA8BC5C(v10, v7, &qword_1EBC7BBB8);
  sub_1BBADE980(v7, v4);
  sub_1BBA993C4(v4, 11);
  sub_1BBA8BCC4(a1, &qword_1EBC7B830);
  return sub_1BBA8BCC4(v10, &qword_1EBC7BBB8);
}

uint64_t IntelligenceElement.loadableUserActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for IntelligenceElement.StorageValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = *(v1 + 48);
  if (*(v16 + 16) && (v17 = sub_1BBA99764(0xBu), (v18 & 1) != 0))
  {
    sub_1BBA966C4(*(v16 + 56) + *(v7 + 72) * v17, v12, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA966C4(v12, v9, type metadata accessor for IntelligenceElement.StorageValue);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1BBAA6758(v9, v15, &qword_1EBC7BBB8);
    }

    else
    {
      sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
      v22 = type metadata accessor for IntelligenceUserActivity();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      sub_1BBAA6758(v5, v15, &qword_1EBC7B830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
      swift_storeEnumTagMultiPayload();
    }

    sub_1BBA9C144(v12, type metadata accessor for IntelligenceElement.StorageValue);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
    (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
    return sub_1BBAA6758(v15, a1, &qword_1EBC7BBB8);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    v20 = type metadata accessor for IntelligenceUserActivity();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_1BBAA6758(v5, a1, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t IntelligenceElement.loadableUserActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBA8BC5C(a1, v4, &qword_1EBC7BBB8);
  sub_1BBADE980(v4, v7);
  sub_1BBA993C4(v7, 11);
  return sub_1BBA8BCC4(a1, &qword_1EBC7BBB8);
}

void (*IntelligenceElement.userActivity.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[5] = v12;
  IntelligenceElement.loadableUserActivity.getter(v10);
  sub_1BBAC05AC(v13);
  sub_1BBA8BCC4(v10, &qword_1EBC7BBB8);
  return sub_1BBADE638;
}

void sub_1BBADE638(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 40), v3, &qword_1EBC7B830);
    sub_1BBA8BC5C(v3, v6, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    swift_storeEnumTagMultiPayload();
    sub_1BBA8BC5C(v6, v5, &qword_1EBC7BBB8);
    sub_1BBADE980(v5, v7);
    sub_1BBA993C4(v7, 11);
    sub_1BBA8BCC4(v6, &qword_1EBC7BBB8);
    v8 = v3;
    v9 = &qword_1EBC7B830;
  }

  else
  {
    sub_1BBA8BC5C(*(*a1 + 40), v6, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    swift_storeEnumTagMultiPayload();
    sub_1BBA8BC5C(v6, v5, &qword_1EBC7BBB8);
    sub_1BBADE980(v5, v7);
    sub_1BBA993C4(v7, 11);
    v8 = v6;
    v9 = &qword_1EBC7BBB8;
  }

  sub_1BBA8BCC4(v8, v9);
  sub_1BBA8BCC4(v4, &qword_1EBC7B830);
  free(v4);
  free(v3);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1BBADE828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1BBA8BC5C(a1, &v12 - v9, &qword_1EBC7BBB8);
  sub_1BBA8BC5C(v10, v7, &qword_1EBC7BBB8);
  sub_1BBADE980(v7, v4);
  sub_1BBA993C4(v4, 11);
  return sub_1BBA8BCC4(v10, &qword_1EBC7BBB8);
}

uint64_t sub_1BBADE980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_1BBAA6758(v9, v12, &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1BBAE2D6C(a1, v12);
  sub_1BBA8BCC4(v12, &qword_1EBC7BBB8);
  if (v14)
  {
    sub_1BBA8BCC4(a1, &qword_1EBC7BBB8);
    v15 = 1;
    v16 = v20;
  }

  else
  {
    sub_1BBAA6758(a1, v6, &qword_1EBC7BBB8);
    swift_storeEnumTagMultiPayload();
    v17 = v20;
    sub_1BBA969BC(v6, v20, type metadata accessor for IntelligenceElement.StorageValue);
    v15 = 0;
    v16 = v17;
  }

  return (*(v4 + 56))(v16, v15, 1, v3);
}

void (*IntelligenceElement.loadableUserActivity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v8);
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  IntelligenceElement.loadableUserActivity.getter(v9);
  return sub_1BBADED80;
}

void sub_1BBADED80(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1BBA8BC5C((*a1)[4], (*a1)[3], &qword_1EBC7BBB8);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  if (a2)
  {
    sub_1BBA8BC5C(v3[3], v3[2], &qword_1EBC7BBB8);
    sub_1BBADE980(v7, v6);
    sub_1BBA993C4(v6, 11);
    sub_1BBA8BCC4(v4, &qword_1EBC7BBB8);
  }

  else
  {
    sub_1BBADE980(v3[3], v3[1]);
    sub_1BBA993C4(v6, 11);
  }

  sub_1BBA8BCC4(v5, &qword_1EBC7BBB8);
  free(v5);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t IntelligenceElement.init(boundingBox:visibleRegion:content:subelements:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v19 = *a2;
  v20 = sub_1BBA96B70(MEMORY[0x1E69E7CC0]);
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = v19;
  *(a4 + 40) = a3;
  *(a4 + 48) = v20;
  *(a4 + 56) = 0;
  v21 = sub_1BBB83588();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v18, a1, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  IntelligenceElement.visibleRegion.setter(v18);
  return (*(v22 + 8))(a1, v21);
}

uint64_t IntelligenceElement.recursivelyPruned()@<X0>(CGPoint *a1@<X8>)
{
  v2 = v1[2];
  v31 = v1[1];
  v32[0] = v2;
  *(v32 + 9) = *(v1 + 41);
  v30 = *v1;
  v3 = *(&v32[0] + 1);
  v27 = v30;
  v28 = v31;
  *v29 = v2;
  *(&v29[1] + 1) = *(v32 + 9);
  sub_1BBA9B788(&v30, &v24);
  result = sub_1BBB4E9CC(v29);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = (v7 + (v6 << 6));
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v21 = *v9;
        v22 = v9[1];
        v23[0] = v9[2];
        *(v23 + 9) = *(v9 + 41);
        v6 = v10 + 1;
        IntelligenceElement.recursivelyPruned()(&v24, result);
        if (*&v26[8])
        {
          break;
        }

        v21 = v24;
        v22 = v25;
        v23[0] = *v26;
        *(v23 + 9) = *&v26[9];
        result = sub_1BBA8BCC4(&v21, &qword_1EBC7BAA8);
        v9 += 4;
        ++v10;
        if (v5 == v6)
        {
          goto LABEL_15;
        }
      }

      v21 = v24;
      v22 = v25;
      v23[0] = *v26;
      *(v23 + 9) = *&v26[9];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BBA9C784(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1BBA9C784((v11 > 1), v12 + 1, 1, v8);
        v8 = result;
      }

      v20[0] = v23[0];
      *(v20 + 9) = *(v23 + 9);
      v13 = v21;
      v18 = v21;
      v19 = v22;
      *(v8 + 16) = v12 + 1;
      v14 = (v8 + (v12 << 6));
      v15 = v19;
      v16 = v20[0];
      *(v14 + 73) = *(v20 + 9);
      v14[3] = v15;
      v14[4] = v16;
      v14[2] = v13;
      v7 = v3 + 32;
    }

    while (v5 - 1 != v10);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v29[1] = v8;
  v18 = v27;
  v19 = v28;
  v20[0] = *v29;
  *(v20 + 9) = *(&v29[1] + 1);
  sub_1BBA9B788(&v18, &v24);
  IntelligenceElement.pruned()(a1);
  v21 = v27;
  v22 = v28;
  v23[0] = *v29;
  *(v23 + 9) = *(&v29[1] + 1);
  sub_1BBA9E174(&v21);
  v24 = v27;
  v25 = v28;
  *v26 = *v29;
  *&v26[9] = *(&v29[1] + 1);
  return sub_1BBA9E174(&v24);
}

uint64_t sub_1BBADF29C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1BBAE3554(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1BBB842F8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBADF440(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v27 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(v2 + 56);
    v13 = (*(v2 + 48) + 112 * v11);
    v14 = *v13;
    v15 = v13[2];
    v36 = v13[1];
    v37 = v15;
    v35 = v14;
    v16 = *(v13 + 89);
    v17 = v13[3];
    v18 = v13[5];
    v39 = v13[4];
    *v40 = v18;
    v38 = v17;
    *&v40[9] = v16;
    v19 = *(v12 + 8 * v11);
    v31 = v17;
    v32 = v36;
    v29 = v15;
    v30 = v35;
    v33 = *v40;
    v28 = v39;
    v20 = v16 >> 56;
    v21 = HIBYTE(v16);
    sub_1BBACB4D0(&v35, v34);

    v22 = *(&v33 + 1) == 0;
    if (!*(&v33 + 1))
    {
      return v22;
    }

    v41[0] = v30;
    v41[1] = v32;
    v41[2] = v29;
    v41[3] = v31;
    v41[4] = v28;
    v41[5] = v33;
    v42 = v20;
    v43 = v21;
    sub_1BBAE35CC(v41);
    v24 = v23;
    sub_1BBAC7878(v41);
    if ((v24 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for IntelligenceFile(0);

    v26 = static IntelligenceFile.== infix(_:_:)(v25, v19);

    if ((v26 & 1) == 0)
    {
      return v22;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v27)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBADF678(uint64_t a1)
{
  v2 = sub_1BBAACD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF6B4(uint64_t a1)
{
  v2 = sub_1BBAACD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF6F0(uint64_t a1)
{
  v2 = sub_1BBAE75B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF72C(uint64_t a1)
{
  v2 = sub_1BBAE75B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF768(uint64_t a1)
{
  v2 = sub_1BBAE755C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF7A4(uint64_t a1)
{
  v2 = sub_1BBAE755C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF7E0(uint64_t a1)
{
  v2 = sub_1BBAE7508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF81C(uint64_t a1)
{
  v2 = sub_1BBAE7508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF858(uint64_t a1)
{
  v2 = sub_1BBAE74B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF894(uint64_t a1)
{
  v2 = sub_1BBAE74B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF8DC(uint64_t a1)
{
  v2 = sub_1BBAA16DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF918(uint64_t a1)
{
  v2 = sub_1BBAA16DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF954(uint64_t a1)
{
  v2 = sub_1BBAE7604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADF990(uint64_t a1)
{
  v2 = sub_1BBAE7604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADF9CC(uint64_t a1)
{
  v2 = sub_1BBAE7658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFA08(uint64_t a1)
{
  v2 = sub_1BBAE7658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFA44(uint64_t a1)
{
  v2 = sub_1BBAE7700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFA80(uint64_t a1)
{
  v2 = sub_1BBAE7700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFABC(uint64_t a1)
{
  v2 = sub_1BBAE7754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFAF8(uint64_t a1)
{
  v2 = sub_1BBAE7754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFB34(uint64_t a1)
{
  v2 = sub_1BBAE76AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFB70(uint64_t a1)
{
  v2 = sub_1BBAE76AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFBAC(uint64_t a1)
{
  v2 = sub_1BBAE7460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFBE8(uint64_t a1)
{
  v2 = sub_1BBAE7460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFC24(uint64_t a1)
{
  v2 = sub_1BBAA1730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFC60(uint64_t a1)
{
  v2 = sub_1BBAA1730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFC9C(uint64_t a1)
{
  v2 = sub_1BBAE7EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFCD8(uint64_t a1)
{
  v2 = sub_1BBAE7EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFD20(uint64_t a1)
{
  v2 = sub_1BBAA26B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFD5C(uint64_t a1)
{
  v2 = sub_1BBAA26B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFD98(uint64_t a1)
{
  v2 = sub_1BBAE7898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFDD4(uint64_t a1)
{
  v2 = sub_1BBAE7898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFE10(uint64_t a1)
{
  v2 = sub_1BBAE7C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFE4C(uint64_t a1)
{
  v2 = sub_1BBAE7C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFE88(uint64_t a1)
{
  v2 = sub_1BBAE7AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFEC4(uint64_t a1)
{
  v2 = sub_1BBAE7AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFF00(uint64_t a1)
{
  v2 = sub_1BBAAE0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFF3C(uint64_t a1)
{
  v2 = sub_1BBAAE0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFF78(uint64_t a1)
{
  v2 = sub_1BBAE77A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBADFFB4(uint64_t a1)
{
  v2 = sub_1BBAE77A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBADFFF0()
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](0);
  return sub_1BBB84438();
}

uint64_t sub_1BBAE0034()
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](0);
  return sub_1BBB84438();
}

uint64_t sub_1BBAE0074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBB842F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBAE00F4(uint64_t a1)
{
  v2 = sub_1BBAA2708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAE0130(uint64_t a1)
{
  v2 = sub_1BBAA2708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBAE01A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    do
    {
      v7 = v6[1];
      v14[0] = *v6;
      v14[1] = v7;
      v9 = *v6;
      v8 = v6[1];
      v15[0] = v6[2];
      *(v15 + 9) = *(v6 + 41);
      v12[0] = v9;
      v12[1] = v8;
      v13[0] = v6[2];
      *(v13 + 9) = *(v6 + 41);
      sub_1BBA9B788(v14, &v11);
      a4(v12);
      result = sub_1BBA9E174(v14);
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1BBAE025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (((*(a4 + 32) >> 59) & 0x1E | (*(a4 + 32) >> 2) & 1) == 0x12)
  {
    if (a2)
    {

      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(a1, a2, v15);
      v13 = v15[0];
    }

    else
    {
      v13 = 4;
    }

    *(a5 + 216) = v13;
  }

  return sub_1BBAA53D8(a3, a5, a6, a7);
}

uint64_t IntelligenceElement.TraversalContext.ancestors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntelligenceElement.TraversalContext.screen.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BBA8BC5C(v8, v7, &qword_1EBC7BBD0);
}

__n128 IntelligenceElement.TraversalContext.screen.setter(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v8[2] = *(v1 + 40);
  v8[3] = v4;
  v9 = *(v1 + 72);
  v8[0] = *(v1 + 8);
  v8[1] = v3;
  sub_1BBA8BCC4(v8, &qword_1EBC7BBD0);
  v5 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v7;
  *(v1 + 72) = *(a1 + 8);
  *(v1 + 8) = v5;
  return result;
}

__n128 IntelligenceElement.TraversalContext.window.setter(uint64_t a1)
{
  v3 = *(v1 + 128);
  v7[2] = *(v1 + 112);
  v7[3] = v3;
  v8 = *(v1 + 144);
  v4 = *(v1 + 96);
  v7[0] = *(v1 + 80);
  v7[1] = v4;
  sub_1BBA8BCC4(v7, &qword_1EBC7BBD8);
  v5 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v5;
  *(v1 + 144) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

uint64_t IntelligenceElement.TraversalContext.processInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v7[0] = *(v1 + 152);
  v7[1] = v2;
  v4 = *(v1 + 200);
  v8 = *(v1 + 184);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1BBA8BC5C(v7, &v6, &qword_1EBC7BBE0);
}

__n128 IntelligenceElement.TraversalContext.processInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 168);
  v8[0] = *(v1 + 152);
  v8[1] = v3;
  v4 = *(v1 + 200);
  v8[2] = *(v1 + 184);
  v8[3] = v4;
  sub_1BBA8BCC4(v8, &qword_1EBC7BBE0);
  v5 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 184) = result;
  *(v1 + 200) = v7;
  return result;
}

uint64_t sub_1BBAE066C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, _OWORD *, uint64_t, uint64_t))
{
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  v8[0] = v3[2];
  *(v8 + 9) = *(v3 + 41);
  *v6 = MEMORY[0x1E69E7CC0];
  memset(&v6[8], 0, 200);
  *&v6[208] = 1;
  *&v6[216] = 4;
  a3(v6, v7, a1, a2);
  v9[10] = *&v6[160];
  v9[11] = *&v6[176];
  v10[0] = *&v6[192];
  *(v10 + 10) = *&v6[202];
  v9[6] = *&v6[96];
  v9[7] = *&v6[112];
  v9[8] = *&v6[128];
  v9[9] = *&v6[144];
  v9[2] = *&v6[32];
  v9[3] = *&v6[48];
  v9[4] = *&v6[64];
  v9[5] = *&v6[80];
  v9[0] = *v6;
  v9[1] = *&v6[16];
  return sub_1BBAA53A8(v9);
}

uint64_t sub_1BBAE0764(_OWORD *a1, uint64_t *a2, void (*a3)(_OWORD *, uint64_t, __int128 *))
{
  v4 = a1[1];
  v16[0] = *a1;
  v16[1] = v4;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = *(a2 + 6);
  v6 = *(a2 + 8);
  v19 = *(a2 + 7);
  v20 = v6;
  v7 = *(a2 + 6);
  v18[0] = *(a2 + 5);
  v18[1] = v7;
  v8 = *(a2 + 8);
  v13 = v19;
  v14 = v8;
  v9 = *a2;
  v21 = a2[18];
  v15 = a2[18];
  v11 = v18[0];
  v12 = v5;
  sub_1BBA8BC5C(v18, v22, &qword_1EBC7BBD8);
  a3(v16, v9, &v11);
  v22[2] = v13;
  v22[3] = v14;
  v23 = v15;
  v22[0] = v11;
  v22[1] = v12;
  return sub_1BBA8BCC4(v22, &qword_1EBC7BBD8);
}

uint64_t Array<A>.nearestAncestorProcessInfo.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result + 64);
  v4 = *(result + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      return result;
    }

    v5 = *v3;
    v6 = (*v3 >> 59) & 0x1E | (*v3 >> 2) & 1;
    if (v6 == 4)
    {
      break;
    }

    v3 += 8;
    if (v6 == 2)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFBLL) + *(*(v5 & 0xFFFFFFFFFFFFFFBLL) + 88));
      swift_beginAccess();
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v22 = v7[3];
      v20 = v9;
      v21 = v10;
      v19 = v8;
      v11 = v7[1];
      *a2 = *v7;
      *(a2 + 16) = v11;
      v12 = v7[3];
      *(a2 + 32) = v7[2];
      *(a2 + 48) = v12;
      return sub_1BBA8BC5C(&v19, v18, &qword_1EBC7BBE0);
    }
  }

  v13 = (v5 & 0xFFFFFFFFFFFFFFBLL);
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[3];
  v16 = v13[4];
  v20 = v13[2];
  v21 = v15;
  v22 = v16;
  v19 = v14;
  v17 = v13[2];
  *a2 = v13[1];
  *(a2 + 16) = v17;
  *(a2 + 32) = v13[3];
  *(a2 + 48) = v16;
  return sub_1BBACBF34(&v19, v18);
}

uint64_t sub_1BBAE09A4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAE0A78()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAE0B38()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAE0C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAE7414();
  *a1 = result;
  return result;
}

void sub_1BBAE0C38(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x656761726F7473;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x656D656C65627573;
    v4 = 0xEB0000000073746ELL;
  }

  if (*v1)
  {
    v3 = 0x676E69646E756F62;
    v2 = 0xEB00000000786F42;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BBAE0CC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAE7414();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAE0CF0(uint64_t a1)
{
  v2 = sub_1BBA8AB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAE0D2C(uint64_t a1)
{
  v2 = sub_1BBA8AB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t IntelligenceElement.description.getter()
{
  v2 = 0xD000000000000011;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v135 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v135 - v7;
  v137 = type metadata accessor for IntelligenceUserActivity();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v152 = *(v0 + 40);
  v153 = *(v0 + 56);
  *&v154.origin.x = v10;
  v154.origin.y = v11;
  v154.size.width = v12;
  v154.size.height = v13;
  if (CGRectIsNull(v154))
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BBB85CF0;
    v17 = MEMORY[0x1E69E7DE0];
    *(v16 + 56) = MEMORY[0x1E69E7DE0];
    v18 = sub_1BBAE6D98();
    *(v16 + 64) = v18;
    *(v16 + 32) = v10;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v11;
    *(v16 + 136) = v17;
    *(v16 + 144) = v18;
    *(v16 + 112) = v12;
    *(v16 + 176) = v17;
    *(v16 + 184) = v18;
    *(v16 + 152) = v13;
    v1 = sub_1BBB83A28();
    v2 = v19;
    v15 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    if (v21 >= v20 >> 1)
    {
      v15 = sub_1BBA86A94((v20 > 1), v21 + 1, 1, v15);
    }

    *(v15 + 2) = v21 + 1;
    v22 = &v15[16 * v21];
    *(v22 + 4) = v1;
    *(v22 + 5) = v2;
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = *(v0 + 40);
  v151 = *(v0 + 56);
  v23 = COERCE_DOUBLE(IntelligenceElement.fractionVisible.getter());
  if ((v24 & 1) == 0)
  {
    v25 = round(v23 * 100.0);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 >= 9.22337204e18)
      {
        __break(1u);
      }

      else
      {
        v139 = v25;
        v146[0] = sub_1BBB842D8();
        v146[1] = v26;
        MEMORY[0x1BFB16150](0x6C62697369762025, 0xE900000000000065);
        v1 = v146[0];
        v2 = v146[1];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_11:
          v28 = *(v15 + 2);
          v27 = *(v15 + 3);
          if (v28 >= v27 >> 1)
          {
            v15 = sub_1BBA86A94((v27 > 1), v28 + 1, 1, v15);
          }

          *(v15 + 2) = v28 + 1;
          v29 = &v15[16 * v28];
          *(v29 + 4) = v1;
          *(v29 + 5) = v2;
          goto LABEL_14;
        }
      }

      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
      goto LABEL_11;
    }

    __break(1u);
LABEL_114:
    v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_16;
  }

LABEL_14:
  v146[0] = v14;
  v139 = 0x9000000000000004;
  sub_1BBA8BD24(v14);
  v30 = _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(v146, &v139);
  sub_1BBA8ABF8(v146[0]);
  if (v30)
  {
    goto LABEL_19;
  }

  strcpy(v146, "content: ");
  WORD1(v146[1]) = 0;
  HIDWORD(v146[1]) = -385875968;
  v139 = v14;
  v31 = IntelligenceElement.Content.description.getter();
  MEMORY[0x1BFB16150](v31);

  v1 = v146[0];
  v2 = v146[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_16:
  v33 = *(v15 + 2);
  v32 = *(v15 + 3);
  if (v33 >= v32 >> 1)
  {
    v15 = sub_1BBA86A94((v32 > 1), v33 + 1, 1, v15);
  }

  *(v15 + 2) = v33 + 1;
  v34 = &v15[16 * v33];
  *(v34 + 4) = v1;
  *(v34 + 5) = v2;
LABEL_19:
  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v35 = *(IntelligenceElement.extraAttributes.getter() + 16);

  if (v35)
  {
    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    v139 = 0xD000000000000011;
    v140 = 0x80000001BBB9B3B0;
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    IntelligenceElement.extraAttributes.getter();
    v36 = sub_1BBB83908();
    v38 = v37;

    MEMORY[0x1BFB16150](v36, v38);

    v39 = v139;
    v40 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v42 = *(v15 + 2);
    v41 = *(v15 + 3);
    if (v42 >= v41 >> 1)
    {
      v15 = sub_1BBA86A94((v41 > 1), v42 + 1, 1, v15);
    }

    *(v15 + 2) = v42 + 1;
    v43 = &v15[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v44 = *(IntelligenceElement.customTypeNames.getter() + 16);

  if (v44)
  {
    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    v139 = 0xD000000000000011;
    v140 = 0x80000001BBB9B3D0;
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    IntelligenceElement.customTypeNames.getter();
    v45 = MEMORY[0x1BFB16230]();
    v47 = v46;

    MEMORY[0x1BFB16150](v45, v47);

    v48 = v139;
    v49 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v51 = *(v15 + 2);
    v50 = *(v15 + 3);
    if (v51 >= v50 >> 1)
    {
      v15 = sub_1BBA86A94((v50 > 1), v51 + 1, 1, v15);
    }

    *(v15 + 2) = v51 + 1;
    v52 = &v15[16 * v51];
    *(v52 + 4) = v48;
    *(v52 + 5) = v49;
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v53 = *(IntelligenceElement.customControllerTypeNames.getter() + 16);

  if (v53)
  {
    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    v139 = 0xD00000000000001BLL;
    v140 = 0x80000001BBB9B3F0;
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    IntelligenceElement.customControllerTypeNames.getter();
    v54 = MEMORY[0x1BFB16230]();
    v56 = v55;

    MEMORY[0x1BFB16150](v54, v56);

    v57 = v139;
    v58 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v60 = *(v15 + 2);
    v59 = *(v15 + 3);
    if (v60 >= v59 >> 1)
    {
      v15 = sub_1BBA86A94((v59 > 1), v60 + 1, 1, v15);
    }

    *(v15 + 2) = v60 + 1;
    v61 = &v15[16 * v60];
    *(v61 + 4) = v57;
    *(v61 + 5) = v58;
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v62 = IntelligenceElement.appEntityIdentifier.getter();
  if (v63)
  {
    v64 = v63;
    v65 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v65 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      v146[0] = 0;
      v146[1] = 0xE000000000000000;
      v66 = v62;
      sub_1BBB84028();

      v146[0] = 0xD000000000000016;
      v146[1] = 0x80000001BBB9B4B0;
      MEMORY[0x1BFB16150](v66, v64);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v67 = v146[0];
      v68 = v146[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
      }

      v70 = *(v15 + 2);
      v69 = *(v15 + 3);
      if (v70 >= v69 >> 1)
      {
        v15 = sub_1BBA86A94((v69 > 1), v70 + 1, 1, v15);
      }

      *(v15 + 2) = v70 + 1;
      v71 = &v15[16 * v70];
      *(v71 + 4) = v67;
      *(v71 + 5) = v68;
    }

    else
    {
    }
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v72 = IntelligenceElement.appIntentIdentifier.getter();
  if (v73)
  {
    v74 = v73;
    v75 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v75 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
      v146[0] = 0;
      v146[1] = 0xE000000000000000;
      v76 = v72;
      sub_1BBB84028();

      v146[0] = 0xD000000000000016;
      v146[1] = 0x80000001BBB9B490;
      MEMORY[0x1BFB16150](v76, v74);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v77 = v146[0];
      v78 = v146[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
      }

      v80 = *(v15 + 2);
      v79 = *(v15 + 3);
      if (v80 >= v79 >> 1)
      {
        v15 = sub_1BBA86A94((v79 > 1), v80 + 1, 1, v15);
      }

      *(v15 + 2) = v80 + 1;
      v81 = &v15[16 * v80];
      *(v81 + 4) = v77;
      *(v81 + 5) = v78;
    }

    else
    {
    }
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v82 = *(IntelligenceElement.appIntentsPayloadDebugDescription.getter() + 16);

  if (v82)
  {
    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    v139 = 0xD000000000000013;
    v140 = 0x80000001BBB9B410;
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    IntelligenceElement.appIntentsPayloadDebugDescription.getter();
    v83 = MEMORY[0x1BFB16230]();
    v85 = v84;

    MEMORY[0x1BFB16150](v83, v85);

    v86 = v139;
    v87 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v89 = *(v15 + 2);
    v88 = *(v15 + 3);
    if (v89 >= v88 >> 1)
    {
      v15 = sub_1BBA86A94((v88 > 1), v89 + 1, 1, v15);
    }

    *(v15 + 2) = v89 + 1;
    v90 = &v15[16 * v89];
    *(v90 + 4) = v86;
    *(v90 + 5) = v87;
  }

  else
  {
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    v91 = IntelligenceElement.appIntentsPayload.getter();
    if (v92 >> 60 != 15)
    {
      sub_1BBAB42C8(v91, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
      }

      v94 = *(v15 + 2);
      v93 = *(v15 + 3);
      if (v94 >= v93 >> 1)
      {
        v15 = sub_1BBA86A94((v93 > 1), v94 + 1, 1, v15);
      }

      *(v15 + 2) = v94 + 1;
      v95 = &v15[16 * v94];
      *(v95 + 4) = 0xD00000000000001BLL;
      *(v95 + 5) = 0x80000001BBB9B470;
    }
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  v96 = IntelligenceElement.accessibilityLabel.getter();
  if (!v97)
  {
    goto LABEL_79;
  }

  v98 = v97;
  v99 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v99 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v99)
  {

LABEL_79:
    v105 = v136;
    goto LABEL_80;
  }

  v146[0] = 0;
  v146[1] = 0xE000000000000000;
  v100 = v96;
  sub_1BBB84028();

  v146[0] = 0xD000000000000015;
  v146[1] = 0x80000001BBB9B450;
  MEMORY[0x1BFB16150](v100, v98);

  MEMORY[0x1BFB16150](34, 0xE100000000000000);
  v101 = v146[0];
  v102 = v146[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
  }

  v104 = *(v15 + 2);
  v103 = *(v15 + 3);
  v105 = v136;
  if (v104 >= v103 >> 1)
  {
    v15 = sub_1BBA86A94((v103 > 1), v104 + 1, 1, v15);
  }

  *(v15 + 2) = v104 + 1;
  v106 = &v15[16 * v104];
  *(v106 + 4) = v101;
  *(v106 + 5) = v102;
LABEL_80:
  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  IntelligenceElement.loadableUserActivity.getter(v5);
  sub_1BBAC05AC(v8);
  sub_1BBA8BCC4(v5, &qword_1EBC7BBB8);
  if ((*(v105 + 48))(v8, 1, v137) == 1)
  {
    sub_1BBA8BCC4(v8, &qword_1EBC7B830);
  }

  else
  {
    sub_1BBA969BC(v8, v138, type metadata accessor for IntelligenceUserActivity);
    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v146, "userActivity: ");
    HIBYTE(v146[1]) = -18;
    v107 = IntelligenceUserActivity.description.getter();
    MEMORY[0x1BFB16150](v107);

    v108 = v146[0];
    v109 = v146[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v111 = *(v15 + 2);
    v110 = *(v15 + 3);
    if (v111 >= v110 >> 1)
    {
      v15 = sub_1BBA86A94((v110 > 1), v111 + 1, 1, v15);
    }

    sub_1BBA9C144(v138, type metadata accessor for IntelligenceUserActivity);
    *(v15 + 2) = v111 + 1;
    v112 = &v15[16 * v111];
    *(v112 + 4) = v108;
    *(v112 + 5) = v109;
  }

  v146[0] = v10;
  *&v146[1] = v11;
  v147 = v12;
  v148 = v13;
  v149 = v14;
  v150 = v152;
  v151 = v153;
  if (IntelligenceElement.exceedsVisibleSubelementLimit.getter() & 1) != 0 || (v139 = v10, v140 = *&v11, v141 = v12, v142 = v13, v143 = v14, v144 = v152, v145 = v153, (IntelligenceElement.exceedsOffscreenSubelementLimit.getter()))
  {
    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    if (IntelligenceElement.exceedsVisibleSubelementLimit.getter())
    {
      v113 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v115 = *(v113 + 2);
      v114 = *(v113 + 3);
      if (v115 >= v114 >> 1)
      {
        v113 = sub_1BBA86A94((v114 > 1), v115 + 1, 1, v113);
      }

      *(v113 + 2) = v115 + 1;
      v116 = &v113[16 * v115];
      *(v116 + 4) = 0x656C6269736976;
      *(v116 + 5) = 0xE700000000000000;
    }

    else
    {
      v113 = MEMORY[0x1E69E7CC0];
    }

    v146[0] = v10;
    *&v146[1] = v11;
    v147 = v12;
    v148 = v13;
    v149 = v14;
    v150 = v152;
    v151 = v153;
    if (IntelligenceElement.exceedsOffscreenSubelementLimit.getter())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1BBA86A94(0, *(v113 + 2) + 1, 1, v113);
      }

      v118 = *(v113 + 2);
      v117 = *(v113 + 3);
      if (v118 >= v117 >> 1)
      {
        v113 = sub_1BBA86A94((v117 > 1), v118 + 1, 1, v113);
      }

      *(v113 + 2) = v118 + 1;
      v119 = &v113[16 * v118];
      *(v119 + 4) = 0x656572637366666FLL;
      *(v119 + 5) = 0xE90000000000006ELL;
    }

    v146[0] = 0;
    v146[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v146, "exceeds ");
    BYTE1(v146[1]) = 0;
    WORD1(v146[1]) = 0;
    HIDWORD(v146[1]) = -402653184;
    v139 = v113;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
    sub_1BBA86BA4();
    v120 = sub_1BBB83938();
    v122 = v121;

    MEMORY[0x1BFB16150](v120, v122);

    MEMORY[0x1BFB16150](0xD000000000000011, 0x80000001BBB9B430);
    v123 = *(v113 + 2);

    if (v123 == 1)
    {
      v124 = 0;
    }

    else
    {
      v124 = 115;
    }

    if (v123 == 1)
    {
      v125 = 0xE000000000000000;
    }

    else
    {
      v125 = 0xE100000000000000;
    }

    MEMORY[0x1BFB16150](v124, v125);

    v126 = v146[0];
    v127 = v146[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BBA86A94(0, *(v15 + 2) + 1, 1, v15);
    }

    v129 = *(v15 + 2);
    v128 = *(v15 + 3);
    if (v129 >= v128 >> 1)
    {
      v15 = sub_1BBA86A94((v128 > 1), v129 + 1, 1, v15);
    }

    *(v15 + 2) = v129 + 1;
    v130 = &v15[16 * v129];
    *(v130 + 4) = v126;
    *(v130 + 5) = v127;
  }

  strcpy(v146, "Element(");
  BYTE1(v146[1]) = 0;
  WORD1(v146[1]) = 0;
  HIDWORD(v146[1]) = -402653184;
  v139 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v131 = sub_1BBB83938();
  v133 = v132;

  MEMORY[0x1BFB16150](v131, v133);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v146[0];
}

uint64_t sub_1BBAE2040(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v5;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v24 = v6;
  v25 = v8;
  v26 = *(v2 + 56);
  v23 = v7;
  v21[2] = IntelligenceElement.description.getter();
  v21[3] = v9;
  v10 = sub_1BBB82F18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB82F08();
  sub_1BBAE8250();
  v14 = sub_1BBB83EC8();
  (*(v11 + 8))(v13, v10);

  *&v22[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v15 = sub_1BBB83938();
  v17 = v16;

  result = sub_1BBB83AD8();
  if (result >= 1)
  {
    result = MEMORY[0x1BFB16150](10, 0xE100000000000000);
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v19 = a2;
      do
      {
        MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
        --v19;
      }

      while (v19);
    }

    MEMORY[0x1BFB16150](v15, v17);

    MEMORY[0x1EEE9AC00](v20);
    v21[-2] = a2;
    v21[-1] = a1;
    *&v22[0] = v7;
    sub_1BBA8BD24(v7);
    sub_1BBA9A66C(v22, sub_1BBAE82A4);
    result = sub_1BBA8ABF8(*&v22[0]);
    if (!__OFADD__(a2, 1))
    {
      *&v22[0] = a2 + 1;
      return sub_1BBB185C4(v6, a1, v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBAE22AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a2)
  {
    v12 = result;

    MEMORY[0x1BFB16150](58, 0xE100000000000000);
    result = sub_1BBB83AD8();
    if (result >= 1)
    {
      result = MEMORY[0x1BFB16150](10, 0xE100000000000000);
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5)
      {
        v8 = v5;
        do
        {
          MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
          --v8;
        }

        while (v8);
      }

      MEMORY[0x1BFB16150](v12, a2);

      if (!__OFADD__(v5++, 1))
      {
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return result;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = a3 + 32;
    do
    {
      result = sub_1BBAE2040(a5, v5);
      v11 += 64;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t IntelligenceElement.recursiveDescription.getter()
{
  v1[0] = 0;
  v1[1] = 0xE000000000000000;
  sub_1BBAE2040(v1, 0);
  return v1[0];
}

uint64_t sub_1BBAE242C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BBABF1B8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BBAE2524(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1BBAE588C(a1, a2, a3, 1);
    os_unfair_lock_lock((a1 + 104));
    v7 = *(a1 + 40);

    os_unfair_lock_unlock((a1 + 104));
    sub_1BBAE5840(a1, a2, a3, 1);
    if (v7)
    {

      return 0;
    }
  }

  else
  {
    sub_1BBAE588C(a1, a2, a3, 0);
    sub_1BBAE584C(a1, a2, a3);
  }

  return 1;
}

BOOL sub_1BBAE25CC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    sub_1BBAE835C(a1, 0);
    sub_1BBAE835C(a1, 0);

LABEL_6:
    if (a4)
    {

      os_unfair_lock_lock((a3 + 72));
      v13 = *(a3 + 40);

      os_unfair_lock_unlock((a3 + 72));
      sub_1BBAE5820(a3, 1);
      if (v13)
      {

        if ((a2 & 1) == 0)
        {
          v11 = a1;
          v12 = 0;
          goto LABEL_20;
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_1BBAE835C(a3, 0);
    }

    sub_1BBAE5820(a1, a2 & 1);
    if (a2)
    {

      os_unfair_lock_lock((a1 + 72));
      if (*(a1 + 56))
      {
        v19 = *(a1 + 56);
      }

      else
      {
        v19 = *(a1 + 64);
      }

      os_unfair_lock_unlock((a1 + 72));
      sub_1BBAE5820(a1, 1);
      if ((a4 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1BBAE835C(a1, 0);
      v19 = a1;
      if ((a4 & 1) == 0)
      {
LABEL_25:
        sub_1BBAE835C(a3, 0);
LABEL_28:
        v21 = a5(v19, a3);

        return v21 & 1;
      }
    }

    os_unfair_lock_lock((a3 + 72));
    if (*(a3 + 56))
    {
      v20 = *(a3 + 56);
    }

    else
    {
      v20 = *(a3 + 64);
    }

    os_unfair_lock_unlock((a3 + 72));
    sub_1BBAE5820(a3, 1);
    a3 = v20;
    goto LABEL_28;
  }

  swift_retain_n();
  os_unfair_lock_lock((a1 + 72));
  v10 = *(a1 + 40);

  os_unfair_lock_unlock((a1 + 72));
  sub_1BBAE5820(a1, 1);
  if (!v10)
  {
    goto LABEL_6;
  }

  if ((a4 & 1) == 0)
  {
    v11 = a1;
    v12 = 1;
LABEL_20:
    sub_1BBAE5820(v11, v12);
    return 0;
  }

LABEL_9:

  os_unfair_lock_lock((a1 + 72));
  v14 = *(a1 + 16);
  v15 = *(a1 + 40);

  os_unfair_lock_unlock((a1 + 72));
  os_unfair_lock_lock((a3 + 72));
  v16 = *(a3 + 16);
  v17 = *(a3 + 40);

  os_unfair_lock_unlock((a3 + 72));
  sub_1BBAE5820(a1, a2 & 1);
  sub_1BBAE5820(a3, 1);
  if (v15)
  {
    if (v17)
    {

      return v14 == v16;
    }

    goto LABEL_22;
  }

  if (v17)
  {
LABEL_22:

    return 0;
  }

  return 1;
}

uint64_t sub_1BBAE288C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v13 = a3;
  v14 = a2;
  v15 = a1;
  if (a4)
  {
    sub_1BBAE588C(a1, a2, a3, 1);
    sub_1BBAE588C(v15, v14, v13, 1);
    sub_1BBAE588C(v15, v14, v13, 1);
    os_unfair_lock_lock((v15 + 104));
    v16 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 104));
    sub_1BBAE5840(v15, v14, v13, 1);
    if (v16)
    {
      sub_1BBAE5840(v15, v14, v13, 1);

      goto LABEL_18;
    }
  }

  else
  {
    sub_1BBAE588C(a1, a2, a3, 0);
    sub_1BBAE588C(v15, v14, v13, 0);
    sub_1BBAE588C(v15, v14, v13, 0);
    sub_1BBAE584C(v15, v14, v13);
  }

  v17 = sub_1BBAE2524(a5, a6, a7, a8 & 1);
  sub_1BBAE5840(v15, v14, v13, a4 & 1);
  if ((v17 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      v34 = v15;
      v35 = v14;
      v36 = v13;
      v37 = 0;
      goto LABEL_27;
    }

LABEL_18:
    if (a8)
    {

      os_unfair_lock_lock((v15 + 104));
      v30 = *(v15 + 16);
      v31 = *(v15 + 40);

      os_unfair_lock_unlock((v15 + 104));
      os_unfair_lock_lock((a5 + 104));
      v32 = *(a5 + 16);
      v33 = *(a5 + 40);

      os_unfair_lock_unlock((a5 + 104));
      sub_1BBAE5840(v15, v14, v13, 1);
      sub_1BBAE5840(a5, a6, a7, 1);
      if (v31)
      {
        if (v33)
        {

          v29 = v30 == v32;

          return v29 & 1;
        }

LABEL_29:

        v29 = 0;
        return v29 & 1;
      }

      if (v33)
      {
        goto LABEL_29;
      }

LABEL_36:
      v29 = 1;
      return v29 & 1;
    }

    v34 = v15;
    v35 = v14;
    v36 = v13;
    v37 = 1;
LABEL_27:
    sub_1BBAE5840(v34, v35, v36, v37);
    v29 = 0;
    return v29 & 1;
  }

  v40 = a6;
  v41 = a7;
  if (a4)
  {
    os_unfair_lock_lock((v15 + 104));
    v18 = *(v15 + 56);
    v19 = *(v15 + 64);
    v20 = *(v15 + 72);
    v39 = v18;
    v21 = v19;
    v22 = v20;
    if (v20 == 1)
    {
      v22 = *(v15 + 96);
      v39 = *(v15 + 80);
      v21 = *(v15 + 88);
      sub_1BBAE5898(v39, v21, v22);
    }

    sub_1BBAE592C(v18, v19, v20);
    os_unfair_lock_unlock((v15 + 104));
    sub_1BBAE5840(v15, v14, v13, 1);
    v15 = v39;
    a6 = v40;
    v14 = v21;
    v13 = v22;
    a7 = v41;
  }

  if ((a8 & 1) == 0)
  {
    sub_1BBAE588C(a5, a6, a7, 0);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (!a7)
    {
      sub_1BBAE584C(v15, v14, 0);
      goto LABEL_36;
    }

    sub_1BBAE5898(v15, v14, 0);
    sub_1BBAE5898(a5, a6, a7);
LABEL_31:
    sub_1BBAE584C(v15, v14, v13);
    sub_1BBAE584C(a5, a6, a7);
    sub_1BBAE584C(a5, a6, a7);
    sub_1BBAE584C(v15, v14, v13);
    v29 = 0;
    return v29 & 1;
  }

  sub_1BBAE588C(a5, a6, a7, 1);
  os_unfair_lock_lock((a5 + 104));
  v23 = *(a5 + 56);
  v24 = *(a5 + 64);
  v25 = *(a5 + 72);
  v26 = v23;
  v27 = v24;
  v28 = v25;
  if (v25 == 1)
  {
    v26 = *(a5 + 80);
    v27 = *(a5 + 88);
    v28 = *(a5 + 96);
    sub_1BBAE5898(v26, v27, v28);
  }

  sub_1BBAE592C(v23, v24, v25);
  os_unfair_lock_unlock((a5 + 104));
  sub_1BBAE5840(a5, v40, v41, 1);
  a5 = v26;
  a6 = v27;
  a7 = v28;
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_14:
  sub_1BBAE5898(v15, v14, v13);
  if (!a7)
  {
    sub_1BBAE5898(a5, a6, 0);
    sub_1BBAE5898(v15, v14, v13);
    sub_1BBA885E8(v15, v14);

    goto LABEL_31;
  }

  sub_1BBAE5898(a5, a6, a7);
  sub_1BBAE5898(v15, v14, v13);
  if (sub_1BBB5D6B0(v15, v14, a5, a6))
  {
    v29 = sub_1BBAFF548(v13, a7);
  }

  else
  {
    v29 = 0;
  }

  sub_1BBAE584C(a5, a6, a7);
  sub_1BBA885E8(v15, v14);

  sub_1BBAE584C(v15, v14, v13);
  sub_1BBAE584C(a5, a6, a7);
  sub_1BBAE584C(v15, v14, v13);
  return v29 & 1;
}

uint64_t sub_1BBAE2D6C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for IntelligenceUserActivity();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE30);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v59 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v59 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v59 - v23);
  sub_1BBA8BC5C(a1, &v59 - v23, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v26 = **v24;
    v27 = *v24 + *(v26 + *MEMORY[0x1E69E6B68] + 16);
    v28 = (*(v26 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v25 + v28));
    v29 = *(v27 + 3);

    os_unfair_lock_unlock((v25 + v28));

    v30 = v66;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1BBA8BCC4(v24, &qword_1EBC7B830);
    v30 = v66;
  }

  sub_1BBA8BC5C(v30, v22, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BBA8BCC4(v22, &qword_1EBC7B830);
    goto LABEL_13;
  }

  v31 = *v22;
  v32 = **v22;
  v33 = *v22 + *(v32 + *MEMORY[0x1E69E6B68] + 16);
  v34 = (*(v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v31 + v34));
  v35 = *(v33 + 3);

  os_unfair_lock_unlock((v31 + v34));

  if (!v35)
  {
LABEL_13:
    v48 = v63;
    sub_1BBAC05AC(v63);
    v49 = v62;
    sub_1BBAC05AC(v62);
    v50 = *(v61 + 48);
    sub_1BBA8BC5C(v48, v6, &qword_1EBC7B830);
    sub_1BBA8BC5C(v49, &v6[v50], &qword_1EBC7B830);
    v51 = v65;
    v52 = *(v64 + 48);
    if (v52(v6, 1, v65) == 1)
    {
      sub_1BBA8BCC4(v49, &qword_1EBC7B830);
      sub_1BBA8BCC4(v48, &qword_1EBC7B830);
      if (v52(&v6[v50], 1, v51) == 1)
      {
        sub_1BBA8BCC4(v6, &qword_1EBC7B830);
        goto LABEL_16;
      }
    }

    else
    {
      v55 = v60;
      sub_1BBA8BC5C(v6, v60, &qword_1EBC7B830);
      if (v52(&v6[v50], 1, v51) != 1)
      {
        v57 = &v6[v50];
        v58 = v59;
        sub_1BBA969BC(v57, v59, type metadata accessor for IntelligenceUserActivity);
        v47 = sub_1BBB834C8();
        sub_1BBA9C144(v58, type metadata accessor for IntelligenceUserActivity);
        sub_1BBA8BCC4(v49, &qword_1EBC7B830);
        sub_1BBA8BCC4(v48, &qword_1EBC7B830);
        sub_1BBA9C144(v55, type metadata accessor for IntelligenceUserActivity);
        sub_1BBA8BCC4(v6, &qword_1EBC7B830);
        return v47 & 1;
      }

      sub_1BBA8BCC4(v49, &qword_1EBC7B830);
      sub_1BBA8BCC4(v48, &qword_1EBC7B830);
      sub_1BBA9C144(v55, type metadata accessor for IntelligenceUserActivity);
    }

    v53 = &qword_1EBC7BE30;
    v54 = v6;
LABEL_22:
    sub_1BBA8BCC4(v54, v53);
LABEL_23:
    v47 = 0;
    return v47 & 1;
  }

LABEL_7:

  sub_1BBA8BC5C(a1, v19, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = &qword_1EBC7B820;
    v54 = v19;
    goto LABEL_22;
  }

  v36 = *v19;
  sub_1BBA8BC5C(v30, v16, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v53 = &qword_1EBC7B820;
    v54 = v16;
    goto LABEL_22;
  }

  v37 = *v16;
  v38 = MEMORY[0x1E69E6B68];
  v39 = (v36 + *(*v36 + *MEMORY[0x1E69E6B68] + 16));
  v40 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v36 + v40));
  v41 = *v39;
  v42 = v39[3];

  os_unfair_lock_unlock((v36 + v40));
  v43 = (v37 + *(*v37 + *v38 + 16));
  v44 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v44));
  v45 = *v43;
  v46 = v43[3];

  os_unfair_lock_unlock((v37 + v44));

  if (!v42)
  {
    if (v46)
    {
      goto LABEL_27;
    }

LABEL_16:
    v47 = 1;
    return v47 & 1;
  }

  if (!v46)
  {
LABEL_27:

    goto LABEL_23;
  }

  v47 = v41 == v45;

  return v47 & 1;
}

unint64_t sub_1BBAE3554(uint64_t a1, uint64_t a2)
{
  sub_1BBB843D8();
  sub_1BBB83AC8();
  v4 = sub_1BBB84438();

  return sub_1BBAE377C(a1, a2, v4);
}

uint64_t sub_1BBAE35CC(double *a1)
{
  sub_1BBB843D8();
  IntelligenceImage.Representation.hash(into:)();
  v2 = sub_1BBB84438();

  return sub_1BBAE3834(a1, v2);
}

unint64_t sub_1BBAE365C(uint64_t a1)
{
  sub_1BBB843D8();
  type metadata accessor for CFString(0);
  sub_1BBA8AD64(&qword_1EBC7BE68, type metadata accessor for CFString);
  sub_1BBB835B8();
  v2 = sub_1BBB84438();

  return sub_1BBAE3DF0(a1, v2);
}

unint64_t sub_1BBAE3710(uint64_t a1)
{
  sub_1BBB843D8();
  IntelligenceDataSourceItem.hash(into:)();
  v2 = sub_1BBB84438();

  return sub_1BBAE3EFC(a1, v2);
}

unint64_t sub_1BBAE377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BBB842F8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1BBAE3834(double *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_1BBB83658() - 8);
  v7 = (MEMORY[0x1EEE9AC00])();
  v59 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  v12 = v2 + 64;
  v13 = -1 << *(v2 + 32);
  v14 = a2 & ~v13;
  if (((*(v2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return v14;
  }

  v55 = v9;
  v15 = ~v13;
  v16 = *(a1 + 2);
  v17 = *(a1 + 24);
  v60 = *(a1 + 4);
  v62 = *(a1 + 40);
  v52 = *(a1 + 6);
  v61 = *(a1 + 56);
  v48 = *(a1 + 8);
  v56 = *(a1 + 72);
  v18 = a1[12];
  v43 = *(a1 + 104);
  v19 = *a1;
  v20 = *(a1 + 1);
  v54 = v6 + 16;
  v53 = (v6 + 8);
  v21 = *(a1 + 11);
  v50 = *(a1 + 10);
  v49 = v21;
  v22 = v17;
  while (1)
  {
    v23 = (*(v3 + 48) + 112 * v14);
    v25 = v23[1];
    v24 = v23[2];
    v64 = *v23;
    v65 = v25;
    v66 = v24;
    v27 = v23[4];
    v26 = v23[5];
    v28 = v23[3];
    *&v69[9] = *(v23 + 89);
    v68 = v27;
    *v69 = v26;
    v67 = v28;
    if (*(&v64 + 1))
    {
      if (!v20 || v64 != __PAIR128__(v20, v19) && (sub_1BBB842F8() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v20)
    {
      goto LABEL_4;
    }

    if (BYTE8(v65))
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v22 & 1) != 0 || v65 != v16)
    {
      goto LABEL_4;
    }

    if (BYTE8(v66))
    {
      if ((v62 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v62 & 1) != 0 || v66 != v60)
    {
      goto LABEL_4;
    }

    if (BYTE8(v67))
    {
      if ((v61 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v61 & 1) != 0 || v67 != v52)
    {
      goto LABEL_4;
    }

    if (BYTE8(v68))
    {
      if ((v56 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v56 & 1) != 0 || v68 != v48)
    {
      goto LABEL_4;
    }

    if (*v69 != v50)
    {
      goto LABEL_4;
    }

    v51 = *&v69[8];
    v29 = *(*&v69[8] + 16);
    if (v29 != *(v49 + 16))
    {
      goto LABEL_4;
    }

    if (v29 && v51 != v49)
    {
      break;
    }

LABEL_39:
    if (*&v69[16] == v18 && ((v69[24] ^ v43) & 1) == 0)
    {
      return v14;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return v14;
    }
  }

  v57 = *(*&v69[8] + 16);
  v40 = v19;
  v41 = v22;
  v42 = v16;
  v47 = v6;
  v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v46 = v51 + v30;
  v44 = v49 + v30;
  result = sub_1BBACB4D0(&v64, v63);
  v32 = 0;
  v58 = v11;
  v45 = v3;
  while (v32 < *(v51 + 16))
  {
    v33 = *(v47 + 72) * v32;
    v34 = *(v47 + 16);
    v35 = v55;
    result = v34(v11, v46 + v33, v55);
    if (v57 == v32)
    {
      goto LABEL_45;
    }

    v36 = v59;
    v34(v59, v44 + v33, v35);
    sub_1BBA8AD64(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
    v37 = sub_1BBB83968();
    v38 = *v53;
    v39 = v36;
    v11 = v58;
    (*v53)(v39, v35);
    result = v38(v11, v35);
    if ((v37 & 1) == 0)
    {
      sub_1BBAC7878(&v64);
      v6 = v47;
      v16 = v42;
      v22 = v41;
      v19 = v40;
      v3 = v45;
      goto LABEL_4;
    }

    ++v32;
    v3 = v45;
    if (v57 == v32)
    {
      sub_1BBAC7878(&v64);
      v6 = v47;
      v16 = v42;
      v22 = v41;
      v19 = v40;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_1BBAE3DF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BBA8AD64(&qword_1EBC7BE68, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BBB835A8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BBAE3EFC(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE38);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - v5;
  v7 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v60 = (&v51 - v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](&v51 - v12);
  v18 = &v51 - v17;
  v64 = v2;
  v19 = *(v2 + 32);
  v20 = v2 + 64;
  v21 = -1 << v19;
  v22 = a2 & ~v21;
  if ((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v56 = v13;
    v57 = v16;
    v58 = v15;
    v59 = v7;
    v23 = *(v14 + 72);
    v61 = ~v21;
    v62 = v23;
    v52 = v4;
    v51 = v20;
    do
    {
      sub_1BBA966C4(*(v64 + 48) + v62 * v22, v18, type metadata accessor for IntelligenceDataSourceItem);
      v24 = &v6[*(v4 + 48)];
      sub_1BBA966C4(v18, v6, type metadata accessor for IntelligenceDataSourceItem);
      sub_1BBA966C4(v63, v24, type metadata accessor for IntelligenceDataSourceItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
          sub_1BBA966C4(v6, v60, type metadata accessor for IntelligenceDataSourceItem);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_4;
          }

          v28 = *v60;
          v29 = *v24;
        }

        else
        {
          sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
          v34 = v58;
          sub_1BBA966C4(v6, v58, type metadata accessor for IntelligenceDataSourceItem);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            sub_1BBA8BCC4((v34 + 1), &qword_1EBC7C230);
LABEL_4:
            sub_1BBA8BCC4(v6, &qword_1EBC7BE38);
            goto LABEL_5;
          }

          v28 = *v34;
          v29 = *v24;
          sub_1BBA8BCC4(v24 + 8, &qword_1EBC7C230);
          sub_1BBA8BCC4((v34 + 1), &qword_1EBC7C230);
        }

        sub_1BBA9C144(v6, type metadata accessor for IntelligenceDataSourceItem);
        if (v28 == v29)
        {
          return v22;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v30 = v57;
        sub_1BBA966C4(v6, v57, type metadata accessor for IntelligenceDataSourceItem);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
          sub_1BBAE81B0(v30);
          goto LABEL_4;
        }

        v31 = *(v30 + 16);
        v67[0] = *v30;
        v67[1] = v31;
        v68 = *(v30 + 32);
        v32 = *(v24 + 16);
        v65[0] = *v24;
        v65[1] = v32;
        v66 = *(v24 + 32);
        v33 = MEMORY[0x1BFB16610](v67, v65);
        sub_1BBAE81B0(v65);
        sub_1BBAE81B0(v67);
        sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
        sub_1BBA9C144(v6, type metadata accessor for IntelligenceDataSourceItem);
        if (v33)
        {
          return v22;
        }
      }

      else
      {
        v26 = v56;
        sub_1BBA966C4(v6, v56, type metadata accessor for IntelligenceDataSourceItem);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
          v27 = sub_1BBB83548();
          (*(*(v27 - 8) + 8))(v26, v27);
          goto LABEL_4;
        }

        v35 = sub_1BBB83548();
        v55 = &v51;
        v36 = *(v35 - 8);
        v37 = v36[8];
        v38 = MEMORY[0x1EEE9AC00](v35);
        v53 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
        v39 = &v51 - v53;
        v40 = v36[4];
        v41 = v26;
        v43 = v42;
        v44 = v40(&v51 - v53, v41, v42, v38);
        v54 = &v51;
        v45 = MEMORY[0x1EEE9AC00](v44);
        v46 = &v51 - v53;
        v40(&v51 - v53, v24, v43, v45);
        v47 = sub_1BBB83528();
        v48 = v36[1];
        v49 = v46;
        v4 = v52;
        v48(v49, v43);
        v20 = v51;
        v48(v39, v43);
        sub_1BBA9C144(v18, type metadata accessor for IntelligenceDataSourceItem);
        sub_1BBA9C144(v6, type metadata accessor for IntelligenceDataSourceItem);
        if (v47)
        {
          return v22;
        }
      }

LABEL_5:
      v22 = (v22 + 1) & v61;
    }

    while (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

unint64_t sub_1BBAE45CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1BBA98B58(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v18 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BBB40350();
      v9 = v18;
    }

    v10 = v7;
    v11 = *(v9 + 56) + 48 * v7;
    v16 = *(v11 + 16);
    v17 = *v11;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    result = sub_1BBAE4934(v10, v9);
    v15 = v16;
    v14 = v17;
    *v3 = v9;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

double sub_1BBAE4684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BBAE3710(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BBB40518();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for IntelligenceDataSourceItem();
    sub_1BBA9C144(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for IntelligenceDataSourceItem);
    sub_1BBA97A80((*(v9 + 56) + 40 * v7), a2);
    sub_1BBAE4AD8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1BBAE4764(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BBB83F48() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v9);
      result = sub_1BBB84438();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IntelligenceElement.StorageValue() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BBAE4934(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BBB83F48() + 1) & ~v5;
    do
    {
      v11 = (*(a2 + 48) + 8 * v6);
      v13 = *v11;
      v12 = v11[1];
      sub_1BBB843D8();
      MEMORY[0x1BFB16A80](v12 | (v13 << 32));
      result = sub_1BBB84438();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 48 * v3);
        v20 = (v18 + 48 * v6);
        if (v3 != v6 || v19 >= v20 + 3)
        {
          v9 = *v20;
          v10 = v20[2];
          v19[1] = v20[1];
          v19[2] = v10;
          *v19 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BBAE4AD8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceDataSourceItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  v40 = a2 + 64;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v39 = (sub_1BBB83F48() + 1) & ~v11;
    v14 = *(v5 + 72);
    v36 = v13;
    v37 = v4;
    do
    {
      v17 = v14;
      v18 = v14 * v12;
      sub_1BBA966C4(*(a2 + 48) + v14 * v12, v10, type metadata accessor for IntelligenceDataSourceItem);
      sub_1BBB843D8();
      sub_1BBA966C4(v10, v7, type metadata accessor for IntelligenceDataSourceItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          MEMORY[0x1BFB16A50](*v7);
        }

        else
        {
          MEMORY[0x1BFB16A50](*v7);
          sub_1BBA8BCC4((v7 + 1), &qword_1EBC7C230);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v26 = *(v7 + 1);
        v41[0] = *v7;
        v41[1] = v26;
        v42 = v7[4];
        sub_1BBB83FC8();
        sub_1BBAE81B0(v41);
      }

      else
      {
        v20 = sub_1BBB83548();
        v38 = &v35;
        v21 = *(v20 - 8);
        v22 = MEMORY[0x1EEE9AC00](v20);
        v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 32))(v24, v7, v20, v22);
        sub_1BBAE8204();
        sub_1BBB83918();
        v25 = v20;
        v13 = v36;
        (*(v21 + 8))(v24, v25);
      }

      v27 = sub_1BBB84438();
      sub_1BBA9C144(v10, type metadata accessor for IntelligenceDataSourceItem);
      v28 = v27 & v13;
      if (a1 >= v39)
      {
        v14 = v17;
        if (v28 < v39)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = v17;
        if (v28 >= v39)
        {
          goto LABEL_17;
        }
      }

      if (a1 >= v28)
      {
LABEL_17:
        if (v14 * a1 < v18 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v18 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * a1 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v29 = *(a2 + 56);
        v30 = v29 + 40 * a1;
        v31 = (v29 + 40 * v12);
        if (a1 != v12 || v30 >= v31 + 40)
        {
          v15 = *v31;
          v16 = v31[1];
          *(v30 + 32) = *(v31 + 4);
          *v30 = v15;
          *(v30 + 16) = v16;
          a1 = v12;
        }
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v40 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v40 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

char *sub_1BBAE4F00(char *a1, int64_t a2, char a3)
{
  result = sub_1BBB4577C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BBAE4F20(char *a1, int64_t a2, char a3)
{
  result = sub_1BBB4597C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BBAE4F40(char *a1, int64_t a2, char a3)
{
  result = sub_1BBB45A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BBAE4F60(size_t a1, int64_t a2, char a3)
{
  result = sub_1BBB45B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BBAE4F80(size_t a1, int64_t a2, char a3)
{
  result = sub_1BBB45BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BBAE4FA0(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v72 - v4;
  v5 = sub_1BBB83588();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceElement.StorageValue();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v72 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v72 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v72 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE28);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v72 - v28;
  v30 = &v72 + *(v27 + 56) - v28;
  sub_1BBA966C4(v79, &v72 - v28, type metadata accessor for IntelligenceElement.StorageValue);
  v31 = a2;
  v32 = v30;
  sub_1BBA966C4(v31, v30, type metadata accessor for IntelligenceElement.StorageValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1BBA966C4(v29, v17, type metadata accessor for IntelligenceElement.StorageValue);
        v34 = *v17;
        v35 = v17[8];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v36 = *v30;
          v37 = v30[8];
          v38 = sub_1BBAE25CC(v34, v35, *v30, v37, sub_1BBAFF548);
          sub_1BBAE5820(v36, v37);
          v39 = v34;
          v40 = v35;
LABEL_20:
          sub_1BBAE5820(v39, v40);
LABEL_30:
          v61 = v29;
          goto LABEL_31;
        }

        sub_1BBAE5820(v34, v35);
      }

      else
      {
        v62 = v74;
        sub_1BBA966C4(v29, v74, type metadata accessor for IntelligenceElement.StorageValue);
        v63 = *v62;
        v64 = *(v62 + 8);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v65 = *v30;
          v66 = v30[8];
          v38 = sub_1BBAE25CC(v63, v64, *v30, v66, sub_1BBADF29C);
          sub_1BBAE5820(v65, v66);
          v39 = v63;
          v40 = v64;
          goto LABEL_20;
        }

        sub_1BBAE5820(v63, v64);
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1BBA966C4(v29, v12, type metadata accessor for IntelligenceElement.StorageValue);
      v46 = *v12;
      v47 = *(v12 + 1);
      v48 = *(v12 + 2);
      v49 = v29;
      v50 = v12[24];
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v51 = *v32;
        v52 = *(v32 + 1);
        v53 = *(v32 + 2);
        v54 = v32[24];
        v38 = sub_1BBAE288C(v46, v47, v48, v50, v51, v52, v53, v54);
        sub_1BBAE5840(v51, v52, v53, v54);
        sub_1BBAE5840(v46, v47, v48, v50);
LABEL_17:
        v61 = v49;
LABEL_31:
        sub_1BBA9C144(v61, type metadata accessor for IntelligenceElement.StorageValue);
        return v38 & 1;
      }

      sub_1BBAE5840(v46, v47, v48, v50);
      v29 = v49;
    }

    else
    {
      v67 = v75;
      sub_1BBA966C4(v29, v75, type metadata accessor for IntelligenceElement.StorageValue);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v68 = v30;
        v69 = v73;
        sub_1BBAA6758(v68, v73, &qword_1EBC7BBB8);
        v38 = sub_1BBAE2D6C(v67, v69);
        sub_1BBA8BCC4(v69, &qword_1EBC7BBB8);
        sub_1BBA8BCC4(v67, &qword_1EBC7BBB8);
        goto LABEL_30;
      }

      sub_1BBA8BCC4(v67, &qword_1EBC7BBB8);
    }

    goto LABEL_28;
  }

  v41 = v25;
  v43 = v76;
  v42 = v77;
  v44 = v78;
  if (!EnumCaseMultiPayload)
  {
    sub_1BBA966C4(v29, v41, type metadata accessor for IntelligenceElement.StorageValue);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v42 + 32))(v43, v32, v44);
      v38 = MEMORY[0x1BFB15BB0](v41, v43);
      v70 = *(v42 + 8);
      v70(v43, v44);
      v70(v41, v44);
      goto LABEL_30;
    }

    (*(v42 + 8))(v41, v44);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BBA966C4(v29, v20, type metadata accessor for IntelligenceElement.StorageValue);
    v55 = *v20;
    v56 = *(v20 + 1);
    v57 = v20[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = v29;
      v58 = *v32;
      v59 = *(v32 + 1);
      v60 = v32[16];
      v38 = sub_1BBA9D498(v55, v56, v57, v58, v59, v60);
      sub_1BBAAE1FC(v58, v59, v60);
      sub_1BBAAE1FC(v55, v56, v57);
      goto LABEL_17;
    }

    sub_1BBAAE1FC(v55, v56, v57);
LABEL_28:
    sub_1BBA8BCC4(v29, &qword_1EBC7BE28);
    v38 = 0;
    return v38 & 1;
  }

  sub_1BBA966C4(v29, v23, type metadata accessor for IntelligenceElement.StorageValue);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_28;
  }

  v45 = *v23 ^ *v32;
  sub_1BBA9C144(v29, type metadata accessor for IntelligenceElement.StorageValue);
  v38 = v45 ^ 1;
  return v38 & 1;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v12 = v7;
    v13 = v3;
    sub_1BBA8BD24(v3);
    sub_1BBA8BD24(v7);
    v11 = static IntelligenceElement.Content.== infix(_:_:)(&v13, &v12);
    sub_1BBA8ABF8(v12);
    sub_1BBA8ABF8(v13);
    if (v11 & 1) != 0 && (sub_1BBAFF5D8(v2, v6))
    {
      if (sub_1BBA9A01C(v4, v8))
      {
        return v5 ^ v9 ^ 1u;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BBAE5820(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBAE582C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBAE5840(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1BBAE584C(a1, a2, a3);
  }
}

uint64_t sub_1BBAE584C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BBA885E8(result, a2);
  }

  return result;
}

uint64_t sub_1BBAE588C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1BBAE5898(a1, a2, a3);
  }
}

uint64_t sub_1BBAE5898(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BBAE58D8(result, a2);
  }

  return result;
}

uint64_t sub_1BBAE58D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BBAE592C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_1BBAE5898(result, a2, a3);
  }

  return result;
}

uint64_t sub_1BBAE593C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BBAE58D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1BBAE5984(uint64_t a1, __int128 *a2, void (*a3)(__int128 *), uint64_t a4)
{
  v7 = *(a1 + 176);
  v8 = *(a1 + 144);
  v104 = *(a1 + 160);
  v105 = v7;
  v9 = *(a1 + 176);
  *v106 = *(a1 + 192);
  *&v106[10] = *(a1 + 202);
  v10 = *(a1 + 112);
  v11 = *(a1 + 80);
  v100 = *(a1 + 96);
  v101 = v10;
  v12 = *(a1 + 112);
  v13 = *(a1 + 144);
  v102 = *(a1 + 128);
  v103 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v96 = *(a1 + 32);
  v97 = v14;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v98 = *(a1 + 64);
  v99 = v17;
  v18 = *(a1 + 16);
  v95[0] = *a1;
  v95[1] = v18;
  v19 = a2[1];
  v91 = *a2;
  v92 = v19;
  v93[0] = a2[2];
  *(v93 + 9) = *(a2 + 41);
  *&v90[16] = v104;
  *&v90[32] = v9;
  *&v90[48] = *(a1 + 192);
  *&v90[58] = *(a1 + 202);
  v88 = v100;
  *v89 = v12;
  *&v89[16] = v102;
  *v90 = v8;
  *&v86[32] = v96;
  *&v86[48] = v16;
  *&v86[64] = v98;
  v87 = v11;
  v55[2] = a3;
  v55[3] = a4;
  *v86 = v95[0];
  *&v86[16] = v15;
  v20 = (*&v93[0] >> 59) & 0x1E | (LODWORD(v93[0]) >> 2) & 1;
  v94 = *&v93[0];
  if (v20 == 4)
  {
    swift_beginAccess();
    v36 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v37 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v38 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    *v59 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    *&v59[16] = v38;
    v57 = v36;
    v58 = v37;
    *&v90[56] = v38;
    v39 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    *&v90[8] = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    *&v90[24] = v39;
    *&v90[40] = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v40 = *(a1 + 200);
    v62 = *(a1 + 184);
    v63 = v40;
    v41 = *(a1 + 168);
    v60 = *(a1 + 152);
    v61 = v41;
    sub_1BBAA5104(v95, &v73);
    sub_1BBACBF34(&v57, &v73);
    v25 = sub_1BBA8BCC4(&v60, &qword_1EBC7BBE0);
    if ((v106[25] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v21 = *&v93[0] & 0xFFFFFFFFFFFFFFBLL;
      v22 = a2[1];
      *&v86[8] = *a2;
      *&v86[24] = v22;
      *&v86[40] = a2[2];
      *&v86[49] = *(a2 + 41);
      v23 = *(a1 + 24);
      v24 = *(a1 + 56);
      v62 = *(a1 + 40);
      v63 = v24;
      *&v64 = *(a1 + 72);
      v60 = *(a1 + 8);
      v61 = v23;
      sub_1BBAA5104(v95, &v73);
      sub_1BBAAE914(&v94, &v73);
      sub_1BBA9B788(&v91, &v73);
      v25 = sub_1BBA8BCC4(&v60, &qword_1EBC7BBD0);
      *&v86[72] = v21;
      if ((v106[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = sub_1BBAA5104(v95, &v73);
      if ((v106[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v42 = 1;
    goto LABEL_10;
  }

  v26 = *&v93[0] & 0xFFFFFFFFFFFFFFBLL;
  v27 = a2[1];
  v87 = *a2;
  v88 = v27;
  *v89 = a2[2];
  *&v89[9] = *(a2 + 41);
  v28 = *(a1 + 128);
  v62 = *(a1 + 112);
  v63 = v28;
  *&v64 = *(a1 + 144);
  v29 = *(a1 + 96);
  v60 = *(a1 + 80);
  v61 = v29;
  sub_1BBAA5104(v95, &v73);
  sub_1BBAAE914(&v94, &v73);
  sub_1BBA9B788(&v91, &v73);
  sub_1BBA8BCC4(&v60, &qword_1EBC7BBD8);
  *v90 = v26;
  v30 = (v26 + *(*v26 + 88));
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[3];
  *v59 = v30[2];
  *&v59[16] = v33;
  v57 = v31;
  v58 = v32;
  v34 = *(a1 + 168);
  v73 = *(a1 + 152);
  v74 = v34;
  v35 = *(a1 + 200);
  v75 = *(a1 + 184);
  v76 = v35;
  sub_1BBA8BC5C(&v57, v56, &qword_1EBC7BBE0);
  v25 = sub_1BBA8BCC4(&v73, &qword_1EBC7BBE0);
  *&v90[8] = v57;
  *&v90[24] = v58;
  *&v90[40] = *v59;
  *&v90[56] = *&v59[16];
  if (v106[25])
  {
    goto LABEL_9;
  }

LABEL_14:
  v42 = 0;
  v51 = (v94 >> 59) & 0x1E | (v94 >> 2) & 1;
  if (v51 > 15)
  {
    if (v51 == 16)
    {
      v54 = v94 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v54 + 24);
    }

    else if (v51 == 17)
    {
      v53 = v94 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v53 + 32);
    }
  }

  else if (v51 == 5)
  {
    v42 = v94;
  }

  else if (v51 == 13)
  {
    v52 = (v94 & 0xFFFFFFFFFFFFFFBLL) + *(*(v94 & 0xFFFFFFFFFFFFFFBLL) + 88);
    swift_beginAccess();
    v25 = _s14CollectionItemV7StorageVMa();
    v42 = *(v52 + *(v25 + 24));
  }

LABEL_10:
  v90[73] = v42 & 1;
  v43 = MEMORY[0x1BFB16D20](v25);
  v83 = *&v90[16];
  v84 = *&v90[32];
  v85[0] = *&v90[48];
  *(v85 + 10) = *&v90[58];
  v79 = v88;
  v80 = *v89;
  v81 = *&v89[16];
  v82 = *v90;
  v75 = *&v86[32];
  v76 = *&v86[48];
  v77 = *&v86[64];
  v78 = v87;
  v73 = *v86;
  v74 = *&v86[16];
  v44 = *v86;
  v57 = v91;
  v58 = v92;
  *v59 = v93[0];
  *&v59[9] = *(v93 + 9);
  sub_1BBAA5104(&v73, &v60);
  a3(&v57);
  sub_1BBAA53A8(&v73);
  objc_autoreleasePoolPop(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
  v45 = swift_allocObject();
  v46 = v91;
  v47 = v92;
  v45[1] = xmmword_1BBB85CE0;
  v45[2] = v46;
  v48 = v93[0];
  v45[3] = v47;
  v45[4] = v48;
  *(v45 + 73) = *(v93 + 9);
  *&v57 = v45;
  sub_1BBA9B788(&v91, &v60);
  sub_1BBA9AC3C(v44);
  *v86 = v57;
  v49 = *(&v93[0] + 1);
  *&v57 = v94;
  sub_1BBAAE914(&v94, &v60);
  sub_1BBA9B788(&v91, &v60);
  sub_1BBB50CF4(&v57, &v91, v86, sub_1BBAE8310, v55);
  sub_1BBA9E174(&v91);
  sub_1BBA8ABF8(v57);
  if (((v94 >> 59) & 0x1E | (v94 >> 2) & 1) == 0x12)
  {
    v90[72] = 4;
  }

  sub_1BBAE7260(v49, v86, a3, a4, sub_1BBAE5984);
  v70 = *&v90[16];
  v71 = *&v90[32];
  v72[0] = *&v90[48];
  *(v72 + 10) = *&v90[58];
  v66 = v88;
  v67 = *v89;
  v68 = *&v89[16];
  v69 = *v90;
  v62 = *&v86[32];
  v63 = *&v86[48];
  v64 = *&v86[64];
  v65 = v87;
  v60 = *v86;
  v61 = *&v86[16];
  return sub_1BBAA53A8(&v60);
}

uint64_t sub_1BBAE5FD0(uint64_t a1, __int128 *a2, void (*a3)(__int128 *, uint64_t), uint64_t a4)
{
  v7 = *(a1 + 176);
  v8 = *(a1 + 144);
  v104 = *(a1 + 160);
  v105 = v7;
  v9 = *(a1 + 176);
  *v106 = *(a1 + 192);
  *&v106[10] = *(a1 + 202);
  v10 = *(a1 + 112);
  v11 = *(a1 + 80);
  v100 = *(a1 + 96);
  v101 = v10;
  v12 = *(a1 + 112);
  v13 = *(a1 + 144);
  v102 = *(a1 + 128);
  v103 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v96 = *(a1 + 32);
  v97 = v14;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v98 = *(a1 + 64);
  v99 = v17;
  v18 = *(a1 + 16);
  v95[0] = *a1;
  v95[1] = v18;
  v19 = a2[1];
  v91 = *a2;
  v92 = v19;
  v93[0] = a2[2];
  *(v93 + 9) = *(a2 + 41);
  *&v90[16] = v104;
  *&v90[32] = v9;
  *&v90[48] = *(a1 + 192);
  *&v90[58] = *(a1 + 202);
  v88 = v100;
  *v89 = v12;
  *&v89[16] = v102;
  *v90 = v8;
  *&v86[32] = v96;
  *&v86[48] = v16;
  *&v86[64] = v98;
  v87 = v11;
  v55[2] = a3;
  v55[3] = a4;
  *v86 = v95[0];
  *&v86[16] = v15;
  v20 = (*&v93[0] >> 59) & 0x1E | (LODWORD(v93[0]) >> 2) & 1;
  v94 = *&v93[0];
  if (v20 == 4)
  {
    swift_beginAccess();
    v36 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v37 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v38 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    *v59 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    *&v59[16] = v38;
    v57 = v36;
    v58 = v37;
    *&v90[56] = v38;
    v39 = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    *&v90[8] = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    *&v90[24] = v39;
    *&v90[40] = *((*&v93[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v40 = *(a1 + 200);
    v62 = *(a1 + 184);
    v63 = v40;
    v41 = *(a1 + 168);
    v60 = *(a1 + 152);
    v61 = v41;
    sub_1BBAA5104(v95, &v73);
    sub_1BBACBF34(&v57, &v73);
    v25 = sub_1BBA8BCC4(&v60, &qword_1EBC7BBE0);
    if ((v106[25] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v21 = *&v93[0] & 0xFFFFFFFFFFFFFFBLL;
      v22 = a2[1];
      *&v86[8] = *a2;
      *&v86[24] = v22;
      *&v86[40] = a2[2];
      *&v86[49] = *(a2 + 41);
      v23 = *(a1 + 24);
      v24 = *(a1 + 56);
      v62 = *(a1 + 40);
      v63 = v24;
      *&v64 = *(a1 + 72);
      v60 = *(a1 + 8);
      v61 = v23;
      sub_1BBAA5104(v95, &v73);
      sub_1BBAAE914(&v94, &v73);
      sub_1BBA9B788(&v91, &v73);
      v25 = sub_1BBA8BCC4(&v60, &qword_1EBC7BBD0);
      *&v86[72] = v21;
      if ((v106[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = sub_1BBAA5104(v95, &v73);
      if ((v106[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v42 = 1;
    goto LABEL_10;
  }

  v26 = *&v93[0] & 0xFFFFFFFFFFFFFFBLL;
  v27 = a2[1];
  v87 = *a2;
  v88 = v27;
  *v89 = a2[2];
  *&v89[9] = *(a2 + 41);
  v28 = *(a1 + 128);
  v62 = *(a1 + 112);
  v63 = v28;
  *&v64 = *(a1 + 144);
  v29 = *(a1 + 96);
  v60 = *(a1 + 80);
  v61 = v29;
  sub_1BBAA5104(v95, &v73);
  sub_1BBAAE914(&v94, &v73);
  sub_1BBA9B788(&v91, &v73);
  sub_1BBA8BCC4(&v60, &qword_1EBC7BBD8);
  *v90 = v26;
  v30 = (v26 + *(*v26 + 88));
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[3];
  *v59 = v30[2];
  *&v59[16] = v33;
  v57 = v31;
  v58 = v32;
  v34 = *(a1 + 168);
  v73 = *(a1 + 152);
  v74 = v34;
  v35 = *(a1 + 200);
  v75 = *(a1 + 184);
  v76 = v35;
  sub_1BBA8BC5C(&v57, v56, &qword_1EBC7BBE0);
  v25 = sub_1BBA8BCC4(&v73, &qword_1EBC7BBE0);
  *&v90[8] = v57;
  *&v90[24] = v58;
  *&v90[40] = *v59;
  *&v90[56] = *&v59[16];
  if (v106[25])
  {
    goto LABEL_9;
  }

LABEL_14:
  v42 = 0;
  v51 = (v94 >> 59) & 0x1E | (v94 >> 2) & 1;
  if (v51 > 15)
  {
    if (v51 == 16)
    {
      v54 = v94 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v54 + 24);
    }

    else if (v51 == 17)
    {
      v53 = v94 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v53 + 32);
    }
  }

  else if (v51 == 5)
  {
    v42 = v94;
  }

  else if (v51 == 13)
  {
    v52 = (v94 & 0xFFFFFFFFFFFFFFBLL) + *(*(v94 & 0xFFFFFFFFFFFFFFBLL) + 88);
    swift_beginAccess();
    v25 = _s14CollectionItemV7StorageVMa();
    v42 = *(v52 + *(v25 + 24));
  }

LABEL_10:
  v90[73] = v42 & 1;
  v43 = MEMORY[0x1BFB16D20](v25);
  v83 = *&v90[16];
  v84 = *&v90[32];
  v85[0] = *&v90[48];
  *(v85 + 10) = *&v90[58];
  v79 = v88;
  v80 = *v89;
  v81 = *&v89[16];
  v82 = *v90;
  v75 = *&v86[32];
  v76 = *&v86[48];
  v77 = *&v86[64];
  v78 = v87;
  v73 = *v86;
  v74 = *&v86[16];
  v44 = *v86;
  v57 = v91;
  v58 = v92;
  *v59 = v93[0];
  *&v59[9] = *(v93 + 9);
  sub_1BBAA5104(&v73, &v60);
  a3(&v57, v44);
  sub_1BBAA53A8(&v73);
  objc_autoreleasePoolPop(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
  v45 = swift_allocObject();
  v46 = v91;
  v47 = v92;
  v45[1] = xmmword_1BBB85CE0;
  v45[2] = v46;
  v48 = v93[0];
  v45[3] = v47;
  v45[4] = v48;
  *(v45 + 73) = *(v93 + 9);
  *&v57 = v45;
  sub_1BBA9B788(&v91, &v60);
  sub_1BBA9AC3C(v44);
  *v86 = v57;
  v49 = *(&v93[0] + 1);
  *&v57 = v94;
  sub_1BBAAE914(&v94, &v60);
  sub_1BBA9B788(&v91, &v60);
  sub_1BBB50CF4(&v57, &v91, v86, sub_1BBAE82B4, v55);
  sub_1BBA9E174(&v91);
  sub_1BBA8ABF8(v57);
  if (((v94 >> 59) & 0x1E | (v94 >> 2) & 1) == 0x12)
  {
    v90[72] = 4;
  }

  sub_1BBAE7260(v49, v86, a3, a4, sub_1BBAE5FD0);
  v70 = *&v90[16];
  v71 = *&v90[32];
  v72[0] = *&v90[48];
  *(v72 + 10) = *&v90[58];
  v66 = v88;
  v67 = *v89;
  v68 = *&v89[16];
  v69 = *v90;
  v62 = *&v86[32];
  v63 = *&v86[48];
  v64 = *&v86[64];
  v65 = v87;
  v60 = *v86;
  v61 = *&v86[16];
  return sub_1BBAA53A8(&v60);
}

uint64_t sub_1BBAE6620(uint64_t a1, __int128 *a2, void (*a3)(_OWORD *, uint64_t, __int128 *), uint64_t a4)
{
  v7 = *(a1 + 176);
  v8 = *(a1 + 144);
  v106 = *(a1 + 160);
  v107 = v7;
  v9 = *(a1 + 176);
  *v108 = *(a1 + 192);
  *&v108[10] = *(a1 + 202);
  v10 = *(a1 + 112);
  v11 = *(a1 + 80);
  v102 = *(a1 + 96);
  v103 = v10;
  v12 = *(a1 + 112);
  v13 = *(a1 + 144);
  v104 = *(a1 + 128);
  v105 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v98 = *(a1 + 32);
  v99 = v14;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v100 = *(a1 + 64);
  v101 = v17;
  v18 = *(a1 + 16);
  v97[0] = *a1;
  v97[1] = v18;
  v19 = a2[1];
  v93 = *a2;
  v94 = v19;
  v95[0] = a2[2];
  *(v95 + 9) = *(a2 + 41);
  *&v92[16] = v106;
  *&v92[32] = v9;
  *&v92[48] = *(a1 + 192);
  *&v92[58] = *(a1 + 202);
  v90 = v102;
  *v91 = v12;
  *&v91[16] = v104;
  *v92 = v8;
  *&v88[32] = v98;
  *&v88[48] = v16;
  *&v88[64] = v100;
  v89 = v11;
  v55[2] = a3;
  v55[3] = a4;
  *v88 = v97[0];
  *&v88[16] = v15;
  v20 = (*&v95[0] >> 59) & 0x1E | (LODWORD(v95[0]) >> 2) & 1;
  v96 = *&v95[0];
  if (v20 == 4)
  {
    swift_beginAccess();
    v36 = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v37 = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v38 = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v78 = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v79 = v38;
    v76 = v36;
    v77 = v37;
    *&v92[56] = v38;
    v39 = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    *&v92[8] = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    *&v92[24] = v39;
    *&v92[40] = *((*&v95[0] & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v40 = *(a1 + 200);
    v58 = *(a1 + 184);
    v59 = v40;
    v41 = *(a1 + 168);
    v56 = *(a1 + 152);
    v57 = v41;
    sub_1BBAA5104(v97, &v81);
    sub_1BBACBF34(&v76, &v81);
    v25 = sub_1BBA8BCC4(&v56, &qword_1EBC7BBE0);
    if ((v108[25] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v21 = *&v95[0] & 0xFFFFFFFFFFFFFFBLL;
      v22 = a2[1];
      *&v88[8] = *a2;
      *&v88[24] = v22;
      *&v88[40] = a2[2];
      *&v88[49] = *(a2 + 41);
      v23 = *(a1 + 24);
      v24 = *(a1 + 56);
      v58 = *(a1 + 40);
      v59 = v24;
      *&v60 = *(a1 + 72);
      v56 = *(a1 + 8);
      v57 = v23;
      sub_1BBAA5104(v97, &v81);
      sub_1BBAAE914(&v96, &v81);
      sub_1BBA9B788(&v93, &v81);
      v25 = sub_1BBA8BCC4(&v56, &qword_1EBC7BBD0);
      *&v88[72] = v21;
      if ((v108[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = sub_1BBAA5104(v97, &v81);
      if ((v108[25] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    v42 = 1;
    goto LABEL_10;
  }

  v26 = *&v95[0] & 0xFFFFFFFFFFFFFFBLL;
  v27 = a2[1];
  v89 = *a2;
  v90 = v27;
  *v91 = a2[2];
  *&v91[9] = *(a2 + 41);
  v28 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v28;
  *&v60 = *(a1 + 144);
  v29 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v29;
  sub_1BBAA5104(v97, &v81);
  sub_1BBAAE914(&v96, &v81);
  sub_1BBA9B788(&v93, &v81);
  sub_1BBA8BCC4(&v56, &qword_1EBC7BBD8);
  *v92 = v26;
  v30 = (v26 + *(*v26 + 88));
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[3];
  v78 = v30[2];
  v79 = v33;
  v76 = v31;
  v77 = v32;
  v34 = *(a1 + 168);
  v81 = *(a1 + 152);
  v82 = v34;
  v35 = *(a1 + 200);
  v83 = *(a1 + 184);
  v84 = v35;
  sub_1BBA8BC5C(&v76, &v69, &qword_1EBC7BBE0);
  v25 = sub_1BBA8BCC4(&v81, &qword_1EBC7BBE0);
  *&v92[8] = v76;
  *&v92[24] = v77;
  *&v92[40] = v78;
  *&v92[56] = v79;
  if (v108[25])
  {
    goto LABEL_9;
  }

LABEL_14:
  v42 = 0;
  v51 = (v96 >> 59) & 0x1E | (v96 >> 2) & 1;
  if (v51 > 15)
  {
    if (v51 == 16)
    {
      v54 = v96 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v54 + 24);
    }

    else if (v51 == 17)
    {
      v53 = v96 & 0xFFFFFFFFFFFFFFBLL;
      v25 = swift_beginAccess();
      v42 = *(v53 + 32);
    }
  }

  else if (v51 == 5)
  {
    v42 = v96;
  }

  else if (v51 == 13)
  {
    v52 = (v96 & 0xFFFFFFFFFFFFFFBLL) + *(*(v96 & 0xFFFFFFFFFFFFFFBLL) + 88);
    swift_beginAccess();
    v25 = _s14CollectionItemV7StorageVMa();
    v42 = *(v52 + *(v25 + 24));
  }

LABEL_10:
  v92[73] = v42 & 1;
  v43 = MEMORY[0x1BFB16D20](v25);
  v86[5] = *&v92[16];
  v86[6] = *&v92[32];
  v87[0] = *&v92[48];
  *(v87 + 10) = *&v92[58];
  v86[1] = v90;
  v86[2] = *v91;
  v86[3] = *&v91[16];
  v86[4] = *v92;
  v83 = *&v88[32];
  v84 = *&v88[48];
  v85 = *&v88[64];
  v86[0] = v89;
  v81 = *v88;
  v82 = *&v88[16];
  v74[0] = v93;
  v74[1] = v94;
  v75[0] = v95[0];
  *(v75 + 9) = *(v95 + 9);
  v71 = *v91;
  v72 = *&v91[16];
  v44 = *v88;
  v73 = *v92;
  v69 = v89;
  v70 = v90;
  sub_1BBAA5104(&v81, &v56);
  sub_1BBA8BC5C(v86, &v56, &qword_1EBC7BBD8);
  a3(v74, v44, &v69);
  v78 = v71;
  v79 = v72;
  v80 = v73;
  v76 = v69;
  v77 = v70;
  sub_1BBA8BCC4(&v76, &qword_1EBC7BBD8);
  sub_1BBAA53A8(&v81);
  objc_autoreleasePoolPop(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
  v45 = swift_allocObject();
  v46 = v93;
  v47 = v94;
  v45[1] = xmmword_1BBB85CE0;
  v45[2] = v46;
  v48 = v95[0];
  v45[3] = v47;
  v45[4] = v48;
  *(v45 + 73) = *(v95 + 9);
  *&v69 = v45;
  sub_1BBA9B788(&v93, &v56);
  sub_1BBA9AC3C(v44);
  *v88 = v69;
  v49 = *(&v95[0] + 1);
  *&v69 = v96;
  sub_1BBAAE914(&v96, &v56);
  sub_1BBA9B788(&v93, &v56);
  sub_1BBB50CF4(&v69, &v93, v88, sub_1BBAE82AC, v55);
  sub_1BBA9E174(&v93);
  sub_1BBA8ABF8(v69);
  if (((v96 >> 59) & 0x1E | (v96 >> 2) & 1) == 0x12)
  {
    v92[72] = 4;
  }

  sub_1BBAE7260(v49, v88, a3, a4, sub_1BBAE6620);
  v66 = *&v92[16];
  v67 = *&v92[32];
  v68[0] = *&v92[48];
  *(v68 + 10) = *&v92[58];
  v62 = v90;
  v63 = *v91;
  v64 = *&v91[16];
  v65 = *v92;
  v58 = *&v88[32];
  v59 = *&v88[48];
  v60 = *&v88[64];
  v61 = v89;
  v56 = *v88;
  v57 = *&v88[16];
  return sub_1BBAA53A8(&v56);
}

unint64_t sub_1BBAE6CF0()
{
  result = qword_1EBC7B4C0;
  if (!qword_1EBC7B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4C0);
  }

  return result;
}

unint64_t sub_1BBAE6D44()
{
  result = qword_1EBC7AD90;
  if (!qword_1EBC7AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD90);
  }

  return result;
}

unint64_t sub_1BBAE6D98()
{
  result = qword_1EBC7AE08;
  if (!qword_1EBC7AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE08);
  }

  return result;
}

uint64_t keypath_set_18Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1BBAE6E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BBAE6EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BBAE6F68()
{
  sub_1BBB83588();
  if (v0 <= 0x3F)
  {
    sub_1BBAE70AC(319, &qword_1ED6BE780, &qword_1EBC7B900);
    if (v1 <= 0x3F)
    {
      sub_1BBAE70AC(319, &qword_1ED6BE778, &qword_1EBC7B590);
      if (v2 <= 0x3F)
      {
        sub_1BBAE70AC(319, &qword_1ED6BE788, &qword_1EBC7BC08);
        if (v3 <= 0x3F)
        {
          sub_1BBAE70AC(319, &qword_1ED6BE790, &qword_1EBC7BC10);
          if (v4 <= 0x3F)
          {
            sub_1BBAE70AC(319, qword_1ED6BE798, &qword_1EBC7B830);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BBAE70AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for IntelligenceElement.LoadableValue();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BBAE7104()
{
  result = qword_1EBC7BC18;
  if (!qword_1EBC7BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BC18);
  }

  return result;
}

unint64_t sub_1BBAE715C()
{
  result = qword_1ED6BE380;
  if (!qword_1ED6BE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE380);
  }

  return result;
}

unint64_t sub_1BBAE71B4()
{
  result = qword_1ED6BE388;
  if (!qword_1ED6BE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE388);
  }

  return result;
}

unint64_t sub_1BBAE720C()
{
  result = qword_1ED6BE390;
  if (!qword_1ED6BE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE390);
  }

  return result;
}

uint64_t sub_1BBAE7260(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, _OWORD *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    v10 = (result + 32);
    do
    {
      v11 = v10[1];
      v41[0] = *v10;
      v41[1] = v11;
      v13 = *v10;
      v12 = v10[1];
      v42[0] = v10[2];
      *(v42 + 9) = *(v10 + 41);
      v39[0] = v13;
      v39[1] = v12;
      v40[0] = v10[2];
      *(v40 + 9) = *(v10 + 41);
      v14 = a2[1];
      v15 = v14;
      v43[0] = *a2;
      v43[1] = v14;
      v16 = a2[3];
      v17 = a2[5];
      v46 = a2[4];
      v47 = v17;
      v18 = a2[3];
      v44 = a2[2];
      v45 = v18;
      v19 = a2[7];
      v20 = a2[9];
      v50 = a2[8];
      v51 = v20;
      v21 = a2[7];
      v22 = a2[5];
      v48 = a2[6];
      v49 = v21;
      *(v54 + 10) = *(a2 + 202);
      v23 = a2[11];
      v54[0] = a2[12];
      v24 = a2[11];
      v25 = a2[9];
      v52 = a2[10];
      v53 = v24;
      v36 = v52;
      v37 = v23;
      v38[0] = a2[12];
      *(v38 + 10) = *(a2 + 202);
      v32 = v48;
      v33 = v19;
      v34 = v50;
      v35 = v25;
      v28 = v44;
      v29 = v16;
      v30 = v46;
      v31 = v22;
      v26 = v43[0];
      v27 = v15;
      sub_1BBA9B788(v41, v55);
      sub_1BBAA5104(v43, v55);
      a5(&v26, v39, a3, a4);
      v55[10] = v36;
      v55[11] = v37;
      v56[0] = v38[0];
      *(v56 + 10) = *(v38 + 10);
      v55[6] = v32;
      v55[7] = v33;
      v55[8] = v34;
      v55[9] = v35;
      v55[2] = v28;
      v55[3] = v29;
      v55[4] = v30;
      v55[5] = v31;
      v55[0] = v26;
      v55[1] = v27;
      sub_1BBAA53A8(v55);
      result = sub_1BBA9E174(v41);
      v10 += 4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1BBAE7414()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BBAE7460()
{
  result = qword_1EBC7BC88;
  if (!qword_1EBC7BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BC88);
  }

  return result;
}

unint64_t sub_1BBAE74B4()
{
  result = qword_1EBC7BC90;
  if (!qword_1EBC7BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BC90);
  }

  return result;
}

unint64_t sub_1BBAE7508()
{
  result = qword_1EBC7AFD8;
  if (!qword_1EBC7AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFD8);
  }

  return result;
}

unint64_t sub_1BBAE755C()
{
  result = qword_1EBC7BC98;
  if (!qword_1EBC7BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BC98);
  }

  return result;
}

unint64_t sub_1BBAE75B0()
{
  result = qword_1EBC7BCA0;
  if (!qword_1EBC7BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCA0);
  }

  return result;
}

unint64_t sub_1BBAE7604()
{
  result = qword_1EBC7BCA8;
  if (!qword_1EBC7BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCA8);
  }

  return result;
}

unint64_t sub_1BBAE7658()
{
  result = qword_1EBC7BCB0;
  if (!qword_1EBC7BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCB0);
  }

  return result;
}

unint64_t sub_1BBAE76AC()
{
  result = qword_1EBC7BCB8;
  if (!qword_1EBC7BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCB8);
  }

  return result;
}

unint64_t sub_1BBAE7700()
{
  result = qword_1EBC7BCC0;
  if (!qword_1EBC7BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCC0);
  }

  return result;
}

unint64_t sub_1BBAE7754()
{
  result = qword_1EBC7BCC8;
  if (!qword_1EBC7BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BCC8);
  }

  return result;
}

unint64_t sub_1BBAE77A8()
{
  result = qword_1EBC7BD10;
  if (!qword_1EBC7BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD10);
  }

  return result;
}

uint64_t sub_1BBAE77FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B830);
    sub_1BBA8AD64(a2, type metadata accessor for IntelligenceUserActivity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAE7898()
{
  result = qword_1EBC7AFD0;
  if (!qword_1EBC7AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFD0);
  }

  return result;
}

uint64_t sub_1BBAE78EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD18);
    sub_1BBAE7A18(&qword_1EBC7AEC0, sub_1BBAE79C4);
    sub_1BBAE7A18(&qword_1EBC7AEC8, sub_1BBAE7A90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAE79C4()
{
  result = qword_1EBC7AED0;
  if (!qword_1EBC7AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AED0);
  }

  return result;
}

uint64_t sub_1BBAE7A18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAE7A90()
{
  result = qword_1EBC7AED8;
  if (!qword_1EBC7AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AED8);
  }

  return result;
}

unint64_t sub_1BBAE7AE4()
{
  result = qword_1EBC7BD20;
  if (!qword_1EBC7BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD20);
  }

  return result;
}

unint64_t sub_1BBAE7B38()
{
  result = qword_1EBC7BD30;
  if (!qword_1EBC7BD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD28);
    sub_1BBAE7C0C(&qword_1EBC7BD38);
    sub_1BBAE7C0C(&qword_1EBC7BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD30);
  }

  return result;
}

uint64_t sub_1BBAE7C0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BC08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAE7C78()
{
  result = qword_1EBC7BD48;
  if (!qword_1EBC7BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD48);
  }

  return result;
}

unint64_t sub_1BBAE7CCC()
{
  result = qword_1EBC7BD58;
  if (!qword_1EBC7BD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD50);
    sub_1BBAAE144(&qword_1EBC7AB90);
    sub_1BBAAE144(&qword_1ED6BDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD58);
  }

  return result;
}

unint64_t sub_1BBAE7DA0()
{
  result = qword_1EBC7B488;
  if (!qword_1EBC7B488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD60);
    sub_1BBAE7E74(&qword_1ED6BDA80);
    sub_1BBAE7E74(&qword_1ED6BDA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B488);
  }

  return result;
}

uint64_t sub_1BBAE7E74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B900);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBAE7EE0()
{
  result = qword_1EBC7BD68;
  if (!qword_1EBC7BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BD68);
  }

  return result;
}

unint64_t sub_1BBAE7F34()
{
  result = qword_1EBC7BE18;
  if (!qword_1EBC7BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD28);
    sub_1BBAE7C0C(&qword_1EBC7BD38);
    sub_1BBAE7C0C(&qword_1EBC7BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE18);
  }

  return result;
}

unint64_t sub_1BBAE8008()
{
  result = qword_1EBC7BE20;
  if (!qword_1EBC7BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD50);
    sub_1BBAAE144(&qword_1EBC7AB90);
    sub_1BBAAE144(&qword_1ED6BDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE20);
  }

  return result;
}

unint64_t sub_1BBAE80DC()
{
  result = qword_1EBC7AD58;
  if (!qword_1EBC7AD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BD60);
    sub_1BBAE7E74(&qword_1ED6BDA80);
    sub_1BBAE7E74(&qword_1ED6BDA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD58);
  }

  return result;
}

unint64_t sub_1BBAE8204()
{
  result = qword_1EBC7BE40;
  if (!qword_1EBC7BE40)
  {
    sub_1BBB83548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE40);
  }

  return result;
}

unint64_t sub_1BBAE8250()
{
  result = qword_1EBC7BE48;
  if (!qword_1EBC7BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE48);
  }

  return result;
}

uint64_t sub_1BBAE82B4(_OWORD *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return v3(v6, *a2);
}

uint64_t sub_1BBAE8310(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  return v2(v5);
}

uint64_t sub_1BBAE835C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1BBAE84BC()
{
  result = qword_1EBC7BE70;
  if (!qword_1EBC7BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE70);
  }

  return result;
}

unint64_t sub_1BBAE8514()
{
  result = qword_1EBC7BE78;
  if (!qword_1EBC7BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE78);
  }

  return result;
}

unint64_t sub_1BBAE856C()
{
  result = qword_1EBC7BE80;
  if (!qword_1EBC7BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE80);
  }

  return result;
}

unint64_t sub_1BBAE85C4()
{
  result = qword_1EBC7BE88;
  if (!qword_1EBC7BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE88);
  }

  return result;
}

unint64_t sub_1BBAE861C()
{
  result = qword_1EBC7BE90;
  if (!qword_1EBC7BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE90);
  }

  return result;
}

unint64_t sub_1BBAE8674()
{
  result = qword_1EBC7BE98;
  if (!qword_1EBC7BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE98);
  }

  return result;
}

unint64_t sub_1BBAE86CC()
{
  result = qword_1EBC7BEA0;
  if (!qword_1EBC7BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BEA0);
  }

  return result;
}

unint64_t sub_1BBAE8724()
{
  result = qword_1EBC7BEA8;
  if (!qword_1EBC7BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BEA8);
  }

  return result;
}

unint64_t sub_1BBAE877C()
{
  result = qword_1EBC7BEB0;
  if (!qword_1EBC7BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BEB0);
  }

  return result;
}

unint64_t sub_1BBAE87D4()
{
  result = qword_1EBC7B498;
  if (!qword_1EBC7B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B498);
  }

  return result;
}

unint64_t sub_1BBAE882C()
{
  result = qword_1EBC7B4A0;
  if (!qword_1EBC7B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4A0);
  }

  return result;
}

unint64_t sub_1BBAE8884()
{
  result = qword_1EBC7B4B0;
  if (!qword_1EBC7B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4B0);
  }

  return result;
}

unint64_t sub_1BBAE88DC()
{
  result = qword_1EBC7B4B8;
  if (!qword_1EBC7B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4B8);
  }

  return result;
}

unint64_t sub_1BBAE8934()
{
  result = qword_1ED6BDBC0;
  if (!qword_1ED6BDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBC0);
  }

  return result;
}

unint64_t sub_1BBAE898C()
{
  result = qword_1ED6BDBB8;
  if (!qword_1ED6BDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBB8);
  }

  return result;
}

unint64_t sub_1BBAE89E4()
{
  result = qword_1ED6BDBC8;
  if (!qword_1ED6BDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBC8);
  }

  return result;
}

unint64_t sub_1BBAE8A3C()
{
  result = qword_1ED6BDBD0;
  if (!qword_1ED6BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBD0);
  }

  return result;
}

unint64_t sub_1BBAE8A94()
{
  result = qword_1ED6BDBA0;
  if (!qword_1ED6BDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBA0);
  }

  return result;
}

unint64_t sub_1BBAE8AEC()
{
  result = qword_1ED6BDBA8;
  if (!qword_1ED6BDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBA8);
  }

  return result;
}

unint64_t sub_1BBAE8B44()
{
  result = qword_1ED6BDB80;
  if (!qword_1ED6BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB80);
  }

  return result;
}

unint64_t sub_1BBAE8B9C()
{
  result = qword_1ED6BDB88;
  if (!qword_1ED6BDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB88);
  }

  return result;
}

unint64_t sub_1BBAE8BF4()
{
  result = qword_1ED6BDB90;
  if (!qword_1ED6BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB90);
  }

  return result;
}

unint64_t sub_1BBAE8C4C()
{
  result = qword_1ED6BDB98;
  if (!qword_1ED6BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB98);
  }

  return result;
}

unint64_t sub_1BBAE8CA4()
{
  result = qword_1ED6BDBD8;
  if (!qword_1ED6BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBD8);
  }

  return result;
}

unint64_t sub_1BBAE8CFC()
{
  result = qword_1ED6BDBE0;
  if (!qword_1ED6BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBE0);
  }

  return result;
}

unint64_t sub_1BBAE8D54()
{
  result = qword_1EBC7B4E8;
  if (!qword_1EBC7B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4E8);
  }

  return result;
}

unint64_t sub_1BBAE8DAC()
{
  result = qword_1EBC7B4F0;
  if (!qword_1EBC7B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4F0);
  }

  return result;
}

unint64_t sub_1BBAE8E04()
{
  result = qword_1EBC7B4D8;
  if (!qword_1EBC7B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4D8);
  }

  return result;
}

unint64_t sub_1BBAE8E5C()
{
  result = qword_1EBC7B4E0;
  if (!qword_1EBC7B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4E0);
  }

  return result;
}

unint64_t sub_1BBAE8EB4()
{
  result = qword_1EBC7B4C8;
  if (!qword_1EBC7B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4C8);
  }

  return result;
}

unint64_t sub_1BBAE8F0C()
{
  result = qword_1EBC7B4D0;
  if (!qword_1EBC7B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4D0);
  }

  return result;
}

unint64_t sub_1BBAE8F64()
{
  result = qword_1ED6BDC58;
  if (!qword_1ED6BDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC58);
  }

  return result;
}

unint64_t sub_1BBAE8FBC()
{
  result = qword_1ED6BDC60;
  if (!qword_1ED6BDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC60);
  }

  return result;
}

unint64_t sub_1BBAE9014()
{
  result = qword_1ED6BDC68;
  if (!qword_1ED6BDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC68);
  }

  return result;
}

unint64_t sub_1BBAE906C()
{
  result = qword_1ED6BDC70;
  if (!qword_1ED6BDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC70);
  }

  return result;
}

unint64_t sub_1BBAE90C4()
{
  result = qword_1ED6BDC00;
  if (!qword_1ED6BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC00);
  }

  return result;
}

unint64_t sub_1BBAE911C()
{
  result = qword_1ED6BDC08;
  if (!qword_1ED6BDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC08);
  }

  return result;
}

unint64_t sub_1BBAE9174()
{
  result = qword_1ED6BDC20;
  if (!qword_1ED6BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC20);
  }

  return result;
}

unint64_t sub_1BBAE91CC()
{
  result = qword_1ED6BDC28;
  if (!qword_1ED6BDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC28);
  }

  return result;
}

unint64_t sub_1BBAE9224()
{
  result = qword_1ED6BDC10;
  if (!qword_1ED6BDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC10);
  }

  return result;
}

unint64_t sub_1BBAE927C()
{
  result = qword_1ED6BDC18;
  if (!qword_1ED6BDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC18);
  }

  return result;
}

unint64_t sub_1BBAE92D4()
{
  result = qword_1ED6BDC48;
  if (!qword_1ED6BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC48);
  }

  return result;
}

unint64_t sub_1BBAE932C()
{
  result = qword_1ED6BDC50;
  if (!qword_1ED6BDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC50);
  }

  return result;
}

unint64_t sub_1BBAE9384()
{
  result = qword_1ED6BDBF8;
  if (!qword_1ED6BDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBF8);
  }

  return result;
}

unint64_t sub_1BBAE93DC()
{
  result = qword_1ED6BDBF0;
  if (!qword_1ED6BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBF0);
  }

  return result;
}

unint64_t sub_1BBAE9434()
{
  result = qword_1ED6BDC30;
  if (!qword_1ED6BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC30);
  }

  return result;
}

unint64_t sub_1BBAE948C()
{
  result = qword_1ED6BDC38;
  if (!qword_1ED6BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC38);
  }

  return result;
}

unint64_t sub_1BBAE94E4()
{
  result = qword_1ED6BDC78;
  if (!qword_1ED6BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC78);
  }

  return result;
}

unint64_t sub_1BBAE953C()
{
  result = qword_1ED6BDC80;
  if (!qword_1ED6BDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC80);
  }

  return result;
}

unint64_t sub_1BBAE9594()
{
  result = qword_1ED6BDC88;
  if (!qword_1ED6BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC88);
  }

  return result;
}

unint64_t sub_1BBAE95EC()
{
  result = qword_1ED6BDC90;
  if (!qword_1ED6BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC90);
  }

  return result;
}

uint64_t IntelligenceFile.Attributes.init(contentType:fileSize:creationDate:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = sub_1BBB83658();
  (*(*(v10 - 8) + 56))(a6, 1, 1, v10);
  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  v12 = v11[6];
  v13 = a6 + v11[5];
  v14 = sub_1BBB83498();
  v15 = *(*(v14 - 8) + 56);
  v15(a6 + v12, 1, 1, v14);
  v16 = v11[7];
  v15(a6 + v16, 1, 1, v14);
  sub_1BBAA6910(a1, a6, &qword_1EBC7B858);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  sub_1BBAA6910(a4, a6 + v12, &qword_1EBC7B860);
  return sub_1BBAA6910(a5, a6 + v16, &qword_1EBC7B860);
}

uint64_t IntelligenceFile.Attributes.resolved(using:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  if (sub_1BBB832C8())
  {
    v48 = v6;
    v54 = MEMORY[0x1E69E7CD0];
    sub_1BBA8BC5C(v2, v9, &qword_1EBC7B858);
    v10 = sub_1BBB83658();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
    sub_1BBA8BCC4(v9, &qword_1EBC7B858);
    if (v11 == 1)
    {
      sub_1BBAF6EE8(&v53, *MEMORY[0x1E695DAA0]);
    }

    v49 = a1;
    v12 = type metadata accessor for IntelligenceFile.Attributes(0);
    if (*(v2 + *(v12 + 20) + 8) == 1)
    {
      sub_1BBAF6EE8(&v53, *MEMORY[0x1E695DB50]);
    }

    v52 = v12;
    v13 = *(v12 + 24);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v51 = *(*(v14 - 8) + 64);
    MEMORY[0x1EEE9AC00](v14 - 8);
    sub_1BBA8BC5C(v2 + v13, &v47 - v15, &qword_1EBC7B860);
    v16 = sub_1BBB83498();
    v17 = *(*(v16 - 8) + 48);
    LODWORD(v13) = v17(&v47 - v15, 1, v16);
    v18 = sub_1BBA8BCC4(&v47 - v15, &qword_1EBC7B860);
    if (v13 == 1)
    {
      sub_1BBAF6EE8(&v53, *MEMORY[0x1E695DAA8]);
    }

    MEMORY[0x1EEE9AC00](v18);
    sub_1BBA8BC5C(v2 + v19, &v47 - v15, &qword_1EBC7B860);
    v20 = v17(&v47 - v15, 1, v16);
    sub_1BBA8BCC4(&v47 - v15, &qword_1EBC7B860);
    if (v20 == 1)
    {
      sub_1BBAF6EE8(&v53, *MEMORY[0x1E695DA98]);
    }

    v21 = v50;
    sub_1BBAF8DD8(v2, v50, type metadata accessor for IntelligenceFile.Attributes);
    v22 = v54;
    if (*(v54 + 16))
    {
      v23 = sub_1BBB831D8();
      v24 = *(v23 - 8);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEB8);
      MEMORY[0x1EEE9AC00](v27 - 8);
      v29 = &v47 - v28;
      sub_1BBB83308();
      v49 = &v47;
      (*(v24 + 56))(v29, 0, 1, v23);
      (*(v24 + 32))(v26, v29, v23);
      v31 = *MEMORY[0x1E695DAA0];

      v32 = sub_1BBAEB2FC(v31, v22);
      if (v32)
      {
        v33 = v48;
        sub_1BBB831A8();
        sub_1BBAA6910(v33, v21, &qword_1EBC7B858);
      }

      v34 = sub_1BBAEB2FC(*MEMORY[0x1E695DB50], v22);
      v35 = v52;
      if (v34)
      {
        v36 = sub_1BBB831C8();
        v37 = v21 + v35[5];
        *v37 = v36;
        *(v37 + 8) = v38 & 1;
      }

      v39 = sub_1BBAEB2FC(*MEMORY[0x1E695DAA8], v22);
      if (v39)
      {
        MEMORY[0x1EEE9AC00](v39);
        v41 = &v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1BBB83198();
        sub_1BBAA6910(v41, v21 + v35[6], &qword_1EBC7B860);
      }

      v42 = sub_1BBAEB2FC(*MEMORY[0x1E695DA98], v22);

      if (v42)
      {
        MEMORY[0x1EEE9AC00](v43);
        v45 = &v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1BBB831B8();
        (*(v24 + 8))(v26, v23);
        return sub_1BBAA6910(v45, v21 + v35[7], &qword_1EBC7B860);
      }

      else
      {
        return (*(v24 + 8))(v26, v23);
      }
    }

    else
    {
    }
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1BBB84028();

    v54 = 0xD000000000000017;
    v55 = 0x80000001BBB9AF00;
    v46 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v46);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t static IntelligenceFile.resolvedName(_:using:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    a1 = sub_1BBB83318();
  }

  return a1;
}

uint64_t IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a2;
  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v58 - v14;
  v15 = *a6;
  v67 = *(a6 + 16);
  v65 = v15;
  LODWORD(v63) = *(a6 + 32);
  v83 = sub_1BBB833F8();
  v16 = *(v83 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = a3;
  v19 = a3;
  v20 = a4;
  v71 = a5;
  static IntelligenceFile.generateTemporaryFileURL(name:contentType:)(v19, a4, a5, v58 - v18);
  v21 = a1;
  v22 = v72;
  v23 = v70;
  v24 = sub_1BBB83488();
  if (v23)
  {

    sub_1BBA885E8(v21, v22);
    sub_1BBAFA0FC(v71, type metadata accessor for IntelligenceFile.Attributes);
    (*(v16 + 8))(v58 - v18, v83);
    return v18;
  }

  v59 = v20;
  v60 = v21;
  v62 = v58;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = (v58 - v18);
  v70 = v16;
  v27 = *(v16 + 16);
  v61 = v58 - v18;
  v27(v58 - v18, v58 - v18, v83, v25);
  v28 = v71;
  sub_1BBAF8DD8(v71, v69, type metadata accessor for IntelligenceFile.Attributes);
  v18 = swift_allocObject();
  v29 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v30 = swift_allocObject();
  *(v30 + 48) = 0;
  *(v30 + 16) = xmmword_1BBB89870;
  *(v30 + 32) = xmmword_1BBB89870;
  *(v18 + v29) = v30;
  if (sub_1BBB832C8())
  {
    v58[1] = v29;
    v31 = v59;
    *(v18 + 16) = v66;
    *(v18 + 24) = v31;
    v32 = v64;
    IntelligenceFile.Attributes.resolved(using:)(v26, v64);
    sub_1BBAFB190(v32, v18 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    if (v63)
    {
      if (!(v67 | v65 | *(&v67 + 1)))
      {
        sub_1BBAEF4AC(0);
        v59 = 0;
        v68 = 0;
        *&v67 = 0;
        *&v65 = 0;
        LODWORD(v66) = 0;
        v63 = 0;
        v64 = 0xF000000000000000;
        v42 = v26;
        v43 = v83;
        v44 = v60;
        v45 = v61;
        v46 = v72;
        v41 = v69;
LABEL_12:
        sub_1BBA885E8(v44, v46);
        sub_1BBAFA0FC(v28, type metadata accessor for IntelligenceFile.Attributes);
        sub_1BBAFA0FC(v41, type metadata accessor for IntelligenceFile.Attributes);
        v47 = v70;
        (*(v70 + 8))(v45, v43);
        v48 = v18 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
        v50 = v48 + *(v49 + 48);
        v51 = *(v49 + 64);
        (*(v47 + 32))(v48, v42, v43);
        v53 = v63;
        v52 = v64;
        *v50 = v59;
        *(v50 + 8) = v52;
        v54 = v68;
        *(v50 + 16) = v53;
        *(v50 + 24) = v54;
        v55 = v65;
        *(v50 + 32) = v67;
        *(v50 + 40) = v55;
        *(v50 + 48) = v66;
        *(v48 + v51) = 1;
        type metadata accessor for IntelligenceFile.InternalRepresentation(0);
        swift_storeEnumTagMultiPayload();
        return v18;
      }

      memset(v81, 0, sizeof(v81));
      v82 = 1;
      v33 = v76;
      sub_1BBAFC9E4(v81, v76);
    }

    else
    {
      v79[0] = v65;
      v79[1] = v67;
      v80 = 0;
      v33 = v75;
      sub_1BBAFC9E4(v79, v75);
    }

    v34 = *(v33 + 2);
    v68 = *(v33 + 3);
    v35 = *(v33 + 5);
    *&v67 = *(v33 + 4);
    *&v65 = v35;
    LODWORD(v66) = v33[48];
    v38 = v33;
    v37 = *v33;
    v36 = *(v38 + 1);
    sub_1BBAEF4AC(0);
    v39 = v36;
    v40 = v36 >> 60 == 15;
    v41 = v69;
    v63 = v34;
    v64 = v39;
    v59 = v37;
    if (!v40)
    {
      v77[0] = v37;
      v77[1] = v39;
      v77[2] = v34;
      v77[3] = v68;
      v77[4] = v67;
      v77[5] = v65;
      v78 = v66;
      sub_1BBAFC6A4(v77, 1);
    }

    v42 = v26;
    v43 = v83;
    v44 = v60;
    v45 = v61;
    v46 = v72;
    goto LABEL_12;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1BBB84028();

  v73 = 0xD000000000000017;
  v74 = 0x80000001BBB9AF00;
  v57 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v57);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t IntelligenceFile.data.getter()
{
  v2 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBAF8DD8(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, v4, type metadata accessor for IntelligenceFile.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
    sub_1BBAB42C8(*(v4 + *(v6 + 48)), *(v4 + *(v6 + 48) + 8));
    v7 = sub_1BBB833F8();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = (*(v8 + 32))(v11, v4, v7, v9);
    v13 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache);
    MEMORY[0x1EEE9AC00](v12);
    *(&v22 - 2) = v11;
    os_unfair_lock_lock((v13 + 48));
    sub_1BBAF8E60((v13 + 16), &v23);
    v14 = (v8 + 8);
    v15 = (v13 + 48);
    if (v1)
    {
      os_unfair_lock_unlock(v15);
      return (*v14)(v11, v7);
    }

    os_unfair_lock_unlock(v15);
    v22 = v23;
    (*v14)(v11, v7);
    *&v17 = v22;
    return v17;
  }

  v18 = *v4;
  v19 = v4[1];
  v20 = *(v4 + 2);
  v24[0] = *(v4 + 1);
  v24[1] = v20;
  v24[2] = *(v4 + 3);
  v25 = *(v4 + 64);
  v21 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache);
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  *(&v22 - 4) = v18;
  *(&v22 - 3) = v19;
  *(&v22 - 2) = v24;
  os_unfair_lock_lock((v21 + 48));
  sub_1BBAF8E40((v21 + 16), &v23);
  os_unfair_lock_unlock((v21 + 48));
  sub_1BBA885E8(v18, v19);
  result = sub_1BBA8BCC4(v24, &qword_1EBC7BED0);
  if (!v1)
  {
    *&v17 = v23;
    return v17;
  }

  return result;
}

uint64_t IntelligenceFile.Attributes.resolved(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  sub_1BBAF8DD8(v2, a2, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBA8BC5C(v2, v8, &qword_1EBC7B858);
  v9 = sub_1BBB83658();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_1BBA8BCC4(v8, &qword_1EBC7B858);
  if (v10 == 1)
  {
    sub_1BBAFA094(a1, a2, &qword_1EBC7B858);
  }

  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  v12 = v11;
  v13 = *(v11 + 20);
  if (*(v2 + v13 + 8) == 1)
  {
    v14 = *(a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = a2 + v13;
    *v16 = v14;
    *(v16 + 8) = v15;
  }

  v29 = a1;
  v17 = *(v11 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v28 = v3;
  sub_1BBA8BC5C(v3 + v17, &v28 - v19, &qword_1EBC7B860);
  v20 = sub_1BBB83498();
  v21 = *(*(v20 - 8) + 48);
  v22 = a2;
  v23 = v21(&v28 - v19, 1, v20);
  v24 = sub_1BBA8BCC4(&v28 - v19, &qword_1EBC7B860);
  if (v23 == 1)
  {
    v24 = sub_1BBAFA094(v29 + *(v12 + 24), v22 + *(v12 + 24), &qword_1EBC7B860);
  }

  MEMORY[0x1EEE9AC00](v24);
  sub_1BBA8BC5C(v28 + v25, &v28 - v19, &qword_1EBC7B860);
  v26 = v21(&v28 - v19, 1, v20);
  result = sub_1BBA8BCC4(&v28 - v19, &qword_1EBC7B860);
  if (v26 == 1)
  {
    return sub_1BBAFA094(v29 + *(v12 + 28), v22 + *(v12 + 28), &qword_1EBC7B860);
  }

  return result;
}

uint64_t IntelligenceFile.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BBAF8DD8(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, v5, type metadata accessor for IntelligenceFile.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
      sub_1BBAB42C8(*&v5[*(v7 + 48)], *&v5[*(v7 + 48) + 8]);
      v8 = sub_1BBB833F8();
      v9 = *(v8 - 8);
      (*(v9 + 32))(a1, v5, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    else
    {
      v12 = *v5;
      v13 = *(v5 + 1);
      v14 = *(v5 + 2);
      v17[0] = *(v5 + 1);
      v17[1] = v14;
      v17[2] = *(v5 + 3);
      v18 = v5[64];
      v15 = *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *&v16[-32] = v12;
      *&v16[-24] = v13;
      *&v16[-16] = v17;
      os_unfair_lock_lock(v15 + 12);
      sub_1BBAFC680(a1);
      os_unfair_lock_unlock(v15 + 12);
      sub_1BBA8BCC4(v17, &qword_1EBC7BED0);
      return sub_1BBA885E8(v12, v13);
    }
  }

  else
  {
    sub_1BBAFA0FC(v5, type metadata accessor for IntelligenceFile.InternalRepresentation);
    v11 = sub_1BBB833F8();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t IntelligenceFile.Attributes.fileSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFile.Attributes(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFile.Attributes.resolved(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BBAF8DD8(v4, a3, type metadata accessor for IntelligenceFile.Attributes);
  result = type metadata accessor for IntelligenceFile.Attributes(0);
  v9 = *(result + 20);
  if (*(v4 + v9 + 8) == 1)
  {
    v10 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (!v14)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(a2);
LABEL_12:
      v15 = a3 + v9;
      *v15 = v11;
      *(v15 + 8) = 0;
      return result;
    }

    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1BBAEB2FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1BBB83A18(), sub_1BBB843D8(), sub_1BBB83AC8(), v3 = sub_1BBB84438(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1BBB83A18();
      v9 = v8;
      if (v7 == sub_1BBB83A18() && v9 == v10)
      {
        break;
      }

      v12 = sub_1BBB842F8();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1BBAEB45C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAEB534()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAEB5F8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAEB6CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAFACC8();
  *a1 = result;
  return result;
}

void sub_1BBAEB6FC(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001BBB9A6D0;
  }

  if (*v1)
  {
    v3 = 0x657A6953656C6966;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1BBAEB790()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x657A6953656C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BBAEB820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAFACC8();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAEB848(uint64_t a1)
{
  v2 = sub_1BBAFA15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAEB884(uint64_t a1)
{
  v2 = sub_1BBAFA15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFile.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BED8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAFA15C();
  sub_1BBB84478();
  sub_1BBAEBACC(v3, 0);
  if (!v2)
  {
    type metadata accessor for IntelligenceFile.Attributes(0);
    v13 = 1;
    sub_1BBB84228();
    v12 = 2;
    sub_1BBB83498();
    sub_1BBAFBE18(&qword_1EBC7AE58, MEMORY[0x1EEE78828]);
    sub_1BBB84238();
    v11 = 3;
    sub_1BBB84238();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BBAEBACC(uint64_t a1, char a2)
{
  v20 = type metadata accessor for UndeclaredUTType();
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1BBB83658();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v21 = a2;
  sub_1BBA8BC5C(a1, v8, &qword_1EBC7B858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1BBA8BCC4(v8, &qword_1EBC7B858);
  }

  v17 = *(v10 + 32);
  v17(v15, v8, v9);
  (*(v10 + 16))(v12, v15, v9);
  v18 = *(v10 + 56);
  v18(v5, 1, 1, v9);
  sub_1BBA8BCC4(v5, &qword_1EBC7B858);
  v17(v5, v12, v9);
  v18(v5, 0, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BED8);
  sub_1BBAFA1B0(&qword_1EBC7ADE8, type metadata accessor for UndeclaredUTType);
  sub_1BBB84288();
  (*(v10 + 8))(v15, v9);
  return sub_1BBAFA0FC(v5, type metadata accessor for UndeclaredUTType);
}

uint64_t IntelligenceFile.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v35 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEE8);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = v35 - v6;
  v8 = type metadata accessor for IntelligenceFile.Attributes(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBB83658();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v39 = v13 + 56;
  v40 = v14;
  v14(v11, 1, 1, v12);
  v15 = &v11[v9[7]];
  *v15 = 0;
  v15[8] = 1;
  v16 = v9[8];
  v17 = sub_1BBB83498();
  v18 = *(*(v17 - 8) + 56);
  v38 = v16;
  v18(&v11[v16], 1, 1, v17);
  v19 = v9[9];
  v46 = v11;
  v18(&v19[v11], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  sub_1BBAFA15C();
  v20 = v45;
  sub_1BBB84458();
  if (v20)
  {
    v21 = v46;
  }

  else
  {
    v35[1] = v17;
    v36 = v12;
    v45 = v15;
    v22 = v41;
    v51 = 0;
    v23 = type metadata accessor for UndeclaredUTType();
    sub_1BBAFA1B0(&qword_1ED6BEBE0, type metadata accessor for UndeclaredUTType);
    v25 = v42;
    v24 = v43;
    sub_1BBB84178();
    v26 = (*(*(v23 - 8) + 48))(v24, 1, v23);
    v21 = v46;
    if (v26 == 1)
    {
      sub_1BBA8BCC4(v24, &qword_1EBC7BEE0);
      v40(v22, 1, 1, v36);
    }

    else
    {
      sub_1BBA8BC5C(v24, v22, &qword_1EBC7B858);
      sub_1BBAFA0FC(v24, type metadata accessor for UndeclaredUTType);
    }

    v27 = v19;
    v28 = v45;
    sub_1BBAA6910(v22, v21, &qword_1EBC7B858);
    v50 = 1;
    v29 = sub_1BBB84168();
    v43 = v27;
    *v28 = v29;
    *(v28 + 8) = v30 & 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v45 = v35;
    v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v31 - 8);
    v49 = 2;
    sub_1BBAFBE18(&qword_1EBC7AE50, MEMORY[0x1EEE78828]);
    sub_1BBB84178();
    v33 = sub_1BBAA6910(v35 - v32, v21 + v38, &qword_1EBC7B860);
    MEMORY[0x1EEE9AC00](v33);
    v48 = 3;
    sub_1BBB84178();
    (*(v44 + 8))(v7, v25);
    sub_1BBAA6910(v35 - v32, &v43[v21], &qword_1EBC7B860);
    sub_1BBAF8DD8(v21, v37, type metadata accessor for IntelligenceFile.Attributes);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1BBAFA0FC(v21, type metadata accessor for IntelligenceFile.Attributes);
}

uint64_t IntelligenceFile.Attributes.hash(into:)()
{
  v1 = v0;
  v2 = sub_1BBB83658();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - v7;
  sub_1BBA8BC5C(v1, v31 - v7, &qword_1EBC7B858);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BBB84408();
    sub_1BBAFA1B0(&qword_1ED6BE4B0, MEMORY[0x1E69E8450]);
    sub_1BBB83918();
    (*(v3 + 8))(v5, v2);
  }

  v9 = type metadata accessor for IntelligenceFile.Attributes(0);
  v10 = v1 + *(v9 + 20);
  if (*(v10 + 8) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v11 = *v10;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v11);
  }

  v12 = *(v9 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v31[1] = v31;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15;
  sub_1BBA8BC5C(v1 + v12, v31 - v15, &qword_1EBC7B860);
  v17 = sub_1BBB83498();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  if (v20 == 1)
  {
    v21 = sub_1BBB84408();
  }

  else
  {
    v31[0] = v31;
    v22 = MEMORY[0x1EEE9AC00](v20);
    v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 32))(v24, v16, v17, v22);
    sub_1BBB84408();
    sub_1BBAFBE18(&qword_1EBC7BEF0, MEMORY[0x1EEE78828]);
    sub_1BBB83918();
    v21 = (*(v18 + 8))(v24, v17);
  }

  MEMORY[0x1EEE9AC00](v21);
  sub_1BBA8BC5C(v1 + v25, v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EBC7B860);
  v26 = v19(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v17);
  if (v26 == 1)
  {
    return sub_1BBB84408();
  }

  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v31 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 32))(v30, v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v28);
  sub_1BBB84408();
  sub_1BBAFBE18(&qword_1EBC7BEF0, MEMORY[0x1EEE78828]);
  sub_1BBB83918();
  return (*(v18 + 8))(v30, v17);
}

uint64_t IntelligenceFile.Attributes.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceFile.Attributes.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBAEC9CC()
{
  sub_1BBB843D8();
  IntelligenceFile.Attributes.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBAECA10()
{
  sub_1BBB843D8();
  IntelligenceFile.Attributes.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceFile.__allocating_init(data:name:attributes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  IntelligenceFile.init(data:name:attributes:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t IntelligenceFile.init(data:name:attributes:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v16 = swift_allocObject();
  *(v16 + 48) = 0;
  *(v16 + 16) = xmmword_1BBB89870;
  *(v16 + 32) = xmmword_1BBB89870;
  *(v5 + v15) = v16;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  result = sub_1BBAF8DD8(a5, v14, type metadata accessor for IntelligenceFile.Attributes);
  v18 = *(v12 + 28);
  if (*(a5 + v18 + 8) != 1)
  {
    goto LABEL_13;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_12;
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(a2);
LABEL_12:
    v24 = &v14[v18];
    *v24 = v20;
    v24[8] = 0;
LABEL_13:
    sub_1BBAFA0FC(a5, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBAFB190(v14, v5 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    v25 = (v5 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation);
    *v25 = a1;
    v25[1] = a2;
    type metadata accessor for IntelligenceFile.InternalRepresentation(0);
    swift_storeEnumTagMultiPayload();
    return v5;
  }

  LODWORD(v20) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v20 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static IntelligenceFile.generateTemporaryFileURL(name:contentType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v57 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v48 - v7;
  v56 = sub_1BBB83658();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1BBB84028();

  v60 = 0xD000000000000011;
  v61 = 0x80000001BBB9B6B0;
  v9 = sub_1BBB834F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB834E8();
  v13 = sub_1BBB834A8();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x1BFB16150](v13, v15);

  if (a2)
  {
    v16 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      v17 = sub_1BBAFA1F8(20);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v58 = 45;
      v59 = 0xE100000000000000;
      v24 = MEMORY[0x1BFB160F0](v17, v19, v21, v23);
      v26 = v25;

      MEMORY[0x1BFB16150](v24, v26);

      MEMORY[0x1BFB16150](v58, v59);
    }
  }

  v27 = NSTemporaryDirectory();
  v28 = sub_1BBB83A18();
  v51 = v29;
  v52 = v28;

  v30 = sub_1BBB832E8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = *MEMORY[0x1E6968F50];
  v49 = *(v31 + 104);
  v49(&v48 - v34, v35, v30, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v48 - v37;
  v39 = sub_1BBB833F8();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  sub_1BBB833E8();
  v40 = v55;
  sub_1BBA8BC5C(v53, v55, &qword_1EBC7B858);
  v41 = v54;
  v42 = v56;
  if ((*(v54 + 48))(v40, 1, v56) == 1)
  {
    v43 = sub_1BBA8BCC4(v40, &qword_1EBC7B858);
    v58 = v60;
    v59 = v61;
    v44 = MEMORY[0x1EEE9AC00](v43);
    v45 = &v48 - v34;
    v49(v45, *MEMORY[0x1E6968F60], v30, v44);
    sub_1BBAE8250();
    sub_1BBB833D8();
    (*(v31 + 8))(v45, v30);
  }

  else
  {
    v47 = v50;
    (*(v41 + 32))(v50, v40, v42);
    sub_1BBB83348();

    return (*(v41 + 8))(v47, v42);
  }
}

uint64_t IntelligenceFile.__allocating_init(creatingTemporaryCopyOfFileAt:name:attributes:sandboxExtensionType:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = *a5;
  v79 = a5[1];
  v77 = v19;
  LODWORD(v76) = *(a5 + 32);
  v85 = sub_1BBB833A8();
  v88 = v5;
  v81 = v15;
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = sub_1BBB83318();
    a3 = v21;
  }

  v86 = a4;
  IntelligenceFile.Attributes.resolved(using:)(a1, v18);
  v22 = sub_1BBB833F8();
  v84 = &v71;
  v89 = v22;
  v83 = *(v22 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v75 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v71 - v75;
  v78 = v20;
  static IntelligenceFile.generateTemporaryFileURL(name:contentType:)(v20, a3, v18, &v71 - v75);
  v25 = [objc_opt_self() defaultManager];
  v87 = a1;
  v26 = sub_1BBB83328();
  v27 = sub_1BBB83328();
  v90 = 0;
  v28 = v18;
  v29 = [v25 copyItemAtURL:v26 toURL:v27 error:&v90];

  v31 = v90;
  if (!v29)
  {
    v36 = v90;

    sub_1BBB83268();

    swift_willThrow();
    v46 = *(v83 + 8);
    v47 = v24;
    v48 = v89;
    v46(v47, v89);
    sub_1BBAFA0FC(v28, type metadata accessor for IntelligenceFile.Attributes);
LABEL_13:
    v51 = v87;
    if (v85)
    {
      sub_1BBB83388();
    }

    sub_1BBAFA0FC(v86, type metadata accessor for IntelligenceFile.Attributes);
    v46(v51, v48);
    return v36;
  }

  v74 = &v71;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v33 = (&v71 - v75);
  v34 = v83;
  (*(v83 + 16))(&v71 - v75, v24, v89, v32);
  v75 = v28;
  v35 = v81;
  sub_1BBAF8DD8(v28, v81, type metadata accessor for IntelligenceFile.Attributes);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v38 = swift_allocObject();
  *(v38 + 48) = 0;
  *(v38 + 16) = xmmword_1BBB89870;
  *(v38 + 32) = xmmword_1BBB89870;
  v73 = v37;
  *(v36 + v37) = v38;
  v39 = v31;
  if (sub_1BBB832C8())
  {
    v36[2] = v78;
    v36[3] = a3;
    v40 = v80;
    IntelligenceFile.Attributes.resolved(using:)(v33, v80);
    v41 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
    sub_1BBAFB190(v40, v36 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    v42 = v35;
    if (v76)
    {
      if (!(v79 | v77 | *(&v79 + 1)))
      {
        sub_1BBAEF4AC(0);
        v73 = 0;
        v82 = 0;
        v80 = 0;
        v78 = 0;
        LODWORD(v79) = 0;
        v76 = 0;
        *&v77 = 0xF000000000000000;
        goto LABEL_20;
      }

      v80 = v41;
      memset(v98, 0, sizeof(v98));
      v99 = 1;
      v43 = v93;
      v44 = v93;
      v45 = v98;
    }

    else
    {
      v80 = v41;
      v96[0] = v77;
      v96[1] = v79;
      v97 = 0;
      v43 = v92;
      v44 = v92;
      v45 = v96;
    }

    v49 = v88;
    sub_1BBAFC9E4(v45, v44);
    v88 = v49;
    if (v49)
    {
      v50 = v24;
      sub_1BBAFA0FC(v42, type metadata accessor for IntelligenceFile.Attributes);
      v46 = *(v34 + 8);
      v48 = v89;
      v46(v33, v89);
      v46(v50, v48);
      sub_1BBAFA0FC(v75, type metadata accessor for IntelligenceFile.Attributes);

      sub_1BBAFA0FC(v36 + v80, type metadata accessor for IntelligenceFile.Attributes);

      swift_deallocPartialClassInstance();
      goto LABEL_13;
    }

    v72 = v24;
    v52 = *(v43 + 2);
    v82 = *(v43 + 3);
    v53 = *(v43 + 5);
    v80 = *(v43 + 4);
    v78 = v53;
    LODWORD(v79) = v43[48];
    v56 = v43;
    v54 = *v43;
    v55 = *(v56 + 1);
    sub_1BBAEF4AC(0);
    v76 = v52;
    *&v77 = v55;
    v73 = v54;
    if (v55 >> 60 != 15)
    {
      v94[0] = v54;
      v94[1] = v55;
      v94[2] = v52;
      v94[3] = v82;
      v94[4] = v80;
      v94[5] = v78;
      v95 = v79;
      sub_1BBAFC6A4(v94, 1);
    }

    v24 = v72;
LABEL_20:
    sub_1BBAFA0FC(v42, type metadata accessor for IntelligenceFile.Attributes);
    v57 = v34;
    v58 = *(v34 + 8);
    v59 = v89;
    v81 = v58;
    v58(v24, v89);
    sub_1BBAFA0FC(v75, type metadata accessor for IntelligenceFile.Attributes);
    v60 = v36 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
    v62 = &v60[*(v61 + 48)];
    v63 = *(v61 + 64);
    (*(v57 + 32))(v60, v33, v59);
    v65 = v76;
    v64 = v77;
    *v62 = v73;
    *(v62 + 1) = v64;
    v66 = v82;
    *(v62 + 2) = v65;
    *(v62 + 3) = v66;
    v67 = v78;
    *(v62 + 4) = v80;
    *(v62 + 5) = v67;
    v62[48] = v79;
    v60[v63] = 1;
    type metadata accessor for IntelligenceFile.InternalRepresentation(0);
    swift_storeEnumTagMultiPayload();
    v68 = v87;
    if (v85)
    {
      sub_1BBB83388();
    }

    sub_1BBAFA0FC(v86, type metadata accessor for IntelligenceFile.Attributes);
    v81(v68, v89);
    return v36;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1BBB84028();

  v90 = 0xD000000000000017;
  v91 = 0x80000001BBB9AF00;
  v70 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v70);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t IntelligenceFile.__allocating_init(fileURL:name:attributes:automaticallyDelete:sandboxExtensionType:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v39 = a5;
  v53 = a4;
  v10 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = *(a6 + 16);
  v36 = *a6;
  v37 = v14;
  v15 = *(a6 + 32);
  v16 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 16) = xmmword_1BBB89870;
  *(v17 + 32) = xmmword_1BBB89870;
  v40 = xmmword_1BBB89870;
  v35[1] = v16;
  *(v13 + v16) = v17;
  if (sub_1BBB832C8())
  {
    if (!a3)
    {
      a2 = sub_1BBB83318();
      a3 = v18;
    }

    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    IntelligenceFile.Attributes.resolved(using:)(a1, v12);
    v19 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
    sub_1BBAFB190(v12, v13 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    if (v15)
    {
      v20 = v38;
      v21 = v39;
      if (v37 | v36 | *(&v37 + 1))
      {
        memset(v51, 0, sizeof(v51));
        v52 = 1;
        sub_1BBAFC9E4(v51, v45);
        if (!v20)
        {
          v22 = *(&v45[0] + 1);
          v36 = v45[2];
          v37 = v45[1];
          v23 = v46;
          v40 = v45[0];
          if ((v21 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_10:
        sub_1BBAFA0FC(v53, type metadata accessor for IntelligenceFile.Attributes);
        v26 = sub_1BBB833F8();
        (*(*(v26 - 8) + 8))(a1, v26);

        sub_1BBAFA0FC(v13 + v19, type metadata accessor for IntelligenceFile.Attributes);

        swift_deallocPartialClassInstance();
        return v13;
      }

      v23 = 0;
      v36 = 0u;
      v37 = 0u;
      v22 = *(&v40 + 1);
      if ((v39 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v49[0] = v36;
      v49[1] = v37;
      v50 = 0;
      v24 = v39;
      v25 = v38;
      sub_1BBAFC9E4(v49, v43);
      if (v25)
      {
        goto LABEL_10;
      }

      v22 = *(&v43[0] + 1);
      v37 = v43[1];
      v36 = v43[2];
      v23 = v44;
      v40 = v43[0];
      if ((v24 & 1) == 0)
      {
LABEL_15:
        if (v22 >> 60 != 15)
        {
          v47[0] = v40;
          v47[1] = v37;
          v47[2] = v36;
          v48 = v23;
          sub_1BBAFC6A4(v47, 1);
        }

        sub_1BBAFA0FC(v53, type metadata accessor for IntelligenceFile.Attributes);
        v27 = v13 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
        v29 = v27 + *(v28 + 48);
        v30 = *(v28 + 64);
        v31 = sub_1BBB833F8();
        (*(*(v31 - 8) + 32))(v27, a1, v31);
        v32 = v37;
        *v29 = v40;
        *(v29 + 16) = v32;
        *(v29 + 32) = v36;
        *(v29 + 48) = v23;
        *(v27 + v30) = v39 & 1;
        type metadata accessor for IntelligenceFile.InternalRepresentation(0);
        swift_storeEnumTagMultiPayload();
        return v13;
      }
    }

LABEL_14:
    sub_1BBAEF4AC(0);
    v22 = *(&v40 + 1);
    goto LABEL_15;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1BBB84028();

  v41 = 0xD000000000000017;
  v42 = 0x80000001BBB9AF00;
  v34 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v34);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t IntelligenceFile.init(fileURL:name:attributes:automaticallyDelete:sandboxExtensionType:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v40 = a5;
  v54 = a4;
  v36[1] = *v7;
  v12 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 + 16);
  v37 = *a6;
  v38 = v15;
  v16 = *(a6 + 32);
  v17 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v18 = swift_allocObject();
  *(v18 + 48) = 0;
  *(v18 + 16) = xmmword_1BBB89870;
  *(v18 + 32) = xmmword_1BBB89870;
  v41 = xmmword_1BBB89870;
  *(v7 + v17) = v18;
  if (sub_1BBB832C8())
  {
    if (!a3)
    {
      a2 = sub_1BBB83318();
      a3 = v19;
    }

    v7[2] = a2;
    v7[3] = a3;
    IntelligenceFile.Attributes.resolved(using:)(a1, v14);
    v20 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
    sub_1BBAFB190(v14, v7 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    if (v16)
    {
      v21 = v39;
      if (v38 | v37 | *(&v38 + 1))
      {
        memset(v52, 0, sizeof(v52));
        v53 = 1;
        v22 = v40;
        sub_1BBAFC9E4(v52, v46);
        if (!v21)
        {
          v23 = *(&v46[0] + 1);
          v37 = v46[2];
          v38 = v46[1];
          v24 = v47;
          v41 = v46[0];
          if ((v22 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_10:
        sub_1BBAFA0FC(v54, type metadata accessor for IntelligenceFile.Attributes);
        v27 = sub_1BBB833F8();
        (*(*(v27 - 8) + 8))(a1, v27);

        sub_1BBAFA0FC(v7 + v20, type metadata accessor for IntelligenceFile.Attributes);

        swift_deallocPartialClassInstance();
        return v7;
      }

      v24 = 0;
      v37 = 0u;
      v38 = 0u;
      v23 = *(&v41 + 1);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v50[0] = v37;
      v50[1] = v38;
      v51 = 0;
      v25 = v40;
      v26 = v39;
      sub_1BBAFC9E4(v50, v44);
      if (v26)
      {
        goto LABEL_10;
      }

      v23 = *(&v44[0] + 1);
      v38 = v44[1];
      v37 = v44[2];
      v24 = v45;
      v41 = v44[0];
      if ((v25 & 1) == 0)
      {
LABEL_15:
        if (v23 >> 60 != 15)
        {
          v48[0] = v41;
          v48[1] = v38;
          v48[2] = v37;
          v49 = v24;
          sub_1BBAFC6A4(v48, 1);
        }

        sub_1BBAFA0FC(v54, type metadata accessor for IntelligenceFile.Attributes);
        v28 = v7 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
        v30 = &v28[*(v29 + 48)];
        v31 = *(v29 + 64);
        v32 = sub_1BBB833F8();
        (*(*(v32 - 8) + 32))(v28, a1, v32);
        v33 = v38;
        *v30 = v41;
        *(v30 + 1) = v33;
        *(v30 + 2) = v37;
        v30[48] = v24;
        v28[v31] = v40 & 1;
        type metadata accessor for IntelligenceFile.InternalRepresentation(0);
        swift_storeEnumTagMultiPayload();
        return v7;
      }
    }

LABEL_14:
    sub_1BBAEF4AC(0);
    v23 = *(&v41 + 1);
    goto LABEL_15;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1BBB84028();

  v42 = 0xD000000000000017;
  v43 = 0x80000001BBB9AF00;
  v35 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v35);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t IntelligenceFile.__allocating_init(bookmarkData:name:attributes:automaticallyDelete:sandboxExtensionType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v45 = a6;
  v68 = a5;
  *&v52 = a4;
  v44 = a3;
  v12 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  v14 = swift_allocObject();
  v15 = *a7;
  v48 = *(a7 + 16);
  v47 = v15;
  v46 = *(a7 + 32);
  v16 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  v18 = (v17 + 48);
  *(v17 + 16) = xmmword_1BBB89870;
  v42 = xmmword_1BBB89870;
  *(v17 + 32) = xmmword_1BBB89870;
  v49 = v16;
  v53 = v14;
  *(v14 + v16) = v17;
  v19 = sub_1BBB833F8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = a1;
  v55 = a2;

  os_unfair_lock_lock(v18);
  v23 = v51;
  sub_1BBAFA294(v22);
  os_unfair_lock_unlock(v18);
  if (!v23)
  {
    v25 = v44;
    v26 = v43;
    v39 = v20;
    v40 = v19;
    v27 = v45;
    v41 = a1;
    v51 = a2;

    v28 = v52;
    v29 = v22;
    if (v52)
    {
      v30 = v25;
    }

    else
    {
      v30 = sub_1BBB83318();
    }

    v24 = v53;
    *(v53 + 16) = v30;
    *(v24 + 24) = v28;
    IntelligenceFile.Attributes.resolved(using:)(v29, v26);
    sub_1BBAFB190(v26, v24 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    if (v46)
    {
      if (v48 | v47 | *(&v48 + 1))
      {
        memset(v66, 0, sizeof(v66));
        v67 = 1;
        sub_1BBAFC9E4(v66, v60);
        v52 = v60[1];
        v42 = v60[0];
        v32 = v61;
        v31 = v62;
        v33 = v63;
        if ((v27 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v33 = 0;
        v52 = 0u;
        if ((v27 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v64[0] = v47;
      v64[1] = v48;
      v65 = 0;
      sub_1BBAFC9E4(v64, v56);
      v52 = v56[1];
      v42 = v56[0];
      v32 = v57;
      v31 = v58;
      v33 = v59;
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1BBAEF4AC(0);
LABEL_16:
    sub_1BBAFA0FC(v68, type metadata accessor for IntelligenceFile.Attributes);
    (*(v39 + 8))(v29, v40);
    v35 = v24 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
    v36 = v51;
    *v35 = v41;
    *(v35 + 8) = v36;
    v37 = v52;
    *(v35 + 16) = v42;
    *(v35 + 32) = v37;
    *(v35 + 48) = v32;
    *(v35 + 56) = v31;
    *(v35 + 64) = v33;
    *(v35 + 65) = v27 & 1;
    type metadata accessor for IntelligenceFile.InternalRepresentation(0);
    swift_storeEnumTagMultiPayload();
    return v24;
  }

  sub_1BBA885E8(a1, a2);

  sub_1BBAFA0FC(v68, type metadata accessor for IntelligenceFile.Attributes);

  v24 = v53;

  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t *IntelligenceFile.init(bookmarkData:name:attributes:automaticallyDelete:sandboxExtensionType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v52 = a6;
  v71 = a5;
  *&v56 = a4;
  v47 = a3;
  v54 = *v8;
  v12 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a7;
  v51 = *(a7 + 16);
  v50 = v14;
  v48 = *(a7 + 32);
  v15 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
  v16 = swift_allocObject();
  *(v16 + 48) = 0;
  v17 = (v16 + 48);
  *(v16 + 16) = xmmword_1BBB89870;
  v45 = xmmword_1BBB89870;
  *(v16 + 32) = xmmword_1BBB89870;
  v53 = v15;
  *(v8 + v15) = v16;
  v18 = sub_1BBB833F8();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = a1;
  v58 = a2;

  os_unfair_lock_lock(v17);
  v21 = v55;
  sub_1BBAFC660(v20);
  os_unfair_lock_unlock(v17);
  if (v21)
  {
    sub_1BBA885E8(a1, a2);

    sub_1BBAFA0FC(v71, type metadata accessor for IntelligenceFile.Attributes);

LABEL_12:

    swift_deallocPartialClassInstance();
    return v8;
  }

  v22 = v47;
  v44 = v20;
  v23 = v46;
  v43 = v18;
  v55 = 0;
  v41 = a1;
  v42 = a2;
  v24 = v71;

  v25 = v56;
  if (v56)
  {
    v26 = v23;
    v27 = v44;
  }

  else
  {
    v27 = v44;
    v22 = sub_1BBB83318();
    v26 = v23;
  }

  v8[2] = v22;
  v8[3] = v25;
  v28 = v49;
  IntelligenceFile.Attributes.resolved(using:)(v27, v49);
  v29 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
  sub_1BBAFB190(v28, v8 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
  if (!v48)
  {
    v67[0] = v50;
    v67[1] = v51;
    v68 = 0;
    v35 = v55;
    sub_1BBAFC9E4(v67, v59);
    v55 = v35;
    v30 = v43;
    if (!v35)
    {
      v56 = v59[1];
      v45 = v59[0];
      v32 = v60;
      v33 = v61;
      v34 = v62;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v30 = v43;
  if (!(v51 | v50 | *(&v51 + 1)))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v56 = 0u;
    goto LABEL_16;
  }

  memset(v69, 0, sizeof(v69));
  v70 = 1;
  v27 = v44;
  v31 = v55;
  sub_1BBAFC9E4(v69, v63);
  v55 = v31;
  if (v31)
  {
LABEL_11:
    sub_1BBA885E8(v41, v42);
    sub_1BBAFA0FC(v24, type metadata accessor for IntelligenceFile.Attributes);
    (*(v26 + 8))(v27, v30);

    sub_1BBAFA0FC(v8 + v29, type metadata accessor for IntelligenceFile.Attributes);
    goto LABEL_12;
  }

  v56 = v63[1];
  v45 = v63[0];
  v32 = v64;
  v33 = v65;
  v34 = v66;
LABEL_16:
  if (v52)
  {
    sub_1BBAEF4AC(0);
  }

  sub_1BBAFA0FC(v24, type metadata accessor for IntelligenceFile.Attributes);
  (*(v26 + 8))(v44, v43);
  v37 = v8 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
  v38 = v52 & 1;
  v39 = v42;
  *v37 = v41;
  *(v37 + 1) = v39;
  v40 = v56;
  *(v37 + 1) = v45;
  *(v37 + 2) = v40;
  *(v37 + 6) = v32;
  *(v37 + 7) = v33;
  v37[64] = v34;
  v37[65] = v38;
  type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  swift_storeEnumTagMultiPayload();
  return v8;
}

uint64_t sub_1BBAEEFA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v8 = *a3;
  v46 = *(a3 + 8);
  v45 = v8;
  v49 = a3;
  if (v46 >> 60 == 15)
  {
    v56 = v5;
    v9 = 0;
  }

  else
  {
    v61 = v8;
    v62 = v46;
    v10 = *(a3 + 32);
    v63 = *(a3 + 16);
    v64 = v10;
    v65 = *(a3 + 48);
    v9 = sub_1BBAFCD48();
    if (v5)
    {

      v9 = 0;
    }

    v56 = 0;
  }

  v55 = v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v44 = v4;
  v52 = v11;
  v13 = v12;
  if (v12 >> 60 == 15)
  {
    sub_1BBAE58D8(a1, a2);
    v11 = a1;
    v13 = a2;
  }

  v66 = 0;
  v14 = sub_1BBB833F8();
  v54 = v43;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v43;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  v51 = v43;
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = v43 - v23;
  v50 = v15;
  v25 = *(v15 + 56);
  v25(v43 - v23, 1, 1, v14, v22);
  sub_1BBAE593C(v52, v12);
  v26 = v56;
  sub_1BBB83338();
  if (v26)
  {
    sub_1BBA8BCC4(v24, &qword_1EBC7BB98);
    result = sub_1BBA885E8(v11, v13);
    if (!v55)
    {
      return result;
    }

    goto LABEL_11;
  }

  v43[1] = v21;
  v52 = v11;
  v56 = v13;
  sub_1BBA8BCC4(v24, &qword_1EBC7BB98);
  v28 = v48;
  sub_1BBB83358();
  v29 = v50;
  v51 = *(v50 + 8);
  v30 = v51(v19, v14);
  v31 = v49;
  v32 = *(v49 + 8);
  v33 = v28;
  if (v32 >> 60 != 15)
  {
    v57[0] = *v49;
    v57[1] = v32;
    v34 = *(v49 + 32);
    v58 = *(v49 + 16);
    v59 = v34;
    v60 = *(v49 + 48);
    sub_1BBAE58D8(v45, v46);
    sub_1BBAFC6A4(v57, 0);
    v30 = sub_1BBA8BCC4(v31, &qword_1EBC7BED0);
  }

  if (v66 == 1)
  {
    v35 = MEMORY[0x1EEE9AC00](v30);
    v37 = v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25(v37, 1, 1, v14, v35);
    v39 = sub_1BBB832D8();
    v41 = v40;
    sub_1BBA8BCC4(v37, &qword_1EBC7BB98);
    sub_1BBA885E8(v52, v56);
    v42 = v44;
    sub_1BBAB42C8(*(v44 + 16), *(v44 + 24));
    *(v42 + 16) = v39;
    *(v42 + 24) = v41;
    v38 = v55;
    v29 = v50;
  }

  else
  {
    sub_1BBA885E8(v52, v56);
    v38 = v55;
  }

  result = (*(v29 + 32))(v47, v33, v14);
  if (v38)
  {
LABEL_11:
    sub_1BBAFCFEC();
  }

  return result;
}

void sub_1BBAEF4AC(char a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BBB833A8();
  v5 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v38[16] = a1;
  v40[0] = 0;
  v6 = sub_1BBB83328();
  v7 = sub_1BBB83328();
  v8 = swift_allocObject();
  v8[2] = sub_1BBAFBE60;
  v8[3] = v38;
  v8[4] = v40;
  v9 = swift_allocObject();
  v9[2] = sub_1BBAFC67C;
  v9[3] = v8;
  aBlock[4] = sub_1BBAFC65C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBAF67AC;
  aBlock[3] = &block_descriptor_46;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v5 coordinateReadingItemAtURL:v6 options:0 writingItemAtURL:v7 options:0 error:aBlock byAccessor:v10];
  _Block_release(v10);

  v11 = aBlock[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_15:
    swift_once();
LABEL_6:
    v13 = sub_1BBB83758();
    __swift_project_value_buffer(v13, qword_1ED6BDEC0);
    v14 = sub_1BBB833F8();
    v15 = *(v14 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v2, v14, v16);
    v19 = v7;
    v20 = sub_1BBB83738();
    v21 = sub_1BBB83D48();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[0] = v36;
      v23 = v22;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446722;
      v25 = sub_1BBB833B8();
      v36[1] = v2;
      v27 = v26;
      (*(v15 + 8))(v18, v14);
      v28 = sub_1BBA85E50(v25, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v29 = sub_1BBB84388();
      v31 = sub_1BBA85E50(v29, v30, aBlock);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2082;
      v40[0] = v7;
      v32 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
      v33 = sub_1BBB83A78();
      v35 = sub_1BBA85E50(v33, v34, aBlock);

      *(v23 + 24) = v35;
      _os_log_impl(&dword_1BBA81000, v20, v21, "Error in beginReferencingFileForAutomaticDeletion() for file at %{public}s: %{public}s; underlying error: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v24, -1, -1);
      MEMORY[0x1BFB174E0](v23, -1, -1);

      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      (*(v15 + 8))(v18, v14);
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_10;
  }

  v7 = v11;
  if (v11)
  {
LABEL_5:
    v37 = v4;
    swift_willThrow();

    if (qword_1ED6BDEB8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = v40[0];
  if (v40[0])
  {
    v12 = v40[0];
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_10:
    sub_1BBB83388();
  }
}

uint64_t sub_1BBAEF9F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 >> 60 != 15)
  {
    v9 = *a1;
    v10 = a1[1];
LABEL_9:
    *a2 = v9;
    a2[1] = v10;
    return sub_1BBAE593C(v3, v4);
  }

  v13 = a2;
  v6 = sub_1BBB833A8();
  result = sub_1BBB83418();
  if (!v2)
  {
    v9 = result;
    v10 = v8;
    v11 = *a1;
    v12 = a1[1];
    sub_1BBAE58D8(result, v8);
    sub_1BBAB42C8(v11, v12);
    *a1 = v9;
    a1[1] = v10;
    if (v6)
    {
      sub_1BBB83388();
    }

    a2 = v13;
    goto LABEL_9;
  }

  if (v6)
  {
    return sub_1BBB83388();
  }

  return result;
}

uint64_t sub_1BBAEFAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_1BBB833F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BBAEEFA4(a2, a3, a4, v14);
  if (v5)
  {
    return result;
  }

  v29 = 0;
  v16 = *a1;
  v17 = a1[1];
  if (v17 >> 60 != 15)
  {
    v22 = *a1;
    v23 = a1[1];
LABEL_11:
    sub_1BBAE593C(v16, v17);
    result = (*(v12 + 8))(v14, v11);
    *a5 = v22;
    a5[1] = v23;
    return result;
  }

  v28 = *a1;
  v18 = sub_1BBB833A8();
  v19 = v29;
  v20 = sub_1BBB83418();
  if (!v19)
  {
    v22 = v20;
    v23 = v21;
    v29 = 0;
    v24 = *a1;
    v26 = a1[1];
    v27 = v24;
    sub_1BBAE58D8(v20, v21);
    sub_1BBAB42C8(v27, v26);
    *a1 = v22;
    a1[1] = v23;
    if (v18)
    {
      sub_1BBB83388();
    }

    v16 = v28;
    goto LABEL_11;
  }

  if (v18)
  {
    sub_1BBB83388();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t IntelligenceFile.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BBAEFD00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntelligenceFile.InternalRepresentation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BBAF8DD8(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, v5, type metadata accessor for IntelligenceFile.InternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
      sub_1BBAB42C8(*&v5[*(v7 + 48)], *&v5[*(v7 + 48) + 8]);
      v8 = v5[*(v7 + 64)];
      v9 = sub_1BBB833F8();
      v10 = *(v9 - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v14 = *(v10 + 32);
      (v14)(v13, v5, v9, v11);
      if (v8 == 1)
      {
        v14(a1, v13, v9);
        return (*(v10 + 56))(a1, 0, 1, v9);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
        return (*(v10 + 56))(a1, 1, 1, v9);
      }
    }

    else
    {
      v18 = *v5;
      v17 = *(v5 + 1);
      v19 = *(v5 + 2);
      v23[0] = *(v5 + 1);
      v23[1] = v19;
      v23[2] = *(v5 + 3);
      v24 = v5[64];
      if (v5[65] == 1)
      {
        v20 = *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache);
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        *&v22[-32] = v18;
        *&v22[-24] = v17;
        *&v22[-16] = v23;
        os_unfair_lock_lock(v20 + 12);
        sub_1BBAFBDF8(a1);
        os_unfair_lock_unlock(v20 + 12);
      }

      else
      {
        v21 = sub_1BBB833F8();
        (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      }

      sub_1BBA8BCC4(v23, &qword_1EBC7BED0);
      return sub_1BBA885E8(v18, v17);
    }
  }

  else
  {
    sub_1BBAFA0FC(v5, type metadata accessor for IntelligenceFile.InternalRepresentation);
    v16 = sub_1BBB833F8();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_1BBAF0094@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1BBAEEFA4(a1, a2, a3, a4);
  if (v4)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BBB833F8();
  return (*(*(v7 - 8) + 56))(a4, v6, 1, v7);
}

uint64_t IntelligenceFile.deinit()
{
  v1 = sub_1BBB833F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBAEFD00(&v9 - v6);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BBA8BCC4(v7, &qword_1EBC7BB98);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1BBAF0320(0);
    (*(v2 + 8))(v4, v1);
  }

  sub_1BBAFA0FC(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBAFA0FC(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation, type metadata accessor for IntelligenceFile.InternalRepresentation);

  return v0;
}

void sub_1BBAF0320(char a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BBB833A8();
  v5 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v38[16] = a1;
  v40[0] = 0;
  v6 = sub_1BBB83328();
  v7 = sub_1BBB83328();
  v8 = swift_allocObject();
  v8[2] = sub_1BBAFB1F8;
  v8[3] = v38;
  v8[4] = v40;
  v9 = swift_allocObject();
  v9[2] = sub_1BBAFB214;
  v9[3] = v8;
  aBlock[4] = sub_1BBAFB220;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBAF67AC;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v5 coordinateReadingItemAtURL:v6 options:0 writingItemAtURL:v7 options:1 error:aBlock byAccessor:v10];
  _Block_release(v10);

  v11 = aBlock[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_15:
    swift_once();
LABEL_6:
    v13 = sub_1BBB83758();
    __swift_project_value_buffer(v13, qword_1ED6BDEC0);
    v14 = sub_1BBB833F8();
    v15 = *(v14 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v2, v14, v16);
    v19 = v7;
    v20 = sub_1BBB83738();
    v21 = sub_1BBB83D48();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[0] = v36;
      v23 = v22;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446722;
      v25 = sub_1BBB833B8();
      v36[1] = v2;
      v27 = v26;
      (*(v15 + 8))(v18, v14);
      v28 = sub_1BBA85E50(v25, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v29 = sub_1BBB84388();
      v31 = sub_1BBA85E50(v29, v30, aBlock);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2082;
      v40[0] = v7;
      v32 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
      v33 = sub_1BBB83A78();
      v35 = sub_1BBA85E50(v33, v34, aBlock);

      *(v23 + 24) = v35;
      _os_log_impl(&dword_1BBA81000, v20, v21, "Error in endReferencingFileForAutomaticDeletion() for file at %{public}s: %{public}s; underlying error: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v24, -1, -1);
      MEMORY[0x1BFB174E0](v23, -1, -1);

      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      (*(v15 + 8))(v18, v14);
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_10;
  }

  v7 = v11;
  if (v11)
  {
LABEL_5:
    v37 = v4;
    swift_willThrow();

    if (qword_1ED6BDEB8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = v40[0];
  if (v40[0])
  {
    v12 = v40[0];
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_10:
    sub_1BBB83388();
  }
}