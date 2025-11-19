void sub_1C1031B3C()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_22_1();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_24_5();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_34_3();
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_33_3();
  sub_1C12622C0();
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v11;
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_15_1();
  (*(v12 + 16))();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1C1262330();
  v15 = v14;
  (*(v7 + 8))(v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  if ((v15 & 1) == 0)
  {
    *(v2 + 64) = v13;
    *(v2 + 72) = 0;
    OUTLINED_FUNCTION_13_8();
    sub_1C0FDB0A8(v4, v19);
    PhotosSelection.isItemSelected(_:)();
    v17 = v16;

    sub_1C0FD1A5C(v19, &qword_1EBE91420);
    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_8();
      PhotosSelection.set(item:)(v4);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C1031DAC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-1] - v6;
  v8 = sub_1C102F7D8();
  if ((v9 & 1) == 0)
  {
    v14 = v8;
    OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_22_1();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_35_1();
    v17 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v16);
    sub_1C12622C0();
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[3] = v10;
    __swift_allocate_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_15_1();
    (*(v11 + 16))();
    swift_getAssociatedConformanceWitness();
    sub_1C1262330();
    v13 = v12;
    (*(v4 + 8))(v7, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    if ((v13 & 1) == 0)
    {
      sub_1C102FF30();
      sub_1C0FD1A5C(v16, &qword_1EBE91420);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C103202C()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_17_9();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_24_5();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_34_3();
  v22 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_33_3();
  sub_1C12622C0();
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v20[3] = v11;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_15_1();
  (*(v12 + 16))();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1C1262330();
  v15 = v14;
  (*(v7 + 8))(v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if ((v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_8();
    sub_1C0FDB0A8(v4, v21);
    PhotosSelection.isItemSelected(_:)();
    v17 = v16;

    sub_1C0FD1A5C(v21, &qword_1EBE91420);
    if (v17)
    {
      if ((*(v2 + 72) & 1) == 0 && *(v2 + 64) == v13)
      {
        *(v2 + 64) = 0;
        *(v2 + 72) = 1;
      }

      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C12A8B40;
      sub_1C0FDB0A8(v4, inited + 32);
      PhotosSelection.deselect(items:)(inited);
    }

    else
    {
      *(v2 + 64) = v13;
      *(v2 + 72) = 0;
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1C12A8B40;
      sub_1C0FDB0A8(v4, v19 + 32);
      PhotosSelection.select(items:)(v19);
    }

    swift_setDeallocating();
    sub_1C1102090();
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_1C1032364()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v28 = v0;
  OUTLINED_FUNCTION_17_9();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_46();
  v10 = sub_1C1262300();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v10;
    v27 = v6;
    if (v10)
    {
      v12 = 0;
      v29._rawValue = MEMORY[0x1E69E7CC0];
      v13 = &qword_1EBE907C0;
      do
      {
        MEMORY[0x1C68EBC60](v12, v4, AssociatedConformanceWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(v13);
        if (swift_dynamicCast())
        {
          v14 = v11;
          v15 = v4;
          v16 = AssociatedConformanceWitness;
          v17 = AssociatedTypeWitness;
          v18 = v13;
          sub_1C0F9DDE4(v30, v32);
          OUTLINED_FUNCTION_13_8();
          sub_1C0FDB0A8(v32, v30);
          PhotosSelection.isItemSelected(_:)();
          v20 = v19;

          sub_1C0FD1A5C(v30, &qword_1EBE91420);
          if (v20)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
          }

          else
          {
            sub_1C0FDB0A8(v32, v30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v29._rawValue = v24;
            }

            v22 = *(v29._rawValue + 2);
            v21 = *(v29._rawValue + 3);
            if (v22 >= v21 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v21);
              sub_1C0FE40BC();
              v29._rawValue = v25;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            rawValue = v29._rawValue;
            *(v29._rawValue + 2) = v22 + 1;
            sub_1C0F9DDE4(v30, rawValue + 40 * v22 + 32);
          }

          v13 = v18;
          AssociatedTypeWitness = v17;
          AssociatedConformanceWitness = v16;
          v4 = v15;
          v11 = v14;
        }

        else
        {
          v31 = 0;
          memset(v30, 0, sizeof(v30));
          sub_1C0FD1A5C(v30, &qword_1EBE91420);
        }

        ++v12;
      }

      while (v11 != v12);
    }

    else
    {
      v29._rawValue = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_13_8();
    PhotosSelection.select(items:)(v29);

    (*(v27 + 8))(v9, v4);
    OUTLINED_FUNCTION_22_0();
  }
}

uint64_t sub_1C10326E4()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.deselectEverything()();
}

uint64_t sub_1C1032730()
{
  OUTLINED_FUNCTION_39();
  result = sub_1C102F638();
  v1 = result;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = result + 64;
  v6 = v4 & *(result + 64);
  v7 = (v3 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1C10335C0(*(v1 + 56) + 112 * (v9 | (v8 << 6)), v15);
    v10 = *&v15[9];
    v11 = *&v15[10];
    v12 = *&v15[11];
    v13 = *&v15[12];
    sub_1C1033D88(v15);
    result = OUTLINED_FUNCTION_15_12(v10, v11, v12, v13);
    if (result)
    {
      v14 = 1;
LABEL_13:

      return v14;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v6 = *(v5 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1032878()
{
  v0 = sub_1C102F7D8();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  if (sub_1C1030D24() < 1)
  {
    return 0;
  }

  result = sub_1C1030D24();
  if (result)
  {
    if (v2 != 0x8000000000000000 || result != -1)
    {
      return v2 % result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C10328DC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_17_9();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_8();
  v5 = sub_1C10FEB40();

  v6 = *(v5 + 16);

  OUTLINED_FUNCTION_13_8();
  if (v6)
  {
    sub_1C10FEB40();

    OUTLINED_FUNCTION_38_3(v7, v8, v9, v10, v11, v12, v13, v14, v27);
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91400);
  }

  else
  {
    PhotosSelection.selectionIdentifiers.getter();

    OUTLINED_FUNCTION_38_3(v18, v19, v20, v21, v22, v23, v24, v25, v27);
    MEMORY[0x1EEE9AC00](v26);
    OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91410);
  }

  OUTLINED_FUNCTION_26_3();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_12();
  sub_1C0FDB6D4(v16, v17);
  sub_1C1265F80();

  (*(v3 + 8))(v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1032BA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1C1262340();
  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_1C1032C7C(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = MEMORY[0x1E69E5FE0];
  v3[0] = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C1262340();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_1C1032D44()
{
  OUTLINED_FUNCTION_13_8();
  sub_1C10FEB40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91400);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_12();
  sub_1C0FDB6D4(v0, v1);
  sub_1C1265F80();

  sub_1C12661A0();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_1C12662A0();
}

uint64_t sub_1C1032F5C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v3 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1C10330A8()
{
  sub_1C102F53C();
  v0 = PhotosSelection.selectionIdentifiers.getter();

  OUTLINED_FUNCTION_3_17();
  v3 = v2 & v1;
  v5 = (v4 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v3 = *(v0 + 56 + 8 * v9);
    ++v7;
    if (v3)
    {
      v7 = v9;
      do
      {
LABEL_6:
        v10 = (*(v0 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v3)))));
        v11 = v10[1];
        v17[0] = *v10;
        v17[1] = v11;

        sub_1C1033270(v17, __src);

        if (*(&__src[1] + 1))
        {
          memcpy(v15, __src, sizeof(v15));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_8_12();
            sub_1C0FE41A4();
            v8 = v13;
          }

          v12 = *(v8 + 16);
          if (v12 >= *(v8 + 24) >> 1)
          {
            sub_1C0FE41A4();
            v8 = v14;
          }

          *(v8 + 16) = v12 + 1;
          result = memcpy((v8 + 112 * v12 + 32), v15, 0x70uLL);
        }

        else
        {
          result = sub_1C0FD1A5C(__src, &unk_1EBE90A18);
        }

        v3 &= v3 - 1;
      }

      while (v3);
    }
  }

  __break(1u);
  return result;
}

double sub_1C1033270@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C102F638();
  if (*(v5 + 16) && (v6 = sub_1C0FA4574(v3, v4), (v7 & 1) != 0))
  {
    sub_1C10335C0(*(v5 + 56) + 112 * v6, a2);
  }

  else
  {

    result = 0.0;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_1C103330C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v16 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  OUTLINED_FUNCTION_28_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = sub_1C102F7D8();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    OUTLINED_FUNCTION_17_9();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    MEMORY[0x1C68EBC60](v14, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v16 + 8))(v5, AssociatedTypeWitness);
    (*(v0 + qword_1EDE7FEA8))(v11);
    (*(v8 + 8))(v11, v15);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1033520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_4();
  v2 = OUTLINED_FUNCTION_28_2();
  v4 = v3(v2);
  v6 = v5;
  sub_1C10335C0(a1, __src);
  OUTLINED_FUNCTION_29_1();
  sub_1C0FF9294(__src, v4, v6);
  return swift_endAccess();
}

uint64_t sub_1C103361C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  OUTLINED_FUNCTION_23_4();
  v3(v1, v2);
  OUTLINED_FUNCTION_29_1();
  sub_1C103391C();
  sub_1C0FD1A5C(v5, &unk_1EBE90A18);
  swift_endAccess();
}

uint64_t PhotosItemListSelectionController.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = qword_1EDE7FEA0;
  sub_1C1261F10();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PhotosItemListSelectionController.__deallocating_deinit()
{
  PhotosItemListSelectionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1C103385C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FA4574(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F8);
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_43_2();
    v7 = (*(v1 + 56) + 48 * v3);
    v8 = v7[1];
    *v2 = *v7;
    *(v2 + 16) = v8;
    *(v2 + 25) = *(v7 + 25);
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v1;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *&result = 1;
    *(v2 + 24) = xmmword_1C12A6550;
    *(v2 + 40) = 0;
  }

  return result;
}

double sub_1C103391C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FA4574(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F0);
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_43_2();
    memcpy(v2, (*(v1 + 56) + 112 * v3), 0x70uLL);
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
  }

  return result;
}

uint64_t sub_1C10339D4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C1033A74()
{
  result = sub_1C1261F10();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1C1033DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C1033E4C()
{
  OUTLINED_FUNCTION_21_2();
  sub_1C0FFE15C(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_4_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E8);
    OUTLINED_FUNCTION_10_12();
    sub_1C0FD0978(*(v9 + 48) + 48 * v2);
    v5 = *(v9 + 56) + 16 * v2;
    v6 = *v5;
    v7 = *(v5 + 8);
    *v1 = v6;
    *(v1 + 8) = v7;
    sub_1C1034138();
    OUTLINED_FUNCTION_41_0();
    sub_1C1266B40();
    *v0 = v9;
  }

  else
  {
    result = 0.0;
    *v1 = xmmword_1C12A3E50;
  }

  return result;
}

uint64_t sub_1C1033F0C(double a1, double a2)
{
  v4 = v2;
  sub_1C0FFE25C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_4_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E0);
  OUTLINED_FUNCTION_10_12();
  v6 = *(*(v8 + 56) + 8 * v3);
  type metadata accessor for CGPoint(0);
  sub_1C1034198(&qword_1EBE91440, type metadata accessor for CGPoint);
  OUTLINED_FUNCTION_28_2();
  sub_1C1266B40();
  *v4 = v8;
  return v6;
}

uint64_t sub_1C1033FF0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1C11061D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_1C1034138()
{
  result = qword_1EDE7F668;
  if (!qword_1EDE7F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F668);
  }

  return result;
}

uint64_t sub_1C1034198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosObservableAsset.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableAsset.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableAsset.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C1034328(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  sub_1C10344AC(&v15[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v18 = v6;
  v19 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v13 + 104);
  swift_getKeyPath();
  v16 = v1;
  v17 = a1;
  sub_1C1035050();

  return v12(a1, v6);
}

uint64_t sub_1C10344AC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C1034540(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C10345DC())()
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C1034668(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_1C1034328(v2);
}

uint64_t sub_1C1034728@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1034FB4();

  return sub_1C10344AC(a1);
}

uint64_t sub_1C10347AC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v5 - v1;
  (*(v3 + 16))(v5 - v1);
  return sub_1C1034540(v2);
}

void (*sub_1C1034878(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C1034FB4();

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableAsset();
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC();
  return sub_1C10349E8;
}

void sub_1C10349E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C1034A3C();

  free(v1);
}

uint64_t sub_1C1034A3C()
{
  swift_getKeyPath();
  type metadata accessor for PhotosObservableAsset();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C1034B58()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_11(v6, v8);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C1034C28()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_11(v6, v9);
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 24))(v2);
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C1034D08()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 88) + 40))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5 & 1;
}

double sub_1C1034DE4()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 88) + 32))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5;
}

uint64_t sub_1C1034ED0()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_14(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v5 = (*(*(v4 + 96) + 16))(v1);
  v6 = OUTLINED_FUNCTION_8_2();
  v7(v6);
  return v5;
}

uint64_t sub_1C1034FB4()
{
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C1035050()
{
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableAsset.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableAsset.__deallocating_deinit()
{
  PhotosObservableAsset.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C10352DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void (*sub_1C103532C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1034878(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C1035388(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C103540C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_11@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1C1034728(v3);
}

__n128 PhotosBordersSpec.init(cornerRadius:shadow:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  a2->n128_f64[0] = a3;
  a2->n128_u64[1] = v3;
  result = *(a1 + 8);
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t PhotosBordersSpec.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
}

uint64_t sub_1C1035618()
{
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  qword_1EDE82B08 = 0;
  qword_1EDE82B10 = qword_1EDE82B80;
  xmmword_1EDE82B18 = *&qword_1EDE82B88;
  qword_1EDE82B28 = qword_1EDE82B98;
}

uint64_t static PhotosBordersSpec.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE82B10;
  v3 = qword_1EDE82B28;
  *a1 = qword_1EDE82B08;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1EDE82B18;
  *(a1 + 32) = v3;
}

uint64_t static PhotosBordersSpec.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v2 = a2[4];
  v4 = a2[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[2];

  v8 = sub_1C1265100();

  v9 = v8 & (v7 == v4);
  if (v6 != v3)
  {
    v9 = 0;
  }

  if (v5 == v2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t View.photosBorders(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v30 = sub_1C1263320();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12633D0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v31 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = *a1;
  v20 = a1[1];
  v29 = *(a1 + 1);
  v21 = a1[4];
  sub_1C12633B0();
  sub_1C1264C60();
  (*(v10 + 8))(v13, v8);
  v35 = v20;
  v36 = v29;
  v37 = v21;
  v22 = *(v30 + 20);
  v23 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  (*(v24 + 104))(&v7[v22], v23);
  *v7 = v19;
  *(v7 + 1) = v19;
  OUTLINED_FUNCTION_0_0();
  v26 = sub_1C0FDB6D4(v25, &unk_1EBE92EC0);
  v33 = a2;
  v34 = v26;

  WitnessTable = swift_getWitnessTable();
  sub_1C1035B4C();
  View.clipShadow<A>(_:shape:)(&v35, WitnessTable, v32);
  sub_1C100867C(v7);

  return (*(v31 + 8))(v18, v14);
}

uint64_t PhotosBordersSpec.clipShape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_1C1263320() + 20);
  v5 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  result = (*(v6 + 104))(&a1[v4], v5);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

unint64_t sub_1C1035B4C()
{
  result = qword_1EDE7BCE8;
  if (!qword_1EDE7BCE8)
  {
    sub_1C1263320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCE8);
  }

  return result;
}

uint64_t sub_1C1035BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for OneUpAnimatedInfoButton(0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v49 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91488);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91490);
  OUTLINED_FUNCTION_0();
  v53 = v18;
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91498);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v46 - v21;
  *v16 = sub_1C12659A0();
  v16[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914A0);
  sub_1C1036168(v1, v16 + *(v23 + 44));
  v24 = *v1;
  v25 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {

    sub_1C1266420();
    v46 = v10;
    v30 = sub_1C1264410();
    v47 = v16;
    v31 = a1;
    v32 = v30;
    sub_1C1262620();

    a1 = v31;
    v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v47;
    v33 = v48;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(v24, v25, 0);
    (*(v49 + 8))(v33, v46);
    v25 = *(&v56 + 1);
    if (v56)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = 0;
    v27 = xmmword_1C12A8E90;
    v28 = 0uLL;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  (*(v25 + 184))(&v56, ObjectType, v25);
  swift_unknownObjectRelease();
  v27 = v56;
  v28 = v57;
  v29 = v58;
LABEL_6:
  v56 = v27;
  v57 = v28;
  v58 = v29;
  sub_1C10388D4(v2, v9);
  v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v35 = swift_allocObject();
  sub_1C1038AF8(v9, v35 + v34, type metadata accessor for OneUpAnimatedInfoButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914B8);
  sub_1C0FDB6D4(&qword_1EBE914C0, &qword_1EBE91488);
  sub_1C10389B8();
  v36 = v52;
  sub_1C1265000();

  sub_1C1038A90(v56, *(&v56 + 1));
  v37 = sub_1C0FD1A5C(v16, &qword_1EBE91488);
  v38 = MEMORY[0x1C68EF360](v37, 0.5, 0.4, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470);
  sub_1C12628E0();
  sub_1C10372D8(&v56);

  v39 = v59;
  sub_1C0FF2048(v56, *(&v56 + 1));
  v40 = v55;
  (*(v53 + 32))(v55, v36, v54);
  v41 = (v40 + *(v51 + 36));
  *v41 = v38;
  v41[1] = v39;
  v42 = sub_1C1265A30();
  sub_1C12628E0();
  sub_1C10372D8(&v56);

  v43 = v60;
  sub_1C0FF2048(v56, *(&v56 + 1));
  sub_1C0FAE2D0(v40, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914C8);
  v45 = (a1 + *(result + 36));
  *v45 = v42;
  v45[1] = v43;
  return result;
}

uint64_t sub_1C1036168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914D0);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v89 - v3;
  v4 = sub_1C1263840();
  v97 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v95 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v89 - v7;
  v99 = sub_1C1265E50();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OneUpBarButton();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v89 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914D8);
  v16 = MEMORY[0x1EEE9AC00](v100);
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v89 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914E0);
  v19 = MEMORY[0x1EEE9AC00](v101);
  v90 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v92 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v89 - v25;
  v27 = *(type metadata accessor for OneUpAnimatedInfoButton(0) + 20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470);
  sub_1C12628E0();
  sub_1C10372D8(&v119);

  v105 = a1;
  v107 = v27;
  v106 = v28;
  if (v120 >= 4)
  {

    sub_1C12628E0();
    sub_1C10372D8(&v119);

    v33 = v119;
    v34 = v120;
    v114 = v119;
    v115 = v120;
    v116 = v121;
    v117 = v122;
    v118 = v123;
    v97 = sub_1C1036FF8();
    v96 = v35;
    sub_1C0FF2048(v33, v34);
    sub_1C12628E0();
    sub_1C10372D8(&v109);

    if (v110 >= 4)
    {
      sub_1C0FF2048(v109, v110);
      v36 = 0x3F1A36E2EB1C432DLL;
    }

    else
    {
      v36 = qword_1C12A9348[v110];
    }

    sub_1C1265DF0();
    v64 = static String.photosSwiftUICoreLocalized(_:)(v9);
    v95 = v65;
    (*(v98 + 8))(v9, v99);
    sub_1C1263A50();
    v108 = MEMORY[0x1E69E7CC0];
    sub_1C1038AB0(&qword_1EDE7BC70, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920);
    sub_1C1266870();
    *(v13 + 7) = 0;
    *(v13 + 40) = 0u;
    *(v13 + 24) = 0u;
    v66 = &v13[v10[16]];
    *v66 = swift_getKeyPath();
    v66[8] = 0;
    v67 = v10[17];
    *&v13[v67] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v68 = &v13[v10[18]];
    *v68 = swift_getKeyPath();
    v68[8] = 0;
    v69 = &v13[v10[19]];
    *v69 = swift_getKeyPath();
    v69[8] = 0;
    v70 = &v13[v10[20]];
    *v70 = swift_getKeyPath();
    v70[8] = 0;
    v71 = &v13[v10[21]];
    *v71 = swift_getKeyPath();
    *(v71 + 1) = 0;
    v71[16] = 0;
    v72 = &v13[v10[22]];
    *v72 = swift_getKeyPath();
    *(v72 + 4) = 0;
    v73 = &v13[v10[23]];
    *v73 = swift_getKeyPath();
    v73[8] = 0;
    *(v13 + 12) = v96;
    *(v13 + 13) = 0;
    *(v13 + 14) = v36;
    v13[16] = 49;
    *v13 = 0;
    *(v13 + 1) = 0;
    v74 = v97;
    *(v13 + 10) = 0;
    *(v13 + 11) = v74;
    *(v13 + 8) = 0;
    *(v13 + 9) = 0;
    v75 = v95;
    *(v13 + 15) = v64;
    *(v13 + 16) = v75;
    v76 = &v13[v10[13]];
    *v76 = 0;
    *(v76 + 1) = 0;
    v77 = &v13[v10[14]];
    *v77 = 0xD000000000000017;
    *(v77 + 1) = 0x80000001C12A90F0;
    v78 = &v13[v10[15]];
    *v78 = 0;
    v78[8] = 1;
    sub_1C12628E0();
    sub_1C10372D8(&v119);

    v79 = v119;
    v80 = v120;
    v109 = v119;
    v110 = v120;
    v111 = v121;
    v112 = v122;
    v113 = v123;
    v81 = sub_1C1036FF8();
    v83 = v82;
    sub_1C0FF2048(v79, v80);
    v84 = v93;
    sub_1C1038AF8(v13, v93, type metadata accessor for OneUpBarButton);
    v85 = (v84 + *(v100 + 52));
    *v85 = v81;
    v85[1] = v83;
    sub_1C1262CB0();
    sub_1C1262CC0();
    v86 = sub_1C1262CA0();

    v87 = v90;
    sub_1C1012024(v84, v90, &qword_1EBE914D8);
    *(v87 + *(v101 + 36)) = v86;
    v26 = v91;
    sub_1C1012024(v87, v91, &qword_1EBE914E0);
  }

  else
  {
    v93 = v4;
    sub_1C0FF2048(v119, v120);
    sub_1C12628E0();
    sub_1C10372D8(&v119);

    v29 = v119;
    v30 = v120;
    v114 = v119;
    v115 = v120;
    v116 = v121;
    v117 = v122;
    v118 = v123;
    v91 = sub_1C1036FF8();
    v90 = v31;
    sub_1C0FF2048(v29, v30);
    sub_1C12628E0();
    sub_1C10372D8(&v109);

    if (v110 >= 4)
    {
      sub_1C0FF2048(v109, v110);
      v32 = 0x3F1A36E2EB1C432DLL;
    }

    else
    {
      v32 = qword_1C12A9348[v110];
    }

    sub_1C1265DF0();
    v37 = static String.photosSwiftUICoreLocalized(_:)(v9);
    v89 = v38;
    (*(v98 + 8))(v9, v99);
    v99 = 0x80000001C12A90F0;
    sub_1C1263A50();
    v108 = MEMORY[0x1E69E7CC0];
    sub_1C1038AB0(&qword_1EDE7BC70, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920);
    sub_1C1266870();
    *(v15 + 7) = 0;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    v39 = &v15[v10[16]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = v10[17];
    *&v15[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v41 = &v15[v10[18]];
    *v41 = swift_getKeyPath();
    v41[8] = 0;
    v42 = &v15[v10[19]];
    *v42 = swift_getKeyPath();
    v42[8] = 0;
    v43 = &v15[v10[20]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = &v15[v10[21]];
    *v44 = swift_getKeyPath();
    *(v44 + 1) = 0;
    v44[16] = 0;
    v45 = &v15[v10[22]];
    *v45 = swift_getKeyPath();
    *(v45 + 4) = 0;
    v46 = &v15[v10[23]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    *(v15 + 12) = v90;
    *(v15 + 13) = 0;
    *(v15 + 14) = v32;
    v15[16] = 49;
    *v15 = 0;
    *(v15 + 1) = 0;
    v47 = v91;
    *(v15 + 10) = 0;
    *(v15 + 11) = v47;
    *(v15 + 8) = 0;
    *(v15 + 9) = 0;
    v48 = v89;
    *(v15 + 15) = v37;
    *(v15 + 16) = v48;
    v49 = &v15[v10[13]];
    *v49 = 0;
    *(v49 + 1) = 0;
    v50 = &v15[v10[14]];
    *v50 = 0xD000000000000017;
    *(v50 + 1) = v99;
    v51 = &v15[v10[15]];
    *v51 = 0;
    v51[8] = 1;
    sub_1C12628E0();
    sub_1C10372D8(&v119);

    v52 = v119;
    v53 = v120;
    v109 = v119;
    v110 = v120;
    v111 = v121;
    v112 = v122;
    v113 = v123;
    v54 = sub_1C1036FF8();
    v56 = v55;
    sub_1C0FF2048(v52, v53);
    v57 = v94;
    sub_1C1038AF8(v15, v94, type metadata accessor for OneUpBarButton);
    v58 = (v57 + *(v100 + 52));
    *v58 = v54;
    v58[1] = v56;
    v59 = v96;
    sub_1C1263830();
    v60 = v97;
    v61 = v93;
    (*(v97 + 16))(v95, v59, v93);
    sub_1C1038AB0(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
    v62 = sub_1C1262CE0();
    (*(v60 + 8))(v59, v61);
    v63 = v92;
    sub_1C1012024(v57, v92, &qword_1EBE914D8);
    *(v63 + *(v101 + 36)) = v62;
    sub_1C1012024(v63, v26, &qword_1EBE914E0);
  }

  sub_1C1038B58(v26, v102);
  swift_storeEnumTagMultiPayload();
  sub_1C1038BC8();
  sub_1C1263C20();
  return sub_1C0FD1A5C(v26, &qword_1EBE914E0);
}

unint64_t sub_1C1036FF8()
{
  v1 = 0x7269632E6F666E69;
  switch(*(v0 + 8))
  {
    case 0:
      return v1;
    case 1:
      v1 = 0xD000000000000010;
      break;
    case 2:
      v1 = 0xD00000000000001ALL;
      break;
    case 3:
      v1 = 0xD00000000000001FLL;
      break;
    default:
      if (MEMORY[0xEB00000000656C83])
      {
        v1 = MEMORY[0xEB00000000656C73];
      }

      else
      {
        v1 = MEMORY[0xEB00000000656C63];
      }

      break;
  }

  return v1;
}

uint64_t sub_1C10370EC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  type metadata accessor for OneUpAnimatedInfoButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91470);
  sub_1C12628E0();
  if (v3 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  if (v3 == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  if (v3 == 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  if (v3 == 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  v13[0] = v7;
  v13[1] = v8;
  if (v3 == 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  sub_1C1038AA0(v2, v3);
  sub_1C1037954(v13);
}

BOOL sub_1C10371B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15 = *(a2 + 48);
  v16 = *(a2 + 40);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  v21[0] = v2;
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  v22 = v10;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  v20 = v11;
  sub_1C0FF2090(v2, v3);
  sub_1C0FF2090(v6, v7);
  v14 = static OneUpVisualAnalysisState.== infix(_:_:)(v21, v19);
  sub_1C0FF2048(v6, v7);
  sub_1C0FF2048(v2, v3);
  v12 = v17 == v15;
  if (v18 != v16)
  {
    v12 = 0;
  }

  return (v14 & 1) != 0 && v12;
}

uint64_t sub_1C10372D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
  sub_1C1261F30();

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 40) = *(v1 + 56);
  return sub_1C0FF2090(v3, v4);
}

double sub_1C103739C@<D0>(uint64_t a1@<X8>)
{
  sub_1C10372D8(v5);
  v2 = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  result = v7[0];
  *(a1 + 40) = *v7;
  return result;
}

uint64_t sub_1C10373E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 40);
  sub_1C0FF2090(v6, v1);
  return sub_1C1037444(&v6);
}

uint64_t sub_1C1037444(__int128 *a1)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v13 = a1[2];
  v14 = *(a1 + 6);
  v3 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v15[1] = v3;
  v15[2] = *(v1 + 48);
  v16 = *(v1 + 64);
  sub_1C10386AC(v15, v10);
  v4 = sub_1C1038034(v15, &v11);
  sub_1C10386E4(v15);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
    sub_1C10386E4(&v11);
  }

  else
  {
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    v9 = v12;
    *(v1 + 16) = v11;
    *(v1 + 32) = v9;
    *(v1 + 48) = v13;
    *(v1 + 64) = v14;
    return sub_1C0FF2048(v7, v8);
  }
}

uint64_t sub_1C1037560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 48);
  sub_1C10386AC(a2, v6);
  return sub_1C0FF2048(v2, v3);
}

uint64_t sub_1C10375E8()
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
  sub_1C1261F30();

  return *(v0 + 72);
}

uint64_t sub_1C1037688(uint64_t result)
{
  if (*(v1 + 72) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
  }

  return result;
}

uint64_t sub_1C103772C()
{
  swift_getKeyPath();
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
  sub_1C1261F30();

  return *(v0 + 80);
}

uint64_t sub_1C10377CC(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1037F80();
  }

  return result;
}

uint64_t sub_1C1037870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v14 = v7;
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = v2;
  sub_1C0FF2090(v3, v4);
  v9 = static OneUpVisualAnalysisState.== infix(_:_:)(v13, v11);
  result = sub_1C0FF2048(v3, v4);
  if ((v9 & 1) == 0)
  {
    if (*(v1 + 96) >= 4uLL)
    {
      sub_1C1037DDC();
    }

    return sub_1C1037A10();
  }

  return result;
}

uint64_t sub_1C1037954(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  v8 = *(v1 + 120);
  *(v1 + 120) = v2;
  sub_1C0FF2090(v3, v4);
  sub_1C0FF2048(v3, v4);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v11 = v8;
  sub_1C1037870(v10);

  return sub_1C0FF2048(v3, v4);
}

uint64_t sub_1C1037A10()
{
  if (*(v0 + 136) != 1)
  {
    v5 = *(v0 + 88);
    v1 = *(v0 + 96);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    goto LABEL_5;
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  if (v1 < 4)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
LABEL_5:
    sub_1C0FF2090(v5, v1);
    goto LABEL_10;
  }

  v5 = 0;
  v4 = 0;
  v3 = 0;
  if (*(v0 + 120))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 0;
LABEL_10:
  v16 = v3;
  v27[0] = v5;
  v27[1] = v1;
  v27[2] = v4;
  v27[3] = v3;
  v28 = v2;
  sub_1C10372D8(&v21);
  v6 = v21;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v7 = static OneUpVisualAnalysisState.== infix(_:_:)(v27, &v17);
  sub_1C0FF2048(v6, *(&v6 + 1));
  if ((v7 & 1) == 0)
  {
    *&v21 = v5;
    *(&v21 + 1) = v1;
    v22 = v4;
    v23 = v3;
    v24 = v2;
    if (sub_1C1037D60(&v21))
    {
      swift_getKeyPath();
      *&v21 = v0;
      sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
      sub_1C1261F30();

      *&v21 = v0;
      swift_getKeyPath();
      sub_1C1261F50();

      v9 = *(v0 + 80);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        *(v0 + 80) = v11;
        *&v21 = v0;
LABEL_19:
        swift_getKeyPath();
        sub_1C1261F40();

        v14 = sub_1C103772C();
        v15 = sub_1C10375E8();
        *&v21 = v5;
        *(&v21 + 1) = v1;
        v22 = v4;
        v23 = v16;
        v24 = v2;
        v25 = v14;
        v26 = v15;
        return sub_1C1037444(&v21);
      }

      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      *&v21 = v0;
      sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
      sub_1C1261F30();

      *&v21 = v0;
      swift_getKeyPath();
      sub_1C1261F50();

      v12 = *(v0 + 72);
      v10 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (!v10)
      {
        *(v0 + 72) = v13;
        *&v21 = v0;
        goto LABEL_19;
      }
    }

    __break(1u);
    return result;
  }

  return sub_1C0FF2048(v5, v1);
}

BOOL sub_1C1037D60(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1C10372D8(&v3);
  if (v4 >= 4)
  {

    return 0;
  }

  else
  {
    sub_1C0FF2048(v3, v4);
    return v1 > 3;
  }
}

void sub_1C1037DDC()
{
  sub_1C1037F70(0);
  [*(v0 + 128) invalidate];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1C1038684;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C10CB7AC;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:3.0];
  _Block_release(v3);
  v5 = *(v0 + 128);
  *(v0 + 128) = v4;
}

uint64_t sub_1C1037EFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1037F70(1);
  }

  return result;
}

uint64_t sub_1C1037F58(uint64_t result)
{
  if (*(v1 + 136) != (result & 1))
  {
    return sub_1C1037A10();
  }

  return result;
}

uint64_t sub_1C1037F70(char a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  return sub_1C1037F58(v2);
}

uint64_t sub_1C1037F80()
{
  sub_1C1038AB0(&qword_1EBE91468, type metadata accessor for Model);
  OUTLINED_FUNCTION_5_15();
  return sub_1C1261F20();
}

BOOL sub_1C1038034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return !sub_1C10371B4(v7, v5);
}

uint64_t sub_1C1038094()
{
  sub_1C0FF2048(*(v0 + 16), *(v0 + 24));
  sub_1C0FF2048(*(v0 + 88), *(v0 + 96));

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_58FD93809CBDE7A582015EB869B845695Model___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C103811C()
{
  v0 = sub_1C1038094();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1038170()
{
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  sub_1C1261F60();
  return v0;
}

unint64_t static OneUpVisualAnalysisState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  switch(v2)
  {
    case 0:
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 1:
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_1_13();
      sub_1C0FF2048(v14, v15);
      OUTLINED_FUNCTION_5_15();
      sub_1C0FF2048(v16, v17);
      return v6 & 1;
    case 2:
      if (v6 == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_11;
      }

LABEL_7:
      OUTLINED_FUNCTION_1_13();
      sub_1C0FF2048(v10, v11);
      OUTLINED_FUNCTION_5_15();
      sub_1C0FF2048(v12, v13);
      LOBYTE(v6) = 1;
      return v6 & 1;
    default:
      if (v6 < 4 || (*a1 == *a2 ? (v27 = v2 == v6) : (v27 = 0), !v27 && (sub_1C1266D50() & 1) == 0))
      {
LABEL_11:
        v18 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2090(v18, v19);
        v20 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v20, v21);
        v22 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v22, v23);
        v24 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2048(v24, v25);
        LOBYTE(v6) = 0;
        return v6 & 1;
      }

      if (v4 == v8 && v3 == v7)
      {
        v37 = OUTLINED_FUNCTION_6_12();
        sub_1C0FF2090(v37, v38);
        v39 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v39, v40);
        v41 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v41, v42);
        v43 = OUTLINED_FUNCTION_6_12();
        sub_1C0FF2048(v43, v44);
      }

      else
      {
        OUTLINED_FUNCTION_5_15();
        v45 = sub_1C1266D50();
        v29 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2090(v29, v30);
        v31 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2090(v31, v32);
        v33 = OUTLINED_FUNCTION_0_16();
        sub_1C0FF2048(v33, v34);
        v35 = OUTLINED_FUNCTION_2_17();
        sub_1C0FF2048(v35, v36);
        LOBYTE(v6) = 0;
        if ((v45 & 1) == 0)
        {
          return v6 & 1;
        }
      }

      LOBYTE(v6) = v9 ^ v5 ^ 1;
      return v6 & 1;
  }
}

uint64_t sub_1C10383F4()
{
  result = sub_1C1261F70();
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

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore24OneUpVisualAnalysisStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C10384D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 33))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1038528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C103858C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C10385C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFB && *(a1 + 56))
    {
      v2 = *a1 + 2147483643;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 4;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1038618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483644;
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void sub_1C1038778()
{
  sub_1C10387FC();
  if (v0 <= 0x3F)
  {
    sub_1C1038860();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C10387FC()
{
  if (!qword_1EDE77668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91478);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77668);
    }
  }
}

void sub_1C1038860()
{
  if (!qword_1EBE91480)
  {
    type metadata accessor for Model(255);
    v0 = sub_1C1262900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE91480);
    }
  }
}

uint64_t sub_1C10388D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1038938(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OneUpAnimatedInfoButton(0);

  return sub_1C10370EC(a1, a2);
}

unint64_t sub_1C10389B8()
{
  result = qword_1EDE77968;
  if (!qword_1EDE77968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914B8);
    sub_1C1038A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77968);
  }

  return result;
}

unint64_t sub_1C1038A3C()
{
  result = qword_1EDE77970;
  if (!qword_1EDE77970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77970);
  }

  return result;
}

uint64_t sub_1C1038A90(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C0FF2048(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1038AA0(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C0FF2090(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1038AB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1038AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C1038B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE914E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1038BC8()
{
  result = qword_1EBE914E8;
  if (!qword_1EBE914E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914E0);
    sub_1C0FDB6D4(&qword_1EBE914F0, &qword_1EBE914D8);
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE914E8);
  }

  return result;
}

unint64_t sub_1C1038CAC()
{
  result = qword_1EBE91500;
  if (!qword_1EBE91500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914C8);
    sub_1C1038D64();
    sub_1C0FDB6D4(&qword_1EBE91510, &qword_1EBE91518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91500);
  }

  return result;
}

unint64_t sub_1C1038D64()
{
  result = qword_1EBE91508;
  if (!qword_1EBE91508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914B8);
    sub_1C0FDB6D4(&qword_1EBE914C0, &qword_1EBE91488);
    sub_1C10389B8();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EBE91510, &qword_1EBE91518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91508);
  }

  return result;
}

uint64_t OptionSet<>.count.getter()
{
  sub_1C1266040();
  v0 = v4;
  if (!v4)
  {
    return 0;
  }

  result = 0;
  while (1)
  {
    v2 = __OFADD__(result, v0 & 1);
    result += v0 & 1;
    if (v2)
    {
      break;
    }

    v3 = v0 > 1;
    v0 >>= 1;
    if (!v3)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1038F14(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1C12662E0();
  if (!v19)
  {
    return sub_1C1266130();
  }

  v41 = v19;
  v45 = sub_1C1266AA0();
  v32 = sub_1C1266AB0();
  sub_1C1266A40();
  result = sub_1C12662D0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1C12663A0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1C1266A90();
      result = sub_1C1266320();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1039330@<X0>(uint64_t a1@<X1>, char a2@<W2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15_1();
  (*(v12 + 32))(a8);
  v13 = type metadata accessor for PhotosDraggableForEach();
  *(a8 + v13[19]) = a1;
  *(a8 + v13[20]) = a2 & 1;
  sub_1C0F9DDE4(a3, a8 + v13[21]);
  *(a8 + v13[22]) = a4;
  v14 = (a8 + v13[23]);
  *v14 = a5;
  v14[1] = a6;
  v15 = (a8 + v13[24]);
  *v15 = a7;
  v15[1] = a9;
  v16 = (a8 + v13[25]);
  *v16 = sub_1C1039524(0, a10);
  v16[1] = v17;
  v18 = (a8 + v13[26]);
  *v18 = sub_1C103967C();
  v18[1] = v19;
  v20 = a8 + v13[27];
  *v20 = sub_1C1012790() & 1;
  *(v20 + 8) = v21;
  v22 = a8 + v13[28];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a8 + v13[29];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  return result;
}

uint64_t sub_1C1039524(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosDraggableForEach.DraggingModel();
  sub_1C1266790();
  sub_1C1265410();
  return a2;
}

uint64_t sub_1C1039580(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PhotosDraggableForEach.DraggingModel();
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265420();
  return v2;
}

uint64_t sub_1C10395FC()
{
  type metadata accessor for PhotosDraggableForEach.DraggingModel();
  sub_1C1266790();
  sub_1C1265450();
  return sub_1C1265430();
}

uint64_t sub_1C103967C()
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265410();
  return v1;
}

uint64_t sub_1C10396CC()
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265450();
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1039734()
{
  sub_1C1266290();
  sub_1C1266790();
  sub_1C1265450();
  return sub_1C1265430();
}

uint64_t sub_1C10397A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1039868(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 112));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C10399B4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 64))(a1, v5, v6);
}

uint64_t sub_1C1039A14()
{
  sub_1C1266790();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91590);
  sub_1C1039B70(sub_1C1040090, MEMORY[0x1E69E73E0], v0, v1, &v3);
  if (v3 == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1039ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (a2 + *(type metadata accessor for PhotosDraggableForEach() + 84));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  result = (*(v7 + 56))(a1, v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_1C1039B70@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v20, 1, v26);
}

uint64_t sub_1C1039DE4()
{
  sub_1C12661A0();
  swift_getWitnessTable();
  return sub_1C1265F70() & 1;
}

uint64_t sub_1C1039E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + *(type metadata accessor for PhotosDraggableForEach() + 84));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return (*(v7 + 48))(a1, a3, v6, v7) & 1;
}

void PhotosDraggableForEach.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v42 = v3;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v8 = &v33 - ((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(MEMORY[0x1EEE9AC00](v7) + 24);
  v9 = sub_1C12661A0();
  v10 = *(v2 + 32);
  v43 = *(v2 + 56);
  v44 = v10;
  v50 = v10;
  v51 = v43;
  v35 = type metadata accessor for PhotosDraggableItemView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538);
  v37 = OUTLINED_FUNCTION_27_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v11 = OUTLINED_FUNCTION_27_3();
  v38 = v11;
  OUTLINED_FUNCTION_8_13();
  v41 = v9;
  WitnessTable = swift_getWitnessTable();
  *&v50 = v9;
  *(&v50 + 1) = v44;
  *&v51 = v11;
  *(&v51 + 1) = WitnessTable;
  v39 = WitnessTable;
  v40 = v43;
  v52 = v43;
  v13 = sub_1C12656A0();
  OUTLINED_FUNCTION_0();
  v34 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  *&v50 = sub_1C103A30C(v2);
  (*(v5 + 16))(v8, v0, v2);
  v19 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = *(v2 + 16);
  *(v20 + 24) = v21;
  v22 = v43;
  *(v20 + 32) = v44;
  *(v20 + 48) = *(v2 + 48);
  *(v20 + 56) = v22;
  (*(v5 + 32))(v20 + v19, v8, v2);

  OUTLINED_FUNCTION_7_13();
  v23 = swift_getWitnessTable();
  v24 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
  v48 = v23;
  v49 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
  v46 = v25;
  v47 = v26;
  v32 = swift_getWitnessTable();
  sub_1C1265680();
  v45 = v32;
  OUTLINED_FUNCTION_2_13();
  v27 = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v13, v27);
  v28 = *(v34 + 8);
  v28(v18, v13);
  v29 = OUTLINED_FUNCTION_34_0();
  sub_1C0FDBA4C(v29, v30, v27);
  v31 = OUTLINED_FUNCTION_34_0();
  (v28)(v31);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103A30C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C1039580(v4))
  {
    v7 = sub_1C103C7DC();

    return v7;
  }

  else
  {
    (*(v3 + 16))(v6, v1, v2);
    return sub_1C12661C0();
  }
}

uint64_t sub_1C103A414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v81 = a9;
  v82 = a1;
  v88 = a5;
  v89 = a6;
  v90 = a8;
  v91 = a10;
  v17 = type metadata accessor for PhotosDraggableItemView();
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v63[-v18];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538);
  v73 = v17;
  v19 = sub_1C1263190();
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v63[-v20];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v78 = v19;
  v21 = sub_1C1263190();
  v79 = *(v21 - 8);
  v80 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v77 = &v63[-v25];
  v83 = *(a5 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v65 = &v63[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v63[-v28];
  v66 = a3;
  v88 = a3;
  v89 = a4;
  v67 = a4;
  v30 = a8;
  v90 = a5;
  v91 = a6;
  v70 = a6;
  v69 = a7;
  WitnessTable = a7;
  v93 = a8;
  v68 = a10;
  v94 = a10;
  v31 = type metadata accessor for PhotosDraggableForEach();
  swift_getAtKeyPath();
  v32 = (a2 + v31[21]);
  v33 = v32[3];
  v34 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v64 = PhotosDraggingDelegate.canDragItem(_:)(v29, v33, v34);
  v36 = v32[3];
  v35 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v36);
  v37 = (*(v35 + 32))(v29, v36, v35);
  v38 = sub_1C1039580(v31);
  v39 = v38;
  if (v38)
  {
    v40 = *(v38 + 24);

    v88 = v40;
    sub_1C12661A0();
    swift_getWitnessTable();
    v39 = sub_1C1266020();
  }

  v41 = v65;
  (*(v83 + 16))(v65, v29, a5);
  v91 = v31;
  WitnessTable = swift_getWitnessTable();
  v42 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v43 = (*(*(v31 - 1) + 16))(v42, a2, v31);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v67;
  *&v63[-80] = v66;
  *&v63[-72] = v44;
  v45 = v70;
  *&v63[-64] = a5;
  *&v63[-56] = v45;
  *&v63[-48] = v69;
  *&v63[-40] = v30;
  v46 = v82;
  v62 = v30;
  v47 = v71;
  sub_1C11A8184(v41, v64 & 1, v37 & 1, v39 & 1, &v88, sub_1C10400F0, a5, v71, v45, v62, v68);
  v48 = (a2 + v31[23]);
  v49 = v74;
  if (*v48)
  {
    (*v48)(v46);
  }

  v50 = v73;
  v51 = swift_getWitnessTable();
  sub_1C1264F20();
  (*(v72 + 8))(v47, v50);
  if (!*(a2 + v31[22]))
  {
    sub_1C1262CC0();
  }

  v52 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
  v86 = v51;
  v87 = v52;

  v53 = v78;
  v54 = swift_getWitnessTable();
  v55 = v75;
  sub_1C12649D0();

  (*(v76 + 8))(v49, v53);
  (*(v83 + 8))(v29, a5);
  v56 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
  v84 = v54;
  v85 = v56;
  v57 = v80;
  v58 = swift_getWitnessTable();
  v59 = v77;
  sub_1C0FDBA4C(v55, v57, v58);
  v60 = *(v79 + 8);
  v60(v55, v57);
  sub_1C0FDBA4C(v59, v57, v58);
  return (v60)(v59, v57);
}

uint64_t sub_1C103ABC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_15(v12);
  return sub_1C103A414(a1, v2 + ((*(v13 + 80) + 72) & ~*(v13 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

uint64_t sub_1C103AD04(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 24))(a1, v5, v6);
}

void sub_1C103AD74()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  v27 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v26 = v10 - v9;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v11 = sub_1C1262720();
  v12 = OUTLINED_FUNCTION_28_3(v11, qword_1EBE91520);
  v13 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v13))
  {
    v14 = OUTLINED_FUNCTION_20_10();
    *v14 = 0;
    _os_log_impl(&dword_1C0F96000, v12, v13, "dragSessionStarted", v14, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  v28 = &v25;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v15);
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  *(&v25 - 8) = v6;
  *(&v25 - 7) = v16;
  v30 = v5;
  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  *(&v25 - 6) = v17;
  *(&v25 - 5) = v19;
  v25 = v6;
  v21 = *(v3 + 56);
  v20 = *(v3 + 64);
  *(&v25 - 4) = v18;
  *(&v25 - 3) = v21;
  *(&v25 - 2) = v20;
  *(&v25 - 1) = v1;
  sub_1C1266290();
  v29 = v1;
  swift_getWitnessTable();
  if (sub_1C1265F70())
  {
    v22 = v25;
    v31 = v25;
    v32 = v16;
    v33 = v17;
    v34 = v19;
    v35 = v18;
    v36 = v21;
    v37 = v20;
    type metadata accessor for PhotosDraggableForEach.DraggingModel();
    v23 = *(v29 + *(v3 + 76));
    (*(v27 + 16))(v26, v29, v22);

    v24 = sub_1C12661C0();

    sub_1C103B0B8(v23, v24);
    sub_1C10395FC();
  }

  else
  {

    sub_1C1039734();
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103B018(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for PhotosDraggableForEach() + 84));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 32))(a1, v4, v5) & 1;
}

uint64_t sub_1C103B0B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C103D2C4(a1, a2);
  return v4;
}

uint64_t sub_1C103B110(uint64_t a1, char a2)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v3 = sub_1C1262720();
  v4 = OUTLINED_FUNCTION_28_3(v3, qword_1EBE91520);
  v5 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v5))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v6, v7, "dragSessionEnded");
    OUTLINED_FUNCTION_4_8();
  }

  result = sub_1C1039734();
  if ((a2 & 1) == 0)
  {

    return sub_1C10395FC();
  }

  return result;
}

uint64_t sub_1C103B1FC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 84));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 88))(a1, v5, v6);
}

uint64_t sub_1C103B25C(uint64_t a1, uint64_t a2)
{
  sub_1C103EBB8();
  v5 = sub_1C1261FF0();
  v6 = (v2 + *(a2 + 84));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 96))(a1, v7, v8);
  sub_1C1163858(v9);
  return v5;
}

uint64_t sub_1C103B300(uint64_t a1, uint64_t a2)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v3 = sub_1C1262720();
  v4 = OUTLINED_FUNCTION_28_3(v3, qword_1EBE91520);
  v5 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v5))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v6, v7, "validateMerge");
    OUTLINED_FUNCTION_4_8();
  }

  result = sub_1C1039580(a2);
  if (result)
  {

    v9 = sub_1C1039DE4();

    return v9 & 1;
  }

  return result;
}

uint64_t sub_1C103B3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v8 = sub_1C1262720();
  v9 = OUTLINED_FUNCTION_28_3(v8, qword_1EBE91520);
  v10 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v10))
  {
    v11 = OUTLINED_FUNCTION_20_10();
    *v11 = 0;
    _os_log_impl(&dword_1C0F96000, v9, v10, "validateDrop", v11, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  if (sub_1C1039580(a3))
  {
    if (sub_1C103D6CC())
    {

      return 1;
    }

    else
    {
      v13 = sub_1C103D0DC();

      return v13 & 1;
    }
  }

  else if (sub_1C10396CC())
  {

    return 0;
  }

  else
  {
    v14 = (v4 + *(a3 + 84));
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    return (*(v16 + 112))(a1, a2, v15, v16) & 1;
  }
}

uint64_t sub_1C103B560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v4 = sub_1C1262720();
  v5 = OUTLINED_FUNCTION_28_3(v4, qword_1EBE91520);
  v6 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v6))
  {
    *OUTLINED_FUNCTION_20_10() = 0;
    OUTLINED_FUNCTION_16_10(&dword_1C0F96000, v7, v8, "validateDropAppearance");
    OUTLINED_FUNCTION_4_8();
  }

  if (!sub_1C1039580(a3))
  {
    return 1;
  }

  v9 = sub_1C103D6CC();

  return v9;
}

void sub_1C103B640()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v70 = v6;
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_1();
  v74 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  v68 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v72 = v18;
  v73 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v67 - v20;
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v21 = sub_1C1262720();
  v22 = OUTLINED_FUNCTION_28_3(v21, qword_1EBE91520);
  v23 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v23))
  {
    v24 = OUTLINED_FUNCTION_20_10();
    *v24 = 0;
    _os_log_impl(&dword_1C0F96000, v22, v23, "performDrop", v24, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  v25 = sub_1C1039580(v3);
  if (!v25)
  {
    v49 = (v1 + *(v3 + 84));
    v50 = v49[4];
    v73 = v49[3];
    v71 = v50;
    v72 = __swift_project_boxed_opaque_existential_1(v49, v73);
    v51 = v68;
    v52 = OUTLINED_FUNCTION_34_0();
    v53(v52);
    v54 = v74;
    v55 = v69;
    (*(v74 + 16))(v69, v5, v7);
    v56 = (*(v51 + 80) + 72) & ~*(v51 + 80);
    v57 = (v14 + v56 + *(v54 + 80)) & ~*(v54 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = *(v3 + 16);
    *(v58 + 32) = v7;
    *(v58 + 40) = *(v3 + 40);
    *(v58 + 56) = *(v3 + 56);
    (*(v51 + 32))(v58 + v56, v16, v3);
    (*(v54 + 32))(v58 + v57, v55, v7);
    (*(v71 + 104))(v70, sub_1C103FE90, v58, v73);

    goto LABEL_20;
  }

  v26 = v25;
  v70 = sub_1C103FFAC();
  v75 = *(v26 + 24);
  MEMORY[0x1EEE9AC00](v70);
  v27 = *(v3 + 24);
  *(&v67 - 8) = *(v3 + 16);
  *(&v67 - 7) = v27;
  v29 = *(v3 + 40);
  v28 = *(v3 + 48);
  *(&v67 - 6) = v7;
  *(&v67 - 5) = v29;
  v30 = *(v3 + 56);
  v31 = *(v3 + 64);
  *(&v67 - 4) = v28;
  *(&v67 - 3) = v30;
  *(&v67 - 2) = v31;
  *(&v67 - 1) = v1;
  v32 = MEMORY[0x1EEE9AC00](v28);
  *(&v67 - 10) = v33;
  *(&v67 - 9) = v34;
  *(&v67 - 8) = v7;
  *(&v67 - 7) = v35;
  *(&v67 - 6) = v32;
  *(&v67 - 5) = v36;
  *(&v67 - 4) = v37;
  *(&v67 - 3) = sub_1C103FFF0;
  *(&v67 - 2) = v38;
  sub_1C12661A0();

  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  sub_1C1265F80();

  v39 = sub_1C103BEF4();
  if (!sub_1C103D6CC())
  {
    v59 = sub_1C10399B4(v5, v3);
    if (v59)
    {
      v60 = v59;
      v61 = v71;
      sub_1C103CB98(v71);
      v62 = sub_1C1039A14();
      (v72[1])(v61, v73);
      sub_1C1039868(v3);
      OUTLINED_FUNCTION_26_4();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v63 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v65 = *(v63 + 32);
        swift_unknownObjectRetain();
        v66 = v39;
        v65(v60, v66, v62, ObjectType, v63);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v40 = v71;
  (*(v74 + 16))(v71, v5, v7);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v7);
  v44 = sub_1C1039A14();
  (v72[1])(v40, v73);
  if (!v44)
  {
LABEL_15:

    goto LABEL_20;
  }

  v45 = sub_1C1039DE4();

  if (v45)
  {
    sub_1C1039868(v3);
    OUTLINED_FUNCTION_26_4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v3 + 24);
      swift_getObjectType();
      v47 = *(v46 + 24);
      v48 = v39;
      v47();

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRelease();

LABEL_20:
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a2;
  v15 = sub_1C1266790();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(*(a5 - 8) + 16))(&v21 - v17, a1, a5);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, a5);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = v22;
  v30 = a9;
  type metadata accessor for PhotosDraggableForEach();
  v19 = sub_1C1039A14();
  (*(v16 + 8))(v18, v15);
  return v19;
}

double sub_1C103BE84@<D0>(uint64_t (*a1)(void)@<X1>, _OWORD *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    *&v6 = v4;
    sub_1C0FD09FC(&v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_1C103BEF4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C12660A0();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1C103BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a7;
  v23 = a8;
  v21 = a1;
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(*(a6 - 8) + 16))(&v21 - v16, a3, a6);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a6);
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = v22;
  v28 = v23;
  v29 = a9;
  v30 = a10;
  v18 = type metadata accessor for PhotosDraggableForEach();
  v19 = sub_1C1039A14();
  result = (*(v15 + 8))(v17, v14);
  if (v19)
  {
    sub_1C1039868(v18);
    swift_getObjectType();
    sub_1C11FF798();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C103C11C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat width@<D0>, CGFloat height@<D1>)
{
  v9 = v7;
  v56 = a1;
  v58 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v57 = sub_1C1262D10();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  sub_1C1264250();
  OUTLINED_FUNCTION_0();
  v54 = v19;
  v55 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v53 = v21 - v20;
  OUTLINED_FUNCTION_1();
  v52 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C1039580(a4);
  if (v26)
  {
    v27 = v26;
    v51 = a2;
    if (sub_1C103D6CC())
    {
      x = 0.0;
      if ((a3 & 1) == 0 || (sub_1C103D760(), (v29 & 0x100000000) != 0))
      {
        y = 0.0;
      }

      else
      {
        v30 = v29;
        v31 = sub_1C1264450();
        if (v31 == sub_1C1264450())
        {
          v32 = width;
        }

        else
        {
          v32 = height;
        }

        memset(&slice, 0, sizeof(slice));
        v33 = v32 * 0.3;
        memset(&remainder, 0, sizeof(remainder));
        v64.origin.x = 0.0;
        v64.origin.y = 0.0;
        v64.size.width = width;
        v64.size.height = height;
        CGRectDivide(v64, &slice, &remainder, v33, v30);
        x = slice.origin.x;
        y = slice.origin.y;
        width = slice.size.width;
        height = slice.size.height;
      }

      if ((sub_1C10397A4() & 1) == 0)
      {
        sub_1C12657B0();
        v63.x = v37;
        v63.y = v38;
        v65.origin.x = x;
        v65.origin.y = y;
        v65.size.width = width;
        v65.size.height = height;
        if (CGRectContainsPoint(v65, v63))
        {
          v39 = sub_1C1039804();
          v40 = MEMORY[0x1C68EF360](v39, 0.5, 0.7, 0.0);
          v56 = &v51;
          MEMORY[0x1EEE9AC00](v40);
          v41 = v51;
          *(&v51 - 2) = v27;
          *(&v51 - 1) = v41;
          v42 = v52;
          (*(v52 + 16))(&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a4);
          v43 = (*(v42 + 80) + 72) & ~*(v42 + 80);
          v44 = swift_allocObject();
          v45 = *(a4 + 32);
          *(v44 + 16) = *(a4 + 16);
          *(v44 + 32) = v45;
          *(v44 + 48) = *(a4 + 48);
          *(v44 + 64) = *(a4 + 64);
          (*(v42 + 32))(v44 + v43, &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
          v46 = v53;
          sub_1C1264240();
          sub_1C1262E90();

          (*(v54 + 8))(v46, v55);
        }
      }
    }

    (*(v16 + 104))(v8, *MEMORY[0x1E697BF98], v57);
    sub_1C1262BA0();

    sub_1C1262BB0();
    OUTLINED_FUNCTION_29_2();
    return __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  else
  {
    v35 = sub_1C1262BB0();

    return __swift_storeEnumTagSinglePayload(v58, 1, 1, v35);
  }
}

void sub_1C103C644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = sub_1C1262720();
  oslog = OUTLINED_FUNCTION_28_3(v5, qword_1EBE91520);
  v6 = sub_1C1266430();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_20_10();
    *v7 = 0;
    _os_log_impl(&dword_1C0F96000, oslog, v6, a4, v7, 2u);
    OUTLINED_FUNCTION_4_8();
  }
}

uint64_t sub_1C103C70C()
{
  if (qword_1EBE8FC40 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v0 = sub_1C1262720();
  v1 = OUTLINED_FUNCTION_28_3(v0, qword_1EBE91520);
  v2 = sub_1C1266430();
  if (OUTLINED_FUNCTION_25_2(v2))
  {
    v3 = OUTLINED_FUNCTION_20_10();
    *v3 = 0;
    _os_log_impl(&dword_1C0F96000, v1, v2, "dropAnimationCompleted", v3, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  return sub_1C10395FC();
}

uint64_t sub_1C103C7DC()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C103E558();

  swift_beginAccess();
}

uint64_t sub_1C103C8B0()
{
  OUTLINED_FUNCTION_20();
  sub_1C12661A0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  sub_1C103E5F4();
}

uint64_t sub_1C103C9BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_1C103CA24()
{
  swift_getKeyPath();
  type metadata accessor for PhotosDraggableForEach.DraggingModel();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C103CB98@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C103E558();

  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 168);
  swift_beginAccess();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a1, v1 + v4);
}

void sub_1C103CC90(uint64_t a1)
{
  v2 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v5 - v3, a1);
  sub_1C103CD60();
}

void sub_1C103CD60()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_22_6();
  v26 = v4;
  v25 = *(v3 + 96);
  v5 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  OUTLINED_FUNCTION_22_6();
  v12 = *(v11 + 168);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v13(v10, &v0[v12], v5);
  OUTLINED_FUNCTION_22_6();
  v15 = *(v14 + 120);
  v29 = *(v15 + 8);
  swift_getWitnessTable();
  v28 = v2;
  LOBYTE(v3) = sub_1C0FA8038();
  v16 = OUTLINED_FUNCTION_34_0();
  v27 = v17;
  v18 = (v17)(v16);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_15_13();
    v20 = v25;
    v19 = v26;
    *(v21 - 64) = *(v26 + 80);
    *(v21 - 48) = v20;
    *(v21 - 40) = *(v19 + 104);
    v22 = *(v19 + 128);
    *(v21 - 24) = v15;
    *(v21 - 16) = v22;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v24 = v28;
    *(&v25 - 2) = v0;
    *(&v25 - 1) = v24;
    sub_1C103E5F4();
  }

  else
  {
    v24 = v28;
    v13(v10, v28, v5);
    swift_beginAccess();
    (*(v7 + 40))(&v0[v12], v10, v5);
    swift_endAccess();
  }

  v27(v24, v5);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C103D014(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  v5 = sub_1C1266790();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1C103D0DC()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C103E558();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 176));
}

uint64_t sub_1C103D17C()
{
  OUTLINED_FUNCTION_33_4();
  v2 = v1;
  v3 = *(v1 + 176);
  v5 = v4 & 1;
  result = sub_1C0FA8038();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_15_13();
    v7 = *(v2 + 96);
    *(v8 - 64) = *(v2 + 80);
    *(v8 - 48) = v7;
    *(v8 - 32) = *(v2 + 112);
    *(v8 - 16) = *(v2 + 128);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C103E5F4();
  }

  else
  {
    *(v0 + v3) = v5;
  }

  return result;
}

void *sub_1C103D2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2 + *(v6 + 168), 1, 1, *(v6 + 96));
  *(v2 + *(*v2 + 176)) = 0;
  sub_1C1261F60();
  v2[2] = a1;
  v2[4] = a2;
  v2[5] = a2;
  sub_1C12661A0();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  v7 = sub_1C1265F80();

  v3[3] = v7;
  return v3;
}

uint64_t sub_1C103D570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  if (sub_1C1266280())
  {
    (*(v5 + 32))(a3, v7, v4);
    v8 = 0;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v4);
}

BOOL sub_1C103D6CC()
{
  OUTLINED_FUNCTION_20();
  sub_1C12661A0();
  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  return (sub_1C1266020() & 1) == 0;
}

void sub_1C103D760()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91578);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91580);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  sub_1C103E110(v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570);
  if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
  {
    sub_1C103FB1C(v5);
  }

  else
  {
    v24[2] = v1;
    v18 = *&v5[*(v17 + 48)];
    v19 = *(v6 + 48);
    v20 = *(v12 + 32);
    v20(v9, v5, v10);
    *&v9[v19] = v18;
    v20(v16, v9, v10);
    sub_1C1261EE0();
    v22 = v21;
    (*(v12 + 8))(v16, v10);
    if ((v22 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_5;
    }
  }

  v23 = 1;
LABEL_5:
  v25 = v23;
  OUTLINED_FUNCTION_22_0();
}

void sub_1C103D998()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v80 = v2;
  v4 = *v0;
  v5 = *v0;
  *&v85 = *v0 + 104;
  OUTLINED_FUNCTION_22_6();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_1();
  v67 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - v10;
  OUTLINED_FUNCTION_22_6();
  v12 = *(v11 + 96);
  v13 = sub_1C1266790();
  v14 = OUTLINED_FUNCTION_15(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v65 - v17;
  sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v78 = v19;
  v79 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v84 = v21 - v20;
  sub_1C103C7DC();
  sub_1C1266110();

  v107 = sub_1C103C7DC();
  v99 = v0;
  v100 = v3;
  sub_1C12661A0();
  OUTLINED_FUNCTION_9_14();
  WitnessTable = swift_getWitnessTable();
  sub_1C1266330();

  v22 = v102;
  if (BYTE8(v102))
  {
    v22 = 0;
  }

  v81 = v22;
  v82 = v12;
  *&v23 = v5[10];
  v69 = v7;
  *(&v23 + 1) = v7;
  *&v24 = v12;
  *(&v24 + 1) = *v85;
  v85 = v24;
  v86 = v23;
  v94 = v23;
  v95 = v24;
  v96 = v4[14];
  v25 = v96;
  v97 = v4[15];
  v26 = v97;
  v98 = v4[16];
  v27 = v98;
  swift_getKeyPath();
  sub_1C103E558();

  v28 = *(*v0 + 184);
  v107 = v0;
  v89 = v86;
  v90 = v85;
  v91 = v25;
  v92 = v26;
  v93 = v27;
  swift_getKeyPath();
  v102 = v86;
  v103 = v85;
  v76 = v25;
  v77 = v26;
  v104 = v25;
  v105 = v26;
  v29 = v80;
  v75 = v27;
  v106 = v27;
  type metadata accessor for PhotosDraggableForEach.DraggingModel();
  OUTLINED_FUNCTION_4_15();
  v30 = swift_getWitnessTable();
  v74 = v28;
  sub_1C1261F50();

  OUTLINED_FUNCTION_36_3();
  v72 = sub_1C1266100();
  swift_endAccess();
  sub_1C103CA24();
  v107 = sub_1C103C7DC();
  v87 = v0;
  v88 = v29;
  sub_1C1266330();

  if (BYTE8(v102))
  {
    v31 = 0;
  }

  else
  {
    v31 = v102;
  }

  sub_1C1261EC0();
  v73 = 0;
  v71 = v30;
  if (v32)
  {
    v33 = v82;
    OUTLINED_FUNCTION_15_1();
    (*(v34 + 16))(v70, v29, v33);
    OUTLINED_FUNCTION_29_2();
    v38 = v33;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    sub_1C103CD60();
    v107 = v72;
    v101 = v31;
    MEMORY[0x1EEE9AC00](v45);
    OUTLINED_FUNCTION_15_13();
    v46 = v85;
    *(v47 - 64) = v86;
    *(v47 - 48) = v46;
    v48 = v76;
    v49 = v77;
    *(v47 - 32) = v76;
    *(v47 - 24) = v49;
    v50 = v75;
    *(v47 - 16) = v75;
    swift_getKeyPath();
    sub_1C103E558();

    *&v102 = v1;
    MEMORY[0x1EEE9AC00](v51);
    OUTLINED_FUNCTION_15_13();
    v52 = v85;
    *(v53 - 64) = v86;
    *(v53 - 48) = v52;
    *(v53 - 32) = v48;
    *(v53 - 24) = v49;
    *(v53 - 16) = v50;
    swift_getKeyPath();
    sub_1C1261F50();

    OUTLINED_FUNCTION_36_3();
    swift_getWitnessTable();
    v54 = WitnessTable;
    sub_1C12663B0();
    swift_endAccess();
    sub_1C103CA24();
    *&v102 = *(v1 + 32);

    v55 = OUTLINED_FUNCTION_32_2();
    sub_1C1038F14(v55, v56, v57, v33, v58, v54, v59, v60);

    *&v102 = sub_1C103C7DC();
    v61 = OUTLINED_FUNCTION_32_2();
    sub_1C1038F14(v61, v62, v63, v33, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v64);

    sub_1C12661B0();

    sub_1C103D17C();
    (*(v78 + 8))(v84, v79);
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v39 = v82;
  if (!__OFADD__(v31++, 1))
  {
    sub_1C103C7DC();
    v41 = v69;
    v42 = sub_1C1266170();

    if (v31 >= v42)
    {
      v36 = 1;
      v44 = v68;
    }

    else
    {
      sub_1C103C7DC();
      v43 = v66;
      sub_1C12661D0();

      v44 = v68;
      swift_getAtKeyPath();
      (*(v67 + 8))(v43, v41);
      v36 = 0;
    }

    v35 = v44;
    v37 = 1;
    v38 = v39;
    v33 = v39;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1C103E110@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  sub_1C103C7DC();
  sub_1C1266110();

  sub_1C103C7DC();
  sub_1C12661A0();
  OUTLINED_FUNCTION_9_14();
  swift_getWitnessTable();
  sub_1C1266330();

  if (v15)
  {
    (*(v5 + 8))(v1, v3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570);
    v8 = a1;
    v9 = 1;
    v10 = 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91570);
    v12 = *(v11 + 48);
    (*(v5 + 32))(a1, v1, v3);
    *(a1 + v12) = v14;
    OUTLINED_FUNCTION_29_2();
    v7 = v11;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
}

uint64_t sub_1C103E300(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_6();

  swift_getAtKeyPath();
  sub_1C12661A0();
  OUTLINED_FUNCTION_2_18();
  swift_getWitnessTable();
  v7 = sub_1C1266020();
  (*(v5 + 8))(v2, v3);

  return v7 & 1;
}

uint64_t sub_1C103E444(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 96);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  v8 = sub_1C1265DE0();
  (*(v4 + 8))(v7, v2);
  return v8 & 1;
}

uint64_t sub_1C103E558()
{
  OUTLINED_FUNCTION_4_15();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C103E5F4()
{
  OUTLINED_FUNCTION_4_15();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t sub_1C103E6C8()
{

  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 168);
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 184);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1C103E7A8()
{
  sub_1C103E6C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C103E870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91598);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1C1262610();
  __swift_allocate_value_buffer(v3, qword_1EDE7C080);
  __swift_project_value_buffer(v3, qword_1EDE7C080);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_1C1262600();
}

void static PhotosDraggableItem.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_23();
  v13[1] = v1;
  v2 = sub_1C1262610();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91540);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  if (qword_1EDE7C078 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EDE7C080);
  (*(v4 + 16))(v0, v12, v2);
  sub_1C103EBB8();
  sub_1C103EC0C();
  sub_1C103EC60();
  sub_1C1262000();
  sub_1C1261950();
  sub_1C1261920();
  sub_1C103ECB4(&qword_1EDE82F60, MEMORY[0x1E6968010]);
  sub_1C103ECB4(&qword_1EDE82F68, MEMORY[0x1E6967F70]);
  sub_1C1262010();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_1C103EBB8()
{
  result = qword_1EDE82680;
  if (!qword_1EDE82680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82680);
  }

  return result;
}

unint64_t sub_1C103EC0C()
{
  result = qword_1EDE82670;
  if (!qword_1EDE82670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82670);
  }

  return result;
}

unint64_t sub_1C103EC60()
{
  result = qword_1EDE82678;
  if (!qword_1EDE82678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82678);
  }

  return result;
}

uint64_t sub_1C103ECB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C103ED30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C103ED00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C103ED78@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_15_6();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C103EDA4(uint64_t a1)
{
  v2 = sub_1C103EF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C103EDE0(uint64_t a1)
{
  v2 = sub_1C103EF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosDraggableItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91548);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_6();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C103EF1C();
  sub_1C1266F00();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1C103EF1C()
{
  result = qword_1EBE91550;
  if (!qword_1EBE91550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91550);
  }

  return result;
}

uint64_t sub_1C103F04C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = sub_1C1266F10();
    if (v3 > 0x3F)
    {
      return v2;
    }

    swift_getExtendedExistentialTypeMetadata();
    sub_1C103F6C0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_1C103F768(319, &qword_1EDE768F0, &qword_1EBE90BA0, &unk_1C12A8220, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v2;
    }

    v2 = sub_1C1007F88();
    if (v6 > 0x3F)
    {
      return v2;
    }

    else
    {
      type metadata accessor for PhotosDraggableForEach.DraggingModel();
      sub_1C1266790();
      v0 = sub_1C1265450();
      if (v7 <= 0x3F)
      {
        sub_1C1266290();
        sub_1C1266790();
        v0 = sub_1C1265450();
        if (v8 <= 0x3F)
        {
          sub_1C103F6C0(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          v0 = v9;
          if (v10 <= 0x3F)
          {
            sub_1C103F710();
            v0 = v11;
            if (v12 <= 0x3F)
            {
              sub_1C103F768(319, &qword_1EDE77648, &qword_1EBE91558, &unk_1C12A94B8, MEMORY[0x1E697DCC0]);
              v0 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C103F2F8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C103F484(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((((((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C103F6C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C103F710()
{
  if (!qword_1EDE77658)
  {
    type metadata accessor for PhotosActionManager();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77658);
    }
  }
}

void sub_1C103F768(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1C103F7CC()
{
  result = sub_1C1266790();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDraggableItem(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C103F984()
{
  result = qword_1EBE91560;
  if (!qword_1EBE91560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91560);
  }

  return result;
}

unint64_t sub_1C103F9DC()
{
  result = qword_1EBE91568;
  if (!qword_1EBE91568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91568);
  }

  return result;
}

uint64_t sub_1C103FA9C()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE91520);
  __swift_project_value_buffer(v0, qword_1EBE91520);
  return sub_1C1262700();
}

uint64_t sub_1C103FB1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + *(v0 + 84));

  if (*(v3 + *(v0 + 92)))
  {
  }

  j__swift_release();
  return swift_deallocObject();
}

uint64_t sub_1C103FDCC()
{
  v0 = type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_15(v0);

  return sub_1C103C5F4();
}

uint64_t sub_1C103FE90(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(type metadata accessor for PhotosDraggableForEach() - 8);
  v11 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  return sub_1C103BF6C(a1, v1 + v11, v1 + ((v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1C103FFAC()
{
  result = qword_1EBE91588;
  if (!qword_1EBE91588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE91588);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return swift_beginAccess();
}

double sub_1C104018C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1C0FFE094(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1C0FA139C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C10401F0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C0FFE1CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1C1040248(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1C0FFE230(a2, a3);
  if (v5)
  {
    return *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t PhotosItemListManagerFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915A0);
  *(v0 + 16) = sub_1C1265CE0();
  return v0;
}

uint64_t PhotosItemListManagerFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1040394()
{
  type metadata accessor for PhotosItemListManagerFactory();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915A0);
  result = sub_1C1265CE0();
  *(v0 + 16) = result;
  qword_1EDE80300 = v0;
  return result;
}

uint64_t sub_1C1040404@<X0>(void *a1@<X8>)
{
  if (qword_1EDE802F8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE80300;
}

uint64_t sub_1C1040470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1040720();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.itemListManagerFactory.getter()
{
  sub_1C104066C();
  sub_1C12637F0();
  return v1;
}

uint64_t (*EnvironmentValues.itemListManagerFactory.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C104066C();
  sub_1C12637F0();
  return sub_1C10405D8;
}

uint64_t sub_1C10405D8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

unint64_t sub_1C104066C()
{
  result = qword_1EDE802F0;
  if (!qword_1EDE802F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE802F0);
  }

  return result;
}

unint64_t sub_1C1040720()
{
  result = qword_1EDE80B50[0];
  if (!qword_1EDE80B50[0])
  {
    type metadata accessor for PhotosItemListManagerFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80B50);
  }

  return result;
}

uint64_t static String.photosSwiftUICoreLocalized(_:)(uint64_t a1)
{
  v2 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C1265E50();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  if (qword_1EDE7E628 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v6 = qword_1EDE7E630;
  sub_1C1261E40();
  return sub_1C1265EC0();
}

uint64_t sub_1C10408D0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1C12652F0();
  *a1 = result;
  return result;
}

uint64_t sub_1C1040918@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7E628 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v2 = qword_1EDE7E630;

  result = sub_1C12648D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpMacSyncedToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C1040AD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915B0) + 36)) = a1 & 1;

  return sub_1C1040B30(a1 & 1, a2);
}

uint64_t sub_1C1040B30@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  KeyPath = swift_getKeyPath();
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v11 = swift_getKeyPath();
  v19[15] = 0;
  sub_1C1265410();
  v12 = v19[16];
  v13 = v20;
  sub_1C10388D4(v9, v7);
  v14 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0x4044000000000000;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915B8);
  sub_1C10388D4(v7, a2 + v15[16]);
  v16 = a2 + v15[20];
  *v16 = v14;
  *(v16 + 8) = 0x4044000000000000;
  *(v16 + 16) = v11;
  *(v16 + 24) = 0;
  v17 = a2 + v15[24];
  *v17 = v12;
  *(v17 + 8) = v13;

  sub_1C1040D5C(v9);

  sub_1C1040D5C(v7);
}

uint64_t sub_1C1040D1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Model(0);
  swift_allocObject();
  result = sub_1C1038170();
  *a1 = result;
  return result;
}

uint64_t sub_1C1040D5C(uint64_t a1)
{
  v2 = type metadata accessor for OneUpAnimatedInfoButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1040DB8()
{
  result = qword_1EBE915C0;
  if (!qword_1EBE915C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE915C0);
  }

  return result;
}

uint64_t View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v41[2] = a6;
  v41[3] = a1;
  v49 = a4;
  v50 = a5;
  v44 = a3;
  v42 = a2;
  v51 = a8;
  v41[1] = a9;
  v11 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
  OUTLINED_FUNCTION_0();
  v48 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90);
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v43 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v45 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v41 - v24;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v46 = v26;
  v47 = v27;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v41 - v29;
  View.photosInlinePlayback(colsPerPage:)(a2);
  sub_1C10412C8(v44, v15);
  OUTLINED_FUNCTION_24();
  v32 = sub_1C0FDB6D4(v31, &qword_1EBE90B90);
  v56 = a7;
  v57 = v32;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C68EE920](v15, v16, v11, WitnessTable);
  (*(v48 + 8))(v15, v11);
  (*(v43 + 8))(v20, v16);
  OUTLINED_FUNCTION_1_14();
  v34 = swift_getWitnessTable();
  v54 = WitnessTable;
  v55 = v34;
  v35 = swift_getWitnessTable();
  View.photosInlinePlaybackScrollViewTracker(onScrollPhaseDidChange:)(v49, v50, v21, v35);
  (*(v45 + 8))(v25, v21);
  OUTLINED_FUNCTION_0_19();
  v38 = sub_1C1045180(v36, v37);
  v52 = v35;
  v53 = v38;
  v39 = v46;
  swift_getWitnessTable();
  View.photosInlinePlayback(colsPerPage:)(v42);
  return (*(v47 + 8))(v30, v39);
}

uint64_t View.photosInlinePlayback(colsPerPage:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_1C1041560();
  sub_1C1264D40();
}

uint64_t sub_1C10412C8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v5 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_1C1012790() & 1;
  *(a2 + 48) = v8;
  *(a2 + 56) = sub_1C1042100();
  *(a2 + 64) = v9;
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v4);
  result = sub_1C1042138(v7);
  *a2 = a1;
  return result;
}

uint64_t View.photosInlinePlaybackScrollViewTracker(onScrollPhaseDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_14();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  sub_1C0FCF1B4(a1);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker();
  sub_1C12628D0();
  MEMORY[0x1C68EE920](v4, a3, v9, a4);
  return sub_1C1044B6C(v4);
}

uint64_t *sub_1C1041534(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result <= a2)
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t *sub_1C1041548(uint64_t *result)
{
  v2 = *(v1 + 16);
  if (*result > v2)
  {
    v2 = *result;
  }

  *result = v2;
  return result;
}

unint64_t sub_1C1041560()
{
  result = qword_1EDE7F0B0;
  if (!qword_1EDE7F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F0B0);
  }

  return result;
}

void sub_1C10415B8()
{
  if (__OFADD__(qword_1EDE7D700, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EDE7D700;
    sub_1C1266940();

    v0 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v0);

    sub_1C1263F30();
  }
}

uint64_t sub_1C1041698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C1263D00();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v36 - v9;
  v10 = sub_1C12637E0();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915D0);
  v40 = v13;
  sub_1C12628E0();
  v14 = v45;
  v15 = *v3;
  v16 = *(v3 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F8);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = a2;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91600) + 36));
  *v19 = v14;
  v19[1] = v15;
  v19[2] = v16;
  v20 = *(v3 + 16);
  LOBYTE(a2) = *(v3 + 24);
  sub_1C0FCF1B4(v15);

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v21 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v37 + 8))(v12, v38);
    v20 = v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915C8);
  v22 = v44;
  sub_1C12628E0();
  sub_1C12628E0();
  v23 = v45;
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91608) + 36));
  v25 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v26 = &v24[v25[7]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  *v24 = v20;
  v27 = v20;
  v28 = v42;
  v29 = v43;
  v30 = *(v42 + 16);
  v30(&v24[v25[5]], v22, v43);
  *&v24[v25[6]] = v23;
  v31 = v41;
  v30(v41, v22, v29);
  v32 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v33 = (v39 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  (*(v28 + 32))(v34 + v32, v31, v29);
  *(v34 + v33) = v23;
  type metadata accessor for PhotosInlinePlaybackContainerModel();

  sub_1C12628D0();
  return (*(v28 + 8))(v44, v29);
}

uint64_t sub_1C1041AD8()
{
  sub_1C10457AC();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1041B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v30 = a2;
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91618);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91620);
  sub_1C0FDB6D4(&qword_1EDE7BAF8, &qword_1EBE91620);
  sub_1C1264BA0();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91610);
  sub_1C12628E0();
  v14 = v31;
  v15 = &v12[*(v10 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  v16 = v2 + *(v5 + 36);
  v17 = *v16;
  v18 = *(v16 + 8);

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    (*(v25 + 8))(v9, v26);
    v17 = v31;
  }

  v31 = v17;
  v20 = v29;
  sub_1C1045C3C(v3, v29);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1C1045CA0(v20, v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915D8);
  sub_1C1045D78();
  sub_1C10450CC();
  sub_1C1265000();

  return sub_1C0FAF690(v12);
}

uint64_t sub_1C1041EE4(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (*a1)
  {
    if (*a1 == v11)
    {
      return result;
    }
  }

  else if (!v11)
  {
    return result;
  }

  v12 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91610);
  sub_1C12628E0();
  v13 = a3 + *(v12 + 28);
  v14 = *v13;
  LOBYTE(v12) = *(v13 + 8);

  if ((v12 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    (*(v7 + 8))(v10, v6);
    v14 = v16[1];
  }

  sub_1C10CB9E4(v14);
}

uint64_t sub_1C10420A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12407A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C1042138(uint64_t a1)
{
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v2 = sub_1C1266790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_1C1265410();
  return (*(v3 + 8))(a1, v2);
}

__n128 sub_1C1042238@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1C1261E20();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  v9 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v10 = a3 + *(v9 + 36);
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a2 + 32);
  *(a3 + *(v9 + 40)) = a4;
  return result;
}

uint64_t sub_1C10422F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a1;
  v162 = a3;
  v161 = sub_1C12637E0();
  v160 = *(v161 - 8);
  v4 = MEMORY[0x1EEE9AC00](v161);
  v159 = v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = *(a2 - 8);
  v177 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v8 = sub_1C1263DE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915E0);
  v128 = v8;
  v9 = sub_1C1263190();
  v131 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v172 = v125 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915E8);
  v130 = v9;
  v11 = sub_1C1263190();
  v134 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v163 = v125 - v12;
  WitnessTable = swift_getWitnessTable();
  v125[1] = WitnessTable;
  v14 = sub_1C0FDB6D4(&qword_1EDE7BA10, &qword_1EBE915E0);
  v192 = WitnessTable;
  v193 = v14;
  v15 = swift_getWitnessTable();
  v129 = v15;
  v16 = sub_1C0FDB6D4(&qword_1EDE7BA00, &qword_1EBE915E8);
  v190 = v15;
  v191 = v16;
  v17 = swift_getWitnessTable();
  v186 = v11;
  v187 = MEMORY[0x1E69E6370];
  v126 = v11;
  v18 = MEMORY[0x1E69E6370];
  v188 = v17;
  v189 = MEMORY[0x1E69E6388];
  v19 = v17;
  v127 = v17;
  v20 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v164 = v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8);
  v186 = v11;
  v187 = v18;
  v188 = v19;
  v189 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C10450CC();
  v186 = OpaqueTypeMetadata2;
  v187 = v23;
  v188 = OpaqueTypeConformance2;
  v189 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v138 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v137 = v125 - v27;
  v28 = *(a2 + 16);
  v141 = OpaqueTypeMetadata2;
  v186 = OpaqueTypeMetadata2;
  v187 = v23;
  v136 = v23;
  v133 = OpaqueTypeConformance2;
  v188 = OpaqueTypeConformance2;
  v189 = v25;
  v132 = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = *(a2 + 24);
  v31 = a2;
  v186 = v26;
  v187 = v28;
  v188 = v29;
  v189 = v30;
  v32 = v30;
  v33 = swift_getOpaqueTypeMetadata2();
  v142 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v165 = v125 - v34;
  v139 = v26;
  v186 = v26;
  v187 = v28;
  v135 = v29;
  v188 = v29;
  v189 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v146 = v33;
  v186 = v33;
  v187 = v28;
  v143 = v35;
  v188 = v35;
  v189 = v32;
  v175 = v32;
  v36 = swift_getOpaqueTypeMetadata2();
  v144 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v166 = v125 - v37;
  v145 = v38;
  v39 = sub_1C1263190();
  v148 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v147 = v125 - v40;
  v149 = v41;
  v42 = sub_1C1263190();
  v156 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v167 = v125 - v43;
  v176 = v28;
  v44 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.GeometryInfo();
  v45 = swift_getWitnessTable();
  v151 = v44;
  v150 = v45;
  v46 = sub_1C1263FF0();
  v158 = v42;
  v152 = v46;
  v157 = sub_1C1263190();
  v155 = *(v157 - 8);
  v47 = MEMORY[0x1EEE9AC00](v157);
  v153 = v125 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v154 = v125 - v49;
  v50 = v178;
  v51 = v178 + 16;
  v174 = *(v178 + 16);
  v52 = v179;
  v170 = v31;
  v174(v7, v179, v31);
  v53 = *(v50 + 80);
  v54 = (v53 + 32) & ~v53;
  v55 = swift_allocObject();
  v56 = v175;
  *(v55 + 16) = v176;
  *(v55 + 24) = v56;
  v57 = *(v50 + 32);
  v57(v55 + v54, v7, v31);
  sub_1C104524C();
  sub_1C1264C90();

  v58 = v52;
  v59 = v170;
  v174(v7, v58, v170);
  v60 = swift_allocObject();
  v61 = v175;
  *(v60 + 16) = v176;
  *(v60 + 24) = v61;
  v57(v60 + v54, v7, v59);
  sub_1C1041560();
  v62 = v130;
  v63 = v172;
  sub_1C1264C90();

  (*(v131 + 8))(v63, v62);
  v64 = v179;
  LOBYTE(v186) = *v179;
  v173 = v51;
  v174(v7, v179, v59);
  v172 = v53;
  v65 = swift_allocObject();
  v66 = v175;
  *(v65 + 16) = v176;
  *(v65 + 24) = v66;
  v169 = v54;
  v168 = v7;
  v178 = v50 + 32;
  v171 = v57;
  v57(v65 + v54, v7, v59);
  v67 = v126;
  v68 = v163;
  sub_1C1265000();

  (*(v134 + 8))(v68, v67);
  v69 = *(v64 + 3);
  LOBYTE(v68) = v64[32];

  if ((v68 & 1) == 0)
  {
    sub_1C1266420();
    v70 = sub_1C1264410();
    sub_1C1262620();

    v71 = v159;
    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    (*(v160 + 8))(v71, v161);
    v69 = v186;
  }

  v186 = v69;
  v72 = v168;
  v73 = v170;
  v174(v168, v179, v170);
  v74 = v169;
  v75 = swift_allocObject();
  v76 = v176;
  v77 = v175;
  *(v75 + 16) = v176;
  *(v75 + 24) = v77;
  v171(v75 + v74, v72, v73);
  v78 = v137;
  v79 = v141;
  v80 = v164;
  sub_1C1265000();

  (*(v140 + 8))(v80, v79);
  v81 = v179;
  v174(v72, v179, v73);
  v82 = swift_allocObject();
  *(v82 + 16) = v76;
  *(v82 + 24) = v77;
  v171(v82 + v74, v72, v73);
  v83 = v139;
  sub_1C1264E40();

  (*(v138 + 8))(v78, v83);
  LOBYTE(v76) = v81[16];

  if ((v76 & 1) == 0)
  {
    sub_1C1266420();
    v84 = sub_1C1264410();
    sub_1C1262620();

    v85 = v159;
    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v160 + 8))(v85, v161);
  }

  sub_1C1165B00(&v186);

  v86 = v168;
  v87 = v170;
  v88 = v174;
  v174(v168, v179, v170);
  v89 = v88;
  v90 = v169;
  v91 = swift_allocObject();
  v92 = v176;
  v93 = v175;
  *(v91 + 16) = v176;
  *(v91 + 24) = v93;
  v171(v91 + v90, v86, v87);
  v94 = v146;
  v95 = v143;
  v96 = v165;
  sub_1C1264E40();

  (*(v142 + 8))(v96, v94);
  v89(v86, v179, v87);
  v97 = swift_allocObject();
  *(v97 + 16) = v92;
  *(v97 + 24) = v93;
  v171(v97 + v90, v86, v87);
  v186 = v94;
  v187 = v92;
  v188 = v95;
  v189 = v93;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v147;
  v100 = v145;
  v101 = v166;
  sub_1C1264A60();

  (*(v144 + 8))(v101, v100);
  v174(v86, v179, v87);
  v102 = swift_allocObject();
  v103 = v176;
  v104 = v175;
  *(v102 + 16) = v176;
  *(v102 + 24) = v104;
  v105 = v102 + v90;
  v106 = v87;
  v171(v105, v86, v87);
  v184 = v98;
  v185 = MEMORY[0x1E69805D0];
  v166 = MEMORY[0x1E697E858];
  v107 = v149;
  v165 = swift_getWitnessTable();
  sub_1C1264FF0();

  (*(v148 + 8))(v99, v107);
  v108 = v86;
  v109 = v174;
  v174(v86, v179, v106);
  v110 = v169;
  v111 = swift_allocObject();
  v112 = v175;
  *(v111 + 16) = v103;
  *(v111 + 24) = v112;
  v113 = v171;
  v171(v111 + v110, v108, v106);
  v109(v108, v179, v106);
  v114 = swift_allocObject();
  *(v114 + 16) = v176;
  *(v114 + 24) = v112;
  v113(v114 + v110, v108, v106);
  v182 = v165;
  v183 = MEMORY[0x1E69805D0];
  v115 = v158;
  v116 = swift_getWitnessTable();
  v117 = v153;
  v118 = v167;
  sub_1C1264C40();

  (*(v156 + 8))(v118, v115);
  v119 = swift_getWitnessTable();
  v180 = v116;
  v181 = v119;
  v120 = v157;
  v121 = swift_getWitnessTable();
  v122 = v154;
  sub_1C0FDBA4C(v117, v120, v121);
  v123 = *(v155 + 8);
  v123(v117, v120);
  sub_1C0FDBA4C(v122, v120, v121);
  return (v123)(v122, v120);
}

uint64_t sub_1C10438C0(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F0);
  result = sub_1C1265420();
  if (v3 != v1)
  {
    sub_1C1265430();
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
    return sub_1C1043974();
  }

  return result;
}

uint64_t sub_1C1043974()
{
  v1 = v0;
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 3);
  v7 = v1[32];

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    result = (*(v3 + 8))(v5, v2);
    v6 = v11;
  }

  if (v6)
  {
    sub_1C10CC9E4(*v1);
    v11 = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE915F0);
    sub_1C1265420();
    sub_1C10CC8DC(v10[1]);
  }

  return result;
}

void sub_1C1043B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_14();
  if (*a2 == 1)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);

    if ((v13 & 1) == 0)
    {
      sub_1C1266420();
      v14 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      j__swift_release_0();
      (*(v10 + 8))(v5, v8);
      v12 = v16;
    }

    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078);
      v15 = sub_1C1266B00();
      sub_1C10CCBB4(v15, a5);
    }
  }
}

uint64_t sub_1C1043CD8(uint64_t a1)
{
  v2 = sub_1C1261E20();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v19 - v10;
  v11 = sub_1C12637E0();
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v20 = v4;
    v17 = sub_1C1264410();
    v4 = v20;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    result = (*(v21 + 8))(v13, v22);
    v14 = *&v29[0];
  }

  if (v14)
  {
    (*(v23 + 16))(v4, v14 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id, v24);
    v29[0] = *(v14 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame);
    v29[1] = *(v14 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 16);
    v30 = *(v14 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32);
    v18 = v26;
    sub_1C1042238(v4, v29, v26, *(v14 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage));
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
    (*(v6 + 16))(v9, v18, v5);
    sub_1C1265450();
    sub_1C1265430();
    (*(v6 + 8))(v18, v5);
    memset(v27, 0, sizeof(v27));
    v28 = 1;
    sub_1C10CC00C(v27);
    sub_1C10CC158(0.0);
  }

  return result;
}

uint64_t sub_1C10440B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v6 = sub_1C1266790();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v27 = v23 - v9;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = sub_1C12637E0();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v23[1] = a3;
    v19 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    result = (*(v24 + 8))(v15, v25);
    v16 = *&v28[0];
  }

  if (v16)
  {
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
    sub_1C1265450();
    v20 = v27;
    sub_1C1265420();
    if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
    {

      return (*(v7 + 8))(v20, v6);
    }

    else
    {
      (*(v10 + 32))(v12, v20, v5);
      if (_s17PhotosSwiftUICore0A20SearchSuggestionViewV7SectionV6ActionV2eeoiySbAG_AGtFZ_0())
      {
        v21 = &v12[*(v5 + 36)];
        v22 = *(v21 + 1);
        v28[0] = *v21;
        v28[1] = v22;
        v29 = v21[32];
        sub_1C10CC00C(v28);
        sub_1C10CC158(*&v12[*(v5 + 40)]);

        return (*(v10 + 8))(v12, v5);
      }

      else
      {
        (*(v10 + 8))(v12, v5);
      }
    }
  }

  return result;
}

uint64_t sub_1C104445C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C12630E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  LOBYTE(v20) = *(a1 + 40);
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  result = sub_1C1265420();
  if (v25 == 1)
  {
    sub_1C1262D40();
    if (qword_1EDE80380 != -1)
    {
      swift_once();
    }

    v10 = sub_1C1263D00();
    __swift_project_value_buffer(v10, qword_1EDE9B6A8);
    MEMORY[0x1C68ED630]();
    sub_1C1262D30();
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    (*(v5 + 8))(v7, v4);
    sub_1C12665F0();
    v16 = v15;
    result = sub_1C12665F0();
    v25 = 0;
    v24 = 0;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = 0;
    *(a2 + 33) = v20;
    *(a2 + 36) = *(&v20 + 3);
    v18 = v16 / v17;
  }

  else
  {
    LOBYTE(v20) = 1;
    v25 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v18 = 0.0;
  }

  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_1C1044660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  v6 = sub_1C1266790();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v26 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v25 = v23 - v10;
  v11 = sub_1C12637E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v15;
  v29 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v20 = sub_1C1264410();
    v23[1] = a3;
    v21 = v20;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    result = (*(v12 + 8))(v14, v11);
    v17 = v27;
  }

  if (v17)
  {
    v22 = v25;
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v24);
    type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
    (*(v7 + 16))(v26, v22, v6);
    sub_1C1265450();
    sub_1C1265430();
    (*(v7 + 8))(v22, v6);
    sub_1C10CC00C(v28);
    sub_1C10CC158(v16);
  }

  return result;
}

BOOL sub_1C104495C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      result = CGRectEqualToRect(*a1, *a2);
      if (!result)
      {
        return result;
      }

      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 40) == *(a2 + 40);
}

BOOL sub_1C10449C8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1C104495C(v7, v8);
}

uint64_t sub_1C1044A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10450CC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

char *sub_1C1044A80(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *sub_1C1044AD4(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v6 <= v3)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1044B2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosScrollViewTracker();
  swift_allocObject();
  result = PhotosScrollViewTracker.init()();
  *a1 = result;
  return result;
}

uint64_t sub_1C1044B6C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1044C00()
{
  sub_1C103F768(319, &qword_1EDE768F0, &qword_1EBE90BA0, &unk_1C12A8220, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C10459F4(319, &qword_1EDE77628, type metadata accessor for PhotosInlinePlaybackCoordinator, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C10459F4(319, &qword_1EDE77680, MEMORY[0x1E697FA40], MEMORY[0x1E697DA80]);
      if (v2 <= 0x3F)
      {
        sub_1C10459F4(319, &qword_1EDE776C0, type metadata accessor for PhotosScrollViewTracker, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1044D70()
{
  sub_1C10459F4(319, &qword_1EDE77628, type metadata accessor for PhotosInlinePlaybackCoordinator, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C103F768(319, &qword_1EDE77610, &qword_1EBE915D8, &unk_1C12BE650, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C1044F24(319, &qword_1EDE76CA0);
      if (v2 <= 0x3F)
      {
        sub_1C1044F24(319, &qword_1EDE76C88);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
          sub_1C1266790();
          sub_1C1265450();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C1044F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C1265450();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C1044F78()
{
  sub_1C1261E20();
  if (v0 <= 0x3F)
  {
    sub_1C10459F4(319, &qword_1EDE769A0, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C10450CC()
{
  result = qword_1EDE7F7A8[0];
  if (!qword_1EDE7F7A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE915D8);
    sub_1C1045180(&qword_1EDE7FD60, type metadata accessor for PhotosInlinePlaybackContainerModel);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7F7A8);
  }

  return result;
}

uint64_t sub_1C1045180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C10451E4()
{
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_5_16();

  return sub_1C1043860();
}

unint64_t sub_1C104524C()
{
  result = qword_1EDE7F518;
  if (!qword_1EDE7F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F518);
  }

  return result;
}

uint64_t sub_1C10452A0()
{
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14();
  v0 = OUTLINED_FUNCTION_5_16();

  return sub_1C10438C0(v0);
}

uint64_t sub_1C1045308()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_11_12();

  return sub_1C1043B0C();
}

uint64_t sub_1C1045438(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_8_14();
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1C10454C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1C104445C(v4, a1);
}

uint64_t objectdestroy_25Tm()
{
  OUTLINED_FUNCTION_7_14();
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
  OUTLINED_FUNCTION_17_10();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  j__swift_release_0();

  v4 = v3 + *(v0 + 60);
  OUTLINED_FUNCTION_7_14();
  v5 = type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker.ContainerState();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_1C1261E20();
    OUTLINED_FUNCTION_4_2();
    (*(v6 + 8))(v4);
  }

  sub_1C1266790();
  sub_1C1265450();

  return swift_deallocObject();
}

uint64_t sub_1C104568C()
{
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_8_14();
  v0 = OUTLINED_FUNCTION_5_16();

  return sub_1C1044660(v0, v1, v2);
}

uint64_t sub_1C1045714@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1263D00();
  result = sub_1C1164F04();
  *a1 = result;
  return result;
}

unint64_t sub_1C10457AC()
{
  result = qword_1EDE801F0[0];
  if (!qword_1EDE801F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE801F0);
  }

  return result;
}

uint64_t sub_1C1045810()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C104584C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C104586C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_1C10458CC()
{
  type metadata accessor for PhotosInlinePlaybackCoordinator(319);
  if (v0 <= 0x3F)
  {
    sub_1C1263D00();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewTracker();
      if (v2 <= 0x3F)
      {
        sub_1C103F768(319, &qword_1EDE77610, &qword_1EBE915D8, &unk_1C12BE650, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C10459F4(319, &qword_1EDE77690, type metadata accessor for PhotosInlinePlaybackContainerModel, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C10459F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C1045A58()
{
  result = qword_1EDE7BDD0;
  if (!qword_1EDE7BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91608);
    sub_1C1045B14();
    sub_1C1045180(&unk_1EDE7F210, type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDD0);
  }

  return result;
}

unint64_t sub_1C1045B14()
{
  result = qword_1EDE7BEE8;
  if (!qword_1EDE7BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91600);
    sub_1C0FDB6D4(&qword_1EDE7BAF0, &qword_1EBE915F8);
    sub_1C1045BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEE8);
  }

  return result;
}

unint64_t sub_1C1045BCC()
{
  result = qword_1EDE7F680[0];
  if (!qword_1EDE7F680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7F680);
  }

  return result;
}

uint64_t sub_1C1045C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1045CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1045D04()
{
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker.InnerTracker(0);
  v0 = OUTLINED_FUNCTION_11_12();

  return sub_1C1041EE4(v0, v1, v2);
}

unint64_t sub_1C1045D78()
{
  result = qword_1EDE7BE68;
  if (!qword_1EDE7BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91620);
    sub_1C0FDB6D4(&qword_1EDE7BAF8, &qword_1EBE91620);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7B990, &qword_1EBE91638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE68);
  }

  return result;
}

uint64_t sub_1C1045F30()
{
  sub_1C1266E90();
  sub_1C12666C0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1045F8C()
{
  sub_1C1266E90();
  sub_1C12666C0();
  return sub_1C1266EE0();
}

uint64_t PhotosSearchInitialSuggestionsView.init(suggestions:isExpanded:style:selectionHandler:expandingAnimation:onAppearHandler:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  return result;
}

uint64_t PhotosSearchInitialSuggestionsView.body.getter@<X0>(const void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v80 - v4);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91648);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v7);
  v8 = sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v97 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_1(&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C1264160();
  v13 = OUTLINED_FUNCTION_0_20(v12, &__dst[6]);
  v93 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91650);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91658);
  OUTLINED_FUNCTION_0_20(v23, v110);
  v85 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91660);
  OUTLINED_FUNCTION_0_20(v28, &v111);
  v87 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91668);
  OUTLINED_FUNCTION_0_20(v32, &v112);
  v90 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91670);
  OUTLINED_FUNCTION_0_20(v36, &v113);
  v91 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91678);
  OUTLINED_FUNCTION_0_20(v40, &v114);
  v94 = v41;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v43);
  memcpy(__dst, v98, sizeof(__dst));
  if (LOBYTE(__dst[3]) > 1u)
  {
    if (__dst[1])
    {
      v106 = sub_1C1263AB0();
      v107 = 0x4020000000000000;
      v108 = 0;
      sub_1C10228C4();
    }

    else
    {
      v106 = sub_1C1265960();
      v107 = v72;
      sub_1C1046AD4();
    }

    *v5 = sub_1C1265A70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91688);

    sub_1C1046C78(__dst);

    v73 = swift_allocObject();
    memcpy((v73 + 16), __dst, 0x50uLL);
    v74 = (v5 + *(v2 + 36));
    *v74 = sub_1C1046F80;
    v74[1] = v73;
    v74[2] = 0;
    v74[3] = 0;
    sub_1C1046F84(v5, v105);
    swift_storeEnumTagMultiPayload();
    sub_1C1046FF4(__dst, &v106);
    v75 = OUTLINED_FUNCTION_4_17(&qword_1EBE91690, &qword_1EBE91650);
    v106 = v17;
    v107 = v75;
    v76 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v76, v110);
    v77 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v77, &v111);
    v78 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v78, &v112);
    v79 = OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_13(v79, &v113);
    OUTLINED_FUNCTION_3_18();
    sub_1C104702C();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v5, &qword_1EBE91640);
  }

  else
  {
    v82 = LOBYTE(__dst[3]);
    v84 = v8;
    v98 = a1;
    v81 = __dst[2];
    v44 = sub_1C1264420();
    MEMORY[0x1EEE9AC00](v44);
    *(&v80 - 2) = __dst;
    v83 = sub_1C104702C();
    sub_1C1262950();
    v45 = OUTLINED_FUNCTION_4_17(&qword_1EBE91690, &qword_1EBE91650);
    sub_1C1264CC0();
    (*(v19 + 8))(v22, v17);
    sub_1C1264140();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A3440;
    v47 = sub_1C1264440();
    *(inited + 32) = v47;
    v48 = sub_1C1264420();
    *(inited + 33) = v48;
    sub_1C1264430();
    sub_1C1264430();
    if (sub_1C1264430() != v47)
    {
      sub_1C1264430();
    }

    sub_1C1264430();
    if (sub_1C1264430() != v48)
    {
      sub_1C1264430();
    }

    v106 = v17;
    v107 = v45;
    v49 = OUTLINED_FUNCTION_3_18();
    v50 = v86;
    v51 = v99;
    sub_1C1264C50();
    OUTLINED_FUNCTION_8_11();
    v52(v16, v95);
    OUTLINED_FUNCTION_8_11();
    v53(v27, v51);
    sub_1C1265BA0();
    v106 = v51;
    v107 = v49;
    v54 = OUTLINED_FUNCTION_3_18();
    v55 = v88;
    v56 = v100;
    sub_1C1264CF0();
    OUTLINED_FUNCTION_8_11();
    v57(v50, v56);
    v58 = sub_1C1264460();
    v59 = v96;
    sub_1C1263DF0();
    v106 = v56;
    v107 = v54;
    v60 = OUTLINED_FUNCTION_3_18();
    v61 = v89;
    v62 = v101;
    MEMORY[0x1C68EE480](v58, v81, 0, v59, v101, v60);
    OUTLINED_FUNCTION_8_11();
    v63(v59, v84);
    OUTLINED_FUNCTION_8_11();
    v64(v55, v62);
    v106 = v62;
    v107 = v60;
    v65 = OUTLINED_FUNCTION_3_18();
    v66 = v92;
    v67 = v102;
    sub_1C1264B70();
    OUTLINED_FUNCTION_8_11();
    v68(v61, v67);
    v69 = v94;
    v70 = v103;
    (*(v94 + 16))(v105, v66, v103);
    swift_storeEnumTagMultiPayload();
    v106 = v67;
    v107 = v65;
    OUTLINED_FUNCTION_3_18();
    sub_1C1263C20();
    return (*(v69 + 8))(v66, v70);
  }
}

unint64_t sub_1C1046AD4()
{
  result = qword_1EBE91680;
  if (!qword_1EBE91680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91680);
  }

  return result;
}

uint64_t sub_1C1046B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 8))
    {
      v8 = sub_1C1263AB0();
      v9 = 0x4020000000000000;
      v10 = 0;
      sub_1C10228C4();
    }

    else
    {
      v8 = sub_1C1265960();
      v9 = v4;
      sub_1C1046AD4();
    }
  }

  else
  {
    v8 = sub_1C12638E0();
    v9 = 0x4020000000000000;
    v10 = 0;
    sub_1C1022918();
  }

  *a2 = sub_1C1265A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91688);

  sub_1C1046C78(a1);

  v5 = swift_allocObject();
  memcpy((v5 + 16), a1, 0x50uLL);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640) + 36));
  *v6 = sub_1C1049C70;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = 0;
  return sub_1C1046FF4(a1, &v8);
}

uint64_t sub_1C1046C78(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 24);

  if (v4 == 2 && v3 == 0)
  {
    v2 = sub_1C119103C(v2);
  }

  sub_1C11E3DB0(v2);
  v7 = v6;

  v12 = v7;
  swift_getKeyPath();
  v8 = swift_allocObject();
  memcpy((v8 + 16), a1, 0x50uLL);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C104930C;
  *(v9 + 24) = v8;
  sub_1C1046FF4(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE916C0);
  sub_1C0FDB6D4(&qword_1EBE91780, &qword_1EBE91778);
  sub_1C10471F4();
  return sub_1C1265680();
}

void *sub_1C1046E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  sub_1C0FDB0A8(a2, v17);
  *(&v17[2] + 1) = v7;
  *&v17[3] = v8;
  *(&v17[3] + 1) = swift_getKeyPath();
  memset(&v17[4], 0, 35);
  *(&v17[6] + 1) = a1;
  v9 = *(a3 + 8);
  memcpy(__dst, v17, sizeof(__dst));
  if (*(a3 + 24) != 2 || *(a3 + 16) || (v9 & 1) != 0)
  {
    sub_1C0FCF1B4(v7);
    goto LABEL_7;
  }

  sub_1C0FCF1B4(v7);

  v11 = *(sub_1C119103C(v10) + 16);

  v12 = 30.0;
  if (v11 - 1 != a1)
  {
LABEL_7:
    v12 = 0.0;
  }

  v13 = *(a3 + 48);
  if (v13)
  {
    v14 = v13(a1, *(*a3 + 16));
  }

  else
  {
    v14 = 0;
  }

  if (v9)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  result = memcpy(a4, __dst, 0x70uLL);
  *(a4 + 112) = v15;
  *(a4 + 120) = 0;
  *(a4 + 128) = v12;
  *(a4 + 136) = v14;
  *(a4 + 144) = v9;
  return result;
}

uint64_t sub_1C1046F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C104702C()
{
  result = qword_1EBE91698;
  if (!qword_1EBE91698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91640);
    sub_1C10470B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91698);
  }

  return result;
}

unint64_t sub_1C10470B8()
{
  result = qword_1EBE916A0;
  if (!qword_1EBE916A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91688);
    sub_1C0FDB6D4(&unk_1EDE7C000, qword_1EBE90EF8);
    sub_1C1047170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916A0);
  }

  return result;
}

unint64_t sub_1C1047170()
{
  result = qword_1EBE916A8;
  if (!qword_1EBE916A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916B0);
    sub_1C10471F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916A8);
  }

  return result;
}

unint64_t sub_1C10471F4()
{
  result = qword_1EBE916B8;
  if (!qword_1EBE916B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916C0);
    sub_1C10472AC();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916B8);
  }

  return result;
}

unint64_t sub_1C10472AC()
{
  result = qword_1EBE916C8;
  if (!qword_1EBE916C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916D0);
    sub_1C1047338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916C8);
  }

  return result;
}

unint64_t sub_1C1047338()
{
  result = qword_1EBE916D8;
  if (!qword_1EBE916D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916E0);
    sub_1C10473C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916D8);
  }

  return result;
}

unint64_t sub_1C10473C4()
{
  result = qword_1EBE916E8;
  if (!qword_1EBE916E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE916F0);
    sub_1C104747C();
    sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916E8);
  }

  return result;
}

unint64_t sub_1C104747C()
{
  result = qword_1EBE916F8;
  if (!qword_1EBE916F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE916F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSearchInitialSuggestionsViewStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PhotosSearchInitialSuggestionsViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C10475A4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C10475BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C10475E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C1047628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1047688()
{
  result = qword_1EBE91700;
  if (!qword_1EBE91700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91650);
    sub_1C0FDB6D4(&qword_1EBE91690, &qword_1EBE91650);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C104702C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91700);
  }

  return result;
}

uint64_t sub_1C1047898(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 99))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C10478D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1047964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91710);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v5 = sub_1C1264420();
  *(inited + 32) = v5;
  v6 = sub_1C1264440();
  *(inited + 33) = v6;
  v7 = sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v5)
  {
    v7 = sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v6)
  {
    v7 = sub_1C1264430();
  }

  *v3 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91718);
  sub_1C1047B2C(v0, &v3[*(v8 + 44)]);
  sub_1C0FDB6D4(&qword_1EBE91720, &qword_1EBE91710);
  sub_1C1264DF0();
  return sub_1C0FAF7A8(v3);
}

uint64_t sub_1C1047B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  ButtonStyle = type metadata accessor for SuggestedQueryButtonStyle();
  MEMORY[0x1EEE9AC00](ButtonStyle);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C1263320();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91728);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91730);
  v52 = *(v54 - 8);
  v13 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47[-v15];
  sub_1C10481FC(a1, __src);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x63uLL);
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91738);
  sub_1C1048274();
  sub_1C1265480();
  sub_1C1265160();
  v18 = sub_1C12651E0();

  v19 = *(v7 + 28);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1C12639D0();
  (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  v27 = sub_1C12659A0();
  v29 = v28;
  v30 = &v12[*(v10 + 36)];
  sub_1C1048300(v9, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91748) + 36));
  *v31 = v18;
  v31[1] = 0x4014000000000000;
  v31[2] = 0;
  v31[3] = 0;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE931D0) + 36)) = xmmword_1C12A9D40;
  v32 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92ED0) + 36));
  *v32 = v27;
  v32[1] = v29;
  sub_1C1048448(v9, MEMORY[0x1E697EAF0]);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  sub_1C1048364();
  sub_1C1049540(&qword_1EBE91768, type metadata accessor for SuggestedQueryButtonStyle);
  sub_1C1264A00();
  sub_1C1048448(v5, type metadata accessor for SuggestedQueryButtonStyle);
  sub_1C0FD1A5C(v12, &qword_1EBE91728);
  v33 = sub_1C1265170();
  sub_1C12659A0();
  sub_1C1262C80();
  v51 = __src[0];
  v50 = LOBYTE(__src[1]);
  v49 = __src[2];
  v48 = LOBYTE(__src[3]);
  v34 = __src[4];
  v35 = __src[5];
  v37 = v52;
  v36 = v53;
  v38 = *(v52 + 16);
  v39 = v16;
  v40 = v16;
  v41 = v54;
  v38(v53, v40, v54);
  v42 = v55;
  v38(v55, v36, v41);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91770) + 48)];
  v44 = v51;
  *v43 = v33;
  *(v43 + 1) = v44;
  v43[16] = v50;
  *(v43 + 3) = v49;
  v43[32] = v48;
  *(v43 + 5) = v34;
  *(v43 + 6) = v35;
  v45 = *(v37 + 8);

  v45(v39, v41);

  return (v45)(v36, v41);
}

uint64_t sub_1C10480B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 string];

  sub_1C1265EA0();
  sub_1C0FDB9AC();
  v7 = sub_1C12648F0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;
  result = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 49) = 257;
  return result;
}

uint64_t type metadata accessor for SuggestedQueryButtonStyle()
{
  result = qword_1EBE91788;
  if (!qword_1EBE91788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1048234()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1(v0 + 16);
  }

  return result;
}

unint64_t sub_1C1048274()
{
  result = qword_1EBE91740;
  if (!qword_1EBE91740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91738);
    sub_1C0FFC6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91740);
  }

  return result;
}

uint64_t sub_1C1048300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263320();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1048364()
{
  result = qword_1EBE91750;
  if (!qword_1EBE91750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91728);
    sub_1C0FDB6D4(&qword_1EBE91758, &qword_1EBE91760);
    sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91750);
  }

  return result;
}

uint64_t sub_1C1048448(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C10484A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v113 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1263B20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1264060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917B0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v100 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917B8);
  MEMORY[0x1EEE9AC00](v101);
  v17 = &v100 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917C0);
  MEMORY[0x1EEE9AC00](v102);
  *&v107 = &v100 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917C8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917D0);
  MEMORY[0x1EEE9AC00](v105);
  v110 = &v100 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917D8);
  MEMORY[0x1EEE9AC00](v104);
  v109 = &v100 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917E0);
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v100 - v22;
  v112 = a1;
  sub_1C1264070();
  sub_1C1263B10();
  sub_1C1049540(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
  sub_1C1049540(&qword_1EBE917E8, MEMORY[0x1E697C5D0]);
  sub_1C12649A0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v23 = sub_1C1264530();
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F0) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  *&v15[*(v13 + 44)] = sub_1C1263E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  inited = swift_initStackObject();
  v100 = xmmword_1C12A3440;
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(v7) = sub_1C12644A0();
  *(inited + 32) = v7;
  v27 = sub_1C12644C0();
  *(inited + 33) = v27;
  v28 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v7)
  {
    v28 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v27)
  {
    v28 = sub_1C12644B0();
  }

  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1C1012024(v15, v17, &qword_1EBE917B0);
  v37 = &v17[*(v101 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = swift_initStackObject();
  *(v38 + 16) = v100;
  v39 = sub_1C1264480();
  *(v38 + 32) = v39;
  v40 = sub_1C1264490();
  *(v38 + 33) = v40;
  v41 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v39)
  {
    v41 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v40)
  {
    v41 = sub_1C12644B0();
  }

  sub_1C12628A0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v107;
  sub_1C1012024(v17, v107, &qword_1EBE917B8);
  v51 = v50 + *(v102 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = sub_1C10490FC();
  v53 = sub_1C1264470();
  v54 = swift_getKeyPath();
  v55 = v106;
  v56 = &v106[*(v103 + 36)];
  v57 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91800) + 36)];
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91808) + 28);
  sub_1C12658D0();
  v59 = sub_1C1265900();
  __swift_storeEnumTagSinglePayload(v57 + v58, 0, 1, v59);
  *v57 = v54;
  *v56 = 0x4049000000000000;
  *(v56 + 1) = v52;
  v56[16] = v53;
  v60 = sub_1C12659A0();
  v62 = v61;
  v63 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91810) + 36)];
  *v63 = v60;
  v63[1] = v62;
  sub_1C1012024(v50, v55, &qword_1EBE917C0);
  if (sub_1C1264080())
  {
    v64 = 0.75;
  }

  else
  {
    v64 = 1.0;
  }

  v65 = v110;
  sub_1C1012024(v55, v110, &qword_1EBE917C8);
  *(v65 + *(v105 + 36)) = v64;
  v66 = v109;
  v67 = &v109[*(v104 + 36)];
  v68 = v113;
  v69 = *(v113 + 20);
  v70 = *MEMORY[0x1E697F468];
  v71 = sub_1C12639D0();
  v72 = *(*(v71 - 8) + 104);
  v72(&v67[v69], v70, v71);
  __asm { FMOV            V0.2D, #16.0 }

  v107 = _Q0;
  *v67 = _Q0;
  *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)] = 256;
  sub_1C1012024(v65, v66, &qword_1EBE917D0);
  v78 = sub_1C1265A60();
  v79 = sub_1C1264080();
  v80 = v111;
  sub_1C1012024(v66, v111, &qword_1EBE917D8);
  v81 = v80 + *(v108 + 36);
  *v81 = v78;
  *(v81 + 8) = v79 & 1;
  v82 = *(v68 + 20);
  v83 = v114;
  v72(&v114[v82], v70, v71);
  *v83 = v107;
  sub_1C1265190();
  sub_1C1048FB0();
  v84 = sub_1C12651E0();

  sub_1C1262B10();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91818);
  v86 = v115;
  v87 = v115 + *(v85 + 36);
  sub_1C1048300(v83, v87);
  v88 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91820) + 36);
  v89 = v117;
  *v88 = v116;
  *(v88 + 16) = v89;
  *(v88 + 32) = v118;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91828);
  *(v87 + *(v90 + 52)) = v84;
  *(v87 + *(v90 + 56)) = 256;
  v91 = sub_1C12659A0();
  v93 = v92;
  sub_1C1048448(v83, MEMORY[0x1E697EAF0]);
  v94 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91830) + 36));
  *v94 = v91;
  v94[1] = v93;
  v95 = sub_1C12659A0();
  v97 = v96;
  v98 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91838) + 36));
  *v98 = v95;
  v98[1] = v97;
  return sub_1C1012024(v80, v86, &qword_1EBE917E0);
}

double sub_1C1048FB0()
{
  v0 = sub_1C12629F0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1C0FD7494(&v10 - v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E697DBB8], v0);
  v7 = sub_1C12629D0();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 0.2;
  if (v7)
  {
    return 0.36;
  }

  return result;
}

uint64_t sub_1C10490FC()
{
  v0 = sub_1C12629F0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1C1265190();
  sub_1C0FD7494(v6);
  (*(v1 + 104))(v4, *MEMORY[0x1E697DBB8], v0);
  sub_1C12629D0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  v8 = sub_1C12651E0();

  return v8;
}

uint64_t sub_1C1049274()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return swift_deallocObject();
}

void sub_1C1049378()
{
  sub_1C1011E54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C10493E4()
{
  result = qword_1EBE91798;
  if (!qword_1EBE91798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917A0);
    sub_1C0FDB6D4(&qword_1EBE91720, &qword_1EBE91710);
    sub_1C1049540(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91798);
  }

  return result;
}

unint64_t sub_1C10494D0()
{
  result = qword_1EBE917A8;
  if (!qword_1EBE917A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE917A8);
  }

  return result;
}

uint64_t sub_1C1049540(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1049588()
{
  result = qword_1EBE98310;
  if (!qword_1EBE98310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE98310);
  }

  return result;
}

unint64_t sub_1C10495CC()
{
  result = qword_1EBE91840;
  if (!qword_1EBE91840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91818);
    sub_1C1049684();
    sub_1C0FDB6D4(&qword_1EBE91898, &qword_1EBE91838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91840);
  }

  return result;
}

unint64_t sub_1C1049684()
{
  result = qword_1EBE91848;
  if (!qword_1EBE91848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917E0);
    sub_1C104973C();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91848);
  }

  return result;
}

unint64_t sub_1C104973C()
{
  result = qword_1EBE91850;
  if (!qword_1EBE91850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917D8);
    sub_1C10497F4();
    sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91850);
  }

  return result;
}

unint64_t sub_1C10497F4()
{
  result = qword_1EBE91858;
  if (!qword_1EBE91858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917D0);
    sub_1C1049880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91858);
  }

  return result;
}

unint64_t sub_1C1049880()
{
  result = qword_1EBE91860;
  if (!qword_1EBE91860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917C8);
    sub_1C1049938();
    sub_1C0FDB6D4(&qword_1EBE91890, &qword_1EBE91810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91860);
  }

  return result;
}

unint64_t sub_1C1049938()
{
  result = qword_1EBE91868;
  if (!qword_1EBE91868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917C0);
    sub_1C10499C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91868);
  }

  return result;
}

unint64_t sub_1C10499C4()
{
  result = qword_1EBE91870;
  if (!qword_1EBE91870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917B8);
    sub_1C1049A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91870);
  }

  return result;
}

unint64_t sub_1C1049A50()
{
  result = qword_1EBE91878;
  if (!qword_1EBE91878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917B0);
    sub_1C1049B08();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91878);
  }

  return result;
}

unint64_t sub_1C1049B08()
{
  result = qword_1EBE91880;
  if (!qword_1EBE91880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917F0);
    sub_1C1264060();
    sub_1C1263B20();
    sub_1C1049540(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
    sub_1C1049540(&qword_1EBE917E8, MEMORY[0x1E697C5D0]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91880);
  }

  return result;
}

void sub_1C1049C7C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  OUTLINED_FUNCTION_28_4("OneUpTrashButton");
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_53_0();
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v18);
  OUTLINED_FUNCTION_84(xmmword_1C12AA3C0);
  OUTLINED_FUNCTION_117(64);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v0[15] = v1;
  v0[16] = v2;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_4_18(v19);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C1049E88()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_53_0();
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v18);
  OUTLINED_FUNCTION_84(xmmword_1C12AA3D0);
  OUTLINED_FUNCTION_117(49);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v0[15] = v1;
  v0[16] = v2;
  OUTLINED_FUNCTION_20_11();
  *(v0 + v19) = xmmword_1C12AA3E0;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A08C()
{
  OUTLINED_FUNCTION_23();
  v34 = v3;
  OUTLINED_FUNCTION_52_0();
  v4 = sub_1C1263A50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_116();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v11 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v35 = v12;
  v36 = v11;
  v13 = OUTLINED_FUNCTION_24_5();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BE0);
  *(swift_allocObject() + 16) = xmmword_1C12A8B40;
  sub_1C1263A40();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_128(v17);
  sub_1C1266870();
  (*(v5 + 16))(v8, v1, v4);
  if (v34)
  {
    v18 = 0x69662E7472616568;
  }

  else
  {
    v18 = 0x7472616568;
  }

  if (v34)
  {
    v19 = 0xEA00000000006C6CLL;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  if (v34)
  {
    v20 = 49;
  }

  else
  {
    v20 = 48;
  }

  v21 = OUTLINED_FUNCTION_82();
  v22(v21, v4);
  v23 = type metadata accessor for OneUpBarButton();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_92(KeyPath);
  v25 = v23[17];
  *(v0 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v28);
  v29 = v0 + v23[21];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  v30 = v0 + v23[22];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v31);
  *(v0 + 88) = v18;
  *(v0 + 96) = v19;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 16) = 48;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 120) = v36;
  *(v0 + 128) = v35;
  (*(v5 + 32))(v0 + v23[12], v8, v4);
  v32 = (v0 + v23[13]);
  *v32 = v20;
  v32[1] = 0xE100000000000000;
  v33 = (v0 + v23[14]);
  *v33 = 0xD000000000000013;
  v33[1] = 0x80000001C12AB9A0;
  OUTLINED_FUNCTION_12_9(v23[15]);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A4B8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_28_4("square.and.arrow.up");
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_41_2();
  v20 = v5;
  v6 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v7, v8);
  v9 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_53_0();
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v12);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v17);
  *(v0 + 96) = v21;
  *(v0 + 104) = 0;
  *(v0 + 16) = 32;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000013;
  OUTLINED_FUNCTION_74();
  *v19 = v18;
  v19[1] = v20;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A6E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_28_4("slider.horizontal.3");
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_53_0();
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v18);
  *(v0 + 96) = v20;
  *(v0 + 104) = 0;
  *(v0 + 16) = 65;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000013;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  OUTLINED_FUNCTION_20_11();
  *(v0 + v19) = xmmword_1C12AA3F0;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A908()
{
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_91();
  v9 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_90();
  v13 = type metadata accessor for OneUpBarButton();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    v16 = 0xD000000000000012;
  }

  else
  {
    v16 = 0x7568742E646E6168;
  }

  if ((v4 & 1) == 0)
  {
    v15 = 0xED0000707573626DLL;
  }

  v37 = v15;
  v38 = v16;
  v39 = ~v4;
  v36 = (v4 & 1) == 0;
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v17 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v34 = v18;
  v35 = v17;
  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v21, &unk_1EBE91920);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_71();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(KeyPath);
  v23 = *(v13 + 68);
  *(v1 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v29);
  *(v1 + 96) = v37;
  *(v1 + 104) = 0;
  *(v1 + 16) = v36;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = v38;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = v35;
  *(v1 + 128) = v34;
  OUTLINED_FUNCTION_112();
  *(v1 + v30) = xmmword_1C12AA400;
  OUTLINED_FUNCTION_24_3(v1 + *(v13 + 60));
  if (v39)
  {
    OUTLINED_FUNCTION_103();
  }

  else
  {
    sub_1C1263A20();
  }

  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v31, v32);
  sub_1C1264DA0();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v1, v33);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104AD04()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_4(v7, v59);
  v8 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v12 = type metadata accessor for OneUpBarButton();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v14 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  if ((v3 & 1) == 0)
  {

    sub_1C1266420();
    v62 = v10;
    v37 = v8;
    v38 = sub_1C1264410();
    OUTLINED_FUNCTION_78();

    v8 = v37;
    v10 = v62;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v39 = OUTLINED_FUNCTION_96();
    sub_1C0FA03F4(v39, v40);
    (*(v16 + 8))(v20, v14);
    if ((v64 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_104();
    v41 = static String.photosSwiftUICoreLocalized(_:)(v1);
    (*(v10 + 8))(v1, v8);
    sub_1C1263A50();
    OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v44, &unk_1EBE91920);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_51_0();
    sub_1C1266870();
    OUTLINED_FUNCTION_19_7();
    v46 = v0 + v45;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_36_4(KeyPath);
    *(v0 + v46) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_85();
    v48 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_5(v48);
    v49 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_4(v49);
    v50 = swift_getKeyPath();
    OUTLINED_FUNCTION_32_3(v50);
    v51 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_4(v51);
    v52 = swift_getKeyPath();
    OUTLINED_FUNCTION_37_3(v52);
    v53 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v53);
    *(v0 + 88) = xmmword_1C12AA410;
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 16) = 16;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 120) = v41;
    goto LABEL_6;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_104();
  v21 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v60 = v22;
  v61 = v21;
  v23 = *(v10 + 8);
  v23(v1, v8);
  OUTLINED_FUNCTION_104();
  v24 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v23(v1, v8);
  sub_1C1263A50();
  OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v27, &unk_1EBE91920);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_44_3();
  sub_1C1266870();
  OUTLINED_FUNCTION_19_7();
  v29 = v0 + v28;
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(v30);
  *(v0 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_83(v36);
  *(v0 + 16) = 16;
  *(v0 + 72) = v61;
  *(v0 + 80) = v60;
  *(v0 + 64) = 0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 120) = v24;
LABEL_6:
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_30_3();
  *v55 = 0xD000000000000017;
  v55[1] = v54;
  OUTLINED_FUNCTION_24_3(v0 + *(v12 + 60));
  sub_1C1057EB8(v0, v63);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v56, v57);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v0, v58);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104B328()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_4(v10, v68);
  v11 = type metadata accessor for OneUpBarButton();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_116();
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if (!__OFADD__(v8, v6))
      {
        if (v8 + v6)
        {
          v23 = 16;
        }

        else
        {
          v23 = 17;
        }

        v24 = OUTLINED_FUNCTION_94();
        v26 = sub_1C104B974(v24, v25);
        v71 = v27;
        v73 = v26;
        sub_1C1263A50();
        OUTLINED_FUNCTION_1_15();
        sub_1C105AAA8(v28, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
        OUTLINED_FUNCTION_0_21();
        sub_1C0FDB6D4(v30, &unk_1EBE91920);
        OUTLINED_FUNCTION_44_3();
        sub_1C1266870();
        OUTLINED_FUNCTION_113();
        KeyPath = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(KeyPath);
        v32 = v11[17];
        *(v0 + v32) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
        swift_storeEnumTagMultiPayload();
        v33 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v33);
        v34 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v34);
        v35 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v35);
        v36 = swift_getKeyPath();
        OUTLINED_FUNCTION_49_0(v36);
        v37 = swift_getKeyPath();
        OUTLINED_FUNCTION_50_0(v37);
        v38 = swift_getKeyPath();
        *&v39 = OUTLINED_FUNCTION_38_4(v38);
        *(v0 + 88) = v39;
        *(v0 + 104) = v39;
        *(v0 + 16) = v23;
LABEL_25:
        OUTLINED_FUNCTION_41_2();
        *(v0 + 72) = v73;
        *(v0 + 80) = v71;
        *(v0 + 64) = 0;
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = 0;
        v62 = (v0 + v11[13]);
        *v62 = 0;
        v62[1] = 0;
        v63 = (v0 + v11[14]);
        *v63 = 0xD000000000000012;
        v63[1] = v64;
        OUTLINED_FUNCTION_24_3(v0 + v11[15]);
        sub_1C1057EB8(v0, v75);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_2_19();
        sub_1C105AAA8(v65, v66);
        OUTLINED_FUNCTION_88();
        sub_1C1263C20();
        OUTLINED_FUNCTION_3_19();
        sub_1C105AAF0(v0, v67);
        OUTLINED_FUNCTION_22_0();
        return;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v72 = v19;
    v74 = v18;

    sub_1C1266420();
    v40 = sub_1C1264410();
    OUTLINED_FUNCTION_76();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v4, 0);
    (*(v72 + 8))(v22, v74);
    if ((v76 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (!__OFADD__(v8, v6))
  {
    v41 = OUTLINED_FUNCTION_94();
    v43 = sub_1C104B974(v41, v42);
    v71 = v44;
    v73 = v43;
    v46 = v8 > 0 || v6 > 0;
    v47 = !v46;
    v48 = 0x6275622E74786574;
    if (!v47)
    {
      v48 = 0xD000000000000010;
    }

    v69 = v48;
    if (v47)
    {
      v49 = 0xEB00000000656C62;
    }

    else
    {
      v49 = 0x80000001C126A910;
    }

    if (v8 + v6)
    {
      v50 = 16;
    }

    else
    {
      v50 = 17;
    }

    v70 = v50;
    sub_1C1263A50();
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v51, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v53, &unk_1EBE91920);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_72();
    v54 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v54);
    v55 = v11[17];
    *(v15 + v55) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    OUTLINED_FUNCTION_107();
    v56 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v56);
    v57 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v57);
    v58 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v58);
    v59 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v59);
    v60 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v60);
    v61 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v61);
    *(v15 + 88) = v69;
    *(v15 + 96) = v49;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    v0 = v15;
    *(v15 + 16) = v70;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C104B974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265E50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a1 < 1)
  {
    if (a2 < 1)
    {
      sub_1C1265DF0();
      goto LABEL_7;
    }

    sub_1C1265E20();
    sub_1C1265E10();
    v12 = a2;
  }

  else
  {
    sub_1C1265E20();
    sub_1C1265E10();
    v12 = a1;
    if (a2 >= 1)
    {
      sub_1C1265E00();
      sub_1C1265E10();
      v12 = a2;
    }
  }

  sub_1C1265E00();
  sub_1C1265E10();
  sub_1C1265E40();
LABEL_7:
  v9 = static String.photosSwiftUICoreLocalized(_:)(v7);
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_1C104BC24()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v72 = v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_4(v9, v66);
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v68 = v11;
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v12 = type metadata accessor for OneUpBarButton();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v20 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v26 = v25 - v24;
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if (v6)
      {
        v27 = 112;
      }

      else
      {
        v27 = 97;
      }

      LODWORD(v67) = v27;
      sub_1C1265DF0();
      v66 = static String.photosSwiftUICoreLocalized(_:)(v0);
      v29 = v28;
      (*(v68 + 8))(v0, v69);
      sub_1C1263A50();
      v73 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_15();
      sub_1C105AAA8(v30, v31);
      v32 = OUTLINED_FUNCTION_4_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_110(v33);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_19_7();
      v35 = (v19 + v34);
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_36_4(KeyPath);
      *&v35[v19] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_85();
      v37 = swift_getKeyPath();
      OUTLINED_FUNCTION_33_5(v37);
      v38 = swift_getKeyPath();
      OUTLINED_FUNCTION_34_4(v38);
      v39 = swift_getKeyPath();
      OUTLINED_FUNCTION_32_3(v39);
      v40 = swift_getKeyPath();
      OUTLINED_FUNCTION_31_4(v40);
      v41 = swift_getKeyPath();
      OUTLINED_FUNCTION_37_3(v41);
      v42 = swift_getKeyPath();
      *&v43 = OUTLINED_FUNCTION_38_4(v42);
      *(v19 + 88) = v43;
      *(v19 + 104) = v43;
      *(v19 + 16) = v67;
      *(v19 + 72) = v66;
      *(v19 + 80) = v29;
      *(v19 + 64) = 0;
      v44 = (v19 + 120);
      *v19 = 0;
      *(v19 + 8) = 0;
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C1266420();
    v45 = sub_1C1264410();
    v67 = v0;
    v46 = v6;
    v47 = v45;
    OUTLINED_FUNCTION_76();

    v6 = v46;
    v0 = v67;
    sub_1C12637D0();
    OUTLINED_FUNCTION_98();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v4, 0);
    (*(v22 + 8))(v26, v20);
    if ((v73 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v6)
  {
    v48 = 112;
  }

  else
  {
    v48 = 97;
  }

  sub_1C1263A50();
  v73 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v49, v50);
  v51 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v51);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_110(v52);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_113();
  v53 = (v16 + v12[16]);
  v54 = swift_getKeyPath();
  OUTLINED_FUNCTION_36_4(v54);
  *&v53[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v55 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v55);
  v56 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v56);
  v57 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v57);
  v58 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v58);
  v59 = swift_getKeyPath();
  OUTLINED_FUNCTION_37_3(v59);
  v60 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v60);
  *(v16 + 88) = xmmword_1C12AA420;
  *(v16 + 104) = 0;
  *(v16 + 112) = 0;
  *(v16 + 16) = v48;
  v44 = (v16 + 120);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = 0;
  v19 = v16;
LABEL_12:
  *v44 = 0;
  v44[1] = 0;
  v61 = (v19 + v12[13]);
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = (v19 + v12[14]);
  *v62 = 0xD00000000000001CLL;
  *(v62 + 1) = 0x80000001C12AB960;
  OUTLINED_FUNCTION_24_3(v19 + v12[15]);
  sub_1C1057EB8(v19, v71);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v63, v64);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v19, v65);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104C25C()
{
  OUTLINED_FUNCTION_23();
  v3 = v0;
  v129 = v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v121 = v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91950);
  OUTLINED_FUNCTION_0();
  v123 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v120 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v115 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91958);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v127 = v14;
  OUTLINED_FUNCTION_49();
  v15 = type metadata accessor for OneUpBarButton();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v115 - v21;
  v23 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_90();
  v27 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v124 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v125 = v31;
  (*(v29 + 8))(v2, v27);
  v32 = *(v3 + 64);
  v33 = *(v3 + 72);
  v117 = v3;
  v118 = v25;
  v34 = *(v3 + 80);
  v119 = v23;
  if (v34 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v35 = sub_1C1264410();
    v116 = v15;
    v36 = v23;
    v37 = v35;
    OUTLINED_FUNCTION_78();

    sub_1C12637D0();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();
    sub_1C0FF9034(v32, v33, 0);
    v15 = v116;
    (*(v25 + 8))(v1, v36);
    v33 = *(&v131 + 1);
    v32 = v131;
  }

  v38 = MEMORY[0x1E69E7CC0];
  if (!v32 || (v39 = swift_getObjectType(), v40 = (*(v33 + 280))(v39, v33), swift_unknownObjectRelease(), (v40 & 1) == 0))
  {
    OUTLINED_FUNCTION_41_2();
    v116 = v63;
    v64 = v117;
    sub_1C0FE5654(v117, v19 + 24, &unk_1EBE91960);
    sub_1C1263A50();
    *&v131 = v38;
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v65, v66);
    v67 = OUTLINED_FUNCTION_101();
    __swift_instantiateConcreteTypeFromMangledNameV2(v67);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v68, &unk_1EBE91920);
    OUTLINED_FUNCTION_44_3();
    sub_1C1266870();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(KeyPath);
    v70 = v15[17];
    *(v19 + v70) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v71 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v71);
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v73);
    v74 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v74);
    v75 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v75);
    v76 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v76);
    *(v19 + 88) = xmmword_1C12AA430;
    *(v19 + 104) = 0;
    *(v19 + 112) = 0;
    *(v19 + 16) = -2;
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 72) = 0;
    *(v19 + 80) = 0;
    *(v19 + 64) = 0;
    v77 = v125;
    *(v19 + 120) = v124;
    *(v19 + 128) = v77;
    v78 = (v19 + v15[13]);
    *v78 = 0;
    v78[1] = 0;
    v79 = (v19 + v15[14]);
    *v79 = 0xD000000000000012;
    v79[1] = v116;
    OUTLINED_FUNCTION_24_3(v19 + v15[15]);
    v80 = *(v64 + 40);
    v81 = *(v64 + 48);
    v82 = *(v64 + 56);
    if (v82 == 1)
    {
      swift_unknownObjectRetain();
      v83 = v81;
      v84 = v80;
    }

    else
    {

      sub_1C1266420();
      v85 = sub_1C1264410();
      OUTLINED_FUNCTION_78();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v86 = OUTLINED_FUNCTION_101();
      sub_1C0FF9034(v86, v87, 0);
      v88 = OUTLINED_FUNCTION_82();
      v89(v88);
      v83 = *(&v131 + 1);
      v84 = v131;
    }

    if (v84)
    {
      ObjectType = swift_getObjectType();
      LOBYTE(v131) = -47;
      v91 = (*(v83 + 16))(&v131, ObjectType, v83);
      swift_unknownObjectRelease();
      v92 = v91 ^ 1;
    }

    else
    {
      v92 = 0;
    }

    v93 = swift_getKeyPath();
    v94 = swift_allocObject();
    *(v94 + 16) = v92 & 1;
    v95 = v121;
    sub_1C1057CF0(v19, v121);
    v96 = (v95 + *(v130 + 36));
    *v96 = v93;
    v96[1] = sub_1C1023064;
    v96[2] = v94;
    if (v82)
    {
      swift_unknownObjectRetain();
      if (v80)
      {
LABEL_15:
        v97 = swift_getObjectType();
        (*(v81 + 40))(&v131, v97, v81);
        swift_unknownObjectRelease();
LABEL_18:
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE28);
        v102 = v120;
        v103 = v120 + *(v101 + 36);
        v104 = v132;
        *v103 = v131;
        *(v103 + 16) = v104;
        *(v103 + 32) = v133;
        *(v103 + 40) = 1;
        sub_1C0FE4040(v95, v102, &qword_1EBE8FE38);
        v106 = v122;
        v105 = v123;
        v107 = v128;
        (*(v123 + 32))(v122, v102, v128);
        v108 = OUTLINED_FUNCTION_101();
        v109(v108);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_19();
        sub_1C105AAA8(v110, v111);
        v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30);
        v113 = sub_1C1057D54();
        v114 = sub_1C1057E3C();
        *&v131 = v130;
        *(&v131 + 1) = v112;
        *&v132 = v113;
        *(&v132 + 1) = v114;
        OUTLINED_FUNCTION_29_3();
        swift_getOpaqueTypeConformance2();
        sub_1C1263C20();
        (*(v105 + 8))(v106, v107);
        goto LABEL_19;
      }
    }

    else
    {

      sub_1C1266420();
      v98 = sub_1C1264410();
      OUTLINED_FUNCTION_78();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v99 = OUTLINED_FUNCTION_101();
      sub_1C0FF9034(v99, v100, 0);
      (*(v118 + 8))(v1, v119);
      v81 = *(&v131 + 1);
      if (v131)
      {
        goto LABEL_15;
      }
    }

    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    goto LABEL_18;
  }

  sub_1C1263A50();
  *&v131 = v38;
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v41, v42);
  v43 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v43);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_110(v44);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_71();
  v45 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v45);
  v46 = v15[17];
  *&v22[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v47);
  v48 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v48);
  v49 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v49);
  v50 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v50);
  v51 = swift_getKeyPath();
  OUTLINED_FUNCTION_50_0(v51);
  v52 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v52);
  *(v22 + 88) = xmmword_1C12AA430;
  *(v22 + 13) = 0;
  *(v22 + 14) = 0;
  v22[16] = -47;
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 9) = 0;
  *(v22 + 10) = 0;
  *(v22 + 8) = 0;
  v53 = v125;
  *(v22 + 15) = v124;
  *(v22 + 16) = v53;
  OUTLINED_FUNCTION_112();
  v55 = &v22[v54];
  *v55 = 0xD000000000000012;
  *(v55 + 1) = 0x80000001C12AA7A0;
  v56 = &v22[v15[15]];
  *v56 = 0;
  v56[8] = 1;
  sub_1C1057EB8(v22, v127);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v57, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30);
  v60 = sub_1C1057D54();
  v61 = sub_1C1057E3C();
  *&v131 = v130;
  *(&v131 + 1) = v59;
  *&v132 = v60;
  *(&v132 + 1) = v61;
  OUTLINED_FUNCTION_29_3();
  swift_getOpaqueTypeConformance2();
  sub_1C1263C20();
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v22, v62);
LABEL_19:
  OUTLINED_FUNCTION_22_0();
}