void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1C790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1C790);
    }
  }
}

uint64_t sub_1AB0()
{
  v0 = sub_12A70();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12A80();
  qword_1CFD0 = result;
  return result;
}

uint64_t sub_1B04()
{
  sub_2308(&qword_1C7A0, &qword_13748);
  v0 = *(sub_128B0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_136B0;
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_2704();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  result = sub_128A0();
  qword_1CFD8 = v3;
  return result;
}

uint64_t sub_1FEC()
{
  v0 = sub_128B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2308(&qword_1C798, &qword_13740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_136C0;
  *(inited + 32) = 0x45442D6564;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x55412D6E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x41432D6E65;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x42472D6E65;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x4E492D6E65;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D6E65;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x53452D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x584D2D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x53552D7365;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x52462D7266;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x504A2D616ALL;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x4E432D687ALL;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x4B482D687ALL;
  *(inited + 232) = 0xE500000000000000;
  v14 = &_swiftEmptyArrayStorage;
  sub_24A8(0, 13, 0);
  v7 = 0;
  v8 = v14;
  do
  {
    v9 = *(inited + v7 + 32);
    v10 = *(inited + v7 + 40);

    sub_128A0();
    v14 = v8;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_24A8(v11 > 1, v12 + 1, 1);
      v8 = v14;
    }

    *(v8 + 16) = v12 + 1;
    (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v5, v0);
    v7 += 16;
  }

  while (v7 != 208);
  swift_setDeallocating();
  result = sub_2350();
  qword_1CFE0 = v8;
  return result;
}

uint64_t sub_228C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22DC@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2308(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2350()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_23AC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_2728();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_2728();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

char *sub_2474(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[40 * a2] <= __dst)
  {
    return memmove(__dst, __src, 40 * a2);
  }

  return __src;
}

size_t sub_24A8(size_t a1, int64_t a2, char a3)
{
  result = sub_253C(a1, a2, a3, *v3, &qword_1C7A0, &qword_13748, &type metadata accessor for Locale, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

size_t sub_24F0(size_t a1, int64_t a2, char a3)
{
  result = sub_253C(a1, a2, a3, *v3, &unk_1CBF0, &unk_13750, type metadata accessor for NotebookSuggestion, type metadata accessor for NotebookSuggestion);
  *v3 = result;
  return result;
}

size_t sub_253C(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2308(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_23AC(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_2704()
{

  return sub_128A0();
}

__n128 sub_273C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27F0()
{
  sub_2308(&qword_1C9A0, qword_13858);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_13760;
  *(v1 + 56) = &type metadata for Bool;
  *(v1 + 32) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2888()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_28B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2944;

  return sub_27D4();
}

uint64_t sub_2944(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_2A48()
{
  result = qword_1C990;
  if (!qword_1C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C990);
  }

  return result;
}

unint64_t sub_2AA0()
{
  result = qword_1C998;
  if (!qword_1C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C998);
  }

  return result;
}

uint64_t sub_2AF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2B48(v1);
  *(a1 + 24) = &type metadata for AddTriggerIntentParameters;
  *(a1 + 32) = &off_18D70;
  *a1 = result & 1;
  *(a1 + 1) = result > 0xFFu;
  return result;
}

uint64_t sub_2B48(void *a1)
{
  v2 = [a1 temporalEventTrigger];
  v3 = v2;
  if (v2)
  {
  }

  v4 = [a1 spatialEventTrigger];

  if (v4)
  {

    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | (v3 != 0);
}

void sub_2BF4()
{
  sub_5E24();
  v1 = v0;
  v2 = sub_12B10();
  sub_5C78();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7, v8);
  sub_5CE8();
  v47 = (v9 - v10);
  __chkstk_darwin(v11, v12);
  v14 = &v46 - v13;
  v15 = sub_12A50();
  sub_5C78();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20, v21);
  sub_5CE8();
  v24 = v22 - v23;
  __chkstk_darwin(v25, v26);
  v28 = &v46 - v27;
  v29 = *(v4 + 16);
  v48 = v1;
  v29(v14, v1, v2);
  if ((*(v4 + 88))(v14, v2) == enum case for InteractionIntents.siriInteractionIntents(_:))
  {
    (*(v4 + 96))(v14, v2);
    v30 = *&v14[*(sub_2308(&qword_1CA58, &qword_139D0) + 48)];

    (*(v17 + 32))(v28, v14, v15);
    (*(v17 + 16))(v24, v28, v15);
    sub_304C();
    (*(v4 + 8))(v48, v2);
    (*(v17 + 8))(v28, v15);
  }

  else
  {
    v46 = *(v4 + 8);
    v46(v14, v2);
    if (qword_1C778 != -1)
    {
      sub_5CC8();
    }

    v31 = sub_12D60();
    sub_4DE0(v31, qword_1CFF8);
    v32 = v47;
    v33 = v48;
    v29(v47, v48, v2);
    v34 = sub_12D40();
    v35 = sub_12E40();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      sub_4F74(&qword_1CA50, &type metadata accessor for InteractionIntents);
      v38 = sub_12F10();
      v40 = v39;
      v41 = v46;
      v46(v32, v2);
      v42 = sub_47A8(v38, v40, &v49);

      *(v36 + 4) = v42;
      sub_5DCC(&dword_0, v43, v44, "[AddTriggerIntentParameters] Cannot get executedIntent from InteractionIntents, default triggers to false: %s");
      sub_58CC(v37);
      sub_5E3C();
      v33 = v48;
      sub_5E3C();
    }

    else
    {

      v41 = v46;
      v46(v32, v2);
    }

    sub_2308(&qword_1CA40, &unk_139C0);
    v45 = sub_12D90();
    sub_34C8(v45);
    v41(v33, v2);
  }

  sub_5DEC();
}

void sub_304C()
{
  sub_5E24();
  v2 = v1;
  v3 = sub_12A50();
  sub_5C78();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8, v9);
  sub_5CE8();
  v12 = (v10 - v11);
  __chkstk_darwin(v13, v14);
  v16 = (&v40 - v15);
  v17 = *(v5 + 16);
  v17(&v40 - v15, v2, v3);
  if ((*(v5 + 88))(v16, v3) == enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    (*(v5 + 96))(v16, v3);
    *&v41 = *v16;
    v0 = v41;
    sub_4E18();
    v18 = v0;
    sub_2308(&qword_1CA68, &qword_139D8);
    if (swift_dynamicCast())
    {
      v0 = v12;
      v19 = v2;
      sub_4F00(&v43, v46);
      v20 = v47;
      v21 = v48;
      sub_4E5C(v46, v47);
      (*(v21 + 8))(&v41, v20, v21);
      if (v42)
      {
        sub_4F00(&v41, &v43);
        v22 = *(&v44 + 1);
        v23 = v45;
        sub_4E5C(&v43, *(&v44 + 1));
        v24 = (*(v23 + 8))(v22, v23);
        sub_34C8(v24);

        (*(v5 + 8))(v19, v3);
        sub_58CC(&v43);
        sub_58CC(v46);
        goto LABEL_14;
      }

      sub_4EA0(&v41, &qword_1CA78, &qword_139E8);
      sub_58CC(v46);
      v2 = v19;
      v12 = v0;
    }

    else
    {

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_4EA0(&v43, &qword_1CA70, &qword_139E0);
    }
  }

  else
  {
    (*(v5 + 8))(v16, v3);
  }

  if (qword_1C778 != -1)
  {
    sub_5CC8();
  }

  v25 = sub_12D60();
  sub_4DE0(v25, qword_1CFF8);
  v17(v12, v2, v3);
  v26 = sub_12D40();
  v27 = sub_12E40();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v2;
    v29 = v28;
    v30 = swift_slowAlloc();
    v46[0] = v30;
    *v29 = 136315138;
    sub_4F74(&qword_1CA60, &type metadata accessor for SiriSuggestions.Intent);
    v31 = sub_12F10();
    v33 = v32;
    v34 = sub_5CF8();
    (v0)(v34);
    v35 = sub_47A8(v31, v33, v46);

    *(v29 + 4) = v35;
    sub_5DCC(&dword_0, v36, v37, "[AddTriggerIntentParameters] Cannot get parameters from SiriSuggestions.Intent, default triggers to false: %s");
    sub_58CC(v30);
    sub_5E3C();
    v2 = v40;
    sub_5E3C();
  }

  else
  {

    v38 = sub_5CF8();
    (v0)(v38);
  }

  sub_2308(&qword_1CA40, &unk_139C0);
  v39 = sub_12D90();
  sub_34C8(v39);
  (v0)(v2, v3);
LABEL_14:
  sub_5DEC();
}

uint64_t sub_34C8(uint64_t a1)
{
  sub_5E54(0xD000000000000017, 0x8000000000014080, a1, &v6);
  if (v7)
  {
    sub_2308(&qword_1CA40, &unk_139C0);
    if (swift_dynamicCast())
    {
      v2 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    sub_4EA0(&v6, &qword_1CA48, &qword_13B70);
  }

  v2 = 0;
LABEL_6:
  sub_5E54(0xD000000000000016, 0x80000000000140A0, a1, &v6);

  if (!v7)
  {
    sub_4EA0(&v6, &qword_1CA48, &qword_13B70);
    goto LABEL_12;
  }

  sub_2308(&qword_1CA40, &unk_139C0);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v3 = 0;
    return v3 | v2;
  }

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

void sub_3614()
{
  sub_5E24();
  v3 = v2;
  if ((v2 & 0x100) != 0)
  {
    v0 = sub_5D10();
    sub_5E04();
    sub_5C78();
    v5 = *(v4 + 64);
    __chkstk_darwin(v6, v7);
    v9 = sub_5C38(v8, v19);
    v10(v9);
    sub_5084(*v1, 0xD000000000000016, 0x80000000000140A0, v0, &v20);
    sub_58CC(v21);
  }

  if (v3)
  {
    v11 = sub_5D10();
    sub_5E04();
    sub_5C78();
    v13 = *(v12 + 64);
    __chkstk_darwin(v14, v15);
    v17 = sub_5C58(v16, v19);
    v18(v17);
    sub_5084(*v0, 0xD000000000000017, 0x8000000000014080, v11, &v20);
    sub_58CC(v21);
  }

  sub_5DEC();
}

void sub_37DC()
{
  v1 = *v0;
  v0[1];
  sub_3614();
}

uint64_t sub_37F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v4 = sub_9194(1701667182, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_4D18(*(a1 + 56) + 48 * v4, &v19);
  sub_2308(&qword_1CA40, &unk_139C0);
  if ((sub_5CA8() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v17 == 0xD000000000000027 && 0x80000000000140C0 == v18)
  {
  }

  else
  {
    v7 = sub_12F30();

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_5E54(0xD000000000000011, 0x80000000000140F0, a1, &v19);
  if (!v20)
  {

    result = sub_4EA0(&v19, &qword_1CA48, &qword_13B70);
    goto LABEL_19;
  }

  if ((sub_5CA8() & 1) == 0)
  {
LABEL_18:

LABEL_19:
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v8 = 2;
    goto LABEL_20;
  }

  v8 = v17;
  v9 = sub_5DB8();
  sub_5E54(v9, 0xE800000000000000, a1, &v19);
  if (v20)
  {
    v10 = sub_5CA8();
    if (v10)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 ^ 1u;
  }

  else
  {
    sub_4EA0(&v19, &qword_1CA48, &qword_13B70);
    v11 = 0;
    v12 = 1;
  }

  v16 = sub_5DA4();
  sub_5E54(v16, 0xE900000000000065, a1, &v19);

  if (v20)
  {
    result = sub_5CA8();
    v14 = v17;
    if (!result)
    {
      v14 = 0;
    }

    v15 = result ^ 1;
  }

  else
  {
    result = sub_4EA0(&v19, &qword_1CA48, &qword_13B70);
    v14 = 0;
    v15 = 1;
  }

LABEL_20:
  *a2 = v8;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_3A34()
{
  v2 = *v0;
  v49 = &type metadata for Bool;
  v50 = &protocol witness table for Bool;
  v51 = &protocol witness table for Bool;
  LOBYTE(v48) = v2;
  sub_501C(&v48, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_5C88();
  sub_5C78();
  v5 = *(v4 + 64);
  __chkstk_darwin(v6, v7);
  v9 = sub_5C38(v8, v43);
  v10(v9);
  sub_5084(*v1, 0xD000000000000011, 0x80000000000140F0, isUniquelyReferenced_nonNull_native, &v46);
  sub_58CC(v47);
  v49 = &type metadata for String;
  v50 = &protocol witness table for String;
  v51 = &protocol witness table for String;
  *&v48 = 0xD000000000000027;
  *(&v48 + 1) = 0x80000000000140C0;
  v11 = sub_5D74();
  sub_5C88();
  sub_5C78();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14, v15);
  v17 = sub_5C38(v16, v44);
  v18(v17);
  sub_5274(MEMORY[0xD000000000000011], MEMORY[0xD000000000000019], 1701667182, 0xE400000000000000, v11, &v46);
  sub_58CC(v47);
  v19 = v46;
  if ((v0[16] & 1) == 0)
  {
    v20 = *(v0 + 1);
    v50 = &protocol witness table for Double;
    v51 = &protocol witness table for Double;
    v49 = &type metadata for Double;
    *&v48 = v20;
    v11 = sub_5D74();
    sub_5C88();
    sub_5C78();
    v22 = *(v21 + 64);
    __chkstk_darwin(v23, v24);
    v26 = sub_5C38(v25, v45);
    v27(v26);
    v28 = sub_5DB8();
    sub_5464(v28, 0xE800000000000000, v11, &v46, v29);
    sub_58CC(v47);
    v19 = v46;
  }

  if ((v0[32] & 1) == 0)
  {
    v30 = *(v0 + 3);
    v50 = &protocol witness table for Double;
    v51 = &protocol witness table for Double;
    v49 = &type metadata for Double;
    *&v48 = v30;
    v31 = sub_5D74();
    sub_5C88();
    sub_5C78();
    v33 = *(v32 + 64);
    __chkstk_darwin(v34, v35);
    v37 = sub_5C58(v36, v45);
    v38(v37);
    v39 = *v11;
    v40 = sub_5DA4();
    sub_5464(v40, 0xE900000000000065, v31, &v46, v41);
    sub_58CC(v47);
    return v46;
  }

  return v19;
}

void sub_3DC8()
{
  sub_5E24();
  v1 = v0;
  v3 = v2;
  v4 = sub_2308(&qword_1CA38, &qword_139B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v29[-v7];
  v9 = sub_12810();
  sub_5C78();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14, v15);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  v19 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v20);
  v22 = &v29[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 16))
  {
    goto LABEL_9;
  }

  v23 = sub_9194(1701667182, 0xE400000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_4D18(*(v1 + 56) + 48 * v23, &v33);
  sub_2308(&qword_1CA40, &unk_139C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v31 == 0xD000000000000021 && 0x8000000000013970 == v32)
  {
  }

  else
  {
    v30 = sub_12F30();

    if ((v30 & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  sub_5E54(0x706D6F4365746164, 0xED0000746E656E6FLL, v1, &v33);

  if (v34)
  {
    v27 = swift_dynamicCast();
    sub_46C8(v8, v27 ^ 1u, 1, v9);
    if (sub_4640(v8, 1, v9) != 1)
    {
      v28 = *(v11 + 32);
      v28(v17, v8, v9);
      v28(v22, v17, v9);
      sub_4D7C(v22, v3);
      v26 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_4EA0(&v33, &qword_1CA48, &qword_13B70);
    sub_46C8(v8, 1, 1, v9);
  }

  sub_4EA0(v8, &qword_1CA38, &qword_139B8);
LABEL_10:
  v26 = 1;
LABEL_11:
  sub_46C8(v3, v26, 1, updated);
  sub_5DEC();
}

uint64_t sub_40F8()
{
  v1 = sub_12810();
  v23 = v1;
  v24 = sub_4F74(&qword_1CA88, type metadata accessor for DateComponents);
  v25 = sub_4F74(&qword_1CA90, type metadata accessor for DateComponents);
  v2 = sub_4FBC(&v22);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  sub_501C(&v22, v21);
  swift_isUniquelyReferenced_nonNull_native();
  sub_5D50();
  sub_5C78();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5, v6);
  v8 = sub_5C58(v7, v18);
  v9(v8);
  sub_564C(type metadata accessor for DateComponents, 0x706D6F4365746164, 0xED0000746E656E6FLL, v0, &v20);
  sub_58CC(v21);
  v23 = &type metadata for String;
  v24 = &protocol witness table for String;
  v25 = &protocol witness table for String;
  *&v22 = 0xD000000000000021;
  *(&v22 + 1) = 0x8000000000013970;
  sub_501C(&v22, v21);
  swift_isUniquelyReferenced_nonNull_native();
  sub_5D50();
  sub_5C78();
  v11 = *(v10 + 64);
  __chkstk_darwin(v12, v13);
  v15 = sub_5C58(v14, v19);
  v16(v15);
  sub_5274(type metadata accessor for DateComponents[0], type metadata accessor for DateComponents[1], 1701667182, 0xE400000000000000, v0, &v20);
  sub_58CC(v21);
  return v20;
}

uint64_t getEnumTagSinglePayload for AddTriggerIntentParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AddTriggerIntentParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x44F4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

__n128 sub_452C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4540(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[33])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_458C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_45F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_12810();

  return sub_4640(a1, a2, v4);
}

uint64_t sub_467C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12810();

  return sub_46C8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UpdateReminderExecutionParameters()
{
  result = qword_1CA00;
  if (!qword_1CA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_473C()
{
  result = sub_12810();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_47A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_486C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_4F18(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_58CC(v11);
  return v7;
}

unint64_t sub_486C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_496C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_12ED0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_496C(uint64_t a1, unint64_t a2)
{
  v4 = sub_49B8(a1, a2);
  sub_4AD0(&off_18C10);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_49B8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_12DD0())
  {
    result = sub_4BB4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_12EB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_12ED0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4AD0(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_4C24(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4BB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2308(&qword_1CA80, &qword_139F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_2308(&qword_1CA80, &qword_139F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_4D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4D7C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_4DE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_4E18()
{
  result = qword_1CC50;
  if (!qword_1CC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CC50);
  }

  return result;
}

void *sub_4E5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2308(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4F00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_4F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4F74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_4FBC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_501C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_5034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_OWORD *sub_5084(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v28) = a1;
  v29 = &type metadata for Bool;
  v30 = &protocol witness table for Bool;
  v31 = &protocol witness table for Bool;
  v9 = *a5;
  v10 = sub_9194(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v17 = *a5;
  v18 = sub_9194(a2, a3);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *a5;
  if (v16)
  {
    v21 = (v20[7] + 48 * v15);
    sub_58CC(v21);
    return sub_501C(&v28, v21);
  }

  else
  {
    v23 = sub_5034(&v28, &type metadata for Bool);
    v24 = *(*(&type metadata for Bool - 1) + 64);
    __chkstk_darwin(v23, v23);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_5918(v15, a2, a3, *v26, v20);
    sub_58CC(&v28);
  }
}

_OWORD *sub_5274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v30 = &type metadata for String;
  v31 = &protocol witness table for String;
  v32 = &protocol witness table for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v10 = *a6;
  v11 = sub_9194(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a5 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *a6;
  v19 = sub_9194(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *a6;
  if (v17)
  {
    v22 = (v21[7] + 48 * v16);
    sub_58CC(v22);
    return sub_501C(&v29, v22);
  }

  else
  {
    v24 = sub_5034(&v29, &type metadata for String);
    v25 = *(*(&type metadata for String - 1) + 64);
    __chkstk_darwin(v24, v24);
    v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_5A50(v16, a3, a4, *v27, v27[1], v21);
    sub_58CC(&v29);
  }
}

_OWORD *sub_5464(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v28 = a5;
  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  v31 = &protocol witness table for Double;
  v9 = *a4;
  v10 = sub_9194(a1, a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a3 & 1, v14))
  {
    goto LABEL_5;
  }

  v17 = *a4;
  v18 = sub_9194(a1, a2);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *a4;
  if (v16)
  {
    v21 = (v20[7] + 48 * v15);
    sub_58CC(v21);
    return sub_501C(&v28, v21);
  }

  else
  {
    v23 = sub_5034(&v28, &type metadata for Double);
    v24 = *(*(&type metadata for Double - 1) + 64);
    __chkstk_darwin(v23, v23);
    v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    sub_59B4(v15, a1, a2, v20, *v26);
    sub_58CC(&v28);
  }
}

_OWORD *sub_564C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_12810();
  v33 = v10;
  v34 = sub_4F74(&qword_1CA88, &type metadata accessor for DateComponents);
  v35 = sub_4F74(&qword_1CA90, &type metadata accessor for DateComponents);
  v11 = sub_4FBC(&v32);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v12 = *a5;
  v13 = sub_9194(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13;
  v19 = v14;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a4 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *a5;
  v21 = sub_9194(a2, a3);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *a5;
  if (v19)
  {
    v24 = (v23[7] + 48 * v18);
    sub_58CC(v24);
    return sub_501C(&v32, v24);
  }

  else
  {
    v26 = v33;
    v27 = sub_5034(&v32, v33);
    v28 = *(*(v26 - 8) + 64);
    __chkstk_darwin(v27, v27);
    v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30);
    sub_5AEC(v18, a2, a3, v30, v23);
    sub_58CC(&v32);
  }
}

uint64_t sub_58CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_5918(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  v13 = &protocol witness table for Bool;
  v14 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_501C(&v11, (a5[7] + 48 * a1));
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

_OWORD *sub_59B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_501C(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_5A50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_501C(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_5AEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_12810();
  v18 = v10;
  v19 = sub_4F74(&qword_1CA88, &type metadata accessor for DateComponents);
  v20 = sub_4F74(&qword_1CA90, &type metadata accessor for DateComponents);
  v11 = sub_4FBC(&v17);
  (*(*(v10 - 8) + 32))(v11, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_501C(&v17, (a5[7] + 48 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_5C88()
{
  *(v1 - 168) = v0;
  v3 = *(v1 - 136);

  return sub_5034(v1 - 160, v3);
}

uint64_t sub_5CA8()
{

  return swift_dynamicCast();
}

uint64_t sub_5CC8()
{

  return swift_once();
}

uint64_t sub_5D10()
{
  *(v3 - 104) = v0;
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;
  *(v3 - 128) = 1;
  sub_501C((v3 - 128), (v3 - 176));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_5D50()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 104);

  return sub_5034(v1 - 128, v3);
}

uint64_t sub_5D74()
{
  sub_501C((v0 - 112), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_5DCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_5E04()
{
  *(v1 - 184) = v0;
  v3 = *(v1 - 152);

  return sub_5034(v1 - 176, v3);
}

uint64_t sub_5E3C()
{
}

double sub_5E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_9194(a1, a2), (v7 & 1) != 0))
  {
    sub_4D18(*(a3 + 56) + 48 * v6, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_5EAC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_920C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
}

uint64_t sub_5F04()
{
  sub_129F0();
  sub_96C8(&qword_1CB70, &type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode);
  sub_12DE0();
  sub_12DE0();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_12F30();
  }

  return v1 & 1;
}

Swift::Int sub_6000()
{
  sub_12F50();
  sub_12DC0();
  return sub_12F60();
}

uint64_t sub_6054()
{
  sub_9B08();
  v0[12] = v1;
  v0[13] = v2;
  v3 = type metadata accessor for NotebookSuggestion(0);
  v0[14] = v3;
  sub_9A54(v3);
  v0[15] = v4;
  v6 = *(v5 + 64);
  v0[16] = sub_9CCC();
  v7 = sub_12840();
  v0[17] = v7;
  sub_9A54(v7);
  v0[18] = v8;
  v10 = *(v9 + 64);
  v0[19] = sub_9CCC();
  v11 = sub_99F0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6144()
{
  if (qword_1C750 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = qword_1CFD0;
  v0[5] = sub_12A70();
  v0[6] = sub_96C8(&qword_1CB38, &type metadata accessor for DomainOwner);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_62C4;
  v5 = v0[13];

  return v7(v0 + 2);
}

uint64_t sub_62C4()
{
  sub_9B08();
  sub_9BE4();
  v2 = v1;
  v3 = *(v1 + 160);
  v9 = *v0;
  *(v2 + 168) = v4;

  sub_58CC((v2 + 16));
  v5 = sub_99F0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_63BC()
{
  v1 = v0;
  v4 = v0 + 18;
  v3 = v0[18];
  v2 = v4[1];
  v5 = v1[17];
  sub_129B0();
  v6 = sub_12830(1);
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  sub_BDCC();
  v10 = v9;
  sub_ADA0(v9, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v38, v40, v42, v44, v46, v48, v49, v50, v51);
  sub_9358(v18);
  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = v1[15];
    v41 = v1[16];
    v43 = v6;
    v45 = v8;
    v21 = v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v37 = *(v20 + 72);
    v39 = v1[14];
    do
    {
      v47 = v1[21];
      v22 = v1;
      v23 = v1[16];
      sub_94F8(v21, v23, type metadata accessor for NotebookSuggestion);
      v24 = *v23;
      v25 = *(v41 + 8);
      v26 = v23 + *(v39 + 32);
      sub_12990();
      v27 = swift_task_alloc();
      v27[2] = v23;
      v27[3] = v43;
      v27[4] = v45;
      sub_12C90();

      v28 = v23;
      v1 = v22;
      sub_9558(v28, type metadata accessor for NotebookSuggestion);
      v21 += v37;
      --v19;
    }

    while (v19);

    v6 = v43;
    v8 = v45;
  }

  else
  {
  }

  v29 = v1[21];
  v30 = swift_task_alloc();
  *(v30 + 16) = v6;
  *(v30 + 24) = v8;
  sub_12C90();

  v1[10] = &type metadata for NotebookSourceGenerator;
  v1[11] = sub_946C();
  v31 = swift_allocObject();
  v1[7] = v31;
  *(v31 + 40) = &type metadata for NotebookSuggestionValidators;
  *(v31 + 48) = &off_19038;
  sub_12C80();

  sub_58CC(v1 + 7);
  if (qword_1C780 != -1)
  {
    swift_once();
  }

  v32 = swift_task_alloc();
  v1[22] = v32;
  *v32 = v1;
  v32[1] = sub_66E4;

  return sub_12040();
}

uint64_t sub_66E4()
{
  sub_9B08();
  sub_9BE4();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_9AD4();
  *v4 = v3;

  v5 = sub_99F0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_67C8()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];
  sub_2308(&qword_1CB48, &qword_13A70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_13760;
  sub_12CA0();

  sub_9BCC();

  return v5(v4);
}

uint64_t sub_6884(uint64_t a1, uint64_t *a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v102 = a4;
  v99 = a3;
  v6 = sub_2308(&qword_1CB58, &qword_13A80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v103 = &v94 - v9;
  v104 = sub_12BC0();
  v96 = *(v104 - 8);
  v10 = *(v96 + 64);
  __chkstk_darwin(v104, v11);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NotebookSuggestion.SignalDefinition(0);
  v95 = *(v13 - 8);
  v14 = *(v95 + 64);
  __chkstk_darwin(v13, v15);
  v105 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v17 = *(a1 + 40);
  v98 = *(a1 + 24);
  sub_4E5C(a1, v98);
  v18 = type metadata accessor for NotebookSuggestion(0);
  v19 = *(a2 + v18[14]);
  v109 = v98;
  v110 = v17;
  sub_4FBC(v107);
  sub_12C00();
  v20 = v110;
  v98 = v109;
  sub_4E5C(v107, v109);
  v21 = *(a2 + v18[10]);
  v122 = v98;
  v123 = v20;
  sub_4FBC(&v121);
  sub_12C30();
  v22 = v123;
  v98 = v122;
  sub_4E5C(&v121, v122);
  if (qword_1C758 != -1)
  {
    swift_once();
  }

  v119 = v98;
  v120 = v22;
  sub_4FBC(v118);
  sub_12C10();
  v23 = v120;
  v98 = v119;
  sub_4E5C(v118, v119);
  v24 = *(a2 + v18[12]);
  v116 = v98;
  v117 = v23;
  sub_4FBC(v115);
  sub_12C50();
  v25 = v117;
  v98 = v116;
  sub_4E5C(v115, v116);
  sub_FE8C();
  v113 = v98;
  v114 = v25;
  sub_4FBC(v112);
  sub_12BF0();
  sub_58CC(v111);
  v26 = v113;
  v27 = sub_4E5C(v112, v113);
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12BE0();
  (*(v28 + 8))(v32, v26);
  sub_58CC(v112);
  sub_58CC(v115);
  sub_58CC(v118);
  sub_58CC(&v121);
  sub_58CC(v107);
  v33 = v18[9];
  v97 = a2;
  v34 = *(a2 + v33);
  v35 = *(v34 + 16);
  v36 = v105;
  v37 = v106;
  v38 = v104;
  if (v35)
  {
    v39 = v34 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v102 = *(v95 + 72);
    v99 = (v96 + 32);
    v100 = v13;
    *&v98 = v96 + 8;
    do
    {
      sub_94F8(v39, v36, type metadata accessor for NotebookSuggestion.SignalDefinition);
      v40 = v103;
      sub_9928(v36 + *(v13 + 20), v103, &qword_1CB58, &qword_13A80);
      if (sub_4640(v40, 1, v38) == 1)
      {
        sub_986C(v40, &qword_1CB58, &qword_13A80);
        v41 = v37[3];
        v42 = sub_4E5C(v37, v41);
        v105 = &v94;
        v43 = *(v41 - 8);
        v44 = *(v43 + 64);
        __chkstk_darwin(v42, v45);
        v47 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *v36;
        v38 = v104;
        sub_129D0();
        (*(v43 + 8))(v47, v41);
      }

      else
      {
        v49 = v101;
        (*v99)(v101, v40, v38);
        v50 = v37[3];
        v51 = sub_4E5C(v37, v50);
        v105 = &v94;
        v52 = *(v50 - 8);
        v53 = *(v52 + 64);
        __chkstk_darwin(v51, v54);
        v56 = &v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = *v36;
        sub_129C0();
        v58 = v50;
        v38 = v104;
        (*(v52 + 8))(v56, v58);
        v59 = v49;
        v13 = v100;
        (*v98)(v59, v38);
      }

      sub_9558(v36, type metadata accessor for NotebookSuggestion.SignalDefinition);
      v37 = v106;
      v39 += v102;
      --v35;
    }

    while (v35);
  }

  v60 = v97;
  sub_9928((v97 + 2), &v121, &qword_1CB60, &qword_13A88);
  if (v122)
  {
    sub_4F00(&v121, v107);
    v61 = v37[3];
    v62 = v37[5];
    v63 = sub_4E5C(v37, v61);
    v64 = *(v61 - 8);
    v65 = *(v64 + 64);
    __chkstk_darwin(v63, v66);
    v68 = &v94 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_12BD0();
    (*(v64 + 8))(v68, v61);
    sub_58CC(v107);
  }

  else
  {
    sub_986C(&v121, &qword_1CB60, &qword_13A88);
  }

  v69 = *v60;
  v70 = v60[1];
  v71 = *v60 == 0x6E696D6552646461 && v70 == 0xEF656D6954726564;
  if (v71 || (v72 = *v60, v73 = v60[1], (sub_12F30() & 1) != 0) || (v69 == 0xD000000000000013 ? (v74 = 0x8000000000014190 == v70) : (v74 = 0), v74 || (result = sub_12F30(), (result & 1) != 0)))
  {
    v76 = v37[3];
    v77 = v37[5];
    v78 = sub_4E5C(v37, v76);
    v79 = *(v76 - 8);
    v80 = *(v79 + 64);
    __chkstk_darwin(v78, v81);
    v83 = &v94 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_12C40();
    result = (*(v79 + 8))(v83, v76);
  }

  v84 = v60[7];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = v84 + 32;
    do
    {
      sub_95B0(v86, v107);
      v87 = v37[3];
      v104 = v37[5];
      v88 = sub_4E5C(v37, v87);
      v105 = &v94;
      v89 = *(v87 - 8);
      v90 = *(v89 + 64);
      __chkstk_darwin(v88, v91);
      v93 = &v94 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_9928(&v108, &v121, &qword_1CB68, &unk_13A90);

      sub_960C(v107);
      sub_12C60();

      sub_986C(&v121, &qword_1CB68, &unk_13A90);
      result = (*(v89 + 8))(v93, v87);
      v37 = v106;
      v86 += 104;
      --v85;
    }

    while (v85);
  }

  return result;
}

uint64_t sub_7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v25 = a3;
  v24 = a2;
  v3 = *(a1 + 40);
  v22 = *(a1 + 24);
  v23 = a1;
  sub_4E5C(a1, v22);
  if (qword_1C760 != -1)
  {
    swift_once();
  }

  v36 = v22;
  v37 = v3;
  sub_4FBC(v35);
  sub_12C10();
  v4 = v37;
  v22 = v36;
  sub_4E5C(v35, v36);
  sub_2308(&qword_1CB50, &qword_13A78);
  v5 = sub_12A60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13A00;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for DeviceType.iPad(_:), v5);
  v11(v10 + v7, enum case for DeviceType.iPhone(_:), v5);
  v11(v10 + 2 * v7, enum case for DeviceType.carPlay(_:), v5);
  v33 = v22;
  v34 = v4;
  sub_4FBC(v32);
  sub_12C00();

  v12 = v34;
  v22 = v33;
  sub_4E5C(v32, v33);
  v30 = v22;
  v31 = v12;
  sub_4FBC(v29);
  sub_12BE0();
  v13 = v31;
  v25 = v30;
  sub_4E5C(v29, v30);
  v27 = v25;
  v28 = v13;
  sub_4FBC(v26);
  sub_12C20();
  v14 = v27;
  v15 = sub_4E5C(v26, v27);
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C788 != -1)
  {
    swift_once();
  }

  sub_5EAC(qword_1D018);
  sub_129D0();

  (*(v16 + 8))(v20, v14);
  sub_58CC(v26);
  sub_58CC(v29);
  sub_58CC(v32);
  sub_58CC(v35);
  return sub_778C(&_swiftEmptyArrayStorage, v23);
}

uint64_t sub_778C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_4D18(a2, v15);
    v5 = v16;
    v6 = sub_4E5C(v15, v16);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6, v9);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *(i - 16);
    v13 = *(i - 8);
    v14 = *(i + 40);
    sub_12C60();
    (*(v7 + 8))(v11, v5);
    result = sub_58CC(v15);
    i += 64;
  }

  return result;
}

uint64_t sub_7908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_9988;

  return sub_6054();
}

uint64_t sub_79A4()
{
  sub_9B08();
  v1[45] = v2;
  v1[46] = v0;
  v1[43] = v3;
  v1[44] = v4;
  v5 = sub_12D20();
  v1[47] = v5;
  sub_9A54(v5);
  v1[48] = v6;
  v8 = *(v7 + 64);
  v1[49] = sub_9CCC();
  v9 = *(*(sub_2308(&qword_1CB88, &qword_13B68) - 8) + 64);
  v1[50] = sub_9CCC();
  v10 = sub_12B10();
  v1[51] = v10;
  sub_9A54(v10);
  v1[52] = v11;
  v13 = *(v12 + 64);
  v1[53] = sub_9CCC();
  v14 = type metadata accessor for NotebookSuggestion(0);
  v1[54] = v14;
  sub_9A54(v14);
  v1[55] = v15;
  v17 = *(v16 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v18 = sub_99F0();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_7B34()
{
  if (qword_1C778 != -1)
  {
    swift_once();
  }

  v1 = sub_12D60();
  *(v0 + 472) = sub_4DE0(v1, qword_1CFF8);
  v2 = sub_12D40();
  v3 = sub_12E30();
  if (sub_9CB0(v3))
  {
    *swift_slowAlloc() = 0;
    sub_9BAC();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_9C30();
  }

  sub_ADA0(v9, v10, v11, v12, v13, v14, v15, v16, v67, v69, v70, v71, v72, v73, v74, v75, v76, v0, v77, v78);
  *(v0 + 480) = v17;
  v18 = *(v17 + 16);
  *(v0 + 488) = v18;
  if (!v18)
  {
LABEL_11:

    v34 = *(v0 + 344);
    v35 = v34[4];
    sub_4E5C(v34, v34[3]);
    sub_9CE4();
    sub_12AA0();
    sub_9A64("isMarkAsComplete");

    v36 = *(v0 + 40);
    sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
    if (v36)
    {
      v38 = *(v0 + 384);
      v37 = *(v0 + 392);
      v39 = *(v0 + 376);
      v40 = *(v0 + 360);
      v41 = v40[4];
      sub_4E5C(v40, v40[3]);
      sub_12D90();
      (*(v38 + 104))(v37, enum case for Objective.discoverability(_:), v39);
      sub_9A3C();
      sub_12C70();

      v42 = *(v38 + 8);
      v43 = sub_9CE4();
      v44(v43);
      if (*(v0 + 128))
      {
        sub_9B78();
        v45 = _swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = _swiftEmptyArrayStorage[2];
          v64 = sub_9AC4();
          v45 = sub_8F80(v64, v65, v66, _swiftEmptyArrayStorage);
        }

        v47 = *(v45 + 2);
        v46 = *(v45 + 3);
        if (v47 >= v46 >> 1)
        {
          v45 = sub_8F80((v46 > 1), v47 + 1, 1, v45);
        }

        sub_58CC((v0 + 64));
        *(v45 + 2) = v47 + 1;
        sub_4F00((v0 + 144), &v45[40 * v47 + 32]);
        goto LABEL_23;
      }

      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }

    v45 = _swiftEmptyArrayStorage;
LABEL_23:
    v61 = *(v0 + 456);
    v60 = *(v0 + 464);
    sub_9C14();

    sub_9BCC();

    return v62(v45);
  }

  v19 = 0;
  v20 = *(v0 + 440);
  *(v0 + 560) = *(v20 + 80);
  *(v0 + 496) = *(v20 + 72);
  *(v0 + 564) = enum case for Objective.discoverability(_:);
  while (1)
  {
    *(v0 + 504) = v19;
    *(v0 + 512) = _swiftEmptyArrayStorage;
    sub_9AB0();
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 344);
    sub_99A4();
    sub_94F8(v24, v25, v26);
    v27 = v23[4];
    sub_4E5C(v23, v23[3]);
    sub_12A90();
    if (sub_4640(v22, 1, v21) != 1)
    {
      break;
    }

    v28 = *(v0 + 464);
    v29 = *(v0 + 400);
    sub_998C();
    sub_9558(v30, v31);
    sub_986C(v29, &qword_1CB88, &qword_13B68);
    sub_9AE4();
    if (v32)
    {
      v33 = *(v0 + 480);
      goto LABEL_11;
    }
  }

  v48 = *(v0 + 464);
  v49 = sub_9BBC();
  v50 = *(v0 + 344);
  (*(v51 + 32))(v49);
  v52 = v48;
  v53 = *v48;
  v54 = v52[1];
  v55 = v50[4];
  sub_4E5C(v50, v50[3]);
  *(v0 + 520) = sub_12AA0();
  v68 = (v53 + *v53);
  v56 = v53[1];
  v57 = swift_task_alloc();
  *(v0 + 528) = v57;
  *v57 = v0;
  v58 = sub_99BC(v57);

  return v68(v58);
}

uint64_t sub_8010()
{
  sub_9B08();
  sub_9BE4();
  v2 = *(v1 + 528);
  v3 = *(v1 + 520);
  v4 = *v0;
  sub_9AD4();
  *v5 = v4;
  *(v7 + 568) = v6;

  v8 = sub_99F0();

  return _swift_task_switch(v8, v9, v10);
}

void sub_8118()
{
  if (*(v0 + 568))
  {
    v2 = *(v0 + 464);
    v3 = *(v0 + 472);
    v4 = *(v0 + 456);
    sub_99A4();
    sub_94F8(v5, v6, v7);
    v8 = sub_12D40();
    v9 = sub_12E30();
    v10 = sub_9CB0(v9);
    v11 = *(v0 + 456);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v75 = v13;
      *v12 = 136315138;
      v14 = *v11;
      v15 = v11[1];

      sub_998C();
      sub_9558(v11, v16);
      v17 = sub_47A8(v14, v15, &v75);

      *(v12 + 4) = v17;
      sub_9BAC();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_58CC(v13);

      sub_9C30();
    }

    else
    {

      sub_998C();
      sub_9558(v11, v48);
    }

    v49 = *(v0 + 464);
    v50 = *(v0 + 344);
    v51 = *(v49 + 64);
    v52 = *(v49 + 72);
    v53 = v50[4];
    sub_4E5C(v50, v50[3]);
    *(v0 + 536) = sub_12AA0();
    v74 = v51 + *v51;
    v54 = v51[1];
    v55 = swift_task_alloc();
    *(v0 + 544) = v55;
    *v55 = v0;
    v55[1] = sub_8630;
    v56 = *(v0 + 352);
    sub_9B14();

    __asm { BRAA            X2, X16 }
  }

  v23 = *(v0 + 464);
  (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  sub_998C();
  sub_9558(v23, v24);
  v25 = *(v0 + 512);
  while (1)
  {
    sub_9AE4();
    if (v27)
    {
      break;
    }

    *(v0 + 504) = v26;
    *(v0 + 512) = v25;
    sub_9AB0();
    v29 = *(v0 + 400);
    v28 = *(v0 + 408);
    v30 = *(v0 + 344);
    sub_99A4();
    sub_94F8(v31, v32, v33);
    sub_9C70();
    v34 = sub_4640(v29, 1, v28);
    v35 = *(v0 + 464);
    if (v34 != 1)
    {
      v59 = sub_9BBC();
      v60 = *(v0 + 344);
      (*(v61 + 32))(v59);
      v62 = sub_9B30();
      sub_9A00(v62);
      v63 = swift_task_alloc();
      *(v0 + 528) = v63;
      *v63 = v0;
      sub_99BC();
      sub_9B14();

      __asm { BRAA            X3, X16 }
    }

    v36 = *(v0 + 400);
    sub_998C();
    sub_9558(v35, v37);
    sub_986C(v36, &qword_1CB88, &qword_13B68);
  }

  v38 = *(v0 + 480);

  v39 = *(v0 + 344);
  v40 = v39[4];
  sub_4E5C(v39, v39[3]);
  sub_9BD8();
  sub_12AA0();
  sub_9A64("isMarkAsComplete");

  v41 = *(v0 + 40);
  sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
  if (v41)
  {
    sub_9D04();
    sub_12D90();
    v42 = sub_9CF0();
    v43(v42);
    sub_9A3C();
    sub_9C4C();

    v44 = *(v1 + 8);
    v45 = sub_9BD8();
    v46(v45);
    if (*(v0 + 128))
    {
      sub_9B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = *(v25 + 2);
        v71 = sub_9AC4();
        v25 = sub_8F80(v71, v72, v73, v25);
      }

      v47 = *(v25 + 3);
      if (*(v25 + 2) >= v47 >> 1)
      {
        sub_9A8C(v47);
      }

      sub_58CC((v0 + 64));
      sub_9BF0();
    }

    else
    {
      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }
  }

  v67 = *(v0 + 456);
  v66 = *(v0 + 464);
  sub_9C14();

  sub_9BCC();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_8630()
{
  sub_9B08();
  sub_9BE4();
  v2 = *(v1 + 544);
  v3 = *(v1 + 536);
  v4 = *v0;
  sub_9AD4();
  *v5 = v4;
  *(v7 + 552) = v6;

  v8 = sub_99F0();

  return _swift_task_switch(v8, v9, v10);
}

void sub_8738()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 564);
  v3 = *(v0 + 464);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  v94 = v7[4];
  sub_4E5C(v7, v7[3]);
  v8 = *v3;
  v9 = v3[1];
  (*(v5 + 104))(v4, v2, v6);
  sub_12C70();

  v10 = *(v5 + 8);
  v11 = sub_9BD8();
  v12(v11);
  sub_9928(v0 + 184, v0 + 264, &qword_1CB90, &qword_13B78);
  if (*(v0 + 288))
  {
    v13 = *(v0 + 464);
    v14 = *(v0 + 472);
    v15 = *(v0 + 448);
    sub_4F00((v0 + 264), v0 + 224);
    sub_99A4();
    v16 = sub_9CE4();
    sub_94F8(v16, v17, v18);
    v19 = sub_12D40();
    v20 = sub_12E30();
    v21 = sub_9CB0(v20);
    v22 = *(v0 + 448);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v95 = v24;
      *v23 = 136315138;
      v25 = *v22;
      v26 = v22[1];

      sub_998C();
      sub_9558(v22, v27);
      v28 = sub_47A8(v25, v26, &v95);

      *(v23 + 4) = v28;
      sub_9BAC();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_58CC(v24);

      sub_9C30();
    }

    else
    {

      sub_998C();
      sub_9558(v22, v43);
    }

    v44 = *(v0 + 512);
    sub_98C4(v0 + 224, v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v0 + 512);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v86 = *(v42 + 2);
      v87 = sub_9AC4();
      v42 = sub_8F80(v87, v88, v89, v42);
    }

    v47 = *(v42 + 2);
    v46 = *(v42 + 3);
    if (v47 >= v46 >> 1)
    {
      v42 = sub_9A8C(v46);
    }

    v48 = *(v0 + 464);
    v50 = *(v0 + 416);
    v49 = *(v0 + 424);
    v51 = *(v0 + 408);
    sub_58CC((v0 + 224));
    sub_986C(v0 + 184, &qword_1CB90, &qword_13B78);
    (*(v50 + 8))(v49, v51);
    *(v42 + 2) = v47 + 1;
    sub_4F00((v0 + 304), &v42[40 * v47 + 32]);
    sub_998C();
    sub_9558(v48, v52);
  }

  else
  {
    v34 = *(v0 + 464);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    sub_986C(v0 + 184, &qword_1CB90, &qword_13B78);
    v38 = *(v36 + 8);
    v39 = sub_9CE4();
    v40(v39);
    sub_998C();
    sub_9558(v34, v41);
    sub_986C(v0 + 264, &qword_1CB90, &qword_13B78);
    v42 = *(v0 + 512);
  }

  while (1)
  {
    sub_9AE4();
    if (v54)
    {
      break;
    }

    *(v0 + 504) = v53;
    *(v0 + 512) = v42;
    sub_9AB0();
    v56 = *(v0 + 400);
    v55 = *(v0 + 408);
    v57 = *(v0 + 344);
    sub_99A4();
    sub_94F8(v58, v59, v60);
    sub_9C70();
    v61 = sub_4640(v56, 1, v55);
    v62 = *(v0 + 464);
    if (v61 != 1)
    {
      v75 = sub_9BBC();
      v76 = *(v0 + 344);
      (*(v77 + 32))(v75);
      v78 = sub_9B30();
      sub_9A00(v78);
      v79 = swift_task_alloc();
      *(v0 + 528) = v79;
      *v79 = v0;
      sub_99BC();
      sub_9B14();

      __asm { BRAA            X3, X16 }
    }

    v63 = *(v0 + 400);
    sub_998C();
    sub_9558(v62, v64);
    sub_986C(v63, &qword_1CB88, &qword_13B68);
  }

  v65 = *(v0 + 480);

  v66 = *(v0 + 344);
  v67 = v66[4];
  sub_4E5C(v66, v66[3]);
  sub_9BD8();
  sub_12AA0();
  sub_9A64("isMarkAsComplete");

  v68 = *(v0 + 40);
  sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
  if (v68)
  {
    sub_9D04();
    sub_12D90();
    v69 = sub_9CF0();
    v70(v69);
    sub_9A3C();
    sub_9C4C();

    v71 = *(v9 + 8);
    v72 = sub_9BD8();
    v73(v72);
    if (*(v0 + 128))
    {
      sub_9B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = *(v42 + 2);
        v91 = sub_9AC4();
        v42 = sub_8F80(v91, v92, v93, v42);
      }

      v74 = *(v42 + 3);
      if (*(v42 + 2) >= v74 >> 1)
      {
        sub_9A8C(v74);
      }

      sub_58CC((v0 + 64));
      sub_9BF0();
    }

    else
    {
      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }
  }

  v83 = *(v0 + 456);
  v82 = *(v0 + 464);
  sub_9C14();

  sub_9BCC();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_8D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_8DAC;

  return sub_79A4();
}

uint64_t sub_8DAC()
{
  sub_9B08();
  v2 = v1;
  sub_9BE4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_9AD4();
  *v6 = v5;

  sub_9BCC();

  return v7(v2);
}

char *sub_8E94(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_9098(v8, v7);
  v10 = *(type metadata accessor for NotebookSuggestion(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2394(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_8F80(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2308(&qword_1CB98, &qword_13B80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2474((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2308(&qword_1CBA0, &qword_13B88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_9098(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2308(&unk_1CBF0, &unk_13750);
  v4 = *(type metadata accessor for NotebookSuggestion(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_9194(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_12F50();
  sub_12DC0();
  v6 = sub_12F60();

  return sub_9278(a1, a2, v6);
}

unint64_t sub_920C()
{
  v1 = *(v0 + 40);
  sub_12F50();
  sub_12DC0();
  v2 = sub_12F60();

  return sub_932C(v2);
}

unint64_t sub_9278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_12F30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_932C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

int64_t sub_9358(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_9660(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NotebookSuggestion(0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_946C()
{
  result = qword_1CB40;
  if (!qword_1CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB40);
  }

  return result;
}

uint64_t sub_94C0()
{
  sub_58CC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_94F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_9AF8(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_9558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_9AF8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *sub_9660(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_8E94(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_96C8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_9710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9724(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_9764(uint64_t result, int a2, int a3)
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

unint64_t sub_97C0()
{
  result = qword_1CB78;
  if (!qword_1CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB78);
  }

  return result;
}

unint64_t sub_9818()
{
  result = qword_1CB80;
  if (!qword_1CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB80);
  }

  return result;
}

uint64_t sub_986C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2308(a2, a3);
  sub_9AF8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_98C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2308(a3, a4);
  sub_9AF8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_99BC(uint64_t a1)
{
  *(a1 + 8) = sub_8010;
  v2 = *(v1 + 368);
  return *(v1 + 424);
}

uint64_t sub_9A00(uint64_t result)
{
  *(v2 + 520) = result;
  v3 = v1 + *v1;
  return result;
}

double sub_9A64@<D0>(uint64_t a1@<X8>)
{

  return sub_5E54(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1, (v2 + 16));
}

char *sub_9A8C@<X0>(unint64_t a1@<X8>)
{

  return sub_8F80((a1 > 1), v2, 1, v1);
}

void sub_9AB0()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 560);
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);
}

uint64_t sub_9B30()
{
  v3 = (v1 + *(v2 + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v0[4];
  sub_4E5C(v0, v0[3]);

  return sub_12AA0();
}

uint64_t sub_9B78()
{
  sub_4F00((v0 + 104), v0 + 64);

  return sub_98C4(v0 + 64, v0 + 144);
}

uint64_t sub_9BBC()
{
  result = v0[53];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[50];
  return result;
}

uint64_t sub_9BF0()
{
  *(v0 + 16) = v1;

  return sub_4F00((v3 + 144), v0 + 40 * v2 + 32);
}

uint64_t sub_9C14()
{
  v2 = v0[56];
  v3 = v0[53];
  v5 = v0[49];
  v4 = v0[50];
}

uint64_t sub_9C30()
{
}

uint64_t sub_9C4C()
{

  return sub_12C70();
}

uint64_t sub_9C70()
{
  v1 = v0[4];
  sub_4E5C(v0, v0[3]);

  return sub_12A90();
}

BOOL sub_9CB0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_9CCC()
{

  return swift_task_alloc();
}

void *sub_9D04()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[45];
  v5 = v4[4];
  return sub_4E5C(v4, v4[3]);
}

uint64_t sub_9D30()
{
  v1 = sub_12890();
  v0[8] = v1;
  sub_9A54(v1);
  v0[9] = v2;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();
  v5 = sub_12910();
  v0[11] = v5;
  sub_9A54(v5);
  v0[12] = v6;
  v8 = *(v7 + 64) + 15;
  v0[13] = swift_task_alloc();
  v9 = sub_12920();
  v0[14] = v9;
  sub_9A54(v9);
  v0[15] = v10;
  v12 = *(v11 + 64) + 15;
  v0[16] = swift_task_alloc();
  v13 = *(*(sub_2308(&qword_1CBA8, &qword_13BC0) - 8) + 64) + 15;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v14 = sub_99F0();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_9EC8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v23 = v0[14];
  v24 = v0[17];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  sub_128F0();
  (*(v5 + 104))(v4, enum case for Calendar.Component.year(_:), v6);
  sub_12880();
  sub_128E0();
  v10 = v7;
  v11 = *(v8 + 8);
  v11(v10, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v23);
  v12 = [objc_allocWithZone(BMPublisherOptions) init];
  v0[19] = v12;
  sub_A378(v1, v24);
  if (sub_4640(v24, 1, v9) == 1)
  {
    isa = 0;
  }

  else
  {
    v14 = v0[17];
    v15 = v0[8];
    isa = sub_12850().super.isa;
    v11(v14, v15);
  }

  [v12 setStartDate:isa];

  v16 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v17 = [v16 Intent];
  swift_unknownObjectRelease();
  v18 = [v17 publisherWithOptions:v12];

  v0[6] = sub_A3E8;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_A4AC;
  v0[5] = &unk_18F50;
  v19 = _Block_copy(v0 + 2);
  v20 = [v18 filterWithIsIncluded:v19];
  v0[20] = v20;
  _Block_release(v19);

  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_A1C8;

  return sub_A51C(v20);
}

uint64_t sub_A1C8(char a1)
{
  v2 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v3 = sub_99F0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A2C0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);

  sub_A75C(v3);

  v7 = *(v0 + 8);
  v8 = *(v0 + 176);

  return v7(v8);
}

uint64_t sub_A378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2308(&qword_1CBA8, &qword_13BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A3E8(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 donatedBySiri] && (v3 = sub_AD1C(v2), v4))
    {
      if (v3 == 0xD000000000000010 && v4 == 0x8000000000014220)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_12F30();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_A4AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_A504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A53C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_A634;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000014, 0x80000000000141E0, sub_AA40, v2, &type metadata for Bool);
}

uint64_t sub_A634()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v7 = *v0;

  v3 = sub_99F0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A75C(uint64_t a1)
{
  v2 = sub_2308(&qword_1CBA8, &qword_13BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_A7C4(uint64_t a1, void *a2)
{
  v4 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v20 = sub_AB68;
  v21 = v12;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_AC08;
  v19 = &unk_18FC8;
  v13 = _Block_copy(&aBlock);

  v20 = sub_ACB8;
  v21 = v10;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_ACC0;
  v19 = &unk_18FF0;
  v14 = _Block_copy(&aBlock);

  v15 = [a2 sinkWithCompletion:v13 shouldContinue:v14];
  _Block_release(v14);
  _Block_release(v13);
}

uint64_t sub_AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  sub_2308(&unk_1CBB0, &unk_13BD0);
  return sub_12E20();
}

uint64_t sub_AAC0()
{
  v1 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_AB68(uint64_t a1)
{
  v3 = sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_9A54(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AA58(a1, v1 + v8, v9);
}

void sub_AC08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_AC70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_ACC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_AD1C(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_12DB0();

  return v3;
}

void sub_ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E24();
  a19 = v20;
  a20 = v21;
  v173 = sub_12A00();
  sub_5C78();
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v26, v27);
  sub_FCCC();
  v30 = (v29 - v28);
  v31 = type metadata accessor for NotebookSuggestion(0);
  v32 = (v31 - 8);
  v145 = *(v31 - 8);
  v146 = v145;
  v33 = *(v145 + 64);
  __chkstk_darwin(v31, v34);
  sub_5CE8();
  v177 = (v35 - v36);
  v39 = __chkstk_darwin(v37, v38);
  v144 = &v127 - v40;
  __chkstk_darwin(v39, v41);
  v43 = (&v127 - v42);
  sub_FDD8();
  v139 = v44;
  v142 = 0x8000000000014260;
  *v30 = 0xD000000000000023;
  v30[1] = 0x8000000000014260;
  v174 = enum case for SiriSuggestions.IntentType.inIntent(_:);
  v45 = *(v23 + 104);
  v175 = v23 + 104;
  v176 = v45;
  v134 = v30;
  (v45)(v30);
  v141 = sub_12A20();
  v43[5] = v141;
  v43[6] = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_4FBC(v43 + 2);
  sub_FE2C();
  v140 = sub_2308(&qword_1CBC0, &qword_13C50);
  v46 = swift_allocObject();
  v179 = xmmword_13760;
  *(v46 + 16) = xmmword_13760;
  v47 = v46;
  v133 = v46;
  v138 = sub_2308(&qword_1CBC8, &qword_13C58);
  v182 = v138;
  v137 = sub_F584();
  v183[0] = v137;
  sub_4FBC(&v180);
  v136 = sub_12A50();
  v135 = sub_12AE0();
  sub_12A40();
  sub_10070(0xD000000000000016, 0x80000000000140A0, &v180, (v47 + 32));
  v48 = v32[10];
  v49 = enum case for SuggestionDialogUtil.DialogId.addReminderLocation(_:);
  v171 = sub_129A0();
  sub_9AF8(v171);
  v170 = *(v50 + 104);
  v172 = v50 + 104;
  v170(v43 + v48, v49);
  v169 = sub_2308(&qword_1CBD8, &qword_13C70);
  v161 = sub_12AD0();
  sub_5C78();
  v52 = *(v51 + 72);
  v167 = *(v53 + 80);
  v168 = v52;
  v54 = v53;
  v55 = (v167 + 32) & ~v167;
  v149 = v55;
  v56 = swift_allocObject();
  sub_FCF4(v56);
  v58 = v57;
  v131 = v57;
  v59 = enum case for SiriHintsMode.display(_:);
  v165 = enum case for SiriHintsMode.display(_:);
  v164 = sub_129E0();
  sub_9AF8(v164);
  v163 = *(v60 + 104);
  v166 = v60 + 104;
  v163(v58 + v55, v59);
  v159 = enum case for DeliveryVehicle.siriHints(_:);
  v61 = *(v54 + 104);
  v160 = v54 + 104;
  v162 = v61;
  v61(v58 + v55);
  v156 = sub_2308(&unk_1CBE0, &qword_13C78);
  v62 = *(sub_12B60() - 8);
  v158 = *(v62 + 72);
  v157 = *(v62 + 80);
  v148 = (v157 + 32) & ~v157;
  v63 = swift_allocObject();
  sub_FCF4(v63);
  sub_12B80();
  v129 = sub_12980();
  v128 = v64;
  v155 = sub_2308(&qword_1CB50, &qword_13A78);
  v65 = sub_12A60();
  sub_FCB8(v65);
  v67 = v66;
  v69 = *(v68 + 72);
  v154 = *(v66 + 80);
  v70 = (v154 + 32) & ~v154;
  v153 = 3 * v69;
  v71 = swift_allocObject();
  v178 = xmmword_13A00;
  *(v71 + 16) = xmmword_13A00;
  v152 = enum case for DeviceType.iPhone(_:);
  v72 = *(v67 + 104);
  (v72)(v71 + v70);
  v151 = enum case for DeviceType.iPad(_:);
  v147 = v69;
  (v72)(v71 + v70 + v69);
  v73 = v71 + v70 + 2 * v69;
  v150 = enum case for DeviceType.mac(_:);
  v74 = v65;
  (v72)(v73);
  v143 = v43;
  v75 = v139;
  *v43 = 0xD000000000000013;
  v43[1] = v75;
  v43[7] = v133;
  v43[8] = &unk_13C68;
  v43[9] = 0;
  *(v43 + v32[11]) = &_swiftEmptyArrayStorage;
  *(v43 + v32[12]) = v131;
  v76 = (v43 + v32[13]);
  *v76 = sub_FCB4;
  v76[1] = 0;
  *(v43 + v32[14]) = v63;
  v77 = (v43 + v32[15]);
  *v77 = &unk_13C80;
  v77[1] = 0;
  *(v43 + v32[16]) = v71;
  v78 = (v43 + v32[17]);
  v79 = v128;
  *v78 = v129;
  v78[1] = v79;
  v80 = v134;
  v81 = v142;
  *v134 = 0xD000000000000023;
  v80[1] = v81;
  (v176)(v80, v174, v173);
  v82 = v144;
  *(v144 + 5) = v141;
  v82[6] = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_4FBC(v82 + 2);
  sub_FE2C();
  v83 = swift_allocObject();
  sub_FCF4(v83);
  v85 = v84;
  v142 = v84;
  v182 = v138;
  v183[0] = v137;
  sub_4FBC(&v180);
  sub_12A40();
  sub_10070(0xD000000000000017, 0x8000000000014080, &v180, (v85 + 32));
  (v170)(v82 + v32[10], enum case for SuggestionDialogUtil.DialogId.addReminderTime(_:), v171);
  v86 = swift_allocObject();
  sub_FCF4(v86);
  sub_FD6C();
  v87();
  sub_FD24();
  v88();
  sub_FD8C(&a10);
  v89 = swift_allocObject();
  sub_FCF4(v89);
  sub_12B80();
  v141 = sub_12980();
  v140 = v90;
  v132 = v70;
  sub_FD8C(v183);
  v91 = swift_allocObject();
  *(v91 + 16) = v178;
  v92 = v91 + v70;
  v93 = v74;
  v130 = v74;
  v94 = v74;
  v95 = v72;
  (v72)(v92, v152, v94);
  v96 = v147;
  (v95)(v92 + v147, v151, v93);
  (v95)(v92 + 2 * v96, v150, v93);
  *v82 = 0x6E696D6552646461;
  v82[1] = 0xEF656D6954726564;
  v82[7] = v142;
  v82[8] = &unk_13C90;
  v82[9] = 0;
  *(v82 + v32[11]) = &_swiftEmptyArrayStorage;
  *(v82 + v32[12]) = v86;
  v97 = (v82 + v32[13]);
  *v97 = sub_FCB4;
  v97[1] = 0;
  *(v82 + v32[14]) = v89;
  v98 = (v82 + v32[15]);
  *v98 = &unk_13C98;
  v98[1] = 0;
  *(v82 + v32[16]) = v91;
  v99 = (v82 + v32[17]);
  v100 = v140;
  *v99 = v141;
  v99[1] = v100;
  sub_FDD8();
  v142 = v101;
  v102 = v177;
  v177[5] = v173;
  v102[6] = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v102 + 2);
  sub_FDD8();
  *v103 = 0xD00000000000002BLL;
  v103[1] = v104;
  v176();
  (v170)(v102 + v32[10], enum case for SuggestionDialogUtil.DialogId.updateReminderTime(_:), v171);
  v105 = swift_allocObject();
  sub_FCF4(v105);
  sub_FD6C();
  v106();
  sub_FD24();
  v107();
  sub_FD8C(&a10);
  v108 = swift_allocObject();
  sub_FCF4(v108);
  sub_12B80();
  *&v179 = sub_12980();
  v176 = v109;
  v110 = v132;
  sub_FD8C(v183);
  v111 = swift_allocObject();
  *(v111 + 16) = v178;
  (v95)(v111 + v110, v152, v130);
  sub_FE14(&v181);
  v95();
  sub_FE14(&v180 + 12);
  v95();
  v112 = v177;
  v113 = v142;
  *v177 = 0xD000000000000012;
  v112[1] = v113;
  v112[7] = &_swiftEmptyArrayStorage;
  v112[8] = &unk_13CA8;
  v112[9] = 0;
  *(v112 + v32[11]) = &_swiftEmptyArrayStorage;
  *(v112 + v32[12]) = v105;
  v114 = (v112 + v32[13]);
  *v114 = sub_FCB4;
  v114[1] = 0;
  *(v112 + v32[14]) = v108;
  v115 = (v112 + v32[15]);
  *v115 = &unk_13CB0;
  v115[1] = 0;
  *(v112 + v32[16]) = v111;
  v116 = (v112 + v32[17]);
  v117 = v176;
  *v116 = v179;
  v116[1] = v117;
  sub_2308(&unk_1CBF0, &unk_13750);
  v118 = *(v145 + 72);
  v119 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = v178;
  v121 = sub_9BD8();
  sub_F8B4(v121, v122);
  sub_F8B4(v112, v120 + v119 + v118);
  v123 = v120 + v119 + 2 * v118;
  v124 = v143;
  sub_F8B4(v143, v123);
  sub_F918(v112, type metadata accessor for NotebookSuggestion);
  v125 = sub_9BD8();
  sub_F918(v125, v126);
  sub_F918(v124, type metadata accessor for NotebookSuggestion);
  sub_5DEC();
}

uint64_t sub_BB2C()
{
  sub_12D10();
  v0 = sub_12AC0();
  v3[3] = v0;
  v3[4] = sub_FC60(&unk_1CC60, &type metadata accessor for CoreSignalTypes);
  v1 = sub_4FBC(v3);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_12CE0();
  qword_1CFE8 = result;
  return result;
}

uint64_t sub_BC1C()
{
  v0 = sub_12960();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12D10();
  v6 = sub_12AC0();
  v10[3] = v6;
  v10[4] = sub_FC60(&unk_1CC60, &type metadata accessor for CoreSignalTypes);
  v7 = sub_4FBC(v10);
  (*(*(v6 - 8) + 104))(v7, enum case for CoreSignalTypes.app(_:), v6);
  (*(v1 + 104))(v5, enum case for SiriNotebookApp.reminders(_:), v0);
  sub_12950();
  (*(v1 + 8))(v5, v0);
  result = sub_12CE0();
  qword_1CFF0 = result;
  return result;
}

void sub_BDCC()
{
  sub_5E24();
  v0 = sub_12BC0();
  v1 = sub_FCB8(v0);
  v169 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1, v5);
  sub_FCCC();
  v162 = (v7 - v6);
  v8 = type metadata accessor for NotebookSuggestion(0);
  v9 = sub_FCB8(v8);
  v153 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_5CE8();
  v146 = (v14 - v15);
  __chkstk_darwin(v16, v17);
  v19 = &v118 - v18;
  v20 = sub_12A00();
  *(v19 + 5) = v20;
  *(v19 + 6) = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v19 + 2);
  sub_FDD8();
  *v21 = 0xD000000000000023;
  v21[1] = v22;
  v23 = *(v20 - 8);
  v24 = *(v23 + 104);
  LODWORD(v152) = enum case for SiriSuggestions.IntentType.inIntent(_:);
  v149 = v20;
  v151 = v24;
  v150 = (v23 + 104);
  v24();
  sub_2308(&qword_1CBC0, &qword_13C50);
  v25 = swift_allocObject();
  v170 = xmmword_13C10;
  *(v25 + 16) = xmmword_13C10;
  sub_FBC0(0, &qword_1CC50, INIntent_ptr);
  sub_FE6C();
  sub_10070(0x656D614E7473696CLL, 0xE800000000000000, v171, (v25 + 32));
  sub_FE6C();
  v132 = v25;
  sub_10070(0x7265646E696D6572, 0xED0000656C746954, v171, (v25 + 136));
  v163 = v8;
  v26 = *(v8 + 32);
  v27 = enum case for SuggestionDialogUtil.DialogId.createReminder(_:);
  v28 = sub_129A0();
  sub_9AF8(v28);
  v30 = *(v29 + 104);
  v143 = v31;
  v142 = v30;
  v141 = (v29 + 104);
  (v30)(&v19[v26], v27);
  v32 = sub_2308(&qword_1CC58, &qword_13D08);
  v33 = type metadata accessor for NotebookSuggestion.SignalDefinition(0);
  v34 = *(*(v33 - 8) + 80);
  v35 = (v34 + 32) & ~v34;
  v161 = *(*(v33 - 8) + 72);
  v131 = v34;
  *&v137 = v32;
  v36 = swift_allocObject();
  v168 = xmmword_13760;
  *(v36 + 16) = xmmword_13760;
  v148 = sub_2308(&qword_1CC40, &unk_13CE8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_13C20;
  if (qword_1C770 != -1)
  {
    swift_once();
  }

  *(v37 + 32) = qword_1CFF0;
  v155 = sub_12D10();

  *(v37 + 40) = sub_12CF0();
  *(v37 + 48) = sub_12D00();
  *(v37 + 56) = sub_12CD0();
  *(v36 + v35) = v37;
  sub_46C8(v36 + v35 + *(v33 + 20), 1, 1, v0);
  v167 = sub_2308(&qword_1CBD8, &qword_13C70);
  v160 = sub_12AD0();
  sub_5C78();
  v39 = v38;
  v41 = *(v40 + 72);
  v165 = *(v38 + 80);
  v147 = 2 * v41;
  v122 = ((v165 + 32) & ~v165) + 2 * v41;
  v154 = v33;
  v42 = (v165 + 32) & ~v165;
  v159 = v42;
  v43 = v41;
  v166 = v41;
  v44 = swift_allocObject();
  v45 = sub_FCF4(v44);
  v157 = v0;
  v47 = v46 + v42;
  v164 = enum case for DeliveryVehicle.siriHelp(_:);
  v48 = *(v39 + 104);
  v158 = v48;
  v48(v46 + v42, v45);
  v145 = enum case for DeliveryVehicle.siriAutoComplete(_:);
  (v48)(v47 + v43);
  v49 = sub_2308(&unk_1CBE0, &qword_13C78);
  v50 = *(sub_12B60() - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = v51 + *(v50 + 72);
  v136 = *(v50 + 80);
  v144 = v49;
  v135 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v168;
  v140 = v51;
  sub_12B80();
  v120 = sub_12980();
  v119 = v54;
  v55 = sub_2308(&qword_1CB50, &qword_13A78);
  v118 = v36;
  v56 = v55;
  v57 = sub_12A60();
  sub_FCB8(v57);
  v59 = v58;
  v121 = v35;
  v61 = *(v60 + 72);
  v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v128 = *(v58 + 80);
  v134 = v56;
  v127 = v62 + 3 * v61;
  v63 = swift_allocObject();
  v156 = xmmword_13A00;
  *(v63 + 16) = xmmword_13A00;
  v130 = v62;
  v64 = *(v59 + 104);
  v126 = enum case for DeviceType.iPhone(_:);
  v64(v63 + v62);
  v125 = enum case for DeviceType.iPad(_:);
  v64(v63 + v62 + v61);
  v124 = 2 * v61;
  v133 = v61;
  v123 = enum case for DeviceType.mac(_:);
  v139 = v57;
  v138 = v59 + 104;
  v129 = v64;
  v64(v63 + v62 + 2 * v61);
  strcpy(v19, "createReminder");
  v19[15] = -18;
  *(v19 + 7) = v132;
  *(v19 + 8) = &unk_13D00;
  *(v19 + 9) = 0;
  v65 = v163;
  *&v19[v163[9]] = v118;
  *&v19[v65[10]] = v44;
  v66 = &v19[v65[11]];
  *v66 = sub_FCB4;
  *(v66 + 1) = 0;
  *&v19[v65[12]] = v53;
  v67 = &v19[v65[13]];
  *v67 = &unk_13D10;
  *(v67 + 1) = 0;
  *&v19[v65[14]] = v63;
  v68 = &v19[v65[15]];
  v69 = v119;
  *v68 = v120;
  v68[1] = v69;
  v70 = v146;
  v146[5] = v149;
  v70[6] = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v70 + 2);
  sub_FDD8();
  *v71 = 0xD000000000000025;
  v71[1] = v72;
  v151();
  v142(v70 + v65[8], enum case for SuggestionDialogUtil.DialogId.createNote(_:), v143);
  v73 = v121;
  sub_FD8C(&v160);
  v74 = swift_allocObject();
  sub_FCF4(v74);
  v151 = v75;
  v76 = (v75 + v73);
  v77 = swift_allocObject();
  v137 = xmmword_13C30;
  *(v77 + 16) = xmmword_13C30;
  *(v77 + 32) = sub_12CD0();
  *(v77 + 40) = sub_12CF0();
  v78 = swift_allocObject();
  v79 = sub_FCF4(v78);
  v81 = v80 + v159;
  LODWORD(v149) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v82 = v160;
  v83 = v158;
  v158(v80 + v159, v79);
  v152 = v39 + 104;
  v83(v81 + v166, v164, v82);
  v84 = v162;
  *v162 = v78;
  v85 = v169;
  v86 = *(v169 + 104);
  LODWORD(v143) = enum case for SignalContextProperties.deliveryVehicle(_:);
  v87 = v157;
  v142 = v86;
  v86(v84);
  *v76 = v77;
  v88 = *(v154 + 20);
  v150 = v19;
  v89 = *(v85 + 32);
  v169 = v85 + 32;
  v141 = v89;
  v89(v76 + v88, v84, v87);
  sub_46C8(v76 + v88, 0, 1, v87);
  v90 = swift_allocObject();
  *(v90 + 16) = v137;
  *(v90 + 32) = sub_12D00();
  if (qword_1C768 != -1)
  {
    swift_once();
  }

  v91 = (v76 + v161);
  v161 = qword_1CFE8;
  *(v90 + 40) = qword_1CFE8;
  v92 = v159;
  v93 = swift_allocObject();
  *(v93 + 16) = v168;
  v94 = v160;
  v95 = v158;
  (v158)(v93 + v92, v164, v160);
  v96 = v162;
  *v162 = v93;
  v97 = v157;
  v142(v96, v143, v157);
  *v91 = v90;
  v98 = *(v154 + 20);
  v141(v91 + v98, v96, v97);
  sub_46C8(v91 + v98, 0, 1, v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v156;
  (v95)(v99 + v92, v164, v94);
  sub_FE14(&v172);
  v95();
  sub_FE14(v171 + 12);
  v95();
  sub_FD8C(&v165);
  v100 = swift_allocObject();
  *(v100 + 16) = v168;

  sub_12B70();
  v101 = sub_12970();
  v103 = v102;
  sub_FD8C(&v157);
  v104 = swift_allocObject();
  *(v104 + 16) = v156;
  v105 = v104 + v130;
  v106 = v139;
  v107 = v129;
  (v129)(v104 + v130, v126, v139);
  (v107)(v105 + v133, v125, v106);
  (v107)(v105 + v124, v123, v106);
  *v70 = 0x6F4E657461657263;
  v70[1] = 0xEA00000000006574;
  v70[7] = &_swiftEmptyArrayStorage;
  v70[8] = &unk_13D18;
  v70[9] = 0;
  v108 = v163;
  *(v70 + v163[9]) = v151;
  *(v70 + v108[10]) = v99;
  v109 = (v70 + v108[11]);
  *v109 = sub_FCB4;
  v109[1] = 0;
  *(v70 + v108[12]) = v100;
  v110 = (v70 + v108[13]);
  *v110 = &unk_13D20;
  v110[1] = 0;
  *(v70 + v108[14]) = v104;
  v111 = (v70 + v108[15]);
  *v111 = v101;
  v111[1] = v103;
  sub_2308(&unk_1CBF0, &unk_13750);
  v112 = *(v153 + 72);
  v113 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v114 = swift_allocObject();
  sub_FCF4(v114);
  v116 = v115 + v113;
  v117 = v150;
  sub_F8B4(v150, v116);
  sub_FC00(v70, v116 + v112, type metadata accessor for NotebookSuggestion);
  sub_F918(v117, type metadata accessor for NotebookSuggestion);
  sub_5DEC();
}

uint64_t sub_CCD8()
{
  sub_9B08();
  sub_12D90();
  sub_9BCC();

  return v0();
}

uint64_t sub_CD50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_12B00();
  v3 = sub_12AF0();
  a1[3] = v2;
  result = sub_FC60(&qword_1CC08, &type metadata accessor for UtteranceAction);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_CDCC()
{
  v0 = sub_2308(&unk_1CC20, &qword_13CD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_12A50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v18 - v13;
  sub_12A30();
  if (sub_4640(v4, 1, v5) == 1)
  {
    sub_986C(v4, &unk_1CC20, &qword_13CD0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    (*(v6 + 16))(v11, v14, v5);
    sub_304C();
    v15 = (v16 >> 8) & 1;
    (*(v6 + 8))(v14, v5);
  }

  return v15;
}

uint64_t sub_CF8C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_129F0();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_D058, 0, 0);
}

uint64_t sub_D058()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v5[4];
  sub_4E5C(v5, v5[3]);
  sub_FDE4();
  v7 = sub_FDC0();
  v8(v7);
  sub_FDB4();
  v9 = sub_5F04();
  v10 = *(v4 + 8);
  v11 = sub_FD98();
  v10(v11);
  v12 = sub_FE08();
  v10(v12);
  if ((v9 & 1) == 0)
  {
    v14 = v0[22];
    v13 = v0[23];
    v15 = v0[20];
    sub_12B30();
    v30(v14, enum case for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.displayForward(_:), v15);
    sub_FDB4();
    v16 = sub_5F04();
    v17 = sub_FD98();
    v10(v17);
    v18 = sub_FE08();
    v10(v18);
    if ((v16 & 1) == 0)
    {
      v24 = v0[22];
      v25 = v0[23];
      sub_2308(&qword_1CC10, &qword_13CC0);
      inited = swift_initStackObject();
      v27 = sub_FD48(inited, xmmword_13C10);
      v27[3].n128_u8[0] = 0;
      v27[4].n128_u64[1] = &type metadata for Bool;
      strcpy(&v27[5], "isDisplayHint");
      v27[5].n128_u16[7] = -4864;
      v27[7].n128_u64[1] = &type metadata for Bool;
      v27[6].n128_u8[0] = 0;
      sub_12D90();

      sub_FD00();
      sub_9B14();

      __asm { BRAA            X2, X16 }
    }
  }

  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_D2A4;
  v20 = v0[19];
  sub_9B14();

  return sub_D4A4(v21);
}

uint64_t sub_D2A4()
{
  sub_9B08();
  v1 = *(*v0 + 192);
  v4 = *v0;
  *(*v0 + 200) = v2;

  return _swift_task_switch(sub_D3A0, 0, 0);
}

uint64_t sub_D3A0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  v5 = sub_FD48(inited, xmmword_13C10);
  v5[3].n128_u8[0] = (v1 & 1) == 0;
  v5[4].n128_u64[1] = &type metadata for Bool;
  strcpy(&v5[5], "isDisplayHint");
  v5[5].n128_u16[7] = -4864;
  v5[7].n128_u64[1] = &type metadata for Bool;
  v5[6].n128_u8[0] = 1;
  sub_12D90();

  v6 = sub_FD00();

  return v7(v6);
}

uint64_t sub_D4C4()
{
  v1 = *(v0 + 56);

  sub_37F8(v2, v0 + 16);
  if (*(v0 + 16) != 2 && (*(v0 + 32) & 1) == 0 && (*(v0 + 48) & 1) == 0)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = [objc_allocWithZone(CNContactStore) init];
    *(v0 + 64) = v5;
    v6 = [objc_opt_self() defaultManager];
    *(v0 + 72) = v6;
    sub_EEC0(v5);
    if (v7)
    {
      v8 = [objc_allocWithZone(CLLocation) initWithLatitude:v3 longitude:v4];
      *(v0 + 80) = v8;
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      v9[2] = v6;
      v9[3] = 0x407F400000000000;
      v9[4] = v8;
      v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v11[1] = sub_D6BC;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 49, 0, 0, 0xD000000000000040, 0x80000000000142C0, sub_FA80, v9, &type metadata for Bool);
    }
  }

  sub_9BCC();

  return v12(1);
}

uint64_t sub_D6BC()
{
  sub_9B08();
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *v0;
  sub_9AD4();
  *v4 = v3;

  return _swift_task_switch(sub_D7C8, 0, 0);
}

uint64_t sub_D7C8()
{
  sub_9B08();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  if (*(v0 + 49) == 1 && sub_F99C(v3, &off_18C60) == 2)
  {
    __break(1u);
  }

  sub_9BCC();
  v6 = v5 & 1;

  return v4(v6);
}

uint64_t sub_D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_12B10();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_D920, 0, 0);
}

uint64_t sub_D920()
{
  sub_9B08();
  v1 = *(v0 + 64);

  sub_37F8(v2, v0 + 16);
  v3 = *(v0 + 16);
  if (v3 == 2)
  {
    goto LABEL_2;
  }

  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 56), *(v0 + 80));
  sub_2BF4();
  if (v3 & 1) == 0 || (v7 & 0x100) != 0 || (v7)
  {
    goto LABEL_2;
  }

  if (qword_1C780 != -1)
  {
    swift_once();
  }

  if (sub_11CDC() - 3 > 1)
  {
LABEL_2:
    v4 = *(v0 + 96);

    sub_9BCC();

    return v5(0);
  }

  else
  {
    sub_4E5C(*(v0 + 72), *(*(v0 + 72) + 24));
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_DA84;

    return sub_9D30();
  }
}

uint64_t sub_DA84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  sub_9AD4();
  *v6 = v5;

  v7 = *(v3 + 96);

  v8 = *(v5 + 8);

  return v8(a1);
}

uint64_t sub_DB9C()
{
  v0 = sub_2308(&unk_1CC20, &qword_13CD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_12A50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v18 - v13;
  sub_12A30();
  if (sub_4640(v4, 1, v5) == 1)
  {
    sub_986C(v4, &unk_1CC20, &qword_13CD0);
    v15 = 0;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    (*(v6 + 16))(v11, v14, v5);
    sub_304C();
    v15 = v16;
    (*(v6 + 8))(v14, v5);
  }

  return v15 & 1;
}

uint64_t sub_DD5C(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_129F0();
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_DE28, 0, 0);
}

void sub_DE28()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v5[4];
  sub_4E5C(v5, v5[3]);
  sub_FDE4();
  v7 = sub_FDC0();
  v8(v7);
  sub_FDB4();
  v9 = sub_5F04();
  v10 = *(v4 + 8);
  v11 = sub_FD98();
  v10(v11);
  v12 = sub_FE08();
  v10(v12);
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[25];
    sub_12B30();
    v27(v15, enum case for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.displayForward(_:), v16);
    sub_FDB4();
    v13 = sub_5F04();
    v17 = sub_FD98();
    v10(v17);
    v18 = sub_FE08();
    v10(v18);
  }

  v20 = v0[27];
  v19 = v0[28];
  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13A00;
  *(inited + 32) = 0x7265746641796164;
  *(inited + 40) = 0xEF646E656B656557;
  sub_E094();
  v23 = v22;
  v24 = sub_2308(&qword_1CC18, &qword_13CC8);
  *(inited + 48) = v23;
  *(inited + 72) = v24;
  strcpy((inited + 80), "isDisplayHint");
  *(inited + 94) = -4864;
  *(inited + 96) = v13 & 1;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "hintVariation");
  *(inited + 142) = -4864;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = sub_F9F4(2uLL) + 1;
  sub_12D90();

  sub_FD00();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

void sub_E094()
{
  sub_5E24();
  v1 = sub_12940();
  v44 = sub_FCB8(v1);
  v45 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v44, v5);
  sub_FCCC();
  v8 = v7 - v6;
  v9 = sub_2308(&qword_1CBA8, &qword_13BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v12 = sub_FE4C();
  v13 = sub_FCB8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_5CE8();
  v21 = v19 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v43 - v24;
  v26 = sub_12920();
  v27 = sub_FCB8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  sub_FCCC();
  sub_128F0();
  sub_12880();
  if (sub_128C0())
  {
    sub_FD98();
    sub_EC20();
    if (sub_4640(v0, 1, v12) == 1)
    {
      (*(v15 + 8))(v25, v12);
      v31 = sub_FDA4();
      v32(v31);
      sub_986C(v0, &qword_1CBA8, &qword_13BC0);
    }

    else
    {
      (*(v15 + 32))(v21, v0, v12);
      sub_2308(&qword_1CC10, &qword_13CC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_13C10;
      *(inited + 32) = 1935893875;
      *(inited + 40) = 0xE400000000000000;
      sub_12870();
      *(inited + 48) = v36;
      *(inited + 72) = &type metadata for Double;
      *(inited + 80) = 0x656E6F5A656D6974;
      *(inited + 88) = 0xE800000000000000;
      sub_12900();
      v37 = sub_12930();
      v43 = v38;
      (*(v45 + 8))(v8, v44);
      *(inited + 120) = &type metadata for String;
      v39 = v43;
      *(inited + 96) = v37;
      *(inited + 104) = v39;
      sub_12D90();
      v40 = *(v15 + 8);
      v40(v21, v12);
      v40(v25, v12);
      v41 = sub_FDA4();
      v42(v41);
    }
  }

  else
  {
    (*(v15 + 8))(v25, v12);
    v33 = sub_FDA4();
    v34(v33);
  }

  sub_5DEC();
}

uint64_t sub_E43C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_12B10();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_E4FC, 0, 0);
}

uint64_t sub_E4FC()
{
  sub_9B08();
  v1 = *(v0 + 64);

  sub_37F8(v2, v0 + 16);
  v3 = *(v0 + 16);
  if (v3 == 2)
  {
    v4 = 0;
  }

  else
  {
    (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 56), *(v0 + 72));
    sub_2BF4();
    if (v3)
    {
      v4 = ((v5 & 0x100) == 0) & (v5 ^ 1u);
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = *(v0 + 88);

  sub_9BCC();

  return v7(v4);
}

uint64_t sub_E5BC()
{
  v1 = sub_12890();
  v0[12] = v1;
  v2 = *(v1 - 8);
  v0[13] = v2;
  v3 = *(v2 + 64) + 15;
  v0[14] = swift_task_alloc();
  v4 = sub_12920();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  v6 = *(v5 + 64) + 15;
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_E6D4, 0, 0);
}

uint64_t sub_E6D4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13760;
  *(inited + 32) = 0x6E656B6565577369;
  *(inited + 40) = 0xE900000000000064;
  sub_128F0();
  sub_12880();
  v8 = sub_128C0();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v8 & 1;
  sub_12D90();

  v9 = sub_FD00();

  return v10(v9);
}

uint64_t sub_E82C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(sub_2308(&qword_1CBA8, &qword_13BC0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = sub_12890();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = sub_12920();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = *(*(sub_2308(&qword_1CC00, &qword_13CB8) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  v2[12] = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_E9F4, 0, 0);
}

uint64_t sub_E9F4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[2];

  sub_3DC8();
  if (sub_4640(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    v5 = &unk_1CC00;
    v6 = &unk_13CB8;
LABEL_5:
    sub_986C(v4, v5, v6);
    v20 = 0;
    goto LABEL_7;
  }

  v7 = v0[10];
  v9 = v0[3];
  v8 = v0[4];
  sub_FC00(v0[11], v0[13], type metadata accessor for UpdateReminderExecutionParameters);
  sub_128F0();
  sub_128D0();
  v10 = sub_4640(v9, 1, v8);
  v11 = v0[13];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v10 == 1)
  {
    v15 = v0[3];
    v16 = *(v13 + 8);
    v17 = sub_9BD8();
    v18(v17);
    sub_FCDC();
    sub_F918(v11, v19);
    v5 = &qword_1CBA8;
    v6 = &qword_13BC0;
    v4 = v15;
    goto LABEL_5;
  }

  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[4];
  v24 = v0[5];
  (*(v24 + 32))(v21, v0[3], v23);
  sub_12880();
  sub_FD98();
  v20 = sub_12860();
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  v26 = *(v13 + 8);
  v27 = sub_9BD8();
  v28(v27);
  sub_FCDC();
  sub_F918(v11, v29);
LABEL_7:
  v30 = v0[13];
  v32 = v0[10];
  v31 = v0[11];
  v34 = v0[6];
  v33 = v0[7];
  v35 = v0[3];

  sub_9BCC();

  return v36(v20 & 1);
}

void sub_EC20()
{
  sub_5E24();
  sub_FE20();
  v36 = v2;
  v3 = sub_12910();
  v4 = sub_FCB8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_FCCC();
  v12 = v11 - v10;
  v13 = sub_2308(&qword_1CBA8, &qword_13BC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v16 = sub_FE4C();
  v17 = sub_FCB8(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_FCCC();
  v23 = v22 - v21;
  v26 = *(v6 + 104);
  v24 = v6 + 104;
  v25 = v26;
  v41 = enum case for Calendar.Component.day(_:);
  v39 = (v27 + 32);
  v40 = (v24 - 96);
  v37 = (v27 + 8);
  v38 = v26;
  v28 = 1;
  while (1)
  {
    v25(v12, v41, v3);
    sub_FDB4();
    sub_128E0();
    (*v40)(v12, v3);
    if (sub_4640(v1, 1, v16) != 1)
    {
      break;
    }

    sub_986C(v1, &qword_1CBA8, &qword_13BC0);
LABEL_6:
    if (++v28 == 7)
    {
      v34 = 1;
      v35 = v36;
      goto LABEL_9;
    }
  }

  v29 = v12;
  v30 = v3;
  v31 = v24;
  v32 = v0;
  v33 = *v39;
  (*v39)(v23, v1, v16);
  if (sub_128C0())
  {
    (*v37)(v23, v16);
    v0 = v32;
    v24 = v31;
    v3 = v30;
    v12 = v29;
    v25 = v38;
    goto LABEL_6;
  }

  v35 = v36;
  v33(v36, v23, v16);
  v34 = 0;
LABEL_9:
  sub_46C8(v35, v34, 1, v16);
  sub_5DEC();
}

void sub_EEC0(void *a1)
{
  v1 = sub_F45C(a1);
  if (v1)
  {
    v17 = v1;
    v2 = [v1 postalAddresses];
    sub_2308(&qword_1CC38, &qword_13CE0);
    v3 = sub_12E00();

    v4 = sub_F978(v3);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
LABEL_19:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_12EC0();
      }

      else
      {
        if (i >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = [v6 label];
      if (v8)
      {
        v9 = v8;
        v10 = sub_12DB0();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = sub_12DB0();
      if (v12)
      {
        if (v10 == v13 && v12 == v14)
        {

          return;
        }

        v16 = sub_12F30();

        if (v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_F0C8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  aBlock[4] = sub_FB1C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_F3B8;
  aBlock[3] = &unk_19078;
  v16 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestWithinDistance:a3 ofLocation:v16 withHandler:a4];
  _Block_release(v16);
}

void sub_F290(uint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v3 = sub_F978(a1);
    v4 = 0;
    do
    {
      v5 = v4;
      if (v3 == v4)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_12EC0();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v8 = [v6 type];

      v4 = v5 + 1;
    }

    while (v8);
  }

  sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_12E20();
}

uint64_t sub_F3B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_FBC0(0, &qword_1CC30, RTLocationOfInterest_ptr);
    v4 = sub_12E00();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_F45C(void *a1)
{
  sub_2308(&qword_1CC40, &unk_13CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_13C40;
  *(v2 + 32) = CNContactPostalAddressesKey;
  v3 = CNContactPostalAddressesKey;
  sub_2308(&qword_1CC48, &qword_13CF8);
  isa = sub_12DF0().super.isa;

  v9 = 0;
  v5 = [a1 _ios_meContactWithKeysToFetch:isa error:&v9];

  v6 = v9;
  if (!v5)
  {
    v7 = v6;
    sub_12820();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_F584()
{
  result = qword_1CBD0;
  if (!qword_1CBD0)
  {
    sub_F5E8(&qword_1CBC8, &qword_13C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBD0);
  }

  return result;
}

uint64_t sub_F5E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_F630()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_FD10(v1);

  return sub_CF8C(v2, v3);
}

uint64_t sub_F6B8()
{
  sub_9B08();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_9AD4();
  *v5 = v4;

  sub_9BCC();

  return v6(v2);
}

uint64_t sub_F7A4()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_FD10(v1);

  return sub_DD5C(v2);
}

uint64_t sub_F82C()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_FD10(v1);

  return sub_E5BC();
}

uint64_t sub_F8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_9AF8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_F978(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

unint64_t sub_F99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 2;
  }

  result = sub_F9F4(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_F9F4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_FA90()
{
  v1 = sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_9AF8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_FB1C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_2308(&unk_1CBB0, &unk_13BD0) - 8) + 80);

  sub_F290(a1, a2);
}

uint64_t sub_FBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FBC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_FC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_9AF8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_FC60(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_FCF4(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

void sub_FD24()
{
  v1 = *(v0 - 308);
  v2 = *(v0 - 296);
  v3 = *(v0 - 288);
  v4 = *(v0 - 304);
}

__n128 *sub_FD48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6948656D6F487369;
  result[2].n128_u64[1] = 0xEA0000000000746ELL;
  return result;
}

void sub_FD6C()
{
  v1 = *(v0 - 260);
  v2 = *(v0 - 272);
  v3 = *(v0 - 256);
  v4 = *(v0 - 280);
}

uint64_t sub_FDC0()
{
  result = v0;
  v3 = *(v1 + 104);
  return result;
}

uint64_t sub_FDE4()
{

  return sub_12B30();
}

uint64_t sub_FE2C()
{

  return SiriSuggestions.IntentMatch.init(intentType:matcher:)(v1, v0, 0);
}

uint64_t sub_FE4C()
{

  return sub_12890();
}

uint64_t sub_FE6C()
{

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(v0, 0, v1);
}

uint64_t sub_FE8C()
{
  v1 = v0;
  v2 = sub_12840();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotebookSuggestion(0);
  v9 = v0 + *(v8 + 32);
  sub_12990();
  sub_129B0();
  v10 = type metadata accessor for NotebookSuggestionsAssetProvider();
  v11 = swift_allocObject();
  v17[3] = v10;
  v17[4] = sub_11088();
  v17[0] = v11;
  v12 = (v1 + *(v8 + 44));
  v14 = *v12;
  v13 = v12[1];
  v16[3] = &type metadata for NotebookSuggestion.InvocationProvider;
  v16[4] = sub_110DC();
  v16[0] = v14;
  v16[1] = v13;

  sub_12AB0();

  (*(v3 + 8))(v7, v2);
  sub_58CC(v16);
  return sub_58CC(v17);
}

uint64_t sub_10018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for NotebookSuggestion.SignalDefinition(0) + 20);
  v4 = sub_12BC0();

  return sub_46C8(a2 + v3, 1, 1, v4);
}

uint64_t sub_10070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2308(&qword_1CD18, &qword_13D88);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  swift_bridgeObjectRetain_n();
  sub_12BB0();
  sub_98C4(a3, v17);
  v11 = sub_12B50();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_12B40();
  a4[5] = &type metadata for TrueResolver;
  v15 = sub_11130();
  a4[2] = a1;
  a4[3] = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[6] = v15;
  a4[7] = v14;
  return sub_4F00(a3, (a4 + 8));
}

uint64_t sub_101B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_11B44();
}

uint64_t sub_101C8()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 24);
    v5 = [v3 targetTaskList];
    v6 = *(v0 + 24);
    if (v5)
    {
      v7 = v5;
      v8 = *(v0 + 16);
      v9 = [v5 title];

      v10 = [v9 description];
      v11 = sub_12DB0();
      v13 = v12;

      v8[3] = &type metadata for String;
      *v8 = v11;
      v8[1] = v13;
      v14 = &enum case for IntentParameter.directAssignment(_:);
      goto LABEL_6;
    }
  }

  v8 = *(v0 + 16);
  v14 = &enum case for IntentParameter.ignore(_:);
LABEL_6:
  v15 = *v14;
  v16 = sub_12AE0();
  sub_9AF8(v16);
  (*(v17 + 104))(v8, v15);
  sub_11B54();

  return v18();
}

uint64_t sub_10338(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_11B44();
}

uint64_t sub_1034C()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *(v0 + 24);
  v5 = [v3 targetTaskList];
  if (!v5)
  {
    v20 = *(v0 + 24);
LABEL_10:

LABEL_11:
    v12 = *(v0 + 16);
    v19 = &enum case for IntentParameter.ignore(_:);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 tasks];

  sub_111DC();
  v8 = sub_12E00();

  result = sub_F974(v8);
  if (!result)
  {
    v20 = *(v0 + 24);

    goto LABEL_10;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_12EC0();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);

  v14 = [v11 title];

  v15 = [v14 description];
  v16 = sub_12DB0();
  v18 = v17;

  v12[3] = &type metadata for String;
  *v12 = v16;
  v12[1] = v18;
  v19 = &enum case for IntentParameter.directAssignment(_:);
LABEL_12:
  v21 = *v19;
  v22 = sub_12AE0();
  sub_9AF8(v22);
  (*(v23 + 104))(v12, v21);
  sub_11B54();

  return v24();
}

uint64_t sub_10550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NotebookSuggestion(0);
  v6 = v5;
  if (v4)
  {
    sub_F8B4(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_46C8(a2, v7, 1, v6);
}

uint64_t sub_105F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_12A50();
  sub_11BB0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_106A8, 0, 0);
}

uint64_t sub_106A8()
{
  v1 = sub_11B64();
  v2(v1);
  sub_304C();
  *(v0 + 24) = &type metadata for Bool;
  *v0 = v3 & 1;
  v4 = enum case for IntentParameter.directAssignment(_:);
  v5 = sub_12AE0();
  sub_9AF8(v5);
  (*(v6 + 104))(v0, v4);

  sub_11B54();

  return v7();
}

uint64_t sub_10778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_12A50();
  sub_11BB0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1082C, 0, 0);
}

uint64_t sub_1082C()
{
  v1 = sub_11B64();
  v2(v1);
  sub_304C();
  *(v0 + 24) = &type metadata for Bool;
  *v0 = v3 & 1;
  v4 = enum case for IntentParameter.directAssignment(_:);
  v5 = sub_12AE0();
  sub_9AF8(v5);
  (*(v6 + 104))(v0, v4);

  sub_11B54();

  return v7();
}

uint64_t sub_108FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2308(&qword_1CD30, &qword_13DA8);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v53 - v10;
  v12 = sub_2308(&qword_1CD38, &qword_13DB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = v53 - v15;
  v17 = type metadata accessor for NotebookSuggestion(0);
  v18 = sub_9AF8(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BDCC();
  v25 = v24;
  sub_ADA0(v24, v26, v27, v28, v29, v30, v31, v32, v53[0], v53[1], v54, v55, v56[0], v56[1], v56[2], v57, v58, v59, v60, v61);
  v56[0] = v25;
  sub_9358(v33);
  v54 = a2;
  v34 = sub_10DFC(sub_11220, v53, v56[0]);
  sub_10550(v34, v16);

  if (sub_4640(v16, 1, v17) == 1)
  {
    sub_11240(v16);
    if (qword_1C778 != -1)
    {
      swift_once();
    }

    v35 = sub_12D60();
    sub_4DE0(v35, qword_1CFF8);
    sub_98C4(a2, v56);
    v36 = sub_12D40();
    v37 = sub_12E40();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136315138;
      sub_4E5C(v56, v57);
      v40 = sub_12B20();
      v42 = v41;
      sub_58CC(v56);
      v43 = sub_47A8(v40, v42, &v55);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_0, v36, v37, "[NotebookSuggestionsAssetProvider] Cannot get matching NotebookSuggestion for candidate '%s', default to Siri icon", v38, 0xCu);
      sub_58CC(v39);
    }

    else
    {

      sub_58CC(v56);
    }

    strcpy(v11, "com.apple.siri");
    v11[15] = -18;
    v50 = enum case for Image.appIcon(_:);
    v51 = sub_12CB0();
    sub_9AF8(v51);
    (*(v52 + 104))(v11, v50, v51);
    sub_46C8(v11, 0, 1, v51);
    sub_46C8(v8, 1, 1, v51);
    return sub_12CC0();
  }

  else
  {
    sub_112A8(v16, v23);
    v44 = &v23[*(v17 + 60)];
    v45 = *(v44 + 1);
    *v11 = *v44;
    *(v11 + 1) = v45;
    v46 = enum case for Image.appIcon(_:);
    v47 = sub_12CB0();
    sub_9AF8(v47);
    (*(v48 + 104))(v11, v46, v47);
    sub_46C8(v11, 0, 1, v47);
    sub_46C8(v8, 1, 1, v47);

    sub_12CC0();
    return sub_1130C(v23);
  }
}

uint64_t sub_10D60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[4];
  sub_4E5C(a2, a2[3]);
  if (v2 == sub_12B20() && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_12F30();
  }

  return v7 & 1;
}

uint64_t sub_10DFC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = type metadata accessor for NotebookSuggestion(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5 - 8, v8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v11);
  v14 = &v26 - v13;
  v15 = 0;
  v16 = *(a3 + 16);
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v16 == v15)
    {

      return v29;
    }

    if (v15 >= *(a3 + 16))
    {
      break;
    }

    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_F8B4(a3 + v17 + v18 * v15, v14);
    v19 = v30(v14);
    if (v3)
    {
      sub_1130C(v14);
      v25 = v29;

      return v25;
    }

    if (v19)
    {
      sub_112A8(v14, v28);
      v20 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F0(0, v20[2] + 1, 1);
        v20 = v32;
      }

      v23 = v20[2];
      v22 = v20[3];
      v24 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v29 = (v23 + 1);
        v27 = v23;
        sub_24F0(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v27;
        v20 = v32;
      }

      ++v15;
      v20[2] = v24;
      v29 = v20;
      result = sub_112A8(v28, v20 + v17 + v23 * v18);
    }

    else
    {
      result = sub_1130C(v14);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_11088()
{
  result = qword_1CD08;
  if (!qword_1CD08)
  {
    type metadata accessor for NotebookSuggestionsAssetProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD08);
  }

  return result;
}

unint64_t sub_110DC()
{
  result = qword_1CD10;
  if (!qword_1CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD10);
  }

  return result;
}

unint64_t sub_11130()
{
  result = qword_1CD20;
  if (!qword_1CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD20);
  }

  return result;
}

uint64_t sub_111A4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_111DC()
{
  result = qword_1CD28;
  if (!qword_1CD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CD28);
  }

  return result;
}

uint64_t sub_11240(uint64_t a1)
{
  v2 = sub_2308(&qword_1CD38, &qword_13DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_112A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1130C(uint64_t a1)
{
  v2 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11368(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_113A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_113F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_11414(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_11454(uint64_t result, int a2, int a3)
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

uint64_t sub_114D0(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_11B9C(*a1);
  }

  sub_2308(&qword_1CB58, &qword_13A80);
  v5 = sub_11B7C(*(a3 + 20));

  return sub_4640(v5, v6, v7);
}

void sub_11568()
{
  sub_11B88();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2308(&qword_1CB58, &qword_13A80);
    v5 = sub_11B7C(*(v4 + 20));

    sub_46C8(v5, v6, v0, v7);
  }
}

void sub_115E4()
{
  sub_116C8(319, &qword_1CDA8, &type metadata accessor for Signal, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_116C8(319, &unk_1CDB0, &type metadata accessor for SignalContextProperties, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_116C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_11740(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_11B9C(*(a1 + 8));
  }

  sub_129A0();
  v5 = sub_11B7C(*(a3 + 32));

  return sub_4640(v5, v6, v7);
}

void sub_117CC()
{
  sub_11B88();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_129A0();
    v5 = sub_11B7C(*(v4 + 32));

    sub_46C8(v5, v6, v0, v7);
  }
}

unint64_t sub_1183C()
{
  sub_11A48();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_11AAC();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_11AFC();
      if (v5 <= 0x3F)
      {
        v6 = sub_129A0();
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_116C8(319, &qword_1CE68, type metadata accessor for NotebookSuggestion.SignalDefinition, &type metadata accessor for Array);
        if (v8 > 0x3F)
        {
          return v6;
        }

        sub_116C8(319, &qword_1CE70, &type metadata accessor for DeliveryVehicle, &type metadata accessor for Array);
        if (v9 > 0x3F)
        {
          return v6;
        }

        sub_116C8(319, &qword_1CE78, &type metadata accessor for VersionedInvocation, &type metadata accessor for Array);
        if (v10 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_116C8(319, &unk_1CE80, &type metadata accessor for DeviceType, &type metadata accessor for Array);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_11A48()
{
  if (!qword_1CE48)
  {
    sub_F5E8(&qword_1CE50, qword_13E98);
    v0 = sub_12E90();
    if (!v1)
    {
      atomic_store(v0, &qword_1CE48);
    }
  }
}

void sub_11AAC()
{
  if (!qword_1CE58)
  {
    v0 = sub_12E10();
    if (!v1)
    {
      atomic_store(v0, &qword_1CE58);
    }
  }
}

unint64_t sub_11AFC()
{
  result = qword_1CE60;
  if (!qword_1CE60)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1CE60);
  }

  return result;
}

uint64_t sub_11B54()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_11B64()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[5] + 16);
  return v0[6];
}

uint64_t sub_11B9C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_11BB0(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_11BC4()
{
  v0 = sub_12D60();
  sub_11C48(v0, qword_1CFF8);
  sub_4DE0(v0, qword_1CFF8);
  return sub_12D50();
}

uint64_t *sub_11C48(uint64_t a1, uint64_t *a2)
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

id sub_11CAC()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  qword_1D010 = result;
  return result;
}

uint64_t sub_11CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus;
  if (!*(v0 + OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus))
  {
    if (qword_1C778 != -1)
    {
      swift_once();
    }

    v3 = sub_12D60();
    sub_4DE0(v3, qword_1CFF8);
    v4 = sub_12D40();
    v5 = sub_12E50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "[LocationManager] Failed to determine location services authorization for reminders.", v6, 2u);
    }
  }

  return *(v1 + v2);
}

id sub_11DD4()
{
  v16 = sub_12E70();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v16, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_12E60();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v9 = sub_12D80();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  *&v0[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager] = 0;
  *&v0[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus] = 0;
  v15 = OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationQueue;
  sub_122F4();
  sub_12D70();
  v18 = _swiftEmptyArrayStorage;
  sub_12338();
  sub_2308(&qword_1CF90, &qword_13F58);
  sub_12390();
  sub_12EA0();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *&v0[v15] = sub_12E80();
  v12 = type metadata accessor for LocationManager();
  v17.receiver = v0;
  v17.super_class = v12;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_12060()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationQueue];
  objc_allocWithZone(CLLocationManager);
  v3 = v2;
  v4 = v1;
  v5 = sub_12268(0xD000000000000013, 0x8000000000014470, v1, v2);
  v6 = *&v4[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager];
  *&v4[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager] = v5;

  v7 = *(v0 + 8);

  return v7();
}

id sub_12130(void *a1)
{
  result = [a1 authorizationStatus];
  *(v1 + OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus) = result;
  return result;
}

id sub_121C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_12268(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_12DA0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundleIdentifier:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_122F4()
{
  result = qword_1CF80;
  if (!qword_1CF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CF80);
  }

  return result;
}

unint64_t sub_12338()
{
  result = qword_1CF88;
  if (!qword_1CF88)
  {
    sub_12E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF88);
  }

  return result;
}

unint64_t sub_12390()
{
  result = qword_1CF98;
  if (!qword_1CF98)
  {
    sub_F5E8(&qword_1CF90, &qword_13F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF98);
  }

  return result;
}

Swift::Int sub_123F4()
{
  sub_12F50();
  sub_12DC0();
  return sub_12F60();
}

BOOL sub_12468(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_18C88;
  v6._object = a2;
  v4 = sub_12F00(v3, v6);

  return v4 != 0;
}

BOOL sub_124B4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_12468(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_124E8@<X0>(void *a1@<X8>)
{
  result = sub_1244C();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_12534()
{
  sub_2308(&qword_1CFA0, &qword_13F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13760;
  *(inited + 32) = &_swiftEmptyArrayStorage;
  sub_2308(&qword_1CFA8, &qword_13F68);
  sub_125CC();
  result = sub_12D90();
  qword_1D018 = result;
  return result;
}

unint64_t sub_125CC()
{
  result = qword_1CFB0;
  if (!qword_1CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationNotebookHints(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AnnounceNotificationNotebookHints(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x12710);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_12754()
{
  result = qword_1CFB8;
  if (!qword_1CFB8)
  {
    sub_F5E8(&qword_1CFC0, "r\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFB8);
  }

  return result;
}

unint64_t sub_127BC()
{
  result = qword_1CFC8;
  if (!qword_1CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFC8);
  }

  return result;
}