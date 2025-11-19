char *sub_20BB613CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_20BB614FC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(sub_20C135C84() - 8) + 72) * result;

  return sub_20B747A04(v6, a4);
}

void sub_20BB61618(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F2F52C0](a1, a2, v9);
      sub_20B51C88C(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_20B51C88C(0, a5);
    if (sub_20C13DB14() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_20C13DB24();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_20C13D5E4();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_20C13D5F4();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_20BB61860@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_20BB6194C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_20C1332B4();

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BB619F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC40);

  return sub_20C137C94();
}

void sub_20BB61AA0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);
  sub_20B71C190(v6, 0);
}

uint64_t sub_20BB61B30(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20BB61B80(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20BB61BD4(uint64_t a1)
{
  v2 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C764020);
    sub_20BB61F2C();
    sub_20C13CFF4();
    result = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v24 = result;
  while (result < 0)
  {
    v18 = sub_20C13DB64();
    if (!v18 || (v32 = v18, sub_20B51C88C(0, &qword_27C764020), swift_dynamicCast(), v17 = *&v25[0], v15 = v6, v16 = v7, !*&v25[0]))
    {
LABEL_25:
      sub_20B583EDC();
      return v11;
    }

LABEL_19:
    v32 = v17;
    sub_20BB5A08C(&v32, v25);
    if (v2)
    {

      sub_20B583EDC();

      return v11;
    }

    v19 = v26;
    if (v26 != 255)
    {
      v22 = v25[1];
      v23 = v25[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_20BC07FA0(0, *(v11 + 2) + 1, 1, v11);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      if (v21 >= v20 >> 1)
      {
        v11 = sub_20BC07FA0((v20 > 1), v21 + 1, 1, v11);
      }

      *(v11 + 2) = v21 + 1;
      v12 = &v11[40 * v21];
      *(v12 + 2) = v23;
      *(v12 + 3) = v22;
      v12[64] = v19 & 1;
    }

    result = v24;
    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(result + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20BB61F2C()
{
  result = qword_27C764028;
  if (!qword_27C764028)
  {
    sub_20B51C88C(255, &qword_27C764020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764028);
  }

  return result;
}

uint64_t sub_20BB61F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB62004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB58AD8(a1, v4, v5, v6);
}

uint64_t sub_20BB62100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BB621EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BB6224C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BB58540(a1, v5, v4);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20BB623C0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 24 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FilterResultUpdated()
{
  result = qword_27C76B018;
  if (!qword_27C76B018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB624D8()
{
  result = sub_20C134EC4();
  if (v1 <= 0x3F)
  {
    result = sub_20C133E24();
    if (v2 <= 0x3F)
    {
      result = sub_20C135524();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20BB62574@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B110);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfTitleViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B110);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B080);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B110);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ShelfTitleView(0);
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B110);
  return swift_endAccess();
}

uint64_t sub_20BB627EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B108);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfSeparatorViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B108);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A20);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B108);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ShelfSeparatorView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B108);
  return swift_endAccess();
}

uint64_t sub_20BB62A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B100);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfListFooterViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B100);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B098);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B100);
  if (qword_27C760C70 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ShelfListFooterView();

  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B100);
  return swift_endAccess();
}

uint64_t sub_20BB62D04@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0F8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfLargeTitleViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B0F8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A10);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B0F8);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TVShelfLargeTitleView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B0F8);
  return swift_endAccess();
}

uint64_t sub_20BB62F74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfFadingLargeTitleViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B0F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0B0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B0F0);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TVShelfFadingLargeTitleView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B0F0);
  return swift_endAccess();
}

uint64_t sub_20BB631E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0E8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvOpenInMusicViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B0E8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A00);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B0E8);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TVOpenInMusicView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B0E8);
  return swift_endAccess();
}

uint64_t sub_20BB63454@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfSubheaderViewRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B0E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0C8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B0E0);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TVShelfSubHeaderView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B0E0);
  return swift_endAccess();
}

uint64_t sub_20BB636C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0D8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfHeaderAnnotatedTitleRegistration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C76B0D8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7729F0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20B520158(v8, &qword_27C76B0D8);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TVShelfHeaderAnnotatedTitleView();
  sub_20C13D2B4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B5DF2D4(v6, v1 + v9, &qword_27C76B0D8);
  return swift_endAccess();
}

uint64_t sub_20BB63934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for ShelfDiffableItemIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v10 = *(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource), v11 = Strong, v12 = v10, v11, !v10))
    {

      (*(v4 + 56))(v2, 1, 1, v3);
      return sub_20B520158(v2, &qword_27C762A90);
    }

    sub_20C13BF34();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_20B520158(v2, &qword_27C762A90);
    }

    sub_20BB6440C(v2, v6);
    ObjectType = swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v14 = result;
      v15 = *(v8 + 24);
      v16 = *&v6[*(v3 + 20)];
      v17 = *(result + 40);
      v18 = swift_unknownObjectRetain();
      v17(v18, v15, v16, ObjectType, v14);
      swift_unknownObjectRelease();
      swift_unknownObjectWeakLoadStrong();
      (*(v14 + 24))();

      return sub_20BB64470(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20BB63BE8()
{
  swift_unknownObjectRelease();
  MEMORY[0x20F2F6B80](v0 + 32);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfTitleViewRegistration, &qword_27C76B110);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfSeparatorViewRegistration, &qword_27C76B108);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfListFooterViewRegistration, &qword_27C76B100);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfLargeTitleViewRegistration, &qword_27C76B0F8);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfFadingLargeTitleViewRegistration, &qword_27C76B0F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvOpenInMusicViewRegistration, &qword_27C76B0E8);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfSubheaderViewRegistration, &qword_27C76B0E0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfHeaderAnnotatedTitleRegistration, &qword_27C76B0D8);
  return v0;
}

uint64_t sub_20BB63D10()
{
  sub_20BB63BE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShelfSupplementaryRegistrationProvider()
{
  result = qword_27C76B068;
  if (!qword_27C76B068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB63DBC()
{
  sub_20BB640C0(319, &qword_27C76B078, &qword_27C76B080);
  if (v0 <= 0x3F)
  {
    sub_20BB640C0(319, &qword_27C76B088, &unk_27C772A20);
    if (v1 <= 0x3F)
    {
      sub_20BB640C0(319, &qword_27C76B090, &qword_27C76B098);
      if (v2 <= 0x3F)
      {
        sub_20BB640C0(319, &qword_27C76B0A0, &unk_27C772A10);
        if (v3 <= 0x3F)
        {
          sub_20BB640C0(319, &qword_27C76B0A8, &qword_27C76B0B0);
          if (v4 <= 0x3F)
          {
            sub_20BB640C0(319, &qword_27C76B0B8, &unk_27C772A00);
            if (v5 <= 0x3F)
            {
              sub_20BB640C0(319, &qword_27C76B0C0, &qword_27C76B0C8);
              if (v6 <= 0x3F)
              {
                sub_20BB640C0(319, &qword_27C76B0D0, &unk_27C7729F0);
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20BB640C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BB64114(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfTitleViewRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B080);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfSeparatorViewRegistration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A20);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___shelfListFooterViewRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B098);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfLargeTitleViewRegistration;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A10);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfFadingLargeTitleViewRegistration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0B0);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvOpenInMusicViewRegistration;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772A00);
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfSubheaderViewRegistration;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B0C8);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC9SeymourUI38ShelfSupplementaryRegistrationProvider____lazy_storage___tvShelfHeaderAnnotatedTitleRegistration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7729F0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_20BB6440C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfDiffableItemIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB64470(uint64_t a1)
{
  v2 = type metadata accessor for ShelfDiffableItemIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_20BB644EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout];
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v16 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277D76938];
  v19 = v16;
  *(inited + 40) = [v17 preferredFontForTextStyle_];
  v20 = sub_20B6B3F64(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C764C70);
  v21 = [v13 whiteColor];
  *v12 = xmmword_20C16F4E0;
  *(v12 + 2) = v14;
  *(v12 + 3) = v20;
  *(v12 + 4) = 0x4038000000000000;
  *(v12 + 5) = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setNumberOfLines_];
  v24 = [v17 &selRef:*MEMORY[0x277D76920] :? setSpeedBumpEdges:?];
  [v24 pointSize];
  v26 = v25;

  v27 = [v17 boldSystemFontOfSize_];
  [v23 setFont_];

  v28 = [v13 labelColor];
  [v23 setTextColor_];

  v29 = v23;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  LODWORD(v30) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [v29 setContentHuggingPriority:1 forAxis:v31];

  *&v5[v22] = v29;
  v32 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_subtitleLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v33 setNumberOfLines_];
  v34 = [v17 preferredFontForTextStyle_];
  [v33 setFont_];

  v35 = [v13 labelColor];
  [v33 setTextColor_];

  v36 = v33;
  [v36 setAlpha_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setAdjustsFontForContentSizeCategory_];
  LODWORD(v37) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [v36 setContentHuggingPriority:1 forAxis:v38];

  *&v5[v32] = v36;
  v39 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView;
  v40 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v41 = sub_20BFBFE70(5);

  swift_getObjectType();
  v42 = [v13 labelColor];
  v43 = sub_20BFBFE9C(v42);

  swift_getObjectType();
  v44 = [v13 labelColor];
  v45 = sub_20BFBFEC8(v44);

  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v39] = v45;
  v95.receiver = v5;
  v95.super_class = type metadata accessor for TVDetailSummaryTextCell();
  v46 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a1, a2, a3, a4);
  v47 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  v48 = *&v46[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView];
  v49 = v46;
  result = [v48 contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v51 = result;
  v52 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_titleLabel;
  [result addSubview_];

  result = [*&v46[v47] contentView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = result;
  v54 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_subtitleLabel;
  [result addSubview_];

  result = [*&v46[v47] contentView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v55 = result;
  v56 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14FF90;
  v58 = [*&v49[v52] topAnchor];
  result = [*&v46[v47] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v59 = result;
  v60 = [result topAnchor];

  v94 = &v49[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout];
  v61 = [v58 constraintEqualToAnchor:v60 constant:*&v49[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout + 32]];

  *(v57 + 32) = v61;
  v62 = [*&v49[v52] leadingAnchor];
  result = [*&v46[v47] contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v63 = result;
  v64 = [result leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:v94[4]];
  *(v57 + 40) = v65;
  v66 = [*&v49[v52] trailingAnchor];
  result = [*&v46[v47] contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v67 = result;
  v68 = [result trailingAnchor];

  v69 = [v66 constraintEqualToAnchor:v68 constant:-v94[4]];
  *(v57 + 48) = v69;
  v70 = [*&v49[v54] topAnchor];
  v71 = [*&v49[v52] bottomAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v57 + 56) = v72;
  v73 = [*&v49[v54] leadingAnchor];
  v74 = [*&v49[v52] leadingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v57 + 64) = v75;
  v76 = [*&v49[v54] trailingAnchor];
  v77 = [*&v49[v52] trailingAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v57 + 72) = v78;
  v79 = [*&v49[v56] topAnchor];
  v80 = [*&v49[v54] bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:v94[4]];

  *(v57 + 80) = v81;
  v82 = [*&v49[v56] leadingAnchor];
  v83 = [*&v49[v52] leadingAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v57 + 88) = v84;
  v85 = [*&v49[v56] trailingAnchor];
  v86 = [*&v49[v52] trailingAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v57 + 96) = v87;
  v88 = [*&v49[v56] bottomAnchor];
  result = [*&v46[v47] contentView];
  if (result)
  {
    v89 = result;

    v90 = objc_opt_self();
    v91 = [v89 bottomAnchor];

    v92 = [v88 constraintEqualToAnchor:v91 constant:-v94[4]];
    *(v57 + 104) = v92;
    sub_20B51C88C(0, &qword_281100500);
    v93 = sub_20C13CC54();

    [v90 activateConstraints_];

    return v49;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_20BB651A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v14;
    sub_20B6FFB30(aBlock, *&v3[*v7]);

    v15 = sub_20B8E9218(v32);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v20 + 2))(v18, a2 & 1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
    }

    else
    {

      v5 = a1;
    }
  }

  v21 = *&v3[*v7];
  [v21 setControlState:v5 animated:a2 & 1];
  [v21 setControlState:v5 animated:a2 & 1];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v5;
  v29 = sub_20BB666E8;
  v30 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v28 = &block_descriptor_23;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v22 animateWithDuration:v24 animations:0.5];
  _Block_release(v24);
}

void sub_20BB6550C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v30, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v31 = v14;
    sub_20B6FFB30(aBlock, *&v3[*v7]);

    v15 = sub_20B8E9218(v31);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v27;
        v20 = v28;
        __swift_project_boxed_opaque_existential_1(aBlock, v27);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
    }

    else
    {

      v5 = a1;
    }
  }

  v21 = *&v3[*v7];
  [v21 setControlState:v5 withAnimationCoordinator:a2];
  [v21 setControlState:v5 withAnimationCoordinator:a2];
  if (a2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = v5;
    v28 = sub_20BB66190;
    v29 = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v27 = &block_descriptor_89;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    [a2 addCoordinatedAnimations:v23 completion:0];
    _Block_release(v23);
  }
}

void sub_20BB65868(char a1)
{
  v2 = 40;
  if (a1)
  {
    v2 = 16;
  }

  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_titleLabel];
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout + v2];
  [v3 setTextColor_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_subtitleLabel] setTextColor_];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView];
  [v4 setDescriptionTextColor_];
  [v4 setMoreLabelTextColor_];
  [v1 layoutIfNeeded];
}

void sub_20BB6594C()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo, &qword_27C762550);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout + 16);

  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView);
}

id sub_20BB65A00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDetailSummaryTextCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVDetailSummaryTextCell()
{
  result = qword_27C76B128;
  if (!qword_27C76B128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB65B44()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BB65C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BB65C4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BB65CA8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB65CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB65D4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BB65DD4(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xA)
  {
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView];
    v8 = sub_20C13C914();
    [v7 setMoreLabelText_];

    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_titleLabel];
    v10 = sub_20C13C914();
    [v9 setText_];

    v11 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_subtitleLabel];
    v12 = sub_20C13C914();
    [v11 setText_];

    sub_20B905400(*&v1[OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout + 24]);
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v14 = sub_20C13C914();
    type metadata accessor for Key(0);
    sub_20B76322C();
    v15 = sub_20C13C744();

    v29 = [v13 initWithString:v14 attributes:v15];

    [v7 setDescriptionText_];
    v16 = v29;
  }

  else
  {
    sub_20C13B534();

    v17 = v1;
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = a1;
      v31 = v29;
      *v20 = 138543618;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2082;
      v22 = sub_20B5F66D0();
      v23 = v17;
      v24 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v22);
      v26 = sub_20B51E694(v24, v25, &v31);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_20B517000, v18, v19, "Attempted to configure %{public}@ with item: %{public}s", v20, 0x16u);
      sub_20B520158(v21, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      v27 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BB661BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_layout;
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76938];
  v11 = v8;
  *(inited + 40) = [v9 preferredFontForTextStyle_];
  v12 = sub_20B6B3F64(inited);

  v13 = [v5 whiteColor];
  *v4 = xmmword_20C16F4E0;
  *(v4 + 16) = v6;
  *(v4 + 24) = v12;
  *(v4 + 32) = 0x4038000000000000;
  *(v4 + 40) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setNumberOfLines_];
  v16 = [v9 &selRef:*MEMORY[0x277D76920] :? setSpeedBumpEdges:?];
  [v16 pointSize];
  v18 = v17;

  v19 = [v9 boldSystemFontOfSize_];
  [v15 setFont_];

  v20 = [v5 labelColor];
  [v15 setTextColor_];

  v21 = v15;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v21 setContentHuggingPriority:1 forAxis:v23];

  *(v1 + v14) = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_subtitleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setNumberOfLines_];
  v26 = [v9 preferredFontForTextStyle_];
  [v25 setFont_];

  v27 = [v5 labelColor];
  [v25 setTextColor_];

  v28 = v25;
  [v28 setAlpha_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  LODWORD(v29) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v30];

  *(v1 + v24) = v28;
  v31 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_textView;
  v32 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v33 = sub_20BFBFE70(5);

  swift_getObjectType();
  v34 = [v5 labelColor];
  v35 = sub_20BFBFE9C(v34);

  swift_getObjectType();
  v36 = [v5 labelColor];
  v37 = sub_20BFBFEC8(v36);

  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v31) = v37;
  sub_20C13DE24();
  __break(1u);
}

id AccountViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id AccountViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*AccountViewController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  v2 = v1;
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
  *(v4 + 64) = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4082400000000000;
    v9 = 0x4082200000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

uint64_t AccountViewController.metricPagePublishingBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior;
  v4 = sub_20C1390D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C1390D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  (*(v7 + 104))(v19 - v12, *MEMORY[0x277D54278], v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v14 = v19[0];
  v15 = v19[1];
  sub_20C133AA4();
  v16 = v19[0];
  (*(v7 + 16))(v9, v13, v6);
  v17 = sub_20BB68868(a1, a2, a3, v9, a1, v14, v15, v16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v13, v6);
  return v17;
}

id AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:metricPublishingBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C1390D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v12 = v17[0];
  v13 = v17[1];
  sub_20C133AA4();
  v14 = v17[0];
  (*(v9 + 16))(v11, a4, v8);
  v15 = sub_20BB68868(a1, a2, a3, v11, a1, v12, v13, v14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v9 + 8))(a4, v8);
  return v15;
}

id AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:pageNavigator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20BB681F0(a1, a2, a3, v14, v4, v9, v10);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

id AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:metricPublishingBehavior:pageNavigator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_20BB69438(a1, a2, a3, a4, v13, v5, v11, v12);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v14;
}

id AccountViewController.init(dependencies:fitnessSettingsProvider:metricPublishingBehavior:pageNavigator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_20BB68E5C(a1, a2, a3, a4, v16, v5, v11, v12);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

id sub_20BB67124()
{
  ObjectType = swift_getObjectType();
  if (_UISolariumEnabled())
  {
    v2 = objc_allocWithZone(MEMORY[0x277D751E0]);

    return [v2 initWithBarButtonSystemItem:24 target:v0 action:sel_doneButtonTapped_];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer], *&v0[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer + 24]);
    sub_20C138D34();
    v14[3] = ObjectType;
    v14[0] = v0;
    v4 = v0;
    v5 = sub_20C13C914();

    if (ObjectType)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v14, ObjectType);
      v7 = *(ObjectType - 8);
      v8 = MEMORY[0x28223BE20](v6);
      v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = sub_20C13DFD4();
      (*(v7 + 8))(v10, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v13 = [v12 initWithTitle:v5 style:2 target:v11 action:{sel_doneButtonTapped_, v14[0]}];

    swift_unknownObjectRelease();
    return v13;
  }
}

Swift::Void __swiftcall AccountViewController.viewDidLoad()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
    [v3 setBarTintColor_];
  }

  v5 = [v0 navigationItem];
  v6 = sub_20BB67124();
  [v5 setRightBarButtonItem_];

  LODWORD(v6) = _UISolariumEnabled();
  v7 = [v0 navigationItem];
  v8 = v7;
  if (v6)
  {
    [v7 setLargeTitleDisplayMode_];
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v7 rightBarButtonItem];

  if (v9)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v9 setTintColor_];

    goto LABEL_7;
  }

LABEL_8:
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider];

  v11 = sub_20C13C914();

  [v0 setTitle_];

  sub_20B795988(0);
  sub_20B795E80();
  *(*(v10 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shouldAutomaticallyDeselectItem) = 0;
}

Swift::Void __swiftcall AccountViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v33 - v13;
  v47.receiver = v2;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_viewWillAppear_, v3, v12);
  v15 = *&v2[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider];
  v16 = [*(*(v15 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathsForSelectedItems];
  if (v16)
  {
    LODWORD(v37) = v3;
    v40 = v14;
    v17 = v16;
    v18 = sub_20C13CC74();

    if (*(v18 + 16))
    {
      v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *(v6 + 80);
      v39 = *(v6 + 16);
      v39(v10, v18 + ((v19 + 32) & ~v19), v5);

      v38 = v6;
      v20 = *(v6 + 32);
      v21 = v40;
      v20(v40, v10, v5);
      v22 = [v2 transitionCoordinator];
      if (v22)
      {
        v34 = v20;
        v35 = ~v19;
        v37 = v22;
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = v36;
        v39(v36, v21, v5);
        v33 = v19;
        v25 = (v19 + 24) & v35;
        v26 = swift_allocObject();
        *(v26 + 16) = v23;
        v20((v26 + v25), v24, v5);
        v45 = sub_20BB6954C;
        v46 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v43 = sub_20B863940;
        v44 = &block_descriptor_90;
        v35 = _Block_copy(&aBlock);

        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v39(v24, v40, v5);
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v34(v28 + v25, v24, v5);
        v45 = sub_20BB69628;
        v46 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v21 = v40;
        v43 = sub_20B863940;
        v44 = &block_descriptor_10_0;
        v29 = _Block_copy(&aBlock);

        v30 = v35;
        [v37 animateAlongsideTransition:v35 completion:v29];
        _Block_release(v29);
        _Block_release(v30);
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = *(*(v15 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
        v32 = sub_20C1331B4();
        [v31 deselectItemAtIndexPath:v32 animated:v37 & 1];
      }

      (*(v38 + 8))(v21, v5);
    }

    else
    {
    }
  }
}

void sub_20BB67A54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(*(Strong + OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider) + 16);

    v3 = *&v2[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v4 = sub_20C1331B4();
    [v3 deselectItemAtIndexPath:v4 animated:1];
  }
}

void sub_20BB67B0C(void *a1)
{
  if ([a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(*(Strong + OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider) + 16);

      v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
      v5 = sub_20C1331B4();
      [v4 selectItemAtIndexPath:v5 animated:1 scrollPosition:0];
    }
  }
}

Swift::Void __swiftcall AccountViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_20BB696C8();
  sub_20C138C54();
}

Swift::Void __swiftcall AccountViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_20B62BB28();
    v6 = sub_20C13CC74();

    v9 = v1;
    MEMORY[0x28223BE20](v7);
    v8[2] = &v9;
    LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

    if ((v5 & 1) == 0)
    {
      v9 = v1;
      sub_20BB696C8();
      sub_20C138C64();
    }
  }
}

id AccountViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AccountViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BB68174@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

id sub_20BB681F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v40 = a4;
  v43 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v14 - 8);
  v46 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v42 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  v21 = sub_20C1333A4();
  v44 = *(v21 - 8);
  v45 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C1390D4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a6;
  v51[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, v40, a6);
  (*(v25 + 104))(v27, *MEMORY[0x277D54278], v24);
  sub_20B51CC64(v51, v50);
  v29 = objc_allocWithZone(a5);
  v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility] = 1;
  *&v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dependencies] = a1;
  sub_20B51CC64(v50, &v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_pageNavigator]);
  (*(v25 + 16))(&v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior], v27, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_eventHub] = v49;
  sub_20C133AA4();
  v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_platform] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v49, &v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer]);
  type metadata accessor for AccountPageDataProvider();
  swift_allocObject();
  swift_unknownObjectRetain();

  v31 = sub_20B81E02C(v30, a2, v43);

  swift_unknownObjectRelease();
  *&v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider] = v31;
  v32 = *MEMORY[0x277D51830];
  v33 = sub_20C1352F4();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v20, v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  v35 = sub_20C132C14();
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  v36 = sub_20C135ED4();
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v37 = sub_20C136914();
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  sub_20C133384();
  (*(v44 + 32))(&v29[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage], v23, v45);
  v48.receiver = v29;
  v48.super_class = v41;
  v38 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v25 + 8))(v27, v24);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v38;
}

id sub_20BB68868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v44 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v15 - 8);
  v49 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v17 - 8);
  v48 = &v42 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v19 - 8);
  v42 = &v42 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v42 - v22;
  v24 = sub_20C1333A4();
  v46 = *(v24 - 8);
  v47 = v24;
  MEMORY[0x28223BE20](v24);
  v43 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AccountViewController();
  v26 = objc_allocWithZone(v45);
  v52[3] = &type metadata for CatalogPageNavigator;
  v52[4] = &off_2822FB218;
  v27 = swift_allocObject();
  v52[0] = v27;
  *(v27 + 16) = a5;
  *(v27 + 24) = a6;
  *(v27 + 32) = a7;
  *(v27 + 40) = a8;
  v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility] = 1;
  *&v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dependencies] = a1;
  sub_20B51CC64(v52, &v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_pageNavigator]);
  v28 = OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior;
  v29 = sub_20C1390D4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(&v26[v28], a4, v29);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_eventHub] = v51[0];
  sub_20C133AA4();
  v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_platform] = v51[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(v51, &v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer]);
  type metadata accessor for AccountPageDataProvider();
  swift_allocObject();
  swift_unknownObjectRetain();

  v32 = sub_20B81E02C(v31, a2, v44);

  swift_unknownObjectRelease();
  *&v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider] = v32;
  v33 = *MEMORY[0x277D51830];
  v34 = sub_20C1352F4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v23, v33, v34);
  (*(v35 + 56))(v23, 0, 1, v34);
  v36 = sub_20C132C14();
  (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
  v37 = sub_20C135ED4();
  (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
  v38 = sub_20C136914();
  (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
  v39 = v43;
  sub_20C133384();
  (*(v46 + 32))(&v26[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage], v39, v47);
  v50.receiver = v26;
  v50.super_class = v45;
  v40 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  (*(v30 + 8))(a4, v29);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v40;
}

id sub_20BB68E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v42 = a3;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v15 - 8);
  v45 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v19 - 8);
  v41 = &v41 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v41 - v22;
  v43 = sub_20C1333A4();
  v24 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a7;
  v49[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility] = 1;
  *&a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dependencies] = a1;
  sub_20B51CC64(v49, &a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_pageNavigator]);
  v28 = OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior;
  v29 = sub_20C1390D4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(&a6[v28], a4, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_eventHub] = v48;
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_platform] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v48, &a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer]);
  type metadata accessor for AccountPageDataProvider();
  swift_allocObject();
  swift_unknownObjectRetain();

  v32 = sub_20B81E02C(v31, a2, v42);

  swift_unknownObjectRelease();
  *&a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider] = v32;
  v33 = *MEMORY[0x277D51830];
  v34 = sub_20C1352F4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v23, v33, v34);
  (*(v35 + 56))(v23, 0, 1, v34);
  v36 = sub_20C132C14();
  (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
  v37 = sub_20C135ED4();
  (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
  v38 = sub_20C136914();
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  sub_20C133384();
  (*(v24 + 32))(&a6[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage], v26, v43);
  v47.receiver = a6;
  v47.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  (*(v30 + 8))(a4, v29);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v39;
}

id sub_20BB69438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a5, a7);
  return sub_20BB68E5C(a1, a2, a3, a4, v17, v19, a7, a8);
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BB69640(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20C133244() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_20BB696C8()
{
  result = qword_27C76B140;
  if (!qword_27C76B140)
  {
    type metadata accessor for AccountViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B140);
  }

  return result;
}

uint64_t type metadata accessor for AccountViewController()
{
  result = qword_27C76B150;
  if (!qword_27C76B150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB69780()
{
  result = sub_20C1390D4();
  if (v1 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BB698B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_20C13E164();
  if (v3 == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13E184();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    MEMORY[0x20F2F58E0](v1);
    MEMORY[0x20F2F58E0](v2);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BB69948()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x20F2F58E0](1);
    return sub_20C13E184();
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x20F2F58E0](0);
    MEMORY[0x20F2F58E0](v1);
    return MEMORY[0x20F2F58E0](v3);
  }
}

uint64_t sub_20BB699B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_20C13E164();
  if (v3 == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13E184();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    MEMORY[0x20F2F58E0](v1);
    MEMORY[0x20F2F58E0](v2);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BB69A40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16) == 1)
  {
    v4 = v3 ^ v2 ^ 1;
    if (a2[2])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    return v5 & 1;
  }

  else
  {
    v7 = (v2 == v3) & ~*(a2 + 16);
    if (a1[1] != a2[1])
    {
      v7 = 0;
    }

    return v7 & 1;
  }
}

unint64_t sub_20BB69A98()
{
  result = qword_27C76B160;
  if (!qword_27C76B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionButtonTemplateStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionButtonTemplateStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_20BB69B9C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_layout] = 0x4000000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_stackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_subtitleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v14 setFont_];

  v17 = objc_opt_self();
  v18 = [v17 systemGrayColor];
  [v14 setTextColor_];

  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  *&v4[v13] = v14;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_titleLabel;
  v24 = [v15 fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  v25 = [v17 whiteColor];
  [v19 setTextColor_];

  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setTextAlignment_];
  *&v4[v23] = v19;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for FullScreenMessageCell();
  v26 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_stackView;
  v28 = *&v26[OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_stackView];
  v29 = v26;
  [v28 setAlignment_];
  [*&v26[v27] setAxis_];
  [*&v26[v27] setSpacing_];
  v30 = [v29 contentView];
  [v30 addSubview_];

  [*&v26[v27] addArrangedSubview_];
  [*&v26[v27] addArrangedSubview_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C150040;
  v33 = [*&v26[v27] leadingAnchor];
  v34 = [v29 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v32 + 32) = v36;
  v37 = [*&v26[v27] trailingAnchor];
  v38 = [v29 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v32 + 40) = v40;
  v41 = [*&v26[v27] centerYAnchor];
  v42 = [v29 contentView];

  v43 = [v42 centerYAnchor];
  v44 = [v41 constraintEqualToAnchor_];

  *(v32 + 48) = v44;
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v31 activateConstraints_];

  return v29;
}

id sub_20BB6A3AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMessageCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FullScreenMessageCell()
{
  result = qword_27C76B190;
  if (!qword_27C76B190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB6A4C4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BB6A590(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB6A5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB6A634(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BB6A698(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x18)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_titleLabel];
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x18))
    {
      v9 = sub_20C13C914();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText_];

    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_subtitleLabel];
    if (v7)
    {
      v22 = sub_20C13C914();
    }

    else
    {
      v22 = 0;
    }

    v25 = v22;
    [v21 setText_];
    v23 = v25;
  }

  else
  {
    sub_20C13B534();

    v10 = v1;
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = a1;
      v27 = v25;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2082;
      v15 = sub_20B5F66D0();
      v16 = v10;
      v17 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v15);
      v19 = sub_20B51E694(v17, v18, &v27);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_20B517000, v11, v12, "Attempted to configure %{public}@ with item: %{public}s", v13, 0x16u);
      sub_20B520158(v14, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BB6A988()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_layout) = 0x4000000000000000;
  v3 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_subtitleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v6 setFont_];

  v9 = objc_opt_self();
  v10 = [v9 systemGrayColor];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  *(v0 + v5) = v6;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI21FullScreenMessageCell_titleLabel;
  v16 = [v7 fontWithDescriptor:v12 size:0.0];

  [v11 setFont_];
  v17 = [v9 whiteColor];
  [v11 setTextColor_];

  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setTextAlignment_];
  *(v0 + v15) = v11;
  sub_20C13DE24();
  __break(1u);
}

id sub_20BB6ACEC(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MetadataEntrySubtitleLabel();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_20C1380F4();
  if (v10 < 2)
  {
    v11 = [objc_opt_self() preferredFontForTextStyle_];
    [v9 setFont_];

    v12 = [objc_opt_self() systemGrayColor];
    v13 = &selRef_setTextColor_;
LABEL_5:
    v15 = v12;
    [v9 *v13];

    goto LABEL_6;
  }

  if (v10 != 2)
  {
    v14 = [objc_opt_self() whiteColor];
    [v9 setTextColor_];

    v12 = [objc_opt_self() preferredFontForTextStyle_];
    v13 = &selRef_setFont_;
    goto LABEL_5;
  }

LABEL_6:
  [v9 setNumberOfLines_];
  return v9;
}

id sub_20BB6AF00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataEntrySubtitleLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BB6AF6C()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  if (v14 == result)
  {
    v16 = 76.0;
  }

  else
  {
    v16 = 30.0;
    if (Width / v13 > 375.0)
    {
      v16 = 50.0;
      if (Width / v13 < 834.0)
      {
        v16 = 40.0;
      }
    }
  }

  qword_27C76B1A0 = *&v16;
  return result;
}

uint64_t sub_20BB6B0A4()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 8.0;
  if (v14 != result)
  {
    v16 = 2.0;
    if (Width / v13 > 375.0)
    {
      v16 = 2.0;
      if (Width / v13 < 834.0)
      {
        v16 = 3.0;
      }
    }
  }

  qword_27C76B1A8 = *&v16;
  return result;
}

double sub_20BB6B210()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImageView);
  [v1 intrinsicContentSize];
  v3 = v2;
  [*(v0 + OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningValueLabel) intrinsicContentSize];
  v5 = v4;
  [*(v0 + OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImageView) intrinsicContentSize];
  v7 = v6;
  [*(v0 + OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingValueLabel) intrinsicContentSize];
  v9 = v8;
  [v1 intrinsicContentSize];
  if (qword_27C760980 != -1)
  {
    swift_once();
  }

  return v3 + v5 + v7 + v9 + 6.0;
}

char *sub_20BB6B31C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5 = v3;
  v6 = [v4 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v5 setTintColor_];

  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v8];

  *&v1[v2] = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = objc_allocWithZone(MEMORY[0x277D75348]);
  v12 = v10;
  v13 = [v11 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v12 setTintColor_];

  LODWORD(v14) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v15];

  *&v1[v9] = v12;
  v16 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImage;
  v17 = sub_20C13C914();
  v18 = objc_opt_self();
  v19 = [v18 smm:v17 systemImageNamed:?];

  if (qword_27C760978 != -1)
  {
    swift_once();
  }

  v20 = *&qword_27C76B1A0;
  v21 = objc_opt_self();
  v22 = [v21 configurationWithPointSize:4 weight:1 scale:v20];
  v23 = [v19 imageWithConfiguration_];

  v24 = *MEMORY[0x277D768C8];
  v25 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = [v23 imageWithAlignmentRectInsets_];

  *&v1[v16] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImage;
  v30 = sub_20C13C914();
  v31 = [v18 smm:v30 systemImageNamed:?];

  v32 = [v21 configurationWithPointSize:4 weight:1 scale:v20];
  v33 = [v31 imageWithConfiguration_];

  v34 = [v33 imageWithAlignmentRectInsets_];
  *&v1[v29] = v34;
  v35 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingValueLabel;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v37 = sub_20C1380F4();
  v38 = sub_20BA6BBC8(v37);
  [v36 setFont_];

  v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v36 setTextColor_];

  v40 = v36;
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v42];

  *&v1[v35] = v40;
  v43 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningValueLabel;
  v44 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v45 = sub_20C1380F4();
  v46 = sub_20BA6BBC8(v45);
  [v44 setFont_];

  v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v44 setTextColor_];

  v48 = v44;
  LODWORD(v49) = 1148846080;
  [v48 setContentCompressionResistancePriority:0 forAxis:v49];
  LODWORD(v50) = 1148846080;
  [v48 setContentCompressionResistancePriority:1 forAxis:v50];

  *&v1[v43] = v48;
  *&v1[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_presenter] = a1;
  v54.receiver = v1;
  v54.super_class = type metadata accessor for SessionInclineView();

  v51 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v51 setClipsToBounds_];
  *(a1 + 24) = &off_2822CF850;
  swift_unknownObjectWeakAssign();
  [v51 addSubview_];
  [v51 addSubview_];
  [v51 addSubview_];
  [v51 addSubview_];

  return v51;
}

id sub_20BB6B964()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for SessionInclineView();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImageView];
  v2 = objc_opt_self();
  v3 = [v2 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImage];
  if (v3)
  {
    v5 = [v4 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  [v1 setImage_];

  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImageView];
  v8 = [v2 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImage];
  if (v8)
  {
    v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  [v7 setImage_];

  [v1 sizeToFit];
  v12 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningValueLabel];
  [v12 sizeToFit];
  [v7 sizeToFit];
  v13 = *&v0[OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingValueLabel];
  [v13 sizeToFit];
  if ([v2 userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    [v13 frame];
    [v13 setFrame_];
    [v13 frame];
    v14 = CGRectGetMaxX(v22) + 2.0;
    [v7 frame];
    [v7 setFrame_];
    [v7 frame];
    MaxX = CGRectGetMaxX(v23);
    v16 = v12;
    v17 = v1;
  }

  else
  {
    [v1 frame];
    [v1 setFrame_];
    [v1 frame];
    v18 = CGRectGetMaxX(v24) + 2.0;
    [v12 frame];
    [v12 setFrame_];
    [v12 frame];
    MaxX = CGRectGetMaxX(v25) + 2.0;
    v16 = v7;
    v17 = v13;
  }

  [v16 frame];
  [v16 setFrame_];
  [v16 frame];
  v19 = CGRectGetMaxX(v26) + 2.0;
  [v17 frame];
  [v17 setFrame_];
  [v0 bounds];
  CGRectGetMidY(v27);
  [v1 center];
  [v1 setCenter_];
  [v0 bounds];
  CGRectGetMidY(v28);
  [v12 center];
  [v12 setCenter_];
  [v0 bounds];
  CGRectGetMidY(v29);
  [v7 center];
  [v7 setCenter_];
  [v0 bounds];
  CGRectGetMidY(v30);
  [v13 center];
  return [v13 setCenter_];
}

id sub_20BB6BDC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionInclineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BB6BED0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*&v4[*a4] setAttributedText_];
  [v4 invalidateIntrinsicContentSize];

  return [v4 setNeedsLayout];
}

void sub_20BB6BF28()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v2;
  v5 = [v3 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v4 setTintColor_];

  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v7];

  *(v0 + v1) = v4;
  v8 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11 = v9;
  v12 = [v10 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v11 setTintColor_];

  LODWORD(v13) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v14];

  *(v0 + v8) = v11;
  v15 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingImage;
  v16 = sub_20C13C914();
  v17 = objc_opt_self();
  v18 = [v17 smm:v16 systemImageNamed:?];

  if (qword_27C760978 != -1)
  {
    swift_once();
  }

  v19 = *&qword_27C76B1A0;
  v20 = objc_opt_self();
  v21 = [v20 configurationWithPointSize:4 weight:1 scale:v19];
  v22 = [v18 imageWithConfiguration_];

  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v25 = *(MEMORY[0x277D768C8] + 16);
  v26 = *(MEMORY[0x277D768C8] + 24);
  v27 = [v22 imageWithAlignmentRectInsets_];

  *(v0 + v15) = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningImage;
  v29 = sub_20C13C914();
  v30 = [v17 smm:v29 systemImageNamed:?];

  v31 = [v20 configurationWithPointSize:4 weight:1 scale:v19];
  v32 = [v30 imageWithConfiguration_];

  v33 = [v32 imageWithAlignmentRectInsets_];
  *(v0 + v28) = v33;
  v34 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_walkingValueLabel;
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v36 = sub_20C1380F4();
  v37 = sub_20BA6BBC8(v36);
  [v35 setFont_];

  v38 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v35 setTextColor_];

  v39 = v35;
  LODWORD(v40) = 1148846080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v40];
  LODWORD(v41) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v41];

  *(v0 + v34) = v39;
  v42 = OBJC_IVAR____TtC9SeymourUI18SessionInclineView_runningValueLabel;
  v43 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v44 = sub_20C1380F4();
  v45 = sub_20BA6BBC8(v44);
  [v43 setFont_];

  v46 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v43 setTextColor_];

  v47 = v43;
  LODWORD(v48) = 1148846080;
  [v47 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v47 setContentCompressionResistancePriority:1 forAxis:v49];

  *(v0 + v42) = v47;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB6C4A8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_20C13B184();
  v7 = sub_20C135174();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_20BB6C780(v6);
  if (v8 == 1)
  {
    v9 = v3[5];
    v10 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
    return a1(v9, v10);
  }

  else
  {
    *(swift_allocObject() + 16) = 1;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BB6C678(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

uint64_t sub_20BB6C780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BB6C80C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20BB6C854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BB6C8C8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v36 = sub_20C137B64();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v8;
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_20C136C64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C768690);
    v18 = sub_20C1356F4();
    sub_20BB6DBA8();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D51B88], v18);
    *(swift_allocObject() + 16) = v19;
    return sub_20C137CA4();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_20C136C14();
    v22 = v36;
    if ((*(v5 + 48))(v4, 1, v36) == 1)
    {
      sub_20B520158(v4, &qword_27C76B1F0);
      v23 = v35;
      sub_20C137B54();
      v24 = v33;
      (*(v5 + 16))(v33, v23, v22);
      v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v26 = swift_allocObject();
      (*(v5 + 32))(v26 + v25, v24, v22);
      sub_20C137CA4();
      (*(v5 + 8))(v23, v22);
    }

    else
    {
      v33 = *(v5 + 32);
      v27 = v34;
      (v33)(v34, v4, v22);
      v28 = v35;
      (*(v5 + 16))(v35, v27, v22);
      v29 = v22;
      v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v31 = swift_allocObject();
      (v33)(v31 + v30, v28, v29);
      sub_20C137CA4();
      (*(v5 + 8))(v34, v29);
    }

    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_20BB6CDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v36 = a3;
  v34 = sub_20C13B0C4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B1E8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v29 - v10;
  v12 = sub_20C135174();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
  sub_20C13B184();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C76BC00);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    v20 = v30;
    v37 = v30;
    v38 = a2;

    sub_20C137844();
    v21 = v4[15];
    v29[2] = v4[16];
    v29[1] = __swift_project_boxed_opaque_existential_1(v4 + 12, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = v20;
    *(inited + 40) = a2;

    v23 = sub_20BE8C2E8(inited);
    swift_setDeallocating();
    sub_20B5D9804(inited + 32);
    *v7 = v23;
    v24 = *MEMORY[0x277D4F6C8];
    v25 = sub_20C13B254();
    (*(*(v25 - 8) + 104))(v7, v24, v25);
    v26 = v32;
    v27 = v34;
    (*(v32 + 104))(v7, *MEMORY[0x277D4F518], v34);
    sub_20C13B2A4();
    (*(v26 + 8))(v7, v27);
    __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
    v28 = v35;
    sub_20C139A74();
    (*(v31 + 8))(v28, v33);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_20BB6D27C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_20C136C04();
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20BB6D4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v25 = sub_20C137B64();
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B1F8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_20C135174();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C76BC00);
    v17 = sub_20C1356F4();
    sub_20BB6DBA8();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_20C137CA4();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    (*(v21 + 16))(v4, v23, v25);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139B64();
    (*(v22 + 8))(v6, v24);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_20BB6D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v7);
  return a4(a1, v7, v8);
}

uint64_t sub_20BB6DB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

unint64_t sub_20BB6DBA8()
{
  result = qword_27C769680;
  if (!qword_27C769680)
  {
    sub_20C1356F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769680);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_20C137B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BB6DD58()
{
  sub_20B583ECC(*(v0 + 24));

  sub_20B7B2434(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

void sub_20BB6DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 24);
    if (v7)
    {

      v8 = v7(a4);
      sub_20B583ECC(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v6 + 48);
    v10 = *(v6 + 56);

    sub_20BCE67BC(v9, v10, v8);

    sub_20BCE8210(*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
    v11 = *(v6 + 80);
    v13[0] = *(v6 + 64);
    v13[1] = v11;
    v13[2] = *(v6 + 96);
    v14 = *(v6 + 112);
    sub_20B98E598(v13, &v12);
    sub_20BCE82F0(v13);
    sub_20B98E608(v13);
  }
}

void sub_20BB6DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 24);
    if (v7)
    {

      v8 = v7(a4);
      sub_20B583ECC(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v6 + 48);
    v10 = *(v6 + 56);

    sub_20BCE67BC(v9, v10, v8);

    sub_20BCE8210(*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
    v11 = *(v6 + 80);
    v13[0] = *(v6 + 64);
    v13[1] = v11;
    v13[2] = *(v6 + 96);
    v14 = *(v6 + 112);
    sub_20B98E598(v13, &v12);
    sub_20BCE82F0(v13);
    sub_20B98E608(v13);
  }
}

uint64_t sub_20BB6E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for NoBackgroundConfiguration();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    if (*(v3 + 16) != *(v6 + 16))
    {
      goto LABEL_36;
    }

    v8 = *(v3 + 24);
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = v8(a3);
      if (v9)
      {
        v10 = v9;
        v11 = UIImagePNGRepresentation(v9);

        if (v11)
        {
          v8 = sub_20C132C54();
          v13 = v12;

          v14 = v7[3];
          if (!v14)
          {
            goto LABEL_14;
          }

LABEL_11:
          v15 = v14(a3);
          if (v15)
          {
            v16 = v15;
            v17 = UIImagePNGRepresentation(v15);

            if (v17)
            {
              v18 = sub_20C132C54();
              v20 = v19;

LABEL_15:
              if (v13 >> 60 == 15)
              {
                if (v20 >> 60 == 15)
                {
                  sub_20B94ACA8(v8, v13);
LABEL_21:
                  v22 = v4[5];
                  v23 = v7[5];
                  if (v22)
                  {
                    if (!v23)
                    {
                      goto LABEL_35;
                    }

                    sub_20B98EC50();
                    v24 = v23;
                    v25 = v22;
                    v26 = sub_20C13D5F4();

                    if ((v26 & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  else if (v23)
                  {
                    goto LABEL_35;
                  }

                  v27 = v4[7];
                  v28 = v7[7];
                  if (v27)
                  {
                    if (!v28 || (v4[6] != v7[6] || v27 != v28) && (sub_20C13DFF4() & 1) == 0)
                    {
                      goto LABEL_35;
                    }

LABEL_31:
                    v30 = v4[8];
                    v29 = v4[9];
                    v31 = v4[10];
                    v32 = v4[11];
                    v33 = v4[12];
                    v34 = v4[13];
                    v44 = v4[14];
                    v36 = v7[8];
                    v35 = v7[9];
                    v38 = v7[10];
                    v37 = v7[11];
                    v40 = v7[12];
                    v39 = v7[13];
                    v41 = v7[14];
                    v7 = v31;
                    if (v31)
                    {
                      if (v38)
                      {
                        v46[0] = v36;
                        v46[1] = v35;
                        v46[2] = v38;
                        v46[3] = v37;
                        v46[4] = v40;
                        v46[5] = v39;
                        v46[6] = v41;
                        v45[0] = v30;
                        v45[1] = v29;
                        v45[2] = v31;
                        v45[3] = v32;
                        v45[4] = v33;
                        v45[5] = v34;
                        v45[6] = v44;
                        sub_20B7B23D8(v36, v35, v38);
                        sub_20B7B23D8(v36, v35, v38);
                        sub_20B7B23D8(v30, v29, v7);
                        v43 = v7;
                        LOBYTE(v7) = sub_20B7C7E30(v45, v46);
                        sub_20B7B2434(v36, v35, v38);
                        sub_20B7B2434(v36, v35, v38);
                        swift_unknownObjectRelease();
                        sub_20B7B2434(v30, v29, v43);
                        return v7 & 1;
                      }

                      sub_20B7B23D8(v36, v35, 0);
                      sub_20B7B23D8(v30, v29, v7);
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      sub_20B7B23D8(v36, v35, v38);
                      sub_20B7B23D8(v30, v29, 0);
                      swift_unknownObjectRelease();
                      if (!v38)
                      {
                        sub_20B7B2434(v30, v29, 0);
                        LOBYTE(v7) = 1;
                        return v7 & 1;
                      }
                    }

                    sub_20B7B2434(v30, v29, v7);
                    sub_20B7B2434(v36, v35, v38);
                    goto LABEL_36;
                  }

                  if (!v28)
                  {
                    goto LABEL_31;
                  }

LABEL_35:
                  swift_unknownObjectRelease();
                  goto LABEL_36;
                }
              }

              else if (v20 >> 60 != 15)
              {
                sub_20B98EC9C(v8, v13);
                sub_20B98EC9C(v18, v20);
                v21 = sub_20B98EAE8(v8, v13, v18, v20);
                sub_20B94ACA8(v18, v20);
                sub_20B94ACA8(v18, v20);
                sub_20B94ACA8(v8, v13);
                sub_20B94ACA8(v8, v13);
                if ((v21 & 1) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_21;
              }

              swift_unknownObjectRelease();
              sub_20B94ACA8(v8, v13);
              sub_20B94ACA8(v18, v20);
LABEL_36:
              LOBYTE(v7) = 0;
              return v7 & 1;
            }
          }

LABEL_14:
          v18 = 0;
          v20 = 0xF000000000000000;
          goto LABEL_15;
        }
      }

      v8 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v13 = 0xF000000000000000;
    v14 = v7[3];
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  return v7 & 1;
}

void sub_20BB6E4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 24);
    if (v6)
    {

      v7 = v6(a3);
      sub_20B583ECC(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v5 + 48);
    v9 = *(v5 + 56);

    sub_20BCE67BC(v8, v9, v7);

    v10 = *(v5 + 80);
    v12[0] = *(v5 + 64);
    v12[1] = v10;
    v12[2] = *(v5 + 96);
    v13 = *(v5 + 112);
    sub_20B98E598(v12, &v11);
    sub_20BCE82F0(v12);
    sub_20B98E608(v12);
  }
}

id sub_20BB6E604(id result)
{
  if (*(v1 + 40))
  {
    return [result setTintColor_];
  }

  return result;
}

void (*sub_20BB6E61C(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;
  return sub_20BB6E708;
}

void (*sub_20BB6E6A8())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  swift_weakInit();
  return sub_20BB6E700;
}

uint64_t CatalogWorkoutDetail.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830);
  MEMORY[0x28223BE20](v15 - 8);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = sub_20C136B64();
  v48 = v1;
  v50 = v1;
  v21 = sub_20BEE110C(sub_20BB6EF54, v49, v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v40 = v19;
    v41 = v10;
    v42 = v7;
    v43 = v4;
    v23 = sub_20BEDE99C(v22, 0);
    v24 = *(sub_20C137404() - 8);
    v25 = sub_20BEE2114(&v51, &v23[(*(v24 + 80) + 32) & ~*(v24 + 80)], v22, v21);

    sub_20B583EDC();
    if (v25 != v22)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v42;
    v4 = v43;
    v19 = v40;
    v10 = v41;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v51 = v23;
  sub_20BB6EF7C(&v51);

  v26 = v51;
  v27 = v44;
  if (*(v51 + 2))
  {
    v28 = sub_20C137404();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v19, &v26[(*(v29 + 80) + 32) & ~*(v29 + 80)], v28);

    (*(v29 + 56))(v19, 0, 1, v28);
  }

  else
  {

    v28 = sub_20C137404();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  }

  sub_20B6A10A0(v19, v27);
  sub_20C137404();
  v30 = *(v28 - 8);
  if ((*(v30 + 48))(v27, 1, v28) == 1)
  {
    sub_20B520158(v27, &qword_27C763830);
  }

  else
  {
    sub_20C1373D4();
    (*(v30 + 8))(v27, v28);
  }

  v31 = sub_20C132E94();
  v32 = *(*(v31 - 8) + 56);
  v33 = v46;
  v32(v46, 1, 1, v31);
  v34 = sub_20C135434();
  (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
  v35 = v45;
  v32(v45, 1, 1, v31);
  v36 = sub_20C137C24();
  (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  v37 = sub_20C1344C4();
  (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
  sub_20C135AB4();
  sub_20B520158(v4, &qword_27C766E88);
  sub_20B520158(v7, &unk_27C766680);
  sub_20B520158(v35, &qword_27C762AC0);
  sub_20B520158(v10, &qword_27C7638A8);
  sub_20B520158(v33, &qword_27C762AC0);
  return sub_20B520158(v19, &qword_27C763830);
}

uint64_t sub_20BB6EE10()
{
  v0 = sub_20C1344C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C1373F4();
  v6 = v5;
  sub_20C135AA4();
  v7 = sub_20C134324();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

void sub_20BB6EF7C(void **a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BB6F024(v5);
  *a1 = v3;
}

void sub_20BB6F024(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BB6F4F0(v8, v9, a1, v4);
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
    sub_20BB6F150(0, v2, 1, a1);
  }
}

void sub_20BB6F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BB6F4F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BB700F0(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
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

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BB700F0(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
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

void sub_20BB700F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

uint64_t sub_20BB7081C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();
}

uint64_t sub_20BB7088C()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0);
  __swift_allocate_value_buffer(v4, qword_27C76B200);
  __swift_project_value_buffer(v4, qword_27C76B200);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EEF0], v0);
  v6[1] = 0x405E000000000000;
  return sub_20C13A384();
}

uint64_t sub_20BB709C4()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  __swift_allocate_value_buffer(v4, qword_27C76B218);
  __swift_project_value_buffer(v4, qword_27C76B218);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EEB8], v0);
  v6[15] = 0;
  return sub_20C13A384();
}

uint64_t sub_20BB70AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9)
{
  v10 = v9;
  v141 = a8;
  v143 = a7;
  v169 = a4;
  v170 = a5;
  v171 = a3;
  v172 = a2;
  v168 = a1;
  v123 = a6;
  v136 = a6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B410);
  MEMORY[0x28223BE20](v167);
  v166 = &v118 - v12;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B418);
  MEMORY[0x28223BE20](v165);
  v164 = &v118 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B420);
  MEMORY[0x28223BE20](v163);
  v162 = &v118 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B428);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v118 - v17;
  v135 = sub_20C135364();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v119 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_20C13A484();
  MEMORY[0x28223BE20](v139);
  v140 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20C137EA4();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v160 = &v118 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v158 = *(v159 - 1);
  MEMORY[0x28223BE20](v159);
  v157 = &v118 - v22;
  v151 = sub_20C13A814();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B408);
  v134 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v132 = &v118 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v131);
  v120 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v156 = &v118 - v27;
  MEMORY[0x28223BE20](v28);
  v155 = &v118 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B400);
  v173 = *(v30 - 8);
  v174 = v30;
  MEMORY[0x28223BE20](v30);
  v130 = &v118 - v31;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v129);
  v128 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v127 = &v118 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B3F8);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v118 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v39);
  v145 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v118 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v118 - v45;
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  v47 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__activityRings;
  v48 = sub_20C133D84();
  v142 = *(v48 - 8);
  v49 = *(v142 + 56);
  v144 = v48;
  v49(v46, 1, 1);
  sub_20B52F9E8(v46, v43, &unk_27C765120);
  v122 = v43;
  sub_20C13C124();
  v121 = v46;
  sub_20B520158(v46, &unk_27C765120);
  v50 = *(v36 + 32);
  v161 = v35;
  v50(v9 + v47, v38, v35);
  *(v9 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityRingsSubscriptionToken) = 0;
  v51 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastReceivedScoreMetric;
  v52 = sub_20C1337A4();
  (*(*(v52 - 8) + 56))(v10 + v51, 1, 1, v52);
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_timer) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastPackPosition) = 5;
  v53 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_workoutDeviceConnection;
  v54 = sub_20C136484();
  (*(*(v54 - 8) + 56))(v10 + v53, 1, 1, v54);
  v126 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__cumulativeCommunityScores;
  v55 = sub_20C134844();
  v125 = *(*(v55 - 8) + 56);
  v56 = v127;
  v125(v127, 1, 1, v55);
  v57 = v128;
  sub_20B52F9E8(v56, v128, &qword_27C76B330);
  v58 = v130;
  sub_20C13C124();
  sub_20B520158(v56, &qword_27C76B330);
  v59 = *(v173 + 32);
  v173 += 32;
  v60 = v58;
  v61 = v58;
  v62 = v174;
  v59(v10 + v126, v60, v174);
  v63 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__rollingCommunityScores;
  v125(v56, 1, 1, v55);
  sub_20B52F9E8(v56, v57, &qword_27C76B330);
  sub_20C13C124();
  sub_20B520158(v56, &qword_27C76B330);
  v59(v10 + v63, v61, v62);
  v64 = v135;
  v65 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__userBodyMassMetric;
  v66 = v133;
  v67 = v155;
  v130 = *(v133 + 56);
  (v130)(v155, 1, 1, v135);
  sub_20B52F9E8(v67, v156, &unk_27C765080);
  v68 = v132;
  sub_20C13C124();
  sub_20B520158(v67, &unk_27C765080);
  (*(v134 + 32))(v10 + v65, v68, v175);
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGenerator) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGeneratorSubscription) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGeneratorSubscription) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreMetricSubscription) = 0;
  (*(v150 + 104))(v149, *MEMORY[0x277D4EFB8], v151);
  LOBYTE(v176) = 0;
  sub_20C13A384();
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_pulseSubscription) = 0;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_dependencies) = v168;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(&v176, v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_networkEvaluator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v69 = *(&v176 + 1);
  v70 = (v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_eventHub);
  *v70 = v176;
  v70[1] = v69;
  v134 = sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B430);
  sub_20C133AA4();
  sub_20B51C710(&v176, v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_scoreClient);
  v71 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_catalogWorkout;
  v72 = sub_20C1344C4();
  v151 = *(v72 - 8);
  v73 = *(v151 + 16);
  v173 = v72;
  v73(v10 + v71, v172);
  v74 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityTypeBehavior;
  v75 = sub_20C137254();
  v149 = *(v75 - 8);
  v76 = *(v149 + 2);
  v150 = v75;
  v76(v10 + v74, v171);
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_sessionToken) = v169;
  type metadata accessor for BurnBarPulseMonitor();
  swift_allocObject();

  v77 = sub_20B71EBF8();

  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_pulseMonitor) = v77;
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreMetricThrottle) = a9;
  if (v136 == 2)
  {
    if (qword_27C760990 != -1)
    {
      swift_once();
    }

    v78 = v159;
    v79 = __swift_project_value_buffer(v159, qword_27C76B218);
    v80 = v158;
    v81 = v157;
    (*(v158 + 16))(v157, v79, v78);
    sub_20C13A344();
    (*(v80 + 8))(v81, v78);
    v82 = v176;
  }

  else
  {
    v82 = v123;
  }

  v83 = v138;
  v84 = v137;
  if (qword_27C760990 != -1)
  {
    swift_once();
  }

  v85 = v159;
  v86 = __swift_project_value_buffer(v159, qword_27C76B218);
  v87 = v158;
  v88 = v157;
  (*(v158 + 16))(v157, v86, v85);
  LOBYTE(v176) = v82 & 1;
  sub_20C13A354();
  (*(v87 + 8))(v88, v85);
  v89 = v143;
  if (v141)
  {
    if (qword_27C760988 != -1)
    {
      swift_once();
    }

    v90 = __swift_project_value_buffer(v83, qword_27C76B200);
    v91 = v160;
    (*(v84 + 16))(v160, v90, v83);
    sub_20C13A344();
    (*(v84 + 8))(v91, v83);
    v89 = v176;
  }

  if (qword_27C760988 != -1)
  {
    swift_once();
  }

  v92 = __swift_project_value_buffer(v83, qword_27C76B200);
  v93 = v160;
  (*(v84 + 16))(v160, v92, v83);
  *&v176 = v89;
  sub_20C13A354();
  (*(v84 + 8))(v93, v83);
  v94 = v140;
  sub_20B64B624(v170, v140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v147 + 32))(v146, v94, v148);
    v95 = v120;
    sub_20C137DA4();
    if ((*(v66 + 48))(v95, 1, v64) == 1)
    {
      sub_20B520158(v95, &unk_27C765080);
    }

    else
    {
      v96 = v119;
      (*(v66 + 32))(v119, v95, v64);
      v97 = v155;
      (*(v66 + 16))(v155, v96, v64);
      (v130)(v97, 0, 1, v64);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_20B52F9E8(v97, v156, &unk_27C765080);

      sub_20C13C154();
      sub_20B520158(v97, &unk_27C765080);
      (*(v66 + 8))(v96, v64);
    }

    v98 = v124;
    v99 = v146;
    sub_20C137E44();
    v100 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v98, v10 + v100, &unk_27C765CB0);
    swift_endAccess();
    v101 = v121;
    sub_20C137D74();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20B52F9E8(v101, v122, &unk_27C765120);

    sub_20C13C154();
    sub_20B520158(v101, &unk_27C765120);
    (*(v147 + 8))(v99, v148);
  }

  else
  {
    sub_20B64B688(v94);
  }

  if (sub_20BB74494())
  {
    v102 = 0;
  }

  else
  {
    v102 = 3;
  }

  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = v102;
  swift_getObjectType();
  sub_20C13B034();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v176);
  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v176);
  swift_getKeyPath();
  swift_getKeyPath();
  v103 = v145;
  sub_20C13C144();

  v104 = (*(v142 + 48))(v103, 1, v144);
  sub_20B520158(v103, &unk_27C765120);
  if (v104 == 1)
  {
    swift_allocObject();
    swift_unknownObjectRetain();
    *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityRingsSubscriptionToken) = sub_20C13A914();

    swift_getObjectType();
    sub_20C13ABE4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(&v176);
  }

  swift_getObjectType();
  sub_20C13AA04();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v176);
  v160 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__userBodyMassMetric;
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  v157 = sub_20B6D6ABC(&qword_27C76B438, &qword_27C76B420);
  v156 = sub_20B6D6ABC(&qword_27C76B440, &qword_27C76B418);
  v158 = sub_20B6D6ABC(&qword_27C76B448, &qword_27C76B410);
  v105 = v152;
  sub_20C13C0F4();
  v106 = swift_allocObject();
  swift_weakInit();
  v107 = swift_allocObject();
  v109 = v168;
  v108 = v169;
  v107[2] = v106;
  v107[3] = v109;
  v107[4] = v108;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_20BB7A498;
  *(v110 + 24) = v107;
  v155 = sub_20B6D6ABC(&qword_27C76B450, &qword_27C76B428);

  v111 = v154;
  v112 = sub_20C13C1C4();

  v159 = *(v153 + 8);
  (v159)(v105, v111);
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGeneratorSubscription) = v112;

  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  sub_20C13C0F4();
  v113 = swift_allocObject();
  swift_weakInit();

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v109;
  *(v114 + 32) = v108;
  *(v114 + 40) = a9;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_20BB7A4FC;
  *(v115 + 24) = v114;

  v116 = sub_20C13C1C4();

  sub_20B64B688(v170);
  (*(v149 + 1))(v171, v150);
  (*(v151 + 8))(v172, v173);
  (v159)(v105, v111);
  *(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGeneratorSubscription) = v116;

  return v10;
}

uint64_t sub_20BB728A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = sub_20C135364();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B024();
    (*(v7 + 16))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20B52F9E8(v5, v2, &unk_27C765080);
    sub_20C13C154();
    sub_20B520158(v5, &unk_27C765080);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_20BB72AC4(uint64_t a1)
{
  v2 = sub_20C134834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1337A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v15 = a1;
  sub_20C13A9E4();
  sub_20C133794();
  v13 = *(v7 + 8);
  v13(v12, v6);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277D50AA8])
  {
    return (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A9E4();
    sub_20BB780F8(v9);

    return (v13)(v9, v6);
  }

  return result;
}

uint64_t sub_20BB72CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v65 = a4;
  v66 = a3;
  v71 = a2;
  v7 = sub_20C134B64();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_20C133D84();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = sub_20C134844();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v70 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v55 - v23;
  v25 = sub_20C135364();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v61 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  v32 = v31;
  sub_20B52F9E8(a1, v24, &unk_27C765080);
  if ((*(v26 + 48))(v24, 1, v32) == 1)
  {
    return sub_20B520158(v24, &unk_27C765080);
  }

  (*(v26 + 32))(v30, v24, v32);
  sub_20B52F9E8(v71, v18, &qword_27C76B330);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    (*(v26 + 8))(v30, v32);
    return sub_20B520158(v18, &qword_27C76B330);
  }

  else
  {
    v34 = v70;
    (*(v20 + 32))(v70, v18, v19);
    sub_20B52F9E8(v66, v11, &unk_27C765120);
    v36 = v68;
    v35 = v69;
    if ((*(v68 + 48))(v11, 1, v69) == 1)
    {
      (*(v20 + 8))(v34, v19);
      (*(v26 + 8))(v30, v32);
      return sub_20B520158(v11, &unk_27C765120);
    }

    else
    {
      v57 = v32;
      v66 = v30;
      v71 = v20;
      v56 = v19;
      (*(v36 + 32))(v67, v11, v35);
      v37 = v62;
      sub_20C133D34();
      v38 = sub_20C134B54();
      v40 = v39;
      v42 = v41;
      (*(v63 + 8))(v37, v64);
      v75 = v38;
      v76 = v40;
      LOBYTE(v37) = v42 & 1;
      v77 = v42 & 1;
      v72 = 0;
      v73 = 0;
      v74 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v43 = sub_20C133BF4();
      sub_20B583F4C(v38, v40, v37);
      if (v43)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v45 = v56;
        if (Strong)
        {
          v46 = Strong;
          (*(v26 + 16))(v61, v66, v57);
          v47 = v71;
          v48 = v58;
          (*(v71 + 16))(v58, v70, v45);
          (*(v47 + 56))(v48, 0, 1, v45);
          type metadata accessor for ScoreMetricGenerator();
          swift_allocObject();
          v49 = v59;

          v50 = v60;

          *(v46 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGenerator) = sub_20BD786B0(v49, v50, v61, v48);
        }

        swift_beginAccess();
        v51 = swift_weakLoadStrong();
        if (v51)
        {
          v52 = *(v51 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGeneratorSubscription);

          if (v52)
          {
            sub_20C13C114();
          }
        }

        (*(v36 + 8))(v67, v35);
        (*(v71 + 8))(v70, v45);
      }

      else
      {
        swift_beginAccess();
        v53 = swift_weakLoadStrong();
        if (v53)
        {
          v54 = *(v53 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGeneratorSubscription);

          if (v54)
          {
            sub_20C13C114();
          }
        }

        (*(v36 + 8))(v67, v35);
        (*(v71 + 8))(v70, v56);
      }

      return (*(v26 + 8))(v66, v57);
    }
  }
}

uint64_t sub_20BB734F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v93 = a6;
  v92 = a5;
  v96 = a4;
  v97 = a3;
  v102 = a2;
  v86 = sub_20C13D354();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B458);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B460);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - v9;
  v95 = sub_20C134B64();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v77 - v13;
  v15 = sub_20C133D84();
  v16 = *(v15 - 8);
  v99 = v15;
  v100 = v16;
  MEMORY[0x28223BE20](v15);
  v98 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = sub_20C134844();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v101 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v77 - v27;
  v29 = sub_20C135364();
  MEMORY[0x28223BE20](v29);
  v90 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v77 - v32;
  v34 = a1;
  v36 = v35;
  v38 = v37;
  sub_20B52F9E8(v34, v28, &unk_27C765080);
  if ((*(v38 + 48))(v28, 1, v36) == 1)
  {
    return sub_20B520158(v28, &unk_27C765080);
  }

  (*(v38 + 32))(v33, v28, v36);
  sub_20B52F9E8(v102, v22, &qword_27C76B330);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    (*(v38 + 8))(v33, v36);
    return sub_20B520158(v22, &qword_27C76B330);
  }

  else
  {
    v80 = v33;
    v102 = v38;
    v40 = v101;
    (*(v24 + 32))(v101, v22, v23);
    sub_20B52F9E8(v97, v14, &unk_27C765120);
    v42 = v99;
    v41 = v100;
    if ((*(v100 + 48))(v14, 1, v99) == 1)
    {
      (*(v24 + 8))(v40, v23);
      (*(v102 + 8))(v80, v36);
      return sub_20B520158(v14, &unk_27C765120);
    }

    else
    {
      v79 = v36;
      v78 = v24;
      v97 = v23;
      (*(v41 + 32))(v98, v14, v42);
      sub_20C133D34();
      v43 = sub_20C134B54();
      v45 = v44;
      v47 = v46;
      (*(v94 + 8))(v11, v95);
      v107 = v43;
      v108 = v45;
      v47 &= 1u;
      v109 = v47;
      v104 = 0;
      v105 = 0;
      v106 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v48 = sub_20C133BF4();
      sub_20B583F4C(v43, v45, v47);
      if (v48)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v50 = v80;
        if (Strong)
        {
          v51 = Strong;
          v52 = v90;
          (*(v102 + 16))(v90, v80, v79);
          v53 = v78;
          v54 = v91;
          v55 = v97;
          (*(v78 + 16))(v91, v101, v97);
          (*(v53 + 56))(v54, 0, 1, v55);
          type metadata accessor for ScoreMetricGenerator();
          swift_allocObject();
          v56 = v92;

          v57 = v93;

          *(v51 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator) = sub_20BD786B0(v56, v57, v52, v54);
        }

        swift_beginAccess();
        v58 = swift_weakLoadStrong();
        if (v58)
        {
          v59 = *(v58 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGeneratorSubscription);

          if (v59)
          {
            sub_20C13C114();
          }
        }

        swift_beginAccess();
        v60 = swift_weakLoadStrong();
        if (v60)
        {
          v61 = v60;
          swift_beginAccess();
          v62 = swift_weakLoadStrong();
          if (v62 && (v63 = *(v62 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator), , , v63))
          {
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B468);
            v64 = v81;
            sub_20C13C134();
            swift_endAccess();

            v65 = v84;
            sub_20C13D334();
            sub_20B5E2E18();
            v66 = sub_20C13D374();
            v103 = v66;
            sub_20B6D6ABC(&qword_27C76B470, &qword_27C76B458);
            sub_20BB7A390(&qword_27C76B370, sub_20B5E2E18);
            v67 = v87;
            v68 = v83;
            sub_20C13C1B4();

            v69 = v65;
            v42 = v99;
            (*(v85 + 8))(v69, v86);
            v70 = v64;
            v50 = v80;
            (*(v82 + 8))(v70, v68);
            swift_allocObject();
            swift_beginAccess();
            swift_weakLoadStrong();
            swift_weakInit();

            sub_20B6D6ABC(&qword_27C76B478, &qword_27C76B460);
            v71 = v89;
            v72 = sub_20C13C1C4();

            (*(v88 + 8))(v67, v71);
          }

          else
          {
            v72 = 0;
          }

          (*(v100 + 8))(v98, v42);
          (*(v78 + 8))(v101, v97);
          (*(v102 + 8))(v50, v79);
          *(v61 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreMetricSubscription) = v72;
        }

        else
        {
          (*(v100 + 8))(v98, v42);
          (*(v78 + 8))(v101, v97);
          return (*(v102 + 8))(v50, v79);
        }
      }

      else
      {
        swift_beginAccess();
        v73 = swift_weakLoadStrong();
        v74 = v101;
        v75 = v80;
        if (v73)
        {
          v76 = *(v73 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGeneratorSubscription);

          if (v76)
          {
            sub_20C13C114();
          }
        }

        (*(v100 + 8))(v98, v42);
        (*(v78 + 8))(v74, v97);
        return (*(v102 + 8))(v75, v79);
      }
    }
  }
}

uint64_t sub_20BB742C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20C1337A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(a1, v4, &unk_27C768AE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B520158(v4, &unk_27C768AE0);
  }

  (*(v6 + 32))(v8, v4, v5);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB780F8(v8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BB74494()
{
  v1 = v0;
  v2 = sub_20C134B64();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v76 - v5;
  v7 = sub_20C133D84();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v76 - v10;
  v12 = sub_20C136484();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = sub_20C13BB84();
  v20 = *(v19 - 8);
  v85 = v19;
  v86 = v20;
  MEMORY[0x28223BE20](v19);
  v82 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v77 = &v76 - v23;
  MEMORY[0x28223BE20](v24);
  v76 = &v76 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v76 - v30;
  if ((sub_20C1371F4() & 1) == 0)
  {
    sub_20C13B4A4();
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1F4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20B517000, v34, v35, "Burn bar unsupported due to activityTypeBehavior.isEligibleForScoreEvaluation is false", v36, 2u);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    (*(v86 + 8))(v31, v85);
    return 0;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v32, v11, &unk_27C765CB0);
  v33 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C765CB0);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    if ((sub_20BB74E28() & 1) == 0)
    {
      sub_20C13B4A4();
      (*(v13 + 16))(v15, v18, v12);
      v56 = sub_20C13BB74();
      v57 = sub_20C13D1F4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v82 = v58;
        v84 = swift_slowAlloc();
        v90 = v84;
        *v58 = 136446210;
        LODWORD(v83) = v57;
        v59 = sub_20C136464();
        v61 = v60;
        v87 = v59;
        v88 = v60;
        LOBYTE(v58) = v62 & 1;
        v89 = v62 & 1;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
        v81 = v56;
        v64 = v33;
        v65 = v63;
        v66 = sub_20BB7A314();
        v80 = MEMORY[0x20F2EFA40](v65, v66);
        v68 = v67;
        v69 = *(v64 + 8);
        v69(v15, v12);
        sub_20B583F4C(v59, v61, v58);
        v70 = sub_20B51E694(v80, v68, &v90);

        v72 = v81;
        v71 = v82;
        *(v82 + 4) = v70;
        v73 = v71;
        _os_log_impl(&dword_20B517000, v72, v83, "Burn bar unsupported due to workout device connection state: %{public}s", v71, 0xCu);
        v74 = v84;
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x20F2F6A40](v74, -1, -1);
        MEMORY[0x20F2F6A40](v73, -1, -1);

        (*(v86 + 8))(v28, v85);
        v69(v18, v12);
      }

      else
      {

        v75 = *(v13 + 8);
        v75(v15, v12);
        (*(v86 + 8))(v28, v85);
        v75(v18, v12);
      }

      return 0;
    }

    (*(v13 + 8))(v18, v12);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  v38 = v83;
  v37 = v84;
  if ((*(v83 + 48))(v6, 1, v84) != 1)
  {
    v44 = v81;
    (*(v38 + 32))(v81, v6, v37);
    v45 = v78;
    sub_20C133D34();
    v46 = sub_20C134B54();
    v48 = v47;
    v50 = v49;
    (*(v79 + 8))(v45, v80);
    if (v50)
    {
      if ((v46 & 1) == 0)
      {
        (*(v38 + 8))(v44, v37);
        goto LABEL_11;
      }

      v51 = v76;
      sub_20C13B4A4();
      v52 = sub_20C13BB74();
      v53 = sub_20C13D1F4();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_23;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Burn bar unsupported due to move minutes activity move mode";
    }

    else
    {
      sub_20B583F4C(v46, v48, 0);
      v51 = v77;
      sub_20C13B4A4();
      v52 = sub_20C13BB74();
      v53 = sub_20C13D1F4();
      if (!os_log_type_enabled(v52, v53))
      {
LABEL_23:

        (*(v86 + 8))(v51, v85);
        (*(v38 + 8))(v44, v37);
        return 0;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Burn bar unsupported due to unknown activity move mode";
    }

    _os_log_impl(&dword_20B517000, v52, v53, v55, v54, 2u);
    MEMORY[0x20F2F6A40](v54, -1, -1);
    goto LABEL_23;
  }

  sub_20B520158(v6, &unk_27C765120);
LABEL_11:
  v39 = v82;
  sub_20C13B4A4();
  v40 = sub_20C13BB74();
  v41 = sub_20C13D1F4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_20B517000, v40, v41, "Burn bar supported", v42, 2u);
    MEMORY[0x20F2F6A40](v42, -1, -1);
  }

  (*(v86 + 8))(v39, v85);
  return 1;
}

uint64_t sub_20BB74E28()
{
  v0 = sub_20C136464();
  v2 = v1;
  v4 = v3;
  v5 = sub_20C136474();
  v7 = v6;
  v19 = 4;
  v14 = v0;
  v15 = v2;
  v16 = v4 & 1;
  sub_20B64BBC8();
  sub_20B64BC1C();
  if ((sub_20C133C14() & 1) == 0)
  {
    v19 = 3;
    v14 = v0;
    v15 = v2;
    v16 = v4 & 1;
    if ((sub_20C133C14() & 1) == 0 || (v19 = 0, v14 = v5, LOBYTE(v15) = v7 & 1, sub_20B64BC70(), sub_20B64BCC4(), (sub_20C133C14() & 1) == 0))
    {
      v19 = 3;
      v14 = v0;
      v15 = v2;
      v11 = v4 & 1;
      v16 = v11;
      if (sub_20C133C14())
      {
        v19 = 1;
        v14 = v5;
        LOBYTE(v15) = v7 & 1;
        sub_20B64BC70();
        sub_20B64BCC4();
        v12 = sub_20C133C14();
        sub_20B583F4C(v0, v2, v11);
        result = 1;
        if (v12)
        {
          return result;
        }
      }

      else
      {
        sub_20B583F4C(v0, v2, v11);
      }

      return 0;
    }
  }

  v8 = sub_20C13AAC4();
  v17 = v8;
  v18 = sub_20BB7A390(&qword_281103AF0, MEMORY[0x277D4F200]);
  v9 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D4F1F0], v8);
  LOBYTE(v8) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  if (v8)
  {
    sub_20B583F4C(v0, v2, v4 & 1);
    return 1;
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
    sub_20B583F4C(v0, v2, v4 & 1);
    return has_internal_content ^ 1u;
  }
}

uint64_t sub_20BB750B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_20C136484();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v5, v1 + v8, &unk_27C765CB0);
  swift_endAccess();
  result = sub_20BB74494();
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = v10;
  return result;
}

uint64_t sub_20BB75214()
{
  result = sub_20C138174();
  if ((result & 0x100000000) == 0)
  {
    return result;
  }

  if (result - 1 >= 2)
  {
    if (!result)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 32))(ObjectType, v6);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = *(v0 + 40);
        v9 = swift_getObjectType();
        (*(v8 + 32))(v9, v8);
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 24);
      v3 = swift_getObjectType();
      (*(v2 + 24))(v3, v2);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v0 + 40);
      v5 = swift_getObjectType();
      (*(v4 + 24))(v5, v4);
LABEL_13:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BB75354(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = sub_20C133D84();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20B52F9E8(v8, v5, &unk_27C765120);

  sub_20C13C154();
  sub_20B520158(v8, &unk_27C765120);
  if (sub_20BB74494())
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = v11;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityRingsSubscriptionToken) = 0;
}

uint64_t sub_20BB7550C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26[-v2];
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-v10];
  if (qword_27C760990 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_27C76B218);
  (*(v9 + 16))(v11, v12, v8);
  sub_20C13A344();
  (*(v9 + 8))(v11, v8);
  if (v26[15])
  {
    return sub_20BB76F98();
  }

  sub_20C13B4A4();
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20B517000, v14, v15, "Fetching community scores", v16, 2u);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B3B0);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B3B8) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14F320;
  v21 = v20 + v19;
  sub_20BB76D40(v21);
  sub_20BB76D4C(v21 + v18);
  sub_20B5E2E18();
  v22 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C134844();
  sub_20C137C54();

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BB7A30C;
  *(v25 + 24) = v23;

  v24(sub_20B52E4A0, v25);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20BB759A8(uint64_t a1)
{
  v87 = sub_20C134834();
  v84 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v83 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v81 - v4;
  v5 = sub_20C134844();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v11 - 8);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v19);
  v94 = (&v81 - v20);
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  v92 = v21;
  v93 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v82 = &v81 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  v30 = *a1;
  v31 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v86 = result;
  v81 = v15;
  if (v31)
  {
    sub_20C13B4A4();
    v33 = v30;
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    sub_20B71C190(v30, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97 = v37;
      *v36 = 136446210;
      swift_getErrorValue();
      v38 = MEMORY[0x20F2F5850](v95, v96);
      v40 = sub_20B51E694(v38, v39, &v97);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_20B517000, v34, v35, "Failed to fetch all community scores. error=%{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v37, -1, -1);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    (*(v93 + 8))(v24, v92);
    v42 = v90;
    v41 = v91;
    v43 = v89;
    (*(v90 + 16))(v89, v86 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__fakeCommunityScoresOnFailure, v91);
    sub_20C13A344();
    (*(v42 + 8))(v43, v41);
    if (v97 == 1)
    {
      sub_20BB76F98();
    }

    v91 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_catalogWorkout;
    sub_20C134324();
    v93 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityTypeBehavior;
    sub_20C1371C4();
    v61 = *MEMORY[0x277D50AA0];
    v62 = v83;
    v94 = *(v84 + 104);
    (v94)(v83, v61, v87);
    v63 = v81;
    sub_20C134804();
    v92 = *(v6 + 56);
    v92(v63, 0, 1, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v88;
    sub_20B52F9E8(v63, v88, &qword_27C76B330);

    sub_20C13C154();
    sub_20B520158(v63, &qword_27C76B330);
    sub_20C134324();
    sub_20C1371C4();
    *v62 = 300;
    (v94)(v62, *MEMORY[0x277D50AA8], v87);
    sub_20C134804();
    v92(v63, 0, 1, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20B52F9E8(v63, v64, &qword_27C76B330);
    sub_20C13C154();
    v65 = v63;
    return sub_20B520158(v65, &qword_27C76B330);
  }

  sub_20C13B4A4();
  v44 = sub_20C13BB74();
  v45 = sub_20C13D1F4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20B517000, v44, v45, "Successfully fetched all community scores", v46, 2u);
    MEMORY[0x20F2F6A40](v46, -1, -1);
  }

  v47 = *(v93 + 8);
  v93 += 8;
  v87 = v47;
  (v47)(v29, v92);
  v48 = *(v6 + 56);
  v48(v94, 1, 1, v5);
  v48(v18, 1, 1, v5);
  v49 = v30[2];
  if (!v49)
  {
LABEL_13:
    v52 = *(v6 + 48);
    v53 = v94;
    if (v52(v94, 1, v5))
    {
      v54 = v18;
      v55 = v52(v18, 1, v5);
      v56 = v86;
      v57 = v81;
      if (!v55)
      {
        v58 = 0;
        v59 = 1;
        v60 = v85;
        (*(v6 + 16))(v85, v18, v5);
LABEL_21:
        v54 = v18;
        v69 = v60;
        v70 = sub_20C1347E4();
        (*(v6 + 8))(v69, v5);
        if ((v59 & 1) == 0 || (v70 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v66 = *(v6 + 16);
      v67 = v85;
      v66(v85, v53, v5);
      v60 = v67;
      v59 = sub_20C1347E4();
      (*(v6 + 8))(v60, v5);
      v68 = v52(v18, 1, v5);
      v56 = v86;
      v57 = v81;
      if (!v68)
      {
        v58 = v59 ^ 1;
        v66(v60, v18, v5);
        goto LABEL_21;
      }

      v54 = v18;
      if ((v59 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v58 = 0;
LABEL_23:
    v71 = v89;
    v72 = v90;
    v73 = v91;
    (*(v90 + 16))(v89, v56 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__fakeCommunityScoresOnFailure, v91);
    sub_20C13A344();
    (*(v72 + 8))(v71, v73);
    if (v97 == 1)
    {
      v74 = v82;
      sub_20C13B4A4();
      v75 = sub_20C13BB74();
      v76 = sub_20C13D1F4();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v94;
      if (v77)
      {
        v79 = swift_slowAlloc();
        *v79 = 67240448;
        *(v79 + 4) = v58 & 1;
        *(v79 + 8) = 1026;
        *(v79 + 10) = 0;
        _os_log_impl(&dword_20B517000, v75, v76, "Community scores empty. Faking community scores. hasCumulativeScores=%{BOOL,public}d hasRollingScores=%{BOOL,public}d", v79, 0xEu);
        MEMORY[0x20F2F6A40](v79, -1, -1);
      }

      (v87)(v74, v92);
      sub_20BB76F98();

      goto LABEL_28;
    }

LABEL_27:
    v78 = v94;
    sub_20B52F9E8(v94, v57, &qword_27C76B330);
    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v88;
    sub_20B52F9E8(v57, v88, &qword_27C76B330);

    sub_20C13C154();
    sub_20B520158(v57, &qword_27C76B330);
    sub_20B52F9E8(v54, v57, &qword_27C76B330);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20B52F9E8(v57, v80, &qword_27C76B330);
    sub_20C13C154();
    sub_20B520158(v57, &qword_27C76B330);
LABEL_28:
    sub_20B520158(v54, &qword_27C76B330);
    v65 = v78;
    return sub_20B520158(v65, &qword_27C76B330);
  }

  v50 = 0;
  v51 = (v6 + 8);
  while (v50 < v30[2])
  {
    (*(v6 + 16))(v10, v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v50, v5);
    sub_20BB76610(v10, v94, v18);
    ++v50;
    (*v51)(v10, v5);
    if (v49 == v50)
    {
      goto LABEL_13;
    }
  }

  __break(1u);

  result = (*v51)(v10, v5);
  __break(1u);
  return result;
}

uint64_t sub_20BB76610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v59 = a2;
  v4 = sub_20C134844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - v9;
  v10 = sub_20C13BB84();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v57 - v14;
  MEMORY[0x28223BE20](v15);
  v60 = &v57 - v16;
  v17 = sub_20C134834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134824();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277D50AA8])
  {
    sub_20C13B4A4();
    v22 = *(v5 + 16);
    v22(v7, a1, v4);
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = v5;
      v60 = v4;
      v62 = a1;
      v26 = v22;
      v27 = v25;
      v28 = swift_slowAlloc();
      v66 = v28;
      *v27 = 136446210;
      sub_20BB7A390(&unk_27C76B3C0, MEMORY[0x277D50AC0]);
      v29 = sub_20C13DFA4();
      v31 = v30;
      (*(v59 + 8))(v7, v60);
      v32 = sub_20B51E694(v29, v31, &v66);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_20B517000, v23, v24, "Rolling community scores: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      v33 = v27;
      v22 = v26;
      a1 = v62;
      v5 = v59;
      v4 = v60;
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v64 + 8))(v63, v65);
    v51 = v61;
    sub_20B520158(v61, &qword_27C76B330);
    v22(v51, a1, v4);
    return (*(v5 + 56))(v51, 0, 1, v4);
  }

  else
  {
    v62 = a1;
    if (v21 == *MEMORY[0x277D50AA0])
    {
      v34 = v4;
      v35 = v60;
      sub_20C13B4A4();
      v36 = v5;
      v37 = *(v5 + 16);
      v38 = v58;
      v39 = v34;
      (v37)(v58, v62, v34);
      v40 = sub_20C13BB74();
      v41 = sub_20C13D1F4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v63 = v37;
        v43 = v42;
        v44 = swift_slowAlloc();
        v66 = v44;
        *v43 = 136446210;
        sub_20BB7A390(&unk_27C76B3C0, MEMORY[0x277D50AC0]);
        v45 = sub_20C13DFA4();
        v46 = v38;
        v48 = v47;
        (*(v36 + 8))(v46, v39);
        v49 = sub_20B51E694(v45, v48, &v66);

        *(v43 + 4) = v49;
        _os_log_impl(&dword_20B517000, v40, v41, "Cumulative community scores: %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x20F2F6A40](v44, -1, -1);
        v50 = v43;
        v37 = v63;
        MEMORY[0x20F2F6A40](v50, -1, -1);

        (*(v64 + 8))(v60, v65);
      }

      else
      {

        (*(v5 + 8))(v38, v39);
        (*(v64 + 8))(v35, v65);
      }

      v56 = v59;
      sub_20B520158(v59, &qword_27C76B330);
      (v37)(v56, v62, v39);
      return (*(v36 + 56))(v56, 0, 1, v39);
    }

    else
    {
      sub_20C13B4A4();
      v53 = sub_20C13BB74();
      v54 = sub_20C13D1D4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20B517000, v53, v54, "Unknown community scores", v55, 2u);
        MEMORY[0x20F2F6A40](v55, -1, -1);
      }

      (*(v64 + 8))(v12, v65);
      return (*(v18 + 8))(v20, v17);
    }
  }
}

uint64_t sub_20BB76D58@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v15 = sub_20C135294();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1352A4();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_scoreClient + 24);
  v13[3] = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_scoreClient + 32);
  v13[2] = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_scoreClient), v9);
  v13[1] = sub_20C134324();
  sub_20C1371C4();
  result = sub_20C134464();
  v12 = ceil(v11);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    (*(v3 + 104))(v5, *v16, v15);
    sub_20C135284();
    sub_20C139E94();
    return (*(v6 + 8))(v8, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20BB76F98()
{
  v1 = v0;
  v53 = sub_20C134844();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C134834();
  v3 = *(v48 - 1);
  MEMORY[0x28223BE20](v48);
  v47 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v45 - v8;
  MEMORY[0x28223BE20](v9);
  v49 = v45 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityTypeBehavior;
  v16 = sub_20C1371C4();
  v17 = sub_20BD0BD7C(v16) / 79.38;
  v19 = v18 / 79.38;
  v20 = (v18 / 79.38 - v17) / 3.0;
  v21 = v17 + v20;
  v22 = v18 / 79.38 - v20;
  sub_20C13B4A4();
  v23 = sub_20C13BB74();
  v24 = sub_20C13D1F4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45[2] = v1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v45[1] = v15;
    v28 = v11;
    v29 = v3;
    v30 = v27;
    v54 = v27;
    *v26 = 136446210;
    v31 = sub_20BD0A7B0();
    v33 = sub_20B51E694(v31, v32, &v54);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_20B517000, v23, v24, "Faking community scores for burn bar. %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v34 = v30;
    v3 = v29;
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v26, -1, -1);

    (*(v12 + 8))(v14, v28);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_20C134324();
  sub_20C1371C4();
  sub_20C134464();
  v36 = v35;
  sub_20BD0BDEC(v17, v35);
  sub_20BD0BDEC(v21, v36);
  sub_20BD0BDEC(v22, v36);
  sub_20BD0BDEC(v19, v36);
  (*(v3 + 104))(v47, *MEMORY[0x277D50AA0], v48);
  v37 = v49;
  sub_20C134804();
  v38 = v51;
  v39 = v53;
  v48 = *(v51 + 56);
  (v48)(v37, 0, 1, v53);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v52;
  sub_20B52F9E8(v37, v52, &qword_27C76B330);

  sub_20C13C154();
  v41 = v38;
  sub_20B520158(v37, &qword_27C76B330);
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v50;
  sub_20C13C144();

  if ((*(v41 + 48))(v42, 1, v39) == 1)
  {
    return sub_20B520158(v42, &qword_27C76B330);
  }

  v44 = v46;
  (*(v41 + 32))(v46, v42, v39);
  sub_20BD0A1E8(v44, 300, v37);
  (v48)(v37, 0, 1, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20B52F9E8(v37, v40, &qword_27C76B330);

  sub_20C13C154();
  sub_20B520158(v37, &qword_27C76B330);
  return (*(v41 + 8))(v44, v39);
}

uint64_t sub_20BB7763C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v78 - v3;
  v88 = sub_20C1337A4();
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v78 - v7;
  MEMORY[0x28223BE20](v8);
  v86 = &v78 - v9;
  MEMORY[0x28223BE20](v10);
  v85 = &v78 - v11;
  v12 = sub_20C135364();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_networkEvaluator), *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_networkEvaluator + 24));
  sub_20C13A884();
  v28 = sub_20C1350A4();
  v30 = v29;
  v31 = 1;
  if (v28 != sub_20C1350A4() || v30 != v32)
  {
    v31 = sub_20C13DFF4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  v33 = sub_20B8101CC(v27, v21, v31 & 1);
  if (v33 == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20C13C144();

    v35 = v89;
    v34 = v90;
    if ((*(v89 + 48))(v24, 1, v90) == 1)
    {
      return sub_20B520158(v24, &unk_27C765080);
    }

    else
    {
      v49 = v87;
      (*(v35 + 32))(v87, v24, v34);
      v50 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastReceivedScoreMetric;
      swift_beginAccess();
      sub_20B52F9E8(v1 + v50, v4, &unk_27C768AE0);
      v51 = v84;
      v52 = v88;
      if ((*(v84 + 48))(v4, 1, v88) == 1)
      {
        (*(v35 + 8))(v49, v34);
        return sub_20B520158(v4, &unk_27C768AE0);
      }

      else
      {
        (*(v51 + 32))(v85, v4, v52);
        v53 = v86;
        sub_20C133754();
        v54 = *(v51 + 16);
        v55 = v81;
        v54(v81, v53, v52);
        *&v56 = sub_20BEC5328(v55);
        LODWORD(v81) = v57;
        v58 = v56;
        v80 = sub_20C134324();
        v60 = v59;
        v61 = v83;
        sub_20C13B4A4();
        v62 = v82;
        v54(v82, v53, v52);

        v63 = sub_20C13BB74();
        v64 = sub_20C13D1F4();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v93[0] = v79;
          *v65 = 136446722;
          v66 = SessionBurnBarPackPosition.description.getter();
          v68 = sub_20B51E694(v66, v67, v93);

          *(v65 + 4) = v68;
          *(v65 + 12) = 2082;
          sub_20BB7A390(&qword_27C76B380, MEMORY[0x277D50128]);
          v69 = sub_20C13DFA4();
          v71 = v70;
          v72 = *(v51 + 8);
          v72(v62, v88);
          v73 = sub_20B51E694(v69, v71, v93);

          *(v65 + 14) = v73;
          *(v65 + 22) = 2082;
          v74 = sub_20B51E694(v80, v60, v93);

          *(v65 + 24) = v74;
          _os_log_impl(&dword_20B517000, v63, v64, "Burn bar ready Position: %{public}s, score: %{public}s, workoutIdentifier: %{public}s", v65, 0x20u);
          v75 = v79;
          swift_arrayDestroy();
          MEMORY[0x20F2F6A40](v75, -1, -1);
          v76 = v65;
          v52 = v88;
          MEMORY[0x20F2F6A40](v76, -1, -1);

          (*(v91 + 8))(v83, v92);
        }

        else
        {

          v72 = *(v51 + 8);
          v72(v62, v52);
          (*(v91 + 8))(v61, v92);
        }

        *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = 1;
        swift_getObjectType();
        v77 = v81;
        LOBYTE(v93[0]) = v81;
        v93[1] = v58;
        v93[2] = 0x4012000000000000;
        sub_20B98EED0();
        sub_20C13A764();
        v72(v86, v52);
        v72(v85, v52);
        result = (*(v89 + 8))(v87, v90);
        *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastPackPosition) = v77;
      }
    }
  }

  else
  {
    v37 = v33;
    sub_20C13B4A4();

    v38 = sub_20C13BB74();
    v39 = sub_20C13D1D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v94 = v41;
      *v40 = 136446466;
      LOBYTE(v93[0]) = v37;
      v42 = sub_20BB7A2B8();
      v43 = MEMORY[0x20F2EFA40](&type metadata for BurnBarUnavailableReason, v42);
      v45 = sub_20B51E694(v43, v44, &v94);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      v46 = sub_20C134324();
      v48 = sub_20B51E694(v46, v47, &v94);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_20B517000, v38, v39, "Burn bar unavailable. reason=%{public}s, workoutIdentifier: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v41, -1, -1);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    (*(v91 + 8))(v18, v92);
    *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) = 2;
    swift_getObjectType();
    v94 = 0x4010000000000000;
    v95 = v37;
    sub_20B98EE54();
    return sub_20C13A764();
  }

  return result;
}

uint64_t sub_20BB780F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_20C13BB84();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1337A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v15);
  v75 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - v18;
  v20 = sub_20C135364();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) != 1)
  {
    goto LABEL_4;
  }

  v69 = v7;
  v70 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v65 = v21;
    v66 = v20;
    (*(v21 + 32))(v70, v19);
    v23 = v75;
    v24 = v73;
    sub_20C133754();
    v25 = *(v10 + 16);
    v67 = v10 + 16;
    v68 = v25;
    v25(v14, v23, v9);
    *&v26 = sub_20BEC5328(v14);
    v28 = v27;
    v29 = v26;
    v30 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastPackPosition;
    v31 = 3.0;
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastPackPosition) == 5)
    {
      v62 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastPackPosition;
    }

    else
    {
      v51 = sub_20C136FB4();
      if (v51 == sub_20C136FB4())
      {
        (*(v10 + 8))(v23, v9);
        (*(v65 + 8))(v70, v66);
LABEL_14:
        v68(v6, v24, v9);
        goto LABEL_15;
      }

      v55 = *(v2 + v30);
      v62 = v30;
      if (v55 != 5)
      {
        v56 = sub_20C136FB4();
        v57 = sub_20C136FB4();
        v63 = v56 < v57;
        if (v56 >= v57)
        {
          v31 = 1.0;
        }

        else
        {
          v31 = 3.0;
        }

LABEL_8:
        swift_getObjectType();
        LOBYTE(v76[0]) = v28;
        v76[1] = v29;
        *&v76[2] = v31;
        v77 = v63;
        sub_20B98EF4C();
        sub_20C13A764();
        v32 = v74;
        sub_20C13B4A4();
        v64 = v28;
        v33 = v71;
        v68(v71, v75, v9);

        v34 = sub_20C13BB74();
        v35 = sub_20C13D1F4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v60 = v35;
          v37 = v36;
          v61 = swift_slowAlloc();
          v76[0] = v61;
          *v37 = 141559042;
          *(v37 + 4) = 1752392040;
          *(v37 + 12) = 2080;
          v38 = sub_20C10F0E4();
          v59 = v34;
          v40 = sub_20B51E694(v38, v39, v76);

          *(v37 + 14) = v40;
          *(v37 + 22) = 2082;
          sub_20BB7A390(&qword_27C76B380, MEMORY[0x277D50128]);
          v41 = sub_20C13DFA4();
          v43 = v42;
          v44 = *(v10 + 8);
          v44(v33, v9);
          v45 = sub_20B51E694(v41, v43, v76);

          *(v37 + 24) = v45;
          *(v37 + 32) = 2082;
          v46 = sub_20C134324();
          v48 = sub_20B51E694(v46, v47, v76);

          *(v37 + 34) = v48;
          *(v37 + 42) = 1024;
          *(v37 + 44) = v63;
          v49 = v59;
          _os_log_impl(&dword_20B517000, v59, v60, "Burn bar pack position changed: %{mask.hash}s, score: %{public}s, workoutIdentifier: %{public}s, moved forward: %{BOOL}d", v37, 0x30u);
          v50 = v61;
          swift_arrayDestroy();
          MEMORY[0x20F2F6A40](v50, -1, -1);
          MEMORY[0x20F2F6A40](v37, -1, -1);

          (*(v72 + 8))(v74, v69);
          v44(v75, v9);
          v24 = v73;
          (*(v65 + 8))(v70, v66);
        }

        else
        {

          v52 = *(v10 + 8);
          v52(v33, v9);
          (*(v72 + 8))(v32, v69);
          v52(v75, v9);
          (*(v65 + 8))(v70, v66);
          v24 = v73;
        }

        *(v2 + v62) = v64;
        goto LABEL_14;
      }
    }

    v63 = 1;
    goto LABEL_8;
  }

  sub_20B520158(v19, &unk_27C765080);
  a1 = v73;
LABEL_4:
  (*(v10 + 16))(v6, a1, v9);
LABEL_15:
  (*(v10 + 56))(v6, 0, 1, v9);
  v53 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastReceivedScoreMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v53, &unk_27C768AE0);
  return swift_endAccess();
}

uint64_t sub_20BB78934()
{
  v1 = sub_20C13BB84();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_20C1337A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastReceivedScoreMetric;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v14, v6, &unk_27C768AE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C768AE0);
    sub_20C13B4A4();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20B517000, v15, v16, "lastReceivedScoreMetric nil when displaying burn bar ready", v17, 2u);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    return (*(v28 + 8))(v3, v29);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v19 = sub_20BEC5328(v10);
    v21 = v20;
    v22 = v19;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(v21, ObjectType, v23, v22);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v0 + 40);
      v26 = swift_getObjectType();
      (*(v25 + 8))(v21, v26, v25, v22);
      swift_unknownObjectRelease();
    }

    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_20BB78CE0()
{
  v1 = v0;
  v2 = sub_20C13D354();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B358);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B360);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v24 = &v24 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20C13C144();

    (*(v10 + 40))(ObjectType, v10, *&v31);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v0 + 40);
    v13 = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20C13C144();

    (*(v12 + 40))(v13, v12, *&v31);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v0 + 24);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v15, v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v0 + 40);
    v17 = swift_getObjectType();
    (*(v16 + 32))(v17, v16);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7648E8);
  sub_20C13C134();
  swift_endAccess();
  sub_20C13D344();
  sub_20B5E2E18();
  v18 = sub_20C13D374();
  v31 = v18;
  sub_20B6D6ABC(&qword_27C76B368, &qword_27C76B358);
  sub_20BB7A390(&qword_27C76B370, sub_20B5E2E18);
  v19 = v24;
  v20 = v26;
  sub_20C13C1B4();

  (*(v27 + 8))(v4, v28);
  (*(v25 + 8))(v7, v20);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C76B378, &qword_27C76B360);
  v21 = v30;
  v22 = sub_20C13C1C4();

  (*(v29 + 8))(v19, v21);
  *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_pulseSubscription) = v22;

  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_20BB792CC(float *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 24);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 40))(ObjectType, v5, v1);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v8 + 40);

    if (v9)
    {
      v11 = swift_getObjectType();
      (*(v10 + 40))(v11, v10, v1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BB793E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BB79504()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);
  v1 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__activityRings;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B3F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_activityTypeBehavior;
  v4 = sub_20C137254();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_lastReceivedScoreMetric, &unk_27C768AE0);
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_workoutDeviceConnection, &unk_27C765CB0);
  v5 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__cumulativeCommunityScores;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B400);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__rollingCommunityScores, v6);
  v8 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__userBodyMassMetric;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B408);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter__fakeCommunityScoresOnFailure;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_catalogWorkout;
  v13 = sub_20C1344C4();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_scoreClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_networkEvaluator);

  return v0;
}

uint64_t sub_20BB79844()
{
  sub_20BB79504();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionBurnBarPresenter()
{
  result = qword_27C76B308;
  if (!qword_27C76B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB798F0()
{
  sub_20BB79C68(319, &qword_27C76B318, &unk_27C765120);
  if (v0 <= 0x3F)
  {
    sub_20C137254();
    if (v1 <= 0x3F)
    {
      sub_20BB79C14(319, &qword_27C76AA20, MEMORY[0x277D50128]);
      if (v2 <= 0x3F)
      {
        sub_20BB79C14(319, &qword_27C76B320, MEMORY[0x277D529D8]);
        if (v3 <= 0x3F)
        {
          sub_20BB79C68(319, &qword_27C76B328, &qword_27C76B330);
          if (v4 <= 0x3F)
          {
            sub_20BB79C68(319, &unk_27C76B338, &unk_27C765080);
            if (v5 <= 0x3F)
            {
              sub_20B52432C();
              if (v6 <= 0x3F)
              {
                sub_20C1344C4();
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20BB79C14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BB79C68(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_20C13C164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20BB79CD0()
{
  result = qword_27C76B348;
  if (!qword_27C76B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B348);
  }

  return result;
}

float sub_20BB79D24@<S0>(float *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_20BB79DA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20C13C154();
}

uint64_t sub_20BB79E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_20B52F9E8(a1, &v14 - v11, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20B52F9E8(v12, v10, a5);

  sub_20C13C154();
  return sub_20B520158(v12, a5);
}

uint64_t sub_20BB79F48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20C13C144();
}

void sub_20BB79FC0(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime;
  *v11 = a1;
  *(v11 + 8) = 0;

  sub_20BD79328(a1, a2);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_20BD79DB0(a1);

LABEL_6:
  v12 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGenerator);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12 + OBJC_IVAR____TtC9SeymourUI20ScoreMetricGenerator_lastMediaElapsedTime;
  *v13 = a1;
  *(v13 + 8) = 0;

  sub_20BD79328(a1, a2);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  sub_20BD79DB0(a1);

LABEL_11:
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state))
  {
    return;
  }

  if (a2 >= a1)
  {
    a2 = a1;
  }

  if (qword_27C760988 != -1)
  {
    goto LABEL_24;
  }

LABEL_15:
  v14 = __swift_project_value_buffer(v6, qword_27C76B200);
  (*(v7 + 16))(v9, v14, v6);
  sub_20C13A344();
  (*(v7 + 8))(v9, v6);
  if (v15[1] <= a2)
  {
    sub_20BB7763C();
  }
}

unint64_t sub_20BB7A2B8()
{
  result = qword_27C76B398;
  if (!qword_27C76B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B398);
  }

  return result;
}

unint64_t sub_20BB7A314()
{
  result = qword_27C76BC20;
  if (!qword_27C76BC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C76B3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BC20);
  }

  return result;
}

uint64_t sub_20BB7A390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_118Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20BB7A50C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B480);
  return v3(a1, a1 + *(v4 + 48), a1 + *(v4 + 64));
}

id sub_20BB7A6B4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_artworkItemProvider;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_artworkItemProvider);
  if (v4)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = v4;
    v8 = sub_20BAD952C(ObjectType, v5);
    v9 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

    v10 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v7 properties:0 placeholderImage:v9];
    [v2 setImage_];

    if (*(v1 + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_title + 8))
    {

      v11 = sub_20C13C914();
    }

    else
    {
      v11 = 0;
    }

    [v2 setTitle_];

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_storefrontLocalizer + 24));
    sub_20C138D34();
    v12 = sub_20C13C914();

    [v2 setSummary_];
  }

  v13 = sub_20C132B64();
  [v2 setOriginalURL_];

  return v2;
}

id sub_20BB7A908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareSheetLinkItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ShareSheetLinkItemProvider()
{
  result = qword_27C76B498;
  if (!qword_27C76B498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB7AA34()
{
  result = sub_20C132C14();
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

uint64_t MetricAccountEventInterceptor.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetricAccountEventInterceptor.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricAccountEventInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v105 = type metadata accessor for NavigationRequest();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v3;
  v4 = sub_20C1391E4();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v16 - 8);
  v86 = &v80 - v17;
  v94 = sub_20C134F74();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v85 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v80 - v20;
  v21 = sub_20C13BB84();
  v99 = *(v21 - 8);
  v100 = v21;
  MEMORY[0x28223BE20](v21);
  v81 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = &v80 - v24;
  v25 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C13B604();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C80);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v80 - v33;
  v35 = sub_20C135D24();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v84 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v80 - v39;
  sub_20BB7B8B4(v34);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_20BAA7938(v34);
    v41 = v101;
    sub_20BAA8228(a1, v101, type metadata accessor for NavigationRequest);
    v42 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v43 = swift_allocObject();
    sub_20BAA82F0(v41, v43 + v42, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }

  else
  {
    v82 = a1;
    v80 = v36;
    v45 = *(v36 + 32);
    v93 = v35;
    v45(v40, v34, v35);
    v46 = sub_20C1380C4();
    (*(v29 + 104))(v31, *MEMORY[0x277D4F8B8], v28);
    v47 = sub_20B8D7248(v31, v46);

    (*(v29 + 8))(v31, v28);
    v48 = v40;
    if ((v47 & 1) != 0 && (sub_20BAA8228(v82, v27, type metadata accessor for NavigationResource), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_20BAA8290(v27, type metadata accessor for NavigationResource), EnumCaseMultiPayload == 12))
    {
      v50 = v81;
      sub_20C13B534();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1F4();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v101;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20B517000, v51, v52, "[MetricAccountEventInterceptor] dropping account event for trainer tips gallery request", v55, 2u);
        v56 = v55;
        v48 = v40;
        MEMORY[0x20F2F6A40](v56, -1, -1);
      }

      (*(v99 + 8))(v50, v100);
      sub_20BAA8228(v82, v54, type metadata accessor for NavigationRequest);
      v57 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v58 = swift_allocObject();
      sub_20BAA82F0(v54, v58 + v57, type metadata accessor for NavigationRequest);
      sub_20C137CA4();
      return (*(v80 + 8))(v48, v93);
    }

    else
    {
      v59 = v83;
      sub_20C13B534();
      v60 = sub_20C13BB74();
      v61 = sub_20C13D1B4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_20B517000, v60, v61, "GDPR consented through interception, sending metric account event.", v62, 2u);
        MEMORY[0x20F2F6A40](v62, -1, -1);
      }

      (*(v99 + 8))(v59, v100);
      v63 = v80;
      (*(v80 + 16))(v84, v40, v93);
      v64 = sub_20C1333A4();
      (*(*(v64 - 8) + 56))(v86, 1, 1, v64);
      v65 = sub_20C135664();
      (*(*(v65 - 8) + 56))(v87, 1, 1, v65);
      v66 = sub_20C135674();
      (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
      v67 = v89;
      sub_20C134F94();
      v68 = sub_20C134FB4();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
      (*(*(v69 - 8) + 56))(v91, 1, 1, v69);
      v70 = sub_20C135F14();
      (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
      v71 = v90;
      sub_20C134F54();
      v72 = v92;
      v73 = v94;
      (*(v92 + 16))(v85, v71, v94);
      v74 = v96;
      sub_20C1391F4();
      swift_getObjectType();
      v75 = v48;
      sub_20B5268FC(&qword_281103B30, 255, MEMORY[0x277D542C0]);
      v76 = v98;
      sub_20C13A764();
      v77 = v101;
      sub_20BAA8228(v82, v101, type metadata accessor for NavigationRequest);
      v78 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v79 = swift_allocObject();
      sub_20BAA82F0(v77, v79 + v78, type metadata accessor for NavigationRequest);
      sub_20C137CA4();
      (*(v97 + 8))(v74, v76);
      (*(v72 + 8))(v71, v73);
      return (*(v63 + 8))(v75, v93);
    }
  }
}

uint64_t sub_20BB7B8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationSharingURLInfo();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationRequest();
  if (*(v1 + *(v9 + 36)))
  {
    sub_20BAA8228(v1 + *(v9 + 24), v5, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20BAA8290(v5, type metadata accessor for NavigationSource);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B4B0);
      v14 = *(v13 + 48);
      v15 = (a1 + *(v13 + 64));
      v16 = sub_20C132C14();
      v17 = *(*(v16 - 8) + 56);
      v17(a1, 1, 1, v16);
      v17(a1 + v14, 1, 1, v16);
      *v15 = 0;
      v15[1] = 0;
    }

    else
    {
      sub_20BAA82F0(v5, v8, type metadata accessor for NavigationSharingURLInfo);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B4B0);
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      v21 = sub_20C132C14();
      v22 = *(v21 - 8);
      (*(v22 + 32))(a1, v8, v21);
      (*(v22 + 56))(a1, 0, 1, v21);
      sub_20B6A69B4(&v8[*(v6 + 20)], a1 + v19);
      *(a1 + v20) = *&v8[*(v6 + 24)];
    }

    v23 = *MEMORY[0x277D52140];
    v24 = sub_20C135D24();
    v25 = *(v24 - 8);
    (*(v25 + 104))(a1, v23, v24);
    return (*(v25 + 56))(a1, 0, 1, v24);
  }

  else
  {
    v10 = sub_20C135D24();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BB7C41C(uint64_t a1, uint64_t a2)
{
  result = sub_20B5268FC(&qword_27C76B4A8, a2, type metadata accessor for MetricAccountEventInterceptor);
  *(a1 + 8) = result;
  return result;
}

char *sub_20BB7C4C0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_blurView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v10 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_iconImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_styleProvider];
  v12 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
  sub_20C13D514();
  *v11 = xmmword_20C170180;
  *(v11 + 2) = 0xE500000000000000;
  *(v11 + 3) = 4;
  *(v11 + 4) = v12;
  *(v11 + 5) = v13;
  *(v11 + 6) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_vibrancyView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v48.receiver = v4;
  v48.super_class = type metadata accessor for PlaybackCloseButton();
  v16 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_styleProvider];
  v18 = *&v16[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_styleProvider];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = [v19 effectWithStyle_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_blurView;
  [*&v20[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_blurView] setEffect_];
  [*&v20[v22] setClipsToBounds_];
  [v20 addSubview_];
  v23 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_vibrancyView;
  v24 = *&v20[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_vibrancyView];
  v25 = *(v17 + 3);
  v26 = objc_opt_self();
  v27 = v24;
  v47 = v21;
  v28 = [v26 effectForBlurEffect:v21 style:v25];
  [v27 setEffect_];

  v29 = [*&v20[v22] contentView];
  [v29 addSubview_];

  v30 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_iconImageView;
  v31 = *&v20[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_iconImageView];

  v32 = sub_20C13C914();

  v33 = [objc_opt_self() systemImageNamed_];

  if (v33)
  {
    v34 = [v33 imageWithRenderingMode_];
  }

  else
  {
    v34 = 0;
  }

  [v31 setImage_];

  [*&v20[v30] setContentMode_];
  [*&v20[v30] setPreferredSymbolConfiguration_];
  v35 = [*&v20[v23] contentView];
  [v35 addSubview_];

  v36 = objc_opt_self();
  v37 = v20;
  v38 = [v36 whiteColor];
  [v37 setTintColor_];

  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C151490;
  v41 = [v37 widthAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v40 + 32) = v42;
  v43 = [v37 heightAnchor];

  v44 = [v43 constraintEqualToConstant_];
  *(v40 + 40) = v44;
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v39 activateConstraints_];

  return v37;
}

void sub_20BB7C9EC()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PlaybackCloseButton();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_blurView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_vibrancyView];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_iconImageView];
  [v0 bounds];
  [v3 setFrame_];
  [v0 bounds];
  v4 = CGRectGetHeight(v7) * 0.5;
  v5 = [v1 layer];
  [v5 setCornerRadius_];
}

id sub_20BB7CB44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackCloseButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BB7CC28()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_blurView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v2 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_iconImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_styleProvider;
  v4 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
  sub_20C13D514();
  *v3 = xmmword_20C170180;
  *(v3 + 16) = 0xE500000000000000;
  *(v3 + 24) = 4;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI19PlaybackCloseButton_vibrancyView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for TVEditableCellState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TVEditableCellState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_20BB7CECC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_20BB7CEEC()
{
  v1 = *v0;
  sub_20C13E164();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BB7CF60()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x20F2F58E0](v2);
}

uint64_t sub_20BB7CFB8()
{
  v1 = *v0;
  sub_20C13E164();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    v2 = v1 & 1;
  }

  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

BOOL sub_20BB7D028(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_20BB7D084()
{
  result = qword_27C76B4D8;
  if (!qword_27C76B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B4D8);
  }

  return result;
}

id WorkoutPlanArtworkView.artwork.setter(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v10[2] = *(v3 + 2);
  v10[3] = v4;
  v11 = *(v3 + 8);
  v5 = *(v3 + 1);
  v10[0] = *v3;
  v10[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 3) = v6;
  *(v3 + 8) = *(a1 + 64);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  sub_20BB7D7A0(v10);
  v8 = &v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  return [v1 setNeedsDisplay];
}

id sub_20BB7D1C8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView____lazy_storage___placeholderImage;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView____lazy_storage___placeholderImage);
  v3 = v2;
  if (v2 == 1)
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_20C13C914();
    v3 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_20BB7F1BC(v7);
  }

  sub_20BB7F1CC(v2);
  return v3;
}

uint64_t WorkoutPlanArtworkView.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_20BB7D808(v10, &v9);
}

uint64_t sub_20BB7D334@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork;
  swift_beginAccess();
  v11[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v12 = *(v3 + 64);
  v11[2] = v5;
  v11[3] = v6;
  v11[1] = v4;
  v7 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v7;
  *(a2 + 64) = *(v3 + 64);
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  return sub_20BB7D808(v11, &v10);
}

id sub_20BB7D3C4(__int128 *a1, void **a2)
{
  v2 = a1[3];
  v17 = a1[2];
  v18 = v2;
  v19 = *(a1 + 8);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork;
  swift_beginAccess();
  v20[0] = *v5;
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v21 = *(v5 + 64);
  v20[2] = v7;
  v20[3] = v8;
  v20[1] = v6;
  v10 = v17;
  v9 = v18;
  v11 = v16;
  *(v5 + 64) = v19;
  *(v5 + 32) = v10;
  *(v5 + 48) = v9;
  *(v5 + 16) = v11;
  *v5 = v15;
  sub_20BB7D808(&v15, &v14);
  sub_20BB7D7A0(v20);
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  return [v4 setNeedsDisplay];
}

id (*WorkoutPlanArtworkView.artwork.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20BB7D508;
}

id sub_20BB7D508(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = &v5[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
    *v6 = 0u;
    *(v6 + 1) = 0u;

    return [v5 setNeedsDisplay];
  }

  return result;
}

id WorkoutPlanArtworkView.init(artwork:appearance:)(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  *&v2[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView____lazy_storage___placeholderImage] = 1;
  v7 = &v2[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
  v8 = 0uLL;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 0;
  v9 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_bottomLineColor;
  if (qword_27C760C00 != -1)
  {
    swift_once();
    v8 = 0uLL;
  }

  v10 = qword_27C79C6B0;
  *&v2[v9] = qword_27C79C6B0;
  *&v2[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_dimmedGradientLayer] = 0;
  v11 = &v2[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v11 = v8;
  v11[1] = v8;
  swift_beginAccess();
  v12 = *(v7 + 3);
  v25[2] = *(v7 + 2);
  v25[3] = v12;
  v26 = *(v7 + 8);
  v13 = *(v7 + 1);
  v25[0] = *v7;
  v25[1] = v13;
  v14 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v14;
  *(v7 + 8) = *(a1 + 64);
  v15 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v15;
  v16 = v10;
  sub_20BB7D7A0(v25);
  v2[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_appearance] = v6;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = [v17 traitCollection];
  v19 = [objc_opt_self() systemBackgroundColor];
  v20 = sub_20C13D3B4();
  v21 = [v19 resolvedColorWithTraitCollection_];

  [v17 setBackgroundColor_];
  v23 = v6;
  sub_20BB7D878(&v23);

  return v17;
}

uint64_t sub_20BB7D7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BB7D808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BB7D878(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_dimmedGradientLayer;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_dimmedGradientLayer];
  if (v2)
  {
    if (!v4)
    {
      return;
    }

    v5 = 1;
LABEL_7:

    [v4 setHidden_];
    return;
  }

  if (v4)
  {
    v6 = v4;
    [v1 bounds];
    [v6 setFrame_];

    v4 = *&v1[v3];
    if (!v4)
    {
      return;
    }

    v5 = 0;
    goto LABEL_7;
  }

  v7 = sub_20BB7EBC8();
  v8 = *&v1[v3];
  *&v1[v3] = v7;
  v9 = v7;

  v10 = [v1 layer];
  v11 = v9;
  [v10 addSublayer_];

  [v1 bounds];
  [v11 setFrame_];
}

Swift::Void __swiftcall WorkoutPlanArtworkView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v36.receiver = v1;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, sel_drawRect_, x, y, width, height);
  if (width != 0.0 || height != 0.0)
  {
    v6 = UIGraphicsGetCurrentContext();
    if (v6)
    {
      v7 = v6;
      v8 = &v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
      swift_beginAccess();
      v9 = *(v8 + 1);
      v31 = *v8;
      v32 = v9;
      v10 = *(v8 + 3);
      v33 = *(v8 + 2);
      v34 = v10;
      v35 = *(v8 + 8);
      if (v31 && *(v35 + 16))
      {
        v11 = v31;
        v12 = *(&v32 + 1);

        CGContextSaveGState(v7);
        sub_20BB7DD54(v7, x, y, width, height);
        v13 = *(v8 + 1);
        v26 = *v8;
        v27 = v13;
        v14 = *(v8 + 3);
        v28 = *(v8 + 2);
        v29 = v14;
        v30 = *(v8 + 8);
        if (v26)
        {
          v15 = v26;
          v16 = *(&v27 + 1);

          CGContextSaveGState(v7);
          CGContextBeginPath(v7);
          sub_20C13D164();
          sub_20C13D174();
          CGContextClosePath(v7);
          v17 = [*&v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_bottomLineColor] CGColor];
          CGContextSetStrokeColorWithColor(v7, v17);

          CGContextSetLineWidth(v7, *(&v26 + 1));
          CGContextStrokePath(v7);
          CGContextRestoreGState(v7);
          sub_20BB7D7A0(&v26);
        }

        CGContextRestoreGState(v7);
        sub_20BB7D7A0(&v31);
      }

      else
      {
        v18 = v1;
        v19 = sub_20BB7D1C8();
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(v7);
          [v20 size];
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v38 = AVMakeRectWithAspectRatioInsideRect(v37, v39);
          [v20 drawInRect_];
          CGContextRestoreGState(v7);
        }

        v21 = *(v8 + 1);
        v26 = *v8;
        v27 = v21;
        v22 = *(v8 + 3);
        v28 = *(v8 + 2);
        v29 = v22;
        v30 = *(v8 + 8);
        if (v26)
        {
          v23 = v26;
          v24 = *(&v27 + 1);

          CGContextSaveGState(v7);
          CGContextBeginPath(v7);
          sub_20C13D164();
          sub_20C13D174();
          CGContextClosePath(v7);
          v25 = [*&v18[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_bottomLineColor] CGColor];
          CGContextSetStrokeColorWithColor(v7, v25);

          CGContextSetLineWidth(v7, *(&v26 + 1));
          CGContextStrokePath(v7);
          CGContextRestoreGState(v7);

          sub_20BB7D7A0(&v26);
          return;
        }
      }
    }
  }
}

uint64_t sub_20BB7DD54(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v5 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork);
  result = swift_beginAccess();
  v14 = v12[3];
  v127 = v12[2];
  v128 = v14;
  v15 = *(v12 + 8);
  v129 = v15;
  v16 = v12[1];
  v125 = *v12;
  v126 = v16;
  if (v125)
  {
    v17 = *(&v127 + 1);
    v18 = *&v126 * a5;
    v106 = v128;
    v19 = v12[3];
    v123[2] = v12[2];
    v123[3] = v19;
    v124 = *(v12 + 8);
    v20 = v12[1];
    v123[0] = *v12;
    v123[1] = v20;
    sub_20B97671C(v123, v121);
    result = sub_20C13D4D4();
    v104 = v22;
    v105 = v21;
    if (v17 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (v17)
    {
      if ((v106 & 0x8000000000000000) == 0)
      {
        v95 = v17;
        v107 = 0;
        v23 = (v9 + 8);
        v101 = v8;
        v24 = v106;
        v103 = v15;
        while (!v24)
        {
LABEL_6:
          if (++v107 == v95)
          {
            return sub_20BB7D7A0(&v125);
          }
        }

        v25 = 0;
        while (1)
        {
          MEMORY[0x20F2EA980](v25, v107);
          if (*(v15 + 16) && (v26 = sub_20B65A98C(v11), (v27 & 1) != 0))
          {
            v28 = *(*(v15 + 56) + v26);
            v29 = v105 + v18 * sub_20C133224();
            v30 = v104 + v18 * sub_20C133234();
            v31 = v12[1];
            v121[0] = *v12;
            v121[1] = v31;
            v32 = v12[3];
            v121[2] = v12[2];
            v121[3] = v32;
            v122 = *(v12 + 8);
            v33 = *&v121[0];
            if (*&v121[0])
            {
              v34 = *(v121 + 1);
              v35 = v12[3];
              v118 = v12[2];
              v119 = v35;
              v120 = *(v12 + 8);
              v36 = v12[1];
              v116 = *v12;
              v117 = v36;
              sub_20B97671C(&v116, &v111);
              CGContextSaveGState(a1);
              CGContextBeginPath(a1);
              v130.origin.x = v29;
              v130.origin.y = v30;
              v130.size.width = v18;
              v130.size.height = v18;
              CGRectGetMinX(v130);
              v131.origin.x = v29;
              v131.origin.y = v30;
              v131.size.width = v18;
              v131.size.height = v18;
              CGRectGetMinY(v131);
              sub_20C13D164();
              v132.origin.x = v29;
              v132.origin.y = v30;
              v132.size.width = v18;
              v132.size.height = v18;
              CGRectGetMaxX(v132);
              v133.origin.x = v29;
              v133.origin.y = v30;
              v133.size.width = v18;
              v133.size.height = v18;
              CGRectGetMinY(v133);
              sub_20C13D174();
              v134.origin.x = v29;
              v134.origin.y = v30;
              v134.size.width = v18;
              v134.size.height = v18;
              CGRectGetMaxX(v134);
              v135.origin.x = v29;
              v135.origin.y = v30;
              v135.size.width = v18;
              v135.size.height = v18;
              CGRectGetMaxY(v135);
              sub_20C13D174();
              v136.origin.x = v29;
              v136.origin.y = v30;
              v136.size.width = v18;
              v136.size.height = v18;
              CGRectGetMaxX(v136);
              v137.origin.x = v29;
              v137.origin.y = v30;
              v137.size.width = v18;
              v137.size.height = v18;
              CGRectGetMinY(v137);
              sub_20C13D174();
              CGContextClosePath(a1);
              v37 = [v33 CGColor];
              CGContextSetStrokeColorWithColor(a1, v37);

              CGContextSetLineWidth(a1, v34);
              CGContextStrokePath(a1);
              CGContextRestoreGState(a1);
              sub_20BB7D7A0(v121);
            }

            v38 = v12[1];
            v116 = *v12;
            v117 = v38;
            v39 = v12[3];
            v118 = v12[2];
            v119 = v39;
            v120 = *(v12 + 8);
            v40 = v116;
            if (v116)
            {
              v41 = *(&v116 + 1);
              if (((1 << v28) & 3) == 0)
              {
                v42 = objc_allocWithZone(MEMORY[0x277D75208]);
                v113 = v118;
                v114 = v119;
                v115 = v120;
                v111 = v116;
                v112 = v117;
                sub_20B97671C(&v111, v109);
                v43 = [v42 init];
                v138.origin.x = v29;
                v138.origin.y = v30;
                v138.size.width = v18;
                v138.size.height = v18;
                MaxX = CGRectGetMaxX(v138);
                v45 = v29;
                v46 = v30;
                v47 = v18;
                v48 = v18;
                if (((1 << v28) & 0xC) != 0)
                {
                  [v43 moveToPoint_];
                  v139.origin.x = v29;
                  v139.origin.y = v30;
                  v139.size.width = v18;
                  v139.size.height = v18;
                  MinX = CGRectGetMinX(v139);
                  v140.origin.x = v29;
                  v140.origin.y = v30;
                  v140.size.width = v18;
                  v140.size.height = v18;
                  MaxY = CGRectGetMaxY(v140);
                }

                else
                {
                  [v43 moveToPoint_];
                  v141.origin.x = v29;
                  v141.origin.y = v30;
                  v141.size.width = v18;
                  v141.size.height = v18;
                  MinX = CGRectGetMinX(v141);
                  v142.origin.x = v29;
                  v142.origin.y = v30;
                  v142.size.width = v18;
                  v142.size.height = v18;
                  MaxY = CGRectGetMinY(v142);
                }

                [v43 addLineToPoint_];
                CGContextSaveGState(a1);
                CGContextBeginPath(a1);
                v51 = [v43 CGPath];
                CGContextAddPath(a1, v51);

                CGContextClosePath(a1);
                v52 = [v40 CGColor];
                CGContextSetStrokeColorWithColor(a1, v52);

                CGContextSetLineWidth(a1, v41);
                CGContextStrokePath(a1);
                CGContextRestoreGState(a1);

                sub_20BB7D7A0(&v116);
                v8 = v101;
              }
            }

            v53 = v12[1];
            v111 = *v12;
            v112 = v53;
            v54 = v12[3];
            v113 = v12[2];
            v114 = v54;
            v115 = *(v12 + 8);
            if (!v111)
            {
              (*v23)(v11, v8);
LABEL_31:
              v15 = v103;
              v24 = v106;
              goto LABEL_10;
            }

            v55 = *(&v112 + 1);
            v56 = *&v113;
            v57 = v12[3];
            v109[2] = v12[2];
            v109[3] = v57;
            v110 = *(v12 + 8);
            v58 = v12[1];
            v109[0] = *v12;
            v109[1] = v58;
            v59 = *&v113 * 0.5 + *(&v111 + 1);
            sub_20B97671C(v109, &v108);
            v143.origin.x = 0.0;
            v143.origin.y = 0.0;
            v143.size.width = v18;
            v143.size.height = v18;
            v144 = CGRectInset(v143, v59, v59);
            width = v144.size.width;
            height = v144.size.height;
            if (v28 > 2)
            {
              v64 = v144.size.height * v144.size.height;
              v65 = height + height;
              v100 = v56;
              v102 = v55;
              if (v28 == 3)
              {
                v72 = v65 - sqrt(v64 + v64);
                v97 = width;
                v73 = v72 - v144.origin.x;
                v74 = v72 - v144.origin.y;
                y = v144.origin.y;
                x = v144.origin.x;
                v77 = objc_opt_self();
                v98 = x;
                v78 = v73;
                v56 = v100;
                v63 = [v77 bezierPathWithOvalInRect_];
                v147.origin.x = x;
                v147.origin.y = y;
                v79 = v97;
                v147.size.width = v97;
                v147.size.height = height;
                MidX = -CGRectGetMidX(v147);
                v148.origin.x = x;
                v148.origin.y = y;
                v80 = y;
                v148.size.width = v79;
                v81 = v79;
                v148.size.height = height;
                MidY = CGRectGetMidY(v148);
                CGAffineTransformMakeTranslation(&v108, MidX, -MidY);
                v62 = &selRef_imageOrientation;
                [v63 applyTransform_];
                sub_20C1383B4();
                CGAffineTransformMakeRotation(&v108, v83);
                [v63 applyTransform_];
                v84 = v98;
                v149.origin.x = v98;
                v149.origin.y = v80;
                v149.size.width = v81;
                v149.size.height = height;
                MidX = CGRectGetMidX(v149);
                v150.origin.x = v84;
                v150.origin.y = v80;
                v150.size.width = v81;
                v150.size.height = height;
                v85 = CGRectGetMidY(v150);
                CGAffineTransformMakeTranslation(&v108, MidX, v85);
                [v63 applyTransform_];
                goto LABEL_34;
              }

              v62 = &selRef_imageOrientation;
              v99 = v144.origin.y;
              v66 = v65 - sqrt(v64 + v64);
              v97 = v66 - v144.origin.y;
              v67 = v144.origin.x;
              v63 = [objc_opt_self() bezierPathWithOvalInRect_];
              v68 = v67;
              v145.origin.x = v67;
              v69 = v99;
              v145.origin.y = v99;
              v145.size.width = width;
              v145.size.height = height;
              v70 = -CGRectGetMidX(v145);
              v146.origin.x = v68;
              v146.origin.y = v69;
              v146.size.width = width;
              v146.size.height = height;
              v71 = CGRectGetMidY(v146);
              CGAffineTransformMakeTranslation(&v108, v70, -v71);
              [v63 applyTransform_];
              sub_20C1383B4();
              CGAffineTransformMakeRotation(&v108, v87);
              [v63 applyTransform_];
              v151.origin.x = v68;
              v151.origin.y = v69;
              v151.size.width = width;
              v151.size.height = height;
              v88 = CGRectGetMidX(v151);
              v152.origin.x = v68;
              v152.origin.y = v69;
              v152.size.width = width;
              v152.size.height = height;
              v89 = CGRectGetMidY(v152);
              CGAffineTransformMakeTranslation(&v108, v88, v89);
              [v63 applyTransform_];
              v15 = v103;
              v24 = v106;
              v56 = v100;
LABEL_35:
              v153.origin.x = v29;
              v153.origin.y = v30;
              v153.size.width = v18;
              v153.size.height = v18;
              v90 = CGRectGetMinX(v153);
              v154.origin.x = v29;
              v154.origin.y = v30;
              v154.size.width = v18;
              v154.size.height = v18;
              MinY = CGRectGetMinY(v154);
              CGAffineTransformMakeTranslation(&v108, v90, MinY);
              [v63 v62[135]];
              CGContextSaveGState(a1);
              CGContextBeginPath(a1);
              v92 = [v63 CGPath];
              CGContextAddPath(a1, v92);

              CGContextClosePath(a1);
              v93 = [v102 CGColor];
              CGContextSetStrokeColorWithColor(a1, v93);

              CGContextSetLineWidth(a1, v56);
              CGContextStrokePath(a1);
              CGContextRestoreGState(a1);

              sub_20BB7D7A0(&v111);
              v8 = v101;
              (*v23)(v11, v101);
              goto LABEL_10;
            }

            if (!v28)
            {
              (*v23)(v11, v8, v144.origin, *&v144.origin.y);
              sub_20BB7D7A0(&v111);
              goto LABEL_31;
            }

            v102 = v55;
            v62 = &selRef_imageOrientation;
            if (v28 != 1)
            {
              v86 = v144.size.height + v144.size.height - sqrt(v144.size.height * v144.size.height + v144.size.height * v144.size.height);
              v63 = [objc_opt_self() bezierPathWithOvalInRect_];
LABEL_34:
              v15 = v103;
              v24 = v106;
              goto LABEL_35;
            }

            v63 = [objc_opt_self() bezierPathWithOvalInRect_];
            v15 = v103;
            v24 = v106;
            if (v63)
            {
              goto LABEL_35;
            }

            v8 = v101;
            (*v23)(v11, v101);
            sub_20BB7D7A0(&v111);
          }

          else
          {
            (*v23)(v11, v8);
          }

LABEL_10:
          if (v24 == ++v25)
          {
            goto LABEL_6;
          }
        }
      }

      goto LABEL_39;
    }

    return sub_20BB7D7A0(&v125);
  }

  return result;
}