uint64_t DefaultKeyboardSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_13F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return DefaultKeyboardSettingsProvider.localizedTitle.setter(v2, v3);
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_4940() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }
}

uint64_t sub_15AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*DefaultKeyboardSettingsProvider.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *v4 = v1;
  swift_getKeyPath();
  sub_46A0();

  swift_beginAccess();
  return sub_1778;
}

uint64_t variable initialization expression of DefaultKeyboardSettingsProvider.localizedDetail()
{
  v0 = *(*(sub_4660() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_48A0() - 8) + 64);
  __chkstk_darwin();
  sub_4890();
  sub_4650();
  return sub_48D0();
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_1930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_19F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v2, v3);
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (sub_4940())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4670();
}

uint64_t sub_1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void (*DefaultKeyboardSettingsProvider.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *v4 = v1;
  swift_getKeyPath();
  sub_46A0();

  swift_beginAccess();
  return sub_1D60;
}

void sub_1D6C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_4690();

  free(v1);
}

id sub_1DF0()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v1 = *(v0 + 72);

  return v1;
}

id sub_1EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1F84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_450C(0, &qword_C2A8, PSSpecifier_ptr);
  v5 = v4;
  v6 = sub_4920();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }
}

uint64_t DefaultKeyboardSettingsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  return v3;
}

void DefaultKeyboardSettingsProvider.init()()
{
  v1 = *v0;
  v2 = *(*(sub_4660() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_48A0() - 8) + 64);
  __chkstk_darwin();
  v0[2] = 0xD000000000000023;
  v0[3] = 0x8000000000004C70;
  sub_4890();
  sub_4650();
  v0[6] = sub_48D0();
  v0[7] = v4;
  *(v0 + 88) = 0;
  _s9Keyboards31DefaultKeyboardSettingsProviderC22__observationRegistrar33_A11D2A37FEBC8069AA4589092AA20CA611Observation0oG0Vvpfi_0();
  v5 = [objc_allocWithZone(PSListController) init];
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v5 setSpecifier:v6];

  v7 = [v5 specifier];
  if (!v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_48B0();
  [v8 setProperty:v9 forKey:PSIDKey];

  v10 = sub_48B0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = v5;
  v14 = [v12 bundleForClass:ObjCClassFromMetadata];
  v15 = [v13 loadSpecifiersFromPlistName:v10 target:v13 bundle:v14];

  v0[10] = v13;
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v13;
  if (![v15 firstObject])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_4930();
  swift_unknownObjectRelease();
  sub_2580(&v29, v31);
  sub_450C(0, &qword_C2A8, PSSpecifier_ptr);
  swift_dynamicCast();
  v17 = [v27 target];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v0[8] = v17;
  v18 = [v27 name];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_48C0();
  v22 = v21;

  v0[4] = v20;
  v0[5] = v22;
  if ([v27 performGetter])
  {
    sub_4930();
    swift_unknownObjectRelease();
  }

  else
  {

    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v27;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v28;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_4444(v31, &qword_C2B0, &qword_5118);
    v24 = 0;
    v25 = 0;
  }

  v26 = v0[7];

  v0[6] = v24;
  v0[7] = v25;
  v0[9] = v27;
}

_OWORD *sub_2580(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2590(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25E0(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }

  return result;
}

uint64_t sub_26F4()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  return *(v0 + 88);
}

uint64_t sub_2794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t DefaultKeyboardSettingsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = (type metadata accessor for DefaultKeyboards(0) - 8);
  v4 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2590(&qword_C2B8, &qword_5120);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v29 - v9;
  v11 = sub_2590(&qword_C2C0, &qword_5128);
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v29 - v13;
  swift_getKeyPath();
  v33 = v1;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v15 = *(v1 + 72);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v3[8];
  *(v6 + v17) = swift_getKeyPath();
  sub_2590(&qword_C2C8, &qword_5188);
  swift_storeEnumTagMultiPayload();
  *v6 = v15;
  v6[1] = sub_2E24;
  v6[2] = v16;
  sub_3604(v6, v10);
  v18 = &v10[*(sub_2590(&qword_C2D0, &qword_5190) + 36)];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = sub_35FC;
  *(v18 + 3) = v2;
  v19 = v15;

  sub_3668(v6);
  v20 = sub_4730();
  v21 = sub_4820();
  v22 = &v10[*(v7 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = sub_4720();
  v24 = sub_36C4();
  v25 = sub_3854(&qword_C2F0, &type metadata accessor for EditButton);
  sub_4850();
  sub_4444(v10, &qword_C2B8, &qword_5120);
  swift_getKeyPath();
  v33 = v2;
  sub_4680();

  v26 = *(v2 + 88);
  v33 = v7;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  sub_4840();
  return (*(v30 + 8))(v14, v27);
}

uint64_t sub_2C68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2CD8(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 88) == (a1 & 1))
    {
      *(result + 88) = a1 & 1;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
      sub_4670();
    }
  }

  return result;
}

uint64_t sub_2E2C(uint64_t a1)
{
  sub_4900();
  sub_48F0();
  sub_48E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  *&v11[0] = a1;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  if ([*(a1 + 72) performGetter])
  {
    sub_4930();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v2 = swift_dynamicCast();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  else
  {
    sub_4444(v11, &qword_C2B0, &qword_5118);
    v4 = 0;
    v5 = 0;
  }

  DefaultKeyboardSettingsProvider.localizedDetail.setter(v4, v5);
}

uint64_t sub_2FD8()
{
  sub_4900();
  sub_48F0();
  sub_48E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4710();
}

uint64_t DefaultKeyboardSettingsProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  v6 = sub_46C0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t DefaultKeyboardSettingsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  v6 = sub_46C0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t sub_31D0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_3208()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_32CC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

void sub_33B8(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  *a1 = v5;
}

uint64_t sub_33FC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_340C()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (swift_getObjCClassMetadata(), sub_450C(0, &qword_C4B8, PSListController_ptr), swift_dynamicCastMetatype()))
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setSpecifier:v1];
    return v2;
  }

  else
  {
    result = [v1 propertyForKey:PSDetailControllerClassKey];
    if (result)
    {
      sub_4930();
      swift_unknownObjectRelease();
      sub_2580(&v5, &v6);
      sub_450C(0, &qword_C4B8, PSListController_ptr);
      swift_dynamicCast();
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_3554(uint64_t a1)
{
  v2 = (*(*(sub_2590(&unk_C470, &qword_5358) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_4564(a1, &v5 - v3, &unk_C470, &qword_5358);
  return sub_4750();
}

uint64_t sub_3604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultKeyboards(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3668(uint64_t a1)
{
  v2 = type metadata accessor for DefaultKeyboards(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_36C4()
{
  result = qword_C2D8;
  if (!qword_C2D8)
  {
    sub_3750(&qword_C2B8, &qword_5120);
    sub_3798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2D8);
  }

  return result;
}

uint64_t sub_3750(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3798()
{
  result = qword_C2E0;
  if (!qword_C2E0)
  {
    sub_3750(&qword_C2D0, &qword_5190);
    sub_3854(&qword_C2E8, type metadata accessor for DefaultKeyboards);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2E0);
  }

  return result;
}

uint64_t sub_3854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3914()
{
  result = sub_46C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_39D8()
{
  sub_3750(&qword_C2C0, &qword_5128);
  sub_3750(&qword_C2B8, &qword_5120);
  sub_4720();
  sub_36C4();
  sub_3854(&qword_C2F0, &type metadata accessor for EditButton);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3ADC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2590(&qword_C3E8, &qword_5348);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3BAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2590(&qword_C3E8, &qword_5348);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3C5C()
{
  sub_450C(319, &qword_C2A8, PSSpecifier_ptr);
  if (v0 <= 0x3F)
  {
    sub_3D60(319, &qword_C458, &qword_C460, &qword_5350, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_3D60(319, &qword_C468, &unk_C470, &qword_5358, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_3D60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_3750(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_3E0C(void *a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_4880();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4770();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(sub_2590(&qword_C2C8, &qword_5188) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = (&v35 - v12);
  v14 = (*(*(sub_2590(&unk_C470, &qword_5358) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v35 - v15;
  v17 = sub_2590(&qword_C4B0, qword_5428);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v21 = &v35 - v20;
  v22 = *(type metadata accessor for DefaultKeyboards(0) + 24);
  v38 = v2;
  sub_4564(v2 + v22, v13, &qword_C2C8, &qword_5188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_44A4(v13, v16, &unk_C470, &qword_5358);
  }

  else
  {
    v23 = *v13;
    sub_4910();
    v24 = sub_4810();
    sub_4700();

    sub_4760();
    swift_getAtKeyPath();

    (*(v35 + 8))(v10, v36);
  }

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v25 = &unk_C470;
    v26 = &qword_5358;
    v27 = v16;
  }

  else
  {
    sub_44A4(v16, v21, &qword_C4B0, qword_5428);
    sub_4860();
    v28 = sub_4870();
    v29 = v40;
    v30 = *(v39 + 8);
    v30(v6, v40);
    [v37 setEditing:v28 & 1 animated:1];
    v31 = *(v38 + 8);
    if (v31)
    {
      v32 = *(v38 + 16);
      sub_4860();
      v33 = sub_4870();
      v30(v6, v29);
      v31(v33 & 1);
    }

    v25 = &qword_C4B0;
    v26 = qword_5428;
    v27 = v21;
  }

  return sub_4444(v27, v25, v26);
}

uint64_t sub_42A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_433C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_43EC()
{
  sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards);
  sub_47E0();
  __break(1u);
}

uint64_t sub_4444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2590(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_44A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2590(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_450C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_4564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2590(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_45CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}