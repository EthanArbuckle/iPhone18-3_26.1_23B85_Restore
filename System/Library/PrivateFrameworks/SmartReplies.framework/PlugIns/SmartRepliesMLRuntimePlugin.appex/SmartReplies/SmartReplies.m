uint64_t sub_100001B48(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v4._rawValue = &off_1000107F0;
  v7._object = a2;
  sub_100008EDC(v4, v7);
  sub_100003E9C();

  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100001B98(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_100001BDC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "erstanding-116.7.5\n";
  }

  else
  {
    v4 = "OnDemandImageCaptionModel";
  }

  if (a2)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (a2)
  {
    v6 = "OnDemandImageCaptionModel";
  }

  else
  {
    v6 = "erstanding-116.7.5\n";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F0C();
  }

  return v8 & 1;
}

uint64_t sub_100001C9C()
{
  sub_100008DAC();
}

Swift::Int sub_100001D0C()
{
  sub_100008F2C();
  sub_100008DAC();

  return sub_100008F3C();
}

uint64_t sub_100001D88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100001B48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100001DB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001B98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001DEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100001B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001E2C(uint64_t a1)
{
  v2 = sub_100002DA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001E68(uint64_t a1)
{
  v2 = sub_100002DA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001EA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_100008C5C();
  v4 = sub_100003E7C(v32);
  v30 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100002D1C(&qword_100018BE8, &qword_100009D00);
  v10 = sub_100003E7C(v33);
  v31 = v11;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v14 = type metadata accessor for TrialImageCaptioningFactors();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_100002D64(a1, a1[3]);
  sub_100002DA8();
  sub_100008F4C();
  if (v2)
  {
    return sub_10000350C(a1);
  }

  v28 = v17;
  v19 = v30;
  v35 = 0;
  sub_100002DFC();
  v20 = v32;
  sub_100008EFC();
  v21 = v28;
  (*(v19 + 32))(v28, v9, v20);
  v34 = 1;
  sub_100008EEC();
  v23 = v22;
  v24 = sub_100003E10();
  v25(v24);
  *(v21 + *(v14 + 20)) = v23;
  sub_100002E54(v21, v29);
  sub_10000350C(a1);
  return sub_100002EB8(v21);
}

uint64_t sub_100002194()
{
  type metadata accessor for ImageCaptioningAssetLoader();
  swift_allocObject();
  result = sub_1000021D0();
  qword_100018E98 = result;
  return result;
}

uint64_t sub_1000021D0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100008D5C();
  *(v0 + 120) = &_swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t sub_10000221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_100002D1C(&qword_100018C00, &qword_100009D08) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000022BC, v3, 0);
}

uint64_t sub_1000022BC()
{
  v53 = v0;
  v2 = v0[10];
  if (v2)
  {
    v3 = v0[9];
  }

  else
  {
    sub_100003E90();
    if (!v4)
    {
      sub_100003DF0();
    }

    v5 = sub_100008D2C();
    sub_100002F14(v5, qword_100018EA0);
    v6 = sub_100008CFC();
    v7 = sub_100008DFC();
    if (os_log_type_enabled(v6, v7))
    {
      sub_100003EC8();
      v8 = sub_100003E48();
      v52 = v8;
      *v1 = 136315138;
      v3 = 28261;
      v2 = 0xE200000000000000;
      *(v1 + 4) = sub_100002F9C(28261, 0xE200000000000000, &v52);
      sub_100003EA8(&_mh_execute_header, v9, v10, "No language specified for image captioning assets, using default language %s");
      sub_10000350C(v8);
      sub_100003E64();
      sub_100003E64();
    }

    else
    {

      v2 = 0xE200000000000000;
      v3 = 28261;
    }
  }

  v11 = v0[10];
  v12 = *(v0[11] + 112);

  v13 = sub_100003FF0(v3, v2, v12);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = v0[11];
    swift_beginAccess();
    v18 = *(v17 + 120);

    v19 = sub_100004048(v15, v16, v18);

    if (v19)
    {
    }

    else
    {
      sub_100003E90();
      if (!v4)
      {
        sub_100003DF0();
      }

      v29 = sub_100008D2C();
      sub_100002F14(v29, qword_100018EA0);
      sub_100003E9C();

      v30 = sub_100008CFC();
      v31 = sub_100008DFC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_100003EC8();
        v33 = swift_slowAlloc();
        v52 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100003E2C(v33, v34);
        _os_log_impl(&_mh_execute_header, v30, v31, "Initializing namespace manager for SmartReplies for language %s", v32, 0xCu);
        sub_10000350C(v33);
        sub_100003E64();
        sub_100003E64();
      }

      sub_100002D1C(&qword_100018C08, &qword_100009D10);
      v35 = objc_allocWithZone(TRIDownloadOptions);

      [v35 initWithAllowsCellular:0 discretionaryBehavior:2];
      v36 = sub_100008CDC();
      swift_beginAccess();
      v37 = *(v17 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v17 + 120);
      sub_10000378C(v36, v15, v16, isUniquelyReferenced_nonNull_native);
      *(v17 + 120) = v52;
      swift_endAccess();
    }

    v39 = *(v17 + 120);

    v40 = sub_100004048(v15, v16, v39);
    v0[13] = v40;

    if (v40)
    {

      sub_100002D1C(&qword_100018C08, &qword_100009D10);
      sub_1000038C8();
      v42 = sub_100008DCC();

      return _swift_task_switch(sub_100002880, v42, v41);
    }

    sub_100003E90();
    if (!v4)
    {
      sub_100003DF0();
    }

    v43 = sub_100008D2C();
    sub_100002F14(v43, qword_100018EA0);
    sub_100003E9C();

    v21 = sub_100008CFC();
    v44 = sub_100008E1C();

    if (os_log_type_enabled(v21, v44))
    {
      sub_100003EC8();
      v23 = sub_100003E48();
      v52 = v23;
      *v15 = 136315138;
      v46 = sub_100003E2C(v23, v45);

      *(v15 + 4) = v46;
      v28 = "There is no namespace manager for language %s despite expecting one";
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  sub_100003E90();
  if (!v4)
  {
    sub_100003DF0();
  }

  v20 = sub_100008D2C();
  sub_100002F14(v20, qword_100018EA0);
  sub_100003E9C();

  v21 = sub_100008CFC();
  v22 = sub_100008E0C();

  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_29;
  }

  sub_100003EC8();
  v23 = sub_100003E48();
  v52 = v23;
  *v1 = 136315138;
  v25 = sub_100003E2C(v23, v24);

  *(v1 + 4) = v25;
  v28 = "Unable to get a image captioning namespace for language %s";
LABEL_28:
  sub_100003EA8(&_mh_execute_header, v26, v27, v28);
  sub_10000350C(v23);
  sub_100003E64();
  sub_100003E64();

LABEL_30:
  v47 = v0[8];
  v48 = type metadata accessor for TrialImageCaptioningFactors();
  sub_100002ADC(v47, 1, 1, v48);
  v49 = v0[12];

  v50 = v0[1];

  return v50();
}

uint64_t sub_100002880()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_100008CEC();

  return _swift_task_switch(sub_1000028EC, v3, 0);
}

uint64_t sub_1000028EC()
{
  v1 = v0[12];
  v2 = sub_100002D1C(&qword_100018C18, &qword_100009D18);
  v3 = sub_100002BD4(v1, 1, v2);
  v4 = v0[13];
  v5 = v0[8];
  if (v3 == 1)
  {
    v6 = v0[13];

    sub_100003974(v1);
    v7 = 1;
  }

  else
  {
    v8 = v0[8];
    sub_100008C9C();

    (*(*(v2 - 8) + 8))(v1, v2);
    v7 = 0;
  }

  v9 = type metadata accessor for TrialImageCaptioningFactors();
  sub_100002ADC(v5, v7, 1, v9);
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100002A0C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100002A3C()
{
  sub_100002A0C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t variable initialization expression of SmartRepliesMLRuntimeTaskPerformer.$__lazy_storage_$_uninterestingPhraseResolver@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100008CCC();

  return sub_100002ADC(a1, 1, 1, v2);
}

void type metadata accessor for CGImage()
{
  if (!qword_100018B50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018B50);
    }
  }
}

uint64_t sub_100002B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008C5C();

  return sub_100002BD4(a1, a2, v4);
}

uint64_t sub_100002C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008C5C();

  return sub_100002ADC(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TrialImageCaptioningFactors()
{
  result = qword_100018BB0;
  if (!qword_100018BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002CA8()
{
  result = sub_100008C5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002D1C(uint64_t *a1, uint64_t *a2)
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

void *sub_100002D64(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002DA8()
{
  result = qword_100018BF0;
  if (!qword_100018BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BF0);
  }

  return result;
}

unint64_t sub_100002DFC()
{
  result = qword_100018BF8;
  if (!qword_100018BF8)
  {
    sub_100008C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BF8);
  }

  return result;
}

uint64_t sub_100002E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialImageCaptioningFactors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002EB8(uint64_t a1)
{
  v2 = type metadata accessor for TrialImageCaptioningFactors();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002F54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TrialImageCaptioningFactors();

  return sub_100002ADC(a1, 1, 1, v2);
}

uint64_t sub_100002F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003060(v11, 0, 0, 1, a1, a2);
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
    sub_100003A24(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000350C(v11);
  return v7;
}

unint64_t sub_100003060(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003160(a5, a6);
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
    result = sub_100008EAC();
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

char *sub_100003160(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000031AC(a1, a2);
  sub_1000032C4(&off_100010880);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000031AC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_100008DBC())
  {
    result = sub_1000033A8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100008E9C();
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
          result = sub_100008EAC();
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

uint64_t sub_1000032C4(uint64_t result)
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

    result = sub_100003418(result, v8, 1, v3);
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

void *sub_1000033A8(uint64_t a1, uint64_t a2)
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

  sub_100002D1C(&qword_100018C28, &qword_100009D28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003418(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D1C(&qword_100018C28, &qword_100009D28);
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

uint64_t sub_10000350C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100003558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008F2C();
  sub_100008DAC();
  v6 = sub_100008F3C();

  return sub_100003614(a1, a2, v6);
}

unint64_t sub_1000035D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008E6C(*(v2 + 40));

  return sub_1000036C8(a1, v4);
}

unint64_t sub_100003614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100008F0C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000036C8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100003A84(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100008E7C();
    sub_100003AE0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000378C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003558(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002D1C(&qword_100018C20, &qword_100009D20);
  if (!sub_100008EBC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100003558(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_100008F1C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_1000039DC(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_1000038C8()
{
  result = qword_100018C10;
  if (!qword_100018C10)
  {
    sub_10000392C(&qword_100018C08, &qword_100009D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C10);
  }

  return result;
}

uint64_t sub_10000392C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003974(uint64_t a1)
{
  v2 = sub_100002D1C(&qword_100018C00, &qword_100009D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000039DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100003A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for TrialImageCaptioningFactors.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrialImageCaptioningFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100003C98);
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

unint64_t sub_100003CEC()
{
  result = qword_100018C30;
  if (!qword_100018C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C30);
  }

  return result;
}

unint64_t sub_100003D44()
{
  result = qword_100018C38;
  if (!qword_100018C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C38);
  }

  return result;
}

unint64_t sub_100003D9C()
{
  result = qword_100018C40;
  if (!qword_100018C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C40);
  }

  return result;
}

uint64_t sub_100003DF0()
{

  return swift_once();
}

uint64_t sub_100003E10()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100002F9C(v3, v2, va);
}

uint64_t sub_100003E48()
{

  return swift_slowAlloc();
}

uint64_t sub_100003E64()
{
}

void sub_100003EA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100003EC8()
{

  return swift_slowAlloc();
}

uint64_t sub_100003F14()
{
  v0 = sub_100008D2C();
  sub_100003F8C(v0, qword_100018EA0);
  sub_100002F14(v0, qword_100018EA0);
  return sub_100008D0C();
}

uint64_t *sub_100003F8C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003558(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_100004048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003558(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_100004098@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000035D0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100003A24(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_1000040FC()
{
  v0 = sub_100008C6C();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  sub_100006A04();
  sub_100006A48(v3, v4);
  v5 = sub_100004198(v3, v4);
  v2 = [v5 CGImage];
  sub_100006464(v3, v4);

  return v2;
}

id sub_100004198(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_100008C7C().super.isa;
  v6 = [v4 initWithData:isa];

  sub_100006478(a1, a2);
  return v6;
}

id sub_100004210()
{
  v1 = OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner;
  v2 = *(v0 + OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner);
  }

  else
  {
    v4 = [objc_allocWithZone(ImageCaptioner) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100004284()
{
  v1 = OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageAssetLoader;
  if (*(v0 + OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageAssetLoader))
  {
    v2 = *(v0 + OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageAssetLoader);
  }

  else
  {
    if (qword_100018A70 != -1)
    {
      swift_once();
      v4 = *(v0 + v1);
    }

    v2 = qword_100018E98;
    *(v0 + v1) = qword_100018E98;
    swift_retain_n();
  }

  return v2;
}

uint64_t sub_100004324@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D1C(&qword_100018DB0, &qword_100009EF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100006ADC();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___uninterestingPhraseResolver;
  swift_beginAccess();
  sub_100006774(v1 + v11, v10, &qword_100018DB0, &qword_100009EF8);
  v12 = sub_100008CCC();
  if (sub_100002BD4(v10, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  sub_1000067D4(v10, &qword_100018DB0, &qword_100009EF8);
  sub_100008CBC();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  sub_100002ADC(v7, 0, 1, v12);
  swift_beginAccess();
  sub_100006218(v7, v1 + v11);
  return swift_endAccess();
}

id sub_1000044F0()
{
  *&v0[OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner] = 0;
  *&v0[OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageAssetLoader] = 0;
  v1 = OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___uninterestingPhraseResolver;
  v2 = sub_100008CCC();
  sub_100002ADC(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer_latestImage] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SmartRepliesMLRuntimeTaskPerformer();
  return objc_msgSendSuper2(&v4, "init");
}

id SmartRepliesMLRuntimeTaskPerformer.perform(_:)(void *a1)
{
  v2 = sub_100008D2C();
  v3 = sub_100003E7C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100006B90();
  v10 = v9 - v8;
  sub_100008D1C();
  v11 = sub_100008CFC();
  v12 = sub_100008E2C();
  if (os_log_type_enabled(v11, v12))
  {
    sub_100006BA0();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Trying to make a remote captioning request", v13, 2u);
    sub_100006B2C();
  }

  (*(v5 + 8))(v10, v2);
  v14 = [a1 parameters];
  v15 = [v14 dictionaryRepresentation];
  sub_100008D4C();

  sub_100008E8C();
  sub_100006BAC();
  sub_100003AE0(v27);
  if (v29)
  {
    sub_100006B38();
  }

  else
  {
    sub_1000067D4(v28, &qword_100018CE0, &unk_100009EA0);
  }

  v16 = sub_100008F0C();

  if (v16)
  {
    strcpy(v28, "contactString");
    HIWORD(v28[1]) = -4864;
    sub_100008E8C();
    sub_100006BAC();

    sub_100003AE0(v27);
    if (v29)
    {
      if (sub_100006B38())
      {
      }
    }

    else
    {
      sub_1000067D4(v28, &qword_100018CE0, &unk_100009EA0);
    }

    v21 = objc_allocWithZone(MLRTaskResult);
    v22 = sub_100006AA8();
    v25 = sub_100006008(v22, v23, v24);
  }

  else
  {
    v28[0] = 0x7461446567616D69;
    v28[1] = 0xEF676E6972745361;
    sub_100008E8C();
    sub_100006BAC();

    sub_100003AE0(v27);
    if (v29)
    {
      v17 = sub_100006B38();
      v18 = v17 == 0;
      if (v17)
      {
        v19 = 0x656C797473;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0xE500000000000000;
      }
    }

    else
    {
      sub_1000067D4(v28, &qword_100018CE0, &unk_100009EA0);
      v19 = 0;
      v20 = 0;
    }

    v25 = sub_1000049D4(v19, v20);
  }

  return v25;
}

id sub_1000049D4(uint64_t a1, uint64_t a2)
{
  v133 = type metadata accessor for TrialImageCaptioningFactors();
  v3 = sub_100006ACC(v133);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100006B90();
  v8 = v7 - v6;
  v131 = sub_100002D1C(&qword_100018DB8, &qword_100009F00);
  v9 = sub_100006ACC(v131);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100006ADC();
  v132 = v12 - v13;
  __chkstk_darwin(v14);
  v130 = v122 - v15;
  v16 = sub_100002D1C(&qword_100018DC0, &qword_100009F08);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v122 - v18;
  v20 = sub_100008D2C();
  v21 = sub_100003E7C(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100006ADC();
  v28 = (v26 - v27);
  v30 = __chkstk_darwin(v29);
  v32 = v122 - v31;
  __chkstk_darwin(v30);
  v34 = v122 - v33;
  if (!a2 || (v35 = sub_1000040FC()) == 0)
  {
    v51 = objc_allocWithZone(MLRTaskResult);
    v52 = sub_100006AA8();
    return sub_100006008(v52, v53, v54);
  }

  v126 = v8;
  v129 = v35;
  sub_100008D1C();
  v36 = sub_100008CFC();
  v37 = sub_100008E2C();
  if (os_log_type_enabled(v36, v37))
  {
    sub_100006BA0();
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "De-serialized image for image request", v38, 2u);
    sub_100006B2C();
  }

  v127 = *(v23 + 8);
  v128 = v23 + 8;
  v127(v34, v20);
  v39 = v134;
  v40 = sub_100004210();
  v41 = v129;
  v42 = [v40 imageContainsPotentiallyUnsafeContent:v129];

  if (v42)
  {
    sub_100008D1C();
    v43 = sub_100008CFC();
    v44 = sub_100008E2C();
    if (os_log_type_enabled(v43, v44))
    {
      sub_100006BA0();
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Refusing to caption this image because it might be unsafe.", v45, 2u);
      sub_100006B2C();
    }

    v127(v28, v20);
    v46 = objc_allocWithZone(MLRTaskResult);
    v47 = sub_100006AA8();
    v50 = sub_100006008(v47, v48, v49);

    return v50;
  }

  v56 = OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner;
  v57 = [*&v39[OBJC_IVAR____TtC27SmartRepliesMLRuntimePlugin34SmartRepliesMLRuntimeTaskPerformer____lazy_storage___imageCaptioner] topMemeCaptionForImage:v41];
  if (!v57)
  {
    v70 = v39;
    v123 = v56;
    v71 = swift_allocBox();
    v125 = v72;
    sub_100002ADC(v72, 1, 1, v133);
    v73 = dispatch_semaphore_create(0);
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    *(v74 + 24) = v73;
    v75 = sub_100008DEC();
    sub_100002ADC(v19, 1, 1, v75);
    v76 = swift_allocObject();
    v76[2] = 0;
    v76[3] = 0;
    v76[4] = v70;
    v76[5] = sub_100006510;
    v76[6] = v74;

    v77 = v73;
    v122[2] = v70;

    sub_10000593C(0, 0, v19, &unk_100009F18, v76);

    v124 = v77;
    sub_100008E3C();
    sub_100008D1C();

    v78 = sub_100008CFC();
    v79 = sub_100008E2C();
    v80 = v71;

    if (os_log_type_enabled(v78, v79))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v122[1] = v80;
      v83 = v82;
      v135[0] = v82;
      *v81 = 136315138;
      v84 = v125;
      swift_beginAccess();
      sub_100006774(v84, v130, &qword_100018DB8, &qword_100009F00);
      v85 = sub_100008D7C();
      v87 = sub_100002F9C(v85, v86, v135);

      *(v81 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v78, v79, "Found Trial CVNLP assets %s", v81, 0xCu);
      sub_10000350C(v83);
      sub_100006B2C();

      v88 = v129;
      sub_100006B2C();

      v127(v32, v20);
      v89 = v126;
    }

    else
    {

      v127(v32, v20);
      v89 = v126;
      v88 = v129;
    }

    v90 = v125;
    swift_beginAccess();
    v91 = v90;
    v92 = v132;
    sub_100006774(v91, v132, &qword_100018DB8, &qword_100009F00);
    v93 = v133;
    if (sub_100002BD4(v92, 1, v133) == 1)
    {
      sub_1000067D4(v92, &qword_100018DB8, &qword_100009F00);
    }

    else
    {
      sub_100006700(v92, v89);
      v94 = *(v134 + v123);
      sub_100008C4C(v95);
      v97 = v96;
      v98 = [v94 CVNLPCaptionForImage:v88 modelURL:v96 minimumConfidenceForCVNLPCaption:*(v89 + *(v93 + 20))];

      if (v98)
      {
        v99 = sub_100008D6C();
        v101 = v100;

        v102 = sub_100005C20(v99, v101);
        v104 = v103;

        if (v104)
        {
          sub_100002D1C(&qword_100018DC8, &qword_100009F20);
          inited = swift_initStackObject();
          v106 = sub_100006B64(inited, xmmword_100009E90);
          v106[2].n128_u64[0] = v107;
          v106[2].n128_u64[1] = 0xE700000000000000;
          sub_100002D1C(&qword_100018DD0, &qword_100009F28);
          v108 = v89;
          v109 = swift_allocObject();
          *(v109 + 16) = v134;
          sub_100002D1C(&qword_100018DD8, &qword_100009F30);
          v110 = swift_initStackObject();
          sub_100006AEC(v110);
          *(v111 + 48) = v102;
          *(v111 + 56) = v104;
          *(v109 + 32) = sub_100008D5C();
          inited[3].n128_u64[0] = v109;
          sub_100002D1C(&qword_100018DE0, &qword_100009F38);
          v112 = sub_100008D5C();
          sub_1000053B4(v112);

          v113 = objc_allocWithZone(MLRTaskResult);
          v50 = sub_100006BE0();

          sub_100002EB8(v108);
        }

        else
        {
          v118 = objc_allocWithZone(MLRTaskResult);
          v119 = sub_100006AA8();
          v50 = sub_100006008(v119, v120, v121);

          sub_100002EB8(v89);
        }

        goto LABEL_22;
      }

      sub_100002EB8(v89);
    }

    v114 = objc_allocWithZone(MLRTaskResult);
    v115 = sub_100006AA8();
    v50 = sub_100006008(v115, v116, v117);

LABEL_22:

    return v50;
  }

  v58 = v57;
  v59 = sub_100008D6C();
  v61 = v60;

  sub_100002D1C(&qword_100018DC8, &qword_100009F20);
  v62 = swift_initStackObject();
  v63 = sub_100006B64(v62, xmmword_100009E90);
  v63[2].n128_u64[0] = v64;
  v63[2].n128_u64[1] = 0xE700000000000000;
  sub_100002D1C(&qword_100018DD0, &qword_100009F28);
  v65 = swift_allocObject();
  *(v65 + 16) = v134;
  sub_100002D1C(&qword_100018DD8, &qword_100009F30);
  v66 = swift_initStackObject();
  sub_100006AEC(v66);
  *(v67 + 48) = v59;
  *(v67 + 56) = v61;
  *(v65 + 32) = sub_100008D5C();
  v62[3].n128_u64[0] = v65;
  sub_100002D1C(&qword_100018DE0, &qword_100009F38);
  v68 = sub_100008D5C();
  sub_1000053B4(v68);

  v69 = objc_allocWithZone(MLRTaskResult);
  v50 = sub_100006BE0();

  return v50;
}

unint64_t sub_1000053B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002D1C(&qword_100018DE8, &qword_100009F40);
    v2 = sub_100008ECC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    sub_100002D1C(&qword_100018DE0, &qword_100009F38);
    swift_dynamicCast();
    sub_100006764(&v25, v27);
    sub_100006764(v27, v28);
    sub_100006764(v28, &v26);
    result = sub_100003558(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      sub_10000350C(v19);
      result = sub_100006764(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_100006764(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

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
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Int sub_100005608(uint64_t a1)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  sub_100006994(a1, v2);
  return sub_100008E4C();
}

uint64_t sub_100005668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_100002D1C(&qword_100018DB8, &qword_100009F00) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_100005708, 0, 0);
}

uint64_t sub_100005708()
{
  sub_100006B58();
  v1 = v0[2];
  v0[6] = sub_100004284();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000057B0;
  v3 = v0[5];

  return sub_10000221C(v3, 0, 0);
}

uint64_t sub_1000057B0()
{
  sub_100006B58();
  sub_100006BC8();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100006ABC();
  *v5 = v4;

  return _swift_task_switch(sub_1000058B8, 0, 0);
}

uint64_t sub_1000058B8()
{
  sub_100006B58();
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  sub_1000067D4(v1, &qword_100018DB8, &qword_100009F00);

  sub_100006BD4();

  return v2();
}

uint64_t sub_10000593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D1C(&qword_100018DC0, &qword_100009F08);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100006774(a3, v26 - v11, &qword_100018DC0, &qword_100009F08);
  v13 = sub_100008DEC();
  v14 = sub_100002BD4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1000067D4(v12, &qword_100018DC0, &qword_100009F08);
  }

  else
  {
    sub_100008DDC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100008DCC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100008D8C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000067D4(a3, &qword_100018DC0, &qword_100009F08);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000067D4(a3, &qword_100018DC0, &qword_100009F08);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100005C20(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008D2C();
  v5 = sub_100003E7C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100006ADC();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = sub_100008CCC();
  v17 = sub_100003E7C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100006B90();
  v24 = v23 - v22;
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v38 = v15;
    v39 = v7;
    v40 = v4;
    sub_100008D9C();
    sub_100002D1C(&qword_100018DA8, &qword_100009EF0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100009E90;
    *(v26 + 32) = a1;
    *(v26 + 40) = a2;

    v27 = sub_100008C8C();

    if (v27)
    {
      sub_100008D1C();
      v28 = sub_100008CFC();
      v29 = sub_100008E2C();
      if (os_log_type_enabled(v28, v29))
      {
        sub_100006BA0();
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "CVNLP caption is disallowed because Lexicon deemed it to be OVS", v30, 2u);
        sub_100006B2C();
      }

      (*(v39 + 8))(v12, v40);
    }

    else
    {
      sub_100004324(v24);
      v41.value._countAndFlagsBits = a1;
      v41.value._object = a2;
      v42.value._countAndFlagsBits = 28261;
      v42.value._object = 0xE200000000000000;
      v31 = sub_100008CAC(v41, v42);
      (*(v19 + 8))(v24, v16);
      if (!v31)
      {

        return a1;
      }

      v32 = v38;
      sub_100008D1C();
      v33 = sub_100008CFC();
      v34 = sub_100008E2C();
      if (os_log_type_enabled(v33, v34))
      {
        sub_100006BA0();
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "CVNLP caption is disallowed due to being potentially OVS", v35, 2u);
        sub_100006B2C();
      }

      (*(v39 + 8))(v32, v40);
    }
  }

  return 0;
}

id SmartRepliesMLRuntimeTaskPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartRepliesMLRuntimeTaskPerformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100006008(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6.super.isa = sub_100008D3C().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100008C7C().super.isa;
    sub_100006464(a2, a3);
  }

  v8 = [v3 initWithJSONResult:v6.super.isa unprivatizedVector:isa];

  return v8;
}

uint64_t type metadata accessor for SmartRepliesMLRuntimeTaskPerformer()
{
  result = qword_100018D90;
  if (!qword_100018D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006124()
{
  sub_1000061C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000061C0()
{
  if (!qword_100018DA0)
  {
    sub_100008CCC();
    v0 = sub_100008E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_100018DA0);
    }
  }
}

uint64_t sub_100006218(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D1C(&qword_100018DB0, &qword_100009EF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006288(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006380;

  return v7(a1);
}

uint64_t sub_100006380()
{
  sub_100006B58();
  sub_100006BC8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100006ABC();
  *v4 = v3;

  sub_100006BD4();

  return v5();
}

uint64_t sub_100006464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006478(a1, a2);
  }

  return a1;
}

uint64_t sub_100006478(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000064D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100006510(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100005608(a1);
}

uint64_t sub_100006518()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006560(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_100006B80(v8);
  *v9 = v10;
  v9[1] = sub_100006620;

  return sub_100005668(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_100006620()
{
  sub_100006B58();
  sub_100006BC8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100006ABC();
  *v4 = v3;

  sub_100006BD4();

  return v5();
}

uint64_t sub_100006700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialImageCaptioningFactors();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006764(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D1C(a3, a4);
  sub_100006ACC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000067D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D1C(a2, a3);
  sub_100006ACC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000682C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006864()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100006B80(v3);
  *v4 = v5;
  v6 = sub_100006B0C(v4);

  return v7(v6);
}

uint64_t sub_1000068FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100006B80(v3);
  *v4 = v5;
  v6 = sub_100006B0C(v4);

  return v7(v6);
}

uint64_t sub_100006994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D1C(&qword_100018DB8, &qword_100009F00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006A04()
{
  result = qword_100018DF0;
  if (!qword_100018DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018DF0);
  }

  return result;
}

uint64_t sub_100006A48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_100006AEC(__n128 *a1)
{
  result = v1[7];
  a1[1] = result;
  a1[2].n128_u64[0] = 0x6E6F6974706163;
  a1[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_100006B0C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100006B38()
{

  return swift_dynamicCast();
}

__n128 *sub_100006B64(__n128 *result, __n128 a2)
{
  v2[7] = a2;
  result[1] = a2;
  return result;
}

double sub_100006BAC()
{

  return sub_100004098(v1 - 152, v0, (v1 - 112));
}

uint64_t sub_100006BD4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_100006BE0()
{

  return sub_100006008(v0, 0, 0xF000000000000000);
}

uint64_t sub_100006C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = *a3;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;

  LOBYTE(a4) = sub_100006DF8(a4, v7, v5);

  return a4 & 1;
}

uint64_t sub_100006CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *))
{
  v7 = sub_100008D6C();
  LOBYTE(a5) = sub_100006C20(v7, v8, a4, a5);

  return a5 & 1;
}

id sub_100006D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionTagArbiter();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100006D58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionTagArbiter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100008F0C() & 1;
  }
}

BOOL sub_100006DF8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1000089D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 52);
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id sub_100008A7C(uint64_t a1)
{
  v9[0] = *(a1 + 32);
  v8[0] = @"clientIdentifier";
  v8[1] = @"success";
  v2 = [NSNumber numberWithBool:*(a1 + 52)];
  v9[1] = v2;
  v8[2] = @"failureType";
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v9[2] = v3;
  v8[3] = @"captionConfidence";
  LODWORD(v4) = *(a1 + 48);
  v5 = [NSNumber numberWithFloat:v4];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}