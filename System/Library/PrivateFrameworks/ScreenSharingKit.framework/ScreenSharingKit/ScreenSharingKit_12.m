uint64_t sub_264AF1E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_264B40C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B40E64();
  sub_264B40C04();
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = v32;
  v15 = v33;
  v26 = v34;
  v16 = (a1 + *(type metadata accessor for IdentifiablePoint() + 20));
  v17 = *v16;
  v18 = v16[1];
  sub_264B40C14();
  sub_264AF184C(v10);
  CGPoint.locationFromPointPercentage(in:layoutDirection:)(v10);
  v20 = v19;
  v22 = v21;
  result = (*(v7 + 8))(v10, v6);
  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  v24 = v26;
  *(a4 + 32) = v15;
  *(a4 + 40) = v24;
  *(a4 + 48) = v20;
  *(a4 + 56) = v22;
  return result;
}

uint64_t sub_264AF1FF8()
{
  v1 = (type metadata accessor for RipplesView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_264B40C44();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264AF2114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RipplesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AF2178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RipplesView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_264AF1BC4(a1, v6, a2);
}

uint64_t sub_264AF21F8()
{
  v1 = sub_264B40C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for RipplesView() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);

  v12 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264B40C44();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_264AF23A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_264B40C24() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RipplesView() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_264AF1E54(a1, v2 + v6, v9, a2);
}

unint64_t sub_264AF2484()
{
  result = qword_27FF8C060;
  if (!qword_27FF8C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C050, &qword_264B53BD0);
    sub_264AF2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C060);
  }

  return result;
}

unint64_t sub_264AF2510()
{
  result = qword_27FF8C068;
  if (!qword_27FF8C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C070, &qword_264B53BD8);
    sub_264AF259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C068);
  }

  return result;
}

unint64_t sub_264AF259C()
{
  result = qword_27FF8C078;
  if (!qword_27FF8C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C078);
  }

  return result;
}

unint64_t sub_264AF2604()
{
  result = qword_27FF8C080;
  if (!qword_27FF8C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C088, &qword_264B53BF8);
    sub_264AF2690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C080);
  }

  return result;
}

unint64_t sub_264AF2690()
{
  result = qword_27FF8C090;
  if (!qword_27FF8C090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C098, &qword_264B53C00);
    sub_264AF271C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C090);
  }

  return result;
}

unint64_t sub_264AF271C()
{
  result = qword_27FF8C0A0;
  if (!qword_27FF8C0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0A8, &qword_264B53C08);
    sub_2649CB4C8(&qword_27FF8C0B0, &qword_27FF8C0B8, &qword_264B53C10);
    sub_264A347C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0A0);
  }

  return result;
}

__n128 sub_264AF27F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_264B40E64();
  v4 = v3;
  sub_264B40E24();
  sub_264B40E24();
  sub_264B40E64();
  sub_264B40C04();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v11;
  *(a1 + 32) = v11;
  __asm { FMOV            V0.2D, #28.0 }

  *(a1 + 48) = _Q0;
  *(a1 + 64) = v11;
  result = v13;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  return result;
}

uint64_t sub_264AF28D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264AF292C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_264AF29A0()
{
  result = qword_27FF8C0C0;
  if (!qword_27FF8C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0C8, &qword_264B53CA8);
    sub_2649CB4C8(&qword_27FF8C0D0, &qword_27FF8C0D8, qword_264B53CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0C0);
  }

  return result;
}

uint64_t sub_264AF2A74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_264B40BC4();
  v4 = v28;
  v25 = v30;
  v5 = v31;
  v6 = v32;
  v7 = sub_264B40E14();
  v37 = *v1;
  v33 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C0E0, &qword_264B53D08);
  sub_264B40E34();
  v8 = v36;
  sub_264B40EA4();
  v10 = v9;
  v12 = v11;
  v13 = sub_264B40E94();
  v33 = v37;
  sub_264B40E34();
  v14 = v36;
  v36 = v1[1];
  v33 = v1[1];
  sub_264B40E34();
  v15 = v26[0];
  sub_264B40E84();
  v16 = sub_264B40E74();

  v33 = v36;
  sub_264B40E34();
  v17 = v26[0];
  v18 = *(v1 + 4);
  v19 = *(v2 + 5);
  sub_264B40E64();
  sub_264B40C04();
  *&v27[7] = v36;
  *&v27[23] = v34;
  *&v27[39] = v35;
  v20 = swift_allocObject();
  v21 = v2[1];
  v20[1] = *v2;
  v20[2] = v21;
  v20[3] = v2[2];
  v22 = v29;
  *a1 = v4;
  *(a1 + 8) = v22;
  *(a1 + 16) = v25;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0;
  v23 = *&v27[16];
  *(a1 + 129) = *v27;
  *(a1 + 145) = v23;
  *(a1 + 161) = *&v27[32];
  *(a1 + 176) = *&v27[47];
  *(a1 + 184) = sub_264AF2DB8;
  *(a1 + 192) = v20;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_2649D046C(&v37, v26, &qword_27FF8C0E0, &qword_264B53D08);
  return sub_2649D046C(&v36, v26, &qword_27FF8C0E0, &qword_264B53D08);
}

uint64_t sub_264AF2CF0(__int128 *a1)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C0E0, &qword_264B53D08);
  sub_264B40E44();
  v4 = a1[1];
  return sub_264B40E44();
}

uint64_t sub_264AF2D78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_264AF2DC4()
{
  result = qword_27FF8C0E8;
  if (!qword_27FF8C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C0F0, &qword_264B53D10);
    sub_264AF2E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0E8);
  }

  return result;
}

unint64_t sub_264AF2E50()
{
  result = qword_27FF8C0F8;
  if (!qword_27FF8C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C100, &qword_264B53D18);
    sub_264AF2EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C0F8);
  }

  return result;
}

unint64_t sub_264AF2EDC()
{
  result = qword_27FF8C108;
  if (!qword_27FF8C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C110, &qword_264B53D20);
    sub_264AF2F94(&qword_27FF8C118, &qword_27FF8C120, &qword_264B53D28, sub_264AF3044);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C108);
  }

  return result;
}

uint64_t sub_264AF2F94(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2649CB4C8(&qword_27FF8C188, &qword_27FF8C190, &unk_264B53D60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264AF3044()
{
  result = qword_27FF8C128;
  if (!qword_27FF8C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C130, &qword_264B53D30);
    sub_264AF2F94(&qword_27FF8C138, &qword_27FF8C140, &qword_264B53D38, sub_264AF30FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C128);
  }

  return result;
}

unint64_t sub_264AF30FC()
{
  result = qword_27FF8C148;
  if (!qword_27FF8C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C150, &qword_264B53D40);
    sub_264AF3188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C148);
  }

  return result;
}

unint64_t sub_264AF3188()
{
  result = qword_27FF8C158;
  if (!qword_27FF8C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C160, &qword_264B53D48);
    sub_2649CB4C8(&qword_27FF8C168, &qword_27FF8C170, &qword_264B53D50);
    sub_2649CB4C8(&qword_27FF8C178, &qword_27FF8C180, &qword_264B53D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C158);
  }

  return result;
}

uint64_t MediaTransportServerSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AF3304()
{
  result = qword_27FF8C198;
  if (!qword_27FF8C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C198);
  }

  return result;
}

BOOL sub_264AF33F0()
{
  v0 = sub_264B406A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_264B406B4();
  v3 = sub_264B40684();
  [v3 mutableCopy];

  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264AF382C();
  if (swift_dynamicCast())
  {
    v4 = [v10 remoteNotificationsSetting];

    return v4 == 2;
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Unable to create mutable copy of notification system settings", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_264AF3594(char a1)
{
  v2 = sub_264B406A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_264B406B4();
  v5 = sub_264B40684();
  [v5 mutableCopy];

  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264AF382C();
  if (swift_dynamicCast())
  {
    if (a1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [v12 setRemoteNotificationsSetting_];
    v7 = v12;
    sub_264B40694();
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71B8);
    v7 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v7, v9, "Unable to create mutable copy of notification system settings", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }
  }
}

BOOL sub_264AF373C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_264AF33F0();
  *a1 = result;
  return result;
}

unint64_t sub_264AF382C()
{
  result = qword_27FF8C1A0;
  if (!qword_27FF8C1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8C1A0);
  }

  return result;
}

id sub_264AF3878()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject];
  v5 = 1;

  sub_264B409B4();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIViewDrawEventProducer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for UIViewDrawEventProducer()
{
  result = qword_27FF8C208;
  if (!qword_27FF8C208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF3A9C(void *a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView;
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView;
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView);
    v7 = v4;
    if (v6)
    {
      [v6 removeFromSuperview];
      v8 = *(v1 + v5);
      *(v1 + v5) = 0;

      v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);
      *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel) = 0;
    }

    v11 = sub_264AF3C00();
    [v4 removeGestureRecognizer_];

    v12 = sub_264AF3CAC();
    [v4 removeGestureRecognizer_];

    v10 = *(v1 + v3);
  }

  else
  {
    v10 = 0;
  }

  *(v1 + v3) = a1;
  v13 = a1;

  if (a1)
  {
    sub_264AF3D6C(v13);
    v14 = sub_264AF3C00();
    [v13 addGestureRecognizer_];

    v15 = sub_264AF3CAC();
    [v13 addGestureRecognizer_];
  }
}

id sub_264AF3C00()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTap_];
    [v4 setNumberOfTapsRequired_];
    [v4 setNumberOfTouchesRequired_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_264AF3CAC()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v0 action:sel_handlePan_];
    [v4 setMinimumNumberOfTouches_];
    [v4 setMaximumNumberOfTouches_];
    [v4 setAllowedScrollTypesMask_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_264AF3D6C(void *a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView;
  if (!*(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView))
  {
    v4 = type metadata accessor for ScreenSharingAnnotationViewModel();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    *(v7 + 16) = MEMORY[0x277D84F90];
    *(v7 + 24) = v8;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    sub_264B401A4();
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel) = v7;

    sub_264B40E24();
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C230, &unk_264B53F28));

    v11 = sub_264B40CB4();
    v12 = [v11 view];
    if (v12)
    {
      v13 = *(v1 + v2);
      *(v1 + v2) = v12;
      v14 = v12;

      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor_];

      [a1 bounds];
      [v14 setFrame_];
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      [a1 addSubview_];
      sub_264AF3F5C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_264AF3F5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints;
      if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints))
      {
        v4 = objc_opt_self();
        sub_264AF5700();
        v5 = v1;
        v6 = v2;

        v7 = sub_264B41144();

        [v4 deactivateConstraints_];
      }

      else
      {
        v8 = v1;
        v9 = v2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_264B53EC0;
      v11 = [v1 widthAnchor];
      v12 = [v2 widthAnchor];
      v13 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale;
      v14 = [v11 constraintEqualToAnchor:v12 multiplier:1.0 / *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale)];

      *(v10 + 32) = v14;
      v15 = [v1 heightAnchor];
      v16 = [v2 heightAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 multiplier:1.0 / *(v0 + v13)];

      *(v10 + 40) = v17;
      v18 = [v1 centerXAnchor];
      v19 = [v2 centerXAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v10 + 48) = v20;
      v21 = [v1 centerYAnchor];
      v22 = [v2 centerYAnchor];
      v23 = [v21 constraintEqualToAnchor_];

      *(v10 + 56) = v23;
      v24 = objc_opt_self();
      sub_264AF5700();
      v25 = sub_264B41144();
      [v24 activateConstraints_];

      v26 = *(v0 + v3);
      *(v0 + v3) = v10;

      CGAffineTransformMakeScale(&v27, *(v0 + v13), *(v0 + v13));
      [v1 setTransform_];
    }
  }
}

void sub_264AF4288(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v3)
  {
    v5 = v3;
    [a1 locationInView_];
    v7 = v6;
    v9 = v8;
    [v5 bounds];
    v11 = v10;
    v13 = v12;
    v14 = mach_absolute_time();
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v15 = v7 * 100.0;
    v16 = v9 * 100.0;
    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FF8AE40);
    v18 = sub_264B40944();
    v19 = sub_264B41474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v14;
      _os_log_impl(&dword_2649C6000, v18, v19, "handleTap eventID is %llu", v20, 0xCu);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v21 = v15 / v11;
    v22 = v16 / v13;

    v23 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry);
    v24 = *&v23[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v24 && v14)
    {
      v25 = __swift_project_boxed_opaque_existential_1((v24 + 24), *(v24 + 48));
      LOBYTE(v35[0]) = 0;
      v26 = *v25;
      v27 = v23;

      sub_264A560D4(v35, v14, 0, 0, 0);
    }

    v28 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
    v35[3] = &type metadata for DrawEvent;
    v35[4] = &off_28765B2B0;
    v29 = swift_allocObject();
    v35[0] = v29;
    *(v29 + 16) = v14;
    *(v29 + 24) = v21;
    *(v29 + 32) = v22;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {
      v30 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);

      sub_2649D5B4C(v21, v22);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v31 = sub_264B40964();
    __swift_project_value_buffer(v31, qword_27FFA71B8);
    oslog = sub_264B40944();
    v32 = sub_264B41494();
    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v32, "Received tap event after captureView has been removed, this is indicative of a bug", v33, 2u);
      MEMORY[0x266749940](v33, -1, -1);
    }
  }
}

void sub_264AF464C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView);
  if (v7)
  {
    v23 = v7;
    [a1 locationInView_];
    v9 = v8;
    v11 = v10;
    [v23 bounds];
    v13 = v9 * 100.0 / v12;
    v15 = v11 * 100.0 / v14;
    v16 = [a1 state];
    if ((v16 - 3) < 3)
    {
      v17 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
      swift_beginAccess();
      sub_264A61938(v1 + v17, v6);
      v18 = sub_264B40104();
      if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
      {

        sub_2649D04D4(v6, &unk_27FF8BFC0, &qword_264B47140);
      }

      else
      {
        sub_2649D04D4(v6, &unk_27FF8BFC0, &qword_264B47140);
        sub_264AF4C8C(v13, v15);
      }

      return;
    }

    if (v16 == 2)
    {
      sub_264AF4960(v13, v15);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    __swift_project_value_buffer(v19, qword_27FFA71B8);
    v23 = sub_264B40944();
    v20 = sub_264B41494();
    if (os_log_type_enabled(v23, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v23, v20, "Received pan event after captureView has been removed, this is indicative of a bug", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }
  }

  v22 = v23;
}

uint64_t sub_264AF4960(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v13 = sub_264B40104();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  v21 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  swift_beginAccess();
  sub_264A61938(v3 + v21, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2649D04D4(v12, &unk_27FF8BFC0, &qword_264B47140);
    sub_264B400F4();
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {
      v22 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);

      sub_2649D5210(v18, a1, a2);
    }

    (*(v14 + 32))(v10, v18, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    swift_beginAccess();
    sub_264A619A8(v10, v3 + v21);
    swift_endAccess();
    v23 = 0;
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {
      v24 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);

      sub_2649D5210(v20, a1, a2);
    }

    (*(v14 + 8))(v20, v13);
    v23 = 1;
  }

  v25 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
  v28[3] = &type metadata for DrawEvent;
  v28[4] = &off_28765B2B0;
  v26 = swift_allocObject();
  v28[0] = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = v23;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *(v26 + 48) = 1;
  sub_264B409C4();
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_264AF4C8C(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v34[-v11];
  v13 = sub_264B40104();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = mach_absolute_time();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v19 = sub_264B40964();
  __swift_project_value_buffer(v19, qword_27FF8AE40);
  v20 = sub_264B40944();
  v21 = sub_264B41474();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v20, v21, "finishStroke eventID is %llu", v22, 0xCu);
    MEMORY[0x266749940](v22, -1, -1);
  }

  v23 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry);
  v24 = *&v23[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
  if (v24)
  {
    v25 = v18 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = __swift_project_boxed_opaque_existential_1((v24 + 24), *(v24 + 48));
    LOBYTE(v35[0]) = 0;
    v27 = *v26;
    v28 = v23;

    sub_264A560D4(v35, v18, 0, 0, 0);
  }

  v29 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
  v35[3] = &type metadata for DrawEvent;
  v35[4] = &off_28765B2B0;
  v30 = swift_allocObject();
  v35[0] = v30;
  *(v30 + 16) = v18;
  *(v30 + 24) = 2;
  *(v30 + 32) = a1;
  *(v30 + 40) = a2;
  *(v30 + 48) = 1;
  sub_264B409C4();
  __swift_destroy_boxed_opaque_existential_0(v35);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  swift_beginAccess();
  sub_264A61938(v3 + v31, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2649D04D4(v12, &unk_27FF8BFC0, &qword_264B47140);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel))
    {
      v32 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel);

      sub_2649D5210(v17, a1, a2);
    }

    (*(v14 + 8))(v17, v13);
  }

  (*(v14 + 56))(v10, 1, 1, v13);
  swift_beginAccess();
  sub_264A619A8(v10, v3 + v31);
  return swift_endAccess();
}

id sub_264AF5080()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView] = 0;
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_deviceOrientation] = 0;
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale] = 0x3FF0000000000000;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v0[v7] = sub_264B409D4();
  v11 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_previousTapEventDate;
  v12 = sub_264B40084();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_activeStrokeID;
  v14 = sub_264B40104();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingViewModel] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C010, &qword_264B538B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  v16 = type metadata accessor for SignpostingPrimitives();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v2, qword_27FF8AE40);
  (*(v3 + 16))(v6, v20, v2);
  sub_264B40904();
  v35[3] = v16;
  v35[4] = &off_28765A268;
  v35[0] = v19;
  v21 = type metadata accessor for SignpostConsumer();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v35, v16);
  v24 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = sub_264AEFA9C(*v26, v22);
  __swift_destroy_boxed_opaque_existential_0(v35);
  if (v28)
  {
    v29 = &protocol witness table for SignpostConsumer;
  }

  else
  {
    v21 = 0;
    v29 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v28;
  *(inited + 56) = v21;
  *(inited + 64) = v29;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_telemetry;
  v31 = objc_allocWithZone(type metadata accessor for TelemetryProvider());
  *&v1[v30] = TelemetryProvider.init(_:)(inited);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___tapGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer____lazy_storage___panGestureRecognizer] = 0;
  v32 = type metadata accessor for UIViewDrawEventProducer();
  v34.receiver = v1;
  v34.super_class = v32;
  return objc_msgSendSuper2(&v34, sel_init);
}

void sub_264AF5484()
{
  sub_264AF55C4(319, &qword_27FF8C218, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264AF55C4(319, &qword_27FF89D70, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_264AF55C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264B41614();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264AF562C()
{
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

unint64_t sub_264AF568C()
{
  result = qword_27FF8C220;
  if (!qword_27FF8C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A070, &qword_264B53F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C220);
  }

  return result;
}

unint64_t sub_264AF5700()
{
  result = qword_27FF8C228;
  if (!qword_27FF8C228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8C228);
  }

  return result;
}

uint64_t sub_264AF574C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2F0, &qword_264B54120);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v86 = &v76 - v10;
  v11 = sub_264B40804();
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88840, &qword_264B44278);
  v15 = *(v14 - 8);
  v81 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88848, &qword_264B44280);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v79 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v76 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  v27 = sub_264B40104();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ContinuityDevice(0);
  v33 = a2 + v32[8];
  *(v33 + 16) = 256;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v77 = v33;
  sub_264B40784();
  v34 = sub_264B400A4();
  v36 = v35;
  (*(v28 + 8))(v31, v27);
  *a2 = v34;
  a2[1] = v36;
  a2[2] = sub_264B40834();
  a2[3] = v37;
  v38 = a2 + v32[6];
  sub_264B40854();
  v39 = sub_264B40814();
  v40 = (a2 + v32[7]);
  *v40 = v39;
  v40[1] = v41;
  *(a2 + v32[11]) = sub_264B40844() & 1;
  v42 = sub_264B407B4();
  v84 = a2;
  v85 = v32;
  *(a2 + v32[9]) = v42 & 1;
  v43 = v87;
  sub_264B407A4();
  v45 = v82;
  v44 = v83;
  (*(v82 + 104))(v43, *MEMORY[0x277D4B7A0], v83);
  v46 = v45;
  v47 = *(v45 + 56);
  v48 = v44;
  v47(v43, 0, 1, v44);
  v49 = *(v81 + 56);
  sub_2649D046C(v26, v18, &qword_27FF88848, &qword_264B44280);
  sub_2649D046C(v43, &v18[v49], &qword_27FF88848, &qword_264B44280);
  v50 = *(v46 + 48);
  v51 = v44;
  if (v50(v18, 1, v44) != 1)
  {
    v53 = v79;
    sub_2649D046C(v18, v79, &qword_27FF88848, &qword_264B44280);
    if (v50(&v18[v49], 1, v44) != 1)
    {
      v54 = v76;
      (*(v46 + 32))(v76, &v18[v49], v48);
      sub_264AF85AC(&qword_27FF88850, MEMORY[0x277D4B7B0]);
      v52 = sub_264B40F94();
      v55 = *(v46 + 8);
      v55(v54, v51);
      sub_2649D04D4(v87, &qword_27FF88848, &qword_264B44280);
      sub_2649D04D4(v26, &qword_27FF88848, &qword_264B44280);
      v55(v53, v51);
      sub_2649D04D4(v18, &qword_27FF88848, &qword_264B44280);
      goto LABEL_8;
    }

    sub_2649D04D4(v87, &qword_27FF88848, &qword_264B44280);
    sub_2649D04D4(v26, &qword_27FF88848, &qword_264B44280);
    (*(v46 + 8))(v53, v44);
    goto LABEL_6;
  }

  sub_2649D04D4(v43, &qword_27FF88848, &qword_264B44280);
  sub_2649D04D4(v26, &qword_27FF88848, &qword_264B44280);
  if (v50(&v18[v49], 1, v44) != 1)
  {
LABEL_6:
    sub_2649D04D4(v18, &qword_27FF88840, &qword_264B44278);
    v52 = 0;
    goto LABEL_8;
  }

  sub_2649D04D4(v18, &qword_27FF88848, &qword_264B44280);
  v52 = 1;
LABEL_8:
  *(v84 + v85[10]) = v52 & 1;
  v56 = v86;
  sub_264B40794();
  v57 = sub_264B407F4();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  if (v59(v56, 1, v57) == 1 || (sub_264B407D4(), v61 = v60, v63 = v62, v64 = *(v58 + 8), v64(v56, v57), v56 = v80, sub_264B40794(), v59(v56, 1, v57) == 1))
  {
    v65 = sub_264B40864();
    (*(*(v65 - 8) + 8))(a1, v65);
    return sub_2649D04D4(v56, &qword_27FF8C2F0, &qword_264B54120);
  }

  else
  {
    sub_264B407E4();
    v68 = v67;
    v64(v56, v57);
    v69 = v78;
    sub_264B40794();
    if (v59(v69, 1, v57) == 1)
    {
      v70 = sub_264B40864();
      (*(*(v70 - 8) + 8))(a1, v70);
      result = sub_2649D04D4(v69, &qword_27FF8C2F0, &qword_264B54120);
      v71 = 0;
      v72 = 1;
    }

    else
    {
      v71 = sub_264B407C4();
      v72 = v73;
      v74 = sub_264B40864();
      (*(*(v74 - 8) + 8))(a1, v74);
      result = (v64)(v69, v57);
    }

    v75 = v77;
    *v77 = v61;
    v75[1] = v63;
    v75[2] = v68;
    v75[3] = v71;
    *(v75 + 32) = v72 & 1;
    *(v75 + 33) = 0;
  }

  return result;
}

uint64_t ContinuityDeviceInfo.init(continuityDevice:configuredDevices:isContinuityEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_264AF76C8(a1, a4, &unk_27FF89E30, &qword_264B44270);
  result = type metadata accessor for ContinuityDeviceInfo(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for ContinuityDeviceInfo(0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C240, &unk_264B53F68);
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C248, &qword_264B53F78);
  v5[18] = v14;
  v15 = *(v14 - 8);
  v5[19] = v15;
  v16 = *(v15 + 64) + 15;
  v5[20] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C250, &qword_264B53F80);
  v5[21] = v17;
  v18 = *(v17 - 8);
  v5[22] = v18;
  v19 = *(v18 + 64) + 15;
  v5[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C258, &qword_264B53F88);
  v5[24] = v20;
  v21 = *(v20 - 8);
  v5[25] = v21;
  v22 = *(v21 + 64) + 15;
  v5[26] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  v5[27] = v23;
  v24 = *(v23 - 8);
  v5[28] = v24;
  v5[29] = *(v24 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C268, &qword_264B53F98);
  v5[32] = v25;
  v26 = *(v25 - 8);
  v5[33] = v26;
  v27 = *(v26 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AF6428, 0, 0);
}

uint64_t sub_264AF6428()
{
  v34 = v0[35];
  v36 = v0[33];
  v37 = v0[32];
  v38 = v0[34];
  v40 = v0[31];
  v31 = v0[30];
  v32 = v0[29];
  v1 = v0[26];
  v29 = v0[28];
  v30 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v41 = v0[23];
  v35 = v0[22];
  v33 = v0[21];
  v24 = v0[20];
  v26 = v0[18];
  v27 = v0[19];
  v21 = v0[17];
  v39 = v0[16];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v25 = v0[6];
  *v1 = 1;
  (*(v2 + 104))(v1, *MEMORY[0x277D85768], v3);
  sub_264B41284();
  (*(v2 + 8))(v1, v3);
  v0[2] = (*(v6 + 8))(v7, v6);
  sub_2649CB2F0();
  v22 = sub_264B41554();
  v0[3] = v22;
  v8 = sub_264B41514();
  v23 = *(*(v8 - 8) + 56);
  v23(v21, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C270, &qword_264B53FA0);
  sub_2649CB4C8(&qword_27FF8C278, &qword_27FF8C270, &qword_264B53FA0);
  sub_264AF85AC(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v21, &qword_27FF89DE0, &qword_264B4BC00);

  v9 = sub_264B41554();
  v0[4] = v9;
  v23(v21, 1, 1, v8);
  sub_2649CB4C8(&qword_27FF8C280, &qword_27FF8C248, &qword_264B53F78);
  sub_264B40B24();
  sub_2649D04D4(v21, &qword_27FF89DE0, &qword_264B4BC00);

  (*(v27 + 8))(v24, v26);
  v10 = *(v29 + 16);
  v10(v31, v40, v30);
  v11 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v28 = swift_allocObject();
  v12 = *(v29 + 32);
  v12(v28 + v11, v31, v30);
  v10(v31, v40, v30);
  v13 = swift_allocObject();
  v12(v13 + v11, v31, v30);
  sub_2649CB4C8(&qword_27FF8C288, &qword_27FF8C250, &qword_264B53F80);
  v0[36] = sub_264B40B04();

  (*(v35 + 8))(v41, v33);
  (*(v36 + 16))(v38, v34, v37);
  sub_2649CB4C8(&qword_27FF8C290, &qword_27FF8C268, &qword_264B53F98);
  sub_264B41334();
  v14 = sub_2649CB4C8(&qword_27FF8C298, &qword_27FF8C240, &unk_264B53F68);
  v15 = *(MEMORY[0x277D856D0] + 4);
  v16 = swift_task_alloc();
  v0[37] = v16;
  *v16 = v0;
  v16[1] = sub_264AF69E0;
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];

  return MEMORY[0x282200308](v18, v19, v14);
}

uint64_t sub_264AF69E0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_264AF6B20;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_264AF6B20()
{
  v1 = v0[13];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[16], v0[14]);
    v6 = 1;
  }

  else
  {
    v7 = v0[12];
    v8 = v0[5];
    sub_264A547BC(v1, v7, type metadata accessor for ContinuityDeviceInfo);
    (*(v4 + 8))(v3, v5);
    sub_264A547BC(v7, v8, type metadata accessor for ContinuityDeviceInfo);
    v6 = 0;
  }

  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[31];
  v14 = v0[32];
  v15 = v0[27];
  v16 = v0[28];
  v19 = v0[30];
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[12];
  (*(v0[11] + 56))(v0[5], v6, 1, v0[10]);
  sub_264B40994();
  sub_264B412B4();

  (*(v16 + 8))(v13, v15);
  (*(v12 + 8))(v10, v14);

  v17 = v0[1];

  return v17();
}

uint64_t ContinuityDevice.init(identifier:name:remoteScreenSupported:remoteScreenPaired:modelTypeIdentifier:marketingName:isBlocked:size:scale:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v25 = type metadata accessor for ContinuityDevice(0);
  v26 = a9 + v25[8];
  *(v26 + 16) = 256;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  *(a9 + v25[9]) = a5;
  *(a9 + v25[10]) = a6;
  result = sub_264AF76C8(a7, a9 + v25[6], &qword_27FF8C2A0, &qword_264B53FA8);
  v28 = (a9 + v25[7]);
  *v28 = a8;
  v28[1] = a10;
  *(a9 + v25[11]) = a11;
  if ((a14 & 1) == 0 && (a16 & 1) == 0)
  {
    *v26 = a12;
    *(v26 + 1) = a13;
    *(v26 + 2) = a15;
    *(v26 + 3) = a17;
    *(v26 + 16) = a18 & 1;
  }

  return result;
}

uint64_t ContinuityDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContinuityDevice.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContinuityDevice.marketingName.getter()
{
  v1 = (v0 + *(type metadata accessor for ContinuityDevice(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

__n128 ContinuityDevice.screenInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContinuityDevice(0) + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

__n128 ContinuityDevice.screenInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = v1 + *(type metadata accessor for ContinuityDevice(0) + 32);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  return result;
}

uint64_t ContinuityDevice.remoteScreenSupported.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ContinuityDevice.remoteScreenPaired.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ContinuityDevice.isBlocked.setter(char a1)
{
  result = type metadata accessor for ContinuityDevice(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DeviceScreenInfo.init(size:scale:cornerRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

double DeviceScreenInfo.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t DeviceScreenInfo.cornerRadius.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ContinuityDeviceInfo.configuredDevices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContinuityDeviceInfo(0) + 20));
}

uint64_t sub_264AF72D0()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71B8);
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "Timed out fetching the continuity device", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  return sub_264B412B4();
}

uint64_t sub_264AF73CC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90) - 8) + 80);

  return sub_264AF72D0();
}

uint64_t sub_264AF7448(uint64_t a1)
{
  v2 = type metadata accessor for ContinuityDeviceInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C310, &qword_264B54138);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  sub_264AF85F4(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  sub_264B412A4();
  (*(v7 + 8))(v10, v6);
  return sub_264B412B4();
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AF762C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C260, &qword_264B53F90) - 8) + 80);

  return sub_264AF7448(a1);
}

uint64_t sub_264AF76C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL _s16ScreenSharingKit06DeviceA4InfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

uint64_t _s16ScreenSharingKit20ContinuityDeviceInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2F8, &qword_264B54128);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_2649D046C(a1, &v26 - v16, &unk_27FF89E30, &qword_264B44270);
  sub_2649D046C(a2, &v17[v18], &unk_27FF89E30, &qword_264B44270);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2649D046C(v17, v12, &unk_27FF89E30, &qword_264B44270);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_264A547BC(&v17[v18], v8, type metadata accessor for ContinuityDevice);
      v20 = _s16ScreenSharingKit16ContinuityDeviceV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_264A03DE8(v8);
      sub_264A03DE8(v12);
      sub_2649D04D4(v17, &unk_27FF89E30, &qword_264B44270);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_264A03DE8(v12);
LABEL_6:
    sub_2649D04D4(v17, &qword_27FF8C2F8, &qword_264B54128);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2649D04D4(v17, &unk_27FF89E30, &qword_264B44270);
LABEL_8:
  v21 = type metadata accessor for ContinuityDeviceInfo(0);
  if (sub_264A17054(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20))))
  {
    v22 = *(v21 + 24);
    v23 = *(a1 + v22);
    v24 = *(a2 + v22);
    if (v23 == 2)
    {
      if (v24 != 2)
      {
        return 0;
      }
    }

    else if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t _s16ScreenSharingKit16ContinuityDeviceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_264B406C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C300, &qword_264B54130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_264B41AA4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_264B41AA4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v37 = v8;
  v38 = type metadata accessor for ContinuityDevice(0);
  v17 = *(v38 + 24);
  v18 = *(v13 + 48);
  sub_2649D046C(a1 + v17, v16, &qword_27FF8C2A0, &qword_264B53FA8);
  sub_2649D046C(a2 + v17, &v16[v18], &qword_27FF8C2A0, &qword_264B53FA8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_2649D04D4(v16, &qword_27FF8C2A0, &qword_264B53FA8);
      goto LABEL_16;
    }

LABEL_12:
    sub_2649D04D4(v16, &qword_27FF8C300, &qword_264B54130);
    goto LABEL_13;
  }

  sub_2649D046C(v16, v12, &qword_27FF8C2A0, &qword_264B53FA8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_12;
  }

  v22 = v37;
  (*(v5 + 32))(v37, &v16[v18], v4);
  sub_264AF85AC(&qword_27FF8C308, MEMORY[0x277D85578]);
  v23 = sub_264B40F94();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v12, v4);
  sub_2649D04D4(v16, &qword_27FF8C2A0, &qword_264B53FA8);
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v25 = v38;
  v26 = *(v38 + 28);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_264B41AA4() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v30)
  {
    goto LABEL_13;
  }

  v31 = v25[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 33);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 33);
  if (v33)
  {
    if (v35)
    {
      goto LABEL_25;
    }

LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  if (v35)
  {
    goto LABEL_13;
  }

  v20 = 0;
  if (*v32 == *v34 && v32[1] == v34[1] && v32[2] == v34[2])
  {
    v36 = *(v34 + 32);
    if (v32[4])
    {
      if (v34[4])
      {
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    v20 = 0;
    if ((v34[4] & 1) == 0 && v32[3] == v34[3])
    {
LABEL_25:
      if (*(a1 + v25[9]) == *(a2 + v25[9]) && *(a1 + v25[10]) == *(a2 + v25[10]))
      {
        v20 = *(a1 + v25[11]) ^ *(a2 + v25[11]) ^ 1;
        return v20 & 1;
      }

      goto LABEL_13;
    }
  }

  return v20 & 1;
}

uint64_t sub_264AF7F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264AF8010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C2A0, &qword_264B53FA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264AF80C0()
{
  sub_264AF84E8(319, &qword_27FF8C2B8, MEMORY[0x277D85578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_264AF854C(319, &qword_27FF8C2C0);
    if (v1 <= 0x3F)
    {
      sub_264AF854C(319, &qword_27FF8C2C8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264AF81C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AF81E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_264AF823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264AF8318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264AF83DC()
{
  sub_264AF84E8(319, &qword_27FF8B840, type metadata accessor for ContinuityDevice, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_264AF84E8(319, &qword_27FF8C2E0, type metadata accessor for ContinuityDevice, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_264AF854C(319, &qword_27FF8C2E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264AF84E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_264AF854C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_264B41614();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_264AF85AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264AF85F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDeviceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit37MediaTransportDisplayServerTransitionO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_264AF8678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264AF86C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_264AF8708(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  LSAppWorkspaceBackedApplicationLaunchPrimitives.init()();
  return v0;
}

id LSAppWorkspaceBackedApplicationLaunchPrimitives.init()()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *(v0 + 16) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46A70;
    v3 = *MEMORY[0x277D0AC70];
    *(inited + 32) = sub_264B41044();
    *(inited + 40) = v4;
    v5 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v6 = *MEMORY[0x277D0AC58];
    *(inited + 80) = sub_264B41044();
    *(inited + 88) = v7;
    *(inited + 120) = v5;
    *(inited + 96) = 1;
    v8 = sub_264A24308(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
    swift_arrayDestroy();
    *(v0 + 24) = v8;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t LSAppWorkspaceBackedApplicationLaunchPrimitives.urlForApplication(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264B3FFD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void LSAppWorkspaceBackedApplicationLaunchPrimitives.openApplication(at:)()
{
  v1 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  v3 = sub_264B3FFB4();
  v4 = *(v1 + 24);
  v5 = sub_264B40F54();
  v12[0] = 0;
  LODWORD(v2) = [v2 openSensitiveURL:v3 withOptions:v5 error:v12];

  v6 = v12[0];
  if (v2)
  {
    v7 = *MEMORY[0x277D85DE8];

    v8 = v6;
  }

  else
  {
    v9 = v12[0];
    v10 = sub_264B3FF84();

    swift_willThrow();
    v11 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_264AF8A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264B3FFD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_264AF8B68(void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_264AF8C70();
    [v4 removeGestureRecognizer_];

    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 16) = a1;
  v7 = a1;

  if (a1)
  {
    sub_264AF8D9C(v7);
  }
}

uint64_t sub_264AF8C1C(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = result;
  if (v2 != result)
  {
    result = CGRectIsEmpty(*(v1 + 32));
    if (!result)
    {
      v3 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = *(v1 + 48);
      v6 = *(v1 + 56);

      return sub_264AF94EC(v3, v4, v5, v6);
    }
  }

  return result;
}

id sub_264AF8C70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for CaptureGestureRecognizer();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24CaptureGestureRecognizer_eventHandler];
    *v6 = sub_264AF9AD4;
    v6[1] = v3;
    v11.receiver = v5;
    v11.super_class = v4;
    v7 = objc_msgSendSuper2(&v11, sel_initWithTarget_action_, 0, 0);
    v8 = *(v0 + 72);
    *(v0 + 72) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_264AF8D3C(objc_class *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3.super.isa = a1;
    sub_264AF8F38(v3);
  }

  return result;
}

void sub_264AF8D9C(void *a1)
{
  v3 = sub_264AF8C70();
  [a1 addGestureRecognizer_];

  v4 = [a1 window];
  if (v4)
  {
    v5 = v4;
    [a1 bounds];
    [a1 convertRect:v5 toCoordinateSpace:?];
    sub_264AF94EC(v6, v7, v8, v9);

    v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID);
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID) = MEMORY[0x277D84F98];
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71B8);
    oslog = sub_264B40944();
    v12 = sub_264B41494();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v12, "No window found on capture view to prepare the appropriate transform for events", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }
  }
}

void sub_264AF8F38(UIEvent a1)
{
  v2 = v1;
  v4 = type metadata accessor for HIDMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HIDReportMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  if (v12)
  {
    v65 = v12;
    v13 = [v65 window];
    if (v13)
    {
      v14 = v13;
      v62 = v4;
      v63 = v8;
      [v65 bounds];
      [v65 convertRect:v14 toCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v76.origin.x = v15;
      v76.origin.y = v17;
      v76.size.width = v19;
      v76.size.height = v21;
      if (!CGRectEqualToRect(*(v2 + 32), v76))
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v23 = sub_264B40964();
        __swift_project_value_buffer(v23, qword_27FFA71B8);

        v24 = sub_264B40944();
        v25 = sub_264B41484();

        v26 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v27 = swift_slowAlloc();
          v64 = v14;
          v28 = v27;
          v29 = swift_slowAlloc();
          v70[0] = v29;
          *v28 = 136446466;
          v30 = *(v2 + 48);
          v71 = *(v2 + 32);
          v72 = v30;
          type metadata accessor for CGRect(0);
          LODWORD(v69) = v25;
          isa = a1.super.isa;
          v32 = sub_264B41064();
          v34 = sub_2649CC004(v32, v33, v70);

          *(v28 + 4) = v34;
          *(v28 + 12) = 2082;
          *&v71 = v16;
          *(&v71 + 1) = v18;
          *&v72 = v20;
          *(&v72 + 1) = v22;
          v35 = sub_264B41064();
          v37 = sub_2649CC004(v35, v36, v70);

          *(v28 + 14) = v37;
          a1.super.isa = isa;
          _os_log_impl(&dword_2649C6000, v26, v69, "Captureview bounds within the window updated from %{public}s to %{public}s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266749940](v29, -1, -1);
          v38 = v28;
          v14 = v64;
          MEMORY[0x266749940](v38, -1, -1);
        }

        else
        {
        }

        sub_264AF94EC(v16, v18, v20, v22);
      }

      if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_telemetry))
      {
        LOBYTE(v71) = 2;
        v75 = TelemetryProvider.signpostEventIfNeeded(_:_:)(&v71, a1);
        value = v75.value;
        is_nil = v75.is_nil;
      }

      else
      {
        value = 0;
        is_nil = 1;
      }

      v41 = a1.super.isa;
      v42 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver;
      swift_beginAccess();
      sub_2649CB5C0(v2 + v42, &v71);
      v43 = *(&v72 + 1);
      v44 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v45 = (v44[7])(v41, v43, v44);
      __swift_destroy_boxed_opaque_existential_0(&v71);
      v46 = *(v45 + 16);
      if (v46)
      {
        v64 = v14;
        v47 = *(v2 + 64);
        v69 = sub_264B40264();
        v48 = *(v69 - 8);
        v49 = *(v48 + 56);
        v67 = v48 + 56;
        v68 = v49;
        v50 = v62;
        v60[1] = v45;
        v51 = (v45 + 40);
        v66 = is_nil;
        v52 = v63;
        v53 = value;
        do
        {
          v55 = *(v51 - 1);
          v54 = *v51;
          v68(&v11[*(v52 + 20)], 1, 1, v69);
          sub_2649DEF18(v55, v54);
          v56 = sub_264B40464();
          *v11 = v53;
          v11[8] = v66;
          v57 = &v11[*(v52 + 24)];
          *v57 = v56;
          v57[1] = v58;
          sub_264AF99D4(v11, v7, type metadata accessor for HIDReportMessage);
          swift_storeEnumTagMultiPayload();
          *(&v72 + 1) = v50;
          v73 = &off_28765E6C8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
          sub_264AF99D4(v7, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
          sub_264B409C4();
          sub_2649DEF6C(v55, v54);
          sub_264AF9A3C(v7, type metadata accessor for HIDMessage);
          sub_264AF9A3C(v11, type metadata accessor for HIDReportMessage);
          __swift_destroy_boxed_opaque_existential_0(&v71);
          v51 += 3;
          --v46;
        }

        while (v46);
      }

      else
      {
      }
    }

    else
    {
      v39 = v65;
    }
  }
}

uint64_t sub_264AF94EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 24);
  switch(v9)
  {
    case 2:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 1.0, 1.0);
      v22 = v21;
      v10 = 3.14159265;
      break;
    case 4:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 0.0, 1.0);
      v22 = v21;
      v10 = -1.57079633;
      break;
    case 3:
      v22.a = 1.0;
      v22.b = 0.0;
      v22.c = 0.0;
      v22.d = 1.0;
      v22.tx = 0.0;
      v22.ty = 0.0;
      CGAffineTransformTranslate(&v21, &v22, 1.0, 0.0);
      v22 = v21;
      v10 = 1.57079633;
      break;
    default:
      v20 = xmmword_264B54280;
      v19 = xmmword_264B54290;
      v11 = 0uLL;
      goto LABEL_9;
  }

  CGAffineTransformRotate(&v21, &v22, v10);
  v19 = *&v21.a;
  v20 = *&v21.c;
  v11 = *&v21.tx;
LABEL_9:
  v18 = v11;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v12 = 1.0 / CGRectGetWidth(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  *&v22.a = v19;
  *&v22.c = v20;
  *&v22.tx = v18;
  CGAffineTransformScale(&v21, &v22, v12, 1.0 / Height);
  CGAffineTransformTranslate(&v22, &v21, -a1, -a2);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  v14 = v4 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 40))(&v22, v15, v16);
  return swift_endAccess();
}

uint64_t sub_264AF9730()
{
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_deviceID;
  v3 = sub_264B40104();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserverPrimitivesVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver));

  return v0;
}

uint64_t sub_264AF97E8()
{
  sub_264AF9730();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UIViewControlEventProducer()
{
  result = qword_27FF8C340;
  if (!qword_27FF8C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AF9894()
{
  result = sub_264B40104();
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

uint64_t sub_264AF997C()
{
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

uint64_t sub_264AF99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264AF9A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264AF9A9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AF9ADC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AF9C48, 0, 0);
}

uint64_t sub_264AF9C48()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  (*(v6 + 104))(v3, *MEMORY[0x277D858A0], v5);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v9[4] = sub_264A2DAB0();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_264B41344();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 32))(v7, v1, v4);
  (*(v2 + 56))(v7, 0, 1, v4);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation;
  swift_beginAccess();
  sub_264AFA054(v7, v8 + v10);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_264AF9DE0()
{
  sub_264A58C44(v0 + OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockMediaStream()
{
  result = qword_27FF8C350;
  if (!qword_27FF8C350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AF9EA0()
{
  sub_264AF9F44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264AF9F44()
{
  if (!qword_27FF897D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88DA8, &qword_264B48500);
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF897D0);
    }
  }
}

uint64_t sub_264AF9FB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_264AF9ADC(a1);
}

uint64_t sub_264AFA054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void EventObserver<A>.gestureRecognizerTouchesFilter.setter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_264B405E4();
  }

  else
  {

    sub_264B405E4();
  }
}

void (*EventObserver<A>.gestureRecognizerTouchesFilter.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = _s15UniversalHIDKit13EventObserverC16ScreenSharingKitSo7UIEventCRszlE30gestureRecognizerTouchesFilterSo09UIGestureJ0CSgvg_0();
  return sub_264AFA1A4;
}

void sub_264AFA1A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v2)
    {
      v5 = v2;
      sub_264B405E4();

      v4 = v5;
    }

    else
    {
      sub_264B405E4();
      v4 = 0;
    }
  }

  else
  {
    if (!v2)
    {
      sub_264B405E4();
      return;
    }

    v6 = v2;
    sub_264B405E4();
    v4 = v6;
  }
}

uint64_t (*sub_264AFA290(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_264B405F4();
  return sub_264AFA304;
}

double sub_264AFA308@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  sub_264B40634();
  *a1 = v5;
  a1[1] = v6;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t (*sub_264AFA370(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_264B40624();
  return sub_264AFA6C0;
}

void sub_264AFA43C(void *a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1;
    sub_264B405E4();
  }

  else
  {
    sub_264B405E4();
  }
}

uint64_t (*sub_264AFA4A4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = EventObserver<A>.gestureRecognizerTouchesFilter.modify(v3);
  return sub_264AFA6C0;
}

void sub_264AFA518(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_264AFA568@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A920, &qword_264B4CAD0);
  result = sub_264B40654();
  a1[3] = v2;
  a1[4] = &protocol witness table for <A> EventObserver<A>;
  *a1 = result;
  return result;
}

uint64_t sub_264AFA5DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _s15UniversalHIDKit13EventObserverC16ScreenSharingKitSo7UIEventCRszlE30gestureRecognizerTouchesFilterSo09UIGestureJ0CSgvg_0();
  *a2 = result;
  return result;
}

uint64_t sub_264AFA608(id *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = *a1;
  }

  return sub_264B405E4();
}

uint64_t sub_264AFA6C4()
{
  v1 = v0;
  if (*(v0 + 32))
  {

    sub_264B40994();
  }

  v2 = *(v0 + 16);

  sub_264B409E4();

  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  v5 = *(v1 + 40);

  return swift_deallocClassInstance();
}

void *sub_264AFA780()
{
  v1 = v0;
  v2 = sub_264B41594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C380, &unk_264B56E00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v27 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_264B40A14();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = result;
    v16 = *(v0 + 16);
    v26 = sub_264AFAB0C();
    sub_264B409F4();
    v17 = *(v0 + 24);
    sub_264AFB030();

    v18 = v1[3];
    v19 = [objc_opt_self() defaultCenter];
    v20 = *MEMORY[0x277D26DA8];
    sub_264B415A4();

    sub_264AFB1E4();
    sub_264B40AF4();
    (*(v3 + 8))(v6, v2);
    sub_2649CB4C8(&qword_27FF8C390, &qword_27FF8C380, &unk_264B56E00);
    v21 = sub_264B40AB4();
    (*(v8 + 8))(v11, v7);
    v25 = v21;
    v22 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
    sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10);
    sub_2649CB4C8(&qword_27FF8C398, &qword_27FF8C368, &unk_264B54500);
    v23 = sub_264B40B34();

    v24 = v1[4];
    v1[4] = v23;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_264AFAB0C()
{
  if ([v0 attributeForKey_])
  {
    sub_264B41664();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3A0, &unk_264B54510);
    if (swift_dynamicCast())
    {
      v1 = *(v3 + 16);

      return v1 != 0;
    }
  }

  else
  {
    sub_2649D04D4(v6, &qword_27FF8BB60, qword_264B44A80);
  }

  return 0;
}

id sub_264AFABF4()
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FE8, &unk_264B54520);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264B44150;
  v2 = *MEMORY[0x277D26DA8];
  *(v1 + 32) = *MEMORY[0x277D26DA8];
  type metadata accessor for Name(0);
  v3 = v2;
  v4 = sub_264B41144();

  v5 = *MEMORY[0x277D26DD0];
  v10[0] = 0;
  v6 = [v0 setAttribute:v4 forKey:v5 error:v10];

  if (v6)
  {
    result = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_264B3FF84();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264AFAD24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C360, &unk_264B56DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  if (*(v0 + 40))
  {
    v6 = *(v0 + 40);
  }

  else
  {
    v10[1] = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
    sub_2649CB4C8(&qword_27FF8C370, &qword_27FF8C368, &unk_264B54500);
    v7 = v0;
    sub_264B40B44();
    sub_2649CB4C8(&qword_27FF8C378, &qword_27FF8C360, &unk_264B56DF0);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v6;
}

uint64_t sub_264AFAF04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264B3FE74();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D26DB8];
  sub_264B41044();
  sub_264B416F4();
  if (!*(v3 + 16) || (v5 = sub_264A20A44(v10), (v6 & 1) == 0))
  {

    sub_2649C95C0(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  sub_2649C964C(*(v3 + 56) + 32 * v5, &v11);
  sub_2649C95C0(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    result = sub_2649D04D4(&v11, &qword_27FF8BB60, qword_264B44A80);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3A0, &unk_264B54510);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v8 = *(v10[0] + 16);

  v9 = v8 != 0;
LABEL_11:
  *a1 = v9;
  return result;
}

unint64_t sub_264AFB1E4()
{
  result = qword_27FF8C388;
  if (!qword_27FF8C388)
  {
    sub_264B41594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C388);
  }

  return result;
}

uint64_t sub_264AFB23C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DemoModeRemoteAuthenticationPrimitives();
  swift_allocObject();
  result = DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(1.0);
  a1[3] = v2;
  a1[4] = &protocol witness table for DemoModeRemoteAuthenticationPrimitives;
  *a1 = result;
  return result;
}

uint64_t sub_264AFB33C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    free(v1);
  }

  return swift_deallocClassInstance();
}

void sub_264AFB3C4(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AE40);

    v4 = sub_264B40944();
    v5 = sub_264B41484();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      sub_264A5EC94();
      v8 = sub_264B40F74();
      v10 = sub_2649CC004(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "PowerlogPrimitives sending payload %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    sub_264AB51F4(a1);
    oslog = sub_264B40F54();

    PPSSendTelemetry();
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AE40);
    oslog = sub_264B40944();
    v12 = sub_264B41494();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v12, "PPSCreateTelemetryIdentifier failed, not sending the data", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }
  }
}

uint64_t static ControlMessengerState.< infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  v5 = !v4;
  if (v2 == 1)
  {
    v6 = *a2 > 1;
  }

  else
  {
    v6 = v5;
  }

  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v6;
}

uint64_t static ControlMessengerState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (v2)
  {
    if (v3 <= 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = 0;
LABEL_8:
  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v4;
}

unint64_t sub_264AFB758()
{
  result = qword_27FF8C3A8;
  if (!qword_27FF8C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3A8);
  }

  return result;
}

uint64_t sub_264AFB7AC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  v5 = !v4;
  if (v2 == 1)
  {
    v6 = *a2 > 1;
  }

  else
  {
    v6 = v5;
  }

  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v6;
}

uint64_t sub_264AFB81C(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a1 == 0;
  }

  v3 = v2;
  if (*a2 == 1)
  {
    return *a1 < 2uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB848(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a2 == 0;
  }

  v3 = v2;
  if (*a1 == 1)
  {
    return *a2 < 2uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB874(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *a1 == 0;
  }

  v3 = !v2;
  if (*a2 == 1)
  {
    return *a1 > 1uLL;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264AFB8A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (v2)
  {
    if (v3 < 3)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = 0;
LABEL_8:
  sub_264A1EE08(*a1);
  sub_264A1EE08(v3);
  sub_264A1F208(v2);
  sub_264A1F208(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit21ControlMessengerStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264AFB94C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264AFB9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_264AFBA08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AFBA84()
{
  v14 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did invalidate, no-op", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_264AFBC34(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for ControlMessage();
  v2[19] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AFBCC8, v1, 0);
}

uint64_t sub_264AFBCC8()
{
  v52 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  sub_2649CB5C0(v1, v0 + 16);

  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51 = v8;
    *v7 = 136446466;
    *(v0 + 128) = v6;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v51);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = *(v0 + 40);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    *(v0 + 112) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 88));
    v15 = sub_264B41C44();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v18 = sub_2649CC004(v15, v17, &v51);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s did receive message: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v23 + 8))(v22, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 232) = EnumCaseMultiPayload;
  v25 = *(v0 + 160);
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *v25;
    *(v0 + 168) = *v25;
    v27 = v25[1];
    *(v0 + 176) = v27;
    v28 = v25[2];
    *(v0 + 184) = v28;
    v29 = v25[3];
    *(v0 + 192) = v29;
    if (v27 >= 4)
    {
      *(v0 + 200) = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
      sub_264B41244();
      sub_2649DEF18(v28, v29);
      *(v0 + 208) = sub_264B41234();
      v33 = sub_264B411C4();
      v35 = v50;
      v36 = sub_264AFC1FC;
    }

    else
    {
      v30 = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
      *&v31 = v26;
      *(&v31 + 1) = v27;
      *(v0 + 216) = v30;
      *&v32 = v28;
      *(&v32 + 1) = v29;
      *(v0 + 72) = v32;
      *(v0 + 56) = v31;
      sub_264B41244();
      *(v0 + 224) = sub_264B41234();
      v33 = sub_264B411C4();
      v35 = v34;
      v36 = sub_264AFC328;
    }

    return MEMORY[0x2822009F8](v36, v33, v35);
  }

  else
  {
    v37 = *(v0 + 144);
    sub_2649DEEBC(v25);

    v38 = sub_264B40944();
    v39 = sub_264B41494();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 144);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136446210;
      *(v0 + 120) = v40;
      type metadata accessor for SpringBoardBackedSystemEventConsumer();

      v43 = sub_264B41064();
      v45 = sub_2649CC004(v43, v44, &v51);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2649C6000, v38, v39, "%{public}s error decoding system event", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x266749940](v42, -1, -1);
      MEMORY[0x266749940](v41, -1, -1);
    }

    v46 = *(v0 + 160);

    v47 = *(v0 + 8);
    v48 = *(v0 + 232) == 1;

    return v47(v48);
  }
}

uint64_t sub_264AFC1FC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];

  v8 = *v2;
  sub_264A7F604(v6, v5, v3, v4);

  return MEMORY[0x2822009F8](sub_264AFC298, v7, 0);
}

uint64_t sub_264AFC298()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_264A187D4(*(v0 + 168), *(v0 + 176), v1, v2);
  sub_2649DEF6C(v1, v2);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);
  v5 = *(v0 + 232) == 1;

  return v4(v5);
}

uint64_t sub_264AFC328()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[18];

  v4 = *v2;
  sub_264A7F1A0(v0 + 7);

  return MEMORY[0x2822009F8](sub_264AFC3A0, v3, 0);
}

uint64_t sub_264AFC3A0()
{
  sub_264A187D4(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 232) == 1;

  return v2(v3);
}

uint64_t sub_264AFC41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AFC658();
}

uint64_t sub_264AFC4BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AFBA64();
}

uint64_t sub_264AFC548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AFBC34(a1);
}

unint64_t sub_264AFC5DC(uint64_t a1)
{
  result = sub_264AFC604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AFC604()
{
  result = qword_27FF8C3B0;
  if (!qword_27FF8C3B0)
  {
    type metadata accessor for SpringBoardBackedSystemEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3B0);
  }

  return result;
}

uint64_t sub_264AFC678()
{
  v14 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for SpringBoardBackedSystemEventConsumer();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did activate, no-op", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

unint64_t sub_264AFC878(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v6 = (a3 >> 8) & 1;
  v7 = HIWORD(a3) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFE8, &qword_264B536B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B54770;
  *(inited + 32) = 0x696472616F626E6FLL;
  *(inited + 40) = 0xEF6E776F6853676ELL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000264B58A00;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000264B61350;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000264B61370;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = sub_264A24664(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFF0, qword_264B536C0);
  swift_arrayDestroy();
  return v9;
}

void sub_264AFCA10(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v5 = sub_264AFC828();
      if (*(v4 + 8))
      {
        *(v4 + 18) = 1;
      }

      goto LABEL_46;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
        sub_264AFD080();
LABEL_8:

        sub_264AFCF58();
        return;
      }

      goto LABEL_17;
    }

    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = sub_264A24308(MEMORY[0x277D84F90]);
    }

    v24 = *(v6 + 16);

    if (v24)
    {
      v25 = sub_264A20ACC(0x6A624F726F727245, 0xEB00000000746365);
      if (v26)
      {
        sub_2649C964C(*(v6 + 56) + 32 * v25, &v43);
        sub_2649D3A14(&v43);
        if (*(v6 + 16) && (v27 = sub_264A20ACC(0x707954726F727245, 0xE900000000000065), (v28 & 1) != 0))
        {
          sub_2649C964C(*(v6 + 56) + 32 * v27, &v43);

          v30 = sub_264AFC828();
          if (*(v29 + 8))
          {
            v31 = v29;
            sub_2649C964C(&v43, v41);
            v32 = swift_dynamicCast();
            v33 = v40;
            if (!v32)
            {
              v33 = 1;
            }

            *(v31 + 24) = v33;
          }

          (v30)(v42, 0);
          __swift_destroy_boxed_opaque_existential_0(&v43);
        }

        else
        {
        }

        v36 = 0;
        goto LABEL_44;
      }
    }

    v43 = 0u;
    v44 = 0u;
    sub_2649D3A14(&v43);
    if (*(v6 + 16) && (v34 = sub_264A20ACC(0x6E6F73616552, 0xE600000000000000), (v35 & 1) != 0))
    {
      sub_2649C964C(*(v6 + 56) + 32 * v34, &v43);

      if (swift_dynamicCast())
      {
        if (v42[0] == 0xD000000000000010 && 0x8000000264B612B0 == v42[1])
        {

          v36 = 0;
        }

        else
        {
          v38 = sub_264B41AA4();

          v36 = v38 ^ 1;
        }

LABEL_44:
        v5 = sub_264AFC828();
        if (*(v37 + 8))
        {
          *(v37 + 17) = v36 & 1;
        }

LABEL_46:
        (v5)(&v43, 0);
        return;
      }
    }

    else
    {
    }

    v36 = 1;
    goto LABEL_44;
  }

  if (v3 != 1)
  {
    if (v3 == 3)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FF8AE40);
    oslog = sub_264B40944();
    v18 = sub_264B41474();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v43 = v20;
      *v19 = 136446210;
      LOBYTE(v42[0]) = v3;
      v21 = TelemetryEvent.rawValue.getter();
      v23 = sub_2649CC004(v21, v22, &v43);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2649C6000, oslog, v18, "Unexpected event: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  v7 = *(v2 + 88);
  if (v7)
  {
    v8 = *(v2 + 104);
    v9 = *(v2 + 96);
    v10 = *(v2 + 80);
    sub_2649CB5C0(v2 + 40, &v43);
    v11 = *(&v44 + 1);
    v12 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));

    v15 = sub_264AFC878(v13, v14, v9 & 0x10101, v8);
    (*(v12 + 8))(v10, v7, v15, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(&v43);
    v16 = *(v2 + 88);
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
  }
}

double sub_264AFCF58()
{
  swift_beginAccess();
  if (*(v0 + 88))
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v1 = sub_264B40964();
    __swift_project_value_buffer(v1, qword_27FF8AE40);
    v2 = sub_264B40944();
    v3 = sub_264B41494();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2649C6000, v2, v3, "Redundant call to createReport", v4, 2u);
      MEMORY[0x266749940](v4, -1, -1);
    }
  }

  else
  {
    *(v0 + 80) = 0xD000000000000027;
    *(v0 + 88) = 0x8000000264B61320;
    *&result = 1;
    *(v0 + 96) = xmmword_264B4A5F0;
  }

  return result;
}

uint64_t sub_264AFD080()
{
  result = swift_beginAccess();
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    sub_2649CB5C0(v0 + 40, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);

    v10 = sub_264AFC878(v8, v9, v4 & 0x10101, v3);
    (*(v7 + 8))(v5, v2, v10, v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v12);
    v11 = *(v0 + 88);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  return result;
}

void *CAOnboardingConsumer.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[11];

  return v0;
}

uint64_t CAOnboardingConsumer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_264AFD250(uint64_t a1, int a2)
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

uint64_t sub_264AFD298(uint64_t result, int a2, int a3)
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

uint64_t sub_264AFD2E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_264B40B84();

  v3 = *(v1 + 16);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

Swift::Void __swiftcall NWPathMonitorBackedNetworkStatusMonitor.stopMonitoringNetwork()()
{
  v1 = *(v0 + 16);

  sub_264B40B84();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 2);

  sub_264B40B84();

  v3 = *(v1 + 2);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.__allocating_init(monitor:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_264B40A44();
  *(v5 + 16) = a1;
  return v5;
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.init(monitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = OBJC_IVAR____TtC16ScreenSharingKit39NWPathMonitorBackedNetworkStatusMonitor__networkStatus;
  v10[15] = 0;
  sub_264B40A44();
  (*(v4 + 32))(v1 + v8, v7, v3);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_264AFD65C(uint64_t a1)
{
  v2 = sub_264B40B94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = sub_264B40BB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = result;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FFA71B8);
    v15 = *(v9 + 16);
    v35 = a1;
    v15(v12, a1, v8);
    v16 = sub_264B40944();
    v17 = sub_264B41484();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v33 = v3;
      v21 = v20;
      v37 = v20;
      *v19 = 136315138;
      sub_264B40BA4();
      v22 = sub_264B41064();
      v24 = v23;
      (*(v9 + 8))(v12, v8);
      v25 = sub_2649CC004(v22, v24, &v37);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v16, v17, "path updated to %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v26 = v21;
      v3 = v33;
      MEMORY[0x266749940](v26, -1, -1);
      v27 = v19;
      v2 = v34;
      MEMORY[0x266749940](v27, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    sub_264B40BA4();
    v28 = (*(v3 + 88))(v7, v2);
    if (v28 == *MEMORY[0x277CD8F78])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = 1;
    }

    else
    {
      if (v28 != *MEMORY[0x277CD8F68])
      {
        v30 = v3;
        v31 = *MEMORY[0x277CD8F70];
        v32 = v28;
        swift_getKeyPath();
        swift_getKeyPath();
        if (v32 != v31)
        {
          LOBYTE(v37) = 2;
          sub_264B40A94();
          return (*(v30 + 8))(v7, v2);
        }

        LOBYTE(v37) = 3;
        return sub_264B40A94();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v29 = 2;
    }

    LOBYTE(v37) = v29;
    return sub_264B40A94();
  }

  return result;
}

Swift::Void __swiftcall NWPathMonitorBackedNetworkStatusMonitor.startMonitoringNetwork()()
{
  v1 = v0;
  sub_2649CB2F0();
  v2 = sub_264B41554();
  v3 = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_264A8B0E0(sub_264AFDBCC);
  sub_264B40B64();

  v4 = *(v1 + 16);

  sub_264B40B74();
}

uint64_t sub_264AFDB94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t NWPathMonitorBackedNetworkStatusMonitor.networkStatusPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264AFDD00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_264AFDE54()
{
  v1 = *(*v0 + 16);

  sub_264B40B84();
}

uint64_t type metadata accessor for NWPathMonitorBackedNetworkStatusMonitor()
{
  result = qword_27FF8C3C0;
  if (!qword_27FF8C3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AFDEEC()
{
  sub_264A7C18C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264AFDFB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264AFE03C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264AFE0B4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AFE110()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AFE29C();
}

uint64_t sub_264AFE1D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264AFE258(uint64_t a1)
{
  result = sub_264AFE450(&qword_27FF8C3D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264AFE2BC()
{
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AEA0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Creating no-op drag observer", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_264B40594();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_264B40574();
  sub_264AFE450(&qword_27FF8C3D8);
  swift_unknownObjectRetain();
  sub_264B40584();
  v10 = *(v5 + 112);
  *(v5 + 112) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264AFE450(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyDragAndDropEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264AFE4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000264B61420 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_264B41AA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_264AFE584(uint64_t a1)
{
  v2 = sub_264AFFC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFE5C0(uint64_t a1)
{
  v2 = sub_264AFFC24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264AFE5FC()
{
  v1 = 12383;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6E65644967617264;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_264AFE684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264B00450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264AFE6AC(uint64_t a1)
{
  v2 = sub_264AFFC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFE6E8(uint64_t a1)
{
  v2 = sub_264AFFC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DragAndDropEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3E0, &qword_264B549B0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C3E8, &qword_264B549B8);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v24 = v1[2];
  v25 = v11;
  v23 = v13;
  v31 = *(v1 + 32);
  v22[3] = *(v1 + 33);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFC24();
  v15 = v7;
  v16 = v3;
  sub_264B41BD4();
  sub_264AFFC78();
  sub_264B419B4();
  v29 = v25;
  v30 = v12;
  v32 = 0;
  sub_264A2E90C();
  v17 = v28;
  sub_264B41A24();
  if (v17)
  {
    (*(v27 + 8))(v6, v3);
    return (*(v26 + 8))(v10, v15);
  }

  else
  {
    v19 = v31;
    v21 = v26;
    v20 = v27;
    LOBYTE(v29) = 1;
    sub_264B419E4();
    LOBYTE(v29) = v19;
    v32 = 2;
    sub_264AFFCCC();
    sub_264B41A24();
    LOBYTE(v29) = 3;
    sub_264B419F4();
    (*(v20 + 8))(v6, v16);
    return (*(v21 + 8))(v10, v15);
  }
}

uint64_t DragAndDropEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C408, &qword_264B549C0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C410, &unk_264B549C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_264AFFC24();
  sub_264B41BC4();
  if (!v2)
  {
    v15 = v36;
    v16 = v9;
    v17 = sub_264B419A4();
    v18 = (2 * *(v17 + 16)) | 1;
    v40 = v17;
    v41 = v17 + 32;
    v42 = 0;
    v43 = v18;
    if (sub_2649E0464() || v42 != v43 >> 1)
    {
      v19 = sub_264B417A4();
      swift_allocError();
      v21 = v20;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v21 = &type metadata for DragAndDropEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v16 + 8))(v12, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_264AFFC78();
      sub_264B418F4();
      v45 = 0;
      sub_264A2E960();
      sub_264B41984();
      v33 = v38;
      v34 = v39;
      v45 = 1;
      v31 = sub_264B41944();
      v32 = v24;
      v44 = 2;
      sub_264AFFD20();
      sub_264B41984();
      v25 = v45;
      v44 = 3;
      v26 = sub_264B41954();
      (*(v15 + 8))(v7, v4);
      (*(v16 + 8))(v12, v8);
      swift_unknownObjectRelease();
      v27 = v35;
      v28 = v34;
      *v35 = v33;
      v27[1] = v28;
      v29 = v32;
      v27[2] = v31;
      v27[3] = v29;
      *(v27 + 32) = v25;
      *(v27 + 33) = v26 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

unint64_t sub_264AFEF7C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_264AFEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000011 && 0x8000000264B61460 == a2;
  if (v5 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61480 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264AFF098(uint64_t a1)
{
  v2 = sub_264AFFD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF0D4(uint64_t a1)
{
  v2 = sub_264AFFD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AFF110(uint64_t a1)
{
  v2 = sub_264AFFE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF14C(uint64_t a1)
{
  v2 = sub_264AFFE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AFF188(uint64_t a1)
{
  v2 = sub_264AFFDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AFF1C4(uint64_t a1)
{
  v2 = sub_264AFFDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DragControllerDataDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C420, &qword_264B549D8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C428, &qword_264B549E0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C430, &qword_264B549E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFD74();
  sub_264B41BD4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_264AFFDC8();
    v18 = v22;
    sub_264B419B4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_264AFFE1C();
    sub_264B419B4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t DragControllerDataDestination.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t DragControllerDataDestination.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C450, &qword_264B549F0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C458, &qword_264B549F8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C460, &qword_264B54A00);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AFFD74();
  v16 = v36;
  sub_264B41BC4();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_264B419A4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_2649E0ED8();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_264B417A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v26 = &type metadata for DragControllerDataDestination;
      sub_264B41904();
      sub_264B41794();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_264AFFDC8();
        sub_264B418F4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_264AFFE1C();
        sub_264B418F4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_264AFFA10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  v8 = *(v1 + 8);
  *(a1 + 8) = v8;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
  type metadata accessor for ControlMessage();
  swift_storeEnumTagMultiPayload();
  sub_2649DEF18(v3, v8);
}

uint64_t _s16ScreenSharingKit16DragAndDropEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14 = *(a2 + 33);
  v15 = *(a1 + 33);
  sub_2649DEF18(*a1, v2);

  sub_2649DEF18(v8, v7);

  if ((sub_264A2E750(v3, v2, v8, v7) & 1) == 0)
  {

    sub_2649DEF6C(v8, v7);
    sub_2649DEF6C(v3, v2);
    return 0;
  }

  if (v5 == v10 && v4 == v9)
  {
    sub_2649DEF6C(v8, v7);
    sub_2649DEF6C(v3, v2);

    if (v6 == v11)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  v13 = sub_264B41AA4();
  sub_2649DEF6C(v8, v7);
  sub_2649DEF6C(v3, v2);

  result = 0;
  if ((v13 & 1) != 0 && ((v6 ^ v11) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_264AFFC24()
{
  result = qword_27FF8C3F0;
  if (!qword_27FF8C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3F0);
  }

  return result;
}

unint64_t sub_264AFFC78()
{
  result = qword_27FF8C3F8;
  if (!qword_27FF8C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C3F8);
  }

  return result;
}

unint64_t sub_264AFFCCC()
{
  result = qword_27FF8C400;
  if (!qword_27FF8C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C400);
  }

  return result;
}

unint64_t sub_264AFFD20()
{
  result = qword_27FF8C418;
  if (!qword_27FF8C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C418);
  }

  return result;
}

unint64_t sub_264AFFD74()
{
  result = qword_27FF8C438;
  if (!qword_27FF8C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C438);
  }

  return result;
}

unint64_t sub_264AFFDC8()
{
  result = qword_27FF8C440;
  if (!qword_27FF8C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C440);
  }

  return result;
}

unint64_t sub_264AFFE1C()
{
  result = qword_27FF8C448;
  if (!qword_27FF8C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C448);
  }

  return result;
}

unint64_t sub_264AFFE74()
{
  result = qword_27FF8C468;
  if (!qword_27FF8C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C468);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264AFFEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_264AFFF24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264AFFFDC()
{
  result = qword_27FF8C470;
  if (!qword_27FF8C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C470);
  }

  return result;
}

unint64_t sub_264B00034()
{
  result = qword_27FF8C478;
  if (!qword_27FF8C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C478);
  }

  return result;
}

unint64_t sub_264B0008C()
{
  result = qword_27FF8C480;
  if (!qword_27FF8C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C480);
  }

  return result;
}

unint64_t sub_264B000E4()
{
  result = qword_27FF8C488;
  if (!qword_27FF8C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C488);
  }

  return result;
}

unint64_t sub_264B0013C()
{
  result = qword_27FF8C490;
  if (!qword_27FF8C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C490);
  }

  return result;
}

unint64_t sub_264B00194()
{
  result = qword_27FF8C498;
  if (!qword_27FF8C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C498);
  }

  return result;
}

unint64_t sub_264B001EC()
{
  result = qword_27FF8C4A0;
  if (!qword_27FF8C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4A0);
  }

  return result;
}

unint64_t sub_264B00244()
{
  result = qword_27FF8C4A8;
  if (!qword_27FF8C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4A8);
  }

  return result;
}

unint64_t sub_264B0029C()
{
  result = qword_27FF8C4B0;
  if (!qword_27FF8C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4B0);
  }

  return result;
}

unint64_t sub_264B002F4()
{
  result = qword_27FF8C4B8;
  if (!qword_27FF8C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4B8);
  }

  return result;
}

unint64_t sub_264B0034C()
{
  result = qword_27FF8C4C0;
  if (!qword_27FF8C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4C0);
  }

  return result;
}

unint64_t sub_264B003A4()
{
  result = qword_27FF8C4C8;
  if (!qword_27FF8C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4C8);
  }

  return result;
}

unint64_t sub_264B003FC()
{
  result = qword_27FF8C4D0;
  if (!qword_27FF8C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C4D0);
  }

  return result;
}

uint64_t sub_264B00450(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644967617264 && a2 == 0xEE00726569666974 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B61440 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_264B005C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  v9 = sub_264B3FFD4();
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v11 = *(v10 + 64) + 15;
  v6[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C510, &qword_264B551D0);
  v6[17] = v12;
  v13 = *(v12 - 8);
  v6[18] = v13;
  v14 = *(v13 + 64) + 15;
  v6[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C518, &qword_264B551D8);
  v6[20] = v15;
  v16 = *(v15 - 8);
  v6[21] = v16;
  v17 = *(v16 + 64) + 15;
  v6[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C520, &unk_264B551E0);
  v6[23] = v18;
  v19 = *(v18 - 8);
  v6[24] = v19;
  v20 = *(v19 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[7] = a2;
  v6[8] = a3;

  return MEMORY[0x2822009F8](sub_264B007C8, 0, 0);
}

uint64_t sub_264B007C8()
{
  if (os_variant_allows_internal_security_policies() && (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_264B41014(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "------- Timeouts disabled via defaults on internal builds only -------", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  v21 = *(v0 + 184);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v13 = *(v0 + 152);
  v14 = *(v0 + 88);
  v15 = swift_task_alloc();
  *(v15 + 16) = *(v0 + 96);
  *(v15 + 32) = v8;
  *(v15 + 40) = v0 + 56;
  *(v15 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  (*(v12 + 104))(v10, *MEMORY[0x277D858A0], v11);
  sub_264B413E4();

  sub_264B412C4();
  v16 = *(MEMORY[0x277D858B8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_264B00A80;
  v18 = *(v0 + 152);
  v19 = *(v0 + 136);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v19, v0 + 72);
}

uint64_t sub_264B00A80()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_264B00EE4;
  }

  else
  {
    v3 = sub_264B00B90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B00B90()
{
  v28 = v0;
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  if (*(v0 + 40))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 80);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_2649D2AAC((v0 + 16), v4);

    v5 = *(v0 + 8);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v10 = sub_264B41484();
    sub_264B3FF94();
    v11 = sub_264B3FFA4();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = sub_264B40944();
    if (os_log_type_enabled(v14, v10))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136446978;
      v17 = sub_2649CC004(v11, v13, v27);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2050;
      *(v15 + 14) = 79;
      *(v15 + 22) = 2082;
      *(v15 + 24) = sub_2649CC004(0xD000000000000029, 0x8000000264B5D210, v27);
      *(v15 + 32) = 2082;
      *(v15 + 34) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D180, v27);
      _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s %{public}s", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    else
    {
    }

    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    sub_264A6EA14();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    v22 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 152);
    v25 = *(v0 + 128);

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_264B00EE4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[9];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B00FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_264B41844();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B01134, 0, 0);
}

uint64_t sub_264B01134()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v29 = *(v0 + 120);
  v4 = *(v0 + 104);
  v34 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v31 = *(v0 + 24);
  v32 = *(v0 + 16);
  v27 = *(*(sub_264B41274() - 8) + 56);
  (v27)(v1, 1, 1);
  v28 = *(v3 + 16);
  v28(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v31;
  *(v8 + 5) = v6;
  v30 = *(v3 + 32);
  v30(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_264B01A0C(v1, &unk_264B55230, v8);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  if ((v34 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v33 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v23 = *(v0 + 88);
    v24 = *(v0 + 120);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v15 = *(v0 + 40);
    v35 = *(v0 + 16);
    v27();
    (*(v12 + 16))(v11, v13, v14);
    v28(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v25;
    *(v17 + 5) = v26;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v30(&v17[(v23 + v7 + v16) & ~v7], v9, v10);
    sub_264B01A0C(v33, &unk_264B55240, v17);
    sub_2649D04D4(v33, &qword_27FF898C0, &unk_264B44190);
  }

  v18 = *(MEMORY[0x277D856A0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A368, &qword_264B4A928);
  *v19 = v0;
  v19[1] = sub_264B01494;
  v21 = *(v0 + 16);

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v20);
}

uint64_t sub_264B01494()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B01590, 0, 0);
}

uint64_t sub_264B01590()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = **(v0 + 16);
  sub_264B41204();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264B01628(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C530, &qword_264B55268);
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v6[18] = v12;
  *v12 = v6;
  v12[1] = sub_264B0178C;

  return v14(v6 + 2);
}

uint64_t sub_264B0178C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_264B0197C;
  }

  else
  {
    v3 = sub_264B018A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B018A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_2649CB5C0((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41374();
  (*(v2 + 8))(v1, v4);
  v0[13] = 0;
  sub_264B41384();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_264B0197C()
{
  v1 = v0[14];
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264B01A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_2649D046C(a1, v22 - v10, &qword_27FF898C0, &unk_264B44190);
  v12 = sub_264B41274();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2649D04D4(v11, &qword_27FF898C0, &unk_264B44190);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_264B411C4();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264B41264();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_264B01C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_264B01C48, 0, 0);
}

uint64_t sub_264B01C48()
{
  v17 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[14] = __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting timeout for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_264B01E38;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];

  return sub_2649FE7A8(v14, v12, 0, 0, 1);
}

uint64_t sub_264B01E38()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_264B020E0;
  }

  else
  {
    v3 = sub_264B01F4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B01F4C()
{
  v17 = v0;
  v1 = v0[14];
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[4] = v5;
    v0[5] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Timeout occurred after %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[13];
  sub_264A6EA14();
  v12 = swift_allocError();
  *v13 = 0;
  v0[9] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();
  v14 = v0[1];

  return v14();
}

uint64_t sub_264B020E0()
{
  v15 = v0;
  v1 = v0[14];
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    v0[3] = v4;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v2, v3, "Timeout of %{public}s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[13];
  v0[8] = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  sub_264B41384();
  v12 = v0[1];

  return v12();
}

uint64_t sub_264B02258(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = v4;
  v22 = a3;
  v21 = a2;
  v20 = a1;
  v19 = sub_264B41544();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B414F4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_264B40EE4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2649CB2F0();
  sub_264B40EC4();
  v23 = MEMORY[0x277D84F90];
  sub_264B068A8(&qword_27FF88CA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A5CB98();
  sub_264B41684();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v19);
  *(v4 + 48) = sub_264B41574();
  *(v4 + 56) = 0;
  v15 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  *(v5 + 16) = a4;
  *(v5 + 24) = v20;
  *(v5 + 32) = v21 & 1;
  *(v5 + 40) = v22;
  return v5;
}

void sub_264B02520(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v22 = sub_264B0678C;
  v23 = v6;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649D68F4;
  v21 = &block_descriptor_50;
  v7 = _Block_copy(&v18);

  [a3 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_264B067F8;
  v23 = v8;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649D68F4;
  v21 = &block_descriptor_54;
  v9 = _Block_copy(&v18);

  [a3 setInvalidationHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v22 = sub_264B06850;
  v23 = v11;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_61;
  v12 = _Block_copy(&v18);

  [a3 setDeviceFoundHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v22 = sub_264B0689C;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_264B03054;
  v21 = &block_descriptor_68_0;
  v15 = _Block_copy(&v18);

  [a3 setDeviceChangedHandler_];
  _Block_release(v15);
  v22 = sub_264B030C8;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_71;
  v16 = _Block_copy(&v18);
  [a3 setDeviceLostHandler_];
  _Block_release(v16);
  v22 = sub_264B03214;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_264B03398;
  v21 = &block_descriptor_74;
  v17 = _Block_copy(&v18);
  [a3 setDiscoverySessionStateChangedHandler_];
  _Block_release(v17);
}

uint64_t sub_264B02924(uint64_t a1, uint64_t (*a2)(void), const char *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v19 = sub_264B40964();
  __swift_project_value_buffer(v19, qword_27FFA71D0);
  v20 = sub_264B40944();
  v21 = a2();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2649C6000, v20, v21, a3, v22, 2u);
    MEMORY[0x266749940](v22, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
    swift_beginAccess();
    sub_2649D046C(v24 + v25, v18, &qword_27FF8C500, &qword_264B551B0);
    if ((*(v8 + 48))(v18, 1, v7))
    {
      sub_2649D04D4(v18, &qword_27FF8C500, &qword_264B551B0);
    }

    else
    {
      (*(v8 + 16))(v11, v18, v7);
      v26 = sub_2649D04D4(v18, &qword_27FF8C500, &qword_264B551B0);
      v30(v26);
      v27 = swift_allocError();
      *v28 = 1;
      v32 = v27;
      sub_264B411D4();
      (*(v8 + 8))(v11, v7);
    }

    (*(v8 + 56))(v16, 1, 1, v7);
    swift_beginAccess();
    sub_264B065B0(v16, v24 + v25);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_264B02C98(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71D0);
    v9 = a1;
    v10 = sub_264B40944();
    v11 = sub_264B414B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_2649C6000, v10, v11, "Discovery [Found] - device: %{public}@", v12, 0xCu);
      sub_2649D04D4(v13, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    sub_264B03424(v9, a3, a4);
  }

  return result;
}

uint64_t sub_264B02E34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71D0);
    v10 = a1;
    v11 = sub_264B40944();
    v12 = sub_264B414B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2082;
      type metadata accessor for RPDeviceChangeFlags(0);
      v15 = v10;
      v16 = sub_264B41064();
      v18 = a5;
      v19 = sub_2649CC004(v16, v17, &v21);

      *(v13 + 14) = v19;
      a5 = v18;
      _os_log_impl(&dword_2649C6000, v11, v12, "Discovery [Changed] - device: %{public}@; flags: %{public}s", v13, 0x16u);
      sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    sub_264B03424(v10, a4, a5);
  }

  return result;
}

void sub_264B03054(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_264B030C8(void *a1)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_2649C6000, oslog, v4, "Discovery [Lost] - device: %{public}@", v5, 0xCu);
    sub_2649D04D4(v6, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }
}

void sub_264B03214()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B414B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    type metadata accessor for RPRemoteDisplayDiscoveryState(0);
    v4 = sub_264B41064();
    v6 = sub_2649CC004(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_2649C6000, oslog, v1, "Discovery state changed to: %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x266749940](v3, -1, -1);
    MEMORY[0x266749940](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264B03398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_264B41044();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5(a2, v6, v8);
}

void sub_264B03424(void *a1, uint64_t a2, unint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v75 - v15;
  v16 = sub_264B40F14();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 48);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_264B40F34();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v23 = type metadata accessor for RapportBackedMediaTransportDevice();
  v24 = swift_allocObject();
  v25 = [a1 persistentIdentifier];
  if (!v25)
  {
    swift_deallocPartialClassInstance();
    if (qword_27FF883E8 == -1)
    {
LABEL_13:
      v45 = sub_264B40964();
      __swift_project_value_buffer(v45, qword_27FFA71D0);
      v46 = a1;
      v47 = sub_264B40944();
      v48 = sub_264B41494();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138543362;
        *(v49 + 4) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&dword_2649C6000, v47, v48, "Found device %{public}@ has no persistentIdentifier, ignoring device", v49, 0xCu);
        sub_2649D04D4(v50, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v50, -1, -1);
        MEMORY[0x266749940](v49, -1, -1);
      }

      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_13;
  }

  v26 = v25;
  v76 = v13;
  v27 = v9;
  v28 = sub_264B41044();
  v30 = v29;

  v24[2] = v28;
  v24[3] = v30;
  v78 = v24;
  v24[4] = a1;
  v31 = v79;
  if ((v28 != v80 || v30 != v79) && (sub_264B41AA4() & 1) == 0)
  {
    v64 = qword_27FF883E8;
    v65 = a1;
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_264B40964();
    __swift_project_value_buffer(v66, qword_27FFA71D0);
    v67 = v65;

    v39 = sub_264B40944();
    v68 = sub_264B41484();

    if (!os_log_type_enabled(v39, v68))
    {
      goto LABEL_25;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = v31;
    v72 = swift_slowAlloc();
    v81[0] = v72;
    *v69 = 138543618;
    *(v69 + 4) = v67;
    *v70 = v67;
    *(v69 + 12) = 2082;
    v73 = v67;
    *(v69 + 14) = sub_2649CC004(v80, v71, v81);
    _os_log_impl(&dword_2649C6000, v39, v68, "Found device %{public}@, but it does not match the expectedDeviceID %{public}s, ignoring device", v69, 0x16u);
    sub_2649D04D4(v70, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v70, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x266749940](v72, -1, -1);
    v44 = v69;
    goto LABEL_24;
  }

  v32 = a1;
  v33 = [v32 statusFlags];
  v34 = *(v3 + 40);
  if ((v34 & ~v33) != 0)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v52 = sub_264B40964();
    __swift_project_value_buffer(v52, qword_27FFA71D0);
    v53 = v32;

    v39 = sub_264B40944();
    v54 = sub_264B41494();

    if (!os_log_type_enabled(v39, v54))
    {
      goto LABEL_25;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v81[0] = v57;
    *v55 = 138543874;
    *(v55 + 4) = v53;
    *v56 = v53;
    *(v55 + 12) = 2082;
    v82 = [v53 &off_279B7A5C8 + 7];
    type metadata accessor for RPStatusFlags(0);
    v58 = sub_264B41064();
    v60 = sub_2649CC004(v58, v59, v81);

    *(v55 + 14) = v60;
    *(v55 + 22) = 2082;
    v82 = v34;
    v61 = sub_264B41064();
    v63 = sub_2649CC004(v61, v62, v81);

    *(v55 + 24) = v63;
    _os_log_impl(&dword_2649C6000, v39, v54, "Found device %{public}@ has status flags: %{public}s, which is not a superset of: %{public}s, ignoring device", v55, 0x20u);
    sub_2649D04D4(v56, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v56, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266749940](v57, -1, -1);
    v44 = v55;
    goto LABEL_24;
  }

  v35 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v35, v11, &qword_27FF8C500, &qword_264B551B0);
  v36 = v76;
  if ((*(v76 + 48))(v11, 1, v12) == 1)
  {
    sub_2649D04D4(v11, &qword_27FF8C500, &qword_264B551B0);
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v37 = sub_264B40964();
    __swift_project_value_buffer(v37, qword_27FFA71D0);
    v38 = v32;
    v39 = sub_264B40944();
    v40 = sub_264B41494();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_25;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138543362;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&dword_2649C6000, v39, v40, "Found device %{public}@, but discovery was stopped before we could return it", v41, 0xCu);
    sub_2649D04D4(v42, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v42, -1, -1);
    v44 = v41;
LABEL_24:
    MEMORY[0x266749940](v44, -1, -1);
LABEL_25:

    return;
  }

  v74 = v77;
  (*(v36 + 32))(v77, v11, v12);
  v81[3] = v23;
  v81[4] = sub_264B068A8(&qword_27FF8C538, type metadata accessor for RapportBackedMediaTransportDevice);
  v81[0] = v78;
  sub_264B411E4();
  (*(v36 + 8))(v74, v12);
  (*(v36 + 56))(v27, 1, 1, v12);
  swift_beginAccess();
  sub_264B065B0(v27, v3 + v35);
  swift_endAccess();
}

uint64_t sub_264B03DB8()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation, &qword_27FF8C500, &qword_264B551B0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer()
{
  result = qword_27FF8C4E0;
  if (!qword_27FF8C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B03E90()
{
  sub_264B03F54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264B03F54()
{
  if (!qword_27FF8C4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8C4F8, &qword_264B55190);
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8C4F0);
    }
  }
}

uint64_t sub_264B03FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_264B41844();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B040B4, 0, 0);
}

uint64_t sub_264B040B4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v3, v1, &qword_27FF8C500, &qword_264B551B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_2649D04D4(v1, &qword_27FF8C500, &qword_264B551B0);
  if (v2 == 1)
  {
    v5 = v0[8];
    v6 = [objc_allocWithZone(MEMORY[0x277D441E0]) init];
    v0[13] = v6;
    [v6 setDispatchQueue_];
    if ((*(v5 + 32) & 1) == 0)
    {
      [v6 setRssiThreshold_];
    }

    v7 = v0[11];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = *(v8 + 56);
    *(v8 + 56) = v6;
    v12 = v6;

    v13 = *(v8 + 16);
    v14 = sub_264B41C04();
    v16 = v15;
    v17 = swift_allocObject();
    v0[14] = v17;
    v17[2] = v8;
    v17[3] = v10;
    v17[4] = v9;
    v17[5] = v12;
    v18 = v12;

    sub_264B41834();
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_264B04378;
    v20 = v0[11];
    v21 = v0[5];

    return sub_264B005C0(v21, v14, v16, v20, &unk_264B551C0, v17);
  }

  else
  {
    sub_264B04AD4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    v25 = v0[11];
    v24 = v0[12];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_264B04378()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v9 = sub_264B045A8;
  }

  else
  {
    v9 = sub_264B04508;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_264B04508()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  [v1 invalidate];

  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_264B045A8()
{
  v1 = v0[13];
  v2 = v0[8];
  [v1 invalidate];

  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = v0[16];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B0463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_264B04664, 0, 0);
}

uint64_t sub_264B04664()
{
  sub_264B41324();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  *v6 = v0;
  v6[1] = sub_264B047C4;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000264B61570, sub_264B065A4, v3, v7);
}

uint64_t sub_264B047C4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_264B04968;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_264B048E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B048E0()
{
  v1 = *(v0 + 72);
  sub_264B41324();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(*(v0 + 16));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B04968()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_264B049CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B04A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264B0463C(a1, v4, v5, v7, v6);
}

unint64_t sub_264B04AD4()
{
  result = qword_27FF8C508;
  if (!qword_27FF8C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C508);
  }

  return result;
}

uint64_t sub_264B04B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_264B065B0(v17, a2 + v20);
  swift_endAccess();
  sub_264B02520(a3, a4, a5);
  v21 = sub_264B41274();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a5;
  v22[5] = a2;
  v23 = a5;

  sub_264A10C20(0, 0, v13, &unk_264B55278, v22);
}

uint64_t sub_264B04D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C4F8, &qword_264B55190);
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B04E80, 0, 0);
}

uint64_t sub_264B04E80()
{
  sub_264B41324();
  v1 = v0[25];
  v0[2] = v0;
  v0[3] = sub_264B05148;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2649F4D64;
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264B05148()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_264B052CC;
  }

  else
  {
    v3 = sub_264B05258;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B05258()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B052CC()
{
  v1 = v0[32];
  swift_willThrow();
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = OBJC_IVAR____TtC16ScreenSharingKit43RapportBackedMediaTransportDeviceDiscoverer_continuation;
  swift_beginAccess();
  sub_2649D046C(v6 + v7, v2, &qword_27FF8C500, &qword_264B551B0);
  if ((*(v5 + 48))(v2, 1, v4))
  {
    v8 = v0[31];

    sub_2649D04D4(v8, &qword_27FF8C500, &qword_264B551B0);
  }

  else
  {
    v9 = v0[31];
    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[27];
    (*(v11 + 16))(v10, v9, v12);
    sub_2649D04D4(v9, &qword_27FF8C500, &qword_264B551B0);
    v0[24] = v3;
    sub_264B411D4();
    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[30];
  (*(v0[28] + 56))(v13, 1, 1, v0[27]);
  swift_beginAccess();
  sub_264B065B0(v13, v6 + v7);
  swift_endAccess();
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];

  v17 = v0[1];

  return v17();
}

uint64_t sub_264B054A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v35 = a3;
  v36 = a6;
  v38 = a4;
  v37 = a2;
  v34 = a1;
  v7 = sub_264B41844();
  v30 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  v19 = *a5;
  v32 = a5[1];
  v33 = v19;
  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  (*(v11 + 16))(v14, v34, v10);
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v7);
  v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v22 = v21 + v12;
  v23 = (*(v8 + 80) + (v22 & 0xFFFFFFFFFFFFFFF8) + 24) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v35;
  *(v24 + 4) = v37;
  *(v24 + 5) = v25;
  (*(v11 + 32))(&v24[v21], v14, v29);
  v24[v22] = v38;
  v26 = &v24[v22 & 0xFFFFFFFFFFFFFFF8];
  v27 = v32;
  *(v26 + 1) = v33;
  *(v26 + 2) = v27;
  (*(v8 + 32))(&v24[v23], v31, v30);

  sub_264A10C20(0, 0, v18, &unk_264B55208, v24);
}

uint64_t sub_264B057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_264B057F4, 0, 0);
}

uint64_t sub_264B057F4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_264B05908;
  v7 = *(v0 + 32);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v7, v8, v9, 0, 0, &unk_264B55218, v4, v10);
}

uint64_t sub_264B05908()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264B05A20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_264B41844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_264B05B8C()
{
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0) - 8);
  v4 = ((*(v3 + 80) + 48) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_264B41844() - 8);
  v7 = v0[3];
  v13 = v0[2];
  v8 = *(v0 + v4);
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2649CD850;

  JUMPOUT(0x264B057B8);
}

uint64_t sub_264B05D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2649CD850;

  return sub_264B00FAC(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_264B05E2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264B05D34(a1, a2, v6, v7, v8, v9, v11);
}

uint64_t sub_264B05F20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264B05FF8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_264B01628(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_264B06108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2649E0EE4;

  return sub_264B01C24(a1, a2, a3, v12, v13, a5, a6);
}

uint64_t sub_264B061E4()
{
  v1 = sub_264B41844();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264B06340(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_264B41844() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C528, &unk_264B551F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264B06108(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_264B064B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264B064EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A9FC14(a1, v5);
}

uint64_t sub_264B065B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C500, &qword_264B551B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B06620()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B06668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264B04D70(a1, v4, v5, v7, v6);
}

uint64_t sub_264B06754()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_57Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264B068A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264B06904()
{
  result = qword_27FF8C540;
  if (!qword_27FF8C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C540);
  }

  return result;
}

void sub_264B06984(_BYTE *a1@<X8>)
{
  if (*(v1 + 8) < 0)
  {
    *a1 = byte_264B56A36[*v1];
  }

  else
  {
    *a1 = 14;
  }
}

unint64_t sub_264B069B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 3:
    case 14:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000002CLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
    case 21:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_264B06C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264B0CA34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264B06CA4(uint64_t a1)
{
  v2 = sub_264B08D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06CE0(uint64_t a1)
{
  v2 = sub_264B08D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06D1C(uint64_t a1)
{
  v2 = sub_264B08F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06D58(uint64_t a1)
{
  v2 = sub_264B08F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06D94(uint64_t a1)
{
  v2 = sub_264B08EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06DD0(uint64_t a1)
{
  v2 = sub_264B08EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06E0C(uint64_t a1)
{
  v2 = sub_264B09050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06E48(uint64_t a1)
{
  v2 = sub_264B09050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06E84(uint64_t a1)
{
  v2 = sub_264B09494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06EC0(uint64_t a1)
{
  v2 = sub_264B09494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06EFC(uint64_t a1)
{
  v2 = sub_264B08DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06F38(uint64_t a1)
{
  v2 = sub_264B08DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06F74(uint64_t a1)
{
  v2 = sub_264B08E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B06FB0(uint64_t a1)
{
  v2 = sub_264B08E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B06FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1885697139 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B07084(uint64_t a1)
{
  v2 = sub_264B09248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B070C0(uint64_t a1)
{
  v2 = sub_264B09248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B070FC(uint64_t a1)
{
  v2 = sub_264B09440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07138(uint64_t a1)
{
  v2 = sub_264B09440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07174(uint64_t a1)
{
  v2 = sub_264B093EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B071B0(uint64_t a1)
{
  v2 = sub_264B093EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B071EC(uint64_t a1)
{
  v2 = sub_264B09344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07228(uint64_t a1)
{
  v2 = sub_264B09344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07264(uint64_t a1)
{
  v2 = sub_264B092F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B072A0(uint64_t a1)
{
  v2 = sub_264B092F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B072DC(uint64_t a1)
{
  v2 = sub_264B09398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07318(uint64_t a1)
{
  v2 = sub_264B09398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07354(uint64_t a1)
{
  v2 = sub_264B08E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07390(uint64_t a1)
{
  v2 = sub_264B08E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B073CC(uint64_t a1)
{
  v2 = sub_264B0914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07408(uint64_t a1)
{
  v2 = sub_264B0914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07444(uint64_t a1)
{
  v2 = sub_264B091F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07480(uint64_t a1)
{
  v2 = sub_264B091F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B074BC(uint64_t a1)
{
  v2 = sub_264B090F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B074F8(uint64_t a1)
{
  v2 = sub_264B090F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07534(uint64_t a1)
{
  v2 = sub_264B091A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07570(uint64_t a1)
{
  v2 = sub_264B091A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B075AC(uint64_t a1)
{
  v2 = sub_264B08FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B075E8(uint64_t a1)
{
  v2 = sub_264B08FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07624(uint64_t a1)
{
  v2 = sub_264B08FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07660(uint64_t a1)
{
  v2 = sub_264B08FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B0769C(uint64_t a1)
{
  v2 = sub_264B08F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B076D8(uint64_t a1)
{
  v2 = sub_264B08F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B07714(uint64_t a1)
{
  v2 = sub_264B090A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B07750(uint64_t a1)
{
  v2 = sub_264B090A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B0778C(uint64_t a1)
{
  v2 = sub_264B094E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B077C8(uint64_t a1)
{
  v2 = sub_264B094E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C548, &qword_264B55340);
  v153 = *(v3 - 8);
  v154 = v3;
  v4 = *(v153 + 64);
  MEMORY[0x28223BE20](v3);
  v152 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C550, &qword_264B55348);
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = *(v150 + 64);
  MEMORY[0x28223BE20](v6);
  v149 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C558, &qword_264B55350);
  v147 = *(v9 - 8);
  v148 = v9;
  v10 = *(v147 + 64);
  MEMORY[0x28223BE20](v9);
  v146 = &v97 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C560, &qword_264B55358);
  v144 = *(v145 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v97 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C568, &qword_264B55360);
  v141 = *(v142 - 8);
  v14 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = &v97 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C570, &qword_264B55368);
  v138 = *(v139 - 8);
  v16 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = &v97 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C578, &qword_264B55370);
  v135 = *(v136 - 8);
  v18 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v97 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C580, &qword_264B55378);
  v132 = *(v133 - 8);
  v20 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v97 - v21;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C588, &qword_264B55380);
  v129 = *(v130 - 8);
  v22 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C590, &qword_264B55388);
  v159 = *(v24 - 8);
  v160 = v24;
  v25 = *(v159 + 64);
  MEMORY[0x28223BE20](v24);
  v158 = &v97 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C598, &qword_264B55390);
  v126 = *(v127 - 8);
  v27 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v97 - v28;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5A0, &qword_264B55398);
  v123 = *(v124 - 8);
  v29 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v122 = &v97 - v30;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5A8, &qword_264B553A0);
  v120 = *(v121 - 8);
  v31 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v97 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5B0, &qword_264B553A8);
  v117 = *(v118 - 8);
  v33 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v97 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5B8, &qword_264B553B0);
  v156 = *(v35 - 8);
  v157 = v35;
  v36 = *(v156 + 64);
  MEMORY[0x28223BE20](v35);
  v155 = &v97 - v37;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5C0, &qword_264B553B8);
  v114 = *(v115 - 8);
  v38 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v97 - v39;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5C8, &qword_264B553C0);
  v111 = *(v112 - 8);
  v40 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v97 - v41;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5D0, &qword_264B553C8);
  v108 = *(v109 - 8);
  v42 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v97 - v43;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5D8, &qword_264B553D0);
  v105 = *(v106 - 8);
  v44 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v97 - v45;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5E0, &qword_264B553D8);
  v102 = *(v103 - 8);
  v46 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v97 - v47;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5E8, &qword_264B553E0);
  v99 = *(v100 - 8);
  v48 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v50 = &v97 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5F0, &qword_264B553E8);
  v98 = *(v51 - 8);
  v52 = *(v98 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v97 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C5F8, &unk_264B553F0);
  v56 = *(v55 - 8);
  v162 = v55;
  v163 = v56;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v97 - v58;
  v60 = *v1;
  v61 = *(v1 + 8);
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264B08D5C();
  v161 = v59;
  sub_264B41BD4();
  if (v61 >> 6)
  {
    if (v61 >> 6 == 1)
    {
      LOBYTE(v164) = 12;
      sub_264B090A4();
      v63 = v158;
      v65 = v161;
      v64 = v162;
      sub_264B419B4();
      v164 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38);
      v66 = v160;
      sub_264B41A24();
      (*(v159 + 8))(v63, v66);
      return (*(v163 + 8))(v65, v64);
    }

    else
    {
      switch(v60)
      {
        case 1:
          LOBYTE(v164) = 1;
          sub_264B09494();
          v87 = v161;
          v88 = v162;
          sub_264B419B4();
          (*(v99 + 8))(v50, v100);
          return (*(v163 + 8))(v87, v88);
        case 2:
          LOBYTE(v164) = 2;
          sub_264B09440();
          v83 = v101;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v102 + 8);
          v77 = v83;
          v78 = &v135;
          goto LABEL_26;
        case 3:
          LOBYTE(v164) = 3;
          sub_264B093EC();
          v85 = v104;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v105 + 8);
          v77 = v85;
          v78 = &v138;
          goto LABEL_26;
        case 4:
          LOBYTE(v164) = 4;
          sub_264B09398();
          v80 = v107;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v108 + 8);
          v77 = v80;
          v78 = &v141;
          goto LABEL_26;
        case 5:
          LOBYTE(v164) = 5;
          sub_264B09344();
          v92 = v110;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v111 + 8);
          v77 = v92;
          v78 = &v144;
          goto LABEL_26;
        case 6:
          LOBYTE(v164) = 6;
          sub_264B092F0();
          v94 = v113;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v114 + 8);
          v77 = v94;
          v78 = &v147;
          goto LABEL_26;
        case 7:
          LOBYTE(v164) = 8;
          sub_264B091F4();
          v86 = v116;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v117 + 8);
          v77 = v86;
          v78 = &v150;
          goto LABEL_26;
        case 8:
          LOBYTE(v164) = 9;
          sub_264B091A0();
          v96 = v119;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v120 + 8);
          v77 = v96;
          v78 = &v153;
          goto LABEL_26;
        case 9:
          LOBYTE(v164) = 10;
          sub_264B0914C();
          v82 = v122;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v123 + 8);
          v77 = v82;
          v78 = &v156;
          goto LABEL_26;
        case 10:
          LOBYTE(v164) = 11;
          sub_264B090F8();
          v95 = v125;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v126 + 8);
          v77 = v95;
          v78 = &v159;
          goto LABEL_26;
        case 11:
          LOBYTE(v164) = 13;
          sub_264B09050();
          v79 = v128;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v129 + 8);
          v77 = v79;
          v78 = &v162;
          goto LABEL_26;
        case 12:
          LOBYTE(v164) = 14;
          sub_264B08FFC();
          v81 = v131;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v132 + 8);
          v77 = v81;
          v78 = &v165;
          goto LABEL_26;
        case 13:
          LOBYTE(v164) = 15;
          sub_264B08FA8();
          v93 = v134;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v135 + 8);
          v77 = v93;
          v78 = &v166;
          goto LABEL_26;
        case 14:
          LOBYTE(v164) = 16;
          sub_264B08F54();
          v75 = v137;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v138 + 8);
          v77 = v75;
          v78 = &v167;
          goto LABEL_26;
        case 15:
          LOBYTE(v164) = 17;
          sub_264B08F00();
          v84 = v140;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v76 = *(v141 + 8);
          v77 = v84;
          v78 = &v168;
LABEL_26:
          v76(v77, *(v78 - 32));
          return (*(v163 + 8))(v73, v72);
        case 16:
          LOBYTE(v164) = 18;
          sub_264B08EAC();
          v74 = v143;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          (*(v144 + 8))(v74, v145);
          return (*(v163 + 8))(v73, v72);
        case 17:
          LOBYTE(v164) = 19;
          sub_264B08E58();
          v89 = v146;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v91 = v147;
          v90 = v148;
          goto LABEL_30;
        case 18:
          LOBYTE(v164) = 20;
          sub_264B08E04();
          v89 = v149;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v91 = v150;
          v90 = v151;
          goto LABEL_30;
        case 19:
          LOBYTE(v164) = 21;
          sub_264B08DB0();
          v89 = v152;
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          v91 = v153;
          v90 = v154;
LABEL_30:
          (*(v91 + 8))(v89, v90);
          break;
        default:
          LOBYTE(v164) = 0;
          sub_264B094E8();
          v73 = v161;
          v72 = v162;
          sub_264B419B4();
          (*(v98 + 8))(v54, v51);
          break;
      }

      return (*(v163 + 8))(v73, v72);
    }
  }

  else
  {
    LOBYTE(v164) = 7;
    sub_264B09248();
    v68 = v155;
    v70 = v161;
    v69 = v162;
    sub_264B419B4();
    v164 = v60;
    v165 = v61;
    sub_264B0929C();
    v71 = v157;
    sub_264B41A24();
    (*(v156 + 8))(v68, v71);
    return (*(v163 + 8))(v70, v69);
  }
}

unint64_t sub_264B08D5C()
{
  result = qword_27FF8C600;
  if (!qword_27FF8C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C600);
  }

  return result;
}

unint64_t sub_264B08DB0()
{
  result = qword_27FF8C608;
  if (!qword_27FF8C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C608);
  }

  return result;
}

unint64_t sub_264B08E04()
{
  result = qword_27FF8C610;
  if (!qword_27FF8C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C610);
  }

  return result;
}

unint64_t sub_264B08E58()
{
  result = qword_27FF8C618;
  if (!qword_27FF8C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C618);
  }

  return result;
}

unint64_t sub_264B08EAC()
{
  result = qword_27FF8C620;
  if (!qword_27FF8C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C620);
  }

  return result;
}

unint64_t sub_264B08F00()
{
  result = qword_27FF8C628;
  if (!qword_27FF8C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C628);
  }

  return result;
}

unint64_t sub_264B08F54()
{
  result = qword_27FF8C630;
  if (!qword_27FF8C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C630);
  }

  return result;
}

unint64_t sub_264B08FA8()
{
  result = qword_27FF8C638;
  if (!qword_27FF8C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C638);
  }

  return result;
}

unint64_t sub_264B08FFC()
{
  result = qword_27FF8C640;
  if (!qword_27FF8C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C640);
  }

  return result;
}

unint64_t sub_264B09050()
{
  result = qword_27FF8C648;
  if (!qword_27FF8C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C648);
  }

  return result;
}

unint64_t sub_264B090A4()
{
  result = qword_27FF8C650;
  if (!qword_27FF8C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C650);
  }

  return result;
}

unint64_t sub_264B090F8()
{
  result = qword_27FF8C658;
  if (!qword_27FF8C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C658);
  }

  return result;
}

unint64_t sub_264B0914C()
{
  result = qword_27FF8C660;
  if (!qword_27FF8C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C660);
  }

  return result;
}

unint64_t sub_264B091A0()
{
  result = qword_27FF8C668;
  if (!qword_27FF8C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C668);
  }

  return result;
}

unint64_t sub_264B091F4()
{
  result = qword_27FF8C670;
  if (!qword_27FF8C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C670);
  }

  return result;
}

unint64_t sub_264B09248()
{
  result = qword_27FF8C678;
  if (!qword_27FF8C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C678);
  }

  return result;
}

unint64_t sub_264B0929C()
{
  result = qword_27FF8C680;
  if (!qword_27FF8C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C680);
  }

  return result;
}

unint64_t sub_264B092F0()
{
  result = qword_27FF8C688;
  if (!qword_27FF8C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C688);
  }

  return result;
}

unint64_t sub_264B09344()
{
  result = qword_27FF8C690;
  if (!qword_27FF8C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C690);
  }

  return result;
}

unint64_t sub_264B09398()
{
  result = qword_27FF8C698;
  if (!qword_27FF8C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C698);
  }

  return result;
}

unint64_t sub_264B093EC()
{
  result = qword_27FF8C6A0;
  if (!qword_27FF8C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6A0);
  }

  return result;
}

unint64_t sub_264B09440()
{
  result = qword_27FF8C6A8;
  if (!qword_27FF8C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6A8);
  }

  return result;
}

unint64_t sub_264B09494()
{
  result = qword_27FF8C6B0;
  if (!qword_27FF8C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6B0);
  }

  return result;
}

unint64_t sub_264B094E8()
{
  result = qword_27FF8C6B8;
  if (!qword_27FF8C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C6B8);
  }

  return result;
}

uint64_t ServerError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6C0, &qword_264B55400);
  v163 = *(v184 - 8);
  v3 = *(v163 + 64);
  MEMORY[0x28223BE20](v184);
  v180 = &v118 - v4;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6C8, &qword_264B55408);
  v161 = *(v162 - 8);
  v5 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v179 = &v118 - v6;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6D0, &qword_264B55410);
  v159 = *(v160 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v178 = &v118 - v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6D8, &qword_264B55418);
  v157 = *(v158 - 8);
  v9 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v177 = &v118 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6E0, &qword_264B55420);
  v155 = *(v156 - 8);
  v11 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v176 = &v118 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6E8, &qword_264B55428);
  v153 = *(v154 - 8);
  v13 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v175 = &v118 - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6F0, &qword_264B55430);
  v151 = *(v152 - 8);
  v15 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v174 = &v118 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C6F8, &qword_264B55438);
  v149 = *(v150 - 8);
  v17 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v173 = &v118 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C700, &qword_264B55440);
  v145 = *(v146 - 8);
  v19 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v171 = &v118 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C708, &qword_264B55448);
  v147 = *(v148 - 8);
  v21 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v172 = &v118 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C710, &qword_264B55450);
  v143 = *(v144 - 8);
  v23 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v170 = &v118 - v24;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C718, &qword_264B55458);
  v141 = *(v142 - 8);
  v25 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v169 = &v118 - v26;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C720, &qword_264B55460);
  v139 = *(v140 - 8);
  v27 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v168 = &v118 - v28;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C728, &qword_264B55468);
  v136 = *(v138 - 8);
  v29 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v167 = &v118 - v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C730, &qword_264B55470);
  v137 = *(v135 - 8);
  v31 = *(v137 + 64);
  MEMORY[0x28223BE20](v135);
  v183 = &v118 - v32;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C738, &qword_264B55478);
  v134 = *(v133 - 8);
  v33 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  v182 = &v118 - v34;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C740, &qword_264B55480);
  v132 = *(v131 - 8);
  v35 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  v166 = &v118 - v36;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C748, &qword_264B55488);
  v130 = *(v127 - 8);
  v37 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  v165 = &v118 - v38;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C750, &qword_264B55490);
  v128 = *(v129 - 8);
  v39 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v181 = &v118 - v40;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C758, &qword_264B55498);
  v125 = *(v126 - 8);
  v41 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v164 = &v118 - v42;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C760, &qword_264B554A0);
  v123 = *(v124 - 8);
  v43 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v45 = &v118 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C768, &qword_264B554A8);
  v122 = *(v46 - 8);
  v47 = *(v122 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v118 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C770, &unk_264B554B0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v118 - v53;
  v55 = a1[3];
  v56 = a1[4];
  v193 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_264B08D5C();
  v57 = v186;
  sub_264B41BC4();
  if (v57)
  {
LABEL_8:
    v74 = v193;
    return __swift_destroy_boxed_opaque_existential_0(v74);
  }

  v119 = v49;
  v118 = v46;
  v120 = v45;
  v58 = v181;
  v59 = v182;
  v60 = v183;
  v121 = 0;
  v62 = v184;
  v61 = v185;
  v186 = v51;
  v63 = sub_264B419A4();
  v64 = (2 * *(v63 + 16)) | 1;
  v189 = v63;
  v190 = v63 + 32;
  v191 = 0;
  v192 = v64;
  v65 = sub_2649E04C4();
  if (v191 != v192 >> 1)
  {
LABEL_6:
    v70 = sub_264B417A4();
    swift_allocError();
    v72 = v71;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v72 = &type metadata for ServerError;
    sub_264B41904();
    sub_264B41794();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
LABEL_7:
    (*(v186 + 8))(v54, v50);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v65)
  {
    case 0:
      LOBYTE(v187) = 0;
      sub_264B094E8();
      v66 = v119;
      v67 = v121;
      sub_264B418F4();
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v122 + 8))(v66, v118);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = 0;
      v69 = 0x80;
      break;
    case 1:
      LOBYTE(v187) = 1;
      sub_264B09494();
      v97 = v120;
      v98 = v121;
      sub_264B418F4();
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v123 + 8))(v97, v124);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 1;
      break;
    case 2:
      LOBYTE(v187) = 2;
      sub_264B09440();
      v89 = v164;
      v90 = v121;
      sub_264B418F4();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v125 + 8))(v89, v126);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 2;
      break;
    case 3:
      LOBYTE(v187) = 3;
      sub_264B093EC();
      v93 = v121;
      sub_264B418F4();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v128 + 8))(v58, v129);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 3;
      break;
    case 4:
      LOBYTE(v187) = 4;
      sub_264B09398();
      v82 = v165;
      v83 = v121;
      sub_264B418F4();
      if (v83)
      {
        goto LABEL_7;
      }

      (*(v130 + 8))(v82, v127);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 4;
      break;
    case 5:
      LOBYTE(v187) = 5;
      sub_264B09344();
      v103 = v166;
      v104 = v121;
      sub_264B418F4();
      if (v104)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v103, v131);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 5;
      break;
    case 6:
      LOBYTE(v187) = 6;
      sub_264B092F0();
      v109 = v121;
      sub_264B418F4();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v59, v133);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 6;
      break;
    case 7:
      LOBYTE(v187) = 7;
      sub_264B09248();
      v94 = v121;
      sub_264B418F4();
      if (v94)
      {
        goto LABEL_7;
      }

      sub_264B0B284();
      v95 = v135;
      sub_264B41984();
      v96 = v186;
      (*(v137 + 8))(v60, v95);
      (*(v96 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = v187;
      v69 = v188;
      break;
    case 8:
      LOBYTE(v187) = 8;
      sub_264B091F4();
      v114 = v167;
      v115 = v121;
      sub_264B418F4();
      if (v115)
      {
        goto LABEL_7;
      }

      (*(v136 + 8))(v114, v138);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 7;
      break;
    case 9:
      LOBYTE(v187) = 9;
      sub_264B091A0();
      v87 = v168;
      v88 = v121;
      sub_264B418F4();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v139 + 8))(v87, v140);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 8;
      break;
    case 10:
      LOBYTE(v187) = 10;
      sub_264B0914C();
      v112 = v169;
      v113 = v121;
      sub_264B418F4();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v141 + 8))(v112, v142);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 9;
      break;
    case 11:
      LOBYTE(v187) = 11;
      sub_264B090F8();
      v80 = v170;
      v81 = v121;
      sub_264B418F4();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v143 + 8))(v80, v144);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 10;
      break;
    case 12:
      LOBYTE(v187) = 12;
      sub_264B090A4();
      v84 = v172;
      v85 = v121;
      sub_264B418F4();
      if (v85)
      {
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A460, sub_264A72E50);
      v86 = v148;
      sub_264B41984();
      (*(v147 + 8))(v84, v86);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v68 = v187;
      v69 = 64;
      break;
    case 13:
      LOBYTE(v187) = 13;
      sub_264B09050();
      v107 = v171;
      v108 = v121;
      sub_264B418F4();
      if (v108)
      {
        goto LABEL_7;
      }

      (*(v145 + 8))(v107, v146);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 11;
      break;
    case 14:
      LOBYTE(v187) = 14;
      sub_264B08FFC();
      v78 = v173;
      v79 = v121;
      sub_264B418F4();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v149 + 8))(v78, v150);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 12;
      break;
    case 15:
      LOBYTE(v187) = 15;
      sub_264B08FA8();
      v91 = v174;
      v92 = v121;
      sub_264B418F4();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v91, v152);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 13;
      break;
    case 16:
      LOBYTE(v187) = 16;
      sub_264B08F54();
      v76 = v175;
      v77 = v121;
      sub_264B418F4();
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v153 + 8))(v76, v154);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 14;
      break;
    case 17:
      LOBYTE(v187) = 17;
      sub_264B08F00();
      v99 = v176;
      v100 = v121;
      sub_264B418F4();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v99, v156);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 15;
      break;
    case 18:
      LOBYTE(v187) = 18;
      sub_264B08EAC();
      v110 = v177;
      v111 = v121;
      sub_264B418F4();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v110, v158);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 16;
      break;
    case 19:
      LOBYTE(v187) = 19;
      sub_264B08E58();
      v116 = v178;
      v117 = v121;
      sub_264B418F4();
      if (v117)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v116, v160);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 17;
      break;
    case 20:
      LOBYTE(v187) = 20;
      sub_264B08E04();
      v101 = v179;
      v102 = v121;
      sub_264B418F4();
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v101, v162);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 18;
      break;
    case 21:
      LOBYTE(v187) = 21;
      sub_264B08DB0();
      v105 = v180;
      v106 = v121;
      sub_264B418F4();
      if (v106)
      {
        goto LABEL_7;
      }

      (*(v163 + 8))(v105, v62);
      (*(v186 + 8))(v54, v50);
      swift_unknownObjectRelease();
      v69 = 0x80;
      v68 = 19;
      break;
    default:
      goto LABEL_6;
  }

  v74 = v193;
  *v61 = v68;
  *(v61 + 8) = v69;
  return __swift_destroy_boxed_opaque_existential_0(v74);
}

unint64_t sub_264B0B284()
{
  result = qword_27FF8C778;
  if (!qword_27FF8C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C778);
  }

  return result;
}

uint64_t _s16ScreenSharingKit11ServerErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) != 0x40)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *a1;
      switch(v2)
      {
        case 1:
          if ((v5 & 0xC0) != 0x80 || v4 != 1)
          {
            goto LABEL_6;
          }

          break;
        case 2:
          if ((v5 & 0xC0) != 0x80 || v4 != 2)
          {
            goto LABEL_6;
          }

          break;
        case 3:
          if ((v5 & 0xC0) != 0x80 || v4 != 3)
          {
            goto LABEL_6;
          }

          break;
        case 4:
          if ((v5 & 0xC0) != 0x80 || v4 != 4)
          {
            goto LABEL_6;
          }

          break;
        case 5:
          if ((v5 & 0xC0) != 0x80 || v4 != 5)
          {
            goto LABEL_6;
          }

          break;
        case 6:
          if ((v5 & 0xC0) != 0x80 || v4 != 6)
          {
            goto LABEL_6;
          }

          break;
        case 7:
          if ((v5 & 0xC0) != 0x80 || v4 != 7)
          {
            goto LABEL_6;
          }

          break;
        case 8:
          if ((v5 & 0xC0) != 0x80 || v4 != 8)
          {
            goto LABEL_6;
          }

          break;
        case 9:
          if ((v5 & 0xC0) != 0x80 || v4 != 9)
          {
            goto LABEL_6;
          }

          break;
        case 10:
          if ((v5 & 0xC0) != 0x80 || v4 != 10)
          {
            goto LABEL_6;
          }

          break;
        case 11:
          if ((v5 & 0xC0) != 0x80 || v4 != 11)
          {
            goto LABEL_6;
          }

          break;
        case 12:
          if ((v5 & 0xC0) != 0x80 || v4 != 12)
          {
            goto LABEL_6;
          }

          break;
        case 13:
          if ((v5 & 0xC0) != 0x80 || v4 != 13)
          {
            goto LABEL_6;
          }

          break;
        case 14:
          if ((v5 & 0xC0) != 0x80 || v4 != 14)
          {
            goto LABEL_6;
          }

          break;
        case 15:
          if ((v5 & 0xC0) != 0x80 || v4 != 15)
          {
            goto LABEL_6;
          }

          break;
        case 16:
          if ((v5 & 0xC0) != 0x80 || v4 != 16)
          {
            goto LABEL_6;
          }

          break;
        case 17:
          if ((v5 & 0xC0) != 0x80 || v4 != 17)
          {
            goto LABEL_6;
          }

          break;
        case 18:
          if ((v5 & 0xC0) != 0x80 || v4 != 18)
          {
            goto LABEL_6;
          }

          break;
        case 19:
          if ((v5 & 0xC0) != 0x80 || v4 != 19)
          {
            goto LABEL_6;
          }

          break;
        default:
          if ((v5 & 0xC0) != 0x80 || v4 != 0)
          {
            goto LABEL_6;
          }

          break;
      }

      if (v5 != 128)
      {
        goto LABEL_6;
      }
    }

LABEL_128:
    v6 = 1;
    goto LABEL_129;
  }

  if (v5 < 0x40)
  {
    goto LABEL_128;
  }

LABEL_6:
  v6 = 0;
LABEL_129:
  sub_2649E1260(*a1, v3);
  sub_2649E1260(v4, v5);
  sub_2649E12A4(v2, v3);
  sub_2649E12A4(v4, v5);
  return v6;
}

uint64_t sub_264B0B5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264B0B60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_264B0B670(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}