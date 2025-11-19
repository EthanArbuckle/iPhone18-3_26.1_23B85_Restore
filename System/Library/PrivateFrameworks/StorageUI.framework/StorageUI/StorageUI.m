id STMGestaltTotalDiskCapacity()
{
  if (STMGestaltTotalDiskCapacity_onceToken[0] != -1)
  {
    STMGestaltTotalDiskCapacity_cold_1();
  }

  v1 = STMGestaltTotalDiskCapacity_totalDiskCapacity;

  return v1;
}

void __STMGestaltTotalDiskCapacity_block_invoke()
{
  v2 = MGCopyAnswer();
  v0 = [v2 objectForKeyedSubscript:*MEMORY[0x277D823C8]];
  v1 = STMGestaltTotalDiskCapacity_totalDiskCapacity;
  STMGestaltTotalDiskCapacity_totalDiskCapacity = v0;
}

uint64_t Array<A>.winingIdentifier.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
  sub_26BC00170(v1, *(a1 + 40), *(a1 + 48));
  return v1;
}

uint64_t sub_26BC00170(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26BC00198@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26BC1370C();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_26BC133DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26BC00214(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_26BC002A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26BC00338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x26D6904D0](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441AC8, &qword_26BC15130);
  sub_26BC00468();
  sub_26BC00610();
  return sub_26BC1354C();
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

unint64_t sub_26BC00468()
{
  result = qword_280441AD0;
  if (!qword_280441AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441AC8, &qword_26BC15130);
    sub_26BC00568();
    swift_getOpaqueTypeConformance2();
    sub_26BC005BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AD0);
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

unint64_t sub_26BC00568()
{
  result = qword_280441AD8;
  if (!qword_280441AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AD8);
  }

  return result;
}

unint64_t sub_26BC005BC()
{
  result = qword_280441AE0;
  if (!qword_280441AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AE0);
  }

  return result;
}

unint64_t sub_26BC00610()
{
  result = qword_280441AE8;
  if (!qword_280441AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AE8);
  }

  return result;
}

id variable initialization expression of FollowupMonitor.controller()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFE500]);

  return [v0 init];
}

uint64_t sub_26BC006A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BC137CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280441AF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280441AF0);
    }
  }
}

uint64_t sub_26BC0076C(uint64_t a1, id *a2)
{
  result = sub_26BC137EC();
  *a2 = 0;
  return result;
}

uint64_t sub_26BC007E4(uint64_t a1, id *a2)
{
  v3 = sub_26BC137FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26BC00864@<X0>(uint64_t *a1@<X8>)
{
  sub_26BC1380C();
  v2 = sub_26BC137DC();

  *a1 = v2;
  return result;
}

uint64_t sub_26BC008A8()
{
  v1 = *v0;
  v2 = sub_26BC1380C();
  v3 = MEMORY[0x26D6908A0](v2);

  return v3;
}

uint64_t sub_26BC008E4()
{
  v1 = *v0;
  sub_26BC1380C();
  sub_26BC1381C();
}

uint64_t sub_26BC00938()
{
  v1 = *v0;
  sub_26BC1380C();
  sub_26BC13A7C();
  sub_26BC1381C();
  v2 = sub_26BC13AAC();

  return v2;
}

uint64_t sub_26BC009AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26BC1380C();
  v6 = v5;
  if (v4 == sub_26BC1380C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26BC13A4C();
  }

  return v9 & 1;
}

uint64_t sub_26BC00A34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26BC137DC();

  *a2 = v5;
  return result;
}

uint64_t sub_26BC00A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26BC1380C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26BC00AA8(uint64_t a1)
{
  v2 = sub_26BC00BDC(&qword_280441B10);
  v3 = sub_26BC00BDC(&qword_280441B18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26BC00BDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC00C40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC00D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for StorageGaugeLegendItemView()
{
  result = qword_280441B28;
  if (!qword_280441B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BC00E0C()
{
  sub_26BC00E90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BC00E90()
{
  if (!qword_280441B38)
  {
    sub_26BC00EEC();
    v0 = sub_26BC1321C();
    if (!v1)
    {
      atomic_store(v0, &qword_280441B38);
    }
  }
}

unint64_t sub_26BC00EEC()
{
  result = qword_280441B40;
  if (!qword_280441B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B40);
  }

  return result;
}

uint64_t sub_26BC00F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v41 - v5;
  v43 = sub_26BC134BC();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v10;
  v53 = *(a1 + 64);
  v54 = *(a1 + 80);
  v11 = *(a1 + 16);
  v50[0] = *a1;
  v50[1] = v11;
  v45 = *(&v51 + 1);
  v12 = *(&v11 + 1);
  v42 = v11;
  LOBYTE(v60) = v54;
  v58 = v10;
  v59 = v53;
  v56 = v11;
  v57 = v51;
  v55 = v50[0];
  v46 = sub_26BC1343C();
  v13 = *(type metadata accessor for StorageGaugeLegendItemView() + 24);
  sub_26BC01758(v50, &v66);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  *(v49 + 5) = *&v49[7];
  *(&v49[2] + 5) = *&v49[9];
  *(&v49[4] + 5) = *&v49[11];
  *&v66 = v42;
  *(&v66 + 1) = v12;
  sub_26BC017B4();

  v14 = sub_26BC1351C();
  v16 = v15;
  v18 = v17;
  v42 = v19;
  v20 = v9;
  v21 = v9;
  v22 = v43;
  (*(v6 + 104))(v21, *MEMORY[0x277CE0AA0], v43);
  v23 = sub_26BC1348C();
  v24 = v44;
  (*(*(v23 - 8) + 56))(v44, 1, 1, v23);
  sub_26BC1349C();
  sub_26BC018F4(v24, &qword_280441B50, &qword_26BC14740);
  (*(v6 + 8))(v20, v22);
  v25 = sub_26BC1350C();
  v27 = v26;
  LODWORD(v44) = v28;
  v30 = v29;

  sub_26BC01808(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v61[2] = v57;
  v61[3] = v58;
  v61[4] = v59;
  v61[0] = v55;
  v61[1] = v56;
  v32 = v45;
  *&v62 = v60;
  *(&v62 + 1) = v45;
  LOBYTE(v24) = v46;
  v63[0] = v46;
  *&v63[1] = 256;
  *&v63[3] = *v49;
  *&v63[19] = *&v49[2];
  *&v63[35] = *&v49[4];
  *&v63[48] = *(&v49[5] + 5);
  v64 = 0;
  v65 = 1;
  LOWORD(v76) = 1;
  v66 = v55;
  v67 = v56;
  v70 = v59;
  v71 = v62;
  v68 = v57;
  v69 = v58;
  v72 = *v63;
  v73 = *&v63[16];
  v74 = *&v63[32];
  v75 = *(&v49[5] + 5);
  v33 = v44 & 1;
  v48 = v44 & 1;
  v47 = 0;
  v34 = *(&v49[5] + 5);
  *(a2 + 128) = *&v63[32];
  *(a2 + 144) = v34;
  v35 = v76;
  v36 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v36;
  v37 = v73;
  *(a2 + 96) = v72;
  *(a2 + 112) = v37;
  v38 = v67;
  *a2 = v66;
  *(a2 + 16) = v38;
  v39 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v39;
  *(a2 + 160) = v35;
  *(a2 + 168) = v25;
  *(a2 + 176) = v27;
  *(a2 + 184) = v33;
  *(a2 + 192) = v30;
  *(a2 + 200) = KeyPath;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  sub_26BC0187C(v61, v77, &qword_280441B60, &qword_26BC14490);
  sub_26BC018E4(v25, v27, v33);

  sub_26BC01808(v25, v27, v33);

  v77[2] = v57;
  v77[3] = v58;
  v77[4] = v59;
  v77[0] = v55;
  v77[1] = v56;
  v78 = v60;
  v79 = v32;
  v80 = v24;
  v81 = 256;
  *&v84[13] = *(&v49[5] + 5);
  *v84 = *&v49[4];
  v83 = *&v49[2];
  v82 = *v49;
  v85 = 0;
  v86 = 1;
  return sub_26BC018F4(v77, &qword_280441B60, &qword_26BC14490);
}

double sub_26BC0149C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26BC1338C();
  v29 = 0;
  sub_26BC00F5C(v2, &v15);
  v40 = v25;
  v41 = v26;
  v42[0] = v27[0];
  *(v42 + 9) = *(v27 + 9);
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v44[0] = v27[0];
  *(v44 + 9) = *(v27 + 9);
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_26BC0187C(&v30, &v14, &qword_280441B48, &unk_26BC14450);
  sub_26BC018F4(v43, &qword_280441B48, &unk_26BC14450);
  *(&v28[10] + 7) = v40;
  *(&v28[11] + 7) = v41;
  *(&v28[12] + 7) = v42[0];
  v28[13] = *(v42 + 9);
  *(&v28[6] + 7) = v36;
  *(&v28[7] + 7) = v37;
  *(&v28[8] + 7) = v38;
  *(&v28[9] + 7) = v39;
  *(&v28[2] + 7) = v32;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(&v28[5] + 7) = v35;
  *(v28 + 7) = v30;
  *(&v28[1] + 7) = v31;
  v5 = v28[11];
  *(a1 + 177) = v28[10];
  *(a1 + 193) = v5;
  v6 = v28[13];
  *(a1 + 209) = v28[12];
  *(a1 + 225) = v6;
  v7 = v28[7];
  *(a1 + 113) = v28[6];
  *(a1 + 129) = v7;
  v8 = v28[9];
  *(a1 + 145) = v28[8];
  *(a1 + 161) = v8;
  v9 = v28[3];
  *(a1 + 49) = v28[2];
  *(a1 + 65) = v9;
  v10 = v28[5];
  *(a1 + 81) = v28[4];
  *(a1 + 97) = v10;
  result = *v28;
  v12 = v28[1];
  *(a1 + 17) = v28[0];
  v13 = v29;
  *a1 = v4;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v13;
  *(a1 + 33) = v12;
  return result;
}

unint64_t sub_26BC017B4()
{
  result = qword_280441B58;
  if (!qword_280441B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B58);
  }

  return result;
}

uint64_t sub_26BC01808(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26BC01818@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BC1334C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26BC0184C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_26BC1335C();
}

uint64_t sub_26BC0187C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BC018E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26BC018F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26BC01958()
{
  result = qword_280441B68;
  if (!qword_280441B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441B70, &qword_26BC14498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B68);
  }

  return result;
}

uint64_t sub_26BC019BC()
{
  if (qword_280441A70 != -1)
  {
    swift_once();
  }

  qword_2804431A8 = qword_2804431B8;
}

uint64_t sub_26BC01A20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B80, &qword_26BC144E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26BC144B0;
  *(v0 + 32) = sub_26BC135DC();
  *(v0 + 40) = sub_26BC1368C();
  *(v0 + 48) = sub_26BC136AC();
  *(v0 + 56) = sub_26BC1365C();
  *(v0 + 64) = sub_26BC1361C();
  *(v0 + 72) = sub_26BC1363C();
  *(v0 + 80) = sub_26BC135FC();
  *(v0 + 88) = sub_26BC135EC();
  *(v0 + 96) = sub_26BC1367C();
  *(v0 + 104) = sub_26BC1369C();
  result = sub_26BC1362C();
  *(v0 + 112) = result;
  qword_2804431B0 = v0;
  return result;
}

uint64_t sub_26BC01ACC(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (qword_280441A68 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = qword_2804431B0;
    v2 = *(qword_2804431B0 + 16);
    if (!v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    v3 = a1 % v2;
    v4 = qword_2804431B0 + 8 * (a1 % v2);
    if (a1 / v2 >= 1)
    {
      break;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v3 < v2)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 32);

  v6 = sub_26BC1359C();

  if (v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
    v13 = 0;
    v14[0] = 0;
    v12 = 0;
    [v7 getHue:&v12 saturation:&v13 brightness:v14 alpha:0];
    v8 = sub_26BC135CC();

    goto LABEL_10;
  }

  if (v3 >= *(v1 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = *(v4 + 32);

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_26BC01C6C()
{
  if (qword_280441A88 != -1)
  {
    swift_once();
  }

  v0 = qword_280441B78;
  result = sub_26BC135AC();
  qword_2804431B8 = result;
  return result;
}

uint64_t sub_26BC01CC8()
{
  v0 = [objc_opt_self() opaqueSeparatorColor];
  result = sub_26BC135AC();
  qword_2804431C0 = result;
  return result;
}

uint64_t sub_26BC01D08()
{
  CGColorCreateGenericGray(0.312, 0.739);
  result = sub_26BC1358C();
  qword_2804431C8 = result;
  return result;
}

uint64_t sub_26BC01D3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_26BC01E04;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26BC01F04;
  v4[3] = &block_descriptor;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_280441B78 = v2;
  return result;
}

id sub_26BC01E04(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 && v1 != 2)
  {
    if (v1 == 1)
    {
      v4 = objc_allocWithZone(MEMORY[0x277D75348]);

      return [v4 initWithWhite:0.99 alpha:1.0];
    }

    else
    {
      result = sub_26BC139EC();
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_opt_self() systemGroupedBackgroundColor];

    return v2;
  }

  return result;
}

id sub_26BC01F04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t StorageGaugeView.init(capacity:categories:available:onSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(type metadata accessor for StorageGaugeView() + 32);
  sub_26BC00EEC();
  sub_26BC131FC();
  *a6 = a1;
  a6[2] = a4;
  a6[3] = a5;
  *&v37[0] = a2;

  sub_26BC03698(v37);

  v13 = sub_26BC07DA8(*&v37[0]);

  v14 = 0;
  v15 = v13[2] + 1;
  v16 = 8;
  while (--v15)
  {
    v17 = v13[v16];
    v16 += 11;
    v18 = __OFADD__(v14, v17);
    v14 += v17;
    if (v18)
    {
      __break(1u);
      break;
    }
  }

  v19 = v14 + a3;
  if (__OFADD__(v14, a3))
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = a1 - v19;
  if (__OFSUB__(a1, v19))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20)
  {
    if (qword_280441A98 != -1)
    {
      swift_once();
    }

    v21 = sub_26BC1317C();
    __swift_project_value_buffer(v21, qword_2804431E8);
    v22 = sub_26BC1315C();
    v23 = sub_26BC1390C();
    if (os_log_type_enabled(v22, v23))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218752;
      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = a3;
      *(v12 + 22) = 2048;
      *(v12 + 24) = a1;
      *(v12 + 32) = 2048;
      *(v12 + 34) = v20;
      _os_log_impl(&dword_26BBFE000, v22, v23, "Sum of all categories and available space doe not match capacity of the volume, the proportions of the gauge will be adjusted. Sum of categories: %lld, available: %lld, capacity: %lld. Difference is %lld", v12, 0x2Au);
      MEMORY[0x26D691130](v12, -1, -1);
    }

    a3 = a1 - v14;
    if (__OFSUB__(a1, v14))
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_21;
    }

    if (v20 < 0)
    {
      v24 = -v20;
      if (__OFSUB__(0, v20))
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = v20;
    }
  }

  else
  {
    v24 = 0;
  }

  v14 = a1 / 999;
  v12 = a1 / 999 - v24;
  if (__OFSUB__(a1 / 999, v24))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 < 1)
  {
    goto LABEL_24;
  }

  if (qword_280441A98 != -1)
  {
    goto LABEL_33;
  }

LABEL_21:
  v25 = sub_26BC1317C();
  __swift_project_value_buffer(v25, qword_2804431E8);
  v26 = sub_26BC1315C();
  v27 = sub_26BC1390C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v20;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v14;
    _os_log_impl(&dword_26BBFE000, v26, v27, "As the diff %lld is superior to the threshold (%lld), the available space will not be displayed in the gauge to prevent displaying a wrong value", v28, 0x16u);
    MEMORY[0x26D691130](v28, -1, -1);
  }

LABEL_24:
  sub_26BC088F0(a3, v12 > 0, v37);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_31:
    result = sub_26BC0330C(0, v13[2] + 1, 1, v13);
    v13 = result;
  }

  v31 = v13[2];
  v30 = v13[3];
  if (v31 >= v30 >> 1)
  {
    result = sub_26BC0330C((v30 > 1), v31 + 1, 1, v13);
    v13 = result;
  }

  v13[2] = v31 + 1;
  v32 = &v13[11 * v31];
  v33 = v37[1];
  *(v32 + 2) = v37[0];
  *(v32 + 3) = v33;
  v34 = v37[2];
  v35 = v37[3];
  v36 = v37[4];
  *(v32 + 112) = v38;
  *(v32 + 5) = v35;
  *(v32 + 6) = v36;
  *(v32 + 4) = v34;
  a6[1] = v13;
  a6[4] = a3;
  return result;
}

uint64_t type metadata accessor for StorageGaugeView()
{
  result = qword_280441B88;
  if (!qword_280441B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StorageGaugeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (type metadata accessor for StorageGaugeView() - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  MEMORY[0x28223BE20]();
  sub_26BC04C40(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StorageGaugeView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26BC04D3C(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StorageGaugeView);
  v8 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = sub_26BC04250;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  result = *&v18;
  *(a1 + 48) = v18;
  return result;
}

double sub_26BC0259C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v59 = sub_26BC1330C();
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BC1324C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for StorageGaugeView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_26BC1338C();
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = 0;
  *&v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE8, &qword_26BC145A8) + 44);
  v58 = *(a2 + 8);
  *&v61 = sub_26BC0BF1C(v58);
  KeyPath = swift_getKeyPath();
  sub_26BC04C40(a2, v14, type metadata accessor for StorageGaugeView);
  (*(v9 + 16))(&KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v8);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_26BC04D3C(v14, v17 + v15, type metadata accessor for StorageGaugeView);
  (*(v9 + 32))(v17 + v16, &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26BC04940;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF0, &qword_26BC145D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF8, &qword_26BC145D8);
  sub_26BC04AC8(&qword_280441C00, &qword_280441BF0, &qword_26BC145D0);
  sub_26BC04B10();
  sub_26BC04B64();
  sub_26BC1377C();
  if (qword_280441A60 != -1)
  {
    swift_once();
  }

  v19 = qword_2804431A8;
  v20 = sub_26BC1343C();
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C20, &qword_26BC145E0) + 36);
  *v21 = v19;
  *(v21 + 8) = v20;

  v22 = sub_26BC1379C();
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C28, &qword_26BC145E8) + 36));
  v24 = v58;
  *v23 = v22;
  v23[1] = v24;
  v25 = sub_26BC1331C();
  v26 = *(v25 + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_26BC133AC();
  v29 = *(*(v28 - 8) + 104);
  v29(&v7[v26], v27, v28);
  __asm { FMOV            V0.2D, #3.0 }

  v60 = _Q0;
  *v7 = _Q0;
  *&v7[*(v59 + 20)] = 0xBFF0000000000000;
  v35 = qword_280441A70;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_26BC136BC();
  sub_26BC131EC();
  v37 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C30, &qword_26BC145F0) + 36);
  sub_26BC04C40(v7, v37, MEMORY[0x277CDFBC8]);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C38, &qword_26BC145F8) + 36);
  v39 = v62;
  *v38 = v61;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C40, &qword_26BC14600);
  *(v37 + *(v40 + 52)) = v36;
  *(v37 + *(v40 + 56)) = 256;
  v41 = sub_26BC1378C();
  v43 = v42;
  sub_26BC04CA8(v7);
  v44 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C48, &qword_26BC14608) + 36));
  *v44 = v41;
  v44[1] = v43;
  if (qword_280441A80 != -1)
  {
    swift_once();
  }

  v45 = qword_2804431C8;
  v46 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C50, &qword_26BC14610) + 36);
  *v46 = v45;
  __asm { FMOV            V0.2D, #1.0 }

  *(v46 + 8) = _Q0;
  *(v46 + 24) = 0x3FF0000000000000;
  v48 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C58, &qword_26BC14618) + 36));
  v29(&v48[*(v25 + 20)], v27, v28);
  *v48 = v60;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C60, &qword_26BC14620);
  *&v48[*(v49 + 36)] = 256;

  v50 = sub_26BC1378C();
  v52 = v51;
  v53 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C68, &qword_26BC14628) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C70, &qword_26BC14630) + 36));
  v29(&v54[*(v25 + 20)], v27, v28);
  result = *&v60;
  *v54 = v60;
  *&v54[*(v49 + 36)] = 256;
  return result;
}

uint64_t sub_26BC02C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StorageGaugeItemView();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v28[-1] - v14;
  v16 = *(a2 + 32) / *a3;
  if (v16 <= 0.001)
  {
    v26 = *(v13 + 56);

    return v26(a4, 1, 1, v8);
  }

  else
  {
    v27 = v13;
    sub_26BC1323C();
    v18 = fmax(v17 * v16 + -1.0, 1.0);
    v19 = a3[2];
    v20 = a3[3];
    *&v12[*(v8 + 36)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
    swift_storeEnumTagMultiPayload();
    v21 = *(a2 + 48);
    *(v12 + 2) = *(a2 + 32);
    *(v12 + 3) = v21;
    *(v12 + 4) = *(a2 + 64);
    v12[80] = *(a2 + 80);
    v22 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 1) = v22;
    *(v12 + 11) = a1;
    *(v12 + 12) = v18;
    *(v12 + 13) = v19;
    *(v12 + 14) = v20;
    v29 = 0;
    sub_26BC04D2C(v19);
    sub_26BC01758(a2, v28);
    sub_26BC136CC();
    v23 = v28[1];
    v12[120] = v28[0];
    *(v12 + 16) = v23;
    v24 = *(v8 + 40);
    v28[0] = 0x4035000000000000;
    sub_26BC00EEC();
    sub_26BC131FC();
    sub_26BC04D3C(v12, v15, type metadata accessor for StorageGaugeItemView);
    sub_26BC04D3C(v15, a4, type metadata accessor for StorageGaugeItemView);
    return (*(v27 + 56))(a4, 0, 1, v8);
  }
}

double sub_26BC02F54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  sub_26BC04C40(v2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StorageGaugeView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26BC04D3C(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StorageGaugeView);
  v9 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  *a2 = sub_26BC04DA8;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  result = *&v19;
  *(a2 + 48) = v19;
  return result;
}

uint64_t sub_26BC030F4(uint64_t a1)
{
  v2 = *(*(sub_26BC131CC() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26BC1333C();
}

uint64_t sub_26BC031BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_26BC03208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD0, &unk_26BC14590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26BC0330C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C80, &unk_26BC14670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BC03430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD8, &qword_26BC14880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26BC03534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE0, &qword_26BC145A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26BC03638@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26BC03668(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_26BC03688(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26BC03698(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07B9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BC0373C(v5);
  *a1 = v2;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BC0373C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BC13A2C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26BC1388C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BC03924(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BC03834(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BC03834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      v10 = *(v8 - 32);
      v11 = *(v8 - 56) < *(v8 + 32);
      if (v9 != v10)
      {
        v11 = v10 < v9;
      }

      if (!v11)
      {
LABEL_4:
        ++a3;
        v5 += 88;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = v8 - 88;
      v18 = *(v8 + 32);
      v19 = *(v8 + 48);
      v20 = *(v8 + 64);
      v21 = *(v8 + 80);
      v16 = *v8;
      v17 = *(v8 + 16);
      v13 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v13;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v14 = *(v8 - 72);
      *v8 = *(v8 - 88);
      *(v8 + 16) = v14;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      *(v12 + 64) = v20;
      *(v12 + 80) = v21;
      v8 -= 88;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC03924(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BC07750(v8);
      v8 = result;
    }

    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v8[16 * v85];
        v87 = *&v8[16 * v85 + 24];
        sub_26BC03F98((*a3 + 88 * v86), (*a3 + 88 * *&v8[16 * v85 + 16]), (*a3 + 88 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BC07750(v8);
        }

        if (v85 - 2 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v88 = &v8[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_26BC076C4(v85 - 1);
        v85 = *(v8 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3 + 88 * v7;
      v11 = *(v10 + 32);
      v12 = *(v10 + 56);
      v13 = 88 * v9;
      v14 = *a3 + 88 * v9;
      v15 = *(v14 + 56);
      v16 = *(v14 + 32) < v11;
      if (v12 != v15)
      {
        v16 = v15 < v12;
      }

      v17 = v9 + 2;
      v18 = (v14 + 120);
      while (v6 != v17)
      {
        v19 = v18[14];
        v20 = *v18;
        v21 = v18[3];
        v22 = v18[11];
        v18 += 11;
        v23 = v20 >= v22;
        if (v19 == v21)
        {
          v24 = v23;
        }

        else
        {
          v24 = v21 >= v19;
        }

        ++v17;
        if (v16 == v24)
        {
          v7 = v17 - 1;
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v7 = v6;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v7 < v9)
      {
        goto LABEL_124;
      }

      if (v9 < v7)
      {
        v5 = 88 * v7 - 88;
        v25 = v7;
        v89 = v9;
        do
        {
          if (v9 != --v25)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v26 = (v27 + v5);
            v97 = *(v27 + v13 + 32);
            v99 = *(v27 + v13 + 48);
            v101 = *(v27 + v13 + 64);
            v103 = *(v27 + v13 + 80);
            v93 = *(v27 + v13);
            v95 = *(v27 + v13 + 16);
            result = memmove((v27 + v13), (v27 + v5), 0x58uLL);
            *(v26 + 2) = v97;
            *(v26 + 3) = v99;
            *(v26 + 4) = v101;
            v26[80] = v103;
            *v26 = v93;
            *(v26 + 1) = v95;
          }

          ++v9;
          v5 -= 88;
          v13 += 88;
        }

        while (v9 < v25);
        v6 = a3[1];
        v9 = v89;
      }
    }

LABEL_25:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_123;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_125;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v7 < v9)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_26BC03208((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v5];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v91;
    if (!*v91)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_64:
          if (v48)
          {
            goto LABEL_111;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_114;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_118;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_78:
        if (v66)
        {
          goto LABEL_113;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_85:
        v5 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v82 = *&v8[16 * v5 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26BC03F98((*a3 + 88 * v82), (*a3 + 88 * *&v8[16 * v44 + 32]), (*a3 + 88 * v83), v43);
        if (v4)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BC07750(v8);
        }

        if (v5 >= *(v8 + 2))
        {
          goto LABEL_108;
        }

        v84 = &v8[16 * v5];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26BC076C4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_95;
    }
  }

  v28 = *a3;
  v29 = *a3 + 88 * v7;
  v30 = v9 - v7;
LABEL_35:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 56);
    v34 = *(v32 - 32);
    v35 = *(v32 - 56) < *(v32 + 32);
    if (v33 != v34)
    {
      v35 = v34 < v33;
    }

    if (!v35)
    {
LABEL_34:
      ++v7;
      v29 += 88;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_35;
      }

      v7 = v6;
      goto LABEL_44;
    }

    if (!v28)
    {
      break;
    }

    v36 = v32 - 88;
    v98 = *(v32 + 32);
    v100 = *(v32 + 48);
    v102 = *(v32 + 64);
    v104 = *(v32 + 80);
    v94 = *v32;
    v96 = *(v32 + 16);
    v37 = *(v32 - 40);
    *(v32 + 32) = *(v32 - 56);
    *(v32 + 48) = v37;
    *(v32 + 64) = *(v32 - 24);
    *(v32 + 80) = *(v32 - 8);
    v38 = *(v32 - 72);
    *v32 = *(v32 - 88);
    *(v32 + 16) = v38;
    *(v36 + 32) = v98;
    *(v36 + 48) = v100;
    *(v36 + 64) = v102;
    *(v36 + 80) = v104;
    v32 -= 88;
    *v36 = v94;
    *(v36 + 16) = v96;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_26BC03F98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    v12 = 88 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      v14 = *(v6 + 7);
      v15 = *(v4 + 7);
      v16 = *(v4 + 4) < *(v6 + 4);
      if (v14 != v15)
      {
        v16 = v15 < v14;
      }

      if (!v16)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 88;
      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 88;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_37;
      }
    }

    v17 = v4;
    v18 = v7 == v4;
    v4 += 88;
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_14:
    memmove(v7, v17, 0x58uLL);
    goto LABEL_15;
  }

  v19 = 88 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 88 && v6 > v7)
  {
    do
    {
      v5 -= 88;
      while (1)
      {
        v20 = v5 + 88;
        v21 = *(v13 - 4);
        v22 = *(v6 - 4);
        v23 = *(v6 - 7) < *(v13 - 7);
        if (v21 != v22)
        {
          v23 = v22 < v21;
        }

        if (v23)
        {
          break;
        }

        v24 = (v13 - 88);
        if (v20 != v13)
        {
          memmove(v5, v13 - 88, 0x58uLL);
        }

        v5 -= 88;
        v13 -= 88;
        if (v24 <= v4)
        {
          v13 = v24;
          goto LABEL_37;
        }
      }

      v25 = v6 - 88;
      if (v20 != v6)
      {
        memmove(v5, v6 - 88, 0x58uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 88;
    }

    while (v25 > v7);
    v6 = v25;
  }

LABEL_37:
  v26 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_26BC04284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC04354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BC04404()
{
  sub_26BC044B0();
  if (v0 <= 0x3F)
  {
    sub_26BC04500();
    if (v1 <= 0x3F)
    {
      sub_26BC00E90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BC044B0()
{
  if (!qword_280441B98)
  {
    v0 = sub_26BC138AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280441B98);
    }
  }
}

void sub_26BC04500()
{
  if (!qword_280441BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BA8, &qword_26BC14578);
    v0 = sub_26BC1393C();
    if (!v1)
    {
      atomic_store(v0, &qword_280441BA0);
    }
  }
}

unint64_t sub_26BC04568()
{
  result = qword_280441BB0;
  if (!qword_280441BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BB8, &qword_26BC14580);
    sub_26BC04AC8(&qword_280441BC0, &qword_280441BC8, &qword_26BC14588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441BB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for StorageGaugeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 16))
  {
    v7 = *(v5 + 24);
  }

  v8 = *(v1 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_26BC0472C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StorageGaugeView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26BC0259C(a1, v6, a2);
}

uint64_t sub_26BC047AC()
{
  v1 = type metadata accessor for StorageGaugeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_26BC1324C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 16))
  {
    v11 = *(v9 + 24);
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v1 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_26BC04940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for StorageGaugeView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_26BC1324C() - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_26BC02C9C(a1, a2, (v3 + v8), a3);
}

uint64_t sub_26BC04A2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BC04A64(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 7);
  v8[2] = *(a1 + 5);
  v8[3] = v5;
  v8[4] = *(a1 + 9);
  v9 = *(a1 + 88);
  v6 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v6;
  return v2(v4, v8);
}

uint64_t sub_26BC04AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26BC04B10()
{
  result = qword_280441C08;
  if (!qword_280441C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C08);
  }

  return result;
}

unint64_t sub_26BC04B64()
{
  result = qword_280441C10;
  if (!qword_280441C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BF8, &qword_26BC145D8);
    sub_26BC04BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C10);
  }

  return result;
}

unint64_t sub_26BC04BE8()
{
  result = qword_280441C18;
  if (!qword_280441C18)
  {
    type metadata accessor for StorageGaugeItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C18);
  }

  return result;
}

uint64_t sub_26BC04C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BC04CA8(uint64_t a1)
{
  v2 = sub_26BC1330C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC04D2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26BC04D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26BC04DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_26BC04E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BC04E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC133BC();
  sub_26BC04F54(v1, v11);
  *&v10[7] = v11[0];
  *&v10[23] = v11[1];
  *&v10[39] = v11[2];
  *&v10[55] = v11[3];
  v4 = sub_26BC1343C();
  result = sub_26BC131AC();
  *(a1 + 33) = *&v10[16];
  *(a1 + 49) = *&v10[32];
  *(a1 + 65) = *&v10[48];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v10[63];
  *(a1 + 17) = *v10;
  *(a1 + 88) = v4;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_26BC04F54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-v6];
  v8 = sub_26BC134BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v14 = a1[4];
  v46 = a1[2];
  v47 = v13;
  sub_26BC017B4();

  v15 = sub_26BC1351C();
  v42 = v16;
  v43 = v15;
  v41 = v17;
  v44 = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v19 setCountStyle_];
  v20 = [v19 stringFromByteCount_];
  v21 = sub_26BC1380C();
  v23 = v22;

  v46 = v21;
  v47 = v23;
  v24 = sub_26BC1351C();
  v26 = v25;
  LOBYTE(v21) = v27;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0AB0], v8);
  v28 = sub_26BC1348C();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  sub_26BC1349C();
  sub_26BC052F0(v7);
  (*(v9 + 8))(v12, v8);
  v29 = sub_26BC1350C();
  v31 = v30;
  LOBYTE(v12) = v32;
  v34 = v33;

  sub_26BC01808(v24, v26, v21 & 1);

  v35 = v41 & 1;
  v45 = v41 & 1;
  LOBYTE(v46) = v41 & 1;
  v48 = v12 & 1;
  v37 = v42;
  v36 = v43;
  *a2 = v43;
  *(a2 + 8) = v37;
  *(a2 + 16) = v35;
  *(a2 + 24) = v44;
  *(a2 + 32) = v29;
  *(a2 + 40) = v31;
  *(a2 + 48) = v12 & 1;
  *(a2 + 56) = v34;
  v38 = v36;
  sub_26BC018E4(v36, v37, v35);

  sub_26BC018E4(v29, v31, v12 & 1);

  sub_26BC01808(v29, v31, v12 & 1);

  sub_26BC01808(v38, v37, v45);
}

uint64_t sub_26BC052A4@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 80);
  v3 = *v1;
  v4 = v1[1];
  return sub_26BC04E9C(a1);
}

uint64_t sub_26BC052F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BC0535C()
{
  result = qword_280441C88;
  if (!qword_280441C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441C90, &qword_26BC14748);
    sub_26BC053E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C88);
  }

  return result;
}

unint64_t sub_26BC053E8()
{
  result = qword_280441C98;
  if (!qword_280441C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441CA0, &unk_26BC14750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C98);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StorageGaugeLegendLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StorageGaugeLegendLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_26BC054C4()
{
  result = qword_280441CA8;
  if (!qword_280441CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CA8);
  }

  return result;
}

uint64_t sub_26BC05518(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v12 = sub_26BC1328C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC8, &qword_26BC14898);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = sub_26BC1329C();
  sub_26BC063D0();
  sub_26BC138CC();
  result = sub_26BC138DC();
  if (v42[0] != v43 && (a2 & 1) == 0)
  {
    v23 = *&a1;
    (*(*(v21 - 8) + 16))(v20, a6, v21);
    v24 = *(v17 + 36);
    sub_26BC138CC();
    sub_26BC138DC();
    if (*&v20[v24] == v42[0])
    {
      return sub_26BC07BD8(v20);
    }

    else
    {
      v25 = v13;
      v26 = (v13 + 16);
      v27 = (v25 + 8);
      v28 = 0.0;
      v29 = 1;
      v30 = 0.0;
      while (1)
      {
        v40 = v29;
        while (1)
        {
          v31 = sub_26BC138FC();
          (*v26)(v16);
          v31(v42, 0);
          sub_26BC138EC();
          sub_26BC132FC();
          LOBYTE(v42[0]) = v32 & 1;
          LOBYTE(v43) = v33 & 1;
          sub_26BC1325C();
          v35 = v34;
          v37 = v36;
          result = (*v27)(v16, v12);
          if (v30 < v37)
          {
            v30 = v37;
          }

          if (v28 + v35 >= v23)
          {
            break;
          }

          v28 = v28 + v35 + a3;
          sub_26BC138DC();
          if (*&v20[v24] == v42[0])
          {
            return sub_26BC07BD8(v20);
          }
        }

        v38 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v38 <= v41)
        {
          v28 = v35 + a3;
          sub_26BC138DC();
          v29 = v38;
          if (*&v20[v24] != v42[0])
          {
            continue;
          }
        }

        return sub_26BC07BD8(v20);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26BC0589C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13)
{
  v108 = a13;
  v107 = a1;
  v23 = sub_26BC1328C();
  v109 = *(v23 - 8);
  v24 = *(v109 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  sub_26BC1329C();
  sub_26BC063D0();
  sub_26BC138CC();
  result = sub_26BC138DC();
  if (v119[0] != v118)
  {
    v103 = a2;
    v116 = v23;
    v120.origin.x = a6;
    v120.origin.y = a7;
    v120.size.width = a8;
    v120.size.height = a9;
    MinX = CGRectGetMinX(v120);
    v121.origin.x = a6;
    v121.origin.y = a7;
    v121.size.width = a8;
    v121.size.height = a9;
    Width = CGRectGetWidth(v121);
    v122.origin.x = a6;
    v122.origin.y = a7;
    v106 = a8;
    v122.size.width = a8;
    v122.size.height = a9;
    CGRectGetMinY(v122);
    sub_26BC138CC();
    sub_26BC138DC();
    v33 = v118;
    v34 = v119[0];
    if (v118 < v119[0])
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v102 = a4;
    if (v119[0] == v118)
    {
      v35 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v119[0] >= v118)
      {
LABEL_64:
        __break(1u);
LABEL_65:

        __break(1u);
        return result;
      }

      v66 = (v109 + 8);
      v35 = MEMORY[0x277D84F90];
      do
      {
        sub_26BC132AC();
        sub_26BC1327C();
        v68 = v67;
        (*v66)(v29, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_26BC03534(0, *(v35 + 2) + 1, 1, v35);
        }

        v70 = *(v35 + 2);
        v69 = *(v35 + 3);
        if (v70 >= v69 >> 1)
        {
          v35 = sub_26BC03534((v69 > 1), v70 + 1, 1, v35);
        }

        v71 = &v35[16 * v70];
        *(v71 + 5) = v34;
        *(v35 + 2) = v70 + 1;
        *(v71 + 4) = v68;
        ++v34;
      }

      while (v33 != v34);
    }

    v115 = a3;
    v119[0] = v35;

    v29 = 0;
    sub_26BC0655C(v119);
    v104 = 0;
    v105 = a9;
    v36 = MinX + Width;

    v37 = v119[0];
    v38 = *(v119[0] + 2);
    v117 = a5;
    v114 = v38;
    if (v38 != 0.0)
    {
      v39 = 0;
      v110 = v119[0] + 32;
      v113 = (v109 + 8);
      v101 = v119[0] + 56;
      v40 = MEMORY[0x277D84F90];
      v111 = 1;
      v41 = MinX;
      v42 = MEMORY[0x277D84F90];
      while (1)
      {
        v112 = v40;
        v43 = v42;
        v44 = v111 + 1;
        v45 = __OFADD__(v111, 1);
        if (v39 >= *(v37 + 2))
        {
          break;
        }

        v29 = v37;
        v46 = *&v110[16 * v39 + 8];
        v47 = v39 + 1;
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v119[0]) = v48 & 1;
        LOBYTE(v118) = v49 & 1;
        sub_26BC1325C();
        v51 = v50;
        v52 = *v113;
        (*v113)(v27, v116);
        v53 = v51 + a10;
        if (v36 <= v41 + v53)
        {
          if (v45)
          {
            goto LABEL_62;
          }

          if (v44 > v108)
          {
            v42 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_26BC03430(0, *(v43 + 2) + 1, 1, v43);
            }

            v55 = *(v42 + 2);
            v54 = *(v42 + 3);
            if (v55 >= v54 >> 1)
            {
              v42 = sub_26BC03430((v54 > 1), v55 + 1, 1, v42);
            }

            *(v42 + 2) = v55 + 1;
            *&v42[8 * v55 + 32] = v46;
            if (v47 == *&v114)
            {
              v40 = v112;
              goto LABEL_46;
            }

            v56 = &v101[16 * v39];
            v57 = v29;
            while (v47 < *(v57 + 2))
            {
              v46 = *v56;
              ++v47;
              sub_26BC132AC();
              sub_26BC132FC();
              LOBYTE(v119[0]) = v58 & 1;
              LOBYTE(v118) = v59 & 1;
              sub_26BC1325C();
              v61 = v60;
              v52(v27, v116);
              v53 = v61 + a10;
              if (v36 > v53 + 1.79769313e308)
              {
                v41 = 1.79769313e308;
                v39 = v47;
                goto LABEL_31;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_26BC03430(0, *(v42 + 2) + 1, 1, v42);
              }

              v63 = *(v42 + 2);
              v62 = *(v42 + 3);
              if (v63 >= v62 >> 1)
              {
                v42 = sub_26BC03430((v62 > 1), v63 + 1, 1, v42);
              }

              *(v42 + 2) = v63 + 1;
              *&v42[8 * v63 + 32] = v46;
              v56 += 16;
              v57 = v29;
              if (*&v114 == v47)
              {
                v40 = v112;
                goto LABEL_46;
              }
            }

            break;
          }

          ++v39;
          v41 = MinX;
          v111 = v44;
          v42 = v43;
        }

        else
        {
          ++v39;
          v42 = v43;
        }

LABEL_31:
        v40 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_26BC03430(0, *(v40 + 2) + 1, 1, v40);
        }

        v65 = *(v40 + 2);
        v64 = *(v40 + 3);
        if (v65 >= v64 >> 1)
        {
          v40 = sub_26BC03430((v64 > 1), v65 + 1, 1, v40);
        }

        *(v40 + 2) = v65 + 1;
        *&v40[8 * v65 + 32] = v46;
        v41 = v53 + v41;
        v37 = v29;
        if (v39 == *&v114)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v40 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
LABEL_46:
    v72 = v36;
    v113 = v42;
    v73 = a10;
    v74 = MinX;

    v123.origin.x = a6;
    v123.origin.y = a7;
    v123.size.width = v106;
    v123.size.height = v105;
    MinY = CGRectGetMinY(v123);
    v119[0] = v40;

    v29 = v104;
    sub_26BC06428(v119);
    if (v29)
    {
      goto LABEL_65;
    }

    v112 = v119[0];
    v76 = *(v119[0] + 2);
    v77 = v116;
    v114 = v72;
    if (v76)
    {
      v78 = a11;
      v79 = (v112 + 32);
      v80 = (v109 + 8);
      v81 = MinY + a11;
      v82 = v74;
      do
      {
        v83 = *v79++;
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v119[0]) = v84 & 1;
        LOBYTE(v118) = v85 & 1;
        sub_26BC1325C();
        v86 = *v80;
        (*v80)(v27, v77);
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v119[0]) = v87 & 1;
        LOBYTE(v118) = v88 & 1;
        sub_26BC1325C();
        v90 = v89;
        v92 = v91;
        v86(v27, v77);
        v93 = v81 + v92 + v78;
        if (v114 > v82 + v90)
        {
          v94 = v82;
        }

        else
        {
          v94 = v74;
        }

        if (v114 <= v82 + v90)
        {
          v81 = v93;
        }

        sub_26BC132AC();
        sub_26BC137AC();
        LOBYTE(v119[0]) = 0;
        LOBYTE(v118) = 0;
        sub_26BC1326C();
        v86(v27, v77);
        v82 = v90 + v73 + v94;
        --v76;
      }

      while (v76);
    }

    v95 = *(v113 + 2);
    if (v95)
    {
      v96 = (v113 + 32);
      v97 = (v109 + 8);
      v98 = v103 & 1;
      v99 = v102 & 1;
      do
      {
        v100 = *v96++;
        sub_26BC132AC();
        sub_26BC137AC();
        LOBYTE(v119[0]) = v98;
        LOBYTE(v118) = v99;
        sub_26BC1326C();
        (*v97)(v27, v77);
        --v95;
      }

      while (v95);
    }
  }

  return result;
}

void (*sub_26BC062A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_26BC1318C();
  return sub_26BC0632C;
}

void sub_26BC0632C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_26BC0637C()
{
  result = qword_280441CB0;
  if (!qword_280441CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CB0);
  }

  return result;
}

unint64_t sub_26BC063D0()
{
  result = qword_280441CB8;
  if (!qword_280441CB8)
  {
    sub_26BC1329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CB8);
  }

  return result;
}

uint64_t sub_26BC06428(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07BB0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26BC13A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26BC1388C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BC06768(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BC0655C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07BC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BC065C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BC065C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BC13A2C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC0, &unk_26BC14888);
        v5 = sub_26BC1388C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BC06CB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BC066D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BC066D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v9 < *(v11 + 8);
      if (v8 != *v11)
      {
        v12 = *v11 < v8;
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC06768(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26BC07750(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26BC0728C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BC03208((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26BC0728C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26BC06CB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_26BC07750(v10);
      v10 = result;
    }

    v88 = *(v10 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v10[16 * v88];
        v90 = *&v10[16 * v88 + 24];
        sub_26BC07480((*a3 + 16 * v89), (*a3 + 16 * *&v10[16 * v88 + 16]), (*a3 + 16 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BC07750(v10);
        }

        if (v88 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v91 = &v10[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_26BC076C4(v88 - 1);
        v88 = *(v10 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = *&v14 < *(v16 + 8);
      if (v13 != *v16)
      {
        v17 = *v16 < v13;
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 1);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = *&v22 >= *&v14;
        v24 = v13 >= v20;
        if (v20 == v13)
        {
          v24 = v23;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v24)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v25 = 0;
        v26 = 16 * v9;
        v27 = v11;
        do
        {
          if (v27 != v9 + v25 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v28 = (v32 + v15);
            v29 = v32 + v26;
            v30 = *v28;
            v31 = v28[1];
            *v28 = *(v29 - 16);
            *(v29 - 16) = v30;
            *(v29 - 8) = v31;
          }

          ++v27;
          --v25;
          v26 -= 16;
          v15 += 16;
        }

        while (v27 < v9 + v25);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v43 = *(v10 + 3);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      result = sub_26BC03208((v43 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v44;
    v45 = &v10[16 * v5];
    *(v45 + 4) = v11;
    *(v45 + 5) = v9;
    v46 = *v93;
    if (!*v93)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v10 + 4);
          v49 = *(v10 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_63:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v10[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v10[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v74 = &v10[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_77:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v10[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_84:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v86 = *&v10[16 * v85 + 32];
        v5 = *&v10[16 * v47 + 40];
        sub_26BC07480((*a3 + 16 * v86), (*a3 + 16 * *&v10[16 * v47 + 32]), (*a3 + 16 * v5), v46);
        if (v4)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BC07750(v10);
        }

        if (v85 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v10[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        result = sub_26BC076C4(v47);
        v44 = *(v10 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v10[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v10[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v10[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 16 * v9 - 16;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 16 * v9;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v38 < *(v40 + 8);
    if (v37 != *v40)
    {
      v41 = *v40 < v37;
    }

    if (!v41)
    {
LABEL_33:
      ++v9;
      v34 += 16;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    *(v40 + 16) = *v40;
    *v40 = v37;
    *(v40 + 8) = v38;
    v40 -= 16;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26BC0728C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_26BC07480(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 1) < *(v4 + 1);
      if (*v6 != *v4)
      {
        v17 = *v4 < *v6;
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 2);
      v23 = v22 < v20;
      v24 = *(v19 + 8) < *(v6 - 1);
      if (v20 != v22)
      {
        v24 = v23;
      }

      if (v24)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v25 >> 4));
  }

  return 1;
}

uint64_t sub_26BC076C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BC07750(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26BC07764(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C80, &unk_26BC14670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BC07888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD8, &qword_26BC14880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26BC0798C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE0, &qword_26BC145A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26BC07A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CD0, &qword_26BC148A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26BC07BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC8, &qword_26BC14898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Int64.formattedSize.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v2 setCountStyle_];
  v3 = [v2 stringFromByteCount_];
  v4 = sub_26BC1380C();

  return v4;
}

Swift::Int64_optional __swiftcall Int64.init(_:)(Swift::Int64 a1)
{
  v1 = a1 >> 63;
  v2 = a1 & ~(a1 >> 63);
  result.is_nil = v1;
  result.value = v2;
  return result;
}

uint64_t Int64.roundedToGB.getter(uint64_t result)
{
  v1 = ceil(result / 1000000000.0) * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Int64.optionalSize.getter(uint64_t result)
{
  if (result == 0x8000000000000000)
  {
    return 0;
  }

  return result;
}

uint64_t Array<A>.total.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  while (1)
  {
    v5 = *v4++;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC07DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v56 = MEMORY[0x277D84F90];
    sub_26BC0F2F0(0, v1, 0);
    v4 = 0;
    v5 = (a1 + 32);
    v2 = v56;
    v25 = v1 - 1;
    while (1)
    {
      v6 = v5[1];
      v36 = v5[2];
      v7 = v5[4];
      v8 = v5[2];
      v37 = v5[3];
      v38 = v7;
      v39 = *(v5 + 80);
      v54 = v7;
      v9 = *v5;
      v52 = v36;
      v53 = v37;
      v50 = v9;
      v11 = *v5;
      v10 = v5[1];
      v35[0] = v9;
      v35[1] = v10;
      v55 = v39;
      v51 = v10;
      v41 = *(v5 + 80);
      v12 = v5[4];
      v40[3] = v37;
      v40[4] = v12;
      v40[1] = v6;
      v40[2] = v8;
      v40[0] = v11;
      v48 = v41;
      v45 = v8;
      v46 = v37;
      v47 = v12;
      v44 = v6;
      v43 = v11;
      v42 = v4;
      v32 = v4;
      v49 = v4;
      sub_26BC01758(v35, &v33);
      sub_26BC01758(v40, &v33);
      sub_26BC08A8C(&v49);
      v13 = *(&v47 + 1) ? *(&v47 + 1) : sub_26BC01ACC(v42);
      v14 = *(&v43 + 1);
      v15 = *(&v44 + 1);
      v28 = v44;
      v29 = v43;
      v27 = v45;
      v31 = v48;
      v16 = v46;
      v26 = BYTE1(v46);
      v30 = *(&v46 + 1);
      v17 = v47;
      if (v46)
      {
        v18 = v13;
        v19 = qword_280441A70;

        if (v19 != -1)
        {
          swift_once();
        }

        v13 = qword_2804431B8;
      }

      else
      {

        v18 = v13;
      }

      sub_26BC08A8C(&v42);
      v56 = v2;
      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26BC0F2F0((v20 > 1), v21 + 1, 1);
        v2 = v56;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 88 * v21;
      *(v22 + 32) = v29;
      *(v22 + 40) = v14;
      *(v22 + 48) = v28;
      *(v22 + 56) = v15;
      *(v22 + 64) = v27;
      *(v22 + 72) = v13;
      *(v22 + 80) = v16;
      *(v22 + 81) = v26;
      v23 = v34;
      *(v22 + 82) = v33;
      *(v22 + 86) = v23;
      *(v22 + 88) = v30;
      *(v22 + 96) = v17;
      *(v22 + 104) = v18;
      *(v22 + 112) = v31;
      if (v25 == v32)
      {
        break;
      }

      v5 = (v5 + 88);
      v4 = v32 + 1;
    }
  }

  return v2;
}

uint64_t GaugeCategory.init(id:localizedName:size:color:fillType:isSelectable:showSizeOverlay:sortOrderPriority:displayOrderPriority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12)
{
  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v23 = a5;
    v21 = sub_26BC1360C();
    a5 = v23;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v21;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = a11 & 1;
  *(a9 + 56) = a12;
  *(a9 + 64) = a10;
  *(a9 + 72) = a6;
  *(a9 + 80) = a8 & 1;
}

uint64_t StorageGaugeItemFillType.hashValue.getter(char a1)
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](a1 & 1);
  return sub_26BC13AAC();
}

uint64_t sub_26BC081C8()
{
  v1 = *v0;
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](v1);
  return sub_26BC13AAC();
}

uint64_t sub_26BC0823C()
{
  v1 = *v0;
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](v1);
  return sub_26BC13AAC();
}

uint64_t GaugeCategory.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GaugeCategory.localizedName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GaugeCategory.init(identifier:size:color:fillType:isSelectable:showSizeOverlay:sortOrderPriority:displayOrderPriority:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v17 = StorageCategoryIdentifier.rawValue.getter(a1);
  v19 = v18;
  v20 = StorageCategoryIdentifier.localizedName.getter(a1);
  v22 = v21;
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = sub_26BC1360C();
  }

  *a8 = v17;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20;
  *(a8 + 24) = v22;
  *(a8 + 32) = a2;
  *(a8 + 40) = v23;
  *(a8 + 48) = a4 & 1;
  *(a8 + 49) = a6 & 1;
  *(a8 + 56) = a7;
  *(a8 + 64) = a9;
  *(a8 + 72) = a3;
  *(a8 + 80) = a5 & 1;
}

uint64_t static GaugeCategory.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26BC13A4C() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return MEMORY[0x2821333C8](v5, v6);
}

uint64_t GaugeCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BC1381C();
  return MEMORY[0x26D690AF0](v0[4]);
}

uint64_t GaugeCategory.hashValue.getter()
{
  sub_26BC13A7C();
  v1 = *v0;
  v2 = v0[1];
  sub_26BC1381C();
  MEMORY[0x26D690AF0](v0[4]);
  return sub_26BC13AAC();
}

uint64_t sub_26BC08520@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26BC0852C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_26BC13A7C();
  sub_26BC1381C();
  MEMORY[0x26D690AF0](v3);
  return sub_26BC13AAC();
}

uint64_t sub_26BC08590()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_26BC1381C();
  return MEMORY[0x26D690AF0](v3);
}

uint64_t sub_26BC085C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_26BC13A7C();
  sub_26BC1381C();
  MEMORY[0x26D690AF0](v3);
  return sub_26BC13AAC();
}

unint64_t sub_26BC0862C()
{
  result = qword_280441CD8;
  if (!qword_280441CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CD8);
  }

  return result;
}

unint64_t sub_26BC08690()
{
  result = qword_280441CE0;
  if (!qword_280441CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CE0);
  }

  return result;
}

uint64_t sub_26BC086E4(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5 = a2[4];
  v4 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_26BC13A4C() & 1) == 0 || v3 != v5)
  {
    return 0;
  }

  return MEMORY[0x2821333C8](v2, v4);
}

uint64_t getEnumTagSinglePayload for StorageGaugeItemFillType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorageGaugeItemFillType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26BC088F0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (qword_280441AA0 != -1)
  {
    result = swift_once();
  }

  if (qword_280443200)
  {
    v6 = qword_280443200;
    v7 = sub_26BC137DC();
    v8 = sub_26BC137DC();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v10 = sub_26BC1380C();
    v12 = v11;

    if (qword_280441A70 != -1)
    {
      swift_once();
    }

    v13 = qword_2804431B8;

    v14 = _s9StorageUI11DeviceClassO7currentACvgZ_0();
    *a3 = 1162170950;
    *(a3 + 8) = 0xE400000000000000;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12;
    *(a3 + 32) = v4;
    *(a3 + 40) = v13;
    *(a3 + 48) = 0;
    *(a3 + 49) = a2 & 1;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = v13;
    *(a3 + 80) = v14 == 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BC08A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CE8, &qword_26BC14A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC08B20@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 1) == 0)
  {
    v4 = *(v1 + 40);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CF0, &unk_26BC14B10);
  sub_26BC04AC8(&qword_280441CF8, &qword_280441CF0, &unk_26BC14B10);
  sub_26BC08C10();
  result = sub_26BC133CC();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 10) = v7;
  return result;
}

unint64_t sub_26BC08C10()
{
  result = qword_280441D00;
  if (!qword_280441D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D00);
  }

  return result;
}

unint64_t sub_26BC08C78()
{
  result = qword_280441D08;
  if (!qword_280441D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D10, &qword_26BC14B40);
    sub_26BC04AC8(&qword_280441CF8, &qword_280441CF0, &unk_26BC14B10);
    sub_26BC08C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D08);
  }

  return result;
}

uint64_t sub_26BC08D4C(uint64_t *a1, double a2)
{
  v5 = sub_26BC132DC();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (a2 != -3)
  {
    v12 = 0;
    v13 = *a1;
    v14 = (v8 + 8);
    do
    {
      sub_26BC134EC();
      sub_26BC134CC();
      sub_26BC134DC();
      v18[0] = *&v15[8];
      v18[1] = v16;
      v19 = v17;
      if (qword_280441A78 != -1)
      {
        swift_once();
      }

      ++v12;
      sub_26BC132CC();
      sub_26BC132BC();
      (*v14)(v10, v5);
      result = sub_26BC090D4(v18);
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_26BC08F78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BC1339C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE00F0]);
  sub_26BC1371C();
  if (qword_280441A70 != -1)
  {
    swift_once();
  }

  v6 = qword_2804431B8;
  v7 = sub_26BC1343C();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D18, &qword_26BC14B98) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
}

unint64_t sub_26BC0912C()
{
  result = qword_280441D20;
  if (!qword_280441D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D18, &qword_26BC14B98);
    sub_26BC04AC8(&qword_280441D28, &qword_280441D30, &qword_26BC14BA0);
    sub_26BC04AC8(&qword_280441D38, &qword_280441D40, &qword_26BC14BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D20);
  }

  return result;
}

uint64_t Logger.storageUI.unsafeMutableAddressor()
{
  if (qword_280441A90 != -1)
  {
    swift_once();
  }

  v0 = sub_26BC1317C();

  return __swift_project_value_buffer(v0, static Logger.storageUI);
}

uint64_t static Logger.storageUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280441A90 != -1)
  {
    swift_once();
  }

  v2 = sub_26BC1317C();
  v3 = __swift_project_value_buffer(v2, static Logger.storageUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_26BC093DC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BC1317C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26BC1316C();
}

uint64_t StorageManagementFeature.hashValue.getter()
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

uint64_t sub_26BC094F8()
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

uint64_t sub_26BC09564()
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

unint64_t sub_26BC095A8()
{
  result = qword_280441D48;
  if (!qword_280441D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageManagementFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StorageManagementFeature(_WORD *result, int a2, int a3)
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

unint64_t StorageCategoryIdentifier.rawValue.getter(char a1)
{
  result = 0x4C41435F4B534944;
  switch(a1)
  {
    case 1:
      result = 0x4552465F4B534944;
      break;
    case 2:
      result = 0x4553555F4B534944;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x4341425F4B534944;
      break;
    case 6:
      result = 0x48544F5F4B534944;
      break;
    case 7:
      result = 0x53494D5F4B534944;
      break;
    case 9:
      result = 0x746163696C707041;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
    case 20:
    case 21:
      result = 0x6C7070612E6D6F63;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t StorageCategoryIdentifier.localizedName.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_109;
    case 2:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_104;
    case 3:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_107;
    case 4:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_101;
    case 5:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_112;
    case 6:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_115;
    case 7:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_108;
    case 8:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_118;
    case 9:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_103;
    case 10:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_117;
    case 11:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_100;
    case 12:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_102;
    case 13:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_114;
    case 14:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_99;
    case 15:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_105;
    case 16:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
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
      goto LABEL_106;
    case 17:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_110;
    case 18:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_116;
    case 19:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_120;
    case 20:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_111;
    case 21:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_113;
    case 22:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_119;
    case 23:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_121;
    default:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (!qword_280443200)
      {
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
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        JUMPOUT(0x26BC0A4C0);
      }

LABEL_97:
      v1 = qword_280443200;
      v2 = sub_26BC137DC();
      v3 = sub_26BC137DC();
      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = sub_26BC1380C();
      return v5;
  }
}

uint64_t StorageIdentifier.init(rawValue:)(uint64_t a1)
{

  v2 = _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0();
  if (v2 != 24)
  {

    return v2;
  }

  return a1;
}

uint64_t StorageIdentifier.hash(into:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x26D690AE0](1);

    return sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(a2);
    sub_26BC1381C();
  }
}

uint64_t StorageIdentifier.hashValue.getter(char a1, uint64_t a2, char a3)
{
  sub_26BC13A7C();
  if (a3)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(a1);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

uint64_t sub_26BC0A718()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26BC13A7C();
  if (v3)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v1);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

uint64_t sub_26BC0A7B8()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x26D690AE0](1);

    return sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v1);
    sub_26BC1381C();
  }
}

uint64_t sub_26BC0A868()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26BC13A7C();
  if (v3)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v1);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

uint64_t sub_26BC0A910@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_26BC0A940@<X0>(unint64_t *a1@<X8>)
{
  result = StorageCategoryIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26BC0A97C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = StorageCategoryIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == StorageCategoryIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26BC13A4C();
  }

  return v8 & 1;
}

uint64_t sub_26BC0AA04()
{
  v1 = *v0;
  sub_26BC13A7C();
  StorageCategoryIdentifier.rawValue.getter(v1);
  sub_26BC1381C();

  return sub_26BC13AAC();
}

uint64_t sub_26BC0AA68()
{
  StorageCategoryIdentifier.rawValue.getter(*v0);
  sub_26BC1381C();
}

uint64_t sub_26BC0AABC()
{
  v1 = *v0;
  sub_26BC13A7C();
  StorageCategoryIdentifier.rawValue.getter(v1);
  sub_26BC1381C();

  return sub_26BC13AAC();
}

uint64_t sub_26BC0AB1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_26BC13A4C();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = a4;
  v8 = StorageCategoryIdentifier.rawValue.getter(a1);
  v10 = v9;
  if (v8 == StorageCategoryIdentifier.rawValue.getter(v7) && v10 == v11)
  {

    return 1;
  }

  else
  {
    v12 = sub_26BC13A4C();

    return v12 & 1;
  }
}

uint64_t _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_26BC13A5C();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26BC0AC64()
{
  result = qword_280441D50;
  if (!qword_280441D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D50);
  }

  return result;
}

unint64_t sub_26BC0ACBC()
{
  result = qword_280441D58;
  if (!qword_280441D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D60, &qword_26BC14D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D58);
  }

  return result;
}

unint64_t sub_26BC0AD24()
{
  result = qword_280441D68;
  if (!qword_280441D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D68);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BC0AD98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BC0ADE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageCategoryIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageCategoryIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Followup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Followup.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Followup.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Followup.explanation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t static Followup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26BC13A4C();
  }
}

uint64_t Followup.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26BC1381C();
}

uint64_t Followup.hashValue.getter()
{
  sub_26BC13A7C();
  v1 = *v0;
  v2 = v0[1];
  sub_26BC1381C();
  return sub_26BC13AAC();
}

uint64_t sub_26BC0B0D4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26BC13A4C();
  }
}

uint64_t sub_26BC0B104()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BC13A7C();
  sub_26BC1381C();
  return sub_26BC13AAC();
}

uint64_t sub_26BC0B150()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26BC1381C();
}

uint64_t sub_26BC0B158()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BC13A7C();
  sub_26BC1381C();
  return sub_26BC13AAC();
}

unint64_t sub_26BC0B1A4()
{
  result = qword_280441D70;
  if (!qword_280441D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D70);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BC0B20C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BC0B254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BC0B2B4()
{
  v0 = sub_26BC137DC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_280443200 = v1;
}

uint64_t StorageGaugeLegendView.init(capacity:categories:maxLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for StorageGaugeLegendView();
  v9 = *(v8 + 28);
  sub_26BC00EEC();
  sub_26BC131FC();
  v10 = *(v8 + 32);
  result = sub_26BC131FC();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t type metadata accessor for StorageGaugeLegendView()
{
  result = qword_280441D80;
  if (!qword_280441D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StorageGaugeLegendView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StorageGaugeLegendView();
  v5 = *(v4 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  v6 = v2 + *(v4 + 32);
  sub_26BC1320C();
  v7 = *(v2 + 16);
  *a1 = v10;
  a1[1] = v10;
  a1[2] = v7;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D78, &qword_26BC14F88) + 44);
  return sub_26BC0B534(v2);
}

uint64_t sub_26BC0B534(uint64_t a1)
{
  v2 = type metadata accessor for StorageGaugeLegendView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v12 = *(a1 + 8);

  sub_26BC03698(&v12);
  v5 = sub_26BC07DA8(v12);

  v6 = sub_26BC0BF1C(v5);

  v12 = v6;
  swift_getKeyPath();
  sub_26BC0C16C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26BC0C2F0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26BC0C354;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF0, &qword_26BC145D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DC0, &qword_26BC15018);
  sub_26BC04AC8(&qword_280441C00, &qword_280441BF0, &qword_26BC145D0);
  sub_26BC04B10();
  sub_26BC0BD88();
  return sub_26BC1377C();
}

uint64_t sub_26BC0B78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DD0, &qword_26BC15020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  if ((*(a2 + 32) / *a3) <= 0.001)
  {
    v17 = *(v10 + 56);

    return v17(a4, 1, 1, v8);
  }

  else
  {
    v13 = *(a2 + 48);
    *(v12 + 2) = *(a2 + 32);
    *(v12 + 3) = v13;
    *(v12 + 4) = *(a2 + 64);
    v12[80] = *(a2 + 80);
    v14 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 1) = v14;
    *(v12 + 11) = a1;
    v19 = v10;
    v15 = *(type metadata accessor for StorageGaugeLegendItemView() + 24);
    v21 = 0x4020000000000000;
    sub_26BC01758(a2, v20);
    sub_26BC00EEC();
    sub_26BC131FC();
    *&v12[*(v8 + 36)] = *(a2 + 64);
    sub_26BC0C414(v12, a4);
    return (*(v19 + 56))(a4, 0, 1, v8);
  }
}

uint64_t sub_26BC0B95C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  v7 = v4 + *(a1 + 32);
  sub_26BC1320C();
  v8 = *(v4 + 16);
  *a2 = v11;
  a2[1] = v11;
  a2[2] = v8;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D78, &qword_26BC14F88) + 44);
  return sub_26BC0B534(v4);
}

uint64_t sub_26BC0BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC0BAFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BC0BBAC()
{
  sub_26BC044B0();
  if (v0 <= 0x3F)
  {
    sub_26BC00E90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26BC0BC4C()
{
  result = qword_280441D90;
  if (!qword_280441D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D78, &qword_26BC14F88);
    sub_26BC04AC8(&qword_280441D98, &qword_280441DA0, &qword_26BC15008);
    sub_26BC0BD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D90);
  }

  return result;
}

unint64_t sub_26BC0BD04()
{
  result = qword_280441DA8;
  if (!qword_280441DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DB0, &qword_26BC15010);
    sub_26BC0BD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DA8);
  }

  return result;
}

unint64_t sub_26BC0BD88()
{
  result = qword_280441DB8;
  if (!qword_280441DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DC0, &qword_26BC15018);
    sub_26BC0BE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DB8);
  }

  return result;
}

unint64_t sub_26BC0BE0C()
{
  result = qword_280441DC8;
  if (!qword_280441DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DD0, &qword_26BC15020);
    sub_26BC0BEC4();
    sub_26BC04AC8(&qword_280441DE0, &qword_280441DE8, &qword_26BC15028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DC8);
  }

  return result;
}

unint64_t sub_26BC0BEC4()
{
  result = qword_280441DD8;
  if (!qword_280441DD8)
  {
    type metadata accessor for StorageGaugeLegendItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DD8);
  }

  return result;
}

uint64_t sub_26BC0BF1C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 32;
    v27 = *(result + 16);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      v30 = *(v6 + 48);
      v31 = v9;
      v32 = *(v6 + 80);
      v10 = *(v6 + 16);
      v29[0] = *v6;
      v29[1] = v10;
      v29[2] = v8;
      v36 = v30;
      v37 = v9;
      v34 = v10;
      v35 = v8;
      v38 = v32;
      v33 = v29[0];
      if (v4)
      {
        result = sub_26BC01758(v29, v28);
        v2 = v7;
        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF0, &qword_26BC15058);
        v2 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v2) - 32) / 96;
        v2[2] = v14;
        v2[3] = 2 * v15;
        v16 = v7[3] >> 1;
        v17 = 12 * v16;
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        v5 = &v2[12 * v16 + 4];
        if (v7[2])
        {
          v19 = v2 < v7 || v2 + 4 >= &v7[v17 + 4];
          if (!v19 && v2 == v7)
          {
            sub_26BC01758(v29, v28);
          }

          else
          {
            sub_26BC01758(v29, v28);
            memmove(v2 + 4, v7 + 4, v17 * 8);
          }

          v7[2] = 0;

          v1 = v27;
          v11 = __OFSUB__(v18, 1);
          v4 = v18 - 1;
          if (v11)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_26BC01758(v29, v28);

          v11 = __OFSUB__(v18, 1);
          v4 = v18 - 1;
          if (v11)
          {
            goto LABEL_30;
          }
        }
      }

      *v5 = v3;
      v20 = v35;
      v21 = v36;
      v22 = v37;
      *(v5 + 88) = v38;
      v23 = v33;
      *(v5 + 24) = v34;
      *(v5 + 8) = v23;
      *(v5 + 72) = v22;
      *(v5 + 56) = v21;
      *(v5 + 40) = v20;
      v5 += 96;
      v6 += 88;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v24 = v2[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v11 = __OFSUB__(v25, v4);
    v26 = v25 - v4;
    if (v11)
    {
      goto LABEL_32;
    }

    v2[2] = v26;
  }

  return v2;
}

uint64_t sub_26BC0C16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeLegendView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C1D0()
{
  v1 = (type metadata accessor for StorageGaugeLegendView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[9];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[10], v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BC0C2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeLegendView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for StorageGaugeLegendView() - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_26BC0B78C(a1, a2, v8, a3);
}

uint64_t sub_26BC0C3DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BC0C414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DD0, &qword_26BC15020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C49C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF8, qword_26BC15080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BC0C5EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF8, qword_26BC15080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for StorageGaugeItemView()
{
  result = qword_280441E00;
  if (!qword_280441E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BC0C774()
{
  sub_26BC04500();
  if (v0 <= 0x3F)
  {
    sub_26BC0C850();
    if (v1 <= 0x3F)
    {
      sub_26BC0C8A0();
      if (v2 <= 0x3F)
      {
        sub_26BC00E90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BC0C850()
{
  if (!qword_280441E10)
  {
    v0 = sub_26BC136FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280441E10);
    }
  }
}

void sub_26BC0C8A0()
{
  if (!qword_280441E18)
  {
    sub_26BC131CC();
    v0 = sub_26BC131DC();
    if (!v1)
    {
      atomic_store(v0, &qword_280441E18);
    }
  }
}

uint64_t sub_26BC0C914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1337C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for StorageGaugeItemView();
  sub_26BC0187C(v1 + *(v12 + 36), v11, &qword_280441C78, &qword_26BC15140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26BC131CC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26BC1391C();
    v16 = sub_26BC133FC();
    sub_26BC1314C();

    sub_26BC1336C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_26BC0CB1C()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26BC131CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v18 = 1.0;
  v19[0] = 1.0;
  v16 = 1.0;
  v17 = 1.0;
  sub_26BC0E0B8();
  v9 = *(v0 + 40);

  v10 = sub_26BC1392C();
  [v10 getRed:v19 green:&v18 blue:&v17 alpha:&v16];

  sub_26BC0C914(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3D0], v1);
  LOBYTE(v10) = sub_26BC131BC();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  v12 = 1.0 / v16;
  if ((v10 & 1) == 0)
  {
    v12 = -v12;
  }

  if (v19[0] * 0.2 + v18 * 0.7 + v17 * 0.07 + v12 <= 0.5)
  {
    result = sub_26BC1366C();
  }

  else
  {
    result = sub_26BC1364C();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_26BC0CD40@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E20, &qword_26BC15110);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v25 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E28, &qword_26BC15118);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  *v6 = sub_26BC1378C();
  v6[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E30, &qword_26BC15120);
  sub_26BC0CFE0(v2, v6 + *(v12 + 44));
  v13 = v2[3];
  *&v27 = v2[2];
  *(&v27 + 1) = v13;
  sub_26BC0DBA8();
  sub_26BC017B4();
  sub_26BC1357C();
  sub_26BC018F4(v6, &qword_280441E20, &qword_26BC15110);
  v14 = v2[4];
  v15 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v15 setCountStyle_];
  v16 = [v15 stringFromByteCount_];
  v17 = sub_26BC1380C();
  v19 = v18;

  *&v27 = v17;
  *(&v27 + 1) = v19;
  v20 = v26;
  sub_26BC132EC();

  sub_26BC018F4(v10, &qword_280441E28, &qword_26BC15118);
  v21 = v2[12];
  LODWORD(v15) = *(type metadata accessor for StorageGaugeItemView() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v22 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E40, &qword_26BC15128) + 36));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  result = *&v29;
  v22[2] = v29;
  return result;
}

uint64_t sub_26BC0CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_26BC133DC();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for StorageGaugeItemView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441AC8, &qword_26BC15130);
  v63[1] = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E48, &qword_26BC15138);
  v14 = *(v13 - 8);
  v69 = v13 - 8;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v73 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = v63 - v18;
  v19 = *(a1 + 48);
  v20 = *(a1 + 16);
  v93 = *(a1 + 32);
  v94 = v19;
  v21 = *(a1 + 48);
  v95 = *(a1 + 64);
  v22 = *(a1 + 16);
  v92[0] = *a1;
  v92[1] = v22;
  v88 = v93;
  v89 = v21;
  v90[0] = *(a1 + 64);
  v96 = *(a1 + 80);
  v65 = *(&v93 + 1);
  LODWORD(v66) = BYTE1(v19);
  LOBYTE(v90[1]) = *(a1 + 80);
  v86 = v92[0];
  v87 = v20;
  sub_26BC0DC0C(a1, v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_26BC0DC74(v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_26BC01758(v92, &v80);
  sub_26BC00568();
  v64 = v12;
  sub_26BC1355C();

  v97[2] = v88;
  v97[3] = v89;
  v97[4] = v90[0];
  v98 = v90[1];
  v97[0] = v86;
  v97[1] = v87;
  sub_26BC0DD38(v97);
  sub_26BC0DC0C(a1, v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_26BC0DC74(v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
  v26 = &v12[*(v9 + 36)];
  *v26 = sub_26BC0DD8C;
  v26[1] = v25;
  v27 = *(a1 + 128);
  LOBYTE(v80) = *(a1 + 120);
  *(&v80 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E50, &qword_26BC15148);
  sub_26BC136EC();
  sub_26BC0DC0C(a1, v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  sub_26BC0DC74(v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v23);
  v29 = sub_26BC1370C();
  v30 = v67;
  *v67 = v29;
  v32 = v70;
  v31 = v71;
  (*(v70 + 104))(v30, *MEMORY[0x277CDE248], v71);
  sub_26BC00468();
  sub_26BC00610();
  v33 = v72;
  v34 = v64;
  sub_26BC1354C();

  (*(v32 + 8))(v30, v31);
  v35 = v34;
  v36 = v65;
  sub_26BC018F4(v35, &qword_280441AC8, &qword_26BC15130);
  v37 = sub_26BC1343C();
  v38 = v33;
  v39 = v33 + *(v69 + 44);
  *v39 = v36;
  *(v39 + 8) = v37;
  if (v66 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E68, &qword_26BC15160);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26BC15070;

    v41 = sub_26BC1340C();
    *(v40 + 32) = v41;
    v42 = sub_26BC1342C();
    *(v40 + 33) = v42;
    v43 = sub_26BC1341C();
    sub_26BC1341C();
    if (sub_26BC1341C() != v41)
    {
      v43 = sub_26BC1341C();
    }

    sub_26BC1341C();
    if (sub_26BC1341C() != v42)
    {
      v43 = sub_26BC1341C();
    }

    sub_26BC0D874(a1, &v75);
    v82 = v77;
    v83 = v78;
    v84[0] = v79[0];
    *(v84 + 9) = *(v79 + 9);
    v80 = v75;
    v81 = v76;
    *(v90 + 9) = *(v79 + 9);
    v88 = v77;
    v89 = v78;
    v90[0] = v79[0];
    v86 = v75;
    v87 = v76;
    sub_26BC0187C(&v80, &v74, &qword_280441E70, &qword_26BC15168);
    sub_26BC018F4(&v86, &qword_280441E70, &qword_26BC15168);
    v44 = *(&v80 + 1);
    v45 = v80;
    v47 = *(&v81 + 1);
    v46 = v81;
    v48 = v82;
    v66 = *(&v83 + 1);
    v67 = v83;
    v70 = *(&v84[0] + 1);
    v65 = *&v84[0];
    v71 = *(&v82 + 1);
    v69 = *&v84[1];
    v49 = v43;
    v50 = BYTE8(v84[1]);
  }

  else
  {

    v45 = 0;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v70 = 0;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v69 = 0;
    v50 = 0;
    v49 = 0;
  }

  v64 = v49;
  v51 = v73;
  sub_26BC0E048(v38, v73);
  v52 = v51;
  v53 = v68;
  sub_26BC0E048(v52, v68);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E58, &qword_26BC15150) + 48);
  *&v80 = v49;
  *(&v80 + 1) = v45;
  v55 = v45;
  *&v81 = v44;
  *(&v81 + 1) = v46;
  *&v82 = v47;
  *(&v82 + 1) = v48;
  v57 = v66;
  v56 = v67;
  *&v83 = v71;
  *(&v83 + 1) = v67;
  v58 = v65;
  *&v84[0] = v66;
  *(&v84[0] + 1) = v65;
  *&v84[1] = v70;
  *(&v84[1] + 1) = v69;
  v85 = v50;
  *(v54 + 96) = v50;
  v59 = v81;
  *v54 = v80;
  *(v54 + 16) = v59;
  v60 = v83;
  *(v54 + 32) = v82;
  *(v54 + 48) = v60;
  v61 = v84[1];
  *(v54 + 64) = v84[0];
  *(v54 + 80) = v61;
  sub_26BC0187C(&v80, &v86, &qword_280441E60, &qword_26BC15158);
  sub_26BC018F4(v72, &qword_280441E48, &qword_26BC15138);
  *&v86 = v64;
  *(&v86 + 1) = v55;
  *&v87 = v44;
  *(&v87 + 1) = v46;
  *&v88 = v47;
  *(&v88 + 1) = v48;
  *&v89 = v71;
  *(&v89 + 1) = v56;
  *&v90[0] = v57;
  *(&v90[0] + 1) = v58;
  *&v90[1] = v70;
  *(&v90[1] + 1) = v69;
  v91 = v50;
  sub_26BC018F4(&v86, &qword_280441E60, &qword_26BC15158);
  return sub_26BC018F4(v73, &qword_280441E48, &qword_26BC15138);
}

uint64_t sub_26BC0D76C(uint64_t result)
{
  v1 = *(result + 104);
  if (v1 && *(result + 80) == 1)
  {
    v2 = *(result + 112);
    v3 = *(result + 48);
    v5[2] = *(result + 32);
    v5[3] = v3;
    v5[4] = *(result + 64);
    v6 = *(result + 80);
    v4 = *(result + 16);
    v5[0] = *result;
    v5[1] = v4;

    v1(v5);

    return sub_26BC0E104(v1);
  }

  return result;
}

uint64_t sub_26BC0D804(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v3 = *(a2 + 120);
    v4 = *(a2 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E50, &qword_26BC15148);
    return sub_26BC136DC();
  }

  return result;
}

uint64_t sub_26BC0D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v3 setCountStyle_];
  v4 = [v3 stringFromByteCount_];
  v5 = sub_26BC1380C();
  v7 = v6;

  *&v37 = v5;
  *(&v37 + 1) = v7;
  sub_26BC017B4();
  v8 = sub_26BC1351C();
  v10 = v9;
  LOBYTE(v5) = v11;
  sub_26BC134AC();
  v12 = sub_26BC1350C();
  v14 = v13;
  v16 = v15;

  sub_26BC01808(v8, v10, v5 & 1);

  sub_26BC0CB1C();
  v17 = sub_26BC134FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_26BC01808(v12, v14, v16 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E78, &qword_26BC15170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BC15070;
  LOBYTE(v14) = sub_26BC1344C();
  *(inited + 32) = v14;
  v25 = sub_26BC1346C();
  *(inited + 33) = v25;
  v26 = sub_26BC1345C();
  sub_26BC1345C();
  if (sub_26BC1345C() != v14)
  {
    v26 = sub_26BC1345C();
  }

  sub_26BC1345C();
  if (sub_26BC1345C() != v25)
  {
    v26 = sub_26BC1345C();
  }

  v54 = v21 & 1;
  v51 = 1;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  LOBYTE(v35) = v21 & 1;
  *(&v35 + 1) = *v53;
  DWORD1(v35) = *&v53[3];
  *(&v35 + 1) = v23;
  v36[0] = v26;
  *&v36[4] = *&v52[3];
  *&v36[1] = *v52;
  memset(&v36[8], 0, 32);
  v36[40] = 1;
  *&v36[41] = 257;
  *(v40 + 11) = *&v36[27];
  v39 = *v36;
  v40[0] = *&v36[16];
  v37 = v34;
  v38 = v35;
  v33[80] = 1;
  v27 = v34;
  v28 = v35;
  v29 = v40[1];
  *(a2 + 48) = *&v36[16];
  *(a2 + 64) = v29;
  v30 = v39;
  *(a2 + 16) = v28;
  *(a2 + 32) = v30;
  *a2 = v27;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v41[0] = v17;
  v41[1] = v19;
  v42 = v21 & 1;
  *&v43[3] = *&v53[3];
  *v43 = *v53;
  v44 = v23;
  v45 = v26;
  *&v46[3] = *&v52[3];
  *v46 = *v52;
  v48 = 0u;
  v47 = 0u;
  v49 = 1;
  v50 = 257;
  sub_26BC0187C(&v34, v33, &qword_280441E80, &qword_26BC15178);
  return sub_26BC018F4(v41, &qword_280441E80, &qword_26BC15178);
}

unint64_t sub_26BC0DBA8()
{
  result = qword_280441E38;
  if (!qword_280441E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E20, &qword_26BC15110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E38);
  }

  return result;
}

uint64_t sub_26BC0DC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0DC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0DCD8()
{
  v1 = *(type metadata accessor for StorageGaugeItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26BC0D76C(v2);
}

uint64_t sub_26BC0DD8C(uint64_t a1)
{
  v3 = *(type metadata accessor for StorageGaugeItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26BC0D804(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for StorageGaugeItemView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 72);

  if (*(v0 + v3 + 104))
  {
    v10 = *(v5 + 112);
  }

  v11 = *(v5 + 128);

  v12 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26BC131CC();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = *(v1 + 40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BC0DF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StorageGaugeItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 32);
  v7 = *(v4 + 64);
  v13 = *(v4 + 48);
  v6 = v13;
  v14 = v7;
  v15 = *(v4 + 80);
  v9 = *(v4 + 16);
  v12[0] = *v4;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v5;
  *(a1 + 80) = v15;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_26BC01758(v12, v11);
}

uint64_t sub_26BC0E048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E48, &qword_26BC15138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BC0E0B8()
{
  result = qword_280441E88;
  if (!qword_280441E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280441E88);
  }

  return result;
}

uint64_t sub_26BC0E104(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26BC0E118()
{
  result = qword_280441E90;
  if (!qword_280441E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E40, &qword_26BC15128);
    sub_26BC0E1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E90);
  }

  return result;
}

unint64_t sub_26BC0E1A4()
{
  result = qword_280441E98;
  if (!qword_280441E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E28, &qword_26BC15118);
    sub_26BC0DBA8();
    sub_26BC0E230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E98);
  }

  return result;
}

unint64_t sub_26BC0E230()
{
  result = qword_280441EA0;
  if (!qword_280441EA0)
  {
    sub_26BC133EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441EA0);
  }

  return result;
}

id sub_26BC0E290()
{
  type metadata accessor for FollowupMonitor();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CFE500]) init];
  *(v0 + 16) = result;
  static FollowupMonitor.shared = v0;
  return result;
}

uint64_t *FollowupMonitor.shared.unsafeMutableAddressor()
{
  if (qword_280441AA8 != -1)
  {
    swift_once();
  }

  return &static FollowupMonitor.shared;
}

uint64_t static FollowupMonitor.shared.getter()
{
  if (qword_280441AA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26BC0E3B0()
{
  v1 = *(v0[23] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26BC0E4D0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EA8, &qword_26BC15188);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26BC0F090;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 pendingFollowUpItemsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26BC0E4D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_26BC0EB3C;
  }

  else
  {
    v3 = sub_26BC0E5E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_26BC0E5E0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26BC0F18C(v4, v0 + 80);
      sub_26BC0F23C((v0 + 80), (v0 + 144));
      sub_26BC0F24C();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 176))
      {
        MEMORY[0x26D6908B0]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26BC1387C();
        }

        sub_26BC1389C();
        v5 = v59;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v60 = v2;
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v57 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = 0x800000026BC15980;
    while (1)
    {
      if (v57)
      {
        v12 = MEMORY[0x26D6909E0](v9, v5);
      }

      else
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_55;
        }

        v12 = *(v5 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v7 = sub_26BC139FC();
        goto LABEL_15;
      }

      v15 = [v12 uniqueIdentifier];
      if (v15)
      {
        v16 = v5;
        v17 = v15;
        v18 = v11;
        v19 = sub_26BC1380C();
        v21 = v20;

        v22 = v19;
        v11 = v18;
        if (v22 == 0xD000000000000027 && v18 == v21)
        {

LABEL_31:
          sub_26BC139AC();
          v25 = *(v60 + 16);
          sub_26BC139CC();
          sub_26BC139DC();
          sub_26BC139BC();
          v5 = v16;
          goto LABEL_18;
        }

        v24 = sub_26BC13A4C();

        if (v24)
        {
          goto LABEL_31;
        }

        v5 = v16;
      }

      else
      {
      }

LABEL_18:
      ++v9;
      if (v14 == v7)
      {
        v26 = v60;
        v8 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_35:

  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    v27 = sub_26BC139FC();
    if (v27)
    {
      goto LABEL_38;
    }

LABEL_60:

    v5 = MEMORY[0x277D84F90];
LABEL_61:
    v52 = *(v53 + 8);

    v52(v5);
    return;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_60;
  }

LABEL_38:
  v60 = v8;
  sub_26BC0F310(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v5 = v8;
    v55 = v26 & 0xC000000000000001;
    v54 = v27;
    while (!__OFADD__(v28, 1))
    {
      if (v55)
      {
        v29 = MEMORY[0x26D6909E0](v28, v26);
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_57;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = [v29 uniqueIdentifier];
      if (!v31)
      {
        goto LABEL_67;
      }

      v32 = v31;
      v33 = sub_26BC1380C();
      v35 = v34;

      v36 = [v30 notification];
      if (!v36)
      {
        goto LABEL_68;
      }

      v37 = v36;
      v56 = v35;
      v58 = v28 + 1;
      v38 = [v36 title];

      if (!v38)
      {
        goto LABEL_66;
      }

      v39 = v26;
      v40 = sub_26BC1380C();
      v42 = v41;

      v43 = [v30 notification];
      if (!v43)
      {
        goto LABEL_65;
      }

      v44 = v43;
      v45 = [v43 informativeText];

      if (!v45)
      {
        goto LABEL_69;
      }

      v46 = sub_26BC1380C();
      v48 = v47;

      v60 = v5;
      v50 = *(v5 + 16);
      v49 = *(v5 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26BC0F310((v49 > 1), v50 + 1, 1);
      }

      *(v5 + 16) = v50 + 1;
      v51 = (v5 + (v50 << 6));
      v51[4] = v33;
      v51[5] = v56;
      v51[6] = v40;
      v51[7] = v42;
      v51[8] = 0xD000000000000015;
      v51[9] = 0x800000026BC15960;
      ++v28;
      v51[10] = v46;
      v51[11] = v48;
      v26 = v39;
      if (v58 == v54)
      {

        goto LABEL_61;
      }
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void sub_26BC0EB3C()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D84F90] + 16);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90] + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26BC0F18C(v4, v0 + 80);
      sub_26BC0F23C((v0 + 80), (v0 + 144));
      sub_26BC0F24C();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 176))
      {
        MEMORY[0x26D6908B0]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26BC1387C();
        }

        sub_26BC1389C();
        v5 = v59;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v60 = v2;
  if (v5 >> 62)
  {
    goto LABEL_55;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v8 = MEMORY[0x277D84F90];
  v55 = v0;
  if (v7)
  {
    v9 = 0;
    v57 = v5 & 0xC000000000000001;
    v0 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = 0x800000026BC15980;
    while (1)
    {
      if (v57)
      {
        v11 = MEMORY[0x26D6909E0](v9, v5);
      }

      else
      {
        if (v9 >= *(v0 + 16))
        {
          goto LABEL_52;
        }

        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v7 = sub_26BC139FC();
        goto LABEL_12;
      }

      v14 = [v11 uniqueIdentifier];
      if (v14)
      {
        v15 = v5;
        v16 = v14;
        v17 = v10;
        v18 = sub_26BC1380C();
        v20 = v19;

        v21 = v18;
        v10 = v17;
        if (v21 == 0xD000000000000027 && v17 == v20)
        {

LABEL_28:
          sub_26BC139AC();
          v24 = *(v60 + 16);
          sub_26BC139CC();
          sub_26BC139DC();
          sub_26BC139BC();
          v5 = v15;
          goto LABEL_15;
        }

        v23 = sub_26BC13A4C();

        if (v23)
        {
          goto LABEL_28;
        }

        v5 = v15;
      }

      else
      {
      }

LABEL_15:
      ++v9;
      if (v13 == v7)
      {
        v25 = v60;
        v0 = v55;
        v8 = MEMORY[0x277D84F90];
        goto LABEL_32;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_32:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    v26 = sub_26BC139FC();
    if (v26)
    {
      goto LABEL_35;
    }

LABEL_57:

    v5 = MEMORY[0x277D84F90];
LABEL_58:
    v52 = *(v0 + 8);

    v52(v5);
    return;
  }

  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_57;
  }

LABEL_35:
  v60 = v8;
  sub_26BC0F310(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v5 = v60;
    v54 = v25 & 0xC000000000000001;
    v53 = v25;
    while (!__OFADD__(v27, 1))
    {
      if (v54)
      {
        v28 = v5;
        v29 = MEMORY[0x26D6909E0](v27, v25);
      }

      else
      {
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_54;
        }

        v28 = v5;
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 uniqueIdentifier];
      if (!v31)
      {
        goto LABEL_64;
      }

      v32 = v31;
      v33 = sub_26BC1380C();
      v35 = v34;

      v36 = [v30 notification];
      if (!v36)
      {
        goto LABEL_65;
      }

      v37 = v36;
      v56 = v35;
      v58 = v27 + 1;
      v38 = v26;
      v39 = [v36 title];

      if (!v39)
      {
        goto LABEL_63;
      }

      v40 = sub_26BC1380C();
      v42 = v41;

      v43 = [v30 notification];
      if (!v43)
      {
        goto LABEL_62;
      }

      v44 = v43;
      v45 = [v43 informativeText];

      if (!v45)
      {
        goto LABEL_66;
      }

      v46 = sub_26BC1380C();
      v48 = v47;

      v5 = v28;
      v60 = v28;
      v49 = *(v28 + 16);
      v50 = *(v5 + 24);
      if (v49 >= v50 >> 1)
      {
        sub_26BC0F310((v50 > 1), v49 + 1, 1);
        v5 = v60;
      }

      *(v5 + 16) = v49 + 1;
      v51 = (v5 + (v49 << 6));
      v0 = v55;
      v51[4] = v33;
      v51[5] = v56;
      v51[6] = v40;
      v51[7] = v42;
      v51[8] = 0xD000000000000015;
      v51[9] = 0x800000026BC15960;
      ++v27;
      v51[10] = v46;
      v51[11] = v48;
      v26 = v38;
      v25 = v53;
      if (v58 == v38)
      {

        goto LABEL_58;
      }
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_26BC0F090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EB8, &qword_26BC151C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_26BC1386C();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26BC0F18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_26BC0F23C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_26BC0F24C()
{
  result = qword_280441EB0;
  if (!qword_280441EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280441EB0);
  }

  return result;
}

uint64_t FollowupMonitor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_26BC0F2F0(char *a1, int64_t a2, char a3)
{
  result = sub_26BC07764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BC0F310(char *a1, int64_t a2, char a3)
{
  result = sub_26BC07A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t Date.lastUsedDateFormatted.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setDoesRelativeDateFormatting_];
  [v0 setFormattingContext_];
  v1 = sub_26BC1312C();
  v2 = [v0 stringFromDate_];

  v3 = sub_26BC1380C();
  return v3;
}

uint64_t static Volume.defaultUserVolumePlaceholder.getter@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v1 = type metadata accessor for Volume();
  v94 = *(v1 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v1);
  v87 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v87 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v87 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v87 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v87 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v87 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  v21 = sub_26BC1310C();
  v96 = *(v21 - 8);
  v22 = *(v96 + 8);
  v23 = MEMORY[0x28223BE20](v21);
  v92 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - v25;
  sub_26BC130DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC8, &qword_26BC15200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BC151D0;
  v28 = *MEMORY[0x277CBE9F0];
  *(inited + 32) = *MEMORY[0x277CBE9F0];
  v29 = *MEMORY[0x277CBEA50];
  v30 = *MEMORY[0x277CBEA38];
  *(inited + 40) = *MEMORY[0x277CBEA50];
  *(inited + 48) = v30;
  v31 = v28;
  v32 = v29;
  v33 = v30;
  sub_26BC10CC0(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey();
  swift_arrayDestroy();
  v100 = v26;
  sub_26BC130CC();

  v34 = sub_26BC130BC();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v20, 0, 1, v34);
  v36 = STMGestaltTotalDiskCapacity();
  v37 = v36;
  v98 = v1;
  if (v36)
  {
    v38 = [v36 integerValue];
  }

  else
  {
    v38 = 0;
  }

  v97 = v21;
  v101 = v20;
  sub_26BC10EB4(v20, v18);
  v39 = v35 + 48;
  v40 = *(v35 + 48);
  v41 = (v40)(v18, 1, v34);
  v89 = v35;
  if (v41 != 1)
  {
    v52 = sub_26BC130AC();
    v54 = v53;
    v55 = *(v35 + 8);
    v55(v18, v34);
    if (!v37 || (v54 & 1) != 0)
    {
      goto LABEL_6;
    }

    v56 = &v38[-v52];
    if (__OFSUB__(v38, v52))
    {
      __break(1u);
    }

    else
    {
      v57 = v88;
      sub_26BC10EB4(v101, v88);
      if ((v40)(v57, 1, v34) == 1)
      {
        sub_26BC10F24(v57);
        v58 = 0xE100000000000000;
        v59 = 47;
      }

      else
      {
        v39 = sub_26BC1308C();
        v58 = v65;
        v55(v57, v34);
        if (v58)
        {
          v59 = v39;
        }

        else
        {
          v59 = 47;
        }

        if (!v58)
        {
          v58 = 0xE100000000000000;
        }
      }

      v54 = v97;
      v40 = v98;
      v18 = v96;
      v66 = *(v96 + 2);
      v66(v92, v100, v97);
      v67 = ceil(v38 / 1000000000.0) * 1000000000.0;
      if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v67 > -9.22337204e18)
        {
          if (v67 < 9.22337204e18)
          {
            v39 = v67;
            v38 = v87;
            *&v87[*(v40 + 36)] = 0;
            v66(v38, v92, v54);
            v68 = &v38[*(v40 + 20)];
            *v68 = v59;
            v68[1] = v58;
            *&v38[*(v40 + 28)] = v39;
            *&v38[*(v40 + 32)] = v56;
            v38[*(v40 + 24)] = 1;
            if (!__OFSUB__(v39, v56))
            {
              if (((v39 - v56) & 0x8000000000000000) == 0)
              {
LABEL_33:
                v73 = *(v18 + 1);
                v73(v92, v54);
                sub_26BC10F24(v101);
                v73(v100, v54);
                v74 = v95;
                sub_26BC11034(v38, v95);
                v61 = v74;
                v60 = 0;
                return (*(v94 + 56))(v61, v60, 1, v40);
              }

              if (qword_280441A98 == -1)
              {
LABEL_30:
                v69 = sub_26BC1317C();
                __swift_project_value_buffer(v69, qword_2804431E8);
                v70 = sub_26BC1315C();
                v71 = sub_26BC1390C();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 134218240;
                  *(v72 + 4) = v56;
                  *(v72 + 12) = 2048;
                  *(v72 + 14) = v39;
                  _os_log_impl(&dword_26BBFE000, v70, v71, "availableSpace is negative - used: %lld - capacity: %lld", v72, 0x16u);
                  MEMORY[0x26D691130](v72, -1, -1);
                }

                goto LABEL_33;
              }

LABEL_49:
              swift_once();
              goto LABEL_30;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_26BC10F24(v18);
LABEL_6:
  if (qword_280441A98 != -1)
  {
    swift_once();
  }

  v42 = sub_26BC1317C();
  __swift_project_value_buffer(v42, qword_2804431E8);
  v43 = v101;
  v44 = v99;
  sub_26BC10EB4(v101, v99);
  v45 = v93;
  sub_26BC10EB4(v43, v93);
  v46 = sub_26BC1315C();
  v47 = sub_26BC1390C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v103[0] = v92;
    *v48 = 136315394;
    v49 = v90;
    sub_26BC10EB4(v44, v90);
    if ((v40)(v49, 1, v34) == 1)
    {
      sub_26BC10F24(v49);
      v50 = 0xE300000000000000;
      v51 = 7104878;
    }

    else
    {
      v62 = sub_26BC130AC();
      v64 = v63;
      (*(v89 + 8))(v49, v34);
      if (v64)
      {
        v50 = 0xE300000000000000;
        v51 = 7104878;
      }

      else
      {
        v102 = v62;
        sub_26BC10FE0();
        v51 = sub_26BC1394C();
        v50 = v75;
      }

      v45 = v93;
    }

    sub_26BC10F24(v99);
    v76 = sub_26BC10654(v51, v50, v103);

    *(v48 + 4) = v76;
    *(v48 + 12) = 2080;
    v77 = v91;
    sub_26BC10EB4(v45, v91);
    if ((v40)(v77, 1, v34) == 1)
    {
      sub_26BC10F24(v77);
      v78 = 0xE300000000000000;
      v40 = v98;
    }

    else
    {
      v79 = sub_26BC1309C();
      v81 = v80;
      (*(v89 + 8))(v77, v34);
      v40 = v98;
      if ((v81 & 1) == 0)
      {
        v102 = v79;
        sub_26BC10F8C();
        v82 = sub_26BC1394C();
        v78 = v83;
        goto LABEL_42;
      }

      v78 = 0xE300000000000000;
    }

    v82 = 7104878;
LABEL_42:
    sub_26BC10F24(v45);
    v84 = sub_26BC10654(v82, v78, v103);

    *(v48 + 14) = v84;
    _os_log_impl(&dword_26BBFE000, v46, v47, "Unable to retreive used size and capacity for the volume. Returned available %s, returned capacity %s", v48, 0x16u);
    v85 = v92;
    swift_arrayDestroy();
    MEMORY[0x26D691130](v85, -1, -1);
    MEMORY[0x26D691130](v48, -1, -1);

    sub_26BC10F24(v101);
    (*(v96 + 1))(v100, v97);
    v60 = 1;
    v61 = v95;
    return (*(v94 + 56))(v61, v60, 1, v40);
  }

  sub_26BC10F24(v45);
  sub_26BC10F24(v44);
  sub_26BC10F24(v43);
  (*(v96 + 1))(v100, v97);
  v60 = 1;
  v61 = v95;
  v40 = v98;
  return (*(v94 + 56))(v61, v60, 1, v40);
}