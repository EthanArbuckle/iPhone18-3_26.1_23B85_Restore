uint64_t sub_21C7778BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C777948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5520, &qword_21CBBE1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7779EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_21C968B34(*a1);
  return sub_21C9685CC(v2, v3, v4);
}

double sub_21C777A3C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C777A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C777B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C777B38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54B0, &qword_21CBBE108);
  type metadata accessor for PMWiFiDetailsModel();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54B8, &qword_21CBBE110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54C0, &qword_21CBBE118);
  sub_21C6EADEC(&qword_27CDF54C8, &qword_27CDF54B8, &qword_21CBBE110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
  sub_21CA2B5D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777CA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 48))
  {
  }

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21C777D10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55B0, &qword_21CBBE4B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE48, &qword_21CBA3780);
  sub_21C6EADEC(&qword_27CDF55B8, &qword_27CDF55B0, &qword_21CBBE4B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777E64()
{
  v1 = *(v0 + 24);

  sub_21C7025C4(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C777EF0(uint64_t *a1)
{
  v1 = *a1;
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5890, &qword_21CBBEE50);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();

  return swift_getWitnessTable();
}

uint64_t sub_21C777FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58F0, &unk_21CBBEEC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21C778090(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58F0, &unk_21CBBEEC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C778144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB82A04();
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

uint64_t sub_21C778200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB82A04();
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

uint64_t sub_21C7782B8()
{
  v1 = (type metadata accessor for PMKeyboardShortcutActionViewModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB82A04();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7783A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5950, &qword_21CBBEFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C778450(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_21C778634(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77881C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A28, &qword_21CBBF0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C77888C()
{
  v1 = v0;
  v2 = type metadata accessor for PMLargeTypeView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  v9 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    goto LABEL_32;
  }

  v81 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v8 + 1);

  if (EnumCaseMultiPayload == 1)
  {
    v79 = v0;
    v12 = *(v8 + 3);

    v13 = *(v8 + 5);

    v14 = type metadata accessor for PMWiFiNetwork();
    v15 = v14[7];
    v16 = sub_21CB80DD4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(&v8[v15], 1, v16))
    {
      (*(v17 + 8))(&v8[v15], v16);
    }

    v19 = v14[8];
    if (!v18(&v8[v19], 1, v16))
    {
      (*(v17 + 8))(&v8[v19], v16);
    }

    v20 = &v8[v14[14]];
    v1 = v79;
    v5 = v81;
    v4 = (v3 + 16) & ~v3;
    goto LABEL_31;
  }

  v21 = type metadata accessor for PMAccount(0);
  v22 = &v8[v21[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  v23 = swift_getEnumCaseMultiPayload();
  v24 = *(v22 + 1);

  v25 = *(v22 + 3);

  v78 = v21;
  if (v23 == 1)
  {
    v26 = *(v22 + 5);

    v27 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v28 = v27[7];
    v29 = sub_21CB85B74();
    (*(*(v29 - 8) + 8))(&v22[v28], v29);
    v30 = *&v22[v27[8] + 8];

    v31 = v27[9];
    v32 = sub_21CB85C44();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(&v22[v31], 1, v32))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v57 = *(v22 + 4);

  v58 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v59 = v58[7];
  v60 = sub_21CB85C04();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(&v22[v59], 1, v60))
  {
    (*(v61 + 8))(&v22[v59], v60);
  }

  v62 = v58[8];
  v63 = sub_21CB85BB4();
  v64 = *(v63 - 8);
  if (!(*(v64 + 48))(&v22[v62], 1, v63))
  {
    (*(v64 + 8))(&v22[v62], v63);
  }

  v31 = v58[9];
  v32 = sub_21CB85C44();
  v33 = *(v32 - 8);
  v21 = v78;
  if (!(*(v33 + 48))(&v22[v31], 1, v32))
  {
LABEL_10:
    (*(v33 + 8))(&v22[v31], v32);
  }

LABEL_11:
  v34 = &v8[v21[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v1;
    v35 = *(v34 + 1);

    v36 = *(v34 + 3);

    v37 = *(v34 + 5);

    v38 = *(v34 + 7);

    v39 = type metadata accessor for PMAccount.MockData(0);
    v40 = v39[8];
    v41 = sub_21CB80DD4();
    v77 = *(v41 - 8);
    v42 = *(v77 + 48);
    if (!v42(&v34[v40], 1, v41))
    {
      (*(v77 + 8))(&v34[v40], v41);
    }

    v43 = *&v34[v39[9]];

    v44 = *&v34[v39[10] + 8];

    v45 = *&v34[v39[11] + 8];

    v46 = v39[12];
    if (!v42(&v34[v46], 1, v41))
    {
      (*(v77 + 8))(&v34[v46], v41);
    }

    v47 = v39[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    v1 = v80;
    if (!(*(v49 + 48))(&v34[v47], 1, v48))
    {
      (*(v49 + 8))(&v34[v47], v48);
    }

    v50 = v39[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(&v34[v50], 1, v51))
    {
      (*(v52 + 8))(&v34[v50], v51);
    }

    v53 = *&v34[v39[17] + 8];

    v54 = v39[18];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    v21 = v78;
    if (!(*(v56 + 48))(&v34[v54], 1, v55))
    {
      (*(v56 + 8))(&v34[v54], v55);
    }
  }

  else
  {
  }

  v65 = &v8[v21[7]];
  v5 = v81;
  v4 = (v3 + 16) & ~v3;
  if (*(v65 + 1))
  {

    v20 = (v65 + 24);
LABEL_31:
  }

LABEL_32:
  v66 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = sub_21CB823B4();
    (*(*(v67 - 8) + 8))(v6 + v66, v67);
  }

  else
  {
    v68 = *(v6 + v66);
  }

  v69 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = sub_21CB83834();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v6 + v69, 1, v70))
    {
      (*(v71 + 8))(v6 + v69, v70);
    }
  }

  else
  {
    v72 = *(v6 + v69);
  }

  v73 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = sub_21CB82054();
    (*(*(v74 - 8) + 8))(v6 + v73, v74);
  }

  else
  {
    v75 = *(v6 + v73);
  }

  return MEMORY[0x2821FE8E8](v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_21C779200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7792FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779364()
{
  v1 = sub_21CB85B74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C779438()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7794C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF0, &qword_21CBBFDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C779534()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77956C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21C7795DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779614()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C7796B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7796E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C779780()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

void sub_21C779804(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21CA42518(v2);
}

uint64_t sub_21C77983C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C779944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C779A5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C779B54()
{
  v1 = v0[2];

  if (v0[5])
  {

    v2 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_21C779BB8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C779BF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C779C30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779C68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A190()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6508, &qword_21CBC13A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6510, &qword_21CBC13B0);
  sub_21CA50524();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
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

uint64_t sub_21C77A338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
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

uint64_t sub_21C77A52C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A594()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6638, &qword_21CBC15E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6630, &qword_21CBC15D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6628, &qword_21CBC15D0);
  sub_21CA56834();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77A68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
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

uint64_t sub_21C77A6F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77A780()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C77A814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CA58594(v2, v3);
}

uint64_t sub_21C77A8D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C77AA54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C77ABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77ACC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77ADD4()
{
  v1 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v205 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v5 = *(v205 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v204 = v0;
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82484();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v3 + v4 + v6;
  v12 = (v8 + v1[5]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v200 = v7;
  v201 = v2;
  if ((*(v5 + 48))(v15, 1, v205))
  {
    goto LABEL_32;
  }

  v202 = v11;
  v198 = v6;
  v16 = *(v15 + 1);

  v17 = type metadata accessor for PMAccount(0);
  v18 = &v15[v17[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *(v18 + 1);

  v21 = *(v18 + 3);

  v196 = v17;
  if (EnumCaseMultiPayload != 1)
  {
    v54 = *(v18 + 4);

    v55 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v56 = v55[7];
    v57 = sub_21CB85C04();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(&v18[v56], 1, v57))
    {
      (*(v58 + 8))(&v18[v56], v57);
    }

    v59 = v55[8];
    v60 = sub_21CB85BB4();
    v61 = *(v60 - 8);
    if (!(*(v61 + 48))(&v18[v59], 1, v60))
    {
      (*(v61 + 8))(&v18[v59], v60);
    }

    v27 = v55[9];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v18[v27], 1, v28))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v22 = *(v18 + 5);

  v23 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v24 = v23[7];
  v25 = sub_21CB85B74();
  (*(*(v25 - 8) + 8))(&v18[v24], v25);
  v26 = *&v18[v23[8] + 8];

  v27 = v23[9];
  v28 = sub_21CB85C44();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(&v18[v27], 1, v28))
  {
LABEL_7:
    (*(v29 + 8))(&v18[v27], v28);
  }

LABEL_8:
  v30 = &v15[v17[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v30 + 1);

    v32 = *(v30 + 3);

    v33 = *(v30 + 5);

    v34 = *(v30 + 7);

    v35 = type metadata accessor for PMAccount.MockData(0);
    v36 = v35[8];
    v37 = sub_21CB80DD4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(&v30[v36], 1, v37))
    {
      (*(v38 + 8))(&v30[v36], v37);
    }

    v40 = *&v30[v35[9]];

    v41 = *&v30[v35[10] + 8];

    v42 = *&v30[v35[11] + 8];

    v43 = v35[12];
    if (!v39(&v30[v43], 1, v37))
    {
      (*(v38 + 8))(&v30[v43], v37);
    }

    v44 = v35[15];
    v45 = sub_21CB85BB4();
    v46 = *(v45 - 8);
    v17 = v196;
    if (!(*(v46 + 48))(&v30[v44], 1, v45))
    {
      (*(v46 + 8))(&v30[v44], v45);
    }

    v47 = v35[16];
    v48 = sub_21CB85C04();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(&v30[v47], 1, v48))
    {
      (*(v49 + 8))(&v30[v47], v48);
    }

    v50 = *&v30[v35[17] + 8];

    v51 = v35[18];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(&v30[v51], 1, v52))
    {
      (*(v53 + 8))(&v30[v51], v52);
    }
  }

  else
  {
  }

  v62 = &v15[v17[7]];
  if (*(v62 + 1))
  {
  }

  v63 = &v15[*(v205 + 20)];
  v64 = type metadata accessor for PMSharingGroup();
  v65 = *(*(v64 - 1) + 48);
  v11 = v202;
  if (!v65(v63, 1, v64))
  {
    v66 = sub_21CB85C44();
    (*(*(v66 - 8) + 8))(v63, v66);
    v67 = *&v63[v64[5] + 8];

    v68 = *&v63[v64[6]];

    v69 = *&v63[v64[7] + 8];
  }

  v70 = &v15[*(v205 + 24)];
  v71 = v65(v70, 1, v64);
  v2 = v201;
  v6 = v198;
  if (!v71)
  {
    v72 = sub_21CB85C44();
    (*(*(v72 - 8) + 8))(v70, v72);
    v73 = *&v70[v64[5] + 8];

    v74 = *&v70[v64[6]];

    v75 = *&v70[v64[7] + 8];
  }

LABEL_32:
  v76 = v11 & ~v6;
  v77 = *(v8 + v1[6] + 8);

  v78 = *(v8 + v1[7] + 8);

  v79 = v8 + v1[8];
  v80 = type metadata accessor for PMAccount(0);
  v203 = v76;
  if ((*(*(v80 - 1) + 48))(v79, 1, v80))
  {
    goto LABEL_56;
  }

  v199 = v6;
  v81 = *(v79 + 1);

  v82 = &v79[v80[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  v83 = swift_getEnumCaseMultiPayload();
  v84 = *(v82 + 1);

  v85 = *(v82 + 3);

  if (v83 != 1)
  {
    v118 = v80;
    v119 = v2;
    v120 = *(v82 + 4);

    v121 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v122 = v121[7];
    v123 = sub_21CB85C04();
    v124 = *(v123 - 8);
    if (!(*(v124 + 48))(&v82[v122], 1, v123))
    {
      (*(v124 + 8))(&v82[v122], v123);
    }

    v125 = v121[8];
    v126 = sub_21CB85BB4();
    v127 = *(v126 - 8);
    if (!(*(v127 + 48))(&v82[v125], 1, v126))
    {
      (*(v127 + 8))(&v82[v125], v126);
    }

    v91 = v121[9];
    v92 = sub_21CB85C44();
    v93 = *(v92 - 8);
    v2 = v119;
    v80 = v118;
    v7 = v200;
    if ((*(v93 + 48))(&v82[v91], 1, v92))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v86 = *(v82 + 5);

  v87 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v88 = v87[7];
  v89 = sub_21CB85B74();
  (*(*(v89 - 8) + 8))(&v82[v88], v89);
  v90 = *&v82[v87[8] + 8];

  v91 = v87[9];
  v92 = sub_21CB85C44();
  v93 = *(v92 - 8);
  if (!(*(v93 + 48))(&v82[v91], 1, v92))
  {
LABEL_35:
    (*(v93 + 8))(&v82[v91], v92);
  }

LABEL_36:
  v94 = &v79[v80[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v197 = v80;
    v95 = *(v94 + 1);

    v96 = *(v94 + 3);

    v97 = *(v94 + 5);

    v98 = *(v94 + 7);

    v99 = type metadata accessor for PMAccount.MockData(0);
    v100 = v99[8];
    v101 = sub_21CB80DD4();
    v102 = *(v101 - 8);
    v103 = *(v102 + 48);
    if (!v103(&v94[v100], 1, v101))
    {
      (*(v102 + 8))(&v94[v100], v101);
    }

    v104 = *&v94[v99[9]];

    v105 = *&v94[v99[10] + 8];

    v106 = *&v94[v99[11] + 8];

    v107 = v99[12];
    if (!v103(&v94[v107], 1, v101))
    {
      (*(v102 + 8))(&v94[v107], v101);
    }

    v108 = v99[15];
    v109 = sub_21CB85BB4();
    v110 = *(v109 - 8);
    v7 = v200;
    if (!(*(v110 + 48))(&v94[v108], 1, v109))
    {
      (*(v110 + 8))(&v94[v108], v109);
    }

    v111 = v99[16];
    v112 = sub_21CB85C04();
    v113 = *(v112 - 8);
    v80 = v197;
    if (!(*(v113 + 48))(&v94[v111], 1, v112))
    {
      (*(v113 + 8))(&v94[v111], v112);
    }

    v114 = *&v94[v99[17] + 8];

    v115 = v99[18];
    v116 = sub_21CB85C44();
    v117 = *(v116 - 8);
    v2 = v201;
    if (!(*(v117 + 48))(&v94[v115], 1, v116))
    {
      (*(v117 + 8))(&v94[v115], v116);
    }
  }

  else
  {
  }

  v128 = &v79[v80[7]];
  v6 = v199;
  v76 = v203;
  if (*(v128 + 1))
  {
  }

LABEL_56:
  v129 = *&v79[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28)];

  v130 = *(v8 + v1[9] + 8);

  v131 = *(v8 + v1[10]);

  v132 = *(v8 + v1[11]);

  v133 = *(v8 + v1[12]);

  v134 = v204 + v76;
  v135 = *(v204 + v76 + 8);

  v136 = (v204 + v76 + v80[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v137 = swift_getEnumCaseMultiPayload();
  v138 = *(v136 + 1);

  v139 = *(v136 + 3);

  if (v137 == 1)
  {
    v140 = *(v136 + 5);

    v141 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v142 = v141[7];
    v143 = sub_21CB85B74();
    (*(*(v143 - 8) + 8))(&v136[v142], v143);
    v144 = *&v136[v141[8] + 8];

    v145 = v141[9];
    v146 = sub_21CB85C44();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(&v136[v145], 1, v146))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v174 = *(v136 + 4);

  v175 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v176 = v175[7];
  v177 = sub_21CB85C04();
  v178 = *(v177 - 8);
  if (!(*(v178 + 48))(&v136[v176], 1, v177))
  {
    (*(v178 + 8))(&v136[v176], v177);
  }

  v179 = v175[8];
  v180 = sub_21CB85BB4();
  v181 = *(v180 - 8);
  if (!(*(v181 + 48))(&v136[v179], 1, v180))
  {
    (*(v181 + 8))(&v136[v179], v180);
  }

  v145 = v175[9];
  v146 = sub_21CB85C44();
  v147 = *(v146 - 8);
  if (!(*(v147 + 48))(&v136[v145], 1, v146))
  {
LABEL_58:
    (*(v147 + 8))(&v136[v145], v146);
  }

LABEL_59:
  v148 = v134 + v80[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v80;
    v150 = v6;
    v151 = *(v148 + 8);

    v152 = *(v148 + 24);

    v153 = *(v148 + 40);

    v154 = *(v148 + 56);

    v155 = type metadata accessor for PMAccount.MockData(0);
    v156 = v155[8];
    v157 = sub_21CB80DD4();
    v158 = *(v157 - 8);
    v159 = *(v158 + 48);
    if (!v159(v148 + v156, 1, v157))
    {
      (*(v158 + 8))(v148 + v156, v157);
    }

    v160 = *(v148 + v155[9]);

    v161 = *(v148 + v155[10] + 8);

    v162 = *(v148 + v155[11] + 8);

    v163 = v155[12];
    if (!v159(v148 + v163, 1, v157))
    {
      (*(v158 + 8))(v148 + v163, v157);
    }

    v164 = v155[15];
    v165 = sub_21CB85BB4();
    v166 = *(v165 - 8);
    if (!(*(v166 + 48))(v148 + v164, 1, v165))
    {
      (*(v166 + 8))(v148 + v164, v165);
    }

    v167 = v155[16];
    v168 = sub_21CB85C04();
    v169 = *(v168 - 8);
    v6 = v150;
    v80 = v149;
    if (!(*(v169 + 48))(v148 + v167, 1, v168))
    {
      (*(v169 + 8))(v148 + v167, v168);
    }

    v170 = *(v148 + v155[17] + 8);

    v171 = v155[18];
    v172 = sub_21CB85C44();
    v173 = *(v172 - 8);
    v7 = v200;
    v2 = v201;
    if (!(*(v173 + 48))(v148 + v171, 1, v172))
    {
      (*(v173 + 8))(v148 + v171, v172);
    }
  }

  else
  {
  }

  v182 = v134 + v80[7];
  if (*(v182 + 8))
  {
  }

  v183 = v134 + *(v205 + 20);
  v184 = type metadata accessor for PMSharingGroup();
  v185 = *(*(v184 - 1) + 48);
  if (!v185(v183, 1, v184))
  {
    v186 = sub_21CB85C44();
    (*(*(v186 - 8) + 8))(v183, v186);
    v187 = *(v183 + v184[5] + 8);

    v188 = *(v183 + v184[6]);

    v189 = *(v183 + v184[7] + 8);
  }

  v190 = v134 + *(v205 + 24);
  if (!v185(v190, 1, v184))
  {
    v191 = sub_21CB85C44();
    (*(*(v191 - 8) + 8))(v190, v191);
    v192 = *(v190 + v184[5] + 8);

    v193 = *(v190 + v184[6]);

    v194 = *(v190 + v184[7] + 8);
  }

  return MEMORY[0x2821FE8E8](v204, v203 + v7, v2 | v6 | 7);
}

uint64_t sub_21C77C410()
{
  v1 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v201 = *(*(v1 - 1) + 80);
  v2 = (v201 + 32) & ~v201;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v3 + v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v205 = v0;
  v10 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82484();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    v12 = *v10;
  }

  v13 = v2 + v7;
  v14 = (v10 + v1[5]);
  v15 = *v14;

  v16 = v14[1];

  v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v202 = v4;
  if ((*(v5 + 48))(v17, 1, v4))
  {
    goto LABEL_32;
  }

  v203 = v13;
  v199 = v6;
  v18 = *(v17 + 1);

  v19 = type metadata accessor for PMAccount(0);
  v20 = &v17[v19[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *(v20 + 1);

  v23 = *(v20 + 3);

  if (EnumCaseMultiPayload != 1)
  {
    v56 = *(v20 + 4);

    v57 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v58 = v57[7];
    v59 = sub_21CB85C04();
    v60 = *(v59 - 8);
    if (!(*(v60 + 48))(&v20[v58], 1, v59))
    {
      (*(v60 + 8))(&v20[v58], v59);
    }

    v61 = v57[8];
    v62 = sub_21CB85BB4();
    v63 = *(v62 - 8);
    if (!(*(v63 + 48))(&v20[v61], 1, v62))
    {
      (*(v63 + 8))(&v20[v61], v62);
    }

    v29 = v57[9];
    v30 = sub_21CB85C44();
    v31 = *(v30 - 8);
    v4 = v202;
    if ((*(v31 + 48))(&v20[v29], 1, v30))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v24 = *(v20 + 5);

  v25 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v26 = v25[7];
  v27 = sub_21CB85B74();
  (*(*(v27 - 8) + 8))(&v20[v26], v27);
  v28 = *&v20[v25[8] + 8];

  v29 = v25[9];
  v30 = sub_21CB85C44();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(&v20[v29], 1, v30))
  {
LABEL_7:
    (*(v31 + 8))(&v20[v29], v30);
  }

LABEL_8:
  v32 = &v17[v19[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v194 = v8;
    v196 = v19;
    v33 = *(v32 + 1);

    v34 = *(v32 + 3);

    v35 = *(v32 + 5);

    v36 = *(v32 + 7);

    v37 = type metadata accessor for PMAccount.MockData(0);
    v38 = v37[8];
    v39 = sub_21CB80DD4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (!v41(&v32[v38], 1, v39))
    {
      (*(v40 + 8))(&v32[v38], v39);
    }

    v42 = *&v32[v37[9]];

    v43 = *&v32[v37[10] + 8];

    v44 = *&v32[v37[11] + 8];

    v45 = v37[12];
    if (!v41(&v32[v45], 1, v39))
    {
      (*(v40 + 8))(&v32[v45], v39);
    }

    v46 = v37[15];
    v47 = sub_21CB85BB4();
    v48 = *(v47 - 8);
    v19 = v196;
    if (!(*(v48 + 48))(&v32[v46], 1, v47))
    {
      (*(v48 + 8))(&v32[v46], v47);
    }

    v49 = v37[16];
    v50 = sub_21CB85C04();
    v51 = *(v50 - 8);
    v8 = v194;
    if (!(*(v51 + 48))(&v32[v49], 1, v50))
    {
      (*(v51 + 8))(&v32[v49], v50);
    }

    v52 = *&v32[v37[17] + 8];

    v53 = v37[18];
    v54 = sub_21CB85C44();
    v55 = *(v54 - 8);
    v4 = v202;
    if (!(*(v55 + 48))(&v32[v53], 1, v54))
    {
      (*(v55 + 8))(&v32[v53], v54);
    }
  }

  else
  {
  }

  v64 = &v17[v19[7]];
  if (*(v64 + 1))
  {
  }

  v65 = &v17[*(v4 + 20)];
  v66 = type metadata accessor for PMSharingGroup();
  v67 = *(*(v66 - 1) + 48);
  if (!v67(v65, 1, v66))
  {
    v68 = sub_21CB85C44();
    (*(*(v68 - 8) + 8))(v65, v68);
    v69 = *&v65[v66[5] + 8];

    v70 = *&v65[v66[6]];

    v71 = *&v65[v66[7] + 8];
  }

  v72 = &v17[*(v4 + 24)];
  v73 = v67(v72, 1, v66);
  v6 = v199;
  v13 = v203;
  if (!v73)
  {
    v74 = sub_21CB85C44();
    (*(*(v74 - 8) + 8))(v72, v74);
    v75 = *&v72[v66[5] + 8];

    v76 = *&v72[v66[6]];

    v77 = *&v72[v66[7] + 8];
  }

LABEL_32:
  v78 = v13 & ~v6;
  v79 = *(v10 + v1[6] + 8);

  v80 = *(v10 + v1[7] + 8);

  v81 = v10 + v1[8];
  v82 = type metadata accessor for PMAccount(0);
  v204 = v78;
  if ((*(*(v82 - 1) + 48))(v81, 1, v82))
  {
    goto LABEL_56;
  }

  v200 = v6;
  v83 = *(v81 + 1);

  v84 = &v81[v82[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  v85 = swift_getEnumCaseMultiPayload();
  v86 = *(v84 + 1);

  v87 = *(v84 + 3);

  if (v85 != 1)
  {
    v120 = *(v84 + 4);

    v121 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v122 = v121[7];
    v123 = sub_21CB85C04();
    v124 = *(v123 - 8);
    if (!(*(v124 + 48))(&v84[v122], 1, v123))
    {
      (*(v124 + 8))(&v84[v122], v123);
    }

    v125 = v121[8];
    v126 = sub_21CB85BB4();
    v127 = *(v126 - 8);
    if (!(*(v127 + 48))(&v84[v125], 1, v126))
    {
      (*(v127 + 8))(&v84[v125], v126);
    }

    v93 = v121[9];
    v94 = sub_21CB85C44();
    v95 = *(v94 - 8);
    v4 = v202;
    if ((*(v95 + 48))(&v84[v93], 1, v94))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v88 = *(v84 + 5);

  v89 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v90 = v89[7];
  v91 = sub_21CB85B74();
  (*(*(v91 - 8) + 8))(&v84[v90], v91);
  v92 = *&v84[v89[8] + 8];

  v93 = v89[9];
  v94 = sub_21CB85C44();
  v95 = *(v94 - 8);
  if (!(*(v95 + 48))(&v84[v93], 1, v94))
  {
LABEL_35:
    (*(v95 + 8))(&v84[v93], v94);
  }

LABEL_36:
  v96 = &v81[v82[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v195 = v8;
    v197 = v82;
    v97 = *(v96 + 1);

    v98 = *(v96 + 3);

    v99 = *(v96 + 5);

    v100 = *(v96 + 7);

    v101 = type metadata accessor for PMAccount.MockData(0);
    v102 = v101[8];
    v103 = sub_21CB80DD4();
    v104 = *(v103 - 8);
    v105 = *(v104 + 48);
    if (!v105(&v96[v102], 1, v103))
    {
      (*(v104 + 8))(&v96[v102], v103);
    }

    v106 = *&v96[v101[9]];

    v107 = *&v96[v101[10] + 8];

    v108 = *&v96[v101[11] + 8];

    v109 = v101[12];
    if (!v105(&v96[v109], 1, v103))
    {
      (*(v104 + 8))(&v96[v109], v103);
    }

    v110 = v101[15];
    v111 = sub_21CB85BB4();
    v112 = *(v111 - 8);
    if (!(*(v112 + 48))(&v96[v110], 1, v111))
    {
      (*(v112 + 8))(&v96[v110], v111);
    }

    v113 = v101[16];
    v114 = sub_21CB85C04();
    v115 = *(v114 - 8);
    v8 = v195;
    v82 = v197;
    if (!(*(v115 + 48))(&v96[v113], 1, v114))
    {
      (*(v115 + 8))(&v96[v113], v114);
    }

    v116 = *&v96[v101[17] + 8];

    v117 = v101[18];
    v118 = sub_21CB85C44();
    v119 = *(v118 - 8);
    v4 = v202;
    if (!(*(v119 + 48))(&v96[v117], 1, v118))
    {
      (*(v119 + 8))(&v96[v117], v118);
    }
  }

  else
  {
  }

  v128 = &v81[v82[7]];
  v6 = v200;
  v78 = v204;
  if (*(v128 + 1))
  {
  }

LABEL_56:
  v129 = *&v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28)];

  v130 = *(v10 + v1[9] + 8);

  v131 = *(v10 + v1[10]);

  v132 = *(v10 + v1[11]);

  v133 = *(v10 + v1[12]);

  v134 = v205 + v78;
  v135 = *(v205 + v78 + 8);

  v136 = (v205 + v78 + v82[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v137 = swift_getEnumCaseMultiPayload();
  v138 = *(v136 + 1);

  v139 = *(v136 + 3);

  if (v137 == 1)
  {
    v140 = *(v136 + 5);

    v141 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v142 = v141[7];
    v143 = sub_21CB85B74();
    (*(*(v143 - 8) + 8))(&v136[v142], v143);
    v144 = *&v136[v141[8] + 8];

    v145 = v141[9];
    v146 = sub_21CB85C44();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(&v136[v145], 1, v146))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v172 = *(v136 + 4);

  v173 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v174 = v173[7];
  v175 = sub_21CB85C04();
  v176 = *(v175 - 8);
  if (!(*(v176 + 48))(&v136[v174], 1, v175))
  {
    (*(v176 + 8))(&v136[v174], v175);
  }

  v177 = v173[8];
  v178 = sub_21CB85BB4();
  v179 = *(v178 - 8);
  if (!(*(v179 + 48))(&v136[v177], 1, v178))
  {
    (*(v179 + 8))(&v136[v177], v178);
  }

  v145 = v173[9];
  v146 = sub_21CB85C44();
  v147 = *(v146 - 8);
  if (!(*(v147 + 48))(&v136[v145], 1, v146))
  {
LABEL_58:
    (*(v147 + 8))(&v136[v145], v146);
  }

LABEL_59:
  v148 = v134 + v82[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v198 = v82;
    v149 = *(v148 + 8);

    v150 = *(v148 + 24);

    v151 = *(v148 + 40);

    v152 = *(v148 + 56);

    v153 = type metadata accessor for PMAccount.MockData(0);
    v154 = v153[8];
    v155 = sub_21CB80DD4();
    v156 = *(v155 - 8);
    v157 = *(v156 + 48);
    if (!v157(v148 + v154, 1, v155))
    {
      (*(v156 + 8))(v148 + v154, v155);
    }

    v158 = *(v148 + v153[9]);

    v159 = *(v148 + v153[10] + 8);

    v160 = *(v148 + v153[11] + 8);

    v161 = v153[12];
    if (!v157(v148 + v161, 1, v155))
    {
      (*(v156 + 8))(v148 + v161, v155);
    }

    v162 = v153[15];
    v163 = sub_21CB85BB4();
    v164 = *(v163 - 8);
    if (!(*(v164 + 48))(v148 + v162, 1, v163))
    {
      (*(v164 + 8))(v148 + v162, v163);
    }

    v165 = v153[16];
    v166 = sub_21CB85C04();
    v167 = *(v166 - 8);
    v82 = v198;
    if (!(*(v167 + 48))(v148 + v165, 1, v166))
    {
      (*(v167 + 8))(v148 + v165, v166);
    }

    v168 = *(v148 + v153[17] + 8);

    v169 = v153[18];
    v170 = sub_21CB85C44();
    v171 = *(v170 - 8);
    v4 = v202;
    if (!(*(v171 + 48))(v148 + v169, 1, v170))
    {
      (*(v171 + 8))(v148 + v169, v170);
    }
  }

  else
  {
  }

  v180 = v134 + v82[7];
  if (*(v180 + 8))
  {
  }

  v181 = v134 + *(v4 + 20);
  v182 = type metadata accessor for PMSharingGroup();
  v183 = *(*(v182 - 1) + 48);
  if (!v183(v181, 1, v182))
  {
    v184 = sub_21CB85C44();
    (*(*(v184 - 8) + 8))(v181, v184);
    v185 = *(v181 + v182[5] + 8);

    v186 = *(v181 + v182[6]);

    v187 = *(v181 + v182[7] + 8);
  }

  v188 = v134 + *(v4 + 24);
  if (!v183(v188, 1, v182))
  {
    v189 = sub_21CB85C44();
    (*(*(v189 - 8) + 8))(v188, v189);
    v190 = *(v188 + v182[5] + 8);

    v191 = *(v188 + v182[6]);

    v192 = *(v188 + v182[7] + 8);
  }

  return MEMORY[0x2821FE8E8](v205, v204 + v8, v201 | v6 | 7);
}

uint64_t sub_21C77DAF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C77DC84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77DF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77E030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C77E0A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77E148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21C77E20C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  if (*(v0 + v4))
  {
    v5 = *(v0 + v4 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_21C77E2C4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB750, &unk_21CBC26A0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[11]);

  if (*(v0 + v4))
  {
    v8 = *(v0 + v4 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_21C77E40C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C77E448(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CA73D98(v4);
}

uint64_t sub_21C77E4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
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

uint64_t sub_21C77E570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
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

void sub_21C77E644(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  sub_21C7FB8AC(*a1, v3, v4);
  sub_21CA74024(v2, v3, v4);
}

uint64_t sub_21C77E694()
{
  v1 = (type metadata accessor for PMMultipleAccountsDetailsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C77E79C()
{
  v1 = (type metadata accessor for PMMultipleAccountsDetailsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + v1[7] + 8);

  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v7 + 1, v2 | v6 | 7);
}

uint64_t sub_21C77E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C77EA58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C77EB7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CD8, &qword_21CBC2CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CD0, &qword_21CBC2C98);
  sub_21CB829D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CC8, &qword_21CBC2C90);
  sub_21C6EADEC(&qword_27CDF6CF0, &qword_27CDF6CC8, &qword_21CBC2C90);
  swift_getOpaqueTypeConformance2();
  sub_21C706180(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PMSharingGroup();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77EDF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PMSharingGroup();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77EEF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_21C77F0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C77F2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C77F324(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77F3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DA0, &qword_21CBC3120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C77F428()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v187 = *(*(v2 - 1) + 80);
  v3 = (v187 + 16) & ~v187;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for MoveAccountFailureAlertData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7;
  v188 = *(v6 + 64);
  v9 = v1 + v3;
  v10 = type metadata accessor for PMAccount(0);
  v189 = v1;
  v190 = v5;
  if ((*(*(v10 - 1) + 48))(v1 + v3, 1, v10))
  {
    goto LABEL_25;
  }

  v180 = v4 + v7;
  v11 = *(v9 + 8);

  v12 = (v9 + v10[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v12 + 1);

  v15 = *(v12 + 3);

  v182 = v10;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = v7;
    v49 = *(v12 + 4);

    v50 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v51 = v50[7];
    v52 = sub_21CB85C04();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(&v12[v51], 1, v52))
    {
      (*(v53 + 8))(&v12[v51], v52);
    }

    v54 = v50[8];
    v55 = sub_21CB85BB4();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(&v12[v54], 1, v55))
    {
      (*(v56 + 8))(&v12[v54], v55);
    }

    v21 = v50[9];
    v22 = sub_21CB85C44();
    v23 = *(v22 - 8);
    v7 = v48;
    v10 = v182;
    if ((*(v23 + 48))(&v12[v21], 1, v22))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = *(v12 + 5);

  v17 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v18 = v17[7];
  v19 = sub_21CB85B74();
  (*(*(v19 - 8) + 8))(&v12[v18], v19);
  v20 = *&v12[v17[8] + 8];

  v21 = v17[9];
  v22 = sub_21CB85C44();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(&v12[v21], 1, v22))
  {
LABEL_4:
    (*(v23 + 8))(&v12[v21], v22);
  }

LABEL_5:
  v24 = v9 + v10[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v184 = v7;
    v25 = *(v24 + 8);

    v26 = *(v24 + 24);

    v27 = *(v24 + 40);

    v28 = *(v24 + 56);

    v29 = type metadata accessor for PMAccount.MockData(0);
    v30 = v29[8];
    v31 = sub_21CB80DD4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v24 + v30, 1, v31))
    {
      (*(v32 + 8))(v24 + v30, v31);
    }

    v34 = *(v24 + v29[9]);

    v35 = *(v24 + v29[10] + 8);

    v36 = *(v24 + v29[11] + 8);

    v37 = v29[12];
    if (!v33(v24 + v37, 1, v31))
    {
      (*(v32 + 8))(v24 + v37, v31);
    }

    v38 = v29[15];
    v39 = sub_21CB85BB4();
    v40 = *(v39 - 8);
    v5 = v190;
    if (!(*(v40 + 48))(v24 + v38, 1, v39))
    {
      (*(v40 + 8))(v24 + v38, v39);
    }

    v41 = v29[16];
    v42 = sub_21CB85C04();
    v43 = *(v42 - 8);
    v10 = v182;
    if (!(*(v43 + 48))(v24 + v41, 1, v42))
    {
      (*(v43 + 8))(v24 + v41, v42);
    }

    v44 = *(v24 + v29[17] + 8);

    v45 = v29[18];
    v46 = sub_21CB85C44();
    v47 = *(v46 - 8);
    v7 = v184;
    if (!(*(v47 + 48))(v24 + v45, 1, v46))
    {
      (*(v47 + 8))(v24 + v45, v46);
    }
  }

  else
  {
  }

  v57 = v9 + v10[7];
  v1 = v189;
  v8 = v180;
  v3 = (v187 + 16) & ~v187;
  if (*(v57 + 8))
  {
  }

LABEL_25:
  v58 = v3 + v8;
  v59 = *(v9 + v2[5]);

  __swift_destroy_boxed_opaque_existential_0((v9 + v2[6]));
  v60 = v9 + v2[7];
  v61 = sub_21CB82644();
  (*(*(v61 - 8) + 8))(v60, v61);
  v62 = *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v63 = *(v9 + v2[8] + 8);

  v64 = v9 + v2[9];
  if ((*(v6 + 48))(v64, 1, v5))
  {
    goto LABEL_50;
  }

  v181 = v58;
  v185 = v7;
  v65 = *(v64 + 8);

  v66 = (v64 + v10[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v67 = swift_getEnumCaseMultiPayload();
  v68 = *(v66 + 1);

  v69 = *(v66 + 3);

  if (v67 != 1)
  {
    v102 = *(v66 + 4);

    v103 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v104 = v103[7];
    v105 = sub_21CB85C04();
    v106 = *(v105 - 8);
    if (!(*(v106 + 48))(&v66[v104], 1, v105))
    {
      (*(v106 + 8))(&v66[v104], v105);
    }

    v107 = v103[8];
    v108 = sub_21CB85BB4();
    v109 = *(v108 - 8);
    if (!(*(v109 + 48))(&v66[v107], 1, v108))
    {
      (*(v109 + 8))(&v66[v107], v108);
    }

    v75 = v103[9];
    v76 = sub_21CB85C44();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(&v66[v75], 1, v76))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v70 = *(v66 + 5);

  v71 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v72 = v71[7];
  v73 = sub_21CB85B74();
  (*(*(v73 - 8) + 8))(&v66[v72], v73);
  v74 = *&v66[v71[8] + 8];

  v75 = v71[9];
  v76 = sub_21CB85C44();
  v77 = *(v76 - 8);
  if (!(*(v77 + 48))(&v66[v75], 1, v76))
  {
LABEL_28:
    (*(v77 + 8))(&v66[v75], v76);
  }

LABEL_29:
  v78 = v64 + v10[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v183 = v10;
    v79 = *(v78 + 8);

    v80 = *(v78 + 24);

    v81 = *(v78 + 40);

    v82 = *(v78 + 56);

    v83 = type metadata accessor for PMAccount.MockData(0);
    v84 = v83[8];
    v85 = sub_21CB80DD4();
    v86 = *(v85 - 8);
    v87 = *(v86 + 48);
    if (!v87(v78 + v84, 1, v85))
    {
      (*(v86 + 8))(v78 + v84, v85);
    }

    v88 = *(v78 + v83[9]);

    v89 = *(v78 + v83[10] + 8);

    v90 = *(v78 + v83[11] + 8);

    v91 = v83[12];
    if (!v87(v78 + v91, 1, v85))
    {
      (*(v86 + 8))(v78 + v91, v85);
    }

    v92 = v83[15];
    v93 = sub_21CB85BB4();
    v94 = *(v93 - 8);
    v5 = v190;
    if (!(*(v94 + 48))(v78 + v92, 1, v93))
    {
      (*(v94 + 8))(v78 + v92, v93);
    }

    v95 = v83[16];
    v96 = sub_21CB85C04();
    v97 = *(v96 - 8);
    v10 = v183;
    if (!(*(v97 + 48))(v78 + v95, 1, v96))
    {
      (*(v97 + 8))(v78 + v95, v96);
    }

    v98 = *(v78 + v83[17] + 8);

    v99 = v83[18];
    v100 = sub_21CB85C44();
    v101 = *(v100 - 8);
    if (!(*(v101 + 48))(v78 + v99, 1, v100))
    {
      (*(v101 + 8))(v78 + v99, v100);
    }
  }

  else
  {
  }

  v110 = v64 + v10[7];
  if (*(v110 + 8))
  {
  }

  v111 = v64 + *(v5 + 20);
  v112 = sub_21CB85C44();
  (*(*(v112 - 8) + 8))(v111, v112);
  v113 = type metadata accessor for PMSharingGroup();
  v114 = *(v111 + v113[5] + 8);

  v115 = *(v111 + v113[6]);

  v116 = *(v111 + v113[7] + 8);

  v7 = v185;
  v1 = v189;
  v58 = v181;
LABEL_50:
  v117 = v58 & ~v7;
  v118 = *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8) + 28));

  v119 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v120 = sub_21CB823B4();
    (*(*(v120 - 8) + 8))(v9 + v119, v120);
  }

  else
  {
    v121 = *(v9 + v119);
  }

  v122 = *(v9 + v2[11] + 8);

  v123 = *(v9 + v2[13] + 8);

  sub_21C7025C4(*(v9 + v2[14]), *(v9 + v2[14] + 8));
  v124 = *(v9 + v2[15]);

  v125 = *(v9 + v2[16]);

  v126 = v1 + v117;
  v127 = *(v1 + v117 + 8);

  v128 = (v1 + v117 + v10[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v129 = swift_getEnumCaseMultiPayload();
  v130 = *(v128 + 1);

  v131 = *(v128 + 3);

  if (v129 == 1)
  {
    v132 = *(v128 + 5);

    v133 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v134 = v133[7];
    v135 = sub_21CB85B74();
    (*(*(v135 - 8) + 8))(&v128[v134], v135);
    v136 = *&v128[v133[8] + 8];

    v137 = v133[9];
    v138 = sub_21CB85C44();
    v139 = *(v138 - 8);
    if ((*(v139 + 48))(&v128[v137], 1, v138))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v164 = *(v128 + 4);

  v165 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v166 = v165[7];
  v167 = sub_21CB85C04();
  v168 = *(v167 - 8);
  if (!(*(v168 + 48))(&v128[v166], 1, v167))
  {
    (*(v168 + 8))(&v128[v166], v167);
  }

  v169 = v165[8];
  v170 = sub_21CB85BB4();
  v171 = *(v170 - 8);
  if (!(*(v171 + 48))(&v128[v169], 1, v170))
  {
    (*(v171 + 8))(&v128[v169], v170);
  }

  v137 = v165[9];
  v138 = sub_21CB85C44();
  v139 = *(v138 - 8);
  if (!(*(v139 + 48))(&v128[v137], 1, v138))
  {
LABEL_55:
    (*(v139 + 8))(&v128[v137], v138);
  }

LABEL_56:
  v140 = v126 + v10[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v186 = v117;
    v141 = *(v140 + 8);

    v142 = *(v140 + 24);

    v143 = *(v140 + 40);

    v144 = *(v140 + 56);

    v145 = type metadata accessor for PMAccount.MockData(0);
    v146 = v145[8];
    v147 = sub_21CB80DD4();
    v148 = *(v147 - 8);
    v149 = *(v148 + 48);
    if (!v149(v140 + v146, 1, v147))
    {
      (*(v148 + 8))(v140 + v146, v147);
    }

    v150 = *(v140 + v145[9]);

    v151 = *(v140 + v145[10] + 8);

    v152 = *(v140 + v145[11] + 8);

    v153 = v145[12];
    if (!v149(v140 + v153, 1, v147))
    {
      (*(v148 + 8))(v140 + v153, v147);
    }

    v154 = v145[15];
    v155 = sub_21CB85BB4();
    v156 = *(v155 - 8);
    if (!(*(v156 + 48))(v140 + v154, 1, v155))
    {
      (*(v156 + 8))(v140 + v154, v155);
    }

    v157 = v145[16];
    v158 = sub_21CB85C04();
    v159 = *(v158 - 8);
    v117 = v186;
    if (!(*(v159 + 48))(v140 + v157, 1, v158))
    {
      (*(v159 + 8))(v140 + v157, v158);
    }

    v160 = *(v140 + v145[17] + 8);

    v161 = v145[18];
    v162 = sub_21CB85C44();
    v163 = *(v162 - 8);
    v1 = v189;
    if (!(*(v163 + 48))(v140 + v161, 1, v162))
    {
      (*(v163 + 8))(v140 + v161, v162);
    }
  }

  else
  {
  }

  v172 = v126 + v10[7];
  if (*(v172 + 8))
  {
  }

  v173 = v126 + *(v190 + 20);
  v174 = sub_21CB85C44();
  (*(*(v174 - 8) + 8))(v173, v174);
  v175 = type metadata accessor for PMSharingGroup();
  v176 = *(v173 + v175[5] + 8);

  v177 = *(v173 + v175[6]);

  v178 = *(v173 + v175[7] + 8);

  return MEMORY[0x2821FE8E8](v1, v117 + v188, v187 | v7 | 7);
}

uint64_t sub_21C780938()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C780978()
{
  v1 = v0;
  v2 = *(type metadata accessor for PMCreateGroupView.Action() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for PMNewGroupFlow(0);
  v142 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v142) & ~v142;
  v8 = *(*(v6 - 1) + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = v1 + v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  if (!(*(*(v11 - 8) + 48))(v1 + v4, 1, v11))
  {
    v12 = sub_21CB85C44();
    (*(*(v12 - 8) + 8))(v1 + v4, v12);
    v13 = type metadata accessor for PMSharingGroup();
    v14 = *(v10 + v13[5] + 8);

    v15 = *(v10 + v13[6]);

    v16 = *(v10 + v13[7] + 8);
  }

  v17 = v1 + v7;
  v18 = type metadata accessor for PMAccount(0);
  if (!(*(*(v18 - 1) + 48))(v1 + v7, 1, v18))
  {
    v19 = *(v17 + 8);

    v140 = v18;
    v20 = (v17 + v18[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v20 + 1);

    v23 = *(v20 + 3);

    v138 = v3;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v20 + 5);

      v25 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v26 = v25[7];
      v27 = sub_21CB85B74();
      (*(*(v27 - 8) + 8))(&v20[v26], v27);
      v28 = *&v20[v25[8] + 8];

      v29 = v25[9];
      v30 = sub_21CB85C44();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(&v20[v29], 1, v30))
      {
LABEL_7:
        v32 = v17 + v140[6];
        type metadata accessor for PMAccount.Storage(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v136 = v7;
          v33 = *(v32 + 8);

          v34 = *(v32 + 24);

          v35 = *(v32 + 40);

          v36 = *(v32 + 56);

          v37 = type metadata accessor for PMAccount.MockData(0);
          v38 = v37[8];
          v39 = sub_21CB80DD4();
          v40 = *(v39 - 8);
          v41 = *(v40 + 48);
          if (!v41(v32 + v38, 1, v39))
          {
            (*(v40 + 8))(v32 + v38, v39);
          }

          v42 = *(v32 + v37[9]);

          v43 = *(v32 + v37[10] + 8);

          v44 = *(v32 + v37[11] + 8);

          v45 = v37[12];
          if (!v41(v32 + v45, 1, v39))
          {
            (*(v40 + 8))(v32 + v45, v39);
          }

          v46 = v37[15];
          v47 = sub_21CB85BB4();
          v48 = *(v47 - 8);
          if (!(*(v48 + 48))(v32 + v46, 1, v47))
          {
            (*(v48 + 8))(v32 + v46, v47);
          }

          v49 = v37[16];
          v50 = sub_21CB85C04();
          v51 = *(v50 - 8);
          v7 = v136;
          if (!(*(v51 + 48))(v32 + v49, 1, v50))
          {
            (*(v51 + 8))(v32 + v49, v50);
          }

          v52 = *(v32 + v37[17] + 8);

          v53 = v37[18];
          v54 = sub_21CB85C44();
          v55 = *(v54 - 8);
          v3 = v138;
          if (!(*(v55 + 48))(v32 + v53, 1, v54))
          {
            (*(v55 + 8))(v32 + v53, v54);
          }
        }

        else
        {
        }

        v18 = v140;
        v64 = v17 + v140[7];
        if (*(v64 + 8))
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v56 = *(v20 + 4);

      v57 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v58 = v57[7];
      v59 = sub_21CB85C04();
      v60 = *(v59 - 8);
      if (!(*(v60 + 48))(&v20[v58], 1, v59))
      {
        (*(v60 + 8))(&v20[v58], v59);
      }

      v61 = v57[8];
      v62 = sub_21CB85BB4();
      v63 = *(v62 - 8);
      if (!(*(v63 + 48))(&v20[v61], 1, v62))
      {
        (*(v63 + 8))(&v20[v61], v62);
      }

      v29 = v57[9];
      v30 = sub_21CB85C44();
      v31 = *(v30 - 8);
      v3 = v138;
      if ((*(v31 + 48))(&v20[v29], 1, v30))
      {
        goto LABEL_7;
      }
    }

    (*(v31 + 8))(&v20[v29], v30);
    goto LABEL_7;
  }

LABEL_27:
  v65 = *(v17 + v6[5]);

  __swift_destroy_boxed_opaque_existential_0((v17 + v6[6]));
  v66 = v17 + v6[7];
  v67 = sub_21CB82644();
  (*(*(v67 - 8) + 8))(v66, v67);
  v68 = *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v69 = *(v17 + v6[8] + 8);

  v70 = v17 + v6[9];
  v71 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v71 - 8) + 48))(v70, 1, v71))
  {
    goto LABEL_52;
  }

  v134 = v71;
  v137 = v7;
  v139 = v3;
  v72 = *(v70 + 8);

  v73 = (v70 + v18[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v74 = swift_getEnumCaseMultiPayload();
  v75 = *(v73 + 1);

  v76 = *(v73 + 3);

  v141 = v18;
  if (v74 != 1)
  {
    v109 = v8;
    v110 = *(v73 + 4);

    v111 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v112 = v111[7];
    v113 = sub_21CB85C04();
    v114 = *(v113 - 8);
    if (!(*(v114 + 48))(&v73[v112], 1, v113))
    {
      (*(v114 + 8))(&v73[v112], v113);
    }

    v115 = v111[8];
    v116 = sub_21CB85BB4();
    v117 = *(v116 - 8);
    if (!(*(v117 + 48))(&v73[v115], 1, v116))
    {
      (*(v117 + 8))(&v73[v115], v116);
    }

    v82 = v111[9];
    v83 = sub_21CB85C44();
    v84 = *(v83 - 8);
    v8 = v109;
    v18 = v141;
    if ((*(v84 + 48))(&v73[v82], 1, v83))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v77 = *(v73 + 5);

  v78 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v79 = v78[7];
  v80 = sub_21CB85B74();
  (*(*(v80 - 8) + 8))(&v73[v79], v80);
  v81 = *&v73[v78[8] + 8];

  v82 = v78[9];
  v83 = sub_21CB85C44();
  v84 = *(v83 - 8);
  if (!(*(v84 + 48))(&v73[v82], 1, v83))
  {
LABEL_30:
    (*(v84 + 8))(&v73[v82], v83);
  }

LABEL_31:
  v85 = v70 + v18[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v135 = v8;
    v86 = *(v85 + 8);

    v87 = *(v85 + 24);

    v88 = *(v85 + 40);

    v89 = *(v85 + 56);

    v90 = type metadata accessor for PMAccount.MockData(0);
    v91 = v90[8];
    v92 = sub_21CB80DD4();
    v93 = *(v92 - 8);
    v94 = *(v93 + 48);
    if (!v94(v85 + v91, 1, v92))
    {
      (*(v93 + 8))(v85 + v91, v92);
    }

    v95 = *(v85 + v90[9]);

    v96 = *(v85 + v90[10] + 8);

    v97 = *(v85 + v90[11] + 8);

    v98 = v90[12];
    if (!v94(v85 + v98, 1, v92))
    {
      (*(v93 + 8))(v85 + v98, v92);
    }

    v99 = v90[15];
    v100 = sub_21CB85BB4();
    v101 = *(v100 - 8);
    if (!(*(v101 + 48))(v85 + v99, 1, v100))
    {
      (*(v101 + 8))(v85 + v99, v100);
    }

    v102 = v90[16];
    v103 = sub_21CB85C04();
    v104 = *(v103 - 8);
    v18 = v141;
    if (!(*(v104 + 48))(v85 + v102, 1, v103))
    {
      (*(v104 + 8))(v85 + v102, v103);
    }

    v105 = *(v85 + v90[17] + 8);

    v106 = v90[18];
    v107 = sub_21CB85C44();
    v108 = *(v107 - 8);
    v8 = v135;
    if (!(*(v108 + 48))(v85 + v106, 1, v107))
    {
      (*(v108 + 8))(v85 + v106, v107);
    }
  }

  else
  {
  }

  v118 = v70 + v18[7];
  if (*(v118 + 8))
  {
  }

  v119 = v70 + *(v134 + 20);
  v120 = sub_21CB85C44();
  (*(*(v120 - 8) + 8))(v119, v120);
  v121 = type metadata accessor for PMSharingGroup();
  v122 = *(v119 + v121[5] + 8);

  v123 = *(v119 + v121[6]);

  v124 = *(v119 + v121[7] + 8);

  v7 = v137;
  v3 = v139;
LABEL_52:
  v125 = *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8) + 28));

  v126 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v127 = sub_21CB823B4();
    (*(*(v127 - 8) + 8))(v17 + v126, v127);
  }

  else
  {
    v128 = *(v17 + v126);
  }

  v129 = *(v17 + v6[11] + 8);

  v130 = *(v17 + v6[13] + 8);

  sub_21C7025C4(*(v17 + v6[14]), *(v17 + v6[14] + 8));
  v131 = *(v17 + v6[15]);

  v132 = *(v17 + v6[16]);

  return MEMORY[0x2821FE8E8](v1, v7 + v8, v3 | v142 | 7);
}

uint64_t sub_21C781960()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v143 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMSharingGroup();
  v142 = *(*(v5 - 1) + 80);
  v6 = *(*(v5 - 1) + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = v1 + v4;
  v9 = type metadata accessor for PMAccount(0);
  if ((*(*(v9 - 1) + 48))(v1 + v4, 1, v9))
  {
    goto LABEL_25;
  }

  v140 = v3;
  v136 = v5;
  v10 = *(v8 + 8);

  v11 = (v8 + v9[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v11 + 1);

  v14 = *(v11 + 3);

  v138 = v9;
  if (EnumCaseMultiPayload != 1)
  {
    v47 = (v3 + 32) & ~v3;
    v48 = *(v11 + 4);

    v49 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v50 = v49[7];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(&v11[v50], 1, v51))
    {
      (*(v52 + 8))(&v11[v50], v51);
    }

    v53 = v49[8];
    v54 = sub_21CB85BB4();
    v55 = *(v54 - 8);
    if (!(*(v55 + 48))(&v11[v53], 1, v54))
    {
      (*(v55 + 8))(&v11[v53], v54);
    }

    v20 = v49[9];
    v21 = sub_21CB85C44();
    v22 = *(v21 - 8);
    v4 = v47;
    v9 = v138;
    if ((*(v22 + 48))(&v11[v20], 1, v21))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(v11 + 5);

  v16 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v17 = v16[7];
  v18 = sub_21CB85B74();
  (*(*(v18 - 8) + 8))(&v11[v17], v18);
  v19 = *&v11[v16[8] + 8];

  v20 = v16[9];
  v21 = sub_21CB85C44();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v11[v20], 1, v21))
  {
LABEL_4:
    (*(v22 + 8))(&v11[v20], v21);
  }

LABEL_5:
  v23 = v8 + v9[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v132 = v4;
    v134 = v6;
    v24 = *(v23 + 8);

    v25 = *(v23 + 24);

    v26 = *(v23 + 40);

    v27 = *(v23 + 56);

    v28 = type metadata accessor for PMAccount.MockData(0);
    v29 = v28[8];
    v30 = sub_21CB80DD4();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (!v32(v23 + v29, 1, v30))
    {
      (*(v31 + 8))(v23 + v29, v30);
    }

    v33 = *(v23 + v28[9]);

    v34 = *(v23 + v28[10] + 8);

    v35 = *(v23 + v28[11] + 8);

    v36 = v28[12];
    if (!v32(v23 + v36, 1, v30))
    {
      (*(v31 + 8))(v23 + v36, v30);
    }

    v37 = v28[15];
    v38 = sub_21CB85BB4();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v23 + v37, 1, v38))
    {
      (*(v39 + 8))(v23 + v37, v38);
    }

    v40 = v28[16];
    v41 = sub_21CB85C04();
    v42 = *(v41 - 8);
    v6 = v134;
    v9 = v138;
    if (!(*(v42 + 48))(v23 + v40, 1, v41))
    {
      (*(v42 + 8))(v23 + v40, v41);
    }

    v43 = *(v23 + v28[17] + 8);

    v44 = v28[18];
    v45 = sub_21CB85C44();
    v46 = *(v45 - 8);
    v4 = v132;
    if (!(*(v46 + 48))(v23 + v44, 1, v45))
    {
      (*(v46 + 8))(v23 + v44, v45);
    }
  }

  else
  {
  }

  v56 = v8 + v9[7];
  v5 = v136;
  v3 = v140;
  if (*(v56 + 8))
  {
  }

LABEL_25:
  v57 = *(v8 + v2[5]);

  __swift_destroy_boxed_opaque_existential_0((v8 + v2[6]));
  v58 = v8 + v2[7];
  v59 = sub_21CB82644();
  (*(*(v59 - 8) + 8))(v58, v59);
  v60 = *(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v61 = *(v8 + v2[8] + 8);

  v62 = v8 + v2[9];
  v63 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v63 - 8) + 48))(v62, 1, v63))
  {
    goto LABEL_50;
  }

  v131 = v63;
  v133 = v4;
  v141 = v3;
  v135 = v6;
  v64 = *(v62 + 8);

  v65 = (v62 + v9[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v66 = swift_getEnumCaseMultiPayload();
  v67 = *(v65 + 1);

  v68 = *(v65 + 3);

  v139 = v9;
  if (v66 != 1)
  {
    v101 = v1;
    v102 = *(v65 + 4);

    v103 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v104 = v103[7];
    v105 = sub_21CB85C04();
    v106 = *(v105 - 8);
    if (!(*(v106 + 48))(&v65[v104], 1, v105))
    {
      (*(v106 + 8))(&v65[v104], v105);
    }

    v107 = v103[8];
    v108 = sub_21CB85BB4();
    v109 = *(v108 - 8);
    if (!(*(v109 + 48))(&v65[v107], 1, v108))
    {
      (*(v109 + 8))(&v65[v107], v108);
    }

    v74 = v103[9];
    v75 = sub_21CB85C44();
    v76 = *(v75 - 8);
    v1 = v101;
    v9 = v139;
    if ((*(v76 + 48))(&v65[v74], 1, v75))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v69 = *(v65 + 5);

  v70 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v71 = v70[7];
  v72 = sub_21CB85B74();
  (*(*(v72 - 8) + 8))(&v65[v71], v72);
  v73 = *&v65[v70[8] + 8];

  v74 = v70[9];
  v75 = sub_21CB85C44();
  v76 = *(v75 - 8);
  if (!(*(v76 + 48))(&v65[v74], 1, v75))
  {
LABEL_28:
    (*(v76 + 8))(&v65[v74], v75);
  }

LABEL_29:
  v77 = v62 + v9[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v137 = v5;
    v130 = v1;
    v78 = *(v77 + 8);

    v79 = *(v77 + 24);

    v80 = *(v77 + 40);

    v81 = *(v77 + 56);

    v82 = type metadata accessor for PMAccount.MockData(0);
    v83 = v82[8];
    v84 = sub_21CB80DD4();
    v85 = *(v84 - 8);
    v86 = *(v85 + 48);
    if (!v86(v77 + v83, 1, v84))
    {
      (*(v85 + 8))(v77 + v83, v84);
    }

    v87 = *(v77 + v82[9]);

    v88 = *(v77 + v82[10] + 8);

    v89 = *(v77 + v82[11] + 8);

    v90 = v82[12];
    if (!v86(v77 + v90, 1, v84))
    {
      (*(v85 + 8))(v77 + v90, v84);
    }

    v91 = v82[15];
    v92 = sub_21CB85BB4();
    v93 = *(v92 - 8);
    v9 = v139;
    if (!(*(v93 + 48))(v77 + v91, 1, v92))
    {
      (*(v93 + 8))(v77 + v91, v92);
    }

    v94 = v82[16];
    v95 = sub_21CB85C04();
    v96 = *(v95 - 8);
    v5 = v137;
    if (!(*(v96 + 48))(v77 + v94, 1, v95))
    {
      (*(v96 + 8))(v77 + v94, v95);
    }

    v97 = *(v77 + v82[17] + 8);

    v98 = v82[18];
    v99 = sub_21CB85C44();
    v100 = *(v99 - 8);
    v1 = v130;
    if (!(*(v100 + 48))(v77 + v98, 1, v99))
    {
      (*(v100 + 8))(v77 + v98, v99);
    }
  }

  else
  {
  }

  v110 = v62 + v9[7];
  if (*(v110 + 8))
  {
  }

  v111 = v62 + *(v131 + 20);
  v112 = sub_21CB85C44();
  (*(*(v112 - 8) + 8))(v111, v112);
  v113 = *(v111 + v5[5] + 8);

  v114 = *(v111 + v5[6]);

  v115 = *(v111 + v5[7] + 8);

  v4 = v133;
  v6 = v135;
  v3 = v141;
LABEL_50:
  v116 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8) + 28));

  v117 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v118 = sub_21CB823B4();
    (*(*(v118 - 8) + 8))(v8 + v117, v118);
  }

  else
  {
    v119 = *(v8 + v117);
  }

  v120 = (v4 + v143 + v142) & ~v142;
  v121 = *(v8 + v2[11] + 8);

  v122 = *(v8 + v2[13] + 8);

  sub_21C7025C4(*(v8 + v2[14]), *(v8 + v2[14] + 8));
  v123 = *(v8 + v2[15]);

  v124 = *(v8 + v2[16]);

  v125 = sub_21CB85C44();
  (*(*(v125 - 8) + 8))(v1 + v120, v125);
  v126 = *(v1 + v120 + v5[5] + 8);

  v127 = *(v1 + v120 + v5[6]);

  v128 = *(v1 + v120 + v5[7] + 8);

  return MEMORY[0x2821FE8E8](v1, v120 + v6, v3 | v142 | 7);
}

uint64_t sub_21C782904()
{
  v1 = (type metadata accessor for PMWiFiDetailsWindowView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB832B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C782A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C782B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C782CA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6F40, &qword_21CBC3598);
  sub_21C6EADEC(&qword_27CDF6F48, &qword_27CDF6F40, &qword_21CBC3598);
  sub_21CB84CC4();
  swift_getWitnessTable();
  sub_21CA878A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C782E08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C782E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CA8B45C(v4);
}

uint64_t sub_21C782E70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C782EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
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

uint64_t sub_21C782F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
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

uint64_t sub_21C783038()
{
  type metadata accessor for PMOnboardingView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7000, &qword_21CBC3B08);
  sub_21CA8D258(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  type metadata accessor for PMSendGroupInviteMessageSheet(255);
  sub_21CB83994();
  sub_21CA8D258(&qword_27CDF7008, type metadata accessor for PMSendGroupInviteMessageSheet);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C783178(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CB811C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21C783224(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB811C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7832C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CB811C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C783374(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB811C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s17PasswordManagerUI25PMOfflineMigrationPayloadV13OTPParametersV9AlgorithmOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21C783448(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C783464(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_21C783494@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_21C7834B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21C7834FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7140, &qword_21CBC4398);
  sub_21CA90EA0();
  sub_21CA90F04();
  return swift_getOpaqueTypeConformance2();
}

id sub_21C783580@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_21CA92140(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21C7835C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C783600(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7836BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C783774()
{
  type metadata accessor for PMAdapativeStackLabeledContentStyle();
  sub_21C853458();
  sub_21CAA5114();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C783868()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C7838FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C783974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C7839F0()
{
  v1 = *(type metadata accessor for PMDebugSettingsView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB823B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C783B4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C783CE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21C783EB4()
{
  v1 = type metadata accessor for PMExportAccountSelectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  sub_21CAB0D98(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83834();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
    v14 = *(v6 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7841F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  if (*(v0 + 16))
  {
    v5 = *(v0 + 24);
  }

  v6 = v0 + v3;
  v7 = type metadata accessor for PMSharingGroup();
  if (!(*(*(v7 - 1) + 48))(v0 + v3, 1, v7))
  {
    v8 = sub_21CB85C44();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
    v9 = *(v6 + v7[5] + 8);

    v10 = *(v6 + v7[6]);

    v11 = *(v6 + v7[7] + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78435C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = &v0[v3];
  v10 = type metadata accessor for PMSharingGroup();
  if (!(*(*(v10 - 1) + 48))(&v0[v3], 1, v10))
  {
    v11 = sub_21CB85C44();
    (*(*(v11 - 8) + 8))(&v0[v3], v11);
    v12 = *&v9[v10[5] + 8];

    v13 = *&v9[v10[6]];

    v14 = *&v9[v10[7] + 8];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C784538()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v56 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = *(v0 + 56);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = (v0 + v3 + v1[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v8 + 1);

  v11 = *(v8 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 5);

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = v13[7];
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v16 = *&v8[v13[8] + 8];

    v17 = v13[9];
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(&v8[v17], 1, v18))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v44 = *(v8 + 4);

  v45 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v46 = v45[7];
  v47 = sub_21CB85C04();
  v48 = *(v47 - 8);
  if (!(*(v48 + 48))(&v8[v46], 1, v47))
  {
    (*(v48 + 8))(&v8[v46], v47);
  }

  v49 = v45[8];
  v50 = sub_21CB85BB4();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(&v8[v49], 1, v50))
  {
    (*(v51 + 8))(&v8[v49], v50);
  }

  v17 = v45[9];
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v8[v17], 1, v18))
  {
LABEL_3:
    (*(v19 + 8))(&v8[v17], v18);
  }

LABEL_4:
  v20 = v6 + v1[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = (v2 + 72) & ~v2;
    v55 = v2;
    v21 = *(v20 + 8);

    v22 = *(v20 + 24);

    v23 = *(v20 + 40);

    v24 = *(v20 + 56);

    v25 = type metadata accessor for PMAccount.MockData(0);
    v26 = v25[8];
    v27 = sub_21CB80DD4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (!v29(v20 + v26, 1, v27))
    {
      (*(v28 + 8))(v20 + v26, v27);
    }

    v30 = *(v20 + v25[9]);

    v31 = *(v20 + v25[10] + 8);

    v32 = *(v20 + v25[11] + 8);

    v33 = v25[12];
    if (!v29(v20 + v33, 1, v27))
    {
      (*(v28 + 8))(v20 + v33, v27);
    }

    v34 = v25[15];
    v35 = sub_21CB85BB4();
    v36 = *(v35 - 8);
    v3 = v54;
    if (!(*(v36 + 48))(v20 + v34, 1, v35))
    {
      (*(v36 + 8))(v20 + v34, v35);
    }

    v37 = v25[16];
    v38 = sub_21CB85C04();
    v39 = *(v38 - 8);
    v2 = v55;
    if (!(*(v39 + 48))(v20 + v37, 1, v38))
    {
      (*(v39 + 8))(v20 + v37, v38);
    }

    v40 = *(v20 + v25[17] + 8);

    v41 = v25[18];
    v42 = sub_21CB85C44();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v20 + v41, 1, v42))
    {
      (*(v43 + 8))(v20 + v41, v42);
    }
  }

  else
  {
  }

  v52 = v6 + v1[7];
  if (*(v52 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v56, v2 | 7);
}

uint64_t sub_21C784CB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C784D00()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v55 = *(*(v1 - 1) + 64);

  v4 = *(v0 + 24);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = (v0 + v3 + v1[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v5 + v1[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = (v2 + 32) & ~v2;
    v54 = v2;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v3 = v53;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    v2 = v54;
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v5 + v1[7];
  if (*(v51 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v55, v2 | 7);
}

uint64_t sub_21C785368()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C785414()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C785454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C785520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C7855E8()
{
  v1 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_21C70AC30();
  v9 = *(v0 + v4 + 24);
  v10 = *(v0 + v4 + 32);
  v11 = *(v0 + v4 + 40);
  sub_21C70AC30();

  v12 = *(v0 + v4 + 56);

  v13 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82484();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = *(v5 + *(v1 + 32));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_21C78573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7898, &qword_21CBC6248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7857A8()
{
  v1 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v3 + 16);
  sub_21C70AC30();
  v10 = *(v0 + v3 + 24);
  v11 = *(v0 + v3 + 32);
  v12 = *(v0 + v3 + 40);
  sub_21C70AC30();

  v13 = *(v0 + v3 + 56);

  v14 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB82484();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  v17 = *(v6 + *(v1 + 32));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C785904()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF78A0, &qword_21CBC6250);
  type metadata accessor for PMConfigureCredentialProviderExtensionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7898, &qword_21CBC6248);
  sub_21CACDC94();
  swift_getOpaqueTypeConformance2();
  sub_21CACDE1C();
  sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C785A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_21C785B28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_21C785C44()
{
  v1 = type metadata accessor for PMPasswordOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_21C70AC30();
  v9 = *(v0 + v4 + 24);
  v10 = *(v0 + v4 + 32);
  v11 = *(v0 + v4 + 40);
  sub_21C70AC30();

  v12 = *(v0 + v4 + 56);

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB823B4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB82484();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = *(v5 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_21C785E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7988, &qword_21CBC6380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C785E88()
{
  v1 = type metadata accessor for PMPasswordOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v3 + 16);
  sub_21C70AC30();
  v10 = *(v0 + v3 + 24);
  v11 = *(v0 + v3 + 32);
  v12 = *(v0 + v3 + 40);
  sub_21C70AC30();

  v13 = *(v0 + v3 + 56);

  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB823B4();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  sub_21C7025C4(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v17 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21CB82484();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
    v19 = *(v6 + v17);
  }

  v20 = *(v6 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C786068()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7860A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7860E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C786138()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7990, &qword_21CBC6388);
  type metadata accessor for PMConfigureCredentialProviderExtensionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7988, &qword_21CBC6380);
  sub_21CAD00E8();
  swift_getOpaqueTypeConformance2();
  sub_21CACDE1C();
  sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C786340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMWiFiNetwork();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C786448()
{
  v1 = type metadata accessor for PMWiFiQRCodeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v19 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = type metadata accessor for PMWiFiNetwork();
  v9 = v8[7];
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v13 = v8[8];
  if (!v12(v4 + v13, 1, v10))
  {
    (*(v11 + 8))(v4 + v13, v10);
  }

  v14 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB823B4();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
  }

  else
  {
    v16 = *(v4 + v14);
  }

  return MEMORY[0x2821FE8E8](v19, v3 + v18, v2 | 7);
}

uint64_t sub_21C7866A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C786764(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C786820()
{
  v1 = type metadata accessor for PMPasswordsSecurityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 16);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  v13 = *(v6 + v1[9] + 8);

  v14 = *(v6 + v1[10] + 8);

  v15 = v6 + v1[11];
  if (*(v15 + 8))
  {
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 32);

  sub_21C7025C4(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  v18 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 32, v2 | 7);
}

uint64_t sub_21C7869F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C786A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82F54();
  *a1 = result;
  return result;
}

uint64_t sub_21C786A60(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82F64();
}

uint64_t sub_21C786A8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21C786AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC8, &qword_21CBC6748);
  sub_21CAD7F08();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C786C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C786CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C786D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C786E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D30, &qword_21CBC6DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C786EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7D08, &qword_21CBC6D80);
  sub_21CADC698();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C786FC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787044@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21C787074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource();
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

uint64_t sub_21C787130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMRecentlyDeletedAccountsSource();
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

uint64_t sub_21C7871F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMRecentlyDeletedAccountsSource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C787324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMRecentlyDeletedAccountsSource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C787454()
{
  type metadata accessor for _PMRecentlyDeletedAccountsView(255);
  sub_21C7065C0(&qword_27CDF7EC8, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7875F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C787630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8028, &qword_21CBC78B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C787710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C78777C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CAE9A98(v4);
}

uint64_t sub_21C787860()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7879D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource();
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

uint64_t sub_21C787A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMRecentlyDeletedAccountsSource();
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

uint64_t sub_21C787B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
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

uint64_t sub_21C787BE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787C68()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C787CC0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C787D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
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

uint64_t sub_21C787DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
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

uint64_t sub_21C787E98(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21C787F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C788080()
{
  v1 = (type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7881D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8360, &qword_21CBC8890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8358, &qword_21CBC8888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF83B0, &qword_21CBC8930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8350, &qword_21CBC8880);
  sub_21CB829D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8348, &qword_21CBC8878);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8340, &qword_21CBC8870);
  sub_21CAF71CC();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CAF70B0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF83B8, &qword_27CDF83B0, &qword_21CBC8930);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7884A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7884F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C78852C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CAF9D64(v4);
}

uint64_t sub_21C788568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80E34();
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

uint64_t sub_21C788628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB80E34();
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

uint64_t sub_21C788704()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C7A6110(v2, v3);
}

uint64_t sub_21C7887A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_21C788864(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C788914()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8488, &qword_21CBC90E0);
  type metadata accessor for PMGlobalAnimationNamespaceContainer();
  sub_21CAFC994();
  sub_21CAFC780(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7889C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788A40()
{
  MEMORY[0x21CF16E70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788A78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788AB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788AF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
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

uint64_t sub_21C788BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
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

uint64_t sub_21C788CA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788CDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C788D24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C788D74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C788DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788E00()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788E58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788EC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788F00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C788F50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C78903C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7890F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7891A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB820E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C789214(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB820E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C789294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C78930C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C789394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C789454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C789538()
{
  v1 = v0;
  v2 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v3 = *(*(v2 - 8) + 80);
  v56 = *(*(v2 - 8) + 64);
  v57 = (v3 + 16) & ~v3;
  v4 = v0 + v57;
  v5 = *(v0 + v57 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v57 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v1 = v55;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = v4 + *(v2 + 20);
  v53 = *(v52 + 8);

  sub_21C7025C4(*(v4 + *(v2 + 24)), *(v4 + *(v2 + 24) + 8));

  return MEMORY[0x2821FE8E8](v1, v57 + v56, v3 | 7);
}

uint64_t sub_21C789BDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C789C24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BF0, &qword_21CBC9F98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  sub_21CB839E4();
  sub_21CB1A630();
  sub_21CB1A788(&qword_27CDF8C00, MEMORY[0x277CDE340]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C789D68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C789E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C789F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA8, &qword_21CBCA548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C789F9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C789FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C78A054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB80BE4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C78A0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C78A144(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C78A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C78A2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C78A454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78A4C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C78A53C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EE8, &unk_21CBCA928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F18, &qword_21CBCA950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EE0, &qword_21CBCA920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8ED8, &qword_21CBCA918);
  type metadata accessor for PMOtpauthQRCodeScannerView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8ED0, &qword_21CBCA910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EF0, &qword_21CBCA938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EF8, &unk_21CBCA940);
  type metadata accessor for PMSetUpVerificationCodeAlertPurpose(255);
  sub_21C6EADEC(&qword_27CDF8F00, &qword_27CDF8EF0, &qword_21CBCA938);
  sub_21C6EADEC(&qword_27CDF8F08, &qword_27CDF8EF8, &unk_21CBCA940);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21C7FC578();
  swift_getOpaqueTypeConformance2();
  sub_21CB25158(&qword_27CDF8F10, type metadata accessor for PMOtpauthQRCodeScannerView);
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF8F20, &qword_27CDF8F18, &qword_21CBCA950);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB85C44();
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

uint64_t sub_21C78A970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB85C44();
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

uint64_t sub_21C78AA3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C78AA8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78AAC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C78AB04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78AB98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21CB85B44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21CB85B74();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[17];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21C78AD70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21CB85B44();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21CB85B74();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[17];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C78AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C78B084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C78B1C8()
{
  v1 = type metadata accessor for PMContentListSearchable();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB83834();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *&v5[v1[5]];

  v10 = v1[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = &v5[v1[7]];
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(v12 + 3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78B3C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9300, &qword_21CBCB300);
  sub_21CB2E064();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78B458(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PMAccount(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_21C78B5DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PMAccount(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C78B7AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9368, &unk_21CBCB588);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel();
  sub_21CB38144();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_21C78B96C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C78BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C78BB90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CB813C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C78BCA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A0, &qword_21CBCBCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78BD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E04();
  *a1 = result;
  return result;
}

uint64_t sub_21C78BD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C78BE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78BF14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21C78BFD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78C088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 68);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF9AD8, &qword_21CBCC7F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C78C238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 68);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF9AD8, &qword_21CBCC7F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C78C38C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78C428()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C78C480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E50, &qword_21CBCD508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C78C500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C78C5D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C78C6AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
  sub_21CB825E4();
  type metadata accessor for PMAdapativeStackLabeledContentStyle();
  sub_21CB4A1DC();
  swift_getWitnessTable();
  sub_21CAA5114();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78C778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C78C834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78C900()
{
  v1 = (type metadata accessor for PMTipView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 80);

  v11 = *(v0 + v3 + 120);

  v12 = *(v0 + v3 + 152);

  v13 = v1[13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78CA70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21C78CAA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_21C78CAFC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_21CB85584();
  [v4 setWebsiteTitle_];
}

void sub_21C78CB64(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_21CB80B74();
  [v2 setFormURL_];
}

uint64_t sub_21C78CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C78CC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C78CDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C78CF2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21C78CF98()
{
  v1 = (type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v66 = *(*(v5 - 1) + 64);
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[5];

  v10 = v0[7];

  v11 = v0[9];

  v12 = v0[11];

  v13 = (v0 + v3);
  sub_21C7A34C0(*v13, v13[1]);
  v14 = v13[3];

  v15 = v13[5];

  v16 = *(type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0) + 44);
  v17 = sub_21CB811C4();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);

  v67 = v7;
  v18 = v0 + v7;
  v19 = *(v0 + v7 + 8);

  v20 = v0 + v7 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  LODWORD(v13) = swift_getEnumCaseMultiPayload();
  v21 = *(v20 + 1);

  v22 = *(v20 + 3);

  if (v13 == 1)
  {
    v23 = *(v20 + 5);

    v24 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v25 = v24[7];
    v26 = sub_21CB85B74();
    (*(*(v26 - 8) + 8))(&v20[v25], v26);
    v27 = *&v20[v24[8] + 8];

    v28 = v24[9];
    v29 = sub_21CB85C44();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(&v20[v28], 1, v29))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v55 = *(v20 + 4);

  v56 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v57 = v56[7];
  v58 = sub_21CB85C04();
  v59 = *(v58 - 8);
  if (!(*(v59 + 48))(&v20[v57], 1, v58))
  {
    (*(v59 + 8))(&v20[v57], v58);
  }

  v60 = v56[8];
  v61 = sub_21CB85BB4();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v20[v60], 1, v61))
  {
    (*(v62 + 8))(&v20[v60], v61);
  }

  v28 = v56[9];
  v29 = sub_21CB85C44();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(&v20[v28], 1, v29))
  {
LABEL_3:
    (*(v30 + 8))(&v20[v28], v29);
  }

LABEL_4:
  v31 = &v18[v5[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v2;
    v32 = *(v31 + 1);

    v33 = *(v31 + 3);

    v34 = *(v31 + 5);

    v35 = *(v31 + 7);

    v36 = type metadata accessor for PMAccount.MockData(0);
    v37 = v36[8];
    v38 = sub_21CB80DD4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (!v40(&v31[v37], 1, v38))
    {
      (*(v39 + 8))(&v31[v37], v38);
    }

    v41 = *&v31[v36[9]];

    v42 = *&v31[v36[10] + 8];

    v43 = *&v31[v36[11] + 8];

    v44 = v36[12];
    if (!v40(&v31[v44], 1, v38))
    {
      (*(v39 + 8))(&v31[v44], v38);
    }

    v45 = v36[15];
    v46 = sub_21CB85BB4();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(&v31[v45], 1, v46))
    {
      (*(v47 + 8))(&v31[v45], v46);
    }

    v48 = v36[16];
    v49 = sub_21CB85C04();
    v50 = *(v49 - 8);
    v2 = v65;
    if (!(*(v50 + 48))(&v31[v48], 1, v49))
    {
      (*(v50 + 8))(&v31[v48], v49);
    }

    v51 = *&v31[v36[17] + 8];

    v52 = v36[18];
    v53 = sub_21CB85C44();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(&v31[v52], 1, v53))
    {
      (*(v54 + 8))(&v31[v52], v53);
    }
  }

  else
  {
  }

  v63 = &v18[v5[7]];
  if (*(v63 + 1))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v67 + v66, v2 | v6 | 7);
}

uint64_t sub_21C78D6E8()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v58 = *(*(v1 - 1) + 64);
  v4 = v0[3];

  v5 = v0[5];

  v6 = v0[7];

  v7 = v0[9];

  v8 = v0 + v3;
  v9 = *(v0 + v3 + 8);

  v10 = v0 + v3 + v1[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v10 + 1);

  v13 = *(v10 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v10 + 5);

    v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v16 = v15[7];
    v17 = sub_21CB85B74();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
    v18 = *&v10[v15[8] + 8];

    v19 = v15[9];
    v20 = sub_21CB85C44();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&v10[v19], 1, v20))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v46 = *(v10 + 4);

  v47 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v48 = v47[7];
  v49 = sub_21CB85C04();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v10[v48], 1, v49))
  {
    (*(v50 + 8))(&v10[v48], v49);
  }

  v51 = v47[8];
  v52 = sub_21CB85BB4();
  v53 = *(v52 - 8);
  if (!(*(v53 + 48))(&v10[v51], 1, v52))
  {
    (*(v53 + 8))(&v10[v51], v52);
  }

  v19 = v47[9];
  v20 = sub_21CB85C44();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v10[v19], 1, v20))
  {
LABEL_3:
    (*(v21 + 8))(&v10[v19], v20);
  }

LABEL_4:
  v22 = &v8[v1[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = (v2 + 80) & ~v2;
    v57 = v2;
    v23 = *(v22 + 1);

    v24 = *(v22 + 3);

    v25 = *(v22 + 5);

    v26 = *(v22 + 7);

    v27 = type metadata accessor for PMAccount.MockData(0);
    v28 = v27[8];
    v29 = sub_21CB80DD4();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (!v31(&v22[v28], 1, v29))
    {
      (*(v30 + 8))(&v22[v28], v29);
    }

    v32 = *&v22[v27[9]];

    v33 = *&v22[v27[10] + 8];

    v34 = *&v22[v27[11] + 8];

    v35 = v27[12];
    if (!v31(&v22[v35], 1, v29))
    {
      (*(v30 + 8))(&v22[v35], v29);
    }

    v36 = v27[15];
    v37 = sub_21CB85BB4();
    v38 = *(v37 - 8);
    v3 = v56;
    if (!(*(v38 + 48))(&v22[v36], 1, v37))
    {
      (*(v38 + 8))(&v22[v36], v37);
    }

    v39 = v27[16];
    v40 = sub_21CB85C04();
    v41 = *(v40 - 8);
    v2 = v57;
    if (!(*(v41 + 48))(&v22[v39], 1, v40))
    {
      (*(v41 + 8))(&v22[v39], v40);
    }

    v42 = *&v22[v27[17] + 8];

    v43 = v27[18];
    v44 = sub_21CB85C44();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(&v22[v43], 1, v44))
    {
      (*(v45 + 8))(&v22[v43], v44);
    }
  }

  else
  {
  }

  v54 = &v8[v1[7]];
  if (*(v54 + 1))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v58, v2 | 7);
}

uint64_t sub_21C78DD60()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v54 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;
  v6 = *(v0 + v4 + 8);

  v7 = (v0 + v4 + v2[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v5 + v2[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v4 = (v3 + 16) & ~v3;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    v1 = v53;
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v5 + v2[7];
  if (*(v51 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v54, v3 | 7);
}

uint64_t sub_21C78E3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA468, &qword_21CBCE548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA460, &qword_21CBCE540);
  sub_21CB5D180();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C78E778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C78E8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B8, &qword_21CBCF4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78E948()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA770, &qword_21CBCF498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA798, &unk_21CBCF4A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA768, &qword_21CBCF490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB69BFC();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA7A0, &qword_27CDFA798, &unk_21CBCF4A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78EAB8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21CB84CC4();
  return swift_getWitnessTable();
}

uint64_t sub_21C78EB18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA890, &qword_21CBCF780);
  sub_21C6EADEC(&qword_27CDFA898, &qword_27CDFA890, &qword_21CBCF780);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78EC1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C78ED94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C78EF4C()
{
  v1 = v0;
  v2 = type metadata accessor for PMVerificationCodesList();
  v76 = *(*(v2 - 1) + 80);
  v3 = (v76 + 16) & ~v76;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v75 = *(*(v5 - 1) + 64);
  v8 = v1 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  (*(*(v9 - 8) + 8))(v1 + v3, v9);
  v10 = *(v1 + v3 + v2[5] + 8);

  v11 = v1 + v3 + v2[6];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_21C79C1F4();
  v15 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82A34();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
  }

  else
  {
    v17 = *(v8 + v15);
  }

  v18 = v7 & ~v6;
  v19 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB83834();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
    v22 = *(v8 + v19);
  }

  v23 = *(v8 + v2[9]);

  v24 = v1 + v18;
  v25 = *(v1 + v18 + 8);

  v26 = (v1 + v18 + v5[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *(v26 + 1);

  v29 = *(v26 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v30 = *(v26 + 5);

    v31 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v32 = v31[7];
    v33 = sub_21CB85B74();
    (*(*(v33 - 8) + 8))(&v26[v32], v33);
    v34 = *&v26[v31[8] + 8];

    v35 = v31[9];
    v36 = sub_21CB85C44();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(&v26[v35], 1, v36))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v62 = v18;
  v63 = *(v26 + 4);

  v64 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v65 = v64[7];
  v66 = sub_21CB85C04();
  v67 = *(v66 - 8);
  if (!(*(v67 + 48))(&v26[v65], 1, v66))
  {
    (*(v67 + 8))(&v26[v65], v66);
  }

  v68 = v64[8];
  v69 = sub_21CB85BB4();
  v70 = *(v69 - 8);
  if (!(*(v70 + 48))(&v26[v68], 1, v69))
  {
    (*(v70 + 8))(&v26[v68], v69);
  }

  v35 = v64[9];
  v36 = sub_21CB85C44();
  v37 = *(v36 - 8);
  v18 = v62;
  if (!(*(v37 + 48))(&v26[v35], 1, v36))
  {
LABEL_10:
    (*(v37 + 8))(&v26[v35], v36);
  }

LABEL_11:
  v38 = v24 + v5[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = v18;
    v74 = v1;
    v39 = *(v38 + 8);

    v40 = *(v38 + 24);

    v41 = *(v38 + 40);

    v42 = *(v38 + 56);

    v43 = type metadata accessor for PMAccount.MockData(0);
    v44 = v43[8];
    v45 = sub_21CB80DD4();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (!v47(v38 + v44, 1, v45))
    {
      (*(v46 + 8))(v38 + v44, v45);
    }

    v48 = *(v38 + v43[9]);

    v49 = *(v38 + v43[10] + 8);

    v50 = *(v38 + v43[11] + 8);

    v51 = v43[12];
    if (!v47(v38 + v51, 1, v45))
    {
      (*(v46 + 8))(v38 + v51, v45);
    }

    v52 = v43[15];
    v53 = sub_21CB85BB4();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v38 + v52, 1, v53))
    {
      (*(v54 + 8))(v38 + v52, v53);
    }

    v55 = v43[16];
    v56 = sub_21CB85C04();
    v57 = *(v56 - 8);
    v1 = v74;
    if (!(*(v57 + 48))(v38 + v55, 1, v56))
    {
      (*(v57 + 8))(v38 + v55, v56);
    }

    v58 = *(v38 + v43[17] + 8);

    v59 = v43[18];
    v60 = sub_21CB85C44();
    v61 = *(v60 - 8);
    v18 = v73;
    if (!(*(v61 + 48))(v38 + v59, 1, v60))
    {
      (*(v61 + 8))(v38 + v59, v60);
    }
  }

  else
  {
  }

  v71 = v24 + v5[7];
  if (*(v71 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v18 + v75, v76 | v6 | 7);
}

uint64_t sub_21C78F7DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78F818()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C78F854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CB722EC(v4);
}

uint64_t sub_21C78F8A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CB710A8(v2, v3);
}

uint64_t sub_21C78F900()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21C78F940()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C78F978(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CB83964();
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB74744(&qword_27CDFAB30, MEMORY[0x277CE06F0]);
  sub_21CB82314();
  sub_21CB828F4();
  sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C78FAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB70, &qword_21CBD01F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78FBB0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_21C78FD40(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C78FF04()
{
  v1 = type metadata accessor for PMSecurityRecommendationPlatter();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
    v12 = *(v6 + v9);
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB823B4();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  v16 = v1[8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  (*(*(v17 - 8) + 8))(v6 + v16, v17);
  v18 = v6 + v1[9];
  if (*(v18 + 8))
  {
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 8);

  return MEMORY[0x2821FE8E8](v0, v19 + 32, v2 | 7);
}

uint64_t sub_21C7901B4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C7901F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7902FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C7A34C0(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for PMListSubtitleCellLabeledContentStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_21C79033C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t PMOnboardingIsICloudKeychainSyncingEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 objectForKey:@"overrideIsICloudKeychainSyncEnabledForSafariAutoFillIntroduction"];

  if (v1)
  {
    v2 = [v0 safari_BOOLForKey:@"overrideIsICloudKeychainSyncEnabledForSafariAutoFillIntroduction" defaultValue:0];
  }

  else
  {
    v3 = [MEMORY[0x277D49A50] sharedMonitor];
    v2 = [v3 isKeychainSyncEnabled];
  }

  return v2;
}

uint64_t PMOnboardingIsPasswordAutoFillEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 objectForKey:@"overrideIsPasswordAutoFillEnabledForSafariAutoFillIntroduction"];

  if (v1)
  {
    v2 = [v0 safari_BOOLForKey:@"overrideIsPasswordAutoFillEnabledForSafariAutoFillIntroduction" defaultValue:0];
  }

  else
  {
    v3 = [MEMORY[0x277D49DC0] sharedFeatureManager];
    v2 = [v3 shouldAutoFillPasswordsFromKeychain];
  }

  return v2;
}

uint64_t PMOnboardingShouldShowIconBadge()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];

  if (([v1 isEqualToString:@"SafariViewService"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"Safari"))
  {
    v2 = [MEMORY[0x277CBEBD0] pm_defaults];
    v3 = [v2 BOOLForKey:@"shouldShowIconBadge"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PMOnboardingHasShownStrongPasswordSavedView()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 safari_BOOLForKey:@"hasShownStrongPasswordSavedView" defaultValue:0];

  return v1;
}

void sub_21C790664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKStoreReviewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27831C978;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    __getSKStoreReviewControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SKStoreReviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKStoreReviewControllerClass_block_invoke_cold_1();
  }

  getSKStoreReviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21C7938B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id makeSafariViewControllerWithURL(void *a1)
{
  v1 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getSFSafariViewControllerConfigurationClass_softClass;
  v17 = getSFSafariViewControllerConfigurationClass_softClass;
  if (!getSFSafariViewControllerConfigurationClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getSFSafariViewControllerConfigurationClass_block_invoke;
    v12 = &unk_27831C958;
    v13 = &v14;
    __getSFSafariViewControllerConfigurationClass_block_invoke(&v9);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = objc_alloc_init(v2);
  [v4 _setPerformingAccountSecurityUpgrade:1];
  [v4 setBarCollapsingEnabled:0];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getSFSafariViewControllerClass_softClass;
  v17 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getSFSafariViewControllerClass_block_invoke;
    v12 = &unk_27831C958;
    v13 = &v14;
    __getSFSafariViewControllerClass_block_invoke(&v9);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [[v5 alloc] initWithURL:v1 configuration:v4];
  [v7 setModalInPresentation:1];

  return v7;
}

void sub_21C7947FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerConfigurationClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  result = objc_getClass("SFSafariViewControllerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerConfigurationClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SafariServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SafariServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27831CBC8;
    v3 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    SafariServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthorization()
{
  if (WBS_LOG_CHANNEL_PREFIXAuthorization_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthorization_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthorization_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswords()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswords_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswords_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswords_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXServiceLifecycle()
{
  if (WBS_LOG_CHANNEL_PREFIXServiceLifecycle_onceToken[0] != -1)
  {
    WBS_LOG_CHANNEL_PREFIXServiceLifecycle_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXServiceLifecycle_log;
}

uint64_t sub_21C799714()
{
  v1 = v0;
  v2 = sub_21CB82F84();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_21CB80BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0 + *(type metadata accessor for PMManagePasskeyOnWebsiteLink() + 20);
  v19 = v18 + *(type metadata accessor for PMAccount(0) + 28);
  if (*(v19 + 8) && (v20 = [*(v19 + 24) websitePasskeyAvailabilityInfo]) != 0)
  {
    v21 = v20;
    sub_21CB81064();

    v22 = *(v14 + 48);
    if (v22(v10, 1, v13) != 1)
    {
      (*(v14 + 32))(v12, v10, v13);
      (*(v14 + 56))(v12, 0, 1, v13);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  sub_21C799C3C(v12);
  v22 = *(v14 + 48);
  if (v22(v10, 1, v13) != 1)
  {
    sub_21C79C324(v10);
  }

LABEL_8:
  if (v22(v12, 1, v13) == 1)
  {
    return sub_21C79C324(v12);
  }

  (*(v14 + 32))(v17, v12, v13);
  v25 = *v1;
  v24 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v26 = *(v1 + 8);
  }

  else
  {
    v27 = *v1;

    sub_21CB85B04();
    v28 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4();
    (*(v30 + 8))(v5, v2);
    v25 = v31;
  }

  v25(v17);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21C799B08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C799C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v1 + *(type metadata accessor for PMManagePasskeyOnWebsiteLink() + 20);
  v16 = type metadata accessor for PMAccount(0);
  sub_21C79C38C(v15 + *(v16 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C79C464(v14, v10, type metadata accessor for PMAccount.MockData);
    v18 = *(v10 + 6);
    v17 = *(v10 + 7);

    sub_21C79C4CC(v10);
  }

  else
  {
    v19 = *v14;
    v20 = [*v14 highLevelDomain];
    if (!v20)
    {

      v27 = sub_21CB80BE4();
      return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
    }

    v21 = v20;
    sub_21CB855C4();
  }

  v22 = sub_21CB85584();

  v23 = [v22 safari_bestURLForUserTypedString];

  if (v23)
  {
    sub_21CB80B94();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_21CB80BE4();
  (*(*(v25 - 8) + 56))(v6, v24, 1, v25);
  return sub_21C79C3F4(v6, a1);
}

uint64_t sub_21C799F00(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CF15490](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_21C799F54(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x21CF154A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_21C799FD4()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C79A01C()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C79A060(uint64_t a1, id *a2)
{
  result = sub_21CB855A4();
  *a2 = 0;
  return result;
}

uint64_t sub_21C79A0D8(uint64_t a1, id *a2)
{
  v3 = sub_21CB855B4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C79A158@<X0>(uint64_t *a1@<X8>)
{
  sub_21CB855C4();
  v2 = sub_21CB85584();

  *a1 = v2;
  return result;
}

uint64_t sub_21C79A19C(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA900, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21C79A208(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA900, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21C79A274(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21C79A2F0(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21C79A35C(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21C79A3C8(void *a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21C79A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21C79A4E4(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21C79A550(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21C79A5BC(void *a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21C79A64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21C79A6C8()
{
  v2 = *v0;
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C79A728()
{
  sub_21C79B218(&qword_27CDEA998, type metadata accessor for CIContextOption);
  sub_21C79B218(&qword_27CDEA9A0, type metadata accessor for CIContextOption);

  return sub_21CB86234();
}

uint64_t sub_21C79A7E4()
{
  sub_21C79B218(&qword_27CDEAA30, type metadata accessor for ActivityType);
  sub_21C79B218(&qword_27CDEAA38, type metadata accessor for ActivityType);

  return sub_21CB86234();
}

_DWORD *sub_21C79A8A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_21C79A8B0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_21C79A8BC()
{
  v2 = *v0;
  sub_21C79B218(&qword_27CDEA788, type metadata accessor for UILayoutPriority);
  sub_21C79B218(&qword_27CDEA790, type metadata accessor for UILayoutPriority);
  return sub_21CB86234();
}

uint64_t sub_21C79A978(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA8A0, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21C79A9E4(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA8A0, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21C79AA50(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21C79AABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21C79AB40()
{
  sub_21C79B218(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey);
  sub_21C79B218(&qword_27CDEA960, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_21CB86234();
}

uint64_t sub_21C79ABFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CB85584();

  *a2 = v5;
  return result;
}

uint64_t sub_21C79AC44()
{
  sub_21C79B218(&qword_27CDEA948, type metadata accessor for OptionsKey);
  sub_21C79B218(&unk_27CDEA950, type metadata accessor for OptionsKey);

  return sub_21CB86234();
}

uint64_t sub_21C79AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21C79AD84()
{
  v1 = *v0;
  v2 = sub_21CB855C4();
  v3 = MEMORY[0x21CF15270](v2);

  return v3;
}

uint64_t sub_21C79ADC0()
{
  v1 = *v0;
  sub_21CB855C4();
  sub_21CB854C4();
}

uint64_t sub_21C79AE14()
{
  v1 = *v0;
  sub_21CB855C4();
  sub_21CB86484();
  sub_21CB854C4();
  v2 = sub_21CB864D4();

  return v2;
}

uint64_t sub_21C79AEE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21CB855C4();
  v6 = v5;
  if (v4 == sub_21CB855C4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CB86344();
  }

  return v9 & 1;
}

uint64_t sub_21C79AF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
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

id sub_21C79B008(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

id sub_21C79B044(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C79B008(result, a2, a3);
  }

  return result;
}

uint64_t sub_21C79B058(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C79B068(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C79B07C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21C79B07C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_21C79B094(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21C79B0A8(result, a2);
  }

  return result;
}

id sub_21C79B0A8(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_21C79B0BC()
{
  result = qword_27CDEA590;
  if (!qword_27CDEA590)
  {
    sub_21CB827C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA590);
  }

  return result;
}

uint64_t sub_21C79B218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C79B588(uint64_t a1, int a2)
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

uint64_t sub_21C79B5A8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C79B6B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C79B6D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_21C79BB00()
{
  result = qword_27CDEA8C8;
  if (!qword_27CDEA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA8C8);
  }

  return result;
}

uint64_t type metadata accessor for PMManagePasskeyOnWebsiteLink()
{
  result = qword_27CDEA9C0;
  if (!qword_27CDEA9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}