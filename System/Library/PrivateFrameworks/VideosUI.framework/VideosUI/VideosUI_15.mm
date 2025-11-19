uint64_t sub_1E373B88C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E373B8E8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiContextMenuDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373BC78;
}

void sub_1E373B95C(void **a1, char a2)
{
  v3 = *a1;
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

id sub_1E373BA04(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  v3 = objc_allocWithZone(v1);
  v4 = OUTLINED_FUNCTION_2_15();
  v7 = [v5 v6];

  return v7;
}

id sub_1E373BA64(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  v8 = type metadata accessor for BaseCollectionView();
  v3 = OUTLINED_FUNCTION_2_15();
  v6 = objc_msgSendSuper2(v4, v5, a1, v3, v1, v8);

  return v6;
}

id sub_1E373BB38(void *a1)
{
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseCollectionView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E373BBE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E373BC7C()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for DescriptionTemplateView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1E373BCD8(void *a1)
{
  [v1 setVuiView_];
}

char *sub_1E373BD54(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DescriptionTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  *&v3[OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel] = a1;

  return v3;
}

void sub_1E373BDEC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E373BE6C()
{
  type metadata accessor for DescriptionTemplateView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E373BCD8(v1);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  [v0 setVuiView_];
}

uint64_t sub_1E373BF50(uint64_t a1, void *a2)
{
  v41 = (*(*a1 + 464))();
  if (!v41)
  {
    return 0;
  }

  if (a2)
  {
    type metadata accessor for DescriptionTemplateController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = a2;
    }
  }

  else
  {
    v3 = 0;
  }

  v45 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28850);
  sub_1E4148C68(sub_1E373C494, v6, v42);

  v7 = *&v42[0];
  v8 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E373C4DC();
  type metadata accessor for ViewModel();
  sub_1E373C520();
  v9 = sub_1E4205CB4();
  v10 = sub_1E32AE9B0(v41);
  v38 = v7;
  if (!v10)
  {
    v39 = v8;
    v40 = v8;
LABEL_38:

    v5 = v38;
    v31 = *((*MEMORY[0x1E69E7D40] & *v38) + 0xC0);
    if (v31(v30))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v32 + 168))(v40);
    }

    else
    {
    }

    if (v31(v33))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v34 + 192))(v39);
    }

    else
    {
    }

    if (v31(v35))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v36 + 216))(v9);
    }

    else
    {
    }

    return v5;
  }

  v11 = v10;
  if (v10 < 1)
  {
    goto LABEL_51;
  }

  v12 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](v12, v41);
    }

    else
    {
      v13 = *(v41 + 8 * v12 + 32);
    }

    v14 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v15 = v14;
    v16 = sub_1E393D9C4(v13, 0, v42, 0);

    sub_1E373C624(v42);
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = v16;
    MEMORY[0x1E6910BF0]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    v18 = sub_1E4206324();
    v40 = v45;
    if (!(*(*v13 + 392))(v18))
    {
      type metadata accessor for ViewLayout();
      sub_1E3C2F968();
    }

    MEMORY[0x1E6910BF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    v39 = v44;
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v19 = v9;
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = sub_1E4207384();
      if (__OFADD__(v20, 1))
      {
        goto LABEL_49;
      }

      v9 = sub_1E373C6D0(v19, v20 + 1);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v9;
    v21 = sub_1E373C68C(v17);
    if (__OFADD__(*(v9 + 16), (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28858);
    if (sub_1E4207644())
    {
      v25 = sub_1E373C68C(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_52;
      }

      v23 = v25;
    }

    v9 = *&v42[0];
    if (v24)
    {
      *(*(*&v42[0] + 56) + 8 * v23) = v13;
    }

    else
    {
      *(*&v42[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      *(*(v9 + 48) + 8 * v23) = v17;
      *(*(v9 + 56) + 8 * v23) = v13;
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_50;
      }

      *(v9 + 16) = v29;
    }

LABEL_35:

    if (v11 == ++v12)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

char *sub_1E373C494@<X0>(char **a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for DescriptionTemplateController());

  result = sub_1E373BD54(v3);
  *a1 = result;
  return result;
}

unint64_t sub_1E373C4DC()
{
  result = qword_1EE23AE80;
  if (!qword_1EE23AE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE80);
  }

  return result;
}

unint64_t sub_1E373C520()
{
  result = qword_1EE23AE78;
  if (!qword_1EE23AE78)
  {
    sub_1E373C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AE78);
  }

  return result;
}

id sub_1E373C5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E373C624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E373C68C(uint64_t a1)
{
  v2 = sub_1E4206F54();

  return sub_1E373CB30(a1, v2);
}

uint64_t sub_1E373C6D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28860);
    v2 = sub_1E4207734();
    v17 = v2;
    sub_1E4207674();
    while (1)
    {
      v3 = sub_1E42076A4();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1E373C4DC();
      swift_dynamicCast();
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1E373C8C4(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_1E4206F54();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E373C8C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28860);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_1E373CBF0(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
    }

    result = sub_1E4206F54();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1E373CB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1E373C4DC();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1E4206F64();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E373CBF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1E4297170;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

double sub_1E373CC54()
{
  sub_1E373CCC4();
  sub_1E4201AC4();
  return v1;
}

void sub_1E373CC94(uint64_t a1@<X8>)
{
  *a1 = sub_1E373CC54();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t sub_1E373CCC4()
{
  result = qword_1ECF439B8[0];
  if (!qword_1ECF439B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF439B8);
  }

  return result;
}

void *sub_1E373CD18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_42_12();
  v9 = v31;
  v25 = v32;
  OUTLINED_FUNCTION_42_12();
  v10 = v31;
  v11 = v32;
  v30 = 0;
  OUTLINED_FUNCTION_42_12();
  v12 = v31;
  v13 = v32;
  KeyPath = swift_getKeyPath();
  LOBYTE(v31) = 0;
  v15 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_36();
  v17 = *(v16 + 392);

  v19 = v17(v18);

  if (v19)
  {
    v21 = dynamic_cast_existential_1_conditional(v19);
    if (v21)
    {
      v22 = v20;
      goto LABEL_7;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
LABEL_7:
  if (a2[6] == 1)
  {
    sub_1E3EBA478(__src);
  }

  else
  {
    memcpy(__src, __dst, 0x41uLL);
  }

  v23 = v31;
  *a6 = v9;
  *(a6 + 8) = v25;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  *(a6 + 48) = KeyPath;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 56) = 0;
  *(a6 + 80) = v23;
  *(a6 + 88) = a1;
  *(a6 + 96) = v21;
  *(a6 + 104) = v22;
  result = memcpy((a6 + 112), __src, 0x41uLL);
  *(a6 + 184) = a5;
  *(a6 + 192) = a3;
  *(a6 + 200) = a4;
  *(a6 + 208) = v15;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1E373CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B48);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B50);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B58);
  v41 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_6();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &a9 - v46;
  *v47 = sub_1E4201D44();
  *(v47 + 1) = 0;
  v47[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B60);
  sub_1E373D27C();
  *&v47[*(v41 + 44)] = 256;
  if (!*(v23 + 160) || (*(v23 + 176) & 1) == 0)
  {
    sub_1E373D8B8();
    (*(v28 + 32))(v39, v31, v26);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_1E3743538(v47, v44, &qword_1ECF28B58);
  v52 = OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_51_5(v52, v53);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v54, v55, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B68);
  OUTLINED_FUNCTION_51_5(v36, v25 + *(v57 + 48));
  OUTLINED_FUNCTION_52_4(v39);
  sub_1E325F69C(v47, &qword_1ECF28B58);
  OUTLINED_FUNCTION_52_4(v36);
  sub_1E325F69C(v44, &qword_1ECF28B58);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E373D27C()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B70);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B78);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  *v14 = sub_1E4201D44();
  *(v14 + 1) = 0;
  v14[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28880);
  sub_1E373E060();
  v15 = sub_1E4203DA4();
  v17 = v16;
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28888) + 36)];
  sub_1E373DE7C();
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28890) + 36)];
  *v19 = v15;
  v19[1] = v17;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28898) + 36)] = 0x3FF0000000000000;
  *&v14[*(v8 + 44)] = 0;
  sub_1E373D504();
  *&v6[*(v3 + 44)] = 0x3FF0000000000000;
  sub_1E3743538(v14, v11, &qword_1ECF28B78);
  sub_1E3743538(v6, v0, &qword_1ECF28B70);
  v20 = v27;
  sub_1E3743538(v11, v27, &qword_1ECF28B78);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B80);
  sub_1E3743538(v0, v20 + *(v21 + 48), &qword_1ECF28B70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v22, v23);
  sub_1E325F69C(v14, &qword_1ECF28B78);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v24, v25);
  sub_1E325F69C(v11, &qword_1ECF28B78);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E373D504()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1040))();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (!sub_1E32AE9B0(v9))
  {

    goto LABEL_9;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_6:

    v13 = (*(*v11 + 872))(v12);

    if (v13)
    {
      v42 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
      sub_1E4203914();
      v38 = v40;
      v39 = v41;
      v42 = v3[2];
      sub_1E4203914();
      v36 = v41;
      v37 = v40;
      v42 = v3[1];
      v14 = sub_1E4203914();
      v35 = &v31;
      v32 = v41;
      v33 = v40;
      MEMORY[0x1EEE9AC00](v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288B8);
      v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF288C0);
      v34 = v5;
      v16 = v15;
      OUTLINED_FUNCTION_1();
      v18 = sub_1E3743478(v17);
      v40 = v16;
      v41 = v18;
      OUTLINED_FUNCTION_15_20();
      swift_getOpaqueTypeConformance2();
      v19 = OUTLINED_FUNCTION_6();
      sub_1E40A1CE8(v20, v21, v37, v36, v33, v32, v22, v23, v19, v24, v25, v26);

      sub_1E3743538(v2, v1, &qword_1ECF288A8);
      OUTLINED_FUNCTION_35_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_14_19();
      OUTLINED_FUNCTION_21_1();
      sub_1E3743478(v27);
      OUTLINED_FUNCTION_34();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v28, v29);
LABEL_10:
      OUTLINED_FUNCTION_10_3();
      return;
    }

LABEL_9:
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_19();
    sub_1E3743478(v30);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    goto LABEL_10;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1E373D8B8()
{
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288D0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288E0);
  sub_1E373F790();
  v11 = sub_1E4202754();
  if (![objc_opt_self() isIpadInterface] || (v12 = 0, objc_msgSend(objc_opt_self(), sel_isIpadInterface)) && ((type metadata accessor for LayoutGrid(), sub_1E3A256EC(), (sub_1E373F630() & 1) != 0) || (sub_1E3A256EC(), (sub_1E373F630() & 1) != 0)))
  {
    sub_1E37407A0();
    v12 = v13;
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v1, &qword_1ECF288D0);
  v14 = v1 + *(v9 + 36);
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  *(v14 + 32) = v5;
  *(v14 + 40) = 0;
  v15 = *(v0 + 96);
  if (!v15 || (v16 = (*(*(v6 + 104) + 16))(*v15)) == 0)
  {
    v16 = [objc_opt_self() clearColor];
  }

  v17 = v16;
  sub_1E3740B5C();
  v18 = OUTLINED_FUNCTION_39_3();
  sub_1E39B87A4(v18);

  return sub_1E325F69C(v1, &qword_1ECF288D8);
}

uint64_t sub_1E373DB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A90);
  OUTLINED_FUNCTION_0_10();
  v24[0] = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A80);
  OUTLINED_FUNCTION_0_10();
  v24[1] = v9;
  v24[2] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  memcpy(v29, (v2 + 112), 0x41uLL);
  OUTLINED_FUNCTION_36();
  v13 = *(v12 + 968);

  v14 = sub_1E3741F40(v29, __dst);
  v15 = v13(v14);
  sub_1E3E321AC(a1, v29, v15, 1, v28);
  v16 = sub_1E3741E4C();
  sub_1E40443A0();
  memcpy(__dst, v28, 0x68uLL);
  sub_1E3741F9C(__dst);
  v27 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E4203914();
  v18 = v28[0];
  v17 = v28[1];
  v19 = *&v28[2];
  v28[0] = &type metadata for FlexibleGridRow;
  v28[1] = v16;
  v28[2] = &off_1F5D87880;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3CEB108(v18, v17, v4, v19);

  (*(v24[0] + 8))(v8, v4);
  v25 = v2;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A88);
  v28[0] = v4;
  v28[1] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_15_20();
  swift_getOpaqueTypeConformance2();
  sub_1E3743478(&unk_1ECF28A98);
  sub_1E42033A4();
  v21 = OUTLINED_FUNCTION_39_3();
  return v22(v21);
}

uint64_t sub_1E373DE7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  if (v5 >= 0.0)
  {
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3740C14();
    OUTLINED_FUNCTION_34();
    return sub_1E4201F44();
  }

  else
  {
    sub_1E4203CD4();
    sub_1E3743538(v1, v0, &qword_1ECF28900);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3740C14();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    return sub_1E325F69C(v1, &qword_1ECF28900);
  }
}

uint64_t sub_1E373E010(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3740AE8(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E373E060()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_36();
  if ((*(v6 + 968))())
  {
    if (*(v2 + 160) && (*(v2 + 176) & 1) != 0)
    {
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1();
      sub_1E3743478(v7);
      sub_1E4201F44();
    }

    else
    {
      *v0 = sub_1E4201D44();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B20);
      sub_1E373E35C();
      OUTLINED_FUNCTION_33_4();
      sub_1E3743538(v8, v9, v10);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1();
      sub_1E3743478(v11);
      sub_1E4201F44();

      sub_1E325F69C(v0, &qword_1ECF28978);
    }

    v12 = OUTLINED_FUNCTION_38_0();
    sub_1E37434C8(v12, v13);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
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

void sub_1E373E35C()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v48 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B28);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v49 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  sub_1E373E730(&v73);
  memcpy(v72, v7 + 14, 0x41uLL);

  sub_1E3741F40(v72, v55);
  v22 = OUTLINED_FUNCTION_18();
  sub_1E3E321AC(v5, v72, 0, v22 & 1, v69);
  v23 = v7[12];
  if (v23 && ((*(v7[13] + 8))(v70, *v23), (v71 & 1) == 0))
  {
    v27.n128_u64[0] = v70[3];
    v26.n128_u64[0] = v70[2];
    v25.n128_u64[0] = v70[1];
    v24.n128_u64[0] = v70[0];
    j_nullsub_1(v24, v25, v26, v27);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v28 = sub_1E4202734();
  v68 = 0;
  memcpy(v54, v69, 0x68uLL);
  v54[104] = v28;
  *&v54[112] = v0;
  *&v54[120] = v1;
  *&v54[128] = v2;
  *&v54[136] = v3;
  v54[144] = 0;
  sub_1E4201CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B30);
  sub_1E3741BFC(&unk_1ECF28B38);
  sub_1E4203294();
  (*(v11 + 8))(v14, v48);
  memcpy(v55, v54, 0x91uLL);
  sub_1E325F69C(v55, &qword_1ECF28B30);
  sub_1E373E730(&v50);
  v29 = v49;
  sub_1E3743538(v21, v49, &qword_1ECF28B28);
  v30 = v74;
  v56 = v73;
  v57 = v74;
  v31 = v75;
  v32 = v76;
  v58 = v75;
  v59 = v76;
  *v9 = v73;
  v9[1] = v30;
  v9[2] = v31;
  v9[3] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B40);
  sub_1E3743538(v29, v9 + *(v33 + 48), &qword_1ECF28B28);
  v34 = (v9 + *(v33 + 64));
  v35 = v51;
  v60 = v50;
  v61 = v51;
  v36 = v52;
  v37 = v53;
  v62 = v52;
  v63 = v53;
  *v34 = v50;
  v34[1] = v35;
  v34[2] = v36;
  v34[3] = v37;
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v38, v39, v40);
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v41, v42, v43);
  sub_1E325F69C(v21, &qword_1ECF28B28);
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v44, v45);
  sub_1E325F69C(v29, &qword_1ECF28B28);
  *v54 = v73;
  *&v54[16] = v74;
  *&v54[32] = v75;
  *&v54[48] = v76;
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v46, v47);
  OUTLINED_FUNCTION_10_3();
}

double sub_1E373E730@<D0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  if (v9 >= 0.0)
  {
    v3 = sub_1E42036E4();
  }

  else
  {
    sub_1E42036C4();
    v3 = sub_1E4203734();
  }

  KeyPath = swift_getKeyPath();
  sub_1E4203DA4();
  sub_1E4200D94();
  *a1 = KeyPath;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1E373E81C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A08);
  sub_1E373E96C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E4203914();
  OUTLINED_FUNCTION_1();
  sub_1E3743478(v3);
  sub_1E3CEB108(v7, v8, v1, v9);

  v4 = OUTLINED_FUNCTION_38_0();
  return sub_1E325F69C(v4, v5);
}

void sub_1E373E96C()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v85 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v71 = v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v77 = v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A18);
  OUTLINED_FUNCTION_0_10();
  v75 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v74 = v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v78 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A28);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v84 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v70 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A30);
  OUTLINED_FUNCTION_0_10();
  v81 = v24;
  v82 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_6();
  v90[0] = sub_1E3741880(v4);
  swift_getKeyPath();
  v29 = swift_allocObject();
  memcpy((v29 + 16), v2, 0xD8uLL);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1E3741A48;
  *(v30 + 24) = v29;
  sub_1E3741A84(v2, v87);
  v31 = OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A40);
  sub_1E3743478(&unk_1ECF28A48);
  sub_1E3741ABC(&unk_1EE23BA70);
  sub_1E3741B00();
  v80 = v0;
  sub_1E4203B34();
  if (*(v2 + 160) && (*(v2 + 176) & 1) != 0)
  {
    v32 = *(v2 + 192);
    if (v32)
    {
      v33 = *(v2 + 112);
      v34 = *(v2 + 120);
      v35 = *(v2 + 128);
      v36 = *(v2 + 136);
      v37 = *(v2 + 144);
      v38 = *(v2 + 152);

      sub_1E3EB9AB8(v90);
      v87[0] = v33;
      v87[1] = v34;
      v87[2] = v35 & 1;
      v87[3] = v36;
      v87[4] = v37;
      v88 = v38 & 1;
      v89 = 0;
      v39 = v71;
      sub_1E382A9B4(v32, v87, 0, v71);
      v41 = *(v2 + 96);
      v40 = *(v2 + 104);
      if (v41 && ((*(v40 + 8))(v91, *v41, v40), (v92 & 1) == 0))
      {
        v44.n128_u64[0] = v91[2];
        v45.n128_u64[0] = v91[3];
        v42.n128_u64[0] = v91[0];
        v43.n128_u64[0] = v91[1];
        j_nullsub_1(v42, v43, v44, v45);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v51 = v76;
      v50 = v77;
      sub_1E4202734();
      (*(v72 + 32))(v50, v39, v73);
      OUTLINED_FUNCTION_7_3(v50 + *(v51 + 36));
      if (v41 && (v52 = (*(v40 + 16))(*v41, v40)) != 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = [objc_opt_self() clearColor];
      }

      sub_1E3741EEC(&unk_1ECF28AA8);
      v54 = v74;
      sub_1E39B87A4(v53);

      sub_1E325F69C(v50, &qword_1ECF28A10);
      v49 = v78;
      v48 = v79;
      (*(v75 + 32))(v78, v54, v79);
      v47 = 0;
    }

    else
    {
      v47 = 1;
      v49 = v78;
      v48 = v79;
    }

    __swift_storeEnumTagSinglePayload(v49, v47, 1, v48);
    sub_1E3741EA0(v49, v86, &qword_1ECF28A20);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v55 = v86;
  __swift_storeEnumTagSinglePayload(v86, v46, 1, v83);
  v57 = v80;
  v56 = v81;
  v58 = *(v81 + 16);
  v59 = OUTLINED_FUNCTION_39_3();
  v60 = v82;
  v58(v59);
  v61 = v84;
  sub_1E3743538(v55, v84, &qword_1ECF28A28);
  v62 = v85;
  (v58)(v85, v27, v60);
  v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AA0) + 48);
  sub_1E3743538(v61, v63, &qword_1ECF28A28);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v64, v65);
  v66 = *(v56 + 8);
  v66(v57, v60);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v67, v68);
  v69 = OUTLINED_FUNCTION_24_4();
  (v66)(v69);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E373F0B4()
{
  OUTLINED_FUNCTION_9_4();
  v7 = v6;
  v9 = v8;
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AB0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AB8);
  OUTLINED_FUNCTION_0_10();
  v48 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    v23 = sub_1E373F6E0();
    v24 = sub_1E383A2D0(0, 1, v23 & 1, &v59, 5.0, 6.0, 1.0, 4.0);
    if ((*(*v9 + 392))(v24) && (OUTLINED_FUNCTION_30(), (*(v25 + 176))(v63), v2 = v63[0], v3 = v63[1], v4 = v63[2], v5 = v63[3], , (v64 & 1) == 0))
    {
      v31.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v31, v32, v33, v34);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v35 = sub_1E4202734();
    LOBYTE(v57) = v62;
    v36 = v60;
    v54 = v59;
    v55 = v60;
    v37 = v61;
    v56 = v61;
    v58 = 0;
    *v1 = v59;
    *(v1 + 16) = v36;
    *(v1 + 32) = v37;
    *(v1 + 48) = v57;
    *(v1 + 56) = v35;
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = v4;
    *(v1 + 88) = v5;
    *(v1 + 96) = 0;
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    v38 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38);
    OUTLINED_FUNCTION_13_29();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741BFC(v39);
    v40 = sub_1E3741CB0();
    v52 = v49;
    v53 = v40;
    OUTLINED_FUNCTION_12_18();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_3();
    sub_1E4201F44();
  }

  else
  {
    sub_1E373DB20(v9, v0);
    v26 = *(v7 + 96);
    if (v26 && ((*(*(v7 + 104) + 8))(&v54, *v26), (v56 & 1) == 0))
    {
      v30.n128_u64[0] = *(&v55 + 1);
      v29.n128_u64[0] = v55;
      v28.n128_u64[0] = *(&v54 + 1);
      v27.n128_u64[0] = v54;
      j_nullsub_1(v27, v28, v29, v30);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    sub_1E4202734();
    (*(v13 + 32))(v17, v0, v11);
    v41 = v49;
    OUTLINED_FUNCTION_7_3(&v17[*(v49 + 36)]);
    if (*(v7 + 128))
    {
      v42 = 0.0;
    }

    else
    {
      v42 = *(v7 + 112);
    }

    v59 = *(v7 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    sub_1E42038F4();
    v43 = *v63;
    v44 = sub_1E3741CB0();
    sub_1E3AEEBF8(v9, v41, v44, v42, v43);
    sub_1E325F69C(v17, &qword_1ECF28A70);
    (*(v48 + 16))(v1, v21, v50);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A60);
    OUTLINED_FUNCTION_13_29();
    sub_1E3741BFC(v45);
    *&v59 = v41;
    *(&v59 + 1) = v44;
    OUTLINED_FUNCTION_12_18();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_24_4();
    sub_1E4201F44();
    v46 = OUTLINED_FUNCTION_47_4();
    v47(v46);
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E373F630()
{
  sub_1E3741588();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E373F6E0()
{
  sub_1E3742F1C();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E373F790()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289C8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  if (*(v4 + 192))
  {
    if (*(v4 + 160) && (*(v4 + 176) & 1) != 0)
    {
      OUTLINED_FUNCTION_45_4();
      v20 = 2;
    }

    else
    {
      sub_1E383A2D0(0, 1, 0, &v34, 1.0, 0.0, 1.0, 4.0);
      v32 = v35;
      v33 = v34;
      v30 = v37;
      v31 = v36;
      v1 = v38;
      v2 = v39;
      v20 = v40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    v20 = 3;
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289D8);
  sub_1E373FA70();
  v21 = *(v4 + 96);
  if (v21 && ((*(*(v4 + 104) + 8))(v41, *v21), (v42 & 1) == 0))
  {
    v24.n128_u64[0] = v41[2];
    v25.n128_u64[0] = v41[3];
    v22.n128_u64[0] = v41[0];
    v23.n128_u64[0] = v41[1];
    j_nullsub_1(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  sub_1E3741EA0(v0, v17, &qword_1ECF289C8);
  OUTLINED_FUNCTION_7_3(&v17[*(v9 + 36)]);
  sub_1E3741EA0(v17, v19, &qword_1ECF289D0);
  sub_1E3743538(v19, v13, &qword_1ECF289D0);
  v26 = v32;
  *v6 = v33;
  *(v6 + 8) = v26;
  v27 = v30;
  *(v6 + 16) = v31;
  *(v6 + 24) = v27;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = v20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E0);
  sub_1E3743538(v13, v6 + *(v28 + 48), &qword_1ECF289D0);
  sub_1E325F69C(v19, &qword_1ECF289D0);
  sub_1E325F69C(v13, &qword_1ECF289D0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E373FA70()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v47 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_6();
  v24 = *(v2 + 192);
  if (v24)
  {

    sub_1E3EB9AB8(&v48);
    v25 = *(v2 + 128) & 1;
    v26 = *(v2 + 152) & 1;
    v49 = *(v2 + 112);
    v50 = v25;
    v51 = *(v2 + 136);
    v52 = v26;
    sub_1E382A9B4(v24, &v49, 0, v20);

    (*(v17 + 32))(v0, v20, v15);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v27, 1, v15);
  v28 = *(v2 + 200);
  v29 = v46;
  if (v28)
  {

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      sub_1E3EC24F4(v28, 0, 0, 0);
      v31 = sub_1E4202794();

      v32 = &v6[*(v29 + 36)];
      *v32 = v31;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      v32[40] = 1;
      sub_1E3741EA0(v6, v14, &qword_1ECF289E8);
      v30 = 0;
      goto LABEL_9;
    }
  }

  v30 = 1;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v14, v30, 1, v29);
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v33, v34, v35);
  OUTLINED_FUNCTION_51_5(v14, v11);
  v36 = v47;
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v37, v38, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A00);
  v41 = v36 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  OUTLINED_FUNCTION_51_5(v11, v36 + *(v40 + 64));
  OUTLINED_FUNCTION_52_4(v14);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v42, v43);
  OUTLINED_FUNCTION_52_4(v11);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v44, v45);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E373FE78(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1ECF28920);
    sub_1E37411B0();
    sub_1E4206664();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1E42073C4() || (sub_1E3280A90(0, &qword_1ECF28920), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1E34AF4DC();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1E37400DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E3740D20(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B00);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3740D20((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1E3740218()
{
  v1 = [v0 connectedScenes];
  sub_1E3280A90(0, &qword_1ECF28920);
  sub_1E37411B0();
  OUTLINED_FUNCTION_32_0();
  v2 = sub_1E4206624();

  sub_1E373FE78(v2);
  v4 = v3;

  v5 = 0;
  v39 = v4 & 0xC000000000000001;
  v40 = sub_1E32AE9B0(v4);
  v35 = v4;
  v37 = v4 + 32;
  v38 = v4 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 != v40)
  {
    if (v39)
    {
      v7 = MEMORY[0x1E6911E60](v5, v35);
    }

    else
    {
      if (v5 >= *(v38 + 16))
      {
        goto LABEL_49;
      }

      v7 = *(v37 + 8 * v5);
    }

    v8 = v7;
    v9 = __OFADD__(v5++, 1);
    if (v9)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v10 = [v7 windows];
    sub_1E3280A90(0, &qword_1ECF28928);
    v11 = sub_1E42062B4();

    if (v11 >> 62)
    {
      v12 = sub_1E4207384();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v6 >> 62;
    if (v6 >> 62)
    {
      v14 = sub_1E4207384();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v14 + v12;
    if (__OFADD__(v14, v12))
    {
      goto LABEL_50;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v13)
      {
LABEL_17:
        sub_1E4207384();
      }

LABEL_18:
      v6 = sub_1E4207514();
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v13)
    {
      goto LABEL_17;
    }

    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v15 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v17 = *(v16 + 16);
    v18 = (*(v16 + 24) >> 1) - v17;
    v19 = v16 + 8 * v17;
    v41 = v16;
    if (v11 >> 62)
    {
      v21 = sub_1E4207384();
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = v21;
      v23 = sub_1E4207384();
      if (v18 < v23)
      {
        goto LABEL_56;
      }

      if (v22 < 1)
      {
        goto LABEL_57;
      }

      v20 = v23;
      v36 = v6;
      v24 = v19 + 32;
      sub_1E3743478(&unk_1ECF28938);
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28930);
        v26 = sub_1E374111C(v42, i, v11);
        v28 = *v27;
        (v26)(v42, 0);
        *(v24 + 8 * i) = v28;
      }

      v6 = v36;
LABEL_29:

      if (v20 < v12)
      {
        goto LABEL_51;
      }

      if (v20 > 0)
      {
        v29 = *(v41 + 16);
        v9 = __OFADD__(v29, v20);
        v30 = v29 + v20;
        if (v9)
        {
          goto LABEL_54;
        }

        *(v41 + 16) = v30;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      if (v12 > 0)
      {
        goto LABEL_51;
      }
    }
  }

  v31 = sub_1E32AE9B0(v6);
  for (j = 0; v31 != j; ++j)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1E6911E60](j, v6);
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v33 = *(v6 + 8 * j + 32);
    }

    v34 = v33;
    if (__OFADD__(j, 1))
    {
      goto LABEL_52;
    }

    if ([v33 isKeyWindow])
    {
      break;
    }
  }
}

void sub_1E3740680()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1E3740218();
  v2 = v1;

  if (v2)
  {
    [v2 safeAreaInsets];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_6();
}

void sub_1E3740710(void *a1@<X8>)
{
  sub_1E3740680();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1E374073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E374148C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1E37407A0()
{
  v1 = sub_1E4201AB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[32] == 1)
  {
    return *v0;
  }

  v6 = sub_1E4206804();
  v7 = sub_1E42026D4();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = *&v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1E3270FC8(0x65736E4965676445, 0xEA00000000007374, &v10);
    _os_log_impl(&dword_1E323F000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E69143B0](v9, -1, -1);
    MEMORY[0x1E69143B0](v8, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();
  sub_1E325F69C(v0, &unk_1ECF289C0);
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1E3740994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1E37409F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1E3740AE8(uint64_t a1)
{
  sub_1E37414E0();
  v2 = sub_1E4205DA4();
  return sub_1E3740E70(a1, v2);
}

unint64_t sub_1E3740B5C()
{
  result = qword_1ECF288E8;
  if (!qword_1ECF288E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF288D8);
    sub_1E3743478(&unk_1ECF288F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF288E8);
  }

  return result;
}

unint64_t sub_1E3740C14()
{
  result = qword_1ECF28908;
  if (!qword_1ECF28908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28900);
    sub_1E3740CCC();
    sub_1E3743478(&unk_1ECF28910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28908);
  }

  return result;
}

unint64_t sub_1E3740CCC()
{
  result = qword_1EE2883B8;
  if (!qword_1EE2883B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883B8);
  }

  return result;
}

void *sub_1E3740D20(void *a1, int64_t a2, char a3)
{
  result = sub_1E3740D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3740D40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3740E70(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1E3741534();
    if (sub_1E4205E84())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E3740F30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4201814();
  *a1 = result;
  return result;
}

char *sub_1E3740F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3741090(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 localizedStringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E4205F14();

  return v6;
}

void (*sub_1E374111C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return sub_1E37411A8;
}

unint64_t sub_1E37411B0()
{
  result = qword_1ECF36410;
  if (!qword_1ECF36410)
  {
    sub_1E3280A90(255, &qword_1ECF28920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36410);
  }

  return result;
}

uint64_t sub_1E3741248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1E3741288(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E374130C()
{
  result = qword_1ECF28940;
  if (!qword_1ECF28940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28878);
    sub_1E3743478(&unk_1ECF28948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28940);
  }

  return result;
}

unint64_t sub_1E37413C4()
{
  result = qword_1ECF28988;
  if (!qword_1ECF28988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28990);
    sub_1E3740CCC();
    sub_1E3743478(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28988);
  }

  return result;
}

unint64_t sub_1E374148C()
{
  result = qword_1ECF289A0;
  if (!qword_1ECF289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF289A0);
  }

  return result;
}

unint64_t sub_1E37414E0()
{
  result = qword_1EE283390;
  if (!qword_1EE283390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283390);
  }

  return result;
}

unint64_t sub_1E3741534()
{
  result = qword_1EE283380;
  if (!qword_1EE283380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283380);
  }

  return result;
}

unint64_t sub_1E3741588()
{
  result = qword_1EE287F98;
  if (!qword_1EE287F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287F98);
  }

  return result;
}

uint64_t sub_1E37415DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 32);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  v36 = v5;
  if (v6)
  {
    v12 = 0;
    v11 -= v6;
    v13 = v6;
    do
    {
      v14 = *(v3 + v12 + 40);
      v15 = *(v2 + v12 + 32);
      v16 = *(v2 + v12 + 40);
      *v10 = *(v3 + v12 + 32);
      v10[1] = v14;
      v10[2] = v15;
      v10[3] = v16;
      v10 += 4;

      v12 += 16;
      --v13;
    }

    while (v13);
    v5 = v36;
  }

  v34 = v4;
  v35 = 16 * v6;
  while (1)
  {
    if (v4 == v6)
    {
LABEL_35:
      v31 = v7[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v11);
        v33 = v32 - v11;
        if (v30)
        {
          goto LABEL_44;
        }

        v7[2] = v33;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v17 = *(v3 + v35 + 32);
    v18 = *(v3 + v35 + 40);
    v37 = v2;
    v19 = v2 + v35;
    v20 = *(v2 + v35 + 32);
    v21 = *(v19 + 40);
    if (v11)
    {

      v22 = v7;
    }

    else
    {
      v23 = v7[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      v22 = swift_allocObject();
      v26 = (_swift_stdlib_malloc_size(v22) - 32) / 32;
      v22[2] = v25;
      v22[3] = 2 * v26;
      v27 = v22 + 4;
      v28 = v7[3] >> 1;
      v10 = &v22[4 * v28 + 4];
      v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
      if (v7[2])
      {
        if (v22 != v7 || v27 >= &v7[4 * v28 + 4])
        {
          memmove(v27, v7 + 4, 32 * v28);
        }

        v7[2] = 0;
      }

      else
      {
      }
    }

    v30 = __OFSUB__(v11--, 1);
    if (v30)
    {
      goto LABEL_42;
    }

    *v10 = v17;
    v10[1] = v18;
    v10[2] = v20;
    v10[3] = v21;
    v10 += 4;
    ++v6;
    v5 = v36;
    v2 = v37 + 16;
    v3 += 16;
    v7 = v22;
    v4 = v34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E3741880(unint64_t a1)
{
  v1 = a1;
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
      v10 = result;
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B10);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E3741A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E3741ABC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3741B00()
{
  result = qword_1ECF28A50;
  if (!qword_1ECF28A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A40);
    sub_1E3741BFC(&unk_1ECF28A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A70);
    sub_1E3741CB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A50);
  }

  return result;
}

unint64_t sub_1E3741BFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_16_7();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3741C5C()
{
  result = qword_1ECF28A68;
  if (!qword_1ECF28A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A68);
  }

  return result;
}

unint64_t sub_1E3741CB0()
{
  result = qword_1ECF28A78;
  if (!qword_1ECF28A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A90);
    sub_1E3741E4C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&unk_1ECF28A98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A78);
  }

  return result;
}

unint64_t sub_1E3741E4C()
{
  result = qword_1EE280E30[0];
  if (!qword_1EE280E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE280E30);
  }

  return result;
}

uint64_t sub_1E3741EA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return v3;
}

unint64_t sub_1E3741EEC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_18_2();
    result = OUTLINED_FUNCTION_16_7();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1E3741FF0()
{
  OUTLINED_FUNCTION_31_1();
  v100 = v1;
  v2 = *(v0 + 24);
  __src = *(v0 + 16);
  v3 = (*(*v2 + 464))();
  v103 = v2;
  if (!v3)
  {
    v13 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v4 = v3;
  v5 = sub_1E32AE9B0(v3);
  v6 = 0;
  v7 = &qword_1F5D5CE68;
  while (1)
  {
    if (v5 == v6)
    {

      v13 = 0;
      v9 = 0;
LABEL_23:
      v2 = v103;
      goto LABEL_24;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_38_0();
      v8 = MEMORY[0x1E6911E60](v12);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_155;
    }

    v9 = v8;
    v107 = *(v8 + 98);
    sub_1E3742F1C();
    OUTLINED_FUNCTION_47_4();
    sub_1E4206254();
    OUTLINED_FUNCTION_47_4();
    sub_1E4206254();
    if (v108 == v112 && v109 == v113)
    {
      break;
    }

    v11 = sub_1E42079A4();

    if (v11)
    {
      goto LABEL_18;
    }

    ++v6;
  }

LABEL_18:

  v14 = *(*v9 + 488);

  v16 = v14(v15);

  if (!v16)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v13 = sub_1E373E010(17, v16);

  v2 = v103;
  if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
  {

    v13 = 0;
  }

LABEL_24:
  v110 = &unk_1F5D5D528;
  v111 = &off_1F5D5C858;
  LOBYTE(v108) = 0;
  type metadata accessor for ViewModel();
  v17 = j__OUTLINED_FUNCTION_18();
  v18 = sub_1E39C3418(&v108, v17 & 1, v9);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  if (v13)
  {

    v98 = sub_1E3C27024();
    v101 = v19;
  }

  else
  {
    v98 = 0;
    v101 = 0;
  }

  if ((v18 & 1) != 0 && (v20 = __src[26]) != 0)
  {
    v102 = sub_1E3741090(0xD00000000000002ALL, 0x80000001E4259AF0, v20);
    v105 = v21;
  }

  else
  {
    v102 = 0;
    v105 = 0;
  }

  v22 = (*(*v2 + 464))();
  if (v22)
  {
    v4 = v22;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v112 = MEMORY[0x1E69E7CC0];
  v23 = sub_1E32AE9B0(v4);
  v24 = 0;
  v7 = v4 & 0xC000000000000001;
  while (2)
  {
    if (v23 == v24)
    {

      v4 = v112;
      v26 = sub_1E32AE9B0(v112);
      v27 = 0;
      v7 = v4 & 0xC000000000000001;
      if (v105)
      {
        v28 = v102;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v105)
      {
        v29 = v105;
      }

      v96 = v29;
      v97 = v28;
      v102 = MEMORY[0x1E69E7CC0];
      v99 = xmmword_1E4297BE0;
      while (1)
      {
        while (1)
        {
          if (v26 == v27)
          {

            OUTLINED_FUNCTION_36();
            v54 = (*(v53 + 1040))();
            if (!v54)
            {
              v57 = MEMORY[0x1E69E7CC0];
              goto LABEL_103;
            }

            v4 = v54;
            v7 = v103;
            if (!sub_1E32AE9B0(v54))
            {

              v57 = MEMORY[0x1E69E7CC0];
              goto LABEL_105;
            }

            if ((v4 & 0xC000000000000001) != 0)
            {
              goto LABEL_158;
            }

            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v55 = *(v4 + 32);

            goto LABEL_88;
          }

          if (v7)
          {
            v30 = MEMORY[0x1E6911E60](v27, v4);
          }

          else
          {
            if (v27 >= *(v4 + 16))
            {
              goto LABEL_148;
            }

            v30 = *(v4 + 8 * v27 + 32);
          }

          v31 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_147;
          }

          v32 = *(v30 + 98);
          LOWORD(v108) = v32;
          LOWORD(v112) = 25;
          sub_1E3741534();
          if ((sub_1E4205E84() & 1) == 0 && *v30 == _TtC8VideosUI13TextViewModel)
          {
            v33 = sub_1E3C27024();
            if (v34)
            {
              break;
            }
          }

          ++v27;
        }

        v35 = v34;
        v95 = v33;
        v107 = v32;
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v108 == v112 && v109 == v113)
        {
          break;
        }

        v37 = sub_1E42079A4();

        if (v37)
        {
          goto LABEL_70;
        }

LABEL_77:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = OUTLINED_FUNCTION_27();
          v102 = sub_1E3740F88(v49, v50, v51, v52);
        }

        v47 = *(v102 + 16);
        v46 = *(v102 + 24);
        if (v47 >= v46 >> 1)
        {
          v102 = sub_1E3740F88((v46 > 1), v47 + 1, 1, v102);
        }

        *(v102 + 16) = v47 + 1;
        v48 = v102 + 16 * v47;
        *(v48 + 32) = v95;
        *(v48 + 40) = v35;
        v27 = v31;
      }

LABEL_70:
      if (!v101)
      {
        goto LABEL_77;
      }

      v38 = __src[26];
      if (v38)
      {

        sub_1E3741090(0xD000000000000025, 0x80000001E4259AC0, v38);
        if (v39)
        {
          goto LABEL_76;
        }
      }

      else
      {
      }

LABEL_76:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1E4297BD0;
      *(v40 + 32) = v95;
      *(v40 + 40) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1E4297BE0;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1E3283528();
      *(v41 + 32) = v98;
      *(v41 + 40) = v101;
      v42 = sub_1E4205F44();
      v44 = v43;

      *(v40 + 48) = v42;
      *(v40 + 56) = v44;
      *(v40 + 64) = v97;
      *(v40 + 72) = v96;
      v108 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      OUTLINED_FUNCTION_11_21();
      sub_1E3743478(&qword_1EE23B510);
      v95 = sub_1E4205DF4();
      v35 = v45;

      goto LABEL_77;
    }

    if (v7)
    {
      v25 = MEMORY[0x1E6911E60](v24, v4);
    }

    else
    {
      if (v24 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v25 = *(v4 + 8 * v24 + 32);
    }

    if (!__OFADD__(v24, 1))
    {
      LOBYTE(v107) = 2;
      (*(*v25 + 776))(&v108, &v107, &unk_1F5D5D5B8, &off_1F5D5C878);
      if (v110)
      {
        if ((swift_dynamicCast() & 1) != 0 && v107 == 1)
        {

LABEL_46:
          ++v24;
          continue;
        }
      }

      else
      {
        sub_1E325F69C(&v108, &unk_1ECF296E0);
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  do
  {
    __break(1u);
LABEL_158:
    v55 = MEMORY[0x1E6911E60](0, v4);
LABEL_88:

    v4 = (*(*v55 + 872))(v56);

    v57 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v108 = MEMORY[0x1E69E7CC0];
      v58 = sub_1E32AE9B0(v4);
      v59 = 0;
      v7 = v4 & 0xC000000000000001;
      while (v58 != v59)
      {
        if (v7)
        {
          v62 = OUTLINED_FUNCTION_38_0();
          v60 = MEMORY[0x1E6911E60](v62);
        }

        else
        {
          if (v59 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v60 = *(v4 + 8 * v59 + 32);
        }

        if (__OFADD__(v59, 1))
        {
          goto LABEL_153;
        }

        v61 = *(v60 + 98);
        LOWORD(v112) = v61;
        v107 = 114;
        sub_1E3741534();
        if (OUTLINED_FUNCTION_41_16() & 1) != 0 || (LOWORD(v112) = v61, v107 = 113, (OUTLINED_FUNCTION_41_16()))
        {
        }

        else
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }

        ++v59;
      }

      v57 = v108;
LABEL_103:
      v7 = v103;
    }

LABEL_105:
    v4 = sub_1E32AE9B0(v57);
    v63 = 0;
    while (1)
    {
      if (v4 == v63)
      {
        v68 = 0;
        goto LABEL_117;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v67 = OUTLINED_FUNCTION_35_5();
        v64 = MEMORY[0x1E6911E60](v67);
      }

      else
      {
        if (v63 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v64 = *(v57 + 8 * v63 + 32);
      }

      v65 = static ViewModel.== infix(_:_:)(v64, v7);

      if (v65)
      {
        break;
      }

      if (__OFADD__(v63++, 1))
      {
        goto LABEL_150;
      }
    }

    v68 = v63;
LABEL_117:

    v69 = __src[26];
    if (!v69 || (sub_1E3741090(0xD000000000000024, 0x80000001E4259A60, v69), !v70))
    {
    }

    if (v4 == v63)
    {

      v72 = 0;
      v73 = 0xE000000000000000;
      goto LABEL_124;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v74 = swift_allocObject();
    *(v74 + 16) = v99;
  }

  while (__OFADD__(v68, 1));
  v75 = MEMORY[0x1E69E65A8];
  *(v74 + 56) = MEMORY[0x1E69E6530];
  *(v74 + 64) = v75;
  *(v74 + 32) = v68 + 1;
  v72 = sub_1E4205F44();
  v73 = v76;

LABEL_124:
  if (!(*(*__src[11] + 968))(v71) || (OUTLINED_FUNCTION_30(), v78 = (*(v77 + 464))(), , !v78))
  {
    v80 = MEMORY[0x1E69E7CC0];
    goto LABEL_144;
  }

  v103 = v72;
  v106 = v73;
  v79 = sub_1E32AE9B0(v78);
  v7 = 0;
  v80 = MEMORY[0x1E69E7CC0];
  while (v79 != v7)
  {
    if ((v78 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x1E6911E60](v7, v78);
    }

    else
    {
      if (v7 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_152;
      }

      v81 = *(v78 + 8 * v7 + 32);
    }

    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_151;
    }

    if (*v81 != _TtC8VideosUI13TextViewModel)
    {

LABEL_140:
      ++v7;
      continue;
    }

    v82 = sub_1E3C27024();
    v84 = v83;

    if (!v84)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = OUTLINED_FUNCTION_27();
      v80 = sub_1E3740F88(v88, v89, v90, v80);
    }

    v86 = *(v80 + 2);
    v85 = *(v80 + 3);
    if (v86 >= v85 >> 1)
    {
      v80 = sub_1E3740F88((v85 > 1), v86 + 1, 1, v80);
    }

    *(v80 + 2) = v86 + 1;
    v87 = &v80[16 * v86];
    *(v87 + 4) = v82;
    *(v87 + 5) = v84;
    ++v7;
  }

  v73 = v106;
LABEL_144:
  v91 = sub_1E37415DC(v102, v80);

  v92 = sub_1E37400DC(v91);

  *v100 = sub_1E4201B84();
  *(v100 + 8) = 0;
  *(v100 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AC8);
  v93 = *(v92 + 16);
  v112 = 0;
  v113 = v93;
  swift_getKeyPath();
  v94 = swift_allocObject();
  memcpy(v94 + 2, __src, 0xD8uLL);
  v94[29] = v92;
  v94[30] = v72;
  v94[31] = v73;
  sub_1E3741A84(__src, &v108);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD8);
  sub_1E37432DC();
  sub_1E37433BC();
  sub_1E4203B34();

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3742F1C()
{
  result = qword_1EE283370;
  if (!qword_1EE283370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283370);
  }

  return result;
}

uint64_t sub_1E3742F70(unint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  if (!v3 || (result = sub_1E3741090(0xD000000000000027, 0x80000001E4259A90, v3), !v6))
  {
  }

  v7 = (v4 + 32 * v2);
  if (!v2)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v2 < *(v4 + 16))
  {
    v8 = v7[6];
    v9 = v7[7];

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750);
    result = swift_initStackObject();
    *(result + 16) = xmmword_1E4297BD0;
    if (v2 < *(v4 + 16))
    {
      v10 = result;
      v11 = v7[5];
      *(result + 32) = v7[4];
      *(result + 40) = v11;
      *(result + 48) = v8;
      *(result + 56) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E4297BE0;
      v13 = MEMORY[0x1E69E65A8];
      *(v12 + 56) = MEMORY[0x1E69E6530];
      *(v12 + 64) = v13;
      *(v12 + 32) = v2 + 1;

      v14 = sub_1E4205F44();
      v16 = v15;

      v17 = 0;
      *(v10 + 64) = v14;
      *(v10 + 72) = v16;
      v18 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v19 = v17 - 1;
      v20 = 16 * v17 + 40;
      while (1)
      {
        if (v19 == 2)
        {
          swift_setDeallocating();
          sub_1E3740994();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
          OUTLINED_FUNCTION_11_21();
          sub_1E3743478(v33);
          sub_1E4205DF4();

          sub_1E32822E0();
          sub_1E4202C44();
          v35 = v34 & 1;

          v36 = sub_1E4202C44();
          v38 = v37;
          v40 = v39;
          sub_1E4203124();
          sub_1E37434B8(v36, v38, v40 & 1);

          v41 = OUTLINED_FUNCTION_24_4();
          sub_1E37434B8(v41, v42, v35);
        }

        if (++v19 > 2)
        {
          break;
        }

        v21 = v20 + 16;
        v22 = *(v10 + v20);
        v20 += 16;
        if (v22)
        {
          v23 = *(v10 + v21 - 24);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            v26 = OUTLINED_FUNCTION_27();
            result = sub_1E3740F88(v26, v27, v28, v18);
            v18 = result;
          }

          v24 = *(v18 + 16);
          if (v24 >= *(v18 + 24) >> 1)
          {
            OUTLINED_FUNCTION_37_6();
            result = sub_1E3740F88(v29, v30, v31, v32);
            v18 = result;
          }

          v17 = v19 + 1;
          *(v18 + 16) = v24 + 1;
          v25 = v18 + 16 * v24;
          *(v25 + 32) = v23;
          *(v25 + 40) = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1E37432DC()
{
  result = qword_1ECF28AE0;
  if (!qword_1ECF28AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28AD0);
    sub_1E3743368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AE0);
  }

  return result;
}

unint64_t sub_1E3743368()
{
  result = qword_1ECF28AE8;
  if (!qword_1ECF28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AE8);
  }

  return result;
}

unint64_t sub_1E37433BC()
{
  result = qword_1ECF28AF0;
  if (!qword_1ECF28AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28AD8);
    sub_1E3741ABC(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AF0);
  }

  return result;
}

unint64_t sub_1E3743478(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E37434B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E37434C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3743538(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return v3;
}

void *sub_1E3743588(uint64_t a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B88);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v19;
  if (!a2)
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v29(v10);

    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51[0] = v33;
      *v32 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v36 = sub_1E3270FC8(v34, v35, v51);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1E323F000, v30, v31, "SportsPlayByPlayCell: Failed to get correct cell for [%s]", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    return 0;
  }

  if (*a1 != _TtC8VideosUI25SportsPlayByPlayViewModel)
  {
    v37 = a2;
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v38(v13);
    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();
    if (os_log_type_enabled(v39, v40))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v41, v42, "SportsPlayByPlayCell: Unexpected view model type");
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v6 + 8))(v13, v4);
    return 0;
  }

  v49 = v18;
  v21 = off_1EED67040[0];

  v50 = a2;
  v22 = v21();
  if (!v22)
  {
LABEL_20:
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v43(v15);
    v44 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (os_log_type_enabled(v44, v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v46, v47, "SportsPlayByPlayCell: layout is missing");
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v6 + 8))(v15, v4);
    return 0;
  }

  v23 = v22;
  if (*v22 != _TtC8VideosUI22SportsPlayByPlayLayout)
  {

    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](v22);
  *(&v49 - 2) = a1;
  *(&v49 - 1) = v23;
  v50 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B90);
  sub_1E3743DF4();
  sub_1E42021C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  v25 = sub_1E4202764();
  *(inited + 32) = v25;
  v26 = sub_1E4202784();
  *(inited + 33) = v26;
  v27 = sub_1E4202744();
  *(inited + 34) = v27;
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    sub_1E4202774();
  }

  v51[3] = v16;
  v51[4] = sub_1E3743ED8();
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_1E42021B4();
  (*(v49 + 8))(v20, v16);
  v28 = v50;
  MEMORY[0x1E6911580](v51);

  return a2;
}

uint64_t sub_1E3743B9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - v5);

  sub_1E39320DC(v6);
  sub_1E39320F8(v6, a1, a2);
  v7 = sub_1E4202754();
  sub_1E4200A54();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B90);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

id sub_1E3743CB0()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id sub_1E3743D24(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _s8VideosUI13VUIJetPackURLCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3743DF4()
{
  result = qword_1ECF28B98;
  if (!qword_1ECF28B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28B90);
    sub_1E3743E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28B98);
  }

  return result;
}

unint64_t sub_1E3743E80()
{
  result = qword_1ECF28BA0;
  if (!qword_1ECF28BA0)
  {
    type metadata accessor for SportsPlayByPlayContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28BA0);
  }

  return result;
}

unint64_t sub_1E3743ED8()
{
  result = qword_1ECF28BB0;
  if (!qword_1ECF28BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28BB0);
  }

  return result;
}

uint64_t sub_1E3743F60(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3743FB0(a1, a2);
  return v4;
}

uint64_t sub_1E3743FB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v40 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1E327F454(a2, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for EpisodeCollectionServiceRequestContext();
  if (swift_dynamicCast())
  {
    v15 = v41[0];
  }

  else
  {
    v15 = 0;
  }

  ViewModelKeys.rawValue.getter(5);
  sub_1E3277E60(v16, v17, a1, v42);

  if (!v43)
  {
    sub_1E329505C(v42);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v10, v22, v5);
    v23 = v15;

    v24 = sub_1E41FFC94();
    v25 = sub_1E42067F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315138;
      v41[0] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC8);
      v28 = sub_1E42070D4();
      v30 = sub_1E3270FC8(v28, v29, v42);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v24, v25, "EpisodeCollectionFragment:: Failed to create fragment from JSON <%s>.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E69143B0](v27, -1, -1);
      MEMORY[0x1E69143B0](v26, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v39);
    (*(v7 + 8))(v10, v5);
    return v40;
  }

  if (!*(v41[0] + 16))
  {

    goto LABEL_11;
  }

  sub_1E4206BA4();
  v18 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v19 = *(v38 + 8);
  v38 += 8;
  v36 = v19;
  v19(v14, v37);
  if (v15)
  {
    v20 = *(*v15 + 176);

    v20(v21);
  }

  type metadata accessor for ViewModel();
  v32 = OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_3_0();
  *(v2 + 16) = v32;

  v43 = &type metadata for ViewModelKeys;
  v44 = &off_1F5D7BCA8;
  LOBYTE(v42[0]) = 26;
  sub_1E3F9F164(v42);

  if (!v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_1E329505C(v41);
LABEL_28:
    sub_1E4206B94();
    v35 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    __swift_destroy_boxed_opaque_existential_1(v39);
    v36(v14, v37);
    return v40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_28;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  v33 = OUTLINED_FUNCTION_2_16();

  if (!v33)
  {
LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  result = sub_1E32AE9B0(v33);
  if (!result)
  {

    goto LABEL_26;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1E6911E60](0, v33);
    goto LABEL_22;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 32);

LABEL_22:

LABEL_27:
    OUTLINED_FUNCTION_3_0();
    *(v2 + 24) = v34;

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E374457C()
{

  return v0;
}

uint64_t sub_1E37445A4()
{
  sub_1E374457C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E37445D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3743F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3744600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1E328438C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1E329504C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E329504C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E329504C(v31, v32);
    result = sub_1E42073F4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1E329504C(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1E37448C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_1E4205C44();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_1E4205C44();

LABEL_6:
  v6 = [v2 initWithDictionary:v4 andMetadataDictionary:v5];

  return v6;
}

uint64_t sub_1E37449C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3744A84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3744AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 936))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3744B84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3744BFC()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3744C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3744E04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1E3744E58()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 984))())
  {
    OUTLINED_FUNCTION_30();
    (*(v1 + 896))();
  }
}

uint64_t sub_1E3744F10()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 552))())
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_8;
  }

  v2[3] = &type metadata for ViewModelKeys.Sports;
  v2[4] = &off_1F5D7BC68;
  LOBYTE(v2[0]) = 12;
  sub_1E3F9F164(v2);

  __swift_destroy_boxed_opaque_existential_1(v2);
  if (!*(&v4 + 1))
  {
LABEL_8:
    sub_1E325F6F0(&v3, &unk_1ECF296E0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

void sub_1E3745060(__int16 a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  LOBYTE(v61) = 1;
  sub_1E4200634();
  v13 = *(v8 + 32);
  v13(v3 + v12, v11, v6);
  v14 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable;
  LOBYTE(v61) = 0;
  sub_1E4200634();
  v13(v3 + v14, v11, v6);
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_playerStatsViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_teamStatsViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_statsUnavailableTextViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_finalStatsUnavailableTextViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_cancellables) = MEMORY[0x1E69E7CC0];

  v59 = a3;
  v15 = sub_1E39BEDCC(a1, v60, a3);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_105;
  }

  v17 = *(*v15 + 464);
  v18 = *v15 + 464;
  v19 = swift_retain_n();
  v20 = v17(v19);
  v60 = v16;
  v57 = v18;
  v58 = v17;
  if (v20)
  {
    v21 = v20;
    sub_1E32AE9B0(v20);
    OUTLINED_FUNCTION_9_15();
    while (1)
    {
      if (a3 == v16)
      {

        v25 = 0;
        goto LABEL_21;
      }

      if (v13)
      {
        v22 = MEMORY[0x1E6911E60](v16, v21);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_113;
        }

        v22 = *(v21 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_112;
      }

      LOWORD(v69) = *(v22 + 98);
      LOWORD(v64) = 243;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_10_15();
      if (v61 == v71 && v62 == v72)
      {
        break;
      }

      v24 = sub_1E42079A4();

      if (v24)
      {
        goto LABEL_19;
      }

      ++v16;
    }

LABEL_19:

    type metadata accessor for PlayerStatsViewModel();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
    }

LABEL_21:
    v16 = v60;
    v17 = v58;
  }

  else
  {
    v25 = 0;
  }

  v26 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_playerStatsViewModel;
  swift_beginAccess();
  *(v16 + v26) = v25;

  v28 = v17(v27);
  if (v28)
  {
    v29 = v28;
    sub_1E32AE9B0(v28);
    OUTLINED_FUNCTION_9_15();
    while (1)
    {
      if (v25 == v16)
      {

        v33 = 0;
        goto LABEL_41;
      }

      if (v13)
      {
        v30 = MEMORY[0x1E6911E60](v16, v29);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_115;
        }

        v30 = *(v29 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_114;
      }

      LOWORD(v64) = *(v30 + 98);
      LOWORD(v68) = 242;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_10_15();
      if (v61 == v69 && v62 == v70)
      {
        break;
      }

      v32 = sub_1E42079A4();

      if (v32)
      {
        goto LABEL_39;
      }

      ++v16;
    }

LABEL_39:

    type metadata accessor for TeamStatsViewModel(0);
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
    }

LABEL_41:
    v16 = v60;
    v34 = &unk_1EE2AA000;
    v17 = v58;
  }

  else
  {
    v33 = 0;
    v34 = &unk_1EE2AA000;
  }

  v35 = v34[471];
  swift_beginAccess();
  *(v16 + v35) = v33;

  v37 = v17(v36);

  v38 = MEMORY[0x1E69E7CC0];
  if (!v37)
  {
    goto LABEL_60;
  }

  v68 = MEMORY[0x1E69E7CC0];
  v39 = sub_1E32AE9B0(v37);
  for (i = 0; v39 != i; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1E6911E60](i, v37);
    }

    else
    {
      if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_107;
      }

      v41 = *(v37 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_107:
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
      return;
    }

    v67 = *(v41 + 98);
    v66 = 23;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v61 == v64 && v62 == v65)
    {
    }

    else
    {
      v43 = sub_1E42079A4();

      if ((v43 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  v38 = v68;
LABEL_60:
  v44 = sub_1E32AE9B0(v38);
  v45 = 0;
  v46 = v38 & 0xC000000000000001;
  while (2)
  {
    if (v44 == v45)
    {
      goto LABEL_81;
    }

    if (v46)
    {
      v47 = MEMORY[0x1E6911E60](v45, v38);
    }

    else
    {
      if (v45 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_109;
      }

      v47 = *(v38 + 8 * v45 + 32);
    }

    if (__OFADD__(v45, 1))
    {
      goto LABEL_108;
    }

    LOBYTE(v64) = 7;
    OUTLINED_FUNCTION_8();
    (*(v48 + 776))(&v61, &v64, &unk_1F5D5DD98, &off_1F5D5CA38);
    if (!v63)
    {
      sub_1E325F6F0(&v61, &unk_1ECF296E0);
      goto LABEL_75;
    }

    if (!swift_dynamicCast())
    {
LABEL_75:

LABEL_76:
      ++v45;
      continue;
    }

    break;
  }

  if (v64 != 0xD000000000000010 || 0x80000001E4259C50 != v65)
  {
    v50 = sub_1E42079A4();

    if (v50)
    {
      goto LABEL_79;
    }

    goto LABEL_76;
  }

LABEL_79:
  if (*v47 != _TtC8VideosUI13TextViewModel)
  {

LABEL_81:
    v47 = 0;
  }

  *(v60 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_statsUnavailableTextViewModel) = v47;

  v51 = 0;
  while (2)
  {
    if (v44 == v51)
    {

      v52 = 0;
      v56 = v60;
      goto LABEL_104;
    }

    if (v46)
    {
      v52 = MEMORY[0x1E6911E60](v51, v38);
    }

    else
    {
      if (v51 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_111;
      }

      v52 = *(v38 + 8 * v51 + 32);
    }

    if (__OFADD__(v51, 1))
    {
      goto LABEL_110;
    }

    LOBYTE(v64) = 7;
    OUTLINED_FUNCTION_8();
    (*(v53 + 776))(&v61, &v64, &unk_1F5D5DD98, &off_1F5D5CA38);
    if (!v63)
    {
      sub_1E325F6F0(&v61, &unk_1ECF296E0);
      goto LABEL_97;
    }

    if (!swift_dynamicCast())
    {
LABEL_97:

LABEL_98:
      ++v51;
      continue;
    }

    break;
  }

  if (v64 != 0xD000000000000015 || 0x80000001E4259C70 != v65)
  {
    v55 = sub_1E42079A4();

    if (v55)
    {
      goto LABEL_102;
    }

    goto LABEL_98;
  }

LABEL_102:

  v56 = v60;
  if (*v52 != _TtC8VideosUI13TextViewModel)
  {

    v52 = 0;
  }

LABEL_104:
  *(v56 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_finalStatsUnavailableTextViewModel) = v52;

  sub_1E3745E14();

LABEL_105:
}

uint64_t sub_1E3745A58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BE0);
  OUTLINED_FUNCTION_0_10();
  v25 = v11;
  v26 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v27 = a1;
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v28 = v16;
  v17 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BE8);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v18, v19);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v4, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v20, &qword_1ECF28BD8);
  sub_1E42007B4();
  (*(v7 + 8))(v10, v5);
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1ECF28C00, &qword_1ECF28BE0);
  v21 = v25;
  sub_1E4200844();

  (*(v26 + 8))(v15, v21);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  OUTLINED_FUNCTION_2_17();
  sub_1E32752B0(v22, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();
}

uint64_t sub_1E3745E14()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v32 = v0;
  sub_1E3744F10();
  if (v16)
  {
    sub_1E4205004();
    v17 = sub_1E4204FF4();
    v18 = sub_1E4204FB4();

    v33 = v18;
    sub_1E32ADE38();
    v19 = sub_1E4206A04();
    v34 = v19;
    v20 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08);
    OUTLINED_FUNCTION_1_37();
    sub_1E32752B0(v21, v22);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v9, &unk_1ECF2D2B0);

    swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v23, v24);
    sub_1E4200844();

    (*(v12 + 8))(v15, v10);
    OUTLINED_FUNCTION_11_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
    OUTLINED_FUNCTION_2_17();
    sub_1E32752B0(v25, &qword_1ECF32580);
    sub_1E42004D4();
    swift_endAccess();
  }

  else
  {
    v27 = sub_1E3E37F30();
    (*(v3 + 16))(v6, v27, v1);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "SportStatsViewModel: Error: Failed to observe subscription (canonicalId was nil).", v30, 2u);
      MEMORY[0x1E69143B0](v30, -1, -1);
    }

    return (*(v3 + 8))(v6, v1);
  }
}

unint64_t sub_1E3746230(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4();
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E37465AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable, v2);
}

uint64_t sub_1E374668C()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable, v2);

  return v0;
}

uint64_t sub_1E374676C()
{
  v0 = sub_1E374668C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37467C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportStatsViewModel();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

unint64_t sub_1E3746800()
{
  result = qword_1EE23B1E0;
  if (!qword_1EE23B1E0)
  {
    sub_1E32ADE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B1E0);
  }

  return result;
}

uint64_t sub_1E3746858(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = 0;
    v4 = *(v1 + 16);
    while (1)
    {
      if (v4 == v3)
      {
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v5 = v3 + 1;
      result = OUTLINED_FUNCTION_189_0(*(v1 + 32 + v3));
      v3 = v5;
      if (result)
      {
        OUTLINED_FUNCTION_8();
        if ((*(v6 + 888))())
        {
          sub_1E3744B70();
          sub_1E3744A44();
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for SportStatsViewModel()
{
  result = qword_1EE29E400;
  if (!qword_1EE29E400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3746990()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3746A40(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1E42056D4();
    v5 = sub_1E3746230(v4);

    v6 = 0;
    v7 = *(v5 + 16);
    do
    {
      if (v7 == v6)
      {
        break;
      }

      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v6 + 1;
      result = OUTLINED_FUNCTION_189_0(*(v5 + v6 + 32));
      v6 = v8;
    }

    while ((result & 1) == 0);

    v10 = (*v3 + 1008);
    v11 = *v10;
    v12 = (*v10)(v9);
    if (v12)
    {
      OUTLINED_FUNCTION_30();
      (*(v13 + 1080))(v1);
    }

    if (v11(v12))
    {
      OUTLINED_FUNCTION_30();
      (*(v14 + 1016))();
    }

    v15 = sub_1E3744B70();
    v16 = (*(*v3 + 984))(v15);
    if (v16)
    {
      v17 = v16;
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = sub_1E4200664();
      (*(*v17 + 928))(v1);

      v18(&v19, 0);
    }

    sub_1E3744A44();
  }

  return result;
}

char *sub_1E3746CB0(char *a1, int64_t a2, char a3)
{
  result = sub_1E3746CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3746CD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E3746E04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E3746E10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E42012F4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E374709C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4201324();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for SportsScoreboardView()
{
  result = qword_1EE29C850;
  if (!qword_1EE29C850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3747414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t sub_1E37474CC@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SportsScoreboardView();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  memcpy(a3 + v6[7], a2, 0xC3uLL);
  v8 = (a3 + v6[8]);

  sub_1E3743538(a2, &v14, &qword_1ECF28C28);
  type metadata accessor for SportsScoreboardLayout();
  OUTLINED_FUNCTION_9_16();
  sub_1E374A938(v9, v10);

  *v8 = sub_1E42010C4();
  v8[1] = v11;
  v12 = sub_1E39DF25C();
  sub_1E325F69C(a2, &qword_1ECF28C28);

  *(a3 + v6[9]) = v12;
  return result;
}

void sub_1E3747664()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v57 = v3;
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v55 = v5;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v54 = v7 - v6;
  v8 = type metadata accessor for SportsScoreboardView();
  OUTLINED_FUNCTION_0_10();
  v49 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = v11;
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C30) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v48 = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v52 = v20;
  sub_1E3747C24();
  v21 = sub_1E41F0A84();
  v22 = *v21;
  v23 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C50) + 36)];
  *v23 = v22;
  *(v23 + 1) = sub_1E37489F4;
  *(v23 + 2) = 0;
  v24 = sub_1E4201D44();
  v25 = *v21;
  v26 = &v15[*(v12 + 44)];
  sub_1E3748A1C(v26);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C58) + 36));
  *v27 = v24;
  v27[1] = v25;
  v53 = v8;
  memcpy(v59, (v2 + *(v8 + 28)), 0xC3uLL);
  sub_1E3748B78(v59);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v15, v1, &qword_1ECF28C30);
  memcpy((v1 + *(v45 + 36)), v58, 0x70uLL);
  v28 = v51;
  sub_1E374AC8C(v2, v51, type metadata accessor for SportsScoreboardView);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_1E3748B9C(v28, v30 + v29);
  v31 = v48;
  sub_1E3741EA0(v1, v48, &qword_1ECF28C38);
  v32 = (v31 + *(v46 + 36));
  *v32 = sub_1E3748C00;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  sub_1E374AC8C(v2, v28, type metadata accessor for SportsScoreboardView);
  v33 = swift_allocObject();
  sub_1E3748B9C(v28, v33 + v29);
  v34 = v52;
  sub_1E3741EA0(v31, v52, &qword_1ECF28C40);
  v35 = (v34 + *(v47 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_1E3748E34;
  v35[3] = v33;
  KeyPath = swift_getKeyPath();
  if (sub_1E382662C())
  {
    v38 = v54;
    v37 = v55;
    v39 = v56;
    (*(v55 + 104))(v54, *MEMORY[0x1E697E7D0], v56);
  }

  else
  {
    v38 = v54;
    sub_1E374709C(v54);
    v37 = v55;
    v39 = v56;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C60);
  v41 = v57;
  v42 = (v57 + *(v40 + 36));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C68);
  (*(v37 + 32))(v42 + *(v43 + 28), v38, v39);
  *v42 = KeyPath;
  sub_1E3741EA0(v34, v41, &qword_1ECF28C48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3747C24()
{
  OUTLINED_FUNCTION_31_1();
  v30[1] = v0;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - v4;
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3746E10(v11 - v10);
  v13 = sub_1E3B02B0C();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    *v5 = sub_1E4201D44();
    *(v5 + 1) = 0;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CF0);
    sub_1E3747EF8();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v14, v15, v16);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E374AD40(v17, v18);
    OUTLINED_FUNCTION_7_39();
  }

  else
  {
    sub_1E374864C();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v23, v24, v25);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v26, v27);
    OUTLINED_FUNCTION_7_39();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E374A804(v19, v20, v21, v22);
  OUTLINED_FUNCTION_31_6();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v28, v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3747EF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v24 = v2;
  v3 = type metadata accessor for SportsScoreboardViewAccessibleView();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1E3748134(&v24 - v17);
  v19 = type metadata accessor for SportsScoreboardView();
  v20 = *(v1 + v19[6]);
  v21 = *(v1 + v19[8] + 8);
  memcpy(v26, (v1 + v19[7]), 0xC3uLL);

  sub_1E3743538(v26, &v25, &qword_1ECF28C28);
  sub_1E3800BD4(v20, v21, v26, v10);
  sub_1E3743538(v18, v15, &qword_1ECF28CB0);
  sub_1E374AC8C(v10, v7, type metadata accessor for SportsScoreboardViewAccessibleView);
  v22 = v24;
  sub_1E3743538(v15, v24, &qword_1ECF28CB0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CF8);
  sub_1E374AC8C(v7, v22 + *(v23 + 48), type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E374ACE8(v10, type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E325F69C(v18, &qword_1ECF28CB0);
  sub_1E374ACE8(v7, type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E325F69C(v15, &qword_1ECF28CB0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3748134(uint64_t a1@<X8>)
{
  v7 = v1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v62 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v61 = v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v64 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v20 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for SportsScoreboardView();
  v28 = sub_1E39C408C(5);
  if (v28)
  {
    if (*v28 == _TtC8VideosUI13TextViewModel)
    {
      sub_1E3746E10(v26);
      v29 = sub_1E3B02B0C();
      (*(v22 + 8))(v26, v20);
      if (v29)
      {
        v30 = *(v7 + *(v27 + 32) + 8);
        swift_beginAccess();
        if (*(v30 + 248))
        {
          v31 = *(v30 + 264);
        }

        else
        {
          v31 = 0;
        }

        v37 = v61;
      }

      else
      {
        v37 = v61;
        if (sub_1E3C27528())
        {
          type metadata accessor for TextLayout();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
          }
        }

        else
        {
          v31 = 0;
        }
      }

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      if (v31 && (v38 = *(*v31 + 176), v39 = , v38(v66, v39), v3 = v66[0], v4 = v66[1], v5 = v66[2], v6 = v66[3], , (v67 & 1) == 0))
      {
        v40.n128_f64[0] = OUTLINED_FUNCTION_6();
        j_nullsub_1(v40, v41, v42, v43);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v44 = sub_1E4202734();
      (*(v62 + 32))(v2, v37, v63);
      v45 = v2 + *(v60 + 36);
      *v45 = v44;
      *(v45 + 8) = v3;
      *(v45 + 16) = v4;
      *(v45 + 24) = v5;
      *(v45 + 32) = v6;
      *(v45 + 40) = 0;
      v46 = sub_1E4203DA4();
      v48 = v47;
      v49 = v64 + *(v59 + 36);
      sub_1E374AA38();
      v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CD8) + 36));
      *v50 = v46;
      v50[1] = v48;
      sub_1E3741EA0(v2, v64, &qword_1ECF28CC0);
      v51 = *sub_1E41F0A84();

      sub_1E3741EA0(v64, v18, &qword_1ECF28CC8);
      v52 = (v18 + *(v14 + 36));
      *v52 = v51;
      v52[1] = sub_1E374AC64;
      v52[2] = 0;
      OUTLINED_FUNCTION_12_12();
      sub_1E3741EA0(v53, v54, v55);
      OUTLINED_FUNCTION_12_12();
      sub_1E3741EA0(v56, v57, v58);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
}

void sub_1E374864C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CA8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for SportsScoreboardPostGameView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = type metadata accessor for SportsScoreboardView();
  v17 = *(v2 + *(v16 + 24));
  if ((*(*v17 + 1232))())
  {
    memcpy(v29, (v2 + *(v16 + 28)), 0xC3uLL);

    sub_1E3743538(v29, &v28, &qword_1ECF28C28);
    sub_1E3D873F8(v17, v29, v15);
    sub_1E374AC8C(v15, v0, type metadata accessor for SportsScoreboardPostGameView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_16();
    sub_1E374A938(v18, v19);
    sub_1E374A980();
    sub_1E4201F44();
    sub_1E374ACE8(v15, type metadata accessor for SportsScoreboardPostGameView);
  }

  else
  {
    *v7 = *sub_1E41F0A04();
    *(v7 + 1) = 0;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D08);
    sub_1E3748ED0();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_23_3();
    sub_1E42015C4();
    sub_1E3741EA0(v7, v10, &qword_1ECF28CA8);
    memcpy(&v10[*(v26 + 36)], v29, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v20, v21, v22);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_16();
    sub_1E374A938(v23, v24);
    sub_1E374A980();
    sub_1E4201F44();
    OUTLINED_FUNCTION_29_2(v10);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3748A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  v5 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E3746E10(v10 - v9);
  v12 = sub_1E3B02B0C();
  (*(v7 + 8))(v11, v5);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    sub_1E3748134(v1);
    sub_1E3741EA0(v1, a1, &qword_1ECF28CB0);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v3);
}

uint64_t sub_1E3748B78(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1E3748B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreboardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3748C00()
{
  v0 = type metadata accessor for SportsScoreboardView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_21_19();
  return (*(v1 + 1240))();
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SportsScoreboardView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  v7 = *(v3 + *(v1 + 28) + 80);
  if (v7 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3748E34()
{
  v0 = type metadata accessor for SportsScoreboardView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_21_19();
  return (*(v1 + 1248))(0);
}

void sub_1E3748ED0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v177 = v2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v4);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D28);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v178 = v15;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D48);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D50);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v176 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_17_2(v31);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v181 = v33;
  v34 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v146 - v42;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D58);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_6();
  v173 = v45 - v46;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v174 = v146 - v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v146 - v51;
  v53 = type metadata accessor for SportsScoreboardView();
  v54 = *(v1 + v53[6]);
  v55 = *(v1 + v53[8] + 8);

  v172 = sub_1E38266E4();
  v56 = v53[5];
  v179 = v1;
  v160 = v56;
  sub_1E374709C(v43);
  v57 = *MEMORY[0x1E697E7D0];
  v58 = *(v36 + 104);
  v163 = v36 + 104;
  v162 = v58;
  v58(v40, v57, v34);
  v59 = sub_1E4201314();
  v60 = *(v36 + 8);
  v166 = v40;
  v60(v40, v34);
  v165 = v43;
  v169 = v34;
  v167 = v36 + 8;
  v161 = v60;
  v61 = (v60)(v43, v34);
  v62 = v55;
  v63 = v181;
  sub_1E3B29758(v61);
  sub_1E3B297BC(v63, v54, v172, v59 & 1, 0, v52);
  v64 = *(v180 + 36);
  v172 = v52;
  *&v52[v64] = 0x3FF0000000000000;
  if (sub_1E38271C0())
  {
    if (sub_1E3827218())
    {
      v65 = sub_1E38267CC();
      v66 = v151;
      sub_1E3749D5C(v65, v151);

      v67 = sub_1E41F0A04();
      v68 = (v66 + *(v149 + 36));
      *v68 = *v67;
      v68[1] = sub_1E374AE08;
      v68[2] = 0;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v69, v70, v71);
      v72 = v146[1];
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v73, v74, v75);
      v76 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D88) + 48);
      *v76 = 0;
      *(v76 + 8) = 0;
      OUTLINED_FUNCTION_29_2(v66);
      v77 = OUTLINED_FUNCTION_32_0();
      sub_1E325F69C(v77, v78);
      v79 = v164;
      sub_1E3741EA0(v72, v164, &qword_1ECF28D38);
      v80 = 0;
      v81 = v170;
    }

    else
    {
      v80 = 1;
      v81 = v170;
      v79 = v164;
    }

    v90 = 1;
    __swift_storeEnumTagSinglePayload(v79, v80, 1, v148);

    v91 = v178;
    v148 = v62;
    sub_1E41EEC10(v54, v62, v178);
    v92 = sub_1E41F0A04();
    v93 = *v92;
    v94 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70) + 36));
    *v94 = v93;
    v94[1] = sub_1E374A0BC;
    v94[2] = 0;
    *(v91 + *(v150 + 36)) = 0x4000000000000000;
    if (sub_1E3827218())
    {
      v95 = sub_1E38267D4();
      v96 = v151;
      sub_1E3749D5C(v95, v151);

      v97 = (v96 + *(v149 + 36));
      *v97 = *v92;
      v97[1] = sub_1E374AE08;
      v97[2] = 0;
      v98 = v152;
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v99, v100, v101);
      v102 = v147;
      *v147 = 0;
      *(v102 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D80);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v103, v104, v105);
      OUTLINED_FUNCTION_29_2(v96);
      OUTLINED_FUNCTION_29_2(v98);
      sub_1E3741EA0(v102, v81, &qword_1ECF28D20);
      v90 = 0;
    }

    __swift_storeEnumTagSinglePayload(v81, v90, 1, v154);
    v106 = v153;
    sub_1E3743538(v79, v153, &qword_1ECF28D48);
    v154 = v54;
    v107 = v155;
    sub_1E3743538(v178, v155, &qword_1ECF28D30);
    v108 = v156;
    sub_1E3743538(v81, v156, &qword_1ECF28D28);
    v109 = v157;
    *v157 = 0;
    *(v109 + 8) = 0;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D78);
    sub_1E3743538(v106, v109 + v110[12], &qword_1ECF28D48);
    sub_1E3743538(v107, v109 + v110[16], &qword_1ECF28D30);
    sub_1E3743538(v108, v109 + v110[20], &qword_1ECF28D28);
    v111 = v109 + v110[24];
    *v111 = 0;
    *(v111 + 8) = 0;
    sub_1E325F69C(v108, &qword_1ECF28D28);
    sub_1E325F69C(v107, &qword_1ECF28D30);
    sub_1E325F69C(v106, &qword_1ECF28D48);
    sub_1E3743538(v109, v159, &qword_1ECF28D18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
    OUTLINED_FUNCTION_6_1();
    sub_1E374AD40(v112, &qword_1ECF28D18);
    sub_1E374AD84();
    v89 = v168;
    sub_1E4201F44();
    sub_1E325F69C(v109, &qword_1ECF28D18);
    sub_1E325F69C(v170, &qword_1ECF28D28);
    v54 = v154;
    sub_1E325F69C(v178, &qword_1ECF28D30);
    sub_1E325F69C(v164, &qword_1ECF28D48);
  }

  else
  {
    swift_beginAccess();
    sub_1E4203DA4();
    sub_1E4200D94();
    v82 = v185;
    v83 = v186;
    v84 = v187;
    v85 = v188;
    v184 = 1;
    v183 = v186;
    v182 = v188;
    v86 = v159;
    *v159 = 0;
    *(v86 + 8) = 1;
    v86[2] = v82;
    *(v86 + 24) = v83;
    v86[4] = v84;
    *(v86 + 40) = v85;
    *(v86 + 3) = v189;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
    OUTLINED_FUNCTION_6_1();
    sub_1E374AD40(v87, v88);
    sub_1E374AD84();
    v89 = v168;
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
  }

  v113 = sub_1E38266EC();
  v114 = v165;
  sub_1E374709C(v165);
  v115 = v166;
  v116 = v169;
  v162(v166, *MEMORY[0x1E697E7D8], v169);
  v117 = sub_1E4201314();
  v118 = v161;
  v161(v115, v116);
  v119 = v118(v114, v116);
  v120 = v181;
  sub_1E3B29758(v119);
  v121 = v171;
  sub_1E3B297BC(v120, v54, v113, v117 & 1, 0, v171);
  *(v121 + *(v180 + 36)) = 0x3FF0000000000000;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v122, v123, v124);
  v125 = v176;
  sub_1E3743538(v89, v176, &qword_1ECF28D50);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v126, v127, v128);
  v129 = v177;
  *v177 = 0;
  *(v129 + 8) = 0;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D68);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v131, v132, v133);
  sub_1E3743538(v125, v129 + *(v130 + 64), &qword_1ECF28D50);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v134, v135, v136);
  v137 = v129 + *(v130 + 96);
  *v137 = 0;
  v137[8] = 0;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v138, v139);
  sub_1E325F69C(v89, &qword_1ECF28D50);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v140, v141);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v142, v143);
  sub_1E325F69C(v125, &qword_1ECF28D50);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v144, v145);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3749D5C(__objc2_class **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v52 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v49 = v5;
    v51 = a2;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v48 = type metadata accessor for SportsScoreboardView();
    v20 = *(v48 + 32);
    v50 = v2;
    v21 = *(**(*(v2 + v20 + 8) + 216) + 176);

    v21(v53, v22);
    v23 = v53[0];
    v24 = v53[1];
    v25 = v53[2];
    v26 = v53[3];

    if (v54)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v32, v33, v34, v35);
    }

    OUTLINED_FUNCTION_3();
    v36 = v51;
    v37 = v49;
    v38 = sub_1E4202734();
    (*(v52 + 32))(v13, v9, v37);
    v39 = &v13[*(v10 + 36)];
    *v39 = v38;
    *(v39 + 1) = v23;
    *(v39 + 2) = v24;
    *(v39 + 3) = v25;
    *(v39 + 4) = v26;
    v39[40] = 0;
    v40 = sub_1E3827278();

    if (v40)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }

    sub_1E3741EA0(v13, v18, &qword_1ECF28CC0);
    *(v18 + *(v14 + 36)) = v41;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v42, v43, v44);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v45, v46, v47);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v14);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

void sub_1E374A110()
{
  sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
  if (v0 <= 0x3F)
  {
    sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel();
      if (v2 <= 0x3F)
      {
        sub_1E374A270();
        if (v3 <= 0x3F)
        {
          sub_1E374A2C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E374A21C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E374A270()
{
  if (!qword_1EE278AC0)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE278AC0);
    }
  }
}

void sub_1E374A2C0()
{
  if (!qword_1EE289D28)
  {
    type metadata accessor for SportsScoreboardLayout();
    sub_1E374A938(&qword_1EE25F470, type metadata accessor for SportsScoreboardLayout);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D28);
    }
  }
}

unint64_t sub_1E374A354()
{
  result = qword_1EE289410;
  if (!qword_1EE289410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C60);
    sub_1E374A40C();
    sub_1E374AD40(&qword_1EE2887B8, &qword_1ECF28C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289410);
  }

  return result;
}

unint64_t sub_1E374A40C()
{
  result = qword_1EE289418;
  if (!qword_1EE289418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C48);
    sub_1E374A498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289418);
  }

  return result;
}

unint64_t sub_1E374A498()
{
  result = qword_1EE289428;
  if (!qword_1EE289428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C40);
    sub_1E374A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289428);
  }

  return result;
}

unint64_t sub_1E374A524()
{
  result = qword_1EE289480;
  if (!qword_1EE289480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C38);
    sub_1E374A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289480);
  }

  return result;
}

unint64_t sub_1E374A5B0()
{
  result = qword_1EE289598;
  if (!qword_1EE289598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C30);
    sub_1E374A668();
    sub_1E374AD40(&qword_1EE289300, &qword_1ECF28C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289598);
  }

  return result;
}

unint64_t sub_1E374A668()
{
  result = qword_1EE289878;
  if (!qword_1EE289878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C50);
    sub_1E374A804(&qword_1EE2886D8, &unk_1ECF28C78, &unk_1E42983F8, sub_1E374A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289878);
  }

  return result;
}

unint64_t sub_1E374A720()
{
  result = qword_1EE288D90;
  if (!qword_1EE288D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C80);
    sub_1E374AD40(&qword_1EE288480, &qword_1ECF28C88);
    sub_1E374A804(&qword_1EE2886F8, &qword_1ECF28C90, &unk_1E4298410, sub_1E374A87C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D90);
  }

  return result;
}

uint64_t sub_1E374A804(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E374A87C()
{
  result = qword_1EE288FE8;
  if (!qword_1EE288FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C98);
    sub_1E374A938(qword_1EE2499A8, type metadata accessor for SportsScoreboardPostGameView);
    sub_1E374A980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FE8);
  }

  return result;
}

uint64_t sub_1E374A938(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E374A980()
{
  result = qword_1EE2897C8;
  if (!qword_1EE2897C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CA0);
    sub_1E374AD40(&qword_1EE2885C0, &unk_1ECF28CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897C8);
  }

  return result;
}

uint64_t sub_1E374AA38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CE0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E3C27528();
  if (!v5 || (v6 = (*(*v5 + 744))(), , !v6))
  {
    v6 = [objc_opt_self() clearColor];
  }

  sub_1E3740CCC();
  sub_1E39BA034();

  v7 = sub_1E3C27528();
  if (v7)
  {
    (*(*v7 + 552))(&v13);

    if ((v14 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v8, v9, v10, v11);
    }
  }

  swift_getOpaqueTypeConformance2();
  sub_1E3E361E8();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1E374AC8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E374ACE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E374AD40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E374AD84()
{
  result = qword_1EE2897B8;
  if (!qword_1EE2897B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897B8);
  }

  return result;
}

uint64_t sub_1E374AE0C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_5_0();
    if (*(v1 + 16))
    {
      v14 = 0x64657472617473;
    }

    else
    {
      v14 = 0x646570706F7473;
    }

    v15 = sub_1E3270FC8(v14, 0xE700000000000000, &v17);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v10, v11, "TabItemsUpdater:: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E374AFD8()
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_5_0();
  return *(v0 + 16);
}

uint64_t sub_1E374B000(char a1)
{
  OUTLINED_FUNCTION_10_17();
  swift_beginAccess();
  *(v1 + 16) = a1;
  return sub_1E374AE0C();
}

uint64_t sub_1E374B040()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  OUTLINED_FUNCTION_5_0();
  v3 = *(v1 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E42004F4();
    sub_1E374E89C(&qword_1ECF28DA0, MEMORY[0x1E695BF10]);
    result = sub_1E4206664();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v5 = v3 + 56;
    v7 = ~(-1 << *(v3 + 32));
    OUTLINED_FUNCTION_8_20();
    v9 = v10 & v11;
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v3;
  }

  v12 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_15:
      sub_1E34AF4DC();

      v18 = *(v1 + 40);
      if (v18)
      {
        v19 = v18;
        sub_1E374C1B0();
      }

      sub_1E374BA48();

      return v1;
    }

    while (1)
    {
      sub_1E42004E4();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_1E42073C4())
      {
        sub_1E42004F4();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_15;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E374B2C8()
{
  sub_1E374B040();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E374B2FC()
{
  v0 = swift_allocObject();
  sub_1E374B334();
  return v0;
}

uint64_t sub_1E374B334()
{
  *(v0 + 16) = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 tabItemsUpdateConfig];

  v3 = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  sub_1E374B650();
  return v0;
}

void sub_1E374B3B4()
{
  if ([objc_opt_self() userHasActiveAccount])
  {
    OUTLINED_FUNCTION_10_17();
    swift_beginAccess();
    *(v0 + 16) = 1;
    sub_1E374AE0C();
    sub_1E374B7FC();
  }
}

void sub_1E374B414()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v7 = sub_1E41FF1E4();
  }

  else
  {
    v8 = [objc_opt_self() sharedInstance];
    v7 = [v8 isNetworkReachable];
  }

  if ([objc_opt_self() userHasActiveAccount] && (v7 & 1) != 0)
  {
    v13 = [objc_opt_self() sharedInstance];
    [v13 refreshTabBarItems];
  }

  else
  {
    v9 = sub_1E324FBDC();
    (*(v2 + 16))(v6, v9, v0);
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v7 & 1;
      _os_log_impl(&dword_1E323F000, v10, v11, "TabItemsUpdater:: will skip refresh with network reachable status: %{BOOL}d", v12, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v2 + 8))(v6, v0);
  }
}

uint64_t sub_1E374B650()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  v8 = *NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor();
  sub_1E4206C14();

  swift_allocObject();
  swift_weakInit();
  sub_1E374E89C(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();
}

void sub_1E374B7FC()
{
  v1 = swift_allocObject();
  swift_weakInit();
  updated = type metadata accessor for UpdateTabItemsEventMonitorController();
  v3 = objc_allocWithZone(updated);

  v4 = &v3[OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents;
  *&v3[v5] = sub_1E374BFFC(&unk_1F5D519E0);
  v6 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  v7 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber];
  *v8 = v0;
  *(v8 + 1) = &off_1F5D51A08;
  v9 = *v4;
  *v4 = sub_1E374E7A8;
  v4[1] = v1;

  sub_1E34AF594(v9);
  v13.receiver = v3;
  v13.super_class = updated;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  v11 = *(v0 + 40);
  *(v0 + 40) = v10;
  v12 = v10;

  sub_1E374C0CC();
}

void sub_1E374B950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() sharedMonitor];
  sub_1E374DF94();
  OUTLINED_FUNCTION_2_18();
  sub_1E374E89C(v6, v7);
  v8 = sub_1E4206614();
  v9 = v8;
  if (a3)
  {
    [v5 updateDescriptorsForObserver:a1 eventDescriptors:v8];
  }

  else
  {
    [v5 addObserver:a1 forEventDescriptors:v8 viewController:0];
  }
}

void sub_1E374BA48()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedMonitor];
    [v4 removeObserver_];
  }
}

void sub_1E374BAE0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    sub_1E374D110();
    v12 = sub_1E4207944();
    v14 = sub_1E3270FC8(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "TabItemsUpdater::update for event descriptor %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  sub_1E374B414();
}

unint64_t sub_1E374BC90()
{
  v1 = [*(v0 + 24) eventDescriptors];
  v2 = sub_1E4205C64();

  v3 = sub_1E374BD08(v2);

  return v3;
}

unint64_t sub_1E374BD08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v10, __src);
    sub_1E328438C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1E374E74C(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1E328438C(&__dst[40], v20);
    sub_1E325F748(__dst, &qword_1ECF28E40);
    v21 = v18;
    sub_1E329504C(v20, v22);
    v11 = v21;
    sub_1E329504C(v22, v23);
    sub_1E329504C(v23, &v21);
    result = sub_1E327D33C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = sub_1E329504C(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1E329504C(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1E325F748(__dst, &qword_1ECF28E40);

  return 0;
}

uint64_t sub_1E374BFFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for DocumentUpdateEventType();
  v4 = v3;
  v5 = sub_1E374E89C(&qword_1EE23AF50, type metadata accessor for DocumentUpdateEventType);
  v6 = MEMORY[0x1E6910FA0](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1E374D328(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1E374C0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  sub_1E374CDFC(*(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber), *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8), *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 0);
  sub_1E41FE5C4();
  v5 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  OUTLINED_FUNCTION_11_3();
  sub_1E32ABDC0(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_1E374C1B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
  *v5 = 0;
  v5[1] = 0;
  sub_1E34AF594(v6);
  v7 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  OUTLINED_FUNCTION_11_3();
  sub_1E32ABDC0(v4, v0 + v8);
  return swift_endAccess();
}

id sub_1E374C280(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E324FBDC();
  (*(v10 + 16))(v14, v15, v8);
  v16 = a1;
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_1E323F000, v17, v18, "TabItemsUpdater::::receive event %@", v19, 0xCu);
    sub_1E325F748(v20, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v10 + 8))(v14, v8);
  v22 = [v16 descriptor];
  v23 = sub_1E3CB1908(v22);

  v24 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber);
  v25 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8);
  ObjectType = swift_getObjectType();
  (*(v25 + 16))(v23, ObjectType, v25);
  sub_1E374CDFC(v24, v25, *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 1);
  result = [v16 isRefreshEvent];
  if (result)
  {
    sub_1E41FE5C4();
    v28 = sub_1E41FE5D4();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v28);
    v29 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
    OUTLINED_FUNCTION_11_3();
    sub_1E32ABDC0(v7, v2 + v29);
    return swift_endAccess();
  }

  return result;
}

void sub_1E374C5A8()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v93 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v81 - v18;
  v19 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v94 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v28 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber);
  v29 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8);
  ObjectType = swift_getObjectType();
  v90 = v29;
  v100 = ObjectType;
  v101 = *(v29 + 8);
  v99[0] = v28;
  v91 = v28;
  swift_unknownObjectRetain();
  v30 = sub_1E3CB0C34(v99);
  __swift_destroy_boxed_opaque_existential_1(v99);
  if (v30)
  {
    v81 = v16;
    v88 = v0;
    v83 = v24;
    v85 = v19;
    v86 = v3;
    v84 = v27;
    v87 = v1;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1E4207344();
      sub_1E374DF94();
      OUTLINED_FUNCTION_2_18();
      sub_1E374E89C(v31, v32);
      sub_1E4206664();
      v34 = v99[0];
      v33 = v99[1];
      v35 = v99[2];
      v36 = v100;
      v37 = v101;
    }

    else
    {
      v33 = v30 + 56;
      v35 = ~(-1 << *(v30 + 32));
      OUTLINED_FUNCTION_8_20();
      v37 = v38 & v39;

      v36 = 0;
      v34 = v30;
    }

    v82 = v7;
    v96 = v35;
    if (v34 < 0)
    {
      goto LABEL_12;
    }

LABEL_6:
    v40 = v36;
    v41 = v37;
    v42 = v36;
    if (v37)
    {
LABEL_10:
      v43 = (v41 - 1) & v41;
      v44 = *(*(v34 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
      if (v44)
      {
        while ([v44 type])
        {

          v36 = v42;
          v37 = v43;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_12:
          v45 = sub_1E42073C4();
          if (v45)
          {
            v97 = v45;
            sub_1E374DF94();
            swift_dynamicCast();
            v44 = v98;
            v42 = v36;
            v43 = v37;
            if (v98)
            {
              continue;
            }
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_11_22();
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v47 = v46;
          v48 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
          v49 = v88;
          OUTLINED_FUNCTION_5_0();
          v50 = v95;
          sub_1E329E324(v49 + v48, v95);
          v51 = v85;
          if (__swift_getEnumTagSinglePayload(v50, 1, v85) == 1)
          {
            sub_1E325F748(v50, &unk_1ECF28E20);
            v52 = sub_1E324FBDC();
            v53 = v86;
            v54 = v82;
            v55 = v87;
            (*(v86 + 16))(v82, v52, v87);
            v56 = sub_1E41FFC94();
            v57 = sub_1E4206814();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_1E323F000, v56, v57, "TabItemsUpdater::::ignore appDocumentHasBecomeActive", v58, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            (*(v53 + 8))(v54, v55);
          }

          else
          {
            v59 = v94;
            (*(v94 + 32))(v84, v50, v51);
            v60 = [v47 delayInSeconds];
            sub_1E41FE5C4();
            sub_1E41FE4F4();
            v62 = v61;
            v63 = sub_1E324FBDC();
            v64 = v86;
            v65 = *(v86 + 16);
            v66 = v87;
            if (v62 >= v60)
            {
              v72 = v92;
              v65(v92, v63, v87);
              v73 = sub_1E41FFC94();
              v74 = sub_1E4206814();
              if (os_log_type_enabled(v73, v74))
              {
                v75 = OUTLINED_FUNCTION_6_21();
                *v75 = 134217984;
                *(v75 + 4) = v62;
                _os_log_impl(&dword_1E323F000, v73, v74, "TabItemsUpdater::::trigger tab update on app become active, time interval %f", v75, 0xCu);
                OUTLINED_FUNCTION_6_0();
              }

              (*(v64 + 8))(v72, v66);
              v77 = v90;
              v76 = v91;
              (*(v90 + 16))(0, ObjectType, v90);
              v78 = v81;
              v79 = v83;
              (*(v59 + 16))(v81, v83, v51);
              __swift_storeEnumTagSinglePayload(v78, 0, 1, v51);
              v80 = v88;
              OUTLINED_FUNCTION_11_3();
              sub_1E32ABDC0(v78, v80 + v48);
              swift_endAccess();
              sub_1E374CDFC(v76, v77, *(v80 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 1);

              v71 = *(v59 + 8);
              v71(v79, v51);
            }

            else
            {
              v67 = v93;
              v65(v93, v63, v87);
              v68 = sub_1E41FFC94();
              v69 = sub_1E4206814();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = OUTLINED_FUNCTION_6_21();
                *v70 = 134217984;
                *(v70 + 4) = v62;
                _os_log_impl(&dword_1E323F000, v68, v69, "TabItemsUpdater::::no update on app become active, timeIntervalSinceLastUpdate %f", v70, 0xCu);
                OUTLINED_FUNCTION_6_0();
              }

              (*(v64 + 8))(v67, v66);
              v71 = *(v59 + 8);
              v71(v83, v51);
            }

            v71(v84, v51);
          }
        }

        else
        {
        }
      }

      else
      {
LABEL_17:
        OUTLINED_FUNCTION_11_22();
      }
    }

    else
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= ((v35 + 64) >> 6))
        {
          goto LABEL_17;
        }

        v41 = *(v33 + 8 * v42);
        ++v40;
        if (v41)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1E374CDFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 8);
  v15[3] = ObjectType;
  v15[4] = v10;
  v15[0] = a1;
  swift_unknownObjectRetain();
  v11 = sub_1E3CB0C34(v15);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if (v11)
  {

    v13 = sub_1E374DD1C(v11, a3);
    if (!sub_1E374CEE0(v13))
    {
      v14 = *(v4 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
      if (v14)
      {

        v14(v4, v13, a4 & 1);
        sub_1E34AF594(v14);
      }
    }
  }

  return result;
}

BOOL sub_1E374CEE0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1E4207384();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

id sub_1E374CF60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateTabItemsEventMonitorController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E374D010(uint64_t a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E374D060(uint64_t a1, uint64_t a2)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2);
  return sub_1E4207BA4();
}

void sub_1E374D0A4(uint64_t a1@<X8>)
{
  sub_1E374D0D8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1E374D0E0@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  result = nullsub_1(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

unint64_t sub_1E374D110()
{
  result = qword_1ECF28DA8;
  if (!qword_1ECF28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28DA8);
  }

  return result;
}

uint64_t type metadata accessor for UpdateTabItemsEventMonitorController()
{
  result = qword_1EE290BD8;
  if (!qword_1EE290BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E374D1DC()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DocumentUpdateEventType()
{
  if (!qword_1EE23AF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23AF40);
    }
  }
}

BOOL sub_1E374D328(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2);
  v6 = sub_1E4207BA4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_1E374D888(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1E374D418()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28E48);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1E4207B44();
    MEMORY[0x1E69124B0](v15);
    result = sub_1E4207BA4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E374D664()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1E4206F54();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E374D888(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E374D418();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E374DB00();
LABEL_10:
      v12 = *v3;
      sub_1E4207B44();
      MEMORY[0x1E69124B0](v5);
      result = sub_1E4207BA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for DocumentUpdateEventType();
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E374D9C0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E374D9C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28E48);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E374DB00()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28E48);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1E4207B44();
        MEMORY[0x1E69124B0](v14);
        result = sub_1E4207BA4();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E374DD1C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v22 = MEMORY[0x1E69E7CD0];

    sub_1E4207344();
    while (1)
    {
LABEL_3:
      if (!sub_1E42073C4())
      {
        swift_bridgeObjectRelease_n();

        return v4;
      }

      sub_1E374DF94();
      swift_dynamicCast();
      v5 = [v21 type];
      if (*(a2 + 16))
      {
        v6 = v5;
        sub_1E4207B44();
        MEMORY[0x1E69124B0](v6);
        v7 = sub_1E4207BA4();
        v8 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v9 = v7 & v8;
          if (((*(a2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
          {
            break;
          }

          v7 = v9 + 1;
          if (*(*(a2 + 48) + 8 * v9) == v6)
          {

            goto LABEL_3;
          }
        }
      }

      if (*(v4 + 24) <= *(v4 + 16))
      {
        sub_1E374D664();
      }

      v4 = v22;
      result = sub_1E4206F54();
      v11 = v22 + 56;
      v12 = -1 << *(v22 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v22 + 48) + 8 * v15) = v21;
      ++*(v22 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = sub_1E374DFD8(a1, a2);

    return v20;
  }

  return result;
}

unint64_t sub_1E374DF94()
{
  result = qword_1EE23AEF0;
  if (!qword_1EE23AEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AEF0);
  }

  return result;
}

uint64_t sub_1E374DFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v10);
    v29 = v8;
    v31 = (v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1E373CBF0(0, v8, v31);
    v34 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v9 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v32 = v5;
LABEL_6:
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v17 = v14 | (v11 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = [v18 type];
      if (*(a2 + 16))
      {
        v20 = v19;
        v33 = v17;
        sub_1E4207B44();
        MEMORY[0x1E69124B0](v20);
        v21 = sub_1E4207BA4();
        v22 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(a2 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v21 = v23 + 1;
          if (*(*(a2 + 48) + 8 * v23) == v20)
          {

            v5 = v32;
            goto LABEL_6;
          }
        }

        v17 = v33;
      }

      v5 = v32;
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_22:
        v25 = sub_1E374E560(v31, v29, v34, v5);
        goto LABEL_23;
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_22;
      }

      v16 = *(v8 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1E374E4C0(v27, v8, v5, a2);

  MEMORY[0x1E69143B0](v27, -1, -1);
LABEL_23:
  swift_bridgeObjectRelease_n();
  return v25;
}

void sub_1E374E2DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = [v16 type];
    if (*(a4 + 16))
    {
      v18 = v17;
      sub_1E4207B44();
      MEMORY[0x1E69124B0](v18);
      v19 = sub_1E4207BA4();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v11 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v19 = v21 + 1;
        if (*(*(a4 + 48) + 8 * v21) == v18)
        {

          goto LABEL_5;
        }
      }
    }

    *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v26++, 1))
    {
      __break(1u);
LABEL_20:

      sub_1E374E560(a1, v23, v26, a3);

      return;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1E374E4C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1E374E2DC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1E374E560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
  result = sub_1E4207464();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1E4206F54();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E374E7A8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E374B950(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E374E818()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (([objc_opt_self() userHasActiveAccount] & 1) == 0)
    {
      sub_1E374BA48();
      swift_beginAccess();
      *(v1 + 16) = 0;
      sub_1E374AE0C();
    }
  }

  return result;
}

uint64_t sub_1E374E89C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E374E91C(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E374E980()
{
  v1 = *v0;
  sub_1E4207B44();
  MEMORY[0x1E69124B0](v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E374E9C4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E374EA2C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E374EA94()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E374EAFC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E374EB64()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E374EBCC()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E374EC34()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E374EC9C()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E374ED08()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    v1 = OUTLINED_FUNCTION_14_21(v3);
    *(v2 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E374ED84()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    v1 = OUTLINED_FUNCTION_14_21(v3);
    *(v2 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E374EE00()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    type metadata accessor for DownloadStateIndicatorLayout();
    v1 = sub_1E3C6D918();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_1E374EEA4(char a1)
{
  *(v1 + 184) = 0;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 192) = a1;
  v2 = sub_1E3C2F9A0();

  v3 = *sub_1E3E60480();
  sub_1E3C2E258();
  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_8_5();
  v5(v4);

  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 2080);

  v8 = OUTLINED_FUNCTION_8_5();
  v7(v8);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 2104);

  v11 = OUTLINED_FUNCTION_10_7();
  v10(v11);

  v12 = sub_1E39DFFC0();
  v13 = *(v2 + 120);
  OUTLINED_FUNCTION_13();
  v15 = *(v14 + 1696);

  if (v12)
  {
    v16 = 14;
  }

  else
  {
    v16 = 19;
  }

  v15(v16);

  v17 = *(v2 + 120);

  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v18 = *(*v17 + 680);
  v19 = v13;
  v18(v13);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  v20 = OUTLINED_FUNCTION_8_5();
  v21(v20);

  OUTLINED_FUNCTION_3_1();
  v23 = *(v22 + 2080);

  v24 = OUTLINED_FUNCTION_10_7();
  v23(v24);

  OUTLINED_FUNCTION_3_1();
  v26 = *(v25 + 2104);

  v27 = OUTLINED_FUNCTION_10_7();
  v26(v27);

  OUTLINED_FUNCTION_3_1();
  v29 = *(v28 + 1696);

  v29(22);

  OUTLINED_FUNCTION_3_1();
  v31 = *(v30 + 1792);

  v31(10);

  OUTLINED_FUNCTION_3_1();
  v33 = (v32 + 1936);
  v34 = *(v32 + 1936);

  v34(2);

  v35 = *(v2 + 112);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v36 = *(*v35 + 680);
  v37 = v33;
  v36(v33);

  OUTLINED_FUNCTION_3_1();
  v39 = *(v38 + 2008);

  v39(1);

  __src[0] = 0x4014000000000000uLL;
  __src[1] = 0uLL;
  OUTLINED_FUNCTION_1_46();
  v41 = *(v40 + 160);

  v41(__src);

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  v42 = OUTLINED_FUNCTION_8_5();
  v43(v42);

  OUTLINED_FUNCTION_36();
  v45 = *(v44 + 2080);

  v46 = OUTLINED_FUNCTION_8_5();
  v45(v46);

  OUTLINED_FUNCTION_36();
  v48 = *(v47 + 2104);

  v49 = OUTLINED_FUNCTION_10_7();
  v48(v49);

  OUTLINED_FUNCTION_36();
  v51 = (v50 + 1696);
  v52 = *(v50 + 1696);

  v52(19);

  v53 = *(v2 + 128);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v54 = *(*v53 + 680);
  v55 = v51;
  v54(v51);

  if (sub_1E39DFFC0())
  {
    v56 = 0x4014000000000000;
  }

  else
  {
    v56 = 0;
  }

  __src[0] = xmmword_1E42986F0;
  __src[1] = v56;
  OUTLINED_FUNCTION_1_46();
  v58 = *(v57 + 160);

  v58(__src);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v59 + 1696))(19);

  OUTLINED_FUNCTION_36();
  v61 = *(v60 + 1328);

  v61(1);

  OUTLINED_FUNCTION_36();
  v63 = *(v62 + 2056);

  v64 = OUTLINED_FUNCTION_8_5();
  v63(v64);

  OUTLINED_FUNCTION_36();
  v66 = *(v65 + 2080);

  v67 = OUTLINED_FUNCTION_8_5();
  v66(v67);

  OUTLINED_FUNCTION_36();
  v69 = (v68 + 2104);
  v70 = *(v68 + 2104);

  v71 = OUTLINED_FUNCTION_10_7();
  v70(v71);

  v72 = *(v2 + 136);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v73 = *(*v72 + 680);
  v74 = v69;
  v73(v69);

  __src[0] = 0x3FF0000000000000uLL;
  __src[1] = 0uLL;
  OUTLINED_FUNCTION_1_46();
  v76 = *(v75 + 160);

  v76(__src);

  LOBYTE(v76) = sub_1E39DFFC0();
  sub_1E374E9C4();
  if (v76)
  {
    v77 = 0x4051800000000000;
  }

  else
  {
    v77 = 0x404E000000000000;
  }

  *&v216[0] = v77;
  BYTE8(v216[0]) = 0;
  v250 = 78.0;
  LOBYTE(v251) = 0;
  v78 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v239 = v245;
  LOBYTE(v240) = v246;
  sub_1E3C3DE00(v78);
  *&v233 = v236;
  BYTE8(v233) = BYTE8(v236);
  sub_1E3C3DE00(v78);
  *&v227 = v230;
  BYTE8(v227) = BYTE8(v230);
  sub_1E3C3DE00(v78);
  *&v221 = v224;
  BYTE8(v221) = BYTE8(v224);
  sub_1E3C2FCB8(v216, __src);
  memcpy(v216, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v79 + 1600))(v216, 6, v80 & 1, v78);

  v81 = sub_1E374E9C4();
  (*(*v81 + 1808))(1);

  OUTLINED_FUNCTION_12_13();
  v82.n128_u64[0] = 1.0;
  v250 = j__OUTLINED_FUNCTION_7_78(v82);
  v251 = v83;
  v252 = v84;
  v253 = v85;
  v254 = 0;
  (*(*v81 + 1856))(&v250);

  OUTLINED_FUNCTION_12_13();
  sub_1E3E6097C();
  OUTLINED_FUNCTION_7_16();
  v86 = *(*v81 + 1832);
  v87 = v78;
  v86(v78);

  OUTLINED_FUNCTION_12_13();
  sub_1E39537A8();
  v245 = v88;
  v246 = v89;
  v247 = v90;
  v248 = v91;
  v249 = 0;
  (*(*v81 + 560))(&v245);

  OUTLINED_FUNCTION_12_13();
  sub_1E39DFFC0();
  sub_1E39537A8();
  *&v216[0] = v92;
  *(&v216[0] + 1) = v93;
  *&v216[1] = v94;
  *(&v216[1] + 1) = v95;
  LOBYTE(v216[2]) = 0;
  sub_1E39537A8();
  v239 = v96;
  v240 = v97;
  v241 = v98;
  v242 = v99;
  v243 = 0;
  type metadata accessor for UIEdgeInsets();
  v101 = v100;
  sub_1E3C2FC98();
  v233 = v236;
  v234 = v237;
  v235 = v238;
  sub_1E3C3DE00(v101);
  v227 = v230;
  v228 = v231;
  v229 = v232;
  sub_1E3C3DE00(v101);
  v221 = v224;
  v222 = v225;
  v223 = v226;
  sub_1E3C3DE00(v101);
  v216[15] = v218;
  v216[16] = v219;
  v217 = v220;
  sub_1E3C2FCB8(v216, __src);
  memcpy(v216, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v102 + 1600))(v216, 17, v103 & 1, v101);

  OUTLINED_FUNCTION_12_13();
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v104 = *(*v81 + 872);
  v105 = v101;
  v104(v101);

  if (sub_1E39DFFC0())
  {
    swift_beginAccess();
    v106 = *(v2 + 192);
    OUTLINED_FUNCTION_12_13();
    if (v106 == 2)
    {
      sub_1E418A500();
      OUTLINED_FUNCTION_8();
      (*(v107 + 440))();

      OUTLINED_FUNCTION_12_13();
      sub_1E3E5F90C();
      OUTLINED_FUNCTION_7_16();
      v108 = *(*v81 + 1976);
      v109 = v106;
      v108(v106);
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
  }

  sub_1E418A524();
  OUTLINED_FUNCTION_8();
  (*(v110 + 440))();

  OUTLINED_FUNCTION_36();
  v112 = *(v111 + 2000);

  v112(0);
LABEL_15:

  swift_beginAccess();
  if (*(v2 + 192) == 2)
  {
    v113 = xmmword_1E4296C50;
    v114 = xmmword_1E4298700;
  }

  else
  {
    if (*(v2 + 192))
    {
      memset(v216, 0, 24);
      *(&v216[1] + 1) = 0x4028000000000000;
      goto LABEL_23;
    }

    if (sub_1E39DFFC0())
    {
      v113 = xmmword_1E4296D00;
      v114 = xmmword_1E4298730;
    }

    else
    {
      v113 = xmmword_1E4298710;
      v114 = xmmword_1E4298720;
    }
  }

  v216[0] = v113;
  v216[1] = v114;
LABEL_23:
  LOBYTE(v216[2]) = 0;
  OUTLINED_FUNCTION_8();
  v116 = *(v115 + 160);

  v116(v216);

  sub_1E374ED84();
  OUTLINED_FUNCTION_2_1();
  (*(v117 + 312))(0x4043000000000000, 0);

  OUTLINED_FUNCTION_8();
  v119 = *(v118 + 208);

  v119(0x4043000000000000, 0);

  __asm { FMOV            V0.2D, #19.0 }

  __src[0] = _Q0;
  __src[1] = _Q0;
  OUTLINED_FUNCTION_1_46();
  v126 = (v125 + 560);
  v127 = *(v125 + 560);

  v127(__src);

  v128 = *(v2 + 176);

  sub_1E3E604E4();
  OUTLINED_FUNCTION_7_16();
  v129 = *(*v128 + 752);
  v130 = v126;
  v129(v126);

  sub_1E374EE00();
  OUTLINED_FUNCTION_2_1();
  (*(v131 + 1728))(v132);
  OUTLINED_FUNCTION_11_5();

  v133 = OUTLINED_FUNCTION_9_17();
  v134(v133);

  OUTLINED_FUNCTION_36();
  v136 = *(v135 + 1728);

  v136(v137);
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_13();
  v138 = OUTLINED_FUNCTION_9_17();
  v139(v138);

  OUTLINED_FUNCTION_36();
  v141 = *(v140 + 1728);

  v141(v142);
  OUTLINED_FUNCTION_11_5();

  v143 = OUTLINED_FUNCTION_9_17();
  v144(v143);

  OUTLINED_FUNCTION_36();
  v146 = *(v145 + 1728);

  v146(v147);
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_13();
  v148 = OUTLINED_FUNCTION_9_17();
  v149(v148);

  OUTLINED_FUNCTION_36();
  v151 = (v150 + 1728);
  v152 = *(v150 + 1728);

  v152(v153);
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_13();
  (*(v154 + 1712))(1);

  v155.n128_u64[0] = 7.0;
  *&__src[0] = j__OUTLINED_FUNCTION_7_78(v155);
  *(&__src[0] + 1) = v156;
  *&__src[1] = v157;
  *(&__src[1] + 1) = v158;
  OUTLINED_FUNCTION_1_46();
  (*(v159 + 160))(__src);

  v160 = sub_1E374EC34();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v161 = *(*v160 + 680);
  v162 = v151;
  v161(v151);

  sub_1E374ED08();
  v163 = sub_1E391D8AC();
  OUTLINED_FUNCTION_8();
  (*(v164 + 208))(v165);

  v166 = v163[1];
  OUTLINED_FUNCTION_8();
  v168 = *(v167 + 312);

  v168(v166, 0);

  OUTLINED_FUNCTION_36();
  v170 = (v169 + 656);
  v171 = *(v169 + 656);

  v171(1);

  v172 = *(v2 + 168);

  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v173 = *(*v172 + 680);
  v174 = v170;
  v173(v170);

  v175 = *(v2 + 168);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v176 = *(*v175 + 872);
  v177 = v170;
  v176(v170);

  v178 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v178;
  OUTLINED_FUNCTION_1_46();
  v180 = *(v179 + 160);

  v180(__src);

  sub_1E374EBCC();
  OUTLINED_FUNCTION_2_1();
  (*(v181 + 1696))(17);

  OUTLINED_FUNCTION_36();
  v183 = *(v182 + 2056);

  v184 = OUTLINED_FUNCTION_8_5();
  v183(v184);

  OUTLINED_FUNCTION_36();
  v186 = *(v185 + 2080);

  v187 = OUTLINED_FUNCTION_8_5();
  v186(v187);

  OUTLINED_FUNCTION_36();
  v189 = (v188 + 2104);
  v190 = *(v188 + 2104);

  v191 = OUTLINED_FUNCTION_10_7();
  v190(v191);

  v192 = *(v2 + 144);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v193 = *(*v192 + 680);
  v194 = v189;
  v193(v189);

  __src[0] = 0x3FF0000000000000uLL;
  __src[1] = 0uLL;
  OUTLINED_FUNCTION_1_46();
  v196 = *(v195 + 160);

  v196(__src);

  sub_1E3C2CC44();
  if (v254)
  {
    v197 = 0.0;
  }

  else
  {
    v197 = v251;
  }

  v198 = sub_1E374EC9C();
  (*(*v198 + 176))(v216);

  v199 = *(v216 + 1);
  if (v216[2])
  {
    v199 = 0.0;
  }

  *&__src[0] = 0x4020000000000000;
  *(__src + 1) = v197 - v199;
  *&__src[1] = v197 - v199;
  *(&__src[1] + 1) = v197 - v199;
  OUTLINED_FUNCTION_1_46();
  v201 = *(v200 + 160);

  v201(__src);

  objc_opt_self();
  OUTLINED_FUNCTION_11_5();

  v202 = [v201 whiteColor];
  v203 = [v202 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v204 + 752))(v203);

  v205 = sub_1E374EBCC();
  sub_1E3C37CBC(v205, 4);

  v206 = sub_1E374EA2C();
  sub_1E3C37CBC(v206, 5);

  v207 = sub_1E374EA94();
  sub_1E3C37CBC(v207, 23);

  v208 = sub_1E374EAFC();
  sub_1E3C37CBC(v208, 15);

  v209 = sub_1E374EB64();
  sub_1E3C37CBC(v209, 9);

  v210 = sub_1E374EC9C();
  sub_1E3C37CBC(v210, 96);

  v211 = sub_1E374E9C4();
  sub_1E3C37CBC(v211, 39);

  v212 = sub_1E374EE00();
  sub_1E3C37CBC(v212, 233);

  v213 = sub_1E374EC34();
  sub_1E3C37CBC(v213, 31);

  v214 = sub_1E374ED08();
  sub_1E3C37CBC(v214, 67);

  return v2;
}