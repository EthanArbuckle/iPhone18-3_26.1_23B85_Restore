void *sub_1C06E421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C0516A8C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C68DDAD0](v8, v6);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v10 = *(v6 + 8 * v8 + 32);

        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v7 = sub_1C095DCDC();
          goto LABEL_5;
        }
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16ED8, &qword_1C09706B0);
      if (v12 == MEMORY[0x1E69E6158])
      {
        break;
      }

      if (v12 == MEMORY[0x1E69E7360])
      {
        type metadata accessor for UsoPrimitiveIntegerBuilder();
        v18 = swift_dynamicCastClass();
        if (!v18)
        {
          goto LABEL_34;
        }

        v24 = *(v18 + 40);
        v26 = *(v18 + 48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
        goto LABEL_19;
      }

      if (!v10 || (v13 = *v10, (v14 = swift_conformsToProtocol2()) == 0))
      {
LABEL_34:

LABEL_35:

        return 0;
      }

      v15 = v14;
      v27 = v10;
      v28 = v14;
      swift_retain_n();
      v16 = v10;
LABEL_22:

      if (!v16)
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C0579AD8(0, v9[2] + 1, 1, v9);
      }

      v20 = v9[2];
      v19 = v9[3];
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1C0579AD8((v19 > 1), v20 + 1, 1, v9);
      }

      v9[2] = v20 + 1;
      v21 = &v9[2 * v20];
      v21[4] = v16;
      v21[5] = v15;
      ++v8;
      if (v11 == v7)
      {
        goto LABEL_33;
      }
    }

    type metadata accessor for UsoPrimitiveStringBuilder();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      goto LABEL_34;
    }

    v23 = *(v17 + 40);
    v25 = *(v17 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
LABEL_19:
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
    }

    v16 = v27;
    v15 = v28;
    goto LABEL_22;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_33:

  return v9;
}

uint64_t sub_1C06E45E8(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  if (!(*a3)[2] || (sub_1C0516A8C(a1, a2), (v10 & 1) == 0))
  {

    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v21[0];
  }

  v14 = sub_1C07A8D48(v21, a1, a2);
  if (!*v13)
  {
    return (v14)(v21, 0);
  }

  v15 = v13;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v16 = swift_allocObject();
  v16[6] = a5;
  v17 = MEMORY[0x1E69E7CC0];
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = v17;
  v16[4] = v17;
  v16[5] = a4;

  MEMORY[0x1C68DD810](v18);
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C095D9AC();
  }

  sub_1C095D9DC();
  return (v14)(v21, 0);
}

uint64_t sub_1C06E4AE0(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (!(*a3)[2] || (sub_1C0516A8C(a1, a2), (v14 & 1) == 0))
  {

    v15 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v33;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v17 == MEMORY[0x1E69E6158])
  {
    v33 = a4;
    v34 = a5;

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v24 = sub_1C07A8D48(&v33, a1, a2);
    if (!*v23)
    {

      return (v24)(&v33, 0);
    }

    v25 = v23;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v26 = swift_allocObject();
    v26[6] = v32;
    v27 = MEMORY[0x1E69E7CC0];
    v26[2] = MEMORY[0x1E69E7CC0];
    v26[3] = v27;
    v26[5] = v31;
  }

  else
  {
    if (v17 != MEMORY[0x1E69E7360])
    {
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCastClass();
      if (result)
      {

        v20 = sub_1C07A8D48(&v33, a1, a2);
        if (*v19)
        {
          v21 = v19;

          MEMORY[0x1C68DD810](v22);
          if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v30 = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C095D9AC();
          }

          sub_1C095D9DC();
          (v20)(&v33, 0);
        }

        else
        {
          (v20)(&v33, 0);
        }
      }

      return result;
    }

    v33 = a4;
    v34 = a5;

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v24 = sub_1C07A8D48(&v33, a1, a2);
    if (!*v28)
    {
      return (v24)(&v33, 0);
    }

    v25 = v28;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v26 = swift_allocObject();
    *(v26 + 48) = 0;
    v27 = MEMORY[0x1E69E7CC0];
    v26[2] = MEMORY[0x1E69E7CC0];
    v26[3] = v27;
    v26[5] = v31;
  }

  v26[4] = v27;
  MEMORY[0x1C68DD810]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v29 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C095D9AC();
  }

  sub_1C095D9DC();
  return (v24)(&v33, 0);
}

uint64_t Metadata.identifiers.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t Metadata.utteranceAlignments.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1C06FAEB4(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1C0531D80(a1, v1);
}

uint64_t Metadata.entity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0526080(v2, v7);
  v5 = *(a1 + 16);
  return sub_1C06FADF8(v7, a2);
}

uint64_t Metadata.operatorName.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 8))(v13, v2, v3);
  if (v13[0] == 0x726F74617265704FLL && v13[1] == 0xE800000000000000)
  {
  }

  else
  {
    v5 = sub_1C095DF3C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v0[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v8 = *(sub_1C05FD40C(v6, v7) + 16);

  if (v8 != 1)
  {
    return 0;
  }

  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  (*(v10 + 16))(v13, v9, v10);
  v11 = v13[0];

  return v11;
}

double Metadata.operand.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 8))(v15, v6, v7);
  if (*&v15[0] == 0x726F74617265704FLL && *(&v15[0] + 1) == 0xE800000000000000)
  {
  }

  else
  {
    v9 = sub_1C095DF3C();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v10 = v2[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v12 = *(sub_1C05FD40C(v10, v11) + 16);

  if (v12 == 1)
  {
    sub_1C0526080(v3, v15);
    v13 = *(a1 + 16);
    sub_1C06FADF8(v15, a2);
    return result;
  }

LABEL_10:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t Metadata.identifiers.setter(uint64_t a1, uint64_t a2)
{
  sub_1C06FB83C(a1, a2);
}

void (*Metadata.identifiers.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *(v6 + 24) = (*(v8 + 40))(v7, v8);
  return sub_1C06FB2AC;
}

uint64_t Metadata.utteranceAlignments.setter(uint64_t a1, uint64_t a2)
{
  sub_1C06FB8A4(a1, a2);
}

void (*Metadata.utteranceAlignments.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *(v6 + 24) = (*(v8 + 48))(v7, v8);
  return sub_1C06FB3AC;
}

uint64_t Metadata.entitySpans.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1C06FB418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = type metadata accessor for Metadata();

  a5(v9, v8);
}

uint64_t Metadata.entitySpans.setter(uint64_t a1, uint64_t a2)
{
  sub_1C06FB90C(a1, a2);
}

void (*Metadata.entitySpans.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *(v6 + 24) = (*(v8 + 56))(v7, v8);
  return sub_1C06FB56C;
}

void sub_1C06FB584(uint64_t a1, char a2, void (*a3)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v8 = *(*a1 + 24);

    v4[2] = v5;
    WitnessTable = swift_getWitnessTable();
    sub_1C06FBC30(a3, v4, v7, WitnessTable);

    v10 = v4[3];
  }

  else
  {
    v4[2] = v5;
    v11 = swift_getWitnessTable();
    sub_1C06FBC30(a3, v4, v7, v11);
  }

  free(v4);
}

uint64_t Metadata<A>.operator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Metadata.operatorName.getter();
  if (v4)
  {
    v5 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    return sub_1C095D92C();
  }

  else
  {
    v7 = *(a1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(AssociatedTypeWitness - 8) + 56);

    return v9(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t Metadata<A>.init(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BuilderNode;
  a3[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a3 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v7;
  *(result + 104) = v7;
  *(result + 112) = v7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0x797469746E45;
  *(result + 40) = 0xE600000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1C06FB83C(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  WitnessTable = swift_getWitnessTable();
  return sub_1C06FBC30(sub_1C06FBAE0, v5, a2, WitnessTable);
}

uint64_t sub_1C06FB8A4(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  WitnessTable = swift_getWitnessTable();
  return sub_1C06FBC30(sub_1C06FBA9C, v5, a2, WitnessTable);
}

uint64_t sub_1C06FB90C(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  WitnessTable = swift_getWitnessTable();
  return sub_1C06FBC30(sub_1C06FBA58, v5, a2, WitnessTable);
}

uint64_t sub_1C06FB974()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C06FB9B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C06FB9F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C06FBA58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 96);

  *(a1 + 96) = v3;
  return result;
}

uint64_t sub_1C06FBA9C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 80);

  *(a1 + 80) = v3;
  return result;
}

uint64_t sub_1C06FBAE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 72);

  *(a1 + 72) = v3;
  return result;
}

uint64_t sub_1C06FBB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  (*(a4 + 16))(v12, a3, a4);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a5;
  (*(v9 + 80))(sub_1C06FC488, v11, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1C06FBBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return sub_1C06FBC30(sub_1C06FC4FC, v6, a4, a5);
}

uint64_t sub_1C06FBC30(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(&v25, a3, a4);
  v7 = *(&v26 + 1);
  v8 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  (*(v8 + 72))(&v16, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  a1(&v16);
  v23[4] = v20;
  v23[5] = v21;
  v24 = v22;
  v23[0] = v16;
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v19;
  v15[3] = &type metadata for BuilderNode;
  v15[4] = &off_1F3FA1508;
  v9 = swift_allocObject();
  v15[0] = v9;
  v10 = v21;
  *(v9 + 80) = v20;
  *(v9 + 96) = v10;
  *(v9 + 112) = v22;
  v11 = v17;
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  v12 = v19;
  *(v9 + 48) = v18;
  *(v9 + 64) = v12;
  v13 = *(a4 + 24);
  sub_1C05AF88C(v23, &v25);
  v13(v15, a3, a4);
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  return sub_1C05AF8E8(&v25);
}

uint64_t sub_1C06FBDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = MEMORY[0x1E69E7CC0];
  (*(a4 + 16))(v10, a3, a4);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = &v13;
  (*(v7 + 80))(sub_1C06FC47C, v9, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v13;
}

uint64_t sub_1C06FBEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  return sub_1C06FBC30(sub_1C06FC470, v6, a4, a5);
}

uint64_t sub_1C06FBEEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v4);
  swift_getAssociatedTypeWitness();
  return sub_1C06FADF8(v4, a2);
}

uint64_t sub_1C06FBF6C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 16))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1C06FBFF0(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1 == a4 && a1[1] == a5;
  if (v9 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {
    sub_1C06FC494(a6);
    result = sub_1C0526080(a2, a6);
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1C06FC068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C06FC508(a2, v23);
  v7 = v24;
  if (v24)
  {
    v8 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v8 + 72))(v21, v7, v8);
    v19 = v21[1];
    v20 = v21[0];
    v17 = v21[3];
    v18 = v21[2];
    v15 = v21[5];
    v16 = v21[4];
    v9 = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_1C06FC7C0(a3, a4);
    if (*(&v20 + 1))
    {
      v11 = *(a1 + 88);

      result = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 88) = v11;
      if ((result & 1) == 0)
      {
        result = sub_1C0577E98(0, v11[2] + 1, 1, v11);
        v11 = result;
        *(a1 + 88) = result;
      }

      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1C0577E98((v12 > 1), v13 + 1, 1, v11);
        v11 = result;
      }

      v11[2] = v13 + 1;
      v14 = &v11[15 * v13];
      v14[4] = a3;
      v14[5] = a4;
      *(v14 + 3) = v20;
      *(v14 + 4) = v19;
      *(v14 + 5) = v18;
      *(v14 + 6) = v17;
      *(v14 + 7) = v16;
      *(v14 + 8) = v15;
      v14[18] = v9;
      *(a1 + 88) = v11;
    }
  }

  else
  {
    sub_1C06FC494(v23);
    return sub_1C06FC7C0(a3, a4);
  }

  return result;
}

uint64_t sub_1C06FC1F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v8 = *a1 == a4 && a1[1] == a5;
  if (v8 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {
    sub_1C0526080(a2, v14);
    v10 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1C05785E4(0, v10[2] + 1, 1, v10);
      *a6 = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1C05785E4((v12 > 1), v13 + 1, 1, v10);
      *a6 = v10;
    }

    v10[2] = v13 + 1;
    return sub_1C0531D80(v14, &v10[5 * v13 + 4]);
  }

  return result;
}

__n128 sub_1C06FC2E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1C06FC7C0(a2, a3);
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = (a4 + 32);
    do
    {
      v11 = v10[3];
      v12 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v12 + 72))(v25, v11, v12);
      v13 = *(a1 + 88);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 88) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1C0577E98(0, v13[2] + 1, 1, v13);
        *(a1 + 88) = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1C0577E98((v15 > 1), v16 + 1, 1, v13);
      }

      v24 = v26;
      v22 = v25[4];
      v23 = v25[5];
      v20 = v25[2];
      v21 = v25[3];
      v18 = v25[0];
      v19 = v25[1];
      v13[2] = v16 + 1;
      v17 = &v13[15 * v16];
      v17[4] = a2;
      v17[5] = a3;
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
      result = v21;
      v17[18] = v24;
      *(v17 + 7) = v22;
      *(v17 + 8) = v23;
      *(v17 + 6) = v21;
      *(a1 + 88) = v13;
      v10 += 5;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1C06FC494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C40, &qword_1C09932B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C06FC508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C40, &qword_1C09932B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C06FC5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C06FC5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C06FC654(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_1C06FC7C0(a2, a3);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v3 + 88);
    v10 = (a1 + 32);
    for (i = v8 - 1; ; --i)
    {
      v12 = v10[5];
      v34 = v10[4];
      v35 = v12;
      v36 = *(v10 + 12);
      v13 = v10[1];
      v30 = *v10;
      v31 = v13;
      v14 = v10[3];
      v32 = v10[2];
      v33 = v14;
      sub_1C05AF88C(&v30, &v23);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C0577E98(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1C0577E98((v15 > 1), v16 + 1, 1, v9);
        v9 = result;
      }

      v29 = v36;
      v27 = v34;
      v28 = v35;
      v25 = v32;
      v26 = v33;
      v23 = v30;
      v24 = v31;
      v9[2] = v16 + 1;
      v17 = &v9[15 * v16];
      v17[4] = a2;
      v17[5] = a3;
      v18 = v23;
      v19 = v25;
      *(v17 + 4) = v24;
      *(v17 + 5) = v19;
      *(v17 + 3) = v18;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17[18] = v29;
      *(v17 + 7) = v21;
      *(v17 + 8) = v22;
      *(v17 + 6) = v20;
      if (!i)
      {
        break;
      }

      v10 = (v10 + 104);
    }

    *(v3 + 88) = v9;
  }

  return result;
}

uint64_t sub_1C06FC7C0(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = 0;
    v9 = v3 + 32;
    do
    {
      v10 = (v9 + 120 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v10[2];
        v13 = v10[3];
        v14 = v10[1];
        v29 = *v10;
        v31 = v12;
        v32 = v13;
        v30 = v14;
        v15 = v10[4];
        v16 = v10[5];
        v17 = v10[6];
        v36 = *(v10 + 14);
        v34 = v16;
        v35 = v17;
        v33 = v15;
        result = v29;
        if (v29 != __PAIR128__(a2, v7))
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v10 = (v10 + 120);
        if (v5 == v11)
        {
          goto LABEL_14;
        }
      }

      sub_1C06FD0A4(&v29, v28);
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v4;
      v27 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1C0600AE0(0, *(v4 + 16) + 1, 1);
        v4 = v37;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C0600AE0((v18 > 1), v19 + 1, 1);
        v4 = v37;
      }

      v8 = v11 + 1;
      *(v4 + 16) = v19 + 1;
      v20 = v4 + 120 * v19;
      v21 = v29;
      v22 = v30;
      v23 = v32;
      *(v20 + 64) = v31;
      *(v20 + 80) = v23;
      *(v20 + 32) = v21;
      *(v20 + 48) = v22;
      v24 = v33;
      v25 = v34;
      v26 = v35;
      *(v20 + 144) = v36;
      *(v20 + 112) = v25;
      *(v20 + 128) = v26;
      *(v20 + 96) = v24;
      v9 = v27;
    }

    while (v5 - 1 != v11);
  }

LABEL_14:

  *(v2 + 88) = v4;
  return result;
}

uint64_t sub_1C06FC994(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v5 = *(v3 + 16);
    if (v5)
    {
      v7 = result;
      v8 = 0;
LABEL_4:
      v9 = v3 + 32 + 120 * v8;
      v10 = v8;
      while (v10 < *(v3 + 16))
      {
        v11 = *(v9 + 48);
        v12 = *v9;
        v13 = *(v9 + 16);
        v46 = *(v9 + 32);
        v47 = v11;
        v45 = v13;
        v44 = v12;
        v14 = *(v9 + 64);
        v15 = *(v9 + 80);
        v16 = *(v9 + 96);
        v51 = *(v9 + 112);
        v49 = v15;
        v50 = v16;
        v48 = v14;
        if (v13 == __PAIR128__(a2, v7) || (result = sub_1C095DF3C(), (result & 1) != 0))
        {
          sub_1C06FD0A4(&v44, &v41);
          result = swift_isUniquelyReferenced_nonNull_native();
          v52 = v4;
          if ((result & 1) == 0)
          {
            result = sub_1C0600AE0(0, *(v4 + 16) + 1, 1);
            v4 = v52;
          }

          v18 = *(v4 + 16);
          v17 = *(v4 + 24);
          if (v18 >= v17 >> 1)
          {
            result = sub_1C0600AE0((v17 > 1), v18 + 1, 1);
            v4 = v52;
          }

          v8 = v10 + 1;
          *(v4 + 16) = v18 + 1;
          v19 = v4 + 120 * v18;
          v20 = v44;
          v21 = v45;
          v22 = v47;
          *(v19 + 64) = v46;
          *(v19 + 80) = v22;
          *(v19 + 32) = v20;
          *(v19 + 48) = v21;
          v23 = v48;
          v24 = v49;
          v25 = v50;
          *(v19 + 144) = v51;
          *(v19 + 112) = v24;
          *(v19 + 128) = v25;
          *(v19 + 96) = v23;
          if (v5 - 1 != v10)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }

        ++v10;
        v9 += 120;
        if (v5 == v10)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_27;
    }

LABEL_15:
    v3 = v4;
    v4 = MEMORY[0x1E69E7CC0];
    v26 = *(v3 + 16);
    if (!v26)
    {
LABEL_25:

      return v4;
    }
  }

  else
  {

    v26 = *(v3 + 16);
    if (!v26)
    {
      goto LABEL_25;
    }
  }

  v52 = v4;
  result = sub_1C0600B00(0, v26, 0);
  if (*(v3 + 16))
  {
    v27 = 0;
    v4 = v52;
    v28 = 48;
    do
    {
      v29 = *(v3 + v28);
      v30 = *(v3 + v28 + 32);
      v45 = *(v3 + v28 + 16);
      v46 = v30;
      v44 = v29;
      v31 = *(v3 + v28 + 48);
      v32 = *(v3 + v28 + 64);
      v33 = *(v3 + v28 + 80);
      *&v50 = *(v3 + v28 + 96);
      v48 = v32;
      v49 = v33;
      v47 = v31;
      sub_1C05AF88C(&v44, &v41);
      v52 = v4;
      v35 = *(v4 + 16);
      v34 = *(v4 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1C0600B00((v34 > 1), v35 + 1, 1);
        v4 = v52;
      }

      v42 = &type metadata for BuilderNode;
      v43 = &off_1F3FA1508;
      v36 = swift_allocObject();
      v37 = v47;
      v38 = v49;
      *(v36 + 80) = v48;
      *(v36 + 96) = v38;
      v39 = v45;
      v40 = v46;
      *(v36 + 16) = v44;
      *(v36 + 32) = v39;
      *&v41 = v36;
      *(v36 + 112) = v50;
      *(v36 + 48) = v40;
      *(v36 + 64) = v37;
      *(v4 + 16) = v35 + 1;
      result = sub_1C0531D80(&v41, v4 + 40 * v35 + 32);
      if (v26 - 1 == v27)
      {
        goto LABEL_25;
      }

      ++v27;
      v28 += 120;
    }

    while (v27 < *(v3 + 16));
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C06FCCAC(uint64_t result)
{
  v25 = result;
  v26 = *(v1 + 88);
  v2 = *(v26 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v26 + 48);
    v24 = v2 - 1;
    v5 = &off_1F3FA1508;
    while (1)
    {
      v6 = v4[2];
      v8 = *(v4 - 1);
      v7 = *v4;
      v36 = v4[1];
      v37 = v6;
      v34 = v8;
      v35 = v7;
      v9 = v4[3];
      v10 = v4[4];
      v11 = v4[5];
      v41 = *(v4 + 12);
      v39 = v10;
      v40 = v11;
      v38 = v9;
      v12 = v8;
      v13 = v9;
      v32 = &type metadata for BuilderNode;
      v33 = v5;
      v14 = v5;
      *&v30 = swift_allocObject();
      memmove((v30 + 16), v4, 0x68uLL);
      v15 = __swift_project_boxed_opaque_existential_1(&v30, &type metadata for BuilderNode);
      if (v13)
      {
        sub_1C06FD0A4(&v34, v29);
        sub_1C05AF88C(&v35, v29);

        v16 = sub_1C095D89C();

        if (v16)
        {
          v17 = 0xE800000000000000;
          v18 = 0x726F74617265704FLL;
          v5 = v14;
          goto LABEL_13;
        }
      }

      else
      {
        sub_1C06FD0A4(&v34, v29);
        sub_1C05AF88C(&v35, v29);
      }

      v19 = v15[6];
      v5 = v14;
      if (!v19)
      {
        goto LABEL_12;
      }

      if (v12 == __PAIR128__(0xEC00000065756C61, 0x5664656E69666564))
      {
        v18 = 0x5664656E69666544;
        v17 = 0xEC00000065756C61;
        goto LABEL_13;
      }

      if (sub_1C095DF3C())
      {
        v18 = 0x5664656E69666544;
        v17 = 0xEC00000065756C61;
      }

      else
      {
LABEL_12:
        v17 = 0xE600000000000000;
        v18 = 0x797469746E45;
      }

LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v28 = 1;
      v30 = v12;
      v31 = v18;
      v32 = v17;
      v33 = 0;
      v27[3] = &type metadata for BuilderNode;
      v27[4] = v5;
      v20 = swift_allocObject();
      v27[0] = v20;
      v21 = v40;
      *(v20 + 80) = v39;
      *(v20 + 96) = v21;
      *(v20 + 112) = v41;
      v22 = v36;
      *(v20 + 16) = v35;
      *(v20 + 32) = v22;
      v23 = v38;
      *(v20 + 48) = v37;
      *(v20 + 64) = v23;
      sub_1C05AF88C(&v35, v29);
      v25(&v30, v27, &v28);
      sub_1C05AF8E8(&v35);
      __swift_destroy_boxed_opaque_existential_1(v27);

      if ((v28 & 1) == 0 || v24 == v3)
      {
        return result;
      }

      ++v3;
      v4 = (v4 + 120);
      if (v3 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1C06FCF90@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_1C06FCFEC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1C06FD01C()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_1C06FD044@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1C05AF88C(v10, v9);
}

uint64_t sub_1C06FD0A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E88, &unk_1C0970650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.started.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C05149F8(v2, &v12 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.continued.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

BOOL sub_1C06FD5AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

BOOL sub_1C06FD84C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t Siri_Nl_Core_Protocol_UserParse.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(v1 + *(v7 + 32), v6, &qword_1EBE17420, &qword_1C0993380);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

unint64_t Siri_Nl_Core_Protocol_AlgorithmType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C06FDC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752278();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

unint64_t Siri_Nl_Core_Protocol_ParserIdentifier.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C06FDD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C07522CC();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.systemDialogActGroup.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E770, &qword_1C0993388);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = &a1[*(v9 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E770, &qword_1C0993388);
  }

  return result;
}

uint64_t sub_1C06FE04C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE1E770, &qword_1C0993388);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v12 = &a2[*(v10 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E770, &qword_1C0993388);
  }

  return result;
}

uint64_t sub_1C06FE21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C07518CC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C070BA2C(v12, v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE1E770, &qword_1C0993388);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.systemDialogActGroup.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C07518CC(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C070BA2C(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE1E770, &qword_1C0993388);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_TurnInput.systemDialogActGroup.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE1E770, &qword_1C0993388);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    v19 = &v14[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E770, &qword_1C0993388);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  return sub_1C06FE858;
}

void sub_1C06FE858(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C0751E60(*(v2 + 120), *(v2 + 112), type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1C07518CC(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1C070BA2C(v15, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
    swift_beginAccess();
    sub_1C051F9D4(v19, v7 + v20, &qword_1EBE1E770, &qword_1C0993388);
    swift_endAccess();
    sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C07518CC(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1C070BA2C(v14, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
    swift_beginAccess();
    sub_1C051F9D4(v19, v24 + v33, &qword_1EBE1E770, &qword_1C0993388);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_TurnInput.hasSystemDialogActGroup.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE1E770, &qword_1C0993388);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE1E770, &qword_1C0993388);
  return v8;
}

void (*Siri_Nl_Core_Protocol_TurnInput.salientEntities.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C06FECD8;
}

uint64_t sub_1C06FECF0(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

uint64_t sub_1C06FED48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C06FEDB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);

  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C07518CC(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  swift_beginAccess();
  v17 = *(v11 + v16);
  *(v11 + v16) = v7;
}

uint64_t sub_1C06FEE7C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C07518CC(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + v14);
  *(v9 + v14) = a1;
}

void (*Siri_Nl_Core_Protocol_TurnInput.activeTasks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C06FEFE0;
}

void sub_1C06FEFEC(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 72);
  v5 = *v6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = *(*a1 + 72);

    v10 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 88);
      v14 = *(v4 + 80);
      v15 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1C07518CC(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = *a3;
    swift_beginAccess();
    v20 = *(v12 + v19);
    *(v12 + v19) = v5;

    v21 = *v6;
  }

  else
  {
    v22 = *(v8 + v7);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v7);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 88);
      v26 = *(v4 + 80);
      v27 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C07518CC(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = *a3;
    swift_beginAccess();
    v32 = *(v24 + v31);
    *(v24 + v31) = v5;
  }

  free(v4);
}

void (*Siri_Nl_Core_Protocol_TurnInput.executedTasks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C06FF208;
}

void (*Siri_Nl_Core_Protocol_TurnInput.asrOutputs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C06FF2DC;
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.turnContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E7A0, &qword_1C0993390);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7A0, &qword_1C0993390);
  }

  return result;
}

uint64_t sub_1C06FF4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE1E7A0, &qword_1C0993390);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v10 + 24);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E7A0, &qword_1C0993390);
  }

  return result;
}

uint64_t sub_1C06FF6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v12, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C07518CC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C070BA2C(v12, v7, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE1E7A0, &qword_1C0993390);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.turnContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C07518CC(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C070BA2C(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE1E7A0, &qword_1C0993390);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_TurnInput.turnContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE1E7A0, &qword_1C0993390);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = *(v9 + 24);
    v22 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7A0, &qword_1C0993390);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  }

  return sub_1C06FFD70;
}

void sub_1C06FFD70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C0751E60(*(v2 + 120), *(v2 + 112), type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1C07518CC(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1C070BA2C(v15, v19, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
    swift_beginAccess();
    sub_1C051F9D4(v19, v7 + v20, &qword_1EBE1E7A0, &qword_1C0993390);
    swift_endAccess();
    sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C07518CC(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1C070BA2C(v14, v19, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
    swift_beginAccess();
    sub_1C051F9D4(v19, v24 + v33, &qword_1EBE1E7A0, &qword_1C0993390);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_TurnInput.hasTurnContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE1E7A0, &qword_1C0993390);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE1E7A0, &qword_1C0993390);
  return v8;
}

uint64_t sub_1C0700128(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1C07518CC(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.locale.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C07002EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C0700354(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1C07518CC(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = (v8 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = v4;
  v13[1] = v3;
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.locale.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C07518CC(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  v14 = (v9 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v15 = v14[1];
  *v14 = a1;
  v14[1] = a2;
}

void (*Siri_Nl_Core_Protocol_TurnInput.locale.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C0700584;
}

void sub_1C0700584(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C07518CC(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = (v10 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
    swift_beginAccess();
    v18 = v17[1];
    *v17 = v3;
    v17[1] = v5;

    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_1C07518CC(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = (v22 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v3;
    v29[1] = v5;
  }

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.tapToEdit.getter()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v2 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C0700738(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C07518CC(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.tapToEdit.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C07518CC(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

void (*Siri_Nl_Core_Protocol_TurnInput.tapToEdit.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C070093C;
}

void sub_1C070093C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C07518CC(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.startTimestamp.getter()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v2 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C0700A68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C07518CC(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.startTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C07518CC(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  result = swift_beginAccess();
  *(v7 + v12) = a1;
  return result;
}

void (*Siri_Nl_Core_Protocol_TurnInput.startTimestamp.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1C0700C68;
}

void sub_1C0700C68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C07518CC(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  swift_beginAccess();
  *(v7 + v14) = v2;

  free(v1);
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.nlContext.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  sub_1C05149F8(v1 + *(v7 + 20), v6, &qword_1EBE1E7C8, &qword_1C0993398);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  *(a1 + 2) = v10;
  *(a1 + 3) = v10;
  v11 = &a1[*(v8 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v8 + 36);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7C8, &qword_1C0993398);
  }

  return result;
}

uint64_t sub_1C0700F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  sub_1C05149F8(a1 + *(v8 + 20), v7, &qword_1EBE1E7C8, &qword_1C0993398);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v11;
  *(a2 + 2) = v11;
  *(a2 + 3) = v11;
  v12 = &a2[*(v9 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v9 + 36);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E7C8, &qword_1C0993398);
  }

  return result;
}

uint64_t sub_1C07010F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E7C8, &qword_1C0993398);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.nlContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E7C8, &qword_1C0993398);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_NLContext.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v4 = &a1[*(v3 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(v3 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

void (*Siri_Nl_Core_Protocol_TurnContext.nlContext.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E7C8, &qword_1C0993398);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7C8, &qword_1C0993398);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  }

  return sub_1C07015E0;
}

void sub_1C07015E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7C8, &qword_1C0993398);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7C8, &qword_1C0993398);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.legacyNlContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  sub_1C05149F8(v1 + *(v7 + 24), v6, &qword_1EBE1E7D0, &qword_1C09933A0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v10 = a1 + *(v8 + 40);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7D0, &qword_1C09933A0);
  }

  return result;
}

uint64_t sub_1C070193C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E7D0, &qword_1C09933A0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.legacyNlContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E7D0, &qword_1C09933A0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0) + 40);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Siri_Nl_Core_Protocol_TurnContext.legacyNlContext.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E7D0, &qword_1C09933A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    *(v14 + 24) = 0;
    *(v14 + 32) = MEMORY[0x1E69E7CC0];
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    v17 = v14 + *(v9 + 40);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7D0, &qword_1C09933A0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  }

  return sub_1C0701DB4;
}

void sub_1C0701DB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7D0, &qword_1C09933A0);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7D0, &qword_1C09933A0);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_NLContext.systemDialogActGroup.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  sub_1C05149F8(v1 + *(v7 + 36), v6, &qword_1EBE1E770, &qword_1C0993388);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = &a1[*(v8 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E770, &qword_1C0993388);
  }

  return result;
}

uint64_t sub_1C070215C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  sub_1C05149F8(a1 + *(v8 + 36), v7, &qword_1EBE1E770, &qword_1C0993388);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v11 = &a2[*(v9 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E770, &qword_1C0993388);
  }

  return result;
}

uint64_t sub_1C0702308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_NLContext.systemDialogActGroup.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_NLContext.systemDialogActGroup.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E770, &qword_1C0993388);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    v17 = &v14[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E770, &qword_1C0993388);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  return sub_1C0702754;
}

void sub_1C0702754(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E770, &qword_1C0993388);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E770, &qword_1C0993388);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_NLContext.activeTasks.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_NLContext.executedTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_NLContext.salientEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_NLContext.systemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.previousDomainName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.previousDomainName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void Siri_Nl_Core_Protocol_LegacyNLContext.legacyContextSource.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.legacyContextSource.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_1C0702CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C07521D0();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

void Siri_Nl_Core_Protocol_RepetitionResult.repetitionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.repetitionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C0702EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752224();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void Siri_Nl_Core_Protocol_Parser.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_Parser.algorithm.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Siri_Nl_Core_Protocol_Parser.parserID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_Parser.parserID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1C07030D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0703174(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Siri_Nl_Core_Protocol_Parser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_Parser(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0703284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(a1 + *(v8 + 32), v7, &qword_1EBE17420, &qword_1C0993380);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C07033F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserParse.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserParse.id.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t Siri_Nl_Core_Protocol_UserParse.repetitionResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(v1 + *(v7 + 36), v6, &qword_1EBE1E7D8, &qword_1C09933A8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = a1 + *(v8 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7D8, &qword_1C09933A8);
  }

  return result;
}

uint64_t sub_1C0703A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(a1 + *(v8 + 36), v7, &qword_1EBE1E7D8, &qword_1C09933A8);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = a2 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E7D8, &qword_1C09933A8);
  }

  return result;
}

uint64_t sub_1C0703B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E7D8, &qword_1C09933A8);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserParse.repetitionResult.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E7D8, &qword_1C09933A8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserParse.repetitionResult.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E7D8, &qword_1C09933A8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v17 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7D8, &qword_1C09933A8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  }

  return sub_1C0703F88;
}

void sub_1C0703F88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7D8, &qword_1C09933A8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7D8, &qword_1C09933A8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1C070412C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t sub_1C0704264(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_UserParse.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(v1 + *(v7 + 40), v6, &qword_1EBE1E7E0, &qword_1C09933B0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7E0, &qword_1C09933B0);
  }

  return result;
}

uint64_t sub_1C070447C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(a1 + *(v8 + 40), v7, &qword_1EBE1E7E0, &qword_1C09933B0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E7E0, &qword_1C09933B0);
  }

  return result;
}

uint64_t sub_1C07045EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 40);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E7E0, &qword_1C09933B0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserParse.parser.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 40);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E7E0, &qword_1C09933B0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserParse.parser.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E7E0, &qword_1C09933B0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7E0, &qword_1C09933B0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  }

  return sub_1C07049FC;
}

void sub_1C07049FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7E0, &qword_1C09933B0);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7E0, &qword_1C09933B0);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_UserParse.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  v3 = &a1[v2[7]];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[8];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[9];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a1[v8], 1, 1, v9);
}

uint64_t sub_1C0704DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C05149F8(a1, &v12 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.started.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C05149F8(v1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
      return sub_1C0705284;
    }

    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = *(v9 + 20);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  return sub_1C0705284;
}

uint64_t sub_1C07052C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

uint64_t sub_1C0705518@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v8 = a1(0);
  v9 = *(v8 + 20);
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4 + v11, 1, 1, v12);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.continued.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C07058A8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  return sub_1C07058A8;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.accepted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0705AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.accepted.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0705FD4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
  return sub_1C0705FD4;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.rejected.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C070620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.rejected.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0706700;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
  return sub_1C0706700;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.disambiguated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0706938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.disambiguated.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0706E2C;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
  return sub_1C0706E2C;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.cancelled.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0707064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.cancelled.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0707558;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
  return sub_1C0707558;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.wantedToRepeat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0707790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.wantedToRepeat.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0707C84;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
  return sub_1C0707C84;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.acknowledged.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0707EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.acknowledged.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C07083B0;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
  return sub_1C07083B0;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.wantedToProceed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C07085E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.wantedToProceed.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0708ADC;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
  return sub_1C0708ADC;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.wantedToPause.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(v2, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C0708D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C05149F8(a1, &v15 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.wantedToPause.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_1C0709208;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
  return sub_1C0709208;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.responded.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C05149F8(v2, &v14 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v11 = &a1[*(v10 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C070940C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C05149F8(a1, &v14 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v11 = &a2[*(v10 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

uint64_t sub_1C0709614@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  v5 = a1(0);
  v6 = &a3[*(v5 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v7 = *(v5 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.responded.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C05149F8(v1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = &v12[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return sub_1C070992C;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
  return sub_1C070992C;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.delegated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1C05149F8(v2, &v16 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v11 = a1 + v10[7];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = v10[8];
  v13 = sub_1C095D32C();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[9];
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v3 = a1 + v2[7];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[8];
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[9];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.delegated.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1C05149F8(v2, v9, &qword_1EBE17408, &unk_1C0993370);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    *(v13 + 24) = MEMORY[0x1E69E7CC0];
    v16 = v13 + v10[7];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = v10[8];
    v18 = sub_1C095D32C();
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v10[9];
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    return sub_1C0709F48;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
  return sub_1C0709F48;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.userStatedTask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C05149F8(v2, &v12 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C070BA2C(v7, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C070A138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C05149F8(a1, &v12 - v6, &qword_1EBE17408, &unk_1C0993370);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    }

    sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

uint64_t sub_1C070A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1C0751E60(a1, &v17 - v13, a6);
  sub_1C05145B4(a2, &qword_1EBE17408, &unk_1C0993370);
  sub_1C070BA2C(v14, a2, a7);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1C070A414(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C05145B4(v2, &qword_1EBE17408, &unk_1C0993370);
  sub_1C070BA2C(a1, v2, a2);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t sub_1C070A4F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.userStatedTask.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C05149F8(v1, v8, &qword_1EBE17408, &unk_1C0993370);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17408, &unk_1C0993370);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_1C070A7E8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
  return sub_1C070A7E8;
}

void sub_1C070A82C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[3], v10, a5);
    sub_1C05145B4(v13, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C0751DA0(v11, a6);
  }

  else
  {
    sub_1C05145B4(**a1, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.alignment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C05149F8(v1 + *(v7 + 24), v6, &qword_1EBE1E7E8, &qword_1C09933B8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  }

  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E7E8, &qword_1C09933B8);
  }

  return result;
}

uint64_t sub_1C070AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C05149F8(a1 + *(v8 + 24), v7, &qword_1EBE1E7E8, &qword_1C09933B8);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  }

  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E7E8, &qword_1C09933B8);
  }

  return result;
}

uint64_t sub_1C070AC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE1E7E8, &qword_1C09933B8);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.alignment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E7E8, &qword_1C09933B8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserDialogAct.alignment.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E7E8, &qword_1C09933B8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E7E8, &qword_1C09933B8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  }

  return sub_1C070B070;
}

void sub_1C070B070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7E8, &qword_1C09933B8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E7E8, &qword_1C09933B8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C070B250(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v4 = a1 + *(v3 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(v3 + 24);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C070B688@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 20), v9, &qword_1EBE17400, &unk_1C0970CA0);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v13 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v13;
  *(a3 + 2) = v13;
  *(a3 + 3) = v13;
  v14 = &a3[*(v11 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = *(v11 + 36);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C070B840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserStarted.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C070BA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*Siri_Nl_Core_Protocol_UserStarted.task.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070BF14(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C070BFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserContinued.taskID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.step.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserContinued.step.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.offerID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserAccepted.offerID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070CD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserAccepted.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070D21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.offerID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserRejected.offerID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070D67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserRejected.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070DB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.disambiguationID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserDisambiguated.disambiguationID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070DFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.optionQuery.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserDisambiguated.optionQuery.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070E4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserCancelled.taskID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070E90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserCancelled.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070EDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToRepeat.systemDialogActID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToRepeat.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070F73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserAcknowledged.systemDialogActID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070FB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserAcknowledged.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C0710084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToProceed.taskID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C07104E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToProceed.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C07109CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToPause.taskID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0710E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserWantedToPause.reference.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C0711314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserResponded.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserResponded.systemDialogActID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0711794@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0711830(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*Siri_Nl_Core_Protocol_DelegatedUserDialogAct.rewrittenUtterance.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

BOOL sub_1C0711B90(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t sub_1C0711CC8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C0711DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.asrUuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_DelegatedUserDialogAct.asrUuid.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0712268@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0712304(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C07123E4@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 20), v8, &qword_1EBE17400, &unk_1C0970CA0);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v12;
  *(a2 + 2) = v12;
  *(a2 + 3) = v12;
  v13 = &a2[*(v10 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v14 = *(v10 + 36);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C0712598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserStatedTask.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UserStatedTask.task.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    v18 = &v14[*(v9 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 36);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C05149F8(v1 + *(v7 + 24), v6, &qword_1EBE16DB0, &qword_1C0970478);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v8 + 20);
  if (qword_1EBE15780 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EBE1E5F8;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DB0, &qword_1C0970478);
  }

  return result;
}

uint64_t sub_1C0712C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C05149F8(a1 + *(v8 + 24), v7, &qword_1EBE16DB0, &qword_1C0970478);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v9 + 20);
  if (qword_1EBE15780 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_1EBE1E5F8;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16DB0, &qword_1C0970478);
  }

  return result;
}

uint64_t sub_1C0712DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C070BA2C(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C0712FF8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void (*Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DB0, &qword_1C0970478);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_1EBE15780 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EBE1E5F8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DB0, &qword_1C0970478);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  return sub_1C07132D8;
}

void sub_1C07132D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C05145B4(v9 + v3, &qword_1EBE16DB0, &qword_1C0970478);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE16DB0, &qword_1C0970478);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.id.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17420, &qword_1C0993380);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v19 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0713818;
}

BOOL Siri_Nl_Core_Protocol_SystemDialogAct.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v6 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(v5 + v6, v4, &qword_1EBE17420, &qword_1C0993380);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1C05145B4(v4, &qword_1EBE17420, &qword_1C0993380);
  return v8;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  return sub_1C05149F8(v3 + v4, a1, &qword_1EBE1E800, &qword_1C09933D0);
}

uint64_t sub_1C0713A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  return sub_1C05149F8(v3 + v4, a2, &qword_1EBE1E800, &qword_1C09933D0);
}

uint64_t sub_1C0713AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  sub_1C05149F8(a1, &v17 - v6, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1C0739898(v11);
    *(a2 + v8) = v11;
  }

  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v15, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C0739898(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(a1, v7 + v11, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 96) = v9;
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v8, &qword_1EBE1E800, &qword_1C09933D0);
  return sub_1C0713DB8;
}

void sub_1C0713DB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C05149F8(*(v2 + 88), *(v2 + 80), &qword_1EBE1E800, &qword_1C09933D0);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 96);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1C0739898(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v14, v7 + v15, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
    sub_1C05145B4(v13, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = *(v16 + v3);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 96);
      v21 = *(v2 + 72);
      v22 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v19 = sub_1C0739898(v19);
      *(v21 + v20) = v19;
    }

    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    v25 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v13, v19 + v25, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
  }

  free(v13);
  free(v14);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.prompted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.prompted.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      return sub_1C07144C4;
    }

    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v18 = *(v9 + 20);
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  v20 = *(v9 + 24);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
  return sub_1C07144C4;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.offered.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

uint64_t sub_1C07146E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  sub_1C0751E60(a1, &v15 - v12, a6);
  return a7(v13);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.offered.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 20);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    return sub_1C0714A78;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
  return sub_1C0714A78;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.gaveOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0) + 20);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0) + 20);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.gaveOptions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v9 + 20);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    return sub_1C0714F34;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  return sub_1C0714F34;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.informed.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v12 = &a1[*(v11 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v11 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.informed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v18 = &v12[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    return sub_1C0715468;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
  return sub_1C0715468;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.reportedSuccess.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1E800, &qword_1C09933D0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C070BA2C(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    }

    sub_1C0751DA0(v6, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = *(v11 + 24);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.reportedSuccess.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 20);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
    return sub_1C0715A18;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  return sub_1C0715A18;
}