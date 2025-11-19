char *sub_13D8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5044();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_14D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5044();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_16D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5044();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5044();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5044();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for AppLaunchButton()
{
  result = qword_C108;
  if (!qword_C108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98()
{
  result = sub_5164();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_5044();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7C()
{
  v1 = sub_5194();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v7 = v0 + *(type metadata accessor for AppLaunchButton() + 20);
  sub_5024();
  if (v8)
  {
    v9 = sub_51A4();
  }

  else
  {
    v9 = 0;
  }

  [v6 setLaunchId:v9];

  sub_5144();
  v10 = v6;
  sub_5174();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppLaunchButton() + 20);
  sub_5034();
  sub_2398();
  result = sub_5094();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v21[1] = a2;
  v21[0] = sub_5104();
  v5 = *(v21[0] - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = sub_2008(&qword_C140, &unk_5450);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  sub_2050(v2, v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_21CC(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v21[4] = v4;
  sub_50F4();
  sub_5084();
  sub_2294();
  sub_2340();
  v19 = v21[0];
  sub_50D4();
  (*(v5 + 8))(v9, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2008(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B4()
{
  v1 = (type metadata accessor for AppLaunchButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_5164();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_5044();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230()
{
  v1 = *(type metadata accessor for AppLaunchButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B7C();
}

unint64_t sub_2294()
{
  result = qword_C148;
  if (!qword_C148)
  {
    sub_22F8(&qword_C140, &unk_5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C148);
  }

  return result;
}

uint64_t sub_22F8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2340()
{
  result = qword_C150;
  if (!qword_C150)
  {
    sub_5104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C150);
  }

  return result;
}

unint64_t sub_2398()
{
  result = qword_C158;
  if (!qword_C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C158);
  }

  return result;
}

uint64_t sub_23EC()
{
  sub_22F8(&qword_C140, &unk_5450);
  sub_5104();
  sub_2294();
  sub_2340();
  return swift_getOpaqueTypeConformance2();
}

char *sub_2470(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5054();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_256C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5054();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_2610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_2770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_2820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5054();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5054();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5054();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for ConfirmationView()
{
  result = qword_C1B8;
  if (!qword_C1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B30()
{
  result = sub_5164();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_5054();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2C14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for ConfirmationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3114(a1, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_32B4(v9, v12 + v10);
  *(v12 + v11) = a2;
  v13 = a2;
  v26 = a1;
  v22 = sub_2008(&qword_C140, &unk_5450);
  v28[3] = v22;
  v14 = sub_36D4(&qword_C1F8, &qword_C140, &unk_5450);
  v28[4] = v14;
  sub_344C(v28);
  v15 = v13;
  sub_50F4();
  sub_3114(a1, v9);
  v16 = swift_allocObject();
  sub_32B4(v9, v16 + v10);
  v17 = v22;
  v18 = v23;
  *(v16 + v11) = v23;
  v25 = a1;
  v27[3] = v17;
  v27[4] = v14;
  sub_344C(v27);
  v19 = v18;
  sub_50F4();
  return sub_5124();
}

uint64_t sub_2E7C()
{
  v0 = sub_5194();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5144();
  sub_5184();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2F58@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ConfirmationView() + 20);
  a1();
  sub_2398();
  result = sub_5094();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2FD4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5074();
  v7 = v6;
  sub_3114(v1, v4);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_32B4(v4, v10 + v8);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_5134();
  sub_33C0();
  return sub_5114();
}

uint64_t sub_3114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3178()
{
  v1 = (type metadata accessor for ConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_5164();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_5054();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_32B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3318@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2C14(v1 + v4, v6, v7, a1);
}

unint64_t sub_33C0()
{
  result = qword_C1F0;
  if (!qword_C1F0)
  {
    sub_5134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F0);
  }

  return result;
}

uint64_t *sub_344C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_34B0()
{
  v1 = (type metadata accessor for ConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_5164();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_5054();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_35E0()
{
  v1 = *(type metadata accessor for ConfirmationView() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2E7C();
}

uint64_t sub_36D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_3724(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_5164();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_5014();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_3820(uint64_t a1, uint64_t a2)
{
  v4 = sub_5164();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_5014();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_38C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_5014();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_3B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5014();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_3C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5014();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PunchOutButton()
{
  result = qword_C268;
  if (!qword_C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DE4()
{
  result = sub_5164();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_5014();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_3EC8()
{
  v1 = sub_5194();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4FE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2008(&qword_C2A0, qword_5548);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_4FB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v20 = *(type metadata accessor for PunchOutButton() + 20);
  v29 = v0;
  sub_4FF4();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    return sub_4784(v13);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v22 = v19;
    sub_4FD4();
    sub_4FC4();
    (*(v6 + 8))(v9, v5);
    v23 = sub_51A4();

    [v22 setAceId:v23];

    sub_4FA4(v24);
    v26 = v25;
    [v22 setPunchOutUri:v25];

    sub_5144();
    v27 = v22;
    sub_5174();

    (*(v30 + 8))(v4, v31);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_4230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PunchOutButton() + 20);
  sub_5004();
  sub_2398();
  result = sub_5094();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_42A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v21[1] = a2;
  v21[0] = sub_5104();
  v5 = *(v21[0] - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v21[0]);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = sub_2008(&qword_C140, &unk_5450);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  sub_4540(v2, v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_46BC(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v21[4] = v4;
  sub_50F4();
  sub_5084();
  sub_2294();
  sub_2340();
  v19 = v21[0];
  sub_50D4();
  (*(v5 + 8))(v9, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_4540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchOutButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45A4()
{
  v1 = (type metadata accessor for PunchOutButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_5164();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_5014();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_46BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchOutButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4720()
{
  v1 = *(type metadata accessor for PunchOutButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_3EC8();
}

uint64_t sub_4784(uint64_t a1)
{
  v2 = sub_2008(&qword_C2A0, qword_5548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4868@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_48B4(uint64_t a1)
{
  v43 = a1;
  v42 = type metadata accessor for ConfirmationView();
  v1 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_5054();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PunchOutButton();
  v5 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5014();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppLaunchButton();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5044();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5064();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v43, v20);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for SiriKitSnippets.appLaunchButton(_:))
  {
    (*(v21 + 96))(v24, v20);
    (*(v16 + 32))(v19, v24, v15);
    (*(v16 + 16))(&v14[*(v11 + 20)], v19, v15);
    sub_5154();
    sub_4EFC(&qword_C358, type metadata accessor for AppLaunchButton);
    v26 = sub_50A4();
    sub_4F44(v14, type metadata accessor for AppLaunchButton);
    (*(v16 + 8))(v19, v15);
    return v26;
  }

  if (v25 == enum case for SiriKitSnippets.punchOutButton(_:))
  {
    (*(v21 + 96))(v24, v20);
    v28 = v34;
    v27 = v35;
    v29 = v36;
    (*(v35 + 32))(v34, v24, v36);
    (*(v27 + 16))(&v7[*(v37 + 20)], v28, v29);
    sub_5154();
    sub_4EFC(&qword_C350, type metadata accessor for PunchOutButton);
    v26 = sub_50A4();
    v30 = type metadata accessor for PunchOutButton;
    v31 = v7;
LABEL_7:
    sub_4F44(v31, v30);
    (*(v27 + 8))(v28, v29);
    return v26;
  }

  if (v25 == enum case for SiriKitSnippets.confirmationSnippet(_:))
  {
    (*(v21 + 96))(v24, v20);
    v28 = v38;
    v27 = v39;
    v29 = v41;
    (*(v39 + 32))(v38, v24, v41);
    v32 = v40;
    (*(v27 + 16))(&v40[*(v42 + 20)], v28, v29);
    sub_5154();
    sub_4EFC(&qword_C348, type metadata accessor for ConfirmationView);
    v26 = sub_50A4();
    v30 = type metadata accessor for ConfirmationView;
    v31 = v32;
    goto LABEL_7;
  }

  result = sub_51B4();
  __break(1u);
  return result;
}

uint64_t sub_4EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}