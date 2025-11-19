uint64_t PhotosInfoUpdater.__deallocating_deinit()
{
  PhotosInfoUpdater.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1B3FDC928()
{
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_1_36();
  return PhotosComposedObservable<>.observeChanges(using:)(v0, v1, v2, v3);
}

void sub_1B3FDC97C()
{
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_1_36();

  PhotosMutableComposedObservable<>.performChanges(using:)(v0, v1, v2, v3);
}

void sub_1B3FDC9D4()
{
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_23();

  PhotosMutableComposedObservable<>.performChanges(using:)(v0, v1, v2, v3);
}

uint64_t PhotosComposedObservable<>.observeChanges(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  return v16;
}

uint64_t PhotosMutableComposedObservable.performChanges(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v29 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - v21;
  (*(v16 + 32))(a3, v16);
  (*(v9 + 16))(v14, v4, a3);
  v23 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a3;
  *(v24 + 3) = a4;
  *(v24 + 4) = v28;
  *(v24 + 5) = a2;
  (*(v9 + 32))(&v24[v23], v14, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 32);

  v26(sub_1B3FDCEF0, v24, AssociatedTypeWitness, AssociatedConformanceWitness);

  return (*(v29 + 8))(v22, AssociatedTypeWitness);
}

uint64_t sub_1B3FDCDD0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v14 - v11;
  (*(a5 + 24))(a4, a5);
  a1(v12);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t PhotosObservableChangeCounter.__allocating_init(target:keyPath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PhotosObservableChangeCounter.init(target:keyPath:)(a1, a2);
  return v4;
}

char *PhotosObservableChangeCounter.init(target:keyPath:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  *(v3 + 2) = 0;
  *&v3[*(v6 + 128)] = 0;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[*(*v3 + 112)], a1, v7);
  *&v3[*(*v3 + 120)] = a2;
  OUTLINED_FUNCTION_0_46();
  type metadata accessor for PhotosObservableChangeCounter();
  OUTLINED_FUNCTION_0_46();
  type metadata accessor for PhotosObservableChangeCounter.Update();
  swift_getWitnessTable();
  type metadata accessor for ObservingUpdater();
  v9 = swift_allocObject();
  swift_weakInit();
  v12[0] = sub_1B3FDD2EC;
  v12[1] = v9;

  v10 = ObservingUpdater.__allocating_init(target:updatePolicy:)(v3, v12);
  (*(v8 + 8))(a1, v7);

  *&v3[*(*v3 + 128)] = v10;

  return v3;
}

uint64_t sub_1B3FDD268()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B3FDAB54();
  }

  v1 = Strong;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v4)
  {
    *(v1 + 16) = v5;

    return sub_1B3FDAB54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3FDD328(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B3FDD368(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v7 - v4;
  swift_getAtKeyPath();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B3FDD460()
{
  type metadata accessor for PhotosObservableChangeCounter.Update();
  sub_1B405DE74();
  swift_allocObject();
  v0 = sub_1B405D604();

  return sub_1B3FA540C(v0);
}

uint64_t sub_1B3FDD4F0()
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](0);
  return sub_1B405E154();
}

uint64_t sub_1B3FDD53C()
{
  sub_1B405E124();
  sub_1B3FDD4C8();
  return sub_1B405E154();
}

uint64_t sub_1B3FDD580@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3FDD460();
  *a1 = result;
  return result;
}

uint64_t PhotosObservableChangeCounter.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t PhotosObservableChangeCounter.__deallocating_deinit()
{
  PhotosObservableChangeCounter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FDD6B4()
{
  result = swift_checkMetadataState();
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

_BYTE *sub_1B3FDD7C0(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B3FDD894(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3FDD90C()
{
  sub_1B405E124();
  sub_1B3FDD954();
  return sub_1B405E154();
}

uint64_t sub_1B3FDD954()
{
  sub_1B405D494();
}

uint64_t sub_1B3FDDA04(uint64_t a1, unsigned __int8 a2)
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](a2);
  return sub_1B405E154();
}

uint64_t sub_1B3FDDA48()
{
  sub_1B405E124();
  sub_1B3FDD954();
  return sub_1B405E154();
}

double sub_1B3FDDAA4()
{
  result = *&PXSimpleIndexPathNull;
  xmmword_1EB87CAA0 = PXSimpleIndexPathNull;
  *&qword_1EB87CAB0 = unk_1B40754C8;
  return result;
}

uint64_t static PXSimpleIndexPath.null.getter()
{
  if (qword_1EB87B7D0 != -1)
  {
    swift_once();
  }

  return xmmword_1EB87CAA0;
}

uint64_t sub_1B3FDDB18()
{
  v0 = sub_1B405DE04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B3FDDB64(char a1)
{
  result = 0x6E6F6974636573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1835365481;
      break;
    case 3:
      result = 0x6D657469627573;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B3FDDC20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3FDDB18();
  *a1 = result;
  return result;
}

unint64_t sub_1B3FDDC50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B3FDDB64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B3FDDC84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3FDDB18();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FDDCB8(uint64_t a1)
{
  v2 = sub_1B3FDDEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B3FDDCF4(uint64_t a1)
{
  v2 = sub_1B3FDDEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PXSimpleIndexPath.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87CAC0);
  OUTLINED_FUNCTION_0_12();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B3FDDEBC();
  sub_1B405E184();
  v24 = 0;
  OUTLINED_FUNCTION_1_37(a2, &v24);
  if (!v5)
  {
    v16 = a4;
    v17 = v19;
    v23 = 1;
    OUTLINED_FUNCTION_1_37(v20, &v23);
    v22 = 2;
    OUTLINED_FUNCTION_1_37(v16, &v22);
    v21 = 3;
    OUTLINED_FUNCTION_1_37(v17, &v21);
  }

  return (*(v11 + 8))(v15, v9);
}

unint64_t sub_1B3FDDEBC()
{
  result = qword_1EB87CAC8;
  if (!qword_1EB87CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87CAC8);
  }

  return result;
}

uint64_t PXSimpleIndexPath.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87CAD0);
  OUTLINED_FUNCTION_0_12();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B3FDDEBC();
  sub_1B405E174();
  v15 = 0;
  v9 = OUTLINED_FUNCTION_0_47(&v15);
  v14 = 1;
  OUTLINED_FUNCTION_0_47(&v14);
  v13 = 2;
  OUTLINED_FUNCTION_0_47(&v13);
  v12 = 3;
  OUTLINED_FUNCTION_0_47(&v12);
  (*(v4 + 8))(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B3FDE0D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PXSimpleIndexPath.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t PXSimpleIndexPath.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1B8C70190](a2);
  MEMORY[0x1B8C70190](a3);
  MEMORY[0x1B8C70190](a4);
  return MEMORY[0x1B8C70190](a5);
}

uint64_t PXSimpleIndexPath.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](a1);
  MEMORY[0x1B8C70190](a2);
  MEMORY[0x1B8C70190](a3);
  MEMORY[0x1B8C70190](a4);
  return sub_1B405E154();
}

uint64_t sub_1B3FDE218()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B405E124();
  PXSimpleIndexPath.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1B405E154();
}

unint64_t sub_1B3FDE278()
{
  result = qword_1EB87CAD8;
  if (!qword_1EB87CAD8)
  {
    type metadata accessor for PXSimpleIndexPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87CAD8);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1B3FDE3B0()
{
  result = qword_1EB87CAE0;
  if (!qword_1EB87CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87CAE0);
  }

  return result;
}

unint64_t sub_1B3FDE408()
{
  result = qword_1EB87CAE8;
  if (!qword_1EB87CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87CAE8);
  }

  return result;
}

unint64_t sub_1B3FDE460()
{
  result = qword_1EB87CAF0[0];
  if (!qword_1EB87CAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB87CAF0);
  }

  return result;
}

uint64_t SettingsValidationStore.validate(_:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 16);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  *&v20[0] = v7;
  OUTLINED_FUNCTION_0_48();
  swift_getExtendedExistentialTypeMetadata_unique();
  OUTLINED_FUNCTION_2_33();
  v8 = sub_1B405D5F4();
  v21 = v8;
  OUTLINED_FUNCTION_2_33();
  if (v8 == sub_1B405D684())
  {
    v9 = 1;
LABEL_8:

    return v9 & 1;
  }

  else
  {
    v9 = 1;
    while (1)
    {
      OUTLINED_FUNCTION_2_33();
      v10 = sub_1B405D664();
      sub_1B405D614();
      if ((v10 & 1) == 0)
      {
        break;
      }

      sub_1B3F90F0C(v6 + 32 + 40 * v8, v20);
      sub_1B405D6E4();
      sub_1B3F90E0C(v20, v17);
      v11 = v18;
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      if (((*(v12 + 24))(a1, v11, v12) & 1) == 0)
      {
        v13 = v18;
        v14 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v14 + 32))(a1, a2, v13, v14);
        v9 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_2_33();
      v15 = sub_1B405D684();
      v8 = v21;
      if (v21 == v15)
      {
        goto LABEL_8;
      }
    }

    result = sub_1B405DC04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FDE654@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0_48();
  swift_getExtendedExistentialTypeMetadata_unique();
  result = sub_1B405D644();
  *a1 = result;
  return result;
}

uint64_t SettingsValidationStore.addValidation<A>(for:validator:)()
{
  type metadata accessor for TypedSettingsValidator();
  OUTLINED_FUNCTION_1_38();

  OUTLINED_FUNCTION_0_48();
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1B405D704();
  return sub_1B405D694();
}

uint64_t SettingsValidationStore.addRangeValidation<A, B>(for:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  *(v16 + 2) = v17;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = v18;
  v19 = v21[0];
  *(v16 + 6) = a6;
  *(v16 + 7) = v19;
  (*(v12 + 32))(&v16[v15], v14, a5);
  v22 = v17;
  v23 = a4;
  v24 = v18;
  v25 = a6;
  v25 = type metadata accessor for TypedSettingsValidator();
  v26 = OUTLINED_FUNCTION_1_38();
  v22 = a1;
  v23 = sub_1B3FDEF34;
  v24 = v16;

  v21[2] = v17;
  OUTLINED_FUNCTION_0_48();
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1B405D704();
  return sub_1B405D694();
}

uint64_t sub_1B3FDE8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v11 = a3(v10);
  (*(v8 + 8))(v10, a6);
  return v11 & 1;
}

uint64_t sub_1B3FDE9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v65 = a6;
  v69 = a5;
  v10 = *(a7 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v60 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v66 = &v60 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v60 - v25;

  v72 = a1;
  v27 = swift_readAtKeyPath();
  v68 = v10;
  v30 = *(v10 + 16);
  v29 = v10 + 16;
  v28 = v30;
  (v30)(v26);
  v27(v75, 0);
  v73 = a3;
  swift_getAtKeyPath();
  if (qword_1EB879FB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1B405D0F4();
  __swift_project_value_buffer(v31, qword_1EB883CF8);
  v32 = v66;
  v28(v66, v26, a7);
  v70 = v23;
  v28(v16, v23, a7);

  v33 = sub_1B405D0D4();
  v34 = sub_1B405D9B4();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v28;
  v67 = v29;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v69 = v28;
    v38 = v37;
    v63 = swift_slowAlloc();
    v75[0] = v63;
    *v38 = 136315650;
    v60 = v16;
    v39 = v32;
    v62 = v34;
    v40 = v71;
    v69(v71, v32, a7);
    v41 = sub_1B405D464();
    v64 = v26;
    v42 = v41;
    v44 = v43;
    v61 = v33;
    v45 = *(v68 + 8);
    v45(v39, a7);
    v46 = sub_1B3F95078(v42, v44, v75);

    *(v38 + 4) = v46;
    *(v38 + 12) = 2080;
    v74 = v73;
    sub_1B405DD14();
    v47 = sub_1B405D464();
    v49 = sub_1B3F95078(v47, v48, v75);

    *(v38 + 14) = v49;
    *(v38 + 22) = 2080;
    v50 = v60;
    v69(v40, v60, a7);
    v51 = sub_1B405D464();
    v53 = v52;
    v45(v50, a7);
    v54 = sub_1B3F95078(v51, v53, v75);
    v26 = v64;

    *(v38 + 24) = v54;
    v55 = v61;
    _os_log_impl(&dword_1B3F73000, v61, v62, "Ignoring invalid value %s for %s. Falling back to %s", v38, 0x20u);
    v56 = v63;
    swift_arrayDestroy();
    MEMORY[0x1B8C71C00](v56, -1, -1);
    v57 = v38;
    v36 = v69;
    MEMORY[0x1B8C71C00](v57, -1, -1);
  }

  else
  {

    v45 = *(v68 + 8);
    v45(v16, a7);
    v45(v32, a7);
    v40 = v71;
  }

  v58 = v70;
  v36(v40, v70, a7);
  swift_setAtWritableKeyPath();
  v45(v58, a7);
  return (v45)(v26, a7);
}

uint64_t sub_1B3FDEF94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FDEFE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FDF030(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3FDF074();
  sub_1B3FDF468(a1, a2);
  return v4;
}

uint64_t sub_1B3FDF074()
{
  result = sub_1B3FDF304();
  if (!result)
  {
    type metadata accessor for PhotosMenu();
    v2 = [v0 title];
    sub_1B405D444();

    v3 = [v0 image];
    v4 = [v0 identifier];
    [v0 options];
    [v0 preferredElementSize];
    v5 = [v0 children];
    sub_1B3FDFCD8();
    sub_1B405D5E4();

    return sub_1B405DA64();
  }

  return result;
}

uint64_t sub_1B3FDF1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3FDF074();
  sub_1B3FDF4B0(a1, a2);
  return v4;
}

id sub_1B3FDF264(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

uint64_t sub_1B3FDF304()
{
  type metadata accessor for PhotosMenu();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v0;
  }

  return v1;
}

void sub_1B3FDF344(void *a1)
{
  v1 = a1;
  sub_1B3FDF3A4(sub_1B3FDF5A8);
}

void sub_1B3FDF3A4(void (*a1)(void))
{
  v2 = sub_1B3FDF304();
  if (v2)
  {
    v3 = v2;
    a1();
  }
}

void sub_1B3FDF408(void *a1)
{
  v1 = a1;
  sub_1B3FDF3A4(sub_1B3FDF5C0);
}

uint64_t sub_1B3FDF4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *))
{
  v10 = a3();
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  sub_1B3F7F018(v10);

  a6(a5, v13);

  return sub_1B3F971F8(v10, v12);
}

void (*sub_1B3FDF5D8(uint64_t (*a1)(void)))(void)
{
  result = a1();
  if (result)
  {
    v3 = result;
    v4 = v2;
    result();

    return sub_1B3F971F8(v3, v4);
  }

  return result;
}

uint64_t sub_1B3FDF658(void *a1)
{
  v2 = sub_1B3FDF810();
  v3 = *&v2[*a1];
  sub_1B3F7F018(v3);

  return v3;
}

void sub_1B3FDF6B8(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = sub_1B3FDF810();
  v6 = &v9[*a3];
  v7 = *v6;
  v8 = *(v6 + 1);
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_1B3F971F8(v7, v8);
}

id sub_1B3FDF720()
{
  v1 = &v0[OBJC_IVAR____TtCC18PhotosUIFoundationP33_F1FFA23AA0A87EA3C0AD5EEF9323CB9A10PhotosMenu14AssociatedData_onOpenAction];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtCC18PhotosUIFoundationP33_F1FFA23AA0A87EA3C0AD5EEF9323CB9A10PhotosMenu14AssociatedData_onCloseAction];
  v3 = type metadata accessor for PhotosMenu.AssociatedData();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B3FDF810()
{
  if (objc_getAssociatedObject(v0, &unk_1EB87CB78))
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_1B3F791B4(v6);
    goto LABEL_8;
  }

  type metadata accessor for PhotosMenu.AssociatedData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v1 = [objc_allocWithZone(type metadata accessor for PhotosMenu.AssociatedData()) init];
    objc_setAssociatedObject(v0, &unk_1EB87CB78, v1, 1);
    return v1;
  }

  return v3;
}

void sub_1B3FDF8F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PhotosMenu();
  v12.receiver = v3;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, sel_copyWithZone_, a1);
  sub_1B405DAF4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v7 = sub_1B3FDF634();
  sub_1B3FDF640(v7, v8);
  v9 = sub_1B3FDF64C();
  sub_1B3FDF6AC(v9, v10);
  a2[3] = v6;
  *a2 = v11;
}

uint64_t sub_1B3FDFA20()
{
  v1 = v0;
  sub_1B3FDFCD8();
  v2 = sub_1B405D5D4();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhotosMenu();
  v3 = objc_msgSendSuper2(&v10, sel_menuByReplacingChildren_, v2);

  v4 = swift_dynamicCastClassUnconditional();
  v5 = sub_1B3FDF634();
  sub_1B3FDF640(v5, v6);
  v7 = sub_1B3FDF64C();
  sub_1B3FDF6AC(v7, v8);
  return v4;
}

id sub_1B3FDFB58(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosMenu();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1B3FDFC04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B3FDFC90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  return v2();
}

unint64_t sub_1B3FDFCD8()
{
  result = qword_1EB879F98;
  if (!qword_1EB879F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB879F98);
  }

  return result;
}

uint64_t PhotosAssociatedDataObject.associatedData.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v8);
  if (v9)
  {
    sub_1B3F7AC48(&v8, &v10);
    sub_1B3F7AC48(&v10, &v8);
    OUTLINED_FUNCTION_0_50();
    swift_dynamicCast();
    return v7;
  }

  else
  {
    sub_1B3F791B4(&v8);
    v4 = (*(a2 + 48))(a1, a2);
    v11 = OUTLINED_FUNCTION_0_50();
    *&v10 = v4;
    v5 = *(a2 + 24);
    swift_unknownObjectRetain();
    v5(&v10, a1, a2);
  }

  return v4;
}

uint64_t PXDisplayCollection.px_showsOnlyVideos.getter()
{
  if ([v0 px_isVideosSmartAlbum] & 1) != 0 || (objc_msgSend(v0, sel_px_isSlomoVideosSmartAlbum) & 1) != 0 || (objc_msgSend(v0, sel_px_isTimelapsesSmartAlbum))
  {
    return 1;
  }

  else
  {
    return [v0 px_isCinematicSmartAlbum];
  }
}

id PXPhotosEnvironmentReference.init(photosEnvironment:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(&v9, ObjectType, a2);
  v5 = v9;
  type metadata accessor for Environment();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = [v3 initWithWrappedValue_];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t PXPhotosEnvironmentReference.photosEnvironment.getter()
{
  v1 = [v0 wrappedValue];
  sub_1B405DAF4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87C6E0);
  swift_dynamicCast();
  return v3;
}

uint64_t sub_1B3FE0070()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t PhotosAnyCollectionAdditionalInfo.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  a4[3] = v14;
  a4[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
  v17 = *(v9 + 32);
  v17(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  result = (v17)(v19 + v18, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_1B3FE06B0;
  a4[6] = v19;
  return result;
}

uint64_t sub_1B3FE0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a4;
  v38 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34[0] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B405DAC4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v10);
  v13 = v34 - v12;
  v14 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v39 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v34 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v34 - v23;
  sub_1B3F90F0C(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87CB90);
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v24, v25 ^ 1u, 1, a3);
  v36 = v6;
  (*(v6 + 16))(v21, v38, a3);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, a3);
  v37 = TupleTypeMetadata2;
  v38 = v14;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v14 + 16);
  v27(v13, v24, v8);
  v27(&v13[v26], v21, v8);
  if (__swift_getEnumTagSinglePayload(v13, 1, a3) != 1)
  {
    v27(v39, v13, v8);
    if (__swift_getEnumTagSinglePayload(&v13[v26], 1, a3) != 1)
    {
      v30 = v36;
      v31 = v34[0];
      (*(v36 + 32))(v34[0], &v13[v26], a3);
      v29 = sub_1B405D404();
      v32 = *(v30 + 8);
      v32(v31, a3);
      v28 = *(v14 + 8);
      v28(v21, v8);
      v32(v39, a3);
      v28(v13, v8);
      goto LABEL_8;
    }

    v28 = *(v14 + 8);
    v28(v21, v8);
    (*(v36 + 8))(v39, a3);
    goto LABEL_6;
  }

  v28 = *(v14 + 8);
  v28(v21, v8);
  if (__swift_getEnumTagSinglePayload(&v13[v26], 1, a3) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v13, v37);
    v29 = 0;
    goto LABEL_8;
  }

  v28(v13, v8);
  v29 = 1;
LABEL_8:
  v28(v24, v8);
  return v29 & 1;
}

uint64_t PhotosAnyCollectionAdditionalInfo.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 16))(v14, v3, v4);
  v12 = v15;
  v5 = v15;
  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v17 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v13 = v17;
  v8 = v17;
  v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
  *(a1 + 24) = v13;
  v10 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t PhotosAnyCollectionAdditionalInfo.hashValue.getter()
{
  sub_1B405E124();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1B405D374();
  return sub_1B405E154();
}

uint64_t sub_1B3FE0904()
{
  sub_1B405E124();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1B405D374();
  return sub_1B405E154();
}

uint64_t PhotosAnyCollectionAdditionalInfo.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v27 - v23;
  (*(v10 + 16))(v14, a1, v8);
  if (__swift_getEnumTagSinglePayload(v14, 1, a2) == 1)
  {
    v25 = *(v10 + 8);
    v25(a1, v8);
    result = (v25)(v14, v8);
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    (*(v16 + 32))(v24, v14, a2);
    (*(v16 + 16))(v21, v24, a2);
    PhotosAnyCollectionAdditionalInfo.init<A>(_:)(v21, a2, a3, a4);
    (*(v10 + 8))(a1, v8);
    return (*(v16 + 8))(v24, a2);
  }

  return result;
}

unint64_t sub_1B3FE0BA4(uint64_t a1)
{
  result = sub_1B3FE0BCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B3FE0BCC()
{
  result = qword_1EB87A360[0];
  if (!qword_1EB87A360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB87A360);
  }

  return result;
}

unint64_t sub_1B3FE0C24()
{
  result = qword_1EB87A358;
  if (!qword_1EB87A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87A358);
  }

  return result;
}

void PXEnumerateAllViewsUsingBlock(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  obj = [v2 connectedScenes];

  v12 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v12)
  {
    v11 = *v22;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v3 = *(*(&v21 + 1) + 8 * v13);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = [v3 windows];
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
      if (v5)
      {
        v6 = *v18;
LABEL_8:
        v7 = 0;
        while (1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * v7);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __PXEnumerateAllViewsUsingBlock_block_invoke;
          v14[3] = &unk_1E7BB54F0;
          v15 = v1;
          v16 = &v25;
          [v8 px_enumerateDescendantSubviewsUsingBlock:v14];
          v9 = *(v26 + 24);

          if (v9)
          {
            break;
          }

          if (v5 == ++v7)
          {
            v5 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
            if (v5)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      if (v26[3])
      {
        break;
      }

      if (++v13 == v12)
      {
        v12 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v25, 8);
}

uint64_t __PXEnumerateAllViewsUsingBlock_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

CGImageRef PXCreateCGImageFromImageSourceWithMaxPixelSize(CGImageSource *a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696DFE8];
  v8[0] = *MEMORY[0x1E696E0A8];
  v8[1] = v2;
  v9[0] = MEMORY[0x1E695E110];
  v9[1] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E696E000];
  v8[2] = *MEMORY[0x1E696E0B8];
  v8[3] = v3;
  v9[2] = MEMORY[0x1E695E118];
  v9[3] = MEMORY[0x1E695E118];
  v8[4] = *MEMORY[0x1E696E100];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, 0, v5);
  return ThumbnailAtIndex;
}

double PXCGImageGetSizeWithOrientation(CGImage *a1, int a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((a2 - 5) >= 4)
  {
    return Width;
  }

  else
  {
    return Height;
  }
}

void __PXCreateContextWithAutomaticFormat_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PFUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_ERROR, "PXCreateContextWithAutomaticFormat failed with error:%@", &v4, 0xCu);
  }
}

CGContext *PXCreateContext(int a1, unint64_t a2, int a3, double a4, double a5)
{
  v8 = round(a4);
  v9 = round(a5);
  v10 = 1.0 - v8;
  if (1.0 - v9 <= 0.00000011920929 && v10 <= 0.00000011920929)
  {
    if (!a2)
    {
LABEL_19:
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGContextRef  _Nonnull PXCreateContext(CGSize, BOOL, PXGColorSpaceName, BOOL)"}];
      [v20 handleFailureInFunction:v21 file:@"CGImage+PhotosUIFoundation.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"colorSpaceName != PXGColorSpaceUndefined"}];

      v12 = colorspaces[0];
      if (a1)
      {
        v13 = 5;
      }

      else
      {
        v13 = 1;
      }

LABEL_15:
      v13 |= 0x4000u;
LABEL_16:
      v14 = 8;
      goto LABEL_17;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGContextRef  _Nonnull PXCreateContext(CGSize, BOOL, PXGColorSpaceName, BOOL)"}];
    [v18 handleFailureInFunction:v19 file:@"CGImage+PhotosUIFoundation.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"!PXPixelSizeAreaIsZero(roundedSize)"}];

    if (!a2)
    {
      goto LABEL_19;
    }
  }

  v12 = PXGetColorSpace(a2);
  if (a1)
  {
    v13 = 5;
  }

  else
  {
    v13 = 1;
  }

  if (!((a2 > 0xF) | (0x6F60u >> a2) & 1) || !a3)
  {
    if (a2 > 0xF || ((0xAu >> a2) & 1) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 |= 0x1100u;
  v14 = 16;
LABEL_17:
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v16 = CGBitmapContextCreate(0, v8, v9, v14, AlignedBytesPerRow, v12, v13);
  v22.size.width = v8;
  v22.size.height = v9;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextClearRect(v16, v22);
  return v16;
}

__CFString *PXScrollViewSpeedometerRegimeDescription(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"???";
  }

  else
  {
    return off_1E7BB5650[a1 + 1];
  }
}

void PXDeferredDealloc(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (PXDeferredDealloc_onceToken != -1)
    {
      dispatch_once(&PXDeferredDealloc_onceToken, &__block_literal_global_1250);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PXDeferredDealloc_block_invoke_2;
    block[3] = &unk_1E7BB8880;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __PXDeferredDealloc_block_invoke_2(uint64_t a1)
{
  v1 = PXDeferredDealloc_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PXDeferredDealloc_block_invoke_3;
  block[3] = &unk_1E7BB8880;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

uint64_t __PXDeferredDealloc_block_invoke()
{
  PXDeferredDealloc_queue = px_dispatch_queue_create_serial("com.apple.PXDeferredDealloc", QOS_CLASS_UTILITY);

  return MEMORY[0x1EEE66BB8]();
}

id PXStringWithValidatedFormat()
{
  v0 = PFStringWithValidatedFormatAndLocale();

  return v0;
}

id PXLocalizedStringWithValidatedFormat(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentLocale];
  v7 = PFStringWithValidatedFormatAndLocale();

  return v7;
}

__CFString *PXLocalizedComposedString(void *a1, unint64_t a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    if (v6 == 1)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
    }

    else
    {
      v29 = a3;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = v5;
      obj = v5;
      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v8 = 0;
        v11 = 0;
        v12 = *v33;
LABEL_7:
        v13 = 0;
        v14 = v11;
        while (1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * v13);
          v11 = v14 + 1;
          if (v14)
          {
            if (v14 == 1 && v11 >= v7)
            {
              v16 = PXPhotosUIFoundationBundle();
              v17 = v16;
              v18 = @"LIST_END_SEPARATOR_FORMAT_1";
            }

            else
            {
              v16 = PXPhotosUIFoundationBundle();
              v17 = v16;
              if (v14 < 2 || v11 < v7)
              {
                v18 = @"LIST_MID_SEPARATOR_FORMAT";
              }

              else
              {
                v18 = @"LIST_END_SEPARATOR_FORMAT_N";
              }
            }

            v21 = [v16 localizedStringForKey:v18 value:&stru_1F2B87EE0 table:0];
            v28 = v15;
            v20 = PXStringWithValidatedFormat();
          }

          else
          {
            v19 = [MEMORY[0x1E696AD60] stringWithCapacity:20 * v7];

            v20 = v15;
            v8 = v19;
          }

          [(__CFString *)v8 appendString:v20, v28];

          if (v11 >= a2)
          {
            break;
          }

          ++v13;
          v14 = v11;
          if (v10 == v13)
          {
            v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v10)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v22 = (v7 - a2);
      if ((v7 - a2) < 1)
      {
        v5 = v30;
      }

      else
      {
        v23 = PXPhotosUIFoundationBundle();
        v24 = v23;
        if (v29)
        {
          v25 = [v23 localizedStringForKey:@"LIST_END_AND_MORE_FORMAT" value:&stru_1F2B87EE0 table:0];
        }

        else
        {
          v26 = [v23 localizedStringForKey:@"LIST_END_AND_N_MORE_FORMAT" value:&stru_1F2B87EE0 table:0];

          v28 = v22;
          v25 = PXStringWithValidatedFormat();
          v24 = v26;
        }

        v5 = v30;
        [(__CFString *)v8 appendString:v25, v28];
      }
    }
  }

  else
  {
    v8 = &stru_1F2B87EE0;
  }

  return v8;
}

uint64_t PXDisplayAssetTypedCountFromSelectionSnapshot(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16 = "";
  v2 = [v1 dataSource];
  v3 = [v1 selectedIndexPaths];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __PXDisplayAssetTypedCountFromSelectionSnapshot_block_invoke;
  v10 = &unk_1E7BB58F8;
  v4 = v2;
  v11 = v4;
  v12 = &v13;
  [v3 enumerateItemIndexPathsUsingBlock:&v7];
  v5 = [v3 count];
  v14[4] = v5;

  _Block_object_dispose(&v13, 8);
  return v5;
}

void sub_1B3FE83AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PXDisplayAssetTypedCountFromSelectionSnapshot_block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = [v5 objectAtIndexPath:v10];
  v8 = [v7 mediaType];
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 32))
  {
    if (v8 != *(v9 + 40))
    {
      *(v9 + 40) = 0;
      *a3 = 1;
    }
  }

  else
  {
    *(v9 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(*(*(a1 + 40) + 8) + 40) = v8;
  }
}

void sub_1B3FE8DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3FE9F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXFirstIndexInSortedRangePassingTest(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    goto LABEL_9;
  }

  if ((*(v5 + 2))(v5, a1))
  {
    v7 = a1;
    goto LABEL_10;
  }

  v7 = a2 + a1 - 1;
  if (!v6[2](v6, v7))
  {
LABEL_9:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  while (a1 < v7 - 1)
  {
    v8 = a1 + (v7 - a1) / 2;
    if (v6[2](v6, v8))
    {
      v7 = a1 + (v7 - a1) / 2;
    }

    else
    {
      a1 = v8;
    }
  }

LABEL_10:

  return v7;
}

uint64_t PXLastIndexInSortedRangePassingTest(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && (*(v5 + 2))(v5, a1))
  {
    v7 = a2 + a1 - 1;
    if ((v6[2])(v6, v7))
    {
      a1 = v7;
    }

    else
    {
      while (a1 < v7 - 1)
      {
        if (v6[2](v6, a1 + (v7 - a1) / 2))
        {
          a1 += (v7 - a1) / 2;
        }

        else
        {
          v7 = a1 + (v7 - a1) / 2;
        }
      }
    }
  }

  else
  {
    a1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return a1;
}

id PXFilterArrayForObjectsOfClass(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id PXArrayByMovingObjectFromIndexToIndex(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 mutableCopy];
  v6 = [v5 objectAtIndex:a2];
  [v5 removeObjectAtIndex:a2];
  [v5 insertObject:v6 atIndex:a3];

  return v5;
}

id PXArrayFromFrequencySortAndDeduplicationOfNSStringSet(void *a1)
{
  v1 = a1;
  v2 = [v1 allObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PXArrayFromFrequencySortAndDeduplicationOfNSStringSet_block_invoke;
  v6[3] = &unk_1E7BB5830;
  v7 = v1;
  v3 = v1;
  v4 = [v2 sortedArrayUsingComparator:v6];

  return v4;
}

uint64_t __PXArrayFromFrequencySortAndDeduplicationOfNSStringSet_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) countForObject:v5];
  v8 = [*(a1 + 32) countForObject:v6];
  if (v7 == v8)
  {
    v9 = [v5 localizedCompare:v6];
  }

  else if (v7 > v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id PXArrayRotate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 count];
  if (a2 < 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray * _Nonnull PXArrayRotate(NSArray *__strong _Nonnull, NSInteger)"}];
    [v11 handleFailureInFunction:v12 file:@"NSArray+PhotosUIFoundation.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"rotationLength >= 0"}];
  }

  v5 = fmod(a2, v4);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 copy];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v8 = [v3 subarrayWithRange:{v5, v4 - v5}];
    [v7 addObjectsFromArray:v8];

    v9 = [v3 subarrayWithRange:{0, v5}];
    [v7 addObjectsFromArray:v9];
  }

  return v7;
}

__CFString *PXUserInterfaceLayoutDirectionDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7BB5850[a1];
  }
}

uint64_t PXFlipLayoutDirection(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  if (a1 != 2)
  {
    if (!a1)
    {
      v2 = [MEMORY[0x1E696AAA8] currentHandler];
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXUserInterfaceLayoutDirection PXFlipLayoutDirection(PXUserInterfaceLayoutDirection)"];
      [v2 handleFailureInFunction:v3 file:@"PXUserInterfaceLayoutDirection.m" lineNumber:28 description:@"Unable to flip unspecified layout direction"];

      abort();
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXUserInterfaceLayoutDirection PXFlipLayoutDirection(PXUserInterfaceLayoutDirection)"];
    [v5 handleFailureInFunction:v6 file:@"PXUserInterfaceLayoutDirection.m" lineNumber:34 description:{@"Unknown layout direction %ti", a1}];

    abort();
  }

  return 1;
}

uint64_t PXLeadingRectEdge(uint64_t result)
{
  if (result == 1)
  {
    return 0;
  }

  if (result != 2)
  {
    if (!result)
    {
      v1 = [MEMORY[0x1E696AAA8] currentHandler];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRectEdge PXLeadingRectEdge(PXUserInterfaceLayoutDirection)"];
      [v1 handleFailureInFunction:v2 file:@"PXUserInterfaceLayoutDirection.m" lineNumber:40 description:@"Unspecified layout direction"];

      abort();
    }

    v3 = result;
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRectEdge PXLeadingRectEdge(PXUserInterfaceLayoutDirection)"];
    [v4 handleFailureInFunction:v5 file:@"PXUserInterfaceLayoutDirection.m" lineNumber:46 description:{@"Unknown layout direction %ti", v3}];

    abort();
  }

  return result;
}

uint64_t PXTrailingRectEdge(uint64_t a1)
{
  v1 = PXFlipLayoutDirection(a1);

  return PXLeadingRectEdge(v1);
}

uint64_t PXUserInterfaceLayoutDirectionFromUIUserInterfaceLayoutDirection(uint64_t a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

uint64_t CGSizeHash(double a1, double a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v4 = [v3 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6 + 961;
}

uint64_t PXUserInterfaceOrientationOpposite(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

__CFString *PXUserInterfaceStyleDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v1 = [v2 description];
  }

  else
  {
    v1 = off_1E7BB58B0[a1];
  }

  return v1;
}

void sub_1B3FF539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF5790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF5CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF651C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF6704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF6910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3FF6B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSIndexPathsFromPXIndexPathSet(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NSIndexPathsFromPXIndexPathSet_block_invoke;
  v6[3] = &unk_1E7BB6090;
  v4 = v3;
  v7 = v4;
  [v2 enumerateItemIndexPathsUsingBlock:v6];

  return v4;
}

void __NSIndexPathsFromPXIndexPathSet_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:*(a2 + 16) inSection:*(a2 + 8)];
  [v2 addObject:v3];
}

id PXIndexPathSetFromIndexPaths(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 px_section];
        v12 = [v10 px_item];
        v14[0] = a2;
        v14[1] = v11;
        v14[2] = v12;
        v14[3] = 0x7FFFFFFFFFFFFFFFLL;
        [v4 addIndexPath:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t PXDisplayAssetCollectionSharingShouldStartWithAllAssetsSelected(void *a1)
{
  v1 = a1;
  if ([v1 px_isSavedTodayCollection] & 1) != 0 || (objc_msgSend(v1, "px_isEvent") & 1) != 0 || (objc_msgSend(v1, "px_isUserCreated") & 1) != 0 || (objc_msgSend(v1, "px_isMemory") & 1) != 0 || (objc_msgSend(v1, "px_isSharedAlbum") & 1) != 0 || (objc_msgSend(v1, "px_isTrip"))
  {
    v2 = 1;
  }

  else if ([v1 px_isRecentsCollection])
  {
    v2 = [v1 px_isRecentlySavedCollection] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B3FF8740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4156(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3FFA190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _InternalWorkQueue_PerformChanges(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 16);
    v4 = a1;
    v3(a2, v4);
    [v4 _updateIfNeeded];
  }
}

double PXEdgeInsetsMakeWithValueForEdges(char a1, double a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0.0;
  }
}

double PXEdgeInsetsInsetSizeEdges(char a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if ((a1 & 2) == 0)
  {
    a5 = 0.0;
  }

  if ((a1 & 8) == 0)
  {
    a7 = 0.0;
  }

  return a2 - (a5 + a7);
}

double PXEdgeInsetsForEdges(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

double PXEdgeInsetsInsetRectEdges(char a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if ((a1 & 2) == 0)
  {
    a7 = 0.0;
  }

  return a2 + a7;
}

double PXEdgeInsetsAdd(char a1, double a2, double a3, double a4, double a5, double a6)
{
  if ((a1 & 1) == 0)
  {
    a6 = 0.0;
  }

  return a2 + a6;
}

void __PXBreakableWhitespaceCharacterSet_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@" "];
  v1 = [v3 copy];
  v2 = PXBreakableWhitespaceCharacterSet_breakableWhitespaceCharacterSet;
  PXBreakableWhitespaceCharacterSet_breakableWhitespaceCharacterSet = v1;
}

void _ConfigureGadgetColumnWidthAndSpacingSetBReferenceValues(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  _GadgetSpecReferenceValues(3uLL, 2uLL, v4, v3, 320.0, 16.0, 90.0);
  _GadgetSpecReferenceValues(3uLL, 2uLL, v4, v3, 375.0, 20.0, 105.0);
  _GadgetSpecReferenceValues(3uLL, 2uLL, v4, v3, 375.0, 20.0, 105.0);
  _GadgetSpecReferenceValues(3uLL, 2uLL, v4, v3, 414.0, 20.0, 118.0);
  _GadgetSpecReferenceValues(3uLL, 2uLL, v4, v3, 414.0, 20.0, 118.0);
  _GadgetSpecReferenceValues(5uLL, 2uLL, v4, v3, 768.0, 34.0, 130.0);
  _GadgetSpecReferenceValues(5uLL, 2uLL, v4, v3, 834.0, 46.0, 130.0);
  _GadgetSpecReferenceValues(6uLL, 2uLL, v4, v3, 1024.0, 52.0, 130.0);
  _GadgetSpecReferenceValues(4uLL, 2uLL, v4, v3, 568.0, 56.0, 90.0);
  _GadgetSpecReferenceValues(4uLL, 2uLL, v4, v3, 667.0, 62.0, 105.0);
  _GadgetSpecReferenceValues(6uLL, 2uLL, v4, v3, 812.0, 60.0, 105.0);
  _GadgetSpecReferenceValues(4uLL, 2uLL, v4, v3, 736.0, 66.0, 118.0);
  _GadgetSpecReferenceValues(5uLL, 2uLL, v4, v3, 896.0, 64.0, 118.0);
  _GadgetSpecReferenceValues(6uLL, 2uLL, v4, v3, 1024.0, 52.0, 130.0);
  _GadgetSpecReferenceValues(7uLL, 2uLL, v4, v3, 1112.0, 31.0, 130.0);
  _GadgetSpecReferenceValues(8uLL, 2uLL, v4, v3, 1366.0, 52.0, 130.0);
}

void _GadgetSpecReferenceValues(unint64_t a1, unint64_t a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v24 = a3;
  v13 = a4;
  if (a5 <= 0.0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _GadgetSpecReferenceValues(CGFloat, CGFloat, CGFloat, NSUInteger, NSUInteger, PXLayoutMetricInterpolator *__strong, PXLayoutMetricInterpolator *__strong)"}];
    [v16 handleFailureInFunction:v17 file:@"PXLayoutMetricInterpolator.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"layoutWidth > 0"}];
  }

  if (a6 < 0.0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _GadgetSpecReferenceValues(CGFloat, CGFloat, CGFloat, NSUInteger, NSUInteger, PXLayoutMetricInterpolator *__strong, PXLayoutMetricInterpolator *__strong)"}];
    [v18 handleFailureInFunction:v19 file:@"PXLayoutMetricInterpolator.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"layoutMargin >= 0"}];
  }

  if (a7 <= 0.0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _GadgetSpecReferenceValues(CGFloat, CGFloat, CGFloat, NSUInteger, NSUInteger, PXLayoutMetricInterpolator *__strong, PXLayoutMetricInterpolator *__strong)"}];
    [v20 handleFailureInFunction:v21 file:@"PXLayoutMetricInterpolator.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"singleColumnWidth > 0"}];
  }

  v14 = a5 + a6 * -2.0 - a7 * a1;
  if (v14 < 0.0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _GadgetSpecReferenceValues(CGFloat, CGFloat, CGFloat, NSUInteger, NSUInteger, PXLayoutMetricInterpolator *__strong, PXLayoutMetricInterpolator *__strong)"}];
    [v22 handleFailureInFunction:v23 file:@"PXLayoutMetricInterpolator.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"extraSpace >= 0"}];
  }

  v15 = floor(v14 / (a1 - 1));
  [v13 setReferenceValue:v15 * (a2 - 1) + a7 * a2 forMetric:a5];
  [v24 setReferenceValue:v15 forMetric:a5];
}

void _ConfigureGadgetColumnWidthAndSpacingSetAReferenceValues(unint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 320.0, 16.0, 140.0);
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 375.0, 20.0, 162.0);
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 375.0, 20.0, 162.0);
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 414.0, 20.0, 182.0);
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 414.0, 20.0, 182.0);
  _GadgetSpecReferenceValues(2uLL, a1, v6, v5, 428.0, 22.0, 186.0);
  _GadgetSpecReferenceValues(4uLL, a1, v6, v5, 768.0, 34.0, 160.0);
  _GadgetSpecReferenceValues(4uLL, a1, v6, v5, 834.0, 46.0, 160.0);
  _GadgetSpecReferenceValues(5uLL, a1, v6, v5, 1024.0, 52.0, 160.0);
  _GadgetSpecReferenceValues(3uLL, a1, v6, v5, 568.0, 52.0, 136.0);
  _GadgetSpecReferenceValues(3uLL, a1, v6, v5, 667.0, 62.0, 157.0);
  _GadgetSpecReferenceValues(4uLL, a1, v6, v5, 812.0, 60.0, 157.0);
  _GadgetSpecReferenceValues(3uLL, a1, v6, v5, 736.0, 66.0, 177.0);
  _GadgetSpecReferenceValues(4uLL, a1, v6, v5, 896.0, 64.0, 177.0);
  _GadgetSpecReferenceValues(4uLL, a1, v6, v5, 926.0, 64.0, 186.0);
  _GadgetSpecReferenceValues(5uLL, a1, v6, v5, 1024.0, 52.0, 160.0);
  _GadgetSpecReferenceValues(6uLL, a1, v6, v5, 1112.0, 31.0, 160.0);
  _GadgetSpecReferenceValues(7uLL, a1, v6, v5, 1366.0, 52.0, 160.0);
}

void _ConfigureStandardLayoutMarginValues(void *a1)
{
  v1 = a1;
  [v1 setReferenceValue:16.0 forMetric:320.0];
  [v1 setReferenceValue:16.0 forMetric:375.0];
  [v1 setReferenceValue:20.0 forMetric:414.0];
}

void _ConfigureSharedReferenceValues(void *a1)
{
  v1 = a1;
  _ConfigureStandardLayoutMarginValues(v1);
  [v1 setReferenceValue:20.0 forMetric:507.0];
  [v1 setReferenceValue:22.5 forMetric:568.0];
  [v1 setReferenceValue:50.0 forMetric:667.0];
  [v1 setReferenceValue:51.3333321 forMetric:736.0];
  [v1 setReferenceValue:34.0 forMetric:768.0];
  [v1 setReferenceValue:32.0 forMetric:834.0];
  [v1 setReferenceValue:52.0 forMetric:1024.0];
  [v1 setReferenceValue:52.0 forMetric:1112.0];
  [v1 setReferenceValue:51.0 forMetric:1366.0];
}

void sub_1B40006F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B4000BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_PXDisplayAssetIndexSubfetchResult *PXDisplayAssetFetchResultSubfetchResultWithIndexSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = [v4 lastIndex];
    if (v5 >= [v3 count])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<PXDisplayAssetFetchResult>  _Nonnull PXDisplayAssetFetchResultSubfetchResultWithIndexSet(__strong id<PXDisplayAssetFetchResult> _Nonnull, NSIndexSet *__strong _Nonnull)"}];
      [v10 handleFailureInFunction:v11 file:@"PXDisplayAssetFetchResult.m" lineNumber:430 description:{@"indexSet %@ out of bounds 0 ..< %li", v4, objc_msgSend(v3, "count")}];
    }

    v6 = [[_PXDisplayAssetIndexSubfetchResult alloc] initWithFetchResult:v3 indexSet:v4];
  }

  else
  {
    v7 = [_PXArrayDisplayAssetFetchResult alloc];
    v6 = [(_PXArrayDisplayAssetFetchResult *)v7 initWithAssets:MEMORY[0x1E695E0F0]];
  }

  v8 = v6;

  return v8;
}

_PXArrayDisplayAssetFetchResult *PXDisplayAssetFetchResultEmpty()
{
  v0 = [_PXArrayDisplayAssetFetchResult alloc];
  v1 = [(_PXArrayDisplayAssetFetchResult *)v0 initWithAssets:MEMORY[0x1E695E0F0]];

  return v1;
}

_PXConcatenatingDisplayAssetFetchResult *PXDisplayAssetFetchResultFromFetchResults(void *a1)
{
  v1 = a1;
  v2 = [[_PXConcatenatingDisplayAssetFetchResult alloc] initWithFetchResults:v1];

  return v2;
}

_PXDisplayAssetScaledFetchResult *PXDisplayAssetFetchResultScaledWithMultiplier(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[_PXDisplayAssetScaledFetchResult alloc] initWithFetchResult:v3 multiplier:a2];

  return v4;
}

_PXArrayDisplayAssetFetchResult *PXDisplayAssetFetchResultFromArray(void *a1)
{
  v1 = a1;
  v2 = [[_PXArrayDisplayAssetFetchResult alloc] initWithAssets:v1];

  return v2;
}

_PXArrayDisplayAssetFetchResult *PXDisplayAssetFetchResultFromAsset(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [_PXArrayDisplayAssetFetchResult alloc];
  v6[0] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = [(_PXArrayDisplayAssetFetchResult *)v2 initWithAssets:v3];

  return v4;
}

PXDisplayAssetFetchResultEnumerator *PXDisplayAssetFetchResultFastEnumeration(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 conformsToProtocol:&unk_1F2BC1208])
    {
      v3 = v2;
    }

    else
    {
      v3 = [[PXDisplayAssetFetchResultEnumerator alloc] initWithDisplayAssetFetchResult:v2];
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PXDisplayAssetFetchResultEqualToDisplayAssetFetchResult(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4 || ([v3 isEqual:v4] & 1) != 0)
  {
LABEL_3:
    v5 = 1;
    goto LABEL_4;
  }

  v5 = 0;
  if (v3 && v4)
  {
    v7 = [v3 count];
    if (v7 != [v4 count])
    {
      v5 = 0;
      goto LABEL_4;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = v3;
      v9 = v4;
LABEL_13:
      v5 = [v8 hasIdentifiersEqualTo:v9];
      goto LABEL_4;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = v4;
      v9 = v3;
      goto LABEL_13;
    }

    v10 = [v3 count];
    if (v10 != [v4 count])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXDisplayAssetFetchResultEqualToDisplayAssetFetchResult(__strong id<PXDisplayAssetFetchResult> _Nullable, __strong id<PXDisplayAssetFetchResult> _Nullable)"}];
      [v16 handleFailureInFunction:v17 file:@"PXDisplayAssetFetchResult.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"fetchResult1.count == fetchResult2.count"}];
    }

    v11 = [v3 count];
    if (v11 < 1)
    {
      goto LABEL_3;
    }

    v12 = v11;
    v13 = 1;
    do
    {
      v14 = [v3 objectAtIndex:v13 - 1];
      v15 = [v4 objectAtIndex:v13 - 1];
      v5 = [v14 isEqual:v15];

      if (v13 >= v12)
      {
        break;
      }

      ++v13;
    }

    while ((v5 & 1) != 0);
  }

LABEL_4:

  return v5;
}

uint64_t __Block_byref_object_copy__5212(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4001CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id PXViewSpecDescriptorDescription(uint64_t *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *a1;
  v3 = a1[1];
  v4 = NSStringFromCGSize(*(a1 + 1));
  v5 = [v1 stringWithFormat:@"{context:%i, options:%i, boundingSize:%@}", v2, v3, v4];

  return v5;
}

unint64_t PXViewSpecOptionsWithTitleFontName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (PXViewSpecOptionsWithTitleFontName_onceToken != -1)
    {
      dispatch_once(&PXViewSpecOptionsWithTitleFontName_onceToken, &__block_literal_global_190);
    }

    v4 = [PXViewSpecOptionsTitleFontNameIndexes objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 unsignedIntegerValue];
    }

    else
    {
      v6 = [PXViewSpecOptionsTitleFontNames count] + 1;
      [PXViewSpecOptionsTitleFontNames addObject:v3];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      [PXViewSpecOptionsTitleFontNameIndexes setObject:v8 forKeyedSubscript:v3];
    }

    v7 = 4 * v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 | a1 & 0xFFFFFFFFFFFFF803;
}

uint64_t __PXViewSpecOptionsWithTitleFontName_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = PXViewSpecOptionsTitleFontNames;
  PXViewSpecOptionsTitleFontNames = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = PXViewSpecOptionsTitleFontNameIndexes;
  PXViewSpecOptionsTitleFontNameIndexes = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id PXViewSpecOptionsTitleFontName(unint64_t a1)
{
  v2 = (a1 >> 2) & 0x1FF;
  if (v2)
  {
    v3 = [PXViewSpecOptionsTitleFontNames objectAtIndexedSubscript:v2 - 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PXMemoryTileKindForViewSpecContext(uint64_t a1)
{
  if ((a1 - 1900) >= 0x64)
  {
    return 0;
  }

  else
  {
    return (a1 - 108) % 0xFu;
  }
}

uint64_t PXMemoryTileElementForViewSpecContext(uint64_t a1)
{
  if ((a1 - 1900) >= 0x64)
  {
    return 0;
  }

  else
  {
    return (a1 - 108) / 0xFu;
  }
}

uint64_t PXHorizontalSizeClassFromFeatureSpec(void *a1)
{
  v1 = a1;
  if ([v1 sizeClass] == 2)
  {
    v2 = 2;
  }

  else
  {
    if ([v1 sizeClass] != 1)
    {
      goto LABEL_10;
    }

    v3 = [v1 sizeSubclass];
    if ((v3 - 1) < 2)
    {
      v2 = 1;
      goto LABEL_11;
    }

    if (v3 != 3)
    {
LABEL_10:
      v2 = 0;
      goto LABEL_11;
    }

    if ([v1 layoutOrientation] == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

LABEL_11:

  return v2;
}

void sub_1B4006AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B400725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B400798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PXYearBeforeMonthForLocale(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"yMMM" options:0 locale:a1];
  if ([v1 containsString:@"y"] && objc_msgSend(v1, "containsString:", @"M"))
  {
    v2 = [v1 localizedStandardRangeOfString:@"y"];
    v3 = v2 < [v1 localizedStandardRangeOfString:@"M"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale()
{
  if (PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_onceToken != -1)
  {
    dispatch_once(&PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_onceToken, &__block_literal_global_6201);
  }

  if (PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale)
  {
    v0 = PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_yearFirst;
  }

  else
  {
    v1 = [MEMORY[0x1E695DF58] currentLocale];
    v2 = PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale;
    PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale = v1;

    v0 = PXYearBeforeMonthForLocale(PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale);
    PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_yearFirst = v0;
  }

  return v0 & 1;
}

void __PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_block_invoke()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v1 addObserverForName:*MEMORY[0x1E695D8F0] object:0 queue:0 usingBlock:&__block_literal_global_11_6203];
}

void __PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_block_invoke_2()
{
  v0 = PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale;
  PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale_cachedLocale = 0;
}

void sub_1B4009A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1B4009CEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1B400A0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PXCATransactionSetShouldLoadContentImmediately(uint64_t a1)
{
  v1 = MEMORY[0x1E6979518];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  [v1 setValue:v2 forKey:@"com.apple.PhotosUIFoundation.loadContentEagerly"];
}

void sub_1B400D074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXDiffArraysWithObjectComparator(void *a1, void *a2, void *a3, uint64_t a4, id *a5, id *a6, id *a7, CFTypeRef *a8, id *a9)
{
  v109 = *MEMORY[0x1E69E9840];
  v96 = a5;
  *a5 = 0;
  v99 = a6;
  *a6 = 0;
  v97 = a7;
  *a7 = 0;
  v98 = a8;
  *a8 = 0;
  v94 = a9;
  *a9 = 0;
  v93 = objc_autoreleasePoolPush();
  v13 = [a2 count];
  v14 = [a1 count];
  v15 = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{8 * (v14 + v13)), "mutableBytes"}];
  v16 = &v15[8 * v14];
  v100 = a1;
  [a1 getObjects:v15 range:{0, v14}];
  v95 = a2;
  [a2 getObjects:v16 range:{0, v13}];
  v101 = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{8 * (v14 + v13)), "mutableBytes"}];
  v102 = &v101[v14];
  v92 = a3;
  if (a4)
  {
    v17 = __compar;
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 3221225472;
    v104 = v107;
    v107[0] = __PXDiffArraysWithObjectComparator_block_invoke;
    v107[1] = &unk_1E7BB6268;
    v107[2] = a4;
  }

  else
  {
    v17 = &__block_literal_global_6923;
    v104 = &off_1F2B87270;
  }

  qsort_b(v15, v14, 8uLL, v17);
  qsort_b(v16, v13, 8uLL, v17);
  v18 = 0;
  v103 = v13;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v14 && v13)
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    do
    {
      v22 = (v17[2])(v17, &v15[8 * v19], &v16[8 * v18]);
      if (v22 < 0)
      {
        v101[v21++] = *&v15[8 * v19++];
      }

      else
      {
        if (v22)
        {
          v102[v20++] = *&v16[8 * v18];
        }

        else
        {
          ++v19;
        }

        ++v18;
      }

      v13 = v103;
    }

    while (v19 < v14 && v18 < v103);
  }

  v23 = v14 - v19;
  if (v14 > v19)
  {
    v24 = &v101[v21];
    v25 = &v15[8 * v19];
    do
    {
      v26 = *v25;
      v25 += 8;
      *v24++ = v26;
      --v23;
    }

    while (v23);
    v21 = v14 + v21 - v19;
  }

  v27 = v13 - v18;
  if (v13 > v18)
  {
    v28 = &v101[v14 + v20];
    v29 = &v15[8 * v14 + 8 * v18];
    do
    {
      v30 = *v29;
      v29 += 8;
      *v28++ = v30;
      --v27;
    }

    while (v27);
    v20 = v13 + v20 - v18;
  }

  if (v21)
  {
    [v100 getObjects:v15 range:{0, v14}];
    v31 = [MEMORY[0x1E696AD50] indexSet];
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        if (bsearch_b(v15, v101, v21, 8uLL, v17))
        {
          [v31 addIndex:i];
        }

        v15 += 8;
      }
    }

    v33 = v96;
    *v96 = v31;
    v34 = v31;
    v35 = v100;
    v36 = [v100 mutableCopy];
    [v36 removeObjectsAtIndexes:*v33];
    v13 = v103;
  }

  else
  {
    v36 = 0;
    v35 = v100;
  }

  v37 = v95;
  v38 = [v95 getObjects:v16 range:{0, v13}];
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v38, v39);
    v41 = &v91 - v40;
    if (v20 > 0x200)
    {
      v42 = malloc_default_zone();
      v41 = malloc_type_zone_calloc(v42, 1uLL, 8 * v20, 0xE9499B2CuLL);
    }

    else
    {
      bzero(&v91 - v40, 8 * v20);
    }

    v43 = [MEMORY[0x1E696AD50] indexSet];
    if (v13)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      do
      {
        if (bsearch_b(&v16[v44], v102, v20, 8uLL, v17))
        {
          [v43 addIndex:v46];
          *&v41[8 * v45++] = *&v16[8 * v46];
        }

        ++v46;
        v44 += 8;
      }

      while (v103 != v46);
    }

    else
    {
      v45 = 0;
    }

    v47 = v99;
    *v99 = v43;
    v48 = v43;
    v35 = v100;
    if (!v36)
    {
      v36 = [v100 mutableCopy];
    }

    [v36 insertObjects:objc_msgSend(MEMORY[0x1E695DEC8] atIndexes:{"arrayWithObjects:count:", v41, v45), *v47}];
    if (v20 >= 0x201)
    {
      free(v41);
    }

    v37 = v95;
  }

  if (v36)
  {
    v49 = [v36 count];
    if (v49 != [v37 count])
    {
      v89 = [MEMORY[0x1E696AAA8] currentHandler];
      [v89 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void PXDiffArraysWithObjectComparator(NSArray * _Nonnull description:{NSArray * _Nonnull, NSArray * _Nonnull, NSComparator _Nullable, NSIndexSet * _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable, CFArrayRef  _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable)"), @"NSArrayAdditions.m", 208, @"Mismatched value counts after additions and subtractions: array: %p, array.count: %tu, newArray: %p, newArray.count: %tu", v36, objc_msgSend(v36, "count"), v37, objc_msgSend(v37, "count")}];
    }

    v35 = v36;
  }

  v50 = [v35 count];
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v55 = &v91 - v54;
  v56 = 8 * v53;
  if (v52 > 0x200)
  {
    v57 = malloc_default_zone();
    v55 = malloc_type_zone_calloc(v57, 1uLL, v56, 0xE9499B2CuLL);
  }

  else
  {
    bzero(&v91 - v54, 8 * v53);
  }

  v58 = v92;
  [v35 getObjects:v55 range:{0, v50}];
  v59 = [MEMORY[0x1E696AD50] indexSet];
  if (v50)
  {
    v60 = 0;
    v61 = v55;
    v62 = v16;
    do
    {
      if ((v17[2])(v17, v61, v62))
      {
        [v59 addIndex:v60];
      }

      ++v60;
      v62 += 8;
      v61 += 8;
    }

    while (v50 != v60);
  }

  if ([v59 count])
  {
    v63 = [v59 copy];
    v64 = v97;
    *v97 = v63;
    v65 = [v59 count];
    callBacks = *byte_1F2B86DF8;
    v66 = CFArrayCreateMutable(0, v65, &callBacks);
    v67 = v98;
    *v98 = v66;
    v68 = *v64;
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __PXDiffArraysWithObjectComparator_block_invoke_3;
    v105[3] = &unk_1E7BB62D8;
    v105[4] = v59;
    v105[5] = v17;
    v105[6] = v16;
    v105[7] = v55;
    v105[8] = v66;
    [v68 enumerateIndexesUsingBlock:v105];
    Count = CFArrayGetCount(*v67);
    if (Count != [*v64 count])
    {
      v90 = [MEMORY[0x1E696AAA8] currentHandler];
      [v90 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void PXDiffArraysWithObjectComparator(NSArray * _Nonnull description:{NSArray * _Nonnull, NSArray * _Nonnull, NSComparator _Nullable, NSIndexSet * _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable, CFArrayRef  _Nonnull * _Nullable, NSIndexSet * _Nonnull * _Nullable)"), @"NSArrayAdditions.m", 256, @"Mismatched move counts."}];
    }
  }

  if (v50 >= 0x201)
  {
    free(v55);
  }

  if ([v58 count])
  {
    v70 = [v58 count];
    v72 = MEMORY[0x1EEE9AC00](v70, v71);
    v75 = &v91 - v74;
    v76 = 8 * v73;
    if (v72 > 0x200)
    {
      v77 = malloc_default_zone();
      v75 = malloc_type_zone_calloc(v77, 1uLL, v76, 0xE9499B2CuLL);
    }

    else
    {
      bzero(&v91 - v74, 8 * v73);
    }

    v78 = v103;
    [v58 getObjects:v75 range:{0, v70}];
    qsort_b(v75, v70, 8uLL, v17);
    v79 = [MEMORY[0x1E696AD50] indexSet];
    if (v78)
    {
      v80 = v79;
      v81 = 0;
      v82 = 0;
      while (1)
      {
        if (bsearch_b(v16, v75, v70, 8uLL, v17))
        {
          [v80 addIndex:v81];
          if (++v82 == v70)
          {
            break;
          }
        }

        ++v81;
        v16 += 8;
        if (v78 == v81)
        {
          if (!v82)
          {
            goto LABEL_79;
          }

          goto LABEL_76;
        }
      }

      if (!v70)
      {
        goto LABEL_79;
      }

LABEL_76:
      v83 = v99;
      if ([*v99 count])
      {
        [v80 removeIndexes:*v83];
      }

      v84 = v80;
      *v94 = v84;
    }

LABEL_79:
    if (v70 >= 0x201)
    {
      free(v75);
    }
  }

  objc_autoreleasePoolPop(v93);
  v85 = *v96;
  v86 = *v99;
  v87 = *v97;
  if (*v98)
  {
    CFAutorelease(*v98);
  }

  return *v94;
}

void __PXDiffArraysWithObjectComparator_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*(a1 + 48) + 8 * a2);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PXDiffArraysWithObjectComparator_block_invoke_4;
  v8[3] = &unk_1E7BB62B0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8[4] = v4;
  v8[5] = v6;
  v8[6] = &v9;
  v8[7] = v7;
  [v5 enumerateIndexesUsingBlock:v8];
  if (v10[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) removeIndex:?];
    v3 = v10[3];
  }

  CFArrayAppendValue(*(a1 + 64), v3);
  _Block_object_dispose(&v9, 8);
}

uint64_t __PXDiffArraysWithObjectComparator_block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (!result)
  {
    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  return result;
}

uint64_t __PXDiffArraysWithObjectComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a2 >= *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id PXFlatMap(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObjectsFromArray:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PXFind(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

uint64_t PXExists(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

id PXReduce(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v17;
    v10 = v8;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v10 = v7[2](v7, *(*(&v16 + 1) + 8 * v13), v14);

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v10;
}

double PXReduceF(void *a1, void *a2, double a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        a3 = v6[2](v6, *(*(&v12 + 1) + 8 * v10++), a3);
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return a3;
}

uint64_t __PXSelectionCoordinatorGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BDDA0], "PXSelectionCoordinator");
  v1 = PXSelectionCoordinatorGetLog_log;
  PXSelectionCoordinatorGetLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *PXOneUpPresentationOriginDescription(unint64_t a1)
{
  if (a1 > 0x2E)
  {
    return 0;
  }

  else
  {
    return off_1E7BB64D8[a1];
  }
}

uint64_t PXOneUpPresentationOriginForAssetCollection(void *a1)
{
  v1 = a1;
  if ([v1 px_isSmartAlbum])
  {
    if ([v1 px_isFavoritesSmartAlbum])
    {
      v2 = 5;
    }

    else if ([v1 px_isHiddenSmartAlbum])
    {
      v2 = 11;
    }

    else if ([v1 px_isRecentlyDeletedSmartAlbum])
    {
      v2 = 12;
    }

    else if ([v1 px_isPlacesSmartAlbum])
    {
      v2 = 7;
    }

    else if ([v1 px_isRecentsSmartAlbum])
    {
      v2 = 4;
    }

    else
    {
      v2 = 8;
    }
  }

  else if ([v1 px_isImportSessionCollection])
  {
    v2 = 10;
  }

  else if ([v1 px_isRegularAlbum])
  {
    v2 = 9;
  }

  else if ([v1 px_isStreamSharedAlbum])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double PXFloatSign(double a1)
{
  v1 = a1 < 0.0;
  v2 = a1 <= 0.0;
  result = 0.0;
  if (v1)
  {
    result = -1.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  return result;
}

uint64_t PXFloatCompare(double a1, double a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

double PXFloatRoundInDirection(double a1, double a2)
{
  if (a2 > 0.0)
  {
    return ceil(a1);
  }

  if (a2 < 0.0)
  {
    return floor(a1);
  }

  return round(a1);
}

unint64_t PXSectionedFetchResultIndexOfObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    ResultIndexOfObjectInRange = [v3 indexOfObject:v4];
  }

  else
  {
    ResultIndexOfObjectInRange = PXSectionedFetchResultIndexOfObjectInRange(v3, v4, 0, [v3 count]);
  }

  v6 = ResultIndexOfObjectInRange;

  return v6;
}

unint64_t PXSectionedFetchResultIndexOfObjectInRange(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    a3 = [v7 indexOfObject:v8 inRange:{a3, a4}];
  }

  else if (a3 >= a3 + a4)
  {
LABEL_7:
    a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v9 = [v7 objectAtIndex:a3];
      v10 = v9;
      if (v9 == v8)
      {
        break;
      }

      v11 = [v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_9;
      }

      ++a3;
      if (!--a4)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:

  return a3;
}

double PXFloatRangeUnion(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double PXFloatRangeIntersection(double result, double a2, double a3, double a4)
{
  v4 = result;
  v5 = result + a2;
  if (a3 > result || result >= a3 + a4)
  {
    result = 0.0;
    if (v4 <= a3 && a3 < v5)
    {
      return a3;
    }
  }

  return result;
}

void __runLoopObserverTrampoline(__CFRunLoopObserver *a1, int a2, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v6[2]();
  CFRelease(aBlock);
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a1, *MEMORY[0x1E695E8D0]);
}

id PXPresentationEnvironmentForSender(void *a1)
{
  if (a1)
  {
    v1 = PXPlatformViewControllerForSender(a1);
    v2 = [PXViewControllerPresenter defaultPresenterWithViewController:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double PXPointValueForAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return a2;
    }

    else if (!a1)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXPointValueForAxis(CGPoint, PXAxis)"}];
      [v7 handleFailureInFunction:v8 file:@"PXAxis.m" lineNumber:16 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return a3;
}

double *PXPointSetValueForAxis(double *result, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 1:
      ++result;
      goto LABEL_6;
    case 2:
LABEL_6:
      *result = a3;
      return result;
    case 0:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXPointSetValueForAxis(CGPoint * _Nonnull, CGFloat, PXAxis)"}];
      [v7 handleFailureInFunction:v8 file:@"PXAxis.m" lineNumber:27 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

double PXSizeValueForAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return a2;
    }

    else if (!a1)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXSizeValueForAxis(CGSize, PXAxis)"}];
      [v7 handleFailureInFunction:v8 file:@"PXAxis.m" lineNumber:40 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return a3;
}

double *PXSizeSetValueForAxis(double *result, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 1:
      ++result;
      goto LABEL_6;
    case 2:
LABEL_6:
      *result = a3;
      return result;
    case 0:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSizeSetValueForAxis(CGSize * _Nonnull, CGFloat, PXAxis)"}];
      [v7 handleFailureInFunction:v8 file:@"PXAxis.m" lineNumber:51 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

uint64_t PXRectEdgeAxis(int a1)
{
  if (((a1 - 1) & 0xFFFFFFFD) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t PXMinRectEdgeForAxis(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (!a1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRectEdge PXMinRectEdgeForAxis(PXAxis)"];
    [v6 handleFailureInFunction:v7 file:@"PXAxis.m" lineNumber:75 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 1;
}

uint64_t PXMaxRectEdgeForAxis(uint64_t result)
{
  if (result != 2)
  {
    if (!result)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRectEdge PXMaxRectEdgeForAxis(PXAxis)"];
      [v5 handleFailureInFunction:v6 file:@"PXAxis.m" lineNumber:86 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return 3;
  }

  return result;
}

double PXRectGetMinForAxis(uint64_t a1, double result, double a3, double a4, double a5)
{
  switch(a1)
  {
    case 1:

      return CGRectGetMinY(*&result);
    case 2:

      return CGRectGetMinX(*&result);
    case 0:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXRectGetMinForAxis(CGRect, PXAxis)"}];
      [v9 handleFailureInFunction:v10 file:@"PXAxis.m" lineNumber:97 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

double PXRectGetMidForAxis(uint64_t a1, double result, double a3, double a4, double a5)
{
  switch(a1)
  {
    case 1:

      return CGRectGetMidY(*&result);
    case 2:

      return CGRectGetMidX(*&result);
    case 0:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXRectGetMidForAxis(CGRect, PXAxis)"}];
      [v9 handleFailureInFunction:v10 file:@"PXAxis.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

double PXRectGetMaxForAxis(uint64_t a1, double result, double a3, double a4, double a5)
{
  switch(a1)
  {
    case 1:

      return CGRectGetMaxY(*&result);
    case 2:

      return CGRectGetMaxX(*&result);
    case 0:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXRectGetMaxForAxis(CGRect, PXAxis)"}];
      [v9 handleFailureInFunction:v10 file:@"PXAxis.m" lineNumber:119 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

double PXRectGetLengthForAxis(uint64_t a1, double result, double a3, double a4, double a5)
{
  switch(a1)
  {
    case 1:

      return CGRectGetHeight(*&result);
    case 2:

      return CGRectGetWidth(*&result);
    case 0:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat PXRectGetLengthForAxis(CGRect, PXAxis)"}];
      [v9 handleFailureInFunction:v10 file:@"PXAxis.m" lineNumber:130 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return result;
}

uint64_t PXAxisTransposed(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

__CFString *PXAxisDescription(uint64_t a1)
{
  v1 = @"Vertical";
  if (a1 == 2)
  {
    v1 = @"Horizontal";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Undefined";
  }
}

BOOL PXAssetBadgeInfoIsNull(uint64_t a1)
{
  result = 0;
  if (!*a1 && *(a1 + 8) == 0.0 && *(a1 + 16) == 0)
  {
    return *(a1 + 24) == 0;
  }

  return result;
}

uint64_t PXAssetBadgeInfoCreateWithBadges@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  *a2 = result;
  a2[1] = 0;
  return result;
}

void PXAssetBadgeInfoCreateWithDuration(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = a2;
}

void sub_1B401C3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXAttributedStringByReplacingOccurences(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (!v6)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSAttributedString * _Nullable PXAttributedStringByReplacingOccurences(NSAttributedString *__strong _Nullable, NSString *__strong _Nonnull, NSString *__strong _Nonnull)"}];
      [v17 handleFailureInFunction:v18 file:@"NSAttributedString+PhotosUIFoundation.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"target"}];
    }

    v8 = [v5 mutableCopy];
    v9 = [v8 string];
    v10 = [v9 rangeOfString:v6];
    v12 = v11;

    while (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 replaceCharactersInRange:v10 withString:{v12, v7}];
      v13 = [v8 string];
      v10 = [v13 rangeOfString:v6];
      v12 = v14;
    }

    v15 = [v8 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

__CFString *PXDisplayAssetCollectionCurationLengthDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"?";
  }

  else
  {
    return off_1E7BB6A28[a1];
  }
}

__CFString *PXUnlockDeviceActionTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7BB6AD0[a1];
  }
}

id PXAssertGetLog()
{
  if (PXAssertGetLog_predicate != -1)
  {
    dispatch_once(&PXAssertGetLog_predicate, &__block_literal_global_9870);
  }

  v1 = PXAssertGetLog_log;

  return v1;
}

uint64_t __PXAssertGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BDDA0], "PXAssert");
  v1 = PXAssertGetLog_log;
  PXAssertGetLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1B402244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10289(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double PXStoryRectOuterBounds(_OWORD *a1)
{
  v1 = a1[1];
  *&v6.a = *a1;
  *&v6.c = v1;
  *&v6.tx = a1[2];
  v2 = 0;
  *&v1 = 0;
  v3 = 1.0;
  v4 = 1.0;
  *&result = CGRectApplyAffineTransform(*(&v1 - 8), &v6);
  return result;
}

void PXStoryRectDecompose(_OWORD *a1, double *a2, double *a3)
{
  v6 = a1[1];
  *&v19.a = *a1;
  *&v19.c = v6;
  *&v19.tx = a1[2];
  v7 = 0;
  *&v6 = 0;
  v8 = 1.0;
  v9 = 1.0;
  v20 = CGRectApplyAffineTransform(*(&v6 - 8), &v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v17 = 0.0;
  v18 = 0.0;
  *&v20.origin.y = a1[1];
  *&v19.a = *a1;
  *&v19.c = *&v20.origin.y;
  *&v19.tx = a1[2];
  PXAffineTransformDecomposeTranslationScaleRotation(&v19, 0, &v17, &v18, a3);
  if (a2)
  {
    v14 = v17;
    v15 = v18;
    v16 = y + height * 0.5 + v18 * -0.5;
    *a2 = x + width * 0.5 + v17 * -0.5;
    a2[1] = v16;
    a2[2] = v14;
    a2[3] = v15;
  }
}

void PXStoryRectLinearlyInterpolatingRects(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>, double a4@<D0>)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0.0;
  v14 = 0.0;
  v7 = a1[1];
  *&v19.a = *a1;
  *&v19.c = v7;
  *&v19.tx = a1[2];
  PXStoryRectDecompose(&v19, &v17, &v14);
  v8 = a2[1];
  *&v19.a = *a2;
  *&v19.c = v8;
  *&v19.tx = a2[2];
  PXStoryRectDecompose(&v19, &v15, &v13);
  v9 = *&v17 + a4 * (*&v15 - *&v17);
  v10 = *(&v17 + 1) + a4 * (*(&v15 + 1) - *(&v17 + 1));
  v11 = *&v18 + a4 * (*&v16 - *&v18);
  v12 = *(&v18 + 1) + a4 * (*(&v16 + 1) - *(&v18 + 1));
  CGAffineTransformMakeRotation(&v19, v14 + a4 * (v13 - v14));
  PXStoryRectFromCGRectApplyingTransformWithAnchorPoint(&v19, a3, v9, v10, v11, v12, 0.5, 0.5);
}

CGFloat PXStoryRectFromCGRectApplyingTransformWithAnchorPoint@<D0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *&a2->c = 0u;
  *&a2->tx = 0u;
  *&a2->a = 0u;
  PXStoryRectFromCGRect(a2, a3, a4, a5, a6);
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeTranslation(&v26, -(a3 + a7 * a5), -(a4 + a8 * a6));
  v16 = *&a2->c;
  *&t1.a = *&a2->a;
  *&t1.c = v16;
  *&t1.tx = *&a2->tx;
  t2 = v26;
  CGAffineTransformConcat(a2, &t1, &t2);
  v17 = *&a2->c;
  *&t1.a = *&a2->a;
  *&t1.c = v17;
  *&t1.tx = *&a2->tx;
  v18 = a1[1];
  *&t2.a = *a1;
  *&t2.c = v18;
  *&t2.tx = a1[2];
  CGAffineTransformConcat(&v25, &t1, &t2);
  v19 = *&v25.c;
  *&a2->a = *&v25.a;
  *&a2->c = v19;
  v20 = *&v26.a;
  *&a2->tx = *&v25.tx;
  *&t1.a = v20;
  *&t1.c = *&v26.c;
  *&t1.tx = *&v26.tx;
  CGAffineTransformInvert(&v24, &t1);
  v21 = *&a2->c;
  *&t1.a = *&a2->a;
  *&t1.c = v21;
  *&t1.tx = *&a2->tx;
  t2 = v24;
  CGAffineTransformConcat(&v25, &t1, &t2);
  v22 = *&v25.c;
  *&a2->a = *&v25.a;
  *&a2->c = v22;
  result = v25.tx;
  *&a2->tx = *&v25.tx;
  return result;
}

CGFloat PXStoryRectFromCGRect@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  if (CGRectIsNull(*&a2))
  {
    *a1 = PXStoryRectNull;
    a1[1] = unk_1B4075118;
    result = INFINITY;
    a1[2] = xmmword_1B4075128;
  }

  else
  {

    return PXAffineTransformMakeFromRects(a1, 0.0, 0.0, 1.0, 1.0, a2, a3, a4, a5);
  }

  return result;
}

id PXStoryRectDescription(_OWORD *a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0.0;
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = a1[2];
  PXStoryRectDecompose(v5, &v7, &v6);
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithFormat:@"{ x=%0.4f, y=%0.4f, w=%0.4f, h=%0.4f, r=%0.2f° }", v7, v8, v6 * 180.0 / 3.14159265];

  return v3;
}

CGPath *PXStoryRectPath(const CGAffineTransform *a1)
{
  Mutable = CGPathCreateMutable();
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  v4.size.width = 1.0;
  v4.size.height = 1.0;
  CGPathAddRect(Mutable, a1, v4);
  return Mutable;
}

BOOL PXStoryRectEqualToRect(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v2;
  *&t1.tx = a1[2];
  v3 = a2[1];
  *&v5.a = *a2;
  *&v5.c = v3;
  *&v5.tx = a2[2];
  return CGAffineTransformEqualToTransform(&t1, &v5);
}

BOOL PXStoryRectIsNull(_OWORD *a1)
{
  v1 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v1;
  *&t1.tx = a1[2];
  v3 = *PXStoryRectNull;
  return CGAffineTransformEqualToTransform(&t1, &v3);
}

BOOL PXStoryRectIsEmpty(_OWORD *a1)
{
  v2 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v2;
  *&t1.tx = a1[2];
  v8 = *PXStoryRectNull;
  if (CGAffineTransformEqualToTransform(&t1, &v8))
  {
    return 1;
  }

  v4 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v4;
  *&t1.tx = a1[2];
  v5 = 0;
  *&v4 = 0;
  v6 = 1.0;
  v7 = 1.0;
  v10 = CGRectApplyAffineTransform(*(&v4 - 8), &t1);
  return CGRectIsEmpty(v10);
}

CGAffineTransform *PXStoryRectApplyAffineTransform@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v3 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v3;
  *&t1.tx = a1[2];
  v4 = a2[1];
  *&v6.a = *a2;
  *&v6.c = v4;
  *&v6.tx = a2[2];
  return CGAffineTransformConcat(a3, &t1, &v6);
}

CGFloat PXStoryRectFromStoryRectApplyingTransformWithAnchorPoint@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v26 = 0u;
  v27 = 0u;
  angle = 0.0;
  v9 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v9;
  *&t1.tx = a1[2];
  PXStoryRectDecompose(&t1, &v26, &angle);
  v10 = v26;
  v11 = v27;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, -(*&v26 + a4 * *&v27), -(*(&v26 + 1) + a5 * *(&v27 + 1)));
  *&a3->c = 0u;
  *&a3->tx = 0u;
  *&a3->a = 0u;
  PXStoryRectFromCGRect(a3, *&v10, *(&v10 + 1), *&v11, *(&v11 + 1));
  v12 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v12;
  *&t1.tx = *&a3->tx;
  t2 = v24;
  CGAffineTransformConcat(a3, &t1, &t2);
  CGAffineTransformMakeRotation(&v22, angle);
  v13 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v13;
  *&t1.tx = *&a3->tx;
  t2 = v22;
  CGAffineTransformConcat(&v23, &t1, &t2);
  v14 = *&v23.c;
  *&a3->a = *&v23.a;
  *&a3->c = v14;
  *&a3->tx = *&v23.tx;
  v15 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v15;
  *&t1.tx = *&a3->tx;
  v16 = a2[1];
  *&t2.a = *a2;
  *&t2.c = v16;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(&v23, &t1, &t2);
  v17 = *&v23.c;
  *&a3->a = *&v23.a;
  *&a3->c = v17;
  v18 = *&v24.a;
  *&a3->tx = *&v23.tx;
  *&t1.a = v18;
  *&t1.c = *&v24.c;
  *&t1.tx = *&v24.tx;
  CGAffineTransformInvert(&v22, &t1);
  v19 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v19;
  *&t1.tx = *&a3->tx;
  t2 = v22;
  CGAffineTransformConcat(&v23, &t1, &t2);
  v20 = *&v23.c;
  *&a3->a = *&v23.a;
  *&a3->c = v20;
  result = v23.tx;
  *&a3->tx = *&v23.tx;
  return result;
}

CGAffineTransform *PXStoryRectNormalize@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&v8.a = *a2;
  *&v8.c = v5;
  *&v8.tx = a2[2];
  CGAffineTransformInvert(&t2, &v8);
  v6 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v6;
  *&v8.tx = a1[2];
  return CGAffineTransformConcat(a3, &v8, &t2);
}

CGAffineTransform *PXStoryRectDenormalize@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v3 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v3;
  *&t1.tx = a1[2];
  v4 = a2[1];
  *&v6.a = *a2;
  *&v6.c = v4;
  *&v6.tx = a2[2];
  return CGAffineTransformConcat(a3, &t1, &v6);
}

CGAffineTransform *PXStoryAffineTransformBetweenRects@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v5;
  *&v8.tx = a1[2];
  CGAffineTransformInvert(&t1, &v8);
  v6 = a2[1];
  *&v8.a = *a2;
  *&v8.c = v6;
  *&v8.tx = a2[2];
  return CGAffineTransformConcat(a3, &t1, &v8);
}

CGAffineTransform *PXStoryRectFitIntoUnitRect@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return PXStoryRectFitIntoRect(v4, a2, 0.0, 0.0, 1.0, 1.0);
}

CGAffineTransform *PXStoryRectFitIntoRect@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>)
{
  memset(&v20, 0, sizeof(v20));
  v12 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v12;
  *&t1.tx = a1[2];
  v13 = 0;
  *&v12 = 0;
  v14 = 1.0;
  v15 = 1.0;
  v23 = CGRectApplyAffineTransform(*(&v12 - 8), &t1);
  v16.f64[0] = a3;
  v17.f64[0] = a5;
  _PXStoryAffineTransformFittingRectIntoRect(&v20, v23.origin.x, v23.origin.y, v23.size, v23.size.height, v16, a4, v17, a6);
  v18 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v18;
  *&t1.tx = a1[2];
  t2 = v20;
  return CGAffineTransformConcat(a2, &t1, &t2);
}

uint64_t _PXStoryAffineTransformFittingRectIntoRect(uint64_t result, float64_t a2, float64_t a3, float64x2_t a4, float64_t a5, float64x2_t a6, float64_t a7, float64x2_t a8, float64_t a9)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  v9.f64[0] = a2;
  v9.f64[1] = a3;
  a4.f64[1] = a5;
  v10 = vaddq_f64(v9, a4);
  v11 = a8.f64[0] / (v10.f64[0] - a2);
  v12 = a9 / (v10.f64[1] - a3);
  if (v11 >= v12)
  {
    v11 = v12;
  }

  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  __asm { FMOV            V17.2D, #0.5 }

  a6.f64[1] = a7;
  v18 = vmulq_n_f64(vmulq_f64(vaddq_f64(v9, v10), _Q17), 1.0 - v11);
  a8.f64[1] = a9;
  v19 = vaddq_f64(a6, a8);
  v20 = vmlsq_lane_f64(a6, v9, v11, 0);
  v21 = vmlsq_lane_f64(v19, v10, v11, 0);
  v22 = vbslq_s8(vcgtq_f64(v21, v18), v18, v21);
  *result = v11;
  *(result + 24) = v11;
  *(result + 32) = vbslq_s8(vcgtq_f64(v22, v20), v22, v20);
  return result;
}

CGFloat PXStoryRectsFitIntoRect(_OWORD *a1, _OWORD *a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6)
{
  memset(&v28, 0, sizeof(v28));
  v12 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v12;
  *&t1.tx = a1[2];
  v13 = 0;
  *&v12 = 0;
  v14 = 1.0;
  v15 = 1.0;
  v31 = CGRectApplyAffineTransform(*(&v12 - 8), &t1);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  *&v31.origin.y = a2[1];
  *&t1.a = *a2;
  *&t1.c = *&v31.origin.y;
  *&t1.tx = a2[2];
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 1.0;
  v31.size.height = 1.0;
  v34 = CGRectApplyAffineTransform(v31, &t1);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectUnion(v32, v34);
  v20.f64[0] = a3;
  v21.f64[0] = a5;
  _PXStoryAffineTransformFittingRectIntoRect(&v28, v33.origin.x, v33.origin.y, v33.size, v33.size.height, v20, a4, v21, a6);
  v22 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v22;
  *&t1.tx = a1[2];
  t2 = v28;
  CGAffineTransformConcat(&v27, &t1, &t2);
  v23 = *&v27.c;
  *a1 = *&v27.a;
  a1[1] = v23;
  a1[2] = *&v27.tx;
  v24 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v24;
  *&t1.tx = a2[2];
  t2 = v28;
  CGAffineTransformConcat(&v27, &t1, &t2);
  v25 = *&v27.c;
  *a2 = *&v27.a;
  a2[1] = v25;
  result = v27.tx;
  a2[2] = *&v27.tx;
  return result;
}

uint64_t PXStoryAffineTransformFittingRectsIntoRect@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D4>, float64_t a4, float64_t a5, float64_t a6, float64_t a7)
{
  v18 = CGRectUnion(*&a2, *&a3);
  v14.f64[0] = a4;
  v15.f64[0] = a6;

  return _PXStoryAffineTransformFittingRectIntoRect(a1, v18.origin.x, v18.origin.y, v18.size, v18.size.height, v14, a5, v15, a7);
}

void sub_1B4024A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B40255D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10560(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXFontCreate(void *a1, CGFloat a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 isEqualToString:PXSanFranciscoProCompressedBold])
  {
    v11 = *MEMORY[0x1E6965808];
    v12[0] = PXSanFranciscoProCompressedBold;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = CTFontDescriptorCreateWithAttributesAndOptions();

    v6 = CTFontCreateWithFontDescriptor(v5, a2, 0);
    CFRelease(v5);
  }

  else if ([v3 isEqualToString:PXSanFranciscoSystemSerifBoldFontName])
  {
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:a2 weight:*MEMORY[0x1E69DB980]];
    v8 = [v7 fontDescriptor];
    v9 = [v8 fontDescriptorWithDesign:*MEMORY[0x1E69DB8E0]];

    v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:a2];
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] fontWithName:v3 size:a2];
  }

  return v6;
}

id PXFontWithTextStyleSymbolicTraitsWeightContentSizeCategory(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = UIFontTextStyleFromPXFontTextStyle(a1);
  if (a3)
  {
    v8 = MEMORY[0x1E69DD1B8];
    v9 = UIContentSizeCategoryFromPXPreferredContentSizeCategory(a3);
    a3 = [v8 traitCollectionWithPreferredContentSizeCategory:v9];
  }

  v10 = [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:v7 addingSymbolicTraits:a2 design:*MEMORY[0x1E69DB8C8] weight:a3 compatibleWithTraitCollection:a4];
  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:0.0];

  return v11;
}

id _PXFontWithTextStyleSymbolicTraitsAndWeight(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v8 = UIContentSizeCategoryFromPXPreferredContentSizeCategory(a3);
  v9 = UserPreferredContentSizeCategory();
  v10 = v9;
  if (v8 == *MEMORY[0x1E69DDC90])
  {
    v11 = 0;
  }

  else if (UIContentSizeCategoryCompareToCategory(v9, v8) == NSOrderedDescending)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = PXFontWithTextStyleSymbolicTraitsWeightContentSizeCategory(a1, a2, v11, a4);

  return v12;
}

id PXMonospacedNumberFontWithSizeAndWeight(double a1, double a2)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB900];
  v27[0] = *MEMORY[0x1E69DB908];
  v4 = v27[0];
  v27[1] = v5;
  v28[0] = &unk_1F2BAC868;
  v28[1] = &unk_1F2BAC880;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v29[0] = v6;
  v25[0] = v4;
  v25[1] = v5;
  v26[0] = &unk_1F2BAC898;
  v26[1] = &unk_1F2BAC8B0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v29[1] = v7;
  v23[0] = v4;
  v23[1] = v5;
  v24[0] = &unk_1F2BAC898;
  v24[1] = &unk_1F2BAC8C8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v29[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:a1];
  v11 = [v10 fontDescriptor];

  v21 = *MEMORY[0x1E69DB990];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v22 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v14 = [v11 fontDescriptorByAddingAttributes:v13];

  v19 = *MEMORY[0x1E69DB8B0];
  v20 = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v16 = [v14 fontDescriptorByAddingAttributes:v15];

  v17 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:a1];

  return v17;
}

double PXFontScaleForTextStyle(uint64_t a1)
{
  v2 = UIFontTextStyleFromPXFontTextStyle(a1);
  v3 = _PXFontWithTextStyleSymbolicTraits(a1, 0, 9uLL);
  [v3 lineHeight];
  v5 = v4;
  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:v2];
  [v6 lineHeight];
  v8 = v5 / v7;

  return v8;
}

BOOL PXFontCanEncodeString(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 length];
  GlyphsForCharacters = 1;
  if (v3)
  {
    v8 = v5;
    if (v5)
    {
      v9 = 2 * v5;
      MEMORY[0x1EEE9AC00](v5, v6);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = [v4 getCharacters:v14 - v10 range:{0, v8}];
      MEMORY[0x1EEE9AC00](v11, v12);
      GlyphsForCharacters = CTFontGetGlyphsForCharacters(v3, (v14 - v10), (v14 - v10), v8);
    }
  }

  return GlyphsForCharacters;
}

void sub_1B4026C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B4027C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10783(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4027F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4028D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B402998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

id PXImageFromCGImage(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a1];

  return v1;
}

uint64_t PXImageGetCGImage(void *a1)
{
  v1 = a1;

  return [v1 CGImage];
}

id PXPlatformViewControllerForSender(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 nextResponder];
      v2 = PXPlatformViewControllerForSender();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void PXTileGeometryApplyAffineTransform(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[9];
  *(a3 + 128) = a1[8];
  *(a3 + 144) = v5;
  v6 = a1[11];
  *(a3 + 160) = a1[10];
  *(a3 + 176) = v6;
  v7 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v7;
  v8 = a1[7];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  *(a3 + 96) = v11;
  *(a3 + 112) = v8;
  v12 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v12;
  v13 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v13;
  v14 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v14;
  *&t1.tx = a2[2];
  *&v16.a = v10;
  *&v16.c = v9;
  *&v16.tx = v11;
  CGAffineTransformConcat((a3 + 64), &t1, &v16);
  v18 = *a3;
  v15 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v15;
  *&t1.tx = a2[2];
  *a3 = CGRectApplyAffineTransform(v18, &t1);
}

id PXTileGeometryDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD60];
  v3 = NSStringFromCGRect(*a1);
  v4 = [v2 stringWithFormat:@"{frame:%@", v3];

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 != *a1 + v5 * 0.5 || v8 != *(a1 + 8) + v6 * 0.5)
  {
    v10 = NSStringFromCGPoint(*&v7);
    [v4 appendFormat:@" center:%@", v10];

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (v11 != v5 || v12 != v6)
  {
    v14 = NSStringFromCGSize(*&v11);
    [v4 appendFormat:@" size:%@", v14];
  }

  v15 = *(a1 + 80);
  *&t1.a = *(a1 + 64);
  *&t1.c = v15;
  *&t1.tx = *(a1 + 96);
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&t2.a = *MEMORY[0x1E695EFD0];
  *&t2.c = v16;
  *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v17 = *(a1 + 80);
    *&t1.a = *(a1 + 64);
    *&t1.c = v17;
    *&t1.tx = *(a1 + 96);
    v18 = NSStringFromCGAffineTransform(&t1);
    [v4 appendFormat:@" transform:%@", v18];
  }

  if (*(a1 + 112) != 1.0)
  {
    [v4 appendFormat:@" alpha:%f", *(a1 + 112)];
  }

  if (*(a1 + 128) == 1)
  {
    [v4 appendFormat:@" hidden:%@", @"YES"];
  }

  v19 = *(a1 + 136);
  v20 = *(a1 + 144);
  if (v19 != *(a1 + 48) || v20 != *(a1 + 56))
  {
    v21 = NSStringFromCGSize(*&v19);
    [v4 appendFormat:@" contentSize:%@", v21];
  }

  [v4 appendString:@"}"];

  return v4;
}

uint64_t PXUpdateFlagsReset(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

id getPFCropUtilitiesCoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPFCropUtilitiesCoreClass_softClass;
  v7 = getPFCropUtilitiesCoreClass_softClass;
  if (!getPFCropUtilitiesCoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPFCropUtilitiesCoreClass_block_invoke;
    v3[3] = &unk_1E7BB8720;
    v3[4] = &v4;
    __getPFCropUtilitiesCoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B402B898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPFCropUtilitiesCoreClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosFormatsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7BB70C8;
    v8 = 0;
    PhotosFormatsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosFormatsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXSyntheticAsset.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PFCropUtilitiesCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPFCropUtilitiesCoreClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXSyntheticAsset.m" lineNumber:27 description:{@"Unable to find class %s", "PFCropUtilitiesCore"}];

LABEL_10:
    __break(1u);
  }

  getPFCropUtilitiesCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosFormatsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosFormatsLibraryCore_frameworkLibrary = result;
  return result;
}

_PXChangeDetailsEntry *_PXChangeDetailsEntryForSection(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 itemChangesInSection:a1];
  v5 = [[_PXChangeDetailsEntry alloc] initWithIndex:a1 changeDetails:v4];
  v6 = [v3 itemsWithSubitemChangesInSection:a1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___PXChangeDetailsEntryForSection_block_invoke;
  v12[3] = &unk_1E7BB70E8;
  v13 = v3;
  v15 = a1;
  v7 = v5;
  v14 = v7;
  v8 = v3;
  [v6 enumerateIndexesUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

__CFString *PXDebugDescriptionFromSystemAuthenticationType(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid (%tu)", a1];
  }

  else
  {
    v2 = off_1E7BB72F8[a1];
  }

  return v2;
}

uint64_t PXMediaTypeForAssets(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    v6 = 1;
LABEL_3:
    v7 = 0;
    v8 = v4;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v9 = [*(*(&v11 + 1) + 8 * v7) mediaType];
      v4 = v9;
      if ((v6 & 1) == 0)
      {
        v4 = v8;
        if (v8 != v9)
        {
          break;
        }
      }

      v6 = 0;
      ++v7;
      v8 = v4;
      if (v3 == v7)
      {
        v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v6 = 0;
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

id PXDisplayAssetColorNormalizationData(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 fetchColorNormalizationData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PXDisplayAssetPlaybackStyleDescription(unint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 6)
  {
    return off_1E7BB7340[a1];
  }

  v3 = PXAssertGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_error_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_ERROR, "invalid playbackStyle %li", &v4, 0xCu);
  }

  return @"<invalid>";
}

__CFString *PXDisplayAssetDetailedCountsDescription(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL || v2 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = @"<detailed counts: invalid>";
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<detailed counts: photos:%tu, videos:%tu, others:%tu>", *a1, v2, v3];
  }

  return v7;
}

void PXDisplayAssetDetailedCountsSubtract(unint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v8 = *a1 == 0x7FFFFFFFFFFFFFFFLL || a1[1] == 0x7FFFFFFFFFFFFFFFLL || a1[2] == 0x7FFFFFFFFFFFFFFFLL;
  if (v8 || ((v9 = *a2, *a2 != 0x7FFFFFFFFFFFFFFFLL) ? (v10 = a2[1] == 0x7FFFFFFFFFFFFFFFLL) : (v10 = 1), !v10 ? (v11 = a2[2] == 0x7FFFFFFFFFFFFFFFLL) : (v11 = 1), v11))
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v22 = *a1;
      *&v22[16] = a1[2];
      v20 = PXDisplayAssetDetailedCountsDescription(v22);
      *v22 = *a2;
      *&v22[16] = a2[2];
      v21 = PXDisplayAssetDetailedCountsDescription(v22);
      *v22 = 138412546;
      *&v22[4] = v20;
      *&v22[12] = 2112;
      *&v22[14] = v21;
      _os_log_fault_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_FAULT, "Subtracting with invalid counts (%@ - %@)", v22, 0x16u);
    }

    v6 = *a1;
    v9 = *a2;
  }

  if (v6 < v9 || (v13 = a1[1], v14 = a2[1], v13 < v14) || (v15 = a1[2], v16 = a2[2], v15 < v16))
  {
    v17 = PXAssertGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *v22 = *a1;
      *&v22[16] = a1[2];
      v18 = PXDisplayAssetDetailedCountsDescription(v22);
      *v22 = *a2;
      *&v22[16] = a2[2];
      v19 = PXDisplayAssetDetailedCountsDescription(v22);
      *v22 = 138412546;
      *&v22[4] = v18;
      *&v22[12] = 2112;
      *&v22[14] = v19;
      _os_log_fault_impl(&dword_1B3F73000, v17, OS_LOG_TYPE_FAULT, "Subtracting a larger count from a smaller count (%@ - %@), which will underflow.", v22, 0x16u);
    }

    v6 = *a1;
    v13 = a1[1];
    v9 = *a2;
    v14 = a2[1];
    v15 = a1[2];
    v16 = a2[2];
  }

  *a3 = v6 - v9;
  a3[1] = v13 - v14;
  a3[2] = v15 - v16;
}

void sub_1B4031768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXSimpleIndexPathDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"{"];
  v3 = v2;
  if (!*a1)
  {
    [v2 appendString:@"Null"];
    goto LABEL_14;
  }

  [v2 appendFormat:@"%lu, ", *a1];
  if (!*a1)
  {
    goto LABEL_14;
  }

  v4 = a1[1];
  v5 = a1[2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 appendFormat:@"%lu", a1[1], v8, v9];
      goto LABEL_14;
    }

    v6 = a1[3];
LABEL_11:
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 appendFormat:@"%lu, %lu", a1[1], v5, v9];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = a1[3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_13:
    [v3 appendFormat:@"%lu, %lu, %lu", v4, a1[2], v6];
  }

LABEL_14:
  [v3 appendFormat:@"}"];

  return v3;
}

id PXIndexPathFromSimpleIndexPath(void *a1)
{
  if (*a1)
  {
    v3 = a1[2] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && a1[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC88] px_indexPathForItem:v1 inSection:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PXSimpleIndexPathFromIndexPath(float64_t a1@<X0>, void *a2@<X1>, float64x2_t *a3@<X8>)
{
  v12 = a2;
  if ([v12 length] == 3)
  {
    v5 = [v12 indexAtPosition:0];
    v6 = [v12 indexAtPosition:1];
    v7 = [v12 indexAtPosition:2];
    a3->f64[0] = a1;
    *&a3->f64[1] = v5;
    *&a3[1].f64[0] = v6;
    *&a3[1].f64[1] = v7;
  }

  else if ([v12 length] == 2)
  {
    v8 = [v12 indexAtPosition:0];
    v9 = [v12 indexAtPosition:1];
    a3->f64[0] = a1;
    *&a3->f64[1] = v8;
    *&a3[1].f64[0] = v9;
    a3[1].f64[1] = NAN;
  }

  else if ([v12 length] == 1)
  {
    v10 = [v12 indexAtPosition:0];
    a3->f64[0] = a1;
    *&a3->f64[1] = v10;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    a3[1] = vnegq_f64(v11);
  }

  else
  {
    *a3 = *PXSimpleIndexPathNull;
    a3[1] = *&PXSimpleIndexPathNull[16];
  }
}

uint64_t PXSimpleIndexPathCompare(void *a1, void *a2)
{
  v3 = __OFSUB__(*a1, *a2);
  v2 = (*a1 - *a2) < 0;
  if (*a1 == *a2 && (v4 = a1[1], v5 = a2[1], v3 = __OFSUB__(v4, v5), v2 = v4 - v5 < 0, v4 == v5) && (v6 = a1[2], v7 = a2[2], v3 = __OFSUB__(v6, v7), v2 = v6 - v7 < 0, v6 == v7))
  {
    v8 = a1[3];
    v9 = a2[3];
    v3 = __OFSUB__(v8, v9);
    v10 = v8 == v9;
    v2 = v8 - v9 < 0;
    v11 = -1;
    if (v2 == v3)
    {
      v11 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (v2 != v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1B4034A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4034D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXUserStatusUIGetLog()
{
  if (PXUserStatusUIGetLog_predicate != -1)
  {
    dispatch_once(&PXUserStatusUIGetLog_predicate, &__block_literal_global_12863);
  }

  v1 = PXUserStatusUIGetLog_log;

  return v1;
}

uint64_t __PXUserStatusUIGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BDDA0], "UserStatusUI");
  v1 = PXUserStatusUIGetLog_log;
  PXUserStatusUIGetLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t CGImagePropertyOrientationFromPXImageOrientation(unint64_t a1)
{
  if (a1 >= 8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGImagePropertyOrientation CGImagePropertyOrientationFromPXImageOrientation(PXImageOrientation)"];
    [v6 handleFailureInFunction:v7 file:@"PXMediaProviderTypes.m" lineNumber:31 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return dword_1B4075238[a1];
}

uint64_t PXImageOrientationFromCGImagePropertyOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B4075258[a1 - 2];
  }
}

BOOL UIMenuElementStateFromPXMenuActionState(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

CGColorSpaceRef PXGetColorSpace(uint64_t a1)
{
  result = colorspaces[a1];
  if (!result)
  {
    result = 0;
    v3 = MEMORY[0x1E695F1C8];
    switch(a1)
    {
      case 0:
        goto LABEL_17;
      case 1:
        goto LABEL_16;
      case 2:
        v3 = MEMORY[0x1E695F1D0];
        goto LABEL_16;
      case 3:
        v3 = MEMORY[0x1E695F128];
        goto LABEL_16;
      case 4:
        v3 = MEMORY[0x1E695F118];
        goto LABEL_16;
      case 5:
        v3 = MEMORY[0x1E695F0B8];
        goto LABEL_16;
      case 6:
        v3 = MEMORY[0x1E695F0B0];
        goto LABEL_16;
      case 7:
        v3 = MEMORY[0x1E695F180];
        goto LABEL_16;
      case 8:
        v3 = MEMORY[0x1E695F150];
        goto LABEL_16;
      case 9:
        v3 = MEMORY[0x1E695F0F0];
        goto LABEL_16;
      case 10:
        v3 = MEMORY[0x1E695F108];
        goto LABEL_16;
      case 11:
        v3 = MEMORY[0x1E695F110];
        goto LABEL_16;
      case 12:
        v3 = MEMORY[0x1E695F1C0];
        goto LABEL_16;
      case 13:
        v3 = MEMORY[0x1E695F170];
        goto LABEL_16;
      case 14:
        v3 = MEMORY[0x1E695F178];
LABEL_16:
        result = CGColorSpaceCreateWithName(*v3);
LABEL_17:
        colorspaces[a1] = result;
        break;
      default:
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGColorSpaceRef  _Nullable PXGetColorSpace(PXGColorSpaceName)"];
        [v4 handleFailureInFunction:v5 file:@"PXColorSpaceNameAdditions.m" lineNumber:73 description:{@"Unrecognized colorspace name %lu", a1}];

        abort();
    }
  }

  return result;
}

uint64_t PXGetColorSpaceName(uint64_t a1)
{
  result = 0;
  while (colorspaces[result] != a1)
  {
    if (++result == 15)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B40362BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13057(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXActionPerformerStateDescription(uint64_t a1)
{
  v1 = @"userInteractive";
  v2 = @"backgroundTask";
  v3 = @"finished";
  if (a1 != 30)
  {
    v3 = 0;
  }

  if (a1 != 20)
  {
    v2 = v3;
  }

  if (a1 != 10)
  {
    v1 = v2;
  }

  v4 = @"ready";
  v5 = @"unlockIfNeeded";
  if (a1 != 5)
  {
    v5 = 0;
  }

  if (a1)
  {
    v4 = v5;
  }

  if (a1 <= 9)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

__CFString *PXActionPerformerTitleUseCaseDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7BB77C8[a1];
  }
}

uint64_t __Block_byref_object_copy__13675(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PXIsOCMockAllowed()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"PHOTOS_OCMOCK_ALLOWED"];
  v3 = [v2 BOOLValue];

  return v3;
}

id PXCanonicalErrorForError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSError * _Nonnull PXCanonicalErrorForError(NSError *__strong _Nonnull)"];
    [v10 handleFailureInFunction:v11 file:@"PXError.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v2 = v1;
  v3 = [v2 userInfo];
  v4 = *MEMORY[0x1E696AA08];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v6 = v2;
  if (v5)
  {
    v7 = v2;
    do
    {
      v6 = v5;

      v8 = [v6 userInfo];
      v5 = [v8 objectForKeyedSubscript:v4];

      v7 = v6;
    }

    while (v5);
  }

  return v6;
}

id PXDebugDescriptionForError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXDebugDescriptionForError(NSError *__strong _Nonnull)"];
    [v8 handleFailureInFunction:v9 file:@"PXError.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v1 localizedDescription];
  }

  v6 = v5;

  return v6;
}

void sub_1B403F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B403F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXIndexSetIsEquivalentToIndexSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else if (v3 && (v4 = v3, v5))
  {
    v6 = [v3 isEqualToIndexSet:v5];
  }

  else
  {
    v6 = [v4 count] == 0;
  }

  return v6;
}

double PXScrollViewContentOffsetSnappedToRange(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v20 = a6;
  if (!a1)
  {
    return v20;
  }

  v22 = a8 == 0.0;
  if (a10 >= 0.0)
  {
    v22 = 0;
  }

  v23 = a8 < 0.0 || v22;
  v24 = a8 == 0.0;
  if (a10 <= 0.0)
  {
    v24 = 0;
  }

  v25 = a8 > 0.0 || v24;
  v26 = a9 == 0.0;
  if (a11 >= 0.0)
  {
    v26 = 0;
  }

  v27 = a9 < 0.0 || v26;
  v28 = a9 == 0.0;
  if (a11 <= 0.0)
  {
    v28 = 0;
  }

  v29 = a9 > 0.0 || v28;
  if (a1 == 1)
  {
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  if (a1 == 1)
  {
    v31 = v27;
  }

  else
  {
    v31 = v23;
  }

  if (a1 == 1)
  {
    v32 = a7;
  }

  else
  {
    v32 = a6;
  }

  if (a1 == 1)
  {
    a4 = a5;
  }

  PXFloatRangeIntersection(v32, a4, a12, a13);
  v35 = a13 - v34;
  if (v34 > 0.00000011920929 && v35 > 0.00000011920929)
  {
    if ((v31 | v30))
    {
      if (a12 < v32)
      {
        v38 = v31;
      }

      else
      {
        v38 = 0;
      }

      if (a12 > v32)
      {
        v39 = v30;
      }

      else
      {
        v39 = 0;
      }

      v40 = 0.08;
      if (v38 & 1) != 0 || (v39)
      {
LABEL_55:
        if (v34 >= a13 * v40)
        {
          if (a12 < v32)
          {
            v35 = -v35;
          }

          v32 = v32 + v35;
        }

        else if (a12 >= v32)
        {
          v32 = v32 - v34;
        }

        else
        {
          v32 = v32 + v34;
        }

        goto LABEL_39;
      }
    }

    else if (v34 >= a13 + a13)
    {
      v40 = 0.08;
      goto LABEL_55;
    }

    v40 = 0.92;
    goto LABEL_55;
  }

LABEL_39:
  if (a1 != 1)
  {
    return v32;
  }

  return v20;
}

void PXDynamicHitTestInsetsViewUpdateHitTestInsetsWithDefaultOutsets(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [v9 extendedHitTestInsetsEdges];
  v21 = v9;
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXDynamicHitTestInsetsViewUpdateHitTestInsetsWithDefaultOutsets(__strong id<PXDynamicHitTestInsetsView> _Nonnull, PXEdgeInsets)"}];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v21 px_descriptionForAssertionMessage];
    [v15 handleFailureInFunction:v16 file:@"PXDynamicHitTestInsetsView.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"view", v18, v20}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXDynamicHitTestInsetsViewUpdateHitTestInsetsWithDefaultOutsets(__strong id<PXDynamicHitTestInsetsView> _Nonnull, PXEdgeInsets)"}];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v15 handleFailureInFunction:v16 file:@"PXDynamicHitTestInsetsView.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"view", v18}];
  }

LABEL_3:
  v11 = -a2;
  v12 = -30.0;
  if (v10)
  {
    v11 = -30.0;
  }

  v13 = -a3;
  if ((v10 & 2) != 0)
  {
    v13 = -30.0;
  }

  v14 = -a4;
  if ((v10 & 4) != 0)
  {
    v14 = -30.0;
  }

  if ((v10 & 8) == 0)
  {
    v12 = -a5;
  }

  [v21 setHitTestInsets:{v11, v13, v14, v12}];
}

double PXDynamicHitTestOutsetsWithDefaultOutsetsAndExtendedEdges(char a1)
{
  if (a1)
  {
    return 30.0;
  }

  return result;
}

void sub_1B4041398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXGColorSpaceNameDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E7BB7AA0[a1 - 1];
  }
}

__CFString *PXGPixelFormatNameDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E7BB7B18[a1 - 1];
  }
}

uint64_t PXGPixelFormatNameToMetalFormat(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B4075290[a1 - 1];
  }
}

void sub_1B40469FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXUserInterfaceIdiomFromUIUserInterfaceIdiom(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B40752C8[a1];
  }
}

uint64_t PXUserInterfaceLevelFromUITraitCollection(void *a1)
{
  v1 = [a1 userInterfaceLevel];
  if (v1 == -1)
  {
    return -1;
  }

  else
  {
    return v1 == 1;
  }
}

void sub_1B4049344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B4049D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXUpdateFlagsInvalidate(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!a2 || v2)
  {
    if ((a1[2] & 1) == 0)
    {
LABEL_7:
      v3 = 0;
      goto LABEL_8;
    }

LABEL_6:
    if ((a1[1] & a2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXUpdateFlagsInvalidate(PXUpdateFlags * _Nonnull, NSUInteger)"}];
      [v6 handleFailureInFunction:v7 file:@"PXUpdateSwiftOverlay.m" lineNumber:13 description:{@"invalidating %lu after it already has been updated", a2}];

      abort();
    }

    goto LABEL_7;
  }

  if (a1[2])
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 17) ^ 1;
LABEL_8:
  *a1 = v2 | a2;
  return v3 & 1;
}

void PXUpdateFlagsWillUpdate(uint64_t a1)
{
  *(a1 + 17) = 1;
  if (*(a1 + 16) == 1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXUpdateFlagsWillUpdate(PXUpdateFlags * _Nonnull)"];
    [v3 handleFailureInFunction:v2 file:@"PXUpdateSwiftOverlay.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"!(*updateFlags).isPerformingUpdate"}];
  }
}

void PXUpdateFlagsDidUpdate(uint64_t a1)
{
  if (*(a1 + 17) == 1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXUpdateFlagsDidUpdate(PXUpdateFlags * _Nonnull)"];
    [v3 handleFailureInFunction:v2 file:@"PXUpdateSwiftOverlay.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"!(*updateFlags).willPerformUpdate"}];
  }
}

BOOL PXUpdateShouldBeginUpdates(uint64_t *a1)
{
  *(a1 + 17) = 0;
  v1 = *a1;
  if (*a1)
  {
    if (*(a1 + 16) == 1)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PXUpdateShouldBeginUpdates(PXUpdateFlags * _Nonnull)"];
      [v4 handleFailureInFunction:v5 file:@"PXUpdateSwiftOverlay.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"!(*updateFlags).isPerformingUpdate"}];
    }

    *(a1 + 16) = 1;
    a1[1] = 0;
  }

  return v1 != 0;
}

void PXUpdateEndUpdates(uint64_t a1)
{
  *(a1 + 16) = 0;
  if (*a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXUpdateEndUpdates(PXUpdateFlags * _Nonnull)"];
    [v4 handleFailureInFunction:v3 file:@"PXUpdateSwiftOverlay.m" lineNumber:29 description:{@"still needing to update %lu after update pass", *a1}];
  }
}

BOOL PXUpdateIsUpdateNeeded(uint64_t *a1, uint64_t a2)
{
  if ((a1[2] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXUpdateIsUpdateNeeded(PXUpdateFlags * _Nonnull, NSUInteger)"}];
    [v6 handleFailureInFunction:v7 file:@"PXUpdateSwiftOverlay.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"(*updateFlags).isPerformingUpdate"}];
  }

  v4 = *a1;
  a1[1] |= a2;
  if ((v4 & a2) != 0)
  {
    *a1 = v4 & ~a2;
  }

  return (v4 & a2) != 0;
}

double PXClamp(double result, double a2, double a3)
{
  if (a2 >= a3)
  {
    a2 = a3;
  }

  if (a2 > result)
  {
    return a2;
  }

  return result;
}

double PXClampGreatherThanOrEqualToZero(double result)
{
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double PXClampLessThanOrEqualToZero(double result)
{
  if (result > 0.0)
  {
    return 0.0;
  }

  return result;
}

double PXFloatProgressBetween(double a1, double a2, double a3)
{
  v3 = a3 <= a1;
  v4 = 1.0 - (a2 - a3) / (a1 - a3);
  result = (a2 - a1) / (a3 - a1);
  if (v3)
  {
    return v4;
  }

  return result;
}

void PXSoftClamp(double a1, double a2, double a3, double a4)
{
  if (a2 >= a1)
  {
    if (a2 > a3)
    {
      log((a2 - a3) / a4 + 1.0);
    }
  }

  else
  {
    log((a1 - a2) / a4 + 1.0);
  }
}

double PXContentOffsetFlippedHorizontally(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  return MaxX - (a7 + a1 - CGRectGetMinX(v16));
}

id PXPointDescription(double a1, double a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&a1, *&a2];

  return v2;
}

uint64_t PXSizeIsEmpty(double a1, double a2)
{
  v2 = a1 == INFINITY;
  if (a2 != INFINITY)
  {
    v2 = 0;
  }

  if (a2 == 0.0)
  {
    v2 = 1;
  }

  return a1 == 0.0 || v2;
}

double PXSizeMin(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double PXSizeMax(double result, double a2, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double PXSizeGetAspectRatioWithDefault(double a1, double a2, double a3)
{
  if (a1 == 0.0 || a2 == 0.0)
  {
    return a3;
  }

  if (a1 == *MEMORY[0x1E69BDDB0] && a2 == *(MEMORY[0x1E69BDDB0] + 8))
  {
    return a3;
  }

  else
  {
    return fabs(a1 / a2);
  }
}

uint64_t PXSizeApproximatelyEqualOrBiggerThanSizeWithTolerance(double a1, double a2, double a3, double a4, double a5)
{
  v5 = vabdd_f64(a1, a3);
  if (a1 <= a3)
  {
    v7 = v5 == a5;
    v6 = v5 >= a5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    return 0;
  }

  v8 = vabdd_f64(a2, a4) <= a5;
  return a2 > a4 || v8;
}

uint64_t PXSizeApproximatelyEqualOrBiggerThanSize(double a1, double a2, double a3, double a4)
{
  if (a1 <= a3 && vabdd_f64(a1, a3) > 0.00000999999975)
  {
    return 0;
  }

  v5 = vabdd_f64(a2, a4) <= 0.00000999999975;
  return a2 > a4 || v5;
}

double PXSizeRoundToEven(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  __asm { FMOV            V1.2D, #0.5 }

  v7 = vrndaq_f64(vmulq_f64(a1, _Q1));
  *&result = *&vrndaq_f64(vaddq_f64(v7, v7));
  return result;
}

double PXSizeSafeInset(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3 * 0.5;
  if (v4 <= a3)
  {
    a3 = v4;
  }

  return a1 - a3 * 2.0;
}

id PXSizeDescription(double a1, double a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&a1, *&a2];

  return v2;
}

void PXRectDiff(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a1;
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  if (CGRectIntersectsRect(v40, v49))
  {
    if (a2 == a6 && a4 == a8)
    {
      v45.origin.x = a2;
      v45.origin.y = a3;
      v45.size.width = a4;
      v45.size.height = a5;
      MinY = CGRectGetMinY(v45);
      v46.origin.x = a2;
      v46.origin.y = a3;
      v46.size.width = a4;
      v46.size.height = a5;
      MaxY = CGRectGetMaxY(v46);
      v47.origin.x = a6;
      v47.origin.y = a7;
      v47.size.width = a8;
      v47.size.height = a9;
      v23 = CGRectGetMinY(v47);
      v48.origin.x = a6;
      v48.origin.y = a7;
      v48.size.width = a8;
      v48.size.height = a9;
      v21 = CGRectGetMaxY(v48);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __PXRectDiff_block_invoke;
      v34[3] = &unk_1E7BB8318;
      v36 = a2;
      v37 = a3;
      v38 = a4;
      v39 = a5;
      v35 = v17;
      _PXDiffRanges(v34, MinY, MaxY, v23, v21);
      v20 = v35;
      goto LABEL_11;
    }

    if (a3 == a7 && a5 == a9)
    {
      v41.origin.x = a2;
      v41.origin.y = a3;
      v41.size.width = a4;
      v41.size.height = a5;
      MinX = CGRectGetMinX(v41);
      v42.origin.x = a2;
      v42.origin.y = a3;
      v42.size.width = a4;
      v42.size.height = a5;
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = a6;
      v43.origin.y = a7;
      v43.size.width = a8;
      v43.size.height = a9;
      v22 = CGRectGetMinX(v43);
      v44.origin.x = a6;
      v44.origin.y = a7;
      v44.size.width = a8;
      v44.size.height = a9;
      v19 = CGRectGetMaxX(v44);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __PXRectDiff_block_invoke_2;
      v28[3] = &unk_1E7BB8318;
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v29 = v17;
      _PXDiffRanges(v28, MinX, MaxX, v22, v19);
      v20 = v29;
LABEL_11:

      goto LABEL_12;
    }
  }

  (*(v17 + 2))(v17, 1, a2, a3, a4, a5);
  (*(v17 + 2))(v17, -1, a6, a7, a8, a9);
LABEL_12:
}

void _PXDiffRanges(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = a4 < a3 && a5 > a2;
  v12 = v9;
  if (!v10)
  {
    v11 = (v9 + 16);
    (*(v9 + 2))(v9, 1, a2, a3);
    (*v11)(v12, -1, a4, a5);
LABEL_14:
    v9 = v12;
    goto LABEL_15;
  }

  if (a5 > a3)
  {
    (*(v9 + 2))(v9, -1, a3, a5);
    v9 = v12;
  }

  if (a4 < a2)
  {
    (*(v9 + 2))(v12, -1, a4, a2);
    v9 = v12;
  }

  if (a5 < a3)
  {
    (*(v9 + 2))(v12, 1, a5, a3);
    v9 = v12;
  }

  if (a4 > a2)
  {
    (*(v9 + 2))(v12, 1, a2, a4);
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t PXRectIntersectWithBasicRemainders(CGFloat *a1, _OWORD *a2, _OWORD *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v65 = CGRectIntersection(*&a4, *&a8);
  y = v65.origin.y;
  x = v65.origin.x;
  height = v65.size.height;
  width = v65.size.width;
  v59 = 0;
  v60 = &v59;
  v61 = 0x4010000000;
  v62 = "";
  v22 = MEMORY[0x1E695F050];
  v65.size = *(MEMORY[0x1E695F050] + 16);
  v63 = *MEMORY[0x1E695F050];
  size = v65.size;
  v53 = 0;
  v54 = &v53;
  v55 = 0x4010000000;
  v56 = "";
  v46 = v65.size;
  v47 = v63;
  v57 = v63;
  v58 = v65.size;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v23 = a6 == a10 && a4 == a8;
  v24 = a7 == a11 && a5 == a9;
  v66.origin.x = a4;
  v66.origin.y = a5;
  v66.size.width = a6;
  v66.size.height = a7;
  if (CGRectIsEmpty(v66) || (v67.origin.x = a8, v67.origin.y = a9, v67.size.width = a10, v67.size.height = a11, CGRectIsEmpty(v67)))
  {
    *(v50 + 24) = 0;
  }

  else
  {
    v68.origin.x = a4;
    v68.origin.y = a5;
    v68.size.width = a6;
    v68.size.height = a7;
    v78.origin.x = a8;
    v78.origin.y = a9;
    v78.size.width = a10;
    v78.size.height = a11;
    if (CGRectEqualToRect(v68, v78))
    {
      *(v50 + 24) = 1;
      v36 = v60;
      v60[2] = v47;
      v36[3] = v46;
      v37 = v54;
      v54[2] = v47;
      v37[3] = v46;
    }

    else if ((v23 || v24) && (v69.origin.x = a4, v69.origin.y = a5, v69.size.width = a6, v69.size.height = a7, v79.origin.x = a8, v79.origin.y = a9, v79.size.width = a10, v79.size.height = a11, CGRectIntersectsRect(v69, v79)) || v23 && ((v70.origin.x = a4, v70.origin.y = a5, v70.size.width = a6, v70.size.height = a7, MaxY = CGRectGetMaxY(v70), v71.origin.x = a8, v71.origin.y = a9, v71.size.width = a10, v71.size.height = a11, MaxY == CGRectGetMinY(v71)) || (v72.origin.x = a4, v72.origin.y = a5, v72.size.width = a6, v72.size.height = a7, MinY = CGRectGetMinY(v72), v73.origin.x = a8, v73.origin.y = a9, v73.size.width = a10, v73.size.height = a11, MinY == CGRectGetMaxY(v73))) || v24 && ((v74.origin.x = a4, v74.origin.y = a5, v74.size.width = a6, v74.size.height = a7, MaxX = CGRectGetMaxX(v74), v75.origin.x = a8, v75.origin.y = a9, v75.size.width = a10, v75.size.height = a11, MaxX == CGRectGetMinX(v75)) || (v76.origin.x = a4, v76.origin.y = a5, v76.size.width = a6, v76.size.height = a7, MinX = CGRectGetMinX(v76), v77.origin.x = a8, v77.origin.y = a9, v77.size.width = a10, v77.size.height = a11, MinX == CGRectGetMaxX(v77))))
    {
      *(v50 + 24) = 1;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __PXRectIntersectWithBasicRemainders_block_invoke;
      v48[3] = &unk_1E7BB8340;
      v48[4] = &v49;
      v48[5] = &v53;
      v48[6] = &v59;
      PXRectDiff(v48, a4, a5, a6, a7, a8, a9, a10, a11);
    }
  }

  v25 = v50;
  if ((v50[3] & 1) == 0)
  {
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[2];
    v29 = v22[3];
    v30 = v60;
    v60[2] = v47;
    v30[3] = v46;
    v31 = v54;
    v54[2] = v47;
    v31[3] = v46;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v27 = y;
  v26 = x;
  v29 = height;
  v28 = width;
  if (a1)
  {
LABEL_14:
    *a1 = v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;
  }

LABEL_15:
  if (a2)
  {
    v32 = v60[3];
    *a2 = v60[2];
    a2[1] = v32;
  }

  if (a3)
  {
    v33 = v54[3];
    *a3 = v54[2];
    a3[1] = v33;
  }

  v34 = *(v25 + 24);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
  return v34;
}

void sub_1B404D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL __PXRectIntersectWithBasicRemainders_block_invoke(_BOOL8 result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    v10 = result;
    if (a2 == 1)
    {
      result = CGRectIsNull(*(*(*(result + 48) + 8) + 32));
      if (result)
      {
        v11 = v10[6];
        goto LABEL_8;
      }
    }

    else
    {
      if (a2 != -1)
      {
        return result;
      }

      result = CGRectIsNull(*(*(*(result + 40) + 8) + 32));
      if (result)
      {
        v11 = v10[5];
LABEL_8:
        v12 = *(v11 + 8);
        v12[4] = a3;
        v12[5] = a4;
        v12[6] = a5;
        v12[7] = a6;
        return result;
      }
    }

    *(*(v10[4] + 8) + 24) = 0;
  }

  return result;
}

uint64_t PXRectCompareForHorizontalMovementInVerticalLayout(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  if (MinY < CGRectGetMinY(v21))
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    MaxY = CGRectGetMaxY(v22);
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    if (MaxY < CGRectGetMaxY(v23))
    {
      return -1;
    }
  }

  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  v18 = CGRectGetMinY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  if (v18 > CGRectGetMinY(v25))
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    v19 = CGRectGetMaxY(v26);
    v27.origin.x = a5;
    v27.origin.y = a6;
    v27.size.width = a7;
    v27.size.height = a8;
    if (v19 > CGRectGetMaxY(v27))
    {
      return 1;
    }
  }

  if (a1 >= a5)
  {
    return a1 > a5;
  }

  return -1;
}

uint64_t PXRectCompareForVerticalMovementInVerticalLayoutWithSourceRect(CGRect r2, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat r2a, CGFloat r2_8, CGFloat r2_16, CGFloat r2_24)
{
  height = r2.size.height;
  y = r2.origin.y;
  x = r2.origin.x;
  width = r2.size.width;
  v21 = r2.origin.y;
  v60.size.height = r2_24;
  v60.origin.y = r2_8;
  v60.origin.x = r2a;
  v46.origin.x = a2;
  v46.origin.y = a3;
  v42 = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  v60.size.width = r2_16;
  v47 = CGRectUnion(v46, v60);
  v22 = v47.origin.x;
  v23 = v47.size.width;
  v47.origin.y = v21;
  v47.size.height = height;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = a4;
  v61.size.height = a5;
  v24 = CGRectIntersectsRect(v47, v61);
  v48.origin.x = v22;
  v48.origin.y = y;
  v48.size.width = v23;
  v48.size.height = height;
  v62.origin.x = r2a;
  v62.origin.y = r2_8;
  v62.size.width = r2_16;
  v62.size.height = r2_24;
  v25 = CGRectIntersectsRect(v48, v62);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  v38 = CGRectGetMinX(v50) - MinX;
  v51.origin.x = r2a;
  v51.origin.y = r2_8;
  v51.size.width = r2_16;
  v51.size.height = r2_24;
  v37 = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.size.height = height;
  v52.origin.y = y;
  v52.size.width = width;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  v27 = CGRectGetMinY(v53);
  v54.origin.x = r2a;
  v54.origin.y = r2_8;
  v54.size.width = r2_16;
  v54.size.height = r2_24;
  v28 = CGRectGetMinY(v54);
  if (v24 && !v25)
  {
    if (v38 > 0.0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v30 = v37 - MinX;
  if (v24 || !v25)
  {
    if (!v24 || !v25)
    {
      v55.origin.x = v22;
      v55.size.width = v23;
      v55.origin.y = v42;
      v55.size.height = a5;
      v63.origin.x = r2a;
      v63.origin.y = r2_8;
      v63.size.width = r2_16;
      v63.size.height = r2_24;
      if (CGRectIntersectsRect(v55, v63))
      {
        v31 = -v38;
        if (v38 >= 0.0)
        {
          v31 = v38;
        }

        v32 = -v30;
        if (v30 >= 0.0)
        {
          v32 = v37 - MinX;
        }

        if (v31 >= v32)
        {
          return v31 > v32;
        }
      }

      else
      {
        v56.origin.x = a2;
        v56.origin.y = v42;
        v56.size.width = a4;
        v56.size.height = a5;
        MidY = CGRectGetMidY(v56);
        v57.origin.x = r2a;
        v57.origin.y = r2_8;
        v57.size.width = r2_16;
        v57.size.height = r2_24;
        if (MidY >= CGRectGetMidY(v57))
        {
          v58.origin.x = a2;
          v58.origin.y = v42;
          v58.size.width = a4;
          v58.size.height = a5;
          v36 = CGRectGetMidY(v58);
          v59.origin.x = r2a;
          v59.origin.y = r2_8;
          v59.size.width = r2_16;
          v59.size.height = r2_24;
          return v36 > CGRectGetMidY(v59);
        }
      }

      return -1;
    }

    if (v38 > 0.0 && v30 <= 0.0)
    {
      return 1;
    }

    if (v38 <= 0.0 && v30 > 0.0)
    {
      return -1;
    }

    v33 = v27 - MinY;
    v34 = v28 - MinY;
    if (v38 > 0.0 && v30 > 0.0)
    {
      if (v38 <= v30)
      {
        if (v38 < v30)
        {
          return 1;
        }

        if (v33 <= v34)
        {
          return v33 < v34;
        }
      }

      return -1;
    }

    result = 0;
    if (v38 <= 0.0 && v30 <= 0.0)
    {
      if (v38 < v30)
      {
        return -1;
      }

      result = 1;
      if (v38 <= v30 && v33 <= v34)
      {
        if (v33 >= v34)
        {
          return 0;
        }

        return -1;
      }
    }
  }

  else if (v30 <= 0.0)
  {
    return 1;
  }

  else
  {
    return -1;
  }

  return result;
}

double PXRectWithAspectRatioFittingRect(double a1, double a2, double a3, double a4)
{
  v4 = a2 + a4 * 0.5;
  PFSizeWithAspectRatioFittingSize();
  return v4 + v5 * -0.5;
}

double PXRectWithAspectRatioFillingRect(double a1, double a2, double a3, double a4)
{
  v4 = a2 + a4 * 0.5;
  PFSizeWithAspectRatioFillingSize();
  return v4 + v5 * -0.5;
}

CGFloat PXRectWithAspectRatioInsideRectContainingAsMuchAsPossibleOfRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  rect.origin.x = a2;
  v20 = a2 + a4 * 0.5;
  v21 = a3 + a5 * 0.5;
  PFSizeWithAspectRatioFittingSize();
  v23 = v22;
  v25 = v24;
  v26 = v20 + v22 * -0.5;
  v27 = v21 + v24 * -0.5;
  rect.origin.y = v26;
  rect.size.width = v27;
  rect.size.height = v22;
  v40 = v24;
  v41.origin.x = v26;
  v41.origin.y = v27;
  v41.size.width = v23;
  v41.size.height = v25;
  Width = CGRectGetWidth(v41);
  v42.origin.x = rect.origin.x;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  if (Width == CGRectGetWidth(v42))
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  LengthForAxis = PXRectGetLengthForAxis(v29, v26, v27, v23, v25);
  v38 = PXPointValueForAxis(v29, v26, v27);
  MinForAxis = PXRectGetMinForAxis(v29, rect.origin.x, a3, a4, a5);
  MaxForAxis = PXRectGetMaxForAxis(v29, rect.origin.x, a3, a4, a5);
  v33 = PXRectGetMinForAxis(v29, a9, a10, a11, a12);
  v34 = PXRectGetMaxForAxis(v29, a9, a10, a11, a12);
  if (v34 >= MinForAxis)
  {
    if (v33 > MaxForAxis)
    {
      MinForAxis = MaxForAxis - LengthForAxis;
    }

    else
    {
      if (v33 >= MaxForAxis)
      {
        v35 = MaxForAxis;
      }

      else
      {
        v35 = v33;
      }

      if (v35 <= MinForAxis)
      {
        v35 = MinForAxis;
      }

      if (v34 >= MaxForAxis)
      {
        v34 = MaxForAxis;
      }

      if (v34 <= MinForAxis)
      {
        v34 = MinForAxis;
      }

      if (v34 - v35 <= LengthForAxis)
      {
        if (v38 < v35)
        {
          v35 = v38;
        }

        if (v35 <= MinForAxis)
        {
          v35 = MinForAxis;
        }

        v36 = v34 - LengthForAxis;
        if (v35 >= MaxForAxis - LengthForAxis)
        {
          v35 = MaxForAxis - LengthForAxis;
        }

        if (v35 <= v36)
        {
          MinForAxis = v36;
        }

        else
        {
          MinForAxis = v35;
        }
      }

      else
      {
        MinForAxis = (v35 + v34 - LengthForAxis) * 0.5;
      }
    }
  }

  PXPointSetValueForAxis(&rect.origin.y, v29, MinForAxis);
  return rect.origin.y;
}

double PXRectFlippedHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v13 = MaxX - CGRectGetMaxX(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMinY(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetWidth(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetHeight(v19);
  return v13;
}

double PXRectNormalize(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  result = a1 - a5;
  if (a7 != 0.0)
  {
    return result / a7;
  }

  return result;
}

double PXRectSafeInset(double a1, double a2, double a3, double a4, CGFloat a5)
{
  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 * 0.5;
  if (v6 <= a5)
  {
    a5 = v6;
  }

  *&result = CGRectInset(*&a1, a5, a5);
  return result;
}

double PXRectClampPoint(double result, double a2, double a3, double a4, double a5)
{
  v5 = result + a3;
  if (a5 < v5)
  {
    v5 = a5;
  }

  if (result < v5)
  {
    return v5;
  }

  return result;
}

double PXRectShortestDistanceToPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 + a3;
  if (a5 < v6)
  {
    v6 = a5;
  }

  if (a1 < v6)
  {
    a1 = v6;
  }

  v7 = a2 + a4;
  if (a6 < a2 + a4)
  {
    v7 = a6;
  }

  if (a2 < v7)
  {
    a2 = v7;
  }

  return hypot(a1 - a5, a2 - a6);
}

double PXRectEdgeValue(int a1, double result, double a3, double a4, double a5)
{
  v5 = result + a4;
  v6 = a3 + a5;
  if (a1 != 3)
  {
    v6 = NAN;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a1 != 1)
  {
    a3 = NAN;
  }

  if (a1)
  {
    result = a3;
  }

  if (a1 > 1)
  {
    return v5;
  }

  return result;
}

uint64_t PXRectEdgeOpposite(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1B4074F40[a1];
  }
}

uint64_t PXRectEdgeFlippedHorizontally(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 2;
  }

  else
  {
    return dword_1B40753A0[a1 - 1];
  }
}

double PXRectArea(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0 || a4 == 0.0)
  {
    return 0.0;
  }

  if (a4 == *(MEMORY[0x1E69BDDB0] + 8) && a3 == *MEMORY[0x1E69BDDB0])
  {
    return 0.0;
  }

  else
  {
    return a3 * a4;
  }
}

BOOL PXRectIsValid(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a4) != INFINITY;
  }

  return result;
}

double PXRectWithMinimumSize(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a3 - a5) * 0.5;
  if (v6 > 0.0)
  {
    v6 = 0.0;
  }

  v7 = (a4 - a6) * 0.5;
  if (v7 > 0.0)
  {
    v7 = 0.0;
  }

  *&result = CGRectInset(*&a1, v6, v7);
  return result;
}

double PXRectShiftedInsideConstrainingRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a5 + a7;
  if (a1 + a3 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a1 + a3;
  }

  if (a5 >= v8)
  {
    v8 = a5;
  }

  result = a1 + v8 - (a1 + a3);
  if (result >= v7)
  {
    result = v7;
  }

  if (a5 >= result)
  {
    return a5;
  }

  return result;
}

void PXRectRotated(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  MidX = CGRectGetMidX(*&a1);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  MidY = CGRectGetMidY(v15);
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v12, MidX, MidY);
  CGAffineTransformRotate(&v13, &v12, a5);
  CGAffineTransformTranslate(&v14, &v13, -MidX, -MidY);
  v13 = v14;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectApplyAffineTransform(v16, &v13);
}

id PXRectDescription(double a1, double a2, double a3, double a4)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&a1, *&a2, *&a3, *&a4];

  return v4;
}

BOOL PXRectContainsRectWithTolerance(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v27 = CGRectInset(*&a1, -a9, -a9);
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;

  return CGRectContainsRect(v27, *&v21);
}

BOOL PXRectStrictlyContainsPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (CGRectGetMinX(*&a1) >= a5)
  {
    return 0;
  }

  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  if (CGRectGetMaxX(v13) <= a5)
  {
    return 0;
  }

  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  if (CGRectGetMinY(v14) >= a6)
  {
    return 0;
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  return CGRectGetMaxY(v15) > a6;
}

BOOL PXRectStrictlyContainsAnyVertexOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MinX = CGRectGetMinX(v27);
  v24 = a5;
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  MinY = CGRectGetMinY(v28);
  if (PXRectStrictlyContainsPoint(a1, a2, a3, a4, MinX, MinY))
  {
    return 1;
  }

  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v17 = CGRectGetMinX(v29);
  v30.origin.x = v24;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  MaxY = CGRectGetMaxY(v30);
  if (PXRectStrictlyContainsPoint(a1, a2, a3, a4, v17, MaxY))
  {
    return 1;
  }

  v31.origin.x = v24;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = v24;
  v32.origin.y = a6;
  v32.size.width = a7;
  v32.size.height = a8;
  v20 = CGRectGetMinY(v32);
  if (PXRectStrictlyContainsPoint(a1, a2, a3, a4, MaxX, v20))
  {
    return 1;
  }

  v33.origin.x = v24;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v22 = CGRectGetMaxX(v33);
  v34.origin.x = v24;
  v34.origin.y = a6;
  v34.size.width = a7;
  v34.size.height = a8;
  v23 = CGRectGetMaxY(v34);

  return PXRectStrictlyContainsPoint(a1, a2, a3, a4, v22, v23);
}

double PXEdgeInsetsBetweenRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMinX(*&a1);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMinX(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMaxX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v16 = MinY - CGRectGetMinY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxY(v26);
  return v16;
}

double PXEdgeInsetsWithValueForEdges(char a1, double a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0.0;
  }
}

double PXInsetRectWithValueForEdges(char a1, double a2, double a3, double a4, double a5, double a6)
{
  if ((a1 & 2) != 0)
  {
    v6 = a6;
  }

  else
  {
    v6 = 0.0;
  }

  return a2 + v6;
}

void PXEdgeInsetsForRectsFromEdgeInsetsForRect(_OWORD *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a3 >= 1)
  {
    v11 = a3;
    v30 = a8 + a5;
    v28 = a10 - (a5 + a7);
    v29 = a9 + a4;
    v27 = a11 - (a4 + a6);
    v13 = (a2 + 16);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = v13[1];
      v31.origin.x = v14;
      v31.origin.y = v15;
      v31.size.width = *v13;
      v31.size.height = v17;
      v33.origin.y = v29;
      v33.origin.x = v30;
      v33.size.height = v27;
      v33.size.width = v28;
      v32 = CGRectIntersection(v31, v33);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
      IsEmpty = CGRectIsEmpty(v32);
      v23 = 0uLL;
      v24 = 0uLL;
      if (!IsEmpty)
      {
        *&v23 = PXEdgeInsetsBetweenRects(x, y, width, height, v14, v15, v16, v17);
        *(&v24 + 1) = v25;
        *(&v23 + 1) = v26;
      }

      *a1 = v23;
      a1[1] = v24;
      a1 += 2;
      v13 += 4;
      --v11;
    }

    while (v11);
  }
}

BOOL PXEdgeInsetsIsZero(double a1, double a2, double a3, double a4)
{
  v4 = a3 == 0.0;
  if (a4 != 0.0)
  {
    v4 = 0;
  }

  if (a1 != 0.0)
  {
    v4 = 0;
  }

  return a2 == 0.0 && v4;
}

double PXEdgeInsetsMax(double result, double a2, double a3, double a4, double a5)
{
  if (result < a5)
  {
    return a5;
  }

  return result;
}

double PXEdgeInsetsMaxEachEdge(double result, double a2, double a3, double a4, double a5)
{
  if (result < a5)
  {
    return a5;
  }

  return result;
}

double PXEdgeInsetsAddValueForEdges(double *a1, char a2, double result)
{
  if (a2)
  {
    *a1 = *a1 + result;
    if ((a2 & 2) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a1[1] = a1[1] + result;
  if ((a2 & 4) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = a1[3] + result;
    a1[3] = result;
    return result;
  }

LABEL_8:
  a1[2] = a1[2] + result;
  if ((a2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t PXEdgesGetCGRectEdge(uint64_t a1, _DWORD *a2)
{
  v2 = a1 - 1;
  if ((a1 - 1) > 7 || ((0x8Bu >> v2) & 1) == 0)
  {
    return 0;
  }

  *a2 = dword_1B40753AC[v2];
  return 1;
}

CGFloat PXAffineTransformMakeFromRects@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v17 = -CGRectGetMidX(*&a2);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MidY = CGRectGetMidY(v39);
  CGAffineTransformMakeTranslation(a1, v17, -MidY);
  v34 = a6;
  v40.origin.x = a6;
  v40.origin.y = a7;
  v40.size.width = a8;
  v40.size.height = a9;
  sx = CGRectGetWidth(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  sxa = sx / CGRectGetWidth(v41);
  v42.origin.x = a6;
  v42.origin.y = a7;
  v42.size.width = a8;
  v42.size.height = a9;
  Height = CGRectGetHeight(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v20 = CGRectGetHeight(v43);
  CGAffineTransformMakeScale(&t2, sxa, Height / v20);
  v21 = *(a1 + 16);
  *&t1.a = *a1;
  *&t1.c = v21;
  *&t1.tx = *(a1 + 32);
  CGAffineTransformConcat(&v38, &t1, &t2);
  v22 = *&v38.c;
  *a1 = *&v38.a;
  *(a1 + 16) = v22;
  *(a1 + 32) = *&v38.tx;
  v23 = v34;
  *&v22 = a7;
  v24 = a8;
  v25 = a9;
  MidX = CGRectGetMidX(*(&v22 - 8));
  v44.origin.x = v34;
  v44.origin.y = a7;
  v44.size.width = a8;
  v44.size.height = a9;
  v27 = CGRectGetMidY(v44);
  CGAffineTransformMakeTranslation(&t2, MidX, v27);
  v28 = *(a1 + 16);
  *&t1.a = *a1;
  *&t1.c = v28;
  *&t1.tx = *(a1 + 32);
  CGAffineTransformConcat(&v38, &t1, &t2);
  v29 = *&v38.c;
  *a1 = *&v38.a;
  *(a1 + 16) = v29;
  result = v38.tx;
  *(a1 + 32) = *&v38.tx;
  return result;
}

CGFloat PXAffineTransformMakeScaleAndRotationAroundPoint@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  CGAffineTransformMakeTranslation(a1, -a4, -a5);
  CGAffineTransformMakeScale(&t2, a2, a2);
  v10 = *(a1 + 16);
  *&v17.a = *a1;
  *&v17.c = v10;
  *&v17.tx = *(a1 + 32);
  CGAffineTransformConcat(&v19, &v17, &t2);
  v11 = *&v19.c;
  *a1 = *&v19.a;
  *(a1 + 16) = v11;
  *(a1 + 32) = *&v19.tx;
  CGAffineTransformMakeRotation(&t2, a3);
  v12 = *(a1 + 16);
  *&v17.a = *a1;
  *&v17.c = v12;
  *&v17.tx = *(a1 + 32);
  CGAffineTransformConcat(&v19, &v17, &t2);
  v13 = *&v19.c;
  *a1 = *&v19.a;
  *(a1 + 16) = v13;
  *(a1 + 32) = *&v19.tx;
  CGAffineTransformMakeTranslation(&t2, a4, a5);
  v14 = *(a1 + 16);
  *&v17.a = *a1;
  *&v17.c = v14;
  *&v17.tx = *(a1 + 32);
  CGAffineTransformConcat(&v19, &v17, &t2);
  v15 = *&v19.c;
  *a1 = *&v19.a;
  *(a1 + 16) = v15;
  result = v19.tx;
  *(a1 + 32) = *&v19.tx;
  return result;
}

CGFloat PXAffineTransformMakeHorizontalFlip@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  CGAffineTransformMakeTranslation(a1, -a2, 0.0);
  CGAffineTransformMakeScale(&t2, -1.0, 1.0);
  v4 = *(a1 + 16);
  *&v9.a = *a1;
  *&v9.c = v4;
  *&v9.tx = *(a1 + 32);
  CGAffineTransformConcat(&v11, &v9, &t2);
  v5 = *&v11.c;
  *a1 = *&v11.a;
  *(a1 + 16) = v5;
  *(a1 + 32) = *&v11.tx;
  CGAffineTransformMakeTranslation(&t2, a2, 0.0);
  v6 = *(a1 + 16);
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = *(a1 + 32);
  CGAffineTransformConcat(&v11, &v9, &t2);
  v7 = *&v11.c;
  *a1 = *&v11.a;
  *(a1 + 16) = v7;
  result = v11.tx;
  *(a1 + 32) = *&v11.tx;
  return result;
}

CGFloat PXAffineTransformOffsetFixpoint@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, a3, a4);
  v8 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v8;
  *&t1.tx = a1[2];
  v9 = *(a2 + 16);
  *&v14.a = *a2;
  *&v14.c = v9;
  *&v14.tx = *(a2 + 32);
  CGAffineTransformConcat(&v16, &t1, &v14);
  v10 = *&v16.c;
  *a2 = *&v16.a;
  *(a2 + 16) = v10;
  *(a2 + 32) = *&v16.tx;
  CGAffineTransformMakeTranslation(&t1, -a3, -a4);
  v11 = *(a2 + 16);
  *&v14.a = *a2;
  *&v14.c = v11;
  *&v14.tx = *(a2 + 32);
  CGAffineTransformConcat(&v16, &t1, &v14);
  v12 = *&v16.c;
  *a2 = *&v16.a;
  *(a2 + 16) = v12;
  result = v16.tx;
  *(a2 + 32) = *&v16.tx;
  return result;
}

CGFloat PXAffineTransformMakeWithTranslationScaleRotation@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return PXAffineTransformMakeWithTranslationScaleRotationTransform(MEMORY[0x1E695EFD0], a1, a2, a3, a4, a5, a6);
}

CGFloat PXAffineTransformMakeWithTranslationScaleRotationTransform@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  v12 = MEMORY[0x1E695EFD0];
  v13 = *MEMORY[0x1E695EFD0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v14;
  v15 = *(v12 + 32);
  *(a2 + 32) = v15;
  *&v26.a = v13;
  *&v26.c = v14;
  *&v26.tx = v15;
  CGAffineTransformTranslate(a2, &v26, a3, a4);
  v16 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v16;
  *&t1.tx = a1[2];
  v17 = *(a2 + 16);
  *&v24.a = *a2;
  *&v24.c = v17;
  *&v24.tx = *(a2 + 32);
  CGAffineTransformConcat(&v26, &t1, &v24);
  v18 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v18;
  *(a2 + 32) = *&v26.tx;
  v19 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v19;
  *&t1.tx = *(a2 + 32);
  CGAffineTransformRotate(&v26, &t1, a7);
  v20 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v20;
  *(a2 + 32) = *&v26.tx;
  v21 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v21;
  *&t1.tx = *(a2 + 32);
  CGAffineTransformScale(&v26, &t1, a5, a6);
  v22 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v22;
  result = v26.tx;
  *(a2 + 32) = *&v26.tx;
  return result;
}

void PXAffineTransformDecomposeTranslationScaleRotation(uint64_t a1, void *a2, double *a3, double *a4, double *a5)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = atan2(v12, *a1);
  v15 = __sincos_stret(v14);
  if (fabs(v15.__cosval) <= fabs(v15.__sinval))
  {
    v16 = v12 / v15.__sinval;
    v17 = -*(a1 + 16) / v15.__sinval;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = v13 / v15.__cosval;
  v17 = *(a1 + 24) / v15.__cosval;
  if (a2)
  {
LABEL_5:
    *a2 = v10;
    a2[1] = v11;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (a5)
  {
    *a5 = v14;
  }
}

double PXAffineTransformGetMaxScale(_OWORD *a1)
{
  v1 = a1[1];
  *&v3.a = *a1;
  *&v3.c = v1;
  *&v3.tx = a1[2];
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformDecompose(&v4, &v3);
  result = v4.scale.width;
  if (v4.scale.width < v4.scale.height)
  {
    return v4.scale.height;
  }

  return result;
}

double PXAffineTransformGetMinScale(_OWORD *a1)
{
  v1 = a1[1];
  *&v3.a = *a1;
  *&v3.c = v1;
  *&v3.tx = a1[2];
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformDecompose(&v4, &v3);
  result = v4.scale.width;
  if (v4.scale.width < v4.scale.height)
  {
    return v4.scale.height;
  }

  return result;
}

double PXAffineTransformGetUniformScale(_OWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  v2 = a1[1];
  *&transform.a = *a1;
  *&transform.c = v2;
  *&transform.tx = a1[2];
  CGAffineTransformDecompose(&v7, &transform);
  result = v7.scale.width;
  if (vabdd_f64(v7.scale.height, v7.scale.width) > 0.00000999999975)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = a1[1];
      *&transform.a = *a1;
      *&transform.c = v5;
      *&transform.tx = a1[2];
      v6 = NSStringFromCGAffineTransform(&transform);
      LODWORD(transform.a) = 138412290;
      *(&transform.a + 4) = v6;
      _os_log_fault_impl(&dword_1B3F73000, v4, OS_LOG_TYPE_FAULT, "Expected uniform scaling in transform, but found %@", &transform, 0xCu);
    }

    return v7.scale.width;
  }

  return result;
}

void PXEnumeratePageKeysForRect(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  if (!CGRectIsEmpty(v19))
  {
    v18 = 0;
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    v10 = vcvtmd_s64_f64(CGRectGetMinX(v20) * 0.0009765625);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    v11 = vcvtmd_s64_f64(CGRectGetMaxX(v21) * 0.0009765625);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    MinY = CGRectGetMinY(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    MaxY = CGRectGetMaxY(v23);
    if (v10 <= v11)
    {
      v14 = vcvtmd_s64_f64(MinY * 0.0009765625);
      v15 = vcvtmd_s64_f64(MaxY * 0.0009765625);
      do
      {
        if (v14 <= v15)
        {
          v17 = v14;
          do
          {
            v9[2](v9, ~(v17 | (v10 << 16)), &v18);
            v16 = v18;
            if (v17 >= v15)
            {
              break;
            }

            ++v17;
          }

          while ((v18 & 1) == 0);
        }

        else
        {
          v16 = 0;
        }

        if (v10 >= v11)
        {
          break;
        }

        ++v10;
      }

      while ((v16 & 1) == 0);
    }
  }
}

double PXDerivative(double (**a1)(id, double), double a2)
{
  v3 = a2 + 0.03125;
  v4 = a1 + 2;
  v5 = a1[2];
  v6 = a1;
  v7 = v5(v3);
  v8 = (*v4)(v6, a2 + -0.03125);

  return (v7 - v8) * 16.0;
}

double PXRectFunctionDerivative(double (**a1)(id, double), double a2)
{
  v3 = a2 + 0.03125;
  v4 = a1 + 2;
  v5 = a1[2];
  v6 = a1;
  v7 = v5(v3);
  v8 = (*v4)(v6, a2 + -0.03125);

  return (v7 - v8) * 16.0;
}

uint64_t PXAxisFromUICollectionViewScrollDirection(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXAxis PXAxisFromUICollectionViewScrollDirection(UICollectionViewScrollDirection)"];
    [v6 handleFailureInFunction:v7 file:@"PXGeometry.m" lineNumber:1095 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 2;
}

uint64_t PXEdgesFlippedHorizontally(uint64_t a1)
{
  v1 = a1 ^ 0xA;
  if ((a1 & 8) == 0)
  {
    v1 = a1;
  }

  if ((a1 & 2) != 0)
  {
    return v1 ^ 0xA;
  }

  else
  {
    return v1;
  }
}

uint64_t PXEdgesFlippedVertically(uint64_t a1)
{
  v1 = a1 ^ 5;
  if ((a1 & 1) == 0)
  {
    v1 = a1;
  }

  if ((a1 & 4) != 0)
  {
    return v1 ^ 5;
  }

  else
  {
    return v1;
  }
}

uint64_t PXEdgesForAxis(uint64_t a1)
{
  v1 = 10;
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

double PXRectWithSizeAlignedToRectEdgesWithPadding(char a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  if ((~a1 & 0xA) != 0)
  {
    if ((a1 & 2) != 0)
    {
      v24.origin.x = a4;
      v24.origin.y = a5;
      v24.size.width = a6;
      v24.size.height = a7;
      v13 = a8 + CGRectGetMinX(v24);
    }

    else
    {
      v15 = a4;
      if ((a1 & 8) != 0)
      {
        v13 = CGRectGetMaxX(*&v15) - a2 - a8;
      }

      else
      {
        v13 = CGRectGetMidX(*&v15) + a2 * -0.5;
      }
    }
  }

  else
  {
    v13 = a4 + a8;
  }

  if ((~a1 & 5) != 0)
  {
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    if (a1)
    {
      CGRectGetMinY(*&v19);
    }

    else if ((a1 & 4) != 0)
    {
      CGRectGetMaxY(*&v19);
    }

    else
    {
      CGRectGetMidY(*&v19);
    }
  }

  return v13;
}

uint64_t PXEdgesFromCGRectEdge(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B40753E0[a1];
  }
}

void sub_1B4050850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16255(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PXEnumerateSubrangesMatchingTestUsingBlock(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = a1 + a2;
    if (!__CFADD__(a1, a2))
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v13 = 0;
        if (a1 >= v9)
        {
          goto LABEL_10;
        }

        v11 = v7[2](v7, a1, &v13);
        if (v13)
        {
          break;
        }

        if (v11)
        {
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = a1;
          }

          else
          {
            v12 = v10;
          }
        }

        else
        {
LABEL_10:
          v12 = 0x7FFFFFFFFFFFFFFFLL;
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v8[2](v8, v10, a1 - v10, &v13);
            if (v13 == 1)
            {
              break;
            }

            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        ++a1;
        v10 = v12;
      }

      while (a1 <= v9);
    }
  }
}

void sub_1B4053588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4054778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4056058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16665(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4056420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_1B405691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4056EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_1B4057484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_1B4057EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

Class __getPFMetadataClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosFormatsLibraryCore_frameworkLibrary_16989)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosFormatsLibraryCore_block_invoke_16990;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7BB8740;
    v8 = 0;
    PhotosFormatsLibraryCore_frameworkLibrary_16989 = _sl_dlopen();
  }

  if (!PhotosFormatsLibraryCore_frameworkLibrary_16989)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosFormatsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXFileBackedAsset.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PFMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPFMetadataClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXFileBackedAsset.m" lineNumber:26 description:{@"Unable to find class %s", "PFMetadata"}];

LABEL_10:
    __break(1u);
  }

  getPFMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosFormatsLibraryCore_block_invoke_16990()
{
  result = _sl_dlopen();
  PhotosFormatsLibraryCore_frameworkLibrary_16989 = result;
  return result;
}

void PXIterateAsynchronously(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17218;
  v19 = __Block_byref_object_dispose__17219;
  v20 = 0;
  v7 = [[_PXAsyncIterator alloc] initWithCount:a1 handler:v5];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __PXIterateAsynchronously_block_invoke;
  v12 = &unk_1E7BB8830;
  v14 = &v15;
  v8 = v6;
  v13 = v8;
  [(_PXAsyncIterator *)v7 setCompletion:&v9];
  objc_storeStrong(v16 + 5, v7);
  [(_PXAsyncIterator *)v7 _executeNextRun:v9];

  _Block_object_dispose(&v15, 8);
}

void sub_1B40594F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __PXIterateAsynchronously_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_1B4059DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B405A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 240), 8);
  _Block_object_dispose((v69 - 208), 8);
  _Unwind_Resume(a1);
}

void px_dispatch_on_main_queue_sync(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

id px_dispatch_queue_create_serial_with_priority(const char *a1, dispatch_qos_class_t a2, int a3)
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = px_dispatch_queue_create_with_priority(a1, v6, a2, a3);

  return v7;
}

uint64_t px_dispatch_qos_from_nsqualityofservice(uint64_t a1)
{
  if (a1 == 25)
  {
    v1 = 25;
  }

  else
  {
    v1 = 33;
  }

  if (a1 == 17)
  {
    v2 = 17;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 9)
  {
    v3 = 9;
  }

  else
  {
    v3 = 33;
  }

  if (a1 == -1)
  {
    v3 = 21;
  }

  if (a1 <= 16)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

char *PXSyncCallbackBegin(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(v1);
  v2 = PXSyncCallbackKey;
  specific = dispatch_queue_get_specific(v1, PXSyncCallbackKey);
  dispatch_queue_set_specific(v1, v2, specific + 1, 0);

  return specific + 1;
}

void PXSyncCallbackEnd(void *a1)
{
  queue = a1;
  dispatch_assert_queue_V2(queue);
  v1 = PXSyncCallbackKey;
  specific = dispatch_queue_get_specific(queue, PXSyncCallbackKey);
  dispatch_queue_set_specific(queue, v1, specific - 1, 0);
}

void PXPerformWithSyncTokenOnQueue(void *a1, NSObject *a2, void *a3)
{
  if (dispatch_get_specific(PXSyncCallbackKey) == a1)
  {
    v5 = a3[2];

    v5(a3);
  }

  else
  {

    dispatch_async(a2, a3);
  }
}

_PXSnapshottableImageView *PXPreviewImageViewForImage(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = a1;
  v13 = [[_PXSnapshottableImageView alloc] initWithFrame:a3, a4, a5, a6];
  [(_PXSnapshottableImageView *)v13 setImage:v12];

  [(_PXSnapshottableImageView *)v13 setContentMode:2];
  [v11 imageContentsRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(_PXSnapshottableImageView *)v13 layer];
  [v22 setContentsRect:{v15, v17, v19, v21}];

  v23 = [v11 imageViewSpec];

  if (v23)
  {
    [v23 cornerRadius];
    if (v24 != 0.0)
    {
      [v23 cornerRadius];
      v26 = v25;
      v27 = [(_PXSnapshottableImageView *)v13 layer];
      [v27 setCornerRadius:v26];

      v28 = [v23 cornerCurve];
      v29 = [(_PXSnapshottableImageView *)v13 layer];
      [v29 setCornerCurve:v28];

      v30 = [v23 cornerMask];
      v31 = [(_PXSnapshottableImageView *)v13 layer];
      [v31 setMaskedCorners:v30];

      v32 = [(_PXSnapshottableImageView *)v13 layer];
      [v32 setMasksToBounds:1];
    }

    [v23 rotationAngle];
    if (v33 != 0.0)
    {
      [v23 rotationAngle];
      CGAffineTransformMakeRotation(&v38, v34);
      v35 = [(_PXSnapshottableImageView *)v13 layer];
      v37 = v38;
      [v35 setAffineTransform:&v37];
    }
  }

  return v13;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x1EEDBEF90](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}