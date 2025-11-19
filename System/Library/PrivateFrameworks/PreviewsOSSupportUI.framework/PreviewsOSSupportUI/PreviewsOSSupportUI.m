Swift::Void __swiftcall PreviewDebugOverlay.contentsUpdated()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_messageCount);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_messageCount) = v3;
    sub_25F51117C();
  }
}

void sub_25F51117C()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95710, &qword_25F52B390);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25F52B180;
    v3 = (v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size);
    swift_beginAccess();
    v4 = *v3;
    v5 = MEMORY[0x277D85048];
    *(v2 + 56) = MEMORY[0x277D85048];
    v6 = sub_25F513064();
    *(v2 + 64) = v6;
    *(v2 + 32) = v4;
    v7 = v3[1];
    *(v2 + 96) = v5;
    *(v2 + 104) = v6;
    *(v2 + 72) = v7;
    v8 = sub_25F52A470();
    v10 = v9;
    v11 = (v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier);
    swift_beginAccess();
    v32 = *v11;
    v35 = v11[1];
    v12 = sub_25F5130B8();
    v13 = MEMORY[0x277D837D0];
    sub_25F52A5B0();
    v36 = v14;
    v30 = v12;
    v31 = v12;
    v28 = v13;
    v29 = v12;
    v15 = sub_25F52A5B0();
    v17 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95728, &qword_25F52B398);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25F52B190;
    v33 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsSinceShown);
    *(v18 + 32) = sub_25F52A670();
    *(v18 + 40) = v19;
    v34 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_messageCount);
    *(v18 + 48) = sub_25F52A670();
    *(v18 + 56) = v20;
    *(v18 + 64) = v8;
    *(v18 + 72) = v10;
    *(v18 + 80) = v15;
    *(v18 + 88) = v17;
    v21 = sub_25F512054();
    v22 = *&v21[OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95730, &qword_25F52B3A0);
    sub_25F51310C();
    sub_25F52A430();

    v23 = sub_25F52A450();

    [v22 setText_];

    v24 = OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view;
    v25 = [*(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view) superview];
    if (v25)
    {
      v26 = *(v1 + v24);
      v27 = v25;
      [v25 bringSubviewToFront_];
    }
  }
}

uint64_t PreviewDebugOverlay.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25F511560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_25F5115B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;

  sub_25F51117C();
}

void PreviewDebugOverlay.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  sub_25F51117C();
}

uint64_t (*PreviewDebugOverlay.identifier.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25F5116F8;
}

double PreviewDebugOverlay.size.getter()
{
  v1 = v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

__n128 sub_25F511744@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_25F51179C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  sub_25F51117C();
}

void PreviewDebugOverlay.size.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  sub_25F51117C();
}

uint64_t (*PreviewDebugOverlay.size.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25F513288;
}

void sub_25F5118B8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_25F51117C();
  }
}

uint64_t PreviewDebugOverlay.enabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled))
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled);
  }
}

void sub_25F511928()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled;
  if ((*(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) & 1) == 0 && *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled) != 1)
  {
    goto LABEL_7;
  }

  v3 = sub_25F512054();
  v4 = [v3 superview];

  v5 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_parent);
  if (!v4 || (sub_25F512E34(0, &qword_27FD95700, 0x277D75D18), v6 = v5, v7 = sub_25F52A590(), v4, v6, (v7 & 1) == 0))
  {
    v12 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view);
    LOBYTE(v19[0]) = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_edge);
    v13 = v12;
    sub_25F51248C(v19, v5);

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19[4] = sub_25F512E14;
    v19[5] = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_25F512304;
    v19[3] = &block_descriptor;
    v16 = _Block_copy(v19);

    v17 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:1.0];
    _Block_release(v16);
    v18 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsTimer);
    *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsTimer) = v17;

    return;
  }

  if ((*(v1 + v2) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled) & 1) == 0)
  {
LABEL_7:
    v8 = sub_25F512054();
    [v8 removeFromSuperview];

    v9 = OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsTimer;
    v10 = *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsTimer);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(v1 + v9);
    }

    else
    {
      v11 = 0;
    }

    *(v1 + v9) = 0;

    *(v1 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsSinceShown) = 0;
  }
}

void PreviewDebugOverlay.settings(_:changedValueForKey:)()
{
  v1 = [objc_opt_self() rootSettings];
  v2 = [v1 showDebugUI];

  *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) = v2;

  sub_25F511928();
}

uint64_t PreviewDebugOverlay.AlignmentEdge.hashValue.getter()
{
  v1 = *v0;
  sub_25F52A6B0();
  MEMORY[0x25F8DFE70](v1);
  return sub_25F52A6D0();
}

uint64_t sub_25F511D40()
{
  v1 = *v0;
  sub_25F52A6B0();
  MEMORY[0x25F8DFE70](v1);
  return sub_25F52A6D0();
}

uint64_t sub_25F511DB4()
{
  v1 = *v0;
  sub_25F52A6B0();
  MEMORY[0x25F8DFE70](v1);
  return sub_25F52A6D0();
}

_BYTE *PreviewDebugOverlay.init(edge:parent:)(char *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_messageCount] = 0;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsSinceShown] = 0;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsTimer] = 0;
  v7 = &v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_identifier];
  *v7 = 17481;
  v7[1] = 0xE200000000000000;
  v8 = &v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_size];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled] = 0;
  v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled] = 0;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view] = 0;
  v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_edge] = v6;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_parent] = a2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 rootSettings];
  [v13 addKeyObserver_];

  v14 = [v11 rootSettings];
  LOBYTE(v13) = [v14 showDebugUI];

  v12[OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled] = v13;
  sub_25F511928();

  return v12;
}

Swift::Void __swiftcall PreviewDebugOverlay.bringToFront()()
{
  if ((*(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_settingsEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_forceEnabled) == 1)
  {
    sub_25F511928();
    v1 = *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_parent);
    v2 = sub_25F512054();
    [v1 bringSubviewToFront_];
  }
}

id sub_25F512054()
{
  v1 = OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view;
  v2 = *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay____lazy_storage___view);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PreviewDebugOverlay.OverlayView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_25F5120C8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_25F52A550();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_25F526DF8(0, 0, v2, &unk_25F52B388, v6);
  }

  return result;
}

uint64_t sub_25F5121E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_25F52A530();
  *(v4 + 24) = sub_25F52A520();
  v6 = sub_25F52A500();

  return MEMORY[0x2822009F8](sub_25F512280, v6, v5);
}

uint64_t sub_25F512280()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *(v2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsSinceShown);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[2];
    *(v2 + OBJC_IVAR____TtC19PreviewsOSSupportUI19PreviewDebugOverlay_secondsSinceShown) = v6;
    sub_25F51117C();
    v8 = v0[1];

    return v8();
  }

  return result;
}

void sub_25F512304(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25F51248C(char *a1, id a2)
{
  v4 = *a1;
  [a2 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD956F0, &unk_25F52B370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25F52B1A0;
  v6 = [v2 leadingAnchor];
  v7 = [a2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v21 = v5;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v4)
  {
    v13 = [v12 initWithRed:0.49 green:0.75 blue:0.96 alpha:1.0];
    [v2 setBackgroundColor_];

    v14 = [v2 bottomAnchor];
    v15 = [a2 bottomAnchor];
  }

  else
  {
    v16 = [v12 initWithRed:0.84 green:0.51 blue:0.3 alpha:1.0];
    [v2 setBackgroundColor_];

    v14 = [v2 topAnchor];
    v15 = [a2 topAnchor];
  }

  v17 = [v14 constraintEqualToAnchor_];

  MEMORY[0x25F8DFC70]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25F52A4E0();
  }

  sub_25F52A4F0();
  v18 = objc_opt_self();
  sub_25F512E34(0, &qword_27FD956F8, 0x277CCAAD0);
  v20 = sub_25F52A4D0();

  [v18 activateConstraints_];
}

id sub_25F512914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewDebugOverlay.OverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PreviewDebugOverlay.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreviewDebugOverlay.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25F512AA8()
{
  result = qword_27FD95658;
  if (!qword_27FD95658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewDebugOverlay.AlignmentEdge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewDebugOverlay.AlignmentEdge(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F512D08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F512D28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_25F512D78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25F512DDC()
{
  MEMORY[0x25F8E04B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F512E34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F512E7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F512EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F512F70;

  return sub_25F5121E8(a1, v4, v5, v6);
}

uint64_t sub_25F512F70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25F513064()
{
  result = qword_27FD95718;
  if (!qword_27FD95718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95718);
  }

  return result;
}

unint64_t sub_25F5130B8()
{
  result = qword_27FD95720;
  if (!qword_27FD95720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95720);
  }

  return result;
}

unint64_t sub_25F51310C()
{
  result = qword_27FD95738;
  if (!qword_27FD95738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD95730, &qword_25F52B3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95738);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25F5131CC(uint64_t a1, int a2)
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

uint64_t sub_25F5131EC(uint64_t result, int a2, int a3)
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

void sub_25F513238(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t EntryPointCategory.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static EntryPointCategory.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F52A690();
  }
}

uint64_t EntryPointCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F52A490();
}

uint64_t EntryPointCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

void *sub_25F513348@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25F513354()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F5133A0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F52A490();
}

uint64_t sub_25F5133A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F5133F0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F513420(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F52A690();
  }
}

void static EntryPointCategory.cFunction.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "uv.cFunction");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_25F5137D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t AgentUpdate.Context.init(contentIdentifier:updateSeed:setupPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AgentUpdate.Context(0);
  v9 = *(v8 + 20);
  v10 = sub_25F52A100();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = sub_25F52A130();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = sub_25F52A120();
  (*(*(v13 - 8) + 32))(a4, a1, v13);
  sub_25F5137D8(a2, a4 + v9, &qword_27FD957B0, &qword_25F52B3E0);
  return sub_25F5137D8(a3, a4 + v11, &qword_27FD957B8, &qword_25F52B3E8);
}

uint64_t AgentUpdate.entryPointCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AgentUpdate.entryPointFrameworkPath.getter()
{
  v1 = (v0 + *(type metadata accessor for AgentUpdate(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AgentUpdate.mangledFactoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AgentUpdate(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AgentUpdate.mangledFactoryName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AgentUpdate(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AgentUpdate.init(entryPointCategory:entryPointPayload:entryPointFrameworkPath:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = type metadata accessor for AgentUpdate(0);
  v14 = &a6[v13[8]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *a6 = v11;
  *(a6 + 1) = v12;
  v15 = v13[5];
  v16 = sub_25F52A1B0();
  (*(*(v16 - 8) + 32))(&a6[v15], a2, v16);
  v17 = &a6[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  return sub_25F515788(a5, &a6[v13[7]], type metadata accessor for AgentUpdate.Context);
}

uint64_t AgentUpdate.init(entryPointType:entryPointPayload:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = type metadata accessor for AgentUpdate(0);
  v12 = &a4[v11[8]];
  *a4 = 0x79726F74636166;
  *(a4 + 1) = 0xE700000000000000;
  v13 = &a4[v11[6]];
  *v13 = v9;
  *(v13 + 1) = v10;
  *v12 = v7;
  *(v12 + 1) = v8;
  v14 = v11[5];
  v15 = sub_25F52A1B0();
  (*(*(v15 - 8) + 32))(&a4[v14], a2, v15);
  return sub_25F515788(a3, &a4[v11[7]], type metadata accessor for AgentUpdate.Context);
}

uint64_t AgentUpdate.init(contentIdentifier:entryPointType:entryPointPayload:setupPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v41 = a4;
  v49 = a3;
  v46 = a1;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B8, &qword_25F52B3E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v39 - v11;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B0, &qword_25F52B3E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v39 - v14;
  v42 = &v39 - v14;
  v16 = *a2;
  v53 = a2[1];
  v54 = v16;
  v17 = a2[2];
  v51 = a2[3];
  v52 = v17;
  v18 = type metadata accessor for AgentUpdate(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v44 = v18;
  v48 = sub_25F52A1B0();
  v50 = *(v48 - 8);
  v21 = *(v50 + 16);
  v43 = a5;
  v21(a5 + v19, a3, v48);
  v22 = a5 + *(v20 + 28);
  v45 = sub_25F52A120();
  v47 = *(v45 - 8);
  (*(v47 + 16))(v22, a1, v45);
  v23 = sub_25F52A100();
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 1, 1, v23);
  v25 = sub_25F52A130();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v40 = v12;
  v27(v12, a4, v25);
  v28 = *(v26 + 56);
  v28(v12, 0, 1, v25);
  v29 = type metadata accessor for AgentUpdate.Context(0);
  v30 = *(v29 + 20);
  v24((v22 + v30), 1, 1, v23);
  v31 = *(v29 + 24);
  v28((v22 + v31), 1, 1, v25);
  sub_25F5137D8(v42, v22 + v30, &qword_27FD957B0, &qword_25F52B3E0);
  sub_25F5137D8(v40, v22 + v31, &qword_27FD957B8, &qword_25F52B3E8);
  v33 = v43;
  v32 = v44;
  v34 = (v43 + *(v44 + 32));
  (*(v26 + 8))(v41, v25);
  (*(v50 + 8))(v49, v48);
  result = (*(v47 + 8))(v46, v45);
  *v33 = 0x79726F74636166;
  v33[1] = 0xE700000000000000;
  v36 = (v33 + *(v32 + 24));
  v37 = v51;
  *v36 = v52;
  v36[1] = v37;
  v38 = v53;
  *v34 = v54;
  v34[1] = v38;
  return result;
}

uint64_t AgentUpdate.contentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AgentUpdate(0) + 28);
  v4 = sub_25F52A120();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SceneAgentConnectionContext.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsOSSupportUI::PreviewSceneRole_optional __swiftcall PreviewSceneRole.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F52A660();

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

uint64_t PreviewSceneRole.rawValue.getter()
{
  if (*v0)
  {
    return 0x636974617473;
  }

  else
  {
    return 0x646574736F68;
  }
}

uint64_t sub_25F514258(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x636974617473;
  }

  else
  {
    v2 = 0x646574736F68;
  }

  if (*a2)
  {
    v3 = 0x636974617473;
  }

  else
  {
    v3 = 0x646574736F68;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F52A690();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F5142D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656B616873646ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x6148657461647075;
    }

    if (v3)
    {
      v5 = 0x800000025F52D480;
    }

    else
    {
      v5 = 0xEF656B616873646ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x800000025F52D4A0;
    v4 = 0xD000000000000010;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x5A74736575716572;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 3)
    {
      v5 = 0xEB000000006D6F6FLL;
    }

    else
    {
      v5 = 0x800000025F52D4C0;
    }
  }

  if (a2 <= 1u)
  {
    v7 = 0x800000025F52D480;
    v8 = a2 == 0;
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x6148657461647075;
    }
  }

  else
  {
    v2 = 0x800000025F52D4A0;
    v6 = 0x5A74736575716572;
    v7 = 0x800000025F52D4C0;
    if (a2 == 3)
    {
      v7 = 0xEB000000006D6F6FLL;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    v8 = a2 == 2;
    if (a2 == 2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F514468(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v2)
    {
      v3 = 0x800000025F52D350;
    }

    else
    {
      v3 = 0x800000025F52D330;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000025F52D370;
    v4 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x747865746E6F63;
  }

  else
  {
    v3 = 0x800000025F52D390;
    v4 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = 0x800000025F52D350;
    }

    else
    {
      v6 = 0x800000025F52D330;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000025F52D370;
    if (v4 != 0xD000000000000017)
    {
LABEL_34:
      v8 = sub_25F52A690();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x747865746E6F63;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000025F52D390;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_25F514600()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F514670()
{
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F5146C4()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

void sub_25F51473C(uint64_t *a1@<X8>)
{
  v2 = 0x646574736F68;
  if (*v1)
  {
    v2 = 0x636974617473;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_25F51476C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51F2FC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F514848@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_25F5148D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_25F514988@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SceneUpdateContext.timing.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SceneUpdateContext(0) + 20);
  v4 = sub_25F52A060();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SceneUpdateContext.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SceneUpdateContext(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SceneUpdateContext.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SceneUpdateContext(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SceneUpdateContext.init(seed:timing:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_25F52A050();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  updated = type metadata accessor for SceneUpdateContext(0);
  v10 = *(updated + 20);
  v11 = sub_25F52A060();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(updated + 24)) = v7;
  return result;
}

uint64_t sub_25F514C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5168E4(&qword_27FD95AD0, MEMORY[0x277D41028]);
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F514D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5168E4(&qword_27FD95AC8, MEMORY[0x277D40FF8]);
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F514E20(uint64_t *a1)
{
  v2 = *a1;
  sub_25F5168E4(&qword_27FD95AC8, MEMORY[0x277D40FF8]);
  return sub_25F52A260();
}

uint64_t sub_25F514F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51EE98();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F515028(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657461647075;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x657461647075;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F52A690();
  }

  return v9 & 1;
}

uint64_t sub_25F5150D4()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51515C()
{
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F5151D0()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

void sub_25F515260(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F5152A4()
{
  if (*v0)
  {
    result = 0x657461647075;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t ShellToPreviewNonUIAgent.TwoWayMessage.propertyListValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957C0, &qword_25F52B3F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v14[-v2];
  v4 = type metadata accessor for AgentUpdate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*(type metadata accessor for ShellToPreviewNonUIAgent.TwoWayMessage(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v0;
  v12 = sub_25F515678();
  sub_25F5156CC();
  sub_25F52A1A0();
  sub_25F515720(v0, v11, type metadata accessor for ShellToPreviewNonUIAgent.TwoWayMessage);
  sub_25F515788(v11, v8, type metadata accessor for AgentUpdate);
  sub_25F515720(v8, v3, type metadata accessor for AgentUpdate);
  (*(v5 + 56))(v3, 0, 1, v4);
  v16[3] = &type metadata for ShellToPreviewNonUIAgent.TwoWayMessage.Key;
  v16[4] = v12;
  LOBYTE(v16[0]) = 1;
  sub_25F5168E4(&qword_27FD957D8, type metadata accessor for AgentUpdate);
  sub_25F52A140();
  sub_25F51F3B8(v3, &qword_27FD957C0, &qword_25F52B3F0);
  sub_25F516884(v8, type metadata accessor for AgentUpdate);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_25F5155B4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ShellToPreviewNonUIAgent.TwoWayMessage(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F515720(a3, v8, type metadata accessor for ShellToPreviewNonUIAgent.TwoWayMessage);
  result = sub_25F516884(v8, type metadata accessor for AgentUpdate);
  *a2 = 0;
  return result;
}

unint64_t sub_25F515678()
{
  result = qword_27FD957C8;
  if (!qword_27FD957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD957C8);
  }

  return result;
}

unint64_t sub_25F5156CC()
{
  result = qword_27FD957D0;
  if (!qword_27FD957D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD957D0);
  }

  return result;
}

uint64_t sub_25F515720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F515788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t ShellToPreviewNonUIAgent.TwoWayMessage.init(propertyListValue:)(uint64_t a1)
{
  v7 = &type metadata for ShellToPreviewNonUIAgent.TwoWayMessage.Key;
  v3 = sub_25F515678();
  v8 = v3;
  LOBYTE(v6[0]) = 0;
  sub_25F5156CC();
  sub_25F52A150();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    v7 = &type metadata for ShellToPreviewNonUIAgent.TwoWayMessage.Key;
    v8 = v3;
    LOBYTE(v6[0]) = 1;
    type metadata accessor for AgentUpdate(0);
    sub_25F5168E4(&qword_27FD957D8, type metadata accessor for AgentUpdate);
    sub_25F52A150();
  }

  v4 = sub_25F52A1B0();
  (*(*(v4 - 8) + 8))(a1, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_25F515998()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F515A88()
{
  *v0;
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F515B64()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F515C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F090();
  *a2 = result;
  return result;
}

void sub_25F515C80(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000025F52D390;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000025F52D370;
  }

  v5 = 0xD000000000000012;
  v6 = 0x800000025F52D330;
  if (*v1)
  {
    v5 = 0xD000000000000011;
    v6 = 0x800000025F52D350;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F515D2C()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  if (v1 != 3)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F515E20(uint64_t *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B18, &qword_25F52CBB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v53 = &v47 - v3;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95828, &qword_25F52B408) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v54 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B20, &qword_25F52CBC0);
  v7 = *(v6 - 8);
  v49 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B28, &qword_25F52CBC8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = a1[1];
  v48 = *a1;
  v55 = v21;
  v22 = *(v14 + 56);
  *(&v47 - v19) = 1;
  v23 = type metadata accessor for AgentUpdate(0);
  v24 = v23[5];
  v25 = sub_25F52A1B0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v28 = &v20[v22];
  v29 = v20;
  v52 = v20;
  v27(v28, a1 + v24, v25);
  v30 = v23[7];
  v31 = (a1 + v23[6]);
  v32 = v31[1];
  v47 = *v31;
  v33 = v49;
  v34 = *(v49 + 56);
  *v12 = 3;
  sub_25F515720(a1 + v30, &v12[v34], type metadata accessor for AgentUpdate.Context);
  v35 = (a1 + v23[8]);
  v36 = *v35;
  v37 = v35[1];
  v66 = 0;
  v64 = v48;
  v65 = v55;
  sub_25F51F350(v29, v18, &qword_27FD95B28, &qword_25F52CBC8);
  LOBYTE(v29) = *v18;
  v38 = *(v26 + 32);
  v39 = &v18[*(v14 + 56)];
  v40 = v54;
  v50 = v25;
  v38(v54, v39, v25);
  (*(v26 + 56))(v40, 0, 1, v25);
  v63 = v29;
  v62 = 2;
  v60 = v47;
  v61 = v32;
  v41 = v51;
  sub_25F51F350(v12, v51, &qword_27FD95B20, &qword_25F52CBC0);
  LOBYTE(v32) = *v41;
  v42 = v53;
  sub_25F515788(&v41[*(v33 + 56)], v53, type metadata accessor for AgentUpdate.Context);
  v43 = type metadata accessor for AgentUpdate.Context(0);
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v59 = v32;
  v58 = 4;
  v56 = v36;
  v57 = v37;
  sub_25F5167DC();
  sub_25F516830();
  sub_25F5168E4(&qword_27FD957F0, type metadata accessor for AgentUpdate.Context);

  v44 = v54;
  v45 = sub_25F52A200();
  sub_25F51F3B8(v42, &qword_27FD95B18, &qword_25F52CBB8);

  sub_25F51F3B8(v44, &qword_27FD95828, &qword_25F52B408);

  sub_25F51F3B8(v12, &qword_27FD95B20, &qword_25F52CBC0);
  sub_25F51F3B8(v52, &qword_27FD95B28, &qword_25F52CBC8);
  return v45;
}

uint64_t AgentUpdate.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for AgentUpdate.Context(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F52A1B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for AgentUpdate.Key;
  v14 = sub_25F5167DC();
  v22 = v14;
  LOBYTE(v20[0]) = 0;
  sub_25F516830();
  sub_25F52A150();
  if (v2)
  {
    (*(v10 + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v16 = *(&v23 + 1);
    *a2 = v23;
    *(a2 + 1) = v16;
    v21 = &type metadata for AgentUpdate.Key;
    v22 = v14;
    LOBYTE(v20[0]) = 1;
    sub_25F52A150();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v24 = type metadata accessor for AgentUpdate(0);
    (*(v10 + 32))(&a2[v24[5]], v13, v9);
    v21 = &type metadata for AgentUpdate.Key;
    v22 = v14;
    LOBYTE(v20[0]) = 2;
    sub_25F52A180();
    __swift_destroy_boxed_opaque_existential_1(v20);
    *&a2[v24[6]] = v23;
    v21 = &type metadata for AgentUpdate.Key;
    v22 = v14;
    LOBYTE(v20[0]) = 3;
    sub_25F5168E4(&qword_27FD957F0, type metadata accessor for AgentUpdate.Context);
    sub_25F52A150();
    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_25F515788(v8, &a2[v24[7]], type metadata accessor for AgentUpdate.Context);
    v21 = &type metadata for AgentUpdate.Key;
    v22 = v14;
    LOBYTE(v20[0]) = 4;
    sub_25F52A180();
    v17 = a2;
    v18 = v24[8];
    (*(v10 + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *(v17 + v18) = v23;
  }

  return result;
}

unint64_t sub_25F5167DC()
{
  result = qword_27FD957E0;
  if (!qword_27FD957E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD957E0);
  }

  return result;
}

unint64_t sub_25F516830()
{
  result = qword_27FD957E8;
  if (!qword_27FD957E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD957E8);
  }

  return result;
}

uint64_t sub_25F516884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5168E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25F5169EC(uint64_t a1@<X8>)
{
  strcpy(a1, "cancelUpdate");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_25F516A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51EEEC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F516AD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x800000025F52D3B0;
  if (v2 == 1)
  {
    v5 = 0x800000025F52D3B0;
  }

  else
  {
    v3 = 0x6553657461647075;
    v5 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F516BDC()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F516C90()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F516D30()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F516DE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F0DC();
  *a2 = result;
  return result;
}

void sub_25F516E10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F52D3B0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F516E80()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ShellToPreviewNonUIAgent.OneWayMessage.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B0, &qword_25F52B3E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957F8, &qword_25F52B3F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_25F52A100();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F52A120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShellToPreviewNonUIAgent.OneWayMessage(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v21 = sub_25F5174D4();
  sub_25F517528();
  sub_25F52A1A0();
  sub_25F515720(v0, v20, type metadata accessor for ShellToPreviewNonUIAgent.OneWayMessage);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95810, &qword_25F52B400) + 48);
  (*(v13 + 32))(v16, v20, v12);
  v23 = &v20[v22];
  v24 = v27;
  (*(v9 + 32))(v27, v23, v8);
  (*(v13 + 16))(v7, v16, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v31 = &type metadata for ShellToPreviewNonUIAgent.OneWayMessage.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 1;
  sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
  sub_25F52A140();
  sub_25F51F3B8(v7, &qword_27FD957F8, &qword_25F52B3F8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v25 = v28;
  (*(v9 + 16))(v28, v24, v8);
  (*(v9 + 56))(v25, 0, 1, v8);
  v31 = &type metadata for ShellToPreviewNonUIAgent.OneWayMessage.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 2;
  sub_25F5168E4(&qword_27FD95820, MEMORY[0x277D40810]);
  sub_25F52A140();
  sub_25F51F3B8(v25, &qword_27FD957B0, &qword_25F52B3E0);
  (*(v9 + 8))(v24, v8);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_25F5173A4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for ShellToPreviewNonUIAgent.OneWayMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F515720(a3, v9, type metadata accessor for ShellToPreviewNonUIAgent.OneWayMessage);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95810, &qword_25F52B400) + 48);
  v11 = sub_25F52A100();
  (*(*(v11 - 8) + 8))(&v9[v10], v11);
  v12 = sub_25F52A120();
  result = (*(*(v12 - 8) + 8))(v9, v12);
  *a2 = 0;
  return result;
}

unint64_t sub_25F5174D4()
{
  result = qword_27FD95800;
  if (!qword_27FD95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95800);
  }

  return result;
}

unint64_t sub_25F517528()
{
  result = qword_27FD95808;
  if (!qword_27FD95808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95808);
  }

  return result;
}

uint64_t ShellToPreviewNonUIAgent.OneWayMessage.init(propertyListValue:)(uint64_t a1)
{
  v8 = &type metadata for ShellToPreviewNonUIAgent.OneWayMessage.Key;
  v3 = sub_25F5174D4();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F517528();
  sub_25F52A150();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &type metadata for ShellToPreviewNonUIAgent.OneWayMessage.Key;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F52A120();
    sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
    sub_25F52A150();
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95810, &qword_25F52B400) + 48);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &type metadata for ShellToPreviewNonUIAgent.OneWayMessage.Key;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F52A100();
    sub_25F5168E4(&qword_27FD95820, MEMORY[0x277D40810]);
    sub_25F52A150();
  }

  v4 = sub_25F52A1B0();
  (*(*(v4 - 8) + 8))(a1, v4);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_25F517828(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51EF40();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F5178FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F128();
  *a2 = result;
  return result;
}

void sub_25F51792C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEA00000000007265;
  v5 = 0x696669746E656469;
  if (v2 != 1)
  {
    v5 = 0x72656469766F7270;
    v4 = 0xEF747865746E6F43;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F5179A4()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x72656469766F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ShellToPreviewNonUIAgent.XPCEndpointContext.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95828, &qword_25F52B408);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957F8, &qword_25F52B3F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_25F52A1B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F52A120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShellToPreviewNonUIAgent.XPCEndpointContext(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v21 = sub_25F518008();
  sub_25F51805C();
  sub_25F52A1A0();
  sub_25F515720(v0, v20, type metadata accessor for ShellToPreviewNonUIAgent.XPCEndpointContext);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95840, &qword_25F52B410) + 48);
  (*(v13 + 32))(v16, v20, v12);
  v23 = &v20[v22];
  v24 = v27;
  (*(v9 + 32))(v27, v23, v8);
  (*(v13 + 16))(v7, v16, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v31 = &type metadata for ShellToPreviewNonUIAgent.XPCEndpointContext.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 1;
  sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
  sub_25F52A140();
  sub_25F51F3B8(v7, &qword_27FD957F8, &qword_25F52B3F8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v25 = v28;
  (*(v9 + 16))(v28, v24, v8);
  (*(v9 + 56))(v25, 0, 1, v8);
  v31 = &type metadata for ShellToPreviewNonUIAgent.XPCEndpointContext.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 2;
  sub_25F52A140();
  sub_25F51F3B8(v25, &qword_27FD95828, &qword_25F52B408);
  (*(v9 + 8))(v24, v8);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_25F517EA0(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  *a1 = 0;
  sub_25F515720(a3, &v17 - v11, a5);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95840, &qword_25F52B410) + 48);
  v14 = sub_25F52A1B0();
  (*(*(v14 - 8) + 8))(&v12[v13], v14);
  v15 = sub_25F52A120();
  result = (*(*(v15 - 8) + 8))(v12, v15);
  *a2 = 0;
  return result;
}

unint64_t sub_25F518008()
{
  result = qword_27FD95830;
  if (!qword_27FD95830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95830);
  }

  return result;
}

unint64_t sub_25F51805C()
{
  result = qword_27FD95838;
  if (!qword_27FD95838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95838);
  }

  return result;
}

uint64_t sub_25F51811C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x556D726F66726570;
  }

  if (v3)
  {
    v5 = 0xED00006574616470;
  }

  else
  {
    v5 = 0x800000025F52D400;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x556D726F66726570;
  }

  if (*a2)
  {
    v7 = 0x800000025F52D400;
  }

  else
  {
    v7 = 0xED00006574616470;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F52A690();
  }

  return v9 & 1;
}

uint64_t sub_25F5181D4()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F518268()
{
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F5182E8()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F518384@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F52A660();

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

void sub_25F5183E0(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F52D400;
  v3 = 0x556D726F66726570;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006574616470;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F518430(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51EF94();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F5184F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657461647075;
  if (v2 != 1)
  {
    v4 = 0x6E6F43656E656373;
    v3 = 0xEC00000074786574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (*a2 != 1)
  {
    v8 = 0x6E6F43656E656373;
    v7 = 0xEC00000074786574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F518604()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F5186B4()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F518750()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F5187FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F174();
  *a2 = result;
  return result;
}

void sub_25F51882C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (v2 != 1)
  {
    v5 = 0x6E6F43656E656373;
    v4 = 0xEC00000074786574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F518898()
{
  v1 = 0x657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6E6F43656E656373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ShellToPreviewSceneAgent.TwoWayMessage.propertyListValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95848, &qword_25F52B418);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957C0, &qword_25F52B3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  updated = type metadata accessor for SceneUpdateContext(0);
  v30 = *(updated - 8);
  v31 = updated;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](updated);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AgentUpdate(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v25 = sub_25F518F2C();
  sub_25F518F80();
  v32 = a1;
  sub_25F52A1A0();
  sub_25F515720(v2, v24, type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
  result = (*(*(v26 - 8) + 48))(v24, 1, v26);
  if (result != 1)
  {
    v28 = *(v26 + 48);
    sub_25F515788(v24, v20, type metadata accessor for AgentUpdate);
    sub_25F515788(&v24[v28], v15, type metadata accessor for SceneUpdateContext);
    sub_25F515720(v20, v11, type metadata accessor for AgentUpdate);
    (*(v17 + 56))(v11, 0, 1, v16);
    v35 = &type metadata for ShellToPreviewSceneAgent.TwoWayMessage.Key;
    v36 = v25;
    LOBYTE(v34[0]) = 1;
    sub_25F5168E4(&qword_27FD957D8, type metadata accessor for AgentUpdate);
    sub_25F52A140();
    sub_25F51F3B8(v11, &qword_27FD957C0, &qword_25F52B3F0);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_25F515720(v15, v7, type metadata accessor for SceneUpdateContext);
    (*(v30 + 56))(v7, 0, 1, v31);
    v35 = &type metadata for ShellToPreviewSceneAgent.TwoWayMessage.Key;
    v36 = v25;
    LOBYTE(v34[0]) = 2;
    sub_25F5168E4(&qword_27FD95868, type metadata accessor for SceneUpdateContext);
    sub_25F52A140();
    sub_25F51F3B8(v7, &qword_27FD95848, &qword_25F52B418);
    sub_25F516884(v15, type metadata accessor for SceneUpdateContext);
    sub_25F516884(v20, type metadata accessor for AgentUpdate);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return result;
}

uint64_t sub_25F518DE8(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F515720(a3, v9, type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = result;
  if (result != 1)
  {
    sub_25F516884(&v9[*(v10 + 48)], type metadata accessor for SceneUpdateContext);
    result = sub_25F516884(v9, type metadata accessor for AgentUpdate);
  }

  *a2 = v12 == 1;
  return result;
}

unint64_t sub_25F518F2C()
{
  result = qword_27FD95850;
  if (!qword_27FD95850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95850);
  }

  return result;
}

unint64_t sub_25F518F80()
{
  result = qword_27FD95858;
  if (!qword_27FD95858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95858);
  }

  return result;
}

uint64_t ShellToPreviewSceneAgent.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &type metadata for ShellToPreviewSceneAgent.TwoWayMessage.Key;
  v9 = sub_25F518F2C();
  v19 = v9;
  LOBYTE(v17[0]) = 0;
  sub_25F518F80();
  sub_25F52A150();
  if (v2)
  {
    v10 = sub_25F52A1B0();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v20)
    {
      v12 = sub_25F52A1B0();
      (*(*(v12 - 8) + 8))(a1, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    else
    {
      v18 = &type metadata for ShellToPreviewSceneAgent.TwoWayMessage.Key;
      v19 = v9;
      LOBYTE(v17[0]) = 1;
      type metadata accessor for AgentUpdate(0);
      sub_25F5168E4(&qword_27FD957D8, type metadata accessor for AgentUpdate);
      sub_25F52A150();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
      v15 = *(v14 + 48);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = &type metadata for ShellToPreviewSceneAgent.TwoWayMessage.Key;
      v19 = v9;
      LOBYTE(v17[0]) = 2;
      type metadata accessor for SceneUpdateContext(0);
      sub_25F5168E4(&qword_27FD95868, type metadata accessor for SceneUpdateContext);
      sub_25F52A150();
      v16 = sub_25F52A1B0();
      (*(*(v16 - 8) + 8))(a1, v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
      return sub_25F515788(v8, a2, type metadata accessor for ShellToPreviewSceneAgent.TwoWayMessage);
    }
  }
}

uint64_t sub_25F519390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x676E696D6974;
  if (v2 != 1)
  {
    v4 = 1701605234;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684366707;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E696D6974;
  if (*a2 != 1)
  {
    v8 = 1701605234;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684366707;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F519474()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F519504()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F519580()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51960C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F1C0();
  *a2 = result;
  return result;
}

void sub_25F51963C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E696D6974;
  if (v2 != 1)
  {
    v5 = 1701605234;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684366707;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F519688()
{
  v1 = 0x676E696D6974;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684366707;
  }
}

uint64_t sub_25F51971C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95AF8, &qword_25F52CB98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B00, &qword_25F52CBA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B08, &qword_25F52CBA8);
  v9 = *(*(v8 - 8) + 64);
  v10 = v8 - 8;
  v46 = v8 - 8;
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B10, &qword_25F52CBB0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = *(v16 + 56);
  *(&v44 - v21) = 0;
  v23 = &v44 - v21;
  v44 = &v44 - v21;
  v45 = sub_25F52A050();
  v24 = *(v45 - 8);
  (*(v24 + 16))(&v23[v22], a1, v45);
  v25 = *(v10 + 56);
  v26 = v14;
  *v14 = 1;
  updated = type metadata accessor for SceneUpdateContext(0);
  v28 = *(updated + 20);
  v29 = sub_25F52A060();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v32 = &v14[v25];
  v47 = v14;
  v33 = a1;
  v34 = a1 + v28;
  v35 = v29;
  v31(v32, v34);
  v55 = *(v33 + *(updated + 24));
  v36 = v44;
  sub_25F51F350(v44, v20, &qword_27FD95B10, &qword_25F52CBB0);
  LOBYTE(v33) = *v20;
  v37 = &v20[*(v16 + 56)];
  v38 = v49;
  v39 = v45;
  (*(v24 + 32))(v49, v37, v45);
  (*(v24 + 56))(v38, 0, 1, v39);
  v54 = v33;
  v40 = v48;
  sub_25F51F350(v26, v48, &qword_27FD95B08, &qword_25F52CBA8);
  LOBYTE(v33) = *v40;
  v41 = v50;
  (*(v30 + 32))(v50, &v40[*(v46 + 56)], v35);
  (*(v30 + 56))(v41, 0, 1, v35);
  v53 = v33;
  v52 = 2;
  v51 = v55;
  sub_25F51A02C();
  sub_25F5168E4(&qword_27FD95878, MEMORY[0x277D40FF8]);
  sub_25F5168E4(&qword_27FD95880, MEMORY[0x277D41028]);
  sub_25F51A080();
  v42 = sub_25F52A210();
  sub_25F51F3B8(v41, &qword_27FD95AF8, &qword_25F52CB98);
  sub_25F51F3B8(v38, &qword_27FD95B00, &qword_25F52CBA0);
  sub_25F51F3B8(v47, &qword_27FD95B08, &qword_25F52CBA8);
  sub_25F51F3B8(v36, &qword_27FD95B10, &qword_25F52CBB0);
  return v42;
}

uint64_t SceneUpdateContext.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_25F52A060();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F52A050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &type metadata for SceneUpdateContext.Key;
  v14 = sub_25F51A02C();
  v26 = v14;
  LOBYTE(v24[0]) = 0;
  sub_25F5168E4(&qword_27FD95878, MEMORY[0x277D40FF8]);
  sub_25F52A150();
  if (v2)
  {
    v15 = sub_25F52A1B0();
    (*(*(v15 - 8) + 8))(a1, v15);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v22 = v5;
    __swift_destroy_boxed_opaque_existential_1(v24);
    v21 = v10;
    v17 = v23;
    (*(v10 + 32))(v23, v13, v9);
    v25 = &type metadata for SceneUpdateContext.Key;
    v26 = v14;
    LOBYTE(v24[0]) = 1;
    sub_25F5168E4(&qword_27FD95880, MEMORY[0x277D41028]);
    sub_25F52A150();
    __swift_destroy_boxed_opaque_existential_1(v24);
    updated = type metadata accessor for SceneUpdateContext(0);
    (*(v22 + 32))(v17 + *(updated + 20), v8, v4);
    v25 = &type metadata for SceneUpdateContext.Key;
    v26 = v14;
    LOBYTE(v24[0]) = 2;
    sub_25F51A080();
    sub_25F52A150();
    v18 = sub_25F52A1B0();
    (*(*(v18 - 8) + 8))(a1, v18);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *(v17 + *(updated + 24)) = v27;
  }

  return result;
}

unint64_t sub_25F51A02C()
{
  result = qword_27FD95870;
  if (!qword_27FD95870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95870);
  }

  return result;
}

unint64_t sub_25F51A080()
{
  result = qword_27FD95888;
  if (!qword_27FD95888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95888);
  }

  return result;
}

uint64_t sub_25F51A128()
{
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F51A180()
{
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F51A1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51EFE8();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F51A2A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v3 = 0x72656469766F7270;
    v4 = 0xEF747865746E6F43;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (*a2 != 1)
  {
    v7 = 0x72656469766F7270;
    v8 = 0xEF747865746E6F43;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F51A3CC()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51A488()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F51A530()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51A5E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F20C();
  *a2 = result;
  return result;
}

uint64_t ShellToPreviewSceneAgent.XPCEndpointContext.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95828, &qword_25F52B408);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957F8, &qword_25F52B3F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_25F52A1B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F52A120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShellToPreviewSceneAgent.XPCEndpointContext(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v21 = sub_25F51AB1C();
  sub_25F51AB70();
  sub_25F52A1A0();
  sub_25F515720(v0, v20, type metadata accessor for ShellToPreviewSceneAgent.XPCEndpointContext);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95840, &qword_25F52B410) + 48);
  (*(v13 + 32))(v16, v20, v12);
  v23 = &v20[v22];
  v24 = v27;
  (*(v9 + 32))(v27, v23, v8);
  (*(v13 + 16))(v7, v16, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v31 = &type metadata for ShellToPreviewSceneAgent.XPCEndpointContext.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 1;
  sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
  sub_25F52A140();
  sub_25F51F3B8(v7, &qword_27FD957F8, &qword_25F52B3F8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v25 = v28;
  (*(v9 + 16))(v28, v24, v8);
  (*(v9 + 56))(v25, 0, 1, v8);
  v31 = &type metadata for ShellToPreviewSceneAgent.XPCEndpointContext.Key;
  v32 = v21;
  LOBYTE(v30[0]) = 2;
  sub_25F52A140();
  sub_25F51F3B8(v25, &qword_27FD95828, &qword_25F52B408);
  (*(v9 + 8))(v24, v8);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_25F51AAA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F51AB1C()
{
  result = qword_27FD95890;
  if (!qword_27FD95890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95890);
  }

  return result;
}

unint64_t sub_25F51AB70()
{
  result = qword_27FD95898;
  if (!qword_27FD95898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95898);
  }

  return result;
}

uint64_t sub_25F51AC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v14 = a2;
  v8 = a3();
  v15 = v8;
  LOBYTE(v13[0]) = 0;
  a4();
  sub_25F52A150();
  if (v4)
  {
    v9 = sub_25F52A1B0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = a2;
    v15 = v8;
    LOBYTE(v13[0]) = 1;
    sub_25F52A120();
    sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
    sub_25F52A150();
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95840, &qword_25F52B410) + 48);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = a2;
    v15 = v8;
    LOBYTE(v13[0]) = 2;
    v12 = sub_25F52A1B0();
    sub_25F52A150();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_25F51AF20()
{
  result = qword_27FD958A0;
  if (!qword_27FD958A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958A0);
  }

  return result;
}

uint64_t sub_25F51B070(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F51F03C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F51B134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x800000025F52D390;
  if (v2 == 1)
  {
    v5 = 0x800000025F52D390;
  }

  else
  {
    v3 = 0x726F77656D617266;
    v5 = 0xED0000687461506BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x726F77656D617266;
    v4 = 0xED0000687461506BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F51B24C()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51B308()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F51B3B0()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51B468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F258();
  *a2 = result;
  return result;
}

void sub_25F51B498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F52D390;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x726F77656D617266;
    v4 = 0xED0000687461506BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F51B510()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x726F77656D617266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t EntryPointType.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_25F51B6A4();
  sub_25F51B6F8();
  sub_25F52A1A0();
  v10 = v1;
  v11 = v2;
  v8 = &type metadata for EntryPointType.Key;
  v9 = v5;
  LOBYTE(v7[0]) = 1;

  sub_25F52A140();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v10 = v4;
  v11 = v3;
  v8 = &type metadata for EntryPointType.Key;
  v9 = v5;
  LOBYTE(v7[0]) = 2;
  sub_25F52A140();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

_BYTE *sub_25F51B698(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

unint64_t sub_25F51B6A4()
{
  result = qword_27FD958A8;
  if (!qword_27FD958A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958A8);
  }

  return result;
}

unint64_t sub_25F51B6F8()
{
  result = qword_27FD958B0;
  if (!qword_27FD958B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958B0);
  }

  return result;
}

uint64_t EntryPointType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for EntryPointType.Key;
  v5 = sub_25F51B6A4();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F51B6F8();
  sub_25F52A150();
  if (v2)
  {
    v6 = sub_25F52A1B0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for EntryPointType.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F52A150();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for EntryPointType.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F52A150();
    v7 = sub_25F52A1B0();
    (*(*(v7 - 8) + 8))(a1, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v9;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_25F51B940(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6553657461647075;
  v4 = *a1;
  v5 = 0x7961507075746573;
  v6 = 0xEC00000064616F6CLL;
  if (v4 == 1)
  {
    v5 = 0x6553657461647075;
    v6 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000025F52D3B0;
  }

  if (*a2 != 1)
  {
    v3 = 0x7961507075746573;
    v2 = 0xEC00000064616F6CLL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000025F52D3B0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F51BA4C()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51BB00()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F51BBA0()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F51BC50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F51F2A4();
  *a2 = result;
  return result;
}

void sub_25F51BC80(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x6553657461647075;
  if (v2 != 1)
  {
    v4 = 0x7961507075746573;
    v3 = 0xEC00000064616F6CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x800000025F52D3B0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_25F51BCF0()
{
  v1 = 0x6553657461647075;
  if (*v0 != 1)
  {
    v1 = 0x7961507075746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25F51BDA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957F8, &qword_25F52B3F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95AE0, &qword_25F52CB80);
  v6 = *(v5 - 8);
  v55 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v53 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95AE8, &qword_25F52CB88);
  v12 = *(*(v11 - 8) + 64);
  v13 = v11 - 8;
  v48[0] = v11 - 8;
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v50 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95AF0, &qword_25F52CB90);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v48 - v24;
  v26 = *(v19 + 56);
  *(v48 - v24) = 0;
  v27 = sub_25F52A120();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v51 = v25;
  v29(&v25[v26], a1, v27);
  v30 = *(v13 + 56);
  v31 = v17;
  *v17 = 1;
  v32 = type metadata accessor for AgentUpdate.Context(0);
  v33 = a1 + *(v32 + 20);
  v49 = v17;
  sub_25F51F350(v33, &v17[v30], &qword_27FD957B0, &qword_25F52B3E0);
  v34 = v54;
  v35 = *(v55 + 56);
  *v54 = 2;
  v36 = a1 + *(v32 + 24);
  v37 = v34;
  sub_25F51F350(v36, &v34[v35], &qword_27FD957B8, &qword_25F52B3E8);
  sub_25F51F350(v25, v23, &qword_27FD95AF0, &qword_25F52CB90);
  LOBYTE(v30) = *v23;
  v38 = *(v28 + 32);
  v39 = &v23[*(v19 + 56)];
  v40 = v52;
  v48[1] = v27;
  v38(v52, v39, v27);
  (*(v28 + 56))(v40, 0, 1, v27);
  v58 = v30;
  v41 = v50;
  sub_25F51F350(v31, v50, &qword_27FD95AE8, &qword_25F52CB88);
  v42 = *(v48[0] + 56);
  v57 = *v41;
  v43 = v53;
  sub_25F51F350(v37, v53, &qword_27FD95AE0, &qword_25F52CB80);
  v44 = v43;
  v45 = *(v55 + 56);
  v56 = *v43;
  sub_25F52A100();
  sub_25F52A130();
  sub_25F51C818();
  sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
  sub_25F5168E4(&qword_27FD95820, MEMORY[0x277D40810]);
  sub_25F5168E4(&qword_27FD958C0, MEMORY[0x277D40AD0]);
  v46 = sub_25F52A210();
  sub_25F51F3B8(v40, &qword_27FD957F8, &qword_25F52B3F8);
  sub_25F51F3B8(v54, &qword_27FD95AE0, &qword_25F52CB80);
  sub_25F51F3B8(v49, &qword_27FD95AE8, &qword_25F52CB88);
  sub_25F51F3B8(v51, &qword_27FD95AF0, &qword_25F52CB90);
  sub_25F51F3B8(&v44[v45], &qword_27FD957B8, &qword_25F52B3E8);
  sub_25F51F3B8(&v41[v42], &qword_27FD957B0, &qword_25F52B3E0);
  return v46;
}

uint64_t AgentUpdate.Context.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B8, &qword_25F52B3E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B0, &qword_25F52B3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = &v27 - v11;
  v12 = sub_25F52A120();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AgentUpdate.Context(0);
  v17 = *(v16 + 20);
  v18 = sub_25F52A100();
  v19 = *(*(v18 - 8) + 56);
  v29 = v17;
  v19(a2 + v17, 1, 1, v18);
  v20 = *(v16 + 24);
  v21 = sub_25F52A130();
  v22 = *(*(v21 - 8) + 56);
  v33 = v20;
  v22(a2 + v20, 1, 1, v21);
  v31 = &type metadata for AgentUpdate.Context.Key;
  v23 = sub_25F51C818();
  v32 = v23;
  LOBYTE(v30[0]) = 0;
  sub_25F5168E4(&qword_27FD95818, MEMORY[0x277D40A08]);
  sub_25F52A150();
  if (v2)
  {
    v24 = sub_25F52A1B0();
    (*(*(v24 - 8) + 8))(a1, v24);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_25F51F3B8(a2 + v29, &qword_27FD957B0, &qword_25F52B3E0);
    return sub_25F51F3B8(a2 + v33, &qword_27FD957B8, &qword_25F52B3E8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*(v28 + 32))(a2, v15, v12);
    v31 = &type metadata for AgentUpdate.Context.Key;
    v32 = v23;
    LOBYTE(v30[0]) = 1;
    sub_25F5168E4(&qword_27FD95820, MEMORY[0x277D40810]);
    sub_25F52A180();
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_25F5137D8(v27, a2 + v29, &qword_27FD957B0, &qword_25F52B3E0);
    v31 = &type metadata for AgentUpdate.Context.Key;
    v32 = v23;
    LOBYTE(v30[0]) = 2;
    sub_25F5168E4(&qword_27FD958C0, MEMORY[0x277D40AD0]);
    sub_25F52A180();
    v26 = sub_25F52A1B0();
    (*(*(v26 - 8) + 8))(a1, v26);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_25F5137D8(v8, a2 + v33, &qword_27FD957B8, &qword_25F52B3E8);
  }
}

unint64_t sub_25F51C818()
{
  result = qword_27FD958B8;
  if (!qword_27FD958B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958B8);
  }

  return result;
}

uint64_t sub_25F51C8E4()
{
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F51C97C()
{
  sub_25F52A6B0();
  sub_25F52A490();
  return sub_25F52A6D0();
}

uint64_t sub_25F51C9D4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F52A660();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25F51CAB4(void (*a1)(void))
{
  v3 = *v1;
  v4 = v1[1];
  a1();
  return sub_25F52A1A0();
}

unint64_t sub_25F51CB24()
{
  result = qword_27FD958C8;
  if (!qword_27FD958C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958C8);
  }

  return result;
}

uint64_t sub_25F51CBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v10[3] = a2;
  v10[4] = a3();
  sub_25F52A150();
  v7 = sub_25F52A1B0();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v4)
  {
    v9 = v10[6];
    *a4 = v10[5];
    a4[1] = v9;
  }

  return result;
}

unint64_t sub_25F51CCAC()
{
  result = qword_27FD958D0;
  if (!qword_27FD958D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958D0);
  }

  return result;
}

unint64_t sub_25F51CD04()
{
  result = qword_27FD958D8;
  if (!qword_27FD958D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958D8);
  }

  return result;
}

unint64_t sub_25F51CD5C()
{
  result = qword_27FD958E0;
  if (!qword_27FD958E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958E0);
  }

  return result;
}

unint64_t sub_25F51CDC0()
{
  result = qword_27FD958E8;
  if (!qword_27FD958E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958E8);
  }

  return result;
}

unint64_t sub_25F51CE18()
{
  result = qword_27FD958F0;
  if (!qword_27FD958F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958F0);
  }

  return result;
}

unint64_t sub_25F51CE88()
{
  result = qword_27FD958F8;
  if (!qword_27FD958F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD958F8);
  }

  return result;
}

uint64_t sub_25F51CF34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = v3[1];
  a3();
  return sub_25F52A1A0();
}

uint64_t sub_25F51CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  v10[3] = a2;
  v10[4] = a3();
  sub_25F52A150();
  v7 = sub_25F52A1B0();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v4)
  {
    v9 = v10[6];
    *a4 = v10[5];
    a4[1] = v9;
  }

  return result;
}

uint64_t sub_25F51D120(uint64_t a1)
{
  sub_25F51D1D8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for AgentUpdate(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_25F51D1D8()
{
  if (!qword_27FD95918)
  {
    v0 = type metadata accessor for AgentUpdate(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FD95918);
    }
  }
}

void sub_25F51D2E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25F51D394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F51D420(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95860, &qword_25F52B420);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F51D4AC()
{
  sub_25F51D2E8(319, &qword_27FD95960, type metadata accessor for AgentUpdate, type metadata accessor for SceneUpdateContext);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25F51D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_25F51D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, a2, a3, v9);
}

uint64_t sub_25F51D62C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_25F51D2E8(319, a4, MEMORY[0x277D40A08], a5);
  v10 = v9;
  if (v11 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v12 = sub_25F52A120();
    v10 = v12;
    if (v13 <= 0x3F)
    {
      v14 = *(v12 - 8);
      v15 = a7(319);
      v10 = v15;
      if (v16 <= 0x3F)
      {
        v17 = *(v15 - 8);
        swift_getTupleTypeLayout2();
        v10 = 0;
        *(*(a1 - 8) + 84) = v19;
      }
    }
  }

  return v10;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F51D78C(uint64_t a1, int a2)
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

uint64_t sub_25F51D7D4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F51D838(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F52A1B0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AgentUpdate.Context(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25F51D970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_25F52A1B0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AgentUpdate.Context(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25F51DA94()
{
  sub_25F52A1B0();
  if (v0 <= 0x3F)
  {
    sub_25F51DB44();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AgentUpdate.Context(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F51DB44()
{
  if (!qword_27FD95988)
  {
    v0 = sub_25F52A5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD95988);
    }
  }
}

uint64_t sub_25F51DBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F52A120();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B0, &qword_25F52B3E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B8, &qword_25F52B3E8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25F51DD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F52A120();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B0, &qword_25F52B3E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD957B8, &qword_25F52B3E8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_25F51DE78()
{
  sub_25F52A120();
  if (v0 <= 0x3F)
  {
    sub_25F51DF4C(319, &qword_27FD959A0, MEMORY[0x277D40810]);
    if (v1 <= 0x3F)
    {
      sub_25F51DF4C(319, &qword_27FD959A8, MEMORY[0x277D40AD0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F51DF4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F52A5A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F51DFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F51DFE8(uint64_t result, int a2, int a3)
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

uint64_t sub_25F51E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F52A050();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25F52A060();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25F51E17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F52A050();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F52A060();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25F51E284()
{
  result = sub_25F52A050();
  if (v1 <= 0x3F)
  {
    result = sub_25F52A060();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AgentToShellMessage.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AgentToShellMessage.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AgentUpdate.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AgentUpdate.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F51E690(unsigned int *a1, int a2)
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

_WORD *sub_25F51E6E0(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25F51E780()
{
  result = qword_27FD959C0;
  if (!qword_27FD959C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959C0);
  }

  return result;
}

unint64_t sub_25F51E7D8()
{
  result = qword_27FD959C8;
  if (!qword_27FD959C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959C8);
  }

  return result;
}

unint64_t sub_25F51E860()
{
  result = qword_27FD959E0;
  if (!qword_27FD959E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959E0);
  }

  return result;
}

unint64_t sub_25F51E8B8()
{
  result = qword_27FD959E8;
  if (!qword_27FD959E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959E8);
  }

  return result;
}

unint64_t sub_25F51E910()
{
  result = qword_27FD959F0;
  if (!qword_27FD959F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959F0);
  }

  return result;
}

unint64_t sub_25F51E968()
{
  result = qword_27FD959F8;
  if (!qword_27FD959F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD959F8);
  }

  return result;
}

unint64_t sub_25F51E9C0()
{
  result = qword_27FD95A00;
  if (!qword_27FD95A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A00);
  }

  return result;
}

unint64_t sub_25F51EA18()
{
  result = qword_27FD95A08;
  if (!qword_27FD95A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A08);
  }

  return result;
}

unint64_t sub_25F51EA70()
{
  result = qword_27FD95A10;
  if (!qword_27FD95A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A10);
  }

  return result;
}

unint64_t sub_25F51EAF8()
{
  result = qword_27FD95A28;
  if (!qword_27FD95A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A28);
  }

  return result;
}

unint64_t sub_25F51EB50()
{
  result = qword_27FD95A30;
  if (!qword_27FD95A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A30);
  }

  return result;
}

unint64_t sub_25F51EBA8()
{
  result = qword_27FD95A38;
  if (!qword_27FD95A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A38);
  }

  return result;
}

unint64_t sub_25F51EC30()
{
  result = qword_27FD95A50;
  if (!qword_27FD95A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A50);
  }

  return result;
}

unint64_t sub_25F51EC88()
{
  result = qword_27FD95A58;
  if (!qword_27FD95A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A58);
  }

  return result;
}

unint64_t sub_25F51ECE0()
{
  result = qword_27FD95A60;
  if (!qword_27FD95A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A60);
  }

  return result;
}

unint64_t sub_25F51ED68()
{
  result = qword_27FD95A78;
  if (!qword_27FD95A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A78);
  }

  return result;
}

uint64_t sub_25F51EDEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F51EE44()
{
  result = qword_27FD95A90;
  if (!qword_27FD95A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A90);
  }

  return result;
}

unint64_t sub_25F51EE98()
{
  result = qword_27FD95A98;
  if (!qword_27FD95A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95A98);
  }

  return result;
}

unint64_t sub_25F51EEEC()
{
  result = qword_27FD95AA0;
  if (!qword_27FD95AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AA0);
  }

  return result;
}

unint64_t sub_25F51EF40()
{
  result = qword_27FD95AA8;
  if (!qword_27FD95AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AA8);
  }

  return result;
}

unint64_t sub_25F51EF94()
{
  result = qword_27FD95AB0;
  if (!qword_27FD95AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AB0);
  }

  return result;
}

unint64_t sub_25F51EFE8()
{
  result = qword_27FD95AB8;
  if (!qword_27FD95AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AB8);
  }

  return result;
}

unint64_t sub_25F51F03C()
{
  result = qword_27FD95AC0;
  if (!qword_27FD95AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AC0);
  }

  return result;
}

uint64_t sub_25F51F090()
{
  v0 = sub_25F52A660();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F0DC()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F128()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F174()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F1C0()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F20C()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F258()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F2A4()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F51F2F0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

unint64_t sub_25F51F2FC()
{
  result = qword_27FD95AD8;
  if (!qword_27FD95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95AD8);
  }

  return result;
}

uint64_t sub_25F51F350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F51F3B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void UIScene.setPreviewSceneActionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F52A450();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_25F51F64C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25F51F654;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  [v2 uv:v5 registerActionHandlerForKey:v7 handler:?];
  _Block_release(v7);
}

BOOL sub_25F51F5A8(void *a1, void (*a2)(uint64_t))
{
  sub_25F52A0B0();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = a1;
    a2(v4);
  }

  return v4 != 0;
}

uint64_t sub_25F51F614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F51F654(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F51F728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v31 = sub_25F52A3F0();
  v34 = *(v31 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F52A420();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F52A1E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_25F52A400();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F520A00();
  (*(v13 + 104))(v16, *MEMORY[0x277D851B8], v12);
  v17 = sub_25F52A580();
  (*(v13 + 8))(v16, v12);
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  aBlock[4] = sub_25F520AEC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F520C4C;
  aBlock[3] = &block_descriptor_33;
  v22 = _Block_copy(aBlock);

  sub_25F52A410();
  v35 = MEMORY[0x277D84F90];
  sub_25F520B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B50, &unk_25F52CBF0);
  sub_25F520BD4();
  v24 = v30;
  v23 = v31;
  sub_25F52A5C0();
  MEMORY[0x25F8DFD20](0, v8, v24, v22);
  _Block_release(v22);

  (*(v34 + 8))(v24, v23);
  (*(v32 + 8))(v8, v33);
}

uint64_t sub_25F51FB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25F51FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v20 = a7;
  v19 = a6;
  v11 = sub_25F52A1E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = objc_opt_self();
  [v14 activate];
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = (v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F520C4C;
  aBlock[3] = v19;
  v18 = _Block_copy(aBlock);

  [v14 addCommitHandler:v18 forPhase:v20];
  _Block_release(v18);
}

uint64_t static CATransaction.afterSynchronize()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B30, &qword_25F52CBD8);
  return sub_25F52A270();
}

{
  v0[2] = sub_25F52A530();
  v0[3] = sub_25F52A520();
  v2 = sub_25F52A500();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x2822009F8](sub_25F51FF70, v2, v1);
}

uint64_t sub_25F51FF70()
{
  v1 = v0[2];
  [objc_opt_self() activate];
  v0[6] = sub_25F52A520();
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_25F520070;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_25F520070()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25F5201B4, v5, v4);
}

uint64_t sub_25F5201B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_25F520214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B38, &qword_25F52CBE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_25F520900;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F520C4C;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);

  [v7 addCommitHandler:v10 forPhase:5];
  _Block_release(v10);
}

uint64_t sub_25F5203D4(uint64_t (*a1)())
{
  v2 = sub_25F52A1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;

  _sSo13CATransactionC19PreviewsOSSupportUIE11afterCommit2on_y0B12FoundationOS13ExecutionLaneV_yyctFZfA__0();
  v9 = objc_opt_self();
  [v9 activate];
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v6, v2);
  v13 = (v12 + v11);
  *v13 = sub_25F52096C;
  v13[1] = a1;
  aBlock[4] = sub_25F520C64;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F520C4C;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  [v9 addCommitHandler:v14 forPhase:2];
  _Block_release(v14);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_25F520620(uint64_t a1)
{
  v2 = sub_25F52A1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;

  _sSo13CATransactionC19PreviewsOSSupportUIE11afterCommit2on_y0B12FoundationOS13ExecutionLaneV_yyctFZfA__0();
  v9 = objc_opt_self();
  [v9 activate];
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v6, v2);
  v13 = (v12 + v11);
  *v13 = sub_25F520C5C;
  v13[1] = a1;
  aBlock[4] = sub_25F520C58;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F520C4C;
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);

  [v9 addCommitHandler:v14 forPhase:5];
  _Block_release(v14);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_25F52086C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B38, &qword_25F52CBE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F520900()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B38, &qword_25F52CBE8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25F52A510();
}

uint64_t sub_25F520970()
{
  v1 = *(sub_25F52A1E0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_25F51F728(v0 + v2, v4, v5);
}

unint64_t sub_25F520A00()
{
  result = qword_27FD95B40;
  if (!qword_27FD95B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD95B40);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_25F52A1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F520AF0()
{
  v1 = *(sub_25F52A1E0() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];
  return sub_25F52A1D0();
}

unint64_t sub_25F520B7C()
{
  result = qword_27FD95B48;
  if (!qword_27FD95B48)
  {
    sub_25F52A3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95B48);
  }

  return result;
}

unint64_t sub_25F520BD4()
{
  result = qword_27FD95B58;
  if (!qword_27FD95B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD95B50, &unk_25F52CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95B58);
  }

  return result;
}

uint64_t sub_25F520C80@<X0>(_BYTE *a1@<X8>)
{
  result = AgentToShellMessage.messageType.getter();
  *a1 = result;
  return result;
}

uint64_t AgentToShellMessage.messageType.getter()
{
  v1 = type metadata accessor for AgentToShellMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F520E2C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v8 = sub_25F52A0A0();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 1;
    }

    else
    {
      sub_25F520E90(v4);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_25F52A0E0();
    (*(*(v7 - 8) + 8))(v4, v7);
    return 4;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_25F520E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgentToShellMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F520E90(uint64_t a1)
{
  updated = type metadata accessor for SceneUpdateHandshake(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void *AgentToShellMessage.fenceHandle.getter()
{
  v1 = v0;
  updated = type metadata accessor for SceneUpdateHandshake(0);
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgentToShellMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F520E2C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25F523670(v9, v5, type metadata accessor for SceneUpdateHandshake);
    v11 = *&v5[*(updated + 24)];
    v13 = v11;
    sub_25F520E90(v5);
    return v11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v14 = sub_25F52A0E0();
    (*(*(v14 - 8) + 8))(v9, v14);
    return 0;
  }

  v11 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B60, &unk_25F52CC00) + 48)];
  v12 = sub_25F52A0A0();
  (*(*(v12 - 8) + 8))(v9, v12);
  return v11;
}

uint64_t AgentToShellMessage.payload.getter()
{
  v1 = v0;
  v2 = sub_25F52A0E0();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F52A0A0();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateHandshake(0);
  v11 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AgentToShellMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95828, &qword_25F52B408);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  sub_25F520E2C(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v28 = sub_25F52A1B0();
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v26 = v35;
      v27 = (*(v35 + 32))(v9, v17, v6);
      MEMORY[0x28223BE20](v27);
      *(&v35 - 2) = v9;
      sub_25F523598();
      sub_25F523620(&qword_27FD95B78, MEMORY[0x277D41058]);
      sub_25F52A1A0();
      v28 = sub_25F52A1B0();
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      v30 = v36;
      v31 = (*(v36 + 32))(v5, v17, v2);
      MEMORY[0x28223BE20](v31);
      *(&v35 - 2) = v5;
      sub_25F523598();
      sub_25F523620(&qword_27FD95B70, MEMORY[0x277D41068]);
      sub_25F52A1A0();
      v28 = sub_25F52A1B0();
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      (*(v30 + 8))(v5, v2);
    }
  }

  else
  {
    v29 = sub_25F523670(v17, v13, type metadata accessor for SceneUpdateHandshake);
    MEMORY[0x28223BE20](v29);
    *(&v35 - 2) = v13;
    sub_25F52A190();
    v28 = sub_25F52A1B0();
    (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
    sub_25F520E90(v13);
  }

  sub_25F51F350(v24, v22, &qword_27FD95828, &qword_25F52B408);
  sub_25F52A1B0();
  v32 = *(v28 - 8);
  if ((*(v32 + 48))(v22, 1, v28) == 1)
  {
    sub_25F51F3B8(v24, &qword_27FD95828, &qword_25F52B408);
    sub_25F51F3B8(v22, &qword_27FD95828, &qword_25F52B408);
    return 0;
  }

  else
  {
    v34 = sub_25F52A170();
    sub_25F51F3B8(v24, &qword_27FD95828, &qword_25F52B408);
    (*(v32 + 8))(v22, v28);
    return v34;
  }
}

void AgentToShellMessage.init(messageType:fenceHandle:payload:)(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v48 = a3;
  v4 = sub_25F52A050();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F52A0A0();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AgentToShellMessage(0);
  v12 = *(*(v50 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v50);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v57 = sub_25F52A1B0();
  v53 = *(v57 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F52A160();
  if (a1 <= 1u)
  {
    v26 = v17;
    v45 = v19;
    v27 = v49;
    v47 = v8;
    if (a1)
    {
      v55 = &type metadata for AgentToShellMessage.Key;
      v56 = sub_25F523598();
      LOBYTE(v54[0]) = 0;
      sub_25F523620(&qword_27FD95B78, MEMORY[0x277D41058]);
      v35 = v22;
      v36 = v52;
      sub_25F52A150();
      if (v36)
      {
LABEL_14:
        (*(v53 + 8))(v22, v57);

        __swift_destroy_boxed_opaque_existential_1(v54);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v54);
      LOBYTE(v54[0]) = 1;
      sub_25F523620(&qword_27FD95B80, type metadata accessor for AgentToShellMessage);
      v39 = v51;
      v43 = sub_25F52A030();
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B60, &unk_25F52CC00) + 48);
      (*(v53 + 8))(v35, v57);

      *&v26[v44] = v43;
      swift_storeEnumTagMultiPayload();
      v40 = v26;
    }

    else
    {
      v28 = v11;
      v55 = &type metadata for AgentToShellMessage.Key;
      v29 = sub_25F523598();
      v56 = v29;
      LOBYTE(v54[0]) = 0;
      sub_25F523620(&qword_27FD95B78, MEMORY[0x277D41058]);
      v30 = v28;
      v31 = v52;
      sub_25F52A150();
      if (v31)
      {
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1(v54);
      v55 = &type metadata for AgentToShellMessage.Key;
      v56 = v29;
      LOBYTE(v54[0]) = 1;
      sub_25F523620(&qword_27FD95878, MEMORY[0x277D40FF8]);
      v38 = v7;
      sub_25F52A150();
      (*(v53 + 8))(v22, v57);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v41 = v45;
      (*(v27 + 32))(v45, v30, v47);
      updated = type metadata accessor for SceneUpdateHandshake(0);
      (*(v46 + 32))(v41 + *(updated + 20), v38, v4);
      *(v41 + *(updated + 24)) = v51;
      swift_storeEnumTagMultiPayload();
      v40 = v41;
    }

LABEL_19:
    sub_25F523670(v40, v48, type metadata accessor for AgentToShellMessage);
    return;
  }

  if (a1 != 2)
  {
    v23 = v51;
    v24 = v22;
    if (a1 == 3)
    {
      LOBYTE(v54[0]) = 3;
      sub_25F523620(&qword_27FD95B80, type metadata accessor for AgentToShellMessage);
      v25 = v52;
      sub_25F52A010();
      if (!v25)
      {
        (*(v53 + 8))(v22, v57);

        swift_storeEnumTagMultiPayload();
        return;
      }

      goto LABEL_12;
    }

    LOBYTE(v54[0]) = 4;
    sub_25F523620(&qword_27FD95B80, type metadata accessor for AgentToShellMessage);
    v34 = v52;
    sub_25F52A010();
    if (v34)
    {
LABEL_12:
      (*(v53 + 8))(v22, v57);

      return;
    }

    v55 = &type metadata for AgentToShellMessage.Key;
    v56 = sub_25F523598();
    LOBYTE(v54[0]) = 2;
    sub_25F52A0E0();
    sub_25F523620(&qword_27FD95B70, MEMORY[0x277D41068]);
    v37 = v47;
    sub_25F52A150();
    (*(v53 + 8))(v24, v57);

    __swift_destroy_boxed_opaque_existential_1(v54);
    swift_storeEnumTagMultiPayload();
    v40 = v37;
    goto LABEL_19;
  }

  LOBYTE(v54[0]) = 2;
  sub_25F523620(&qword_27FD95B80, type metadata accessor for AgentToShellMessage);
  v32 = v51;
  v33 = v52;
  sub_25F52A010();
  (*(v53 + 8))(v22, v57);

  if (!v33)
  {
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t AgentToShellMessage.payloadDescription.getter()
{
  v1 = sub_25F52A0E0();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F52A0A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateHandshake(0);
  v11 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AgentToShellMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F520E2C(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      (*(v6 + 32))(v9, v17, v5);
      v28 = 0x203A7366657270;
      v29 = 0xE700000000000000;
      sub_25F523620(&qword_27FD95B88, MEMORY[0x277D41058]);
      v19 = sub_25F52A670();
      MEMORY[0x25F8DFC50](v19);

      v20 = v28;
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v24 = v27;
      (*(v27 + 32))(v4, v17, v1);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25F52A5F0();
      MEMORY[0x25F8DFC50](0x61746E6573657270, 0xEE00203A6E6F6974);
      sub_25F52A610();
      v20 = v28;
      (*(v24 + 8))(v4, v1);
    }
  }

  else
  {
    sub_25F523670(v17, v13, type metadata accessor for SceneUpdateHandshake);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_25F52A5F0();

    v28 = 0x203A7366657270;
    v29 = 0xE700000000000000;
    sub_25F523620(&qword_27FD95B88, MEMORY[0x277D41058]);
    v21 = sub_25F52A670();
    MEMORY[0x25F8DFC50](v21);

    MEMORY[0x25F8DFC50](0x203A64656573202CLL, 0xE800000000000000);
    v22 = *(updated + 20);
    sub_25F52A050();
    sub_25F523620(&qword_27FD95B90, MEMORY[0x277D40FF8]);
    v23 = sub_25F52A670();
    MEMORY[0x25F8DFC50](v23);

    v20 = v28;
    sub_25F520E90(v13);
  }

  return v20;
}

uint64_t sub_25F522560(uint64_t a1)
{
  v2 = sub_25F523620(&qword_27FD95B80, type metadata accessor for AgentToShellMessage);

  return MEMORY[0x2821A1CF0](a1, v2);
}

uint64_t ShellToAgentMessage.hashValue.getter(char a1)
{
  sub_25F52A6B0();
  MEMORY[0x25F8DFE70](a1 & 1);
  return sub_25F52A6D0();
}

void sub_25F522678(unsigned __int8 *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_25F523F08(*a1, a2);
  if (!v3)
  {
    *a3 = v5 & 1;
  }
}

uint64_t sub_25F5226E4(uint64_t a1)
{
  v2 = sub_25F52488C();

  return MEMORY[0x2821A1CF0](a1, v2);
}

unint64_t AgentToShellMessage.MessageType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6148657461647075;
  v2 = 0x5A74736575716572;
  if (a1 != 3)
  {
    v2 = 0xD000000000000016;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5227E4()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F5228E0()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F5229C8()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F522AC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s19PreviewsOSSupportUI19AgentToShellMessageO0G4TypeO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25F522AF0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656B616873646ELL;
  v4 = 0x6148657461647075;
  v5 = 0x800000025F52D4A0;
  v6 = 0xEB000000006D6F6FLL;
  v7 = 0x5A74736575716572;
  if (v2 != 3)
  {
    v7 = 0xD000000000000016;
    v6 = 0x800000025F52D4C0;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000025F52D480;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_25F522BA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6553657461647075;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x61746E6573657270;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E65726566657270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000736563;
  }

  v7 = 0x6553657461647075;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x61746E6573657270;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E65726566657270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000736563;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F52A690();
  }

  return v11 & 1;
}

uint64_t sub_25F522CC8()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F522D80()
{
  *v0;
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F522E24()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F522ED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F524840();
  *a2 = result;
  return result;
}

void sub_25F522F08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000736563;
  v4 = 0xEA00000000006465;
  v5 = 0x6553657461647075;
  if (v2 != 1)
  {
    v5 = 0x61746E6573657270;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65726566657270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F522F7C()
{
  v1 = 0x6553657461647075;
  if (*v0 != 1)
  {
    v1 = 0x61746E6573657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65726566657270;
  }
}

uint64_t sub_25F522FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95B00, &qword_25F52CBA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C30, &qword_25F52D0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C38, &qword_25F52D0C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = v8 - 8;
  v42 = v8 - 8;
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C40, &qword_25F52D0D0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = *(v16 + 56);
  *(&v40 - v21) = 0;
  v41 = sub_25F52A0A0();
  v24 = *(v41 - 8);
  v25 = *(v24 + 16);
  v45 = v22;
  v25(&v22[v23], a1, v41);
  v26 = *(v10 + 56);
  *v14 = 1;
  v27 = *(type metadata accessor for SceneUpdateHandshake(0) + 20);
  v28 = sub_25F52A050();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v14[v26], a1 + v27, v28);
  sub_25F51F350(v22, v20, &qword_27FD95C40, &qword_25F52D0D0);
  LOBYTE(v22) = *v20;
  v30 = &v20[*(v16 + 56)];
  v31 = v44;
  v32 = v41;
  (*(v24 + 32))(v44, v30, v41);
  (*(v24 + 56))(v31, 0, 1, v32);
  v48 = v22;
  v33 = v14;
  v34 = v14;
  v35 = v43;
  sub_25F51F350(v33, v43, &qword_27FD95C38, &qword_25F52D0C8);
  LOBYTE(v22) = *v35;
  v36 = &v35[*(v42 + 56)];
  v37 = v46;
  (*(v29 + 32))(v46, v36, v28);
  (*(v29 + 56))(v37, 0, 1, v28);
  v47 = v22;
  sub_25F523598();
  sub_25F523620(&qword_27FD95B78, MEMORY[0x277D41058]);
  sub_25F523620(&qword_27FD95878, MEMORY[0x277D40FF8]);
  v38 = sub_25F52A220();
  sub_25F51F3B8(v37, &qword_27FD95B00, &qword_25F52CBA0);
  sub_25F51F3B8(v31, &qword_27FD95C30, &qword_25F52D0C0);
  sub_25F51F3B8(v34, &qword_27FD95C38, &qword_25F52D0C8);
  sub_25F51F3B8(v45, &qword_27FD95C40, &qword_25F52D0D0);
  return v38;
}

uint64_t sub_25F52348C(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  *a1 = a4;
  v7 = a5(0);
  v10 = *(v7 - 8);
  (*(v10 + 16))(a2, a3, v7);
  v8 = *(v10 + 56);

  return v8(a2, 0, 1, v7);
}

unint64_t sub_25F523598()
{
  result = qword_27FD95B68;
  if (!qword_27FD95B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95B68);
  }

  return result;
}

uint64_t sub_25F523620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F523670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SceneUpdateHandshake.init(preferences:updateSeed:fenceHandle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F52A0A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  updated = type metadata accessor for SceneUpdateHandshake(0);
  v10 = *(updated + 20);
  v11 = sub_25F52A050();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(updated + 24)) = a3;
  return result;
}

PreviewsOSSupportUI::ShellToAgentMessage::MessageType_optional __swiftcall ShellToAgentMessage.MessageType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F52A660();

  if (v1 == 1)
  {
    v2.value = PreviewsOSSupportUI_ShellToAgentMessage_MessageType_requestPreferredSize;
  }

  else
  {
    v2.value = PreviewsOSSupportUI_ShellToAgentMessage_MessageType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t ShellToAgentMessage.MessageType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_25F52382C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "tation";
  }

  else
  {
    v5 = "commitPostSynchronize";
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "commitPostSynchronize";
  }

  else
  {
    v7 = "tation";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F52A690();
  }

  return v9 & 1;
}

uint64_t sub_25F5238D4()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F523950()
{
  *v0;
  sub_25F52A490();
}

uint64_t sub_25F5239B8()
{
  v1 = *v0;
  sub_25F52A6B0();
  sub_25F52A490();

  return sub_25F52A6D0();
}

uint64_t sub_25F523A30@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F52A660();

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

void sub_25F523A90(unint64_t *a1@<X8>)
{
  v2 = "commitPostSynchronize";
  v3 = 0xD000000000000014;
  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = "tation";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t SceneUpdateHandshake.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F52A0A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SceneUpdateHandshake.updateSeed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SceneUpdateHandshake(0) + 20);
  v4 = sub_25F52A050();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *SceneUpdateHandshake.fenceHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SceneUpdateHandshake(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t SceneUpdateHandshake.timing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SceneUpdateHandshake(0) + 24));
  v4 = sub_25F52A060();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D41018];
  if (v3)
  {
    v6 = MEMORY[0x277D41020];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t PreviewPreferences.propertyListValue.getter()
{
  sub_25F52A080();

  return sub_25F52A160();
}

uint64_t PreviewPreferences.init(propertyListValue:)(uint64_t a1)
{
  sub_25F52A170();
  sub_25F52A070();
  v2 = sub_25F52A1B0();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_25F523D2C()
{
  sub_25F52A080();

  return sub_25F52A160();
}

uint64_t sub_25F523D64(uint64_t a1)
{
  sub_25F52A170();
  sub_25F52A070();
  v2 = sub_25F52A1B0();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_25F523DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F523620(&qword_27FD95C20, MEMORY[0x277D41068]);
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

void sub_25F523F08(uint64_t a1, void *a2)
{

  sub_25F52488C();
  sub_25F52A010();
}

uint64_t _s19PreviewsOSSupportUI19AgentToShellMessageO0G4TypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_25F52A660();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F524044()
{
  result = qword_27FD95BA0;
  if (!qword_27FD95BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BA0);
  }

  return result;
}

unint64_t sub_25F52409C()
{
  result = qword_27FD95BA8;
  if (!qword_27FD95BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BA8);
  }

  return result;
}

unint64_t sub_25F5240F4()
{
  result = qword_27FD95BB0;
  if (!qword_27FD95BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BB0);
  }

  return result;
}

unint64_t sub_25F52414C()
{
  result = qword_27FD95BB8;
  if (!qword_27FD95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BB8);
  }

  return result;
}

unint64_t sub_25F5241A4()
{
  result = qword_27FD95BC0;
  if (!qword_27FD95BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BC0);
  }

  return result;
}

unint64_t sub_25F5241FC()
{
  result = qword_27FD95BC8;
  if (!qword_27FD95BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95BC8);
  }

  return result;
}

void sub_25F5242A0()
{
  sub_25F524420(319, &qword_27FD95BE0, type metadata accessor for SceneUpdateHandshake);
  if (v0 <= 0x3F)
  {
    sub_25F524360();
    if (v1 <= 0x3F)
    {
      sub_25F524420(319, &qword_27FD95BF8, MEMORY[0x277D41068]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25F524360()
{
  if (!qword_27FD95BE8)
  {
    sub_25F52A0A0();
    sub_25F5243D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD95BE8);
    }
  }
}

unint64_t sub_25F5243D4()
{
  result = qword_27FD95BF0;
  if (!qword_27FD95BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD95BF0);
  }

  return result;
}

void sub_25F524420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F5244B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F52A0A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25F52A050();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_25F5245DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F52A0A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F52A050();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F5246E4()
{
  sub_25F52A0A0();
  if (v0 <= 0x3F)
  {
    sub_25F52A050();
    if (v1 <= 0x3F)
    {
      sub_25F524780();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F524780()
{
  if (!qword_27FD95C10)
  {
    sub_25F5243D4();
    v0 = sub_25F52A5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD95C10);
    }
  }
}

unint64_t sub_25F5247EC()
{
  result = qword_27FD95C18;
  if (!qword_27FD95C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95C18);
  }

  return result;
}

uint64_t sub_25F524840()
{
  v0 = sub_25F52A660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F52488C()
{
  result = qword_27FD95C28;
  if (!qword_27FD95C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95C28);
  }

  return result;
}

uint64_t sub_25F524984(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = swift_allocObject();
  v9 = v7 + *MEMORY[0x277D40FF0];
  *(v8 + 16) = *v9;
  *(v8 + 24) = *(v9 + 8);
  *(v8 + 40) = *(v9 + 24);
  *(v8 + 48) = a5;
  *(v8 + 56) = a1;

  sub_25F52A040();
}

uint64_t sub_25F524A88(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a3;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = *(v15 + *MEMORY[0x277D40568]);
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a8;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2 & 1;
  sub_25F525BCC(a1, a2 & 1);
  sub_25F52A2A0();
}

id sub_25F524B88(void *a1, char a2)
{
  if (a2)
  {
    swift_willThrow();
    return a1;
  }

  else
  {

    return sub_25F52A240();
  }
}

uint64_t sub_25F524C9C()
{

  sub_25F52A040();
}

uint64_t sub_25F524D10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25F524C9C();
}

void sub_25F524D1C(id a1, char a2)
{
  if (a2)
  {
    v4 = a1;
  }

  sub_25F52A290();
  sub_25F525B00(a1, a2 & 1);
}

uint64_t SceneMessageResponder.reply<A>(payload:)()
{
  sub_25F52A230();
  sub_25F52A0D0();
}

void SceneMessageResponder.reply<A>(result:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD95C48, &qword_25F52D0D8);
  v8 = sub_25F52A6E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - v10);
  (*(v12 + 16))(&v14 - v10, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v11;
    sub_25F52A0C0();
  }

  else
  {
    (*(v4 + 32))(v7, v11, a2);
    sub_25F52A230();
    sub_25F52A0D0();

    (*(v4 + 8))(v7, a2);
  }
}

uint64_t PreviewPreferences.InterfaceOrientation.previewOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F52A090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D41050])
  {
    v10 = MEMORY[0x277D40798];
LABEL_7:
    v11 = *v10;
    v12 = sub_25F52A0F0();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277D41048])
  {
    v10 = MEMORY[0x277D40790];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D41038])
  {
    v10 = MEMORY[0x277D40780];
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277D41040];
  v18 = v9;
  v12 = sub_25F52A0F0();
  v13 = *(*(v12 - 8) + 104);
  if (v18 != v17)
  {
    v13(a1, *MEMORY[0x277D40798], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D40788];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t PreviewInterfaceOrientation.previewOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F52A310();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC5710])
  {
    v10 = MEMORY[0x277D40798];
LABEL_7:
    v11 = *v10;
    v12 = sub_25F52A0F0();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277CC5708])
  {
    v10 = MEMORY[0x277D40790];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277CC56F8])
  {
    v10 = MEMORY[0x277D40780];
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277CC5700];
  v18 = v9;
  v12 = sub_25F52A0F0();
  v13 = *(*(v12 - 8) + 104);
  if (v18 != v17)
  {
    v13(a1, *MEMORY[0x277D40798], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D40788];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t PreviewTraits.Orientation.previewPreferencesOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F52A0F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D40798])
  {
    v10 = MEMORY[0x277D41050];
LABEL_7:
    v11 = *v10;
    v12 = sub_25F52A090();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277D40790])
  {
    v10 = MEMORY[0x277D41048];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D40780])
  {
    v10 = MEMORY[0x277D41038];
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277D40788];
  v18 = v9;
  v12 = sub_25F52A090();
  v13 = *(*(v12 - 8) + 104);
  if (v18 != v17)
  {
    v13(a1, *MEMORY[0x277D41050], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D41040];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t InterfaceOrientation.previewOrientation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_25F52A2C0();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F52A3E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  (*(v8 + 16))(&v25 - v13, v2, v7);
  sub_25F52A3D0();
  sub_25F5259CC();
  v15 = sub_25F52A440();
  v16 = *(v8 + 8);
  v16(v12, v7);
  if (v15)
  {
    v16(v14, v7);
    v17 = MEMORY[0x277D40798];
  }

  else
  {
    sub_25F52A3C0();
    v18 = sub_25F52A440();
    v16(v12, v7);
    if (v18)
    {
      v16(v14, v7);
      v17 = MEMORY[0x277D40790];
    }

    else
    {
      sub_25F52A3A0();
      v19 = sub_25F52A440();
      v16(v12, v7);
      if (v19)
      {
        v16(v14, v7);
        v17 = MEMORY[0x277D40780];
      }

      else
      {
        sub_25F52A3B0();
        v20 = sub_25F52A440();
        v16(v12, v7);
        v21 = (v16)(v14, v7);
        if (v20)
        {
          v17 = MEMORY[0x277D40788];
        }

        else
        {
          MEMORY[0x28223BE20](v21);
          *(&v25 - 2) = v2;
          sub_25F52A2D0();
          sub_25F52A1F0();
          (*(v25 + 8))(v6, v3);
          v17 = MEMORY[0x277D40798];
        }
      }
    }
  }

  v22 = *v17;
  v23 = sub_25F52A0F0();
  return (*(*(v23 - 8) + 104))(v26, v22, v23);
}

unint64_t sub_25F5259CC()
{
  result = qword_27FD95C50;
  if (!qword_27FD95C50)
  {
    sub_25F52A3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95C50);
  }

  return result;
}

uint64_t sub_25F525A24()
{
  sub_25F52A5F0();
  MEMORY[0x25F8DFC50](0xD00000000000001ELL, 0x800000025F52DB90);
  sub_25F52A3E0();
  sub_25F52A610();
  return 0;
}

uint64_t PreviewSourceContentCategory.contentCategory.getter()
{
  v0 = sub_25F52A330();

  return MEMORY[0x2821A1240](v0);
}

void sub_25F525B00(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F525B0C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F525B58()
{
  sub_25F525B94(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void sub_25F525B94(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_25F525BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_25F524B88(*(v0 + 64), *(v0 + 72));
}

id sub_25F525BCC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_25F525BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PreviewViewShim.init<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t Preview.init<A>(with:_:traits:body:arguments:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v26 = a4;
  v27 = a7;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v10 = sub_25F52A340();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25F52A300();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C58, &qword_25F52D0F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 104))(v16, *MEMORY[0x277CC56E8], v12);
  sub_25F52A320();
  v19 = sub_25F52A2E0();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  a6(v21);
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = a8;
  v22[3] = v23;
  v22[4] = a5;

  sub_25F52A2F0();
  sub_25F52A350();
  sub_25F526100();
  sub_25F52A360();
}

uint64_t sub_25F525FA8@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v12);
  v11 = v13;
  v3 = v13;
  v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(a2 + 24) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_25F5260BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F5260F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_25F525FA8(*(v1 + 24), a1);
}

unint64_t sub_25F526100()
{
  result = qword_27FD95C60;
  if (!qword_27FD95C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD95C58, &qword_25F52D0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD95C60);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F526178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F5261C0(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double static CGAffineTransform.transform(from:to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25F526324(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

void CGAffineTransform.integralTransform.getter(double *a1@<X8>)
{
  v3 = CGRound(*v1);
  v4 = CGRound(v1[1]);
  v5 = CGRound(v1[2]);
  v6 = CGRound(v1[3]);
  v7 = CGRound(v1[4]);
  v8 = CGRound(v1[5]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

void sub_25F526324(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (a1 == a2)
  {
    v4 = 0.0;
    v5 = 1.0;
    v6 = 0.0;
    v7 = 1.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    if ((a2 - 2) <= 2)
    {
      v10 = qword_25F52D150[a2 - 2];
    }

    if ((a1 - 2) <= 2)
    {
      v11 = qword_25F52D150[a1 - 2];
    }

    BSDegreesToRadians();
    CGAffineTransformMakeRotation(&v18, v12);
    b = v18.b;
    c = v18.c;
    d = v18.d;
    tx = v18.tx;
    ty = v18.ty;
    v5 = CGRound(v18.a);
    v4 = CGRound(b);
    v6 = CGRound(c);
    v7 = CGRound(d);
    v8 = CGRound(tx);
    v9 = CGRound(ty);
  }

  *a3 = v5;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;
}

id CounterRotationViewController.__allocating_init(contentView:contentOrientation:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView] = a1;
  *&v5[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentOrientation] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id CounterRotationViewController.init(contentView:contentOrientation:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView] = a1;
  *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentOrientation] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall CounterRotationViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CounterRotationViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25F526830()
{
  v1 = [v0 containerView];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    v3 = [v0 containerView];
    v4 = [v3 window];

    return v4;
  }

  return result;
}

void sub_25F5268C8(uint64_t a1, char *a2, _OWORD *a3)
{
  v4 = *&a2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView];
  v5 = a3[1];
  v10[0] = *a3;
  v10[1] = v5;
  v10[2] = a3[2];
  [v4 setTransform_];
  v6 = [a2 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];

    v8 = [a2 view];
    if (v8)
    {
      v9 = v8;
      [v8 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25F526988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id CounterRotationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F52A450();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CounterRotationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s19PreviewsOSSupportUI29CounterRotationViewControllerC18viewWillTransition2to4withySo6CGSizeV_So06UIViewgJ11Coordinator_ptF_0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_25F526830();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 windowScene];

    if (v6)
    {
      v7 = [v6 interfaceOrientation];

      sub_25F526324(v7, *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentOrientation], &v21);
      v16 = v22;
      v17 = v21;
      v8 = v23;
      if ([a1 isAnimated])
      {
        v9 = swift_allocObject();
        v10 = v22;
        *(v9 + 24) = v21;
        *(v9 + 16) = v2;
        *(v9 + 40) = v10;
        *(v9 + 56) = v23;
        *&v20 = sub_25F526DD4;
        *(&v20 + 1) = v9;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v19 = sub_25F526988;
        *(&v19 + 1) = &block_descriptor_2;
        v11 = _Block_copy(&aBlock);
        v12 = v2;

        [a1 animateAlongsideTransition:v11 completion:0];
        _Block_release(v11);
      }

      else
      {
        v13 = *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView];
        aBlock = v17;
        v19 = v16;
        v20 = v8;
        [v13 setTransform_];
        v14 = [v2 view];
        if (v14)
        {
          v15 = v14;
          [v14 setNeedsLayout];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_25F526D9C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F526DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_25F529D1C(a3, v26 - v10);
  v12 = sub_25F52A550();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F529D8C(v11);
  }

  else
  {
    sub_25F52A540();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F52A500();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F52A480() + 32;
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

      sub_25F529D8C(a3);

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

  sub_25F529D8C(a3);
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

uint64_t static UVAgentSceneRegistry.deliverScene(_:forIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_25F52A550();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_25F52A530();
  v11 = a1;

  v12 = sub_25F52A520();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;
  sub_25F526DF8(0, 0, v9, &unk_25F52D1E0, v13);
}

uint64_t sub_25F5271FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_25F52A530();
  v6[5] = sub_25F52A520();
  v8 = sub_25F52A500();

  return MEMORY[0x2822009F8](sub_25F527298, v8, v7);
}

uint64_t sub_25F527298()
{
  v1 = *(v0 + 40);

  if (qword_27FD95600 != -1)
  {
    swift_once();
  }

  sub_25F527408(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F527340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F529FA8;

  return sub_25F5271FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F527408(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_25F52A390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  swift_beginAccess();
  v16 = *(v3 + 24);
  if (*(v16 + 16) && (v17 = sub_25F52894C(a2, a3), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 16 * v17;
    v20 = *(v19 + 8);
    v41 = *v19;
    swift_endAccess();

    sub_25F52A370();

    v21 = sub_25F52A380();
    v22 = sub_25F52A560();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v42 = a1;
      v26 = v25;
      v44[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_25F5283A4(v40, a3, v44);
      _os_log_impl(&dword_25F50F000, v21, v22, "AgentSceneRegistry received scene for %{public}s; will fulfill stored request", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v27 = v26;
      a1 = v42;
      MEMORY[0x25F8E0420](v27, -1, -1);
      v28 = v24;
      a2 = v40;
      MEMORY[0x25F8E0420](v28, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    swift_beginAccess();

    sub_25F527B04(0, 0, a2, a3);
    swift_endAccess();
    v44[0] = a1;
    v41(v44);
  }

  else
  {
    swift_endAccess();
    sub_25F52A370();

    v30 = sub_25F52A380();
    v31 = sub_25F52A560();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = a1;
      v33 = v32;
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_25F5283A4(a2, a3, v44);
      _os_log_impl(&dword_25F50F000, v30, v31, "AgentSceneRegistry received scene for %{public}s; no request yet, will store scene", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x25F8E0420](v34, -1, -1);
      v35 = v33;
      a1 = v42;
      MEMORY[0x25F8E0420](v35, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    swift_beginAccess();

    v36 = a1;
    v37 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_25F5292AC(v36, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v43;
    return swift_endAccess();
  }
}

id UVAgentSceneRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UVAgentSceneRegistry.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UVAgentSceneRegistry();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UVAgentSceneRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UVAgentSceneRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25F527A50()
{
  type metadata accessor for AgentSceneRegistry();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_25F529AFC(MEMORY[0x277D84F90]);
  result = sub_25F529C00(v1);
  *(v0 + 24) = result;
  qword_27FD95C78 = v0;
  return result;
}

uint64_t static AgentSceneRegistry.shared.getter()
{
  if (qword_27FD95600 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25F527B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_25F529424(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_25F52894C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_25F52991C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_25F5290FC(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_25F527C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25F5292AC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_25F52894C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25F5297B0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_25F528F4C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void AgentSceneRegistry.requestScene(for:handler:)(uint64_t a1, unint64_t a2, void (*a3)(id), void (*a4)(id))
{
  v5 = v4;
  v10 = sub_25F52A390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (*(v18 + 16) && (v19 = sub_25F52894C(a1, a2), (v20 & 1) != 0))
  {
    v43 = a4;
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v22 = v21;
    sub_25F52A370();

    v23 = sub_25F52A380();
    v24 = sub_25F52A560();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v42 = v22;
      v28 = v27;
      v46[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_25F5283A4(a1, a2, v46);
      _os_log_impl(&dword_25F50F000, v23, v24, "AgentSceneRegistry request for %{public}s; will fulfill with stored scene", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v29 = v28;
      v22 = v42;
      MEMORY[0x25F8E0420](v29, -1, -1);
      MEMORY[0x25F8E0420](v26, -1, -1);

      (*(v11 + 8))(v17, v44);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    swift_beginAccess();

    sub_25F527C0C(0, a1, a2);
    swift_endAccess();
    a3(v22);
  }

  else
  {
    swift_endAccess();
    sub_25F52A370();

    v30 = sub_25F52A380();
    v31 = sub_25F52A560();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v10;
      v33 = v32;
      v34 = swift_slowAlloc();
      v43 = a3;
      v35 = a4;
      v36 = v34;
      v46[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_25F5283A4(a1, a2, v46);
      _os_log_impl(&dword_25F50F000, v30, v31, "AgentSceneRegistry request for %{public}s; no scene yet, will store request", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v37 = v36;
      a4 = v35;
      a3 = v43;
      MEMORY[0x25F8E0420](v37, -1, -1);
      MEMORY[0x25F8E0420](v33, -1, -1);

      (*(v11 + 8))(v15, v44);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    v38 = swift_allocObject();
    *(v38 + 16) = a3;
    *(v38 + 24) = a4;
    swift_beginAccess();

    v39 = *(v5 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v5 + 24);
    *(v5 + 24) = 0x8000000000000000;
    sub_25F529424(sub_25F5289C4, v38, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v5 + 24) = v45;
    swift_endAccess();
  }
}

uint64_t AgentSceneRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AgentSceneRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25F5281B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F5282AC;

  return v7(a1);
}

uint64_t sub_25F5282AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F5283A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F528470(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25F529A9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25F528470(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F52857C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_25F52A600();
    a6 = v11;
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

uint64_t sub_25F52857C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5285C8(a1, a2);
  sub_25F5286F8(&unk_28718AEB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F5285C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F5287E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25F52A600();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25F52A4B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F5287E4(v10, 0);
        result = sub_25F52A5E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F5286F8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25F528858(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25F5287E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C88, &qword_25F52D288);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F528858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C88, &qword_25F52D288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_25F52894C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25F52A6B0();
  sub_25F52A490();
  v6 = sub_25F52A6D0();

  return sub_25F5296F8(a1, a2, v6);
}

uint64_t sub_25F5289C4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25F5289F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C80, &qword_25F52D280);
  v39 = a2;
  result = sub_25F52A640();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25F52A6B0();
      sub_25F52A490();
      result = sub_25F52A6D0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F528C94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD95C90, &qword_25F52D290);
  v36 = a2;
  result = sub_25F52A640();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_25F52A6B0();
      sub_25F52A490();
      result = sub_25F52A6D0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F528F4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F52A5D0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25F52A6B0();

      sub_25F52A490();
      v13 = sub_25F52A6D0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F5290FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F52A5D0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25F52A6B0();

      sub_25F52A490();
      v13 = sub_25F52A6D0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F5292AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F52894C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25F5289F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25F52894C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25F52A6A0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_25F5297B0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_25F529424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25F52894C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25F528C94(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25F52894C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25F52A6A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25F52991C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F529630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F512F70;

  return sub_25F5271FC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_25F5296F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25F52A690())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_25F5297B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C80, &qword_25F52D280);
  v2 = *v0;
  v3 = sub_25F52A630();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_25F52991C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD95C90, &qword_25F52D290);
  v2 = *v0;
  v3 = sub_25F52A630();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_25F529A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25F529AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95C80, &qword_25F52D280);
    v3 = sub_25F52A650();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25F52894C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F529C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD95C90, &qword_25F52D290);
    v3 = sub_25F52A650();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_25F52894C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25F529D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F529D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F529DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F529E2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F529FA8;

  return sub_25F5281B4(a1, v5);
}

uint64_t sub_25F529EE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F512F70;

  return sub_25F5281B4(a1, v5);
}