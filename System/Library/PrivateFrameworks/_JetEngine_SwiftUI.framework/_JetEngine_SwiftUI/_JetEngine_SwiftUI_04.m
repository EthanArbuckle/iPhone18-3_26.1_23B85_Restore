uint64_t MediaArtworkStyle._body(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 32))(a1, a2, a3, v8);
  swift_getAssociatedConformanceWitness();
  v11 = sub_1B7999EF4(v10);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t View.mediaArtworkStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1B7A98150();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1B79CA4FC()
{
  sub_1B79CA8D8();

  return sub_1B7A97890();
}

uint64_t sub_1B79CA584(uint64_t a1)
{
  sub_1B7999E90(a1, v3);
  sub_1B7999E90(v3, &v2);
  sub_1B79CA8D8();
  sub_1B7A978A0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1B79CA5E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StandardMediaArtworkStyle(0);
  a1[3] = v2;
  a1[4] = sub_1B79CA93C(&qword_1EBA474A0, type metadata accessor for StandardMediaArtworkStyle);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  v4 = *(v2 + 20);
  v5 = *MEMORY[0x1E697F480];
  v6 = sub_1B7A97970();
  result = (*(*(v6 - 8) + 104))(boxed_opaque_existential_1Tm + v4, v5, v6);
  *boxed_opaque_existential_1Tm = 0;
  return result;
}

uint64_t sub_1B79CA71C()
{
  result = sub_1B7A98F40();
  if (v1 <= 0x3F)
  {
    result = sub_1B7A97530();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79CA7D0()
{
  result = sub_1B7A97970();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B79CA84C()
{
  result = qword_1EBA47478;
  if (!qword_1EBA47478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47480);
    sub_1B79C9DFC();
    sub_1B79CA0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47478);
  }

  return result;
}

unint64_t sub_1B79CA8D8()
{
  result = qword_1EBA47498;
  if (!qword_1EBA47498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47498);
  }

  return result;
}

uint64_t sub_1B79CA93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B79CA988@<X0>(void *a1@<X8>)
{
  sub_1B79CB218();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79CA9D8()
{
  sub_1B79CB218();

  return sub_1B7A978A0();
}

uint64_t View.mediaArtworkAllowedBundles<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v26 = a4;
  v27 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  v11 = sub_1B7A97590();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v25 = &v25 - v15;
  swift_getKeyPath();
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v19 = v26;
  v18 = v27;
  *(v17 + 4) = v26;
  *(v17 + 5) = v18;
  (*(v9 + 32))(&v17[v16], &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1B7A98320();

  v20 = sub_1B79CAE84();
  v30 = v19;
  v31 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v25;
  sub_1B7957EE0(v13, v11, WitnessTable);
  v23 = *(v28 + 8);
  v23(v13, v11);
  sub_1B7957EE0(v22, v11, WitnessTable);
  return (v23)(v22, v11);
}

uint64_t sub_1B79CACF8(uint64_t a1, uint64_t a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7A9D170;
  *(v3 + 32) = [objc_opt_self() mainBundle];
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)(a2, &v5);

  sub_1B79CAEE8(v5);
}

unint64_t sub_1B79CAE84()
{
  result = qword_1EBA474B0;
  if (!qword_1EBA474B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA474B0);
  }

  return result;
}

uint64_t sub_1B79CAEE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 9;
    while (1)
    {
      if (v5 >= v3[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1B7999E90(&v3[v6 - 5], &v15);
      sub_1B795C1E4(&v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v5;
      v6 += 5;
      if (v4 == v5)
      {
        v5 = v3[2];
        v7 = v5;
        goto LABEL_24;
      }
    }

    v7 = v5 + 1;
    v8 = v3[2];
    if (v8 - 1 == v5)
    {
      goto LABEL_24;
    }

    while (v7 < v8)
    {
      sub_1B7999E90(&v3[v6], &v15);
      sub_1B795C1E4(&v15, v14);
      if (swift_dynamicCast())
      {
      }

      else
      {
        if (v7 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v9 = v3[2];
          if (v5 >= v9)
          {
            goto LABEL_31;
          }

          sub_1B7999E90(&v3[5 * v5 + 4], &v15);
          if (v7 >= v9)
          {
            goto LABEL_32;
          }

          sub_1B7999E90(&v3[v6], v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1B7A5D420(v3);
          }

          v10 = &v3[5 * v5];
          __swift_destroy_boxed_opaque_existential_1((v10 + 4));
          sub_1B795C1E4(v14, (v10 + 4));
          if (v7 >= v3[2])
          {
            goto LABEL_33;
          }

          __swift_destroy_boxed_opaque_existential_1(&v3[v6]);
          sub_1B795C1E4(&v15, &v3[v6]);
          *v1 = v3;
        }

        ++v5;
      }

      ++v7;
      v8 = v3[2];
      v6 += 5;
      if (v7 == v8)
      {
        if (v7 < v5)
        {
          goto LABEL_34;
        }

        goto LABEL_24;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = 0;
  v7 = 0;
LABEL_24:
  sub_1B7A5D448(v5, v7);
  v5 = *v1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_35:
    v5 = sub_1B7987A98(0, *(v5 + 16) + 1, 1, v5);
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  if (v12 >= v11 >> 1)
  {
    v5 = sub_1B7987A98((v11 > 1), v12 + 1, 1, v5);
  }

  v16 = &type metadata for MediaArtwork.BundleImageProtocol;
  v17 = sub_1B79CB1C4();
  *&v15 = a1;
  *(v5 + 16) = v12 + 1;
  result = sub_1B795C1E4(&v15, v5 + 40 * v12 + 32);
  *v1 = v5;
  return result;
}

unint64_t sub_1B79CB1C4()
{
  result = qword_1EBA474B8;
  if (!qword_1EBA474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA474B8);
  }

  return result;
}

unint64_t sub_1B79CB218()
{
  result = qword_1EBA474C0[0];
  if (!qword_1EBA474C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA474C0);
  }

  return result;
}

unint64_t sub_1B79CB26C()
{
  result = sub_1B7A98870();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79CB2FC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B79CB464(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1B79CB6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v5 = *(a2 - 8);
  v36 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_1B7A97C30();
  v32 = v12;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 24);
  v40 = v12;
  v41 = v9;
  v42 = WitnessTable;
  v43 = v14;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  v21 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v21);
  v30[1] = *(v3 + *(a2 + 40));
  (*(v5 + 16))(v7, v3, a2);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  *(v23 + 24) = v14;
  (*(v5 + 32))(v23 + v22, v7, a2);
  v24 = swift_checkMetadataState();
  v25 = v31;
  v26 = v33;
  sub_1B7A984B0();

  (*(v37 + 8))(v25, v9);
  v40 = v24;
  v41 = v9;
  v42 = v26;
  v43 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = *(v35 + 8);
  v28(v17, OpaqueTypeMetadata2);
  sub_1B7957EE0(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v28)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1B79CBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for _OnChangeOfBindingViewModifier();
  (*(a3 + *(v6 + 36)))(a1, a2);
}

uint64_t sub_1B79CBB54(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for _OnChangeOfBindingViewModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1B79CBA6C(a1, a2, v6);
}

uint64_t RandomAccessCollection.indexed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t IndexedRandomAccessCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  v7 = sub_1B7A9A9E0();
  v9 = v8;
  v10 = swift_getAssociatedTypeWitness();
  (*(*(v10 - 8) + 16))(a2, v9, v10);
  return v7(&v12, 0);
}

void (*sub_1B79CC07C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  if (v4)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v6[6] = v11;
  v13 = sub_1B79CC2D8(v6, a2);
  v15 = v14;
  v6[7] = v13;
  (*(*(AssociatedTypeWitness - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(v12 + *(TupleTypeMetadata2 + 48), v15, v8);
  return sub_1B79CC260;
}

void sub_1B79CC260(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1B79CC2D8(uint64_t *a1, uint64_t a2))(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v5 = *(TupleTypeMetadata2 - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  IndexedRandomAccessCollection.subscript.getter(v6, v6 + *(TupleTypeMetadata2 + 48), a2);
  return sub_1B79CC428;
}

void sub_1B79CC428(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B79CC484@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1B7A9AB60();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B79CC5B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1B79CC6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_1B7A9AD60();
  IndexedRandomAccessCollection.startIndex.getter();
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_1B79CC7EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B79CC848(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1B79CCDB0();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1B79CC8FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B79CC96C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B79CCAAC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B79CCCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B79CCDB4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1B7A9A9F0();
  result = sub_1B7A9A460();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B79CCE90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B79CCEF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1B79CCF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B79CCFF8(void (*a1)(__int128 *__return_ptr, __int128 *))
{
  v3 = v2;
  v4 = 0;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = *v1;
  while (1)
  {
    v9 = v6 >= v8;
    if (v7 > 0)
    {
      v9 = v8 >= v6;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, v7);
    v8 += v7;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v10 = __OFADD__(v4++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1B79D020C(0, v4, 0);
  v32 = v1[3];
  v11 = v40;
  if (v4)
  {
    while (1)
    {
      v12 = v6 >= v5;
      if (v7 > 0)
      {
        v12 = v5 >= v6;
      }

      if (v12)
      {
        break;
      }

      if (__OFADD__(v5, v7))
      {
        v13 = ((v5 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v13 = v5 + v7;
      }

      v35 = v5;
      v32(&v34, &v35);
      v36 = v34;
      v37 = 0;
      a1(&v38, &v36);
      if (v3)
      {
        goto LABEL_38;
      }

      v3 = 0;
      v14 = v38;
      v15 = v39;
      v40 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        v28 = v39;
        v30 = v38;
        sub_1B79D020C((v16 > 1), v17 + 1, 1);
        v15 = v28;
        v14 = v30;
        v11 = v40;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 32 * v17;
      *(v18 + 32) = v14;
      *(v18 + 48) = v15;
      v5 = v13;
      if (!--v4)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:

    __break(1u);
  }

  else
  {
    v13 = v5;
LABEL_23:
    v19 = v6 >= v13;
    if (v7 > 0)
    {
      v19 = v13 >= v6;
    }

    if (v19)
    {
      return v11;
    }

    while (1)
    {
      v21 = __OFADD__(v13, v7) ? ((v13 + v7) >> 63) ^ 0x8000000000000000 : v13 + v7;
      *&v34 = v13;
      v32(&v38, &v34);
      v36 = v38;
      a1(&v38, &v36);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v22 = v38;
      v23 = v39;
      v40 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v39;
        v31 = v38;
        sub_1B79D020C((v24 > 1), v25 + 1, 1);
        v23 = v29;
        v22 = v31;
        v11 = v40;
      }

      *(v11 + 16) = v25 + 1;
      v26 = v11 + 32 * v25;
      *(v26 + 32) = v22;
      *(v26 + 48) = v23;
      v27 = v6 >= v21;
      if (v7 > 0)
      {
        v27 = v21 >= v6;
      }

      v13 = v21;
      if (v27)
      {
        return v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79CD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = a3[2];
  v17 = *(a3 + 24);
  v18 = *a6;
  result = swift_getKeyPath();
  *(a9 + 96) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = v18;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = result;
  return result;
}

uint64_t sub_1B79CD340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A98990();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B7A989A0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  v11 = *(a1 + 16);
  v12 = sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548);
  *&v114 = v10;
  *(&v114 + 1) = MEMORY[0x1E69E69B8];
  *&v115 = v11;
  *(&v115 + 1) = v12;
  *&v116 = MEMORY[0x1E69E69C0];
  v13 = sub_1B7A988E0();
  v14 = *(a1 + 24);
  v113 = v14;
  v91 = MEMORY[0x1E69819D0];
  WitnessTable = swift_getWitnessTable();
  v79 = v13;
  v96 = sub_1B7A98AB0();
  v86 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v85 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v72 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568);
  v93 = v11;
  sub_1B7A97590();
  sub_1B7A97B40();
  v19 = sub_1B7A97B40();
  v20 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568);
  *&v114 = v18;
  *(&v114 + 1) = MEMORY[0x1E69E69B8];
  *&v115 = v19;
  *(&v115 + 1) = v20;
  *&v116 = MEMORY[0x1E69E69C0];
  sub_1B7A988E0();
  v21 = sub_1B79CFFA8();
  v92 = v14;
  v111 = v14;
  v112 = v21;
  v95 = v21;
  v22 = swift_getWitnessTable();
  v109 = v22;
  v110 = v22;
  v107 = swift_getWitnessTable();
  v108 = v22;
  v106 = swift_getWitnessTable();
  swift_getWitnessTable();
  v23 = sub_1B7A98900();
  v24 = sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558);
  v25 = sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560);
  *&v114 = v90;
  *(&v114 + 1) = v89;
  *&v115 = v23;
  *(&v115 + 1) = v24;
  *&v116 = v25;
  v26 = sub_1B7A988E0();
  v105 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = sub_1B7A97FD0();
  v75 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  v31 = sub_1B7A97590();
  v77 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v76 = &v72 - v35;
  v36 = sub_1B7A97880();
  v74 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1B7A97B40();
  v89 = *(v39 - 8);
  v90 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v72 - v40;
  v41 = v2[5];
  v118 = v2[4];
  v119 = v41;
  v120 = *(v2 + 96);
  v42 = v2[1];
  v114 = *v2;
  v115 = v42;
  v43 = v2[3];
  v116 = v2[2];
  v117 = v43;
  v44 = *(v2 + 11);
  v122 = v44;
  v123 = v120;
  v91 = v28;
  if (v120 != 1)
  {

    sub_1B7A9AA10();
    v73 = v36;
    v58 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79CFFFC(&v122);
    (*(v74 + 8))(v38, v73);
    if (v121 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1EEE9AC00](v117);
    v59 = v92;
    *(&v72 - 4) = v93;
    *(&v72 - 3) = v59;
    v70 = v26;
    v71 = v27;
    sub_1B7A97FC0();
    v60 = v91;
    v61 = swift_getWitnessTable();
    sub_1B7A981E0();
    (*(v75 + 8))(v30, v60);
    v97 = v61;
    v98 = v95;
    v62 = swift_getWitnessTable();
    v63 = v76;
    sub_1B7957EE0(v33, v31, v62);
    v64 = *(v77 + 8);
    v64(v33, v31);
    sub_1B7957EE0(v63, v31, v62);
    swift_getWitnessTable();
    v57 = v88;
    sub_1B79B5878(v33, v31);
    v64(v33, v31);
    v64(v63, v31);
    goto LABEL_6;
  }

  if (v44)
  {
    goto LABEL_5;
  }

LABEL_3:
  v77 = v115;
  v121 = BYTE8(v115);
  v46 = v81;
  v45 = v82;
  *v81 = xmmword_1B7A9FA60;
  (*(v45 + 104))(v46, *MEMORY[0x1E697D748], v83);
  v47 = v80;
  sub_1B7A989B0();
  v48 = sub_1B79CF8C4(v47, *(&v114 + 1));
  MEMORY[0x1EEE9AC00](v48);
  v49 = v92;
  *(&v72 - 4) = v93;
  *(&v72 - 3) = v49;
  v50 = WitnessTable;
  sub_1B79CFF54();
  v70 = v50;
  v51 = v85;
  sub_1B7A98AA0();
  v52 = v96;
  v53 = swift_getWitnessTable();
  v54 = v31;
  v55 = v84;
  sub_1B7957EE0(v51, v52, v53);
  v56 = *(v86 + 8);
  v56(v51, v52);
  sub_1B7957EE0(v55, v52, v53);
  v103 = swift_getWitnessTable();
  v104 = v95;
  swift_getWitnessTable();
  v57 = v88;
  sub_1B7959A28(v51, v54, v52);
  v56(v51, v52);
  v56(v55, v52);
LABEL_6:
  v101 = swift_getWitnessTable();
  v102 = v95;
  v65 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v99 = v65;
  v100 = v66;
  v67 = v90;
  v68 = swift_getWitnessTable();
  sub_1B7957EE0(v57, v67, v68);
  return (*(v89 + 8))(v57, v67);
}

uint64_t sub_1B79CDFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v32 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568);
  v29 = a3;
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568);
  sub_1B7A988E0();
  v30 = a4;
  v43 = a4;
  v44 = sub_1B79CFFA8();
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v39 = swift_getWitnessTable();
  v40 = WitnessTable;
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  v31 = v8;
  v34[0] = v8;
  v34[1] = v9;
  v34[2] = sub_1B7A98900();
  v35 = sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558);
  v27[1] = v35;
  v36 = sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560);
  v10 = sub_1B7A988E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = sub_1B79CE4D8(*(a1 + 8), *(a1 + 64), *a1);
  swift_getKeyPath();
  v17 = swift_allocObject();
  v18 = v30;
  *(v17 + 16) = v29;
  *(v17 + 24) = v18;
  v19 = *(a1 + 80);
  *(v17 + 96) = *(a1 + 64);
  *(v17 + 112) = v19;
  *(v17 + 128) = *(a1 + 96);
  v20 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v20;
  v21 = *(a1 + 48);
  *(v17 + 64) = *(a1 + 32);
  *(v17 + 80) = v21;
  *(v17 + 136) = v28;
  v22 = type metadata accessor for _ResolvedVerticalShelfLayout();
  (*(*(v22 - 8) + 16))(v34, a1, v22);
  v26 = swift_getWitnessTable();
  sub_1B7A988B0();
  v33 = v26;
  v23 = swift_getWitnessTable();
  sub_1B7957EE0(v13, v10, v23);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_1B7957EE0(v16, v10, v23);
  v24(v16, v10);
}

uint64_t sub_1B79CE4D8(uint64_t result, char a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 2)
  {
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(a3 + 16);
  if (v5 % result != 1)
  {
LABEL_12:
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = v4;
    MEMORY[0x1EEE9AC00](v11);

    v12 = sub_1B79CCFF8(sub_1B79D08F0);

    return v12;
  }

  if (a2)
  {
    if (v5 >= 2)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = a3 + 32;
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = 0;
    v8[5] = (2 * v6) | 1;
    v8[6] = v4;
    MEMORY[0x1EEE9AC00](v8);
    swift_bridgeObjectRetain_n();
    v9 = sub_1B79CCFF8(sub_1B79D08F0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7A9C180;
    if (!v5)
    {
      goto LABEL_19;
    }

    v10 = result;
    *(result + 32) = a3;
    *(result + 40) = v7;
    *(result + 48) = v5 - 1;
    *(result + 56) = (2 * v5) | 1;

LABEL_15:
    sub_1B79D0108(v10);

    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B7A9C180;
  if (v5)
  {
    v9 = result;
    *(result + 32) = a3;
    *(result + 40) = a3 + 32;
    *(result + 48) = xmmword_1B7A9FA70;
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a3 + 32;
    v13[4] = 1;
    v13[5] = (2 * v5) | 1;
    v13[6] = v4;
    MEMORY[0x1EEE9AC00](v13);
    swift_bridgeObjectRetain_n();
    v10 = sub_1B79CCFF8(sub_1B79D0774);

    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B79CE844@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v33 = a3;
  v34 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568);
  v30 = a4;
  sub_1B7A97590();
  sub_1B7A97B40();
  v10 = sub_1B7A97B40();
  v11 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568);
  v42 = v9;
  v43 = MEMORY[0x1E69E69B8];
  v44 = v10;
  v45 = v11;
  v46 = MEMORY[0x1E69E69C0];
  v12 = sub_1B7A988E0();
  v31 = a5;
  v40 = a5;
  v41 = sub_1B79CFFA8();
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v36 = swift_getWitnessTable();
  v37 = WitnessTable;
  v35 = swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = v12;
  v13 = sub_1B7A98900();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v28 = *a1;
  v20 = *(a1 + 2);
  v21 = *(a1 + 3);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v23 = v31;
  *(&v28 - 8) = v30;
  *(&v28 - 7) = v23;
  *(&v28 - 3) = v28;
  *(&v28 - 4) = v20;
  *(&v28 - 3) = v21;
  v24 = v33;
  *(&v28 - 2) = v32;
  *(&v28 - 1) = v24;
  sub_1B7A988F0();
  v25 = swift_getWitnessTable();
  sub_1B7957EE0(v16, v13, v25);
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_1B7957EE0(v19, v13, v25);
  v26(v19, v13);
}

uint64_t sub_1B79CEBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a8;
  v45 = a6;
  v44 = a4;
  v43 = a3;
  v41 = a2;
  v52 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568);
  sub_1B7A97590();
  v46 = sub_1B7A97B40();
  v13 = sub_1B7A97B40();
  v14 = sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568);
  v51 = v12;
  v60[0] = v12;
  v60[1] = MEMORY[0x1E69E69B8];
  v49 = v13;
  v60[2] = v13;
  v60[3] = v14;
  v48 = v14;
  v60[4] = MEMORY[0x1E69E69C0];
  v15 = sub_1B7A988E0();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &KeyPath - v18;
  sub_1B7A9A760();
  v47 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v41;
  v60[13] = a1;
  v60[14] = v41;
  v20 = a1;
  v21 = v43;
  v22 = v44;
  v60[15] = v43;
  v60[16] = v44;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  v24 = v40;
  *(v23 + 16) = a7;
  *(v23 + 24) = v24;
  v25 = *(a5 + 80);
  *(v23 + 96) = *(a5 + 64);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(a5 + 96);
  v26 = *(a5 + 16);
  *(v23 + 32) = *a5;
  *(v23 + 48) = v26;
  v27 = *(a5 + 48);
  *(v23 + 64) = *(a5 + 32);
  *(v23 + 80) = v27;
  *(v23 + 136) = v20;
  *(v23 + 144) = v19;
  *(v23 + 152) = v21;
  *(v23 + 160) = v22;
  *(v23 + 168) = v45;
  v28 = swift_allocObject();
  v28[2] = a7;
  v28[3] = v24;
  v28[4] = sub_1B79D00A0;
  v28[5] = v23;
  swift_unknownObjectRetain_n();
  v29 = type metadata accessor for _ResolvedVerticalShelfLayout();
  (*(*(v29 - 8) + 16))(v60, a5, v29);
  v30 = sub_1B79CFFA8();
  v58 = v24;
  v59 = v30;
  WitnessTable = swift_getWitnessTable();
  v56 = WitnessTable;
  v57 = WitnessTable;
  v54 = swift_getWitnessTable();
  v55 = WitnessTable;
  v37 = swift_getWitnessTable();
  v32 = v39;
  sub_1B7A988B0();
  v53 = v37;
  v33 = swift_getWitnessTable();
  v34 = v42;
  sub_1B7957EE0(v32, v15, v33);
  v35 = *(v50 + 8);
  v35(v32, v15);
  sub_1B7957EE0(v34, v15, v33);
  v35(v34, v15);
}

uint64_t sub_1B79CF100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v48 = a5;
  v49 = a4;
  v56 = a2;
  v54 = a7;
  v11 = sub_1B7A97590();
  v12 = sub_1B7A97B40();
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v46 - v13;
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v46 - v23;
  v58 = v24;
  v53 = sub_1B7A97B40();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v46 - v25;
  sub_1B7A9A760();
  v51 = sub_1B7A9A750();
  sub_1B7A9A710();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v27 = *(a3 + 64);
  if (v27 == 2)
  {
    goto LABEL_15;
  }

  if (v27)
  {
    if (__OFSUB__(v50, 1))
    {
      __break(1u);
    }

    else
    {
      if (v50 - 1 != a1)
      {
        goto LABEL_15;
      }

      if (!__OFSUB__(v48 >> 1, v49))
      {
        if ((v48 >> 1) - v49 == 1)
        {
          (*(a3 + 72))(a1, v56);
          sub_1B7A981E0();
          (*(v14 + 8))(v17, a8);
          v28 = sub_1B79CFFA8();
          v65 = a9;
          v66 = v28;
          WitnessTable = swift_getWitnessTable();
          v30 = v55;
          sub_1B7957EE0(v21, v11, WitnessTable);
          v31 = *(v18 + 8);
          v31(v21, v11);
          sub_1B7957EE0(v30, v11, WitnessTable);
          v32 = v46;
          sub_1B7959A28(v21, v11, v11);
          v63 = WitnessTable;
          v64 = WitnessTable;
LABEL_14:
          v35 = v58;
          swift_getWitnessTable();
          v36 = v57;
          sub_1B79B5878(v32, v35);
          (*(v47 + 8))(v32, v35);
          v31(v21, v11);
          v37 = v30;
LABEL_16:
          v31(v37, v11);
          v42 = sub_1B79CFFA8();
          v71 = a9;
          v72 = v42;
          v43 = swift_getWitnessTable();
          v69 = v43;
          v70 = v43;
          v67 = swift_getWitnessTable();
          v68 = v43;
          v44 = v53;
          v45 = swift_getWitnessTable();
          sub_1B7957EE0(v36, v44, v45);
          (*(v52 + 8))(v36, v44);
        }

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    if (a1)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v48 >> 1, v49))
    {
      if ((v48 >> 1) - v49 == 1)
      {
        (*(a3 + 72))(0, v56);
        sub_1B7A981E0();
        (*(v14 + 8))(v17, a8);
        v33 = sub_1B79CFFA8();
        v61 = a9;
        v62 = v33;
        v34 = swift_getWitnessTable();
        v30 = v55;
        sub_1B7957EE0(v21, v11, v34);
        v31 = *(v18 + 8);
        v31(v21, v11);
        sub_1B7957EE0(v30, v11, v34);
        v32 = v46;
        sub_1B79B5878(v21, v11);
        v59 = v34;
        v60 = v34;
        goto LABEL_14;
      }

LABEL_15:
      (*(a3 + 72))(a1, v56);
      sub_1B7A981E0();
      (*(v14 + 8))(v17, a8);
      v38 = sub_1B79CFFA8();
      v75 = a9;
      v76 = v38;
      v39 = swift_getWitnessTable();
      v40 = v55;
      sub_1B7957EE0(v21, v11, v39);
      v31 = *(v18 + 8);
      v31(v21, v11);
      sub_1B7957EE0(v40, v11, v39);
      v73 = v39;
      v74 = v39;
      v41 = v58;
      swift_getWitnessTable();
      v36 = v57;
      sub_1B7959A28(v21, v41, v11);
      v31(v21, v11);
      v37 = v40;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79CF8C4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1B7A989A0();
      v5 = sub_1B7A9A690();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1B7A989A0();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1B79CFA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  v24 = sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548);
  v25 = v7;
  v29[0] = v7;
  v29[1] = MEMORY[0x1E69E69B8];
  v29[2] = a2;
  v29[3] = v24;
  v29[4] = MEMORY[0x1E69E69C0];
  v8 = sub_1B7A988E0();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1B7A9A760();
  v23[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29[13] = *a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(a1 + 80);
  *(v14 + 96) = *(a1 + 64);
  *(v14 + 112) = v15;
  *(v14 + 128) = *(a1 + 96);
  v16 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  v17 = *(a1 + 48);
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 80) = v17;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = sub_1B79D0844;
  v18[5] = v14;

  v19 = type metadata accessor for _ResolvedVerticalShelfLayout();
  (*(*(v19 - 8) + 16))(v29, a1, v19);
  sub_1B7A988B0();
  v28 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v10, v8, WitnessTable);
  v21 = *(v26 + 8);
  v21(v10, v8);
  sub_1B7957EE0(v13, v8, WitnessTable);
  v21(v13, v8);
}

uint64_t sub_1B79CFD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 72))(a1, v18[0]);
  sub_1B7957EE0(v12, a4, a5);
  v16 = *(v10 + 8);
  v16(v12, a4);
  sub_1B7957EE0(v15, a4, a5);
  v16(v15, a4);
}

uint64_t sub_1B79CFF54()
{
  sub_1B7A97BF0();
  sub_1B79D0794();
  return sub_1B7A9AFE0();
}

unint64_t sub_1B79CFFA8()
{
  result = qword_1EBA47578;
  if (!qword_1EBA47578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47578);
  }

  return result;
}

uint64_t sub_1B79CFFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B79D0108(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1B7987BE0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B79D020C(void *a1, int64_t a2, char a3)
{
  result = sub_1B79D026C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B79D022C(char *a1, int64_t a2, char a3)
{
  result = sub_1B79D03A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B79D024C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B79D04AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B79D026C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B79D03A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B79D04AC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E8);
  v10 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
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
  v15 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
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

unint64_t *sub_1B79D0684@<X0>(unint64_t *result@<X0>, unint64_t **a2@<X1>, unint64_t **a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result[1];
  result = *a2;
  v5 = (*a2)[2];
  if (v5 < v3 || v5 < v4)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    *a3 = result;
    a3[1] = result + 4;
    a3[2] = v3;
    a3[3] = ((2 * v4) | 1);
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1B79D06E0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *result;
  v5 = __OFADD__(*result, v3);
  v6 = *result + v3;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (*(*(v2 + 16) + 16) < v6)
    {
      v6 = *(*(v2 + 16) + 16);
    }

    if (v6 >= v4)
    {
      *a2 = v4;
      a2[1] = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B79D0718@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = *(a2 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = __OFADD__(v4, a3);
  v8 = v4 + a3;
  if (v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = __OFADD__(v5, v8);
  v9 = v5 + v8;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 24) >> 1 < v9)
  {
    v9 = *(a2 + 24) >> 1;
  }

  if (v9 >= v6)
  {
    *a4 = v6;
    a4[1] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1B79D0794()
{
  result = qword_1EBA46430;
  if (!qword_1EBA46430)
  {
    sub_1B7A97BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46430);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  sub_1B795AE10(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

void *sub_1B79D0850(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1B7A9A690();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1B79D090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v48 - v4;
  v5 = sub_1B7A993E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 24);
  v17 = sub_1B7A97A10();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v53 = v17;
  v54 = v19;
  v52 = v18 + 56;
  (v19)(v14 + v16, 1, 1);
  v20 = sub_1B7A99030();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v44 = sub_1B7A99050();
    (*(*(v44 - 8) + 8))(a1, v44);
    sub_1B7957888(v14 + v16, &qword_1EBA475C8);
    return (*(v12 + 56))(v55, 1, 1, v11);
  }

  v48 = v12;
  v49 = v11;
  *v14 = sub_1B7A99030();
  v14[1] = v24;
  v25 = v14;
  sub_1B7A99040();
  v26 = sub_1B7A993F0();
  v28 = v27;
  v29 = *(v6 + 8);
  v29(v10, v5);
  v30 = a1;
  if (v28 && (v56 = 0.0, v31 = sub_1B79D1B70(v26, v28), , v31) && (v32 = v56, v56 >= 0.0) && v56 <= 1.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = 0.0;
  }

  v34 = v25;
  *(v25 + 2) = v32;
  *(v25 + 24) = v33;
  v35 = v51;
  sub_1B7A99040();
  v36 = sub_1B7A993F0();
  v38 = v37;
  v29(v35, v5);
  v39 = v55;
  v41 = v48;
  v40 = v49;
  if (!v38)
  {
    goto LABEL_30;
  }

  if ((v36 != 0x6863726172656968 || v38 != 0xEC0000006C616369) && (sub_1B7A9AE80() & 1) == 0)
  {
    if (v36 == 0x6F7268636F6E6F6DLL && v38 == 0xEA0000000000656DLL || (sub_1B7A9AE80() & 1) != 0)
    {

      v42 = v50;
      sub_1B7A979D0();
      goto LABEL_15;
    }

    if (v36 == 0x6C6F6369746C756DLL && v38 == 0xEA0000000000726FLL || (sub_1B7A9AE80() & 1) != 0)
    {

      v42 = v50;
      sub_1B7A979E0();
      goto LABEL_15;
    }

    if (v36 == 0x657474656C6170 && v38 == 0xE700000000000000)
    {

LABEL_29:
      v42 = v50;
      sub_1B7A97A00();
      goto LABEL_15;
    }

    v46 = sub_1B7A9AE80();

    if (v46)
    {
      goto LABEL_29;
    }

LABEL_30:
    v47 = sub_1B7A99050();
    (*(*(v47 - 8) + 8))(v30, v47);
    sub_1B7957888(v34 + v16, &qword_1EBA475C8);
    v54(v34 + v16, 1, 1, v53);
    goto LABEL_31;
  }

  v42 = v50;
  sub_1B7A979F0();
LABEL_15:
  v43 = sub_1B7A99050();
  (*(*(v43 - 8) + 8))(v30, v43);
  v54(v42, 0, 1, v53);
  sub_1B79D1B00(v42, v34 + v16);
LABEL_31:
  sub_1B79D1A40(v34, v39);
  (*(v41 + 56))(v39, 0, 1, v40);
  return sub_1B79D1AA4(v34);
}

uint64_t sub_1B79D0F1C()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA47598);
  __swift_project_value_buffer(v0, qword_1EBA47598);
  return sub_1B7A99060();
}

uint64_t sub_1B79D0FEC(uint64_t a1)
{
  v2 = sub_1B7A96D70();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1B7A97A10();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_1B7A98640();
  sub_1B79D19D0(a1 + *(v5 + 32), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7957888(v11, &qword_1EBA475C8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v31;
    (*(v13 + 16))(v31, v15, v12);
    (*(v13 + 56))(v17, 0, 1, v12);
    v18 = sub_1B7A98650();

    sub_1B7957888(v17, &qword_1EBA475C8);
    (*(v13 + 8))(v15, v12);
    v16 = v18;
  }

  v20 = v32;
  v19 = v33;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v21 = sub_1B7A96DA0();
  __swift_project_value_buffer(v21, qword_1EBA507B8);
  sub_1B79D1A40(a1, v20);
  sub_1B7A96D60();
  v22 = sub_1B7A96D90();
  v23 = sub_1B7A9AAA0();
  if (sub_1B7A9AB50())
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = *v20;
    v27 = v20[1];

    sub_1B79D1AA4(v20);
    v28 = sub_1B79A6340(v26, v27, &v36);

    *(v24 + 4) = v28;
    v29 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v22, v23, v29, "Image.SystemImageLoad", "name=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1B8CACB70](v25, -1, -1);
    MEMORY[0x1B8CACB70](v24, -1, -1);

    (*(v34 + 8))(v19, v35);
  }

  else
  {

    (*(v34 + 8))(v19, v35);
    sub_1B79D1AA4(v20);
  }

  return v16;
}

uint64_t MediaArtwork.SystemImageProtocol.match(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46488);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1B7A99050();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  if (qword_1EBA45B40 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7A99080();
  __swift_project_value_buffer(v12, qword_1EBA47598);
  sub_1B7A99070();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B7957888(v4, &qword_1EBA46488);
    v13 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_1B79D090C(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol()
{
  result = qword_1EBA475D0;
  if (!qword_1EBA475D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B79D1798()
{
  result = qword_1EBA475B8;
  if (!qword_1EBA475B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA475C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA475B8);
  }

  return result;
}

uint64_t sub_1B79D1814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475B0);
  result = sub_1B79D0FEC(a1 + *(v4 + 28));
  *a2 = result;
  return result;
}

void sub_1B79D1894()
{
  sub_1B79D1928();
  if (v0 <= 0x3F)
  {
    sub_1B79D1978();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B79D1928()
{
  if (!qword_1EBA475E0)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA475E0);
    }
  }
}

void sub_1B79D1978()
{
  if (!qword_1EBA475E8)
  {
    sub_1B7A97A10();
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA475E8);
    }
  }
}

uint64_t sub_1B79D19D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79D1A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79D1AA4(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79D1B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1B79D1B70(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1B7A9AC40();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_1B79D1C68@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B79D1CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780);
    sub_1B7A98810();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788);
    sub_1B7A986E0();
  }
}

uint64_t IntentView.init(what:transaction:configuration:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v117 = a7;
  v118 = a8;
  v115 = a5;
  v116 = a6;
  v114 = a4;
  v119 = a3;
  v113 = a2;
  v123 = a1;
  v112 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = AssociatedTypeWitness;
  v98 = sub_1B7A9AB60();
  v96 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v96 - v21;
  v122 = *(AssociatedTypeWitness - 8);
  v22 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v97 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v96 - v27;
  v111 = *v119;
  v28 = swift_allocObject();
  *(v28 + 16) = a11;
  *(v28 + 32) = a12;
  *(v28 + 40) = a13;
  *(v28 + 48) = a14;
  *(v28 + 56) = a15;
  *(v28 + 64) = a16;
  *(v28 + 72) = a17;
  v110 = sub_1B79D5AB0();
  v109 = v29;
  v107 = v30;
  v126 = a11;
  v119 = *(&a11 + 1);
  v102 = a12;
  v127 = a12;
  v128 = a13;
  v104 = a13;
  v129 = a14;
  v130 = a15;
  v105 = a15;
  v106 = a16;
  v131 = a16;
  v132 = a17;
  v108 = a17;
  v31 = type metadata accessor for IntentView();
  v32 = &a9[*(v31 + 112)];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v103 = v31;
  v33 = &a9[*(v31 + 116)];
  v34 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v35 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v34, v35, v34, WitnessTable);
  v37 = v127;
  *v33 = v126;
  v33[16] = v37;
  v38 = v122;
  v125 = 0;
  sub_1B7A986C0();
  *a9 = v126;
  *(a9 + 2) = 0;
  a9[24] = 0;
  v39 = v121;
  v124 = a11;
  v40 = v99;
  sub_1B7A98F60();
  v41 = *(v38 + 48);
  v42 = v39;
  if (v41(v40, 1, v39) == 1)
  {
    v101 = v22;
    v43 = *(v96 + 8);
    v43(v40, v98);
    v44 = v100;
    v45 = v123;
    sub_1B7A995A0();
    if (v41(v44, 1, v39) == 1)
    {
      v43(v100, v98);
      v46 = swift_allocObject();
      v47 = v124;
      v48 = v119;
      v46[2] = v124;
      v46[3] = v48;
      v49 = v102;
      v50 = v104;
      v46[4] = v102;
      v46[5] = v50;
      v51 = v105;
      v46[6] = a14;
      v46[7] = v51;
      v52 = v106;
      v53 = v108;
      v46[8] = v106;
      v46[9] = v53;
      *&v126 = v47;
      *(&v126 + 1) = v48;
      v127 = v49;
      v128 = v50;
      v129 = a14;
      v130 = v51;
      v131 = v52;
      v132 = v53;
      type metadata accessor for IntentView.Dispatcher();
      swift_getWitnessTable();
      v54 = sub_1B7A97110();
      v56 = v55;
      v58 = v57;
    }

    else
    {
      v71 = v122;
      v72 = *(v122 + 32);
      v98 = (v122 + 32);
      v99 = v72;
      v73 = v97;
      (v72)(v97, v100, v42);
      (*(v71 + 16))(v120, v73, v42);
      v74 = (*(v71 + 80) + 80) & ~*(v71 + 80);
      v75 = swift_allocObject();
      v76 = v124;
      v78 = v119;
      v77 = v120;
      v75[2] = v124;
      v75[3] = v78;
      v79 = v102;
      v80 = v104;
      v75[4] = v102;
      v75[5] = v80;
      v81 = v105;
      v75[6] = a14;
      v75[7] = v81;
      v82 = v106;
      v83 = v108;
      v75[8] = v106;
      v75[9] = v83;
      v84 = v75 + v74;
      v85 = v123;
      (v99)(v84, v77, v121);
      *&v126 = v76;
      *(&v126 + 1) = v119;
      v127 = v79;
      v128 = v80;
      v129 = a14;
      v130 = v81;
      v45 = v85;
      v131 = v82;
      v132 = v83;
      type metadata accessor for IntentView.Dispatcher();
      swift_getWitnessTable();
      v54 = sub_1B7A97110();
      v56 = v86;
      v58 = v87;
      (*(v122 + 8))(v97, v121);
    }
  }

  else
  {
    v98 = *(v38 + 32);
    v59 = v101;
    v98(v101, v40, v39);
    (*(v38 + 16))(v120, v59, v39);
    v99 = ((*(v38 + 80) + 80) & ~*(v38 + 80));
    v60 = swift_allocObject();
    v61 = v124;
    v62 = v119;
    *(v60 + 16) = v124;
    *(v60 + 24) = v62;
    v63 = v102;
    v100 = a9;
    v64 = v104;
    *(v60 + 32) = v102;
    *(v60 + 40) = v64;
    v65 = v105;
    *(v60 + 48) = a14;
    *(v60 + 56) = v65;
    v66 = v39;
    v67 = v106;
    v68 = v108;
    *(v60 + 64) = v106;
    *(v60 + 72) = v68;
    v98(&v99[v60], v120, v66);
    *&v126 = v61;
    *(&v126 + 1) = v62;
    v127 = v63;
    v128 = v64;
    v129 = a14;
    v130 = v65;
    a9 = v100;
    v131 = v67;
    v132 = v68;
    type metadata accessor for IntentView.Dispatcher();
    swift_getWitnessTable();
    v54 = sub_1B7A97110();
    v56 = v69;
    v58 = v70;
    (*(v122 + 8))(v101, v121);
    v45 = v123;
  }

  sub_1B79599CC();
  *(a9 + 4) = v54;
  *(a9 + 5) = v56;
  a9[48] = v58 & 1;
  v88 = v103;
  result = (*(*(v124 - 8) + 32))(&a9[v103[22]], v45);
  *&a9[v88[23]] = v113;
  a9[v88[27]] = v111;
  v90 = &a9[v88[24]];
  v91 = v115;
  *v90 = v114;
  *(v90 + 1) = v91;
  v92 = &a9[v88[25]];
  v93 = v117;
  *v92 = v116;
  *(v92 + 1) = v93;
  v94 = &a9[v88[26]];
  v95 = v112;
  *v94 = v118;
  *(v94 + 1) = v95;
  return result;
}

uint64_t sub_1B79D26F4@<X0>(void *a1@<X8>)
{
  sub_1B79DC584();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79D2744()
{
  sub_1B79DC584();

  return sub_1B7A978A0();
}

uint64_t sub_1B79D27A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  type metadata accessor for IntentView.RequestID();
  v10 = sub_1B7A98D90();
  v12 = v11;
  if (v10 == sub_1B7A98D90() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_1B7A9AE80();

  if (v15)
  {
LABEL_9:
    sub_1B7A98D70();
    v17 = v29;
    v18 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v27[3] = v17;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v17);
    sub_1B7A98D70();
    v20 = v26;
    v21 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v24[3] = v20;
    v22 = __swift_allocate_boxed_opaque_existential_1Tm(v24);
    (*(*(v20 - 8) + 16))(v22, v21, v20);
    v16 = sub_1B7A999A0();
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v16 & 1;
  }

LABEL_7:
  v16 = 0;
  return v16 & 1;
}

uint64_t *sub_1B79D2A28()
{
  v1 = *v0;
  v18 = *(*v0 + 112);
  v17 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v2 = sub_1B7A9A100();
  v16 = sub_1B7A9AB60();
  v15 = sub_1B7A96F50();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v15 - v4;
  v6 = *(v16 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v0[2] = 0;
  *(v0 + 24) = 0;
  v11 = *(v1 + 160);
  v12 = *(*(v2 - 8) + 56);
  v12(&v15 - v9, 1, 1, v2, v8);
  sub_1B79D2CFC(v10);
  (*(v3 + 32))(v0 + v11, v5, v15);
  *v13.i64 = (v12)(v10, 1, 1, v2);
  sub_1B79DB870(v10, v13);
  (*(v6 + 8))(v10, v16);
  return v0;
}

uint64_t sub_1B79D2CFC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  sub_1B7A28F54(v6, v2);
  return (*(v3 + 8))(a1, v2);
}

char *sub_1B79D2E20()
{
  if (*(v0 + 2))
  {

    sub_1B7A9A7F0();
  }

  v1 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t sub_1B79D2F40()
{
  sub_1B79D2E20();

  return swift_deallocClassInstance();
}

uint64_t sub_1B79D2F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

void sub_1B79D30FC(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v44 = a7;
  v50 = a5;
  v51 = a6;
  v45 = a1;
  v48 = *v7;
  v10 = v48;
  v49 = a3;
  v11 = *(v48 + 80);
  v12 = *(v11 - 8);
  v47 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v42 - v15;
  v46 = *(v10 + 112);
  swift_getAssociatedTypeWitness();
  v16 = sub_1B7A9A100();
  v17 = sub_1B7A9AB60();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v25 = *a4;
  if ((a2 & 1) != 0 || !v7[2] && (sub_1B79D2F94(), v26 = (*(*(v16 - 8) + 48))(v24, 1, v16), (*(v18 + 8))(v24, v17), v26 == 1) || *(v7 + 24) == 1)
  {
    if (v44)
    {
      *v27.i64 = (*(*(v16 - 8) + 56))(v20, 1, 1, v16, v22);
      sub_1B79DB870(v20, v27);
      (*(v18 + 8))(v20, v17);
    }

    v43 = v7;
    *(v7 + 24) = 0;
    v28 = sub_1B7A9A7E0();
    (*(*(v28 - 8) + 56))(v52, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v53, v45, v11);
    sub_1B7A9A760();
    v45 = v11;
    v30 = v49;

    v32 = v50;
    v31 = v51;
    sub_1B7974B84(v50);

    v33 = sub_1B7A9A750();
    v34 = (*(v12 + 80) + 128) & ~*(v12 + 80);
    v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    *(v36 + 16) = v33;
    *(v36 + 24) = v37;
    *(v36 + 32) = v45;
    v38 = v48;
    *(v36 + 40) = *(v48 + 88);
    v39 = v46;
    *(v36 + 56) = *(v38 + 104);
    *(v36 + 64) = v39;
    *(v36 + 72) = *(v38 + 120);
    *(v36 + 88) = *(v38 + 136);
    *(v36 + 96) = v30;
    *(v36 + 104) = v32;
    *(v36 + 112) = v31;
    *(v36 + 120) = v25;
    (*(v12 + 32))(v36 + v34, v53);
    *(v36 + v35) = v29;

    v40 = sub_1B79A9B34(0, 0, v52, &unk_1B7AA0050, v36);
    v41 = v43;
    sub_1B79C6DFC();
    v41[2] = v40;
  }
}

uint64_t sub_1B79D35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v22;
  *(v8 + 120) = v21;
  *(v8 + 104) = v19;
  *(v8 + 112) = v20;
  *(v8 + 88) = v18;
  *(v8 + 72) = v16;
  *(v8 + 80) = v17;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  v9 = sub_1B7A9A720();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 176) = AssociatedTypeWitness;
  *(v8 + 184) = *(AssociatedTypeWitness - 8);
  *(v8 + 192) = swift_task_alloc();
  v11 = type metadata accessor for _IntentProgress();
  *(v8 + 200) = v11;
  *(v8 + 208) = *(v11 - 8);
  *(v8 + 216) = swift_task_alloc();
  sub_1B7A9A760();
  *(v8 + 224) = sub_1B7A9A750();
  v13 = sub_1B7A9A710();
  *(v8 + 232) = v13;
  *(v8 + 240) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B79D37D4, v13, v12);
}

uint64_t sub_1B79D37D4()
{
  v1 = v0[5];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_1B79D396C;
    v3 = v0[27];

    return v10(v3);
  }

  else
  {
    v0[2] = v0[7];
    v5 = swift_task_alloc();
    v0[32] = v5;
    *v5 = v0;
    v5[1] = sub_1B79D3B20;
    v6 = v0[24];
    v7 = v0[14];
    v8 = v0[10];
    v9 = v0[8];

    return IntentDispatchAction.callAsFunction<A>(_:)(v6, v9, v8, v7);
  }
}

uint64_t sub_1B79D396C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[7];
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v5;
  v6[1] = sub_1B79D3B20;
  v7 = v1[24];
  v8 = v1[14];
  v9 = v1[10];
  v10 = v1[8];

  return IntentDispatchAction.callAsFunction<A>(_:)(v7, v10, v9, v8);
}

uint64_t sub_1B79D3B20()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1B79D4904;
  }

  else
  {
    v5 = sub_1B79D3C34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79D3C34()
{
  v1 = *(v0 + 264);
  sub_1B7A9A820();
  *(v0 + 272) = v1;
  if (v1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *(v0 + 288) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 168);
      v5 = *(v0 + 144);
      v6 = *(v0 + 152);
      v7 = *(v0 + 40);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 216);
        v10 = *(v0 + 152);
        v9 = *(v0 + 160);
        v11 = *(v0 + 144);
        v12 = *(v0 + 40);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v38 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 296) = v15;
        *v15 = v0;
        v16 = sub_1B79D4438;
LABEL_9:
        v15[1] = v16;
        v21 = *(v0 + 216);

        return v38(v21);
      }

      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    }

    else
    {
      v18 = *(v0 + 40);

      if (v18)
      {
        v19 = *(v0 + 40);
        **(v0 + 216) = v1;
        swift_storeEnumTagMultiPayload();
        v20 = v1;
        v38 = (v19 + *v19);
        v15 = swift_task_alloc();
        *(v0 + 304) = v15;
        *v15 = v0;
        v16 = sub_1B79D466C;
        goto LABEL_9;
      }

      v31 = *(v0 + 288);
      v32 = *(v0 + 72);
      v33 = swift_task_alloc();
      v34 = *(v0 + 96);
      v35 = *(v0 + 112);
      v36 = *(v0 + 128);
      *(v33 + 16) = *(v0 + 80);
      *(v33 + 32) = v34;
      *(v33 + 48) = v35;
      *(v33 + 64) = v36;
      *(v33 + 80) = v32;
      *(v33 + 88) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
      sub_1B7A97600();
    }
  }

  else
  {
    v17 = *(v0 + 40);
    if (v17)
    {
      (*(*(v0 + 184) + 16))(*(v0 + 216), *(v0 + 192), *(v0 + 176));
      swift_storeEnumTagMultiPayload();
      v38 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_1B79D4184;
      goto LABEL_9;
    }

    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 176);
    v26 = *(v0 + 72);
    v27 = swift_task_alloc();
    v28 = *(v0 + 96);
    v29 = *(v0 + 112);
    v30 = *(v0 + 128);
    *(v27 + 16) = *(v0 + 80);
    *(v27 + 32) = v28;
    *(v27 + 48) = v29;
    *(v27 + 64) = v30;
    *(v27 + 80) = v26;
    *(v27 + 88) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
    sub_1B7A97600();

    (*(v24 + 8))(v23, v25);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1B79D4184()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D4308, v6, v5);
}

uint64_t sub_1B79D4308()
{

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  v6 = *(v0 + 96);
  v7 = *(v0 + 112);
  v8 = *(v0 + 128);
  *(v5 + 16) = *(v0 + 80);
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 80) = v4;
  *(v5 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
  sub_1B7A97600();

  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B79D4438()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D45BC, v6, v5);
}

uint64_t sub_1B79D45BC()
{

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79D466C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B79D47F0, v6, v5);
}

uint64_t sub_1B79D47F0()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 80) = v2;
  *(v3 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
  sub_1B7A97600();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B79D4904()
{
  v1 = *(v0 + 264);
  *(v0 + 24) = v1;
  *(v0 + 288) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 40);

    (*(v6 + 32))(v4, v3, v5);
    if (v7)
    {
      v8 = *(v0 + 216);
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 144);
      v12 = *(v0 + 40);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v29 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 296) = v15;
      *v15 = v0;
      v16 = sub_1B79D4438;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 216);

      return v29(v20);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  else
  {
    v17 = *(v0 + 40);

    if (v17)
    {
      v18 = *(v0 + 40);
      **(v0 + 216) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v29 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 304) = v15;
      *v15 = v0;
      v16 = sub_1B79D466C;
      goto LABEL_6;
    }

    v22 = *(v0 + 288);
    v23 = *(v0 + 72);
    v24 = swift_task_alloc();
    v25 = *(v0 + 96);
    v26 = *(v0 + 112);
    v27 = *(v0 + 128);
    *(v24 + 16) = *(v0 + 80);
    *(v24 + 32) = v25;
    *(v24 + 48) = v26;
    *(v24 + 64) = v27;
    *(v24 + 80) = v23;
    *(v24 + 88) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
    sub_1B7A97600();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1B79D4CCC@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v12 = a1;
  v13 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B7A9A100();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(v7, v12, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *v9.i64 = (*(*(v3 - 8) + 56))(v7, 0, 1, v3);
    sub_1B79DB870(v7, v9);
    (*(v5 + 8))(v7, v4);
  }

  *v13 = Strong == 0;
  return result;
}

uint64_t sub_1B79D4F0C@<X0>(void *a1@<X1>, BOOL *a2@<X8>)
{
  v12 = a2;
  swift_getAssociatedTypeWitness();
  v3 = sub_1B7A9A100();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - v6);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    (*(*(v3 - 8) + 56))(v7, 0, 1, v3);
    v9 = a1;
    sub_1B79DB870(v7, v10);
    (*(v5 + 8))(v7, v4);
  }

  *v12 = Strong == 0;
  return result;
}

uint64_t IntentView.init(_:what:transaction:configuration:working:failed:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, unsigned __int8 *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v125 = a7;
  v126 = a8;
  v123 = a5;
  v124 = a6;
  v128 = a4;
  v122 = a3;
  v132 = a2;
  v119 = a1;
  v121 = a11;
  v120 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = sub_1B7A9AB60();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v101 - v22;
  v129 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v101 - v26;
  v104 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v101 - v29;
  v131 = *v119;
  v109 = *(v119 + 2);
  LODWORD(v119) = *v128;
  v30 = swift_allocObject();
  *(v30 + 16) = a12;
  *(v30 + 32) = a13;
  *(v30 + 40) = a14;
  *(v30 + 48) = a15;
  *(v30 + 56) = a16;
  *(v30 + 64) = a17;
  *(v30 + 72) = a18;
  v117 = sub_1B79D5AB0();
  v116 = v31;
  v115 = v32;
  v134 = a12;
  v110 = *(&a12 + 1);
  v128 = a13;
  v135 = a13;
  v136 = a14;
  v33 = v106;
  v112 = a14;
  v137 = a15;
  v138 = a16;
  v113 = a16;
  v114 = a17;
  v139 = a17;
  v140 = a18;
  v118 = a18;
  v34 = type metadata accessor for IntentView();
  v35 = a9 + *(v34 + 112);
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v111 = v34;
  v36 = a9 + *(v34 + 116);
  v37 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v38 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v37, v38, v37, WitnessTable);
  v40 = v135;
  *v36 = v134;
  *(v36 + 16) = v40;
  v41 = v129;
  *a9 = v131;
  *(a9 + 16) = v109;
  v109 = a9;
  *(a9 + 24) = 1;
  v133 = a12;
  *&v131 = a15;
  sub_1B7A98F60();
  v42 = *(v41 + 48);
  if (v42(v33, 1, AssociatedTypeWitness) == 1)
  {
    v43 = *(v102 + 8);
    v43(v33, v105);
    v44 = v107;
    v45 = v132;
    sub_1B7A995A0();
    if (v42(v44, 1, AssociatedTypeWitness) == 1)
    {
      v46 = v45;
      v43(v107, v105);
      v47 = swift_allocObject();
      v48 = v133;
      v49 = v110;
      v47[2] = v133;
      v47[3] = v49;
      v50 = v128;
      v51 = v112;
      v47[4] = v128;
      v47[5] = v51;
      v52 = v131;
      v53 = v113;
      v47[6] = v131;
      v47[7] = v53;
      v54 = v114;
      v55 = v118;
      v47[8] = v114;
      v47[9] = v55;
      *&v134 = v48;
      *(&v134 + 1) = v49;
      v135 = v50;
      v136 = v51;
      v137 = v52;
      v138 = v53;
      v139 = v54;
      v140 = v55;
      type metadata accessor for IntentView.Dispatcher();
      swift_getWitnessTable();
      v56 = sub_1B7A97110();
      v58 = v57;
      v60 = v59;
    }

    else
    {
      v75 = *(v41 + 32);
      v106 = (v41 + 32);
      v108 = v75;
      v76 = v103;
      v127 = AssociatedTypeWitness;
      (v75)(v103, v107, AssociatedTypeWitness);
      (*(v41 + 16))(v130, v76, AssociatedTypeWitness);
      v77 = (*(v41 + 80) + 80) & ~*(v41 + 80);
      v78 = swift_allocObject();
      v79 = v133;
      v80 = v110;
      v78[2] = v133;
      v78[3] = v80;
      v81 = v127;
      v82 = v112;
      v78[4] = v128;
      v78[5] = v82;
      v83 = v130;
      v84 = v131;
      v85 = v113;
      v78[6] = v131;
      v78[7] = v85;
      v86 = v114;
      v87 = v118;
      v78[8] = v114;
      v78[9] = v87;
      v88 = v78 + v77;
      v89 = v132;
      (v108)(v88, v83, v81);
      *&v134 = v79;
      *(&v134 + 1) = v80;
      v135 = v128;
      v136 = v82;
      v137 = v84;
      v138 = v85;
      v46 = v89;
      v139 = v86;
      v140 = v87;
      type metadata accessor for IntentView.Dispatcher();
      swift_getWitnessTable();
      v56 = sub_1B7A97110();
      v58 = v90;
      v60 = v91;
      (*(v41 + 8))(v103, v127);
    }
  }

  else
  {
    v107 = *(v41 + 32);
    v61 = v108;
    v127 = AssociatedTypeWitness;
    (v107)(v108, v33, AssociatedTypeWitness);
    (*(v41 + 16))(v130, v61, AssociatedTypeWitness);
    v106 = ((*(v41 + 80) + 80) & ~*(v41 + 80));
    v62 = swift_allocObject();
    v63 = v133;
    v64 = v110;
    *(v62 + 16) = v133;
    *(v62 + 24) = v64;
    v65 = v127;
    v66 = v128;
    v67 = v130;
    v68 = v131;
    v69 = v112;
    *(v62 + 32) = v128;
    *(v62 + 40) = v69;
    v70 = v113;
    *(v62 + 48) = v68;
    *(v62 + 56) = v70;
    v71 = v114;
    v72 = v118;
    *(v62 + 64) = v114;
    *(v62 + 72) = v72;
    (v107)(&v106[v62], v67, v65);
    *&v134 = v63;
    *(&v134 + 1) = v64;
    v135 = v66;
    v136 = v69;
    v137 = v68;
    v138 = v70;
    v139 = v71;
    v140 = v72;
    type metadata accessor for IntentView.Dispatcher();
    swift_getWitnessTable();
    v56 = sub_1B7A97110();
    v58 = v73;
    v60 = v74;
    (*(v129 + 8))(v108, v127);
    v46 = v132;
  }

  sub_1B79599CC();
  v92 = v109;
  *(v109 + 32) = v56;
  *(v92 + 40) = v58;
  *(v92 + 48) = v60 & 1;
  v93 = v111;
  result = (*(*(v133 - 8) + 32))(v92 + v111[22], v46);
  *(v92 + v93[23]) = v122;
  *(v92 + v93[27]) = v119;
  v95 = (v92 + v93[24]);
  v96 = v124;
  *v95 = v123;
  v95[1] = v96;
  v97 = (v92 + v93[25]);
  v98 = v126;
  *v97 = v125;
  v97[1] = v98;
  v99 = (v92 + v93[26]);
  v100 = v121;
  *v99 = v120;
  v99[1] = v100;
  return result;
}

uint64_t sub_1B79D5AB0()
{
  type metadata accessor for IntentView.Dispatcher();
  swift_getWitnessTable();
  return sub_1B7A97110();
}

uint64_t *sub_1B79D5B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  type metadata accessor for IntentView.Dispatcher();
  swift_allocObject();
  return sub_1B79DBC70(a1, a10);
}

uint64_t sub_1B79D5BA8()
{
  if (*(v0 + 24))
  {

    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780);
    MEMORY[0x1B8CA9A40](v1);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788);
    sub_1B7A986D0();
  }
}

uint64_t *sub_1B79D5C5C()
{
  type metadata accessor for IntentView.Dispatcher();
  swift_allocObject();
  return sub_1B79D2A28();
}

uint64_t *sub_1B79D5CF8(unsigned __int8 a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1B79D5B3C(v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t *sub_1B79D5DE0()
{
  type metadata accessor for IntentView.Dispatcher();
  swift_allocObject();
  return sub_1B79D2A28();
}

uint64_t objectdestroy_5Tm_1()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 80) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B79D5ED4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = type metadata accessor for IntentView.Dispatcher();
  WitnessTable = swift_getWitnessTable();
  return a2(v4, v5, v6, v7, WitnessTable);
}

uint64_t sub_1B79D5F6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 112);
  if (*(v9 + 8) == 1)
  {
    *a2 = *v9;
  }

  else
  {

    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_1B79D60F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  if (!v6)
  {
    return 0;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = v3;
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 80) = v6;
  *(v4 + 88) = v7;
  return &unk_1B7AA0060;
}

uint64_t IntentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = *(a1 + 16);
  v127 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v126 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = *(v5 + 72);
  *&v11 = v3;
  *(&v11 + 1) = v6;
  v167 = *(v5 + 48);
  v8 = v167;
  v168 = v7;
  v12 = v7;
  v169 = v9;
  v170 = v10;
  v13 = v9;
  v14 = v10;
  v151 = *(v5 + 32);
  v165 = v11;
  v166 = v151;
  v15 = type metadata accessor for IntentView.RequestID();
  v128 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v105 - v16;
  v149 = *(a1 - 8);
  v146 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v105 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = AssociatedTypeWitness;
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v24 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v134 = &v105 - v25;
  v26 = sub_1B7A98E50();
  v164 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  *&v165 = v6;
  *(&v165 + 1) = v26;
  *&v166 = v12;
  *(&v166 + 1) = WitnessTable;
  v28 = sub_1B7A987A0();
  v107 = v28;
  v106 = swift_getWitnessTable();
  *&v165 = AssociatedTypeWitness;
  *(&v165 + 1) = v28;
  v166 = v151;
  v167 = v106;
  v168 = v13;
  v169 = v14;
  v29 = type metadata accessor for _ResultView();
  v110 = v29;
  v121 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v136 = &v105 - v30;
  v31 = swift_getWitnessTable();
  v112 = v31;
  v113 = v15;
  v111 = swift_getWitnessTable();
  *&v165 = v29;
  *(&v165 + 1) = v15;
  *&v166 = v31;
  *(&v166 + 1) = v111;
  v120 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v123 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v137 = &v105 - v32;
  v114 = sub_1B7A97590();
  v124 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v105 - v33;
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v118 = sub_1B7A97DF0();
  v119 = sub_1B7A97590();
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v116 = &v105 - v36;
  v37 = v147;
  sub_1B79D5ED4(a1, MEMORY[0x1E697DD38]);
  v152 = v3;
  v144 = v6;
  v153 = v6;
  v154 = v151;
  v148 = v8;
  v155 = v8;
  v156 = v12;
  v145 = v12;
  v143 = v13;
  v157 = v13;
  v158 = v14;
  v150 = v14;
  swift_getKeyPath();
  *&v165 = v3;
  *(&v165 + 1) = v6;
  v166 = v151;
  v167 = v8;
  v168 = v12;
  v169 = v13;
  v170 = v14;
  type metadata accessor for IntentView.Dispatcher();
  swift_getWitnessTable();
  sub_1B7A974B0();

  v38 = v149;
  v142 = *(v149 + 16);
  v139 = v149 + 16;
  v39 = v132;
  v40 = v37;
  v41 = a1;
  v142(v132, v37, a1);
  v141 = *(v38 + 80);
  v42 = v38;
  v43 = (v141 + 80) & ~v141;
  v44 = swift_allocObject();
  v138 = v3;
  v45 = v144;
  *(v44 + 16) = v3;
  *(v44 + 24) = v45;
  *(v44 + 32) = v151;
  v46 = v145;
  *(v44 + 48) = v148;
  *(v44 + 56) = v46;
  v47 = v143;
  v48 = v150;
  *(v44 + 64) = v143;
  *(v44 + 72) = v48;
  v49 = *(v42 + 32);
  v149 = v42 + 32;
  v140 = v49;
  v130 = v41;
  v49(v44 + v43, v39, v41);
  v50 = v142;
  v142(v133, v40, v41);
  v51 = v43;
  v131 = v43;
  v52 = swift_allocObject();
  *(v52 + 16) = v3;
  *(v52 + 24) = v45;
  *(v52 + 32) = v151;
  v53 = v148;
  v54 = v145;
  *(v52 + 48) = v148;
  *(v52 + 56) = v54;
  v55 = v150;
  *(v52 + 64) = v47;
  *(v52 + 72) = v55;
  v56 = v130;
  v57 = v140;
  v140(v52 + v51, v133, v130);
  v50(v135, v147, v56);
  v58 = v131;
  v59 = swift_allocObject();
  v60 = v144;
  *(v59 + 16) = v138;
  *(v59 + 24) = v60;
  *(v59 + 32) = v151;
  *(v59 + 48) = v53;
  *(v59 + 56) = v54;
  v61 = v150;
  *(v59 + 64) = v143;
  *(v59 + 72) = v61;
  v57(v59 + v58, v135, v56);
  sub_1B7A55184(v134, sub_1B79D736C, v44, sub_1B79D76CC, v52, sub_1B79D7E6C, v59, v136);
  v62 = v147;
  sub_1B79D5BA8();
  v63 = v163;
  v64 = v127;
  v65 = v126;
  v66 = v138;
  (*(v127 + 16))(v126, v62 + *(v56 + 88), v138);
  v67 = v125;
  *v125 = v63;
  v68 = v144;
  *&v165 = v66;
  *(&v165 + 1) = v144;
  v166 = v151;
  v69 = v148;
  v70 = v145;
  v167 = v148;
  v168 = v145;
  v71 = v143;
  v169 = v143;
  v170 = v150;
  v72 = type metadata accessor for IntentView.RequestID();
  v73 = v65;
  v74 = v66;
  (*(v64 + 32))(&v67[*(v72 + 84)], v73, v66);
  v75 = v132;
  v76 = v62;
  v77 = v130;
  v142(v132, v76, v130);
  v78 = v131;
  v79 = swift_allocObject();
  *(v79 + 16) = v74;
  *(v79 + 24) = v68;
  *(v79 + 32) = v151;
  *(v79 + 48) = v69;
  *(v79 + 56) = v70;
  v80 = v150;
  *(v79 + 64) = v71;
  *(v79 + 72) = v80;
  v81 = v75;
  v140(v79 + v78, v75, v77);
  v82 = v110;
  v83 = v113;
  v84 = v112;
  v85 = v111;
  v86 = v136;
  sub_1B7A984C0();

  (*(v128 + 8))(v67, v83);
  (*(v121 + 8))(v86, v82);
  v142(v81, v147, v77);
  v87 = swift_allocObject();
  v88 = v138;
  v89 = v144;
  *(v87 + 16) = v138;
  *(v87 + 24) = v89;
  *(v87 + 32) = v151;
  v90 = v145;
  *(v87 + 48) = v148;
  *(v87 + 56) = v90;
  v91 = v150;
  *(v87 + 64) = v143;
  *(v87 + 72) = v91;
  v140(v87 + v78, v81, v77);
  *&v165 = v82;
  *(&v165 + 1) = v83;
  *&v166 = v84;
  *(&v166 + 1) = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v115;
  v94 = OpaqueTypeMetadata2;
  v95 = v137;
  sub_1B7A984A0();

  (*(v123 + 8))(v95, v94);
  v161 = OpaqueTypeConformance2;
  v162 = MEMORY[0x1E69805D0];
  v96 = v114;
  v97 = swift_getWitnessTable();
  v98 = v109;
  sub_1B79E3830(v88, 0, 0, v96, v88, v97, v148);
  (*(v124 + 8))(v93, v96);
  v99 = swift_getWitnessTable();
  v159 = v97;
  v160 = v99;
  v100 = v119;
  v101 = swift_getWitnessTable();
  v102 = v116;
  sub_1B7957EE0(v98, v100, v101);
  v103 = *(v122 + 8);
  v103(v98, v100);
  sub_1B7957EE0(v102, v100, v101);
  return (v103)(v102, v100);
}

uint64_t sub_1B79D71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v23;
  v28[7] = v24;
  v25 = type metadata accessor for IntentView();
  (*(a1 + *(v25 + 96)))();
  sub_1B7957EE0(v13, a4, a8);
  v26 = *(v11 + 8);
  v26(v13, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v26)(v16, a4);
}

uint64_t sub_1B79D7310(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1B79D7360(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B7974C44(result);
  }

  else
  {
  }
}

uint64_t sub_1B79D736C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(type metadata accessor for IntentView() - 8);
  return sub_1B79D71AC(v0 + ((*(v8 + 80) + 80) & ~*(v8 + 80)), v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B79D743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v42 = a8;
  v39 = a4;
  v40 = a5;
  v43 = a1;
  v44 = a9;
  v37 = a3;
  v38 = a10;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v52 = a11;
  v13 = type metadata accessor for IntentView();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v26 = (a2 + *(v25 + 100));
  v27 = *v26;
  v35 = v26[1];
  v36 = v27;
  (*(v14 + 16))(v16, a2, v13, v22);
  v28 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v31 = v39;
  v30 = v40;
  *(v29 + 2) = v37;
  *(v29 + 3) = v31;
  *(v29 + 4) = v30;
  *(v29 + 5) = a6;
  v32 = v42;
  *(v29 + 6) = v41;
  *(v29 + 7) = v32;
  *(v29 + 8) = v38;
  *(v29 + 9) = a11;
  (*(v14 + 32))(&v29[v28], v16, v13);
  v36(v43, sub_1B79DC284, v29);

  sub_1B7957EE0(v20, a6, a11);
  v33 = *(v17 + 8);
  v33(v20, a6);
  sub_1B7957EE0(v24, a6, a11);
  return (v33)(v24, a6);
}

uint64_t sub_1B79D76CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for IntentView() - 8);
  return sub_1B79D743C(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_1B79D77A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v33 = a5;
  v34 = a6;
  v32 = a9;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v13 = type metadata accessor for IntentView();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_1B7A9A7E0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a1, v13);
  sub_1B7A9A760();
  v21 = sub_1B7A9A750();
  v22 = (*(v14 + 80) + 96) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = a2;
  *(v23 + 5) = a3;
  v25 = v33;
  v26 = v34;
  *(v23 + 6) = a4;
  *(v23 + 7) = v25;
  v27 = v35;
  v28 = v36;
  *(v23 + 8) = v26;
  *(v23 + 9) = v27;
  v29 = v32;
  *(v23 + 10) = v28;
  *(v23 + 11) = v29;
  (*(v14 + 32))(&v23[v22], v16, v13);
  sub_1B79A9B34(0, 0, v19, &unk_1B7AA0088, v23);
}

uint64_t sub_1B79D79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1B7A9A760();
  *(v4 + 56) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79D7A80, v6, v5);
}

uint64_t sub_1B79D7A80()
{
  v1 = v0[6];

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v0[2] = *v1;
  v0[3] = v3;
  if (v5)
  {
    v0[4] = v4;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47780);
    MEMORY[0x1B8CA9A40](v6);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47788);
    sub_1B7A986D0();
  }

  v7 = v0[5] + 1;
  v0[5] = v7;
  sub_1B79D1CE8(v7, v2, v3, v4, v5);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B79D7B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v6 = *(a3 - 8);
  v34 = a1;
  v35 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v43 = v13;
  v44 = v14;
  v15 = v14;
  v33 = v14;
  v45 = v17;
  v46 = v16;
  v18 = type metadata accessor for IntentView();
  v19 = sub_1B7A98E50();
  v38 = MEMORY[0x1E69E76E8];
  WitnessTable = swift_getWitnessTable();
  v39 = a3;
  v40 = v19;
  v41 = v15;
  v42 = WitnessTable;
  v20 = sub_1B7A987A0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v31 - v26;
  (*(a2 + *(v18 + 104)))(v34, v25);
  sub_1B79D5BA8();
  sub_1B7A98E60();
  v37 = v39;
  sub_1B7A98390();
  (*(v35 + 8))(v8, a3);
  v28 = swift_getWitnessTable();
  sub_1B7957EE0(v23, v20, v28);
  v29 = *(v21 + 8);
  v29(v23, v20);
  sub_1B7957EE0(v27, v20, v28);
  return (v29)(v27, v20);
}

uint64_t sub_1B79D7E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(type metadata accessor for IntentView() - 8);
  return sub_1B79D7B9C(a1, v2 + ((*(v5 + 80) + 80) & ~*(v5 + 80)), v4, a2);
}

uint64_t sub_1B79D7F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v18 = sub_1B7A98C30();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v41 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = a13;
  v42[0] = a2;
  v42[1] = a3;
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = v37;
  v42[5] = v38;
  v42[6] = v39;
  v42[7] = a9;
  v24 = type metadata accessor for IntentView();
  sub_1B79D5ED4(v24, MEMORY[0x1E697DD30]);
  (*(v20 + 16))(v23, a1 + v24[22], a2);
  v25 = *(a1 + v24[23]);
  sub_1B79D5F6C(v24, v42);
  v26 = v42[0];
  if (!v42[0])
  {
    v39 = a12;
    sub_1B7A99300();
    sub_1B7A992B0();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
    v28 = swift_allocObject();
    v28[3] = 0;
    v28[4] = 0;
    v28[2] = &unk_1B7AA7E08;
    v29 = v34;
    MEMORY[0x1B8CA9E30](v27, v39, v28, v27);
    v26 = sub_1B7A992C0();

    (*(v35 + 8))(v29, v36);
  }

  v42[0] = v26;
  v30 = sub_1B79D60F4(v24);
  sub_1B79D30FC(v23, v40 & 1, v25, v42, v30, v31, (*(a1 + v24[27]) & 1) == 0);
  sub_1B7974C44(v30);

  (*(v20 + 8))(v23, a2);
}

uint64_t sub_1B79D831C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v11 = v4[6];
  v10 = v4[7];
  v12 = v4[8];
  v13 = v4[9];
  v14 = *(type metadata accessor for IntentView() - 8);
  return sub_1B79D7F68(v4 + ((*(v14 + 80) + 80) & ~*(v14 + 80)), v6, v7, v8, v9, v11, v10, v12, v13, a1, a2, a3, a4);
}

uint64_t IntentViewConfiguration.RefreshStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t IntentView.init(_:what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v28 = a13;
  v29 = a12;
  v27 = a14;
  v20 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v34 = *v23;
  v35 = v24;
  (*(v20 + 16))(v22);
  v33 = 0;
  *(&v26 + 1) = v29;
  *&v26 = a11;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v22, a3, &v33, a4, v30, v31, v32, a9, a8, a10, v26, *(&v29 + 1), v28, *(&v28 + 1), v27, *(&v27 + 1), a15);
  return (*(v20 + 8))(a2, a11);
}

uint64_t IntentView.init(_:what:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v31 = a5;
  v32 = a6;
  v29 = a12;
  v30 = a11;
  v28 = a13;
  v20 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v34 = *v23;
  v35 = v24;
  (*(v20 + 16))(v22);
  sub_1B7A98A40();
  v25 = sub_1B7A97180();
  v33 = 0;
  *(&v27 + 1) = v30;
  *&v27 = a10;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v22, v25, &v33, a3, a4, v31, v32, a9, a7, a8, v27, *(&v30 + 1), v29, *(&v29 + 1), v28, *(&v28 + 1), a14);
  return (*(v20 + 8))(a2, a10);
}

uint64_t IntentView.init<>(_:what:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  v27 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a9;
  v25 = a2;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[1];
  v16 = v14[2];
  *&v34 = *v14;
  *(&v34 + 1) = v15;
  v28 = v34;
  v35 = v16;
  (*(v10 + 16))(v13, v11);

  sub_1B7A98A40();
  v24 = sub_1B7A97180();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v19 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v20 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v33 = 0;
  *&v22 = a5;
  *(&v22 + 1) = v29;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v13, v24, &v33, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v32, v31, v30, v22, v17, v18, v27, v26, v19, v20);
  (*(v10 + 8))(v25, a5);
}

uint64_t IntentView.init<>(_:what:placeholder:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a9;
  v56 = a5;
  v58 = a4;
  v52 = a3;
  v53 = a2;
  v45 = a10;
  v46 = a7;
  v47 = a8;
  swift_getAssociatedTypeWitness();
  v15 = sub_1B7A9AB60();
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v54 = *(a6 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v23;
  v24 = *a1;
  v57 = a1[1];
  v25 = a1[2];
  *&v62 = v24;
  *(&v62 + 1) = v57;
  v50 = v24;
  v63 = v25;
  v27 = *(v26 + 16);
  v29 = v28;
  v48 = v28;
  v27(v23, a2, v21);
  (*(v16 + 16))(v19, a3, v15);
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v29;
  v33 = v45;
  v32 = v46;
  *(v31 + 3) = v46;
  *(v31 + 4) = a8;
  *(v31 + 5) = v33;
  (*(v16 + 32))(&v31[v30], v19, v15);
  v34 = &v31[(v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8];
  v35 = v56;
  *v34 = v58;
  *(v34 + 1) = v35;

  sub_1B7A98A40();
  v44 = sub_1B7A97180();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v36 = sub_1B7A97B40();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v38 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v59 = v33;
  v60 = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v61 = 0;
  *(&v43 + 1) = v32;
  v41 = v48;
  *&v43 = v48;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v62, v51, v44, &v61, sub_1B79DC5F0, v31, sub_1B79AF2C8, 0, v55, v58, v56, v43, v36, v37, v47, v33, WitnessTable, v40);
  (*(v16 + 8))(v52, v49);
  (*(v54 + 8))(v53, v41);
}

uint64_t IntentView.init<>(_:what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a5;
  v30 = a4;
  v31 = a9;
  v32 = a3;
  v26 = a2;
  v11 = *(a6 - 8);
  v25 = a10;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[1];
  v17 = v15[2];
  *&v34 = *v15;
  *(&v34 + 1) = v16;
  v35 = v17;
  (*(v11 + 16))(v14, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v19 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v20 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v33 = 0;

  *&v22 = a6;
  *(&v22 + 1) = v28;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v34, v14, v32, &v33, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v31, v30, v29, v22, v24, v18, v27, v25, v19, v20);
  (*(v11 + 8))(v26, a6);
}

uint64_t IntentView.init<>(_:what:placeholder:transaction:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v52 = a6;
  v47 = a3;
  v48 = a2;
  v50 = a9;
  v43 = a11;
  v54 = a10;
  v55 = a5;
  swift_getAssociatedTypeWitness();
  v16 = sub_1B7A9AB60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v49 = *(a7 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v24;
  v25 = *a1;
  v53 = a1[1];
  v26 = a1[2];
  *&v59 = v25;
  *(&v59 + 1) = v53;
  v45 = v25;
  v60 = v26;
  (*(v27 + 16))(v24, a2, a7, v22);
  v58 = 0;
  v28 = *(v17 + 16);
  v44 = v16;
  v28(v20, a3, v16);
  v29 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = a7;
  *(v31 + 3) = a8;
  v32 = v43;
  *(v31 + 4) = v54;
  *(v31 + 5) = v32;
  (*(v17 + 32))(&v31[v29], v20, v16);
  v33 = &v31[v30];
  v34 = v52;
  *v33 = v55;
  *(v33 + 1) = v34;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v35 = a8;
  v36 = sub_1B7A97B40();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v38 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v56 = v32;
  v57 = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  *(&v42 + 1) = v35;
  *&v42 = a7;
  IntentView.init(_:what:transaction:configuration:working:failed:content:)(&v59, v46, v51, &v58, sub_1B79DC5F0, v31, sub_1B79AF2C8, 0, v50, v55, v52, v42, v36, v37, v54, v32, WitnessTable, v40);
  (*(v17 + 8))(v47, v44);
  (*(v49 + 8))(v48, a7);
}

uint64_t sub_1B79D9480@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v37 = a5;
  v30 = a3;
  v31 = a2;
  v33 = a1;
  v38 = a6;
  v32 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1B7A9AB60();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v35 = sub_1B7A97B40();
  v36 = *(v35 - 8);
  v21 = MEMORY[0x1EEE9AC00](v35);
  v23 = &v30 - v22;
  (*(v14 + 16))(v16, v33, v13, v21);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v13);
    LOBYTE(v41) = 0;
    sub_1B7A986C0();
    BYTE8(v42) = v47[0];
    *&v43 = *(&v47[0] + 1);
    *(&v43 + 1) = swift_getKeyPath();
    LOBYTE(v44) = 0;
    *(&v44 + 1) = swift_getKeyPath();
    LOBYTE(v45) = 0;
    *(&v45 + 1) = swift_getKeyPath();
    v46 = 0;
    *&v41 = sub_1B795AAEC;
    *(&v41 + 1) = 0;
    LOBYTE(v42) = 1;
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    v24 = v37;
    sub_1B7959A28(&v41, a4, v34);
    v47[2] = v43;
    v47[3] = v44;
    v47[4] = v45;
    v48 = v46;
    v47[0] = v41;
    v47[1] = v42;
    sub_1B79DBA88(v47);
  }

  else
  {
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    v31(v20);
    v24 = v37;
    sub_1B7957EE0(v8, a4, v37);
    v25 = *(v32 + 8);
    v25(v8, a4);
    sub_1B7957EE0(v11, a4, v24);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    sub_1B79B5878(v8, a4);
    v25(v8, a4);
    v25(v11, a4);
    (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  v26 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v39 = v24;
  v40 = v26;
  v27 = v35;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v23, v27, WitnessTable);
  return (*(v36 + 8))(v23, v27);
}

uint64_t IntentView.init(what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v27 = a12;
  v28 = a11;
  v26 = a13;
  v20 = *(a10 - 8);
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, a10, v21);
  v32 = 0;
  *(&v25 + 1) = v28;
  *&v25 = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v23, a2, &v32, a3, a4, v29, v30, v31, a9, a8, v25, *(&v28 + 1), v27, *(&v27 + 1), v26, *(&v26 + 1), a14);
  return (*(v20 + 8))(a1, a10);
}

uint64_t IntentView.init(what:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = a7;
  v28 = a3;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v25 = a9;
  v26 = a2;
  v24 = a1;
  v17 = *(a8 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  sub_1B7A98A40();
  v23 = sub_1B7A97180();
  sub_1B79AD710(&v33);
  v32 = v33;
  *&v22 = a8;
  *(&v22 + 1) = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v20, v23, &v32, v26, v28, v29, v30, v31, v25, v27, v22, a11, a12, a13, a14, a15, a16);
  return (*(v17 + 8))(v24, a8);
}

uint64_t IntentView.init<>(what:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a3;
  v27 = a8;
  v28 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  sub_1B7A98A40();
  v22 = sub_1B7A97180();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v16 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v17 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v18 = v23;
  v19 = v24;
  sub_1B79AD710(&v29);
  *&v21 = a4;
  *(&v21 + 1) = v18;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v13, v22, &v29, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v28, v27, v26, v21, v14, v15, v19, a7, v16, v17);
  return (*(v10 + 8))(v25, a4);
}

uint64_t IntentView.init<>(what:placeholder:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v49 = a4;
  v50 = a3;
  v45 = a2;
  v46 = a1;
  v48 = a9;
  v42 = a7;
  swift_getAssociatedTypeWitness();
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v47 = *(a5 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v44 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = *(v15 + 16);
  v43 = v14;
  v23(v18, a2, v14);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  *(v26 + 4) = a7;
  *(v26 + 5) = a8;
  v27 = a8;
  (*(v15 + 32))(&v26[v24], v18, v14);
  v28 = &v26[v25];
  v29 = v49;
  *v28 = v50;
  *(v28 + 1) = v29;

  sub_1B7A98A40();
  v41 = sub_1B7A97180();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v30 = a6;
  v31 = sub_1B7A97B40();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v33 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v34 = v27;
  v51 = v27;
  v52 = v33;
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v37 = v42;
  sub_1B79AD710(&v53);
  *&v39 = a5;
  *(&v39 + 1) = v30;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v44, v41, &v53, sub_1B79DC5F0, v26, sub_1B79AF2C8, 0, v50, v48, v49, v39, v31, v32, v37, v34, WitnessTable, v36);
  (*(v15 + 8))(v45, v43);
  return (*(v47 + 8))(v46, a5);
}

uint64_t IntentView.init<>(what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a1;
  v26 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a9;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v17 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v18 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  v19 = v23;
  v20 = v24;
  sub_1B79AD710(&v30);
  *&v22 = a5;
  *(&v22 + 1) = v19;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v14, v28, &v30, j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, v29, v27, v26, v22, v15, v16, v20, a8, v17, v18);
  return (*(v11 + 8))(v25, a5);
}

uint64_t IntentView.init<>(what:placeholder:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v44 = a5;
  v45 = a4;
  v42 = a9;
  v43 = a3;
  v39 = a2;
  v40 = a1;
  swift_getAssociatedTypeWitness();
  v14 = sub_1B7A9AB60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v41 = *(a6 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = *(v15 + 16);
  v37 = v14;
  v23(v18, a2, v14);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  *(v26 + 4) = a8;
  *(v26 + 5) = a10;
  (*(v15 + 32))(&v26[v24], v18, v14);
  v27 = &v26[v25];
  v28 = v44;
  *v27 = v45;
  *(v27 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46C08);
  v29 = sub_1B7A97B40();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10);
  v31 = sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  v46 = a10;
  v47 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  sub_1B79AD710(&v48);

  *&v36 = a6;
  *(&v36 + 1) = a7;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v38, v43, &v48, sub_1B79DAAE4, v26, sub_1B79AF2C8, 0, v45, v42, v34, v36, v29, v30, a8, a10, WitnessTable, v33);
  (*(v15 + 8))(v39, v37);
  return (*(v41 + 8))(v40, a6);
}

uint64_t objectdestroy_42Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1B7A9AB60() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B79DAAE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1B7A9AB60() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B79D9480(v1 + v6, *v7, *(v7 + 8), v3, v4, a1);
}

unint64_t sub_1B79DAC18()
{
  result = qword_1EBA475F0[0];
  if (!qword_1EBA475F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA475F0);
  }

  return result;
}

void sub_1B79DAC74()
{
  sub_1B79DB1B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntentView.Dispatcher();
    swift_getWitnessTable();
    sub_1B7A97140();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1B7958DD8();
        if (v3 <= 0x3F)
        {
          sub_1B79DB208();
          if (v4 <= 0x3F)
          {
            type metadata accessor for _IntentProgress();
            swift_getFunctionTypeMetadata1();
            sub_1B7A9AB60();
            sub_1B7A970E0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B79DAE04(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + ((v6 + 49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9), !*(a1 + v9)))
  {
LABEL_28:
    v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 49) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1B79DAF98(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((((v10 + ((v9 + 49) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v11) = 0;
      }

      else if (v15)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 49) & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((((v10 + ((v9 + 49) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *(a1 + v11) = v17;
      }

      else
      {
        *(a1 + v11) = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    *(a1 + v11) = v17;
  }
}

void sub_1B79DB1B8()
{
  if (!qword_1EBA47678[0])
  {
    v0 = type metadata accessor for _StateOrBinding();
    if (!v1)
    {
      atomic_store(v0, qword_1EBA47678);
    }
  }
}

void sub_1B79DB208()
{
  if (!qword_1EBA47278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA47280);
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA47278);
    }
  }
}

uint64_t sub_1B79DB26C()
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  result = sub_1B7A96F50();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79DB374()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B79DB3F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B79DB554(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_1B79DB778(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D338;

  return v5();
}

uint64_t sub_1B79DB870(uint64_t a1, int64x2_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  a2.i64[0] = v6;
  v19 = a2;
  v7 = v4[14];
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v8 = sub_1B7A9AB60();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18.i8[-v11];
  v13 = v4[13];
  v14 = v4[17];
  v10.i64[0] = v7;
  v18 = *(v5 + 11);
  v15 = *(v5 + 6);
  v26 = vzip1q_s64(v19, v18);
  v27 = v15;
  v19 = *(v5 + 15);
  v16 = *(v5 + 8);
  v28 = vzip1q_s64(v10, v19);
  v29 = v16;
  swift_getKeyPath();
  v20 = v6;
  v21 = v18;
  v22 = v13;
  v23 = v7;
  v24 = v19;
  v25 = v14;
  swift_getKeyPath();
  (*(v9 + 16))(v12, a1, v8);

  return sub_1B7A96F30();
}

uint64_t sub_1B79DBA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79DBAF0(uint64_t a1)
{
  v3 = v1[12];
  v4 = (*(*(v1[4] - 8) + 80) + 128) & ~*(*(v1[4] - 8) + 80);
  v10 = v1[3];
  v11 = v1[2];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79D35C0(a1, v11, v10, v3, v5, v6, v7, v1 + v4);
}

uint64_t *sub_1B79DBC70(uint64_t a1, int a2)
{
  v24 = a2;
  v23 = a1;
  v3 = *v2;
  v20 = *(*v2 + 112);
  v19 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1B7A9A100();
  v21 = sub_1B7A9AB60();
  v18 = sub_1B7A96F50();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17 - v6;
  v8 = *(v21 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v2[2] = 0;
  *(v2 + 24) = 0;
  v13 = *(v3 + 160);
  v14 = *(*(v4 - 8) + 56);
  v14(&v17 - v11, 1, 1, v4, v10);
  sub_1B79D2CFC(v12);
  (*(v5 + 32))(v2 + v13, v7, v18);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, v23);
  swift_storeEnumTagMultiPayload();
  *v15.i64 = (v14)(v12, 0, 1, v4);
  sub_1B79DB870(v12, v15);
  (*(v8 + 8))(v12, v21);
  *(v2 + 24) = v24;
  return v2;
}

void sub_1B79DC008()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  JUMPOUT(0x1B79DB778);
}

uint64_t objectdestroy_27Tm()
{
  v4 = *(v0 + 16);
  v1 = (type metadata accessor for IntentView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 80) & ~*(*v1 + 80));
  sub_1B79D7310(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  sub_1B79599CC();
  (*(*(v4 - 8) + 8))(v2 + v1[24]);

  j__swift_release();
  sub_1B79D7360(*(v2 + v1[31]), *(v2 + v1[31] + 8), *(v2 + v1[31] + 16));
  return swift_deallocObject();
}

uint64_t sub_1B79DC284()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(type metadata accessor for IntentView() - 8);
  return sub_1B79D77A0(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B79DC34C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[7];
  v16 = v1[6];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v3[2] = v1[4];
  v3[3] = v4;
  v3[4] = v16;
  v3[5] = v5;
  v3[6] = v7;
  v3[7] = v6;
  v3[8] = v8;
  v3[9] = v9;
  v10 = *(type metadata accessor for IntentView() - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_1B79DC490;

  return sub_1B79D79E4(a1, v12, v13, v1 + v11);
}

uint64_t sub_1B79DC490()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B79DC584()
{
  result = qword_1EBA47790[0];
  if (!qword_1EBA47790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47790);
  }

  return result;
}

uint64_t sub_1B79DC5FC()
{
  sub_1B798A858();
  sub_1B7A97890();
  return v1;
}

uint64_t View._shelfGridPrefersEagerLayout(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

unint64_t sub_1B79DC6AC()
{
  result = qword_1EBA45FF0;
  if (!qword_1EBA45FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FF0);
  }

  return result;
}

uint64_t sub_1B79DC72C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B79A619C;

  return v6(a1);
}

uint64_t FlowActionImplementation.init(following:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v7[1] = *a1;
  v7[2] = v3;
  v7[3] = v4;
  type metadata accessor for FlowAuthority();
  v5 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v7, v5);

  *a2 = v7[0];
  return result;
}

uint64_t sub_1B79DC8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[17] = AssociatedTypeWitness;
  v7[18] = *(AssociatedTypeWitness - 8);
  v7[19] = swift_task_alloc();
  v9 = sub_1B7A96C20();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = type metadata accessor for FlowAlertAuthority.Presented(0);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v10 = sub_1B7A9A280();
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();
  sub_1B7A9A760();
  v7[31] = sub_1B7A9A750();
  v12 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79DCAE4, v12, v11);
}

uint64_t sub_1B79DCAE4()
{

  v1 = sub_1B7A99330();
  v3 = v2;
  if (sub_1B7A99AC0() == v1 && v4 == v3)
  {

LABEL_8:
    v7 = *(v0 + 88);
    v8 = *(v0 + 80);
    v64 = *(v0 + 120);
    v67 = *(v0 + 104);

    *(v0 + 48) = v67;
    *(v0 + 64) = v64;
    v9 = type metadata accessor for FlowActionImplementation();
    v10 = v7;
    v11 = 1;
LABEL_9:
    sub_1B79DD644(v10, v11, v9);
LABEL_10:
    v12 = *MEMORY[0x1E69AB010];
    v13 = sub_1B7A98FA0();
    v14 = *(*(v13 - 8) + 104);
    v15 = v8;
    v16 = v12;
LABEL_11:
    v14(v15, v16, v13);
    goto LABEL_12;
  }

  v6 = sub_1B7A9AE80();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1B7A99AB0() == v1 && v19 == v3)
  {

LABEL_19:
    v21 = *(v0 + 88);
    v8 = *(v0 + 80);
    v65 = *(v0 + 120);
    v68 = *(v0 + 104);

    *(v0 + 16) = v68;
    *(v0 + 32) = v65;
    v9 = type metadata accessor for FlowActionImplementation();
    v10 = v21;
    v11 = 0;
    goto LABEL_9;
  }

  v20 = sub_1B7A9AE80();

  if (v20)
  {
    goto LABEL_19;
  }

  if (sub_1B7A99A70() == v1 && v22 == v3)
  {

LABEL_24:
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);

    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v25 + 8))(v24, v26);
LABEL_25:
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = type metadata accessor for FlowAuthority();
    sub_1B7A2A358(v29);
    sub_1B7A88EE8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    sub_1B79DE0EC(v28, v27);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B79DE150(*(v0 + 208));
      sub_1B7A2A358(v29);
      sub_1B7A88EE8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1B7A96F20();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v0 + 240);
        v63 = *(v0 + 224);
        v31 = *(v0 + 200);
        v32 = *(v0 + 176);
        v69 = *(v0 + 184);
        v34 = *(v0 + 160);
        v33 = *(v0 + 168);
        v66 = *(v0 + 232);
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818) + 48);
        v36 = *(v33 + 32);
        v36(v32, v31, v34);
        v37 = sub_1B7A99F80();
        (*(*(v37 - 8) + 8))(v31 + v35, v37);
        v36(v69, v32, v34);
        sub_1B7A9A1D0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
        sub_1B7A98D10();
        *(swift_allocObject() + 16) = xmmword_1B7A9D270;
        sub_1B7A98C40();
        sub_1B7A98C40();
        sub_1B7A99E60();

        (*(v66 + 8))(v30, v63);
        sub_1B7A2A358(v29);
        sub_1B7A88EE8();

        sub_1B79EA4E4();

        (*(v33 + 8))(v69, v34);
      }

      else
      {
        sub_1B79DE150(*(v0 + 200));
      }
    }

    else
    {
      v39 = *(v0 + 232);
      v38 = *(v0 + 240);
      v40 = *(v0 + 224);
      v41 = *(v0 + 208);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820);
      sub_1B7957888(v41 + *(v42 + 48), &qword_1EBA47828);
      v43 = sub_1B7A99F50();
      (*(*(v43 - 8) + 8))(v41, v43);
      sub_1B7A9A1D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9D270;
      sub_1B7A98C40();
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v39 + 8))(v38, v40);
      sub_1B7A2A358(v29);
      sub_1B7A88EE8();

      sub_1B79EA300();
    }

    v44 = *(v0 + 88);
    v8 = *(v0 + 80);
    sub_1B7A2A388(v29);
    sub_1B7A29434(v44);

    goto LABEL_10;
  }

  v23 = sub_1B7A9AE80();

  if (v23)
  {
    goto LABEL_24;
  }

  if (sub_1B7A99A80() == v1 && v45 == v3)
  {

LABEL_35:

    goto LABEL_25;
  }

  v46 = sub_1B7A9AE80();

  if (v46)
  {
    goto LABEL_35;
  }

  if (sub_1B7A99AD0() == v1 && v47 == v3)
  {

LABEL_40:
    v50 = *(v0 + 144);
    v49 = *(v0 + 152);
    v51 = *(v0 + 136);

    sub_1B7A9AC60();
    v52 = sub_1B7A8F1EC(v49);
    (*(v50 + 8))(v49, v51);
    goto LABEL_47;
  }

  v48 = sub_1B7A9AE80();

  if (v48)
  {
    goto LABEL_40;
  }

  if (sub_1B7A99A90() == v1 && v53 == v3)
  {

LABEL_45:
    v55 = *(v0 + 88);

    v56 = v55;
    v57 = 0;
LABEL_46:
    v52 = sub_1B7A8F3E4(v56, v57);
LABEL_47:
    v13 = sub_1B7A98FA0();
    v14 = *(*(v13 - 8) + 104);
    v15 = *(v0 + 80);
    if (v52)
    {
      v16 = *MEMORY[0x1E69AB010];
    }

    else
    {
      v16 = *MEMORY[0x1E69AB008];
    }

    goto LABEL_11;
  }

  v54 = sub_1B7A9AE80();

  if (v54)
  {
    goto LABEL_45;
  }

  if (sub_1B7A99AA0() == v1 && v58 == v3)
  {

LABEL_54:
    v56 = *(v0 + 88);
    v57 = 1;
    goto LABEL_46;
  }

  v59 = sub_1B7A9AE80();

  if (v59)
  {
    goto LABEL_54;
  }

  v60 = *(v0 + 80);
  v61 = *MEMORY[0x1E69AB008];
  v62 = sub_1B7A98FA0();
  (*(*(v62 - 8) + 104))(v60, v61, v62);
LABEL_12:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B79DD644(uint64_t a1, int a2, void *a3)
{
  HIDWORD(v19) = a2;
  v20 = a1;
  v5 = sub_1B7A97480();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v21 = *v3;
  v10 = a3[2];
  v11 = a3[4];
  v12 = a3[5];
  v13 = type metadata accessor for FlowAuthority();
  v14 = sub_1B7A2A358(v13);
  v15 = qword_1EBA507D0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v14 + v15, v5);

  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25[7] = v10;
  v25[8] = v11;
  v25[9] = v12;
  v25[10] = &v22;
  sub_1B7A97430();
  (*(v6 + 8))(v8, v5);
  if (!*(&v23 + 1))
  {
    sub_1B7957888(&v22, &qword_1EBA47830);
    v16 = v20;
    goto LABEL_5;
  }

  sub_1B795C1E4(&v22, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v16 = v20;
  v17 = sub_1B7A99DC0();
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  if (v17)
  {
LABEL_5:
    v25[5] = v9;
    sub_1B7A2A358(v13);
    sub_1B7A89028(v16, BYTE4(v19) & 1);
  }

  return result;
}

uint64_t sub_1B79DD898(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v2 = type metadata accessor for FlowStackAuthority.PathComponent();
  v3 = sub_1B7A9AB60();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B7A9AB60();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1B7A97410();
  sub_1B79DE1B8();
  sub_1B7A9A920();
  result = sub_1B7A9A960();
  if (*&v25[0] != v27)
  {
    v14 = MEMORY[0x1B8CA8640](result);
    v15 = __OFSUB__(v14, 1);
    result = v14 - 1;
    if (v15)
    {
      __break(1u);
      return result;
    }

    sub_1B7A97420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47840);
    v16 = swift_dynamicCast();
    v17 = *(*(v2 - 8) + 56);
    if (v16)
    {
      v18 = *(v2 - 8);
      v17(v5, 0, 1, v2);
      v19 = *(AssociatedTypeWitness - 8);
      (*(v19 + 16))(v12, &v5[*(v2 + 44)], AssociatedTypeWitness);
      (*(v18 + 8))(v5, v2);
      (*(v19 + 56))(v12, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v17(v5, 1, 1, v2);
      (*(v22 + 8))(v5, v3);
      v19 = *(AssociatedTypeWitness - 8);
      (*(v19 + 56))(v12, 1, 1, AssociatedTypeWitness);
    }

    v20 = v23;
    (*(v23 + 32))(v9, v12, v7);
    if ((*(v19 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v9, v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47848);
      if (swift_dynamicCast())
      {
        return sub_1B79DE210(v25, v24);
      }
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    return sub_1B79DE210(v25, v24);
  }

  return result;
}

uint64_t sub_1B79DDCBC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *v2;
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v12);
  v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = *(a2 + 24);
  *(v15 + 40) = *(a2 + 40);
  (*(v9 + 32))(v15 + v14, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1B7AA01C8;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0);

  v17 = sub_1B7A9A150();
  v18 = sub_1B7A9A7E0();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B7A9EDF0;
  v19[5] = v16;
  v19[6] = v17;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v19);

  return v17;
}

uint64_t sub_1B79DDF6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79DDFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B798D338;

  return sub_1B79DC8BC(a1, v1 + v8, v9, v4, v5, v6, v7);
}

uint64_t sub_1B79DE0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAlertAuthority.Presented(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DE150(uint64_t a1)
{
  v2 = type metadata accessor for FlowAlertAuthority.Presented(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79DE1B8()
{
  result = qword_1EBA47838;
  if (!qword_1EBA47838)
  {
    sub_1B7A97410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47838);
  }

  return result;
}

uint64_t sub_1B79DE210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*_taskRetry(for:)(void *a1))()
{
  v12 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1B79DE494(v10);
LABEL_6:
    *(swift_allocObject() + 16) = a1;
    v8 = a1;
    return sub_1B79DE4FC;
  }

  sub_1B795C1E4(v10, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v3 = *(sub_1B7A96AA0() + 16);

  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B7A9A160();
  sub_1B7999E90(v13, v10);
  v6 = swift_allocObject();
  sub_1B795C1E4(v10, v6 + 16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1B79DE904;
}

uint64_t sub_1B79DE494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79DE550()
{
  sub_1B7A9AC50();

  swift_getErrorValue();
  swift_getDynamicType();
  v0 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v0);

  MEMORY[0x1B8CAB750](0xD00000000000001BLL, 0x80000001B7AC5C30);
  return 60;
}

BOOL sub_1B79DE5FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = *(sub_1B7A96AA0() + 16);

  return v1 == 1;
}

uint64_t sub_1B79DE654(void *a1)
{
  sub_1B7A9AC50();

  v17[0] = 0xD00000000000002DLL;
  v17[1] = 0x80000001B7AC5C00;
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1B7A9AE50();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v7, v2);
  }

  v11 = sub_1B7A96B00();

  v12 = AMSLogableError();
  v13 = sub_1B7A9A4B0();
  v15 = v14;

  MEMORY[0x1B8CAB750](v13, v15);

  MEMORY[0x1B8CAB750](62, 0xE100000000000000);
  return v17[0];
}

uint64_t sub_1B79DE83C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B7A96A90();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B7999E90(a1, v4);
    v3 = swift_allocObject();
    sub_1B795C1E4(v4, v3 + 16);
    sub_1B7A96A80();
  }

  return result;
}

uint64_t sub_1B79DE90C(void *a1)
{
  sub_1B7A9AC50();

  v17[0] = 0xD000000000000015;
  v17[1] = 0x80000001B7AC5BE0;
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1B7A9AE50();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v4 + 32))(v10, v7, v2);
  }

  v11 = sub_1B7A96B00();

  v12 = AMSLogableError();
  v13 = sub_1B7A9A4B0();
  v15 = v14;

  MEMORY[0x1B8CAB750](v13, v15);

  MEMORY[0x1B8CAB750](96, 0xE100000000000000);
  return v17[0];
}

uint64_t getEnumTagSinglePayload for TaskUpdate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TaskUpdate(uint64_t result, int a2, int a3)
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

uint64_t sub_1B79DEBE0()
{
  sub_1B79CB218();
  sub_1B7A97890();
  return v1;
}

uint64_t View.mediaArtworkProtocol<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v27 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  v12 = sub_1B7A97590();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v26 = &v25 - v16;
  swift_getKeyPath();
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  v19 = v27;
  *(v18 + 4) = a4;
  *(v18 + 5) = v19;
  (*(v10 + 32))(&v18[v17], &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1B7A98320();

  v20 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  v30 = a4;
  v31 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v26;
  sub_1B7957EE0(v14, v12, WitnessTable);
  v23 = *(v28 + 8);
  v23(v14, v12);
  sub_1B7957EE0(v22, v12, WitnessTable);
  return (v23)(v22, v12);
}

uint64_t View.mediaArtworkProtocol(scheme:host:path:query:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v96 = a8;
  v91 = a7;
  LODWORD(v88) = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v83 = a1;
  v90 = a9;
  v82 = a10;
  v81 = a11;
  v80 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  v76 = a16;
  v17 = sub_1B7A97590();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v74 - v21;
  v78 = sub_1B7A99080();
  v22 = *(v78 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v74 - v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  v95 = sub_1B7A97B40();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v74 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v74 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v74 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v74 - v37;
  sub_1B7A99060();
  swift_storeEnumTagMultiPayload();
  sub_1B79DF994(v32, v35);
  v96 = a17;
  sub_1B79DF994(v35, v38);
  sub_1B79DFA04(v38, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v91 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    v40 = *v29;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD00000000000002FLL, 0x80000001B7AC5C50);
    swift_getErrorValue();
    sub_1B7A9AE60();
    v41 = v105;
    v42 = v106;
    sub_1B7999DD8();

    v43 = sub_1B7A98080();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = v41;
    *(v50 + 24) = v42;
    v105 = v43;
    v106 = v45;
    v107 = v47 & 1;
    v108 = v49;
    v109 = sub_1B797D598;
    v110 = v50;
    sub_1B7999FBC(v43, v45, v47 & 1);

    sub_1B7999FBC(v43, v45, v47 & 1);
    v51 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
    v103 = v96;
    v104 = v51;

    swift_getWitnessTable();
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v52 = v93;
    sub_1B7959A28(&v105, v17, v92);

    sub_1B795A450(v43, v45, v47 & 1);

    sub_1B795A450(v43, v45, v47 & 1);

    sub_1B795A450(v105, v106, v107);
  }

  else
  {
    v86 = a14;
    v87 = v18;
    v88 = v17;
    v53 = *(v22 + 32);
    v54 = v89;
    v55 = v78;
    v53(v89, v29, v78);
    swift_getKeyPath();
    v56 = v75;
    (*(v22 + 16))(v75, v54, v55);
    v57 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v86;
    *(v58 + 24) = a15;
    v59 = v58 + v57;
    v60 = v55;
    v53(v59, v56, v55);
    v61 = v88;

    v62 = v79;
    v63 = v96;
    sub_1B7A98320();

    v64 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
    v97 = v63;
    v98 = v64;
    WitnessTable = swift_getWitnessTable();
    v66 = v77;
    sub_1B7957EE0(v62, v61, WitnessTable);
    v67 = *(v87 + 8);
    v67(v62, v61);
    sub_1B7957EE0(v66, v61, WitnessTable);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v52 = v93;
    sub_1B79B5878(v62, v61);
    v67(v62, v61);
    v67(v66, v61);
    (*(v22 + 8))(v89, v60);
  }

  sub_1B79E0A60(v91);
  v68 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  v101 = v96;
  v102 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  v99 = v69;
  v100 = v70;
  v71 = v95;
  v72 = swift_getWitnessTable();
  sub_1B7957EE0(v52, v71, v72);
  return (*(v94 + 8))(v52, v71);
}

uint64_t sub_1B79DF994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DFA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79DFA74(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s22_OneShotActionProtocolVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(v8 + 20);
  v15 = sub_1B7A99080();
  (*(*(v15 - 8) + 16))(&v13[v14], a4, v15);
  *v13 = a2;
  *(v13 + 1) = a3;
  sub_1B79E0BD8(v13, v10);
  v16 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B7987A98(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7987A98((v17 > 1), v18 + 1, 1, v16);
  }

  sub_1B79E0C3C(v13);
  v23 = v8;
  v24 = sub_1B79E0C98();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  sub_1B79E0BD8(v10, boxed_opaque_existential_1Tm);
  v16[2] = v18 + 1;
  sub_1B795C1E4(&v22, &v16[5 * v18 + 4]);
  sub_1B79E0C3C(v10);

  *a1 = v16;
  return result;
}

uint64_t View.mediaArtworkProtocol<A>(scheme:host:path:query:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v103 = a8;
  v97 = a7;
  LODWORD(v95) = a6;
  v94 = a5;
  KeyPath = a4;
  v92 = a3;
  v91 = a2;
  v90 = a1;
  v96 = a9;
  v89 = a10;
  v88 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  v82 = a16;
  v19 = sub_1B7A97590();
  v86 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v79 - v22;
  v83 = sub_1B7A99080();
  v87 = *(v83 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  v102 = v19;
  v98 = v27;
  v101 = sub_1B7A97B40();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v79 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v79 - v39;
  sub_1B7A99060();
  swift_storeEnumTagMultiPayload();
  sub_1B79DF994(v34, v37);
  v103 = a18;
  sub_1B79DF994(v37, v40);
  sub_1B79DFA04(v40, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v97 = v40;
  if (EnumCaseMultiPayload == 1)
  {
    v42 = *v31;
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD00000000000002FLL, 0x80000001B7AC5C50);
    swift_getErrorValue();
    sub_1B7A9AE60();
    v43 = v112;
    v44 = v113;
    sub_1B7999DD8();

    v45 = sub_1B7A98080();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v44;
    v112 = v45;
    v113 = v47;
    v114 = v49 & 1;
    v115 = v51;
    v116 = sub_1B799A220;
    v117 = v52;
    sub_1B7999FBC(v45, v47, v49 & 1);

    sub_1B7999FBC(v45, v47, v49 & 1);
    v53 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
    v110 = v103;
    v111 = v53;

    v54 = v102;
    swift_getWitnessTable();
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v55 = v99;
    sub_1B7959A28(&v112, v54, v98);

    sub_1B795A450(v45, v47, v49 & 1);

    sub_1B795A450(v45, v47, v49 & 1);

    sub_1B795A450(v112, v113, v114);
  }

  else
  {
    v95 = a19;
    v94 = a14;
    v56 = v87;
    v57 = *(v87 + 32);
    v80 = v26;
    v58 = v31;
    v59 = v83;
    v57(v26, v58, v83);
    KeyPath = swift_getKeyPath();
    v60 = v81;
    (*(v56 + 16))(v81, v26, v59);
    v61 = (*(v56 + 80) + 64) & ~*(v56 + 80);
    v62 = swift_allocObject();
    v62[2] = v82;
    v62[3] = a17;
    v63 = v103;
    v64 = v95;
    v62[4] = v103;
    v62[5] = v64;
    v62[6] = v94;
    v62[7] = a15;
    v65 = v62 + v61;
    v66 = v59;
    v57(v65, v60, v59);

    v67 = v85;
    sub_1B7A98320();

    v68 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
    v104 = v63;
    v105 = v68;
    v69 = v102;
    WitnessTable = swift_getWitnessTable();
    v71 = v84;
    sub_1B7957EE0(v67, v69, WitnessTable);
    v72 = *(v86 + 8);
    v72(v67, v69);
    sub_1B7957EE0(v71, v69, WitnessTable);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
    v55 = v99;
    sub_1B79B5878(v67, v69);
    v72(v67, v69);
    v72(v71, v69);
    (*(v87 + 8))(v80, v66);
  }

  sub_1B79E0A60(v97);
  v73 = sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  v108 = v103;
  v109 = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  v106 = v74;
  v107 = v75;
  v76 = v101;
  v77 = swift_getWitnessTable();
  sub_1B7957EE0(v55, v76, v77);
  return (*(v100 + 8))(v55, v76);
}

uint64_t sub_1B79E06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4;
  v21 = a2;
  v23 = a3;
  v24 = a1;
  v9 = sub_1B7A99080();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a8;
  v13 = _s23_SequenceActionProtocolVMa();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 16))(v12, v20, v9);
  sub_1B7A035B0(v21, v23, v12, v16);

  WitnessTable = swift_getWitnessTable();
  sub_1B7A8C434(v16, v13, WitnessTable);
  (*(v14 + 8))(v16, v13);
}

unint64_t sub_1B79E0920@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7A9D270;
  *(v2 + 56) = &type metadata for MediaArtwork.BundleImageProtocol;
  *(v2 + 64) = sub_1B79CB1C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7A9D170;
  *(v3 + 32) = [objc_opt_self() mainBundle];
  *(v2 + 32) = v3;
  *(v2 + 96) = &type metadata for MediaArtwork.SystemImageProtocol;
  result = sub_1B79E0D54();
  *(v2 + 104) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1B79E09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79E0D00();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B79E0A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79E0AC8(void **a1)
{
  v3 = *(sub_1B7A99080() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B79DFA74(a1, v4, v5, v6);
}

uint64_t sub_1B79E0B3C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_1B7A99080() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1B79E06E8(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1B79E0BD8(uint64_t a1, uint64_t a2)
{
  v4 = _s22_OneShotActionProtocolVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E0C3C(uint64_t a1)
{
  v2 = _s22_OneShotActionProtocolVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79E0C98()
{
  result = qword_1EBA47868;
  if (!qword_1EBA47868)
  {
    _s22_OneShotActionProtocolVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47868);
  }

  return result;
}

unint64_t sub_1B79E0D00()
{
  result = qword_1EBA47870;
  if (!qword_1EBA47870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47870);
  }

  return result;
}

unint64_t sub_1B79E0D54()
{
  result = qword_1EBA47878;
  if (!qword_1EBA47878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47878);
  }

  return result;
}

uint64_t sub_1B79E0DA8()
{
  sub_1B7958BE0();
  sub_1B7A97890();
  return v1;
}

uint64_t IntentView<>.pageRenderMetrics(onTopic:pipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[2] = a5;
  v22 = a3;
  v23 = a2;
  v24 = a1;
  v25 = a6;
  v21 = sub_1B7A99360();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a4 + 16);
  v10 = type metadata accessor for PageRenderMetricsViewModifier();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  sub_1B79D6208();
  v14 = sub_1B7A98DA0();
  v16 = v15;
  (*(v7 + 16))(v9, v22, v21);
  v17 = v23;

  sub_1B79E0FFC(v14, v16, v24, v17, v9, v13);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v13, a4, v10, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B79E0FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = swift_getKeyPath();
  *(a6 + 32) = 0;
  v11 = type metadata accessor for PageRenderMetricsViewModifier();
  v12 = v11[12];
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00);
  swift_storeEnumTagMultiPayload();
  v13 = a6 + v11[13];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = v11[14];
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v11[15];
  *v15 = sub_1B79E1808();
  *(v15 + 8) = v16 & 1;
  *(v15 + 16) = v17;
  v18 = sub_1B7A99360();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a1;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  *(v21 + 5) = a4;
  result = (*(v19 + 32))(&v21[v20], a5, v18);
  *a6 = sub_1B79E33D8;
  *(a6 + 8) = v21;
  *(a6 + 16) = 0;
  return result;
}

uint64_t ModifiedContent<>.pageRenderMetrics(onTopic:pipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v34 = a1;
  v35 = a5;
  v32 = a3;
  v33 = a2;
  v36 = a8;
  v31 = sub_1B7A99360();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 24);
  v28 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for PageRenderMetricsViewModifier();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  (*(a6 + 32))(v13, a6, v16);
  v19 = sub_1B7A98DA0();
  v21 = v20;
  (*(v10 + 16))(v12, v32, v31);
  v22 = v33;

  sub_1B79E0FFC(v19, v21, v34, v22, v12, v18);
  v23 = *(a6 + 8);
  v37 = v35;
  v38 = v23;
  v24 = v28;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v18, v24, v14, WitnessTable);
  return (*(v15 + 8))(v18, v14);
}

void sub_1B79E1488()
{
  sub_1B79E1644();
  if (v0 <= 0x3F)
  {
    sub_1B79E1758(319, &qword_1EBA47278, qword_1EBA47280, &unk_1B7A9FE40, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B79E1758(319, &qword_1EDC0FD70, &qword_1EBA45F08, &unk_1B7A9C680, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1B79E1758(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1B79E1700();
          if (v4 <= 0x3F)
          {
            sub_1B79E1758(319, &qword_1EDC0FCA8, &qword_1EBA46548, &unk_1B7A9D540, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B79E1644()
{
  if (!qword_1EBA47900)
  {
    sub_1B7A99D50();
    sub_1B79E16A8();
    v0 = sub_1B7A97140();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA47900);
    }
  }
}

unint64_t sub_1B79E16A8()
{
  result = qword_1EBA47908;
  if (!qword_1EBA47908)
  {
    sub_1B7A99D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47908);
  }

  return result;
}

void sub_1B79E1700()
{
  if (!qword_1EDC10148)
  {
    sub_1B7A99900();
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC10148);
    }
  }
}

void sub_1B79E1758(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1B79E1808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548);
  sub_1B7A986C0();
  return v1;
}

uint64_t sub_1B79E1860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B7A99360();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  sub_1B7A99D50();
  swift_allocObject();

  return sub_1B7A99D40();
}

uint64_t sub_1B79E1978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v95 = a3;
  v96 = a1;
  v93 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = v6;
  v92 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B7A98C30();
  v7 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A99C60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v67 - v13;
  v68 = sub_1B7A97880();
  v14 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910);
  v74 = v17;
  v18 = sub_1B7A97590();
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v67 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47918);
  v77 = v18;
  v20 = sub_1B7A97590();
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v67 - v21;
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v94 = a2;
  v85 = v22;
  v84 = v23;
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v24 = sub_1B7A97DF0();
  v81 = v20;
  v79 = v24;
  v25 = sub_1B7A97590();
  v87 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v67 - v26;
  v88 = v27;
  v28 = sub_1B7A97590();
  v89 = *(v28 - 8);
  v90 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v83 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v86 = &v67 - v31;
  swift_getKeyPath();
  v32 = *(v4 + 24);
  if (*(v4 + 32) != 1)
  {

    sub_1B7A9AA10();
    v36 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v14 + 8))(v16, v68);
    if (v105)
    {
      goto LABEL_3;
    }

LABEL_5:
    v35 = 0;
    goto LABEL_6;
  }

  v105 = *(v4 + 24);

  if (!v32)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7A99D50();
  sub_1B79E16A8();
  sub_1B7A97120();
  v33 = v70;
  sub_1B7A99D20();

  (*(v10 + 104))(v33, *MEMORY[0x1E69AB400], v9);
  (*(v10 + 16))(v69, v33, v9);
  v34 = v71;
  sub_1B7A98C00();
  v35 = sub_1B7A992C0();

  (*(v7 + 8))(v34, v72);
  (*(v10 + 8))(v33, v9);
LABEL_6:
  v105 = v35;
  WitnessTable = swift_getWitnessTable();
  v38 = v75;
  sub_1B7A98150();

  swift_getKeyPath();
  v39 = *(v4 + 8);
  v74 = *v4;
  v72 = v39;
  v73 = v4;
  sub_1B7A99D50();
  sub_1B79E16A8();
  v105 = sub_1B7A97120();
  v40 = sub_1B79E3274(&qword_1EBA47920, &qword_1EBA47910);
  v103 = WitnessTable;
  v104 = v40;
  v96 = MEMORY[0x1E697E858];
  v41 = v77;
  v42 = swift_getWitnessTable();
  v43 = v78;
  sub_1B7A98150();

  (*(v76 + 8))(v38, v41);
  v44 = sub_1B7A97120();
  v45 = swift_allocObject();
  v46 = v85;
  v47 = v84;
  v45[2] = v85;
  v45[3] = v47;
  v48 = v94;
  v77 = *(v94 + 32);
  v45[4] = v77;
  v45[5] = v44;
  v49 = sub_1B79E3274(qword_1EBA47928, &qword_1EBA47918);
  v101 = v42;
  v102 = v49;

  v50 = v81;
  v51 = swift_getWitnessTable();
  v52 = v82;
  sub_1B79E3830(v46, &unk_1B7AA0458, v45, v50, v46, v51, v47);

  (*(v80 + 8))(v43, v50);
  v54 = v92;
  v53 = v93;
  (*(v93 + 16))(v92, v73, v48);
  v55 = (*(v53 + 80) + 40) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 2) = v46;
  *(v56 + 3) = v47;
  *(v56 + 4) = v77;
  (*(v53 + 32))(&v56[v55], v54, v48);
  v57 = swift_getWitnessTable();
  v99 = v51;
  v100 = v57;
  v58 = v88;
  v59 = swift_getWitnessTable();
  v60 = v83;
  View.onViewAppearanceChange(perform:)(sub_1B79E32C8, v56, v58, v59);

  (*(v87 + 8))(v52, v58);
  v61 = sub_1B797D3EC();
  v97 = v59;
  v98 = v61;
  v62 = v90;
  v63 = swift_getWitnessTable();
  v64 = v86;
  sub_1B7957EE0(v60, v62, v63);
  v65 = *(v89 + 8);
  v65(v60, v62);
  sub_1B7957EE0(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_1B79E24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1B7A99CC0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_1B7A99CD0();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for _IntentProgress();
  v5[14] = v9;
  v5[15] = *(v9 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B79E26C0, 0, 0);
}

uint64_t sub_1B79E26C0()
{
  (*(v0[15] + 16))(v0[16], v0[2], v0[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[6];
      v2 = v0[7];
      v4 = v0[5];
      v5 = *v0[16];
      *v2 = v5;
      (*(v3 + 104))(v2, *MEMORY[0x1E69AB430], v4);
      v6 = v5;
      sub_1B7A99D10();

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[11];
      *v13 = 1;
      (*(v14 + 104))(v13, *MEMORY[0x1E69AB450], v15);
      sub_1B7A99D30();
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    (*(v8 + 32))(v7, v0[16], v9);
    sub_1B7A9A330();
    (*(v12 + 104))(v10, *MEMORY[0x1E69AB440], v11);
    sub_1B7A99D10();
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B79E291C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - v5;
  v6 = sub_1B7A97880();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A99BB0();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v55 - v12;
  v13 = sub_1B7A99900();
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A97480();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v57 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for PageRenderMetricsViewModifier();
  v27 = a2 + *(v26 + 60);
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  if ((a1 & 1) == 0)
  {
    v73 = *v27;
    LOBYTE(v74) = v29;
    v75 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8);
    sub_1B7A986D0();
    v69 = v71;
    LODWORD(v70) = v72;
    v34 = v22;
    sub_1B797BECC(v22);
    v35 = a2 + *(v26 + 52);
    v37 = *v35;
    v36 = *(v35 + 8);
    v38 = *(v35 + 16);
    if (*(v35 + 17) == 1)
    {
      sub_1B797DEF0(*v35, v36);
      if (!v36)
      {
        goto LABEL_10;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v39 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B797D5A0(v37, v36, v38, 0);
      (*(v61 + 8))(v8, v62);
      v37 = v73;
      v36 = v74;
      LOBYTE(v38) = v75;
      if (!v74)
      {
        goto LABEL_10;
      }
    }

    v73 = v37;
    v74 = v36;
    LOBYTE(v75) = v38 & 1;

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
    MEMORY[0x1B8CA9A40](&v71, v40);
    v41 = v71;

    if ((v41 & 1) == 0)
    {
      v46 = v65;
      sub_1B7A99B90();
      goto LABEL_23;
    }

LABEL_10:
    if ((v70 & 1) == 0)
    {
      v42 = v57;
      sub_1B79E3368(v22, v57);
      v43 = v64;
      if ((*(v63 + 48))(v42, 1, v64) == 1)
      {
        v44 = &qword_1EBA45F08;
        v45 = v42;
      }

      else
      {
        v49 = v56;
        sub_1B7995CD4(v42, v56);
        v50 = v58;
        MEMORY[0x1B8CA9A40](v43);
        v51 = sub_1B7A97440();
        result = (*(v59 + 8))(v50, v60);
        if (__OFSUB__(v69, 1))
        {
          __break(1u);
          return result;
        }

        if (v51 == v69 - 1)
        {
          v46 = v65;
          sub_1B7A99BA0();
          sub_1B797D5AC(v37, v36);
          sub_1B7957888(v49, &qword_1EBA46648);
LABEL_24:
          sub_1B7957888(v34, &qword_1EBA45F08);
          v53 = v66;
          v52 = v67;
          v54 = v68;
          (*(v67 + 32))(v66, v46, v68);
          sub_1B7A99D50();
          sub_1B79E16A8();
          sub_1B7A97120();
          sub_1B7A99D00();

          return (*(v52 + 8))(v53, v54);
        }

        v44 = &qword_1EBA46648;
        v45 = v49;
      }

      sub_1B7957888(v45, v44);
    }

    v46 = v65;
    sub_1B7A99B80();
LABEL_23:
    sub_1B797D5AC(v37, v36);
    goto LABEL_24;
  }

  v68 = a2;
  v73 = v28;
  LOBYTE(v74) = v29;
  v75 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8);
  sub_1B7A986D0();
  if (v72)
  {
    sub_1B797BECC(v25);
    v31 = v64;
    v32 = (*(v63 + 48))(v25, 1, v64);
    if (v32 == 1)
    {
      sub_1B7957888(v25, &qword_1EBA45F08);
      v33 = 0;
    }

    else
    {
      v47 = v58;
      MEMORY[0x1B8CA9A40](v31);
      sub_1B7957888(v25, &qword_1EBA46648);
      v33 = sub_1B7A97440();
      (*(v59 + 8))(v47, v60);
    }

    v73 = v28;
    LOBYTE(v74) = v29;
    v75 = v30;
    v71 = v33;
    v72 = v32 == 1;
    sub_1B7A986E0();
  }

  sub_1B7A99D50();
  sub_1B79E16A8();
  sub_1B7A97120();
  sub_1B797BE80(v15);
  sub_1B7A99CE0();

  (*(v69 + 8))(v15, v70);
  sub_1B7A97120();
  sub_1B7A99CF0();
}

uint64_t sub_1B79E31B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79E24C0(a1, v6, v4, v5, v7);
}

uint64_t sub_1B79E3274(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B79E32C8(char a1)
{
  v3 = *(type metadata accessor for PageRenderMetricsViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1B79E291C(a1, v4);
}

uint64_t sub_1B79E3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E33D8()
{
  v1 = *(sub_1B7A99360() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B79E1860(v2, v3, v4, v5, v6);
}

unint64_t sub_1B79E3450()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1B799830C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79E34D8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1B79E3628(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1B79E3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v13[5] = a7;
    v13[6] = a2;
    v13[7] = a3;
    v14 = &unk_1B7AA0670;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = type metadata accessor for _IntentObserverKey();
  v18[0] = v14;
  v18[1] = v13;
  sub_1B7974B84(a2);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A50734(v15, v18, a4, v15, a6, WitnessTable);
  return sub_1B7974C44(v14);
}

uint64_t sub_1B79E3944(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B798D338;

  return v7(a2);
}

uint64_t sub_1B79E3A4C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1B7A508A8(a1, a2);
}

uint64_t sub_1B79E3AA4(uint64_t a1, uint64_t a2)
{
  sub_1B7A9AF80();
  swift_getWitnessTable();
  sub_1B7A508A8(v4, a2);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79E3B2C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B79E3B8C()
{
  sub_1B7A9AF80();
  v0 = type metadata accessor for _IntentObserverKey();
  swift_getWitnessTable();
  sub_1B7A508A8(v2, v0);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79E3C0C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B798D338;

  return sub_1B79E3944(a1, a2, v6);
}

uint64_t MediaArtwork.URLImageProtocol.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  [v2 setURLCache_];
  [v2 setNetworkServiceType_];
  [v2 setHTTPShouldUsePipelining_];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *a1 = v3;
  *(a1 + 8) = 1;
  if (qword_1EBA45B48 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7A99080();
  v5 = __swift_project_value_buffer(v4, qword_1EBA47A30);
  v6 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  v7 = *(*(v4 - 8) + 16);
  v8 = a1 + *(v6 + 24);

  return v7(v8, v5, v4);
}

void MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B79E67A8(v3, a3);
  objc_storeStrong(a3, a1);
  *(a3 + 8) = a2;
}

uint64_t MediaArtwork.URLImageProtocol.Configuration.withAllowedURLs(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B79E67A8(v2, a2);
  v5 = *(type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0) + 24);
  v6 = sub_1B7A99080();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1B79E3F60()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA47A30);
  __swift_project_value_buffer(v0, qword_1EBA47A30);
  return sub_1B7A99060();
}

uint64_t MediaArtwork.URLImageProtocol.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 24) = *(a1 + 8);
  v4 = *(type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0) + 24);
  v5 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v6 = sub_1B7A99080();
  (*(*(v6 - 8) + 16))(v2 + v5, a1 + v4, v6);
  v7 = v3;
  sub_1B79E680C(a1);
  return v2;
}

uint64_t MediaArtwork.URLImageProtocol.init(_:)(uint64_t a1)
{
  v3 = sub_1B7A99080();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  v8 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  (*(v4 + 16))(v6, a1 + *(v8 + 24), v3);
  v9 = v7;
  sub_1B79E680C(a1);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs, v6, v3);
  return v1;
}

uint64_t MediaArtwork.URLImageProtocol.__allocating_init()()
{
  v0 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  [v3 setURLCache_];
  [v3 setNetworkServiceType_];
  [v3 setHTTPShouldUsePipelining_];
  v4 = [objc_opt_self() sessionWithConfiguration_];

  *v2 = v4;
  v2[8] = 1;
  v5 = qword_1EBA45B48;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1B7A99080();
  v8 = __swift_project_value_buffer(v7, qword_1EBA47A30);
  v9 = *(v0 + 24);
  v10 = *(*(v7 - 8) + 16);
  v10(&v2[v9], v8, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = 1;
  v10((v11 + OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs), &v2[v9], v7);
  sub_1B79E680C(v2);
  return v11;
}

uint64_t MediaArtwork.URLImageProtocol.deinit()
{
  if (*(v0 + 24) == 1)
  {
    [*(v0 + 16) invalidateAndCancel];
  }

  v1 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v2 = sub_1B7A99080();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MediaArtwork.URLImageProtocol.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    [*(v0 + 16) invalidateAndCancel];
  }

  v1 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v2 = sub_1B7A99080();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void static MediaArtwork.URLImageProtocol._clearCache()()
{
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBA47A48;
  v1 = [objc_opt_self() sharedURLCache];
  sub_1B79596F8(0, &qword_1EBA47A58);
  v2 = sub_1B7A9AB20();

  if ((v2 & 1) == 0)
  {

    [v0 removeAllCachedResponses];
  }
}

uint64_t MediaArtwork.URLImageProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47A60);
  v4 = MEMORY[0x1EEE9AC00](v3);
  *&v8[-v5] = 1;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x1E69E8788], v4);
  v9 = v1;
  v10 = a1;
  return sub_1B7A9A870();
}

uint64_t sub_1B79E4770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v71 = a2;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA0);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = v4;
  v77 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v64 - v6;
  v7 = sub_1B7A9A7E0();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8);
  v69 = *(v82 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v66 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0);
  v67 = *(v10 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = sub_1B7A96B90();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B7A96D70();
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v23 = sub_1B7A96DA0();
  __swift_project_value_buffer(v23, qword_1EBA507B8);
  sub_1B7A96D90();
  sub_1B7A96D40();
  v24 = sub_1B7A96D90();
  v25 = sub_1B7A9AA90();
  v26 = sub_1B7A9AB50();
  v81 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v24, v25, v28, "Image.Download", "", v27, 2u);
    v29 = v27;
    v22 = v81;
    MEMORY[0x1B8CACB70](v29, -1, -1);
  }

  (*(v83 + 16))(v19, v22, v84);
  sub_1B7A96DE0();
  swift_allocObject();
  v30 = sub_1B7A96DD0();
  v65 = *(v71 + 16);
  v71 = v10;
  v31 = v73;
  sub_1B7A99020();
  v64 = sub_1B7A96B50();
  (*(v14 + 8))(v16, v13);
  sub_1B79E75F4(v31, v12);
  v32 = v69;
  v33 = v66;
  v34 = v82;
  (*(v69 + 16))(v66, v85, v82);
  v35 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v36 = (v68 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = (v70 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_1B79E7664(v12, v38 + v35);
  (*(v32 + 32))(v38 + v36, v33, v34);
  *(v38 + v37) = v30;
  aBlock[4] = sub_1B79E76D4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B79E5EF8;
  aBlock[3] = &block_descriptor;
  v39 = _Block_copy(aBlock);

  v40 = v64;
  v41 = [v65 dataTaskWithURL:v64 completionHandler:v39];
  _Block_release(v39);

  v42 = *(v31 + *(v71 + 44));
  v43 = *(v42 + 16);
  v44 = *(*v43 + *MEMORY[0x1E69E6B68] + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  v46 = v41;

  os_unfair_lock_lock((v43 + v45));
  v48 = v74;
  v47 = v75;
  v49 = v43 + v44;
  v50 = v72;
  (*(v74 + 16))(v72, v49, v75);
  os_unfair_lock_unlock((v43 + v45));

  v51 = sub_1B79E5FC0();
  (*(v48 + 8))(v50, v47);
  *&v52 = v51;
  [v46 setPriority_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB8);
  sub_1B797EC34(&qword_1EBA47AC0, &qword_1EBA47AB8);
  sub_1B7A98E80();
  v53 = v78;
  sub_1B7A98EA0();

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  type metadata accessor for _URLSessionTaskCancelCoordinator();
  v54 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AC8);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 16) = 0;
  *(v54 + 16) = v55;
  v57 = v79;
  v56 = v80;
  v58 = v77;
  (*(v79 + 16))(v77, v53, v80);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v54;
  *(v60 + 24) = v42;
  (*(v57 + 32))(v60 + v59, v58, v56);

  sub_1B7A9A840();
  v61 = [v46 resume];
  v62 = *(v54 + 16);
  MEMORY[0x1EEE9AC00](v61);
  *(&v64 - 2) = v46;
  *(&v64 - 1) = v54;

  os_unfair_lock_lock((v62 + 24));
  sub_1B79E78A4((v62 + 16), aBlock);
  os_unfair_lock_unlock((v62 + 24));
  LODWORD(v43) = LOBYTE(aBlock[0]);

  if (v43 == 1)
  {
    [v46 cancel];
  }

  (*(v57 + 8))(v53, v56);
  return (*(v83 + 8))(v81, v84);
}

uint64_t sub_1B79E518C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a6;
  v91 = a7;
  v11 = sub_1B7A96C60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1B7A96DB0();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v83 - v19;
  v20 = sub_1B7A96D70();
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AE0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v83 - v28;
  *&v96 = a1;
  *(&v96 + 1) = a2;
  sub_1B79E7938(a1, a2);
  v30 = a4;
  sub_1B7A9A0F0();
  v96 = v98;
  v97 = v99;
  v95 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AE8);
  sub_1B7A9A0E0();
  sub_1B79E79BC(v96, *(&v96 + 1), v97);
  v31 = v100;
  if ((v101 & 1) == 0)
  {
    *&v98 = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8);
    sub_1B7A9A850();
    (*(v27 + 8))(v29, v26);
    *&v98 = 0;
    sub_1B7A9A860();
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v43 = sub_1B7A96DA0();
    __swift_project_value_buffer(v43, qword_1EBA507B8);
    v44 = sub_1B7A96D90();
    v36 = v88;
    sub_1B7A96DC0();
    v45 = sub_1B7A9AA80();
    v46 = sub_1B7A9AB50();
    v47 = v92;
    if (v46)
    {

      v48 = v85;
      sub_1B7A96DF0();
      v49 = v48;

      v50 = v48;
      v51 = v89;
      if ((*(v47 + 88))(v50, v89) == *MEMORY[0x1E69E93E8])
      {
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v49, v51);
        v52 = "finished";
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v44, v45, v68, "Image.Download", v52, v67, 2u);
      MEMORY[0x1B8CACB70](v67, -1, -1);
    }

    v69 = v31;
    v70 = 0;
    goto LABEL_24;
  }

  sub_1B7A96C80();
  sub_1B79E79C8(&qword_1EBA47AF0, MEMORY[0x1E6969BF8]);
  v32 = sub_1B7A96AD0();
  (*(v12 + 8))(v14, v11);
  if (v32)
  {
    *&v98 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8);
    sub_1B7A9A860();
    v33 = v92;
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v34 = sub_1B7A96DA0();
    __swift_project_value_buffer(v34, qword_1EBA507B8);
    v35 = sub_1B7A96D90();
    v36 = v86;
    sub_1B7A96DC0();
    v37 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {

      v38 = v83;
      sub_1B7A96DF0();
      v39 = v38;

      v40 = v38;
      v41 = v89;
      if ((*(v33 + 88))(v40, v89) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v33 + 8))(v39, v41);
        v42 = "cancelled";
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v35, v37, v72, "Image.Download", v42, v71, 2u);
      MEMORY[0x1B8CACB70](v71, -1, -1);
    }

    v69 = v31;
    v70 = 1;
LABEL_24:
    sub_1B79AAC6C(v69, v70);
    return (*(v93 + 8))(v36, v94);
  }

  *&v98 = v31;
  v53 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8);
  sub_1B7A9A860();
  v54 = v92;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v55 = sub_1B7A96DA0();
  __swift_project_value_buffer(v55, qword_1EBA507B8);
  v56 = v31;
  v57 = sub_1B7A96D90();
  v58 = v87;
  sub_1B7A96DC0();
  v59 = sub_1B7A9AA80();
  sub_1B79AAC6C(v31, 1);
  if (sub_1B7A9AB50())
  {

    v60 = v84;
    sub_1B7A96DF0();
    v61 = v60;

    v62 = v60;
    v63 = v89;
    if ((*(v54 + 88))(v62, v89) == *MEMORY[0x1E69E93E8])
    {
      v64 = 0;
      v65 = 0;
      v66 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v61, v63);
      v66 = "error=%{public}s";
      v65 = 2;
      v64 = 1;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v98 = v75;
    *v74 = v65;
    *(v74 + 1) = v64;
    *(v74 + 2) = 2082;
    v76 = sub_1B7A96B00();
    v77 = AMSLogableError();

    v78 = sub_1B7A9A4B0();
    v80 = v79;

    v81 = sub_1B79A6340(v78, v80, &v98);

    *(v74 + 4) = v81;
    v82 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v57, v59, v82, "Image.Download", v66, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1B8CACB70](v75, -1, -1);
    MEMORY[0x1B8CACB70](v74, -1, -1);
  }

  sub_1B79AAC6C(v31, 1);
  return (*(v93 + 8))(v58, v94);
}

uint64_t sub_1B79E5B50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B7A96C60();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A96C90();
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0);
  sub_1B79E794C(v8, v9);
  result = sub_1B79E5E20(v8, v9);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_1B7A96C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7A9D270;
    *(inited + 32) = sub_1B7A9A4B0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000021;
    *(inited + 56) = 0x80000001B7AC5E30;
    *(inited + 80) = sub_1B7A9A4B0();
    *(inited + 88) = v13;
    *(inited + 120) = sub_1B7A96B90();
    __swift_allocate_boxed_opaque_existential_1Tm((inited + 96));
    sub_1B7A99020();
    sub_1B798FF28(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E8);
    swift_arrayDestroy();
    sub_1B79E79C8(&qword_1EBA464F0, MEMORY[0x1E6969C20]);
    sub_1B7A96AF0();
    sub_1B7A96C70();
    (*(v15 + 8))(v7, v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B79E5E20(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7A96BA0();
  v5 = CGImageSourceCreateWithData(v4, 0);

  if (v5)
  {
    if (CGImageSourceGetCount(v5) > 0 && CGImageSourceCreateImageAtIndex(v5, 0, 0))
    {
      v6 = v5;
      sub_1B79E65BC(v6);
      v7 = sub_1B7A985C0();

      sub_1B79E78E4(a1, a2);
      return v7;
    }

    sub_1B79E78E4(a1, a2);
  }

  else
  {
    sub_1B79E78E4(a1, a2);
  }

  return 0;
}

uint64_t sub_1B79E5EF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B7A96BB0();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B79E78D0(v6, v10);
}

float sub_1B79E5FC0()
{
  v1 = v0;
  v2 = sub_1B7A9A7E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  (*(v3 + 16))(&v16 - v8, v1, v2, v7);
  sub_1B7A9A780();
  sub_1B79E79C8(&qword_1EBA47AD8, MEMORY[0x1E69E85F0]);
  v10 = sub_1B7A9A470();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    return 1.0;
  }

  else
  {
    sub_1B7A9A7C0();
    v13 = sub_1B7A9A470();
    v11(v5, v2);
    if (v13)
    {
      v11(v9, v2);
      return 0.6;
    }

    else
    {
      sub_1B7A9A7A0();
      v14 = sub_1B7A9A470();
      v11(v5, v2);
      if (v14)
      {
        v11(v9, v2);
        return 0.4;
      }

      else
      {
        sub_1B7A9A770();
        v15 = sub_1B7A9A470();
        v11(v5, v2);
        v11(v9, v2);
        result = 0.2;
        if ((v15 & 1) == 0)
        {
          return 0.5;
        }
      }
    }
  }

  return result;
}

void sub_1B79E6260()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *&v2 = sub_1B79E5FC0();
    [v1 setPriority_];
  }
}