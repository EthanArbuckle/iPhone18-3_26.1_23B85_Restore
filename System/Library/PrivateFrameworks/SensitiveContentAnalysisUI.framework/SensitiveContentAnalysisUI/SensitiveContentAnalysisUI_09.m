uint64_t sub_1BC725BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75A910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v10 + 88))(v13, v9) == *MEMORY[0x1E697C138])
  {
    (*(v10 + 96))(v13, v9);
    v14 = *v13;
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v15 = sub_1BC75B610();
    (*(v5 + 8))(v8, v4);
    v21 = v15;
    v22 = 0;
    v23 = 1;
    v24 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
    sub_1BC680F34();
    sub_1BC75AE00();

    v17 = v25;
    v18 = v26;
    v19 = v27;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
    sub_1BC680F34();
    sub_1BC75AE00();
    v20 = v25;
    v18 = v26;
    v19 = v27;
    result = (*(v10 + 8))(v13, v9);
    v17 = v20;
  }

  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 18) = v19;
  return result;
}

uint64_t sub_1BC725EDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a1;
  v44 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - v5;
  v6 = type metadata accessor for SensitiveContentOverlay.Background();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75A050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFF0, &qword_1BC764A60);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = *(type metadata accessor for Report.Media(0) + 24);
  (*(v10 + 104))(v25, *MEMORY[0x1E697B5F8], v9);
  (*(v10 + 56))(v25, 0, 1, v9);
  v27 = *(v15 + 56);
  sub_1BC660024(v41 + v26, v18, &qword_1EBCDCFE0, &unk_1BC76D070);
  sub_1BC660024(v25, &v18[v27], &qword_1EBCDCFE0, &unk_1BC76D070);
  v28 = *(v10 + 48);
  if (v28(v18, 1, v9) == 1)
  {
    sub_1BC66008C(v25, &qword_1EBCDCFE0, &unk_1BC76D070);
    if (v28(&v18[v27], 1, v9) == 1)
    {
      sub_1BC66008C(v18, &qword_1EBCDCFE0, &unk_1BC76D070);
LABEL_9:
      v45 = v39;
      v33 = sub_1BC759D50();
      v34 = v40;
      (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
      v35 = sub_1BC6B5B84();
      v36 = v38;
      SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v45, v35, v34, v38);
      v30 = v44;
      sub_1BC722A58(v36, v44, type metadata accessor for SensitiveContentOverlay.Background);
      v29 = 0;
      return (*(v42 + 56))(v30, v29, 1, v43);
    }

    goto LABEL_6;
  }

  sub_1BC660024(v18, v23, &qword_1EBCDCFE0, &unk_1BC76D070);
  if (v28(&v18[v27], 1, v9) == 1)
  {
    sub_1BC66008C(v25, &qword_1EBCDCFE0, &unk_1BC76D070);
    (*(v10 + 8))(v23, v9);
LABEL_6:
    sub_1BC66008C(v18, &qword_1EBCDCFF0, &qword_1BC764A60);
    goto LABEL_7;
  }

  (*(v10 + 32))(v13, &v18[v27], v9);
  sub_1BC7269FC(&qword_1EBCDD030, MEMORY[0x1E697B600]);
  v31 = sub_1BC75BAB0();
  v32 = *(v10 + 8);
  v32(v13, v9);
  sub_1BC66008C(v25, &qword_1EBCDCFE0, &unk_1BC76D070);
  v32(v23, v9);
  sub_1BC66008C(v18, &qword_1EBCDCFE0, &unk_1BC76D070);
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = 1;
  v30 = v44;
  return (*(v42 + 56))(v30, v29, 1, v43);
}

uint64_t sub_1BC726440(uint64_t a1)
{
  v2 = sub_1BC75AE70();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  sub_1BC75AE40();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC633C54(&qword_1EBCDE470, &qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC75A770();
  v9 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  MEMORY[0x1BFB25A80](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BC72662C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPreviewScreen(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BC75A650();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75A640();
  sub_1BC721FD8(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MediaPreviewScreen);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BC722A58(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MediaPreviewScreen);
  return MEMORY[0x1BFB26270](v8, sub_1BC728288, v10);
}

uint64_t sub_1BC7267A8(uint64_t a1)
{
  v2 = type metadata accessor for ReportScreen.Control(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for MediaPreviewScreen(0) + 20);
  v7 = *v6;
  v8 = *(v6 + 8);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  return sub_1BC7282E8(v5, type metadata accessor for ReportScreen.Control);
}

unint64_t sub_1BC726890()
{
  result = qword_1EBCDEA30;
  if (!qword_1EBCDEA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA08, &qword_1BC76CBE8);
    sub_1BC726914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA30);
  }

  return result;
}

unint64_t sub_1BC726914()
{
  result = qword_1EBCDEA38;
  if (!qword_1EBCDEA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA40, &qword_1BC76CC10);
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video);
    sub_1BC633C54(&qword_1EBCDEA50, &qword_1EBCDEA58, &qword_1BC76CC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA38);
  }

  return result;
}

uint64_t sub_1BC7269FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC726A44()
{
  result = qword_1EBCDEA60;
  if (!qword_1EBCDEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA28, &qword_1BC76CC08);
    sub_1BC7269FC(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA60);
  }

  return result;
}

unint64_t sub_1BC726B00()
{
  result = qword_1EBCDEA70;
  if (!qword_1EBCDEA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA18, &qword_1BC76CBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA10, &qword_1BC76CBF0);
    sub_1BC633C54(&qword_1EBCDEA68, &qword_1EBCDEA10, &qword_1BC76CBF0);
    sub_1BC651EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA70);
  }

  return result;
}

uint64_t sub_1BC726C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Video(0);
  v16 = *(a1 + *(v9 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  result = sub_1BC75B640();
  v11 = v15;
  if (v15)
  {
    v12 = v15;
    sub_1BC75B5B0();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v13 = sub_1BC75B610();

    result = (*(v5 + 8))(v8, v4);
    if (*(a1 + *(v9 + 20)))
    {
      v11 = 1;
    }

    else
    {
      v11 = 257;
    }
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1BC726DBC(uint64_t a1)
{
  v1[5] = a1;
  sub_1BC75BDE0();
  v1[6] = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BC726E54, v3, v2);
}

uint64_t sub_1BC726E54()
{
  v1 = v0[5];
  v2 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v3 = sub_1BC759770();
  v4 = [v2 initWithURL:v3 options:0];
  v0[9] = v4;

  v0[10] = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 8);
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *(MEMORY[0x1E69E59F8] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1BC726F6C;

  return MEMORY[0x1EEE68118](v5, v6, v7);
}

uint64_t sub_1BC726F6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_1BC727194;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_1BC727098;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BC727098()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  v6 = v5 + *(type metadata accessor for Video(0) + 24);
  v8 = *v6;
  v7 = *(v6 + 8);
  v0[2] = *v6;
  v0[3] = v7;
  v0[4] = v1;
  v9 = v1;
  v10 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  sub_1BC75B650();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BC727194()
{
  v1 = v0[6];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v5 = v4 + *(type metadata accessor for Video(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);
  v0[2] = *v5;
  v0[3] = v7;
  v0[4] = 0;
  v8 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  sub_1BC75B650();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BC727278(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDEA80, _s9YouScreenVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC7272EC(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDEA88, _s13SuspectScreenVMa);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727360(uint64_t a1)
{
  result = sub_1BC727388();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727388()
{
  result = qword_1EBCDEA90;
  if (!qword_1EBCDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA90);
  }

  return result;
}

unint64_t sub_1BC7273F8(uint64_t a1)
{
  result = sub_1BC727420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727420()
{
  result = qword_1EBCDEA98;
  if (!qword_1EBCDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA98);
  }

  return result;
}

uint64_t sub_1BC7274AC(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDE9F8, type metadata accessor for MediaPreviewScreen);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727524()
{
  result = qword_1EBCDEAA0;
  if (!qword_1EBCDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAA0);
  }

  return result;
}

uint64_t sub_1BC727594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = sub_1BC75ACD0();
  sub_1BC726C10(v3, v17);
  v8 = v17[0];
  v9 = v17[1];
  v10 = v18;
  sub_1BC721FD8(v3, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Video);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1BC722A58(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for Video);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA78, qword_1BC76CC30) + 36));
  v14 = v13 + *(sub_1BC75A860() + 20);
  result = sub_1BC75BDF0();
  *v13 = &unk_1BC76D058;
  v13[1] = v12;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

void sub_1BC727774()
{
  if (!qword_1EBCDDFB0)
  {
    type metadata accessor for Report.Evidence(255);
    v0 = sub_1BC75B760();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDDFB0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1BC727988()
{
  sub_1BC727774();
  if (v0 <= 0x3F)
  {
    sub_1BC6FF248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC727A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BC727A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC727AB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BC727B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Report.Media(0);
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

uint64_t __swift_store_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Report.Media(0);
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

uint64_t sub_1BC727D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BC727DF8()
{
  sub_1BC759800();
  if (v0 <= 0x3F)
  {
    sub_1BC727E84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC727E84()
{
  if (!qword_1EBCDEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA00, &qword_1BC76CBE0);
    v0 = sub_1BC75B670();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDEAA8);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE15navigationTitleyQrAA4TextVFQOy024SensitiveContentAnalysisB06ReportC4ListVy_AaJVys5NeverOAI7SectionVy_AA05TupleC0VyAI3RowV_ATtGAA05EmptyC0VGGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1BC633C54(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BC727F88()
{
  result = qword_1EBCDEAC0;
  if (!qword_1EBCDEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA78, qword_1BC76CC30);
    sub_1BC633C54(&qword_1EBCDEAC8, &qword_1EBCDEAD0, &qword_1BC76D038);
    sub_1BC7269FC(qword_1EDDCEEC0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAC0);
  }

  return result;
}

void type metadata accessor for CGImage()
{
  if (!qword_1EBCDEAD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDEAD8);
    }
  }
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for Video(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC759800();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[8];

  v7 = *(v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7281B4()
{
  v2 = *(type metadata accessor for Video(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC726DBC(v0 + v3);
}

uint64_t sub_1BC728288()
{
  v1 = *(type metadata accessor for MediaPreviewScreen(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC7267A8(v2);
}

uint64_t sub_1BC7282E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC728348()
{
  result = qword_1EBCDEAF8;
  if (!qword_1EBCDEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEAF0, &unk_1BC76D088);
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAF8);
  }

  return result;
}

unint64_t sub_1BC7283F4()
{
  result = qword_1EBCDEB18;
  if (!qword_1EBCDEB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB08, &qword_1BC76D0A0);
    sub_1BC728478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB18);
  }

  return result;
}

unint64_t sub_1BC728478()
{
  result = qword_1EBCDEB20;
  if (!qword_1EBCDEB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB28, &qword_1BC76D0B0);
    sub_1BC728530();
    sub_1BC633C54(&qword_1EBCDEB40, &qword_1EBCDEB48, &qword_1BC76D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB20);
  }

  return result;
}

unint64_t sub_1BC728530()
{
  result = qword_1EBCDEB30;
  if (!qword_1EBCDEB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB38, &qword_1BC76D0B8);
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB30);
  }

  return result;
}

unint64_t sub_1BC7285EC()
{
  result = qword_1EBCDEB78;
  if (!qword_1EBCDEB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB70, &qword_1BC76D0F0);
    sub_1BC728678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB78);
  }

  return result;
}

unint64_t sub_1BC728678()
{
  result = qword_1EBCDEB80;
  if (!qword_1EBCDEB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB80);
  }

  return result;
}

uint64_t sub_1BC728718()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
  _s9MediaCellVMa(0);
  sub_1BC633C54(&qword_1EBCDEBA8, &qword_1EBCDCFC8, &qword_1BC764A50);
  sub_1BC7269FC(&qword_1EBCDEBA0, _s9MediaCellVMa);
  sub_1BC7269FC(&qword_1EBCDEBB0, type metadata accessor for Report.Media);
  return sub_1BC75B780();
}

unint64_t sub_1BC728894()
{
  result = qword_1EBCDEB98;
  if (!qword_1EBCDEB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB90, &unk_1BC76D100);
    sub_1BC7269FC(&qword_1EBCDEBA0, _s9MediaCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB98);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC728988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1BC721FD8(a1, a2, type metadata accessor for Report.Media);
  v6 = (a2 + *(_s9MediaCellVMa(0) + 20));
  *v6 = v5;
  v6[1] = v4;
}

uint64_t sub_1BC7289F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v34 = sub_1BC75ACD0();
  v32 = v3;
  v38 = *(v3 + 8);
  v37 = *(v3 + 8);
  sub_1BC6FF5EC(&v38, &v36);
  v4 = sub_1BC651E78(&v37);
  v6 = v5;
  v8 = v7;
  sub_1BC75B0F0();
  v9 = sub_1BC75B190();
  v11 = v10;
  LOBYTE(v3) = v12;

  sub_1BC680E6C(v4, v6, v8 & 1);

  v13 = sub_1BC75B180();
  v30 = v14;
  v31 = v13;
  v29 = v15;
  v33 = v16;
  sub_1BC680E6C(v9, v11, v3 & 1);

  v36 = *(v32 + 24);
  v37 = v36;
  sub_1BC6FF5EC(&v37, v35);
  v17 = sub_1BC651E78(&v36);
  v19 = v18;
  LOBYTE(v11) = v20;
  sub_1BC75B0D0();
  v21 = sub_1BC75B190();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_1BC680E6C(v17, v19, v11 & 1);

  LOBYTE(v36) = v29 & 1;
  v35[0] = v25 & 1;
  sub_1BC680FFC(v31, v30, v29 & 1);

  sub_1BC680FFC(v21, v23, v25 & 1);

  sub_1BC680E6C(v21, v23, v25 & 1);

  sub_1BC680E6C(v31, v30, v29 & 1);

  *a1 = v34;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v30;
  *(a1 + 40) = v29 & 1;
  *(a1 + 48) = v33;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  *(a1 + 72) = v25 & 1;
  *(a1 + 80) = v27;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BC728C98()
{
  v2 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
  sub_1BC759910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEBE8, &unk_1BC76D128);
  sub_1BC633C54(&qword_1EBCDEBF0, &qword_1EBCDCEA0, &qword_1BC764A00);
  sub_1BC633C54(&qword_1EBCDEBE0, &qword_1EBCDEBE8, &unk_1BC76D128);
  sub_1BC7269FC(&qword_1EBCDEBF8, type metadata accessor for Report.Message);
  return sub_1BC75B780();
}

unint64_t sub_1BC728DF8()
{
  result = qword_1EBCDEBD8;
  if (!qword_1EBCDEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEBD0, &qword_1BC76D120);
    sub_1BC633C54(&qword_1EBCDEBE0, &qword_1EBCDEBE8, &unk_1BC76D128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEBD8);
  }

  return result;
}

void static SensitiveContentTipState.donate(tipState:)(unsigned __int8 *a1)
{
  v2 = sub_1BC759F50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x1E697B570], v2);
  v8 = sub_1BC759F40();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    if (qword_1EBCF1E90 != -1)
    {
      swift_once();
    }

    v9 = qword_1EBCF1E98;
    v10 = sub_1BC75BB30();
    [v9 setInteger:v7 forKey:v10];
  }
}

void static SensitiveContentTipState.ignore()()
{
  v0 = sub_1BC759F50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697B570], v0);
  v5 = sub_1BC759F40();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    if (qword_1EBCF1E90 != -1)
    {
      swift_once();
    }

    v6 = qword_1EBCF1E98;
    v7 = sub_1BC75BB30();
    [v6 setInteger:0 forKey:v7];
  }
}

SensitiveContentAnalysisUI::SensitiveContentTipState_optional __swiftcall SensitiveContentTipState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id static NSUserDefaults.sensitiveContentAnalysis.getter()
{
  if (qword_1EBCF1E90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBCF1E98;

  return v1;
}

uint64_t sub_1BC729334@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *a4 = v4;
  return result;
}

uint64_t Array<A>.mostSalientTipState.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1BC759C40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = sub_1BC759CA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v18 = *(sub_1BC759D00() - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    sub_1BC759CF0();
    sub_1BC759C90();
    (*(v13 + 8))(v17, v12);
    sub_1BC759C30();
    sub_1BC6741B0();
    LOBYTE(v19) = sub_1BC75C170();
    v20 = *(v5 + 8);
    v20(v9, v4);
    result = (v20)(v11, v4);
    if (v19)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 3;
  }

  *a2 = v21;
  return result;
}

uint64_t sub_1BC729E54()
{
  v31 = sub_1BC75A5F0();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v4;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BC72A4E4(0, v6, 0);
    v7 = v38;
    v28[1] = v1 + 32;
    v29 = v8;
    v9 = v5 + 48;
    v30 = v1;
    do
    {
      v36 = v7;
      v37 = v6;
      v11 = *(v9 - 16);
      v13 = *v9;
      v12 = *(v9 + 8);
      v14 = *(v9 + 16);
      v15 = *(v9 + 24);
      v16 = *(v9 + 32);
      v32 = *(v9 - 8);
      v10 = v32;
      v33 = v15;
      v35 = *(v9 + 40);
      v17 = v35;
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = v11;
      *(v19 + 24) = v10;
      v34 = v11;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      *(v19 + 48) = v14;
      v20 = v33;
      *(v19 + 56) = v33;
      *(v19 + 64) = sub_1BC68CB30;
      *(v19 + 72) = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v11;
      *(v21 + 24) = v32;
      *(v21 + 32) = v13;
      *(v21 + 40) = v12;
      *(v21 + 48) = v14;
      *(v21 + 56) = v20;
      *(v21 + 64) = sub_1BC68CB30;
      v22 = v29;
      *(v21 + 72) = v18;
      swift_bridgeObjectRetain_n();
      sub_1BC680FFC(v13, v12, v14);

      v23 = v14;
      v7 = v36;
      sub_1BC680FFC(v13, v12, v23);

      sub_1BC75A5A0();
      v38 = v7;
      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BC72A4E4(v24 > 1, v25 + 1, 1);
        v7 = v38;
      }

      *(v7 + 16) = v25 + 1;
      (*(v30 + 32))(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, v22, v31);
      v9 += 64;
      v6 = v37 - 1;
    }

    while (v37 != 1);
  }

  v26 = sub_1BC72A764(v7);

  return v26;
}

uint64_t sub_1BC72A148()
{
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v0);
  v2[0] = v2[2];
  v2[1] = v2[3];
  return sub_1BC651E78(v2);
}

uint64_t sub_1BC72A188()
{
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_1BC729344(v3);
  v2[0] = v3[0];
  v2[1] = v3[1];
  return sub_1BC651E78(v2);
}

uint64_t sub_1BC72A200()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC28, &qword_1BC76D158);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - v3;
  v5 = sub_1BC75A580();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC30, &qword_1BC76D160);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1BC75A590();
  v15 = MEMORY[0x1E6982B20];
  MEMORY[0x1BFB25130](v9, v5, MEMORY[0x1E6982B20]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB25150](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_1BC75A560();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_1BC72A4A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC6D1E10();
  result = MEMORY[0x1BFB250D0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

size_t sub_1BC72A4E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC72A504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BC72A504(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC48, &qword_1BC76D380);
  v10 = *(sub_1BC75A5F0() - 8);
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
  v15 = *(sub_1BC75A5F0() - 8);
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

uint64_t sub_1BC72A6DC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_1BC72A704()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1BC680FFC(v1, v2, v3);

  return v1;
}

uint64_t sub_1BC72A764(uint64_t a1)
{
  v2 = sub_1BC75A5F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  v7 = *(*(v35 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v29 - v10);
  v36 = MEMORY[0x1E69E7CC0];
  sub_1BC72A4E4(0, 0, 0);
  v12 = v36;
  v33 = *(a1 + 16);
  if (v33)
  {
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v16 = *(v14 + 56);
    v31 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v32 = v15;
    v17 = a1 + v31;
    v29 = (v14 + 16);
    v30 = v16;
    do
    {
      v19 = v34;
      v18 = v35;
      v20 = *(v35 + 48);
      *v34 = v13;
      v21 = v14;
      v32(v19 + v20, v17, v2);
      sub_1BC72AA40(v19, v11);
      v22 = *v11;
      v23 = v11 + *(v18 + 48);
      sub_1BC75A5C0();
      sub_1BC72AAB0(v11);
      v36 = v12;
      v24 = v2;
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1BC72A4E4(v25 > 1, v26 + 1, 1);
        v12 = v36;
      }

      ++v13;
      *(v12 + 16) = v26 + 1;
      v27 = v30;
      (*v29)(v12 + v31 + v26 * v30, v6, v24);
      v17 += v27;
      v2 = v24;
      v14 = v21;
    }

    while (v33 != v13);
  }

  return v12;
}

unint64_t sub_1BC72A9DC()
{
  result = qword_1EBCDEC38;
  if (!qword_1EBCDEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEC38);
  }

  return result;
}

uint64_t sub_1BC72AA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC72AAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC72AC18()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BC72AC78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC72ACD4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1BC72AD38(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_interventionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC72ADD0;
}

void sub_1BC72ADD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id InterventionViewController.__allocating_init(with:nestedIn:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BC72B47C(a1, a2);

  return v6;
}

id InterventionViewController.init(with:nestedIn:)(uint64_t a1, void *a2)
{
  v3 = sub_1BC72B47C(a1, a2);

  return v3;
}

uint64_t *sub_1BC72AED0()
{
  if (qword_1EBCF2230 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4708;
}

id InterventionViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id InterventionViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id InterventionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BC75BB30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InterventionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterventionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InterventionViewController.contextDictionary.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_config;
  v2 = *(v1 + *(type metadata accessor for InterventionConfig(0) + 28));
}

unint64_t sub_1BC72B3B0()
{
  result = sub_1BC72B8F4();
  qword_1EBCF4700 = result;
  return result;
}

uint64_t *sub_1BC72B3D4()
{
  if (qword_1EBCF2228 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4700;
}

uint64_t sub_1BC72B424()
{
  if (qword_1EBCF2228 != -1)
  {
    result = swift_once();
  }

  qword_1EBCF4708 = qword_1EBCF4700;
  return result;
}

id sub_1BC72B47C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1BC6E86E8(a1, v3 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_config);
  type metadata accessor for InterventionScreenModel();
  sub_1BC6E86E8(a1, v9);
  v10 = InterventionScreenModel.__allocating_init(screen:config:participantContactCache:)(0, v9, 0);
  if (qword_1EBCF2230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithModel_];
  v12 = type metadata accessor for InterventionViewController();
  v28.receiver = v3;
  v28.super_class = v12;
  v13 = objc_msgSendSuper2(&v28, sel_initWithRootViewController_, v11);
  v14 = v13;
  v15 = a2;
  if (!a2)
  {
    v15 = v13;
  }

  v16 = v14;
  v17 = a2;
  [v11 setContainer_];

  v18 = v16;
  v19 = [v18 navigationBar];
  v20 = [v19 standardAppearance];

  v21 = [v20 copy];
  [v21 configureWithTransparentBackground];
  v22 = [v18 navigationBar];
  v23 = v21;
  [v22 setScrollEdgeAppearance_];

  v24 = [v18 navigationBar];
  [v24 setStandardAppearance_];

  v25 = [v18 navigationBar];
  [v25 setCompactAppearance_];

  sub_1BC6980C0(a1);
  return v18;
}

uint64_t type metadata accessor for InterventionViewController()
{
  result = qword_1EBCF2238;
  if (!qword_1EBCF2238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC72B794()
{
  result = type metadata accessor for InterventionConfig(319);
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

unint64_t sub_1BC72B8F4()
{
  result = qword_1EBCDC278;
  if (!qword_1EBCDC278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC278);
  }

  return result;
}

uint64_t sub_1BC72B940()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BC75A4D0();
  v4 = sub_1BC75BB30();
  v5 = [objc_opt_self() containerWithIdentifier_];

  v6 = [v5 publicCloudDatabase];
  *(v3 + 16) = v6;
  return v3;
}

uint64_t sub_1BC72BA2C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_1BC759940();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC72BAEC, 0, 0);
}

uint64_t sub_1BC72BAEC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v14 = v0[24];
  v4 = v0[23];
  sub_1BC65F664(0, &qword_1EBCDEC50, 0x1E695BA60);
  sub_1BC65F664(0, &qword_1EBCDEC58, 0x1E695BA70);
  sub_1BC759930();
  sub_1BC759920();
  (*(v1 + 8))(v2, v3);
  sub_1BC65F664(0, &qword_1EBCDEC60, 0x1E695BA90);
  sub_1BC75BF90();
  sub_1BC75BEF0();
  v5 = sub_1BC75C000();
  v0[28] = v5;
  v6 = type metadata accessor for CloudKitReport(0);
  v7 = *(v6 + 20);
  v8 = objc_allocWithZone(MEMORY[0x1E695B878]);
  v9 = sub_1BC759770();
  [v8 initWithFileURL_];

  sub_1BC75C010();
  v10 = *(v4 + *(v6 + 24));
  sub_1BC65F664(0, &qword_1EBCDD110, 0x1E695B878);
  sub_1BC75BCF0();
  sub_1BC75C010();
  v11 = *(v14 + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1BC72BDBC;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC68, &unk_1BC76D440);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BC72C1BC;
  v0[13] = &block_descriptor_4;
  v0[14] = v12;
  [v11 saveRecord:v5 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BC72BDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1BC72C028;
  }

  else
  {
    v3 = sub_1BC72BECC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC72BECC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = sub_1BC75A4C0();
  v4 = sub_1BC75BF50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = [v2 recordID];
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_1BC630000, v3, v4, "Successfully uploaded encrypted report with ID: %@", v5, 0xCu);
    sub_1BC72C350(v6);
    MEMORY[0x1BFB27EF0](v6, -1, -1);
    MEMORY[0x1BFB27EF0](v5, -1, -1);
  }

  v8 = *(v0 + 216);

  v9 = *(v0 + 8);

  return v9(v2);
}

uint64_t sub_1BC72C028()
{
  v22 = v0;
  v1 = v0[29];
  v2 = v0[24];
  swift_willThrow();
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1BC75C6A0();
    v14 = sub_1BC674BD8(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to upload encrypted report: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
    MEMORY[0x1BFB27EF0](v7, -1, -1);
  }

  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[27];
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[29];

  return v18();
}

uint64_t sub_1BC72C1BC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1BC72C2AC()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15CloudKitWrapper_logger;
  v2 = sub_1BC75A4E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC72C350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE130, &qword_1BC7679C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudKitWrapper()
{
  result = qword_1EBCF2250;
  if (!qword_1EBCF2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC72C40C()
{
  result = sub_1BC75A4E0();
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

uint64_t sub_1BC72C4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759910();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for Report.Message()
{
  result = qword_1EBCF2500;
  if (!qword_1EBCF2500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Report.Message.media.getter()
{
  v1 = *(v0 + *(type metadata accessor for Report.Message() + 32));
}

uint64_t Report.Message.media.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Report.Message() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC72C630()
{
  if (qword_1EBCF2260 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBCF2268;
  v1 = sub_1BC7598C0();
  v2 = [v0 stringFromDate_];

  v3 = sub_1BC75BB60();
  return v3;
}

uint64_t Report.Message.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC70, &unk_1BC76D490);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for Report.Authority(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC730448(a2, v15, type metadata accessor for Report.Authority);
  v16 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BC72E3D8();
    sub_1BC75C740();
    sub_1BC6B8D2C();
    v27 = 0;
    sub_1BC75C530();
    if (v3)
    {
      (*(v8 + 8))(v11, v7);
    }

    else
    {

      v26 = 1;
      sub_1BC759910();
      sub_1BC730CE8(&qword_1EBCDCE60, MEMORY[0x1E6969530]);
      sub_1BC75C560();
      v19 = type metadata accessor for Report.Message();
      v20 = (v4 + *(v19 + 20));
      v21 = *v20;
      v22 = v20[1];
      v25 = 2;
      sub_1BC75C530();
      v23[1] = *(v4 + *(v19 + 32));
      v24 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
      sub_1BC72E480(&qword_1EBCDEC78, &qword_1EBCDEC80);
      sub_1BC75C4F0();
      return (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    Report.Message.encode(to:)(a1);
    return sub_1BC7304B0(v15, type metadata accessor for Report.Authority);
  }
}

uint64_t Report.Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC88, &qword_1BC76D4A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC72E42C();
  sub_1BC75C740();
  v28 = 0;
  sub_1BC759910();
  sub_1BC730CE8(&qword_1EBCDCE60, MEMORY[0x1E6969530]);
  sub_1BC75C560();
  if (!v2)
  {
    v11 = type metadata accessor for Report.Message();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v27 = 1;
    sub_1BC75C530();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v26 = 2;
    sub_1BC75C530();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v25 = 3;
    sub_1BC75C530();
    v24 = *(v3 + v11[8]);
    v23[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC72E480(&qword_1EBCDCFD0, &qword_1EBCDCFD8);
    sub_1BC75C560();
    v21 = *(v3 + v11[9]);
    v23[14] = 5;
    sub_1BC75C540();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BC72CD4C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 2036625250;
  v4 = 0x616964656DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x63417265646E6573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC72CE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7308A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC72CE28(uint64_t a1)
{
  v2 = sub_1BC72E42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC72CE64(uint64_t a1)
{
  v2 = sub_1BC72E42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Report.Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1BC759910();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC90, &qword_1BC76D4A8);
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Report.Message();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC72E42C();
  v34 = v9;
  sub_1BC75C730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v31;
  v41 = 0;
  sub_1BC730CE8(&qword_1EBCDCF18, MEMORY[0x1E6969530]);
  v16 = v32;
  sub_1BC75C4C0();
  (*(v30 + 32))(v13, v16, v4);
  v40 = 1;
  v17 = sub_1BC75C4A0();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  v39 = 2;
  v20 = sub_1BC75C4A0();
  v21 = &v13[v10[6]];
  *v21 = v20;
  v21[1] = v22;
  v38 = 3;
  v23 = sub_1BC75C4A0();
  v24 = &v13[v10[7]];
  *v24 = v23;
  v24[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
  v37 = 4;
  sub_1BC72E480(&qword_1EBCDD1B0, &qword_1EBCDD1B8);
  sub_1BC75C4C0();
  *&v13[v10[8]] = v35;
  v36 = 5;
  v26 = sub_1BC75C4B0();
  (*(v15 + 8))(v34, v33);
  v13[v10[9]] = v26 & 1;
  sub_1BC730448(v13, v29, type metadata accessor for Report.Message);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC7304B0(v13, type metadata accessor for Report.Message);
}

uint64_t sub_1BC72D454(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Report.Message();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  isUniquelyReferenced_nonNull_native = &v48 - v11;
  if (a2 >> 62)
  {
    goto LABEL_44;
  }

  v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v50 = a1;
  v51 = v5;
  v48 = v9;
  v49 = v10;
  if (v13)
  {
    v14 = 0;
    v54 = a2 & 0xFFFFFFFFFFFFFF8;
    v55 = a2 & 0xC000000000000001;
    v15 = MEMORY[0x1E69E7CC8];
    v52 = v13;
    v53 = a2;
    while (1)
    {
      if (v55)
      {
        v10 = MEMORY[0x1BFB26EB0](v14, a2);
      }

      else
      {
        if (v14 >= *(v54 + 16))
        {
          goto LABEL_39;
        }

        v10 = *(a2 + 8 * v14 + 32);
      }

      v5 = v10;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_39:
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
        v40 = v10;
        v13 = sub_1BC75C3F0();
        v10 = v40;
        goto LABEL_3;
      }

      v56 = v14 + 1;
      a1 = isUniquelyReferenced_nonNull_native;
      v18 = [v10 identifier];
      a2 = sub_1BC75BB60();
      v20 = v19;

      v21 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v15;
      v5 = v15;
      v9 = sub_1BC65B77C(a2, v20);
      v23 = v15[2];
      v24 = (v22 & 1) == 0;
      v10 = (v23 + v24);
      if (__OFADD__(v23, v24))
      {
        goto LABEL_40;
      }

      v25 = v22;
      if (v15[3] >= v10)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = a1;
          if (v22)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v5 = &v58;
          sub_1BC72FFBC();
          isUniquelyReferenced_nonNull_native = a1;
          if (v25)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1BC72FD18(v10, isUniquelyReferenced_nonNull_native);
        v5 = v58;
        v26 = sub_1BC65B77C(a2, v20);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_56;
        }

        v9 = v26;
        isUniquelyReferenced_nonNull_native = a1;
        if (v25)
        {
LABEL_5:

          v15 = v58;
          v16 = *(v58 + 56);
          v17 = *(v16 + 8 * v9);
          *(v16 + 8 * v9) = v21;

          goto LABEL_6;
        }
      }

      v15 = v58;
      *(v58 + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v28 = (v15[6] + 16 * v9);
      *v28 = a2;
      v28[1] = v20;
      *(v15[7] + 8 * v9) = v21;

      v29 = v15[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_42;
      }

      v15[2] = v31;
LABEL_6:
      ++v14;
      a2 = v53;
      if (v56 == v52)
      {
        goto LABEL_24;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC8];
LABEL_24:

  v58 = sub_1BC730128(v32);
  sub_1BC72EBE4(&v58);

  v9 = v58;
  v33 = v51;
  if ((v58 & 0x8000000000000000) != 0 || (v58 & 0x4000000000000000) != 0)
  {
    a1 = sub_1BC75C3F0();
    if (a1)
    {
LABEL_27:
      v58 = MEMORY[0x1E69E7CC0];
      v10 = sub_1BC720E80(0, a1 & ~(a1 >> 63), 0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v34 = 0;
        v5 = v58;
        v56 = v9 & 0xC000000000000001;
        while (1)
        {
          a2 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_41;
          }

          if (v56)
          {
            v35 = MEMORY[0x1BFB26EB0](v34, v9);
          }

          else
          {
            if (v34 >= *(v9 + 16))
            {
              goto LABEL_43;
            }

            v35 = *(v9 + 8 * v34 + 32);
          }

          v36 = v35;
          v57 = v35;
          sub_1BC72D9B0(&v57, v15, isUniquelyReferenced_nonNull_native);

          v58 = v5;
          v37 = isUniquelyReferenced_nonNull_native;
          v39 = v5[2];
          v38 = v5[3];
          if (v39 >= v38 >> 1)
          {
            sub_1BC720E80(v38 > 1, v39 + 1, 1);
            v5 = v58;
          }

          v5[2] = v39 + 1;
          v10 = sub_1BC730BD0(v37, v5 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + v33[9] * v39, type metadata accessor for Report.Message);
          ++v34;
          isUniquelyReferenced_nonNull_native = v37;
          if (a2 == a1)
          {

            goto LABEL_47;
          }
        }
      }

      goto LABEL_55;
    }
  }

  else
  {
    a1 = *(v58 + 16);
    if (a1)
    {
      goto LABEL_27;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v41 = v5[2];
  v43 = v48;
  v42 = v49;
  if (!v41)
  {
LABEL_52:
    v44 = 0;
LABEL_53:
    v46 = Array.keeping(upTo:beforeAndAfter:)(10, v44, v5);

    return v46;
  }

  v44 = 0;
  while (v44 < v5[2])
  {
    v9 = type metadata accessor for Report.Message;
    sub_1BC730448(v5 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + v33[9] * v44, v43, type metadata accessor for Report.Message);
    v45 = *(v43 + *(v42 + 9));
    sub_1BC7304B0(v43, type metadata accessor for Report.Message);
    if (v45)
    {
      goto LABEL_53;
    }

    if (v41 == ++v44)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  sub_1BC75C640();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BC72D9B0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = sub_1BC759910();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v93 - v12;
  v13 = sub_1BC759800();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v107 = &v93 - v18;
  v110 = type metadata accessor for Report.Media(0);
  v101 = *(v110 - 8);
  v19 = *(v101 + 64);
  v20 = MEMORY[0x1EEE9AC00](v110);
  v93 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v93 - v22;
  v94 = *a1;
  v23 = [v94 attachmentIdentifiers];
  v24 = sub_1BC75BD00();

  v25 = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0];
  v26 = *(v24 + 16);
  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = 0;
  do
  {
    v28 = (v24 + 40 + 16 * v27);
    v29 = v27;
    while (1)
    {
      if (v29 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_4;
      }

      v30 = *(v28 - 1);
      v31 = *v28;

      v32 = sub_1BC65B77C(v30, v31);
      if (v33)
      {
        break;
      }

LABEL_4:
      ++v29;
      v28 += 2;
      if (v26 == v29)
      {
        goto LABEL_12;
      }
    }

    v34 = *(*(a2 + 56) + 8 * v32);

    MEMORY[0x1BFB268C0](v35);
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BC75BD20();
    }

    v27 = v29 + 1;
    sub_1BC75BD50();
    v25 = v112;
  }

  while (v26 - 1 != v29);
LABEL_12:

  if (v25 >> 62)
  {
    goto LABEL_37;
  }

  v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v102; v37; i = v102)
  {
    v39 = 0;
    v105 = v25 & 0xFFFFFFFFFFFFFF8;
    v106 = v25 & 0xC000000000000001;
    v100 = *MEMORY[0x1E697B5F0];
    v103 = (v101 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v99 = *MEMORY[0x1E697B5F8];
    v104 = v37;
    while (1)
    {
      if (v106)
      {
        v42 = MEMORY[0x1BFB26EB0](v39, v25);
      }

      else
      {
        if (v39 >= *(v105 + 16))
        {
          goto LABEL_36;
        }

        v42 = *(v25 + 8 * v39 + 32);
      }

      v43 = v42;
      v44 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v45 = v25;
      v46 = v40;
      v47 = [v42 url];
      sub_1BC7597C0();

      v48 = [v43 UTIType];
      v49 = sub_1BC75BB60();
      v51 = v50;

      v52 = [v43 isSensitive];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 BOOLValue];

        v55 = sub_1BC75A050();
        v56 = *(v55 - 8);
        v57 = (v56 + 56);
        if (v54)
        {
          i = v102;
          v58 = v102;
          v59 = v99;
        }

        else
        {
          i = v102;
          v58 = v102;
          v59 = v100;
        }

        (*(v56 + 104))(v58, v59, v55);
        (*v57)(i, 0, 1, v55);
      }

      else
      {
        v60 = sub_1BC75A050();
        (*(*(v60 - 8) + 56))(i, 1, 1, v60);
      }

      v61 = v109;
      sub_1BC730AF8(i, v109);
      v62 = [v43 wasImpetusOfReport];
      v63 = v49;
      v64 = v107;
      Report.Media.init(url:utiType:sensitivity:wasImpetusOfReport:)(v111, v63, v51, v61, v62, v107);

      v40 = v46;
      if ((*v103)(v64, 1, v110) == 1)
      {
        sub_1BC730B68(v64);
        v25 = v45;
        v41 = v104;
      }

      else
      {
        sub_1BC730BD0(v64, v108, type metadata accessor for Report.Media);
        v25 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1BC6BAE4C(0, v40[2] + 1, 1, v40);
        }

        v41 = v104;
        v66 = v40[2];
        v65 = v40[3];
        if (v66 >= v65 >> 1)
        {
          v40 = sub_1BC6BAE4C(v65 > 1, v66 + 1, 1, v40);
        }

        v40[2] = v66 + 1;
        sub_1BC730BD0(v108, v40 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v66, type metadata accessor for Report.Media);
      }

      ++v39;
      if (v44 == v41)
      {
        goto LABEL_39;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v37 = sub_1BC75C3F0();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v67 = v94;
  v68 = [v94 date];
  v69 = v95;
  sub_1BC7598F0();

  v70 = [v67 senderAccountID];
  v71 = sub_1BC75BB60();
  v73 = v72;

  v74 = [v67 senderDisplayName];
  v75 = sub_1BC75BB60();
  v77 = v76;

  v78 = [v67 body];
  v79 = sub_1BC75BB60();
  v81 = v80;

  v82 = v98;
  (*(v96 + 16))(v98, v69, v97);
  v83 = type metadata accessor for Report.Message();
  v84 = (v82 + v83[5]);
  *v84 = v71;
  v84[1] = v73;
  v85 = (v82 + v83[6]);
  *v85 = v75;
  v85[1] = v77;
  v86 = (v82 + v83[7]);
  *v86 = v79;
  v86[1] = v81;
  *(v82 + v83[8]) = v40;
  v87 = v40[2];
  if (v87)
  {
    v88 = v40 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v89 = *(v101 + 72);

    v90 = 0;
    v91 = v93;
    do
    {
      sub_1BC730448(v88, v91, type metadata accessor for Report.Media);
      if (v90)
      {
        v90 = 1;
      }

      else
      {
        v90 = *(v91 + *(v110 + 28));
      }

      sub_1BC7304B0(v91, type metadata accessor for Report.Media);
      v88 += v89;
      --v87;
    }

    while (v87);
  }

  else
  {
    v90 = 0;
  }

  result = (*(v96 + 8))(v95, v97);
  *(v98 + v83[9]) = v90;
  return result;
}

uint64_t sub_1BC72E2A0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 isSensitive];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];

    v6 = sub_1BC75A050();
    v7 = *(v6 - 8);
    v15 = (v7 + 56);
    if (v5)
    {
      v8 = MEMORY[0x1E697B5F8];
    }

    else
    {
      v8 = MEMORY[0x1E697B5F0];
    }

    (*(v7 + 104))(a1, *v8, v6);
    v10 = *v15;
    v12 = a1;
    v13 = 0;
    v11 = v6;
  }

  else
  {
    v9 = sub_1BC75A050();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a1;
    v13 = 1;
  }

  return v10(v12, v13, 1, v11);
}

unint64_t sub_1BC72E3D8()
{
  result = qword_1EBCF2270;
  if (!qword_1EBCF2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2270);
  }

  return result;
}

unint64_t sub_1BC72E42C()
{
  result = qword_1EBCF2278[0];
  if (!qword_1EBCF2278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2278);
  }

  return result;
}

uint64_t sub_1BC72E480(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC730CE8(a2, type metadata accessor for Report.Media);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BC72E51C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v5 setDateStyle_];
  result = [v5 setTimeStyle_];
  *a3 = v5;
  return result;
}

uint64_t sub_1BC72E598(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00746E65746E6FLL;
  v3 = 0x436567617373656DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x63417265646E6573;
    }

    else
    {
      v5 = 0x656D686361747461;
    }

    if (v4 == 2)
    {
      v6 = 0xEF4449746E756F63;
    }

    else
    {
      v6 = 0xEB0000000073746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6563655265746164;
    }

    else
    {
      v5 = 0x436567617373656DLL;
    }

    if (v4)
    {
      v6 = 0xEC00000064657669;
    }

    else
    {
      v6 = 0xEE00746E65746E6FLL;
    }
  }

  v7 = 0x63417265646E6573;
  v8 = 0xEF4449746E756F63;
  if (a2 != 2)
  {
    v7 = 0x656D686361747461;
    v8 = 0xEB0000000073746ELL;
  }

  if (a2)
  {
    v3 = 0x6563655265746164;
    v2 = 0xEC00000064657669;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BC75C5E0();
  }

  return v11 & 1;
}

uint64_t sub_1BC72E71C()
{
  v1 = *v0;
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC72E808()
{
  *v0;
  *v0;
  *v0;
  sub_1BC75BBE0();
}

uint64_t sub_1BC72E8E0()
{
  v1 = *v0;
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC72E9C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC730AAC();
  *a2 = result;
  return result;
}

void sub_1BC72E9F8(uint64_t *a1@<X8>)
{
  v2 = 0xEE00746E65746E6FLL;
  v3 = 0x436567617373656DLL;
  v4 = 0xEF4449746E756F63;
  v5 = 0x63417265646E6573;
  if (*v1 != 2)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEB0000000073746ELL;
  }

  if (*v1)
  {
    v3 = 0x6563655265746164;
    v2 = 0xEC00000064657669;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BC72EAA0()
{
  v1 = 0x436567617373656DLL;
  v2 = 0x63417265646E6573;
  if (*v0 != 2)
  {
    v2 = 0x656D686361747461;
  }

  if (*v0)
  {
    v1 = 0x6563655265746164;
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

uint64_t sub_1BC72EB44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC730AAC();
  *a1 = result;
  return result;
}

uint64_t sub_1BC72EB6C(uint64_t a1)
{
  v2 = sub_1BC72E3D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC72EBA8(uint64_t a1)
{
  v2 = sub_1BC72E3D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC72EBE4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BC73033C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BC72ECE8(v6);
  return sub_1BC75C330();
}

void *sub_1BC72EC60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1BC72ECE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BC75C580();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BC730C38();
        v6 = sub_1BC75BD40();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BC72F00C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BC72EDEC(0, v2, 1, a1);
  }
}

void sub_1BC72EDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1BC759910();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 date];
      sub_1BC7598F0();

      v23 = [v21 date];
      v24 = v35;
      sub_1BC7598F0();

      LOBYTE(v23) = sub_1BC7598D0();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BC72F00C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_1BC759910();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_1BC6BC448(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_1BC72F87C((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1BC6BC448(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_1BC6BC3BC(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 date];
      v25 = v124;
      sub_1BC7598F0();

      v26 = [v23 date];
      v27 = v125;
      sub_1BC7598F0();

      LODWORD(v122) = sub_1BC7598D0();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 date];
        v35 = v124;
        sub_1BC7598F0();

        v36 = [v33 date];
        v37 = v125;
        sub_1BC7598F0();

        LODWORD(v36) = sub_1BC7598D0() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_1BC6BB23C(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_1BC6BB23C((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_1BC72F87C((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1BC6BC448(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_1BC6BC3BC(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 date];
    v54 = v124;
    sub_1BC7598F0();

    v55 = [v52 date];
    v56 = v125;
    sub_1BC7598F0();

    LOBYTE(v55) = sub_1BC7598D0();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1BC72F87C(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_1BC759910();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 date];
        v42 = v55;
        sub_1BC7598F0();

        v43 = [v40 date];
        v44 = v56;
        sub_1BC7598F0();

        LOBYTE(v43) = sub_1BC7598D0();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 date];
        v22 = v55;
        sub_1BC7598F0();

        v23 = [v20 date];
        v24 = v56;
        sub_1BC7598F0();

        LOBYTE(v23) = sub_1BC7598D0();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_1BC72FD18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECB8, &qword_1BC76D838);
  v39 = a2;
  result = sub_1BC75C410();
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
      sub_1BC75C700();
      sub_1BC75BBE0();
      result = sub_1BC75C720();
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

id sub_1BC72FFBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECB8, &qword_1BC76D838);
  v2 = *v0;
  v3 = sub_1BC75C400();
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

uint64_t sub_1BC730128(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1BC75C3F0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1BC72EC60(v3, 0);
  sub_1BC7301BC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BC7301BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BC75C3F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BC75C3F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BC730C84();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECA8, &qword_1BC76D830);
            v9 = sub_1BC6BCD84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1BC730C38();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC7MessageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC7598E0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v4 = type metadata accessor for Report.Message();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1BC75C5E0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (v14 || (sub_1BC75C5E0()) && ((v15 = v4[7], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) ? (v19 = v17 == v18[1]) : (v19 = 0), (v19 || (sub_1BC75C5E0()) && sub_1BC6B0604(*(a1 + v4[8]), *(a2 + v4[8]))))
  {
    v20 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
LABEL_19:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1BC730448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC7304B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC730580()
{
  sub_1BC759910();
  if (v0 <= 0x3F)
  {
    sub_1BC730618();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC730618()
{
  if (!qword_1EBCDECA0)
  {
    type metadata accessor for Report.Media(255);
    v0 = sub_1BC75BD70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDECA0);
    }
  }
}

unint64_t sub_1BC730694()
{
  result = qword_1EBCF2690[0];
  if (!qword_1EBCF2690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2690);
  }

  return result;
}

unint64_t sub_1BC7306EC()
{
  result = qword_1EBCF28A0[0];
  if (!qword_1EBCF28A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF28A0);
  }

  return result;
}

unint64_t sub_1BC730744()
{
  result = qword_1EBCF29B0;
  if (!qword_1EBCF29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF29B0);
  }

  return result;
}

unint64_t sub_1BC73079C()
{
  result = qword_1EBCF29B8[0];
  if (!qword_1EBCF29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF29B8);
  }

  return result;
}

unint64_t sub_1BC7307F4()
{
  result = qword_1EBCF2A40;
  if (!qword_1EBCF2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2A40);
  }

  return result;
}

unint64_t sub_1BC73084C()
{
  result = qword_1EDDD1738;
  if (!qword_1EDDD1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1738);
  }

  return result;
}

uint64_t sub_1BC7308A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63417265646E6573 && a2 == 0xEF4449746E756F63 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC774530 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772D30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1BC730AAC()
{
  v0 = sub_1BC75C440();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC730AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC730B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC730BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC730C38()
{
  result = qword_1EBCDCE38;
  if (!qword_1EBCDCE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDCE38);
  }

  return result;
}

unint64_t sub_1BC730C84()
{
  result = qword_1EBCDECB0;
  if (!qword_1EBCDECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECA8, &qword_1BC76D830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDECB0);
  }

  return result;
}

uint64_t sub_1BC730CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.prefetchSensitiveContentPolicy()(uint64_t a1, uint64_t a2)
{
  sub_1BC75A030();
  v4 = sub_1BC75A000();
  View.prefetchSensitiveContentPolicy(policyCache:)(v4, a1, a2);
}

uint64_t View.prefetchSensitiveContentPolicy(policyCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  swift_storeEnumTagMultiPayload();
  sub_1BC75A030();
  sub_1BC731804();
  v10 = sub_1BC75A730();
  v11 = v9 + *(v6 + 20);
  *v11 = v10;
  v11[8] = v12 & 1;
  *(v9 + *(v6 + 24)) = a1;

  MEMORY[0x1BFB25FF0](v9, a2, v6, a3);
  return sub_1BC731F28(v9, type metadata accessor for SensitiveContentPolicyPrefetcher);
}

uint64_t View.forceSensitiveContentPolicy(forcedPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v66 = a3;
  v67 = a4;
  v60 = *(a2 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECC8, &unk_1BC76D878);
  v13 = sub_1BC75A960();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - v20;
  v22 = sub_1BC759EE0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = sub_1BC75AE10();
  v65 = *(v28 - 8);
  v29 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v53 - v30;
  sub_1BC660024(v62, v21, &unk_1EBCDBD90, &unk_1BC75F850);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1BC66008C(v21, &unk_1EBCDBD90, &unk_1BC75F850);
    v31 = v60;
    v32 = *(v60 + 16);
    v33 = v57;
    v34 = v27;
    v32(v57, v63, v27);
    v35 = v58;
    v32(v58, v33, v34);
    v36 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878);
    v37 = v66;
    v74 = v66;
    v75 = v36;
    swift_getWitnessTable();
    v38 = v64;
    sub_1BC633720(v35, v13, v34);
    v39 = *(v31 + 8);
    v39(v35, v34);
    v39(v33, v34);
  }

  else
  {
    v40 = *(v23 + 32);
    v55 = v26;
    v40(v26, v21, v22);
    swift_getKeyPath();
    v41 = *(v23 + 16);
    v54 = v22;
    v41(v12, v26, v22);
    (*(v23 + 56))(v12, 0, 1, v22);
    v42 = type metadata accessor for EnvironmentPrefetchState(0);
    (*(*(v42 - 8) + 56))(v12, 0, 1, v42);
    v43 = v56;
    v53 = v27;
    v62 = v28;
    v44 = v66;
    sub_1BC75B220();

    sub_1BC66008C(v12, &qword_1EBCDECC0, &qword_1BC76D870);
    v45 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878);
    v68 = v44;
    v69 = v45;
    swift_getWitnessTable();
    v46 = v61;
    v47 = *(v61 + 16);
    v48 = v59;
    v47(v59, v43, v13);
    v49 = *(v46 + 8);
    v49(v43, v13);
    v47(v43, v48, v13);
    v37 = v44;
    v28 = v62;
    v38 = v64;
    sub_1BC633818(v43, v13);
    v49(v43, v13);
    v49(v48, v13);
    (*(v23 + 8))(v55, v54);
  }

  v50 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878);
  v72 = v37;
  v73 = v50;
  WitnessTable = swift_getWitnessTable();
  v71 = v37;
  swift_getWitnessTable();
  v51 = v65;
  (*(v65 + 16))(v67, v38, v28);
  return (*(v51 + 8))(v38, v28);
}

uint64_t sub_1BC731678()
{
  sub_1BC733614();

  return sub_1BC75ABC0();
}

uint64_t sub_1BC731700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1BC660024(a1, &v10 - v7, &qword_1EBCDECC0, &qword_1BC76D870);
  sub_1BC660024(v8, v6, &qword_1EBCDECC0, &qword_1BC76D870);
  sub_1BC733614();
  sub_1BC75ABD0();
  return sub_1BC66008C(v8, &qword_1EBCDECC0, &qword_1BC76D870);
}

unint64_t sub_1BC731804()
{
  result = qword_1EDDCF1C0;
  if (!qword_1EDDCF1C0)
  {
    sub_1BC75A030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCF1C0);
  }

  return result;
}

uint64_t sub_1BC73187C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7318EC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for PolicyProperty(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1BC75BF70();
    v9 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t PolicyProperty.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for PolicyProperty(0) + 20);
  sub_1BC75A030();
  sub_1BC731804();
  result = sub_1BC75A740();
  *v2 = result;
  v2[8] = v4 & 1;
  return result;
}

Swift::Void __swiftcall PolicyProperty.update()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  sub_1BC633C54(&qword_1EBCDECE0, &qword_1EBCDECD8, &qword_1BC76D888);
  sub_1BC75A950();
  v0 = *(type metadata accessor for PolicyProperty(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECE8, &qword_1BC76D890);
  sub_1BC633C54(&qword_1EBCDECF0, &qword_1EBCDECE8, &qword_1BC76D890);
  sub_1BC75A950();
}

uint64_t PolicyProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  sub_1BC660024(v1, v11, &qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC73187C(v11, v15);
  }

  else
  {
    v16 = *v11;
    sub_1BC75BF70();
    v17 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  v18 = type metadata accessor for EnvironmentPrefetchState(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    sub_1BC66008C(v15, &qword_1EBCDECC0, &qword_1BC76D870);
LABEL_8:
    sub_1BC7318EC();
    sub_1BC759FF0();
  }

  v19 = sub_1BC759EE0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_1BC731F28(v15, type metadata accessor for EnvironmentPrefetchState);
    goto LABEL_8;
  }

  (*(v20 + 32))(a1, v15, v19);
  return (*(v20 + 56))(a1, 0, 1, v19);
}

uint64_t sub_1BC731F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC731F9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  sub_1BC633C54(&qword_1EBCDECE0, &qword_1EBCDECD8, &qword_1BC76D888);
  sub_1BC75A950();
  v2 = *(a1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECE8, &qword_1BC76D890);
  sub_1BC633C54(&qword_1EBCDECF0, &qword_1EBCDECE8, &qword_1BC76D890);
  return sub_1BC75A950();
}

void sub_1BC732098()
{
  sub_1BC67DE5C(319, &qword_1EBCDECF8, &qword_1EBCDECC0, &qword_1BC76D870);
  if (v0 <= 0x3F)
  {
    sub_1BC63317C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC73215C()
{
  v0 = sub_1BC759EE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1BC7321B4()
{
  result = qword_1EBCF2B20;
  if (!qword_1EBCF2B20)
  {
    type metadata accessor for SensitiveContentPolicyPrefetcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2B20);
  }

  return result;
}

void sub_1BC732234()
{
  sub_1BC67DE5C(319, &qword_1EBCDECF8, &qword_1EBCDECC0, &qword_1BC76D870);
  if (v0 <= 0x3F)
  {
    sub_1BC67DE5C(319, &qword_1EBCDED00, &qword_1EBCDED08, &qword_1BC76D948);
    if (v1 <= 0x3F)
    {
      sub_1BC75A030();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC73231C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1BC660024(v2, &v16 - v11, &qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BC73187C(v12, a1);
  }

  v14 = *v12;
  sub_1BC75BF70();
  v15 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BC7324EC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SensitiveContentPolicyPrefetcher(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1BC75BF70();
    v9 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1BC732640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v66 = a2;
  v60 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED10, &qword_1BC76D9A0);
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v55 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED18, &qword_1BC76D9A8);
  v58 = *(v62 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v55 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED20, &qword_1BC76D9B0);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED28, &qword_1BC76D9B8);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v55 - v18;
  sub_1BC73231C(&v55 - v18);
  v20 = type metadata accessor for EnvironmentPrefetchState(0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED30, &qword_1BC76D9C0) + 36)];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED38, &qword_1BC76D9C8);
    v24 = *(v23 + 40);
    v25 = sub_1BC759EA0();
    (*(*(v25 - 8) + 56))(&v22[v24], 1, 1, v25);
    sub_1BC7332E0(v2, &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = *(v57 + 80);
    v56 = v9;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    sub_1BC733348(&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = &v22[*(v23 + 36)];
    sub_1BC75BDF0();
    *v22 = &unk_1BC76D9D8;
    *(v22 + 1) = v28;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    (*(*(v57 - 8) + 16))(v6, v59, v57);
    KeyPath = swift_getKeyPath();
    v31 = v65;
    v32 = &v6[*(v65 + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC8, &unk_1BC76D878) + 28);
    v34 = sub_1BC759EE0();
    (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
    (*(v21 + 56))(v32 + v33, 0, 1, v20);
    *v32 = KeyPath;
    v35 = *(v2 + *(v60 + 24));
    v36 = sub_1BC75A030();
    v37 = sub_1BC733478();
    v38 = sub_1BC731804();
    v39 = v56;
    sub_1BC75B210();
    sub_1BC66008C(v6, &qword_1EBCDED10, &qword_1BC76D9A0);
    v40 = v58;
    v41 = v62;
    (*(v58 + 16))(v61, v39, v62);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0);
    v67 = v57;
    v68 = v36;
    v69 = v42;
    v70 = v38;
    swift_getOpaqueTypeConformance2();
    v67 = v31;
    v68 = v36;
    v69 = v37;
    v70 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v40 + 8))(v39, v41);
  }

  else
  {
    v44 = v60;
    v45 = v61;
    v46 = sub_1BC759EE0();
    if ((*(*(v46 - 8) + 48))(v19, 1, v46) != 1)
    {
      sub_1BC731F28(v19, type metadata accessor for EnvironmentPrefetchState);
    }

    if (!sub_1BC7324EC())
    {
      v47 = *(v2 + *(v44 + 24));
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    v49 = sub_1BC75A030();
    v50 = sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0);
    v51 = sub_1BC731804();
    sub_1BC75B210();

    v52 = v45;
    v53 = v64;
    (*(v12 + 16))(v52, v15, v64);
    swift_storeEnumTagMultiPayload();
    v67 = v48;
    v68 = v49;
    v69 = v50;
    v70 = v51;
    swift_getOpaqueTypeConformance2();
    v54 = sub_1BC733478();
    v67 = v65;
    v68 = v49;
    v69 = v54;
    v70 = v51;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v12 + 8))(v15, v53);
  }
}

uint64_t sub_1BC732E44(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED68, &qword_1BC76D9E8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[5] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC732F4C, v5, v4);
}

uint64_t sub_1BC732F4C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + *(type metadata accessor for SensitiveContentPolicyPrefetcher(0) + 24));
  v4 = sub_1BC759EA0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = *(MEMORY[0x1E697B5E0] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1BC733038;
  v8 = v0[3];
  v7 = v0[4];

  return MEMORY[0x1EEDD8CD8](v7, v8);
}

uint64_t sub_1BC733038()
{
  v2 = *v1;
  v3 = (*v1)[8];
  v10 = *v1;

  if (v0)
  {
    v4 = v2[3];

    sub_1BC66008C(v4, &qword_1EBCDED68, &qword_1BC76D9E8);
    v5 = v2[6];
    v6 = v2[7];
    v7 = sub_1BC733214;
  }

  else
  {
    v8 = v2[4];
    sub_1BC66008C(v2[3], &qword_1EBCDED68, &qword_1BC76D9E8);
    sub_1BC66008C(v8, &unk_1EBCDBD90, &unk_1BC75F850);
    v5 = v2[6];
    v6 = v2[7];
    v7 = sub_1BC7331A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BC7331A4()
{
  v1 = v0[5];

  v3 = v0[3];
  v2 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC733214()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = sub_1BC759EE0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1BC66008C(v2, &unk_1EBCDBD90, &unk_1BC75F850);
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC7332E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC733348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7333AC()
{
  v2 = *(type metadata accessor for SensitiveContentPolicyPrefetcher(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC732E44(v0 + v3);
}

unint64_t sub_1BC733478()
{
  result = qword_1EBCDED48;
  if (!qword_1EBCDED48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED10, &qword_1BC76D9A0);
    sub_1BC733530();
    sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED48);
  }

  return result;
}

unint64_t sub_1BC733530()
{
  result = qword_1EBCDED50;
  if (!qword_1EBCDED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED30, &qword_1BC76D9C0);
    sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0);
    sub_1BC633C54(&qword_1EBCDED60, &qword_1EBCDED38, &qword_1BC76D9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED50);
  }

  return result;
}

unint64_t sub_1BC733614()
{
  result = qword_1EBCF2BC0[0];
  if (!qword_1EBCF2BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2BC0);
  }

  return result;
}

unint64_t sub_1BC733678()
{
  result = qword_1EBCDED70;
  if (!qword_1EBCDED70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED78, &qword_1BC76DA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    sub_1BC75A030();
    sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0);
    sub_1BC731804();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED10, &qword_1BC76D9A0);
    sub_1BC733478();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED70);
  }

  return result;
}

uint64_t sub_1BC7337CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  __swift_allocate_value_buffer(v0, qword_1EBCF2A58);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF2A58);
  v2 = type metadata accessor for EnvironmentPrefetchState(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1BC73386C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBCF2A50 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v3 = __swift_project_value_buffer(v2, qword_1EBCF2A58);
  return sub_1BC660024(v3, a1, &qword_1EBCDECC0, &qword_1BC76D870);
}

uint64_t sub_1BC7338FC()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF2C58);
  __swift_project_value_buffer(v0, qword_1EBCF2C58);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC7339DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 192))();

  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  return sub_1BC660024(v1 + v3, a1, &qword_1EBCDED80, &unk_1BC76A3C0);
}

uint64_t sub_1BC733AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  sub_1BC660024(a1, &v9 - v6, &qword_1EBCDED80, &unk_1BC76A3C0);
  return (*(**a2 + 152))(v7);
}

uint64_t sub_1BC733B90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  sub_1BC660024(v1 + v7, v6, &qword_1EBCDED80, &unk_1BC76A3C0);
  v8 = sub_1BC738D1C(v6, a1);
  sub_1BC66008C(v6, &qword_1EBCDED80, &unk_1BC76A3C0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 200))(v10, sub_1BC7390AC);
  }

  else
  {
    sub_1BC660024(a1, v6, &qword_1EBCDED80, &unk_1BC76A3C0);
    swift_beginAccess();
    sub_1BC73903C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BC66008C(a1, &qword_1EBCDED80, &unk_1BC76A3C0);
}

void (*sub_1BC733D64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 192))();

  v4[5] = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC739218(&qword_1EBCDED88, type metadata accessor for ReportToAuthoritiesViewModel);
  sub_1BC759A70();

  v4[7] = sub_1BC73397C();
  return sub_1BC733EA0;
}

void sub_1BC733EA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v1);
}

uint64_t sub_1BC733F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  v14 = type metadata accessor for Report.Evidence(0);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  sub_1BC759A80();
  sub_1BC69B938(a1, v12 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, type metadata accessor for Report.Authority);
  v15 = (v12 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock);
  *v15 = a3;
  v15[1] = a4;
  *(v12 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType) = a2;
  return v12;
}

uint64_t sub_1BC734028()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = sub_1BC75BDE0();
  v1[7] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC73410C, v5, v4);
}

uint64_t sub_1BC73410C()
{
  v1 = *(v0 + 40);
  (*(**(v0 + 16) + 144))();
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    sub_1BC66008C(*(v0 + 40), &qword_1EBCDED80, &unk_1BC76A3C0);
    v7 = *(v6 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
    v8 = sub_1BC75BDD0();
    *(v0 + 80) = v8;
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v10 = *(MEMORY[0x1E69E8920] + 4);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = sub_1BC734320;
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v12, v8, v14, 0xD000000000000015, 0x80000001BC774550, sub_1BC739134, v9, v13);
  }

  else
  {
    v15 = *(v0 + 56);

    sub_1BC66008C(v4, &qword_1EBCDED80, &unk_1BC76A3C0);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1BC734320()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1BC7344E8;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1BC734444;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC734444()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  (*(*v3 + 152))(v2);
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC7344E8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  sub_1BC73913C();
  swift_allocError();
  *v7 = v1 | 0x4000000000000000;
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BC7345B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_1BC75BE10();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC75BDE0();

  v16 = sub_1BC75BDD0();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  (*(v7 + 32))(&v19[v17], v10, v6);
  *&v19[v18] = a3;
  sub_1BC652910(0, 0, v14, &unk_1BC76DB70, v19);
}

uint64_t sub_1BC7347D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v6[9] = sub_1BC75BDD0();
  v10 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC7348E4, v10, v9);
}

uint64_t sub_1BC7348E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  v10 = *(v7 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock);
  v9 = *(v7 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock + 8);
  (*(v4 + 16))(v2, v8, v5);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10(sub_1BC739760, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BC734A20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v14 - v10;
  if (a1)
  {
    Report.Evidence.init(_:interventionType:)(a1, a4, v11);
    v12 = type metadata accessor for Report.Evidence(0);
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
    return sub_1BC75BDA0();
  }

  else if (a2)
  {
    v14[1] = a2;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
    return sub_1BC75BD90();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC734B5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Report.Authority(0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v3[9] = sub_1BC75BDD0();
  v9 = sub_1BC75BD80();
  v3[10] = v9;
  v3[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC734C80, v9, v8);
}

uint64_t sub_1BC734C80()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1BC7391B0(v0[4] + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v1, type metadata accessor for Report.Authority);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1BC735008;
    v6 = v0[2];
    v5 = v0[3];

    return sub_1BC73532C(v6, v5);
  }

  else
  {
    sub_1BC69B938(v0[8], v0[7], type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v0[12] = [objc_allocWithZone(type metadata accessor for DirectReportNetworkManager(0)) init];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_1BC734E24;
    v9 = v0[7];
    v10 = v0[2];

    return sub_1BC73714C(v10, v9);
  }
}

uint64_t sub_1BC734E24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = v6[10];
    v10 = v6[11];
    v11 = sub_1BC73521C;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v9 = v6[10];
    v10 = v6[11];
    v11 = sub_1BC734F58;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BC734F58()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  sub_1BC739260(v3, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8(v5, v4);
}

uint64_t sub_1BC735008(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_1BC7352B8;
  }

  else
  {
    v4[19] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_1BC735130;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BC735130()
{
  v1 = v0[19];
  v2 = v0[9];

  v3 = [v1 recordID];
  v4 = [v3 recordName];

  v5 = sub_1BC75BB60();
  v6 = nullsub_1(v5);
  v8 = v7;

  v10 = v0[7];
  v9 = v0[8];

  v11 = v0[1];

  return v11(v6, v8);
}

uint64_t sub_1BC73521C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  sub_1BC739260(v3, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  v4 = v0[14];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BC7352B8()
{
  v1 = v0[9];

  v2 = v0[18];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BC73532C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED98, &qword_1BC76DAA0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1BC75B8B0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for CloudKitReport(0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for Report.Evidence(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_1BC75B9E0();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_1BC759800();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC73554C, 0, 0);
}

uint64_t sub_1BC73554C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = NSTemporaryDirectory();
  sub_1BC75BB60();

  sub_1BC759750();

  sub_1BC759790();
  v6 = *(v4 + 8);
  v0[18] = v6;
  v0[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v0[20] = sub_1BC75B8A0();
  v0[21] = sub_1BC75B880();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1BC735698;
  v8 = v0[13];

  return sub_1BC736C54(v8);
}

uint64_t sub_1BC735698()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1BC736538;
  }

  else
  {
    v3 = sub_1BC7357AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC7357AC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[2];
  v7 = v0[3];

  sub_1BC7391B0(v8, v5, type metadata accessor for Report.Evidence);
  Report.Evidence.prepareForCK(with:at:progress:)(v4, v3, v6);
  if (v1)
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_1BC739260(v0[10], type metadata accessor for Report.Evidence);
    (*(v10 + 8))(v9, v11);
    v12 = v0[18];
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[17];
    v17 = v0[13];
    v16 = v0[14];
    v19 = v0[9];
    v18 = v0[10];
    v27 = v0[8];
    v28 = v0[7];
    v29 = v0[4];
    sub_1BC7369C0();
    v12(v15, v16);

    v20 = v0[1];

    return v20();
  }

  else
  {
    type metadata accessor for CloudKitWrapper();
    v22 = sub_1BC72B940();
    v0[24] = v22;
    v23 = *(*v22 + 104);
    v30 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_1BC735A44;
    v26 = v0[9];

    return v30(v26);
  }
}

uint64_t sub_1BC735A44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_1BC736634;
  }

  else
  {
    v5 = sub_1BC735B58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BC735B58()
{
  if (qword_1EBCF2C50 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC75A4E0();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_1EBCF2C58);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Successfully uploaded encrypted report to CloudKit", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 72);

  v8 = [v5 recordID];
  v9 = [v8 recordName];

  sub_1BC75BB60();
  v10 = *v7;
  v11 = v7[1];
  v12 = sub_1BC75B8D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1BC6AE090(v10, v11);
  v15 = sub_1BC75B8C0();
  *(v0 + 232) = v15;
  if (v6)
  {
    v16 = *(v0 + 192);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 72);

    sub_1BC739260(v21, type metadata accessor for CloudKitReport);
    sub_1BC739260(v20, type metadata accessor for Report.Evidence);
    (*(v18 + 8))(v17, v19);
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    v38 = *(v0 + 56);
    v39 = *(v0 + 32);
    sub_1BC7369C0();
    v22(v25, v26);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v33 = v15;
    v34 = *(v0 + 160);
    *(v0 + 240) = sub_1BC75B880();
    v35 = *(MEMORY[0x1E69DB568] + 4);
    v36 = swift_task_alloc();
    *(v0 + 248) = v36;
    *v36 = v0;
    v36[1] = sub_1BC735EA4;
    v37 = *(v0 + 32);

    return MEMORY[0x1EEE4B588](v37, v33);
  }
}

uint64_t sub_1BC735EA4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BC735FBC, 0, 0);
}

uint64_t sub_1BC735FBC()
{
  v67 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[28];
  if (v4 == 1)
  {
    sub_1BC66008C(v3, &qword_1EBCDED98, &qword_1BC76DAA0);
    v6 = sub_1BC75A4C0();
    v7 = sub_1BC75BF80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BC630000, v6, v7, "Successfully uploaded TKRecord to TrustKit.", v8, 2u);
      MEMORY[0x1BFB27EF0](v8, -1, -1);
    }

    v9 = v0[29];
    v10 = v0[24];
    v53 = v0[18];
    v55 = v0[19];
    v11 = v0[17];
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v57 = v0[16];
    v59 = v0[8];
    v60 = v0[7];
    v63 = v0[4];

    sub_1BC739260(v16, type metadata accessor for CloudKitReport);
    sub_1BC739260(v17, type metadata accessor for Report.Evidence);
    (*(v15 + 8))(v13, v14);
    sub_1BC7369C0();
    v53(v11, v12);

    v18 = v0[1];
    v19 = v0[26];

    return v18(v19);
  }

  else
  {
    v22 = v0[7];
    v21 = v0[8];
    (*(v2 + 32))(v21, v3, v1);
    v64 = *(v2 + 16);
    v64(v22, v21, v1);
    v23 = sub_1BC75A4C0();
    v24 = sub_1BC75BF60();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66 = v58;
      *v29 = 136315138;
      sub_1BC739218(&unk_1EBCDEDA0, MEMORY[0x1E69DB578]);
      v30 = sub_1BC75C6A0();
      v32 = v31;
      v61 = *(v27 + 8);
      v61(v26, v28);
      v33 = sub_1BC674BD8(v30, v32, &v66);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1BC630000, v23, v24, "Failed to upload TKRecord to TrustKit: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1BFB27EF0](v58, -1, -1);
      MEMORY[0x1BFB27EF0](v29, -1, -1);
    }

    else
    {

      v61 = *(v27 + 8);
      v61(v26, v28);
    }

    v34 = v0[29];
    v35 = v0[26];
    v36 = v0[24];
    v37 = v0[12];
    v54 = v0[11];
    v56 = v0[13];
    v52 = v0[10];
    v39 = v0[8];
    v38 = v0[9];
    v40 = v0[5];
    sub_1BC739218(&unk_1EBCDEDA0, MEMORY[0x1E69DB578]);
    swift_allocError();
    v64(v41, v39, v40);
    swift_willThrow();

    v61(v39, v40);
    sub_1BC739260(v38, type metadata accessor for CloudKitReport);
    sub_1BC739260(v52, type metadata accessor for Report.Evidence);
    (*(v37 + 8))(v56, v54);
    v43 = v0[18];
    v42 = v0[19];
    v45 = v0[16];
    v44 = v0[17];
    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[9];
    v48 = v0[10];
    v50 = v0[8];
    v62 = v0[7];
    v65 = v0[4];
    sub_1BC7369C0();
    v43(v44, v46);

    v51 = v0[1];

    return v51();
  }
}

uint64_t sub_1BC736538()
{
  v1 = v0[21];

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[23];
  sub_1BC7369C0();
  v3(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BC736634()
{
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  sub_1BC739260(v6, type metadata accessor for CloudKitReport);
  sub_1BC739260(v5, type metadata accessor for Report.Evidence);
  (*(v3 + 8))(v2, v4);
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  v18 = v0[7];
  v19 = v0[4];
  v20 = v0[27];
  sub_1BC7369C0();
  v8(v9, v11);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BC7368CC()
{
  sub_1BC739260(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, type metadata accessor for Report.Authority);
  v1 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock + 8);

  sub_1BC66008C(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence, &qword_1EBCDED80, &unk_1BC76A3C0);
  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel___observationRegistrar;
  v3 = sub_1BC759A90();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1BC7369C0()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1BC759770();
  v17[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v17];

  v3 = v17[0];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC761600;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0xD000000000000023;
    *(v4 + 40) = 0x80000001BC7746E0;
    v5 = v3;
    sub_1BC75C6F0();
  }

  else
  {
    v6 = v17[0];
    v7 = sub_1BC759720();

    swift_willThrow();
    if (qword_1EBCF2C50 != -1)
    {
      swift_once();
    }

    v8 = sub_1BC75A4E0();
    __swift_project_value_buffer(v8, qword_1EBCF2C58);
    v9 = v7;
    v10 = sub_1BC75A4C0();
    v11 = sub_1BC75BF60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1BC630000, v10, v11, "Failed to delete report folder: %@", v12, 0xCu);
      sub_1BC66008C(v13, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v13, -1, -1);
      MEMORY[0x1BFB27EF0](v12, -1, -1);
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BC736C54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC736C98, 0, 0);
}

uint64_t sub_1BC736C98()
{
  if (qword_1EBCF2C50 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC75A4E0();
  v0[6] = __swift_project_value_buffer(v1, qword_1EBCF2C58);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Fetching encryption key from TrustKit.", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v5 = v0[5];

  v0[7] = sub_1BC75B880();
  v6 = *(MEMORY[0x1E69DB560] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1BC736DF8;

  return MEMORY[0x1EEE4B578]();
}

uint64_t sub_1BC736DF8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v9 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v6 = sub_1BC73702C;
  }

  else
  {
    v7 = v4[7];

    v6 = sub_1BC736F18;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BC736F18()
{
  v1 = *(v0 + 48);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Successfully fetched encryption key data.", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 32);
  v9 = *(v0 + 72);

  *(v0 + 16) = v9;
  sub_1BC75B9D0();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BC73702C()
{
  v1 = v0[7];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

id sub_1BC737090()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    v5 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v0 delegateQueue:0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1BC73714C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_1BC759800();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_1BC759500();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = sub_1BC75C380();
  v3[24] = v10;
  v11 = *(v10 - 8);
  v3[25] = v11;
  v12 = *(v11 + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7372C8, 0, 0);
}

uint64_t sub_1BC7372C8()
{
  v1 = sub_1BC7012B4();
  v0[27] = v1;
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[23];
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[18];
    v6 = v0[15];
    v7 = v0[16];
    v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    (*(v4 + 16))(v3, v7 + *(v8 + 32), v5);
    sub_1BC7594D0();
    sub_1BC7594C0();
    sub_1BC7594E0();
    v9 = sub_1BC7595D0();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1BC7595C0();
    type metadata accessor for Report.Evidence(0);
    sub_1BC739218(&qword_1EBCDEE58, type metadata accessor for Report.Evidence);
    v12 = sub_1BC7595A0();
    v0[30] = v12;
    v0[31] = v13;
    v20 = v12;
    v21 = v13;
    v22 = v0[27];

    swift_beginAccess();
    v23 = type metadata accessor for Report.TestingOptions(0);
    v0[32] = v23;
    if (*(v22 + *(v23 + 28)) == 1)
    {
      v24 = *(v9 + 48);
      v25 = *(v9 + 52);
      swift_allocObject();
      sub_1BC7595C0();
      v0[13] = 0x796D6D7544;
      v0[14] = 0xE500000000000000;
      sub_1BC7395F8();
      sub_1BC7595A0();
      v26 = v0[23];
    }

    else
    {
      v27 = v0[23];
      sub_1BC6AE090(v20, v21);
    }

    sub_1BC7594F0();
    v28 = v0[17];
    v0[33] = sub_1BC737090();
    v29 = *(MEMORY[0x1E6969EC0] + 4);
    v30 = swift_task_alloc();
    v0[34] = v30;
    *v30 = v0;
    v30[1] = sub_1BC737C40;
    v31 = v0[23];

    return MEMORY[0x1EEDC6260](v31, 0);
  }

  else
  {
    v14 = v0[26];
    v16 = *v1;
    v15 = *(v1 + 8);
    sub_1BC75C670();
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = sub_1BC7376F4;
    v18 = v0[26];

    return sub_1BC738864(v16, v15, 0, 0, 1);
  }
}

uint64_t sub_1BC7376F4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[25] + 8))(v2[26], v2[24]);
  if (v0)
  {
    v5 = sub_1BC737BBC;
  }

  else
  {
    v5 = sub_1BC73785C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BC73785C()
{
  v1 = v0[29];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  (*(v4 + 16))(v3, v7 + *(v8 + 32), v5);
  sub_1BC7594D0();
  sub_1BC7594C0();
  sub_1BC7594E0();
  v9 = sub_1BC7595D0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1BC7595C0();
  type metadata accessor for Report.Evidence(0);
  sub_1BC739218(&qword_1EBCDEE58, type metadata accessor for Report.Evidence);
  v12 = sub_1BC7595A0();
  v0[30] = v12;
  v0[31] = v13;
  if (v1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v14 = v0[26];
    v15 = v0[23];
    v16 = v0[20];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v12;
    v20 = v13;
    v21 = v0[27];

    swift_beginAccess();
    v22 = type metadata accessor for Report.TestingOptions(0);
    v0[32] = v22;
    if (*(v21 + *(v22 + 28)) == 1)
    {
      v23 = *(v9 + 48);
      v24 = *(v9 + 52);
      swift_allocObject();
      sub_1BC7595C0();
      v0[13] = 0x796D6D7544;
      v0[14] = 0xE500000000000000;
      sub_1BC7395F8();
      sub_1BC7595A0();
      v25 = v0[23];
    }

    else
    {
      v26 = v0[23];
      sub_1BC6AE090(v19, v20);
    }

    sub_1BC7594F0();
    v27 = v0[17];
    v0[33] = sub_1BC737090();
    v28 = *(MEMORY[0x1E6969EC0] + 4);
    v29 = swift_task_alloc();
    v0[34] = v29;
    *v29 = v0;
    v29[1] = sub_1BC737C40;
    v30 = v0[23];

    return MEMORY[0x1EEDC6260](v30, 0);
  }
}

uint64_t sub_1BC737BBC()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BC737C40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 272);
  v9 = *v4;
  v7[35] = a1;
  v7[36] = a2;
  v7[37] = v3;

  v10 = v6[33];
  if (v3)
  {

    v11 = sub_1BC737FB0;
  }

  else
  {

    v11 = sub_1BC737D8C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1BC737D8C()
{
  v1 = v0[32];
  v2 = v0[27];
  swift_beginAccess();
  if (*(v2 + *(v1 + 32)))
  {
    v4 = v0[35];
    v3 = v0[36];
    v6 = v0[30];
    v5 = v0[31];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v10 = nullsub_1(0x3535353535353535);
    v12 = v11;
    sub_1BC6AE140(v4, v3);
    sub_1BC6AE140(v6, v5);
    (*(v8 + 8))(v7, v9);
LABEL_8:
    v28 = v0[26];
    v29 = v0[23];
    v30 = v0[20];

    v31 = v0[1];

    return v31(v10, v12);
  }

  v13 = v0[36];
  v14 = v0[37];
  v15 = v0[35];
  v16 = sub_1BC759530();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1BC759520();
  sub_1BC7395A4();
  sub_1BC759510();
  v20 = v0[35];
  v19 = v0[36];
  v22 = v0[30];
  v21 = v0[31];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_1BC6AE140(v22, v21);

  sub_1BC6AE140(v20, v19);
  if (!v14)
  {
    v10 = v0[11];
    v12 = v0[12];
    goto LABEL_8;
  }

  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1BC737FB0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1BC6AE140(v0[30], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BC7381EC(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, 0, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

id sub_1BC73826C()
{
  v19 = sub_1BC759730();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1BC759940();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session] = 0;
  v21 = 0x454D454C504D492FLL;
  v22 = 0xEB000000002F544ELL;
  sub_1BC759930();
  sub_1BC739218(&unk_1EBCDEE40, MEMORY[0x1E69695A8]);
  v14 = sub_1BC75C590();
  MEMORY[0x1BFB267E0](v14);

  (*(v10 + 8))(v13, v9);
  v15 = sub_1BC759800();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v19);
  sub_1BC7597F0();
  v16 = type metadata accessor for DirectReportNetworkManager(0);
  v20.receiver = v0;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_1BC73855C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectReportNetworkManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC738628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6968746F6ELL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC7386B0(uint64_t a1)
{
  v2 = sub_1BC7398AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7386EC(uint64_t a1)
{
  v2 = sub_1BC7398AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC738728(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE98, &qword_1BC76DC28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7398AC();
  sub_1BC75C740();
  sub_1BC75C530();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BC738864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BC75C370();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BC738964, 0, 0);
}

uint64_t sub_1BC738964()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1BC75C380();
  v7 = sub_1BC739218(&qword_1EBCDEE68, MEMORY[0x1E69E8820]);
  sub_1BC75C650();
  sub_1BC739218(&qword_1EBCDEE70, MEMORY[0x1E69E87E8]);
  sub_1BC75C390();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1BC738AF4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1BC738AF4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BC738CB0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1BC738CB0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1BC738D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Evidence(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE80, &qword_1BC76DB80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BC660024(a1, &v23 - v16, &qword_1EBCDED80, &unk_1BC76A3C0);
  sub_1BC660024(a2, &v17[v18], &qword_1EBCDED80, &unk_1BC76A3C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BC660024(v17, v12, &qword_1EBCDED80, &unk_1BC76A3C0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1BC69B938(&v17[v18], v8, type metadata accessor for Report.Evidence);
      sub_1BC739218(&qword_1EBCDEE88, type metadata accessor for Report.Evidence);
      v21 = sub_1BC75BAB0();
      sub_1BC739260(v8, type metadata accessor for Report.Evidence);
      sub_1BC739260(v12, type metadata accessor for Report.Evidence);
      sub_1BC66008C(v17, &qword_1EBCDED80, &unk_1BC76A3C0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_1BC739260(v12, type metadata accessor for Report.Evidence);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v17, &qword_1EBCDEE80, &qword_1BC76DB80);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BC66008C(v17, &qword_1EBCDED80, &unk_1BC76A3C0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BC73903C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7390AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  sub_1BC739818(v1, v2 + v3);
  return swift_endAccess();
}

unint64_t sub_1BC73913C()
{
  result = qword_1EBCDED90;
  if (!qword_1EBCDED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED90);
  }

  return result;
}

uint64_t sub_1BC7391B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC739218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC739260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC7392C8()
{
  v0 = type metadata accessor for Report.Authority(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1BC7393E8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1BC759A90();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BC7393E8()
{
  if (!qword_1EBCDEDB0)
  {
    type metadata accessor for Report.Evidence(255);
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDEDB0);
    }
  }
}

uint64_t sub_1BC739448()
{
  result = sub_1BC759800();
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

uint64_t sub_1BC7394E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC65281C;

  return sub_1BC7381EC(v2, v3, v5);
}

unint64_t sub_1BC7395A4()
{
  result = qword_1EBCDEE60;
  if (!qword_1EBCDEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEE60);
  }

  return result;
}

unint64_t sub_1BC7395F8()
{
  result = qword_1EBCF2D38[0];
  if (!qword_1EBCF2D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2D38);
  }

  return result;
}

uint64_t sub_1BC73964C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC660280;

  return sub_1BC7347D8(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_1BC739760(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC734A20(a1, a2, v2 + v6, v7);
}

uint64_t sub_1BC739818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7398AC()
{
  result = qword_1EBCF2DC0[0];
  if (!qword_1EBCF2DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2DC0);
  }

  return result;
}

unint64_t sub_1BC739914()
{
  result = qword_1EBCF2ED0[0];
  if (!qword_1EBCF2ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2ED0);
  }

  return result;
}

unint64_t sub_1BC73996C()
{
  result = qword_1EBCF2FE0[0];
  if (!qword_1EBCF2FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2FE0);
  }

  return result;
}

unint64_t sub_1BC7399C4()
{
  result = qword_1EDDD0148[0];
  if (!qword_1EDDD0148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0148);
  }

  return result;
}

void sub_1BC739AF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1BC73A1F4(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1BC75BA40();
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v5(v6, sub_1BC742528, v8);
}

void sub_1BC73A2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BC759710();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1BC73A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BC75BA30();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BC700514;
  v11[3] = &block_descriptor_155;
  v8 = _Block_copy(v11);
  v9 = *(a4 + 16);

  v9(a4, v7, v8);
  _Block_release(v8);
}

id sub_1BC73A6A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC67768C;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1BC73A8B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind;
  swift_beginAccess();
  return sub_1BC660024(v1 + v3, a1, &qword_1EBCDEEF8, &qword_1BC76DD50);
}

uint64_t sub_1BC73A9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  sub_1BC660024(a1, &v9 - v6, &qword_1EBCDEEF8, &qword_1BC76DD50);
  return (*(**a2 + 184))(v7);
}

uint64_t sub_1BC73AA74(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();

  return sub_1BC66008C(a1, &qword_1EBCDEEF8, &qword_1BC76DD50);
}

void (*sub_1BC73AB60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73A858();
  return sub_1BC73ACB0;
}

uint64_t sub_1BC73AD3C()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1BC73ADC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73AE14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t sub_1BC73AE68(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();
}

uint64_t sub_1BC73AF10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

void (*sub_1BC73AF7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73ACDC();
  return sub_1BC73B0CC;
}

uint64_t sub_1BC73B138@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v4 = sub_1BC759D50();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BC73B250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759D50();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 280))(v7);
}

uint64_t sub_1BC73B350(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC759D50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BC73B5D4(&qword_1EBCDBC90, MEMORY[0x1E697B4C0]);
  v16 = a1;
  LOBYTE(a1) = sub_1BC75BAB0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    v14 = v16;
    *(&v16 - 2) = v2;
    *(&v16 - 1) = v14;
    (*(*v2 + 504))(v13, sub_1BC73B61C);
  }

  return (v11)(v16, v4);
}

uint64_t sub_1BC73B5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC73B61C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v4 = sub_1BC759D50();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

void (*sub_1BC73B6B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73B0D8();
  return sub_1BC73B804;
}

void *sub_1BC73B870()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1BC73B900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73B954(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);
  v4 = *a1;
  return v3(v2);
}

void sub_1BC73B9B4(void *a1)
{
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 504))(v10, sub_1BC73BB30);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BC75C040();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1BC73BB30()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

void (*sub_1BC73BB9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73B810();
  return sub_1BC73BCEC;
}

uint64_t sub_1BC73BD58(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC73BDBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout;
  swift_beginAccess();
  return sub_1BC741CAC(v1 + v3, a1, _s6LayoutVMa);
}

uint64_t sub_1BC73BEB8(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC741CAC(a1, v7, _s6LayoutVMa);
  return (*(**a2 + 376))(v7);
}

uint64_t sub_1BC73BF8C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();

  return sub_1BC741C4C(a1, _s6LayoutVMa);
}

uint64_t sub_1BC73C07C(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  swift_beginAccess();
  a2(v4, v5 + v6);
  return swift_endAccess();
}

void (*sub_1BC73C0F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73BCF8();
  return sub_1BC73C240;
}

void (*sub_1BC73C24C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__wrapper;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC73C2E4;
}

void sub_1BC73C2E4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
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

uint64_t sub_1BC73C360()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BC73C3EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73C440(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 424);
  v4 = *a1;
  return v3(v2);
}

void sub_1BC73C4A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for SCUISensitiveContentOverlayView(Strong);
      v5 = v4;
      v6 = sub_1BC75C040();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 504))(v8, sub_1BC73C600);
}

uint64_t sub_1BC73C600()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*sub_1BC73C674(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73C24C(v4);
  return sub_1BC73C7C4;
}

uint64_t sub_1BC73C830()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BC73C8B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BC73C960(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 504))(v6, sub_1BC73CA64);
  }

  return result;
}

uint64_t sub_1BC73CA64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_1BC73CAC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa);
  sub_1BC759A70();

  v4[7] = sub_1BC73C7D0();
  return sub_1BC73CC10;
}

uint64_t sub_1BC73CC1C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BC73CC5C(a1);
  return v5;
}

uint64_t sub_1BC73CC5C(uint64_t a1)
{
  v3 = _s6LayoutVMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759D50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind;
  v13 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  sub_1BC759D40();
  (*(v8 + 32))(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription, v11, v7);
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp) = 0;
  sub_1BC759A80();
  *(v1 + 16) = a1;
  sub_1BC6EBE54(v6);
  sub_1BC73BD58(v6, v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout);
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds) = MEMORY[0x1E69E7CC0];
  return v1;
}

uint64_t sub_1BC73CF84()
{
  sub_1BC66008C(v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind, &qword_1EBCDEEF8, &qword_1BC76DD50);
  v1 = *(v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds);

  v2 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  v3 = sub_1BC759D50();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1BC741C4C(v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout, _s6LayoutVMa);
  MEMORY[0x1BFB27FD0](v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__wrapper);
  v4 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  v5 = sub_1BC759A90();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC73D0D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF08, &qword_1BC76DE78);
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v120 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF10, &qword_1BC76DE80);
  v122 = *(v9 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v120 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF18, &qword_1BC76DE88);
  v123 = *(v126 - 8);
  v13 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v144 = &v120 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF20, &qword_1BC76DE90);
  v127 = *(v146 - 8);
  v15 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v125 = &v120 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF28, &qword_1BC76DE98);
  v128 = *(v148 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v120 - v18;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF30, &qword_1BC76DEA0);
  v129 = *(v130 - 8);
  v19 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v147 = &v120 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF38, &qword_1BC76DEA8);
  v131 = *(v151 - 8);
  v21 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v120 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF40, &qword_1BC76DEB0);
  v132 = *(v153 - 8);
  v23 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v150 = &v120 - v24;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF48, &qword_1BC76DEB8);
  v133 = *(v154 - 8);
  v25 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v120 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF50, &qword_1BC76DEC0);
  v135 = *(v138 - 8);
  v27 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v134 = &v120 - v28;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF58, &qword_1BC76DEC8);
  v139 = *(v142 - 8);
  v29 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v31 = &v120 - v30;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF60, &unk_1BC76DED0);
  v140 = *(v141 - 8);
  v32 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v137 = &v120 - v33;
  v161 = sub_1BC75B520();
  v162 = 256;
  v34 = a1;
  v35 = a1;
  v36 = a2;
  sub_1BC73E644(v35, a2, &v159);
  v37 = v159;
  v136 = v31;
  v124 = v9;
  if ((~v159 & 0xF000000000000007) != 0)
  {
    v160 = v159;
  }

  else
  {
    v160 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC75B750();
    v38 = v157;
    static SensitiveContentOverlay.Kind.standard(_:)(v155, v156, v157, &v160);

    v37 = v160;
  }

  v155 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  v40 = sub_1BC73F0A4();
  View.sensitiveContentShield(_:)(&v155, v39, v8);
  sub_1BC694EE8(v155);

  v155 = v34;
  v156 = v36;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v41 = sub_1BC75B640();
  v42 = (*(*v161 + 320))(v41);

  v161 = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v34;
  *(v43 + 24) = v36;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  v155 = v39;
  v156 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1BC73F25C();
  sub_1BC75B420();

  (*(v121 + 8))(v8, v5);
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v36;

  v155 = v5;
  v156 = v44;
  v157 = OpaqueTypeConformance2;
  v158 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v124;
  View.onShowContent(_:)(sub_1BC73F348, v47);

  v50 = v12;
  v51 = v36;
  v52 = v34;
  (*(v122 + 8))(v50, v49);
  v155 = v34;
  v156 = v51;
  v53 = sub_1BC75B640();
  v54 = (*(*v161 + 416))(v53);

  if (v54)
  {
    v55 = [v54 onHideContent];

    v56 = v130;
    if (v55)
    {
      v54 = swift_allocObject();
      v54[2] = v55;
      v57 = sub_1BC742928;
    }

    else
    {
      v57 = 0;
      v54 = 0;
    }
  }

  else
  {
    v57 = 0;
    v56 = v130;
  }

  v155 = v49;
  v156 = v48;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v125;
  v60 = v126;
  v61 = v144;
  View.onHideContent(_:)(v57, v54, v126, v58);
  sub_1BC635484(v57);
  (*(v123 + 8))(v61, v60);
  v62 = swift_allocObject();
  *(v62 + 16) = v34;
  *(v62 + 24) = v51;

  v155 = v60;
  v156 = v58;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v146;
  View.onShieldUp(_:)(sub_1BC73F358, v62, v146, v63);

  (*(v127 + 8))(v59, v64);
  v155 = v34;
  v156 = v51;
  v65 = sub_1BC75B640();
  v66 = (*(*v161 + 416))(v65);

  if (v66)
  {
    v67 = [v66 onDeleteContent];

    v68 = v136;
    if (v67)
    {
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      v70 = sub_1BC742928;
    }

    else
    {
      v70 = 0;
      v69 = 0;
    }
  }

  else
  {
    v70 = 0;
    v69 = 0;
    v68 = v136;
  }

  v155 = v146;
  v156 = v63;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v148;
  v73 = v145;
  View.onDeleteContent(_:)(v70, v69, v148, v71);
  sub_1BC635484(v70);
  (*(v128 + 8))(v73, v72);
  v155 = v34;
  v156 = v51;
  v74 = sub_1BC75B640();
  v75 = (*(*v161 + 416))(v74);

  if (v75)
  {
    v76 = [v75 onMessageSomeone];

    if (v76)
    {
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      v76 = sub_1BC742928;
      goto LABEL_19;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = 0;
LABEL_19:
  v155 = v148;
  v156 = v71;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v147;
  View.onMessageSomeone(_:)(v76, v77, v56, v78);
  sub_1BC635484(v76);
  (*(v129 + 8))(v79, v56);
  v155 = v34;
  v156 = v51;
  v80 = sub_1BC75B640();
  v81 = (*(*v161 + 416))(v80);

  if (v81)
  {
    v82 = [v81 onBlockParticipant];

    if (v82)
    {
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      v82 = sub_1BC742928;
      goto LABEL_24;
    }
  }

  else
  {
    v82 = 0;
  }

  v83 = 0;
LABEL_24:
  v155 = v56;
  v156 = v78;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v151;
  v86 = v149;
  View.onBlockParticipant(_:)(v82, v83, v151, v84);
  sub_1BC635484(v82);
  (*(v131 + 8))(v86, v85);
  v155 = v34;
  v156 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v87 = sub_1BC75B640();
  v88 = (*(*v161 + 416))(v87);

  if (v88)
  {
    v89 = [v88 onReportEvidenceRequested];

    if (v89)
    {
      v90 = swift_allocObject();
      *(v90 + 16) = v89;
      v89 = swift_allocObject();
      v89[2] = sub_1BC742924;
      v89[3] = v90;
      v91 = &unk_1BC76E078;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
    v89 = 0;
  }

  v155 = v151;
  v156 = v84;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v153;
  v94 = v150;
  View.onReportEvidenceRequest(_:)(v91, v89, v153, v92);
  sub_1BC635484(v91);
  (*(v132 + 8))(v94, v93);
  v155 = v52;
  v156 = v51;
  v95 = sub_1BC75B640();
  v96 = (*(*v161 + 416))(v95);

  if (v96)
  {
    v97 = [v96 onLeaveConversation];

    v98 = v134;
    v99 = v68;
    if (v97)
    {
      v100 = swift_allocObject();
      *(v100 + 16) = v97;
      v97 = sub_1BC742928;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v99 = v68;
    v97 = 0;
    v100 = 0;
    v98 = v134;
  }

  v155 = v153;
  v156 = v92;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v154;
  v103 = v152;
  View.onLeaveConversation(_:)(v97, v100, v154, v101);
  sub_1BC635484(v97);
  (*(v133 + 8))(v103, v102);
  v155 = v52;
  v156 = v51;
  v104 = sub_1BC75B640();
  v105 = (*(*v161 + 416))(v104);

  if (v105)
  {
    v106 = [v105 onEndCall];

    v107 = v99;
    if (v106)
    {
      v108 = swift_allocObject();
      *(v108 + 16) = v106;
      v106 = sub_1BC742928;
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {
    v106 = 0;
    v108 = 0;
    v107 = v99;
  }

  v109 = v138;
  v155 = v154;
  v156 = v101;
  v110 = swift_getOpaqueTypeConformance2();
  View.onEndCall(_:)(v106, v108, v109, v110);
  sub_1BC635484(v106);
  (*(v135 + 8))(v98, v109);
  v155 = v52;
  v156 = v51;
  v111 = sub_1BC75B640();
  v112 = (*(*v161 + 416))(v111);

  if (!v112)
  {
    v113 = 0;
    goto LABEL_43;
  }

  v113 = [v112 onUnsubscribe];

  if (!v113)
  {
LABEL_43:
    v114 = 0;
    goto LABEL_44;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v113 = sub_1BC678AD4;
LABEL_44:
  v155 = v109;
  v156 = v110;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = v137;
  v117 = v142;
  View.onUnsubscribe(_:)(v113, v114, v142, v115);
  sub_1BC635484(v113);
  (*(v139 + 8))(v107, v117);
  v155 = v117;
  v156 = v115;
  swift_getOpaqueTypeConformance2();
  v118 = v141;
  sub_1BC6A2784();
  return (*(v140 + 8))(v116, v118);
}

uint64_t sub_1BC73E644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v62 - v8);
  v67 = a1;
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v10 = sub_1BC75B640();
  (*(*v70 + 176))(v10);

  v11 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  result = (*(*(v11 - 8) + 48))(v9, 1, v11);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 5)
    {
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1BC741C4C(v9, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
        v15 = swift_allocObject();
        v70 = a1;
        v71 = a2;
        sub_1BC75B660();
        v16 = v67;
        v17 = v68;
        v18 = v69;
        swift_getKeyPath();
        v67 = v16;
        v68 = v17;
        v69 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v13 = v15 | 0xC000000000000000;
        goto LABEL_22;
      }

      sub_1BC741C4C(v9, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
      v67 = a1;
      v68 = a2;
      sub_1BC75B640();
      v52 = v70[2];

      if ((v52 & 8) == 0)
      {
        v53 = swift_allocObject();
        v70 = a1;
        v71 = a2;
        sub_1BC75B660();
        v54 = v67;
        v55 = v68;
        v56 = v69;
        swift_getKeyPath();
        v67 = v54;
        v68 = v55;
        v69 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v70 = a1;
        v71 = a2;
        sub_1BC75B640();
        v57 = v66[2];

        *(v53 + 40) = v57;
        *a3 = v53;
        return result;
      }

LABEL_21:
      v58 = swift_allocObject();
      v70 = a1;
      v71 = a2;
      sub_1BC75B660();
      v59 = v67;
      v60 = v68;
      v61 = v69;
      swift_getKeyPath();
      v67 = v59;
      v68 = v60;
      v69 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v13 = v58 | 0xB000000000000000;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {

        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v40 = swift_allocBox();
        v63 = *(v39 + 48);
        v64 = v40;
        v70 = a1;
        v71 = a2;
        sub_1BC75B660();
        v41 = v67;
        v42 = v68;
        v62 = v67;
        v43 = v69;
        swift_getKeyPath();
        v67 = v41;
        v68 = v42;
        v69 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v70 = a1;
        v71 = a2;
        v44 = sub_1BC75B640();
        (*(*v66 + 272))(v44);

        v32 = 0x9000000000000000;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_1BC741C4C(v9, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
          goto LABEL_21;
        }

        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v27 = swift_allocBox();
        v63 = *(v26 + 48);
        v64 = v27;
        v70 = a1;
        v71 = a2;
        sub_1BC75B660();
        v28 = v67;
        v29 = v68;
        v62 = v67;
        v30 = v69;
        swift_getKeyPath();
        v67 = v28;
        v68 = v29;
        v69 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v70 = a1;
        v71 = a2;
        v31 = sub_1BC75B640();
        (*(*v66 + 272))(v31);

        v32 = 0xA000000000000000;
      }

      v25 = v64 | v32;
    }

    else if (EnumCaseMultiPayload == 6)
    {

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v34 = swift_allocBox();
      v63 = *(v33 + 48);
      v64 = v34;
      v70 = a1;
      v71 = a2;
      sub_1BC75B660();
      v35 = v67;
      v36 = v68;
      v62 = v67;
      v37 = v69;
      swift_getKeyPath();
      v67 = v35;
      v68 = v36;
      v69 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v70 = a1;
      v71 = a2;
      v38 = sub_1BC75B640();
      (*(*v66 + 272))(v38);

      v25 = v64 | 0x6000000000000000;
    }

    else if (EnumCaseMultiPayload == 7)
    {

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v20 = swift_allocBox();
      v63 = *(v19 + 48);
      v64 = v20;
      v70 = a1;
      v71 = a2;
      sub_1BC75B660();
      v21 = v67;
      v22 = v68;
      v62 = v67;
      v23 = v69;
      swift_getKeyPath();
      v67 = v21;
      v68 = v22;
      v69 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v70 = a1;
      v71 = a2;
      v24 = sub_1BC75B640();
      (*(*v66 + 272))(v24);

      v25 = v64 | 0x7000000000000000;
    }

    else
    {

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v46 = swift_allocBox();
      v63 = *(v45 + 48);
      v64 = v46;
      v70 = a1;
      v71 = a2;
      sub_1BC75B660();
      v47 = v67;
      v48 = v68;
      v62 = v67;
      v49 = v69;
      swift_getKeyPath();
      v67 = v47;
      v68 = v48;
      v69 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v70 = a1;
      v71 = a2;
      v50 = sub_1BC75B640();
      (*(*v66 + 272))(v50);

      v25 = v64 | 0x8000000000000000;
    }

    *a3 = v25;
    v51 = sub_1BC759D50();
    return (*(*(v51 - 8) + 8))(v9 + v65, v51);
  }

  v13 = 0xF000000000000007;
LABEL_22:
  *a3 = v13;
  return result;
}

unint64_t sub_1BC73F0A4()
{
  result = qword_1EDDCE160;
  if (!qword_1EDDCE160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE160);
  }

  return result;
}

void sub_1BC73F108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v3 = sub_1BC75B640();
  v4 = (*(*v8 + 320))(v3);

  if (v4)
  {
    v5 = sub_1BC75B640();
    v6 = (*(*v8 + 416))(v5);

    if (v6)
    {
      v7 = [v6 onAnalysisChanged];

      if (v7)
      {
        v7[2](v7, v4);
        _Block_release(v7);
      }
    }
  }
}

unint64_t sub_1BC73F25C()
{
  result = qword_1EDDCDF78;
  if (!qword_1EDDCDF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC73F2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDF78);
  }

  return result;
}

unint64_t sub_1BC73F2E0()
{
  result = qword_1EDDCDF70;
  if (!qword_1EDDCDF70)
  {
    sub_1BC65F664(255, &qword_1EDDCDF98, 0x1E697B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDF70);
  }

  return result;
}

uint64_t sub_1BC73F368(SEL *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v7 = sub_1BC75B640();
  v8 = (*(*v11 + 416))(v7);

  if (v8)
  {
    v9 = [v8 *a1];

    if (v9)
    {
      v9[2](v9);
      _Block_release(v9);
    }
  }

  sub_1BC75B640();
  (*(*v11 + 472))(a2 & 1);
}

uint64_t sub_1BC73F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = sub_1BC75BDE0();
  v3[7] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC73F55C, v5, v4);
}

uint64_t sub_1BC73F55C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v10 = *(v0 + 32);
  v3 = sub_1BC75BDD0();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = sub_1BC65F664(0, &qword_1EBCDEFA0, off_1E7FF1288);
  *v6 = v0;
  v6[1] = sub_1BC73F694;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v3, v8, 0xD00000000000001CLL, 0x80000001BC774B10, sub_1BC7426E8, v4, v7);
}

uint64_t sub_1BC73F694()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1BC73F820;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1BC73F7B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC73F7B8()
{
  v1 = v0[7];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1BC73F820()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1BC73F898(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(void *a1, void *a2), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  a2(a4, sub_1BC7426F4, v13);
}

char *sub_1BC73FA58(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onShowContent];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onHideContent];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onDeleteContent];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onShieldUp];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onMessageSomeone];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onLeaveConversation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onBlockParticipant];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onEndCall];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onUnsubscribe];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v2[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView] = 0;
  v15 = _s14ForwardedStateCMa(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_1BC73CC5C(a1);
  *&v2[OBJC_IVAR___SCUISensitiveContentOverlayView_state] = v18;
  v44.receiver = v2;
  v44.super_class = SCUISensitiveContentOverlayView;
  v19 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR___SCUISensitiveContentOverlayView_state;
  v21 = *(**&v19[OBJC_IVAR___SCUISensitiveContentOverlayView_state] + 424);
  v22 = v19;

  v21(v19);

  v43 = *&v19[v20];

  sub_1BC75B630();
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF78, &qword_1BC76DEE8));
  v24 = sub_1BC75A900();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = v22;
  [v25 addSubview_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC768CD0;
  v28 = [v24 topAnchor];
  v29 = [v25 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v27 + 32) = v30;
  v31 = [v24 bottomAnchor];
  v32 = [v25 bottomAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v27 + 40) = v33;
  v34 = [v24 trailingAnchor];
  v35 = [v25 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v27 + 48) = v36;
  v37 = [v24 leadingAnchor];
  v38 = [v25 leadingAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v27 + 56) = v39;
  sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
  v40 = sub_1BC75BCF0();

  [v26 activateConstraints_];

  v41 = *&v25[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView];
  *&v25[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView] = v24;

  return v25;
}

id SCUISensitiveContentOverlayView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void __swiftcall SCUISensitiveContentOverlayView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v6.super_class = SCUISensitiveContentOverlayView;
  v4 = [(UIView_optional *)&v6 hitTest:with.value.super.isa withEvent:_.x, _.y];
  if (v4)
  {
    v5 = v4;
    if (((*(**(v3 + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 464))() & 1) == 0)
    {
    }
  }
}

size_t SCUISensitiveContentOverlayView.configure(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v151 - v4;
  v6 = sub_1BC759D50();
  v166 = *(v6 - 8);
  v167 = v6;
  v7 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v164 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1BC759FE0();
  v9 = *(v171 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v171);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v151 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v16 = *(*(v163 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v163);
  v162 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v151 - v19;
  v20 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v169 = *(v20 - 8);
  v21 = *(v169 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v168 = (&v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v151 - v24;
  sub_1BC75BDE0();
  sub_1BC75C210();
  sub_1BC741CAC(a1, v25, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      v44 = v169;
      if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        v60 = *v25;
        goto LABEL_28;
      }
    }

    else
    {
      v44 = v169;
    }

    v60 = *v25;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0);
    (*(v166 + 8))(&v25[*(v61 + 48)], v167);
LABEL_28:
    v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
    (*(*v32 + 328))(v60);
    goto LABEL_74;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v158 = v20;
      v159 = a1;
      v160 = v5;
      if (EnumCaseMultiPayload == 1)
      {
        v28 = *v25;
        v27 = *(v25 + 1);
        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        v31 = swift_allocObject();
        v171 = v28;
        v172[0] = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
        sub_1BC75B750();
        *(v31 + 40) = v27;
        v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
        v33 = swift_allocObject();
        *(v33 + 16) = v30;
        *(v33 + 24) = v29;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_1BC741D14;
        *(v34 + 24) = v33;
        v35 = *(*v32 + 240);

        v36 = v35(v172);
        v38 = v37;
        v39 = *v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_1BC7419EC(0, v39[2] + 1, 1, v39);
          *v38 = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_1BC7419EC((v41 > 1), v42 + 1, 1, v39);
          *v38 = v39;
        }

        v20 = v158;
        v39[2] = v42 + 1;
        v43 = &v39[3 * v42];
        v43[4] = v31 | 0x5000000000000000;
        v43[5] = sub_1BC6D13F8;
        v43[6] = v34;
        v36(v172, 0);

        a1 = v159;
        v5 = v160;
        goto LABEL_73;
      }

      v79 = *v25;
      v80 = *(v25 + 1);
      v82 = *(v25 + 2);
      v81 = *(v25 + 3);
      v83 = swift_allocObject();
      *(v83 + 16) = v79;
      v172[0] = v80;
      v171 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
      sub_1BC75B750();
      v165 = v83 | 0x1000000000000000;
      v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
      v84 = swift_allocObject();
      *(v84 + 16) = v82;
      *(v84 + 24) = v81;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1BC742958;
      *(v85 + 24) = v84;
      v86 = *(*v32 + 240);

      v87 = v86(v172);
      v89 = v88;
      v90 = *v88;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *v89 = v90;
      if ((v91 & 1) == 0)
      {
        v90 = sub_1BC7419EC(0, v90[2] + 1, 1, v90);
        *v89 = v90;
      }

      v93 = v90[2];
      v92 = v90[3];
      if (v93 >= v92 >> 1)
      {
        v90 = sub_1BC7419EC((v92 > 1), v93 + 1, 1, v90);
        *v89 = v90;
      }

      v5 = v160;
      v90[2] = v93 + 1;
      v94 = &v90[3 * v93];
      v94[4] = v165;
      v94[5] = sub_1BC742920;
      v94[6] = v85;
      v87(v172, 0);

      goto LABEL_40;
    }

    v60 = *v25;
    v44 = v169;
    goto LABEL_28;
  }

  v159 = a1;
  v160 = v5;
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v45 = *v25;
      v46 = *(v25 + 1);
      v47 = *(v25 + 2);
      v154 = *(v25 + 3);
      v162 = *(v25 + 4);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
      v157 = swift_allocBox();
      v152 = v48;
      v155 = v45;
      SCAParticipant.structParticipant.getter();
      v49 = v46;
      if (v46 >> 62)
      {
        v109 = v46;
        v50 = sub_1BC75C3F0();
        v49 = v109;
        v156 = v47;
        if (v50)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v50 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v156 = v47;
        if (v50)
        {
LABEL_16:
          v51 = v49;
          v158 = v20;
          v172[0] = MEMORY[0x1E69E7CC0];
          result = sub_1BC6701A4(0, v50 & ~(v50 >> 63), 0);
          if ((v50 & 0x8000000000000000) == 0)
          {
            v53 = 0;
            v54 = v172[0];
            v55 = v51;
            v165 = v51 & 0xC000000000000001;
            do
            {
              if (v165)
              {
                v56 = MEMORY[0x1BFB26EB0](v53, v55);
              }

              else
              {
                v56 = *(v55 + 8 * v53 + 32);
              }

              v57 = v56;
              SCAParticipant.structParticipant.getter();

              v172[0] = v54;
              v59 = *(v54 + 16);
              v58 = *(v54 + 24);
              if (v59 >= v58 >> 1)
              {
                sub_1BC6701A4(v58 > 1, v59 + 1, 1);
                v54 = v172[0];
              }

              ++v53;
              *(v54 + 16) = v59 + 1;
              (*(v9 + 32))(v54 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v59, v15, v171);
              v55 = v51;
            }

            while (v50 != v53);

            v20 = v158;
            v47 = v156;
            goto LABEL_55;
          }

          __break(1u);
LABEL_80:
          __break(1u);
          return result;
        }
      }

      v54 = MEMORY[0x1E69E7CC0];
LABEL_55:
      v110 = v153;
      v111 = v152;
      *(v152 + *(v153 + 48)) = v54;
      if (v47)
      {
        v112 = v47;
        v113 = v161;
        sub_1BC75BFE0();

        v114 = 0;
        v5 = v160;
      }

      else
      {
        v114 = 1;
        v5 = v160;
        v113 = v161;
      }

      v115 = sub_1BC759CA0();
      (*(*(v115 - 8) + 56))(v113, v114, 1, v115);
      v116 = v111 + *(v110 + 64);
      sub_1BC75B750();
      sub_1BC66008C(v113, &qword_1EBCDC998, &qword_1BC7641A0);
      v117 = v157 | 0x3000000000000000;
      v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
      v118 = swift_allocObject();
      v119 = v162;
      *(v118 + 16) = v154;
      *(v118 + 24) = v119;
      v120 = swift_allocObject();
      *(v120 + 16) = sub_1BC742958;
      *(v120 + 24) = v118;
      v121 = *(*v32 + 240);

      v122 = v121(v172);
      v124 = v123;
      v125 = *v123;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      *v124 = v125;
      v127 = v20;
      if ((v126 & 1) == 0)
      {
        v125 = sub_1BC7419EC(0, v125[2] + 1, 1, v125);
        *v124 = v125;
      }

      v129 = v125[2];
      v128 = v125[3];
      v130 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        v125 = sub_1BC7419EC((v128 > 1), v129 + 1, 1, v125);
        *v124 = v125;
      }

LABEL_72:
      a1 = v159;
      v125[2] = v130;
      v146 = &v125[3 * v129];
      v146[4] = v117;
      v146[5] = sub_1BC742920;
      v146[6] = v120;
      v122(v172, 0);

      v20 = v127;
      goto LABEL_73;
    }

    v95 = *v25;
    v96 = *(v25 + 1);
    v97 = *(v25 + 2);
    v154 = *(v25 + 3);
    v161 = *(v25 + 4);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
    v157 = swift_allocBox();
    v152 = v98;
    v155 = v95;
    SCAParticipant.structParticipant.getter();
    v99 = v96;
    if (v96 >> 62)
    {
      v131 = v96;
      v100 = sub_1BC75C3F0();
      v99 = v131;
      v156 = v97;
      if (v100)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v100 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v156 = v97;
      if (v100)
      {
LABEL_43:
        v101 = v99;
        v158 = v20;
        v172[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v100 & ~(v100 >> 63), 0);
        if (v100 < 0)
        {
          goto LABEL_80;
        }

        v102 = 0;
        v103 = v172[0];
        v104 = v101;
        v165 = v101 & 0xC000000000000001;
        do
        {
          if (v165)
          {
            v105 = MEMORY[0x1BFB26EB0](v102, v104);
          }

          else
          {
            v105 = *(v104 + 8 * v102 + 32);
          }

          v106 = v105;
          SCAParticipant.structParticipant.getter();

          v172[0] = v103;
          v108 = *(v103 + 16);
          v107 = *(v103 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_1BC6701A4(v107 > 1, v108 + 1, 1);
            v103 = v172[0];
          }

          ++v102;
          *(v103 + 16) = v108 + 1;
          (*(v9 + 32))(v103 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v108, v13, v171);
          v104 = v101;
        }

        while (v100 != v102);

        v20 = v158;
        v97 = v156;
LABEL_65:
        v132 = v153;
        v133 = v152;
        *(v152 + *(v153 + 48)) = v103;
        if (v97)
        {
          v134 = v97;
          v135 = v162;
          sub_1BC75BFE0();

          v136 = 0;
          v5 = v160;
        }

        else
        {
          v136 = 1;
          v5 = v160;
          v135 = v162;
        }

        v137 = sub_1BC759CA0();
        (*(*(v137 - 8) + 56))(v135, v136, 1, v137);
        v138 = v133 + *(v132 + 64);
        sub_1BC75B750();
        sub_1BC66008C(v135, &qword_1EBCDC998, &qword_1BC7641A0);
        v117 = v157 | 0x4000000000000000;
        v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
        v139 = swift_allocObject();
        v140 = v161;
        *(v139 + 16) = v154;
        *(v139 + 24) = v140;
        v120 = swift_allocObject();
        *(v120 + 16) = sub_1BC742958;
        *(v120 + 24) = v139;
        v141 = *(*v32 + 240);

        v122 = v141(v172);
        v143 = v142;
        v125 = *v142;
        v144 = swift_isUniquelyReferenced_nonNull_native();
        *v143 = v125;
        v127 = v20;
        if ((v144 & 1) == 0)
        {
          v125 = sub_1BC7419EC(0, v125[2] + 1, 1, v125);
          *v143 = v125;
        }

        v129 = v125[2];
        v145 = v125[3];
        v130 = v129 + 1;
        if (v129 >= v145 >> 1)
        {
          v125 = sub_1BC7419EC((v145 > 1), v129 + 1, 1, v125);
          *v143 = v125;
        }

        goto LABEL_72;
      }
    }

    v103 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v158 = v20;
  v62 = *v25;
  v63 = *(v25 + 1);
  v65 = *(v25 + 2);
  v64 = *(v25 + 3);
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  v171 = v63;
  v172[0] = v63;
  v67 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();
  v165 = v66 | 0x2000000000000000;
  v32 = *(v170 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  *(v68 + 24) = v64;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1BC742958;
  *(v69 + 24) = v68;
  v70 = *(*v32 + 240);

  v71 = v70(v172);
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v73 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1BC7419EC(0, v74[2] + 1, 1, v74);
    *v73 = v74;
  }

  v77 = v74[2];
  v76 = v74[3];
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1BC7419EC((v76 > 1), v77 + 1, 1, v74);
    *v73 = v74;
  }

  v5 = v160;
  v74[2] = v77 + 1;
  v78 = &v74[3 * v77];
  v78[4] = v165;
  v78[5] = sub_1BC742920;
  v78[6] = v69;
  v71(v172, 0);

LABEL_40:
  v20 = v158;
  a1 = v159;
LABEL_73:
  v44 = v169;
LABEL_74:
  v147 = v168;
  sub_1BC741CAC(a1, v168, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  v148 = swift_getEnumCaseMultiPayload();
  if (v148 <= 4 || (v148 - 6) >= 5)
  {
    sub_1BC741C4C(v147, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  }

  else
  {

    v149 = v147 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
    v150 = v164;
    (*(v166 + 32))(v164, v149, v167);
    (*(*v32 + 280))(v150);
  }

  sub_1BC741CAC(a1, v5, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  (*(v44 + 56))(v5, 0, 1, v20);
  return (*(*v32 + 184))(v5);
}