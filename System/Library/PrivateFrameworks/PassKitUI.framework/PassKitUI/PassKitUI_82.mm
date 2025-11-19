unint64_t sub_1BD8E9A78()
{
  result = qword_1EBD58320;
  if (!qword_1EBD58320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58300);
    sub_1BD8E9B34();
    sub_1BD8E9E98(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58320);
  }

  return result;
}

unint64_t sub_1BD8E9B34()
{
  result = qword_1EBD58328;
  if (!qword_1EBD58328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58318);
    sub_1BD8E9BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58328);
  }

  return result;
}

unint64_t sub_1BD8E9BC0()
{
  result = qword_1EBD58330;
  if (!qword_1EBD58330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58310);
    sub_1BD0DE4F4(&qword_1EBD58338, &qword_1EBD58340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58330);
  }

  return result;
}

unint64_t sub_1BD8E9C78()
{
  result = qword_1EBD58348;
  if (!qword_1EBD58348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58348);
  }

  return result;
}

unint64_t sub_1BD8E9CCC()
{
  result = qword_1EBD58380;
  if (!qword_1EBD58380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58370);
    sub_1BD0DE4F4(&qword_1EBD40848, &qword_1EBD40838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58380);
  }

  return result;
}

uint64_t objectdestroyTm_111()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD8E9E98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8E9EE0()
{
  result = qword_1EBD58410;
  if (!qword_1EBD58410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583F8);
    sub_1BD8E9F98();
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58410);
  }

  return result;
}

unint64_t sub_1BD8E9F98()
{
  result = qword_1EBD58418;
  if (!qword_1EBD58418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE58);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58418);
  }

  return result;
}

unint64_t sub_1BD8EA050()
{
  result = qword_1EBD58420;
  if (!qword_1EBD58420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583E8);
    sub_1BD8EA108();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58420);
  }

  return result;
}

unint64_t sub_1BD8EA108()
{
  result = qword_1EBD58428;
  if (!qword_1EBD58428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49180);
    sub_1BD0F14E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58428);
  }

  return result;
}

unint64_t sub_1BD8EA1D0()
{
  result = qword_1EBD58440;
  if (!qword_1EBD58440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD583B8);
    sub_1BE050014();
    sub_1BD0DE4F4(&qword_1EBD583D0, &qword_1EBD583B8);
    sub_1BD8E9E98(&qword_1EBD366F0, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58440);
  }

  return result;
}

uint64_t sub_1BD8EA374@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return sub_1BE048C84();
}

void sub_1BD8EA450(void (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential) configuration];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 password];
    v5 = sub_1BE052434();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v10 passwordEnteredManually];
    }

    else
    {
      v9 = 1;
    }

    a1(v9, 0xD000000000000017, 0x80000001BE13F8C0, 2);
  }

  else
  {
    a1(0x69666E6F63206F6ELL, 0xE900000000000067, 0, 1);
  }
}

uint64_t sub_1BD8EA594()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8EA5D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_1BD8EA620()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_context];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential];
  v3 = objc_allocWithZone(type metadata accessor for ProvisioningCarPairingPinCodeViewController());
  sub_1BE048964();
  return sub_1BD8EA7C4(v1, v2, v0, v3, &off_1F3BC4BB8);
}

uint64_t sub_1BD8EA69C()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    memset(v5, 0, sizeof(v5));
    v6 = 2;
    sub_1BD865A00(v0, &off_1F3BC4BD0, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

uint64_t sub_1BD8EA72C()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BC4BD0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1BD8EA7C4(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView] = 0;
  v16 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
  *&a4[v16] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter] = 0;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_provisioningContext] = a1;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential] = a2;
  *&a4[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate + 8] = a5;
  swift_unknownObjectUnownedInit();
  sub_1BE048964();
  v17 = a2;
  sub_1BE04BC34();
  v18 = sub_1BE04B9A4();
  (*(v12 + 8))(v15, v11);
  v24.receiver = a4;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_initWithContext_, v18);
  if (result)
  {
    v20 = result;
    [v20 setExplanationViewControllerDelegate_];
    [v20 setShowDoneButton_];
    [v20 setShowCancelButton_];
    sub_1BE052434();
    v21 = sub_1BE04BB74();

    v22 = *&v20[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter];
    *&v20[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter] = v21;

    v23 = [objc_opt_self() defaultCenter];
    [v23 addObserver:v20 selector:sel_keyboardDidChange_ name:*MEMORY[0x1E69DE080] object:0];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8EAA54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD8EAA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD8EAB08@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v22[0] = a1;
  v22[1] = a3;
  v4 = sub_1BE04FF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58468);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58470);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v22 - v16;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58478);
  sub_1BD8EADBC(v22[0], a2 & 0x101, &v12[*(v18 + 44)]);
  v19 = &v12[v9[9]];
  *v19 = 0;
  v19[8] = HIBYTE(a2) & 1;
  sub_1BE04FF44();
  v20 = sub_1BD8EB420();
  sub_1BE050D14();
  (*(v5 + 8))(v8, v4);
  sub_1BD0DE53C(v12, &qword_1EBD58468);
  sub_1BE052434();
  v22[2] = v9;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v14 + 8))(v17, v13);
}

id sub_1BD8EADBC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v70) = a2;
  v69 = a3;
  v4 = sub_1BE04F6E4();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v60 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v7);
  v59 = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B30);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v68 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v65 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = v58 - v21;
  result = [a1 displayName];
  if (result)
  {
    v23 = result;
    v24 = sub_1BE052434();
    v26 = v25;

    *&v80[0] = v24;
    *(&v80[0] + 1) = v26;
    sub_1BD0DDEBC();
    v27 = sub_1BE0506C4();
    v29 = v28;
    v31 = v30;
    sub_1BE050324();
    v32 = sub_1BE0505F4();
    v34 = v33;
    v36 = v35;

    sub_1BD0DDF10(v27, v29, v31 & 1);

    if (v70)
    {
      sub_1BE051224();
    }

    else
    {
      sub_1BE051234();
    }

    v37 = sub_1BE050564();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    sub_1BD0DDF10(v32, v34, v36 & 1);

    sub_1BE051CE4();
    v44 = 1;
    sub_1BE04EE54();
    v81 = v41 & 1;
    *&v71 = v37;
    *(&v71 + 1) = v39;
    LOBYTE(v72) = v41 & 1;
    *(&v72 + 1) = v43;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
    sub_1BD19D16C();
    v45 = v63;
    sub_1BE050DE4();

    v80[6] = v77;
    v80[7] = v78;
    v80[8] = v79;
    v80[2] = v73;
    v80[3] = v74;
    v80[4] = v75;
    v80[5] = v76;
    v80[0] = v71;
    v80[1] = v72;
    sub_1BD0DE53C(v80, &qword_1EBD3E090);
    v46 = v67;
    if ((v70 & 0x100) != 0)
    {
      v47 = sub_1BE051574();
      v70 = v47;
      v48 = sub_1BE0502D4();
      v58[1] = v48;
      KeyPath = swift_getKeyPath();
      v50 = sub_1BE0511E4();
      v51 = swift_getKeyPath();
      *&v71 = v47;
      *(&v71 + 1) = KeyPath;
      *&v72 = v48;
      *(&v72 + 1) = v51;
      *&v73 = v50;
      v52 = v60;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
      sub_1BD0F1430();
      v53 = v59;
      sub_1BE050DA4();
      (*(v61 + 8))(v52, v62);

      sub_1BD36088C(v53, v46);
      v44 = 0;
    }

    (*(v64 + 56))(v46, v44, 1, v66);
    v54 = v65;
    sub_1BD0DE19C(v45, v65, &qword_1EBD3BC18);
    v55 = v68;
    sub_1BD0DE19C(v46, v68, &qword_1EBD42B30);
    v56 = v69;
    sub_1BD0DE19C(v54, v69, &qword_1EBD3BC18);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58498);
    sub_1BD0DE19C(v55, v56 + *(v57 + 48), &qword_1EBD42B30);
    sub_1BD0DE53C(v46, &qword_1EBD42B30);
    sub_1BD0DE53C(v45, &qword_1EBD3BC18);
    sub_1BD0DE53C(v55, &qword_1EBD42B30);
    return sub_1BD0DE53C(v54, &qword_1EBD3BC18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8EB400@<X0>(void *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1BD8EAB08(*v1, v2 | *(v1 + 8), a1);
}

unint64_t sub_1BD8EB420()
{
  result = qword_1EBD58480;
  if (!qword_1EBD58480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58468);
    sub_1BD0DE4F4(&qword_1EBD58488, &qword_1EBD58490);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58480);
  }

  return result;
}

unint64_t sub_1BD8EB504()
{
  result = qword_1EBD584A0;
  if (!qword_1EBD584A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD584A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58468);
    sub_1BD8EB420();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584A0);
  }

  return result;
}

uint64_t sub_1BD8EB634(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7173491;
  }

  else
  {
    v3 = 0x746E756F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7173491;
  }

  else
  {
    v5 = 0x746E756F63;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

unint64_t sub_1BD8EB6D4()
{
  result = qword_1EBD584B0;
  if (!qword_1EBD584B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584B0);
  }

  return result;
}

uint64_t sub_1BD8EB728()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD8EB7A0()
{
  sub_1BE052524();
}

uint64_t sub_1BD8EB804()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD8EB878@<X0>(char *a1@<X8>)
{
  v2 = sub_1BE053A44();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BD8EB8D8(uint64_t *a1@<X8>)
{
  v2 = 7173491;
  if (!*v1)
  {
    v2 = 0x746E756F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BD8EB910()
{
  result = qword_1EBD584B8;
  if (!qword_1EBD584B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584B8);
  }

  return result;
}

unint64_t sub_1BD8EB968()
{
  result = qword_1EBD584C0;
  if (!qword_1EBD584C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584C0);
  }

  return result;
}

unint64_t sub_1BD8EB9C0()
{
  result = qword_1EBD584C8;
  if (!qword_1EBD584C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584C8);
  }

  return result;
}

unint64_t sub_1BD8EBA18()
{
  result = qword_1EBD584D0;
  if (!qword_1EBD584D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584D0);
  }

  return result;
}

unint64_t sub_1BD8EBA6C()
{
  result = qword_1EBD584D8;
  if (!qword_1EBD584D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584D8);
  }

  return result;
}

unint64_t sub_1BD8EBAC0()
{
  result = qword_1EBD584E0;
  if (!qword_1EBD584E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584E0);
  }

  return result;
}

unint64_t sub_1BD8EBB18()
{
  result = qword_1EBD584E8;
  if (!qword_1EBD584E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584E8);
  }

  return result;
}

uint64_t sub_1BD8EBB6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1BE04A884();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1BE048E94();
  __swift_allocate_value_buffer(v7, qword_1EBDAB758);
  __swift_project_value_buffer(v7, qword_1EBDAB758);
  sub_1BE04A864();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1BE048E84();
}

unint64_t sub_1BD8EBD64()
{
  result = qword_1EBD584F0;
  if (!qword_1EBD584F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584F0);
  }

  return result;
}

uint64_t sub_1BD8EBDB8(uint64_t a1)
{
  v2 = sub_1BD8EBD64();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD8EBE08()
{
  result = qword_1EBD584F8;
  if (!qword_1EBD584F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD584F8);
  }

  return result;
}

unint64_t sub_1BD8EBE60()
{
  result = qword_1EBD58500;
  if (!qword_1EBD58500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58500);
  }

  return result;
}

unint64_t sub_1BD8EBEB8()
{
  result = qword_1EBD58508;
  if (!qword_1EBD58508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58508);
  }

  return result;
}

uint64_t sub_1BD8EBF10()
{
  sub_1BD8EBB18();

  return sub_1BE048E14();
}

unint64_t sub_1BD8EBFB4()
{
  result = qword_1EBD58520;
  if (!qword_1EBD58520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58520);
  }

  return result;
}

unint64_t sub_1BD8EC00C()
{
  result = qword_1EBD58528;
  if (!qword_1EBD58528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58528);
  }

  return result;
}

uint64_t sub_1BD8EC0B0()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB770);
  __swift_project_value_buffer(v9, qword_1EBDAB770);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD8EC2C4()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB788);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB788);
  v2 = *MEMORY[0x1E695A588];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BD8EC34C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58598);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v29 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v27 = &v23 - v14;
  v34 = 7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A8);
  v25 = sub_1BD15D14C();
  sub_1BD15D344();
  sub_1BD0DE4F4(&qword_1EBD585B0, &qword_1EBD585A8);
  v26 = v15;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD585B8, &qword_1EBD585A0);
  v16 = v8;
  sub_1BE048ED4();
  v24 = *(v33 + 8);
  v33 += 8;
  v24(v11, v8);
  v17 = v28;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD585C0, &qword_1EBD58598);
  v18 = v29;
  v19 = v30;
  sub_1BE048ED4();
  v20 = *(v31 + 8);
  v20(v17, v19);
  v21 = v27;
  sub_1BE048EB4();
  v20(v18, v19);
  return (v24)(v21, v16);
}

uint64_t sub_1BD8EC748()
{
  swift_getKeyPath();
  sub_1BD15D14C();
  v0 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v1 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v2 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v3 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v4 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v5 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v6 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v7 = sub_1BE048964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE103B40;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  sub_1BE048964();
  v9 = sub_1BE048C84();

  return v9;
}

uint64_t sub_1BD8EC9C8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585C8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  sub_1BD15D14C();
  sub_1BE048CF4();
  sub_1BE048CB4();
  v12 = sub_1BD0DE4F4(&qword_1EBD585B0, &qword_1EBD585A8);
  MEMORY[0x1BFB35E60](v7, &type metadata for SpendingInsightsIntent, v3, v12);
  v13 = *(v4 + 8);
  v13(v7, v3);
  MEMORY[0x1BFB35E50](v11, &type metadata for SpendingInsightsIntent, v3, v12);
  return (v13)(v11, v3);
}

uint64_t sub_1BD8ECBF0()
{
  swift_getKeyPath();
  sub_1BD15D14C();
  v0 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v1 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v2 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v3 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v4 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v5 = sub_1BE048964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE103B50;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  sub_1BE048964();
  v7 = sub_1BE048C84();

  return v7;
}

uint64_t sub_1BD8ECDDC(uint64_t a1)
{
  v2[160] = v1;
  v2[159] = a1;
  sub_1BE04B0F4();
  v2[161] = swift_task_alloc();
  v3 = sub_1BE04A874();
  v2[162] = v3;
  v2[163] = *(v3 - 8);
  v2[164] = swift_task_alloc();
  sub_1BE0523D4();
  v2[165] = swift_task_alloc();
  sub_1BE0523B4();
  v2[166] = swift_task_alloc();
  v2[167] = swift_task_alloc();
  sub_1BE04A884();
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v4 = sub_1BE048654();
  v2[170] = v4;
  v2[171] = *(v4 - 8);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v5 = sub_1BE048B74();
  v2[174] = v5;
  v2[175] = *(v5 - 8);
  v2[176] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v2[179] = v6;
  v2[180] = *(v6 - 8);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v2[183] = v7;
  v2[184] = *(v7 - 8);
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v8 = sub_1BE04CFC4();
  v2[189] = v8;
  v2[190] = *(v8 - 8);
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v9 = sub_1BE04CFE4();
  v2[193] = v9;
  v2[194] = *(v9 - 8);
  v2[195] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD8ED21C, 0, 0);
}

uint64_t sub_1BD8ED21C()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:SpendingInsightsIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = *(v0 + 1560);
  v6 = *(v0 + 1552);
  v7 = *(v0 + 1544);
  v8 = *(v0 + 1536);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1512);
  v12 = *(v0 + 1280);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  *(v0 + 1568) = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  *(v0 + 1576) = *v12;
  sub_1BE048874();
  v13 = *(v0 + 576);
  *(v0 + 496) = *(v0 + 560);
  *(v0 + 512) = v13;
  v14 = *(v0 + 544);
  *(v0 + 464) = *(v0 + 528);
  *(v0 + 480) = v14;
  v15 = *(v0 + 480);
  *(v0 + 1584) = v15;
  v16 = v15;
  sub_1BD030458(v0 + 464);
  v17 = [objc_opt_self() sharedInstance];
  *(v0 + 1592) = v17;
  if (v17)
  {
    v18 = v17;
    if (PKSupportsSearchForPass())
    {
      v19 = swift_task_alloc();
      *(v0 + 1600) = v19;
      *v19 = v0;
      v19[1] = sub_1BD8ED658;

      return sub_1BD99C8D8(v16);
    }
  }

  sub_1BE0484F4();
  sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
  swift_allocError();
  sub_1BE0484C4();
  swift_willThrow();
  sub_1BD8F0A9C();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1BD8ED658(char a1)
{
  v4 = *v2;
  *(*v2 + 1608) = v1;

  if (v1)
  {
    v5 = sub_1BD8EE014;
  }

  else
  {
    *(v4 + 1771) = a1 & 1;
    v5 = sub_1BD8ED784;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD8ED784()
{
  v1 = *(v0 + 1771);
  v2 = *(v0 + 1592);

  if ((v1 & 1) == 0)
  {
    sub_1BE048874();
    v3 = *(v0 + 704);
    *(v0 + 624) = *(v0 + 688);
    *(v0 + 640) = v3;
    v4 = *(v0 + 672);
    *(v0 + 592) = *(v0 + 656);
    *(v0 + 608) = v4;
    v5 = *(v0 + 608);
    sub_1BD030458(v0 + 592);
    v6 = [v5 paymentPass];
    *(v0 + 1616) = v6;

    if (!v6)
    {
      sub_1BE0484F4();
      sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
      swift_allocError();
      sub_1BE0484D4();
      goto LABEL_17;
    }

    *(v0 + 1624) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];
    sub_1BD112D28(inited);
    v9 = v8;
    *(v0 + 1632) = v8;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1248) = v9;
    v10 = v6;
    v11 = [v10 secureElementPass];
    if (v11 && (v12 = v11, v13 = [v11 isAppleCardPass], v12, v13))
    {
      v14 = objc_opt_self();
      v15 = [v14 sharedInstance];
      *(v0 + 1640) = v15;
      if (!v15)
      {

        sub_1BE04D074();
        v33 = sub_1BE04D204();
        v34 = sub_1BE052C34();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1BD026000, v33, v34, "SpendingInsightsIntent: Failed to get Apple Card account", v35, 2u);
          MEMORY[0x1BFB45F20](v35, -1, -1);
        }

        v36 = *(v0 + 1616);
        v37 = *(v0 + 1496);
        v38 = *(v0 + 1472);
        v39 = *(v0 + 1464);

        (*(v38 + 8))(v37, v39);
        sub_1BE0484F4();
        sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
        swift_allocError();
        sub_1BE0484E4();
        swift_willThrow();

        goto LABEL_18;
      }

      v16 = [v14 sharedInstance];
      *(v0 + 1648) = v16;
      if (v16)
      {
        v17 = v16;
        v18 = (v0 + 144);
        v19 = [v10 uniqueID];
        *(v0 + 1656) = v19;

        *(v0 + 144) = v0;
        *(v0 + 184) = v0 + 1224;
        *(v0 + 152) = sub_1BD8EE1CC;
        v20 = swift_continuation_init();
        *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578);
        *(v0 + 816) = v20;
        *(v0 + 784) = MEMORY[0x1E69E9820];
        *(v0 + 792) = 1107296256;
        *(v0 + 800) = sub_1BD1F07A8;
        *(v0 + 808) = &block_descriptor_27_1;
        [v17 accountForPassWithUniqueID:v19 completion:v0 + 784];
        goto LABEL_13;
      }
    }

    else
    {
      v21 = [v10 secureElementPass];

      if (!v21 || (v22 = [v21 isPeerPaymentPass], v21, !v22))
      {

        sub_1BE04D074();
        v27 = sub_1BE04D204();
        v28 = sub_1BE052C34();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1BD026000, v27, v28, "SpendingInsightsIntent: Unsupported pass type", v29, 2u);
          MEMORY[0x1BFB45F20](v29, -1, -1);
        }

        v30 = *(v0 + 1480);
        v31 = *(v0 + 1472);
        v32 = *(v0 + 1464);

        (*(v31 + 8))(v30, v32);
        sub_1BE0484F4();
        sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
        swift_allocError();
        sub_1BE0484C4();
        swift_willThrow();

        sub_1BD8F0A9C();
        goto LABEL_19;
      }

      v16 = [objc_opt_self() sharedInstance];
      *(v0 + 1680) = v16;
      if (v16)
      {
        v23 = v16;
        v18 = (v0 + 80);
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 1232;
        *(v0 + 88) = sub_1BD8EEC44;
        v24 = swift_continuation_init();
        *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58558);
        *(v0 + 880) = v24;
        *(v0 + 848) = MEMORY[0x1E69E9820];
        *(v0 + 856) = 1107296256;
        *(v0 + 864) = sub_1BD8F49C0;
        *(v0 + 872) = &block_descriptor_206;
        [v23 accountWithCompletion_];
LABEL_13:
        v16 = v18;

        return MEMORY[0x1EEE6DEC8](v16);
      }

      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v16);
  }

  sub_1BE0484F4();
  sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
  swift_allocError();
  sub_1BE0484C4();
LABEL_17:
  swift_willThrow();
LABEL_18:
  sub_1BD8F0A9C();
LABEL_19:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1BD8EE014()
{
  v1 = *(v0 + 1584);

  sub_1BD8F0A9C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD8EE1CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EE2AC, 0, 0);
}

uint64_t sub_1BD8EE2AC()
{
  v1 = v0[207];
  v2 = v0[206];
  v3 = v0[153];
  v0[208] = v3;

  if (v3)
  {
    v4 = v0[205];
    v5 = [v3 accountIdentifier];
    v0[209] = v5;
    v0[2] = v0;
    v0[7] = v0 + 155;
    v0[3] = sub_1BD8EE6A4;
    v6 = swift_continuation_init();
    v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58580);
    v0[94] = v6;
    v0[90] = MEMORY[0x1E69E9820];
    v0[91] = 1107296256;
    v0[92] = sub_1BD8F0D88;
    v0[93] = &block_descriptor_30_1;
    [v4 accountUsersForAccountWithIdentifier:v5 completion:v0 + 90];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v7 = v0[205];

    sub_1BE04D074();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "SpendingInsightsIntent: Failed to get Apple Card account", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    v11 = v0[202];
    v12 = v0[187];
    v13 = v0[184];
    v14 = v0[183];

    (*(v13 + 8))(v12, v14);
    sub_1BE0484F4();
    sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD8F0A9C();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BD8EE6A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EE784, 0, 0);
}

void sub_1BD8EE784()
{
  v32 = v0;
  v1 = *(v0 + 1240);

  if (v1)
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    v4 = v1 & 0xC000000000000001;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      if (v4)
      {
        v6 = sub_1BE053704();
      }

      else
      {
        v6 = *(v1 + 16);
      }

      *(v5 + 4) = v6;

      _os_log_impl(&dword_1BD026000, v2, v3, "SpendingInsightsIntent: Found %ld Apple Card users", v5, 0xCu);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 1472) + 8))(*(v0 + 1504), *(v0 + 1464));
    if (v4)
    {
      sub_1BE0536B4();
      sub_1BD0E5E8C(0, &qword_1EBD41C18);
      sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18);
      sub_1BE052A74();
      v1 = *(v0 + 1040);
      v8 = *(v0 + 1048);
      v9 = *(v0 + 1056);
      v10 = *(v0 + 1064);
      v11 = *(v0 + 1072);
    }

    else
    {
      v10 = 0;
      v12 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v1 + 56);
    }

    v30 = (v0 + 1256);
    v15 = (v9 + 64) >> 6;
    if (v1 < 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        break;
      }

LABEL_20:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_26:
        v7 = *(v0 + 1664);
        v22 = *(v0 + 1640);
        sub_1BD0D45FC();

        goto LABEL_27;
      }

      while (1)
      {
        sub_1BD2A5D88(&v31, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccountUser_]);

        v10 = v18;
        v11 = v19;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_22:
        v21 = sub_1BE053744();
        if (v21)
        {
          *(v0 + 1264) = v21;
          sub_1BD0E5E8C(0, &qword_1EBD41C18);
          swift_dynamicCast();
          v20 = *v30;
          v18 = v10;
          v19 = v11;
          if (*v30)
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = *(v0 + 1664);

LABEL_27:
    *(v0 + 1688) = *(v0 + 1248);
    v23 = objc_allocWithZone(MEMORY[0x1E69B9300]);
    sub_1BD0E5E8C(0, &unk_1EBD406C0);
    sub_1BD214890(&qword_1EBD58560, &unk_1EBD406C0);
    v24 = sub_1BE052A24();
    v25 = [v23 initWithTransactionSources_];
    *(v0 + 1696) = v25;

    v26 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 1704) = v26;
    v27 = [v25 transactionSourceIdentifiers];
    sub_1BE052A34();

    v28 = sub_1BE052A24();

    [v26 setTransactionSourceIdentifiers_];

    v29 = swift_task_alloc();
    *(v0 + 1712) = v29;
    *v29 = v0;
    v29[1] = sub_1BD8EF1AC;

    sub_1BD8F0E4C();
  }
}

uint64_t sub_1BD8EEC44()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EED24, 0, 0);
}

uint64_t sub_1BD8EED24()
{
  v19 = v0;
  v1 = *(v0 + 1232);

  if (v1)
  {
    sub_1BD2A5D88(v18, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPeerPaymentAccount_]);

    *(v0 + 1688) = *(v0 + 1248);
    v2 = objc_allocWithZone(MEMORY[0x1E69B9300]);
    sub_1BD0E5E8C(0, &unk_1EBD406C0);
    sub_1BD214890(&qword_1EBD58560, &unk_1EBD406C0);
    v3 = sub_1BE052A24();
    v4 = [v2 initWithTransactionSources_];
    *(v0 + 1696) = v4;

    v5 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 1704) = v5;
    v6 = [v4 transactionSourceIdentifiers];
    sub_1BE052A34();

    v7 = sub_1BE052A24();

    [v5 setTransactionSourceIdentifiers_];

    v8 = swift_task_alloc();
    *(v0 + 1712) = v8;
    *v8 = v0;
    v8[1] = sub_1BD8EF1AC;

    return sub_1BD8F0E4C();
  }

  else
  {

    sub_1BE04D074();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "SpendingInsightsIntent: Failed to get peer payment account", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    v13 = *(v0 + 1616);
    v14 = *(v0 + 1488);
    v15 = *(v0 + 1472);
    v16 = *(v0 + 1464);

    (*(v15 + 8))(v14, v16);
    sub_1BE0484F4();
    sub_1BD8F4950(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD8F0A9C();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1BD8EF1AC()
{
  *(*v1 + 1720) = v0;

  if (v0)
  {

    v2 = sub_1BD8F08DC;
  }

  else
  {
    v2 = sub_1BD8EF2C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD8EF2C8()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  sub_1BE048874();
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1BD0DE53C(*(v0 + 1424), &unk_1EBD39970);
  }

  else
  {
    v5 = *(v0 + 1432);
    v6 = *(v0 + 1416);
    v7 = *(*(v0 + 1440) + 32);
    v7(*(v0 + 1456), *(v0 + 1424), v5);
    sub_1BE048874();
    if (v4(v6, 1, v5) == 1)
    {
      v8 = *(v0 + 1416);
      (*(*(v0 + 1440) + 8))(*(v0 + 1456), *(v0 + 1432));
      sub_1BD0DE53C(v8, &unk_1EBD39970);
    }

    else
    {
      v9 = *(v0 + 1704);
      v10 = *(v0 + 1456);
      v11 = *(v0 + 1448);
      v12 = *(v0 + 1440);
      v13 = *(v0 + 1432);
      v7(v11, *(v0 + 1416), v13);
      v14 = sub_1BE04AE64();
      [v9 setStartDate_];

      v15 = sub_1BE04AE64();
      [v9 setEndDate_];

      v16 = *(v12 + 8);
      v16(v11, v13);
      v16(v10, v13);
    }
  }

  v17 = *(v0 + 1704);
  v18 = sub_1BE052404();
  [v17 setCurrencyCode_];

  sub_1BE048874();
  v19 = *(v0 + 1770);
  if (v19 <= 3)
  {
    v21 = 5;
    v22 = 1;
    if (v19 != 2)
    {
      v22 = 6;
    }

    if (*(v0 + 1770))
    {
      v21 = 2;
    }

    if (*(v0 + 1770) <= 1u)
    {
      v20 = v21;
    }

    else
    {
      v20 = v22;
    }
  }

  else if (*(v0 + 1770) <= 5u)
  {
    if (v19 == 4)
    {
      v20 = 7;
    }

    else
    {
      v20 = 3;
    }
  }

  else if (v19 == 6)
  {
    v20 = 4;
  }

  else
  {
    if (v19 != 7)
    {
      goto LABEL_23;
    }

    v20 = 0;
  }

  [*(v0 + 1704) setMerchantCategory_];
LABEL_23:
  sub_1BE048874();
  v23 = *(v0 + 1769);
  if (v23 != 12)
  {
    if (sub_1BD231C4C(*(v0 + 1769)) == 0x6E776F6E6B6E75 && v24 == 0xE700000000000000)
    {
    }

    else
    {
      v25 = sub_1BE053B84();

      if ((v25 & 1) == 0)
      {
        v26 = *(v0 + 1704);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B7020;
        *(inited + 32) = sub_1BD231BFC(v23);
        sub_1BD112D4C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1BD0E5E8C(0, &qword_1EBD398A0);
        sub_1BD214890(&qword_1EBD49498, &qword_1EBD398A0);
        v28 = sub_1BE052A24();

        [v26 setTags_];
      }
    }
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  *(v0 + 1728) = v29;
  sub_1BE048874();
  v30 = *(v0 + 1160);
  v31 = *(v0 + 1168);
  *(v0 + 1736) = v31;
  *(v0 + 1752) = *(v0 + 1184);
  v32 = v31;
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BE0B69E0;
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    sub_1BE048C84();
    v34 = sub_1BE052724();
    *(v0 + 1760) = v34;

    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1216;
    *(v0 + 216) = sub_1BD8EF9F0;
    v35 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130);
    *(v0 + 944) = v35;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = sub_1BD994558;
    *(v0 + 936) = &block_descriptor_24_4;
    [v29 regionsWithIdentifiers:v34 completion:v0 + 912];
    v36 = v0 + 208;
  }

  else
  {
    sub_1BE048874();
    v37 = *(v0 + 1728);
    v38 = *(v0 + 1704);
    if (*(v0 + 1768) == 1)
    {
      v39 = v0 + 272;
      *(v0 + 272) = v0;
      *(v0 + 312) = v0 + 1200;
      *(v0 + 280) = sub_1BD8EFD80;
      v40 = swift_continuation_init();
      *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58568);
      *(v0 + 1008) = v40;
      *(v0 + 976) = MEMORY[0x1E69E9820];
      *(v0 + 984) = 1107296256;
      *(v0 + 992) = sub_1BD8F49C0;
      *(v0 + 1000) = &block_descriptor_21_5;
      [v37 transactionsTotalAmountForRequest:v38 completion:v0 + 976];
    }

    else
    {
      v39 = v0 + 336;

      *(v0 + 336) = v0;
      *(v0 + 376) = v0 + 1208;
      *(v0 + 344) = sub_1BD8F03F0;
      v41 = swift_continuation_init();
      *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      *(v0 + 400) = MEMORY[0x1E69E9820];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_1BD9C18BC;
      *(v0 + 424) = &block_descriptor_17_4;
      *(v0 + 432) = v41;
      [v37 transactionsForRequest:v38 completion:v0 + 400];
    }

    v36 = v39;
  }

  return MEMORY[0x1EEE6DEC8](v36);
}

uint64_t sub_1BD8EF9F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EFAD0, 0, 0);
}

uint64_t sub_1BD8EFAD0()
{
  v1 = *(v0 + 1216);

  if (v1)
  {
    v2 = *(v0 + 1704);
    sub_1BD0E5E8C(0, &qword_1EBD56140);
    v3 = sub_1BE052724();

    [v2 setRegions_];
  }

  else
  {
  }

  sub_1BE048874();
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1704);
  if (*(v0 + 1768) == 1)
  {
    v6 = v0 + 272;
    *(v0 + 272) = v0;
    *(v0 + 312) = v0 + 1200;
    *(v0 + 280) = sub_1BD8EFD80;
    v7 = swift_continuation_init();
    *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58568);
    *(v0 + 1008) = v7;
    *(v0 + 976) = MEMORY[0x1E69E9820];
    *(v0 + 984) = 1107296256;
    *(v0 + 992) = sub_1BD8F49C0;
    *(v0 + 1000) = &block_descriptor_21_5;
    [v4 transactionsTotalAmountForRequest:v5 completion:v0 + 976];
  }

  else
  {
    v6 = v0 + 336;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1208;
    *(v0 + 344) = sub_1BD8F03F0;
    v8 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1BD9C18BC;
    *(v0 + 424) = &block_descriptor_17_4;
    *(v0 + 432) = v8;
    [v4 transactionsForRequest:v5 completion:v0 + 400];
  }

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1BD8EFD80()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8EFE60, 0, 0);
}

id sub_1BD8EFE60()
{
  v1 = *(v0 + 1200);

  if (!v1)
  {

    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 1728);
    v25 = *(v0 + 1696);
    v27 = *(v0 + 1704);
    v29 = *(v0 + 1616);
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1368);
    v30 = *(v0 + 1360);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1304);
    v16 = *(v0 + 1296);
    v17 = __swift_project_value_buffer(v16, qword_1EBDAB400);
    (*(v15 + 16))(v14, v17, v16);
    sub_1BE04B0A4();
    sub_1BE04A894();
    sub_1BE048664();
    sub_1BE048764();

    (*(v13 + 8))(v12, v30);
    goto LABEL_10;
  }

  result = [v1 amount];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  sub_1BE0533F4();
  result = [v1 currency];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = result;

  sub_1BE052434();

  sub_1BE048B54();
  sub_1BE0523A4();
  sub_1BE052394();
  sub_1BD8F4950(&qword_1EBD58570, MEMORY[0x1E695A360]);
  sub_1BE052384();
  sub_1BE052394();
  sub_1BE0523C4();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 1728);
  v20 = *(v0 + 1696);
  v28 = *(v0 + 1408);
  v5 = *(v0 + 1400);
  v24 = *(v0 + 1616);
  v26 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1368);
  v21 = *(v0 + 1704);
  v22 = *(v0 + 1360);
  v8 = *(v0 + 1312);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1296);
  v11 = __swift_project_value_buffer(v10, qword_1EBDAB400);
  (*(v9 + 16))(v8, v11, v10);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  sub_1BE048764();

  (*(v7 + 8))(v6, v22);
  (*(v5 + 8))(v28, v26);
LABEL_10:
  sub_1BD8F0A9C();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1BD8F03F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8F04D0, 0, 0);
}

uint64_t sub_1BD8F04D0()
{
  v1 = *(v0 + 1208);

  if (v1)
  {
    sub_1BE0523A4();
    sub_1BE052394();
    if (v1 >> 62)
    {
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 1192) = v2;
    sub_1BE052364();
    sub_1BE052394();
    sub_1BE0523C4();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 1728);
    v12 = *(v0 + 1696);
    v13 = *(v0 + 1704);
    v14 = *(v0 + 1616);
    v3 = *(v0 + 1376);
    v4 = *(v0 + 1368);
    v15 = *(v0 + 1360);
  }

  else
  {
    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 1728);
    v12 = *(v0 + 1696);
    v13 = *(v0 + 1704);
    v14 = *(v0 + 1616);
    v3 = *(v0 + 1384);
    v4 = *(v0 + 1368);
    v15 = *(v0 + 1360);
  }

  v5 = *(v0 + 1312);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1296);
  v8 = __swift_project_value_buffer(v7, qword_1EBDAB400);
  (*(v6 + 16))(v5, v8, v7);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  sub_1BE048764();

  (*(v4 + 8))(v3, v15);
  sub_1BD8F0A9C();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD8F08DC()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);

  sub_1BD8F0A9C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD8F0A9C()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:SpendingInsightsIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD8F0D88(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C18);
    sub_1BD214890(&qword_1EBD41C20, &qword_1EBD41C18);
    v4 = sub_1BE052A34();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD8F0E4C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  v1[6] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE04B2F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD8F11A0, 0, 0);
}

uint64_t sub_1BD8F11A0()
{
  sub_1BE04AEF4();
  sub_1BE048874();
  v1 = *(v0 + 376);
  if (v1 <= 3)
  {
    if (*(v0 + 376) > 1u)
    {
      if (v1 == 2)
      {
        v97 = *(v0 + 264);
        v5 = *(v0 + 224);
        v98 = *(v0 + 216);
        v99 = *(v0 + 256);
        v7 = *(v0 + 88);
        v6 = *(v0 + 96);
        v9 = *(v0 + 72);
        v8 = *(v0 + 80);
        v10 = *(v0 + 64);
        v96 = *(v0 + 56);
        v11 = *(v0 + 40);
        v12 = *(v0 + 48);
        sub_1BE04B2A4();
        (*(v7 + 56))(v12, 1, 1, v8);
        v13 = sub_1BE04B3B4();
        (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
        sub_1BE04A454();
        sub_1BE04B214();
        (*(v10 + 8))(v9, v96);
        (*(v7 + 8))(v6, v8);
        sub_1BD15D62C(v5, v98);
        v14 = *(v97 + 48);
        v15 = 0;
        if (v14(v98, 1, v99) != 1)
        {
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);
          v18 = *(v0 + 216);
          v15 = sub_1BE04AE64();
          (*(v17 + 8))(v18, v16);
        }

        v19 = PKStartOfDay();

        if (v19)
        {
          sub_1BE04AEE4();

          v20 = 0;
        }

        else
        {
          v20 = 1;
        }

        v59 = *(v0 + 256);
        v60 = *(v0 + 240);
        v61 = *(v0 + 224);
        v63 = *(v0 + 200);
        v62 = *(v0 + 208);
        v64 = *(*(v0 + 264) + 56);
        v64(v62, v20, 1, v59);
        sub_1BD15D62C(v62, v60);
        sub_1BE048884();
        sub_1BD0DE53C(v62, &unk_1EBD39970);
        sub_1BD15D62C(v61, v63);
        if (v14(v63, 1, v59) == 1)
        {
          v65 = 0;
        }

        else
        {
          v66 = *(v0 + 256);
          v67 = *(v0 + 264);
          v68 = *(v0 + 200);
          v65 = sub_1BE04AE64();
          (*(v67 + 8))(v68, v66);
        }

        v69 = PKEndOfDay();

        if (v69)
        {
          sub_1BE04AEE4();

          v70 = 0;
        }

        else
        {
          v70 = 1;
        }

        v88 = *(v0 + 288);
        v89 = *(v0 + 256);
        v90 = *(v0 + 264);
        v91 = *(v0 + 240);
        v92 = *(v0 + 224);
        v93 = *(v0 + 192);
        v64(v93, v70, 1, v89);
        sub_1BD15D62C(v93, v91);
        sub_1BE048884();
        sub_1BD0DE53C(v93, &unk_1EBD39970);
        sub_1BD0DE53C(v92, &unk_1EBD39970);
        (*(v90 + 8))(v88, v89);
        goto LABEL_57;
      }

      v30 = sub_1BE04AE64();
      v31 = PKStartOfMonth();

      if (v31)
      {
        sub_1BE04AEE4();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v83 = *(v0 + 240);
      v84 = *(v0 + 184);
      v50 = *(*(v0 + 264) + 56);
      v51 = 1;
      v50(v84, v32, 1, *(v0 + 256));
      sub_1BD15D62C(v84, v83);
      sub_1BE048884();
      sub_1BD0DE53C(v84, &unk_1EBD39970);
      v85 = sub_1BE04AE64();
      v86 = PKEndOfMonth();

      if (v86)
      {
        sub_1BE04AEE4();

        v51 = 0;
      }

      v54 = *(v0 + 288);
      v55 = *(v0 + 256);
      v56 = *(v0 + 264);
      v57 = *(v0 + 240);
      v58 = *(v0 + 176);
    }

    else
    {
      if (!*(v0 + 376))
      {
        (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));
LABEL_57:

        v87 = *(v0 + 8);

        return v87();
      }

      v24 = sub_1BE04AE64();
      v25 = PKStartOfDay();

      if (v25)
      {
        sub_1BE04AEE4();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      v76 = *(v0 + 240);
      v75 = *(v0 + 248);
      v50 = *(*(v0 + 264) + 56);
      v51 = 1;
      v50(v75, v26, 1, *(v0 + 256));
      sub_1BD15D62C(v75, v76);
      sub_1BE048884();
      sub_1BD0DE53C(v75, &unk_1EBD39970);
      v77 = sub_1BE04AE64();
      v78 = PKEndOfDay();

      if (v78)
      {
        sub_1BE04AEE4();

        v51 = 0;
      }

      v54 = *(v0 + 288);
      v55 = *(v0 + 256);
      v56 = *(v0 + 264);
      v58 = *(v0 + 232);
      v57 = *(v0 + 240);
    }

LABEL_56:
    v50(v58, v51, 1, v55);
    sub_1BD15D62C(v58, v57);
    sub_1BE048884();
    sub_1BD0DE53C(v58, &unk_1EBD39970);
    (*(v56 + 8))(v54, v55);
    goto LABEL_57;
  }

  if (*(v0 + 376) <= 5u)
  {
    if (v1 == 4)
    {
      v2 = sub_1BE04AE64();
      v3 = PKStartOfLastMonth();

      if (v3)
      {
        sub_1BE04AEE4();

        v4 = 0;
      }

      else
      {
        v4 = 1;
      }

      v48 = *(v0 + 240);
      v49 = *(v0 + 168);
      v50 = *(*(v0 + 264) + 56);
      v51 = 1;
      v50(v49, v4, 1, *(v0 + 256));
      sub_1BD15D62C(v49, v48);
      sub_1BE048884();
      sub_1BD0DE53C(v49, &unk_1EBD39970);
      v52 = sub_1BE04AE64();
      v53 = PKEndOfLastMonth();

      if (v53)
      {
        sub_1BE04AEE4();

        v51 = 0;
      }

      v54 = *(v0 + 288);
      v55 = *(v0 + 256);
      v56 = *(v0 + 264);
      v57 = *(v0 + 240);
      v58 = *(v0 + 160);
    }

    else
    {
      v27 = sub_1BE04AE64();
      v28 = PKStartOfYear();

      if (v28)
      {
        sub_1BE04AEE4();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v79 = *(v0 + 240);
      v80 = *(v0 + 152);
      v50 = *(*(v0 + 264) + 56);
      v51 = 1;
      v50(v80, v29, 1, *(v0 + 256));
      sub_1BD15D62C(v80, v79);
      sub_1BE048884();
      sub_1BD0DE53C(v80, &unk_1EBD39970);
      v81 = sub_1BE04AE64();
      v82 = PKEndOfYear();

      if (v82)
      {
        sub_1BE04AEE4();

        v51 = 0;
      }

      v54 = *(v0 + 288);
      v55 = *(v0 + 256);
      v56 = *(v0 + 264);
      v57 = *(v0 + 240);
      v58 = *(v0 + 144);
    }

    goto LABEL_56;
  }

  if (v1 == 6)
  {
    v21 = sub_1BE04AE64();
    v22 = PKStartOfLastYear();

    if (v22)
    {
      sub_1BE04AEE4();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v71 = *(v0 + 240);
    v72 = *(v0 + 136);
    v50 = *(*(v0 + 264) + 56);
    v51 = 1;
    v50(v72, v23, 1, *(v0 + 256));
    sub_1BD15D62C(v72, v71);
    sub_1BE048884();
    sub_1BD0DE53C(v72, &unk_1EBD39970);
    v73 = sub_1BE04AE64();
    v74 = PKEndOfLastYear();

    if (v74)
    {
      sub_1BE04AEE4();

      v51 = 0;
    }

    v54 = *(v0 + 288);
    v55 = *(v0 + 256);
    v56 = *(v0 + 264);
    v57 = *(v0 + 240);
    v58 = *(v0 + 128);
    goto LABEL_56;
  }

  v33 = *(v0 + 256);
  v34 = *(v0 + 264);
  v35 = *(v0 + 120);
  *(v0 + 296) = *(*(v0 + 16) + 24);
  sub_1BE048874();
  v36 = *(v34 + 48);
  *(v0 + 304) = v36;
  *(v0 + 312) = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v33) = v36(v35, 1, v33);
  sub_1BD0DE53C(v35, &unk_1EBD39970);
  if (v33 == 1)
  {
    v37 = *(v0 + 32);
    *(v0 + 320) = sub_1BE048894();
    v38 = sub_1BE048654();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v39 = swift_task_alloc();
    *(v0 + 328) = v39;
    *v39 = v0;
    v39[1] = sub_1BD8F1EB8;
    v40 = *(v0 + 280);
    v41 = *(v0 + 32);
  }

  else
  {
    v42 = *(v0 + 304);
    v43 = *(v0 + 256);
    v44 = *(v0 + 104);
    *(v0 + 344) = *(*(v0 + 16) + 32);
    sub_1BE048874();
    if (v42(v44, 1, v43) != 1)
    {
      v94 = *(v0 + 104);
      (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));
      sub_1BD0DE53C(v94, &unk_1EBD39970);
      goto LABEL_57;
    }

    v45 = *(v0 + 24);
    sub_1BD0DE53C(*(v0 + 104), &unk_1EBD39970);
    *(v0 + 352) = sub_1BE048894();
    v46 = sub_1BE048654();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    v47 = swift_task_alloc();
    *(v0 + 360) = v47;
    *v47 = v0;
    v47[1] = sub_1BD8F23C8;
    v40 = *(v0 + 272);
    v41 = *(v0 + 24);
  }

  return MEMORY[0x1EEDB33A8](v40, v41);
}

uint64_t sub_1BD8F1EB8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 336) = v0;

  sub_1BD0DE53C(v2, &qword_1EBD39290);

  if (v0)
  {
    v3 = sub_1BD8F2798;
  }

  else
  {
    v3 = sub_1BD8F201C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD8F201C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[14];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970);
  (*(v3 + 8))(v1, v2);
  v6 = v0[38];
  v7 = v0[32];
  v8 = v0[13];
  v0[43] = *(v0[2] + 32);
  sub_1BE048874();
  if (v6(v8, 1, v7) == 1)
  {
    v9 = v0[3];
    sub_1BD0DE53C(v0[13], &unk_1EBD39970);
    v0[44] = sub_1BE048894();
    v10 = sub_1BE048654();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_task_alloc();
    v0[45] = v11;
    *v11 = v0;
    v11[1] = sub_1BD8F23C8;
    v12 = v0[34];
    v13 = v0[3];

    return MEMORY[0x1EEDB33A8](v12, v13);
  }

  else
  {
    v14 = v0[13];
    (*(v0[33] + 8))(v0[36], v0[32]);
    sub_1BD0DE53C(v14, &unk_1EBD39970);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BD8F23C8()
{
  v2 = *(*v1 + 24);
  *(*v1 + 368) = v0;

  sub_1BD0DE53C(v2, &qword_1EBD39290);

  if (v0)
  {
    v3 = sub_1BD8F2978;
  }

  else
  {
    v3 = sub_1BD8F252C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD8F252C()
{
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[14];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1BD15D62C(v5, v6);
  sub_1BE048884();
  sub_1BD0DE53C(v5, &unk_1EBD39970);
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD8F2798()
{
  (*(v0[33] + 8))(v0[36], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD8F2978()
{
  (*(v0[33] + 8))(v0[36], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD8F2BC8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1BD8F2C70(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58588);
  v5 = sub_1BD0DE4F4(&qword_1EBD58590, &qword_1EBD58588);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD8EC34C, 0, v4, a2, v5);
}

uint64_t sub_1BD8F2D38(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1BD86F994;

  return sub_1BD8ECDDC(a1);
}

double sub_1BD8F2DE4@<D0>(_OWORD *a1@<X8>)
{
  sub_1BD8F2E80(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_1BD8F2E24(uint64_t a1)
{
  v2 = sub_1BD15D14C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD8F2E80@<X0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD560B0);
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v1);
  v95 = &v88 - v2;
  v113 = sub_1BE048D74();
  v117 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v3);
  v114 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v103 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v99 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v109 = &v88 - v13;
  v14 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE04A874();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1BE04A884();
  v24 = *(v23 - 8);
  v115 = v23;
  v116 = v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v88 - v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v16, qword_1EBDAB400);
  v31 = *(v17 + 16);
  v31(v20, v30, v16);
  sub_1BE04B0A4();
  v108 = v29;
  sub_1BE04A894();
  sub_1BE052354();
  v104 = v30;
  v105 = v16;
  v106 = v17 + 16;
  v31(v20, v30, v16);
  v107 = v31;
  sub_1BE04B0A4();
  v32 = v109;
  sub_1BE04A894();
  v33 = *(v116 + 56);
  v116 += 56;
  v102 = v33;
  v33(v32, 0, 1, v115);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  sub_1BE052354();
  v31(v20, v30, v16);
  sub_1BE04B0A4();
  v34 = v20;
  sub_1BE04A894();
  v35 = v99;
  sub_1BE048664();
  v36 = sub_1BE048654();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v110 = v38;
  v111 = v37 + 56;
  v38(v35, 0, 1, v36);
  v38(v103, 1, 1, v36);
  v112 = *MEMORY[0x1E695A500];
  v101 = *(v117 + 104);
  v117 += 104;
  v101(v114);
  sub_1BD87101C();
  sub_1BD0304AC();
  v39 = v109;
  v93 = sub_1BE0488B4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58550);
  sub_1BE052354();
  v40 = v104;
  v41 = v105;
  v42 = v107;
  v107(v34, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v88 = v34;
  v42(v34, v40, v41);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v102(v39, 0, 1, v115);
  LOBYTE(v118) = 1;
  v43 = v99;
  v100 = v36;
  v44 = v110;
  v110(v99, 1, 1, v36);
  v44(v103, 1, 1, v36);
  v45 = v101;
  (v101)(v114, v112, v113);
  sub_1BD8EBD64();
  v92 = sub_1BE0488A4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560D0);
  sub_1BE052354();
  v46 = v88;
  v47 = v104;
  v48 = v105;
  v49 = v107;
  v107(v88, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v49(v46, v47, v48);
  sub_1BE04B0A4();
  v50 = v109;
  sub_1BE04A894();
  v102(v50, 0, 1, v115);
  LOBYTE(v118) = 0;
  v51 = v100;
  v52 = v110;
  v110(v43, 1, 1, v100);
  v52(v103, 1, 1, v51);
  (v45)(v114, v112, v113);
  sub_1BD871070();
  v91 = sub_1BE0488A4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E0);
  sub_1BE052354();
  v53 = v104;
  v54 = v105;
  v55 = v107;
  v107(v46, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v55(v46, v53, v54);
  sub_1BE04B0A4();
  v56 = v109;
  sub_1BE04A894();
  v102(v56, 0, 1, v115);
  v110(v43, 1, 1, v100);
  LODWORD(v90) = *MEMORY[0x1E695A198];
  v89 = *(v94 + 104);
  v57 = v95;
  v89(v95);
  (v101)(v114, v112, v113);
  v94 = sub_1BE0488E4();
  sub_1BE052354();
  v58 = v104;
  v59 = v105;
  v60 = v107;
  v107(v46, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v60(v46, v58, v59);
  sub_1BE04B0A4();
  v61 = v109;
  sub_1BE04A894();
  v62 = v102;
  v102(v61, 0, 1, v115);
  v63 = v99;
  v110(v99, 1, 1, v100);
  (v89)(v57, v90, v98);
  (v101)(v114, v112, v113);
  v98 = sub_1BE0488E4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E8);
  sub_1BE052354();
  v64 = v104;
  v65 = v105;
  v66 = v107;
  v107(v46, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v66(v46, v64, v65);
  sub_1BE04B0A4();
  v67 = v109;
  sub_1BE04A894();
  v62(v67, 0, 1, v115);
  LOBYTE(v118) = 8;
  v68 = v100;
  v69 = v110;
  v110(v63, 1, 1, v100);
  v69(v103, 1, 1, v68);
  v70 = v113;
  (v101)(v114, v112, v113);
  sub_1BD0F0AB4();
  v97 = sub_1BE0488A4();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560F8);
  sub_1BE052354();
  v71 = v104;
  v72 = v105;
  v73 = v107;
  v107(v46, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v73(v46, v71, v72);
  sub_1BE04B0A4();
  v74 = v109;
  sub_1BE04A894();
  v102(v74, 0, 1, v115);
  LOBYTE(v118) = 12;
  v75 = v100;
  v76 = v110;
  v110(v63, 1, 1, v100);
  v76(v103, 1, 1, v75);
  v77 = v114;
  (v101)(v114, v112, v70);
  sub_1BD2336F8();
  v95 = sub_1BE0488A4();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56110);
  sub_1BE052354();
  v78 = v104;
  v79 = v105;
  v80 = v107;
  v107(v46, v104, v105);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v80(v46, v78, v79);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v102(v74, 0, 1, v115);
  v118 = 0u;
  v119 = 0u;
  v81 = v100;
  v82 = v110;
  v110(v99, 1, 1, v100);
  v82(v103, 1, 1, v81);
  (v101)(v77, v112, v113);
  sub_1BD8710C4();
  result = sub_1BE0488C4();
  v84 = v96;
  v85 = v92;
  *v96 = v93;
  v84[1] = v85;
  v86 = v94;
  v84[2] = v91;
  v84[3] = v86;
  v87 = v97;
  v84[4] = v98;
  v84[5] = v87;
  v84[6] = v95;
  v84[7] = result;
  return result;
}

unint64_t sub_1BD8F42F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v46 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE04A884();
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v47 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD585D0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE8);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v41 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B6CA0;
  v42 = v21;
  v44 = v21 + v20;
  v45 = v19;
  v40 = *(v19 + 48);
  *(v21 + v20) = 1;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v23 = *(v10 + 16);
  v35 = v22;
  v23(v13, v22, v9);
  v34 = v23;
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v23(v13, v22, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v43 = *(v43 + 56);
  (v43)(v6, 0, 1, v16);
  v24 = sub_1BE048BB4();
  v39 = v16;
  v36 = v24;
  v25 = *(v24 - 8);
  v37 = *(v25 + 56);
  v38 = v25 + 56;
  v37(v46, 1, 1, v24);
  v26 = v13;
  v27 = v44;
  sub_1BE048BE4();
  v28 = *(v45 + 48);
  v40 = (v27 + v41);
  v41 = v28;
  *v40 = 0;
  sub_1BE052354();
  v30 = v34;
  v29 = v35;
  v34(v26, v35, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v30(v26, v29, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v43)(v6, 0, 1, v39);
  v37(v46, 1, 1, v36);
  sub_1BE048BD4();
  v31 = sub_1BD1AE364(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v31;
}

uint64_t sub_1BD8F4950(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD8F49CC(void *a1)
{
  v2 = v1;
  while (1)
  {
    if (a1)
    {
      v4 = *(v2 + 80);
      *(v2 + 80) = a1;
      v5 = a1;
    }

    v6 = *(v2 + 120);
    if (v6 != 6)
    {
      break;
    }

    *(v2 + 120) = 4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(4u, 1);
      swift_unknownObjectRelease();
    }
  }

  if (v6 != 7)
  {
    if (v6 != 5)
    {

      sub_1BD8F4FB8();
      return;
    }

    if (a1)
    {
      v7 = *(v2 + 40);
      v8 = *(v2 + 64);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = a1;
        v11 = MEMORY[0x1BFB40900](v8, v7);
        goto LABEL_18;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v7 + 8 * v8 + 32);
        v10 = a1;
        v11 = v9;
LABEL_18:
        v13 = v11;
        sub_1BD8F5200(a1, v11);

        return;
      }

      __break(1u);
    }

    sub_1BE053994();
    __break(1u);
  }
}

uint64_t sub_1BD8F4B68()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    sub_1BE04BEC4();

    v2 = *(v1 + 88);
  }

  *(v1 + 88) = 0;

  v4 = *(v1 + 120);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD6584C0(v4, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD8F4C10()
{
  sub_1BD8F4B68();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BCE240, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id *sub_1BD8F4CB4()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    sub_1BE04BEC4();

    v2 = v1[11];
  }

  v1[11] = 0;

  sub_1BD0D4534((v1 + 6));

  sub_1BD0D4534((v1 + 13));
  return v1;
}

uint64_t sub_1BD8F4D6C()
{
  sub_1BD8F4CB4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ProvisioningVerificationPerformStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningVerificationPerformStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD8F4F2C(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(*(v1 + 120), 0);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD659804(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD8F4FB8()
{
  v1 = v0;
  *(v0 + 120) = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(4u, 1);
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 40);
  v3 = *(v1 + 64);
  v4 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 8 * v3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = MEMORY[0x1BFB40900](v3, *(v1 + 40));
LABEL_7:
  v6 = v5;
  v7 = [v5 type];

  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v7 != 6)
  {
    if (v7 == 7)
    {
      v10 = *(v1 + 64);
      if (v4)
      {
        v11 = MEMORY[0x1BFB40900](v10, v2);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v11 = *(v2 + 8 * v10 + 32);
      }

      v13 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        sub_1BD8F5830(v12);
      }

      goto LABEL_25;
    }

LABEL_35:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v8 = *(v1 + 64);
  if (!v4)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v2 + 8 * v8 + 32);
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v9 = MEMORY[0x1BFB40900](v8, v2);
LABEL_19:
  v13 = v9;
  sub_1BD8F5514(v9);
LABEL_25:
}

void sub_1BD8F5200(void *a1, void *a2)
{
  v22 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
  v5 = [a1 paymentSetupFieldWithIdentifier_];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      if (*(v2 + 96))
      {
        v8 = v7;
        v9 = [*(v2 + 96) transactionID];
        if (v9)
        {
          v10 = v9;
          v11 = sub_1BE04AAC4();
          v13 = v12;

          v14 = sub_1BE04AAB4();
          sub_1BD1245AC(v11, v13);
        }

        else
        {
          v14 = 0;
        }

        v7 = v8;
      }

      else
      {
        v14 = 0;
      }

      [v7 setTransactionId_];

      v6 = v14;
    }
  }

  v15 = [a1 submissionValuesForDestination_];
  if (v15)
  {
    v16 = v15;
    sub_1BE052244();

    v17 = sub_1BE052224();
  }

  else
  {
    v17 = 0;
  }

  [v22 setDynamicFieldParameters_];

  v18 = [a1 secureSubmissionValuesForDestination_];
  if (v18)
  {
    v19 = v18;
    sub_1BE052244();

    v20 = sub_1BE052224();
  }

  else
  {
    v20 = 0;
  }

  [v22 setEncryptedDynamicFieldParameters_];

  v21 = [a1 encryptedPerFieldSubmissionValuesForDestination_];
  if (v21)
  {
    sub_1BD0E5E8C(0, &qword_1EBD585D8);
    sub_1BE052244();

    v21 = sub_1BE052224();
  }

  [v22 setEncryptedPerFieldDynamicFieldParameters_];

  sub_1BD8F5CF8(v22, a2);
}

uint64_t sub_1BD8F5514(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 88);
  if (v9)
  {
    v10 = v9;
    sub_1BE04BEC4();

    v9 = *(v2 + 88);
  }

  *(v2 + 88) = 0;

  *(v2 + 120) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(0, 1);
    swift_unknownObjectRelease();
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  *v8 = v11;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8298], v4);
  objc_allocWithZone(sub_1BE04BEE4());
  v12 = v11;
  sub_1BE048964();
  v13 = sub_1BE04BED4();
  v14 = *(v2 + 88);
  *(v2 + 88) = v13;
  v15 = v13;

  swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BEB4();

  swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BEA4();

  swift_allocObject();
  swift_weakInit();
  sub_1BE048964();
  sub_1BE04BE84();

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  sub_1BE048964();
  v18 = a1;
  sub_1BE04BE94();
}

void sub_1BD8F5830(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 80);
  if (!v3)
  {
    return;
  }

  v14 = v3;
  v5 = [a1 fields];
  sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    v7 = sub_1BE053704();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB40900](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        [v9 setCurrentValue_];
      }
    }
  }

  sub_1BD3F0574(v6);

  v11 = sub_1BE052724();

  [v14 updateWithPaymentSetupFields_];

  *(v2 + 120) = 5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(5u, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong _setPrimaryButtonEnabled_];
    [v13 noteFieldIdentifiersChanged];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD8F5AB4(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(a2, 1);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BD8F5B5C(void *a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v11 = [objc_opt_self() errorWithSeverity_];
        v12 = sub_1BE052404();
        [v11 addInternalDebugDescription_];

        sub_1BD8F4F2C(v11);
      }
    }

    else if (!a2)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
      [v9 setTapToProvisionData_];
      v10 = *(v8 + 96);
      *(v8 + 96) = a1;

      sub_1BD8F5CF8(v9, a4);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(*(v8 + 120), 0);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD659804(a1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD8F5CF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE051F54();
  v78 = *(v6 - 1);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FC4();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v68 - v21;
  v23 = [*(v3 + 32) identifier];
  if (!v23)
  {
    sub_1BE052434();
    v23 = sub_1BE052404();
  }

  [a1 setMethodGroupIdentifier_];

  v24 = [a2 identifier];
  if (!v24)
  {
    sub_1BE052434();
    v24 = sub_1BE052404();
  }

  [a1 setMethodIdentifier_];

  swift_beginAccess();
  v25 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    sub_1BE0527C4();
    swift_endAccess();
    v26 = *(v3 + 64);
    v27 = *(v3 + 40);
    if (v27 >> 62)
    {
      v28 = sub_1BE053704();
      v29 = v28 - 1;
      if (__OFSUB__(v28, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v28 - 1;
      if (__OFSUB__(v28, 1))
      {
        goto LABEL_46;
      }
    }

    if (v26 < v29)
    {
      break;
    }

    *(v3 + 120) = 6;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(6u, 1);
      swift_unknownObjectRelease();
    }

    v79 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
    v78 = [*(v3 + 24) webService];
    if (!v78)
    {
      __break(1u);
      return;
    }

    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    v68[1] = v3;
    v28 = *(v3 + 72);
    if (!(v28 >> 62))
    {
      v35 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = &off_1BE0B1000;
      if (!v35)
      {
        goto LABEL_39;
      }

      goto LABEL_17;
    }

LABEL_47:
    v67 = v28;
    v35 = sub_1BE053704();
    v28 = v67;
    v3 = 0x1BE0B1000;
    if (!v35)
    {
      goto LABEL_39;
    }

LABEL_17:
    v73 = v28 & 0xC000000000000001;
    v69 = v28 + 32;
    v70 = v28 & 0xFFFFFFFFFFFFFF8;
    v76 = &v82;
    v71 = v28;
    sub_1BE048C84();
    v36 = 0;
    v37 = *(v3 + 336);
    v72 = v35;
    while (2)
    {
      if (v73)
      {
        v38 = MEMORY[0x1BFB40900](v36, v71);
      }

      else
      {
        if (v36 >= *(v70 + 16))
        {
          goto LABEL_42;
        }

        v38 = *(v69 + 8 * v36);
      }

      v39 = v38;
      v40 = __OFADD__(v36, 1);
      v41 = v36 + 1;
      if (!v40)
      {
        v42 = [v38 encryptedPerFieldDynamicFieldParameters];
        v74 = v39;
        v75 = v41;
        if (v42)
        {
          v43 = v42;
          sub_1BD0E5E8C(0, &qword_1EBD585D8);
          v44 = sub_1BE052244();
        }

        else
        {
          v44 = sub_1BD1ACE50(MEMORY[0x1E69E7CC0]);
        }

        v45 = 0;
        v22 = (v44 + 64);
        v46 = 1 << *(v44 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v3 = v47 & *(v44 + 64);
        v17 = ((v46 + 63) >> 6);
        if (v3)
        {
          while (1)
          {
            v48 = v45;
LABEL_36:
            v49 = __clz(__rbit64(v3));
            v3 &= v3 - 1;
            v50 = *(*(v44 + 56) + ((v48 << 9) | (8 * v49)));
            v51 = swift_allocObject();
            v53 = v77;
            v52 = v78;
            *(v51 + 2) = v78;
            *(v51 + 3) = v50;
            *(v51 + 4) = v53;
            v84 = sub_1BD8F71CC;
            v85 = v51;
            aBlock = MEMORY[0x1E69E9820];
            v81 = v37;
            v82 = sub_1BD3B2110;
            v83 = &block_descriptor_207;
            v54 = _Block_copy(&aBlock);
            v9 = v85;
            v13 = v50;
            v55 = v52;
            sub_1BE048964();

            [v79 addOperation_];
            _Block_release(v54);

            if (!v3)
            {
              goto LABEL_32;
            }
          }
        }

        while (1)
        {
LABEL_32:
          v48 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v48 >= v17)
          {
            break;
          }

          v3 = *&v22[8 * v48];
          ++v45;
          if (v3)
          {
            v45 = v48;
            goto LABEL_36;
          }
        }

        v36 = v75;
        v3 = &off_1BE0B1000;
        if (v75 != v72)
        {
          continue;
        }

LABEL_39:
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v58 = v77;
        *(v57 + 16) = v56;
        *(v57 + 24) = v58;
        v84 = sub_1BD8F71D8;
        v85 = v57;
        aBlock = MEMORY[0x1E69E9820];
        v81 = *(v3 + 336);
        v59 = v81;
        v82 = sub_1BD3B2110;
        v83 = &block_descriptor_24_5;
        v60 = _Block_copy(&aBlock);
        sub_1BE048964();

        v61 = v79;
        [v79 addOperation_];
        _Block_release(v60);
        v62 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v63 = swift_allocObject();
        swift_weakInit();
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *(v64 + 24) = v58;
        v84 = sub_1BD8F71E0;
        v85 = v64;
        aBlock = MEMORY[0x1E69E9820];
        v81 = v59;
        v82 = sub_1BD3B21E4;
        v83 = &block_descriptor_31_2;
        v65 = _Block_copy(&aBlock);
        sub_1BE048964();

        v66 = [v61 evaluateWithInput:v62 completion:v65];
        _Block_release(v65);

        swift_unknownObjectRelease();

        return;
      }

      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    sub_1BE052774();
  }

  *(v3 + 120) = 5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD6584C0(5u, 1);
    swift_unknownObjectRelease();
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v30 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v74 = *(v74 + 1);
  v31 = v17;
  v32 = v75;
  (v74)(v31, v75);
  v84 = sub_1BD8F71E8;
  v85 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1BD126964;
  v83 = &block_descriptor_34_2;
  v33 = _Block_copy(&aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v34 = v79;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v22, v13, v9, v33);
  _Block_release(v33);

  (*(v78 + 1))(v9, v34);
  (v76[1])(v13, v77);
  (v74)(v22, v32);
}

uint64_t sub_1BD8F6720(uint64_t result)
{
  v1 = *(result + 64);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 64) = v3;
    *(result + 120) = 4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BD6584C0(4u, 0);
      swift_unknownObjectRelease();
    }

    return sub_1BD8F49CC(0);
  }

  return result;
}

void sub_1BD8F678C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a2;
  v13[6] = a7;
  v17[4] = sub_1BD8F7204;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BD14E1D8;
  v17[3] = &block_descriptor_49_4;
  v14 = _Block_copy(v17);
  v15 = a6;
  sub_1BE048964();
  v16 = a2;
  sub_1BE048964();

  [a5 paymentProvisioningNonceOfType:0 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD8F68A8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && (v12 = [a1 nonce]) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_pk_decodeHexadecimal), v13, v14))
  {
    v15 = sub_1BE04AAC4();
    v17 = v16;

    v18 = sub_1BE04AAB4();
    [a3 setNonce_];

    a4(a6, 0);

    return sub_1BD1245AC(v15, v17);
  }

  else
  {
    if (a2)
    {
      v20 = sub_1BE04A844();
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_opt_self() errorWithUnderlyingError:v20 defaultSeverity:4];

    swift_beginAccess();
    v22 = *(a7 + 16);
    *(a7 + 16) = v21;

    swift_beginAccess();
    v23 = *(a7 + 16);
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BE052404();
      [v24 addInternalDebugDescription_];
    }

    return a4(a6, 1);
  }
}

void sub_1BD8F6A94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 24);
    swift_beginAccess();
    sub_1BD0E5E8C(0, &qword_1EBD45EF8);
    v12 = v11;
    sub_1BE048C84();
    v13 = sub_1BE052724();

    swift_weakInit();
    swift_weakDestroy();
    v14 = swift_allocObject();
    v14[2] = a6;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = a2;
    aBlock[4] = sub_1BD8F71F8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4315EC;
    aBlock[3] = &block_descriptor_43_4;
    v15 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BE048964();
    v16 = a2;

    [v12 submitVerificationEntries:v13 completion:v15];
    _Block_release(v15);
  }
}

void sub_1BD8F6C48(int a1, int a2, id a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v11 = a3;
    v12 = sub_1BE04A844();
    v13 = [objc_opt_self() errorWithUnderlyingError:v12 defaultSeverity:4];

    swift_beginAccess();
    v14 = *(a4 + 16);
    *(a4 + 16) = v13;

    a5(a7, 1);
  }

  else
  {
    a5(a7, 0);
  }
}

uint64_t sub_1BD8F6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v31 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    swift_beginAccess();
    v27 = *(a5 + 16);
    if (v27)
    {
      v28 = v27;
      sub_1BD8F4F2C(v28);
    }

    else
    {
      v34 = v7;
      *(v26 + 120) = 7;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1BD6584C0(7u, 1);
        swift_unknownObjectRelease();
      }

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v32 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v33 = *(v17 + 8);
      v33(v20, v16);
      aBlock[4] = sub_1BD8F71F0;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_37_2;
      v29 = _Block_copy(aBlock);
      sub_1BE048964();

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v30 = v32;
      MEMORY[0x1BFB3FD90](v24, v15, v10, v29);
      _Block_release(v29);

      (*(v34 + 8))(v10, v6);
      (*(v36 + 8))(v15, v35);
      return (v33)(v24, v16);
    }
  }

  return result;
}

uint64_t sub_1BD8F712C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BCE240, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BD8F7228()
{
  result = qword_1EBD585E0;
  if (!qword_1EBD585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD585E0);
  }

  return result;
}

id sub_1BD8F72F8()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1BD8F73A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1BD8F748C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1BD0E5E8C(0, &qword_1EBD58668);
  v5 = v4;
  v6 = sub_1BE053074();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
  }
}

void sub_1BD8F75F8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  if (*(v1 + 24) != v3)
  {
    swift_getKeyPath();
    sub_1BE04B594();

    v4 = *(v1 + 16);
    swift_getKeyPath();
    v5 = v4;
    sub_1BE04B594();

    [v5 setComplete_];

    v6 = [objc_opt_self() sharedInstance];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BE0B7020;
      swift_getKeyPath();
      sub_1BE04B594();

      v9 = *(v2 + 16);
      *(v8 + 32) = v9;
      sub_1BD0E5E8C(0, &qword_1EBD58668);
      v10 = v9;
      v11 = sub_1BE052724();

      [v7 insertOrUpdatePeerPaymentPendingRequests:v11 shouldScheduleNotifications:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD8F7828()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  return *(v0 + 24);
}

uint64_t sub_1BD8F78C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE04B594();

  *a2 = *(v3 + 24);
  return result;
}

void sub_1BD8F7998(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 24);
  if (v3 == v2)
  {
    *(v1 + 24) = v2;

    sub_1BD8F75F8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
    sub_1BE04B584();
  }
}

void sub_1BD8F7ACC(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  sub_1BD8F75F8(v3);
}

uint64_t PeerPaymentGroupPendingRequest.__allocating_init(request:)(void *a1)
{
  v2 = swift_allocObject();
  sub_1BE04B5C4();
  *(v2 + 16) = a1;
  *(v2 + 24) = [a1 isComplete];
  return v2;
}

uint64_t PeerPaymentGroupPendingRequest.init(request:)(void *a1)
{
  sub_1BE04B5C4();
  *(v1 + 16) = a1;
  *(v1 + 24) = [a1 isComplete];
  return v1;
}

uint64_t PeerPaymentGroupPendingRequest.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI30PeerPaymentGroupPendingRequest___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeerPaymentGroupPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI30PeerPaymentGroupPendingRequest___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8F7CB8()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  return sub_1BE048964();
}

uint64_t sub_1BD8F7D64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  return sub_1BE048964();
}

uint64_t sub_1BD8F7E44(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8F7F80()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8F803C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD8F80F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  return sub_1BD8F8134(v1, v2);
}

uint64_t sub_1BD8F8134(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BD8F82B0()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  sub_1BD030394(v1, *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8));
  return v1;
}

uint64_t sub_1BD8F8370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1BD030394(v4, v5);
}

uint64_t sub_1BD8F8428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  return sub_1BD8F846C(v1, v2);
}

uint64_t sub_1BD8F846C(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B584();
    sub_1BD030220(a1, a2);
  }

  else
  {
    v12 = *v5;
    v13 = v5[1];
    *v5 = a1;
    v5[1] = a2;

    return sub_1BD030220(v12, v13);
  }
}

void PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData] = xmmword_1BE0B8E60;
  sub_1BE04B5C4();
  type metadata accessor for PeerPaymentGroupPendingRequest(0);
  v8 = swift_allocObject();
  v9 = a1;
  sub_1BE04B5C4();
  *(v8 + 16) = v9;
  *(v8 + 24) = [v9 isComplete];
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request] = v8;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionSourceCollection] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_context] = a3;
  v10 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v11 = a2;
  v12 = [v10 init];
  v13 = objc_allocWithZone(MEMORY[0x1E69B8788]);
  v14 = v11;
  v15 = [v13 initWithTransactionType:3 transactionSourceCollection:v14 paymentDataProvider:v12];

  if (v15)
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher] = v15;
    v16 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
    if (v16)
    {
      *&v3[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_iconGenerator] = v16;
      v23.receiver = v3;
      v23.super_class = type metadata accessor for PeerPaymentGroupedPaymentsModel(0);
      v17 = objc_msgSendSuper2(&v23, sel_init);
      v18 = OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher;
      v19 = *&v17[OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_transactionFetcher];
      v20 = v17;
      [v19 filterPeerPaymentSubType_];
      v21 = *&v17[v18];
      v22 = [v9 requestToken];
      [v21 filterPeerPaymentRequestToken_];

      [*&v17[v18] setDelegate_];
      sub_1BD8F8F78();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD8F8890()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v1 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v2);
  v28 = &v22 - v3;
  swift_getKeyPath();
  v32 = v0;
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v30 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  swift_getKeyPath();
  v32 = v4;
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();

  v5 = *(v4 + 16);

  v6 = [v5 receivedTransactions];

  if (v6)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    v7 = sub_1BE052744();

    v33 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v9 = 0;
      v26 = v7 & 0xFFFFFFFFFFFFFF8;
      v27 = v7 & 0xC000000000000001;
      v23 = (v1 + 32);
      v24 = OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel_iconGenerator;
      v25 = v7;
      while (1)
      {
        if (v27)
        {
          v10 = MEMORY[0x1BFB40900](v9, v7);
        }

        else
        {
          if (v9 >= *(v26 + 16))
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [objc_opt_self() presentationInformationForTransaction:v10 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
        v14 = *(v30 + v24);
        type metadata accessor for TransactionPresentation();
        v1 = swift_allocObject();
        v15 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
        v32 = 0;
        v16 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
        v17 = v28;
        sub_1BE04D874();
        (*v23)(v1 + v15, v17, v29);
        v18 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
        *(v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = v11;
        *(v1 + v18) = v14;
        swift_beginAccess();
        v31 = v13;
        sub_1BD0E5E8C(0, &qword_1EBD407E0);
        v19 = v16;
        v20 = v11;
        v21 = v13;
        sub_1BE04D874();
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();
        v32 = 0;
        sub_1BE048964();
        sub_1BE04D8C4();

        MEMORY[0x1BFB3F7A0]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        ++v9;
        v7 = v25;
        if (v12 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD8F8D70@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();

  v4 = *(v3 + 16);

  v5 = [v4 messageGUID];

  if (v5)
  {
    v6 = sub_1BE052434();
    v8 = v7;

    MEMORY[0x1BFB3F610](v6, v8);

    sub_1BE04AA54();
  }

  else
  {
    v10 = sub_1BE04AA64();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

void sub_1BD8F8F78()
{
  swift_getKeyPath();
  sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
  swift_getKeyPath();
  v6[0] = v1;
  sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
  sub_1BE048964();
  sub_1BE04B594();

  v2 = *(v1 + 16);

  v3 = [v2 groupID];

  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_1BD8F9DA4;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1BD8F9254;
    v6[3] = &block_descriptor_62_0;
    v5 = _Block_copy(v6);

    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(v3, v5);
    _Block_release(v5);
  }
}

void sub_1BD8F918C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1BE048C84();
    sub_1BD8F8134(a1, a2);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1BD030394(a3, a4);
    sub_1BD8F846C(a3, a4);
  }
}

uint64_t sub_1BD8F9254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1BE048964();
  if (a3)
  {
    v8 = a3;
    a3 = sub_1BE04AAC4();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  v4(v5, v7, a3, v10);
  sub_1BD030220(a3, v10);
}

void sub_1BD8F9324(unint64_t a1)
{
  if (a1)
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v6 = a1;
      v7 = sub_1BE053704();
      a1 = v6;
      if (!v7)
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1BFB40900](0, a1);
    }

    else
    {
      if (!*(v1 + 16))
      {
        __break(1u);
        return;
      }

      v2 = *(a1 + 32);
    }

    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
      sub_1BE04B594();

      sub_1BE048964();

      sub_1BD8F748C(v3);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD8F9480(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD58668);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

id PeerPaymentGroupedPaymentsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentGroupedPaymentsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentGroupedPaymentsModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD8F972C()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    v13[0] = v0;
    sub_1BD8F9BF8(&qword_1EBD58660, type metadata accessor for PeerPaymentGroupedPaymentsModel);
    sub_1BE04B594();

    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request);
    swift_getKeyPath();
    v13[0] = v3;
    sub_1BD8F9BF8(&qword_1EBD3FAC0, type metadata accessor for PeerPaymentGroupPendingRequest);
    sub_1BE048964();
    sub_1BE04B594();

    v4 = *(v3 + 16);

    v5 = [v4 requestToken];

    if (v5)
    {
      v6 = sub_1BE052434();
      v8 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BE0B69E0;
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
      v10 = sub_1BE052724();

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13[4] = sub_1BD8F9D9C;
      v13[5] = v11;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1BD8F9480;
      v13[3] = &block_descriptor_208;
      v12 = _Block_copy(v13);

      [v2 peerPaymentPendingRequestsForRequestTokens:v10 completion:v12];
      _Block_release(v12);

      v2 = v10;
    }
  }
}

uint64_t sub_1BD8F99E0()
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD8F9ABC()
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD8F9BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD8F9C40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupImageData);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1BD030394(v1, v2);
  return sub_1BD030220(v4, v5);
}

uint64_t sub_1BD8F9C98()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__groupName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048C84();
}

uint64_t sub_1BD8F9CE4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI31PeerPaymentGroupedPaymentsModel__request) = *(v0 + 24);
  sub_1BE048964();
}

void sub_1BD8F9D28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  sub_1BD8F75F8(v2);
}

void sub_1BD8F9D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1BD8F9DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = a1;
  v5 = *(a2 + 24);
  v6 = sub_1BE0534B4();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = &v75 - v8;
  v88 = v5;
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v86 = &v75 - v14;
  v15 = *(a2 + 32);
  v16 = sub_1BE0534B4();
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v75 - v18;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v78 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v79 = &v75 - v26;
  v27 = *(a2 + 16);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = [objc_allocWithZone(PKExplanationViewController) initWithContext_];
  v33 = [v89 explanationView];
  if (v33)
  {
    sub_1BE04EAF4();
    v76 = v20;
    (*(v28 + 16))(v32, &v3[*(a2 + 68)], v27);
    v34 = v33;
    v35 = sub_1BE04EAB4();
    [v34 setHeroView_];

    v20 = v76;
  }

  v37 = v84;
  v36 = v85;
  (*(v84 + 16))(v19, &v3[*(a2 + 80)], v85);
  v38 = a2;
  if ((*(v20 + 48))(v19, 1, v15) != 1)
  {
    v43 = v79;
    (*(v20 + 32))();
    sub_1BE04F8C4();
    (*(v20 + 16))(v78, v43, v15);
    v44 = sub_1BE04F884();
    v39 = v33;
    v42 = v86;
    if (!v33)
    {
      (*(v20 + 8))(v43, v15);
      v41 = v87;
      v40 = v88;
LABEL_14:

      goto LABEL_15;
    }

    v45 = v33;
    v46 = v20;
    v47 = v45;
    v48 = v3;
    v49 = v42;
    v50 = v43;
    v51 = [v44 view];
    [v47 setBodyView_];

    v52 = v50;
    v42 = v49;
    v3 = v48;
    (*(v46 + 8))(v52, v15);
    v41 = v87;
    v40 = v88;
LABEL_8:
    v53 = v39;
    v54 = sub_1BE052404();
    [v53 setTitleText_];

    v55 = *&v3[v38[19] + 8];
    v56 = v53;
    if (v55)
    {
      v55 = sub_1BE052404();
    }

    [v53 setBodyText_];

    v57 = [v53 dockView];
    if (!v57)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v58 = v57;
    v59 = [v57 primaryButton];

    if (!v59)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v44 = sub_1BE052404();
    [v59 setTitle:v44 forState:0];

    goto LABEL_14;
  }

  (*(v37 + 8))(v19, v36);
  v39 = v33;
  v41 = v87;
  v40 = v88;
  v42 = v86;
  if (v39)
  {
    goto LABEL_8;
  }

LABEL_15:
  v61 = v81;
  v60 = v82;
  v62 = v83;
  (*(v82 + 16))(v81, &v3[v38[23]], v83);
  if ((*(v41 + 48))(v61, 1, v40) == 1)
  {
    (*(v60 + 8))(v61, v62);
    if (!v39)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  (*(v41 + 32))(v42, v61, v40);
  sub_1BE04F8C4();
  (*(v41 + 16))(v77, v42, v40);
  v63 = sub_1BE04F884();
  if (!v39)
  {
    (*(v41 + 8))(v42, v40);

    goto LABEL_23;
  }

  v64 = [v39 dockView];
  if (v64)
  {
    v65 = v64;
    v66 = [v63 view];
    [v65 setAdditionalView_];

    (*(v41 + 8))(v42, v40);
LABEL_21:
    v67 = v39;
    swift_getWitnessTable();
    sub_1BE050164();
    sub_1BE050154();
    v68 = v90;
    [v67 setDelegate_];

LABEL_23:
    v69 = &v3[v38[22]];
    v70 = v69[8];
    if (v70)
    {
      if (v89)
      {
        [v89 setPrivacyLinkController_];
      }
    }

    else if (v89)
    {
      v71 = *v69;
      v72 = objc_opt_self();
      v73 = v89;
      v74 = [v72 pk:v71 privacyLinkForContext:?];
      [v73 setPrivacyLinkController_];
    }

    if (v39)
    {
      [v39 setShowPrivacyView_];
    }

    if (v89)
    {

      return;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

id sub_1BD8FA6B0(uint64_t a1)
{
  v3 = type metadata accessor for ExplanationView.Coordinator();
  v4 = v1 + *(a1 + 84);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_1BE048964();
  v7 = objc_allocWithZone(v3);
  return sub_1BD8FA774(v5, v6);
}

id sub_1BD8FA774(uint64_t a1, uint64_t a2)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = (v2 + qword_1EBD58670);
  *v4 = a1;
  v4[1] = a2;
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ExplanationView.Coordinator();
  return objc_msgSendSuper2(&v9, sel_init, v6, v7, v8);
}

uint64_t sub_1BD8FA824()
{
  v1 = v0[2] + qword_1EBD58670;
  v2 = *v1;
  v0[3] = *(v1 + 8);
  sub_1BE048964();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1BD8FA930;

  return v5();
}

uint64_t sub_1BD8FA930()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1BD8FAA40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD8FAD5C();
}

id sub_1BD8FAB30()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ExplanationView.Coordinator();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

id sub_1BD8FABE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1BD8FA6B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BD8FAC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD8FAC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1BD8FAD08()
{
  swift_getWitnessTable();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD8FAD5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1BD122C00(0, 0, v4, &unk_1BE1045A8, v6);
}

uint64_t sub_1BD8FAE60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD8FA804(a1, v4, v5, v6);
}

void sub_1BD8FAF14()
{
  type metadata accessor for PKPaymentSetupContext(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BD1C86BC();
      if (v2 <= 0x3F)
      {
        sub_1BE0534B4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ExplanationView.ActionConfiguration();
          if (v4 <= 0x3F)
          {
            sub_1BD873DE0();
            if (v5 <= 0x3F)
            {
              sub_1BE0534B4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD8FB05C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[4] - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 84);
  }

  v12 = a3[3];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v5 + 80);
  v19 = *(v7 + 80);
  if (v9)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = *(v13 + 80);
  if (v14)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + 7;
  v24 = v19 + 16;
  v25 = v20 + 7;
  v26 = v21 + 9;
  v27 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_44;
  }

  v28 = v22 + *(*(v12 - 8) + 64) + ((v26 + ((((v25 + ((v24 + ((((v23 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v31 = ((v27 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v31))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 < 2)
    {
LABEL_44:
      v35 = (a1 + v18 + 8) & ~v18;
      if (v6 == v17)
      {
        v36 = *(v5 + 48);

        return v36(v35, v6, v4);
      }

      v38 = (v23 + v35) & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) == 0)
      {
        v39 = *(v38 + 8);
        if (v39 >= 0xFFFFFFFF)
        {
          LODWORD(v39) = -1;
        }

        return (v39 + 1);
      }

      v40 = (v24 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
      if (v10 == v17)
      {
        if (v9 >= 2)
        {
          v41 = (*(v8 + 48))(v40);
          goto LABEL_61;
        }
      }

      else if (v14 >= 2)
      {
        v41 = (*(v13 + 48))((v26 + ((((v25 + v40) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21, v14, v12);
LABEL_61:
        if (v41 >= 2)
        {
          return v41 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_44;
  }

LABEL_31:
  v32 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v32 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v33 = v28;
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v17 + (v34 | v32) + 1;
}

void sub_1BD8FB3E8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[4] - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = a4[3];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v7 + 80);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v14 + 80);
  v20 = *(v14 + 64);
  v21 = v15 - 1;
  if (!v15)
  {
    v21 = 0;
  }

  if (v12 <= v21)
  {
    v12 = v21;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v12;
  }

  if (v10)
  {
    v23 = *(*(a4[4] - 8) + 64);
  }

  else
  {
    v23 = *(*(a4[4] - 8) + 64) + 1;
  }

  v24 = v17 + 7;
  v25 = v23 + 7;
  v26 = (v19 + 9 + ((((v25 + ((v18 + 16 + ((((v17 + 7 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (!v15)
  {
    ++v20;
  }

  v27 = v20 + v26 + 1;
  v28 = a3 >= v22;
  v29 = a3 - v22;
  if (v29 == 0 || !v28)
  {
LABEL_30:
    if (v22 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v27 > 3)
  {
    v6 = 1;
    if (v22 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v30 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v30))
  {
    if (v30 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v30 < 2)
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v22 < a2)
  {
LABEL_31:
    v31 = ~v22 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v31 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *&a1[v27] = v32;
              }

              else
              {
                *&a1[v27] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      a1[v27] = v32;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v27] = 0;
LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!v6)
  {
    goto LABEL_46;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_47:
  v34 = &a1[v16 + 8] & ~v16;
  if (v8 == v22)
  {
    v35 = *(v7 + 56);

    v35(v34);
  }

  else
  {
    v36 = ((v24 + v34) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v37 = (v18 + 16 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
      if (v11 == v22)
      {
        if (v10 >= 2)
        {
          v38 = *(v9 + 56);
          v39 = a2 + 1;

          v38(v37, v39);
        }
      }

      else if (v15 >= 2)
      {
        v40 = *(v14 + 56);
        v41 = (v19 + 9 + ((((v25 + v37) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
        v42 = a2 + 1;

        v40(v41, v42, v15, v13);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v36 = a2 & 0x7FFFFFFF;
      v36[1] = 0;
    }

    else
    {
      v36[1] = a2 - 1;
    }
  }
}

uint64_t sub_1BD8FB870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD8FB8EC(uint64_t a1)
{
  v2 = sub_1BE04EB44();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F0D4();
}

uint64_t PKAccountModuleCollectionViewCell.configure(account:)(void *a1)
{
  v3 = type metadata accessor for AccountModuleView();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BE04BD74();
  v7 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v78 - v12;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocBox();
  v92 = v20;
  v21 = [a1 type];
  if (v21 < 2 || v21 == 3)
  {
    swift_deallocBox();
    return 0;
  }

  v88 = v1;
  if (v21 != 4)
  {
    goto LABEL_28;
  }

  v86 = v3;
  v87 = v19;
  if (_UISolariumFeatureFlagEnabled())
  {
    v23 = 32.0;
  }

  else
  {
    v23 = 34.0;
  }

  v24 = objc_allocWithZone(type metadata accessor for AccountModel());
  v90 = a1;
  v89 = sub_1BD1DF0D8(v90, 0);
  v25 = PKPassKitUIBundle();
  if (!v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v25;
  v27 = sub_1BE052404();
  v28 = sub_1BE052404();
  v29 = [v26 URLForResource:v27 withExtension:v28];

  if (v29)
  {
    sub_1BE04A9F4();

    v29 = sub_1BE04A9C4();
    (*(v15 + 8))(v18, v14);
  }

  v30 = v88;
  v31 = PKUIScreenScale();
  v32 = PKUIImageFromPDF(v29, v23, v23, v31);

  if (!v32)
  {
    goto LABEL_24;
  }

  v33 = sub_1BE051544();
  v34 = *MEMORY[0x1E69B80E0];
  v35 = v7;
  v36 = *(v7 + 104);
  v37 = v93;
  v36(v13, v34, v93);
  sub_1BE048964();
  v38 = PKPassKitBundle();
  if (!v38)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v38;
  v40 = sub_1BE04B6F4();
  v84 = v41;
  v85 = v40;

  v44 = *(v35 + 8);
  v42 = v35 + 8;
  v43 = v44;
  v44(v13, v37);
  v45 = v90;
  v83 = [v30 shouldShowBalanceFor_];
  v88 = v33;
  if (!v83)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v92;
LABEL_22:
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v89;
    sub_1BE04D8B4();

    v63 = v94;
    IsThresholdExceededActive = PKSavingsAccountIsThresholdExceededActive();

    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = v50;
    *(v66 + 32) = v83 ^ 1;
    *(v66 + 40) = v45;
    v67 = v84;
    v68 = v85;
    *v6 = v88;
    *(v6 + 1) = v68;
    *(v6 + 2) = v67;
    *(v6 + 3) = v51;
    *(v6 + 4) = v52;
    v6[40] = IsThresholdExceededActive;
    *(v6 + 6) = sub_1BD8FC32C;
    *(v6 + 7) = v66;
    v69 = *(v86 + 36);
    *&v6[v69] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD855F44(v6, v53);
    v70 = *MEMORY[0x1E69DC5C0];
    v71 = *(MEMORY[0x1E69DC5C0] + 8);
    v72 = *(MEMORY[0x1E69DC5C0] + 16);
    v73 = *(MEMORY[0x1E69DC5C0] + 24);
    v74 = v45;
    [v30 setDirectionalLayoutMargins_];
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = swift_allocObject();
    v77 = v87;
    *(v76 + 16) = v75;
    *(v76 + 24) = v77;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE052E74();

    [v30 setNeedsUpdateConfiguration];

    return 1;
  }

  v80 = v36;
  v81 = v43;
  v82 = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v46 = v94;
  v47 = [v94 currentBalance];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v48 = v94;
  if (v94)
  {
    v49 = [v94 currencyCode];

    if (v49)
    {
      sub_1BE052434();

      sub_1BE048C84();
      v49 = sub_1BE052404();
    }
  }

  else
  {
    v49 = 0;
  }

  v79 = v47;
  v54 = PKCurrencyAmountMake();

  if (v54)
  {
    v55 = [v54 formattedStringValue];

    if (v55)
    {

      v56 = sub_1BE052434();
      v58 = v57;

      v59 = v91;
      v80(v91, v34, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1BE0B69E0;
      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1BD110550();
      *(v60 + 32) = v56;
      *(v60 + 40) = v58;
      v51 = sub_1BE04B714();
      v52 = v61;

      v81(v59, v37);
      v50 = 2;
      v53 = v92;
      v45 = v90;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD8FC2AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a3 & 1) == 0)
    {
      v8 = Strong;
      [Strong reportDeviceEvent:a2 account:a4];
      Strong = v8;
    }
  }
}

void sub_1BD8FC33C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58800);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - v3;
  type metadata accessor for AccountModuleView();
  v5 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    MEMORY[0x1EEE9AC00](Strong, v7);
    v10[-2] = v5;
    sub_1BD8FC830();
    v9 = v8;
    sub_1BE04FCE4();
    sub_1BE0501D4();
    v10[3] = v0;
    v10[4] = sub_1BD8FC888();
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_1BE04FCD4();
    (*(v1 + 8))(v4, v0);
    MEMORY[0x1BFB3FEF0](v10);
  }
}

uint64_t PKAccountModuleCollectionViewCell.shouldShowBalance(for:)(void *a1)
{
  if ([a1 type] != 4)
  {
    return 0;
  }

  if (PKSavingsFDICSignageEnabled())
  {
    return [a1 FDICBehaviorShowCreditDashboardBalance];
  }

  return 1;
}

CGSize __swiftcall PKAccountModuleCollectionViewCell.sizeThatFits(_:)(CGSize a1)
{
  LODWORD(v2) = 1148846080;
  LODWORD(v3) = 1112014848;
  [v1 systemLayoutSizeFittingSize:a1.width withHorizontalFittingPriority:a1.height verticalFittingPriority:{v2, v3}];
  result.height = v5;
  result.width = v4;
  return result;
}

id _sSo33PKAccountModuleCollectionViewCellC9PassKitUIE17reportDeviceEvent_7accountySo0ajK0V_So0A0CtF_0(uint64_t a1, void *a2)
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v4 = objc_allocWithZone(sub_1BE04BF14());
    v5 = a2;
    v6 = sub_1BE04BF04();
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8390]) initWithApp:1 page:1];
    *(swift_allocObject() + 16) = v6;
    v8 = v7;
    v9 = v6;
    sub_1BE04BEF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8FC7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  return sub_1BD855EE0(v3, a1);
}

unint64_t sub_1BD8FC830()
{
  result = qword_1EBD58808;
  if (!qword_1EBD58808)
  {
    type metadata accessor for AccountModuleView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58808);
  }

  return result;
}

unint64_t sub_1BD8FC888()
{
  result = qword_1EBD58810;
  if (!qword_1EBD58810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WrappedFrequency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WrappedFrequency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BD8FC944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD15D62C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD15D69C(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v11 = sub_1BE04AE64();
    v12 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

    if (v12)
    {
      v13 = sub_1BE052434();

      (*(v7 + 8))(v10, v6);
      return v13;
    }

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t sub_1BD8FCB20()
{
  sub_1BE053D04();
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();

  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD8FCBA0()
{
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();

  sub_1BE052524();
}

uint64_t sub_1BD8FCC10()
{
  sub_1BE053D04();
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();

  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD8FCC8C()
{
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v1 = sub_1BE052434();
  v3 = v2;

  v4 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v5 = sub_1BE052434();
  v7 = v6;

  if (v1 == v5 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BE053B84();
  }

  return v9 & 1;
}

uint64_t sub_1BD8FCD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BD8FCD6C, 0, 0);
}

uint64_t sub_1BD8FCD6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818);
  v1 = sub_1BE049E14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B69E0;
  (*(v2 + 104))(v4 + v3, *MEMORY[0x1E6967C20], v1);
  v5 = sub_1BD112D70(v4);
  v0[4] = v5;
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_1BE049924();
  v6 = sub_1BE049914();
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1BD8FCF2C;
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x1EEDC1BE8](v5, v8, v9, v6);
}

uint64_t sub_1BD8FCF2C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD8FD074, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BD8FD074()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BD8FD0E0(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v72, v8);
  v73 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v69 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for AvailablePass(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v65 - v32;
  v70 = v2;
  if (*(v2 + 24))
  {
    return;
  }

  v76 = a1;
  sub_1BD0DE19C(v75, v24, &qword_1EBD520A0);
  v71 = v26;
  v34 = (*(v26 + 48))(v24, 1, v25);
  v67 = v7;
  if (v34 == 1)
  {
    sub_1BE048C84();
    sub_1BD0DE53C(v24, &qword_1EBD520A0);
  }

  else
  {
    sub_1BD8FE078(v24, v33, type metadata accessor for AvailablePass);
    sub_1BE048C84();
    sub_1BD535950(v33, v20);
    sub_1BD0DE53C(v20, &qword_1EBD520A0);
    sub_1BD8FDF64(v33, type metadata accessor for AvailablePass);
    a1 = v76;
  }

  v74 = v13;
  v35 = a1 + 56;
  v36 = 1 << *(a1 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(a1 + 56);
  v39 = (v36 + 63) >> 6;
  sub_1BE048C84();
  v40 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v41 = v71;
  v75 = a1;
  while (v38)
  {
LABEL_14:
    v43 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    sub_1BD133398(*(a1 + 48) + *(v41 + 72) * (v43 | (v40 << 6)), v29, type metadata accessor for AvailablePass);
    v44 = &v29[*(v25 + 28)];
    v45 = v29;
    v46 = v74;
    sub_1BD0DE19C(v44, v74, &qword_1EBD39FF0);
    v47 = type metadata accessor for BalanceInfo(0);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      sub_1BD8FDF64(v45, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v46, &qword_1EBD39FF0);
      a1 = v75;
      v29 = v45;
    }

    else
    {
      sub_1BD0DE53C(v46, &qword_1EBD39FF0);
      v48 = v73;
      sub_1BD133398(v45, v73, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = v45;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1BD8FDF64(v48, type metadata accessor for WrappedPass);
          a1 = v75;
          goto LABEL_19;
        }

        v52 = v67;
        sub_1BD8FE078(v48, v67, type metadata accessor for PlaceholderPass);
        v51 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
        [v51 setCardType_];
        sub_1BD8FDF64(v52, type metadata accessor for PlaceholderPass);
        a1 = v75;
LABEL_21:
        v53 = [v51 primaryAccountIdentifier];

        v54 = sub_1BE052434();
        v66 = v55;

        sub_1BD8FDF64(v29, type metadata accessor for AvailablePass);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1BD03B038(0, *(v68 + 2) + 1, 1, v68);
        }

        v57 = *(v68 + 2);
        v56 = *(v68 + 3);
        if (v57 >= v56 >> 1)
        {
          v68 = sub_1BD03B038((v56 > 1), v57 + 1, 1, v68);
        }

        v58 = v68;
        *(v68 + 2) = v57 + 1;
        v59 = &v58[16 * v57];
        v60 = v66;
        *(v59 + 4) = v54;
        *(v59 + 5) = v60;
        v41 = v71;
      }

      else
      {
        v50 = *v73;
        v51 = [*v73 secureElementPass];

        a1 = v75;
        if (v51)
        {
          goto LABEL_21;
        }

LABEL_19:
        sub_1BD8FDF64(v29, type metadata accessor for AvailablePass);
        v41 = v71;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      v61 = v70;
      *(v70 + 24) = 1;
      v62 = sub_1BE0528D4();
      v63 = v69;
      (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v64[4] = v68;
      *(v61 + 16) = sub_1BDA543A4(0, 0, v63, &unk_1BE104950, v64);

      return;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v40 = v42;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD8FD8A0()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = sub_1BE049924();
    v4 = *MEMORY[0x1E6967C20];
    *(v0 + 80) = v4;
    *(v0 + 32) = v3;
    *(v0 + 40) = 0;
    v5 = v1[5];
    *(v0 + 48) = v5;
    v6 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818);
    v7 = sub_1BE049E14();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BE0B69E0;
    (*(v8 + 104))(v10 + v9, v4, v7);
    sub_1BE048C84();
    v11 = sub_1BD112D70(v10);
    *(v0 + 56) = v11;
    swift_setDeallocating();
    (*(v8 + 8))(v10 + v9, v7);
    swift_deallocClassInstance();
    v12 = sub_1BE049914();
    *(v0 + 64) = v12;
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1BD8FDADC;

    return MEMORY[0x1EEDC1BE8](v11, v6, v5, v12);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1BD8FDADC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD8FDC98, 0, 0);
  }
}

uint64_t sub_1BD8FDC98()
{
  v1 = *(v0 + 40) + 1;
  if (v1 == *(v0 + 24))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 40) = v1;
    v4 = *(v0 + 80);
    v5 = *(v0 + 16) + 16 * v1;
    v6 = *(v5 + 40);
    *(v0 + 48) = v6;
    v7 = *(v5 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818);
    v8 = sub_1BE049E14();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    (*(v9 + 104))(v11 + v10, v4, v8);
    sub_1BE048C84();
    v12 = sub_1BD112D70(v11);
    *(v0 + 56) = v12;
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    v13 = sub_1BE049914();
    *(v0 + 64) = v13;
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = sub_1BD8FDADC;

    return MEMORY[0x1EEDC1BE8](v12, v7, v6, v13);
  }
}

uint64_t sub_1BD8FDECC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8FDF28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectInterface();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD8FDF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD8FDFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD8FD880(a1, v4, v5, v6);
}

uint64_t sub_1BD8FE078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8FE0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AvailablePass(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v13, &qword_1EBD520A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1BD0DE53C(v13, &qword_1EBD520A0);
  }

  sub_1BD8FE078(v13, v18, type metadata accessor for AvailablePass);
  sub_1BD0DE19C(&v18[*(v14 + 28)], v9, &qword_1EBD39FF0);
  v20 = type metadata accessor for BalanceInfo(0);
  v21 = (*(*(v20 - 8) + 48))(v9, 1, v20);
  sub_1BD0DE53C(v9, &qword_1EBD39FF0);
  if (v21 != 1)
  {
    v22 = WrappedPass.secureElementPass.getter();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 primaryAccountIdentifier];

      v25 = sub_1BE052434();
      v27 = v26;

      v28 = sub_1BE0528D4();
      (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v25;
      v29[5] = v27;
      sub_1BDA543A4(0, 0, v5, &unk_1BE104968, v29);
    }
  }

  return sub_1BD8FDF64(v18, type metadata accessor for AvailablePass);
}

uint64_t sub_1BD8FE45C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD8FCD4C(a1, v4, v5, v7, v6);
}

void sub_1BD8FE600(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product);
  v4 = [v3 supportsSetupProductMethodForType_];
  v5 = [v3 supportsSetupProductMethodForType_];
  v6 = [v3 supportsSetupProductMethodForType_];
  v7 = [v3 supportsSetupProductMethodForType_];
  v8 = OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod))
  {
    v9 = 0x80000001BE140010;
    v10 = 0xD00000000000001ALL;
LABEL_44:
    v11 = 1;
    goto LABEL_45;
  }

  if ((v4 | v5))
  {
    if ((v6 | v7))
    {
      v10 = 0;
      v9 = 0;
      v11 = 0;
LABEL_45:
      a1(v10, v9, 0, v11);
      return;
    }

    if (!(v5 & 1 | ((v4 & 1) == 0)))
    {
      v19 = [v3 setupProductMethodsOfType_];
      if (v19)
      {
        v20 = v19;
        sub_1BD8FEEA4();
        v21 = sub_1BE052744();

        if (v21 >> 62)
        {
          if (sub_1BE053704() == 1)
          {
            if (!sub_1BE053704())
            {

              v23 = 0;
              goto LABEL_24;
            }

            goto LABEL_20;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_20:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFB40900](0, v21);
            goto LABEL_23;
          }

          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v21 + 32);
LABEL_23:
            v23 = v22;

LABEL_24:
            v24 = *(v1 + v8);
            *(v1 + v8) = v23;

            v18 = "derMode provisioning methods";
            v10 = 0xD000000000000031;
            goto LABEL_43;
          }

          goto LABEL_57;
        }
      }
    }

    v31 = *(v1 + v8);
    *(v1 + v8) = 0;

    v18 = "inApp provisioning method only";
    v10 = 0xD00000000000003CLL;
    goto LABEL_43;
  }

  if ((v6 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v18 = "";
      v10 = 0xD00000000000001DLL;
      goto LABEL_43;
    }

    v25 = [v3 setupProductMethodsOfType_];
    if (!v25)
    {
      return;
    }

    v26 = v25;
    sub_1BD8FEEA4();
    v27 = sub_1BE052744();

    if (v27 >> 62)
    {
      if (sub_1BE053704() != 1)
      {
        goto LABEL_50;
      }

      if (!sub_1BE053704())
      {

        v29 = 0;
        goto LABEL_33;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_50;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1BFB40900](0, v27);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        __break(1u);
        return;
      }

      v28 = *(v27 + 32);
    }

    v29 = v28;

LABEL_33:
    v30 = *(v1 + v8);
    *(v1 + v8) = v29;

    v18 = "no valid provisioning methods";
    v10 = 0xD000000000000030;
    goto LABEL_43;
  }

  if (v7)
  {
    return;
  }

  v12 = [v3 setupProductMethodsOfType_];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  sub_1BD8FEEA4();
  v14 = sub_1BE052744();

  if (v14 >> 62)
  {
    if (sub_1BE053704() == 1)
    {
      if (!sub_1BE053704())
      {

        v16 = 0;
        goto LABEL_15;
      }

LABEL_11:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB40900](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

LABEL_15:
      v17 = *(v1 + v8);
      *(v1 + v8) = v16;

      v18 = "ning method only";
      v10 = 0xD00000000000002ELL;
LABEL_43:
      v9 = v18 | 0x8000000000000000;
      goto LABEL_44;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_11;
  }

LABEL_50:
}

void sub_1BD8FEA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product);
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupProductProvidersViewController) initWithProduct:v11 showOtherProviders:0 context:v12];
  [v13 setFlowDelegate_];
  sub_1BE052434();
  v14 = sub_1BE04BB74();

  [v13 setReporter_];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_1BD8FEE98;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_209;
  v17 = _Block_copy(aBlock);
  v18 = v13;
  sub_1BE048964();

  [v18 preflightWithCompletion_];
  _Block_release(v17);
}

uint64_t sub_1BD8FECCC(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController);
      *(Strong + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController) = a3;
      v8 = Strong;

      v9 = a3;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return a4(v10);
}

uint64_t sub_1BD8FED60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8FED9C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD8FEDF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController);
  v2 = v1;
  return v1;
}

unint64_t sub_1BD8FEEA4()
{
  result = qword_1EBD48A90;
  if (!qword_1EBD48A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD48A90);
  }

  return result;
}

id sub_1BD8FEEF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod);
  *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod) = a1;

  v3 = v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = a1;
    sub_1BD8659A4(v1, &off_1F3BC55C8, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1BD8FEFBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD8FF004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD8FF080@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v96 = sub_1BE04F434();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v3);
  v94 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v110 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v108 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v109 = &v83 - v10;
  v100 = sub_1BE04FA74();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v11);
  v97 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1BE04F3D4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v13);
  v83 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04FA94();
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v112 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04E9A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58898);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58888);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v83 - v30;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58880);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v32);
  v111 = &v83 - v33;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58878);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v34);
  v87 = &v83 - v35;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58870);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v36);
  v91 = &v83 - v37;
  v113 = a1;
  sub_1BD9007E0();
  sub_1BE0504E4();
  sub_1BE04E994();
  sub_1BD0DE4F4(&qword_1EBD588A0, &qword_1EBD58898);
  sub_1BE051144();
  (*(v19 + 8))(v22, v18);
  (*(v24 + 8))(v27, v23);
  v105 = v28;
  v38 = sub_1BE051274();
  LOBYTE(v27) = sub_1BE0501D4();
  v39 = sub_1BE051CD4();
  v40 = *(v28 + 36);
  v104 = v31;
  v41 = &v31[v40];
  *v41 = v38;
  v41[8] = v27;
  *(v41 + 2) = v39;
  *(v41 + 3) = v42;
  type metadata accessor for AddressSearchingModel();
  sub_1BD900834(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel);
  v43 = sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v103 = v117;
  v101 = v118;
  v102 = v119;
  if (sub_1BE051C54())
  {
    v121 = a1[48];
    v44 = *(a1 + 5);
    v120 = v44;
    if (v121 == 1)
    {
      if ((v44 & 1) == 0)
      {
LABEL_4:
        sub_1BE04FA84();
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v45 = v5;
      v46 = sub_1BE050174();
      sub_1BE04CF84();

      v5 = v45;
      v47 = v83;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD5AB484(&v120);
      (*(v84 + 8))(v47, v85);
      if ((v114 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  v48 = v97;
  sub_1BE04FA64();
  sub_1BE04FA54();
  v99[1](v48, v100);
LABEL_7:
  v97 = a1;
  v49 = v109;
  v50 = v110;
  v51 = *(v110 + 104);
  LODWORD(v100) = *MEMORY[0x1E69B8068];
  v99 = v51;
  (v51)(v109);
  result = PKPassKitBundle();
  if (result)
  {
    v53 = result;
    v54 = sub_1BE04B6F4();
    v56 = v55;

    v110 = *(v50 + 8);
    (v110)(v49, v5);
    v114 = v54;
    v115 = v56;
    v57 = sub_1BD900690();
    v85 = sub_1BD0DDEBC();
    v109 = v57;
    v58 = v104;
    v59 = v112;
    v60 = v105;
    sub_1BE050874();

    (*(v106 + 8))(v59, v107);
    sub_1BD0C2330(v58);
    v61 = v108;
    (v99)(v108, v100, v5);
    result = PKPassKitBundle();
    if (result)
    {
      v62 = result;
      v63 = sub_1BE04B6F4();
      v65 = v64;

      (v110)(v61, v5);
      v114 = v63;
      v115 = v65;
      v116 = v60;
      v66 = MEMORY[0x1E69E6158];
      v117 = MEMORY[0x1E69E6158];
      v118 = v109;
      v67 = v85;
      v119 = v85;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v69 = v87;
      v70 = v88;
      v71 = v111;
      sub_1BE050B74();

      (*(v86 + 8))(v71, v70);
      v72 = v95;
      v73 = v94;
      v74 = v96;
      (*(v95 + 104))(v94, *MEMORY[0x1E697C438], v96);
      v116 = v70;
      v117 = v66;
      v118 = OpaqueTypeConformance2;
      v119 = v67;
      v75 = swift_getOpaqueTypeConformance2();
      v76 = v91;
      v77 = v90;
      sub_1BE050E84();
      (*(v72 + 8))(v73, v74);
      v78 = (*(v89 + 8))(v69, v77);
      MEMORY[0x1EEE9AC00](v78, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
      v116 = v77;
      v117 = v75;
      swift_getOpaqueTypeConformance2();
      v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
      v81 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
      v116 = v80;
      v117 = v81;
      swift_getOpaqueTypeConformance2();
      v82 = v93;
      sub_1BE051024();
      return (*(v92 + 8))(v76, v82);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD8FFDC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AddressSearchingModel();
  sub_1BD900834(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel);
  sub_1BE04E3C4();
  v5 = *a1;
  v4 = a1[1];
  sub_1BE048964();
  result = sub_1BE04E954();
  *a2 = result;
  a2[1] = v7;
  a2[2] = v5;
  a2[3] = v4;
  return result;
}

uint64_t sub_1BD8FFE90(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

id sub_1BD90007C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v17 = v10;
    v18 = v12;
    v21 = *(a1 + 16);
    v22 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BD0DE19C(&v21, v16, &qword_1EBD588B8);
    sub_1BD0DE19C(&v19, v16, &qword_1EBD5C6E0);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD900284@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_1BE04FE84();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58860);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  v12 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v12;
  v38[2] = *(v1 + 32);
  v39 = *(v1 + 48);
  v33 = v38;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58868);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58870);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58878);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58880);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58888);
  v16 = sub_1BD900690();
  v17 = sub_1BD0DDEBC();
  v18 = MEMORY[0x1E69E6158];
  v34 = v15;
  v35 = MEMORY[0x1E69E6158];
  v36 = v16;
  v37 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v14;
  v35 = v18;
  v36 = OpaqueTypeConformance2;
  v37 = v17;
  v20 = swift_getOpaqueTypeConformance2();
  v34 = v13;
  v35 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
  v23 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
  v34 = v22;
  v35 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v34 = v28;
  v35 = v27;
  v36 = v21;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FE74();
  sub_1BD0DE4F4(&qword_1EBD588A8, &qword_1EBD58860);
  sub_1BD900834(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v25 = v30;
  sub_1BE0507D4();
  (*(v31 + 8))(v6, v25);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1BD900690()
{
  result = qword_1EBD58890;
  if (!qword_1EBD58890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58898);
    sub_1BE04E9A4();
    sub_1BD0DE4F4(&qword_1EBD588A0, &qword_1EBD58898);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58890);
  }

  return result;
}

unint64_t sub_1BD9007E0()
{
  result = qword_1EBD588B0;
  if (!qword_1EBD588B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588B0);
  }

  return result;
}

uint64_t sub_1BD900834(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1BD9008B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C70);
  v7 = (a3 + v6[13]);
  v8 = a2[13];
  v7[12] = a2[12];
  v7[13] = v8;
  *(v7 + 217) = *(a2 + 217);
  v9 = a2[9];
  v7[8] = a2[8];
  v7[9] = v9;
  v10 = a2[11];
  v7[10] = a2[10];
  v7[11] = v10;
  v11 = a2[5];
  v7[4] = a2[4];
  v7[5] = v11;
  v12 = a2[7];
  v7[6] = a2[6];
  v7[7] = v12;
  v13 = a2[1];
  *v7 = *a2;
  v7[1] = v13;
  v14 = a2[3];
  v7[2] = a2[2];
  v7[3] = v14;
  sub_1BD909B64(a1, a3, type metadata accessor for TitleBodyMultiHyperlinkView);
  v15 = (a3 + v6[14]);
  sub_1BE051694();
  *v15 = v20;
  *(v15 + 1) = v21;
  v16 = (a3 + v6[15]);
  sub_1BE051694();
  *v16 = v20;
  *(v16 + 1) = v21;
  v17 = (a3 + v6[16]);
  sub_1BE051694();
  *v17 = v20;
  *(v17 + 1) = v21;
  v18 = (a3 + v6[17]);
  sub_1BE051694();
  result = v20;
  *v18 = v20;
  *(v18 + 1) = v21;
  *(a3 + v6[18]) = 0x4010000000000000;
  return result;
}

double sub_1BD900A34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58970);
  v7 = a3 + v6[13];
  v8 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v8;
  *(v7 + 192) = *(a2 + 192);
  v9 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v9;
  v10 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v10;
  v11 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v11;
  v12 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v12;
  v13 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v13;
  sub_1BD0DE204(a1, a3, &qword_1EBD58968);
  v14 = (a3 + v6[14]);
  sub_1BE051694();
  *v14 = v19;
  *(v14 + 1) = v20;
  v15 = (a3 + v6[15]);
  sub_1BE051694();
  *v15 = v19;
  *(v15 + 1) = v20;
  v16 = (a3 + v6[16]);
  sub_1BE051694();
  *v16 = v19;
  *(v16 + 1) = v20;
  v17 = (a3 + v6[17]);
  sub_1BE051694();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  *(a3 + v6[18]) = 0x4010000000000000;
  return result;
}

uint64_t PaymentOfferPostPurchasePresentationSource.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

unint64_t sub_1BD900C34()
{
  result = qword_1EBD588C0;
  if (!qword_1EBD588C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI28PaymentOfferSelectionContextO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 5;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BD900CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 9))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD900D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD900D6C(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 7;
    *(result + 8) = -32;
  }

  return result;
}

unint64_t sub_1BD900DBC()
{
  result = qword_1EBD588C8;
  if (!qword_1EBD588C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588C8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferInstallmentSelectionView()
{
  result = qword_1EBD588D0;
  if (!qword_1EBD588D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD900E84()
{
  sub_1BD0E5E8C(319, &qword_1EBD496B0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD39D98);
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD3DC40);
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD39360, &qword_1EBD49710);
          if (v4 <= 0x3F)
          {
            sub_1BD23BC4C(319, &qword_1EBD39358, &unk_1EBD45160);
            if (v5 <= 0x3F)
            {
              sub_1BD90109C(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD23BC4C(319, &qword_1EBD47B10, &qword_1EBD3A5C8);
                if (v7 <= 0x3F)
                {
                  sub_1BD249694();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD90109C(319, &qword_1EBD59660, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD90109C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD90110C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  sub_1BD9012E8();
  sub_1BD908A54(v1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD909B64(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588E0) + 36));
  *v10 = sub_1BD908AB8;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v11 = v1 + *(v4 + 72);
  v12 = *v11;
  v13 = *(v11 + 8);
  v18[16] = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v9) = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588E8);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_1BD10DF54;
  v17[2] = v15;
  return result;
}

uint64_t sub_1BD9012E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58900);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v15 = &v17 - v14;
  if (*(v0 + 9) == 2)
  {
    sub_1BD901C20(v4);
    sub_1BD0DE19C(v4, v8, &qword_1EBD588F0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900);
    sub_1BD908AF4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD588F0);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    *(&v17 - 2) = v0;
    sub_1BD908AF4();
    sub_1BE04EC04();
    (*(v10 + 16))(v8, v15, v9);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900);
    sub_1BE04F9A4();
    return (*(v10 + 8))(v15, v9);
  }
}

void sub_1BD9015F4(uint64_t a1)
{
  v1 = [*(a1 + 16) selectedOfferDetails];
  v2 = [v1 selectedPaymentOffer];

  if (v2)
  {
    if ([v2 type] == 1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 selectedOfferIdentifier];
      sub_1BE052434();

      type metadata accessor for PaymentOfferInstallmentSelectionView();
      sub_1BE048964();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
      sub_1BE0516B4();
    }

    else
    {
    }
  }

  sub_1BD90175C();
}

void sub_1BD90175C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = *MEMORY[0x1E69BA9C8];
  *(inited + 80) = *MEMORY[0x1E69BA9C8];
  v10 = *(v0 + 32);
  v11 = v3;
  v12 = v7;
  v13 = v9;
  v14 = [v10 offers];
  if (v14)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018);
    v15 = sub_1BE052744();

    if (v15 >> 62)
    {
      sub_1BE053704();
    }
  }

  *(inited + 88) = sub_1BE053B24();
  *(inited + 96) = v16;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v17 = *(v1 + 8);
  if ((v17 & 0xE0) == 0xC0)
  {
    if (v17)
    {
      v18 = 0xD000000000000012;
    }

    else
    {
      v18 = 0xD000000000000010;
    }

    if (v17)
    {
      v19 = "tSetupProductProvidersFlowItem";
    }

    else
    {
      v19 = "transactionSummary";
    }

    sub_1BD6B05C0(v18, v19 | 0x8000000000000000, *MEMORY[0x1E69BB0E0]);
  }

  v20 = *v1;
  if ((v17 >> 5) - 1 < 6 || !(v17 >> 5) && v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = *MEMORY[0x1E69BAC80];
      sub_1BD8D37B8(v20, v17);
      v24 = [v22 organizationName];
      v25 = sub_1BE052434();
      v27 = v26;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v25, v27, v23, isUniquelyReferenced_nonNull_native);

      v29 = *MEMORY[0x1E69BAC78];
      v30 = [v22 issuerCountryCode];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1BE052434();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      sub_1BD6B05C0(v32, v34, v29);
      v35 = *MEMORY[0x1E69BAD48];
      v36 = PKDefaultPaymentNetworkNameForPaymentPass();
      if (v36)
      {
        v37 = v36;
        v38 = sub_1BE052434();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      sub_1BD6B05C0(v38, v40, v35);
      sub_1BD8D3858(v20, v17);
    }
  }

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BE0B98D0;
  v43 = *MEMORY[0x1E69BB6E0];
  v44 = *MEMORY[0x1E69BB6C0];
  *(v42 + 32) = *MEMORY[0x1E69BB6E0];
  *(v42 + 40) = v44;
  v45 = *MEMORY[0x1E69BB6F8];
  *(v42 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v46 = v43;
  v47 = v44;
  v48 = v45;
  v49 = sub_1BE052724();

  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD908E5C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v50 = sub_1BE052224();

  [v41 subjects:v49 sendEvent:v50];
}

uint64_t sub_1BD901C20@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_1BE04FE84();
  v3 = *(v2 - 8);
  v72 = v2;
  v73 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v70 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v7 = v6 - 8;
  v64 = *(v6 - 8);
  v78 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v76 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v57 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58930);
  MEMORY[0x1EEE9AC00](v60, v14);
  v16 = &v57 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58920);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v17);
  v59 = &v57 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58918);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v19);
  v63 = &v57 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58910);
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v21);
  v77 = &v57 - v22;
  *v16 = sub_1BE04F7B4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v23 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58950) + 44)];
  v75 = v1;
  sub_1BD90253C(v1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516C4();
  v58 = type metadata accessor for MultiHyperLinkDetailSheet();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  v24 = sub_1BD0DE4F4(&qword_1EBD58938, &qword_1EBD58930);
  v25 = sub_1BD908E5C(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  v26 = sub_1BD10CC54();
  v27 = v60;
  sub_1BE050F74();
  sub_1BD0DE53C(v13, &qword_1EBD393E8);
  sub_1BD0DE53C(v16, &qword_1EBD58930);
  v28 = v75;
  v29 = v75 + *(v7 + 68);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v80) = v30;
  *(&v80 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v32 = v76;
  sub_1BD908A54(v28, v76);
  v64 = *(v64 + 80);
  v33 = (v64 + 16) & ~v64;
  v61 = v33;
  v34 = swift_allocObject();
  v62 = type metadata accessor for PaymentOfferInstallmentSelectionView;
  sub_1BD909B64(v32, v34 + v33, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58928);
  *&v82 = v27;
  *(&v82 + 1) = v58;
  v83 = v57;
  v84 = v24;
  v85 = v25;
  v86 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = sub_1BD908DA8();
  v36 = v63;
  v37 = v65;
  v38 = v59;
  sub_1BE050F64();

  (*(v66 + 8))(v38, v37);
  v39 = v70;
  sub_1BE04FE74();
  *&v82 = v37;
  *(&v82 + 1) = v35;
  v83 = OpaqueTypeConformance2;
  v84 = v56;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1BD908E5C(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v42 = v67;
  v43 = v72;
  sub_1BE0507D4();
  (*(v73 + 8))(v39, v43);
  v44 = v42;
  (*(v68 + 8))(v36, v42);
  v45 = v75;
  v80 = *(v75 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  v46 = v83;
  v80 = v82;
  v81 = v83;
  *&v82 = v44;
  v79 = v45;
  *(&v82 + 1) = v43;
  v83 = v40;
  v84 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1BD8D2B48();
  v47 = v74;
  v48 = v69;
  v49 = v77;
  sub_1BE050EF4();

  (*(v71 + 8))(v49, v48);
  v50 = v76;
  sub_1BD908A54(v45, v76);
  v51 = v61;
  v52 = swift_allocObject();
  sub_1BD909B64(v50, v52 + v51, v62);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F0);
  v54 = (v47 + *(result + 36));
  *v54 = 0;
  v54[1] = 0;
  v54[2] = sub_1BD908F1C;
  v54[3] = v52;
  return result;
}

uint64_t sub_1BD90253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1BE04F434();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58958);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58960);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58968);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58970);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v59 = &v58 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58978);
  MEMORY[0x1EEE9AC00](v60, v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58980);
  v62 = *(v25 - 8);
  v63 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v61 = &v58 - v27;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58988);
  v29 = a1;
  sub_1BD9047CC(a1, &v9[*(v28 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v14, &qword_1EBD58958);
  v30 = &v14[*(v11 + 44)];
  v31 = v101;
  *(v30 + 4) = v100;
  *(v30 + 5) = v31;
  *(v30 + 6) = v102;
  v32 = v97;
  *v30 = v96;
  *(v30 + 1) = v32;
  v33 = v99;
  *(v30 + 2) = v98;
  *(v30 + 3) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BE0B6CA0;
  v35 = sub_1BE050204();
  *(v34 + 32) = v35;
  v36 = sub_1BE050224();
  *(v34 + 33) = v36;
  v37 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v35)
  {
    v37 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v36)
  {
    v37 = sub_1BE050214();
  }

  sub_1BD0DE204(v14, v18, &qword_1EBD58960);
  v38 = &v18[*(v15 + 36)];
  *v38 = v37;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  if (*(v29 + 9) - 1 > 1)
  {
    sub_1BD34A124(&v83);
  }

  else
  {
    sub_1BD906074(&v70);
    v113 = v80;
    v114 = v81;
    v115 = v82;
    v109 = v76;
    v110 = v77;
    v111 = v78;
    v112 = v79;
    v105 = v72;
    v106 = v73;
    v107 = v74;
    v108 = v75;
    v103 = v70;
    v104 = v71;
    PKEdgeInsetsMake(&v103, v39);
    v93 = v113;
    v94 = v114;
    v95 = v115;
    v89 = v109;
    v90 = v110;
    v91 = v111;
    v92 = v112;
    v85 = v105;
    v86 = v106;
    v87 = v107;
    v88 = v108;
    v83 = v103;
    v84 = v104;
  }

  v80 = v93;
  v81 = v94;
  v82 = v95;
  v76 = v89;
  v77 = v90;
  v78 = v91;
  v79 = v92;
  v72 = v85;
  v73 = v86;
  v74 = v87;
  v75 = v88;
  v70 = v83;
  v71 = v84;
  PKEdgeInsetsMake(&v70, v40);
  v113 = v80;
  v114 = v81;
  v115 = v82;
  v109 = v76;
  v110 = v77;
  v111 = v78;
  v112 = v79;
  v105 = v72;
  v106 = v73;
  v107 = v74;
  v108 = v75;
  v103 = v70;
  v104 = v71;
  v41 = v59;
  sub_1BD900A34(v18, &v103, v59);
  v42 = sub_1BE051274();
  v43 = sub_1BE0501D4();
  v44 = sub_1BE051CD4();
  v46 = v45;
  sub_1BD0DE204(v41, v24, &qword_1EBD58970);
  v47 = v60;
  v48 = &v24[*(v60 + 36)];
  *v48 = v42;
  v48[8] = v43;
  *(v48 + 2) = v44;
  *(v48 + 3) = v46;
  v50 = v64;
  v49 = v65;
  v51 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E697C438], v66);
  v52 = sub_1BD908FBC();
  v53 = v61;
  sub_1BE050E84();
  (*(v49 + 8))(v50, v51);
  v54 = sub_1BD0DE53C(v24, &qword_1EBD58978);
  MEMORY[0x1EEE9AC00](v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589A0);
  v68 = v47;
  v69 = v52;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD589A8, &qword_1EBD589A0);
  v56 = v63;
  sub_1BE051024();
  return (*(v62 + 8))(v53, v56);
}

uint64_t sub_1BD902CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589B8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = &v68[-v6];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589C0);
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v7);
  v78 = &v68[-v8];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589C8);
  v77 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v9);
  v76 = &v68[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589D0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v80 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = &v68[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v73 = &v68[-v20];
  v21 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v74 = &v68[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28);
  v72 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v26);
  v28 = &v68[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C78);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v68[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v86 = &v68[-v36];
  v37 = [*(a1 + 32) dynamicContent];
  v75 = a1;
  if (v37 && (v38 = v37, v39 = [v37 dynamicContentPageForPageType_], v38, v39))
  {

    v40 = 1;
    if (*(a1 + 9) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(a1 + 9) != 2)
    {
      if (sub_1BE051C54())
      {
        v70 = v4;
        v71 = a2;
        v48 = sub_1BE04FAC4();
        v69 = 0;
        goto LABEL_13;
      }

      v40 = 0;
LABEL_12:
      v69 = v40;
      v70 = v4;
      v71 = a2;
      v48 = sub_1BE04FB04();
LABEL_13:
      MEMORY[0x1EEE9AC00](v48, v49);
      *&v68[-16] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68);
      sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
      sub_1BE04E424();
      v50 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
      v51 = v73;
      v52 = v79;
      MEMORY[0x1BFB3CC50](v28, v79, v50);
      (*(v18 + 16))(v32, v51, v17);
      (*(v18 + 56))(v32, 0, 1, v17);
      v87 = v52;
      v88 = v50;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1BFB3CC80](v32, v17, OpaqueTypeConformance2);
      sub_1BD0DE53C(v32, &qword_1EBD45C78);
      (*(v18 + 8))(v51, v17);
      (*(v72 + 8))(v28, v52);
      v4 = v70;
      if (v69)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    LOBYTE(v40) = 0;
  }

  (*(v18 + 56))(v32, 1, 1, v17);
  v41 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28);
  v87 = v79;
  v88 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v32, v17, v42);
  sub_1BD0DE53C(v32, &qword_1EBD45C78);
  if (v40)
  {
LABEL_14:
    v54 = sub_1BE04FAC4();
    MEMORY[0x1EEE9AC00](v54, v55);
    *&v68[-16] = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    v56 = v76;
    sub_1BE04E424();
    v57 = sub_1BD0DE4F4(&qword_1EBD589D8, &qword_1EBD589C8);
    v58 = v78;
    v59 = v82;
    MEMORY[0x1BFB3CC50](v56, v82, v57);
    v61 = v80;
    v60 = v81;
    v62 = v84;
    (*(v81 + 16))(v80, v58, v84);
    (*(v60 + 56))(v61, 0, 1, v62);
    v87 = v59;
    v88 = v57;
    v63 = swift_getOpaqueTypeConformance2();
    v47 = v83;
    MEMORY[0x1BFB3CC80](v61, v62, v63);
    sub_1BD0DE53C(v61, &qword_1EBD589D0);
    (*(v60 + 8))(v58, v62);
    (*(v77 + 8))(v56, v59);
    goto LABEL_15;
  }

LABEL_8:
  v43 = v80;
  v44 = v84;
  (*(v81 + 56))(v80, 1, 1, v84);
  v45 = sub_1BD0DE4F4(&qword_1EBD589D8, &qword_1EBD589C8);
  v87 = v82;
  v88 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v83;
  MEMORY[0x1BFB3CC80](v43, v44, v46);
  sub_1BD0DE53C(v43, &qword_1EBD589D0);
LABEL_15:
  v64 = *(v4 + 48);
  v65 = v85;
  v66 = v86;
  sub_1BD0DE19C(v86, v85, &qword_1EBD45C78);
  sub_1BD0DE19C(v47, &v65[v64], &qword_1EBD589D0);
  sub_1BE04F854();
  sub_1BD0DE53C(v47, &qword_1EBD589D0);
  return sub_1BD0DE53C(v66, &qword_1EBD45C78);
}

uint64_t sub_1BD9036D4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD908A54(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD909B64(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PaymentOfferInstallmentSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

id sub_1BD9038C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD903A28(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD908A54(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD909B64(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PaymentOfferInstallmentSelectionView);
  return sub_1BE051704();
}

uint64_t sub_1BD903B68()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD903BDC@<X0>(uint64_t *a1@<X8>)
{
  sub_1BE051C54();
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

uint64_t sub_1BD903C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v62, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PaymentOfferActionExplanationView();
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v63 = &v55 - v22;
  v23 = [*(a1 + 32) dynamicContent];
  if (v23 && (v24 = v23, v25 = [v23 dynamicContentPageForPageType_], v24, v25))
  {
    v26 = *(a1 + 16);
    v56 = *(a1 + 24);
    v57 = v26;
    sub_1BD908A54(a1, &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v28 = swift_allocObject();
    sub_1BD909B64(v14, v28 + v27, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v29 = sub_1BE052434();
    v60 = v30;
    v61 = v29;
    v31 = sub_1BE052434();
    v58 = v32;
    v59 = v31;
    v70 = 0;
    v33 = type metadata accessor for MultiHyperLinkDetailSheet();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
    sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
    v34 = v56;
    sub_1BE051694();
    sub_1BD0DE53C(v9, &unk_1EBD45160);
    v35 = &v18[*(v15 + 68)];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = v57;
    *v18 = v57;
    *(v18 + 1) = v34;
    *(v18 + 2) = v25;
    *(v18 + 3) = 0;
    *(v18 + 4) = 0xE000000000000000;
    *(v18 + 11) = 0;
    *(v18 + 72) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 40) = 0u;
    v18[96] = 0;
    *(v18 + 13) = 0;
    *(v18 + 16) = sub_1BD908F4C;
    *(v18 + 17) = v28;
    *(v18 + 72) = 1793;
    v37 = v36;
    v38 = [v34 identifier];
    if (!v38)
    {
      sub_1BE052434();
      v38 = sub_1BE052404();
    }

    v39 = [v37 preferredLocalizationLanguageForCriteriaIdentifier_];

    v40 = sub_1BE052434();
    v42 = v41;

    *(v18 + 14) = v40;
    *(v18 + 15) = v42;
    v66 = 0;
    sub_1BE051944();
    v43 = v68;
    v44 = v69;
    v45 = &v18[*(v15 + 64)];
    *v45 = v67;
    *(v45 + 1) = v43;
    v45[16] = v44;
    v46 = v60;
    *(v18 + 19) = v61;
    *(v18 + 20) = v46;
    v47 = v58;
    *(v18 + 21) = v59;
    *(v18 + 22) = v47;
    v18[184] = 1;
    *(v18 + 24) = 0;
    *(v18 + 25) = 0;
    v48 = v18;
    v49 = v63;
    sub_1BD909B64(v48, v63, type metadata accessor for PaymentOfferActionExplanationView);
    v50 = v49;
    v51 = v65;
    sub_1BD909B64(v50, v65, type metadata accessor for PaymentOfferActionExplanationView);
    return (*(v64 + 56))(v51, 0, 1, v15);
  }

  else
  {
    v53 = v65;
    v54 = *(v64 + 56);

    return v54(v53, 1, 1, v15);
  }
}

uint64_t sub_1BD904144()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD9041B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v62 = a1;
  v65 = a2;
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v60 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v61 = v4;
  v63 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v64 = v55 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v66 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v55 - v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v55 - v19;
  v21 = *MEMORY[0x1E69B80D8];
  v22 = *(v9 + 104);
  v22(v55 - v19, v21, v8, v18);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = result;
  v25 = sub_1BE04B6F4();
  v27 = v26;

  v28 = *(v9 + 8);
  v28(v20, v8);
  v67 = v25;
  v68 = v27;
  sub_1BD0DDEBC();
  v29 = sub_1BE0506C4();
  v58 = v30;
  v59 = v29;
  v56 = v31;
  v57 = v32;
  (v22)(v15, v21, v8);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v33 = result;
  v34 = sub_1BE04B6F4();
  v36 = v35;

  v28(v15, v8);
  v67 = v34;
  v68 = v36;
  v37 = sub_1BE0506C4();
  v55[1] = v38;
  v55[2] = v37;
  v55[0] = v39;
  v40 = v66;
  (v22)(v66, *MEMORY[0x1E69B80D0], v8);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = v40;
    v43 = sub_1BE04B6F4();
    v45 = v44;

    v28(v42, v8);
    v67 = v43;
    v68 = v45;
    v46 = sub_1BE0506C4();
    v48 = v47;
    LOBYTE(v41) = v49;
    v50 = v63;
    sub_1BD908A54(v62, v63);
    v51 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v52 = swift_allocObject();
    sub_1BD909B64(v50, v52 + v51, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v53 = v64;
    sub_1BE051194();
    sub_1BD0DDF10(v46, v48, v41 & 1);

    v54 = sub_1BE0511A4();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    return sub_1BE051174();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD9046A4()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  return sub_1BE0516B4();
}

uint64_t sub_1BD904744(uint64_t a1)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if ((v3 & 1) == 0 && *(a1 + 9) != 2)
  {
    return (*(a1 + 56))(result);
  }

  return result;
}

uint64_t sub_1BD9047CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v97 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = v5;
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589E0);
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v99 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589E8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v95 - v18);
  v20 = type metadata accessor for PassHeaderView();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v103 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v107 = &v95 - v30;
  v31 = *a1;
  v32 = *(a1 + 8) >> 5;
  if (((v32 - 1) < 6 || !v32 && v31) && (v33 = [v31 paymentPass]) != 0)
  {
    v100 = v6;
    *v19 = v33;
    v34 = v33;
    v35 = type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v19, 0, 1, v35);
    v36 = v34;
    v37 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1BE052434();
      v41 = v40;
    }

    else
    {

      v39 = 0;
      v41 = 0;
    }

    sub_1BD0DE19C(v19, v24, &unk_1EBD43B90);
    v42 = &v24[v20[5]];
    *v42 = 0;
    *(v42 + 1) = 0;
    v43 = &v24[v20[6]];
    *v43 = v39;
    v43[1] = v41;
    v44 = &v24[v20[7]];
    *v44 = 0;
    *(v44 + 1) = 0;
    sub_1BD0DE53C(v19, &unk_1EBD43B90);
    *&v24[v20[8]] = 0x4059000000000000;
    v45 = v24;
    v46 = v107;
    sub_1BD909B64(v45, v107, type metadata accessor for PassHeaderView);
    (*(v21 + 56))(v46, 0, 1, v20);
    v6 = v100;
  }

  else
  {
    (*(v21 + 56))(v107, 1, 1, v20);
  }

  v47 = *(a1 + 32);
  v48 = [v47 dynamicContent];
  if (v48 && (v49 = v48, v50 = [v48 dynamicContentPageForPageType_], v49, v50) && (v51 = objc_msgSend(v50, sel_title), v50, v51))
  {
    v52 = sub_1BE052434();
    v54 = v53;

    *&v129 = v52;
    *(&v129 + 1) = v54;
    sub_1BD0DDEBC();
    v100 = sub_1BE0506C4();
    v56 = v55;
    v58 = v57;
    v96 = v59;
    KeyPath = swift_getKeyPath();
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v108[55] = v140[5];
    *&v108[71] = v140[6];
    *&v108[87] = v140[7];
    *&v108[103] = v140[8];
    *&v108[7] = v140[2];
    *&v108[23] = v140[3];
    v58 &= 1u;
    LOBYTE(v109) = v58;
    *&v108[39] = v140[4];
    v61 = sub_1BE0501E4();
    *(&v125[4] + 9) = *&v108[64];
    *(&v125[5] + 9) = *&v108[80];
    *(&v125[6] + 9) = *&v108[96];
    *(v125 + 9) = *v108;
    *(&v125[1] + 9) = *&v108[16];
    *(&v125[2] + 9) = *&v108[32];
    LOBYTE(v121[0]) = 1;
    *&v123 = v100;
    *(&v123 + 1) = v56;
    LOBYTE(v124) = v58;
    *(&v124 + 1) = v96;
    *&v125[0] = KeyPath;
    BYTE8(v125[0]) = 1;
    *(&v125[7] + 1) = *&v108[111];
    *(&v125[3] + 9) = *&v108[48];
    LOBYTE(v126[0]) = v61;
    *(v126 + 8) = 0u;
    *(&v126[1] + 8) = 0u;
    BYTE8(v126[2]) = 1;
    PKEdgeInsetsMake(&v123, v62);
    v138 = v125[7];
    v139 = v126[0];
    v140[0] = v126[1];
    *(v140 + 9) = *(&v126[1] + 9);
    v135 = v125[4];
    v136 = v125[5];
    v137 = v125[6];
    v131 = v125[0];
    v132 = v125[1];
    v133 = v125[2];
    v134 = v125[3];
    v129 = v123;
    v130 = v124;
  }

  else
  {
    sub_1BD909338(&v129);
  }

  LODWORD(v100) = sub_1BE0501D4();
  v63 = 1;
  v128 = 1;
  v127 = 1;
  v64 = [v47 offers];
  if (v64)
  {
    v65 = v64;
    sub_1BD0E5E8C(0, &qword_1EBD39018);
    v66 = sub_1BE052744();

    v67 = sub_1BE048C84();
    v68 = sub_1BD6CAF30(v67);

    *&v123 = v68;
    swift_getKeyPath();
    sub_1BD908A54(a1, v6);
    v69 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v66;
    sub_1BD909B64(v6, v70 + v69, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1BD90935C;
    *(v71 + 24) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A08);
    sub_1BD0DE4F4(&qword_1EBD58A10, &qword_1EBD58A00);
    sub_1BD0DE4F4(&qword_1EBD58A18, &qword_1EBD58A08);
    v72 = v99;
    sub_1BE0519C4();
    v74 = v101;
    v73 = v102;
    v75 = v104;
    (*(v101 + 32))(v104, v72, v102);
    v63 = 0;
  }

  else
  {
    v75 = v104;
    v74 = v101;
    v73 = v102;
  }

  (*(v74 + 56))(v75, v63, 1, v73);
  v76 = v103;
  sub_1BD0DE19C(v107, v103, &qword_1EBD395D0);
  v118 = v138;
  v119 = v139;
  v120[0] = v140[0];
  *(v120 + 9) = *(v140 + 9);
  v114 = v134;
  v115 = v135;
  v116 = v136;
  v117 = v137;
  v110 = v130;
  v111 = v131;
  v112 = v132;
  v113 = v133;
  v109 = v129;
  v77 = v128;
  LODWORD(v104) = v127;
  v78 = v105;
  sub_1BD0DE19C(v75, v105, &qword_1EBD589E8);
  v79 = v106;
  sub_1BD0DE19C(v76, v106, &qword_1EBD395D0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589F0);
  v81 = (v79 + v80[12]);
  v82 = v118;
  v83 = v117;
  v121[9] = v118;
  v121[10] = v119;
  v122[0] = v120[0];
  *(v122 + 9) = *(v120 + 9);
  v84 = v114;
  v121[6] = v115;
  v85 = v115;
  v121[7] = v116;
  v86 = v116;
  v121[8] = v117;
  v87 = v112;
  v121[4] = v113;
  v88 = v113;
  v121[5] = v114;
  v89 = v110;
  v121[2] = v111;
  v90 = v111;
  v121[3] = v112;
  v91 = v109;
  v121[0] = v109;
  v121[1] = v110;
  v92 = v120[0];
  v81[10] = v119;
  v81[11] = v92;
  *(v81 + 185) = *(v120 + 9);
  v81[6] = v85;
  v81[7] = v86;
  v81[8] = v83;
  v81[9] = v82;
  v81[2] = v90;
  v81[3] = v87;
  v81[4] = v88;
  v81[5] = v84;
  *v81 = v91;
  v81[1] = v89;
  v93 = v79 + v80[16];
  *v93 = 0;
  *(v93 + 8) = v77;
  *(v93 + 16) = v100;
  *(v93 + 24) = 0u;
  *(v93 + 40) = 0u;
  *(v93 + 56) = v104;
  sub_1BD0DE19C(v78, v79 + v80[20], &qword_1EBD589E8);
  sub_1BD0DE19C(v121, &v123, &qword_1EBD589F8);
  sub_1BD0DE53C(v75, &qword_1EBD589E8);
  sub_1BD0DE53C(v107, &qword_1EBD395D0);
  sub_1BD0DE53C(v78, &qword_1EBD589E8);
  v126[0] = v119;
  v126[1] = v120[0];
  *(&v126[1] + 9) = *(v120 + 9);
  v125[4] = v115;
  v125[5] = v116;
  v125[6] = v117;
  v125[7] = v118;
  v125[0] = v111;
  v125[1] = v112;
  v125[2] = v113;
  v125[3] = v114;
  v123 = v109;
  v124 = v110;
  sub_1BD0DE53C(&v123, &qword_1EBD589F8);
  return sub_1BD0DE53C(v76, &qword_1EBD395D0);
}

void *sub_1BD905330@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v14 = 0;
  sub_1BD905428(a1, a3, a2, __src);
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v16, __src, 0x149uLL);
  sub_1BD0DE19C(__dst, v11, &qword_1EBD58A20);
  sub_1BD0DE53C(v16, &qword_1EBD58A20);
  memcpy(&v13[7], __dst, 0x149uLL);
  v9 = v14;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  return memcpy((a4 + 17), v13, 0x150uLL);
}

uint64_t sub_1BD905428@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    __dst = a4;
    if (!(a2 >> 62))
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v39 = a1;
  v6 = sub_1BE053704();
  a1 = v39;
LABEL_4:
  if (a1)
  {
    sub_1BD9093E8(&v101);
  }

  else
  {
    sub_1BD905954(&v101);
    v62 = v103;
    v63 = v104;
    v64[0] = v105[0];
    *(v64 + 9) = *(v105 + 9);
    v60 = v101;
    v61 = v102;
    v7 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v95 = v62;
    v96 = v63;
    v97 = v64[0];
    v98 = v64[1];
    v93 = v60;
    v94 = v61;
    LOBYTE(v99) = v7;
    *(&v99 + 1) = v8;
    *v100 = v9;
    *&v100[8] = v10;
    *&v100[16] = v11;
    v100[24] = 0;
    PKEdgeInsetsMake(&v93, v12);
    v105[1] = v98;
    v106 = v99;
    v107[0] = *v100;
    *(v107 + 9) = *&v100[9];
    v103 = v95;
    v104 = v96;
    v105[0] = v97;
    v101 = v93;
    v102 = v94;
  }

  sub_1BD905B30(v4, &v93);
  v50 = v93;
  v49 = BYTE8(v93);
  v47 = *(&v94 + 1);
  v48 = v94;
  v45 = BYTE1(v95);
  v46 = v95;
  v44 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v60) = 0;
  if (v5 == v6)
  {
    sub_1BD905D4C(&v93);
    v21 = *(&v93 + 1);
    v22 = v93;
    v24 = *(&v94 + 1);
    v23 = v94;
    v25 = *(&v95 + 1);
    v26 = v95;
    v28 = *(&v96 + 1);
    v27 = v96;
    v29 = *(&v97 + 1);
    v30 = v97;
    v32 = *(&v98 + 1);
    v31 = v98;
    v33 = v99;
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v30 = 0;
    v29 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v22 = 1;
  }

  v40 = v29;
  v41 = v32;
  v42 = v31;
  v57 = v105[1];
  v58 = v106;
  *v59 = v107[0];
  *&v59[9] = *(v107 + 9);
  v54 = v103;
  v55 = v104;
  v56 = v105[0];
  v52 = v101;
  v53 = v102;
  v64[1] = v105[1];
  v64[2] = v106;
  v65[0] = v107[0];
  *(v65 + 9) = *(v107 + 9);
  v62 = v103;
  v63 = v104;
  v64[0] = v105[0];
  v60 = v101;
  v61 = v102;
  __src[6] = v106;
  __src[7] = v107[0];
  *(&__src[7] + 9) = *(v107 + 9);
  __src[2] = v103;
  __src[3] = v104;
  __src[4] = v105[0];
  __src[5] = v105[1];
  __src[0] = v101;
  __src[1] = v102;
  *&v66 = v50;
  BYTE8(v66) = v49;
  *&v67 = v48;
  *(&v67 + 1) = v47;
  LOBYTE(v68) = v46;
  BYTE1(v68) = v45;
  BYTE8(v68) = v44;
  *&v69 = v14;
  *(&v69 + 1) = v16;
  *&v70 = v18;
  *(&v70 + 1) = v20;
  v71 = 0;
  LOBYTE(__src[14]) = 0;
  __src[11] = v68;
  __src[12] = v69;
  __src[13] = v70;
  __src[9] = v66;
  __src[10] = v67;
  *&v72 = v22;
  *(&v72 + 1) = v21;
  *&v73 = v23;
  *(&v73 + 1) = v24;
  *&v74 = v26;
  *(&v74 + 1) = v25;
  *&v75 = v27;
  *(&v75 + 1) = v28;
  *&v76 = v30;
  *(&v76 + 1) = v29;
  *&v77 = v31;
  *(&v77 + 1) = v32;
  v78 = v33;
  *(&__src[18] + 8) = v76;
  *(&__src[19] + 8) = v77;
  *(&__src[16] + 8) = v74;
  *(&__src[17] + 8) = v75;
  *(&__src[15] + 8) = v73;
  *(&__src[14] + 8) = v72;
  BYTE8(__src[20]) = v33;
  v34 = v21;
  v35 = v23;
  v36 = v24;
  v37 = v33;
  memcpy(__dst, __src, 0x149uLL);
  v79[0] = v22;
  v79[1] = v34;
  v79[2] = v35;
  v79[3] = v36;
  v79[4] = v26;
  v79[5] = v25;
  v79[6] = v27;
  v79[7] = v28;
  v79[8] = v30;
  v79[9] = v40;
  v79[10] = v42;
  v79[11] = v41;
  v80 = v37;
  sub_1BD0DE19C(&v60, &v93, &qword_1EBD58A28);
  sub_1BD0DE19C(&v66, &v93, &qword_1EBD58A30);
  sub_1BD0DE19C(&v72, &v93, &qword_1EBD58A38);
  sub_1BD0DE53C(v79, &qword_1EBD58A38);
  v81 = v50;
  v82 = v49;
  v83 = v48;
  v84 = v47;
  v85 = v46;
  v86 = v45;
  v87 = v44;
  v88 = v14;
  v89 = v16;
  v90 = v18;
  v91 = v20;
  v92 = 0;
  sub_1BD0DE53C(&v81, &qword_1EBD58A30);
  v99 = v58;
  *v100 = *v59;
  *&v100[9] = *&v59[9];
  v95 = v54;
  v96 = v55;
  v97 = v56;
  v98 = v57;
  v93 = v52;
  v94 = v53;
  return sub_1BD0DE53C(&v93, &qword_1EBD58A28);
}