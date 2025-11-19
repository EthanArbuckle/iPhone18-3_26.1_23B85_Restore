uint64_t sub_2722C2A24(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *a3;
  v5 = a3[1];
  v6 = __OFSUB__(v5, *a3);
  v7 = v5 - *a3;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __OFADD__(v4, v7);
  v8 = v4 + v7;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8 - v4;
  if (v8 < v4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result + 4 * v4;
  if (result)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a4(v11, v9);
}

unint64_t sub_2722C2A80(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2722C2B50(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_272241E04(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2722C2A80(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2722C2C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2722C2C58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = a1;
  v8 = *(*(*(v6 + 8) + 8) + 8);
  v9 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_2722BB104(sub_2722C30D4, v13, v4, AssociatedTypeWitness, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v11);
  *a2 = result;
  return result;
}

uint64_t sub_2722C3070()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722C30D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  v8 = *(*(v6 + 8) + 8);
  v9 = sub_272377E3C();
  v11 = v10;
  v12 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v11, AssociatedTypeWitness);
  return v9(&v15, 0);
}

char *sub_2722C31E4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_2722C0DC0(*a1, **(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2722C322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_272376BDC();
  v11 = result;
  if (result)
  {
    result = sub_272376BFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_272376BEC();
  result = sub_2722BCCC4(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_2722C32CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722C3304()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    result = OS_os_log.info(_:_:)("stop signalled", 14, 2, MEMORY[0x277D84F90]);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 1;
  }

  return result;
}

uint64_t sub_2722C33AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722C33E4()
{
  v1 = *(v0 + 16);
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x3A8))();
  *(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) = 1;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 0;
  return result;
}

void *sub_2722C3504@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 4 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

uint64_t sub_2722C3674()
{
  sub_2722C4C1C();
  result = sub_27237800C();
  qword_280893AD8 = result;
  return result;
}

uint64_t sub_2722C36DC()
{
  sub_2722C4C1C();
  result = sub_27237800C();
  qword_280893AE0 = result;
  return result;
}

uint64_t sub_2722C3810(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_27237728C();
  sub_2721F408C(v7, a2);
  sub_2721F08DC(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_27237729C();
}

uint64_t sub_2722C390C()
{
  v0 = sub_272377FFC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2723771FC();
  sub_2721F408C(v2, qword_28088DFF8);
  sub_2721F08DC(v2, qword_28088DFF8);
  sub_272377FEC();
  return sub_2723771EC();
}

uint64_t sub_2722C39D0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_2721F08DC(v4, a3);
}

uint64_t sub_2722C3A68@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_2721F08DC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static VALog.event(_:_:)(uint64_t **a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2723771CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - v15);
  v17 = &unk_28088D000;
  if (!a5)
  {
    goto LABEL_8;
  }

  if (qword_28088DFF0 != -1)
  {
    swift_once();
  }

  v18 = sub_2723771FC();
  sub_2721F08DC(v18, qword_28088DFF8);

  sub_2723771BC();
  v14 = sub_2723771DC();
  v19 = sub_272377F4C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = v9;
  if (a3)
  {
    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (a1 >> 16 <= 0x10)
      {

        a1 = &v32;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a1)
  {
LABEL_19:
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2721FFD04(a4, a5, &v32);
    v27 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v14, v19, v27, a1, "%s", v25, 0xCu);
    sub_2722039C8(v26);
    MEMORY[0x2743C69C0](v26, -1, -1);
    MEMORY[0x2743C69C0](v25, -1, -1);

    return (*(v10 + 8))(v16, v31);
  }

  __break(1u);
LABEL_8:
  if (v17[510] != -1)
  {
    swift_once();
  }

  v21 = sub_2723771FC();
  sub_2721F08DC(v21, qword_28088DFF8);
  sub_2723771BC();
  v16 = sub_2723771DC();
  v22 = sub_272377F4C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
LABEL_14:

      v23 = *(v10 + 8);
      v24 = v16;
      return v23(v24, v9);
    }

    goto LABEL_24;
  }

  if (a1 >> 32)
  {
    goto LABEL_29;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v33;
LABEL_24:
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_2723771AC();
      _os_signpost_emit_with_name_impl(&dword_2721E4000, v16, v22, v29, a1, "", v28, 2u);
      MEMORY[0x2743C69C0](v28, -1, -1);
LABEL_25:

      v23 = *(v10 + 8);
      v24 = v14;
      return v23(v24, v9);
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static VALog.begin(_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a4;
  v49 = a2;
  v50 = a3;
  v9 = sub_2723771FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v47 = sub_2723771CC();
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  if (qword_28088DFF0 != -1)
  {
    swift_once();
  }

  v23 = sub_2721F08DC(v9, qword_28088DFF8);
  sub_2723771DC();
  sub_27237719C();
  v48 = a1;
  if (a5)
  {
    (*(v10 + 16))(v16, v23, v9);

    v24 = sub_2723771DC();
    v43 = sub_272377F3C();
    result = sub_272377FDC();
    if ((result & 1) == 0)
    {

LABEL_25:
      v34 = v47;
      (*(v17 + 16))(v46, v22, v47);
      v35 = sub_27237723C();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v38 = sub_27237722C();
      (*(v17 + 8))(v22, v34);
      (*(v10 + 32))(a6, v16, v9);
      result = type metadata accessor for VASignpostInterval();
      v39 = a6 + *(result + 20);
      v40 = v49;
      *v39 = v48;
      *(v39 + 8) = v40;
      *(v39 + 16) = v50;
      *(a6 + *(result + 24)) = v38;
      return result;
    }

    v45 = a6;
    if (v50)
    {
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (a1 >> 16 <= 0x10)
        {

          v42 = &v51;
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else
    {

      if (a1)
      {
        v42 = a1;
LABEL_17:
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v51 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_2721FFD04(v44, a5, &v51);
        v31 = sub_2723771AC();
        _os_signpost_emit_with_name_impl(&dword_2721E4000, v24, v43, v31, v42, "%s", v29, 0xCu);
        sub_2722039C8(v30);
        MEMORY[0x2743C69C0](v30, -1, -1);
        MEMORY[0x2743C69C0](v29, -1, -1);

LABEL_24:
        a6 = v45;
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45 = a6;
  (*(v10 + 16))(v14, v23, v9);
  v26 = sub_2723771DC();
  v27 = sub_272377F3C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
LABEL_23:

    v16 = v14;
    goto LABEL_24;
  }

  if ((v50 & 1) == 0)
  {
    if (!a1)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v28 = a1;
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = &v52;
LABEL_22:
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v26, v27, v33, v28, "", v32, 2u);
    MEMORY[0x2743C69C0](v32, -1, -1);
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
  return result;
}

id VALog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VALog.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VALog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall VASignpostInterval.end(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = sub_27237720C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v42[-v9];
  v46 = sub_2723771CC();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v46);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v42[-v16];
  if (object)
  {
    v44 = countAndFlagsBits;
    v18 = type metadata accessor for VASignpostInterval();
    v19 = v1 + *(v18 + 20);
    v20 = *v19;
    v21 = *(v19 + 16);
    v22 = *(v1 + *(v18 + 24));

    v23 = sub_2723771DC();
    sub_27237721C();
    v43 = sub_272377F2C();
    if ((sub_272377FDC() & 1) == 0)
    {

LABEL_19:
      (*(v11 + 8))(v17, v46);
      return;
    }

    if (v21)
    {
      if (!(v20 >> 32))
      {
        v24 = v45;
        if ((v20 & 0xFFFFF800) == 0xD800)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v20 >> 16 <= 0x10)
        {

          v20 = &v47;
          goto LABEL_15;
        }

        goto LABEL_32;
      }
    }

    else
    {

      if (v20)
      {
        v24 = v45;
LABEL_15:

        sub_27237724C();

        if ((*(v24 + 88))(v10, v4) == *MEMORY[0x277D85B00])
        {
          v33 = 0;
          v34 = 0;
          v35 = "[Error] Interval already ended";
        }

        else
        {
          (*(v24 + 8))(v10, v4);
          v35 = "%s";
          v34 = 2;
          v33 = 1;
        }

        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v47 = v37;
        *v36 = v34;
        *(v36 + 1) = v33;
        *(v36 + 2) = 2080;
        *(v36 + 4) = sub_2721FFD04(v44, object, &v47);
        v38 = sub_2723771AC();
        _os_signpost_emit_with_name_impl(&dword_2721E4000, v23, v43, v38, v20, v35, v36, 0xCu);
        sub_2722039C8(v37);
        MEMORY[0x2743C69C0](v37, -1, -1);
        MEMORY[0x2743C69C0](v36, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = type metadata accessor for VASignpostInterval();
  v26 = v1 + *(v25 + 20);
  v27 = *v26;
  v28 = *(v26 + 16);
  v29 = *(v1 + *(v25 + 24));
  v30 = sub_2723771DC();
  sub_27237721C();
  v31 = sub_272377F2C();
  if (sub_272377FDC())
  {
    if (v28)
    {
      if (v27 >> 32)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v32 = v45;
      if ((v27 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        return;
      }

      if (v27 >> 16 > 0x10)
      {
        goto LABEL_35;
      }

      v27 = &v48;
    }

    else
    {
      if (!v27)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v32 = v45;
    }

    sub_27237724C();

    if ((*(v32 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v8, v4);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v30, v31, v41, v27, v39, v40, 2u);
    MEMORY[0x2743C69C0](v40, -1, -1);
  }

  (*(v11 + 8))(v15, v46);
}

uint64_t type metadata accessor for VASignpostInterval()
{
  result = qword_28088E010;
  if (!qword_28088E010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722C4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2723771FC();
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

uint64_t sub_2722C4AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2723771FC();
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

uint64_t sub_2722C4B90()
{
  result = sub_2723771FC();
  if (v1 <= 0x3F)
  {
    result = sub_27237723C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2722C4C1C()
{
  result = qword_280882130;
  if (!qword_280882130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280882130);
  }

  return result;
}

Swift::Void __swiftcall DetectionInfo.reset()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = -1;
  *(v0 + 40) = -1;
  *(v0 + 52) = 0;
  *(v0 + 54) = 2;
}

void *sub_2722C4C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = 0;
  v7 = MEMORY[0x277D84F90];
  result[4] = a3;
  result[5] = v7;
  result[6] = a2;
  return result;
}

uint64_t sub_2722C4CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 32);
    v8 = *(v5 + 64);
    v35 = *(v5 + 48);
    *v36 = v8;
    *&v36[15] = *(v5 + 79);
    v34 = v7;
    v9 = *&v35;
    v10 = v8;
    v11 = *&v36[16];
    v12 = v36[20];
    v13 = v36[21];
    v15 = *(&v7 + 1);
    v14 = v7;
    if (v6 == 1)
    {
      result = sub_2722C5138(&v34, &v31);
    }

    else
    {
      v26 = v8;
      v27 = v36[20];
      sub_2722C5138(&v34, &v31);

      v16 = v6 - 2;
      for (i = 88; ; i += 56)
      {
        v18 = *(v5 + i);
        v19 = *(v5 + i + 16);
        v20 = *(v5 + i + 32);
        *&v33[15] = *(v5 + i + 47);
        v32 = v19;
        *v33 = v20;
        v31 = v18;
        v29 = v14;
        v30 = v15;
        sub_2722C5138(&v31, v28);

        MEMORY[0x2743C4AD0](95, 0xE100000000000000);
        v21 = v31;
        sub_2722C5138(&v31, v28);
        MEMORY[0x2743C4AD0](v21, *(&v21 + 1));
        sub_2722CAC5C(&v31);

        sub_2722CAC5C(&v31);
        v14 = v29;
        v15 = v30;
        v13 |= v33[21];
        v9 = v9 * *&v32;
        if (!v16)
        {
          break;
        }

        --v16;
      }

      v12 = v27;
      v10 = v26;
    }

    v22 = *(v2 + 40);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = v22 + 56 * v23;
      v25 = *(v24 + 16);
      LOBYTE(v24) = *(v24 + 30);
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v9;
      *(a1 + 24) = 0;
      *(a1 + 32) = v10;
      *(a1 + 40) = v25;
      *(a1 + 48) = v11;
      *(a1 + 52) = v12;
      *(a1 + 53) = v13 & 1;
      *(a1 + 54) = v24;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2722C4EB8()
{
  v1 = v0[3];
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v0[3] = v3;
    if (v3 >= v0[2])
    {
      v0[3] = 0;
      swift_beginAccess();
      v4 = v0[5];
      v0[5] = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2722C4F20@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v35 = *a1;
  v36 = v4;
  v37[0] = a1[2];
  *(v37 + 15) = *(a1 + 47);
  swift_beginAccess();
  v5 = v2[4];
  v6 = v2[5];
  v7 = *(v6 + 2);
  if (v7 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 16 * v7;
    result = v35;
    if (v35 != *(v8 + 32) || *(&v35 + 1) != *(v8 + 40))
    {
      result = sub_27237865C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v7)
    {
      v11 = *&v6[56 * v7 + 16];
    }

    else
    {
      v11 = 0;
    }

    v12 = __OFSUB__(v11, *&v37[0]);
    v13 = v11 - *&v37[0];
    if (!v12)
    {
      if (v2[6] < v13)
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      sub_2722C5138(&v35, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  v6 = sub_2722CA038(0, v7 + 1, 1, v6);
  v2[5] = v6;
LABEL_13:
  v16 = *(v6 + 2);
  v15 = *(v6 + 3);
  if (v16 >= v15 >> 1)
  {
    v6 = sub_2722CA038((v15 > 1), v16 + 1, 1, v6);
  }

  *(v6 + 2) = v16 + 1;
  v17 = &v6[56 * v16];
  v18 = v35;
  v19 = v36;
  v20 = v37[0];
  *(v17 + 79) = *(v37 + 15);
  *(v17 + 3) = v19;
  *(v17 + 4) = v20;
  *(v17 + 2) = v18;
  v2[5] = v6;
  result = swift_endAccess();
  v2[3] = 0;
LABEL_16:
  if (*(v6 + 2) == *(v2[4] + 16))
  {
    sub_2722C4CDC(v29);
    v27 = v29[0];
    v28 = v29[1];
    v21 = v30;
    v22 = v31;
    v23 = v32 | ((v33 | (v34 << 16)) << 32);
    v2[3] = 0;
    v24 = v2[5];
    v2[5] = MEMORY[0x277D84F90];

    v25 = v27;
    v26 = v28;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 54) = BYTE6(v23);
  *(a2 + 52) = WORD2(v23);
  return result;
}

uint64_t VAWordDecoder.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t VAWordDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2722C51D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_2722C522C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t sub_2722C5288()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_2722C52C0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_2722C5358()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t sub_2722C5390(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_2722C542C(void *a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = v2;
  v276 = sub_272376BCC();
  v267 = *(v276 - 8);
  v6 = *(v267 + 8);
  MEMORY[0x28223BE20](v276);
  v275 = &v247 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VARuntimeParameters();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v268 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_27237728C();
  v263 = *(v260 - 8);
  v11 = v263[8];
  v12 = MEMORY[0x28223BE20](v260);
  v252 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v269 = &v247 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v247 - v16;
  v18 = MEMORY[0x277D84F90];
  *(v2 + 128) = MEMORY[0x277D84F90];
  *(v2 + 120) = v18;
  v256 = (v2 + 128);
  *(v2 + 16) = a1;
  v19 = MEMORY[0x277D85000];
  v20 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v21 = a1;
  v22 = v20();
  if (!v22)
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD00000000000001BLL;
    v37[1] = 0x800000027238E410;
    swift_willThrow();

    sub_272216BD8(a2);
    v38 = *(v2 + 120);

    v39 = *(v2 + 128);

    type metadata accessor for VAResultGenerator();
    swift_deallocPartialClassInstance();
    return isUniquelyReferenced_nonNull_native;
  }

  v265 = a2;
  *(v2 + 24) = v22;
  v23 = *((*v19 & *v21) + 0xA0);
  v249 = v22;
  v24 = v23();
  v273 = v2;
  v250 = v21;
  if (v24)
  {

    v25 = v23();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
      goto LABEL_163;
    }

    v27 = v25;
    v28 = MEMORY[0x277D85000];
    v29 = (*((*MEMORY[0x277D85000] & *v25) + 0x190))();

    *(isUniquelyReferenced_nonNull_native + 96) = v29;
    v30 = v23();
    if (v30)
    {
      v31 = v30;
      v32 = (*((*v28 & *v30) + 0xB8))();

      *(isUniquelyReferenced_nonNull_native + 40) = v32;
      v33 = v23();
      if (v33)
      {
        v34 = v33;
        v35 = (*((*v28 & *v33) + 0x198))();

        *(isUniquelyReferenced_nonNull_native + 136) = v35;
        v36 = *(isUniquelyReferenced_nonNull_native + 96);
        if (v36 < 0)
        {
          goto LABEL_142;
        }

LABEL_25:
        if (v36)
        {
          v64 = sub_272377B5C();
          *(v64 + 16) = v36;
          bzero((v64 + 32), 4 * v36);
          v65 = *(isUniquelyReferenced_nonNull_native + 96);
          *(isUniquelyReferenced_nonNull_native + 144) = v64;
          if (v65 < 0)
          {
            goto LABEL_154;
          }

          if (v65)
          {
            v66 = sub_272377B5C();
            *(v66 + 16) = v65;
            bzero((v66 + 32), 4 * v65);
            v67 = *(isUniquelyReferenced_nonNull_native + 96);
            *(isUniquelyReferenced_nonNull_native + 152) = v66;
            *(isUniquelyReferenced_nonNull_native + 48) = v26;
            if (v67 < 0)
            {
              goto LABEL_155;
            }

            if (v67)
            {
              v68 = sub_272377B5C();
              *(v68 + 16) = v67;
              bzero((v68 + 32), 4 * v67);
              v69 = *(isUniquelyReferenced_nonNull_native + 96);
              *(isUniquelyReferenced_nonNull_native + 56) = v68;
              if (v69 < 0)
              {
                goto LABEL_158;
              }

              if (v69)
              {
                v70 = sub_272377B5C();
                *(v70 + 16) = v69;
                bzero((v70 + 32), 4 * v69);
                v71 = *(isUniquelyReferenced_nonNull_native + 96);
                goto LABEL_36;
              }

              goto LABEL_143;
            }

LABEL_35:
            v71 = 0;
            *(isUniquelyReferenced_nonNull_native + 56) = v26;
            v70 = v26;
            goto LABEL_36;
          }
        }

        else
        {
          *(isUniquelyReferenced_nonNull_native + 144) = v26;
        }

        *(isUniquelyReferenced_nonNull_native + 152) = v26;
        *(isUniquelyReferenced_nonNull_native + 48) = v26;
        goto LABEL_35;
      }
    }

    else
    {
LABEL_164:
      __break(1u);
    }

    __break(1u);
LABEL_166:
    sub_2723786BC();
    __break(1u);
    goto LABEL_167;
  }

  v40 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  *(v2 + 96) = v40;
  *(v2 + 136) = v40;
  v274 = VARuntimeParameters.keywordsNoThresholds.getter();
  *(v2 + 40) = sub_2722CAA80(MEMORY[0x277D84F90]);
  v41 = (v2 + 40);
  v42 = *(v2 + 96);
  v26 = MEMORY[0x277D84F90];
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_159;
  }

  if (v42)
  {
    v43 = 0;
    v44 = v274 + 5;
    *&v277 = v17;
    v272 = v42;
    do
    {
      if (v43 >= v274[2])
      {
        goto LABEL_146;
      }

      v47 = *(v44 - 1);
      v48 = *v44;
      swift_beginAccess();

      v49 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v282 = *v41;
      v50 = v282;
      *v41 = 0x8000000000000000;
      v52 = sub_272200404(v43);
      v53 = v50[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v56 = v51;
      if (v50[3] >= v55)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_272201C10();
        }
      }

      else
      {
        sub_2722016EC(v55, isUniquelyReferenced_nonNull_native);
        v57 = sub_272200404(v43);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_166;
        }

        v52 = v57;
      }

      isUniquelyReferenced_nonNull_native = v273;
      v59 = v282;
      if (v56)
      {
        v45 = (v282[7] + 16 * v52);
        v46 = v45[1];
        *v45 = v47;
        v45[1] = v48;
      }

      else
      {
        v282[(v52 >> 6) + 8] |= 1 << v52;
        *(v59[6] + 8 * v52) = v43;
        v60 = (v59[7] + 16 * v52);
        *v60 = v47;
        v60[1] = v48;
        v61 = v59[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_148;
        }

        v59[2] = v63;
      }

      ++v43;
      *v41 = v59;
      swift_endAccess();
      v44 += 2;
      v17 = v277;
    }

    while (v272 != v43);

    v26 = MEMORY[0x277D84F90];
    v36 = *(isUniquelyReferenced_nonNull_native + 96);
    if (v36 < 0)
    {
      goto LABEL_142;
    }

    goto LABEL_25;
  }

  v36 = *(v2 + 96);
  if ((v36 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  v71 = 0;
  v70 = MEMORY[0x277D84F90];
LABEL_36:
  *(isUniquelyReferenced_nonNull_native + 80) = v70;
  v284[0] = 0;
  v284[1] = 0xE000000000000000;
  v285 = 0;
  v287 = 0;
  v288 = 0;
  v286 = 0;
  v289 = -1082130432;
  v290 = 0;
  v291 = 2;
  v72 = sub_2722CAB94(v284, v71);
  sub_2722CAC5C(v284);
  *(isUniquelyReferenced_nonNull_native + 88) = v72;
  v271 = (isUniquelyReferenced_nonNull_native + 80);
  *(isUniquelyReferenced_nonNull_native + 112) = v26;
  v73 = VARuntimeParameters.keywordsToThresholds.getter();
  v74 = v270;
  v75 = sub_2722C6F68(v73);
  if (!v74)
  {
    v76 = v75;

    if (*(v76 + 16))
    {
      sub_2721F065C(&qword_280882940, qword_272382B70);
      v77 = sub_2723783EC();
    }

    else
    {
      v77 = MEMORY[0x277D84F98];
    }

    v283 = v77;

    sub_2722CA180(v78, 1, &v283);

    v79 = v283;
    *(isUniquelyReferenced_nonNull_native + 64) = 0;
    *(isUniquelyReferenced_nonNull_native + 72) = v79;
    v80 = *(isUniquelyReferenced_nonNull_native + 24);
    v81 = *((*MEMORY[0x277D85000] & *v80) + 0x258);
    v82 = v80;
    v83 = v81();

    *(isUniquelyReferenced_nonNull_native + 32) = v83;
    v84 = sub_2722C389C();
    v85 = v263 + 2;
    v86 = v263[2];
    v87 = v260;
    v86(v17, v84, v260);

    v88 = sub_27237725C();
    v89 = sub_272377E7C();

    v90 = os_log_type_enabled(v88, v89);
    v270 = 0;
    v251 = v85;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      v283 = v274;
      *v91 = 136315138;
      swift_beginAccess();
      v92 = *(isUniquelyReferenced_nonNull_native + 40);

      v93 = sub_27237773C();
      LODWORD(v272) = v89;
      v94 = v86;
      v95 = v84;
      v96 = v93;
      *&v277 = v17;
      v98 = v97;

      v99 = v96;
      v84 = v95;
      v86 = v94;
      v100 = sub_2721FFD04(v99, v98, &v283);

      *(v91 + 4) = v100;
      _os_log_impl(&dword_2721E4000, v88, v272, "Keywords Trained for: %s", v91, 0xCu);
      v101 = v274;
      sub_2722039C8(v274);
      MEMORY[0x2743C69C0](v101, -1, -1);
      MEMORY[0x2743C69C0](v91, -1, -1);

      v102 = v263[1];
      v103 = v277;
    }

    else
    {

      v102 = v263[1];
      v103 = v17;
    }

    v254 = v102;
    v102(v103, v87);
    v104 = v269;
    v247 = v86;
    v86(v269, v84, v87);
    v105 = v268;
    sub_272216374(v265, v268);
    v106 = sub_27237725C();
    v107 = sub_272377E7C();
    v108 = os_log_type_enabled(v106, v107);
    v248 = v84;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v283 = v110;
      *v109 = 136315138;
      VARuntimeParameters.keywordsNoThresholds.getter();
      v111 = MEMORY[0x2743C4C60]();
      v113 = v112;

      sub_272216BD8(v105);
      v114 = sub_2721FFD04(v111, v113, &v283);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_2721E4000, v106, v107, "Keywords Looking for: %s", v109, 0xCu);
      sub_2722039C8(v110);
      MEMORY[0x2743C69C0](v110, -1, -1);
      MEMORY[0x2743C69C0](v109, -1, -1);

      v115 = v269;
      v116 = v260;
    }

    else
    {

      sub_272216BD8(v105);
      v115 = v104;
      v116 = v87;
    }

    v254(v115, v116);
    v118 = MEMORY[0x277D85000];
    v119 = v270;
    v120 = *(isUniquelyReferenced_nonNull_native + 96);
    if ((v120 & 0x8000000000000000) != 0)
    {
      goto LABEL_156;
    }

    v121 = MEMORY[0x277D84F90];
    if (v120)
    {
      LODWORD(v117) = *(v265 + 8);
      v277 = v117;
      v122 = sub_272377B5C();
      *(v122 + 16) = v120;
      v123 = (v122 + 32);
      if (v120 > 7)
      {
        v124 = v120 & 0x7FFFFFFFFFFFFFF8;
        v123 += v120 & 0x7FFFFFFFFFFFFFF8;
        v125 = v277;
        v126 = vdupq_lane_s32(*&v277, 0);
        v127 = (v122 + 48);
        v128 = v120 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v127[-1] = v126;
          *v127 = v126;
          v127 += 2;
          v128 -= 8;
        }

        while (v128);
        if (v120 == v124)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v124 = 0;
        v125 = v277;
      }

      v129 = v120 - v124;
      do
      {
        *v123++ = v125;
        --v129;
      }

      while (v129);
    }

    else
    {
      v122 = MEMORY[0x277D84F90];
    }

LABEL_56:
    *(isUniquelyReferenced_nonNull_native + 104) = v122;
    v130 = VARuntimeParameters.keywordsToThresholds.getter();
    v131 = *(v130 + 64);
    v259 = v130 + 64;
    v132 = 1 << *(v130 + 32);
    if (v132 < 64)
    {
      v133 = ~(-1 << v132);
    }

    else
    {
      v133 = -1;
    }

    v134 = v133 & v131;
    swift_beginAccess();
    swift_beginAccess();
    v135 = 0;
    v136 = (v132 + 63) >> 6;
    v274 = (v267 + 8);
    v253 = v136;
    v255 = v130;
LABEL_60:
    if (v134)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v137 = v135 + 1;
      if (__OFADD__(v135, 1))
      {
        goto LABEL_145;
      }

      if (v137 >= v136)
      {
        break;
      }

      v134 = *(v259 + 8 * v137);
      ++v135;
      if (v134)
      {
        v135 = v137;
LABEL_65:
        v258 = (v134 - 1) & v134;
        v257 = v135;
        v138 = __clz(__rbit64(v134)) | (v135 << 6);
        v139 = *(v130 + 56);
        v140 = (*(v130 + 48) + 16 * v138);
        v141 = v140[1];
        v268 = *v140;
        v142 = *(v139 + 4 * v138);
        v143 = *(isUniquelyReferenced_nonNull_native + 40);
        v144 = *(v143 + 8);
        v262 = v143 + 64;
        v145 = 1 << v143[32];
        if (v145 < 64)
        {
          v146 = ~(-1 << v145);
        }

        else
        {
          v146 = -1;
        }

        v147 = v146 & v144;
        v261 = (v145 + 63) >> 6;
        v269 = v141;

        v148 = 0;
        v264 = v143;
        while (v147)
        {
LABEL_75:
          v272 = v147;
          v152 = __clz(__rbit64(v147)) | (v148 << 6);
          v153 = *(v143 + 7);
          v266 = *(*(v143 + 6) + 8 * v152);
          v154 = (v153 + 16 * v152);
          v156 = *v154;
          v155 = v154[1];
          v278 = v156;
          v279 = v155;
          v280 = 44;
          v281 = 0xE100000000000000;
          *&v277 = sub_272203AC4();
          v157 = sub_2723780BC();
          v158 = *(v157 + 16);
          if (v158)
          {
            v270 = v119;
            v280 = v121;
            sub_27220056C(0, v158, 0);
            v121 = v280;
            v267 = v157;
            v159 = (v157 + 40);
            do
            {
              v160 = *v159;
              v278 = *(v159 - 1);
              v279 = v160;

              v161 = v275;
              sub_272376B4C();
              v162 = sub_2723780EC();
              v164 = v163;
              (*v274)(v161, v276);

              v280 = v121;
              v166 = *(v121 + 16);
              v165 = *(v121 + 24);
              if (v166 >= v165 >> 1)
              {
                sub_27220056C((v165 > 1), v166 + 1, 1);
                v121 = v280;
              }

              *(v121 + 16) = v166 + 1;
              v167 = v121 + 16 * v166;
              *(v167 + 32) = v162;
              *(v167 + 40) = v164;
              v159 += 2;
              --v158;
            }

            while (v158);

            isUniquelyReferenced_nonNull_native = v273;
            v118 = MEMORY[0x277D85000];
            v119 = v270;
            v143 = v264;
          }

          else
          {
          }

          v147 = (v272 - 1) & v272;
          v278 = v268;
          v279 = v269;
          MEMORY[0x28223BE20](v149);
          *(&v247 - 2) = &v278;
          v150 = sub_2722160A8(sub_272204258, (&v247 - 4), v121);

          v121 = MEMORY[0x277D84F90];
          if (v150)
          {
            v267 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
            v209 = *(v267 + 2);
            v208 = *(v267 + 3);
            if (v209 >= v208 >> 1)
            {
              v267 = sub_2721FFBF8((v208 > 1), v209 + 1, 1, v267);
            }

            v210 = v267;
            *(v267 + 2) = v209 + 1;
            v211 = &v210[16 * v209];
            v212 = v269;
            *(v211 + 4) = v268;
            *(v211 + 5) = v212;
            v213 = v271;
            v214 = *v271;
            v215 = swift_isUniquelyReferenced_nonNull_native();
            *v213 = v214;
            if ((v215 & 1) == 0)
            {
              v214 = sub_2722002AC(v214);
            }

            v216 = v266;
            if ((v266 & 0x8000000000000000) != 0)
            {
              goto LABEL_160;
            }

            if (v266 >= *(v214 + 2))
            {
              goto LABEL_161;
            }

            *&v214[4 * v266 + 32] = 1065353216;
            *(isUniquelyReferenced_nonNull_native + 80) = v214;
            v217 = *(isUniquelyReferenced_nonNull_native + 104);
            v218 = swift_isUniquelyReferenced_nonNull_native();
            *(isUniquelyReferenced_nonNull_native + 104) = v217;
            if ((v218 & 1) == 0)
            {
              v217 = sub_2722002AC(v217);
            }

            if (v216 < *(v217 + 2))
            {
              *&v217[4 * v216 + 32] = v142;
              *(isUniquelyReferenced_nonNull_native + 104) = v217;

              goto LABEL_130;
            }

            goto LABEL_162;
          }
        }

        while (1)
        {
          v151 = v148 + 1;
          if (__OFADD__(v148, 1))
          {
            break;
          }

          if (v151 >= v261)
          {

            v168 = v268;
            v169 = v269;
            if (sub_27237791C() <= 0)
            {

              v267 = v121;
              goto LABEL_130;
            }

            v270 = v119;

            *&v277 = v168;
            v267 = v121;
LABEL_84:
            v170 = *(isUniquelyReferenced_nonNull_native + 40);
            v171 = 1 << *(v170 + 32);
            if (v171 < 64)
            {
              v172 = ~(-1 << v171);
            }

            else
            {
              v172 = -1;
            }

            isUniquelyReferenced_nonNull_native = v172 & *(v170 + 64);

            swift_beginAccess();
            LODWORD(v272) = 0;
            v173 = 0;
            v174 = ((v171 + 63) >> 6);
            while (1)
            {
              while (1)
              {
                v175 = v173;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  while (1)
                  {
                    v173 = v175 + 1;
                    if (__OFADD__(v175, 1))
                    {
                      break;
                    }

                    if (v173 >= v174)
                    {

                      if (v272)
                      {
                        v207 = sub_27237791C();
                        isUniquelyReferenced_nonNull_native = v273;
                        if (v207 > 0)
                        {
                          goto LABEL_84;
                        }

                        v118 = MEMORY[0x277D85000];
                        v119 = v270;
                        v121 = MEMORY[0x277D84F90];
LABEL_130:
                        v219 = *(isUniquelyReferenced_nonNull_native + 24);
                        v220 = *((*v118 & *v219) + 0x168);
                        v221 = v219;
                        v222 = v220();

                        if (!__OFADD__(v222, 100))
                        {
                          type metadata accessor for VAWordDecoder();
                          v223 = swift_allocObject();
                          v223[2] = v222 + 100;
                          v223[3] = 0;
                          v223[4] = v267;
                          v223[5] = v121;
                          v223[6] = 10;
                          v224 = v256;
                          v225 = swift_beginAccess();
                          MEMORY[0x2743C4C30](v225);
                          if (*((*v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v226 = *((*v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            sub_272377B2C();
                          }

                          sub_272377B7C();
                          swift_endAccess();
                          v118 = MEMORY[0x277D85000];
                          v130 = v255;
                          v134 = v258;
                          v136 = v253;
                          v135 = v257;
                          goto LABEL_60;
                        }

LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        __break(1u);
LABEL_156:
                        __break(1u);
LABEL_157:
                        __break(1u);
LABEL_158:
                        __break(1u);
LABEL_159:
                        __break(1u);
LABEL_160:
                        __break(1u);
LABEL_161:
                        __break(1u);
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
                        goto LABEL_164;
                      }

                      v143 = v252;
                      v173 = v260;
                      v247(v252, v248, v260);
                      v147 = v269;

                      v174 = sub_27237725C();
                      v227 = sub_272377E8C();

                      if (os_log_type_enabled(v174, v227))
                      {
                        v228 = swift_slowAlloc();
                        v229 = swift_slowAlloc();
                        v278 = v229;
                        *v228 = 136315138;
                        isUniquelyReferenced_nonNull_native = v268;
                        *(v228 + 4) = sub_2721FFD04(v268, v147, &v278);
                        _os_log_impl(&dword_2721E4000, v174, v227, "Could not create keyword %s", v228, 0xCu);
                        sub_2722039C8(v229);
                        MEMORY[0x2743C69C0](v229, -1, -1);
                        MEMORY[0x2743C69C0](v228, -1, -1);

                        v254(v143, v173);
                        v230 = v265;
                        v231 = v250;
                        v232 = v249;
LABEL_139:
                        v278 = 0;
                        v279 = 0xE000000000000000;
                        sub_27237820C();

                        v278 = 0xD000000000000019;
                        v279 = 0x800000027238E450;
                        MEMORY[0x2743C4AD0](isUniquelyReferenced_nonNull_native, v147);

                        v233 = v278;
                        v234 = v279;
                        sub_2722032B4();
                        swift_allocError();
                        *v235 = v233;
                        v235[1] = v234;
                        swift_willThrow();

                        sub_272216BD8(v230);

                        return isUniquelyReferenced_nonNull_native;
                      }

LABEL_138:

                      v254(v143, v173);
                      v230 = v265;
                      v231 = v250;
                      v232 = v249;
                      isUniquelyReferenced_nonNull_native = v268;
                      goto LABEL_139;
                    }

                    isUniquelyReferenced_nonNull_native = *(v170 + 64 + 8 * v173);
                    ++v175;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_92;
                    }
                  }

                  __break(1u);
                  goto LABEL_138;
                }

LABEL_92:
                v176 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
                isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
                v177 = v176 | (v173 << 6);
                v178 = *(*(v170 + 48) + 8 * v177);
                v179 = (*(v170 + 56) + 16 * v177);
                v147 = *v179;
                v143 = v179[1];

                if (sub_2723779FC())
                {
                  break;
                }
              }

              v272 = *v271;
              v180 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v272;
              *v271 = v272;
              if (v180)
              {
                if ((v178 & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v181 = sub_2722002AC(v181);
                if ((v178 & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              if (v178 >= *(v181 + 2))
              {
                goto LABEL_150;
              }

              *&v181[4 * v178 + 32] = 1065353216;
              v182 = v273;
              *(v273 + 80) = v181;
              v272 = *(v182 + 104);
              v183 = swift_isUniquelyReferenced_nonNull_native();
              v184 = v272;
              *(v273 + 104) = v272;
              if ((v183 & 1) == 0)
              {
                v184 = sub_2722002AC(v184);
              }

              if (v178 >= *(v184 + 2))
              {
                break;
              }

              *&v184[4 * v178 + 32] = v142;
              *(v273 + 104) = v184;
              sub_27237791C();
              v185 = v277;
              v186 = sub_27237794C();
              v187 = HIBYTE(v169) & 0xF;
              if ((v169 & 0x2000000000000000) == 0)
              {
                v187 = v185 & 0xFFFFFFFFFFFFLL;
              }

              if (4 * v187 < v186 >> 14)
              {
                goto LABEL_152;
              }

              *&v277 = sub_272377A5C();
              v272 = v188;
              v266 = v189;
              v191 = v190;
              v264 = v190;

              v192 = MEMORY[0x2743C4A20](v277, v272, v266, v191);
              v169 = v193;

              if (sub_2723779FC())
              {
                v194 = sub_27237794C();
                v195 = HIBYTE(v169) & 0xF;
                if ((v169 & 0x2000000000000000) == 0)
                {
                  v195 = v192 & 0xFFFFFFFFFFFFLL;
                }

                if (4 * v195 < v194 >> 14)
                {
                  goto LABEL_157;
                }

                *&v277 = sub_272377A5C();
                v272 = v196;
                v266 = v197;
                v199 = v198;

                *&v277 = MEMORY[0x2743C4A20](v277, v272, v266, v199);
                v169 = v200;
              }

              else
              {
                *&v277 = v192;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v267 = sub_2721FFBF8(0, *(v267 + 2) + 1, 1, v267);
              }

              v202 = *(v267 + 2);
              v201 = *(v267 + 3);
              v203 = v202 + 1;
              if (v202 >= v201 >> 1)
              {
                v272 = v202 + 1;
                v206 = sub_2721FFBF8((v201 > 1), v202 + 1, 1, v267);
                v203 = v272;
                v267 = v206;
              }

              v204 = v267;
              *(v267 + 2) = v203;
              v205 = &v204[16 * v202];
              *(v205 + 4) = v147;
              *(v205 + 5) = v143;
              LODWORD(v272) = 1;
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          v147 = *&v262[8 * v151];
          ++v148;
          if (v147)
          {
            v148 = v151;
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

    sub_272216BD8(v265);

    return isUniquelyReferenced_nonNull_native;
  }

LABEL_167:

  v237 = *(isUniquelyReferenced_nonNull_native + 40);

  v238 = *(isUniquelyReferenced_nonNull_native + 48);

  v239 = *(isUniquelyReferenced_nonNull_native + 56);

  v240 = *(isUniquelyReferenced_nonNull_native + 80);

  v241 = *(isUniquelyReferenced_nonNull_native + 88);

  v242 = *(isUniquelyReferenced_nonNull_native + 112);

  v243 = *(isUniquelyReferenced_nonNull_native + 120);

  v244 = *(isUniquelyReferenced_nonNull_native + 128);

  v245 = *(isUniquelyReferenced_nonNull_native + 144);

  v246 = *(isUniquelyReferenced_nonNull_native + 152);

  type metadata accessor for VAResultGenerator();
  swift_deallocPartialClassInstance();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2722C6F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2722CA918(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_27237816C();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_2722CA918((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = (v26 + 24 * v13);
    v15[4] = v25;
    v15[5] = v12;
    v15[6] = -100;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_2722CB07C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_2722CB07C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2722C719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*v7 + 608))();
  v15 = *(*v7 + 600);

  return v15(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_2722C7278(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  LOBYTE(v282) = a7;
  LOBYTE(v283) = a6;
  LOBYTE(v284) = a5;
  v11 = v7[8];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_317;
  }

  v10 = v7;
  v8 = a1;
  v280 = a3;
  v281 = a4;
  v7[8] = v13;
  v290 = (*v7 + 536);
  v291 = *v290;
  v14 = *((*v290)() + 16);

  v292 = *(*v7 + 552);
  v7 = (v292)(&v298);
  v16 = v15;
  v9 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2721FF8B4(0, *(v9 + 16), 0, v9);
  }

  *v16 = v9;

  vDSP_vclr((v9 + 32), 1, v14);
  (v7)(&v298, 0);

  v19 = *(v10 + 96);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_318;
  }

  if (v19)
  {
    if (v19 > *(v8 + 16))
    {
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      result = sub_2723786BC();
      __break(1u);
      return result;
    }

    v20 = *(*v10 + 344);
    v21 = 8;
    do
    {
      v22 = *(v8 + 4 * v21);
      v7 = v10;
      v23 = v20(v18);
      if ((v21 - 8) >= *(v23 + 16))
      {
        goto LABEL_272;
      }

      v24 = *(v23 + 4 * v21);

      v25 = *(v10 + 56);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 56) = v25;
      if ((v18 & 1) == 0)
      {
        v18 = sub_2722002AC(v25);
        v25 = v18;
      }

      if ((v21 - 8) >= *(v25 + 16))
      {
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }

      *(v25 + 4 * v21) = (v22 * v24) + *(v25 + 4 * v21);
      *(v10 + 56) = v25;
      ++v21;
      --v19;
    }

    while (v19);
  }

  v9 = v10 + 48;
  v7 = *(v10 + 48);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 48) = v7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_319;
  }

  while (2)
  {
    v28 = v7[2];
    v27 = v7[3];
    if (v28 >= v27 >> 1)
    {
      v7 = sub_272241E04((v27 > 1), v28 + 1, 1, v7);
    }

    v7[2] = v28 + 1;
    v7[v28 + 4] = v8;
    *(v10 + 48) = v7;
    v29 = *(v10 + 64);
    v7 = *(v10 + 24);
    v289 = v7;
    v30 = *((*MEMORY[0x277D85000] & *v7) + 0x168);
    v297 = v10;
    if (v30() >= v29)
    {
      v40 = *(v10 + 96);
      if (v40 < 0)
      {
        goto LABEL_326;
      }

      if (v40)
      {
        v41 = 8;
        while (1)
        {
          v42 = *(v10 + 56);
          if ((v41 - 8) >= *(v42 + 16))
          {
            break;
          }

          v43 = *(v42 + 4 * v41);
          v44 = *(v10 + 64);
          v7 = (v292)(&v298);
          v8 = v45;
          v46 = *v45;
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v46;
          if ((v47 & 1) == 0)
          {
            v46 = sub_2722002AC(v46);
            *v8 = v46;
          }

          if ((v41 - 8) >= *(v46 + 2))
          {
            goto LABEL_278;
          }

          *&v46[4 * v41] = v43 / v44;
          (v7)(&v298, 0);
          ++v41;
          if (!--v40)
          {
            goto LABEL_40;
          }
        }

LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
        goto LABEL_279;
      }
    }

    else
    {
      if (!*(*v9 + 16))
      {
        goto LABEL_325;
      }

      v31 = *(*v9 + 32);

      sub_2722CAD58(0, 1, sub_272241E04, sub_2722C2A80);
      v10 = *(v10 + 96);
      if (v10 < 0)
      {
        goto LABEL_327;
      }

      if (v10)
      {
        if (v10 > *(v31 + 16))
        {
          goto LABEL_332;
        }

        v32 = 8;
        while (1)
        {
          v33 = *(v31 + 4 * v32);
          v7 = v297;
          v34 = v297[7];
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v297[7] = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_2722002AC(v34);
          }

          if ((v32 - 8) >= *(v34 + 2))
          {
            break;
          }

          *&v34[4 * v32] = *&v34[4 * v32] - v33;
          v297[7] = v34;
          v36 = *&v34[4 * v32];
          v8 = v30();
          v7 = (v292)(&v298);
          v9 = v37;
          v38 = *v37;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          *v9 = v38;
          if ((v39 & 1) == 0)
          {
            v38 = sub_2722002AC(v38);
            *v9 = v38;
          }

          if ((v32 - 8) >= *(v38 + 2))
          {
            goto LABEL_280;
          }

          *&v38[4 * v32] = v36 / v8;
          (v7)(&v298, 0);
          ++v32;
          if (!--v10)
          {
            goto LABEL_39;
          }
        }

LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

LABEL_39:

      v10 = v297;
    }

LABEL_40:
    v292 = (*v10 + 560);
    v293 = *v292;
    v48 = *((*v292)() + 16);

    v49 = (*v10 + 576);
    v50 = *v49;
    v51 = (*v49)(&v298);
    v53 = v52;
    v8 = *v52;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v8;
    if ((v54 & 1) == 0)
    {
      v8 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    *v53 = v8;

    vDSP_vclr((v8 + 32), 1, v48);
    v51(&v298, 0);

    v56 = (*((*MEMORY[0x277D85000] & *v289) + 0x240))(v55);
    if (v56)
    {
      v8 = v290;
      v57 = (v291)();
      v58 = (v291)();
      v59 = sub_2722C9638(v58);

      if ((v59 & 0x100000000) != 0)
      {
        goto LABEL_333;
      }

      v60 = *(v57 + 16);
      v61 = v60 != 0;
      v62 = 0;
      if (v60)
      {
        while (*(v57 + 32 + 4 * v62) != *&v59)
        {
          v61 = v60 != ++v62;
          if (v60 == v62)
          {
            v62 = 0;
            break;
          }
        }
      }

      v63 = *(v10 + 96);
      if (v63 < 0)
      {
        goto LABEL_329;
      }

      if (v63)
      {
        v9 = 0;
        v10 = &v298;
        do
        {
          if (v61 && v62 == v9)
          {
            v7 = v297;
            v64 = (v291)(v56);
            if (v62 >= *(v64 + 16))
            {
              goto LABEL_297;
            }

            v65 = *(v64 + 4 * v62 + 32);

            v7 = (v50)(&v298);
            v8 = v66;
            v67 = *v66;
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *v8 = v67;
            if ((v68 & 1) == 0)
            {
              v67 = sub_2722002AC(v67);
              *v8 = v67;
            }

            if (v62 >= *(v67 + 2))
            {
              goto LABEL_299;
            }

            *&v67[4 * v62 + 32] = v65;
          }

          else
          {
            v7 = (v50)(&v298);
            v8 = v69;
            v70 = *v69;
            v71 = swift_isUniquelyReferenced_nonNull_native();
            *v8 = v70;
            if ((v71 & 1) == 0)
            {
              v70 = sub_2722002AC(v70);
              *v8 = v70;
            }

            if (v9 >= *(v70 + 2))
            {
              goto LABEL_298;
            }

            *&v70[4 * v9 + 32] = 0;
          }

          v56 = (v7)(&v298, 0);
          ++v9;
        }

        while (v63 != v9);
      }
    }

    else
    {
      v72 = *(v10 + 96);
      if (v72 < 0)
      {
        goto LABEL_328;
      }

      if (v72)
      {
        v73 = 8;
        do
        {
          v9 = v73 - 8;
          v7 = v297;
          v74 = (v291)();
          if ((v73 - 8) >= *(v74 + 16))
          {
            goto LABEL_281;
          }

          v75 = *(v74 + 4 * v73);

          v7 = (v50)(&v298);
          v8 = v76;
          v77 = *v76;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v77;
          if ((v78 & 1) == 0)
          {
            v77 = sub_2722002AC(v77);
            *v8 = v77;
          }

          if (v9 >= *(v77 + 2))
          {
            goto LABEL_282;
          }

          *&v77[4 * v73] = v75;
          v56 = (v7)(&v298, 0);
          ++v73;
        }

        while (--v72);
      }
    }

    v79 = MEMORY[0x277D85000];
    if (v284 == 2)
    {
      LOBYTE(v284) = (*((*MEMORY[0x277D85000] & *v289) + 0xD8))(v56);
    }

    v81 = v280;
    v80 = v281;
    if (v283 == 2)
    {
      LOBYTE(v283) = (*((*v79 & *v289) + 0xF0))();
    }

    v10 = v297;
    if (v282 == 2)
    {
      LOBYTE(v282) = (*((*v79 & *v289) + 0x108))();
    }

    v8 = v297[12];
    if (v8 < 0)
    {
      __break(1u);
LABEL_321:
      __break(1u);
      goto LABEL_322;
    }

    v49 = &v303;
    if (!v8)
    {
      v279 = MEMORY[0x277D84F90];
      goto LABEL_199;
    }

    swift_beginAccess();
    v82 = swift_beginAccess();
    v49 = (v280 + 32);
    v50 = v281 + 32;
    v79 = 8;
    v83 = 6;
    v279 = (v280 + 32);
    do
    {
      v9 = v79 - 8;
      v7 = v10;
      v85 = (v293)(v82);
      if ((v79 - 8) >= *(v85 + 16))
      {
        goto LABEL_274;
      }

      v86 = *(v85 + 4 * v79);

      v87 = *(v10 + 104);
      if (v9 >= *(v87 + 16))
      {
        goto LABEL_275;
      }

      if (*(v87 + 4 * v79) <= v86)
      {
        v7 = v10;
        v91 = (v293)(v82);
        if (v9 >= *(v91 + 16))
        {
          goto LABEL_283;
        }

        v92 = *(v91 + 4 * v79);

        v7 = *(v10 + 88);
        if (v9 >= v7[2])
        {
          goto LABEL_285;
        }

        if (*&v7[v83] > v92)
        {
          swift_beginAccess();
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 88) = v7;
          if ((v93 & 1) == 0)
          {
            v7 = sub_2722CA4FC(v7);
          }

          if (v9 >= v7[2])
          {
            goto LABEL_300;
          }

          v89 = &v7[v83];
          v94 = v7[v83 + 1];
          v12 = __OFADD__(v94, 1);
          v84 = v94 + 1;
          if (v12)
          {
            goto LABEL_302;
          }

          goto LABEL_81;
        }

        if (v81)
        {
          v95 = *(v81 + 16);
          v96 = (v280 + 32);
          if (v95 != 1)
          {
            v96 = v49;
            if (v9 >= v95)
            {
              goto LABEL_314;
            }
          }

          v97 = *v96;
          if (v80)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v97 = 0;
          if (v80)
          {
LABEL_107:
            v98 = *(v80 + 16);
            v99 = (v281 + 32);
            if (v98 != 1)
            {
              v99 = v50;
              if (v9 >= v98)
              {
                goto LABEL_315;
              }
            }

            v100 = *v99;
            goto LABEL_112;
          }
        }

        v100 = 0;
LABEL_112:
        LOBYTE(v298) = v80 == 0;
        v7 = v10;
        v10 = sub_2722C9D70(v97 | ((v81 == 0) << 32), v100 | ((v80 == 0) << 32));
        v102 = v101;
        swift_beginAccess();
        v103 = v7[11];
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v7[11] = v103;
        if ((v104 & 1) == 0)
        {
          v103 = sub_2722CA4FC(v103);
        }

        if (v9 >= *(v103 + 2))
        {
          goto LABEL_301;
        }

        *&v103[v83 * 8 + 16] = v10;
        v7 = v297;
        v297[11] = v103;
        if (v9 >= *(v103 + 2))
        {
          goto LABEL_303;
        }

        v285 = v102;
        *&v103[v83 * 8 + 24] = v102;
        v297[11] = v103;
        swift_endAccess();
        if (v284)
        {
          v105 = (*(*v297 + 616))(v10);
        }

        else
        {
          v105 = 1;
        }

        swift_beginAccess();
        v106 = v297[11];
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v297[11] = v106;
        if ((v107 & 1) == 0)
        {
          v106 = sub_2722CA4FC(v106);
        }

        if (v9 >= *(v106 + 2))
        {
          goto LABEL_304;
        }

        v106[v83 * 8 + 36] = v105 & 1;
        v7 = v297;
        v297[11] = v106;
        swift_endAccess();
        if (v283)
        {
          v108 = (*(*v297 + 624))(v285);
        }

        else
        {
          v108 = 1;
        }

        swift_beginAccess();
        v109 = v297[11];
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v297[11] = v109;
        if ((v110 & 1) == 0)
        {
          v109 = sub_2722CA4FC(v109);
        }

        if (v9 >= *(v109 + 2))
        {
          goto LABEL_305;
        }

        v109[v83 * 8 + 38] = v108;
        v7 = v297;
        v297[11] = v109;
        swift_endAccess();
        if (v282)
        {
          v111 = (*(*v297 + 632))(v10, v285);
        }

        else
        {
          v111 = 1;
        }

        v10 = v297;
        swift_beginAccess();
        v112 = v297[11];
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v297[11] = v112;
        if ((v113 & 1) == 0)
        {
          v112 = sub_2722CA4FC(v112);
        }

        if (v9 >= *(v112 + 2))
        {
          goto LABEL_306;
        }

        v112[v83 * 8 + 37] = v111 & 1;
        v297[11] = v112;
        v114 = swift_endAccess();
        v115 = v297[5];
        if (*(v115 + 16))
        {
          v114 = sub_272200404(v79 - 8);
          if (v116)
          {
            v117 = (*(v115 + 56) + 16 * v114);
            v10 = *v117;
            v7 = v117[1];
            swift_beginAccess();

            v118 = swift_isUniquelyReferenced_nonNull_native();
            v297[11] = v112;
            if ((v118 & 1) == 0)
            {
              v112 = sub_2722CA4FC(v112);
              v297[11] = v112;
            }

            if (v9 >= *(v112 + 2))
            {
              goto LABEL_316;
            }

            v119 = &v112[v83 * 8];
            v120 = *&v112[v83 * 8 - 8];
            *(v119 - 2) = v10;
            *(v119 - 1) = v7;
            v10 = v297;
            v297[11] = v112;
            swift_endAccess();
          }
        }

        v7 = v10;
        v121 = (v291)(v114);
        if (v9 >= *(v121 + 16))
        {
          goto LABEL_307;
        }

        v122 = *(v121 + 4 * v79);

        swift_beginAccess();
        v7 = *(v10 + 88);
        v123 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 88) = v7;
        if ((v123 & 1) == 0)
        {
          v7 = sub_2722CA4FC(v7);
        }

        v81 = v280;
        v80 = v281;
        if (v9 >= v7[2])
        {
          goto LABEL_308;
        }

        LODWORD(v7[v83]) = v122;
        *(v10 + 88) = v7;
        v124 = *(v10 + 104);
        if (v9 >= *(v124 + 16))
        {
          goto LABEL_309;
        }

        if (v9 >= v7[2])
        {
          goto LABEL_310;
        }

        v125 = *(v124 + 4 * v79);
        v89 = &v7[v83];
        LODWORD(v7[v83 + 4]) = v125;
        *(v10 + 88) = v7;
        if (v9 >= v7[2])
        {
          goto LABEL_311;
        }

        v84 = 1;
        goto LABEL_81;
      }

      v7 = *(v10 + 88);
      if (v9 >= v7[2])
      {
        goto LABEL_284;
      }

      if (v7[v83 + 1] >= 1)
      {
        swift_beginAccess();
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 88) = v7;
        if ((v88 & 1) == 0)
        {
          v7 = sub_2722CA4FC(v7);
        }

        if (v9 >= v7[2])
        {
          goto LABEL_295;
        }

        v89 = &v7[v83];
        v90 = v7[v83 + 1];
        v12 = __OFADD__(v90, 1);
        v84 = v90 + 1;
        if (v12)
        {
          goto LABEL_296;
        }

LABEL_81:
        v89[1] = v84;
        *(v10 + 88) = v7;
        v82 = swift_endAccess();
      }

      ++v79;
      v83 += 7;
      v50 += 4;
      v49 = (v49 + 4);
      --v8;
    }

    while (v8);
    v126 = *(v10 + 96);
    if (v126 < 0)
    {
      goto LABEL_321;
    }

    if (v126)
    {
      v275 = *(v10 + 96);
      swift_beginAccess();
      v127 = v275;
      v128 = 0;
      v279 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D85000];
      v49 = &v303;
      do
      {
        v129 = *(v10 + 128);
        if (v129 >> 62)
        {
          if (v129 < 0)
          {
            v165 = *(v10 + 128);
          }

          v166 = sub_2723783AC();
          v127 = v275;
          v7 = v166;
          if (!v166)
          {
            goto LABEL_152;
          }

LABEL_155:
          v8 = *(v10 + 32);
          v9 = v129 & 0xC000000000000001;

          swift_beginAccess();
          swift_beginAccess();
          v130 = 0;
          v276 = v128;
          v277 = v129 & 0xFFFFFFFFFFFFFF8;
          v294 = 56 * v128;
          v282 = v7;
          v283 = v129;
          v280 = v129 & 0xC000000000000001;
          v281 = v8;
          while (1)
          {
            if (v9)
            {
              v131 = MEMORY[0x2743C5370](v130, v129);
              v132 = (v130 + 1);
              if (__OFADD__(v130, 1))
              {
                goto LABEL_266;
              }
            }

            else
            {
              if (v130 >= *(v277 + 16))
              {
                goto LABEL_268;
              }

              v131 = *(v129 + 8 * v130 + 32);

              v132 = (v130 + 1);
              if (__OFADD__(v130, 1))
              {
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
                goto LABEL_273;
              }
            }

            v133 = *(v10 + 88);
            if (v128 >= *(v133 + 16))
            {
              goto LABEL_267;
            }

            v134 = v133 + v294;
            if (*(v134 + 56) >= v8)
            {
              break;
            }

LABEL_157:
            ++v130;
            if (v132 == v7)
            {

              v79 = MEMORY[0x277D85000];
              v127 = v275;
              goto LABEL_152;
            }
          }

          v135 = *(v134 + 32);
          v136 = *(v134 + 48);
          v137 = *(v134 + 64);
          *&v317[15] = *(v134 + 79);
          v316 = v136;
          *v317 = v137;
          v315 = v135;
          v303 = *(v134 + 32);
          v304 = *(v134 + 48);
          *v305 = *(v134 + 64);
          *&v305[15] = *(v134 + 79);
          v138 = *(*v131 + 248);
          v8 = *v131 + 248;
          sub_2722C5138(&v315, v302);
          v138(&v306, &v303);
          v298 = v303;
          v299 = v304;
          *v300 = *v305;
          *&v300[15] = *&v305[15];
          sub_2722CAC5C(&v298);
          v9 = v307;
          if (!v307)
          {

LABEL_190:
            v7 = v282;
            v129 = v283;
            v9 = v280;
            v8 = v281;
            goto LABEL_157;
          }

          v7 = *(v10 + 72);
          if (!v7[2])
          {
            goto LABEL_269;
          }

          v139 = v306;
          v284 = v309;
          v286 = v308;
          v292 = v310;
          v290 = v311;
          v140 = v314;
          v10 = v313;
          v141 = v312;

          v291 = v139;
          v142 = sub_27220038C(v139, v9);
          v8 = v143;

          if ((v8 & 1) == 0)
          {
            goto LABEL_270;
          }

          v144 = *(v7[7] + 8 * v142);

          v7 = v289;
          v146 = (*((*MEMORY[0x277D85000] & *v289) + 0x150))(v145);
          if (__OFSUB__(v144, v146))
          {
            goto LABEL_271;
          }

          if (v144 - v146 >= v292)
          {

LABEL_189:
            v10 = v297;
            v49 = &v303;
            v128 = v276;
            goto LABEL_190;
          }

          v147 = v141 | ((v10 | (v140 << 16)) << 32);
          v10 = v297;
          swift_beginAccess();
          v8 = v291;
          *&v303 = v291;
          *(&v303 + 1) = v9;
          *&v304 = v286;
          *(&v304 + 1) = v284;
          *v305 = v292;
          *&v305[8] = v290;
          v305[22] = BYTE6(v147);
          *&v305[20] = WORD2(v147);
          *&v305[16] = v147;
          sub_2722C5138(&v303, v302);
          v148 = v297[9];
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v302[0] = v297[9];
          v7 = v302[0];
          v297[9] = 0x8000000000000000;
          v151 = sub_27220038C(v291, v9);
          v152 = v7[2];
          v153 = (v150 & 1) == 0;
          v154 = v152 + v153;
          if (__OFADD__(v152, v153))
          {
            goto LABEL_276;
          }

          v8 = v150;
          if (v7[3] < v154)
          {
            sub_2722CA678(v154, v149);
            v7 = v302[0];
            v155 = sub_27220038C(v291, v9);
            if ((v8 & 1) != (v156 & 1))
            {
              goto LABEL_334;
            }

            v151 = v155;
            if ((v8 & 1) == 0)
            {
              goto LABEL_182;
            }

LABEL_180:

            v157 = v302[0];
            *(*(v302[0] + 56) + 8 * v151) = v290;
LABEL_184:
            v297[9] = v157;
            swift_endAccess();
            v161 = v279;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_2722CA038(0, *(v279 + 2) + 1, 1, v279);
            }

            v163 = *(v161 + 2);
            v162 = *(v161 + 3);
            if (v163 >= v162 >> 1)
            {
              v279 = sub_2722CA038((v162 > 1), v163 + 1, 1, v161);
            }

            else
            {
              v279 = v161;
            }

            *(v279 + 2) = v163 + 1;
            v164 = &v279[56 * v163];
            *(v164 + 4) = v291;
            *(v164 + 5) = v9;
            *(v164 + 12) = v286;
            *(v164 + 7) = v284;
            *(v164 + 8) = v292;
            *(v164 + 9) = v290;
            *(v164 + 20) = v147;
            v164[84] = BYTE4(v147) & 1;
            v164[85] = BYTE5(v147) & 1;
            v164[86] = BYTE6(v147);
            goto LABEL_189;
          }

          if (v149)
          {
            if (v150)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v7 = v302;
            sub_2722CA510();
            if (v8)
            {
              goto LABEL_180;
            }
          }

LABEL_182:
          v157 = v302[0];
          *(v302[0] + 8 * (v151 >> 6) + 64) |= 1 << v151;
          v158 = (v157[6] + 16 * v151);
          *v158 = v291;
          v158[1] = v9;
          *(v157[7] + 8 * v151) = v290;
          v159 = v157[2];
          v12 = __OFADD__(v159, 1);
          v160 = v159 + 1;
          if (v12)
          {
            goto LABEL_286;
          }

          v157[2] = v160;
          goto LABEL_184;
        }

        v7 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_155;
        }

LABEL_152:
        ++v128;
      }

      while (v128 != v127);
      v270 = *(v10 + 96);
      if (v270 < 0)
      {
        goto LABEL_331;
      }

      if (!v270)
      {
        goto LABEL_199;
      }

      v8 = *(v10 + 32);
      swift_beginAccess();
      v271 = 0;
      v272 = 0;
      while (1)
      {
        v7 = *(v10 + 88);
        if (v272 >= v7[2])
        {
          break;
        }

        if (v7[v271 + 7] >= v8)
        {
          swift_beginAccess();
          v273 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 88) = v7;
          if ((v273 & 1) == 0)
          {
            v7 = sub_2722CA4FC(v7);
          }

          if (v272 >= v7[2])
          {
            goto LABEL_313;
          }

          v274 = &v7[v271];
          *(v274 + 12) = 0;
          v274[7] = 0;
          v274[8] = -1;
          v274[9] = -1;
          *(v274 + 42) = 0;
          *(v274 + 86) = 2;
          *(v10 + 88) = v7;
          swift_endAccess();
        }

        ++v272;
        v271 += 7;
        if (v270 == v272)
        {
          goto LABEL_198;
        }
      }

LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      v7 = sub_272241E04(0, v7[2] + 1, 1, v7);
      *v9 = v7;
      continue;
    }

    break;
  }

  v279 = MEMORY[0x277D84F90];
LABEL_198:
  v79 = MEMORY[0x277D85000];
  v49 = &v303;
LABEL_199:
  swift_beginAccess();
  v50 = *(v10 + 128);
  if (v50 >> 62)
  {
LABEL_322:
    v167 = sub_2723783AC();
    if (!v167)
    {
      goto LABEL_208;
    }

LABEL_201:
    if (v167 >= 1)
    {

      for (i = 0; i != v167; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v169 = MEMORY[0x2743C5370](i, v50);
        }

        else
        {
          v169 = *(v50 + 8 * i + 32);
        }

        (*(*v169 + 240))();
      }

      goto LABEL_208;
    }

    goto LABEL_330;
  }

  v167 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v167)
  {
    goto LABEL_201;
  }

LABEL_208:
  v170 = *(v279 + 2);
  if (v170)
  {
    v171 = v279 + 32;
    v172 = MEMORY[0x277D84F90];
    while (1)
    {
      v177 = *v171;
      v178 = *(v171 + 1);
      v179 = *(v171 + 2);
      *(v49 + 159) = *(v171 + 47);
      v49[8] = v178;
      v49[9] = v179;
      v49[7] = v177;
      v180 = v317[22];
      if (v317[22] == 2)
      {
        swift_beginAccess();
        v181 = *(v10 + 120);
        sub_2722C5138(&v315, &v298);
        v182 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 120) = v181;
        if ((v182 & 1) == 0)
        {
          v181 = sub_2722CA038(0, *(v181 + 2) + 1, 1, v181);
          *(v10 + 120) = v181;
        }

        v184 = *(v181 + 2);
        v183 = *(v181 + 3);
        if (v184 >= v183 >> 1)
        {
          v181 = sub_2722CA038((v183 > 1), v184 + 1, 1, v181);
        }

        *(v181 + 2) = v184 + 1;
        v173 = &v181[56 * v184];
        v174 = v49[7];
        v175 = v49[8];
        v176 = v49[9];
        *(v173 + 79) = *(v49 + 159);
        *(v173 + 3) = v175;
        *(v173 + 4) = v176;
        *(v173 + 2) = v174;
        *(v10 + 120) = v181;
        swift_endAccess();
      }

      else
      {
        v287 = v170;
        v9 = v172;
        v185 = *v317;
        v8 = *((*v79 & *v289) + 0x138);
        v186 = (*v79 & *v289) + 312;
        v187 = sub_2722C5138(&v315, &v298);
        v7 = v289;
        v188 = (v8)(v187);
        v291 = v185;
        if ((v185 * v188) >> 64 != (v185 * v188) >> 63)
        {
          goto LABEL_287;
        }

        v283 = v185 * v188;
        LOBYTE(v284) = v180;
        v292 = v8;
        v295 = v9;
        v189 = v186;
        v190 = v79;
        v191 = *(v10 + 16);
        v192 = *((*v190 & *v191) + 0x88);
        v8 = (*v190 & *v191) + 136;
        v193 = v192();
        v194 = (*((*v190 & *v193) + 0x190))();

        v195 = v192();
        v196 = (*((*v190 & *v195) + 0x198))();

        v197 = v192();
        v9 = (*((*v190 & *v197) + 0xA0))();

        v10 = *&v317[8];
        v7 = v289;
        v290 = v189;
        v198 = v292();
        if ((v10 * v198) >> 64 != (v10 * v198) >> 63)
        {
          goto LABEL_288;
        }

        v281 = v10 * v198;
        v199 = v192();
        v200 = (*((*v190 & *v199) + 0x190))();

        v201 = v192();
        v202 = (*((*v190 & *v201) + 0x198))();

        v203 = v192();
        v280 = (*((*v190 & *v203) + 0xA0))();

        v204 = *(&v315 + 1);
        v205 = v315;
        v206 = *((*v190 & *v191) + 0x118);
        v207 = sub_2722C5138(&v315, &v298);
        v208 = v206(v207);
        v282 = v9;
        if (v208)
        {
          v209 = (*(*v208 + 200))();
          if (*(v209 + 16) && (v210 = sub_27220038C(v205, v204), (v211 & 1) != 0))
          {
            v212 = v210;
            sub_2722CAC5C(&v315);
            v213 = (*(v209 + 56) + 16 * v212);
            v215 = *v213;
            v214 = v213[1];
          }

          else
          {

            v215 = v205;
            v214 = v204;
          }

          v208 = sub_2722C5138(&v315, &v298);
          v216 = v205;
          v9 = v204;
          v205 = v215;
          v204 = v214;
        }

        else
        {
          v216 = 0;
          v9 = 0;
        }

        v7 = v289;
        v217 = *&v316;
        v218 = (v292)(v208);
        v8 = v291 * v218;
        if ((v291 * v218) >> 64 != (v291 * v218) >> 63)
        {
          goto LABEL_289;
        }

        v219 = v292();
        if ((v10 * v219) >> 64 != (v10 * v219) >> 63)
        {
          goto LABEL_290;
        }

        sub_27232409C(v205, v204, v8, v10 * v219, v317[20], v284 & 1, v317[21], v216, &v298, v217, (v194 * v283 + v196) / v282, (v200 * v281 + v202) / v280, v9);
        sub_2722CAC5C(&v315);
        v172 = v295;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_272205014(0, *(v295 + 16) + 1, 1, v295);
        }

        v10 = v297;
        v79 = MEMORY[0x277D85000];
        v49 = &v303;
        v170 = v287;
        v221 = *(v172 + 2);
        v220 = *(v172 + 3);
        if (v221 >= v220 >> 1)
        {
          v172 = sub_272205014((v220 > 1), v221 + 1, 1, v172);
        }

        *(v172 + 2) = v221 + 1;
        v222 = &v172[80 * v221];
        *(v222 + 2) = v298;
        v223 = v299;
        v224 = *v300;
        v225 = v301;
        *(v222 + 5) = *&v300[16];
        *(v222 + 6) = v225;
        *(v222 + 3) = v223;
        *(v222 + 4) = v224;
      }

      v171 += 56;
      if (!--v170)
      {
        goto LABEL_234;
      }
    }
  }

  v172 = MEMORY[0x277D84F90];
LABEL_234:
  swift_beginAccess();
  v8 = *(v10 + 120);
  v226 = *(v8 + 16);
  if (v226)
  {
    v284 = *v10 + 624;
    v288 = *v284;

    v292 = (v226 - 1);
    v227 = MEMORY[0x277D84F90];
    v228 = 32;
    v229 = v289;
    v278 = v8;
    while (1)
    {
      v290 = v228;
      v230 = v8 + v228;
      v231 = *v230;
      v232 = *(v230 + 16);
      v233 = *(v230 + 32);
      *(v49 + 159) = *(v230 + 47);
      v49[8] = v232;
      v49[9] = v233;
      v49[7] = v231;
      v9 = *&v317[8];
      sub_2722C5138(&v315, &v298);
      v234 = v288(v9);
      if (v234 == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_2722CA038(0, *(v227 + 2) + 1, 1, v227);
        }

        v235 = v292;
        v237 = *(v227 + 2);
        v236 = *(v227 + 3);
        if (v237 >= v236 >> 1)
        {
          v227 = sub_2722CA038((v236 > 1), v237 + 1, 1, v227);
        }

        *(v227 + 2) = v237 + 1;
        v238 = &v227[56 * v237];
        v239 = v49[7];
        v240 = v49[8];
        v241 = v49[9];
        *(v238 + 79) = *(v49 + 159);
        *(v238 + 3) = v240;
        *(v238 + 4) = v241;
        *(v238 + 2) = v239;
        if (!v292)
        {
          goto LABEL_253;
        }
      }

      else
      {
        LOBYTE(v283) = v234;
        LOBYTE(v282) = v227;
        v242 = *v317;
        v7 = v229;
        v291 = *((*v79 & *v229) + 0x138);
        v243 = (v291)();
        if ((v242 * v243) >> 64 != (v242 * v243) >> 63)
        {
          goto LABEL_291;
        }

        v281 = v242 * v243;
        v296 = v172;
        v10 = *(v10 + 16);
        v8 = *((*v79 & *v10) + 0x88);
        v244 = (v8)();
        v245 = (*((*v79 & *v244) + 0x190))();

        v246 = (v8)();
        v247 = (*((*v79 & *v246) + 0x198))();

        v248 = (v8)();
        v280 = (*((*v79 & *v248) + 0xA0))();

        v7 = v229;
        v249 = (v291)();
        v250 = v9 * v249;
        if ((v9 * v249) >> 64 != (v9 * v249) >> 63)
        {
          goto LABEL_292;
        }

        v251 = (v8)();
        v252 = (*((*v79 & *v251) + 0x190))();

        v253 = (v8)();
        v254 = (*((*v79 & *v253) + 0x198))();

        v255 = (v8)();
        v256 = (*((*v79 & *v255) + 0xA0))();

        v10 = *(&v315 + 1);
        v257 = v315;
        v258 = *&v316;
        v259 = sub_2722C5138(&v315, &v298);
        v7 = v229;
        v260 = (v291)(v259);
        v8 = v242 * v260;
        if ((v242 * v260) >> 64 != (v242 * v260) >> 63)
        {
          goto LABEL_293;
        }

        v7 = v229;
        v261 = (v291)();
        if ((v9 * v261) >> 64 != (v9 * v261) >> 63)
        {
          goto LABEL_294;
        }

        sub_27232409C(v257, v10, v8, v9 * v261, v317[20], v283 & 1, v317[21], 0, &v298, v258, (v245 * v281 + v247) / v280, (v252 * v250 + v254) / v256, 0);
        sub_2722CAC5C(&v315);
        v172 = v296;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_272205014(0, *(v296 + 2) + 1, 1, v296);
        }

        v10 = v297;
        v229 = v289;
        v79 = MEMORY[0x277D85000];
        v49 = &v303;
        v8 = v278;
        v235 = v292;
        v263 = *(v172 + 2);
        v262 = *(v172 + 3);
        if (v263 >= v262 >> 1)
        {
          v172 = sub_272205014((v262 > 1), v263 + 1, 1, v172);
        }

        *(v172 + 2) = v263 + 1;
        v264 = &v172[80 * v263];
        *(v264 + 2) = v298;
        v265 = v299;
        v266 = *v300;
        v267 = v301;
        *(v264 + 5) = *&v300[16];
        *(v264 + 6) = v267;
        *(v264 + 3) = v265;
        *(v264 + 4) = v266;
        if (!v292)
        {
LABEL_253:

          goto LABEL_255;
        }
      }

      v292 = (v235 - 1);
      v228 = (v290 + 7);
    }
  }

  v227 = MEMORY[0x277D84F90];
LABEL_255:
  v268 = *(v10 + 120);
  *(v10 + 120) = v227;

  type metadata accessor for VAKeywordResult();
  return VAKeywordResult.__allocating_init(detections:)(v172);
}

unint64_t sub_2722C9638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_2722C9690(float a1)
{
  v5 = *(v1 + 112);
  v4 = (v1 + 112);
  v3 = v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2721FF8B4(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
    *v4 = result;
  }

  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2721FF8B4((v7 > 1), v8 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v8 + 1;
  *(v3 + 4 * v8 + 32) = a1;
  *v4 = v3;
  if (v8 >= 0xBB8)
  {
    return sub_2722CAD58(0, 1, sub_2721FF8B4, sub_2722CACB0);
  }

  return result;
}

void sub_2722C9774(uint64_t a1)
{
  v2 = v1[8];
  v3 = *(v1[14] + 16);
  v4 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    goto LABEL_23;
  }

  if (v4 >= a1)
  {
    return;
  }

  v6 = v1;
  v7 = v1[3];
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v7) + 0x180);
  v10 = v9();
  v11 = v9();
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  v12 = v11;
  if (!v11)
  {
    v15 = 0;
LABEL_18:
    if (__OFADD__(v15, v10))
    {
      goto LABEL_25;
    }

    v20 = v15 + v10 >= (*((*v8 & *v7) + 0x198))();
    return;
  }

  v13 = __OFSUB__(a1, v4);
  v14 = a1 - v4;
  if (v13)
  {
    goto LABEL_26;
  }

  v15 = 0;
  v16 = 0;
  v17 = v14;
  while (1)
  {
    if (v16 >= v14)
    {
      goto LABEL_8;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    v18 = v6[14];
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_21;
    }

    v19 = *(v18 + 4 * v17 + 32);
    if ((*((*v8 & *v7) + 0x1B0))() <= v19)
    {
      v13 = __OFADD__(v15++, 1);
      if (v13)
      {
        __break(1u);
        return;
      }
    }

    v13 = __OFSUB__(v10--, 1);
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_8:
    ++v16;
    --v17;
    if (v12 == v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2722C9940(uint64_t a1)
{
  v2 = v1[8];
  v3 = *(v1[14] + 16);
  v4 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = v1;
  v7 = v1[3];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x210))();
  if (__OFSUB__(v2, v9))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2 - v9 < a1)
  {
    return;
  }

  v10 = *((*v8 & *v7) + 0x1F8);
  v11 = v10();
  v12 = a1 - v4;
  if (__OFSUB__(a1, v4))
  {
    goto LABEL_27;
  }

  v13 = v11;
  v14 = v10();
  v15 = v12 + v14;
  if (__OFADD__(v12, v14))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v15 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v15)
  {
    v16 = 0;
    if (v13 <= 0)
    {
      goto LABEL_21;
    }

LABEL_9:
    (*((*v8 & *v7) + 0x210))();
    return;
  }

  if (v12 >= v15)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v16 = 0;
  while (1)
  {
    v19 = v5[14];
    if (v12 < *(v19 + 16))
    {
      break;
    }

LABEL_13:
    ++v12;
    if (!--v17)
    {
      goto LABEL_20;
    }
  }

  if (v12 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(v19 + 4 * v12 + 32);
  if ((*((*v8 & *v7) + 0x228))() > v20 || (v18 = __OFADD__(v16, 1), ++v16, !v18))
  {
    v18 = __OFSUB__(v13--, 1);
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  if (v13 >= 1)
  {
    goto LABEL_9;
  }

LABEL_21:
  v21 = v16 >= (*((*v8 & *v7) + 0x210))();
}

void sub_2722C9B98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(*(v2 + 112) + 16);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = __OFSUB__(a2, v6);
  v10 = a2 - v6;
  if (v5)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v8 & ~(v8 >> 63);
  if (v4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(*(v2 + 112) + 16);
  }

  if (v12 < v11)
  {
    goto LABEL_26;
  }

  v13 = MEMORY[0x277D85000];
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = *((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x1E0);
    while (1)
    {
      v17 = *(v2 + 112);
      if (v11 >= *(v17 + 16))
      {
        break;
      }

      v18 = 1.0 - *(v17 + 4 * v11 + 32);
      if (v16() <= v18)
      {
        v5 = __OFADD__(v15++, 1);
        if (v5)
        {
          __break(1u);
          break;
        }
      }

      if (v12 == ++v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = ((*((*v13 & **(v2 + 24)) + 0x1C8))() * (a2 - a1)) + 0.5;
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_2722C9D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&a2;
  v5 = *&a1;
  v6 = a2 | a1;
  v7 = *(v2 + 24);
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x120))();
  result = (*((*v8 & *v7) + 0x138))();
  v11 = *(v3 + 64);
  if ((v6 & 0x100000000) != 0)
  {
    if (result)
    {
      if (v9 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_40;
      }

      v13 = v11 & ~(v11 >> 63);
      if (!__OFSUB__(v13, v9 / result))
      {
        return (v13 - v9 / result) & ~((v13 - v9 / result) >> 63);
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!result)
  {
    goto LABEL_28;
  }

  if (v9 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_41;
  }

  v15 = v11 - v9 / result / 2;
  if (__OFSUB__(v11, v9 / result / 2))
  {
    goto LABEL_30;
  }

  if ((~LODWORD(v5) & 0x7F800000) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = __OFADD__(v15, v5);
  v17 = v15 + v5;
  if (v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = roundf(v4 * (v9 / result));
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v18;
  v16 = __OFSUB__(v17, v18 / 2);
  v20 = v17 - v18 / 2;
  if (v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = v20 & ~(v20 >> 63);
  if (__OFADD__(result, v19))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (result + v19 >= v11 && __OFSUB__(v11, 1))
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t VAResultGenerator.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  v12 = *(v0 + 152);

  return v0;
}

uint64_t VAResultGenerator.__deallocating_deinit()
{
  VAResultGenerator.deinit();

  return swift_deallocClassInstance();
}

char *sub_2722CA038(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882958, &qword_272382CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2722CA180(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_27220038C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2722CA678(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_27220038C(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2723786BC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_2722CA510();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_27237820C();
    MEMORY[0x2743C4AD0](0xD00000000000001BLL, 0x800000027238E620);
    sub_27237836C();
    MEMORY[0x2743C4AD0](39, 0xE100000000000000);
    sub_27237837C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_27220038C(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_2722CA678(v32, 1);
        v33 = *a3;
        v28 = sub_27220038C(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_2722CA510()
{
  v1 = v0;
  sub_2721F065C(&qword_280882940, qword_272382B70);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_2722CA678(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280882940, qword_272382B70);
  v38 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2722CA918(void *a1, int64_t a2, char a3)
{
  result = sub_2722CA938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2722CA938(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_280882948, &qword_272382CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_2721F065C(&qword_280882950, &qword_272382CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2722CAA80(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v3 = sub_2723783EC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_272200404(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_272200404(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722CAB94(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_272377B5C();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v2 + 16);
    v6 = *(v2 + 32);
    v8 = *v2;
    *(v4 + 79) = *(v2 + 47);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = v4 + 88;
      do
      {
        sub_2722C5138(v2, v14);
        v11 = *v2;
        v12 = *(v2 + 16);
        v13 = *(v2 + 32);
        *(v10 + 47) = *(v2 + 47);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_2722C5138(v2, v14);
    return v5;
  }

  return result;
}

unint64_t sub_2722CACB0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722CAD58(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

__n128 sub_2722CAE30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2722CAE4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 55))
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

uint64_t sub_2722CAE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 54) = 0;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 55) = 1;
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

    *(result + 55) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2722CB07C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2722CB088(uint64_t a1, uint64_t a2)
{
  v4 = sub_2722CBA40(&qword_280882978);
  v5 = sub_2722CBA84();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_2722CB110()
{
  v1 = v0[11];
  v2 = sub_272258594(MEMORY[0x277D84F90], v1, &qword_280881858, &unk_27237C260);
  v3 = v0[12];
  v4 = sub_272258594(v2, v3, &qword_280881F28, &unk_272381E80);

  v22 = *v0;
  if (*(v0 + 40) != 65568 || *v0 == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = v0[10];
  if ((v7 * v0[15]) >> 64 != (v7 * v0[15]) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = v0[16];
  if ((v1 * v8) >> 64 != (v1 * v8) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v20 = v0[17];
  if ((v3 * v20) >> 64 != (v3 * v20) >> 63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v0[13] * v0[18]) >> 64 != (v0[13] * v0[18]) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v0[14] * v0[19]) >> 64 == (v0[14] * v0[19]) >> 63)
  {
    v21 = v4[2];
    if (!v21)
    {
      return v4;
    }

    v9 = 0;
    while (v9 < v4[2])
    {
      v10 = *(v4[v9 + 4] + 16);
      if (v10)
      {
        v11 = 0;
        v23 = v9 * v20;
        while (1)
        {
          v12 = v11 * v8;
          if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
          {
            break;
          }

          if ((v9 * v20) >> 64 != (v9 * v20) >> 63)
          {
            goto LABEL_37;
          }

          v13 = v12 + v23;
          if (__OFADD__(v12, v23))
          {
            goto LABEL_38;
          }

          if (v7)
          {
            if (v7 < 1)
            {
              v14 = MEMORY[0x277D84F90];
            }

            else
            {
              sub_2721F065C(&qword_280881848, &unk_27237C250);
              v14 = swift_allocObject();
              v15 = j__malloc_size(v14);
              v16 = v15 - 32;
              if (v15 < 32)
              {
                v16 = v15 - 29;
              }

              v14[2] = v7;
              v14[3] = 2 * (v16 >> 2);
            }

            memcpy(v14 + 4, (v22 + 4 * v13), 4 * v7);
          }

          else
          {
            v14 = MEMORY[0x277D84F90];
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_272258428(v4);
            v4 = result;
          }

          if (v9 >= v4[2])
          {
            goto LABEL_39;
          }

          v17 = v4[v9 + 4];
          result = swift_isUniquelyReferenced_nonNull_native();
          v4[v9 + 4] = v17;
          if ((result & 1) == 0)
          {
            result = sub_272200344(v17);
            v17 = result;
            v4[v9 + 4] = result;
          }

          if (v11 >= v17[2])
          {
            goto LABEL_40;
          }

          v18 = &v17[v11];
          v19 = v18[4];
          v18[4] = v14;

          if (v10 == ++v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

LABEL_12:
      if (++v9 == v21)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2722CB3F0(uint64_t (*a1)(void))
{
  result = *v1;
  if (*(v1 + 160) != 65568 || result == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((*(v1 + 80) * *(v1 + 120)) >> 64 != (*(v1 + 80) * *(v1 + 120)) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 128);
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((*(v1 + 96) * *(v1 + 136)) >> 64 != (*(v1 + 96) * *(v1 + 136)) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*(v1 + 104) * *(v1 + 144)) >> 64 != (*(v1 + 104) * *(v1 + 144)) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*(v1 + 112) * *(v1 + 152)) >> 64 == (*(v1 + 112) * *(v1 + 152)) >> 63)
  {
    return a1();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2722CB4EC()
{
  v1 = v0[10];
  v2 = v0[15];
  v3 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v0[11];
  v5 = v0[16];
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v0[12];
  v8 = v0[17];
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v0[13];
  v11 = v0[18];
  v12 = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[14];
  v14 = v0[19];
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v6 > v3)
  {
    v3 = v6;
  }

  if (v9 > v3)
  {
    v3 = v9;
  }

  if (v12 > v3)
  {
    v3 = v12;
  }

  if (v13 * v14 <= v3)
  {
    return v3;
  }

  else
  {
    return v13 * v14;
  }
}

void *sub_2722CB5A8(void *result)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  v3 = result + 4;
  if (!*(result[4] + 16))
  {
    return result;
  }

  v4 = *v1;
  if (*(v1 + 40) != 65568 || v4 == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v1[10] * v1[15]) >> 64 != (v1[10] * v1[15]) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v1[11] * v1[16]) >> 64 != (v1[11] * v1[16]) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v1[12] * v1[17]) >> 64 != (v1[12] * v1[17]) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v1[13] * v1[18]) >> 64 != (v1[13] * v1[18]) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v1[14] * v1[19]) >> 64 != (v1[14] * v1[19]) >> 63)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = 0;
  while (v2)
  {
    v7 = *v3++;
    v8 = *(v7 + 16);
    result = memcpy((v4 + 4 * v6), (v7 + 32), 4 * v8);
    --v2;
    v9 = __OFADD__(v6, v8);
    v6 += v8;
    if (v9)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2722CB6DC()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_2723778BC();
  v0 = espresso_plan_add_network();

  if (v0)
  {
    type metadata accessor for espresso_return_status_t(0);
    sub_2722CBA40(&qword_280882960);
    swift_allocError();
    *v1 = v0;
    result = swift_willThrow();
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2722CB82C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    v3 = result;
    type metadata accessor for espresso_return_status_t(0);
    sub_2722CBA40(&qword_280882960);
    swift_allocError();
    *v4 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2722CB8D0@<X0>(uint64_t a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2723778BC();
  v2 = espresso_network_bind_buffer();

  if (v2)
  {
    type metadata accessor for espresso_return_status_t(0);
    sub_2722CBA40(&qword_280882960);
    swift_allocError();
    *v4 = v2;
    result = swift_willThrow();
  }

  else
  {
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2722CBA40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for espresso_return_status_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2722CBA84()
{
  result = qword_280882980;
  if (!qword_280882980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882980);
  }

  return result;
}

Swift::Void __swiftcall VAEspressoModel.destroy()()
{
  v2 = *v0;
  v1 = v0[1];
  espresso_context_destroy();

  espresso_plan_destroy();
}

uint64_t BlobType.hashValue.getter()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t static VAEspressoUtils.getBlobNames(model:blobType:)(uint64_t a1, _BYTE *a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (*a2)
  {
    v5 = sub_2722CBCCC;
  }

  else
  {
    v5 = sub_2722CBCC4;
  }

  v6 = MEMORY[0x277D84F90];
  while ((v5)(v3, v4, v2))
  {
    v7 = sub_27237798C();
    v9 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FFBF8(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2721FFBF8((v11 > 1), v12 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v7;
    *(v13 + 40) = v9;
    if (__OFADD__(v2++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v6;
}

uint64_t static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  v67 = a6;
  v94 = a5;
  v68 = a4;
  v64 = a7;
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v20 = *a3;
  v93 = *a3;
  v92 = 0;
  sub_2722595A4();

  sub_272377A8C();
  sub_272377A8C();
  if (v90 == v88 && v91 == v89)
  {

    goto LABEL_5;
  }

  v61 = v19;
  v21 = sub_27237865C();

  if (v21)
  {
LABEL_5:

    v22 = a1;
    sub_2722CC4E8(a1, a2, 0, v67 & 1, v68, v94, &v69);

    if (v7)
    {
    }

    v81 = v69;
    v82 = v70;
    v24 = v71;
    v78 = v72;
    v79 = v73;
    v80 = v74;
    v26 = v65;
    v25 = v66;
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_24:
    v52 = sub_2722C389C();
    v53 = v62;
    (*(v25 + 16))(v62, v52, v26);
    v54 = sub_27237725C();
    v55 = sub_272377E6C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2721E4000, v54, v55, "Failed to init neural net after two attempts", v56, 2u);
      v57 = v56;
      v25 = v66;
      MEMORY[0x2743C69C0](v57, -1, -1);
    }

    (*(v25 + 8))(v53, v26);
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v69 = 0xD000000000000021;
    *(&v69 + 1) = 0x800000027238E680;
    MEMORY[0x2743C4AD0](v22, a2);

    v58 = v69;
    sub_2722032B4();
    swift_allocError();
    *v59 = v58;
    return swift_willThrow();
  }

  v77 = v20;
  v76 = 1;
  sub_272377A8C();
  sub_272377A8C();
  if (v69 == v75)
  {

    v22 = a1;
    goto LABEL_13;
  }

  v31 = sub_27237865C();

  v22 = a1;
  if (v31)
  {
LABEL_13:
    sub_2722CC4E8(v22, a2, 1, v67 & 1, v68, v94, &v69);
    if (v7)
    {
      v32 = sub_2722C389C();
      v33 = v65;
      v25 = v66;
      v34 = v63;
      (*(v66 + 16))(v63, v32, v65);

      v35 = sub_27237725C();
      v36 = sub_272377E6C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v60 = v35;
        v38 = v37;
        v39 = swift_slowAlloc();
        *&v69 = v39;
        *v38 = 136315138;

        v40 = sub_2721FFD04(v22, a2, &v69);

        *(v38 + 4) = v40;
        v25 = v66;
        v41 = v36;
        v42 = v60;
        _os_log_impl(&dword_2721E4000, v60, v41, "Failed to init %s on ANE, will init it on CPU directly", v38, 0xCu);
        sub_2722039C8(v39);
        MEMORY[0x2743C69C0](v39, -1, -1);
        MEMORY[0x2743C69C0](v38, -1, -1);

        (*(v25 + 8))(v63, v33);
      }

      else
      {

        (*(v25 + 8))(v34, v33);
      }
    }

    else
    {
      v24 = v71;
      v33 = v65;
      v25 = v66;
      if (v71)
      {

        v86 = v69;
        v87 = v70;
        v83 = v72;
        v84 = v73;
        v27 = v74;
        goto LABEL_9;
      }
    }

    v44 = sub_2722C389C();
    v45 = v61;
    (*(v25 + 16))(v61, v44, v33);

    v46 = sub_27237725C();
    v47 = v33;
    v48 = sub_272377E6C();
    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v69 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2721FFD04(v22, a2, &v69);
      _os_log_impl(&dword_2721E4000, v46, v48, "Try loading %s on CPU", v49, 0xCu);
      sub_2722039C8(v50);
      v51 = v50;
      v25 = v66;
      MEMORY[0x2743C69C0](v51, -1, -1);
      MEMORY[0x2743C69C0](v49, -1, -1);

      v26 = v65;
      (*(v25 + 8))(v45, v65);
    }

    else
    {

      (*(v25 + 8))(v45, v47);
      v26 = v47;
    }

    sub_2722CC4E8(v22, a2, 0, v67 & 1, v68, v94, &v69);

    v81 = v69;
    v82 = v70;
    v24 = v71;
    v78 = v72;
    v79 = v73;
    v80 = v74;
    if (v71)
    {
LABEL_8:

      v86 = v81;
      v87 = v82;
      v83 = v78;
      v84 = v79;
      v27 = v80;
LABEL_9:
      v85 = v27;
      v28 = v87;
      v29 = v64;
      *v64 = v86;
      v29[1] = v28;
      *(v29 + 4) = v24;
      v30 = v84;
      *(v29 + 40) = v83;
      *(v29 + 56) = v30;
      *(v29 + 72) = v27;
      return result;
    }

    goto LABEL_24;
  }

  sub_2722032B4();
  swift_allocError();
  *v43 = 0xD000000000000033;
  v43[1] = 0x800000027238E640;
  return swift_willThrow();
}

uint64_t sub_2722CC4E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v392 = a5;
  v393 = a6;
  LODWORD(v394) = a4;
  v384 = a7;
  v407[1] = *MEMORY[0x277D85DE8];
  v383 = sub_272376BCC();
  v382 = *(v383 - 8);
  v10 = *(v382 + 64);
  MEMORY[0x28223BE20](v383);
  v381 = &v363 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27237788C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v385 = &v363 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_27237728C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v387 = &v363 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v386 = &v363 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v380 = &v363 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v388 = &v363 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v363 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v363 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v363 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v363 - v35;
  v390 = a3;
  if (a3)
  {
    context = espresso_create_context();
    v407[0] = context;
    if (!context)
    {
      v38 = sub_2722C389C();
      (*(v16 + 16))(v36, v38, v15);

      v39 = sub_27237725C();
      v40 = sub_272377E6C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = v15;
        v43 = swift_slowAlloc();
        *&v402 = v43;
        *v41 = 136315138;
        *(v41 + 4) = sub_2721FFD04(a1, a2, &v402);
        _os_log_impl(&dword_2721E4000, v39, v40, "Not able to utilized ANE; will use CPU instead: %s", v41, 0xCu);
        sub_2722039C8(v43);
        MEMORY[0x2743C69C0](v43, -1, -1);
        MEMORY[0x2743C69C0](v41, -1, -1);

        (*(v16 + 8))(v36, v42);
      }

      else
      {

        (*(v16 + 8))(v36, v15);
      }

      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();

      v123 = 0x800000027238E740;
      v124 = 0xD00000000000001ALL;
LABEL_46:
      *&v402 = v124;
      *(&v402 + 1) = v123;
      v113 = a1;
      v114 = a2;
      goto LABEL_47;
    }
  }

  else
  {
    context = espresso_create_context();
    v407[0] = context;
    if (!context)
    {
      v99 = sub_2722C389C();
      (*(v16 + 16))(v34, v99, v15);

      v100 = sub_27237725C();
      v101 = sub_272377E6C();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = v15;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v402 = v104;
        *v103 = 136315138;
        *(v103 + 4) = sub_2721FFD04(a1, a2, &v402);
        _os_log_impl(&dword_2721E4000, v100, v101, "Not able to utilized ANE and CPU: %s", v103, 0xCu);
        sub_2722039C8(v104);
        MEMORY[0x2743C69C0](v104, -1, -1);
        MEMORY[0x2743C69C0](v103, -1, -1);

        (*(v16 + 8))(v34, v102);
      }

      else
      {

        (*(v16 + 8))(v34, v15);
      }

      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();

      v123 = 0x800000027238E6E0;
      v124 = 0xD000000000000022;
      goto LABEL_46;
    }
  }

  v391 = v15;
  if (v394)
  {
    sub_2722CFB34(v407, &qword_280882120, &qword_27237EA70, "Pointer of espresso_context_ref_t %s");
    v377 = v407[0];
    plan = espresso_create_plan();
    if (!plan)
    {
      goto LABEL_224;
    }

    v398 = plan;
    sub_2722CFB34(&v398, &qword_280882110, &qword_272382F00, "Pointer of espresso_plan_ref_t %s");
  }

  else
  {
    v377 = context;
    v45 = espresso_create_plan();
    if (!v45)
    {
      goto LABEL_224;
    }

    v398 = v45;
  }

  v46 = objc_opt_self();
  v47 = [v46 defaultManager];
  v48 = sub_2723777FC();
  v49 = [v47 fileExistsAtPath_];

  v379 = v16;
  v378 = v46;
  if (v49)
  {
    v50 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v51 = sub_2723777FC();
    v52 = [v50 initWithString_];

    v53 = [v52 stringByStandardizingPath];
    v54 = sub_27237782C();
    v56 = v55;

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 47;
    *(&v402 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v392, v393);
    MEMORY[0x2743C4AD0](0x737365727073652ELL, 0xED000074656E2E6FLL);
    v57 = v402;
    *&v402 = v54;
    *(&v402 + 1) = v56;

    MEMORY[0x2743C4AD0](v57, *(&v57 + 1));

    v59 = *(&v402 + 1);
    v58 = v402;
  }

  else
  {
    v60 = sub_2723777FC();
    v61 = [v60 pathExtension];

    sub_27237782C();
    v62 = sub_2723777FC();
    v63 = [v62 stringByDeletingPathExtension];

    sub_27237782C();
    sub_2722560E0();
    v65 = v64;
    v67 = v66;

    if (!v67)
    {
      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0x2068637573206F4ELL, 0xEF203A6C65646F6DLL);
      MEMORY[0x2743C4AD0](a1, a2);
      v113 = 0xD00000000000003BLL;
      v114 = 0x800000027238ADF0;
LABEL_47:
      MEMORY[0x2743C4AD0](v113, v114);
LABEL_48:
      v125 = v402;
      sub_2722032B4();
      swift_allocError();
      *v126 = v125;
LABEL_49:
      result = swift_willThrow();
      goto LABEL_50;
    }

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 47;
    *(&v402 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v392, v393);
    MEMORY[0x2743C4AD0](0x737365727073652ELL, 0xED000074656E2E6FLL);
    v68 = *(&v402 + 1);
    v69 = v402;
    *&v402 = v65;
    *(&v402 + 1) = v67;

    MEMORY[0x2743C4AD0](v69, v68);

    v59 = *(&v402 + 1);
    v58 = v402;
    v16 = v379;
    v46 = v378;
  }

  v70 = [v46 defaultManager];
  v393 = v58;
  v71 = sub_2723777FC();

  v72 = [v70 isReadableFileAtPath_];

  v73 = v391;
  if ((v72 & 1) == 0)
  {
    v92 = sub_2722C389C();
    (*(v16 + 16))(v31, v92, v73);

    v93 = sub_27237725C();
    v94 = sub_272377E8C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = v73;
      v97 = swift_slowAlloc();
      *&v402 = v97;
      *v95 = 136315138;
      v98 = v393;
      *(v95 + 4) = sub_2721FFD04(v393, v59, &v402);
      _os_log_impl(&dword_2721E4000, v93, v94, "Network not found in %s", v95, 0xCu);
      sub_2722039C8(v97);
      MEMORY[0x2743C69C0](v97, -1, -1);
      MEMORY[0x2743C69C0](v95, -1, -1);

      (*(v16 + 8))(v31, v96);
    }

    else
    {

      (*(v16 + 8))(v31, v73);
      v98 = v393;
    }

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 0xD00000000000002FLL;
    *(&v402 + 1) = 0x800000027238E710;
    MEMORY[0x2743C4AD0](v98, v59);

    goto LABEL_48;
  }

  if (v394)
  {
    v74 = sub_2722C389C();
    (*(v16 + 16))(v28, v74, v73);

    v75 = sub_27237725C();
    v76 = sub_272377E7C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v402 = v78;
      *v77 = 136315138;

      v79 = sub_2721FFD04(v393, v59, &v402);

      *(v77 + 4) = v79;
      v73 = v391;
      _os_log_impl(&dword_2721E4000, v75, v76, "Path for the model file is %s", v77, 0xCu);
      sub_2722039C8(v78);
      MEMORY[0x2743C69C0](v78, -1, -1);
      MEMORY[0x2743C69C0](v77, -1, -1);
    }

    (*(v16 + 8))(v28, v73);
  }

  v80 = sub_2722C389C();
  v81 = *(v16 + 16);
  v82 = v388;
  v375 = v80;
  v374 = v81;
  (v81)(v388);
  swift_bridgeObjectRetain_n();
  v83 = sub_27237725C();
  v84 = sub_272377E7C();

  v85 = os_log_type_enabled(v83, v84);
  v392 = v59;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v402 = v87;
    *v86 = 136315394;
    *(v86 + 4) = sub_2721FFD04(v393, v59, &v402);
    *(v86 + 12) = 2080;
    v88 = v390;
    if (v390)
    {
      v89 = 4542017;
    }

    else
    {
      v89 = 5591107;
    }

    v90 = sub_2721FFD04(v89, 0xE300000000000000, &v402);

    *(v86 + 14) = v90;
    _os_log_impl(&dword_2721E4000, v83, v84, "Loading model %s on %s", v86, 0x16u);
    swift_arrayDestroy();
    v91 = v87;
    v73 = v391;
    MEMORY[0x2743C69C0](v91, -1, -1);
    MEMORY[0x2743C69C0](v86, -1, -1);

    (*(v16 + 8))(v82, v73);
  }

  else
  {

    (*(v16 + 8))(v82, v73);
    v88 = v390;
  }

  v388 = v398;
  v105 = v88;
  if (v88)
  {
    v106 = sub_2722CB6D0();
  }

  else
  {
    v106 = sub_2722CB59C();
  }

  v107 = *v106;
  v108 = v389;
  v109 = sub_2722CB6DC();
  v111 = v110;

  if (v108)
  {

LABEL_50:
    v127 = *MEMORY[0x277D85DE8];
    return result;
  }

  v373 = v16 + 16;
  v405 = v109;
  v406 = v111;
  if (v394)
  {
    sub_2722CFB34(&v405, &qword_2808820F8, &qword_27237EA58, "Pointer of espresso_network_t %s");
  }

  *&v402 = v393;
  *(&v402 + 1) = v392;

  MEMORY[0x2743C4AD0](0x6769666E6F632ELL, 0xE700000000000000);
  v115 = v402;
  v397 = MEMORY[0x277D84F98];

  v116 = [v378 defaultManager];
  v117 = sub_2723777FC();

  v118 = [v116 isReadableFileAtPath_];

  if (!v118)
  {

    v128 = 0;
    v122 = 0;
    v121 = v388;
    v129 = 0;
LABEL_203:
    result = sub_2722CB7D4(v121);
    v345 = v387;
    if (!v129)
    {
      v356 = v377;
      if (!v377)
      {
        goto LABEL_229;
      }

      v357 = v405;
      v358 = v406;
      v359 = v397;
      v360 = v384;
      *v384 = v121;
      v360[1] = v356;
      v360[2] = v357;
      *(v360 + 6) = v358;
      v361 = v392;
      v362 = v393;
      v360[4] = v359;
      v360[5] = v362;
      v360[6] = v361;
      v360[7] = v128;
      v360[8] = v122;
      *(v360 + 72) = v105 & 1;
      goto LABEL_50;
    }

    v374(v345, v375, v73);
    v346 = v392;

    v347 = v129;
    v348 = sub_27237725C();
    v349 = sub_272377E8C();

    if (os_log_type_enabled(v348, v349))
    {
      v350 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *&v402 = v352;
      *v350 = 136315394;
      v353 = sub_2721FFD04(v393, v346, &v402);

      *(v350 + 4) = v353;
      *(v350 + 12) = 2112;
      v354 = v129;
      v355 = _swift_stdlib_bridgeErrorToNSError();
      *(v350 + 14) = v355;
      *v351 = v355;
      _os_log_impl(&dword_2721E4000, v348, v349, "Failed to call plan.build() for %s: %@", v350, 0x16u);
      sub_2721F40F0(v351, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v351, -1, -1);
      sub_2722039C8(v352);
      MEMORY[0x2743C69C0](v352, -1, -1);
      MEMORY[0x2743C69C0](v350, -1, -1);

      (*(v379 + 8))(v345, v391);
    }

    else
    {

      (*(v379 + 8))(v345, v73);
    }

    goto LABEL_49;
  }

  sub_27237787C();
  v378 = v115;
  v119 = sub_2723777EC();
  v121 = v388;
  v122 = *(&v115 + 1);
  v130 = v120;
  v372 = 0;
  *&v402 = v119;
  *(&v402 + 1) = v120;
  v131 = v381;
  sub_272376BBC();
  sub_272203AC4();
  v132 = sub_2723780AC();
  (*(v382 + 8))(v131, v383);
  v394 = *(v132 + 16);
  if (!v394)
  {

    v105 = v390;
    v128 = v378;
    v129 = v372;
    goto LABEL_203;
  }

  v381 = v130;
  v134 = 0;
  v389 = v132 + 32;
  v135 = 0x8000000272388610;
  v386 = 0x8000000272388650;
  v383 = 0x8000000272388630;
  v382 = 0x8000000272388670;
  v371 = 0x800000027238B060;
  v370 = 0x8000000272388580;
  v369 = 0x80000002723885A0;
  v366 = 0x80000002723885C0;
  v368 = (v379 + 8);
  *&v133 = 136315138;
  v367 = v133;
  v385 = v132;
  v376 = *(&v115 + 1);
  while (1)
  {
    if (v134 >= *(v132 + 16))
    {
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
    }

    v136 = (v389 + 16 * v134);
    v137 = *v136;
    v138 = v136[1];
    *&v402 = *v136;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000013;
    *(&v399 + 1) = v135;
    v139 = v135;

    v140 = MEMORY[0x277D837D0];
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v141 = sub_2723780BC();

      v404 = v140;
      if (v141[2] < 2uLL)
      {
        goto LABEL_210;
      }

      v143 = v141[6];
      v142 = v141[7];

      *&v402 = v143;
      *(&v402 + 1) = v142;
      sub_27221981C(&v402, &v399);
      v144 = v397;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v395 = v144;
      v146 = sub_27220038C(0xD000000000000013, v135);
      v148 = *(v144 + 16);
      v149 = (v147 & 1) == 0;
      v150 = __OFADD__(v148, v149);
      v151 = v148 + v149;
      if (v150)
      {
        goto LABEL_211;
      }

      v152 = v147;
      if (*(v144 + 24) >= v151)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v264 = v146;
          sub_27225B1A0();
          v146 = v264;
          v174 = v395;
          if (v152)
          {
            goto LABEL_73;
          }

LABEL_135:
          v174[(v146 >> 6) + 8] |= 1 << v146;
          v265 = (v174[6] + 16 * v146);
          *v265 = 0xD000000000000013;
          v265[1] = v135;
          sub_27221981C(&v399, (v174[7] + 32 * v146));
          v266 = v174[2];
          v150 = __OFADD__(v266, 1);
          v219 = v266 + 1;
          if (v150)
          {
            goto LABEL_214;
          }

          goto LABEL_136;
        }
      }

      else
      {
        sub_27225AD2C(v151, isUniquelyReferenced_nonNull_native);
        v146 = sub_27220038C(0xD000000000000013, v135);
        if ((v152 & 1) != (v153 & 1))
        {
          goto LABEL_236;
        }
      }

      v174 = v395;
      if (v152)
      {
LABEL_73:
        v175 = (v174[7] + 32 * v146);
        sub_2722039C8(v175);
        sub_27221981C(&v399, v175);
LABEL_137:
        v397 = v174;
        goto LABEL_138;
      }

      goto LABEL_135;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000016;
    *(&v399 + 1) = v386;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v154 = sub_2723780BC();

      v404 = v140;
      if (v154[2] < 2uLL)
      {
        goto LABEL_212;
      }

      v156 = v154[6];
      v155 = v154[7];

      *&v402 = v156;
      *(&v402 + 1) = v155;
      sub_27221981C(&v402, &v399);
      v157 = v397;
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v157;
      v159 = sub_27220038C(0xD000000000000016, v386);
      v161 = *(v157 + 16);
      v162 = (v160 & 1) == 0;
      v150 = __OFADD__(v161, v162);
      v163 = v161 + v162;
      if (v150)
      {
        goto LABEL_213;
      }

      v164 = v160;
      if (*(v157 + 24) >= v163)
      {
        if ((v158 & 1) == 0)
        {
          v279 = v159;
          sub_27225B1A0();
          v159 = v279;
          v186 = v395;
          if (v164)
          {
            goto LABEL_84;
          }

          goto LABEL_147;
        }
      }

      else
      {
        sub_27225AD2C(v163, v158);
        v159 = sub_27220038C(0xD000000000000016, v386);
        if ((v164 & 1) != (v165 & 1))
        {
          goto LABEL_236;
        }
      }

      v186 = v395;
      if (v164)
      {
LABEL_84:
        v187 = (v186[7] + 32 * v159);
        sub_2722039C8(v187);
        sub_27221981C(&v399, v187);
LABEL_149:
        v122 = v376;
        v397 = v186;
        goto LABEL_150;
      }

LABEL_147:
      v186[(v159 >> 6) + 8] |= 1 << v159;
      v280 = (v186[6] + 16 * v159);
      v281 = v386;
      *v280 = 0xD000000000000016;
      v280[1] = v281;
      sub_27221981C(&v399, (v186[7] + 32 * v159));
      v282 = v186[2];
      v150 = __OFADD__(v282, 1);
      v283 = v282 + 1;
      if (v150)
      {
        goto LABEL_216;
      }

      v186[2] = v283;
      goto LABEL_149;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000015;
    *(&v399 + 1) = v383;
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v166 = sub_2723780BC();

      if (v166[2] < 2uLL)
      {
        goto LABEL_215;
      }

      v167 = v166[6];
      v168 = v166[7];

      v169 = sub_2721F58F8(v167, v168);
      if (v170)
      {
        v171 = v397;
        v172 = 0xD000000000000015;
        v173 = &v409;
        goto LABEL_78;
      }

      v404 = MEMORY[0x277D83B88];
      *&v402 = v169;
      sub_27221981C(&v402, &v399);
      v198 = v397;
      v199 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v198;
      v146 = sub_27220038C(0xD000000000000015, v383);
      v201 = *(v198 + 16);
      v202 = (v200 & 1) == 0;
      v150 = __OFADD__(v201, v202);
      v203 = v201 + v202;
      if (v150)
      {
        goto LABEL_218;
      }

      v204 = v200;
      if (*(v198 + 24) >= v203)
      {
        if ((v199 & 1) == 0)
        {
          v297 = v146;
          sub_27225B1A0();
          v146 = v297;
          v174 = v395;
          if (v204)
          {
            goto LABEL_73;
          }

LABEL_103:
          v174[(v146 >> 6) + 8] |= 1 << v146;
          v216 = (v174[6] + 16 * v146);
          v217 = v383;
          *v216 = 0xD000000000000015;
          v216[1] = v217;
          sub_27221981C(&v399, (v174[7] + 32 * v146));
          v218 = v174[2];
          v150 = __OFADD__(v218, 1);
          v219 = v218 + 1;
          if (v150)
          {
            goto LABEL_220;
          }

LABEL_136:
          v174[2] = v219;
          goto LABEL_137;
        }
      }

      else
      {
        sub_27225AD2C(v203, v199);
        v146 = sub_27220038C(0xD000000000000015, v383);
        if ((v204 & 1) != (v205 & 1))
        {
          goto LABEL_236;
        }
      }

      v174 = v395;
      if (v204)
      {
        goto LABEL_73;
      }

      goto LABEL_103;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000019;
    *(&v399 + 1) = v382;
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v176 = sub_2723780BC();

      if (v176[2] < 2uLL)
      {
        goto LABEL_217;
      }

      v177 = v176[6];
      v178 = v176[7];

      v179 = sub_2721F58F8(v177, v178);
      if ((v180 & 1) == 0)
      {
        v404 = MEMORY[0x277D83B88];
        *&v402 = v179;
        sub_27221981C(&v402, &v399);
        v214 = v397;
        v215 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v214;
        sub_27225AFE4(&v399, 0xD000000000000019, v382, v215);
        v397 = v395;
LABEL_138:
        v122 = v376;
LABEL_150:
        v132 = v385;
        goto LABEL_151;
      }

      v171 = v397;
      v172 = 0xD000000000000019;
      v173 = &v408;
LABEL_78:
      v181 = sub_27220038C(v172, *(v173 - 32));
      if (v182)
      {
        v183 = v181;
        v184 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v171;
        if ((v184 & 1) == 0)
        {
          sub_27225B1A0();
          v171 = v395;
        }

        v185 = *(*(v171 + 48) + 16 * v183 + 8);

        sub_27221981C((*(v171 + 56) + 32 * v183), &v399);
        sub_2722CFF40(v183, v171);
        v397 = v171;
      }

      else
      {
        v399 = 0u;
        v400 = 0u;
      }

      sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
      goto LABEL_138;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<InputStates>");
    HIWORD(v399) = -4864;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v188 = sub_2723780BC();

      if (v188[2] < 2uLL)
      {
        goto LABEL_219;
      }

      v189 = v188[6];
      v190 = v188[7];

      *&v402 = 44;
      *(&v402 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v191);
      *(&v363 - 2) = &v402;
      v192 = v372;
      v193 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v363 - 4), v189, v190, &v402);
      v372 = v192;
      v404 = sub_2721F065C(&qword_280881890, &unk_272382EF0);
      *&v402 = v193;
      sub_27221981C(&v402, &v399);
      v194 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v194;
      v196 = 0xED00003E73657461;
      v197 = 0x74537475706E493CLL;
      goto LABEL_98;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<OutputStates>");
    HIBYTE(v399) = -18;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v206 = sub_2723780BC();

      if (v206[2] < 2uLL)
      {
        goto LABEL_221;
      }

      v207 = v206[6];
      v208 = v206[7];

      *&v402 = 44;
      *(&v402 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v209);
      *(&v363 - 2) = &v402;
      v210 = v372;
      v211 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, (&v363 - 4), v207, v208, &v402);
      v372 = v210;
      v404 = sub_2721F065C(&qword_280881890, &unk_272382EF0);
      *&v402 = v211;
      sub_27221981C(&v402, &v399);
      v212 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v212;
      v197 = 0x5374757074754F3CLL;
      v213 = 0x3E7365746174;
      goto LABEL_97;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<InputFeats>");
    BYTE13(v399) = 0;
    HIWORD(v399) = -5120;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v220 = sub_2723780BC();

      v404 = v140;
      if (v220[2] < 2uLL)
      {
        goto LABEL_222;
      }

      v222 = v220[6];
      v221 = v220[7];

      *&v402 = v222;
      *(&v402 + 1) = v221;
      sub_27221981C(&v402, &v399);
      v223 = v397;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v223;
      v225 = 0x65467475706E493CLL;
      v226 = 0xEC0000003E737461;
      goto LABEL_122;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<ConformerOut>");
    HIBYTE(v399) = -18;
    if (sub_27237813C())
    {
      break;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0x74736F504354433CLL;
    *(&v399 + 1) = 0xEF3E73726F697265;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v231 = sub_2723780BC();

      v404 = v140;
      if (v231[2] < 2uLL)
      {
        goto LABEL_225;
      }

      v233 = v231[6];
      v232 = v231[7];

      *&v402 = v233;
      *(&v402 + 1) = v232;
      sub_27221981C(&v402, &v399);
      v234 = v397;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v234;
      v225 = 0x74736F504354433CLL;
      v226 = 0xEF3E73726F697265;
      goto LABEL_122;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<OutputData>");
    BYTE13(v399) = 0;
    HIWORD(v399) = -5120;
    v365 = 0xEC0000003E617461;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v235 = sub_2723780BC();

      v404 = v140;
      if (v235[2] < 2uLL)
      {
        goto LABEL_226;
      }

      v236 = v235[6];
      v237 = v235[7];

      *&v402 = v236;
      *(&v402 + 1) = v237;
      sub_27221981C(&v402, &v399);
      v238 = v397;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v238;
      v225 = 0x4474757074754F3CLL;
      goto LABEL_121;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0x61447475706E493CLL;
    *(&v399 + 1) = 0xEB000000003E6174;
    v365 = 0xEB000000003E6174;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v239 = sub_2723780BC();

      v404 = v140;
      if (v239[2] < 2uLL)
      {
        goto LABEL_227;
      }

      v240 = v239[6];
      v241 = v239[7];

      *&v402 = v240;
      *(&v402 + 1) = v241;
      sub_27221981C(&v402, &v399);
      v242 = v397;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v242;
      v225 = 0x61447475706E493CLL;
LABEL_121:
      v226 = v365;
LABEL_122:
      sub_27225AFE4(&v399, v225, v226, v224);
      v397 = v395;
      v122 = v376;
      v132 = v385;
      goto LABEL_151;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000011;
    *(&v399 + 1) = v371;
    if (sub_27237813C())
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v243 = sub_2723780BC();

      if (v243[2] < 2uLL)
      {
        goto LABEL_228;
      }

      v244 = v243[6];
      v245 = v243[7];

      *&v402 = v244;
      *(&v402 + 1) = v245;
      *&v399 = 44;
      *(&v399 + 1) = 0xE100000000000000;
      v246 = sub_2723780BC();

      v247 = v246[2];
      if (v247 == 2)
      {
LABEL_143:

        goto LABEL_99;
      }

      if (v247 != 4)
      {
        v374(v380, v375, v391);

        v272 = sub_27237725C();
        v273 = sub_272377E8C();

        if (os_log_type_enabled(v272, v273))
        {
          v274 = swift_slowAlloc();
          v275 = swift_slowAlloc();
          *&v402 = v275;
          *v274 = v367;
          v365 = MEMORY[0x2743C4C60](v246, MEMORY[0x277D837D0]);
          v277 = v276;

          v278 = sub_2721FFD04(v365, v277, &v402);

          *(v274 + 4) = v278;
          _os_log_impl(&dword_2721E4000, v272, v273, "Invalid ouput shape: %s", v274, 0xCu);
          sub_2722039C8(v275);
          MEMORY[0x2743C69C0](v275, -1, -1);
          MEMORY[0x2743C69C0](v274, -1, -1);
        }

        else
        {
        }

        (*v368)(v380, v391);
        goto LABEL_99;
      }

      v404 = sub_2721F065C(&qword_280882108, &unk_27237EA60);
      v248 = swift_allocObject();
      *&v402 = v248;
      v249 = v246[8];
      v250 = v246[9];

      *(v248 + 16) = sub_2721F58F8(v249, v250);
      *(v248 + 24) = v251 & 1;
      if (v246[2] < 4uLL)
      {
        goto LABEL_231;
      }

      v253 = v246[10];
      v252 = v246[11];

      *(v248 + 32) = sub_2721F58F8(v253, v252);
      *(v248 + 40) = v254 & 1;
      sub_27221981C(&v402, &v399);
      v255 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v255;
      v197 = 0xD000000000000011;
      v256 = &v401;
      goto LABEL_158;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000011;
    *(&v399 + 1) = v370;
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v257 = sub_2723780BC();

      if (v257[2] < 2uLL)
      {
        goto LABEL_230;
      }

      v258 = v257[6];
      v259 = v257[7];

      v260 = sub_2721F58F8(v258, v259);
      if (v261)
      {
        v262 = 0xD000000000000011;
        v263 = v370;
        goto LABEL_133;
      }

      v404 = MEMORY[0x277D83B88];
      *&v402 = v260;
      sub_27221981C(&v402, &v399);
      v289 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v289;
      v197 = 0xD000000000000011;
      v256 = &v400 + 1;
LABEL_158:
      v196 = *(v256 - 32);
      goto LABEL_98;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    *&v399 = 0xD000000000000018;
    *(&v399 + 1) = v369;
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v267 = sub_2723780BC();

      if (v267[2] < 2uLL)
      {
        goto LABEL_232;
      }

      v268 = v267[6];
      v269 = v267[7];

      v270 = sub_2721F58F8(v268, v269);
      if (v271)
      {
        sub_2722CFE9C(0xD000000000000018, v369, &v399);
        sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
      }

      else
      {
        v404 = MEMORY[0x277D83B88];
        *&v402 = v270;
        sub_27221981C(&v402, &v399);
        v295 = v397;
        v296 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v295;
        sub_27225AFE4(&v399, 0xD000000000000018, v369, v296);
        v397 = v395;
      }

      v122 = v376;
      v132 = v385;
      goto LABEL_151;
    }

    *&v402 = v137;
    *(&v402 + 1) = v138;
    strcpy(&v399, "<FrameOverlap>");
    HIBYTE(v399) = -18;
    if (sub_27237813C())
    {
      *&v399 = v137;
      *(&v399 + 1) = v138;
      v395 = 32;
      v396 = 0xE100000000000000;
      v284 = sub_2723780BC();

      if (v284[2] < 2uLL)
      {
        goto LABEL_233;
      }

      v285 = v284[6];
      v286 = v284[7];

      v287 = sub_2721F58F8(v285, v286);
      if (v288)
      {
        v262 = 0x764F656D6172463CLL;
        v263 = 0xEE003E70616C7265;
        goto LABEL_133;
      }

      v404 = MEMORY[0x277D83B88];
      *&v402 = v287;
      sub_27221981C(&v402, &v399);
      v303 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v303;
      v197 = 0x764F656D6172463CLL;
      v213 = 0x3E70616C7265;
    }

    else
    {
      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 0x69447475706E493CLL;
      *(&v399 + 1) = 0xEA00000000003E6DLL;
      if (sub_27237813C())
      {
        *&v399 = v137;
        *(&v399 + 1) = v138;
        v395 = 32;
        v396 = 0xE100000000000000;
        v290 = sub_2723780BC();

        if (v290[2] < 2uLL)
        {
          goto LABEL_234;
        }

        v291 = v290[6];
        v292 = v290[7];

        v293 = sub_2721F58F8(v291, v292);
        if ((v294 & 1) == 0)
        {
          v404 = MEMORY[0x277D83B88];
          *&v402 = v293;
          sub_27221981C(&v402, &v399);
          v306 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v306;
          v197 = 0x69447475706E493CLL;
          v196 = 0xEA00000000003E6DLL;
          goto LABEL_98;
        }

        v262 = 0x69447475706E493CLL;
        v263 = 0xEA00000000003E6DLL;
LABEL_133:
        sub_2722CFE9C(v262, v263, &v399);
        sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
        goto LABEL_99;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 0x4474757074754F3CLL;
      *(&v399 + 1) = 0xEB000000003E6D69;
      if (sub_27237813C())
      {
        *&v399 = v137;
        *(&v399 + 1) = v138;
        v395 = 32;
        v396 = 0xE100000000000000;
        v298 = sub_2723780BC();

        if (v298[2] < 2uLL)
        {
          goto LABEL_235;
        }

        v299 = v298[6];
        v300 = v298[7];

        v301 = sub_2721F58F8(v299, v300);
        if ((v302 & 1) == 0)
        {
          v404 = MEMORY[0x277D83B88];
          *&v402 = v301;
          sub_27221981C(&v402, &v399);
          v309 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v309;
          v197 = 0x4474757074754F3CLL;
          v196 = 0xEB000000003E6D69;
          goto LABEL_98;
        }

        v262 = 0x4474757074754F3CLL;
        v263 = 0xEB000000003E6D69;
        goto LABEL_133;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      strcpy(&v399, "<InputFeats>");
      BYTE13(v399) = 0;
      HIWORD(v399) = -5120;
      if (sub_27237813C())
      {
        *&v402 = v137;
        *(&v402 + 1) = v138;
        *&v399 = 32;
        *(&v399 + 1) = 0xE100000000000000;
        v304 = sub_2723780BC();

        v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        *&v402 = v304;
        sub_27221981C(&v402, &v399);
        v305 = v397;
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v305;
        v197 = 0x65467475706E493CLL;
        v196 = 0xEC0000003E737461;
        goto LABEL_98;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 0x3E6B73614D3CLL;
      *(&v399 + 1) = 0xE600000000000000;
      if (sub_27237813C())
      {
        *&v402 = v137;
        *(&v402 + 1) = v138;
        *&v399 = 32;
        *(&v399 + 1) = 0xE100000000000000;
        v307 = sub_2723780BC();

        v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        *&v402 = v307;
        sub_27221981C(&v402, &v399);
        v308 = v397;
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v308;
        v197 = 0x3E6B73614D3CLL;
        v196 = 0xE600000000000000;
        goto LABEL_98;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 0xD000000000000010;
      *(&v399 + 1) = v366;
      if (sub_27237813C())
      {
        *&v402 = v137;
        *(&v402 + 1) = v138;
        *&v399 = 32;
        *(&v399 + 1) = 0xE100000000000000;
        v310 = sub_2723780BC();

        v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        *&v402 = v310;
        sub_27221981C(&v402, &v399);
        v311 = v397;
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v395 = v311;
        v197 = 0xD000000000000010;
        v256 = &v396;
        goto LABEL_158;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      strcpy(&v399, "<ConformerOut>");
      HIBYTE(v399) = -18;
      if ((sub_27237813C() & 1) == 0)
      {
        *&v402 = v137;
        *(&v402 + 1) = v138;
        *&v399 = 0x74736F504354433CLL;
        *(&v399 + 1) = 0xEF3E73726F697265;
        if (sub_27237813C())
        {
          *&v402 = v137;
          *(&v402 + 1) = v138;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v314 = sub_2723780BC();

          v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
          *&v402 = v314;
          sub_27221981C(&v402, &v399);
          v315 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v315;
          v197 = 0x74736F504354433CLL;
          v196 = 0xEF3E73726F697265;
        }

        else
        {
          *&v402 = v137;
          *(&v402 + 1) = v138;
          strcpy(&v399, "<StateShapes>");
          HIWORD(v399) = -4864;
          if ((sub_27237813C() & 1) == 0)
          {
            goto LABEL_143;
          }

          *&v402 = v137;
          *(&v402 + 1) = v138;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v316 = sub_2723780BC();

          if (v316[2] < 2uLL)
          {
            goto LABEL_237;
          }

          v317 = v316[6];
          v318 = v316[7];

          v319 = sub_2722D00F0(1uLL, v317, v318);
          v321 = v320;

          result = sub_27237806C();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_238;
          }

          result = sub_27237804C();
          if (v322)
          {
            v323 = v321;
          }

          else
          {
            v323 = result;
          }

          if (v323 >> 14 < v319 >> 14)
          {
            goto LABEL_239;
          }

          v324 = sub_27237808C();
          v326 = v325;
          v328 = v327;
          v330 = v329;

          *&v402 = v324;
          *(&v402 + 1) = v326;
          v403 = v328;
          v404 = v330;
          *&v399 = 2632745;
          *(&v399 + 1) = 0xE300000000000000;
          sub_2722D01A0();
          sub_2722D01F4();
          v331 = sub_272377DDC();

          v363 = v331;
          v332 = *(v331 + 16);
          if (v332)
          {
            *&v402 = MEMORY[0x277D84F90];
            sub_27220056C(0, v332, 0);
            v333 = v402;
            v334 = (v363 + 56);
            do
            {
              v336 = *(v334 - 3);
              v335 = *(v334 - 2);
              v338 = *(v334 - 1);
              v337 = *v334;

              v365 = MEMORY[0x2743C4A20](v336, v335, v338, v337);
              v364 = v339;

              *&v402 = v333;
              v341 = *(v333 + 16);
              v340 = *(v333 + 24);
              if (v341 >= v340 >> 1)
              {
                sub_27220056C((v340 > 1), v341 + 1, 1);
                v333 = v402;
              }

              *(v333 + 16) = v341 + 1;
              v342 = v333 + 16 * v341;
              v343 = v364;
              *(v342 + 32) = v365;
              *(v342 + 40) = v343;
              v334 += 4;
              --v332;
            }

            while (v332);
          }

          else
          {

            v333 = MEMORY[0x277D84F90];
          }

          v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
          *&v402 = v333;
          sub_27221981C(&v402, &v399);
          v344 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v344;
          v197 = 0x685365746174533CLL;
          v196 = 0xED00003E73657061;
        }

        goto LABEL_98;
      }

      *&v402 = v137;
      *(&v402 + 1) = v138;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v312 = sub_2723780BC();

      v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      *&v402 = v312;
      sub_27221981C(&v402, &v399);
      v313 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v313;
      v197 = 0x6D726F666E6F433CLL;
      v213 = 0x3E74754F7265;
    }

LABEL_97:
    v196 = v213 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_98:
    sub_27225AFE4(&v399, v197, v196, v195);
    v397 = v395;
LABEL_99:
    v122 = v376;
    v132 = v385;
    v135 = v139;
LABEL_151:
    if (++v134 == v394)
    {

      v73 = v391;
      v105 = v390;
      v121 = v388;
      v129 = v372;
      v128 = v378;
      goto LABEL_203;
    }
  }

  *&v402 = v137;
  *(&v402 + 1) = v138;
  *&v399 = 32;
  *(&v399 + 1) = 0xE100000000000000;
  v227 = sub_2723780BC();

  v404 = v140;
  if (v227[2] >= 2uLL)
  {
    v229 = v227[6];
    v228 = v227[7];

    *&v402 = v229;
    *(&v402 + 1) = v228;
    sub_27221981C(&v402, &v399);
    v230 = v397;
    v224 = swift_isUniquelyReferenced_nonNull_native();
    v395 = v230;
    v225 = 0x6D726F666E6F433CLL;
    v226 = 0xEE003E74754F7265;
    goto LABEL_122;
  }

  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  result = sub_2723786BC();
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
  return result;
}

uint64_t sub_2722CFB34(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2722C389C();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_27237725C();
  v15 = sub_272377E7C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = a1;
    v26 = v18;
    *v17 = 136315138;
    sub_2721F065C(a2, a3);
    v19 = sub_27237789C();
    v21 = sub_2721FFD04(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2721E4000, v14, v15, v24, v17, 0xCu);
    sub_2722039C8(v18);
    MEMORY[0x2743C69C0](v18, -1, -1);
    MEMORY[0x2743C69C0](v17, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_2722CFD2C()
{
  result = qword_280882988;
  if (!qword_280882988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882988);
  }

  return result;
}

__n128 sub_2722CFD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2722CFDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722CFDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2722CFE9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_27220038C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27225B1A0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_27221981C((*(v12 + 56) + 32 * v9), a3);
    sub_2722CFF40(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2722CFF40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_27237874C();

      sub_27237790C();
      v14 = sub_27237878C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2722D00F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_27237793C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_272377A5C();
}

unint64_t sub_2722D01A0()
{
  result = qword_280882990;
  if (!qword_280882990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882990);
  }

  return result;
}

unint64_t sub_2722D01F4()
{
  result = qword_280882998;
  if (!qword_280882998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882998);
  }

  return result;
}

uint64_t VANRNameConfiguration.init(id:humanReadableName:enrollments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for VANRNameConfiguration(0);
  v14 = (a6 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v13[6]) = a4;
  v15 = v13[7];
  v16 = sub_272376EBC();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a5, v16);
}

uint64_t VANRNameConfiguration.humanReadableName.getter()
{
  v1 = (v0 + *(type metadata accessor for VANRNameConfiguration(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t VANRNameConfiguration.enrollments.getter()
{
  v1 = *(v0 + *(type metadata accessor for VANRNameConfiguration(0) + 24));
}

uint64_t VANRNameConfiguration.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VANRNameConfiguration(0) + 28);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

int *VANRCollectedEnrollment.init(id:audioSample:source:debugAudioFileLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for VANRCollectedEnrollment(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = v11;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t _s12VoiceActions21VANRNameConfigurationV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376E5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id VANRCollectedEnrollment.audioSample.getter()
{
  v1 = *(v0 + *(type metadata accessor for VANRCollectedEnrollment(0) + 20));

  return v1;
}

uint64_t VANRCollectedEnrollment.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VANRCollectedEnrollment(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VANRCollectedEnrollment.debugAudioFileLocation.getter()
{
  v1 = (v0 + *(type metadata accessor for VANRCollectedEnrollment(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

VoiceActions::VANREnrollmentAudioSource_optional __swiftcall VANREnrollmentAudioSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VANREnrollmentAudioSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x79426E656B6F7073;
  }

  else
  {
    result = 0x70536F5474786574;
  }

  *v0;
  return result;
}

uint64_t sub_2722D06F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79426E656B6F7073;
  }

  else
  {
    v4 = 0x70536F5474786574;
  }

  if (v3)
  {
    v5 = 0xEC00000068636565;
  }

  else
  {
    v5 = 0xEC00000072657355;
  }

  if (*a2)
  {
    v6 = 0x79426E656B6F7073;
  }

  else
  {
    v6 = 0x70536F5474786574;
  }

  if (*a2)
  {
    v7 = 0xEC00000072657355;
  }

  else
  {
    v7 = 0xEC00000068636565;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27237865C();
  }

  return v9 & 1;
}

uint64_t sub_2722D07AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e ANE for ";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v3)
    {
      v4 = "e2eThenSpeechApi";
    }

    else
    {
      v4 = "e ANE for ";
    }
  }

  else if (a1 == 2)
  {
    v4 = "e2eDtwThenSpeechApi";
    v5 = 0xD00000000000001ELL;
  }

  else if (a1 == 3)
  {
    v4 = "e2eVadWeightedDtwThenSpeechApi";
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "speechApiStreamingOnly";
    v5 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v2 = "e2eThenSpeechApi";
    }
  }

  else if (a2 == 2)
  {
    v2 = "e2eDtwThenSpeechApi";
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = "e2eVadWeightedDtwThenSpeechApi";
    if (a2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2 != 3)
    {
      v2 = "speechApiStreamingOnly";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27237865C();
  }

  return v7 & 1;
}

uint64_t sub_2722D0914()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D09A8()
{
  *v0;
  sub_27237790C();
}

uint64_t sub_2722D0A28()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D0AB8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2722D0B18(uint64_t *a1@<X8>)
{
  v2 = 0x70536F5474786574;
  if (*v1)
  {
    v2 = 0x79426E656B6F7073;
  }

  v3 = 0xEC00000068636565;
  if (*v1)
  {
    v3 = 0xEC00000072657355;
  }

  *a1 = v2;
  a1[1] = v3;
}

VoiceActions::VANRModelSelection_optional __swiftcall VANRModelSelection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VANRModelSelection.rawValue.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2722D0C7C()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D0D50()
{
  *v0;
  *v0;
  *v0;
  sub_27237790C();
}

uint64_t sub_2722D0E10()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_2722D0EEC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "e ANE for ";
  v5 = "e2eDtwThenSpeechApi";
  v6 = 0xD00000000000001ELL;
  v7 = "e2eVadWeightedDtwThenSpeechApi";
  v8 = 0xD000000000000016;
  if (v3 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = "speechApiStreamingOnly";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000013;
    v4 = "e2eThenSpeechApi";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t VANREnrollmentOptimization.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27237840C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2722D10C0()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722D1134()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722D1188@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  *a2 = v5 != 0;
  return result;
}

uint64_t static VANRSystemConfiguration.buildDefaultForNameRecognition()()
{
  v0 = sub_272376D5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VANRSystemConfigCodable();
  sub_272318964();
  v5 = static VANRSystemConfigCodable.load(_:)(v4);
  (*(v1 + 8))(v4, v0);
  if (!v5)
  {
    type metadata accessor for VANRSystemConfiguration();
    v5 = swift_allocObject();
    _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  }

  return v5;
}

uint64_t sub_2722D13B4()
{
  v0 = swift_allocObject();
  _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  return v0;
}

uint64_t static VANRSystemConfiguration.buildForUnitTests()()
{
  type metadata accessor for VANRSystemConfiguration();
  v0 = swift_allocObject();
  _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  (*(*v0 + 840))(1);
  (*(*v0 + 672))(0);
  (*(*v0 + 648))(0);
  (*(*v0 + 792))(0, 0, 1);
  return v0;
}

uint64_t sub_2722D1540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D161C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *sub_2722D165C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D16C0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 384))(&v4);
}

uint64_t sub_2722D1720@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_2722D1764(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

void *sub_2722D17F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D1858(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 408))(&v4);
}

uint64_t sub_2722D18B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 18);
  return result;
}

uint64_t sub_2722D18FC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_2722D198C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1A68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t sub_2722D1AF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1BD4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

uint64_t sub_2722D1D3C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2722D1D7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D1DD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 504);

  return v3(v4);
}

uint64_t sub_2722D1E2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1F08(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2722D1F48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 544))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D21DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D22B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_2722D22F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D23D4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t sub_2722D2464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 688))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D24B8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 696);

  return v3(v4);
}

uint64_t sub_2722D2514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2722D261C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  *(v1 + 92) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2722D2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 736))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2722D276C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  *(v1 + 100) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2722D27B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 760))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D288C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 101) = a1;
  return result;
}

uint64_t sub_2722D291C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 784))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_2722D29D4()
{
  swift_beginAccess();
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  return result;
}

uint64_t sub_2722D2A0C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  return result;
}

uint64_t sub_2722D2A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2B3C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 121) = a1;
  return result;
}

uint64_t sub_2722D2BCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 832))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2CA4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 122) = a1;
  return result;
}

uint64_t sub_2722D2D34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 856))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2E0C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 123) = a1;
  return result;
}

uint64_t sub_2722D2E9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 880))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2F74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_2722D3004@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D30DC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 125) = a1;
  return result;
}

uint64_t sub_2722D316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 928))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3224()
{
  swift_beginAccess();
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_2722D325C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2 & 1;
  return result;
}

void *sub_2722D32B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 952))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D3314(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 960))(&v4);
}

uint64_t sub_2722D3374@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 137);
  return result;
}

uint64_t sub_2722D33B8(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 137) = v2;
  return result;
}

void *sub_2722D3448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 976))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D34AC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 984))(&v4);
}

uint64_t sub_2722D350C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 138);
  return result;
}

uint64_t sub_2722D3550(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 138) = v2;
  return result;
}

uint64_t sub_2722D35E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1000))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D36B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 139) = a1;
  return result;
}

uint64_t sub_2722D3748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1024))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3800()
{
  swift_beginAccess();
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_2722D3838(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 144) = a1;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t sub_2722D388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1048))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3944()
{
  swift_beginAccess();
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t sub_2722D397C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t sub_2722D39D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1072))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D3AA8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 169) = a1;
  return result;
}

uint64_t sub_2722D3B38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1096))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D3C10(char a1)
{
  result = swift_beginAccess();
  *(v1 + 170) = a1;
  return result;
}

uint64_t sub_2722D3CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3D58()
{
  swift_beginAccess();
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t sub_2722D3D90(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t sub_2722D3DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1144))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3EAC(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v3 = (*(*v1 + 712))();
  if ((v3 & 0x100000000) == 0)
  {
    *(a1 + 52) = v3;
  }

  v4 = (*(*v1 + 736))();
  if ((v4 & 0x100000000) == 0)
  {
    *(a1 + 8) = v4;
  }

  v5 = (*(*v1 + 760))();
  if (v5 != 2)
  {
    *(a1 + 12) = v5 & 1;
  }

  v6 = (*(*v1 + 808))();
  if (v6 != 2)
  {
    *(a1 + 13) = v6 & 1;
  }

  v7 = (*(*v1 + 832))();
  if (v7 != 2)
  {
    *(a1 + 49) = v7 & 1;
  }

  v8 = (*(*v1 + 856))();
  if (v8 != 2)
  {
    *(a1 + 72) = v8;
  }

  v9 = (*(*v1 + 880))();
  if (v9 != 2)
  {
    *(a1 + 73) = v9;
  }

  v10 = (*(*v1 + 904))();
  if (v10 != 2)
  {
    *(a1 + 74) = v10;
  }

  v11 = (*(*v1 + 928))();
  if ((v12 & 1) == 0)
  {
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
  }

  v13 = (*(*v1 + 952))(&v28 + 1, v11);
  if (BYTE1(v28) != 8)
  {
    *(a1 + 88) = BYTE1(v28);
  }

  v14 = (*(*v1 + 976))(&v28, v13);
  if (v28 != 16)
  {
    *(a1 + 89) = v28;
  }

  v15 = (*(*v1 + 1000))(v14);
  if (v15 != 2)
  {
    *(a1 + 90) = v15 & 1;
  }

  v16 = (*(*v1 + 1024))();
  if ((v17 & 1) == 0)
  {
    *(a1 + 96) = v16;
    *(a1 + 104) = 0;
  }

  v18 = (*(*v1 + 1048))(v16);
  if ((v19 & 1) == 0)
  {
    *(a1 + 112) = v18;
    *(a1 + 120) = 0;
  }

  v20 = (*(*v1 + 1072))(v18);
  if (v20 != 2)
  {
    *(a1 + 121) = v20 & 1;
  }

  v21 = (*(*v1 + 1096))();
  if (v21 != 2)
  {
    *(a1 + *(type metadata accessor for VARuntimeParameters() + 116)) = v21 & 1;
  }

  v22 = (*(*v1 + 1120))();
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v22 = type metadata accessor for VARuntimeParameters();
    *(a1 + *(v22 + 112)) = v24;
  }

  result = (*(*v1 + 1144))(v22);
  if ((v26 & 1) == 0)
  {
    v27 = result;
    result = type metadata accessor for VARuntimeParameters();
    *(a1 + *(result + 120)) = v27;
  }

  return result;
}

uint64_t VANRSystemConfiguration.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t VANRSystemConfiguration.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t _s12VoiceActions23VANRSystemConfigCodableCACycfc_0()
{
  *(v0 + 16) = 16843777;
  *(v0 + 20) = 1;
  *(v0 + 24) = 1065353216;
  type metadata accessor for VAStringMatchingStrategy(0);
  v3 = 1;
  *(v0 + 32) = static VAStringMatchingStrategy.build(name:)(&v3);
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 1;
  *(v0 + 72) = 1;
  *(v0 + 80) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = -1049624576;
  *(v0 + 100) = 512;
  *(v0 + 104) = xmmword_272382F10;
  *(v0 + 120) = 0;
  *(v0 + 121) = 33686018;
  *(v0 + 125) = 2;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  static VASpeechBiasOptions.defaultForNameRecognition()(&v2);
  *(v0 + 137) = v2;
  *(v0 + 138) = 259;
  *(v0 + 144) = 0x3FF999999999999ALL;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 167) = 0;
  *(v0 + 176) = 10;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0x3FB3333333333333;
  *(v0 + 200) = 0;
  return v0;
}