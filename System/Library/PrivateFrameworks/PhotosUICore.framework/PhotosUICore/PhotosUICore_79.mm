void sub_1A4646630()
{
  if (!qword_1EB1216C8)
  {
    sub_1A46466C8(255);
    sub_1A46507B8(&qword_1EB121010, 255, sub_1A46466C8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216C8);
    }
  }
}

void sub_1A4646704(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4647A6C(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4646760()
{
  if (!qword_1EB121A08)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    sub_1A4647700();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A08);
    }
  }
}

void sub_1A4646808()
{
  if (!qword_1EB1219A0)
  {
    sub_1A46468A0(255);
    sub_1A46507B8(&qword_1EB1212A8, 255, sub_1A46468A0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1219A0);
    }
  }
}

void sub_1A46468D4()
{
  if (!qword_1EB121ED0)
  {
    sub_1A464694C();
    sub_1A4646F98(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121ED0);
    }
  }
}

void sub_1A464694C()
{
  if (!qword_1EB121ED8)
  {
    sub_1A4646A24();
    sub_1A4646D10(255);
    sub_1A4646D4C();
    sub_1A46507B8(&qword_1EB1270B8, 255, sub_1A4646D10);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121ED8);
    }
  }
}

void sub_1A4646A24()
{
  if (!qword_1EB123388)
  {
    sub_1A4646AA4(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123388);
    }
  }
}

void sub_1A4646AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4646B4C()
{
  if (!qword_1EB123EB8)
  {
    sub_1A4646BCC();
    sub_1A4646CA4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123EB8);
    }
  }
}

void sub_1A4646BCC()
{
  if (!qword_1EB121E58)
  {
    sub_1A3E33788();
    sub_1A3EE1D04();
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E58);
    }
  }
}

void sub_1A4646CA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A464FE68(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4646D4C()
{
  result = qword_1EB123390;
  if (!qword_1EB123390)
  {
    sub_1A4646A24();
    sub_1A46501CC(&qword_1EB123788, sub_1A4646AA4, sub_1A4646E24);
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123390);
  }

  return result;
}

unint64_t sub_1A4646E24()
{
  result = qword_1EB123EC0;
  if (!qword_1EB123EC0)
  {
    sub_1A4646B4C();
    sub_1A3E33788();
    sub_1A3EE1D04();
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EC0);
  }

  return result;
}

uint64_t sub_1A4646F48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4646CA4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4646FCC()
{
  if (!qword_1EB123DD8)
  {
    sub_1A464704C();
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123DD8);
    }
  }
}

void sub_1A464704C()
{
  if (!qword_1EB121D38)
  {
    sub_1A4647124(255);
    type metadata accessor for PhotosDetailsTimeEditView();
    sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124);
    sub_1A46475D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D38);
    }
  }
}

void sub_1A4647158(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A524B764();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A46471C8()
{
  if (!qword_1EB1237A0)
  {
    sub_1A4647248();
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1237A0);
    }
  }
}

void sub_1A4647248()
{
  if (!qword_1EB123ED8)
  {
    sub_1A46472C8();
    sub_1A4646CA4(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123ED8);
    }
  }
}

void sub_1A46472C8()
{
  if (!qword_1EB121E68)
  {
    sub_1A4647C7C(255, &qword_1EB1286B0);
    sub_1A3EE1D04();
    sub_1A4650D14(&qword_1EB1286B8, &qword_1EB1286B0);
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E68);
    }
  }
}

unint64_t sub_1A46473D8()
{
  result = qword_1EB1237A8;
  if (!qword_1EB1237A8)
  {
    sub_1A46471C8();
    sub_1A4647478();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1237A8);
  }

  return result;
}

unint64_t sub_1A4647478()
{
  result = qword_1EB123EE0;
  if (!qword_1EB123EE0)
  {
    sub_1A4647248();
    sub_1A4647C7C(255, &qword_1EB1286B0);
    sub_1A3EE1D04();
    sub_1A4650D14(&qword_1EB1286B8, &qword_1EB1286B0);
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EE0);
  }

  return result;
}

void sub_1A4647674()
{
  if (!qword_1EB127338)
  {
    sub_1A464FE68(255, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127338);
    }
  }
}

unint64_t sub_1A4647700()
{
  result = qword_1EB122620;
  if (!qword_1EB122620)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122620);
  }

  return result;
}

void sub_1A4647874()
{
  if (!qword_1EB121E80)
  {
    sub_1A46478F8();
    sub_1A4647ED0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E80);
    }
  }
}

void sub_1A46478F8()
{
  if (!qword_1EB123C00)
  {
    sub_1A4647998();
    sub_1A4599300(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123C00);
    }
  }
}

void sub_1A4647998()
{
  if (!qword_1EB1218E8)
  {
    sub_1A4647A30(255);
    sub_1A46507B8(&qword_1EB1210B0, 255, sub_1A4647A30);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218E8);
    }
  }
}

void sub_1A4647A6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A4647AE8()
{
  if (!qword_1EB127D50)
  {
    sub_1A46510FC(255, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127D50);
    }
  }
}

void sub_1A4647BEC()
{
  if (!qword_1EB1282B0)
  {
    sub_1A4647C7C(255, &qword_1EB128528);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1282B0);
    }
  }
}

void sub_1A4647C7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A5249F54();
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A4647D18()
{
  if (!qword_1EB123180)
  {
    sub_1A4647D98();
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123180);
    }
  }
}

void sub_1A4647D98()
{
  if (!qword_1EB1233A0)
  {
    sub_1A4646AE0(255, &qword_1EB123798, sub_1A4647E50, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A4646CA4(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1233A0);
    }
  }
}

void sub_1A4647E50()
{
  if (!qword_1EB123ED0)
  {
    sub_1A46472C8();
    sub_1A4646CA4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123ED0);
    }
  }
}

unint64_t sub_1A4647ED0()
{
  result = qword_1EB123C08;
  if (!qword_1EB123C08)
  {
    sub_1A46478F8();
    sub_1A46507B8(&qword_1EB1218F0, 255, sub_1A4647998);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C08);
  }

  return result;
}

void sub_1A4647FFC()
{
  if (!qword_1EB121D30)
  {
    sub_1A46481A0();
    sub_1A4648A40(255);
    sub_1A46482B0();
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D30);
    }
  }
}

void sub_1A46481A0()
{
  if (!qword_1EB121EA8)
  {
    sub_1A46482B0();
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EA8);
    }
  }
}

void sub_1A46482B0()
{
  if (!qword_1EB1237E0)
  {
    sub_1A46510FC(255, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1237E0);
    }
  }
}

void sub_1A4648354()
{
  if (!qword_1EB121F40)
  {
    sub_1A464842C(255);
    sub_1A52489A4();
    sub_1A4648810();
    sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F40);
    }
  }
}

void sub_1A4648514()
{
  if (!qword_1EB121928)
  {
    sub_1A46485AC(255);
    sub_1A46507B8(&qword_1EB121130, 255, sub_1A46485AC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121928);
    }
  }
}

void sub_1A46485E0()
{
  if (!qword_1EB123308)
  {
    sub_1A44E10A0(255);
    sub_1A4648658(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123308);
    }
  }
}

void sub_1A46486A0()
{
  if (!qword_1EB123778)
  {
    sub_1A4646B4C();
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123778);
    }
  }
}

unint64_t sub_1A464875C()
{
  result = qword_1EB123BB0;
  if (!qword_1EB123BB0)
  {
    sub_1A46484D8(255);
    sub_1A46507B8(&qword_1EB121930, 255, sub_1A4648514);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BB0);
  }

  return result;
}

unint64_t sub_1A4648810()
{
  result = qword_1EB123C60;
  if (!qword_1EB123C60)
  {
    sub_1A464842C(255);
    sub_1A46507B8(&qword_1EB121B18, 255, sub_1A4648468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C60);
  }

  return result;
}

unint64_t sub_1A46488C4()
{
  result = qword_1EB123F50;
  if (!qword_1EB123F50)
  {
    sub_1A46510FC(255, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
    sub_1A464842C(255);
    sub_1A52489A4();
    sub_1A4648810();
    sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A46507B8(&qword_1EB1220F0, 255, sub_1A3E744F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F50);
  }

  return result;
}

uint64_t sub_1A4648A74(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4648AE4()
{
  v1 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241144();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_opt_self();
  v8 = sub_1A524C634();
  sub_1A4650B00(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v10;
  v11 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v32[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_1A4651348(v0, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeWidgetView);
  String.init(forType:)(v32);
  v13 = sub_1A524C634();

  *(inited + 48) = v13;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v14;
  v15 = *((*MEMORY[0x1E69E7D40] & **&v0[*(v11 + 28) + 8]) + 0x88);
  *(inited + 72) = v15();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F24E98();
  swift_arrayDestroy();
  sub_1A3C52C70(0, &qword_1EB12B160);
  v16 = sub_1A524C3D4();

  [v31 sendEvent:v8 withPayload:v16];

  v31 = v0;
  v17 = v27;
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  sub_1A46507B8(&qword_1EB12AB50, v18, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState);
  sub_1A5247EB4();
  v19 = v15();
  v20 = v28;
  v21 = v19;
  sub_1A3E944EC();
  v22 = *(v17 + 48);
  if (v22(v5, 1, v20) == 1)
  {
    v23 = v29;
    sub_1A5241134();
    if (v22(v5, 1, v20) != 1)
    {
      sub_1A3C42E10(v5, sub_1A3C41108);
    }
  }

  else
  {
    v24 = v29;
    (*(v17 + 32))(v29, v5, v20);
    v23 = v24;
  }

  type metadata accessor for PhotosDetailsTimeEditViewModel();
  v25 = v30;
  sub_1A3E9463C();
  sub_1A4916BD4(v21, 0, v23, v25);
}

double sub_1A464902C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4651180(0, &qword_1EB13F8B8, sub_1A46485AC);
  sub_1A46492B0(a1, a2 + *(v8 + 44));
  v9 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v10 = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v9 + 28) + 8)) + 0xC0))();
  [v10 contentGuideInsets];
  v12 = v11;

  LOBYTE(v10) = sub_1A524A064();
  sub_1A46484D8(0);
  v14 = a2 + *(v13 + 36);
  *v14 = v10;
  *(v14 + 8) = 0x4028000000000000;
  *(v14 + 16) = v12;
  *(v14 + 24) = xmmword_1A5352BB0;
  *(v14 + 40) = 0;
  sub_1A4248EC0(v7);
  sub_1A4394B64(v7, v9, &off_1EE6E6C90);
  v15 = *(v5 + 8);
  v15(v7, v4);
  sub_1A4248EC0(v7);
  v16 = sub_1A4394B64(v7, v9, &off_1EE6E6C90);
  (v15)(v7, v4, v16);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A464849C(0);
  v18 = (a2 + *(v17 + 36));
  v19 = v21[1];
  *v18 = v21[0];
  v18[1] = v19;
  result = *&v22;
  v18[2] = v22;
  return result;
}

uint64_t sub_1A46492B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v141 = a2;
  sub_1A3EE1D04();
  v124 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v132 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0);
  v129 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v126 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = v114 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v128 = v114 - v9;
  sub_1A3E33788();
  v130 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v131 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646BCC();
  v123 = v12;
  v121 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v119 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646B4C();
  v118 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v122 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46486A0();
  v140 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v120 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v125 = v114 - v19;
  sub_1A46510FC(0, &qword_1EB13F8C0, sub_1A46486A0, sub_1A464760C, MEMORY[0x1E697F948]);
  v135 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v137 = (v114 - v21);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5241144();
  v142 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v133 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4648658(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v139 = v114 - v31;
  sub_1A44E10A0(0);
  v33 = v32 - 8;
  MEMORY[0x1EEE9AC00](v32);
  v138 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v114 - v36;
  v38 = sub_1A524B544();
  v39 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  *&v149 = v38;
  *(&v149 + 1) = KeyPath;
  *&v150 = v39;
  sub_1A429B9D8();
  sub_1A3E7440C();
  sub_1A524AAE4();

  v41 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v42 = v143;
  sub_1A524BC74();
  sub_1A52481F4();
  v43 = *(v33 + 44);
  v136 = v37;
  v44 = &v37[v43];
  v45 = v150;
  *v44 = v149;
  *(v44 + 1) = v45;
  *(v44 + 2) = v151;
  v46 = *(v42 + *(v41 + 28) + 8);
  sub_1A3E944EC();
  v47 = *(v142 + 48);
  v134 = v25;
  if (v47(v24, 1, v25) == 1)
  {
    sub_1A3C42E10(v24, sub_1A3C41108);
    sub_1A464E964(v143, &v146);
    v48 = v147;
    v49 = v137;
    *v137 = v146;
    *(v49 + 16) = v48;
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46506BC();
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C);
    v50 = v139;
    sub_1A5249744();
LABEL_8:
    v108 = v136;
    v109 = v138;
    sub_1A4651348(v136, v138, sub_1A44E10A0);
    sub_1A46511F4(v50, v29, sub_1A4648658);
    v110 = v141;
    sub_1A4651348(v109, v141, sub_1A44E10A0);
    sub_1A46485E0();
    v112 = v111;
    sub_1A46511F4(v29, v110 + *(v111 + 48), sub_1A4648658);
    v113 = v110 + *(v112 + 64);
    *v113 = 0;
    *(v113 + 8) = 1;
    sub_1A465125C(v50, sub_1A4648658);
    sub_1A3C42E10(v108, sub_1A44E10A0);
    sub_1A465125C(v29, sub_1A4648658);
    return sub_1A3C42E10(v109, sub_1A44E10A0);
  }

  v114[0] = v29;
  v51 = *(v142 + 32);
  v117 = v41;
  v52 = v133;
  v51(v133, v24, v134);
  *&v146 = sub_1A3E96F4C(v52);
  *(&v146 + 1) = v53;
  v114[1] = sub_1A3D5F9DC();
  v54 = sub_1A524A464();
  v115 = v55;
  v116 = v56;
  *&v146 = v54;
  *(&v146 + 1) = v55;
  v58 = v57 & 1;
  v147 = v57 & 1;
  v148 = v56;
  v59 = sub_1A524C634();
  v60 = PXLocalizedString(v59);

  v61 = sub_1A524C674();
  v63 = v62;

  v144 = v61;
  v145 = v63;
  v64 = sub_1A524A464();
  v66 = v65;
  v68 = v67;
  v69 = v126;
  sub_1A524AAC4();
  sub_1A3E04DF4(v64, v66, v68 & 1);

  sub_1A3E04DF4(v54, v115, v58);

  v116 = v46;
  *&v146 = sub_1A3E97904();
  *(&v146 + 1) = v70;
  v71 = sub_1A524A464();
  v73 = v72;
  LOBYTE(v52) = v74;
  v75 = v127;
  sub_1A5248774();
  sub_1A3E04DF4(v71, v73, v52 & 1);

  sub_1A465075C(v69, &qword_1EB1286B0);
  v76 = sub_1A524C634();
  v77 = PXLocalizedString(v76);

  v78 = sub_1A524C674();
  v80 = v79;

  *&v146 = v78;
  *(&v146 + 1) = v80;
  v81 = sub_1A524A464();
  v83 = v82;
  LOBYTE(v69) = v84;
  v85 = v128;
  sub_1A5248754();
  sub_1A3E04DF4(v81, v83, v69 & 1);

  sub_1A465075C(v75, &qword_1EB1286B0);
  v86 = v131;
  sub_1A5248744();
  sub_1A465075C(v85, &qword_1EB1286B0);
  v87 = (v143 + *(v117 + 36));
  v88 = *v87;
  v89 = *(v87 + 1);
  LOBYTE(v146) = *v87;
  *(&v146 + 1) = v89;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v90 = sub_1A47A62E4(v144);
  v91 = swift_getKeyPath();
  v92 = (v86 + *(v130 + 36));
  *v92 = v91;
  v92[1] = v90;
  v93 = *MEMORY[0x1E697E6D0];
  v94 = sub_1A52486A4();
  v95 = v132;
  (*(*(v94 - 8) + 104))(v132, v93, v94);
  sub_1A46507B8(&unk_1EB1288C0, 255, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    v97 = v119;
    sub_1A524AB84();
    sub_1A3C42E10(v95, sub_1A3EE1D04);
    v98 = sub_1A3C42E10(v86, sub_1A3E33788);
    if ((*((*MEMORY[0x1E69E7D40] & *v116) + 0x140))(v98) == 5)
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }

    v100 = swift_getKeyPath();
    v101 = v122;
    (*(v121 + 32))(v122, v97, v123);
    v102 = v101 + *(v118 + 36);
    *v102 = v100;
    *(v102 + 8) = v99;
    *(v102 + 16) = 0;
    LOBYTE(v146) = v88;
    *(&v146 + 1) = v89;
    sub_1A524B6A4();
    v103 = sub_1A47A64C4(v144);
    v104 = swift_getKeyPath();
    v105 = v120;
    sub_1A46512BC(v101, v120, sub_1A4646B4C);
    v106 = (v105 + *(v140 + 36));
    *v106 = v104;
    v106[1] = v103;
    v107 = v125;
    sub_1A46512BC(v105, v125, sub_1A46486A0);
    sub_1A46511F4(v107, v137, sub_1A46486A0);
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46506BC();
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C);
    v50 = v139;
    sub_1A5249744();
    sub_1A465125C(v107, sub_1A46486A0);
    (*(v142 + 8))(v133, v134);
    v29 = v114[0];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A464A200@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosDetailsTimeEditView();
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsTimeWidgetView();
  if (sub_1A3E948B8())
  {
    sub_1A464A368(v4);
    sub_1A465044C(v4, a1, type metadata accessor for PhotosDetailsTimeEditView);
    return (*(v8 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v6 = *(v8 + 56);

    return v6(a1, 1, 1, v2);
  }
}

uint64_t sub_1A464A368@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = v3;
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241144();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(v2 + 32) + 16);
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  v13 = sub_1A46507B8(&qword_1EB12AB50, v12, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState);
  v14 = sub_1A5247EB4();
  v15 = (*(*v14 + 88))(v14);

  if (!v15)
  {
    v30 = v13;
    v31 = v1;
    v29 = v11;
    v20 = v32;
    v28 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v2 + 28) + 8)) + 0x88))(v16);
    v21 = v33;
    sub_1A3E944EC();
    v22 = *(v34 + 48);
    if (v22(v21, 1, v35) == 1)
    {
      v23 = v10;
      sub_1A5241134();
      v24 = v20;
      if (v22(v21, 1, v35) != 1)
      {
        sub_1A3C42E10(v21, sub_1A3C41108);
      }
    }

    else
    {
      v23 = v10;
      (*(v34 + 32))(v10, v21, v35);
      v24 = v20;
    }

    type metadata accessor for PhotosDetailsTimeEditViewModel();
    sub_1A3E9463C();
    sub_1A4916BD4(v28, 0, v23, v24);
  }

  v17 = sub_1A5247EB4();
  v18 = (*(*v17 + 88))(v17);

  if (v18)
  {

    v25 = v38;
    sub_1A4651348(v1, v38, type metadata accessor for PhotosDetailsTimeWidgetView);
    v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v27 = swift_allocObject();
    sub_1A465044C(v25, v27 + v26, type metadata accessor for PhotosDetailsTimeWidgetView);
    sub_1A3F1D4BC(sub_1A46504B4, v27, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A464A870(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46478F8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647874();
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A4646760();
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  *v14 = sub_1A5249314();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1A46509F4();
  sub_1A464ACC4(a1, &v14[*(v15 + 44)]);
  *v7 = sub_1A52492F4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A4651180(0, &qword_1EB124500, sub_1A4647A30);
  sub_1A464B2A8(a1, &v7[*(v16 + 44)]);
}

uint64_t sub_1A464ACC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1A5241534();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646808();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  sub_1A46510FC(0, &qword_1EB122BB0, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F948]);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5241144();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a1 + *(type metadata accessor for PhotosDetailsTimeWidgetView() + 28) + 8);
  sub_1A3E944EC();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1A3C42E10(v17, sub_1A3C41108);
    sub_1A464E964(a1, &v35);
    v23 = v36;
    *v14 = v35;
    v14[16] = v23;
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C);
    return sub_1A5249744();
  }

  else
  {
    v29 = v12;
    (*(v19 + 32))(v21, v17, v18);
    v25 = sub_1A3E9463C();
    if ((*((*MEMORY[0x1E69E7D40] & *v22) + 0x140))(v25) == 5)
    {
      v26 = sub_1A5249314();
    }

    else
    {
      v26 = sub_1A52492F4();
    }

    *v8 = v26;
    *(v8 + 1) = 0;
    v8[16] = 1;
    sub_1A4651180(0, &qword_1EB124538, sub_1A46468A0);
    sub_1A464D490(a1, v21, &v8[*(v27 + 44)]);
    (*(v30 + 8))(v5, v31);
    v28 = v32;
    sub_1A46512BC(v8, v32, sub_1A4646808);
    sub_1A46511F4(v28, v14, sub_1A4646808);
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C);
    sub_1A5249744();
    sub_1A465125C(v28, sub_1A4646808);
    return (*(v19 + 8))(v21, v18);
  }
}

void sub_1A464B2A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  sub_1A3EE1D04();
  v202 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v213 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0);
  v212 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v209 = v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v210 = v180 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v211 = v180 - v10;
  sub_1A4647D18();
  v203 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v205 = v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v204 = v180 - v14;
  sub_1A4646AE0(0, &qword_1EB127F20, sub_1A4647BEC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v182 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v183 = v180 - v16;
  sub_1A4647CDC(0);
  v199 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v184 = v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E697F948];
  sub_1A4650B64(0, &qword_1EB127EF0, MEMORY[0x1E697F948]);
  v195 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v198 = v180 - v21;
  sub_1A4650BF0(0, &qword_1EB127F18, v19);
  v185 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v186 = v180 - v23;
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  v197 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v187 = v180 - v25;
  v189 = sub_1A5249524();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v27 = v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB128528);
  v200 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v180 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v190 = v180 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v191 = v180 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v192 = v180 - v39;
  sub_1A4647BEC();
  v194 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v193 = v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647BCC(0);
  v207 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v196 = v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46510FC(0, &qword_1EB127F28, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F948]);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v180 - v46;
  sub_1A4647B84(0);
  v49 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v180 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647AE8();
  MEMORY[0x1EEE9AC00](v52 - 8);
  v201 = v180 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v180 - v55;
  v57 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v58 = *(a1 + *(v57 + 28) + 8);
  v59 = *(v58 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isSyndicatedGuestAsset) == 1;
  v215 = a1;
  v216 = v56;
  v214 = v57;
  v208 = v58;
  if (v59)
  {
    v60 = v57;
    v61 = sub_1A524B544();
    v62 = (a1 + *(v60 + 36));
    v63 = *v62;
    v64 = *(v62 + 1);
    LOBYTE(v218) = v63;
    v219 = v64;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v65 = sub_1A4411728(v217);
    KeyPath = swift_getKeyPath();
    v218 = v61;
    v219 = KeyPath;
    v220 = v65;
    sub_1A429B9D8();
    sub_1A3E7440C();
    sub_1A524AAE4();

    sub_1A4651348(v51, v47, sub_1A4647B84);
    swift_storeEnumTagMultiPayload();
    sub_1A4650ED0();
    sub_1A4650F84();
    sub_1A5249744();
    sub_1A3C42E10(v51, sub_1A4647B84);
    sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    v68 = v67;
    v69 = *(*(v67 - 8) + 56);
    v70 = v56;
LABEL_16:
    v69(v70, 0, 1, v68);
LABEL_17:
    v179 = *(v208 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_fileName + 8);
    v218 = *(v208 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_fileName);
    v219 = v179;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v180[0] = v45;
  v180[1] = v49;
  v181 = v47;
  if (*(v58 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isiCloudEnabled) != 1)
  {
    sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    (*(*(v115 - 8) + 56))(v216, 1, 1, v115);
    goto LABEL_17;
  }

  v71 = sub_1A3E94388();
  if (v71 < 2)
  {
    v218 = sub_1A524B544();
    sub_1A52494F4();
    v116 = v190;
    sub_1A524AAA4();
    (*(v188 + 8))(v27, v189);

    v117 = sub_1A524C634();
    v118 = PXLocalizedString(v117);

    v119 = sub_1A524C674();
    v121 = v120;

    v218 = v119;
    v219 = v121;
    sub_1A3D5F9DC();
    v122 = sub_1A524A464();
    v124 = v123;
    v126 = v125;
    v127 = v191;
    sub_1A5248764();
    sub_1A3E04DF4(v122, v124, v126 & 1);

    sub_1A465075C(v116, &qword_1EB128528);
    v128 = sub_1A524C634();
    v129 = PXLocalizedString(v128);

    v130 = sub_1A524C674();
    v132 = v131;

    v218 = v130;
    v219 = v132;
    v133 = sub_1A524A464();
    v135 = v134;
    LOBYTE(v132) = v136;
    v137 = v192;
    sub_1A5248774();
    sub_1A3E04DF4(v133, v135, v132 & 1);

    sub_1A465075C(v127, &qword_1EB128528);
    v138 = v193;
    sub_1A5248744();
    sub_1A465075C(v137, &qword_1EB128528);
    v139 = (v215 + *(v214 + 36));
    v140 = *v139;
    v141 = *(v139 + 1);
    LOBYTE(v218) = v140;
    v219 = v141;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v142 = sub_1A4411728(v217);
    v143 = swift_getKeyPath();
    v144 = (v138 + *(v194 + 36));
    *v144 = v143;
    v144[1] = v142;
    sub_1A4651348(v138, v183, sub_1A4647BEC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650C54();
    v145 = v184;
    sub_1A5249744();
    sub_1A4651348(v145, v198, sub_1A4647CDC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650DBC();
    sub_1A4650E50();
    v113 = v196;
    sub_1A5249744();
    sub_1A3C42E10(v145, sub_1A4647CDC);
  }

  else
  {
    if (v71 - 3 < 2)
    {
      v218 = sub_1A524B544();
      sub_1A52494F4();
      sub_1A524AAA4();
      v72 = *(v188 + 8);
      v73 = v189;
      v72(v27, v189);

      sub_1A5249504();
      sub_1A5248784();
      v72(v27, v73);
      sub_1A465075C(v30, &qword_1EB128528);
      v74 = sub_1A524C634();
      v75 = PXLocalizedString(v74);

      v76 = sub_1A524C674();
      v78 = v77;

      v218 = v76;
      v219 = v78;
      sub_1A3D5F9DC();
      v79 = sub_1A524A464();
      v81 = v80;
      v83 = v82;
      v84 = v190;
      sub_1A5248764();
      sub_1A3E04DF4(v79, v81, v83 & 1);

      sub_1A465075C(v33, &qword_1EB128528);
      v85 = sub_1A524C634();
      v86 = PXLocalizedString(v85);

      v87 = sub_1A524C674();
      v89 = v88;

      v218 = v87;
      v219 = v89;
      v90 = sub_1A524A464();
      v92 = v91;
      LOBYTE(v79) = v93;
      v94 = v191;
      sub_1A5248754();
      sub_1A3E04DF4(v90, v92, v79 & 1);

      sub_1A465075C(v84, &qword_1EB128528);
      v95 = sub_1A524C634();
      v96 = PXLocalizedString(v95);

      v97 = sub_1A524C674();
      v99 = v98;

      v218 = v97;
      v219 = v99;
      v100 = sub_1A524A464();
      v102 = v101;
      LOBYTE(v75) = v103;
      v104 = v192;
      sub_1A5248774();
      sub_1A3E04DF4(v100, v102, v75 & 1);

      sub_1A465075C(v94, &qword_1EB128528);
      v105 = v193;
      sub_1A5248744();
      sub_1A465075C(v104, &qword_1EB128528);
      v106 = (v215 + *(v214 + 36));
      v107 = *v106;
      v108 = *(v106 + 1);
      LOBYTE(v218) = v107;
      v219 = v108;
      sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v109 = sub_1A444872C();
      v110 = swift_getKeyPath();
      v111 = (v105 + *(v194 + 36));
      *v111 = v110;
      v111[1] = v109;
      sub_1A4651348(v105, v186, sub_1A4647BEC);
      swift_storeEnumTagMultiPayload();
      sub_1A4650C54();
      v112 = v187;
      sub_1A5249744();
      sub_1A4651004(v112, v198);
      swift_storeEnumTagMultiPayload();
      sub_1A4650DBC();
      sub_1A4650E50();
      v113 = v196;
      sub_1A5249744();
      sub_1A4651084(v112);
      v114 = sub_1A4647BEC;
LABEL_14:
      v175 = v114;
      v176 = v105;
      goto LABEL_15;
    }

    if (v71 != 2)
    {
      swift_storeEnumTagMultiPayload();
      sub_1A4650C54();
      v105 = v184;
      sub_1A5249744();
      sub_1A4651348(v105, v198, sub_1A4647CDC);
      swift_storeEnumTagMultiPayload();
      sub_1A4650DBC();
      sub_1A4650E50();
      v113 = v196;
      sub_1A5249744();
      v114 = sub_1A4647CDC;
      goto LABEL_14;
    }

    v218 = sub_1A524B544();
    sub_1A52494F4();
    v146 = v190;
    sub_1A524AAA4();
    (*(v188 + 8))(v27, v189);

    v147 = sub_1A524C634();
    v148 = PXLocalizedString(v147);

    v149 = sub_1A524C674();
    v151 = v150;

    v218 = v149;
    v219 = v151;
    sub_1A3D5F9DC();
    v152 = sub_1A524A464();
    v154 = v153;
    v156 = v155;
    v157 = v191;
    sub_1A5248764();
    sub_1A3E04DF4(v152, v154, v156 & 1);

    sub_1A465075C(v146, &qword_1EB128528);
    v158 = sub_1A524C634();
    v159 = PXLocalizedString(v158);

    v160 = sub_1A524C674();
    v162 = v161;

    v218 = v160;
    v219 = v162;
    v163 = sub_1A524A464();
    v165 = v164;
    LOBYTE(v159) = v166;
    v167 = v192;
    sub_1A5248774();
    sub_1A3E04DF4(v163, v165, v159 & 1);

    sub_1A465075C(v157, &qword_1EB128528);
    v138 = v193;
    sub_1A5248744();
    sub_1A465075C(v167, &qword_1EB128528);
    v168 = (v215 + *(v214 + 36));
    v169 = *v168;
    v170 = *(v168 + 1);
    LOBYTE(v218) = v169;
    v219 = v170;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v171 = sub_1A4411728(v217);
    v172 = swift_getKeyPath();
    v173 = (v138 + *(v194 + 36));
    *v173 = v172;
    v173[1] = v171;
    sub_1A4651348(v138, v186, sub_1A4647BEC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650C54();
    v174 = v187;
    sub_1A5249744();
    sub_1A4651004(v174, v198);
    swift_storeEnumTagMultiPayload();
    sub_1A4650DBC();
    sub_1A4650E50();
    v113 = v196;
    sub_1A5249744();
    sub_1A4651084(v174);
  }

  v175 = sub_1A4647BEC;
  v176 = v138;
LABEL_15:
  sub_1A3C42E10(v176, v175);
  v177 = v216;
  sub_1A4651348(v113, v181, sub_1A4647BCC);
  swift_storeEnumTagMultiPayload();
  sub_1A4650ED0();
  sub_1A4650F84();
  sub_1A5249744();
  sub_1A3C42E10(v113, sub_1A4647BCC);
  sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
  v68 = v178;
  v69 = *(*(v178 - 8) + 56);
  v70 = v177;
  goto LABEL_16;
}

void sub_1A464D0E4()
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsTimeWidgetView();
  if (sub_1A3E94388() == 3 || sub_1A3E94388() == 4)
  {
    v7 = [objc_opt_self() px:216 builtInAlbumNameForSubtype:?];
    if (!v7)
    {
LABEL_6:
      sub_1A524D244();
      v13 = sub_1A475874C();
      swift_beginAccess();
      v14 = *v13;
      sub_1A5246DF4();

      return;
    }

    v8 = v7;
    v9 = sub_1A524C674();
    v11 = v10;

    sub_1A4650B00(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A52F8E10;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1A3D710E8();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1A524C6C4();
    sub_1A5240E34();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_1A3C42E10(v2, sub_1A3EE53E0);
      goto LABEL_6;
    }

    (*(v4 + 32))(v6, v2, v3);
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v16 = v15;

      v17 = sub_1A5240D44();
      v18 = [v16 openSensitiveURL:v17 withOptions:0];

      if ((v18 & 1) == 0)
      {
        sub_1A524D244();
        v19 = sub_1A475874C();
        swift_beginAccess();
        v20 = *v19;
        sub_1A5246DF4();
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A464D490@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v126 = a2;
  v133 = a1;
  v123 = a3;
  sub_1A4646FCC();
  v120 = v5;
  v119 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646F98(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v103 - v10;
  sub_1A3EE1D04();
  v113 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0);
  v131 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v103 - v17;
  sub_1A3E33788();
  v128 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646BCC();
  v112 = v20;
  v111 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646B4C();
  v107 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646AA4(0);
  v105 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646A24();
  v115 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464694C();
  v118 = v28;
  v117 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v116 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v103 - v31;
  v127 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v32 = *(a1 + *(v127 + 28) + 8);
  v136 = sub_1A3E96F4C(v3);
  v137 = v33;
  sub_1A3D5F9DC();
  v34 = sub_1A524A464();
  v124 = v35;
  v125 = v36;
  v136 = v34;
  v137 = v35;
  LOBYTE(v3) = v37 & 1;
  v138 = v37 & 1;
  v139 = v36;
  v38 = sub_1A524C634();
  v39 = PXLocalizedString(v38);

  v40 = sub_1A524C674();
  v42 = v41;

  v134 = v40;
  v135 = v42;
  v43 = sub_1A524A464();
  v45 = v44;
  v47 = v46;
  sub_1A524AAC4();
  sub_1A3E04DF4(v43, v45, v47 & 1);

  sub_1A3E04DF4(v34, v124, v3);

  v126 = v32;
  v136 = sub_1A3E97904();
  v137 = v48;
  v49 = v128;
  v50 = sub_1A524A464();
  v52 = v51;
  LOBYTE(v32) = v53;
  v54 = v130;
  sub_1A5248774();
  v55 = v52;
  v56 = v132;
  sub_1A3E04DF4(v50, v55, v32 & 1);
  v57 = v129;

  sub_1A465075C(v15, &qword_1EB1286B0);
  sub_1A5248744();
  sub_1A465075C(v54, &qword_1EB1286B0);
  v58 = (v133 + *(v127 + 36));
  v59 = *v58;
  v60 = *(v58 + 1);
  LOBYTE(v136) = *v58;
  v137 = v60;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v61 = sub_1A47A62E4(v134);
  KeyPath = swift_getKeyPath();
  v63 = (v57 + *(v49 + 36));
  *v63 = KeyPath;
  v63[1] = v61;
  v64 = *MEMORY[0x1E697E6D0];
  v65 = sub_1A52486A4();
  (*(*(v65 - 8) + 104))(v56, v64, v65);
  sub_1A46507B8(&unk_1EB1288C0, 255, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04);
    v67 = v108;
    sub_1A524AB84();
    sub_1A3C42E10(v56, sub_1A3EE1D04);
    v68 = sub_1A3C42E10(v57, sub_1A3E33788);
    if ((*((*MEMORY[0x1E69E7D40] & *v126) + 0x140))(v68) == 5)
    {
      v69 = 1;
    }

    else
    {
      v69 = 2;
    }

    v70 = swift_getKeyPath();
    v71 = v106;
    (*(v111 + 32))(v106, v67, v112);
    v72 = v71 + *(v107 + 36);
    *v72 = v70;
    *(v72 + 8) = v69;
    *(v72 + 16) = 0;
    v73 = v109;
    sub_1A46512BC(v71, v109, sub_1A4646B4C);
    *(v73 + *(v105 + 36)) = 256;
    LODWORD(v132) = v59;
    LOBYTE(v136) = v59;
    v137 = v60;
    sub_1A524B6A4();
    v74 = sub_1A47A64C4(v134);
    v75 = swift_getKeyPath();
    v76 = v114;
    v77 = sub_1A46512BC(v73, v114, sub_1A4646AA4);
    v78 = (v76 + *(v115 + 36));
    *v78 = v75;
    v78[1] = v74;
    MEMORY[0x1EEE9AC00](v77);
    *(&v103 - 2) = v133;
    sub_1A4646D10(0);
    sub_1A4646D4C();
    sub_1A46507B8(&qword_1EB1270B8, 255, sub_1A4646D10);
    v79 = v110;
    sub_1A524A954();
    sub_1A465125C(v76, sub_1A4646A24);
    v80 = sub_1A3E948B8();
    v81 = 1;
    v82 = v121;
    v83 = v120;
    if (v80)
    {
      v84 = sub_1A524C634();
      v85 = PXLocalizedString(v84);

      v86 = sub_1A524C674();
      v88 = v87;

      v89 = v104;
      sub_1A464E60C(v86, v88, v104);

      LOBYTE(v136) = v132;
      v137 = v60;
      sub_1A524B6A4();
      v90 = sub_1A47A64B0(v134);
      v91 = swift_getKeyPath();
      v92 = (v89 + *(v83 + 36));
      *v92 = v91;
      v92[1] = v90;
      sub_1A46512BC(v89, v82, sub_1A4646FCC);
      v81 = 0;
    }

    (*(v119 + 56))(v82, v81, 1, v83);
    v93 = v117;
    v94 = *(v117 + 16);
    v95 = v116;
    v96 = v118;
    v94(v116, v79, v118);
    LOBYTE(v136) = 1;
    v97 = v122;
    sub_1A46511F4(v82, v122, sub_1A4646F98);
    v98 = v123;
    v94(v123, v95, v96);
    sub_1A46468D4();
    v100 = &v98[*(v99 + 48)];
    v101 = v136;
    *v100 = 0;
    v100[8] = v101;
    sub_1A46511F4(v97, &v98[*(v99 + 64)], sub_1A4646F98);
    sub_1A465125C(v82, sub_1A4646F98);
    v102 = *(v93 + 8);
    v102(v79, v96);
    sub_1A465125C(v97, sub_1A4646F98);
    return (v102)(v95, v96);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A464E144@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v4 = v3 - 8;
  v41[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41[1] = v5;
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41C3F80();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  sub_1A3D93850();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  v19 = sub_1A524C634();
  v20 = PXLocalizedString(v19);

  v21 = sub_1A524C674();
  v23 = v22;

  v46 = v21;
  v47 = v23;
  v24 = *(v4 + 36);
  v43 = a1;
  v25 = *(a1 + v24 + 8);
  *(swift_allocObject() + 16) = v25;
  sub_1A3D5F9DC();
  v25;
  sub_1A524B754();
  if (sub_1A3E96EC8())
  {
    v26 = sub_1A524C634();
    v27 = PXLocalizedString(v26);

    v28 = sub_1A524C674();
    v30 = v29;

    v46 = v28;
    v47 = v30;
    v31 = v42;
    sub_1A4651348(v43, v42, type metadata accessor for PhotosDetailsTimeWidgetView);
    v32 = (*(v41[0] + 80) + 16) & ~*(v41[0] + 80);
    v33 = swift_allocObject();
    sub_1A465044C(v31, v33 + v32, type metadata accessor for PhotosDetailsTimeWidgetView);
    sub_1A524B754();
    (*(v13 + 32))(v10, v15, v12);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v13 + 56))(v10, v34, 1, v12);
  v35 = *(v13 + 16);
  v35(v15, v18, v12);
  v36 = v44;
  sub_1A4651348(v10, v44, sub_1A41C3F80);
  v37 = v45;
  v35(v45, v15, v12);
  sub_1A4647A6C(0, &unk_1EB127460, sub_1A3D93850, sub_1A41C3F80);
  sub_1A4651348(v36, &v37[*(v38 + 48)], sub_1A41C3F80);
  sub_1A3C42E10(v10, sub_1A41C3F80);
  v39 = *(v13 + 8);
  v39(v18, v12);
  sub_1A3C42E10(v36, sub_1A41C3F80);
  return (v39)(v15, v12);
}

uint64_t sub_1A464E60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = a2;
  v27 = a3;
  v6 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4647124(0);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v23 = type metadata accessor for PhotosDetailsTimeWidgetView;
  v24 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4651348(v4, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsTimeWidgetView);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1A465044C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PhotosDetailsTimeWidgetView);
  v28 = a1;
  v29 = v22;
  v30 = v4;
  sub_1A46471C8();
  sub_1A46473D8();
  sub_1A524B704();
  v15 = v4 + *(v7 + 48);
  v16 = *v15;
  v17 = *(v15 + 8);
  v31 = v16;
  v32 = v17;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A4651348(v4, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v18 = swift_allocObject();
  sub_1A465044C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13, type metadata accessor for PhotosDetailsTimeWidgetView);
  type metadata accessor for PhotosDetailsTimeEditView();
  sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124);
  sub_1A46475D4();
  v19 = v24;
  v20 = v25;
  sub_1A524B1B4();

  return (*(v26 + 8))(v19, v20);
}

uint64_t sub_1A464E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4646FCC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  v11 = sub_1A524C634();
  v12 = PXLocalizedString(v11);

  v13 = sub_1A524C674();
  v15 = v14;

  sub_1A464E60C(v13, v15, v10);

  v16 = a1 + *(type metadata accessor for PhotosDetailsTimeWidgetView() + 36);
  v17 = *v16;
  v18 = *(v16 + 8);
  v24[16] = v17;
  v25 = v18;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v19 = sub_1A47A64B0(v24[15]);
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(v5 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_1A46511F4(v10, v7, sub_1A4646FCC);
  sub_1A4650800();
  v22 = sub_1A524B8E4();
  result = sub_1A465125C(v10, sub_1A4646FCC);
  *a2 = v22;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void sub_1A464EB50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12[2] = a3;
  v12[3] = a4;
  sub_1A3EE1D04();
  v12[1] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5249524();
  MEMORY[0x1EEE9AC00](v13);
  sub_1A4647C7C(0, &qword_1EB1286B0);
  v14 = v8;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v12 - v11;
  v17 = a1;
  v18 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A464F0D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v4 = a2;
  v45 = a2;
  v44[1] = a1;
  sub_1A464F704(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46510FC(0, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - v11;
  sub_1A464F8D0();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464F974(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = v8;
  sub_1A5249BD4();
  v21 = sub_1A524A064();
  sub_1A5247BC4();
  v22 = &v8[*(v6 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v49 = v4;
  v50 = v47;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v48)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = &v12[*(v10 + 44)];
  sub_1A464F740();
  v30 = v29;
  v31 = &v28[*(v29 + 52)];
  v32 = *(sub_1A5248A14() + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1A52494A4();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #2.0 }

  *v31 = _Q0;
  *v28 = 3;
  *(v28 + 2) = v27;
  *&v28[*(v30 + 56)] = 256;
  sub_1A465044C(v44[0], v12, sub_1A464F704);
  if (sub_1A5249BE4())
  {
    v40 = 0.5;
  }

  else
  {
    v40 = 1.0;
  }

  sub_1A464F9B0(v12, v16);
  *&v16[*(v14 + 44)] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v45;
  *(v41 + 24) = v47;
  sub_1A465044C(v16, v20, sub_1A464F8D0);
  v42 = &v20[*(v18 + 44)];
  *v42 = sub_1A464FA58;
  v42[1] = v41;
  sub_1A465044C(v20, v46, sub_1A464F974);
}

void sub_1A464F4AC()
{
  type metadata accessor for PhotosDetailsTimeWidgetView();
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B6B4();
  sub_1A4644FF4(v0);
}

unint64_t sub_1A464F5D8()
{
  result = qword_1EB123B08;
  if (!qword_1EB123B08)
  {
    sub_1A46465F4(255);
    sub_1A46507B8(&qword_1EB1216D0, 255, sub_1A4646630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B08);
  }

  return result;
}

uint64_t sub_1A464F694@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosDetailsTimeWidgetView();

  return sub_1A464A200(a1);
}

void sub_1A464F740()
{
  if (!qword_1EB13F860)
  {
    sub_1A464F834();
    sub_1A5248A14();
    sub_1A46507B8(&qword_1EB13F870, 255, sub_1A464F834);
    sub_1A46507B8(&qword_1EB128090, 255, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F860);
    }
  }
}

void sub_1A464F834()
{
  if (!qword_1EB13F868)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    sub_1A4599368();
    v0 = sub_1A52494C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F868);
    }
  }
}

void sub_1A464F8D0()
{
  if (!qword_1EB13F878)
  {
    sub_1A46510FC(255, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F878);
    }
  }
}

uint64_t sub_1A464F9B0(uint64_t a1, uint64_t a2)
{
  sub_1A46510FC(0, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A464FAE8(uint64_t a1)
{
  result = sub_1A46507B8(&qword_1EB12AB48, 255, type metadata accessor for PhotosDetailsTimeWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A464FB88()
{
  sub_1A4650B00(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4650B00(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A464FD1C();
      if (v2 <= 0x3F)
      {
        sub_1A464FDB4();
        if (v3 <= 0x3F)
        {
          sub_1A464FE68(319, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A464FE68(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A464FD1C()
{
  if (!qword_1EB1243C0)
  {
    type metadata accessor for PhotosDetailsTimeWidgetViewModel();
    sub_1A46507B8(&qword_1EB12AA58, 255, type metadata accessor for PhotosDetailsTimeWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243C0);
    }
  }
}

void sub_1A464FDB4()
{
  if (!qword_1EB124668)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
    sub_1A46507B8(&qword_1EB12AB50, v0, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState);
    v1 = sub_1A5247ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124668);
    }
  }
}

void sub_1A464FE68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A464FEC8()
{
  result = qword_1EB122670;
  if (!qword_1EB122670)
  {
    sub_1A46510FC(255, &qword_1EB122668, sub_1A4647FFC, sub_1A4647FC0, MEMORY[0x1E697F960]);
    sub_1A46481A0();
    sub_1A4648A40(255);
    sub_1A46482B0();
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4);
    swift_getOpaqueTypeConformance2();
    sub_1A46501CC(&qword_1EB1232A8, sub_1A4647FC0, sub_1A464F59C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122670);
  }

  return result;
}

unint64_t sub_1A4650114()
{
  result = qword_1EB13F888;
  if (!qword_1EB13F888)
  {
    sub_1A464F974(255);
    sub_1A46501CC(&qword_1EB13F890, sub_1A464F8D0, sub_1A465024C);
    sub_1A46503F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F888);
  }

  return result;
}

uint64_t sub_1A46501CC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A465024C()
{
  result = qword_1EB13F898;
  if (!qword_1EB13F898)
  {
    sub_1A46510FC(255, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
    sub_1A4650344();
    sub_1A46507B8(&qword_1EB13F8A8, 255, sub_1A464F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F898);
  }

  return result;
}

unint64_t sub_1A4650344()
{
  result = qword_1EB13F8A0;
  if (!qword_1EB13F8A0)
  {
    sub_1A464F704(255);
    sub_1A46507B8(&qword_1EB122220, 255, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8A0);
  }

  return result;
}

unint64_t sub_1A46503F8()
{
  result = qword_1EB13F8B0;
  if (!qword_1EB13F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8B0);
  }

  return result;
}

uint64_t sub_1A465044C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A46504B4(uint64_t a1, double a2)
{
  v5 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & **(v2 + *(v5 + 28) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + 8)) + 0x88))();
  v7 = [objc_opt_self() arrayWithObject_];

  v8 = objc_allocWithZone(PXChangeAssetDateAction);
  v12 = v7;
  v9 = sub_1A5241514();
  v10 = [v8 initWithAssets:v12 dateOffset:v9 timeZone:a2];

  if (v10)
  {
    aBlock[4] = PXDisplayCollectionDetailedCountsMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_234;
    v11 = _Block_copy(aBlock);
    [v10 executeWithUndoManager:a1 completionHandler:v11];

    _Block_release(v11);
  }

  else
  {
  }
}

unint64_t sub_1A46506BC()
{
  result = qword_1EB13F8C8;
  if (!qword_1EB13F8C8)
  {
    sub_1A46486A0();
    sub_1A4646E24();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8C8);
  }

  return result;
}

uint64_t sub_1A465075C(uint64_t a1, unint64_t *a2)
{
  sub_1A4647C7C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46507B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4650800()
{
  result = qword_1EB13F8D0;
  if (!qword_1EB13F8D0)
  {
    sub_1A4646FCC();
    sub_1A4647124(255);
    type metadata accessor for PhotosDetailsTimeEditView();
    sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124);
    sub_1A46475D4();
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8D0);
  }

  return result;
}

void sub_1A46509F4()
{
  if (!qword_1EB1244D0)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1244D0);
    }
  }
}

void sub_1A4650AA0()
{
  type metadata accessor for PhotosDetailsTimeWidgetView();

  sub_1A464D0E4();
}

void sub_1A4650B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4650B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4650BF0(255, &qword_1EB127D40, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A4647CDC(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4650BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4647BEC();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4650C54()
{
  result = qword_1EB13F8D8;
  if (!qword_1EB13F8D8)
  {
    sub_1A4647BEC();
    sub_1A4650D14(&qword_1EB123CD0, &qword_1EB128528);
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8D8);
  }

  return result;
}

uint64_t sub_1A4650D14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A4647C7C(255, a2);
    sub_1A46507B8(&qword_1EB127710, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4650DBC()
{
  result = qword_1EB13F8E0;
  if (!qword_1EB13F8E0)
  {
    sub_1A4650BF0(255, &qword_1EB127D40, MEMORY[0x1E697F960]);
    sub_1A4650C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8E0);
  }

  return result;
}

unint64_t sub_1A4650E50()
{
  result = qword_1EB13F8E8;
  if (!qword_1EB13F8E8)
  {
    sub_1A4647CDC(255);
    sub_1A4650C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8E8);
  }

  return result;
}

unint64_t sub_1A4650ED0()
{
  result = qword_1EB13F8F0;
  if (!qword_1EB13F8F0)
  {
    sub_1A4647B84(255);
    sub_1A3E7440C();
    sub_1A46507B8(&qword_1EB127710, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8F0);
  }

  return result;
}

unint64_t sub_1A4650F84()
{
  result = qword_1EB13F8F8;
  if (!qword_1EB13F8F8)
  {
    sub_1A4647BCC(255);
    sub_1A4650DBC();
    sub_1A4650E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8F8);
  }

  return result;
}

uint64_t sub_1A4651004(uint64_t a1, uint64_t a2)
{
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4651084(uint64_t a1)
{
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A46510FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4651180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A46511F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A465125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46512BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4651348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A4650B00(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));

  sub_1A3C333F8();

  return swift_deallocObject();
}

void sub_1A4651540()
{
  type metadata accessor for PhotosDetailsTimeWidgetView();
  v0 = sub_1A4644E20();
  sub_1A3E95E58(v0);
}

void sub_1A46515D4()
{
  sub_1A3C52C70(0, &qword_1EB120780);
  sub_1A4651E18();
  sub_1A5245CB4();
}

unint64_t sub_1A4651E18()
{
  result = qword_1EB120788;
  if (!qword_1EB120788)
  {
    sub_1A3C52C70(255, &qword_1EB120780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120788);
  }

  return result;
}

id sub_1A4651EB4()
{
  result = [v0 viewModel];
  if (result)
  {
    sub_1A3C52C70(0, &qword_1EB120780);
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id PXPhotosAppGridViewModel.createAssociatedData()()
{
  v0 = objc_allocWithZone(type metadata accessor for PXPhotosAppGridViewModel.AssociatedData());

  return [v0 init];
}

id PXPhotosAppGridViewModel.AssociatedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A46521D4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1A3F1B4DC(v4 + v8, a4, a2, a3);
}

uint64_t sub_1A465226C(uint64_t a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1A46522E8(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1A46522E8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1A3E792C4(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4652674@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A46526C8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A4652778@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A46527CC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A46528C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_availableCurationKinds;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46529C4()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1A4652A24(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_curationModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1A4652ABC;
}

void sub_1A4652ABC(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A4652B3C()
{
  v1 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4652B80(char a1)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4652C5C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1A4652D18()
{
  v1 = (v0 + OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A4652D74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6);
}

id PXPhotosAppGridViewModel.AssociatedData.init()()
{
  v1 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_bannerModel];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_bannerProvider];
  *(v2 + 4) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalLeadingNavigationBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalTrailingNavigationBarButtonItemsBeforeExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalTrailingNavigationBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalCenterToolbarBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_searchQueryFetcher] = 0;
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind] = 6;
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind] = 6;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_availableCurationKinds] = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_sortOrderPersistenceController] = 0;
  v3 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider];
  v4 = type metadata accessor for PXPhotosAppGridViewModel.AssociatedData();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PXPhotosAppGridViewModel.AssociatedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotosAppGridViewModel.AssociatedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46530AC(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1A524EA94();
    (*(v5 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = 0;
  }

  [v1 setSwift:v9 associatedData:?];
  return swift_unknownObjectRelease();
}

void (*sub_1A46531E0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4653250(v2);
  return sub_1A3D3D728;
}

void (*sub_1A4653250(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v2;
  if ([v2 swift_associatedData])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5[2] = 0u;
    v5[3] = 0u;
  }

  v6 = v5[3];
  *v5 = v5[2];
  v5[1] = v6;
  return sub_1A4653308;
}

void sub_1A4653308(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3EBECA4(*a1, v2 + 64);
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_1A524EA94();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0(v2 + 64);
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 96) setSwift:v9 associatedData:?];
    swift_unknownObjectRelease();
    sub_1A3C35B00(v2);
  }

  else
  {
    v10 = *(v2 + 24);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_1(*a1, *(v2 + 24));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_1A524EA94();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(v2);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 96) setSwift:v16 associatedData:?];
    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_1A4653558()
{
  sub_1A3C52C70(0, &qword_1EB120780);

  sub_1A5245CB4();
}

id sub_1A46535A4()
{
  v0 = objc_allocWithZone(type metadata accessor for PXPhotosAppGridViewModel.AssociatedData());

  return [v0 init];
}

uint64_t sub_1A46535F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  return sub_1A465D390(v5 + v3, a1, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
}

uint64_t sub_1A46536FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  return sub_1A465D390(v3 + v4, a2, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
}

uint64_t sub_1A4653808(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-v6];
  sub_1A465D390(a1, &v10[-v6], &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4, sub_1A3C377C8);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();

  return sub_1A3C79D60(v7, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4, sub_1A3C377C8);
}

uint64_t sub_1A46539B8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  sub_1A465DFF8(a2, a1 + v4, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  return swift_endAccess();
}

uint64_t sub_1A4653A64()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1A4653B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A4653C0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4653D2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

void (*sub_1A4653D84(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[4] = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4653ECC;
}

uint64_t sub_1A4653ED8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return swift_weakLoadStrong();
}

uint64_t sub_1A4653F84@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

BOOL sub_1A4654080()
{
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v2 = 3;
  return static LemonadePresentationContext.== infix(_:_:)(&v3, &v2);
}

uint64_t sub_1A46540C4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v6 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  result = swift_beginAccess();
  if ((*(v1 + v6) & 1) == 0)
  {
    swift_getKeyPath();
    v14 = v1;
    sub_1A52415D4();

    if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) & 1) == 0)
    {
      swift_getKeyPath();
      v14 = v1;
      sub_1A52415D4();

      v8 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
      result = swift_beginAccess();
      if (*(*(v1 + v8) + 16))
      {
        swift_getKeyPath();
        v13 = v1;
        sub_1A52415D4();

        v13 = v1;
        swift_getKeyPath();
        sub_1A52415F4();

        result = swift_beginAccess();
        v9 = *(v1 + v8);
        if (*(v9 + 16))
        {
          sub_1A465DBD4(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
          sub_1A465DF08(0, 1);
          swift_endAccess();
          v13 = v1;
          swift_getKeyPath();
          sub_1A52415E4();

          swift_getKeyPath();
          v13 = v1;
          sub_1A52415D4();

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v11 = Strong;
            sub_1A3EE99E0(v5, v1, &v5[v2[5]], *&v5[v2[6]], v5[v2[7]], *&v5[v2[8]], *&v5[v2[8] + 8], *&v5[v2[9]], *&v5[v2[9] + 8]);
          }

          return sub_1A465D330(v5, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A46544B0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    return sub_1A46540C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

uint64_t sub_1A46545F8(char a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A524BFC4();
  v22 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled))
  {
    return sub_1A46540C4();
  }

  if ((a1 & 1) == 0)
  {
    return sub_1A46540C4();
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A52415D4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = [Strong presentedViewController];

  if (!v16)
  {
    return sub_1A46540C4();
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v17 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v22 = *(v22 + 8);
  (v22)(v11, v27);
  aBlock[4] = sub_1A465DD0C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_108_2;
  v18 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C7A328(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C377C8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v19 = v26;
  sub_1A524E224();
  MEMORY[0x1A5908790](v14, v9, v6, v18);
  _Block_release(v18);

  (*(v25 + 8))(v6, v19);
  (*(v23 + 8))(v9, v24);
  return (v22)(v14, v27);
}

uint64_t sub_1A4654ADC()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A4654B9C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = v2;

    return sub_1A46545F8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

void sub_1A4654D14()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover;
  swift_beginAccess();
  if (*(v1 + v2) || (swift_getKeyPath(), sub_1A52415D4(), , v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet, swift_beginAccess(), *(v1 + v3)))
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v5 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
    swift_beginAccess();
    v4 = *(v1 + v5) != 0;
  }

  sub_1A4659618(v4);
}

BOOL sub_1A4655004()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_overrideEnableNavigationStack);
  if (v1 == 2)
  {
    return sub_1A418E5F0();
  }

  else
  {
    return v1 & 1;
  }
}

void sub_1A4655050()
{
  sub_1A46552F4();
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

uint64_t sub_1A46552F4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
  result = swift_beginAccess();
  if (*(v1 + v2))
  {
    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = 1;
      sub_1A46545F8(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4655504()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
}

uint64_t sub_1A46555E0()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
}

void sub_1A46556A8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

uint64_t sub_1A465595C()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
}

uint64_t sub_1A4655A28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1A4655B48(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A4655C10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1A4655DE8(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4655F04(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  sub_1A3DA276C(v4, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

uint64_t sub_1A4655FFC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
  sub_1A3C79D60(a1, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

uint64_t sub_1A4656104(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  swift_beginAccess();
  v8 = *(v4 + 8);
  v9 = *v4;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = MEMORY[0x1E69E6720];
  sub_1A465D390(a2, v10, &unk_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A465D390(a2, v10, &unk_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, v6, sub_1A3C397F8);
  sub_1A3DD2224(v9, v8);
  swift_getKeyPath();
  v10[0] = a1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  if (*(v4 + 8))
  {
    sub_1A46552F4();
  }

  return sub_1A3C79D60(a2, &unk_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

uint64_t sub_1A46562D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1A52411C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a3;

  sub_1A52411B4();
  v17 = sub_1A5241164();
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  v25[0] = v17;
  v25[1] = v19;
  v25[2] = sub_1A465D254;
  v25[3] = v16;
  v26 = a1;
  swift_getKeyPath();
  v22 = v6;
  v23 = v25;
  v24 = v6;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
}

uint64_t sub_1A46564C4()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
}

void sub_1A4656598()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    sub_1A46552F4();
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

uint64_t sub_1A46568A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  *(a1 + v7) = a2;

  return a4(v8);
}

uint64_t sub_1A4656924@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1A46569EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3C7A150(v1);
}

uint64_t sub_1A4656A34(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4656B40(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4656C60(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4656D64(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v32 = type metadata accessor for LemonadeDetailsContext;
  v6 = MEMORY[0x1E69E6720];
  v33 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v34 = &v31 - v8;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a2;
  v36 = type metadata accessor for LemonadeNavigationDestination;
  sub_1A465DBD4(a1, v12, type metadata accessor for LemonadeNavigationDestination);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  v41 = v3;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  v35 = v13;
  sub_1A52415D4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  v40 = v3;
  sub_1A52415D4();

  v15 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  v16 = v9;
  v17 = v32;
  sub_1A465D390(v3 + v15, v16, &unk_1EB12A160, v32, v6, sub_1A3C377C8);
  v18 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  v21 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal) = 0;
  swift_weakInit();
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath) = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarVisible) = 0;
  v23 = v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover) = 0;
  v24 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController;
  swift_unknownObjectWeakInit();
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = 0x3FE0000000000000;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests) = v22;

  sub_1A5241604();
  sub_1A3CA27C8(v12, v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v36);
  v25 = (v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  *v25 = 0;
  v25[1] = 0;
  MEMORY[0x1A590F020](v19 + v24);
  swift_unknownObjectWeakInit();

  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) = v18;
  sub_1A3C79D60(v19 + v20, &unk_1EB12A160, v17, v33, sub_1A3C377C8);
  sub_1A3C79EB8(v34, v19 + v20, &unk_1EB12A160, v17);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext) = v37;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_overrideEnableNavigationStack) = 2;
  swift_getKeyPath();
  v39 = v3;
  sub_1A52415D4();

  v26 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable;
  swift_beginAccess();
  v27 = *(v3 + v26);
  v28 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable;
  swift_beginAccess();
  if (v27 == *(v19 + v28))
  {
    *(v19 + v28) = v27;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = v19;
    *(&v31 - 8) = v27;
    v38 = v19;
    sub_1A52415C4();
  }

  return v19;
}

uint64_t sub_1A4657324(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v117 = a8;
  v116 = a7;
  v108 = a6;
  v115 = a5;
  v114 = a4;
  v110 = a3;
  v112 = a2;
  v109 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for LemonadeDetailsContext();
  v125 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v111 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &qword_1EB12AF30, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v101 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v99 - v19;
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v13);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v107 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v99 - v23;
  v119 = type metadata accessor for LemonadeNavigationDestination();
  v103 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v99 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v32;
  v34 = sub_1A5246F24();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(*(v9 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v102 = v25;
  if (v118 && (swift_getKeyPath(), *&v128[0] = v9, sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext), sub_1A52415D4(), , swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v39 = Strong, v40 = [Strong navigationController], v39, v40))
  {

    v120 = 1;
  }

  else
  {
    v120 = 0;
  }

  v41 = sub_1A3C38A40();
  (*(v35 + 16))(v37, v41, v34);
  *&v124 = a1;
  sub_1A465DBD4(a1, v33, type metadata accessor for LemonadeNavigationDestination);
  v42 = sub_1A5246F04();
  v43 = sub_1A524D264();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v106 = v9;
    v45 = v44;
    *&v128[0] = swift_slowAlloc();
    *v45 = 136446210;
    sub_1A465DBD4(v33, v30, type metadata accessor for LemonadeNavigationDestination);
    sub_1A524C714();
    sub_1A465D330(v33, type metadata accessor for LemonadeNavigationDestination);
    sub_1A3C2EF94();
  }

  sub_1A465D330(v33, type metadata accessor for LemonadeNavigationDestination);
  (*(v35 + 8))(v37, v34);
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  *&v128[0] = v9;
  v47 = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  v121 = v46;
  sub_1A52415D4();

  v48 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  v49 = v122;
  sub_1A465D390(v9 + v48, v122, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  v50 = *(v125 + 48);
  v51 = v123;
  v52 = v50(v49, 1, v123);
  v53 = v124;
  if (v52)
  {
    sub_1A3C79D60(v49, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  }

  else
  {
    v58 = (v49 + *(v51 + 20));
    v60 = *v58;
    v59 = v58[1];
    sub_1A3C66EE8(*v58);
    sub_1A3C79D60(v49, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
    v122 = v60;
    if (v60)
    {
      v61 = v104;
      sub_1A465DBD4(v53, v104, type metadata accessor for LemonadeNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v125 = v59;
        v62 = *(v61 + 16);
        v128[0] = *v61;
        v128[1] = v62;
        v129 = *(v61 + 32);
        v63 = *(v61 + 16);
        v126[0] = *v61;
        v126[1] = v63;
        v127 = *(v61 + 32);
        v64 = *&v128[0];
        v65 = sub_1A41DF340();
        v66 = [v65 dataSource];
        v67 = [v66 indexPathForDisplayAsset:v64 hintIndexPath:0];

        v106 = v9;
        v99 = v47;
        if (v67)
        {
          v68 = v100;
          sub_1A5241554();

          v69 = 0;
        }

        else
        {
          v69 = 1;
          v68 = v100;
        }

        v90 = sub_1A5241574();
        v91 = *(v90 - 8);
        (*(v91 + 56))(v68, v69, 1, v90);
        v92 = MEMORY[0x1E6969C28];
        v93 = v68;
        v94 = v105;
        sub_1A3C79EB8(v93, v105, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
        v95 = [v65 dataSource];
        [v95 identifier];

        v96 = v94;
        v97 = v101;
        sub_1A465D390(v96, v101, &qword_1EB12AF30, v92, MEMORY[0x1E69E6720], sub_1A3C377C8);
        if ((*(v91 + 48))(v97, 1, v90) != 1)
        {
          sub_1A5241544();
          (*(v91 + 8))(v97, v90);
        }

        PXSimpleIndexPathFromIndexPath();
      }

      sub_1A3C33378(v122);
      sub_1A465D330(v61, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  if (((v120 & 1) != 0 || sub_1A418E244()) && sub_1A465877C())
  {
    sub_1A46552F4();
    swift_getKeyPath();
    *&v128[0] = v9;
    sub_1A52415D4();

    v54 = v9 + v48;
    v55 = v107;
    sub_1A465D390(v54, v107, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
    if (v50(v55, 1, v51) == 1)
    {
      v56 = v111;
      sub_1A486B6E8(v111);
      if (v50(v55, 1, v51) != 1)
      {
        sub_1A3C79D60(v55, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
      }
    }

    else
    {
      v56 = v111;
      sub_1A3CA27C8(v55, v111, type metadata accessor for LemonadeDetailsContext);
    }

    sub_1A465DFF8(v108, v56, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
    v79 = v113;
    sub_1A465DBD4(v53, v113, type metadata accessor for LemonadeNavigationDestination);
    v80 = v109;
    v81 = *(v109 + 20);
    sub_1A465DBD4(v56, &v79[v81], type metadata accessor for LemonadeDetailsContext);
    (*(v125 + 56))(&v79[v81], 0, 1, v51);
    v82 = v112;
    *&v79[v80[6]] = v112;
    v79[v80[7]] = v110 & 1;
    v83 = &v79[v80[8]];
    v84 = v114;
    v85 = v115;
    *v83 = v114;
    *(v83 + 1) = v85;
    v86 = &v79[v80[9]];
    v87 = v116;
    v88 = v117;
    *v86 = v116;
    *(v86 + 1) = v88;
    v89 = v82;
    sub_1A3C66EE8(v84);
    sub_1A3C66EE8(v87);
    LOBYTE(v88) = sub_1A4658988(v79);
    sub_1A465D330(v79, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    if (v88)
    {
      v77 = 2;
    }

    else
    {
      v77 = 0;
    }

    sub_1A465D330(v56, type metadata accessor for LemonadeDetailsContext);
  }

  else
  {
    if (v118)
    {
      v57 = 0;
    }

    else
    {
      sub_1A418E3C8(v9, v128);
      v57 = LOBYTE(v128[0]);
    }

    swift_getKeyPath();
    *&v128[0] = v9;
    sub_1A52415D4();

    v70 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
    swift_beginAccess();
    if (v57)
    {
      LOBYTE(v126[0]) = 2 * (*(v9 + v70) != 0);
      v77 = sub_1A4656D64(v53, v126);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v99 - 2) = v9;
      *(&v99 - 1) = v77;
      *&v126[0] = v9;

      sub_1A52415C4();
    }

    else
    {
      sub_1A46552F4();
      v71 = v102;
      sub_1A465DBD4(v53, v102, type metadata accessor for LemonadeNavigationDestination);
      swift_getKeyPath();
      *&v126[0] = v9;
      sub_1A52415D4();

      *&v126[0] = v9;
      swift_getKeyPath();
      sub_1A52415F4();

      v72 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
      swift_beginAccess();
      v73 = *(v9 + v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + v72) = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_1A465CA88(0, v73[2] + 1, 1, v73, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
        *(v9 + v72) = v73;
      }

      v76 = v73[2];
      v75 = v73[3];
      if (v76 >= v75 >> 1)
      {
        v73 = sub_1A465CA88(v75 > 1, v76 + 1, 1, v73, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
      }

      v73[2] = v76 + 1;
      sub_1A3CA27C8(v71, v73 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v76, type metadata accessor for LemonadeNavigationDestination);
      *(v9 + v72) = v73;
      swift_endAccess();
      sub_1A4654D14();
      *&v126[0] = v9;
      swift_getKeyPath();
      sub_1A52415E4();

      return 1;
    }
  }

  return v77;
}

BOOL sub_1A465877C()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
  }

  else
  {
    v7 = sub_1A3C38A40();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Can't perform view controller presentation because of missing host view controller.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6 != 0;
}

uint64_t sub_1A4658988(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v8 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  if ((*(v2 + v8) & 1) == 0)
  {
    swift_getKeyPath();
    v26 = v2;
    sub_1A52415D4();

    if ((*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) & 1) == 0)
    {
      swift_getKeyPath();
      v26 = v2;
      sub_1A52415D4();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v17 = sub_1A3EE99E0(a1, v2, &a1[v4[5]], *&a1[v4[6]], a1[v4[7]], *&a1[v4[8]], *&a1[v4[8] + 8], *&a1[v4[9]], *&a1[v4[9] + 8]);

        return v17 & 1;
      }

LABEL_13:
      v17 = 0;
      return v17 & 1;
    }
  }

  swift_getKeyPath();
  v26 = v2;
  sub_1A52415D4();

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  if ((sub_1A3EE9714() & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_1A465DBD4(a1, v7, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
  swift_getKeyPath();
  v25 = v2;
  sub_1A52415D4();

  v25 = v2;
  swift_getKeyPath();
  sub_1A52415F4();

  v11 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
  swift_beginAccess();
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1A465CA88(0, v12[2] + 1, 1, v12, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    *(v2 + v11) = v12;
  }

  v14 = v12[2];
  v15 = v12[3];
  v16 = v14 + 1;
  if (v14 >= v15 >> 1)
  {
    v21 = v12;
    v22 = v12[2];
    v23 = sub_1A465CA88(v15 > 1, v14 + 1, 1, v21, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    v14 = v22;
    v12 = v23;
  }

  v12[2] = v16;
  sub_1A3CA27C8(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
  *(v2 + v11) = v12;
  swift_endAccess();
  v25 = v2;
  swift_getKeyPath();
  sub_1A52415E4();

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1A4658E28()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
}

uint64_t sub_1A4658ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
  return result;
}

double sub_1A4658FA8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
}

double sub_1A4659050@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  result = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  *a2 = result;
  return result;
}

uint64_t sub_1A4659128(char a1)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  if (a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  }

  else
  {
    v5 = 0.0;
  }

  if (v4 == v5)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v3) == v4)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46593C4@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v10 = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v11, &v10))
  {
    v3 = *MEMORY[0x1E69C1EF0];
    v4 = sub_1A52425F4();
    v5 = *(*(v4 - 8) + 104);

    return v5(a1, v3, v4);
  }

  else
  {
    swift_getKeyPath();
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415D4();

    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime);
    v8 = sub_1A52425F4();
    if (v7 == 1)
    {
      v9 = MEMORY[0x1E69C1EE0];
    }

    else
    {
      v9 = MEMORY[0x1E69C1EE8];
    }

    return (*(*(v8 - 8) + 104))(a1, *v9, v8);
  }
}

uint64_t sub_1A4659578(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v2 + *a2);
}

void sub_1A4659618(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered) != v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A52415C4();

    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126A10);
      v6 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v6 inlinePlayerCoveredDurationForPause];
      v8 = v7;

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1A465D434;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D7692C;
      aBlock[3] = &block_descriptor_235;
      v11 = _Block_copy(aBlock);

      v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:v8];
      _Block_release(v11);
      v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = v12;
      if (v13)
      {
        if (v12)
        {
          sub_1A3C52C70(0, &unk_1EB126680);
          v14 = v12;
          v15 = v13;
          v16 = sub_1A524DBF4();

          if (v16)
          {

            return;
          }
        }
      }

      else
      {
        if (!v12)
        {
          return;
        }

        v19 = v12;
      }

      [v13 invalidate];
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = 0;
      if (v17)
      {
        [v17 invalidate];
      }

      swift_getKeyPath();
      aBlock[0] = v2;
      sub_1A52415D4();

      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime))
      {
        v18 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v18);
        aBlock[0] = v2;
        sub_1A52415C4();
      }
    }
  }
}

void sub_1A46599FC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
  if (v4)
  {
    sub_1A3C52C70(0, &unk_1EB126680);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = sub_1A524DBF4();

    if (a1)
    {
      v8 = *(v2 + v3);
      *(v2 + v3) = 0;
      if (v8)
      {
        [v8 invalidate];
      }

      swift_getKeyPath();
      sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
      sub_1A52415D4();

      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered))
      {
        swift_getKeyPath();
        sub_1A52415D4();

        if ((*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime) & 1) == 0)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1A52415C4();
        }
      }
    }
  }
}

uint64_t sub_1A4659C24@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  *a3 = *(v5 + *a2);
  return result;
}

void sub_1A4659D98()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4659E64(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t LemonadeNavigationContext.deinit()
{
  sub_1A465D330(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, type metadata accessor for LemonadeNavigationDestination);
  swift_unknownObjectRelease();

  sub_1A3C79D60(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  swift_weakDestroy();

  sub_1A3DD2224(*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent + 8));

  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController);

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeNavigationContext.__deallocating_deinit()
{
  LemonadeNavigationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A465A13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A465A168()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
}

double sub_1A465A210()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
}

uint64_t sub_1A465A2B8(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a1, ObjectType, v3) & 1;
}

uint64_t sub_1A465A32C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1A524CC54();
  v3[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A465A3C8, v5, v4);
}

uint64_t sub_1A465A3C8()
{
  v1 = (v0[4] + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    sub_1A465D490();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F8E10;
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = 1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v0[8] = v5;
  v0[9] = v4;
  v0[10] = 0;
  result = swift_unknownObjectRetain();
  if (v5)
  {
    if (*(v4 + 16))
    {
      v0[11] = *(v4 + 32);
      v7 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();
      v14 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[12] = v10;
      *v10 = v0;
      v10[1] = sub_1A465A5D8;
      v12 = v0[2];
      v11 = v0[3];

      return v14(v12, v11, ObjectType, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = v0[1];

    return v13(1);
  }

  return result;
}

uint64_t sub_1A465A5D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A42CB0C0;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A465A704;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A465A704()
{
  v1 = v0[14];
  result = swift_unknownObjectRelease();
  if (v1 != 1)
  {
    v4 = v0[14];
    goto LABEL_5;
  }

  v3 = v0[10] + 1;
  v0[10] = v3;
  if (v3 == v0[8])
  {
    v4 = 1;
LABEL_5:

    v5 = v0[1];

    return v5(v4);
  }

  v6 = v0[9];
  if (v3 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = v6 + 16 * v3;
    v0[11] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1A465A5D8;
    v13 = v0[2];
    v12 = v0[3];

    return v14(v13, v12, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1A465A8EC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for LemonadeNavigationDestination();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = sub_1A524CC54();
  v3[17] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[18] = v6;
  v3[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A465AA00, v6, v5);
}

uint64_t sub_1A465AA00()
{
  v1 = *(v0 + 80);
  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  *(v0 + 160) = v3;
  if (!v3)
  {

    v7 = 2;
LABEL_10:

    v12 = *(v0 + 8);

    return v12(v7);
  }

  v4 = (v0 + 324);
  v5 = *(v0 + 72);
  v6 = *(v2 + 8);
  *(v0 + 168) = v6;
  *(v0 + 324) = 0;
  swift_unknownObjectRetain();
  if ((v5 & 2) != 0)
  {
    sub_1A524BD24();
    v1 = *(v0 + 80);
  }

  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  *(v8 + 24) = v1;
  sub_1A52483D4();

  if ((*v4 & 1) == 0)
  {
    v9 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 16))(ObjectType, v6);
    LODWORD(v9) = [v9 isEquivalentToNavigationDestination_];

    if (v9)
    {
      sub_1A4659128((v5 & 2) != 0);
    }
  }

  if ([*(v0 + 64) isCollectionsHome])
  {

    swift_unknownObjectRelease();
    v7 = 1;
    goto LABEL_10;
  }

  v14 = swift_getObjectType();
  *(v0 + 176) = v14;
  v18 = (*(v6 + 48) + **(v6 + 48));
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_1A465ACD4;
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);

  return v18(v17, v16, v14, v6);
}

uint64_t sub_1A465ACD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_1A465BD40;
  }

  else
  {
    v7 = sub_1A465AE18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A465AE18()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);
  *(v0 + 208) = *(*(v0 + 80) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v3 = (*(v1 + 56))(v2);
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 216) = v3;
  v5 = *(v3 + 16);
  *(v0 + 224) = v5;
  if (v5)
  {
    v6 = *(v0 + 96);
    v7 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController;
    *(v0 + 232) = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
    *(v0 + 240) = v7;
    *(v0 + 320) = *(v6 + 80);
    swift_beginAccess();
    v8 = *(v6 + 72);
    *(v0 + 256) = 0;
    *(v0 + 264) = v4;
    *(v0 + 248) = v8;
    sub_1A465DBD4(*(v0 + 216) + ((*(v0 + 320) + 32) & ~*(v0 + 320)), *(v0 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }

  else
  {

    if (*(v4 + 16))
    {
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = *(v0 + 64);
      v12 = sub_1A524CC44();
      *(v0 + 288) = v12;
      v13 = swift_task_alloc();
      *(v0 + 296) = v13;
      v13[2] = v10;
      v13[3] = v9;
      v13[4] = v0 + 40;
      v13[5] = v11;
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v14 = v0;
      v14[1] = sub_1A465BB7C;
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v0 + 48, v12, v16, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v13, v15);
    }

    else
    {

      swift_unknownObjectRelease();
      v17 = *(v0 + 192);

      v18 = *(v0 + 8);

      return v18(v17);
    }
  }
}

uint64_t sub_1A465B0DC()
{
  sub_1A465DBD4(v0[15], v0[14], type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload() == 26)
  {
    v1 = v0[10];
    v2 = *(v0[26] + 16);
    swift_getKeyPath();
    v0[7] = v1;
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
    sub_1A52415D4();

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[34] = Strong;
    v4 = swift_task_alloc();
    v0[35] = v4;
    *v4 = v0;
    v4[1] = sub_1A465B29C;

    return static LemonadeMemoriesCreationAvailabilityUtils.canProceedWithNavigationOrShowErrorAlert(photoLibrary:viewController:)(v2, Strong);
  }

  else
  {
    sub_1A465D330(v0[14], type metadata accessor for LemonadeNavigationDestination);
    v6 = v0[18];
    v7 = v0[19];

    return MEMORY[0x1EEE6DFA0](sub_1A465B7EC, v6, v7);
  }
}

uint64_t sub_1A465B29C(char a1)
{
  v2 = *(*v1 + 272);
  *(*v1 + 325) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A465B3B8, 0, 0);
}

uint64_t sub_1A465B3B8()
{
  sub_1A465D330(v0[14], type metadata accessor for LemonadeNavigationDestination);
  v1 = v0[18];
  v2 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1A465B430, v1, v2);
}

uint64_t sub_1A465B430()
{
  if (*(v0 + 325))
  {
    sub_1A465DBD4(*(v0 + 120), *(v0 + 104), type metadata accessor for LemonadeNavigationDestination);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1A465CA88(0, v2[2] + 1, 1, *(v0 + 264), &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1A465CA88(v3 > 1, v4 + 1, 1, v2, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 104);
    v7 = (*(v0 + 320) + 32) & ~*(v0 + 320);
    sub_1A465D330(*(v0 + 120), type metadata accessor for LemonadeNavigationDestination);
    v2[2] = v4 + 1;
    sub_1A3CA27C8(v6, v2 + v7 + v5 * v4, type metadata accessor for LemonadeNavigationDestination);
    *(v0 + 40) = v2;
  }

  else
  {
    sub_1A465D330(*(v0 + 120), type metadata accessor for LemonadeNavigationDestination);
    v2 = *(v0 + 264);
  }

  v8 = *(v0 + 256) + 1;
  if (v8 == *(v0 + 224))
  {

    if (v2[2])
    {
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = *(v0 + 64);
      v12 = sub_1A524CC44();
      *(v0 + 288) = v12;
      v13 = swift_task_alloc();
      *(v0 + 296) = v13;
      v13[2] = v10;
      v13[3] = v9;
      v13[4] = v0 + 40;
      v13[5] = v11;
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v14 = v0;
      v14[1] = sub_1A465BB7C;
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v0 + 48, v12, v16, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v13, v15);
    }

    else
    {

      swift_unknownObjectRelease();
      v17 = *(v0 + 192);

      v18 = *(v0 + 8);

      return v18(v17);
    }
  }

  else
  {
    *(v0 + 256) = v8;
    *(v0 + 264) = v2;
    sub_1A465DBD4(*(v0 + 216) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(v0 + 248) * v8, *(v0 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }
}

uint64_t sub_1A465B7EC()
{
  sub_1A465DBD4(*(v0 + 120), *(v0 + 104), type metadata accessor for LemonadeNavigationDestination);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A465CA88(0, v2[2] + 1, 1, *(v0 + 264), &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A465CA88(v3 > 1, v4 + 1, 1, v2, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 104);
  v7 = (*(v0 + 320) + 32) & ~*(v0 + 320);
  sub_1A465D330(*(v0 + 120), type metadata accessor for LemonadeNavigationDestination);
  v2[2] = v4 + 1;
  sub_1A3CA27C8(v6, v2 + v7 + v5 * v4, type metadata accessor for LemonadeNavigationDestination);
  *(v0 + 40) = v2;
  v8 = *(v0 + 256) + 1;
  if (v8 == *(v0 + 224))
  {

    if (v2[2])
    {
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = *(v0 + 64);
      v12 = sub_1A524CC44();
      *(v0 + 288) = v12;
      v13 = swift_task_alloc();
      *(v0 + 296) = v13;
      v13[2] = v10;
      v13[3] = v9;
      v13[4] = v0 + 40;
      v13[5] = v11;
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v14 = v0;
      v14[1] = sub_1A465BB7C;
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v0 + 48, v12, v16, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v13, v15);
    }

    else
    {

      swift_unknownObjectRelease();
      v17 = *(v0 + 192);

      v18 = *(v0 + 8);

      return v18(v17);
    }
  }

  else
  {
    *(v0 + 256) = v8;
    *(v0 + 264) = v2;
    sub_1A465DBD4(*(v0 + 216) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(v0 + 248) * v8, *(v0 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }
}

uint64_t sub_1A465BB7C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1A465BDD4;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1A465BCA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A465BCA0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A465BD40()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A465BDD4()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A465BE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[12] = a5;
  v13[8] = a3;
  v13[9] = a4;
  sub_1A465DA2C();
  v13[11] = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v13[6] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[7] = v8;
  sub_1A3C377C8(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13[3] = v13 - v10;
  v11 = type metadata accessor for LemonadeNavigationDestination();
  v13[5] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13[14] = v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[10] = *(*a2 + 16);
  v13[4] = v7;
  v13[1] = v7 + 32;
  v13[2] = v7 + 16;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465C2B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A465DA2C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  if ([a1 routingOptionsForDestination_])
  {
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v11 = swift_allocObject();
    (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    aBlock[4] = sub_1A465DB24;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A465C49C;
    aBlock[3] = &block_descriptor_85_1;
    v12 = _Block_copy(aBlock);

    [a1 navigateToDestination:a2 options:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    aBlock[0] = 1;
    sub_1A524CBE4();
  }
}

void sub_1A465C49C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1A465C514(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for LemonadeNavigationDestination();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v24 = *a3;
  v26 = v3;
  if (*(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    v13 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 56))(a1, a2, ObjectType, v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v15 + 16);
  if (v23)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v15 + 16))
    {
      v18 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v19 = *(v25 + 72);
      sub_1A465DBD4(v15 + v18 + v19 * v16, v12, type metadata accessor for LemonadeNavigationDestination);
      sub_1A418E3C8(v26, &v28);
      v27 = v24;
      if (!static LemonadeDetailsNavigationType.== infix(_:_:)(&v28, &v27))
      {
        sub_1A465D330(v12, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_16;
      }

      sub_1A3CA27C8(v12, v9, type metadata accessor for LemonadeNavigationDestination);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A465CC7C(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A465CC7C(v21 > 1, v22 + 1, 1);
        v17 = v29;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      sub_1A3CA27C8(v9, v17 + v18 + v22 * v19, type metadata accessor for LemonadeNavigationDestination);
      if (v23 == v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t sub_1A465C7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
    sub_1A465D490();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F8E10;
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_1A465C848(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

uint64_t sub_1A465C8B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A465A32C(a1, a2);
}

uint64_t sub_1A465C95C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A465A8EC(a1, a2);
}

uint64_t sub_1A465CA00(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(a1, a2, ObjectType, v5);
}

size_t sub_1A465CA88(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C377C8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1A465CC7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A465CC9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A465CC9C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C377C8(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A465CE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A465DBD4(v13, v10, type metadata accessor for LemonadeNavigationDestination);
        sub_1A465DBD4(v14, v6, type metadata accessor for LemonadeNavigationDestination);
        sub_1A3C7A328(&qword_1EB129898, type metadata accessor for LemonadeNavigationDestination);
        v16 = sub_1A524C594();
        sub_1A465D330(v6, type metadata accessor for LemonadeNavigationDestination);
        sub_1A465D330(v10, type metadata accessor for LemonadeNavigationDestination);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A465D0A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A465D114()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = *(v0 + 24);
  return sub_1A46545F8(v2);
}

uint64_t sub_1A465D254@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *(a1 + 24) = *(v1 + 16);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v2();
}

double sub_1A465D2F8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = result;
  return result;
}

uint64_t sub_1A465D330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A465D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A465D434(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A46599FC(a1);
  }

  return result;
}

void sub_1A465D490()
{
  if (!qword_1EB126238)
  {
    sub_1A3C652C8(255, &qword_1EB1293F0);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126238);
    }
  }
}

uint64_t sub_1A465D4FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
  swift_beginAccess();
  *v2 = *(*(v1 + v3) + 16) != 0;
  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();
  sub_1A52415F4();

  *(v1 + v3) = MEMORY[0x1E69E7CC0];

  sub_1A4654D14();
  swift_getKeyPath();
  sub_1A52415E4();
}

uint64_t sub_1A465D690()
{
  sub_1A5247F84();

  sub_1A5248914();
}

uint64_t sub_1A465D740(uint64_t a1)
{
  result = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore25LemonadeNavigationContextC0D6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A465D7D0(uint64_t *a1, unsigned int a2)
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

void sub_1A465D874()
{
  type metadata accessor for LemonadeNavigationDestination();
  if (v0 <= 0x3F)
  {
    sub_1A3C377C8(319, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A465D990();
      if (v2 <= 0x3F)
      {
        sub_1A3C377C8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A465D990()
{
  if (!qword_1EB120988)
  {
    sub_1A3C52C70(255, &unk_1EB120990);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120988);
    }
  }
}

void sub_1A465DA2C()
{
  if (!qword_1EB126DD0)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3C652C8(255, &qword_1EB126160);
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126DD0);
    }
  }
}

void sub_1A465DAB0(void *a1)
{
  sub_1A465DA2C();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  sub_1A465C2B8(a1, v4, v5);
}

uint64_t sub_1A465DB24(uint64_t a1, void *a2)
{
  sub_1A465DA2C();
  if (!a2)
  {
    return sub_1A524CBE4();
  }

  v3 = a2;
  return sub_1A524CBD4();
}

uint64_t sub_1A465DBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A465DC3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A465DCA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_1A46540C4();
}

uint64_t sub_1A465DD0C()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415D4();

  *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  return sub_1A46545F8();
}

unint64_t sub_1A465DDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A465DF08(unint64_t result, uint64_t a2)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A465CA88(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    *v2 = v4;
  }

  result = sub_1A465DDC0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A465DFF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C377C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

id sub_1A465E1AC(uint64_t a1)
{
  sub_1A4185584(a1, v4);
  if (v5)
  {
    sub_1A3DB7F50();
    sub_1A3C52C70(0, &qword_1EB126CD0);
    if (swift_dynamicCast())
    {
      v1 = [v3 px_isMomentShare];

      return v1;
    }
  }

  else
  {
    sub_1A465E250(v4);
  }

  return 0;
}

uint64_t sub_1A465E250(uint64_t a1)
{
  sub_1A3C4C3FC(0, &qword_1EB126138, sub_1A3DB7F50, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1A465E2DC(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LemonadeNavigationDestination();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - v11);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {

    PXDisplayCollectionDetailedCountsMake(v13);
    *v12 = v14;
    swift_storeEnumTagMultiPayload();
    sub_1A465EB84(v12, v9, type metadata accessor for LemonadeNavigationDestination);
    v15 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1A4249320(v16 > 1, v17 + 1, 1, v15);
    }

    sub_1A457EF10(v12);
    v15[2] = v17 + 1;
    sub_1A40B671C(v9, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v18 = swift_unknownObjectRetain();
  sub_1A3D96070(v18, &v23);
  *v6 = v23;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A4249320(0, v15[2] + 1, 1, v15);
  }

  v20 = v15[2];
  v19 = v15[3];
  if (v20 >= v19 >> 1)
  {
    v15 = sub_1A4249320(v19 > 1, v20 + 1, 1, v15);
  }

  v15[2] = v20 + 1;
  sub_1A40B671C(v6, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
  return v15;
}

uint64_t sub_1A465E568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C3FC(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a2 = a1;
  *(a2 + 8) = 1;
  v10 = type metadata accessor for LemonadeICloudLinksShelfProvider();
  v11 = v10[6];
  v12 = *MEMORY[0x1E69C2418];
  v13 = sub_1A5243334();
  (*(*(v13 - 8) + 104))(a2 + v11, v12, v13);
  v14 = v10[7];
  v15 = sub_1A3C47918();
  v17 = v16;
  v18 = sub_1A3C47918();
  v20 = v19;
  v21 = sub_1A3C4ED50();
  v26[8] = 1;
  *v9 = xmmword_1A5317AE0;
  v9[16] = 1;
  *(v9 + 3) = 2;
  v9[32] = 1;
  *(v9 + 5) = v15;
  *(v9 + 6) = v17;
  *(v9 + 7) = v18;
  *(v9 + 8) = v20;
  *(v9 + 72) = xmmword_1A5317AF0;
  v9[88] = 0;
  v9[89] = v21;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v6);
  sub_1A3C52D78(v9, 0, v6, a2 + v14);
  v22 = v10[8];
  v23 = *MEMORY[0x1E69C2958];
  v24 = sub_1A5244094();
  result = (*(*(v24 - 8) + 104))(a2 + v22, v23, v24);
  *(a2 + v10[9]) = 1;
  return result;
}

uint64_t sub_1A465E810@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 px_isMomentShareVirtualCollection])
  {

    PXDisplayCollectionDetailedCountsMake(v3);
    *a2 = v4;
    v5 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    v6 = *(*(v5 - 8) + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v10 = type metadata accessor for LemonadeNavigationDestination();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1A465E8EC@<X0>(void *a1@<X8>)
{

  PXDisplayCollectionDetailedCountsMake(v2);
  *a1 = v3;
  v4 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

void sub_1A465E978(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for iCloudLinkItemListManager(0);
  v4 = *(a2 + 24);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = v4;
  v8 = [v5 specForLayoutVariant_];
  sub_1A3E4D48C();
}

__n128 sub_1A465EA24@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = a1;
    sub_1A4622C1C([v6 invitationWithMomentShare_], v13);

    PXDisplayCollectionDetailedCountsMake(v13);
  }

  else
  {
    sub_1A41854A8(v13);
  }

  v8 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v13[10];
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1A465EB18(uint64_t a1)
{
  v2 = sub_1A465EC8C(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A465EB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A465EBEC(uint64_t a1)
{
  result = sub_1A465EC8C(&qword_1EB1296A8, type metadata accessor for LemonadeICloudLinksShelfProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A465EC8C(unint64_t *a1, void (*a2)(uint64_t))
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

void PostAssetsToSharedCollectionAction.__allocating_init(with:assets:comment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection] = a1;
  *v9 = a3;
  *(v9 + 1) = a4;
  sub_1A3DB58C8();
  v10 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PostAssetsToSharedCollectionAction.init(with:assets:comment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment);
  *v6 = 0;
  v6[1] = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection) = a1;
  *v6 = a3;
  v6[1] = a4;
  sub_1A3DB58C8();
  v7 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465F068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_sharedCollection];
  aBlock[0] = [v3 assets];
  sub_1A465F274();
  sub_1A465F364(0, &qword_1EB120C10, sub_1A3DB58C8, MEMORY[0x1E69E62F8]);
  swift_dynamicCast();
  sub_1A3DB58C8();
  v7 = sub_1A524CA14();

  if (*&v3[OBJC_IVAR____TtC12PhotosUICore34PostAssetsToSharedCollectionAction_comment + 8])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = sub_1A3D7ADE8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_236;
  v10 = _Block_copy(aBlock);

  [v8 addAssetsTo:v6 assets:v7 comment:0 completionHandler:v10];
  _Block_release(v10);
}

unint64_t sub_1A465F274()
{
  result = qword_1EB13F988;
  if (!qword_1EB13F988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13F988);
  }

  return result;
}

void sub_1A465F364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id PostAssetsToSharedCollectionAction.__allocating_init(assets:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithAssets_];
  swift_unknownObjectRelease();
  return v2;
}

id PostAssetsToSharedCollectionAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostAssetsToSharedCollectionAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A465F58C(uint64_t a1)
{
  v2 = *off_1E7721FC0;
  sub_1A465F364(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000037;
  *(inited + 56) = 0x80000001A53E1F40;
  v5 = v2;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1A524C3D4();

  v8 = [v6 initWithDomain:v5 code:-1 userInfo:v7];

  v9 = sub_1A5240B74();
  (*(a1 + 16))(a1, 0, v9);
}

void (*sub_1A465F718(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3FC589C;
}

uint64_t sub_1A465F7A8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A465F7E0()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

void *sub_1A465F844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a8;
  v58 = a2;
  v54 = a6;
  v55 = a7;
  v46 = a5;
  v47 = a3;
  v51 = a4;
  v59 = a1;
  v56 = a9;
  v9 = type metadata accessor for PhotosSearchResults(0);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v44[0] = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PhotosSearchResults;
  v52 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v44 - v12;
  v45 = sub_1A524D464();
  v13 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = swift_allocObject();
  v18[3] = 0;
  swift_unknownObjectWeakInit();
  v19 = sub_1A3C52C70(0, &qword_1EB12B180);
  v44[1] = "tificationPresentationContext";
  v44[2] = v19;
  v18[4] = 0;
  v18[5] = 0;
  sub_1A524BF24();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1A4669918(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v20 = MEMORY[0x1E69E8030];
  sub_1A46600E8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v21 = v46;
  sub_1A3C9AE7C(&qword_1EB126E30, &qword_1EB126E40, v20);
  v22 = v47;
  sub_1A524E224();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8090], v45);
  v18[7] = sub_1A524D4B4();
  v23 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  v25 = v48;
  v24 = v49;
  (*(v48 + 56))(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, 1, 1, v49);
  v26 = v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection) = 1;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsConfiguration) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver) = 0;
  v27 = (v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  *v27 = 0;
  v27[1] = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 2;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction) = 0;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction) = 0;
  swift_beginAccess();
  v28 = v18 + v23;
  v29 = v51;
  sub_1A455287C(v59, v28);
  swift_endAccess();
  swift_beginAccess();
  sub_1A4552910(v58, v26);
  swift_endAccess();
  v18[6] = v22;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary) = v29;
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchBarCoordinator) = v21;
  v30 = (v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_customAssetSelectionHandler);
  v31 = v54;
  *v30 = v54;
  v30[1] = v55;
  swift_beginAccess();
  v18[3] = v56;
  swift_unknownObjectWeakAssign();
  v32 = v50;
  sub_1A4667558(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, v50, &qword_1EB125F80, v53, v52, sub_1A46600E8);
  if ((*(v25 + 48))(v32, 1, v24))
  {

    v33 = v29;
    sub_1A3C66EE8(v31);
    sub_1A3C2CA58(v32, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  else
  {
    v34 = v44[0];
    sub_1A3C8BF0C(v32, v44[0], type metadata accessor for PhotosSearchResults);

    v35 = v29;
    sub_1A3C66EE8(v31);
    sub_1A3C2CA58(v32, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v36 = sub_1A4667278();
    sub_1A3DA541C(!v36);
    sub_1A466B4E4(v34, type metadata accessor for PhotosSearchResults);
  }

  v37 = sub_1A4660440();
  sub_1A43718E4(v37);

  sub_1A466AFD4(0, &qword_1EB13F998, &qword_1EB126C40, 0x1E6978840, type metadata accessor for PrewarmedObject);
  v38 = v18[7];
  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  v40 = v29;
  v41 = v38;
  v42 = sub_1A4949CA0(v38, sub_1A4660588, v39);
  swift_unknownObjectRelease();
  sub_1A3C33378(v31);

  sub_1A3C2CE9C(v58);
  sub_1A3C2CA58(v59, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  *(v18 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult) = v42;

  return v18;
}

void sub_1A46600E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A466014C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
  v4 = [objc_opt_self() fetchAssetsWithOptions_];

  *a2 = v4;
}

uint64_t sub_1A466020C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A466026C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A4660300;
}

void sub_1A4660300(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

id sub_1A4660384()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel(0);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = v0;
    v6 = sub_1A3F3C714(0, 0, 0, 0, 0, sub_1A466B0D0, v4);
    v7 = *(v0 + 32);
    *(v5 + 32) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_1A4660440()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel(0);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = v0;
    v6 = sub_1A4372EDC(0, sub_1A466B95C, v4);
    v7 = *(v0 + 40);
    *(v5 + 40) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1A46604EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  swift_beginAccess();
  return sub_1A4667558(v1 + v3, a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
}

uint64_t sub_1A46605B4(uint64_t a1)
{
  v3 = type metadata accessor for PhotosSearchResults(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults;
  swift_beginAccess();
  sub_1A455287C(a1, v1 + v10);
  v11 = swift_endAccess();
  (*(*v1 + 416))(v11);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    v12 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    return sub_1A3C2CA58(v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v12, sub_1A46600E8);
  }

  else
  {
    sub_1A3C8BF0C(v9, v6, type metadata accessor for PhotosSearchResults);
    v14 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v15 = sub_1A4667278();
    sub_1A3DA541C(!v15);
    sub_1A3C2CA58(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v14, sub_1A46600E8);
    return sub_1A466B4E4(v6, type metadata accessor for PhotosSearchResults);
  }
}

uint64_t sub_1A46608AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  swift_beginAccess();
  return sub_1A3C451FC(v1 + v3, a1);
}

uint64_t sub_1A4660904(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
  swift_beginAccess();
  sub_1A46674C8(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1A4660964()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  }

  else
  {
    v4 = sub_1A4666354();
    v5 = *v0;
    if (v4)
    {
      v6 = (*(v5 + 520))();
    }

    else
    {
      v6 = (*(v5 + 488))();
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1A4660A18(void *a1)
{
  v3 = (*v1 + 464);
  v4 = *v3;
  v12 = (*v3)();
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = a1;
  v6 = a1;

  v7 = v4();
  if (v7 == v12 || !(*(*v1 + 344))())
  {
  }

  else
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = v4();
    (*(v9 + 8))(v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

id sub_1A4660B8C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  }

  else
  {
    type metadata accessor for PhotosSearchAssetResultsViewController();
    v4 = v0;
    v5 = sub_1A4664660();
    v6 = *(v4 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchBarCoordinator);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();

    v9 = sub_1A42E5458(v5, v6, v4, &off_1F171C230, sub_1A466B54C, v7, sub_1A466B7B8, v8);
    v10 = [v9 navigationItem];
    type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
    v11 = v9;

    sub_1A47F04D8(v12, v11);
    v14 = v13;
    [v10 setTitleView_];

    v15 = [v11 navigationItem];
    v16 = sub_1A4666378();
    [v15 _setBottomPalette_];

    v17 = [v11 navigationItem];
    [v17 setStyle_];

    v18 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

void sub_1A4660DB4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsController) = a1;
}

void sub_1A4660E2C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A4669BE4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A46600E8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7 - 8];
  v9 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for LemonadePhotoLibraryContext();
  v12 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(*(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), 0, 0);
  v13 = sub_1A46644C8();
  v14 = sub_1A4660384();
  sub_1A3F3AB58(v12, v13, v14, v22);
  type metadata accessor for LemonadeNavigationContext(0);
  v15 = v22[3];
  v11[2] = v22[2];
  v11[3] = v15;
  v11[4] = v22[4];
  v16 = v22[1];
  *v11 = v22[0];
  v11[1] = v16;
  swift_storeEnumTagMultiPayload();
  sub_1A466B340(v22, v21);
  sub_1A486B6E8(v8);
  v17 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v21[0] = 4;
  v18 = *&v22[0];

  v19 = sub_1A3C799F0(v11, 0, 0, 0, v8, v21, v18, 2);
  sub_1A3F3A30C(v19, v21);
}

uint64_t sub_1A46613B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A3C38BD4();
  sub_1A52408B4();
  sub_1A52407F4();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_1A52406B4();
  sub_1A4669918(&qword_1EB13FA70, MEMORY[0x1E69DBE88]);
  v7 = sub_1A52406F4();
  sub_1A42172D8();
  sub_1A4114188();
  sub_1A5240C34();
  v7(v10, 0);

  (*(v4 + 32))(a1, v6, v3);
  return (*(v4 + 56))(a1, 0, 1, v3);
}

void sub_1A4661638(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionResultsController) = a1;
}

uint64_t sub_1A466164C(uint64_t a1)
{
  v71 = a1;
  v2 = sub_1A52411C4();
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4();
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosSearchResults(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  sub_1A46600E8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v64 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v66 = v1;
  v26 = *(**(v1 + 24) + 416);

  v26(v27);

  v28 = *(v7 + 48);
  if (v28(v18, 1, v6))
  {
    sub_1A3C2CA58(v18, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v29 = 1;
    v30 = v70;
  }

  else
  {
    sub_1A3C8BF0C(v18, v9, type metadata accessor for PhotosSearchResults);
    sub_1A3C2CA58(v18, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v30 = v70;
    (*(v70 + 2))(v25, v9, v2);
    sub_1A466B4E4(v9, type metadata accessor for PhotosSearchResults);
    v29 = 0;
  }

  v31 = *(v30 + 56);
  v70 = v25;
  v31(v25, v29, 1, v2);
  sub_1A4667558(v71, v15, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  v32 = v28(v15, 1, v6);
  v33 = v68;
  v34 = v2;
  if (v32 == 1)
  {
    sub_1A3C2CA58(v15, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v35 = 1;
    v36 = v69;
  }

  else
  {
    v36 = v69;
    (*(v30 + 16))(v69, v15, v34);
    sub_1A466B4E4(v15, type metadata accessor for PhotosSearchResults);
    v35 = 0;
  }

  v31(v36, v35, 1, v34);
  v37 = *(v67 + 48);
  v38 = MEMORY[0x1E69695A8];
  v39 = MEMORY[0x1E69E6720];
  v40 = v70;
  sub_1A4667558(v70, v33, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  v67 = v37;
  sub_1A4667558(v36, v33 + v37, &qword_1EB12AFA0, v38, v39, sub_1A46600E8);
  v41 = v30;
  v42 = *(v30 + 48);
  if (v42(v33, 1, v34) == 1)
  {
    v43 = MEMORY[0x1E69695A8];
    v44 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v36, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A3C2CA58(v40, &qword_1EB12AFA0, v43, v44, sub_1A46600E8);
    if (v42(v33 + v67, 1, v34) == 1)
    {
      sub_1A3C2CA58(v33, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
LABEL_15:
      v54 = MEMORY[0x1E69E6720];
      v53 = v71;
      return sub_1A3C2CA58(v53, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v54, sub_1A46600E8);
    }

    goto LABEL_12;
  }

  v45 = v64;
  sub_1A4667558(v33, v64, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  v46 = v67;
  if (v42(v33 + v67, 1, v34) == 1)
  {
    v47 = v45;
    v48 = MEMORY[0x1E69695A8];
    v49 = MEMORY[0x1E69E6720];
    sub_1A3C2CA58(v69, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A3C2CA58(v70, &qword_1EB12AFA0, v48, v49, sub_1A46600E8);
    (*(v41 + 8))(v47, v34);
LABEL_12:
    sub_1A466B4E4(v33, sub_1A45526E4);
    goto LABEL_13;
  }

  v55 = v33 + v46;
  v56 = v63;
  (*(v41 + 32))(v63, v55, v34);
  sub_1A4669918(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
  v57 = sub_1A524C594();
  v58 = *(v41 + 8);
  v58(v56, v34);
  v59 = MEMORY[0x1E69695A8];
  v60 = MEMORY[0x1E69E6720];
  sub_1A3C2CA58(v69, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A46600E8);
  sub_1A3C2CA58(v70, &qword_1EB12AFA0, v59, v60, sub_1A46600E8);
  v58(v45, v34);
  sub_1A3C2CA58(v33, &qword_1EB12AFA0, v59, v60, sub_1A46600E8);
  if (v57)
  {
    goto LABEL_15;
  }

LABEL_13:
  v50 = v65;
  v51 = MEMORY[0x1E69E6720];
  v52 = v71;
  sub_1A4667558(v71, v65, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);

  sub_1A46605B4(v50);

  swift_beginAccess();
  sub_1A4669820(&v72, 0);
  swift_endAccess();
  v53 = v52;
  v54 = v51;
  return sub_1A3C2CA58(v53, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v54, sub_1A46600E8);
}

uint64_t sub_1A4662124()
{
  v1 = *(**(v0 + 24) + 416);

  v1(v2);
}

void (*sub_1A466219C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  v6 = *(**(v1 + 24) + 416);

  v6(v7);

  return sub_1A46622C0;
}

void sub_1A46622C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = MEMORY[0x1E69E6720];
    sub_1A4667558(*(a1 + 16), v2, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    sub_1A466164C(v2);
    sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4, sub_1A46600E8);
  }

  else
  {
    sub_1A466164C(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1A46623A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**(v1 + 24) + 440);

  v4(v27, v5);

  v6 = v28;
  if (v28)
  {
    v7 = v29;
    v8 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    sub_1A3C2CE9C(v27);
    v13 = (*(v7 + 8))(v6, v7);
    v15 = v14;
    (*(v9 + 8))(v12, v6);
  }

  else
  {
    sub_1A3C2CE9C(v27);
    v13 = 0;
    v15 = 0;
  }

  sub_1A3C451FC(a1, v27);
  v16 = v28;
  if (v28)
  {
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (v15)
    {
      if (v20)
      {
        if (v13 == v18 && v15 == v20)
        {

          return sub_1A3C2CE9C(a1);
        }

        v22 = sub_1A524EAB4();

        if (v22)
        {
          return sub_1A3C2CE9C(a1);
        }

        goto LABEL_17;
      }

LABEL_16:

LABEL_17:
      v23 = *(v2 + 24);
      sub_1A3C451FC(a1, v27);
      v24 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container;
      swift_beginAccess();

      sub_1A46674C8(v27, v23 + v24);
      swift_endAccess();

      swift_beginAccess();
      sub_1A4669820(v26, 1);
      swift_endAccess();
      return sub_1A3C2CE9C(a1);
    }

    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1A3C2CE9C(v27);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  return sub_1A3C2CE9C(a1);
}

uint64_t sub_1A4662688()
{
  v1 = *(**(v0 + 24) + 440);

  v1(v2);
}

void (*sub_1A4662700(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  v4 = *(**(v1 + 24) + 440);

  v4(v5);

  return sub_1A46627BC;
}

void sub_1A46627BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3C451FC(*a1, v2 + 40);
    sub_1A46623A8(v2 + 40);
    sub_1A3C2CE9C(v2);
  }

  else
  {
    sub_1A46623A8(*a1);
  }

  free(v2);
}

uint64_t sub_1A4662824()
{
  swift_beginAccess();
  sub_1A4669820(&v1, 2);
  return swift_endAccess();
}

uint64_t sub_1A4662884()
{

  return swift_deallocClassInstance();
}

void sub_1A46628C4(void (*a1)(uint64_t))
{
  type metadata accessor for PhotosSearchResultsCoordinator.Mutable();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v1;

  a1(v3);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4662978(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v186 = *(v4 - 8);
  v187 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v178 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v180 = *(v6 - 8);
  v7 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v183 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v171 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v171 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v171 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v26);
  *&v179 = &v171 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v171 - v30;
  v32 = (*(*v1 + 416))(v29);
  (*(*v1 + 440))(v196, v32);
  if (sub_1A46675CC(1u, a1))
  {
    v33 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    v34 = sub_1A4009928(*(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), v196);
    v35 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection) = v34;
    sub_1A3C327F4(v35);
    v36 = sub_1A4009E10(v33, v196, 0);
    v37 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection) = v36;

    v38 = sub_1A46645DC();
    sub_1A3C451FC(v196, v188);
    v39 = swift_allocObject();
    v40 = v188[1];
    *(v39 + 16) = v188[0];
    *(v39 + 32) = v40;
    *(v39 + 48) = v189;
    v194 = sub_1A466B1EC;
    v195 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v191 = 1107296256;
    v192 = sub_1A4554DF8;
    v193 = &block_descriptor_180_0;
    v41 = _Block_copy(&aBlock);

    [v38 performChanges_];
    _Block_release(v41);
  }

  if (sub_1A46675CC(2u, a1) && (*(*v2 + 344))())
  {
    v43 = v42;
    ObjectType = swift_getObjectType();
    (*(v43 + 48))(ObjectType, v43);
    swift_unknownObjectRelease();
  }

  if (sub_1A46675CC(1u, a1) || sub_1A46675CC(0, a1) || sub_1A46675CC(2u, a1))
  {
    v181 = v19;
    v185 = v31;
    v45 = sub_1A4664F30();
    v47 = v46;
    v49 = v48;
    v50 = sub_1A46675CC(1u, a1);
    v182 = v16;
    if (v50)
    {
      v51 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
      v52 = sub_1A4664330();
      v174 = v25;
      v53 = v22;
      v54 = a1;
      v55 = v52;
      v56 = sub_1A46643F0();
      v57 = sub_1A400A650(v51, v196, 0, v55, v56, v45, v47);

      a1 = v54;
      v22 = v53;
      v25 = v174;
      v58 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource;
      v59 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource) = v57;
      v60 = v57;

      v61 = sub_1A4665560();
      v62 = sub_1A4664DE8();
      sub_1A4668A24(v62);

      v63 = sub_1A46654E8();
      v64 = *(v2 + v58);
      [v63 setPhotosDataSource_];
    }

    else if (sub_1A46675CC(0, a1) || sub_1A46675CC(2u, a1))
    {
      v66 = sub_1A46654E8();
      v67 = swift_allocObject();
      v67[2] = v45;
      v67[3] = v47;
      v67[4] = v49;
      v194 = sub_1A45531EC;
      v195 = v67;
      aBlock = MEMORY[0x1E69E9820];
      v191 = 1107296256;
      v192 = sub_1A3D59380;
      v193 = &block_descriptor_174_1;
      v68 = _Block_copy(&aBlock);

      [v66 performChanges_];
      _Block_release(v68);
    }

    else
    {
    }

    v184 = a1;
    v69 = (*(*v2 + 488))(v65);
    v70 = [v69 viewModelIfLoaded];

    v31 = v185;
    v71 = v181;
    if (v70)
    {
      v72 = v179;
      sub_1A4667558(v185, v179, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v73 = (*(v180 + 80) + 16) & ~*(v180 + 80);
      v74 = swift_allocObject();
      sub_1A3EA751C(v72, v74 + v73);
      v194 = sub_1A466B14C;
      v195 = v74;
      aBlock = MEMORY[0x1E69E9820];
      v191 = 1107296256;
      v192 = sub_1A3D7692C;
      v193 = &block_descriptor_168_2;
      v75 = _Block_copy(&aBlock);

      [v70 performChanges_];
      _Block_release(v75);
    }

    v76 = sub_1A46644C8();
    sub_1A4667558(v31, v25, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v77 = v187;
    v78 = v186 + 48;
    v79 = *(v186 + 48);
    if (v79(v25, 1, v187) == 1)
    {
      sub_1A3C2CA58(v25, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v80 = 0;
    }

    else
    {
      v80 = *&v25[*(v77 + 40)];
      v81 = v80;
      sub_1A466B4E4(v25, type metadata accessor for PhotosSearchResults);
    }

    sub_1A4667558(v31, v22, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    if (v79(v22, 1, v77) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v22, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v82 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A4667558(v31, v71, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v83 = v79(v71, 1, v77);
    if (v83 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v71, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v84 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    v85 = v182;
    sub_1A4667558(v31, v182, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v86 = v79(v85, 1, v77);
    if (v86 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C2CA58(v85, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v87 = sub_1A452D80C(MEMORY[0x1E69E7CC0], &qword_1EB126440, &qword_1EB126610);
    (*((*MEMORY[0x1E69E7D40] & *v76) + 0x278))(v80, v82, v84, v87, 0, 0);

    v88 = sub_1A4666400();
    [v88 setHidden_];

    v89 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl;
    v90 = [*(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl) isHidden];
    v91 = v78;
    a1 = v184;
    if ((v90 & 1) == 0)
    {
      v181 = v89;
      v92 = sub_1A524C634();
      v93 = PXLocalizedString(v92);

      sub_1A524C674();
      v94 = sub_1A524C634();
      v95 = PXLocalizedString(v94);

      sub_1A524C674();
      v96 = v175;
      sub_1A4667558(v31, v175, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v97 = v79;
      v98 = v187;
      v182 = v97;
      v99 = v97(v96, 1, v187);
      v180 = v91;
      if (v99 == 1)
      {
        sub_1A3C2CA58(v96, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      }

      else
      {
        v100 = v96;
        v101 = v178;
        sub_1A3DAF754(v100, v178);
        if ((sub_1A3DA5294() & 1) == 0 || !*(*(v101 + *(v98 + 20)) + 16))
        {

          v102 = sub_1A524C634();
          v103 = PXLocalizedString(v102);

          v173 = sub_1A524C674();
          sub_1A3C71138(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v175 = v104;
          v105 = swift_allocObject();
          v179 = xmmword_1A52F8E10;
          *(v105 + 16) = xmmword_1A52F8E10;
          v106 = objc_opt_self();
          v107 = sub_1A3C52C70(0, &qword_1EB126610);
          v108 = sub_1A524DBD4();
          v109 = [v106 localizedStringFromNumber:v108 numberStyle:1];

          v110 = sub_1A524C674();
          v111 = v98;
          v113 = v112;

          v114 = v178;
          *(v105 + 56) = MEMORY[0x1E69E6158];
          v174 = sub_1A3D710E8();
          *(v105 + 64) = v174;
          *(v105 + 32) = v110;
          *(v105 + 40) = v113;
          v115 = sub_1A524C6C4();
          v117 = v116;

          v118 = *(*(v114 + *(v111 + 20)) + 16);
          v172 = v107;
          if (v118 >= 0x3E9)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v119 = v115;
          v120 = sub_1A524DBD4();
          v121 = [v106 localizedStringFromNumber:v120 numberStyle:1];

          v122 = sub_1A524C674();
          v173 = v123;

          if (sub_1A3DA535C() <= 1000)
          {

            sub_1A3DA535C();
            v124 = sub_1A524DBD4();
            v125 = [v106 localizedStringFromNumber:v124 numberStyle:1];

            v171 = sub_1A524C674();
            v172 = v126;
          }

          else
          {
            v172 = v117;
            v171 = v119;
          }

          v127 = sub_1A524C634();
          v128 = PXLocalizedString(v127);

          sub_1A524C674();
          v129 = swift_allocObject();
          *(v129 + 16) = v179;
          v130 = MEMORY[0x1E69E6158];
          v131 = v174;
          *(v129 + 56) = MEMORY[0x1E69E6158];
          *(v129 + 64) = v131;
          v132 = v173;
          *(v129 + 32) = v122;
          *(v129 + 40) = v132;
          sub_1A524C6C4();

          v133 = sub_1A524C634();
          v134 = PXLocalizedString(v133);

          sub_1A524C674();
          v135 = swift_allocObject();
          *(v135 + 16) = v179;
          aBlock = v171;
          v191 = v172;
          v136 = sub_1A524C8D4();
          *(v135 + 56) = v130;
          *(v135 + 64) = v131;
          *(v135 + 32) = v136;
          *(v135 + 40) = v137;
          sub_1A524C6C4();

          v98 = v187;
          v101 = v178;
        }

        sub_1A466B4E4(v101, type metadata accessor for PhotosSearchResults);
      }

      v138 = v181;
      v139 = *&v181[v2];
      v140 = sub_1A524C634();

      [v139 setTitle:v140 forSegmentAtIndex:0];

      v141 = *&v138[v2];
      v142 = sub_1A524C634();

      [v141 setTitle:v142 forSegmentAtIndex:1];

      v143 = sub_1A4660384();
      v144 = *(v2 + 48);
      v145 = [*(v144 + 48) title];
      if (v145)
      {
        v146 = v145;
        v147 = sub_1A524C674();
        v149 = v148;
      }

      else
      {
        v147 = 0;
        v149 = 0;
      }

      v150 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v143) + 0x98))(v147, v149);

      v151 = *(v144 + 48);
      v152 = *(v2 + 32);
      v153 = [v151 message];
      if (v153)
      {
        v154 = v153;
        v155 = sub_1A524C674();
        v157 = v156;
      }

      else
      {
        v155 = 0;
        v157 = 0;
      }

      v158 = v176;
      (*((*v150 & *v152) + 0xC8))(v155, v157);

      v159 = *(v2 + 32);
      sub_1A4667558(v185, v158, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      if ((v182)(v158, 1, v98) != 1)
      {
        v161 = v159;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v160 = v159;
      sub_1A3C2CA58(v158, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      a1 = v184;
      v162 = v177;
      v163 = sub_1A524CFC4();
      (*((*v150 & *v160) + 0xF8))(v163);

      v164 = sub_1A4660440();
      v31 = v185;
      sub_1A4667558(v185, v162, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v165 = (v182)(v162, 1, v98);
      if (v165 == 1)
      {
        sub_1A3C2CA58(v162, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
        v166 = 0;
      }

      else
      {
        v167 = sub_1A3DA535C();
        sub_1A466B4E4(v162, type metadata accessor for PhotosSearchResults);
        v166 = v167;
      }

      sub_1A4372AD8(v166);
    }
  }

  v168 = v183;
  sub_1A4667558(v31, v183, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if ((*(v186 + 48))(v168, 1, v187) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2CA58(v168, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if (sub_1A46675CC(1u, a1) || sub_1A46675CC(0, a1))
  {
    v169 = sub_1A4665560();
    sub_1A3C2CA58(v31, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v169[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange] = 1;
  }

  else
  {
    sub_1A3C2CA58(v31, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  return sub_1A3C2CE9C(v196);
}

id sub_1A4664330()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    (*(*v0 + 440))(v8);
    v3 = sub_1A4009928(v4, v8);
    sub_1A3C2CE9C(v8);
    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_1A3C327F4(v5);
  }

  sub_1A3C327E4(v2);
  return v3;
}

id sub_1A46643F0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___allResultCollection);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    (*(*v0 + 440))(v10);
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_allResultsPrewarmedFetchResult);

    v6 = sub_1A4009E10(v4, v10, v5);

    sub_1A3C2CE9C(v10);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A46644C8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionSectionProvider);
  }

  else
  {
    type metadata accessor for PhotosSearchCollectionSectionProvider();
    v4 = v0;
    v5 = PhotosSearchCollectionSectionProvider.__allocating_init(photoLibrary:)(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A466454C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bodyLayoutProvider);
  }

  else
  {
    v4 = sub_1A46644C8();
    v5 = [objc_allocWithZone(PXPhotosSearchBodyLayoutProvider) initWithCollectionSectionProvider_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A46645DC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___viewOptionsModel);
  }

  else
  {
    v4 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A4664680(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1A4664DE8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSource);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary);
    v5 = v0;
    (*(*v0 + 440))(v15);
    v6 = sub_1A4664330();
    v7 = sub_1A46643F0();
    v8 = sub_1A4664F30();
    v10 = sub_1A400A650(v4, v15, 0, v6, v7, v8, v9);

    sub_1A3C2CE9C(v15);
    v11 = sub_1A4665560();
    v3 = v10;
    sub_1A4668A24(v10);

    v12 = *(v5 + v1);
    *(v5 + v1) = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1A4664F30()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 416))(v6);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_1A3DAF754(v3, v8);
    v15 = sub_1A4664330();
    v16 = sub_1A46643F0();
    if (sub_1A4667278())
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A400AC78(0, v15, v16);
  }

  v9 = sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  (*(*v0 + 440))(v24, v9);
  v10 = v24[3];
  sub_1A3C2CE9C(v24);
  v11 = sub_1A4664330();
  if (v10)
  {
    v23[5] = v11;
    v12 = 0;
    v23[6] = sub_1A46643F0();
    v24[0] = MEMORY[0x1E69E7CC0];
    while (v12 != 2)
    {
      v13 = v23[v12++ + 5];
      if (v13)
      {
        v14 = v13;
        MEMORY[0x1A5907D70]();
        if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
      }
    }

    sub_1A466AFD4(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    sub_1A400B0AC();
  }

  v23[11] = v11;
  v17 = 0;
  v23[12] = sub_1A46643F0();
  v18 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  while (v17 != 2)
  {
    v19 = v23[v17++ + 11];
    if (v19)
    {
      v20 = v19;
      MEMORY[0x1A5907D70]();
      if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v18 = v24[0];
    }
  }

  sub_1A466AFD4(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v21 = sub_1A400B130(v18);

  return v21;
}

id sub_1A46654E8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___dataSourceManager);
  }

  else
  {
    type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
    v4 = v0;
    v5 = sub_1A4664DE8();
    v6 = sub_1A43F36AC(v5);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A4665560()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsScrollPositionManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AssetResultsScrollPositionManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A46655D0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___gridActionPerformerInformationProviderManager);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for GridActionPerformerInformationProviderManager();
    v6 = objc_allocWithZone(v5);
    swift_weakInit();
    swift_weakAssign();
    v7 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0045GridActionPerformerInformationProviderManager_searchBarResignFirstResponderIfPossible];
    *v7 = sub_1A466AF08;
    v7[1] = v4;
    v12.receiver = v6;
    v12.super_class = v5;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1A46656C4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewDelegateManager);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = type metadata accessor for AssetResultsViewDelegateManager();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder];
    *v9 = sub_1A466B9F8;
    *(v9 + 1) = v4;
    v10 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_saveSearchResults];
    *v10 = sub_1A466B9FC;
    *(v10 + 1) = v5;
    v11 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_reportAssetResultSelectedAnalytics];
    *v11 = sub_1A466AB08;
    v11[1] = v6;
    v16.receiver = v8;
    v16.super_class = v7;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_1A4665818()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-1] - v3;
  (*(*v0 + 440))(v11, v2);
  v5 = v11[3];
  result = sub_1A3C2CE9C(v11);
  if (!v5)
  {
    result = (*(*v0 + 344))(result);
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(*v0 + 416))();
      (*(v8 + 24))(v4, *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_photoLibrary), ObjectType, v8);
      swift_unknownObjectRelease();
      return sub_1A3C2CA58(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    }
  }

  return result;
}

id sub_1A46659FC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___assetResultsViewModelObserver);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = type metadata accessor for AssetResultsViewModelObserver();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder];
    *v9 = sub_1A466A974;
    *(v9 + 1) = v4;
    v10 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults];
    *v10 = sub_1A466A978;
    *(v10 + 1) = v5;
    v11 = &v8[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl];
    *v11 = sub_1A466A97C;
    v11[1] = v6;
    v16.receiver = v8;
    v16.super_class = v7;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_1A4665B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v14 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id (*sub_1A4665C28())(void *a1, uint64_t a2)
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *v1;
    v3 = sub_1A466A96C;
    *v1 = sub_1A466A96C;
    v1[1] = v4;

    sub_1A3C33378(v5);
  }

  sub_1A3C66EE8(v2);
  return v3;
}

id sub_1A4665CE4(void *a1, uint64_t a2)
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for PhotosSearchResults(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_13;
  }

  (*(*Strong + 416))(Strong);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_13:
    sub_1A3C2CA58(v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    return a2;
  }

  sub_1A3DAF754(v6, v10);
  v12 = *&v10[v7[12]];
  if (!v12)
  {
    goto LABEL_20;
  }

  result = [a1 uuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = result;
  v15 = sub_1A524C674();
  v17 = v16;

  if (!*(v12 + 16))
  {

    goto LABEL_20;
  }

  v18 = sub_1A3C5DCA4(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = *(*(v12 + 56) + 8 * v18);
  if (v21 == 3)
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      goto LABEL_20;
    }

    v22 = 0x1000000000000;
  }

  else if (v21 == 2)
  {
    if ((a2 & 0x800000000000) != 0)
    {
      goto LABEL_20;
    }

    v22 = 0x800000000000;
  }

  else
  {
    if (v21 != 1 || (a2 & 0x400000000000) != 0)
    {
      goto LABEL_20;
    }

    v22 = 0x400000000000;
  }

  a2 |= v22;
LABEL_20:
  sub_1A3C52C70(0, &qword_1EB126A10);
  v23 = [swift_getObjCClassFromMetadata() sharedInstance];
  v24 = [v23 showSearchDebugBadges];

  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = *&v10[v7[11]];
  if (!v25)
  {
    goto LABEL_28;
  }

  result = [a1 uuid];
  if (result)
  {
    v26 = result;
    v27 = sub_1A524C674();
    v29 = v28;

    if (*(v25 + 16))
    {
      sub_1A3C5DCA4(v27, v29);
      v31 = v30;

      if (v31)
      {
        a2 |= 0x2000000000000uLL;
      }
    }

    else
    {
    }

LABEL_28:
    v32 = type metadata accessor for PhotosSearchUtilities();
    a2 = (*(v32 + 272))(a1, a2, *&v10[v7[10]]);
    sub_1A466B4E4(v10, type metadata accessor for PhotosSearchResults);
    return a2;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A46660E0(char a1)
{
  v2 = v1;
  result = sub_1A4666354();
  if ((a1 & 1) != result)
  {
    v5 = sub_1A4666400();
    v6 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status;
    [v5 setSelectedSegmentIndex_];

    v7 = *v2;
    v8 = (*(v2 + v6) & 1) != 0 ? (*(v7 + 520))() : (*(v7 + 488))();
    v9 = v8;
    v10 = (*v2 + 464);
    v11 = *v10;
    v12 = (*v10)();
    v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___currentViewController) = v9;
    v14 = v9;

    v15 = v11();
    if (v15 == v12 || !(*(*v2 + 344))())
    {
    }

    else
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      v19 = v11();
      (*(v17 + 8))(v19, ObjectType, v17);

      v20 = swift_unknownObjectRelease();
    }

    result = (*(*v2 + 344))(v20);
    if (result)
    {
      v22 = v21;
      v23 = swift_getObjectType();
      (*(v22 + 16))(v23, v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A4666354()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 0;
  }

  return v1 & 1;
}

id sub_1A4666378()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___bottomPalette);
  }

  else
  {
    type metadata accessor for PhotosSearchNavigationBarPalette();
    v4 = v0;
    v5 = sub_1A4666400();
    v6 = sub_1A3C5A374();
    v7 = sub_1A3DEFCE8(v5, v6 & 1);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1A4666400()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___segmentedControl);
  }

  else
  {
    sub_1A3C373D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9DE0;
    *(v4 + 32) = sub_1A46665D0();
    *(v4 + 40) = sub_1A466670C();
    v5 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    sub_1A3C52C70(0, &qword_1EB126590);
    v6 = sub_1A524CA14();

    v7 = [v5 initWithFrame:v6 actions:{0.0, 0.0, 0.0, 0.0}];

    [v7 _setUseGlass_];
    [v7 setSelectedSegmentIndex_];
    v8 = *(*v0 + 440);
    v9 = v7;
    v8(v14);
    v10 = v14[3] != 0;
    sub_1A3C2CE9C(v14);
    [v9 setHidden_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1A46665D0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___photosSegmentAction);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126590);
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
    swift_allocObject();
    swift_weakInit();
    v6 = v0;
    v7 = sub_1A524DC64();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1A466670C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___collectionsSegmentAction);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126590);
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
    swift_allocObject();
    swift_weakInit();
    v6 = v0;
    v7 = sub_1A524DC64();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1A4666848()
{
  v1 = sub_1A4666354();
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 0;

  return sub_1A46660E0(v1);
}

uint64_t sub_1A466687C()
{
  v1 = sub_1A4666354();
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = 1;

  return sub_1A46660E0(v1);
}

uint64_t sub_1A46668B4(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v12 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    (*(*Strong + 416))(Strong);

    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_1A3C2CA58(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    }

    else
    {
      sub_1A3C8BF0C(v10, v7, type metadata accessor for PhotosSearchResults);
      sub_1A3C2CA58(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
      v14 = *&v7[*(v4 + 56)];
      v15 = v14;
      v16 = sub_1A466B4E4(v7, type metadata accessor for PhotosSearchResults);
      if (v14)
      {
        v21[1] = v3;
        v17 = (*((*v12 & *a1) + 0xC8))(v16);
        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        type metadata accessor for PhotosSearchUtilities();
        sub_1A3ECBAC4(v15);
        v21[2] = v15;
        v21[3] = v19;
        v21[4] = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  return (*((*v12 & *a1) + 0x200))(0);
}

id sub_1A4666DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524C634();
  v5 = [objc_opt_self() _systemImageNamed_];

  sub_1A4667558(a1, v15, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C373D0);
  v6 = v16;
  if (v16)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1A524EA94();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:v12 action:a2];

  swift_unknownObjectRelease();
  return v13;
}

id *sub_1A4666FC8()
{
  sub_1A3D35A10((v0 + 2));

  sub_1A3C2CA58(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_searchResults, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  sub_1A3C2CE9C(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_container);

  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator_customAssetSelectionHandler));

  sub_1A3C327F4(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___topResultCollection));

  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___badgesModifier));
  return v0;
}

uint64_t sub_1A46671F4()
{
  sub_1A4666FC8();

  return swift_deallocClassInstance();
}

BOOL sub_1A4667278()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-1] - v2;
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 440))(v14, v6);
  v9 = v14[3];
  v10 = sub_1A3C2CE9C(v14);
  if (!v9)
  {
    (*(*v0 + 416))(v10);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_1A3DAF754(v3, v8);
      v12 = *(*&v8[*(v4 + 20)] + 16) > 0x14uLL;
      sub_1A466B4E4(v8, type metadata accessor for PhotosSearchResults);
      return v12;
    }

    sub_1A3C2CA58(v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  }

  return 0;
}

uint64_t sub_1A46674C8(uint64_t a1, uint64_t a2)
{
  sub_1A3C71138(0, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4667558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

BOOL sub_1A46675CC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v3);
  v4 = sub_1A524ECE4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id sub_1A4667698(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A4667558(a2, &v15 - v9, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4, sub_1A46600E8);
  v11 = type metadata accessor for PhotosSearchResults(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_1A3C2CA58(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
    v13 = 0;
  }

  else
  {
    v13 = *&v10[*(v11 + 40)];
    sub_1A466B4E4(v10, type metadata accessor for PhotosSearchResults);
  }

  [a1 setSearchQueryMatchInfo_];

  sub_1A4667558(a2, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  if (v12(v7, 1, v11) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2CA58(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A46600E8);
  [a1 setSearchContextualVideoThumbnailIdentifiers_];

  [a1 setAllowsEmptyPlaceholderBehavior_];
  result = (v12)(a2, 1, v11);
  if (result == 1)
  {
    [a1 setIsInSelectMode_];
    return [a1 resetToInitialSelectionAndFilteringState];
  }

  return result;
}

uint64_t sub_1A4667A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1A466A8DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_237;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4669918(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A46600E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE7C(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1A4667D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_1A524BEE4();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BFC4();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = a3;
    v18 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0045GridActionPerformerInformationProviderManager_searchBarResignFirstResponderIfPossible);
    v19 = Strong;

    v18();

    a3 = v17;
  }

  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 16) = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v31 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v33 = *(v33 + 8);
  (v33)(v12, v10);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a1;
  v22[4] = v32;
  v22[5] = a3;
  aBlock[4] = sub_1A466A8E8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_124_1;
  v23 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = v21;
  sub_1A4669918(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v24 = v10;
  v25 = v9;
  v26 = MEMORY[0x1E69E7F60];
  sub_1A46600E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE7C(&qword_1EB12B1B0, &qword_1EB12B1C0, v26);
  v27 = v36;
  v28 = v38;
  sub_1A524E224();
  v29 = v31;
  MEMORY[0x1A5908790](v15, v25, v27, v23);
  _Block_release(v23);

  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v25, v35);
  (v33)(v15, v24);
}

uint64_t sub_1A4668240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[4] = a4;
  v19[5] = a3;
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for PhotosSearchResults(0);
  MEMORY[0x1EEE9AC00](v5);
  v19[1] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() px_mainScreen];
  v8 = [v7 snapshotViewAfterScreenUpdates_];

  [v8 frame];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A4554B80;
  *(v15 + 24) = v14;
  v19[3] = v14;
  v22 = sub_1A3D78DD0;
  v23 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  v21 = &block_descriptor_133_0;
  v16 = _Block_copy(aBlock);
  v19[2] = v8;

  v17 = [v13 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    sub_1A4A38E34();
    v21 = sub_1A3C52C70(0, &qword_1EB126630);
    aBlock[0] = v17;
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A4668A24(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    [Strong unregisterChangeObserver_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 registerChangeObserver_];
  }
}

void sub_1A4668ED0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A4668F2C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_observing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

uint64_t sub_1A4668FC4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  if (v4)
  {
    v5 = v4;
    [v4 unregisterChangeObserver:v1 context:0];
  }

  [a1 registerChangeObserver:v1 context:0];
  v8 = *((*v3 & *v1) + 0x78);
  v6 = a1;

  return v8(a1);
}

id sub_1A46690EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A466919C(void *a1, int a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v9 = a1;
    if ((a2 & 0x40000) != 0 && [v7 isInteractiveZooming])
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder))();
    }

    if ((a2 & 4) != 0)
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_updateSegmentedControl))([v7 isInSelectMode]);
      if ([v7 isInSelectMode])
      {
        v8 = (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_resignSearchBarFirstResponder))();
        (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults))(v8);
      }
    }

    if ((a2 & 0x2000000) != 0)
    {
      (*(a3 + OBJC_IVAR____TtC12PhotosUICore29AssetResultsViewModelObserver_saveSearchResults))();
    }
  }
}

void sub_1A466938C()
{
  v0._object = 0x80000001A53D5C30;
  v1.value._countAndFlagsBits = 0xD00000000000002FLL;
  v1.value._object = 0x80000001A53E2A60;
  v0._countAndFlagsBits = 0xD000000000000016;
  TTRWorkflowStep.init(title:description:)(&v6, v0, v1);
  id = v6.id;
  title = v6.title;
  description = v6.description;
  *&v5 = v6.actions._rawValue;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 4;
  TTRWorkflowStep.add(action:)(v8, &v7);
}

uint64_t sub_1A4669770(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(7, 0);
  return (*((*v4 & *a1) + 0x100))(a2, 0);
}

uint64_t sub_1A4669820(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A524EC94();
  MEMORY[0x1A590A010](a2);
  v6 = sub_1A524ECE4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A466A204(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A4669918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PhotosSearchResultsCoordinator()
{
  result = qword_1EB1CB6A8;
  if (!qword_1EB1CB6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4669A2C()
{
  sub_1A46600E8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4669BE4()
{
  if (!qword_1EB1294F0)
  {
    sub_1A4669CBC();
    sub_1A4669918(&qword_1EB1295F8, sub_1A4669CBC);
    sub_1A4669918(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
    v0 = type metadata accessor for LemonadeSearchCollectionResultFeedView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1294F0);
    }
  }
}

void sub_1A4669CBC()
{
  if (!qword_1EB1295E8)
  {
    type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(255);
    sub_1A4669918(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
    v0 = type metadata accessor for LemonadeBasicSectionedFeedProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1295E8);
    }
  }
}

unint64_t sub_1A4669E94()
{
  result = qword_1EB1CB940[0];
  if (!qword_1EB1CB940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CB940);
  }

  return result;
}

unint64_t sub_1A4669EEC()
{
  result = qword_1EB13FA38;
  if (!qword_1EB13FA38)
  {
    sub_1A3C373D0(255, &unk_1EB13FA40, &type metadata for PhotosSearchResultsCoordinator.Mutable.UpdateFlag, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA38);
  }

  return result;
}

unint64_t sub_1A4669F6C()
{
  result = qword_1EB172730;
  if (!qword_1EB172730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB172730);
  }

  return result;
}

uint64_t sub_1A4669FC0()
{
  v1 = v0;
  v2 = *v0;
  sub_1A466B290();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1A524EC94();
      MEMORY[0x1A590A010](v16);
      result = sub_1A524ECE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A466A204(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A4669FC0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A466A350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A466A484();
  }

  v8 = *v3;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v4);
  result = sub_1A524ECE4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}