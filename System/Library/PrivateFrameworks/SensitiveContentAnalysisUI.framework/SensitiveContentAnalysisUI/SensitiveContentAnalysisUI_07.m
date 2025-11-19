unint64_t sub_1BC6EB470()
{
  result = qword_1EDDCDFA0;
  if (!qword_1EDDCDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDCDFA0);
  }

  return result;
}

uint64_t sub_1BC6EB4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v40 = a4;
  v46 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SensitiveContentRedactor(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC75A960();
  v47 = *(v17 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v38 - v19;
  v20 = sub_1BC6EB9E8();
  v53 = a4;
  v54 = v20;
  WitnessTable = swift_getWitnessTable();
  v51 = v17;
  v52 = WitnessTable;
  v42 = &opaque type descriptor for <<opaque return type of View.prefetchSensitiveContentPolicy()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v38 - v22;
  sub_1BC660024(a1, &v16[v13[10]], &qword_1EBCDC970, &unk_1BC763180);
  sub_1BC6F4438(a2, &v16[v13[11]], _s6LayoutVMa);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v16[v13[5]]);
  sub_1BC759D90();
  v38 = sub_1BC633134(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v25 = sub_1BC75A740();
  LOBYTE(a1) = v26;
  *v16 = KeyPath;
  v16[8] = 0;
  v27 = &v16[v13[6]];
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = &v16[v13[7]];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = &v16[v13[8]];
  *v29 = v25;
  v29[8] = a1 & 1;
  v30 = v13[9];
  v31 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  sub_1BC660024(v12, v44, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B630();
  sub_1BC66008C(v12, &qword_1EBCDBC50, &qword_1BC762D70);
  v32 = &v16[v13[12]];
  v50 = 0;
  sub_1BC75B630();
  v33 = v52;
  *v32 = v51;
  *(v32 + 1) = v33;
  v34 = v41;
  MEMORY[0x1BFB25FF0](v16, v46, v13, v40);
  sub_1BC6F5504(v16, type metadata accessor for SensitiveContentRedactor);
  v35 = WitnessTable;
  View.prefetchSensitiveContentPolicy()(v17, WitnessTable);
  (*(v47 + 8))(v34, v17);
  sub_1BC759D80();
  v51 = v17;
  v52 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  sub_1BC75B210();

  return (*(v45 + 8))(v23, v36);
}

unint64_t sub_1BC6EB9E8()
{
  result = qword_1EDDD1680[0];
  if (!qword_1EDDD1680[0])
  {
    type metadata accessor for SensitiveContentRedactor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD1680);
  }

  return result;
}

uint64_t sub_1BC6EBA60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v8 = a3;
  swift_retain_n();
  swift_retain_n();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);

  return sub_1BC75B740();
}

uint64_t sub_1BC6EBB64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1BC759CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  sub_1BC660024(a1, v10, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BC66008C(v10, &qword_1EBCDC998, &qword_1BC7641A0);
    v24 = a2;
    v25 = v22;
    v26 = a4;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
    return sub_1BC75B710();
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v24 = a2;
    v25 = v22;
    v26 = a4;
    sub_1BC694F54();
    (*(v12 + 16))(v16, v18, v11);
    v20 = a4;

    v23 = sub_1BC75BFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
    sub_1BC75B710();

    return (*(v12 + 8))(v18, v11);
  }
}

uint64_t sub_1BC6EBE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BC6F4B38(a1, a3, _s6LayoutV4ModeOMa);
  result = _s6LayoutVMa(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1BC6EBE54@<X0>(uint64_t a1@<X8>)
{
  rawValue = SCUISensitiveContentOverlayOptions.forcingInternalOptions()().rawValue;
  *sub_1BC756110();
  _s6LayoutV4ModeOMa(0);
  swift_storeEnumTagMultiPayload();
  result = _s6LayoutVMa(0);
  *(a1 + *(result + 20)) = rawValue;
  return result;
}

uint64_t sub_1BC6EBED8()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SensitiveContentRedactor(0) + 32));
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

void (*sub_1BC6EC028(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0) - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for SensitiveContentRedactor(0);
  sub_1BC660024(v1 + *(v9 + 40), v8, &qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v6);
  return sub_1BC6EC168;
}

void sub_1BC6EC168(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    sub_1BC660024(*(a1 + 8), v4, &qword_1EBCDC998, &qword_1BC7641A0);
    sub_1BC75B710();
    sub_1BC66008C(v2, &qword_1EBCDC970, &unk_1BC763180);
    v6 = v5;
    v7 = &qword_1EBCDC998;
    v8 = &qword_1BC7641A0;
  }

  else
  {
    v9 = *(a1 + 8);
    sub_1BC75B710();
    v7 = &qword_1EBCDC970;
    v8 = &unk_1BC763180;
    v6 = v2;
  }

  sub_1BC66008C(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t sub_1BC6EC240()
{
  v1 = _s5StateOMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759EE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = v0 + *(type metadata accessor for SensitiveContentRedactor(0) + 20);
  PolicyProperty.wrappedValue.getter(v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
    v15 = 0;
  }

  else
  {
    sub_1BC759E50();
    sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510]);
    v15 = sub_1BC75C170();
    v16 = *(v6 + 8);
    v16(v9, v5);
    v16(v13, v5);
  }

  sub_1BC6EC550(v4);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  if ((*(*(v17 - 8) + 48))(v4, 3, v17))
  {
    sub_1BC6F5504(v4, _s5StateOMa);
  }

  else
  {
    v18 = *(v17 + 48);
    v19 = sub_1BC759CA0();
    (*(*(v19 - 8) + 8))(&v4[v18], v19);
    (*(v6 + 8))(v4, v5);
    if (v15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BC6EC550@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_1BC759CA0();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = sub_1BC759EE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = type metadata accessor for SensitiveContentRedactor(0);
  v24 = *(v23 + 20);
  v44 = v1;
  PolicyProperty.wrappedValue.getter(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v42 = v10;
    v43 = a1;
    v41 = *(v16 + 32);
    v41(v22, v14, v15);
    sub_1BC759DF0();
    sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510]);
    v29 = sub_1BC75C170();
    v30 = *(v16 + 8);
    v30(v20, v15);
    if (v29)
    {
      v31 = *(v23 + 40);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
      MEMORY[0x1BFB262E0](v32);
      v34 = v45;
      v33 = v46;
      if ((*(v45 + 48))(v6, 1, v46) == 1)
      {
        v30(v22, v15);
        sub_1BC66008C(v6, &qword_1EBCDC998, &qword_1BC7641A0);
LABEL_10:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
        v26 = *(*(v25 - 8) + 56);
        v27 = v43;
        v28 = 3;
        return v26(v27, v28, 3, v25);
      }

      v35 = v42;
      v44 = *(v34 + 32);
      v44(v42, v6, v33);
      if (sub_1BC759BB0())
      {
        v36 = v33;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
        v38 = *(v37 + 48);
        v39 = v43;
        v41(v43, v22, v15);
        v44(&v39[v38], v35, v36);
        return (*(*(v37 - 8) + 56))(v39, 0, 3, v37);
      }

      (*(v34 + 8))(v35, v33);
    }

    v30(v22, v15);
    goto LABEL_10;
  }

  sub_1BC66008C(v14, &unk_1EBCDBD90, &unk_1BC75F850);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1;
  v28 = 1;
  return v26(v27, v28, 3, v25);
}

uint64_t sub_1BC6ECA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v55 - v7;
  v8 = type metadata accessor for SensitiveContentRedactor(0);
  v9 = v8 - 8;
  v59 = *(v8 - 8);
  v65 = *(v59 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC78, &qword_1BC769238);
  v56 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC80, &qword_1BC769240);
  v17 = *(v16 - 8);
  v62 = v16;
  v63 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v19;
  v20 = sub_1BC75B810();
  v22 = v21;
  v23 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC88, &qword_1BC769248) + 36)];
  sub_1BC6ECF60(v3, v23);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC90, &qword_1BC769250) + 36));
  *v24 = v20;
  v24[1] = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC98, &qword_1BC769258);
  v26 = *(*(v25 - 8) + 16);
  v57 = v15;
  v26(v15, a1, v25);
  v27 = &v15[*(v12 + 36)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCA0, &qword_1BC769260);
  sub_1BC6EC550(&v27[*(v28 + 40)]);
  v58 = type metadata accessor for SensitiveContentRedactor;
  v29 = v11;
  v55 = v11;
  sub_1BC6F4438(v3, v11, type metadata accessor for SensitiveContentRedactor);
  v30 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v31 = swift_allocObject();
  v59 = type metadata accessor for SensitiveContentRedactor;
  sub_1BC6F4B38(v29, v31 + v30, type metadata accessor for SensitiveContentRedactor);
  v32 = &v27[*(v28 + 36)];
  sub_1BC75BDF0();
  *v27 = &unk_1BC769278;
  *(v27 + 1) = v31;
  v33 = v3;
  v34 = v3 + *(v9 + 56);
  v35 = *v34;
  v36 = *(v34 + 8);
  v69 = v35;
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v37 = v66;
  v38 = v67;
  LODWORD(v3) = v68;
  v39 = v61;
  sub_1BC6F1E10(v61);
  v40 = sub_1BC6F4C6C();
  v41 = v60;
  v42 = v3;
  v44 = v56;
  v43 = v57;
  View.intervention(isPresented:with:)(v37, v38, v42, v39, v56, v40, v60);

  sub_1BC66008C(v39, &qword_1EBCDC250, &qword_1BC761340);
  sub_1BC66008C(v43, &qword_1EBCDDC78, &qword_1BC769238);
  v45 = v55;
  sub_1BC6F4438(v33, v55, v58);
  v46 = swift_allocObject();
  sub_1BC6F4B38(v45, v46 + v30, v59);
  v66 = v44;
  v67 = v40;
  swift_getOpaqueTypeConformance2();
  v47 = v64;
  v48 = v62;
  View.onShowContent(_:)(sub_1BC6F53DC, v46);

  (*(v63 + 8))(v41, v48);
  v49 = sub_1BC75B7F0();
  v51 = v50;
  v52 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCB0, &qword_1BC769290) + 36);
  sub_1BC6F2B1C(v33, v52);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCB8, &unk_1BC769298);
  v54 = (v52 + *(result + 36));
  *v54 = v49;
  v54[1] = v51;
  return result;
}

uint64_t sub_1BC6ECF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v296 = a2;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCC8, &qword_1BC7692D0);
  v3 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v229 - v4;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCD0, &qword_1BC7692D8);
  v5 = *(*(v295 - 8) + 64);
  MEMORY[0x1EEE9AC00](v295);
  v276 = &v229 - v6;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCD8, &qword_1BC7692E0);
  v7 = *(*(v244 - 8) + 64);
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v229 - v8;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCE0, &qword_1BC7692E8);
  v9 = *(*(v268 - 8) + 64);
  MEMORY[0x1EEE9AC00](v268);
  v246 = &v229 - v10;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCE8, &qword_1BC7692F0);
  v11 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v250 = (&v229 - v12);
  v13 = sub_1BC759D50();
  v284 = *(v13 - 8);
  v285 = v13;
  v14 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v237 = &v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCF0, &qword_1BC7692F8);
  v16 = *(*(v265 - 8) + 64);
  MEMORY[0x1EEE9AC00](v265);
  v267 = &v229 - v17;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCF8, &qword_1BC769300);
  v18 = *(*(v248 - 8) + 64);
  MEMORY[0x1EEE9AC00](v248);
  v249 = &v229 - v19;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD00, &qword_1BC769308);
  v20 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266);
  v251 = &v229 - v21;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD08, &qword_1BC769310);
  v22 = *(*(v290 - 8) + 64);
  MEMORY[0x1EEE9AC00](v290);
  v269 = &v229 - v23;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD10, &qword_1BC769318);
  v24 = *(*(v247 - 8) + 64);
  MEMORY[0x1EEE9AC00](v247);
  v239 = &v229 - v25;
  v233 = sub_1BC759C40();
  v232 = *(v233 - 8);
  v26 = *(v232 + 64);
  v27 = MEMORY[0x1EEE9AC00](v233);
  v231 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v230 = &v229 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v236 = &v229 - v32;
  v33 = type metadata accessor for SensitiveContentRedactor(0);
  v261 = *(v33 - 8);
  v34 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v262 = v35;
  v263 = &v229 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v256 = &v229 - v38;
  v252 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v39 = *(*(v252 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v252);
  v238 = &v229 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v255 = (&v229 - v42);
  v258 = type metadata accessor for VideoCallOverlayBackground(0);
  v43 = *(*(v258 - 8) + 64);
  MEMORY[0x1EEE9AC00](v258);
  v259 = &v229 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD18, &qword_1BC769320);
  v45 = *(*(v264 - 8) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v260 = &v229 - v46;
  v271 = sub_1BC759FE0();
  v270 = *(v271 - 8);
  v47 = *(v270 + 64);
  v48 = MEMORY[0x1EEE9AC00](v271);
  v257 = &v229 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v235 = &v229 - v51;
  v234 = v52;
  MEMORY[0x1EEE9AC00](v50);
  v254 = &v229 - v53;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD20, &qword_1BC769328);
  v54 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v241 = &v229 - v55;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD28, &qword_1BC769330);
  v56 = *(*(v281 - 8) + 64);
  MEMORY[0x1EEE9AC00](v281);
  v242 = &v229 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v282 = &v229 - v60;
  v291 = type metadata accessor for SensitiveContentOverlay.Background();
  v61 = *(*(v291 - 8) + 64);
  MEMORY[0x1EEE9AC00](v291);
  v283 = (&v229 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD30, &qword_1BC769338);
  v63 = *(*(v292 - 8) + 64);
  MEMORY[0x1EEE9AC00](v292);
  v294 = &v229 - v64;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD38, &qword_1BC769340);
  v65 = *(*(v286 - 8) + 64);
  MEMORY[0x1EEE9AC00](v286);
  v288 = &v229 - v66;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD40, &qword_1BC769348);
  v67 = *(*(v277 - 8) + 64);
  MEMORY[0x1EEE9AC00](v277);
  v279 = &v229 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD48, &qword_1BC769350);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v229 - v71;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD50, &qword_1BC769358);
  v73 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v278);
  v75 = &v229 - v74;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD58, &qword_1BC769360);
  v76 = *(*(v287 - 8) + 64);
  MEMORY[0x1EEE9AC00](v287);
  v280 = &v229 - v77;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD60, &qword_1BC769368);
  v78 = *(*(v293 - 8) + 64);
  MEMORY[0x1EEE9AC00](v293);
  v289 = &v229 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD68, &qword_1BC769370);
  v81 = v80 - 8;
  v82 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v229 - v83;
  v85 = _s6LayoutVMa(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v229 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = _s5StateOMa(0);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v92 = &v229 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6EC550(v92);
  v253 = v33;
  v93 = *(v33 + 44);
  v272 = a1;
  v94 = a1 + v93;
  sub_1BC6F4438(a1 + v93, v88, _s6LayoutVMa);
  v95 = &v84[*(v81 + 56)];
  sub_1BC6F4B38(v92, v84, _s5StateOMa);
  sub_1BC6F4B38(v88, v95, _s6LayoutV4ModeOMa);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v97 = *(*(v96 - 8) + 48);
  v273 = v84;
  v98 = v97(v84, 3, v96);
  if (v98 > 1)
  {
    if (v98 == 2)
    {
      v301 = 7;
      v111 = *(v94 + *(v85 + 20));
      v112 = v282;
      (*(v284 + 56))(v282, 1, 1, v285);
      v113 = v283;
      SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v301, v111, v112, v283);
      sub_1BC6F4438(v113, v275, type metadata accessor for SensitiveContentOverlay.Background);
      swift_storeEnumTagMultiPayload();
      sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
      v114 = v276;
      sub_1BC75AE00();
      sub_1BC660024(v114, v294, &qword_1EBCDDCD0, &qword_1BC7692D8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v114, &qword_1EBCDDCD0, &qword_1BC7692D8);
      sub_1BC6F5504(v113, type metadata accessor for SensitiveContentOverlay.Background);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
      sub_1BC75AE00();
      sub_1BC660024(v75, v279, &qword_1EBCDDD50, &qword_1BC769358);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F56EC();
      sub_1BC6F57A8();
      v121 = v280;
      sub_1BC75AE00();
      sub_1BC66008C(v75, &qword_1EBCDDD50, &qword_1BC769358);
      sub_1BC660024(v121, v288, &qword_1EBCDDD58, &qword_1BC769360);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5660();
      sub_1BC6F5A08();
      v122 = v289;
      sub_1BC75AE00();
      sub_1BC66008C(v121, &qword_1EBCDDD58, &qword_1BC769360);
      sub_1BC660024(v122, v294, &qword_1EBCDDD60, &qword_1BC769368);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v122, &qword_1EBCDDD60, &qword_1BC769368);
    }

    v115 = v95;
    return sub_1BC6F5504(v115, _s6LayoutV4ModeOMa);
  }

  if (v98)
  {
    v297 = 2;
    v116 = *(v94 + *(v85 + 20));
    v117 = v282;
    (*(v284 + 56))(v282, 1, 1, v285);
    v118 = v283;
    SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v297, v116, v117, v283);
    sub_1BC6F4438(v118, v72, type metadata accessor for SensitiveContentOverlay.Background);
    swift_storeEnumTagMultiPayload();
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    sub_1BC75AE00();
    sub_1BC660024(v75, v279, &qword_1EBCDDD50, &qword_1BC769358);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    v119 = v280;
    sub_1BC75AE00();
    sub_1BC66008C(v75, &qword_1EBCDDD50, &qword_1BC769358);
    sub_1BC660024(v119, v288, &qword_1EBCDDD58, &qword_1BC769360);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v120 = v289;
    sub_1BC75AE00();
    sub_1BC66008C(v119, &qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC660024(v120, v294, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v120, &qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC6F5504(v118, type metadata accessor for SensitiveContentOverlay.Background);
    v115 = v95;
    return sub_1BC6F5504(v115, _s6LayoutV4ModeOMa);
  }

  v229 = *(v96 + 48);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v300 = 3;
        v133 = *(v94 + *(v85 + 20));
        v134 = v282;
        (*(v284 + 56))(v282, 1, 1, v285);
        v135 = v283;
        SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v300, v133, v134, v283);
        sub_1BC6F4438(v135, v275, type metadata accessor for SensitiveContentOverlay.Background);
        swift_storeEnumTagMultiPayload();
        sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
        v136 = v276;
        sub_1BC75AE00();
        sub_1BC660024(v136, v294, &qword_1EBCDDCD0, &qword_1BC7692D8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F55D4();
        sub_1BC6F5C5C();
        sub_1BC75AE00();
        sub_1BC66008C(v136, &qword_1EBCDDCD0, &qword_1BC7692D8);
        v137 = v135;
      }

      else
      {
        v298 = 4;
        v199 = *(v94 + *(v85 + 20));
        v200 = v282;
        (*(v284 + 56))(v282, 1, 1, v285);
        v201 = v283;
        SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v298, v199, v200, v283);
        sub_1BC6F4438(v201, v241, type metadata accessor for SensitiveContentOverlay.Background);
        swift_storeEnumTagMultiPayload();
        sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
        sub_1BC6F5864();
        v202 = v242;
        sub_1BC75AE00();
        sub_1BC660024(v202, v279, &qword_1EBCDDD28, &qword_1BC769330);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F56EC();
        sub_1BC6F57A8();
        v203 = v280;
        sub_1BC75AE00();
        sub_1BC66008C(v202, &qword_1EBCDDD28, &qword_1BC769330);
        sub_1BC660024(v203, v288, &qword_1EBCDDD58, &qword_1BC769360);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F5660();
        sub_1BC6F5A08();
        v204 = v289;
        sub_1BC75AE00();
        sub_1BC66008C(v203, &qword_1EBCDDD58, &qword_1BC769360);
        sub_1BC660024(v204, v294, &qword_1EBCDDD60, &qword_1BC769368);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F55D4();
        sub_1BC6F5C5C();
        sub_1BC75AE00();
        sub_1BC66008C(v204, &qword_1EBCDDD60, &qword_1BC769368);
        v137 = v201;
      }

      sub_1BC6F5504(v137, type metadata accessor for SensitiveContentOverlay.Background);
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v100 = v284;
      v101 = v237;
      v102 = v95;
      v103 = v285;
      (*(v284 + 32))(v237, v102, v285);
      v104 = sub_1BC75B810();
      v105 = v250;
      *v250 = v104;
      *(v105 + 8) = v106;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD78, &qword_1BC769388);
      sub_1BC6F1154(v272, v101, v105 + *(v107 + 44));
      sub_1BC660024(v105, v245, &qword_1EBCDDCE8, &qword_1BC7692F0);
      swift_storeEnumTagMultiPayload();
      sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0);
      v108 = v246;
      sub_1BC75AE00();
      sub_1BC660024(v108, v267, &qword_1EBCDDCE0, &qword_1BC7692E8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5A94();
      sub_1BC6F5BAC();
      v109 = v269;
      sub_1BC75AE00();
      sub_1BC66008C(v108, &qword_1EBCDDCE0, &qword_1BC7692E8);
      sub_1BC660024(v109, v288, &qword_1EBCDDD08, &qword_1BC769310);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5660();
      sub_1BC6F5A08();
      v110 = v289;
      sub_1BC75AE00();
      sub_1BC66008C(v109, &qword_1EBCDDD08, &qword_1BC769310);
      sub_1BC660024(v110, v294, &qword_1EBCDDD60, &qword_1BC769368);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v110, &qword_1EBCDDD60, &qword_1BC769368);
      sub_1BC66008C(v105, &qword_1EBCDDCE8, &qword_1BC7692F0);
      (*(v100 + 8))(v101, v103);
LABEL_25:
      v205 = sub_1BC759CA0();
      v206 = v273;
      (*(*(v205 - 8) + 8))(&v273[v229], v205);
      v207 = sub_1BC759EE0();
      return (*(*(v207 - 8) + 8))(v206, v207);
    }

    v186 = sub_1BC75B810();
    v187 = v250;
    *v250 = v186;
    *(v187 + 8) = v188;
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD78, &qword_1BC769388) + 44);
    v299 = 0;
    v190 = *(v94 + *(v85 + 20));
    v191 = v282;
    (*(v284 + 56))(v282, 1, 1, v285);
    v192 = v283;
    SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v299, v190, v191, v283);
    v193 = v263;
    sub_1BC6F4438(v272, v263, type metadata accessor for SensitiveContentRedactor);
    v194 = (*(v261 + 80) + 16) & ~*(v261 + 80);
    v195 = swift_allocObject();
    sub_1BC6F4B38(v193, v195 + v194, type metadata accessor for SensitiveContentRedactor);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    View.onShowContent(_:)(sub_1BC6F6770, v195);

    sub_1BC6F5504(v192, type metadata accessor for SensitiveContentOverlay.Background);
    v180 = &qword_1EBCDDCE8;
    v181 = &qword_1BC7692F0;
    sub_1BC660024(v187, v245, &qword_1EBCDDCE8, &qword_1BC7692F0);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0);
    v196 = v246;
    sub_1BC75AE00();
    sub_1BC660024(v196, v267, &qword_1EBCDDCE0, &qword_1BC7692E8);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    v197 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v196, &qword_1EBCDDCE0, &qword_1BC7692E8);
    sub_1BC660024(v197, v288, &qword_1EBCDDD08, &qword_1BC769310);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v198 = v289;
    sub_1BC75AE00();
    sub_1BC66008C(v197, &qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC660024(v198, v294, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v198, &qword_1EBCDDD60, &qword_1BC769368);
    v185 = v187;
LABEL_22:
    sub_1BC66008C(v185, v180, v181);
    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v138 = *(v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48));
    v139 = v270;
    v140 = *(v270 + 32);
    v284 = v270 + 32;
    v285 = v140;
    v141 = v254;
    v142 = v95;
    v143 = v271;
    (v140)(v254, v142, v271);
    v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
    v283 = *(v139 + 16);
    v145 = v255;
    (v283)(v255, v141, v143);
    *(v145 + v144) = v138;
    swift_storeEnumTagMultiPayload();
    v146 = *(v253 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    v147 = v272;
    v148 = v256;
    sub_1BC75B640();
    v149 = v259;
    sub_1BC679E64(v145, v148, v259);
    v150 = v263;
    sub_1BC6F4438(v147, v263, type metadata accessor for SensitiveContentRedactor);
    v151 = (*(v261 + 80) + 16) & ~*(v261 + 80);
    v152 = v151 + v262;
    v153 = swift_allocObject();
    sub_1BC6F4B38(v150, v153 + v151, type metadata accessor for SensitiveContentRedactor);
    sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground);
    View.onShowContent(_:)(sub_1BC6F6770, v153);

    sub_1BC6F5504(v149, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC6F4438(v147, v150, type metadata accessor for SensitiveContentRedactor);
    v154 = v235;
    v155 = v271;
    (v283)(v235, v254, v271);
    v156 = v270;
    v157 = (v152 + *(v270 + 80)) & ~*(v270 + 80);
    v158 = swift_allocObject();
    sub_1BC6F4B38(v150, v158 + v151, type metadata accessor for SensitiveContentRedactor);
    (v285)(v158 + v157, v154, v155);
    v159 = v260;
    v160 = &v260[*(v264 + 36)];
    v161 = &v160[*(sub_1BC75A860() + 20)];
    sub_1BC75BDF0();
    *v160 = &unk_1BC7693A8;
    *(v160 + 1) = v158;
    sub_1BC660024(v159, v241, &qword_1EBCDDD18, &qword_1BC769320);
    swift_storeEnumTagMultiPayload();
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    sub_1BC6F5864();
    v162 = v242;
    sub_1BC75AE00();
    sub_1BC660024(v162, v279, &qword_1EBCDDD28, &qword_1BC769330);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    v163 = v280;
    sub_1BC75AE00();
    sub_1BC66008C(v162, &qword_1EBCDDD28, &qword_1BC769330);
    sub_1BC660024(v163, v288, &qword_1EBCDDD58, &qword_1BC769360);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v164 = v289;
    sub_1BC75AE00();
    sub_1BC66008C(v163, &qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC660024(v164, v294, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v164, &qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC66008C(v159, &qword_1EBCDDD18, &qword_1BC769320);
    (*(v156 + 8))(v254, v155);
    goto LABEL_25;
  }

  v124 = v253;
  if (EnumCaseMultiPayload != 1)
  {
    v165 = *v95;
    v166 = v255;
    *v255 = *v95;
    v291 = v165;
    swift_storeEnumTagMultiPayload();
    v167 = *(v124 + 36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    v168 = v272;
    v169 = v256;
    sub_1BC75B640();
    v170 = v259;
    sub_1BC679E64(v166, v169, v259);
    v171 = v263;
    sub_1BC6F4438(v168, v263, type metadata accessor for SensitiveContentRedactor);
    v172 = (*(v261 + 80) + 16) & ~*(v261 + 80);
    v173 = v172 + v262;
    v174 = swift_allocObject();
    sub_1BC6F4B38(v171, v174 + v172, type metadata accessor for SensitiveContentRedactor);
    sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground);
    v175 = v260;
    View.onShowContent(_:)(sub_1BC6F6770, v174);

    sub_1BC6F5504(v170, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC6F4438(v168, v171, type metadata accessor for SensitiveContentRedactor);
    v176 = swift_allocObject();
    sub_1BC6F4B38(v171, v176 + v172, type metadata accessor for SensitiveContentRedactor);
    *(v176 + ((v173 + 7) & 0xFFFFFFFFFFFFFFF8)) = v291;
    v177 = v175;
    v178 = &v175[*(v264 + 36)];
    v179 = &v178[*(sub_1BC75A860() + 20)];
    sub_1BC75BDF0();
    *v178 = &unk_1BC769398;
    *(v178 + 1) = v176;
    v180 = &qword_1EBCDDD18;
    v181 = &qword_1BC769320;
    sub_1BC660024(v177, v249, &qword_1EBCDDD18, &qword_1BC769320);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5B20();
    sub_1BC6F5864();
    v182 = v251;
    sub_1BC75AE00();
    sub_1BC660024(v182, v267, &qword_1EBCDDD00, &qword_1BC769308);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    v183 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v182, &qword_1EBCDDD00, &qword_1BC769308);
    sub_1BC660024(v183, v288, &qword_1EBCDDD08, &qword_1BC769310);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v184 = v289;
    sub_1BC75AE00();
    sub_1BC66008C(v183, &qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC660024(v184, v294, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v184, &qword_1EBCDDD60, &qword_1BC769368);
    v185 = v177;
    goto LABEL_22;
  }

  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30);
  v126 = *(v95 + *(v125 + 48));
  (*(v270 + 32))(v257, v95, v271);
  v127 = *(v124 + 40);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v129 = v236;
  MEMORY[0x1BFB262E0](v128);
  v130 = sub_1BC759CA0();
  v285 = *(v130 - 8);
  v131 = v285[6](v129, 1, v130);
  v291 = v130;
  if (v131)
  {
    sub_1BC66008C(v129, &qword_1EBCDC998, &qword_1BC7641A0);
  }

  else
  {
    v208 = v230;
    sub_1BC759C90();
    sub_1BC66008C(v129, &qword_1EBCDC998, &qword_1BC7641A0);
    v209 = v231;
    sub_1BC759C30();
    sub_1BC633134(&qword_1EBCDBF78, MEMORY[0x1E697B3F0]);
    v210 = v233;
    sub_1BC75C170();
    v211 = *(v232 + 8);
    v211(v209, v210);
    v211(v208, v210);
  }

  v132 = v249;
  v212 = *(v125 + 48);
  v213 = v238;
  (*(v270 + 16))(v238, v257, v271);
  *(v213 + v212) = v126;
  swift_storeEnumTagMultiPayload();
  v214 = v255;
  sub_1BC6F4438(v213, v255, type metadata accessor for VideoCallOverlayBackground.Kind);
  v215 = *(v124 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  v216 = v272;
  v217 = v256;
  sub_1BC75B640();
  v218 = v259;
  sub_1BC679E64(v214, v217, v259);
  v219 = v263;
  sub_1BC6F4438(v216, v263, type metadata accessor for SensitiveContentRedactor);
  v220 = (*(v261 + 80) + 16) & ~*(v261 + 80);
  v221 = swift_allocObject();
  sub_1BC6F4B38(v219, v221 + v220, type metadata accessor for SensitiveContentRedactor);
  sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground);
  v222 = v239;
  View.onShowContent(_:)(sub_1BC6F6770, v221);

  sub_1BC6F5504(v218, type metadata accessor for VideoCallOverlayBackground);
  v223 = (v222 + *(v247 + 36));
  *v223 = sub_1BC6F0748;
  v223[1] = 0;
  v223[2] = 0;
  v223[3] = 0;
  sub_1BC660024(v222, v132, &qword_1EBCDDD10, &qword_1BC769318);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5B20();
  sub_1BC6F5864();
  v224 = v251;
  sub_1BC75AE00();
  sub_1BC660024(v224, v267, &qword_1EBCDDD00, &qword_1BC769308);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5A94();
  sub_1BC6F5BAC();
  v225 = v269;
  sub_1BC75AE00();
  sub_1BC66008C(v224, &qword_1EBCDDD00, &qword_1BC769308);
  sub_1BC660024(v225, v288, &qword_1EBCDDD08, &qword_1BC769310);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5660();
  sub_1BC6F5A08();
  v226 = v289;
  sub_1BC75AE00();
  sub_1BC66008C(v225, &qword_1EBCDDD08, &qword_1BC769310);
  sub_1BC660024(v226, v294, &qword_1EBCDDD60, &qword_1BC769368);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F55D4();
  sub_1BC6F5C5C();
  sub_1BC75AE00();
  sub_1BC66008C(v226, &qword_1EBCDDD60, &qword_1BC769368);
  sub_1BC66008C(v222, &qword_1EBCDDD10, &qword_1BC769318);
  sub_1BC6F5504(v213, type metadata accessor for VideoCallOverlayBackground.Kind);
  (*(v270 + 8))(v257, v271);
  v227 = v273;
  (v285[1])(&v273[v229], v291);
  v228 = sub_1BC759EE0();
  return (*(*(v228 - 8) + 8))(v227, v228);
}

uint64_t sub_1BC6EFD54()
{
  v1 = v0;
  v2 = type metadata accessor for SensitiveContentRedactor(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AnalyticsUIContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  if (sub_1BC6EC240())
  {
    v18 = v0 + *(v2 + 48);
    v20 = *(v18 + 8);
    v33 = *v18;
    v19 = v33;
    v34 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    v31 = v19;
    v32 = v20;
    v30 = (v35 & 1) == 0;
    sub_1BC75B650();
  }

  else
  {
    v21 = *(v2 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    sub_1BC75B640();
    if ((*(v10 + 48))(v17, 1, v9))
    {
      sub_1BC66008C(v17, &qword_1EBCDBC50, &qword_1BC762D70);
    }

    else
    {
      sub_1BC6F4438(v17, v13, type metadata accessor for AnalyticsUIContext);
      sub_1BC66008C(v17, &qword_1EBCDBC50, &qword_1BC762D70);
      AnalyticsUIContext.collectContentInteractionEvent(state:)(2);
      sub_1BC6F5504(v13, type metadata accessor for AnalyticsUIContext);
    }

    v22 = sub_1BC75BE10();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    sub_1BC6F4438(v1, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SensitiveContentRedactor);
    sub_1BC75BDE0();
    v23 = sub_1BC75BDD0();
    v24 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    sub_1BC6F4B38(v4, v25 + v24, type metadata accessor for SensitiveContentRedactor);
    sub_1BC652910(0, 0, v8, &unk_1BC7693E8, v25);
  }
}

uint64_t sub_1BC6F0154(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1BC759CA0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[8] = sub_1BC75BDD0();
  v8 = sub_1BC75BD80();
  v2[9] = v8;
  v2[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F0280, v8, v7);
}

uint64_t sub_1BC6F0280()
{
  v25 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(type metadata accessor for SensitiveContentRedactor(0) + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[8];
    v8 = v0[4];

    sub_1BC66008C(v8, &qword_1EBCDC998, &qword_1BC7641A0);
    v9 = v0[7];
    v10 = v0[4];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v24 = 1;
    static SensitiveContentTipState.donate(tipState:)(&v24);
    v0[11] = sub_1BC6EBED8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
    v15 = sub_1BC759FE0();
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    v0[12] = v19;
    *(v19 + 16) = xmmword_1BC761600;
    (*(v16 + 16))(v19 + v18, v13, v15);
    KeyPath = swift_getKeyPath();
    v0[13] = KeyPath;
    v21 = *(MEMORY[0x1E697B4E0] + 4);
    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_1BC6F051C;
    v23 = v0[7];

    return MEMORY[0x1EEDD8B68](v23, KeyPath, v19, 3000000000000000000, 0, 0);
  }
}

uint64_t sub_1BC6F051C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  if (v0)
  {

    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_1BC6F676C;
  }

  else
  {

    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_1BC6F06B0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BC6F06B0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BC6F0748()
{
  v0 = sub_1BC75A0A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697B620], v0);
  sub_1BC75A090();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BC6F0830(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1BC759C40();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_1BC759CA0();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[16] = sub_1BC75BDD0();
  v11 = sub_1BC75BD80();
  v2[17] = v11;
  v2[18] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F09C4, v11, v10);
}

uint64_t sub_1BC6F09C4()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = *(type metadata accessor for SensitiveContentRedactor(0) + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[16];
    v8 = v0[12];

    sub_1BC66008C(v8, &qword_1EBCDC998, &qword_1BC7641A0);
    v9 = v0[15];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_1BC759C30();
    v20 = sub_1BC759C80();
    sub_1BC6F0E60(v15, v16);
    v21 = *(v18 + 8);
    v21(v16, v17);
    v21(v15, v17);
    v20(v0 + 2, 0);
    v27 = 2;
    static SensitiveContentTipState.donate(tipState:)(&v27);
    v0[19] = sub_1BC6EBED8();
    KeyPath = swift_getKeyPath();
    v0[20] = KeyPath;
    v23 = *(MEMORY[0x1E697B4E0] + 4);
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_1BC6F0C44;
    v25 = v0[15];
    v26 = v0[7];

    return MEMORY[0x1EEDD8B68](v25, KeyPath, v26, 3000000000000000000, 0, 0);
  }
}

uint64_t sub_1BC6F0C44()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 168);
  v5 = *v1;

  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = sub_1BC6F6768;
  }

  else
  {

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = sub_1BC6F0DB4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BC6F0DB4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);
  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BC6F0E60(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1BC759C40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x1E697B3F0];
  v27 = sub_1BC633134(&qword_1EBCDBF78, MEMORY[0x1E697B3F0]);
  sub_1BC75C180();
  v19 = v18;
  v20 = v30;
  sub_1BC633134(&qword_1EBCDCA70, v19);
  v28 = a2;
  v21 = sub_1BC75BAB0();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_1BC75C190();
  }

  v24 = v31;
  sub_1BC6F5564(v8, v31);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_1BC6F1154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for SensitiveContentRedactor(0);
  v6 = v5 - 8;
  v24 = *(v5 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SensitiveContentOverlay.Background();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v16 = a1 + *(v6 + 52);
  v17 = *(v16 + *(_s6LayoutVMa(0) + 20));
  v18 = sub_1BC759D50();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a2, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v26, v17, v11, v15);
  sub_1BC6F4438(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SensitiveContentRedactor);
  v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v21 = swift_allocObject();
  sub_1BC6F4B38(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SensitiveContentRedactor);
  sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
  View.onShowContent(_:)(sub_1BC6F65B8, v21);

  return sub_1BC6F5504(v15, type metadata accessor for SensitiveContentOverlay.Background);
}

uint64_t sub_1BC6F1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22[1] = a2;
  v22[0] = a1;
  v22[3] = a9;
  sub_1BC75AA10();
  v15 = sub_1BC75A960();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - v18;
  v22[6] = a5;
  v22[7] = a6;
  v22[8] = a7;
  v22[9] = a8;
  v22[10] = a3;
  v22[11] = a4;
  sub_1BC75B3E0();
  WitnessTable = swift_getWitnessTable();
  v22[12] = a7;
  v22[13] = WitnessTable;
  swift_getWitnessTable();
  sub_1BC75B2A0();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1BC6F15EC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1BC75ABB0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = *(*(_s6LayoutV4ModeOMa(0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = *(*(_s6LayoutVMa(0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = *(*(_s5StateOMa(0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = sub_1BC759CA0();
  v1[17] = v12;
  v13 = *(v12 - 8);
  v1[18] = v13;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v15 = sub_1BC759EE0();
  v1[21] = v15;
  v16 = *(v15 - 8);
  v1[22] = v16;
  v17 = *(v16 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[25] = sub_1BC75BDD0();
  v19 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6F18E0, v19, v18);
}

uint64_t sub_1BC6F18E0()
{
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[4];

  sub_1BC6EC550(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  if ((*(*(v4 - 8) + 48))(v2, 3, v4))
  {
    sub_1BC6F5504(v0[16], _s5StateOMa);
    goto LABEL_12;
  }

  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v43 = v0[23];
  v44 = v0[19];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v53 = v0[13];
  v49 = v0[14];
  v50 = v0[11];
  v46 = v0[12];
  v47 = v0[9];
  v48 = v0[8];
  v45 = v0[4];
  v13 = *(v4 + 48);
  (*(v7 + 32))(v5, v12, v6);
  (*(v10 + 32))(v8, v12 + v13, v9);
  (*(v7 + 16))(v43, v5, v6);
  (*(v10 + 16))(v44, v8, v9);
  v14 = type metadata accessor for SensitiveContentRedactor(0);
  sub_1BC6F4438(v45 + *(v14 + 44), v46, _s6LayoutVMa);
  sub_1BC6F4B38(v46, v50, _s6LayoutV4ModeOMa);
  sub_1BC663D18(v43, v44, &unk_1F3B2BA28, v50, v11);
  (*(v47 + 56))(v11, 0, 1, v48);
  v51 = v14;
  v15 = *(v14 + 36);
  sub_1BC660024(v11, v49, &qword_1EBCDBC50, &qword_1BC762D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B650();
  sub_1BC66008C(v11, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B640();
  v16 = (*(v47 + 48))(v53, 1, v48);
  v17 = v0[13];
  if (v16)
  {
    sub_1BC66008C(v17, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    v18 = v0[10];
    v19 = v0[13];
    sub_1BC6F4438(v17, v18, type metadata accessor for AnalyticsUIContext);
    sub_1BC66008C(v19, &qword_1EBCDBC50, &qword_1BC762D70);
    AnalyticsUIContext.collectContentInteractionEvent(state:)(0);
    sub_1BC6F5504(v18, type metadata accessor for AnalyticsUIContext);
  }

  v20 = v0[4] + *(v51 + 28);
  v22 = *v20;
  v21 = *(v20 + 8);
  if (*(v20 + 16) == 1)
  {
    sub_1BC63302C(v22);
    if (v22 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v24 = v0[6];
  v23 = v0[7];
  v25 = v0[5];

  sub_1BC75BF70();
  v26 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();
  sub_1BC6F4B28(v22, v21, 0, sub_1BC635480);
  (*(v24 + 8))(v23, v25);
  v22 = v0[2];
  v27 = v0[3];
  if (v22 != 1)
  {
LABEL_10:
    sub_1BC71CC90(v22);
    sub_1BC635468(v22);
  }

LABEL_11:
  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[22];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v30 + 8))(v28, v29);
LABEL_12:
  v32 = v0[23];
  v31 = v0[24];
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[15];
  v35 = v0[16];
  v38 = v0[13];
  v37 = v0[14];
  v40 = v0[11];
  v39 = v0[12];
  v52 = v0[10];
  v54 = v0[7];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1BC6F1E10@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v84 - v7;
  v8 = sub_1BC759D50();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759FE0();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v93 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v84 - v15;
  v104 = _s6LayoutV4ModeOMa(0);
  v16 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6LayoutVMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for InterventionConfig.Layout(0);
  v21 = *(*(v101 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v101);
  v99 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v102 = (&v84 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v84 - v27;
  v29 = sub_1BC759EE0();
  v107 = *(v29 - 8);
  v30 = *(v107 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v98 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v106 = &v84 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v84 - v36;
  v38 = sub_1BC759CA0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v97 = &v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v84 - v43;
  v45 = type metadata accessor for SensitiveContentRedactor(0);
  v46 = v45[10];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v48 = v1;
  MEMORY[0x1BFB262E0](v47);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v49 = &qword_1EBCDC998;
    v50 = &qword_1BC7641A0;
    v51 = v37;
  }

  else
  {
    (*(v39 + 32))(v44, v37, v38);
    v52 = v39;
    v53 = v1 + v45[5];
    PolicyProperty.wrappedValue.getter(v28);
    v54 = v107;
    if ((*(v107 + 48))(v28, 1, v29) != 1)
    {
      v57 = v48;
      v58 = v29;
      v59 = v52;
      v60 = v106;
      (*(v54 + 32))(v106, v28, v58);
      v61 = v103;
      sub_1BC6F4438(v57 + v45[11], v103, _s6LayoutVMa);
      v62 = v105;
      sub_1BC6F4B38(v61, v105, _s6LayoutV4ModeOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v88 = v58;
      v87 = v57;
      if (EnumCaseMultiPayload > 2)
      {
        v56 = v108;
        if ((EnumCaseMultiPayload - 5) < 2)
        {
          (*(v54 + 8))(v60, v58);
          (*(v59 + 8))(v44, v38);
          v55 = 1;
          goto LABEL_19;
        }

        v86 = v45;
        v85 = v44;
        if (EnumCaseMultiPayload == 3)
        {
          v68 = v62;
          v70 = v89;
          v69 = v90;
          v71 = v92;
          (*(v89 + 32))(v92, v68, v90);
          (*(v59 + 16))(v97, v44, v38);
          v72 = v91;
          (*(v70 + 16))(v91, v71, v69);
          (*(v70 + 56))(v72, 0, 1, v69);
          v67 = v102;
          sub_1BC759DC0();
          (*(v70 + 8))(v92, v69);
        }

        else
        {
          v67 = v102;
          (*(v59 + 16))(v102, v44, v38);
        }
      }

      else
      {
        v86 = v45;
        v85 = v44;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v104 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48));
            v64 = v94;
            v65 = v95;
            v66 = v96;
            (*(v95 + 32))(v94, v62, v96);
            v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
            (*(v65 + 16))(v93, v64, v66);
            (*(v59 + 16))(v97, v44, v38);
            v67 = v102;
            sub_1BC759CB0();
            (*(v65 + 8))(v64, v66);
            *(v67 + v105) = v104;
            v58 = v88;
          }

          else
          {
            v67 = v102;
            *v102 = *v62;
          }

          v56 = v108;
        }

        else
        {
          v104 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48));
          v73 = v94;
          v74 = v95;
          v75 = v96;
          (*(v95 + 32))(v94, v62, v96);
          v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
          (*(v74 + 16))(v93, v73, v75);
          (*(v59 + 16))(v97, v44, v38);
          v67 = v102;
          sub_1BC759CB0();
          (*(v74 + 8))(v73, v75);
          *(v67 + v105) = v104;
          v58 = v88;
          v56 = v108;
        }
      }

      swift_storeEnumTagMultiPayload();
      v76 = v99;
      sub_1BC6F4438(v67, v99, type metadata accessor for InterventionConfig.Layout);
      v77 = v107;
      v78 = v98;
      (*(v107 + 16))(v98, v60, v58);
      v79 = v86[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
      v80 = v100;
      sub_1BC75B640();
      v81 = sub_1BC67A2E4();
      InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)(v76, v78, v81, v80, 0, v56);
      sub_1BC6F5504(v67, type metadata accessor for InterventionConfig.Layout);
      (*(v77 + 8))(v60, v88);
      (*(v59 + 8))(v85, v38);
      v55 = 0;
      goto LABEL_19;
    }

    (*(v39 + 8))(v44, v38);
    v49 = &unk_1EBCDBD90;
    v50 = &unk_1BC75F850;
    v51 = v28;
  }

  sub_1BC66008C(v51, v49, v50);
  v55 = 1;
  v56 = v108;
LABEL_19:
  v82 = type metadata accessor for InterventionConfig(0);
  return (*(*(v82 - 8) + 56))(v56, v55, 1, v82);
}

uint64_t sub_1BC6F293C(uint64_t a1)
{
  v2 = type metadata accessor for SensitiveContentRedactor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_1BC75BE10();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1BC6F4438(a1, v5, type metadata accessor for SensitiveContentRedactor);
  sub_1BC75BDE0();
  v11 = sub_1BC75BDD0();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_1BC6F4B38(v5, v13 + v12, type metadata accessor for SensitiveContentRedactor);
  sub_1BC652910(0, 0, v9, &unk_1BC7692B0, v13);
}

uint64_t sub_1BC6F2B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v42[-v6];
  v7 = type metadata accessor for WarningMenuButton(0);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BC759EE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD18, &qword_1BC764240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v42[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42[-v25];
  v27 = type metadata accessor for SensitiveContentRedactor(0);
  v28 = a1 + *(v27 + 44);
  if ((*(v28 + *(_s6LayoutVMa(0) + 20)) & 4) == 0)
  {
    goto LABEL_2;
  }

  v45 = v27;
  v46 = a2;
  v30 = *(v27 + 20);
  v44 = a1;
  PolicyProperty.wrappedValue.getter(v26);
  sub_1BC759ED0();
  (*(v11 + 56))(v24, 0, 1, v10);
  v31 = *(v14 + 48);
  sub_1BC660024(v26, v17, &unk_1EBCDBD90, &unk_1BC75F850);
  sub_1BC660024(v24, &v17[v31], &unk_1EBCDBD90, &unk_1BC75F850);
  v32 = *(v11 + 48);
  if (v32(v17, 1, v10) == 1)
  {
    sub_1BC66008C(v24, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC66008C(v26, &unk_1EBCDBD90, &unk_1BC75F850);
    if (v32(&v17[v31], 1, v10) == 1)
    {
      sub_1BC66008C(v17, &unk_1EBCDBD90, &unk_1BC75F850);
      v29 = 1;
      a2 = v46;
      return (*(v51 + 56))(a2, v29, 1, v52);
    }

    goto LABEL_8;
  }

  v33 = v48;
  sub_1BC660024(v17, v48, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v32(&v17[v31], 1, v10) == 1)
  {
    sub_1BC66008C(v24, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC66008C(v26, &unk_1EBCDBD90, &unk_1BC75F850);
    (*(v11 + 8))(v33, v10);
LABEL_8:
    sub_1BC66008C(v17, &qword_1EBCDCD18, &qword_1BC764240);
    v34 = v45;
    a2 = v46;
LABEL_9:
    v35 = *(v34 + 40);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
    v37 = v50;
    MEMORY[0x1BFB262E0](v36);
    v38 = v49;
    WarningMenuButton.init(analysis:)(v37, v49);
    sub_1BC6F4B38(v38, a2, type metadata accessor for WarningMenuButton);
    v29 = 0;
    return (*(v51 + 56))(a2, v29, 1, v52);
  }

  v40 = v47;
  (*(v11 + 32))(v47, &v17[v31], v10);
  sub_1BC633134(&qword_1EDDCEE80, MEMORY[0x1E697B510]);
  v43 = sub_1BC75BAB0();
  v41 = *(v11 + 8);
  v41(v40, v10);
  sub_1BC66008C(v24, &unk_1EBCDBD90, &unk_1BC75F850);
  sub_1BC66008C(v26, &unk_1EBCDBD90, &unk_1BC75F850);
  v41(v33, v10);
  sub_1BC66008C(v17, &unk_1EBCDBD90, &unk_1BC75F850);
  v34 = v45;
  a2 = v46;
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_2:
  v29 = 1;
  return (*(v51 + 56))(a2, v29, 1, v52);
}

uint64_t sub_1BC6F30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_1BC75ABB0();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_1BC75A0A0();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_1BC759C40();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCC0, &unk_1BC7692C0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[26] = sub_1BC75BDD0();
  v17 = sub_1BC75BD80();
  v4[27] = v17;
  v4[28] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F330C, v17, v16);
}

uint64_t sub_1BC6F330C()
{
  v1 = v0[25];
  v2 = v0[14];
  sub_1BC6F1E10(v1);
  v3 = type metadata accessor for InterventionConfig(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[25];
  if (v4 == 1)
  {
    sub_1BC66008C(v0[25], &qword_1EBCDC250, &qword_1BC761340);
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = sub_1BC6A5D8C();
    sub_1BC6F5504(v5, type metadata accessor for InterventionConfig);
  }

  v0[29] = v6;
  v7 = v0[14];
  v0[30] = sub_1BC6EBED8();
  v8 = *(MEMORY[0x1E697B4D8] + 4);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_1BC6F3468;

  return MEMORY[0x1EEDD8B60](v6, 3000000000000000000, 0, 0);
}

uint64_t sub_1BC6F3468()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;

  v6 = *(v2 + 240);
  v7 = *(v2 + 232);
  if (v0)
  {

    v8 = *(v3 + 216);
    v9 = *(v3 + 224);
    v10 = sub_1BC6F6774;
  }

  else
  {

    v8 = *(v3 + 216);
    v9 = *(v3 + 224);
    v10 = sub_1BC6F35D8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BC6F35D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);

  v3 = sub_1BC6EC028((v0 + 16));
  v5 = v4;
  v6 = sub_1BC759CA0();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v0 + 192);
    v3(v0 + 16, 0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    v38 = *(v0 + 168);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
    v13 = *(v12 + 48);
    sub_1BC759C20();
    v37 = sub_1BC759C80();
    v14 = sub_1BC6F0E60(&v9[v13], v10);
    (*(v11 + 8))(v10, v38);
    v37(v0 + 48, 0);
    v3(v0 + 16, 0);
    *v9 = v14 & 1;
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 112);
  sub_1BC66008C(*(v0 + 192), &qword_1EBCDDCC0, &unk_1BC7692C0);
  v19 = type metadata accessor for SensitiveContentRedactor(0);
  v20 = (v18 + *(v19 + 48));
  v21 = *v20;
  v22 = *(v20 + 1);
  *(v0 + 80) = v21;
  *(v0 + 88) = v22;
  *(v0 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B650();
  (*(v16 + 104))(v15, *MEMORY[0x1E697B628], v17);
  sub_1BC75A090();
  (*(v16 + 8))(v15, v17);
  v23 = v18 + *(v19 + 24);
  v25 = *v23;
  v24 = *(v23 + 8);
  if (*(v23 + 16) != 1)
  {
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);

    sub_1BC75BF70();
    v29 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6F4B28(v25, v24, 0, sub_1BC635480);
    (*(v27 + 8))(v26, v28);
    v25 = *(v0 + 96);
    if (v25 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v0 + 96) = v25;
  *(v0 + 104) = v24;
  sub_1BC63302C(v25);
  if (v25 != 1)
  {
LABEL_8:
    v39 = *(v0 + 104);
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v25);
  }

LABEL_9:
  v31 = *(v0 + 192);
  v30 = *(v0 + 200);
  v32 = *(v0 + 184);
  v33 = *(v0 + 160);
  v34 = *(v0 + 136);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1BC6F39D4@<X0>(uint64_t *a1@<X8>)
{
  result = _s24SensitiveContentAnalysis11SensitivityO0abC2UIE2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC6F39FC()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759E40();
  sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510]);
  v5 = sub_1BC75C170();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 0;
  }

  sub_1BC759E20();
  v8 = sub_1BC75C170();
  v6(v4, v0);
  if (v8)
  {
    return 1;
  }

  sub_1BC759E30();
  v9 = sub_1BC75C170();
  v6(v4, v0);
  if (v9)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC6F3BAC@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  v9();
  v12 = v4[2];
  v12(v11, v8, a1);
  v13 = v4[1];
  v13(v8, a1);
  v12(a2, v11, a1);
  return (v13)(v11, a1);
}

uint64_t sub_1BC6F3CEC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  result = sub_1BC712B9C();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6F3D58@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
  MEMORY[0x1BFB262E0](&v10, v3);
  v4 = v10;
  if (v10)
  {
    sub_1BC75BFE0();

    v5 = sub_1BC759CA0();
    return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  }

  else
  {
    v7 = sub_1BC759CA0();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC6F3E94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759B90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6F3EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v9;
  v10 = sub_1BC759EE0();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateOMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD80, &unk_1BC7693F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v39 - v21;
  v23 = &v39 + *(v20 + 56) - v21;
  sub_1BC6F4438(a1, &v39 - v21, _s5StateOMa);
  sub_1BC6F4438(a2, v23, _s5StateOMa);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 3, v24);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (v25(v23, 3, v24) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v25(v23, 3, v24) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v26)
    {
      v39 = v5;
      sub_1BC6F4438(v22, v17, _s5StateOMa);
      v27 = *(v24 + 48);
      if (!v25(v23, 3, v24))
      {
        v30 = v42;
        (*(v42 + 32))(v13, v23, v10);
        v31 = *(v39 + 32);
        v31(v41, &v17[v27], v4);
        v32 = &v23[v27];
        v33 = v40;
        v31(v40, v32, v4);
        sub_1BC633134(&qword_1EBCDDD88, MEMORY[0x1E697B510]);
        sub_1BC75BC70();
        sub_1BC75BC70();
        v35 = v43;
        v34 = v44;
        v36 = *(v30 + 8);
        v36(v17, v10);
        if (v34 == v35)
        {
          v28 = sub_1BC759BF0();
          v37 = *(v39 + 8);
          v37(v33, v4);
          v37(v41, v4);
          v36(v13, v10);
          sub_1BC6F5504(v22, _s5StateOMa);
          return v28 & 1;
        }

        v38 = *(v39 + 8);
        v38(v33, v4);
        v38(v41, v4);
        v36(v13, v10);
        sub_1BC6F5504(v22, _s5StateOMa);
        goto LABEL_12;
      }

      (*(v39 + 8))(&v17[v27], v4);
      (*(v42 + 8))(v17, v10);
LABEL_11:
      sub_1BC66008C(v22, &qword_1EBCDDD80, &unk_1BC7693F0);
LABEL_12:
      v28 = 0;
      return v28 & 1;
    }

    if (v25(v23, 3, v24) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_1BC6F5504(v22, _s5StateOMa);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1BC6F4438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6F44C0@<X0>(char *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  return sub_1BC6F3BAC(v1[3], a1);
}

uint64_t sub_1BC6F4514()
{
  sub_1BC6F456C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BC6F456C()
{
  if (!qword_1EDDCE6E8)
  {
    sub_1BC759EE0();
    sub_1BC759CA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCE6E8);
    }
  }
}

void sub_1BC6F4604()
{
  _s6LayoutV4ModeOMa(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SCUISensitiveContentOverlayOptions();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6F4688()
{
  sub_1BC6F4744(319, &qword_1EDDCEE70);
  if (v0 <= 0x3F)
  {
    sub_1BC6F4744(319, &qword_1EDDCEE60);
    if (v1 <= 0x3F)
    {
      sub_1BC632948();
      if (v2 <= 0x3F)
      {
        sub_1BC759D50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC6F4744(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1BC759FE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BC6F47EC()
{
  sub_1BC6328E4(319, &qword_1EDDCE7F0, type metadata accessor for SCUIMoreHelpMenuOptions, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v1 <= 0x3F)
    {
      sub_1BC6F4A4C(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BC6F4A4C(319, &qword_1EDDCE808, &qword_1EBCDDC70, &qword_1BC769048, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BC6328E4(319, qword_1EDDCF110, MEMORY[0x1E697B4E8], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1BC6F4A4C(319, &qword_1EDDCF100, &qword_1EBCDBC50, &qword_1BC762D70, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BC6F4A4C(319, &qword_1EDDCE768, &qword_1EBCDC998, &qword_1BC7641A0, MEMORY[0x1E6981948]);
              if (v6 <= 0x3F)
              {
                _s6LayoutVMa(319);
                if (v7 <= 0x3F)
                {
                  sub_1BC6F4AB0(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
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

void sub_1BC6F4A4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BC6F4AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BC6F4B1C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BC6F4B28(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1BC6F4B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6F4BA0()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6F15EC(v0 + v3);
}

unint64_t sub_1BC6F4C6C()
{
  result = qword_1EDDCE100;
  if (!qword_1EDDCE100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC78, &qword_1BC769238);
    sub_1BC6F4D24();
    sub_1BC633C54(&qword_1EDDCE0D8, &qword_1EBCDDCA0, &qword_1BC769260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE100);
  }

  return result;
}

unint64_t sub_1BC6F4D24()
{
  result = qword_1EDDCE118;
  if (!qword_1EDDCE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCA8, &qword_1BC769288);
    sub_1BC6F4DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE118);
  }

  return result;
}

unint64_t sub_1BC6F4DB0()
{
  result = qword_1EDDCE140;
  if (!qword_1EDDCE140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC88, &qword_1BC769248);
    sub_1BC633C54(&qword_1EDDCE060, &qword_1EBCDDC98, &qword_1BC769258);
    sub_1BC633C54(&qword_1EDDCE0E0, &qword_1EBCDDC90, &qword_1BC769250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE140);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6F4B1C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = (v0 + v4 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
    v10 = *v6;
  }

  v11 = *(v6 + *(type metadata accessor for PolicyProperty(0) + 20));

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);
  v12 = *(v5 + v1[8]);

  v13 = v5 + v1[9];
  v14 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = sub_1BC759940();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = *(v13 + v14[5] + 8);

    v17 = v14[6];
    v18 = sub_1BC759EE0();
    (*(*(v18 - 8) + 8))(v13 + v17, v18);
    v19 = v14[12];
    v20 = sub_1BC759C70();
    (*(*(v20 - 8) + 8))(v13 + v19, v20);
    v21 = *(v13 + v14[13]);
  }

  v22 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v23 = (v5 + v1[10]);
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v27 = sub_1BC759CA0();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(&v23[v26], 1, v27))
  {
    (*(v28 + 8))(&v23[v26], v27);
  }

  v29 = (v5 + v1[11]);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_21;
      }

      v31 = sub_1BC759FE0();
      (*(*(v31 - 8) + 8))(v29, v31);
      v32 = &qword_1EBCDBF80;
      v33 = &qword_1BC75FA30;
    }

    else
    {
      v35 = sub_1BC759FE0();
      (*(*(v35 - 8) + 8))(v29, v35);
      v32 = &qword_1EBCDBF88;
      v33 = &qword_1BC75FA38;
    }

    v36 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v32, v33) + 48));
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = *v29;
LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v34 = sub_1BC759D50();
    (*(*(v34 - 8) + 8))(v29, v34);
  }

LABEL_21:
  v38 = *(v5 + v1[12] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC6F53DC()
{
  v1 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC6F293C(v2);
}

uint64_t sub_1BC6F543C()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6F30F0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1BC6F5504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6F5564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6F55D4()
{
  result = qword_1EDDCE070;
  if (!qword_1EDDCE070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC6F5660();
    sub_1BC6F5A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE070);
  }

  return result;
}

unint64_t sub_1BC6F5660()
{
  result = qword_1EDDCE078;
  if (!qword_1EDDCE078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE078);
  }

  return result;
}

unint64_t sub_1BC6F56EC()
{
  result = qword_1EDDCE090;
  if (!qword_1EDDCE090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD50, &qword_1BC769358);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE090);
  }

  return result;
}

unint64_t sub_1BC6F57A8()
{
  result = qword_1EDDCE0D0;
  if (!qword_1EDDCE0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD28, &qword_1BC769330);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    sub_1BC6F5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0D0);
  }

  return result;
}

unint64_t sub_1BC6F5864()
{
  result = qword_1EDDCE120;
  if (!qword_1EDDCE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD18, &qword_1BC769320);
    sub_1BC6F5920();
    sub_1BC633134(qword_1EDDCEEC0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE120);
  }

  return result;
}

unint64_t sub_1BC6F5920()
{
  result = qword_1EDDCE150;
  if (!qword_1EDDCE150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD70, &unk_1BC769378);
    sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE150);
  }

  return result;
}

unint64_t sub_1BC6F5A08()
{
  result = qword_1EDDCE080;
  if (!qword_1EDDCE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE080);
  }

  return result;
}

unint64_t sub_1BC6F5A94()
{
  result = qword_1EDDCE0B8;
  if (!qword_1EDDCE0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD00, &qword_1BC769308);
    sub_1BC6F5B20();
    sub_1BC6F5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0B8);
  }

  return result;
}

unint64_t sub_1BC6F5B20()
{
  result = qword_1EDDCE128;
  if (!qword_1EDDCE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD10, &qword_1BC769318);
    sub_1BC6F5920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE128);
  }

  return result;
}

unint64_t sub_1BC6F5BAC()
{
  result = qword_1EDDCE098;
  if (!qword_1EDDCE098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCE0, &qword_1BC7692E8);
    sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE098);
  }

  return result;
}

unint64_t sub_1BC6F5C5C()
{
  result = qword_1EDDCE0C8;
  if (!qword_1EDDCE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCD0, &qword_1BC7692D8);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0C8);
  }

  return result;
}

uint64_t sub_1BC6F5D10()
{
  v1 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1BC6EFD54();
}

uint64_t sub_1BC6F5D6C()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC660280;

  return sub_1BC6F0830(v0 + v3, v4);
}

uint64_t sub_1BC6F5E70()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC759FE0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC6F0154(v0 + v3, v0 + v6);
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_1BC6F4B1C(*(v0 + v3), *(v0 + v3 + 8));
  v7 = (v0 + v3 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = sub_1BC759EE0();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v7, 1, v9))
      {
        (*(v10 + 8))(v7, v9);
      }
    }
  }

  else
  {
    v11 = *v7;
  }

  v12 = *(v7 + *(type metadata accessor for PolicyProperty(0) + 20));

  sub_1BC6F4B28(*(v6 + v1[6]), *(v6 + v1[6] + 8), *(v6 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v6 + v1[7]), *(v6 + v1[7] + 8), *(v6 + v1[7] + 16), sub_1BC635480);
  v13 = *(v6 + v1[8]);

  v14 = v6 + v1[9];
  v15 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
  {
    v16 = sub_1BC759940();
    (*(*(v16 - 8) + 8))(v14, v16);
    v17 = *(v14 + v15[5] + 8);

    v18 = v15[6];
    v19 = sub_1BC759EE0();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
    v20 = v15[12];
    v21 = sub_1BC759C70();
    (*(*(v21 - 8) + 8))(v14 + v20, v21);
    v22 = *(v14 + v15[13]);
  }

  v23 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v24 = (v6 + v1[10]);
  v25 = *v24;

  v26 = *(v24 + 1);

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v28 = sub_1BC759CA0();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(&v24[v27], 1, v28))
  {
    (*(v29 + 8))(&v24[v27], v28);
  }

  v30 = (v6 + v1[11]);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_21;
      }

      v32 = sub_1BC759FE0();
      (*(*(v32 - 8) + 8))(v30, v32);
      v33 = &qword_1EBCDBF80;
      v34 = &qword_1BC75FA30;
    }

    else
    {
      v36 = sub_1BC759FE0();
      (*(*(v36 - 8) + 8))(v30, v36);
      v33 = &qword_1EBCDBF88;
      v34 = &qword_1BC75FA38;
    }

    v37 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v33, v34) + 48));
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v38 = *v30;
LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v35 = sub_1BC759D50();
    (*(*(v35 - 8) + 8))(v30, v35);
  }

LABEL_21:
  v39 = *(v6 + v1[12] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6F64F0()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6F30F0(v4, v5, v6, v0 + v3);
}

unint64_t sub_1BC6F65BC()
{
  result = qword_1EDDCE108;
  if (!qword_1EDDCE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCB0, &qword_1BC769290);
    sub_1BC6F6674();
    sub_1BC633C54(&qword_1EDDCE0E8, &qword_1EBCDDCB8, &unk_1BC769298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE108);
  }

  return result;
}

unint64_t sub_1BC6F6674()
{
  result = qword_1EDDCE130;
  if (!qword_1EDDCE130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD90, &unk_1BC769400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC78, &qword_1BC769238);
    sub_1BC6F4C6C();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE130);
  }

  return result;
}

uint64_t (*sub_1BC6F6778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  sub_1BC75B120();
  swift_getWitnessTable();
  v10 = *(_s4ListVMa() + 36);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1BC6F6898;
  a5[1] = result;
  return result;
}

uint64_t sub_1BC6F6898()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  return sub_1BC75B110();
}

uint64_t sub_1BC6F68EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v10();
  v13 = v5[2];
  v13(v12, v9, a2);
  v14 = v5[1];
  v14(v9, a2);
  v13(a3, v12, a2);
  return (v14)(v12, a2);
}

uint64_t sub_1BC6F6A2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a1;
  v92 = a2;
  v3 = sub_1BC75A710();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v89 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = v69 - v7;
  v8 = sub_1BC75A9B0();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v85 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC75AE90();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v74 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v79 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v97 = v15;
  v98 = v17;
  v20 = v17;
  v73 = v17;
  v99 = v19;
  v100 = MEMORY[0x1E697C750];
  v21 = v19;
  v75 = v19;
  v22 = MEMORY[0x1E697C750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v72 = v69 - v25;
  v97 = v15;
  v98 = v20;
  v99 = v21;
  v100 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1BC6FFB80(&qword_1EBCDDDA0, MEMORY[0x1E697C248]);
  v97 = OpaqueTypeMetadata2;
  v98 = v8;
  v69[0] = OpaqueTypeMetadata2;
  v28 = v8;
  v99 = OpaqueTypeConformance2;
  v100 = v27;
  v29 = OpaqueTypeConformance2;
  v69[2] = OpaqueTypeConformance2;
  v69[1] = v27;
  v71 = swift_getOpaqueTypeMetadata2();
  v78 = *(v71 - 8);
  v30 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v69 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDA8, &unk_1BC769458);
  v32 = sub_1BC75A960();
  v83 = *(v32 - 8);
  v33 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v93 = v69 - v34;
  v97 = OpaqueTypeMetadata2;
  v98 = v8;
  v99 = v29;
  v100 = v27;
  v35 = swift_getOpaqueTypeConformance2();
  v69[3] = v35;
  v36 = sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458);
  v95 = v35;
  v96 = v36;
  WitnessTable = swift_getWitnessTable();
  v84 = v32;
  v97 = v32;
  v98 = MEMORY[0x1E69815C0];
  v77 = WitnessTable;
  v99 = WitnessTable;
  v100 = MEMORY[0x1E6981568];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  v40 = v39[8];
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = v69 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v76 = v69 - v45;
  v46 = *(v94 + 8);
  v47 = v79;
  (*v94)(v44);
  v48 = v74;
  sub_1BC75AE80();
  v49 = v72;
  v50 = v73;
  sub_1BC75B470();
  (*(v82 + 8))(v48, v50);
  (*(v81 + 8))(v47, v15);
  v51 = v85;
  sub_1BC75A9A0();
  v52 = v70;
  v53 = v69[0];
  sub_1BC75B1F0();
  (*(v87 + 8))(v51, v28);
  (*(v80 + 8))(v49, v53);
  sub_1BC75B500();
  v54 = v71;
  sub_1BC75B380();

  (*(v78 + 8))(v52, v54);
  v55 = v94 + *(v86 + 36);
  v56 = v88;
  sub_1BC6FDE94(v88);
  v58 = v89;
  v57 = v90;
  v59 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x1E697DBA8], v91);
  LOBYTE(v55) = sub_1BC75A700();
  v60 = *(v57 + 8);
  v60(v58, v59);
  v60(v56, v59);
  v61 = 0;
  if ((v55 & 1) == 0)
  {
    v62 = [objc_opt_self() systemBackgroundColor];
    v61 = sub_1BC75B4D0();
  }

  v97 = v61;
  v63 = v84;
  v64 = v93;
  sub_1BC75B340();

  (*(v83 + 8))(v64, v63);
  v65 = v39[2];
  v66 = v76;
  v65(v76, v43, v38);
  v67 = v39[1];
  v67(v43, v38);
  v65(v92, v66, v38);
  return (v67)(v66, v38);
}

void *sub_1BC6F7354@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = a4;
  v14 = MEMORY[0x1E6981E70];
  v15 = a5;
  v16 = MEMORY[0x1E6981E60];
  v10 = *(_s7SectionVMa() + 60);
  *(a6 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = sub_1BC758D30(&v13, a1 & 1);
  v12 = v14;
  *a6 = v13;
  a6[1] = v12;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = 0;
  a6[5] = 0;
  return result;
}

uint64_t sub_1BC6F7410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(_s7SectionVMa() + 60);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

uint64_t sub_1BC6F74B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
  v4 = *(a1 + 16);
  v5 = sub_1BC75B7C0();
  v143 = *(v5 - 8);
  v6 = *(v143 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v142 = (&v139 - v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDB8, &qword_1BC769468);
  v178 = v5;
  v8 = sub_1BC75A960();
  v146 = *(v8 - 8);
  v9 = v146[8];
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v139 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  v177 = v8;
  v11 = sub_1BC75A960();
  v147 = *(v11 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v145 = (&v139 - v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC8, &qword_1BC769478);
  v176 = v11;
  v14 = sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDD0, &qword_1BC769480);
  v175 = v14;
  v15 = sub_1BC75A960();
  v150 = *(v15 - 8);
  v16 = *(v150 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v139 - v19;
  v160 = sub_1BC75AC20();
  v164 = *(v160 - 8);
  v20 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BC75A710();
  v161 = *(v22 - 8);
  v162 = v22;
  v23 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDDD8, &qword_1BC769488);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  *&v179 = a1;
  v27 = *(a1 + 24);
  v158 = v3;
  v28 = v4;
  v155 = v27;
  v156 = &v139 - v29;
  v30 = sub_1BC75B7C0();
  v153 = *(v30 - 8);
  v31 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v139 - v32;
  v169 = v33;
  v34 = sub_1BC75A960();
  v151 = *(v34 - 8);
  v35 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v154 = &v139 - v36;
  v172 = v37;
  v38 = sub_1BC75A960();
  v39 = *(v38 - 8);
  v40 = *(v39 + 8);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v139 - v41;
  v171 = v43;
  v170 = sub_1BC75A960();
  v44 = sub_1BC75A960();
  v45 = *(v44 - 8);
  v46 = *(v45 + 8);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v139 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v139 - v50;
  v173 = v52;
  v167 = v15;
  v53 = sub_1BC75AE10();
  v165 = *(v53 - 8);
  v166 = v53;
  v54 = *(v165 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v174 = &v139 - v56;
  v57 = v157;
  if (v157[4])
  {
    v142 = &v139;
    v144 = v49;
    v145 = v39;
    v58 = v157[5];
    v59 = v157[2];
    v139 = v157[3];
    v140 = v59;
    v149 = v51;
    MEMORY[0x1EEE9AC00](v55);
    v148 = v45;
    v60 = v155;
    *(&v139 - 6) = v28;
    *(&v139 - 5) = v60;
    v61 = *(v179 + 32);
    v62 = *(v179 + 40);
    v143 = v42;
    v64 = v63;
    v141 = v63;
    v65 = sub_1BC6D1E74();
    v150 = v58;

    v137 = v61;
    v138 = v62;
    v146 = v61;
    v147 = v65;
    v135 = v60;
    v136 = v65;
    v66 = v152;
    sub_1BC6F88B8(v140, v139, sub_1BC700398, (&v139 - 8), v64, v58, v158, v28, v135);
    v67 = sub_1BC75B170();
    v68 = v156;
    (*(*(v67 - 8) + 56))(v156, 1, 1, v67);
    v199 = v65;
    v200 = v61;
    v201 = v62;
    v158 = MEMORY[0x1E697D6F0];
    v69 = v169;
    WitnessTable = swift_getWitnessTable();
    v71 = v154;
    sub_1BC75B450();
    sub_1BC66008C(v68, &qword_1EBCDDDD8, &qword_1BC769488);
    (*(v153 + 8))(v66, v69);
    v72 = v57 + *(v179 + 60);
    v73 = v159;
    sub_1BC6FDE94(v159);
    v156 = MEMORY[0x1E6980A18];
    v157 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468);
    v197 = WitnessTable;
    v198 = v157;
    v74 = v172;
    v75 = swift_getWitnessTable();
    v76 = v143;
    sub_1BC6F89E4();
    (*(v161 + 8))(v73, v162);
    (*(v151 + 8))(v71, v74);
    v77 = v163;
    sub_1BC75AC10();
    v162 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
    v195 = v75;
    v196 = v162;
    v78 = v171;
    v79 = swift_getWitnessTable();
    v80 = v144;
    sub_1BC75B2F0();
    (*(v164 + 8))(v77, v160);
    v145[1](v76, v78);
    v164 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478);
    v193 = v79;
    v194 = v164;
    v81 = swift_getWitnessTable();
    v82 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480);
    v191 = v81;
    v192 = v82;
    v83 = v173;
    v163 = swift_getWitnessTable();
    v85 = v148;
    v84 = v149;
    v86 = *(v148 + 2);
    v86(v149, v80, v83);
    v87 = *(v85 + 1);
    v87(v80, v83);
    v86(v80, v84, v83);
    v188 = v147;
    v189 = v146;
    v190 = MEMORY[0x1E6981E60];
    v186 = swift_getWitnessTable();
    v187 = v157;
    v184 = swift_getWitnessTable();
    v185 = v162;
    v182 = swift_getWitnessTable();
    v183 = v164;
    v180 = swift_getWitnessTable();
    v181 = v82;
    swift_getWitnessTable();
    sub_1BC633818(v80, v83);
    v87(v80, v83);
    v87(v84, v83);
    sub_1BC635484(v141);
  }

  else
  {
    v88 = v157;
    v90 = v157[2];
    v89 = v157[3];
    MEMORY[0x1EEE9AC00](v55);
    v91 = v155;
    *(&v139 - 6) = v28;
    *(&v139 - 5) = v91;
    v92 = v179;
    v93 = *(v179 + 32);
    v155 = *(v179 + 40);
    v135 = v93;
    v136 = v155;
    v137 = v88;
    v94 = sub_1BC6D1E74();
    v95 = v142;
    v96 = v89;
    v97 = v94;
    v153 = v94;
    v154 = v93;
    sub_1BC6F8B58(v90, v96, sub_1BC6FE0AC, (&v139 - 8), v158);
    v98 = sub_1BC75B170();
    v99 = v156;
    (*(*(v98 - 8) + 56))(v156, 1, 1, v98);
    v244 = v97;
    v245 = v93;
    v246 = MEMORY[0x1E6981E60];
    v158 = MEMORY[0x1E697D6F0];
    v100 = v178;
    v101 = swift_getWitnessTable();
    v102 = v144;
    sub_1BC75B450();
    sub_1BC66008C(v99, &qword_1EBCDDDD8, &qword_1BC769488);
    (*(v143 + 1))(v95, v100);
    v103 = v88 + *(v92 + 60);
    v104 = v159;
    sub_1BC6FDE94(v159);
    v157 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468);
    v242 = v101;
    v243 = v157;
    v105 = v177;
    v106 = swift_getWitnessTable();
    v107 = v145;
    sub_1BC6F89E4();
    (*(v161 + 8))(v104, v162);
    (v146[1])(v102, v105);
    v108 = v163;
    sub_1BC75AC10();
    v162 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
    v240 = v106;
    v241 = v162;
    v109 = v176;
    v110 = swift_getWitnessTable();
    v111 = v149;
    sub_1BC75B2F0();
    (*(v164 + 8))(v108, v160);
    (*(v147 + 8))(v107, v109);
    v164 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478);
    v238 = v110;
    v239 = v164;
    v112 = swift_getWitnessTable();
    v113 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480);
    v236 = v112;
    v237 = v113;
    v114 = v167;
    v163 = swift_getWitnessTable();
    v115 = v150;
    v116 = *(v150 + 16);
    v117 = v148;
    v116(v148, v111, v114);
    v118 = *(v115 + 8);
    v118(v111, v114);
    v116(v111, v117, v114);
    v233 = v153;
    v234 = v154;
    v235 = v155;
    v231 = swift_getWitnessTable();
    v232 = v157;
    v229 = swift_getWitnessTable();
    v230 = v162;
    v227 = swift_getWitnessTable();
    v228 = v164;
    v225 = swift_getWitnessTable();
    v226 = v113;
    v119 = v173;
    swift_getWitnessTable();
    sub_1BC633720(v111, v119, v114);
    v118(v111, v114);
    v118(v117, v114);
  }

  v120 = sub_1BC6D1E74();
  v223 = v120;
  v179 = *(v179 + 32);
  v224 = v179;
  v121 = swift_getWitnessTable();
  v122 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468);
  v221 = v121;
  v222 = v122;
  v123 = swift_getWitnessTable();
  v124 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
  v219 = v123;
  v220 = v124;
  v125 = swift_getWitnessTable();
  v126 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478);
  v217 = v125;
  v218 = v126;
  v127 = swift_getWitnessTable();
  v128 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480);
  v215 = v127;
  v216 = v128;
  v129 = swift_getWitnessTable();
  v212 = v120;
  v213 = v179;
  v214 = MEMORY[0x1E6981E60];
  v210 = swift_getWitnessTable();
  v211 = v122;
  v208 = swift_getWitnessTable();
  v209 = v124;
  v206 = swift_getWitnessTable();
  v207 = v126;
  v204 = swift_getWitnessTable();
  v205 = v128;
  v130 = swift_getWitnessTable();
  v202 = v129;
  v203 = v130;
  v131 = v166;
  swift_getWitnessTable();
  v132 = v165;
  v133 = v174;
  (*(v165 + 16))(v168, v174, v131);
  return (*(v132 + 8))(v133, v131);
}

uint64_t sub_1BC6F879C@<X0>(uint64_t *a1@<X8>)
{
  result = v1[1];
  if (result)
  {
    v22[0] = *v1;
    v22[1] = result;

    v4 = sub_1BC651E78(v22);
    v6 = v5;
    v8 = v7;
    sub_1BC75B0F0();
    v9 = sub_1BC75B190();
    v11 = v10;
    v13 = v12;

    sub_1BC680E6C(v4, v6, v8 & 1);

    v14 = sub_1BC75B180();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BC680E6C(v9, v11, v13 & 1);

    v21 = v18 & 1;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v21 = 0;
    v20 = 0;
  }

  *a1 = v14;
  a1[1] = v16;
  a1[2] = v21;
  a1[3] = v20;
  return result;
}

uint64_t sub_1BC6F88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v15(v14);
  a5(v16);
  return sub_1BC75B7B0();
}

uint64_t sub_1BC6F89E4()
{
  v0 = sub_1BC75A710();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697DBA8], v0);
  v5 = sub_1BC75A700();
  (*(v1 + 8))(v4, v0);
  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v7 = [objc_opt_self() systemGray6Color];
    v6 = sub_1BC75B4D0();
  }

  v9[1] = v6;
  sub_1BC75B2C0();
}

uint64_t sub_1BC6F8B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_1BC75B7A0();
}

uint64_t sub_1BC6F8C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v16 = _s3RowVMa();
  result = sub_1BC65FFBC(a3, a9 + v16[5], &qword_1EBCDDE00, &qword_1BC769490);
  v18 = a9 + v16[6];
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  *(a9 + v16[7]) = a8;
  return result;
}

uint64_t sub_1BC6F8CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE10, &qword_1BC7694A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE18, &qword_1BC7694A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE20, &qword_1BC7694B0);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-v13];
  v15 = _s3RowVMa();
  if (*(v1 + *(v15 + 28)) == 1)
  {
    v16 = v15;
    v34 = v11;
    v35 = a1;
    sub_1BC6F9038(v1, v6);
    v17 = *(v1 + 8);
    v33 = *v1;
    v32 = v17;
    v18 = sub_1BC757E10(v33, v17);
    KeyPath = swift_getKeyPath();
    if (v18)
    {
      v20 = sub_1BC75BB60();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    sub_1BC640B8C(v6, v10);
    v25 = &v10[*(v7 + 36)];
    *v25 = KeyPath;
    v25[1] = v20;
    v25[2] = v22;
    v26 = v1 + *(v16 + 24);
    v27 = *v26;
    v28 = *(v26 + 16);
    LOBYTE(v26) = *(v26 + 24);
    v40 = v27;
    v41 = v28;
    v42 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    v40 = v37;
    v41 = v38;
    v42 = v39;
    *&v37 = v33;
    BYTE8(v37) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FE220();
    sub_1BC6FEAB4();
    sub_1BC75B3D0();

    sub_1BC66008C(v10, &qword_1EBCDDE18, &qword_1BC7694A8);
    v29 = v35;
    v30 = v34;
    (*(v36 + 32))(v35, v14, v34);
    return (*(v36 + 56))(v29, 0, 1, v30);
  }

  else
  {
    v23 = *(v36 + 56);

    return v23(a1, 1, 1, v11);
  }
}

uint64_t sub_1BC6F9038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v273 = a2;
  v248 = sub_1BC75AED0();
  v236 = *(v248 - 8);
  v3 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v235 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC75AE30();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v234 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE038, &qword_1BC7699A8);
  v8 = *(*(v233 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v233);
  v232 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v229 = &v221 - v11;
  v240 = sub_1BC759910();
  v230 = *(v240 - 8);
  v12 = *(v230 + 64);
  v13 = MEMORY[0x1EEE9AC00](v240);
  v239 = &v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v238 = &v221 - v15;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE040, &qword_1BC7699B0);
  v16 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v241 = &v221 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE048, &qword_1BC7699B8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v243 = &v221 - v20;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF18, &qword_1BC769558);
  v231 = *(v246 - 8);
  v21 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v228 = &v221 - v22;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE050, &qword_1BC7699C0);
  v237 = *(v249 - 8);
  v23 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v242 = &v221 - v24;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE058, &qword_1BC7699C8);
  v25 = *(*(v244 - 8) + 64);
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v221 - v26;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF10, &qword_1BC769550);
  v27 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v247 = &v221 - v28;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE060, &qword_1BC7699D0);
  v29 = *(*(v250 - 8) + 64);
  MEMORY[0x1EEE9AC00](v250);
  v251 = (&v221 - v30);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDED0, &qword_1BC769530);
  v31 = *(*(v268 - 8) + 64);
  MEMORY[0x1EEE9AC00](v268);
  v253 = (&v221 - v32);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEA0, &qword_1BC769518);
  v33 = *(*(v256 - 1) + 64);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v221 - v34;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE068, &qword_1BC7699D8);
  v35 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v37 = &v221 - v36;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE90, &qword_1BC769510);
  v38 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v40 = &v221 - v39;
  v41 = type metadata accessor for Report.Evidence(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v221 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE070, &qword_1BC7699E0);
  v45 = *(*(v270 - 8) + 64);
  MEMORY[0x1EEE9AC00](v270);
  v272 = &v221 - v46;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE078, &qword_1BC7699E8);
  v47 = *(*(v265 - 8) + 64);
  MEMORY[0x1EEE9AC00](v265);
  v267 = &v221 - v48;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE080, &qword_1BC7699F0);
  v49 = *(*(v259 - 8) + 64);
  MEMORY[0x1EEE9AC00](v259);
  v260 = &v221 - v50;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE68, &qword_1BC769500);
  v51 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266);
  v262 = &v221 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE58, &qword_1BC7694F8);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v269 = &v221 - v55;
  v271 = _s3RowVMa();
  v56 = *(v271 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v58 = &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v60 = *(a1 + 8);
  v263 = *a1;
  LODWORD(v264) = v60;
  v61 = sub_1BC757FB4(v263, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE088, &qword_1BC7699F8);
  v274 = v61;
  v62 = swift_dynamicCastClass();
  if (v62)
  {
    v63 = v62;
    v256 = _s3RowVMa;
    v257 = v59;
    sub_1BC6FF97C(v59, &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), _s3RowVMa);
    sub_1BC75BDE0();
    v258 = v53;

    v64 = sub_1BC75BDD0();
    v65 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v66 = (v57 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = MEMORY[0x1E69E85E0];
    *(v67 + 16) = v64;
    *(v67 + 24) = v68;
    sub_1BC6FF9E4(v58, v67 + v65);
    *(v67 + v66) = v63;
    v69 = v257;
    sub_1BC6FF97C(v257, v58, v256);

    v70 = sub_1BC75BDD0();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v58, v71 + v65);
    *(v71 + v66) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
    sub_1BC75B740();
    v72 = v280;
    v73 = *(&v281 + 1);
    v74 = v281;
    v75 = v69 + *(v271 + 24);
    v76 = *v75;
    v77 = *(v75 + 16);
    LOBYTE(v75) = *(v75 + 24);
    v275 = v76;
    v276.n128_u64[0] = v77;
    v276.n128_u8[8] = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DB00(v263, v264, v72.n128_i64[0], v72.n128_i64[1], v74, v73, v285.n128_i64[0], v285.n128_i64[1], &v285, v286.n128_i64[0], v286.n128_i8[8]);
    v277[0] = *v287;
    v277[1] = *&v287[16];
    *v278 = v288[0];
    *&v278[9] = *(v288 + 9);
    v275 = v285;
    v276 = v286;
    LOBYTE(v284) = 0;
    v279 = 0;
    sub_1BC6FFBC8(&v285, &v280);
    sub_1BC6FE52C();
    sub_1BC75AE00();
    v78 = v282[1];
    v79 = v260;
    *(v260 + 32) = v282[0];
    *(v79 + 48) = v78;
    *(v79 + 64) = v283[0];
    *(v79 + 74) = *(v283 + 10);
    v80 = v281;
    *v79 = v280;
    *(v79 + 16) = v80;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v81 = v262;
    sub_1BC75AE00();
    sub_1BC660024(v81, v267, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v82 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v81, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v82, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    v83 = &v285;
LABEL_3:
    sub_1BC6FFC24(v83);
    v84 = v82;
LABEL_7:
    v98 = &qword_1EBCDDE58;
    v99 = &qword_1BC7694F8;
    return sub_1BC66008C(v84, v98, v99);
  }

  v222 = v56;
  v223 = &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v40;
  v226 = v44;
  v224 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE090, &qword_1BC769A00);
  if (swift_dynamicCastClass())
  {
    v85 = v271;
    v86 = *(v271 + 20);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    v88 = v226;
    MEMORY[0x1BFB262E0](v87);
    swift_getAtKeyPath();
    sub_1BC6FE158(v88);
    v89 = (v59 + *(v85 + 24));
    v90 = *v89;
    v91 = v89[1].n128_u64[0];
    LOBYTE(v89) = v89[1].n128_u8[8];
    v280 = v90;
    *&v281 = v91;
    BYTE8(v281) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v263, v264, v275.n128_u64[0], v275.n128_u64[1], v276.n128_u64[0], v276.n128_u8[8], &v285);
    v277[0] = *v287;
    v277[1] = *&v287[16];
    *v278 = v288[0];
    *&v278[9] = *(v288 + 9);
    v275 = v285;
    v276 = v286;
    LOBYTE(v284) = 1;
    v279 = 1;
    sub_1BC6FFBC8(&v285, &v280);
    sub_1BC6FFBC8(&v285, &v280);
    sub_1BC6FE52C();
    sub_1BC75AE00();
    v92 = v282[1];
    v93 = v260;
    *(v260 + 32) = v282[0];
    *(v93 + 48) = v92;
    *(v93 + 64) = v283[0];
    *(v93 + 74) = *(v283 + 10);
    v94 = v281;
    *v93 = v280;
    *(v93 + 16) = v94;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v95 = v262;
    sub_1BC75AE00();
    sub_1BC660024(v95, v267, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v96 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v95, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v96, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v285);
    v97 = &v285;
LABEL_6:
    sub_1BC6FFC24(v97);
    v84 = v96;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE098, &qword_1BC769A08);
  v101 = swift_dynamicCastClass();
  v102 = v59;
  v103 = v271;
  v258 = v53;
  if (v101)
  {
    v104 = *(v271 + 20);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    v106 = v103;
    v107 = v226;
    MEMORY[0x1BFB262E0](v105);
    swift_getAtKeyPath();
    sub_1BC6FE158(v107);
    v108 = (v59 + *(v106 + 24));
    v109 = *v108;
    v110 = v108[1].n128_u64[0];
    LOBYTE(v108) = v108[1].n128_u8[8];
    v280 = v109;
    *&v281 = v110;
    BYTE8(v281) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v263, v264, v275.n128_u64[0], v275.n128_u64[1], v276.n128_u64[0], v276.n128_u8[8], &v280);
    v111 = v282[1];
    v112 = v224;
    *(v224 + 2) = v282[0];
    *(v112 + 48) = v111;
    *(v112 + 64) = v283[0];
    *(v112 + 73) = *(v283 + 9);
    v113 = v281;
    *v112 = v280;
    *(v112 + 16) = v113;
    swift_storeEnumTagMultiPayload();
    sub_1BC6FFBC8(&v280, &v275);
    sub_1BC6FFBC8(&v280, &v275);
    sub_1BC6FE52C();
    sub_1BC6FE60C();
    v114 = v225;
    sub_1BC75AE00();
    sub_1BC660024(v114, v260, &qword_1EBCDDE90, &qword_1BC769510);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v115 = v262;
    sub_1BC75AE00();
    sub_1BC66008C(v114, &qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC660024(v115, v267, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v82 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v115, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v82, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v280);
    v83 = &v280;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0A0, &qword_1BC769A10);
  v116 = swift_dynamicCastClass();
  v117 = v272;
  v118 = v226;
  if (v116)
  {
    v253 = _s3RowVMa;
    v271 = v116;
    v119 = v223;
    sub_1BC6FF97C(v102, v223, _s3RowVMa);
    sub_1BC75BDE0();

    v120 = sub_1BC75BDD0();
    v121 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v122 = (v57 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v123 = swift_allocObject();
    v124 = MEMORY[0x1E69E85E0];
    *(v123 + 16) = v120;
    *(v123 + 24) = v124;
    sub_1BC6FF9E4(v119, v123 + v121);
    *(v123 + v122) = v271;
    sub_1BC6FF97C(v102, v119, v253);

    v125 = sub_1BC75BDD0();
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v119, v126 + v121);
    *(v126 + v122) = v271;
    sub_1BC75B740();
    MEMORY[0x1EEE9AC00](v280.n128_u64[0]);
    v127 = v254;
    sub_1BC75B6E0();
    v128 = sub_1BC757D6C(v263, v264);
    LOBYTE(v125) = sub_1BC758D2C(v128, 0);
    KeyPath = swift_getKeyPath();
    v130 = swift_allocObject();
    *(v130 + 16) = v125 & 1;
    v131 = (v127 + *(v256 + 9));
    *v131 = KeyPath;
    v131[1] = sub_1BC6FFF88;
    v131[2] = v130;
    sub_1BC660024(v127, v224, &qword_1EBCDDEA0, &qword_1BC769518);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE52C();
    sub_1BC6FE60C();
    v132 = v225;
    sub_1BC75AE00();
    sub_1BC660024(v132, v260, &qword_1EBCDDE90, &qword_1BC769510);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v133 = v262;
    sub_1BC75AE00();
    sub_1BC66008C(v132, &qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC660024(v133, v267, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v134 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v133, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v134, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC66008C(v134, &qword_1EBCDDE58, &qword_1BC7694F8);
    v84 = v127;
    v98 = &qword_1EBCDDEA0;
    v99 = &qword_1BC769518;
    return sub_1BC66008C(v84, v98, v99);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0A8, &qword_1BC769A18);
  if (swift_dynamicCastClass())
  {
    v135 = *(v103 + 20);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v136);
    swift_getAtKeyPath();
    sub_1BC6FE158(v118);
    v280.n128_u8[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0F0, &qword_1BC769A48);
    sub_1BC75B750();
    v285 = v275;
    v286.n128_u8[0] = v276.n128_u8[0];
    sub_1BC6FFDD4();
    sub_1BC6FFE28();
    sub_1BC74F330(&v285, &v280);
    v275 = v280;
    v271 = v280.n128_i64[1];
    v264 = v280.n128_u64[0];
    v276.n128_u64[0] = v281;
    v276.n128_u16[4] = BYTE8(v281);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEF0, &qword_1BC769540);
    v137 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC75AE00();
    v138 = v281;
    v139 = BYTE8(v281);
    v140 = BYTE9(v281);
    v141 = v251;
    *v251 = v280;
    v141[1].n128_u64[0] = v138;
    v141[1].n128_u8[8] = v139;
    v141[1].n128_u8[9] = v140;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v142 = v253;
    sub_1BC75AE00();
    sub_1BC660024(v142, v267, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v143 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v142, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v143, v137, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    swift_bridgeObjectRelease_n();
LABEL_17:

    v84 = v143;
    v98 = &qword_1EBCDDE58;
    v99 = &qword_1BC7694F8;
    return sub_1BC66008C(v84, v98, v99);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0B0, &qword_1BC769A20);
  v144 = swift_dynamicCastClass();
  v145 = v264;
  v146 = v263;
  if (v144)
  {
    v271 = v144;
    v147 = v223;
    sub_1BC6FF97C(v102, v223, _s3RowVMa);
    sub_1BC75BDE0();

    v148 = sub_1BC75BDD0();
    v257 = v102;
    v149 = v148;
    v150 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v151 = (v57 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
    v152 = swift_allocObject();
    v153 = MEMORY[0x1E69E85E0];
    *(v152 + 16) = v149;
    *(v152 + 24) = v153;
    sub_1BC6FF9E4(v147, v152 + v150);
    v154 = v271;
    *(v152 + v151) = v271;
    sub_1BC6FF97C(v257, v147, _s3RowVMa);

    v155 = sub_1BC75BDD0();
    v156 = swift_allocObject();
    *(v156 + 16) = v155;
    *(v156 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v147, v156 + v150);
    *(v156 + v151) = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0D8, &qword_1BC769A40);
    sub_1BC75B740();
    v285 = v275;
    v286.n128_u8[0] = v276.n128_u8[0];
    sub_1BC6FFD2C();
    sub_1BC6FFD80();
    sub_1BC74F330(&v285, &v280);
    v275 = v280;
    v271 = v280.n128_u64[0];
    v276.n128_u64[0] = v281;
    v276.n128_u8[8] = BYTE8(v281);
    v276.n128_u8[9] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEF0, &qword_1BC769540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC75AE00();
    v157 = v281;
    v158 = BYTE8(v281);
    v159 = BYTE9(v281);
    v160 = v251;
    *v251 = v280;
    v160[1].n128_u64[0] = v157;
    v160[1].n128_u8[8] = v158;
    v160[1].n128_u8[9] = v159;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v161 = v253;
    sub_1BC75AE00();
    sub_1BC660024(v161, v267, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v143 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v161, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v143, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0B8, &qword_1BC769A28);
  if (swift_dynamicCastClass())
  {
    v162 = v271;
    v163 = *(v271 + 20);
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v164);
    swift_getAtKeyPath();
    sub_1BC6FE158(v118);
    v275.n128_u64[0] = v280.n128_u64[0];
    sub_1BC75C590();
    v165 = (v102 + *(v162 + 24));
    v166 = *v165;
    v167 = v165[1].n128_u64[0];
    LOBYTE(v165) = v165[1].n128_u8[8];
    v280 = v166;
    *&v281 = v167;
    BYTE8(v281) = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v146, v145, v275.n128_u64[0], v275.n128_u64[1], v276.n128_u64[0], v276.n128_u8[8], &v280);
    v168 = v282[1];
    v169 = v245;
    *(v245 + 2) = v282[0];
    *(v169 + 3) = v168;
    *(v169 + 4) = v283[0];
    *(v169 + 73) = *(v283 + 9);
    v170 = v281;
    *v169 = v280;
    *(v169 + 1) = v170;
    swift_storeEnumTagMultiPayload();
    sub_1BC6FFBC8(&v280, &v275);
    sub_1BC6FFBC8(&v280, &v275);
    sub_1BC6FE52C();
    v171 = sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558);
    v172 = sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0]);
    v275.n128_u64[0] = v246;
    v275.n128_u64[1] = v248;
    v276.n128_u64[0] = v171;
    v276.n128_u64[1] = v172;
    swift_getOpaqueTypeConformance2();
    v173 = v117;
    v174 = v247;
    sub_1BC75AE00();
    sub_1BC660024(v174, v251, &qword_1EBCDDF10, &qword_1BC769550);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v175 = v253;
    sub_1BC75AE00();
    sub_1BC66008C(v174, &qword_1EBCDDF10, &qword_1BC769550);
    sub_1BC660024(v175, v267, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v96 = v269;
    sub_1BC75AE00();
    sub_1BC66008C(v175, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v96, v173, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v280);
    v97 = &v280;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0C0, &qword_1BC769A30);
  v176 = swift_dynamicCastClass();
  if (v176)
  {
    v271 = v176;
    sub_1BC7572F8(v146, v145, &v280);
    v275 = v280;
    v264 = _s3RowVMa;
    v177 = v223;
    sub_1BC6FF97C(v102, v223, _s3RowVMa);
    sub_1BC75BDE0();

    v178 = sub_1BC75BDD0();
    v179 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v180 = (v57 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
    v181 = swift_allocObject();
    v182 = MEMORY[0x1E69E85E0];
    *(v181 + 16) = v178;
    *(v181 + 24) = v182;
    sub_1BC6FF9E4(v177, v181 + v179);
    v183 = v271;
    *(v181 + v180) = v271;
    sub_1BC6FF97C(v102, v177, v264);

    v184 = sub_1BC75BDD0();
    v185 = swift_allocObject();
    *(v185 + 16) = v184;
    *(v185 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v177, v185 + v179);
    *(v185 + v180) = v183;
    v186 = v240;
    sub_1BC75B740();
    v187 = v238;
    sub_1BC7598B0();
    v188 = v239;
    sub_1BC759900();
    sub_1BC6FFB80(&qword_1EBCDE0D0, MEMORY[0x1E6969530]);
    result = sub_1BC75BAA0();
    if (result)
    {
      v190 = v229;
      v189 = v230;
      v191 = *(v230 + 32);
      v191(v229, v187, v186);
      v192 = v233;
      v191((v190 + *(v233 + 48)), v188, v186);
      v193 = v232;
      sub_1BC660024(v190, v232, &qword_1EBCDE038, &qword_1BC7699A8);
      v194 = *(v192 + 48);
      v191(v241, v193, v186);
      v195 = *(v189 + 8);
      v195(v193 + v194, v186);
      sub_1BC65FFBC(v190, v193, &qword_1EBCDE038, &qword_1BC7699A8);
      v191(&v241[*(v227 + 36)], (v193 + *(v192 + 48)), v186);
      v195(v193, v186);
      sub_1BC75AE20();
      sub_1BC651EB8();
      v196 = v228;
      sub_1BC75A660();
      v197 = v235;
      sub_1BC75AEC0();
      v198 = sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558);
      v199 = sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0]);
      v200 = v242;
      v201 = v246;
      v202 = v248;
      sub_1BC75B280();
      (*(v236 + 8))(v197, v202);
      (*(v231 + 8))(v196, v201);
      v203 = v237;
      v204 = v249;
      (*(v237 + 16))(v245, v200, v249);
      swift_storeEnumTagMultiPayload();
      sub_1BC6FE52C();
      v280.n128_u64[0] = v201;
      v280.n128_u64[1] = v202;
      *&v281 = v198;
      *(&v281 + 1) = v199;
      swift_getOpaqueTypeConformance2();
      v205 = v247;
      sub_1BC75AE00();
      sub_1BC660024(v205, v251, &qword_1EBCDDF10, &qword_1BC769550);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
      sub_1BC6FE77C();
      sub_1BC6FE85C();
      v206 = v253;
      sub_1BC75AE00();
      sub_1BC66008C(v205, &qword_1EBCDDF10, &qword_1BC769550);
      sub_1BC660024(v206, v267, &qword_1EBCDDED0, &qword_1BC769530);
      swift_storeEnumTagMultiPayload();
      sub_1BC6FE474();
      sub_1BC6FE6F0();
      v207 = v269;
      sub_1BC75AE00();
      sub_1BC66008C(v206, &qword_1EBCDDED0, &qword_1BC769530);
      sub_1BC660024(v207, v272, &qword_1EBCDDE58, &qword_1BC7694F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
      sub_1BC6FE3E8();
      sub_1BC6FE9A8();
      sub_1BC75AE00();

      sub_1BC66008C(v207, &qword_1EBCDDE58, &qword_1BC7694F8);
      return (*(v203 + 8))(v242, v204);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0C8, &qword_1BC769A38);
    if (!swift_dynamicCastClass())
    {

      v274 = sub_1BC75B810();
      v213 = v212;
      sub_1BC6FC200(v102, &v280);
      v214 = v280;
      v215 = v281;
      v216 = *(&v281 + 1);
      v217 = *&v282[0];
      v218 = BYTE8(v282[0]);
      v219 = BYTE9(v282[0]);
      sub_1BC680FFC(v280.n128_i64[0], v280.n128_i64[1], v281);

      sub_1BC680E6C(v214.n128_i64[0], v214.n128_i64[1], v215);

      v280.n128_u8[0] = v215;
      v285.n128_u64[0] = v274;
      v285.n128_u64[1] = v213;
      v286 = v214;
      v287[0] = v215;
      *&v287[8] = v216;
      *&v287[16] = v217;
      v287[24] = v218;
      v287[25] = v219;
      v275 = v285;
      v276 = v214;
      v277[0] = *v287;
      *(v277 + 10) = *&v287[10];
      LOBYTE(v284) = 1;
      BYTE10(v277[1]) = 1;
      sub_1BC660024(&v285, &v280, &qword_1EBCDDF50, &qword_1BC769568);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF50, &qword_1BC769568);
      sub_1BC6FEA60();
      sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568);
      sub_1BC75AE00();
      v220 = v281;
      *v117 = v280;
      *(v117 + 16) = v220;
      *(v117 + 32) = v282[0];
      *(v117 + 43) = *(v282 + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
      sub_1BC6FE3E8();
      sub_1BC6FE9A8();
      sub_1BC75AE00();
      v84 = &v285;
      v98 = &qword_1EBCDDF50;
      v99 = &qword_1BC769568;
      return sub_1BC66008C(v84, v98, v99);
    }

    v208 = *(v271 + 20);
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v209);
    swift_getAtKeyPath();
    sub_1BC6FE158(v118);
    v210 = nullsub_1(v280.n128_u64[0]);
    v285.n128_u8[0] = 0;
    v275.n128_u64[0] = v210;
    BYTE10(v277[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF50, &qword_1BC769568);
    sub_1BC6FEA60();
    sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568);
    sub_1BC75AE00();
    v211 = v281;
    *v117 = v280;
    *(v117 + 16) = v211;
    *(v117 + 32) = v282[0];
    *(v117 + 43) = *(v282 + 11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();
  }

  return result;
}

uint64_t sub_1BC6FBBC4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(_s3RowVMa() + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v7);
  v8 = swift_readAtKeyPath();
  v11 = *v9;
  v10 = v9[1];

  v8(v13, 0);
  result = sub_1BC6FE158(v5);
  *a1 = v11;
  a1[1] = v10;
  return result;
}

uint64_t sub_1BC6FBCB8(uint64_t *a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  v4 = a1[1];
  v6 = *(_s3RowVMa() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FBDA4@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(_s3RowVMa() + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v7);
  v8 = swift_readAtKeyPath();
  v10 = *v9;
  v8(v12, 0);
  result = sub_1BC6FE158(v5);
  *a1 = v10;
  return result;
}

uint64_t sub_1BC6FBE90(char *a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *a1;
  v5 = *(_s3RowVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FBF74@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(_s3RowVMa() + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v7);
  v8 = swift_readAtKeyPath();
  v10 = v9;
  v11 = sub_1BC759910();
  (*(*(v11 - 8) + 16))(a1, v10, v11);
  v8(v13, 0);
  return sub_1BC6FE158(v5);
}

uint64_t sub_1BC6FC098(uint64_t a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BC759910();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = *(_s3RowVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FC200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BC7572F8(*a1, *(a1 + 8), v13);
  v12[0] = v13[0];
  v12[1] = v13[1];
  v3 = sub_1BC651E78(v12);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BC75B4E0();
  *a2 = v3;
  *(a2 + 8) = v5;
  v7 &= 1u;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = 256;
  sub_1BC680FFC(v3, v5, v7);

  sub_1BC680E6C(v3, v5, v7);
}

uint64_t sub_1BC6FC2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = *(_s6DetailVMa() + 44);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a5 = v8;
  a5[1] = v9;
  a5[2] = v10;
  a5[3] = v11;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_1BC6FC364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF78, &qword_1BC76EB80) + 44);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = nullsub_1;
  a3[5] = 0;
  return result;
}

__n128 sub_1BC6FC404@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v11 = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u64[1];
  v9 = *(_s6DetailVMa() + 44);
  *(a4->n128_u64 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = v11;
  *a4 = v11;
  a4[1].n128_u64[0] = v7;
  a4[1].n128_u64[1] = v8;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

__n128 sub_1BC6FC4A8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF78, &qword_1BC76EB80) + 44);
  *(a2->n128_u64 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = nullsub_1;
  a2[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1BC6FC550@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1BC75A710();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &WitnessTable - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
  swift_getTupleTypeMetadata2();
  sub_1BC75B850();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1BC75B6D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &WitnessTable - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  v12 = sub_1BC75A960();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &WitnessTable - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &WitnessTable - v18;
  v20 = *(a1 + 24);
  v35 = v6;
  v36 = v20;
  v21 = v30;
  v37 = v30;
  sub_1BC75AC00();
  sub_1BC75B6C0();
  v22 = v21 + *(a1 + 44);
  v23 = v31;
  sub_1BC6FDE94(v31);
  v24 = swift_getWitnessTable();
  sub_1BC6F89E4();
  (*(v32 + 8))(v23, v33);
  (*(v8 + 8))(v11, v7);
  v25 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470);
  v38 = v24;
  v39 = v25;
  swift_getWitnessTable();
  v26 = v13[2];
  v26(v19, v17, v12);
  v27 = v13[1];
  v27(v17, v12);
  v26(v34, v19, v12);
  return (v27)(v19, v12);
}

uint64_t sub_1BC6FC938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v67 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BC75A960();
  v12 = *(v11 - 8);
  v68 = v11;
  v69 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55[-v18];
  v64 = &v55[-v18];
  v20 = *(v6 + 40);
  (*(v6 + 32))(v17);
  sub_1BC75B810();
  sub_1BC75B3B0();
  (*(v7 + 8))(v10, a2);
  v91 = a3;
  v92 = MEMORY[0x1E697E040];
  v21 = v68;
  WitnessTable = swift_getWitnessTable();
  v22 = v69;
  v23 = *(v69 + 16);
  v62 = v69 + 16;
  v63 = v23;
  v61 = v16;
  v23(v19, v16, v21);
  v24 = *(v22 + 8);
  v69 = v22 + 8;
  v66 = v24;
  v24(v16, v21);
  v60 = sub_1BC75ACE0();
  LOBYTE(v72[0]) = 1;
  v25 = *(v6 + 8);
  *&v114 = *v6;
  *(&v114 + 1) = v25;

  v26 = sub_1BC651E78(&v114);
  v28 = v27;
  LOBYTE(v19) = v29;
  v30 = sub_1BC75B180();
  v57 = v31;
  v58 = v30;
  v56 = v32;
  v59 = v33;
  sub_1BC680E6C(v26, v28, v19 & 1);

  v34 = *(v6 + 24);
  *&v114 = *(v6 + 16);
  *(&v114 + 1) = v34;

  v35 = sub_1BC651E78(&v114);
  v37 = v36;
  LOBYTE(v6) = v38;
  v40 = v39;
  KeyPath = swift_getKeyPath();
  v42 = sub_1BC75B0C0();
  v43 = swift_getKeyPath();
  LOBYTE(v7) = v6 & 1;
  LOBYTE(v114) = v6 & 1;
  LOBYTE(v109) = 0;
  v44 = sub_1BC75B500();
  LOBYTE(v6) = v56 & 1;
  LOBYTE(v100[0]) = v56 & 1;
  *&v109 = v35;
  *(&v109 + 1) = v37;
  LOBYTE(v110[0]) = v7;
  *(&v110[0] + 1) = v40;
  *&v110[1] = KeyPath;
  *(&v110[1] + 1) = 1;
  LOBYTE(v110[2]) = 0;
  *(&v110[2] + 1) = v43;
  *&v110[3] = v42;
  *(&v110[3] + 1) = v44;
  v88 = v110[2];
  v89 = v110[3];
  v86 = v110[0];
  v87 = v110[1];
  v85 = v109;
  *&v114 = v35;
  *(&v114 + 1) = v37;
  LOBYTE(v115) = v7;
  *(&v115 + 1) = v40;
  *&v116 = KeyPath;
  *(&v116 + 1) = 1;
  LOBYTE(v117) = 0;
  *(&v117 + 1) = v43;
  *&v118 = v42;
  *(&v118 + 1) = v44;
  v46 = v57;
  v45 = v58;
  sub_1BC680FFC(v58, v57, v56 & 1);
  v47 = v59;

  sub_1BC660024(&v109, &v73, &qword_1EBCDE030, &qword_1BC7699A0);
  sub_1BC66008C(&v114, &qword_1EBCDE030, &qword_1BC7699A0);
  sub_1BC680E6C(v45, v46, v6);

  v96 = v86;
  v97 = v87;
  v98 = v88;
  v99 = v89;
  v95 = v85;
  v107 = v88;
  v108 = v89;
  v105 = v86;
  v106 = v87;
  *(&v94 + 1) = v109;
  DWORD1(v94) = *(&v109 + 3);
  *&v93 = v45;
  *(&v93 + 1) = v46;
  LOBYTE(v94) = v6;
  *(&v94 + 1) = v47;
  v100[0] = v45;
  v100[1] = v46;
  v101 = v6;
  *&v102[3] = *(&v109 + 3);
  *v102 = v109;
  v103 = v47;
  v104 = v85;
  sub_1BC660024(&v93, &v114, &qword_1EBCDE010, &qword_1BC769930);
  sub_1BC66008C(v100, &qword_1EBCDE010, &qword_1BC769930);
  *&v90[55] = v96;
  *&v90[71] = v97;
  *&v90[87] = v98;
  *&v90[103] = v99;
  *&v90[7] = v93;
  *&v90[23] = v94;
  *&v90[39] = v95;
  LOBYTE(v35) = v72[0];
  v48 = sub_1BC75B030();
  *(&v110[4] + 1) = *&v90[64];
  *(&v110[5] + 1) = *&v90[80];
  *(&v110[6] + 1) = *&v90[96];
  *(v110 + 1) = *v90;
  *(&v110[1] + 1) = *&v90[16];
  *(&v110[2] + 1) = *&v90[32];
  LOBYTE(v73) = 1;
  v109 = v60;
  LOBYTE(v110[0]) = v35;
  *&v110[7] = *&v90[111];
  *(&v110[3] + 1) = *&v90[48];
  BYTE8(v110[7]) = v48;
  *(&v110[7] + 9) = v114;
  HIDWORD(v110[7]) = *(&v114 + 3);
  v111 = 0u;
  v112 = 0u;
  v113 = 1;
  v49 = v61;
  v50 = v64;
  v51 = v68;
  v63(v61, v64, v68);
  v81 = v110[7];
  v82 = v111;
  v83 = v112;
  v84 = v113;
  v77 = v110[3];
  v78 = v110[4];
  v79 = v110[5];
  v80 = v110[6];
  v73 = v109;
  v74 = v110[0];
  v75 = v110[1];
  v76 = v110[2];
  *&v85 = v49;
  *(&v85 + 1) = &v73;
  sub_1BC660024(&v109, &v114, &qword_1EBCDDF80, &qword_1BC769580);
  v72[0] = v51;
  v72[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF80, &qword_1BC769580);
  v70 = WitnessTable;
  v71 = sub_1BC6FF8C4();
  sub_1BC6C9838(&v85, 2uLL, v72);
  sub_1BC66008C(&v109, &qword_1EBCDDF80, &qword_1BC769580);
  v52 = v50;
  v53 = v66;
  v66(v52, v51);
  v122 = v81;
  v123 = v82;
  v124 = v83;
  v125 = v84;
  v119 = v78;
  v120 = v79;
  v121 = v80;
  v114 = v73;
  v115 = v74;
  v116 = v75;
  v117 = v76;
  v118 = v77;
  sub_1BC66008C(&v114, &qword_1EBCDDF80, &qword_1BC769580);
  return v53(v49, v51);
}

uint64_t sub_1BC6FD028(unsigned __int8 a1)
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](a1);
  return sub_1BC75C720();
}

uint64_t sub_1BC6FD08C()
{
  sub_1BC75C700();
  sub_1BC6FD000(v2, *v0);
  return sub_1BC75C720();
}

void *sub_1BC6FD0CC@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = result[1];
  v7 = *a2;
  v8 = a2[1];
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 32) = a3;
  return result;
}

uint64_t sub_1BC6FD0E8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFD0, &qword_1BC769888);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFD8, &qword_1BC769890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE0, &unk_1BC769898);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v42 - v10;
  v12 = sub_1BC75B5D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = *(v1 + 32);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      sub_1BC75B5C0();
      (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
      v26 = sub_1BC75B610();

      (*(v13 + 8))(v16, v12);
      v27 = sub_1BC75B4F0();
      KeyPath = swift_getKeyPath();
      v46 = v26;
      v47 = xmmword_1BC769410;
      v48 = KeyPath;
      v49 = v27;
      v50 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
      sub_1BC6FF648();
      sub_1BC680F34();
      sub_1BC75AE00();
      v29 = v53;
      v30 = v54;
      v31 = v52;
      *v4 = v51;
      *(v4 + 1) = v31;
      *(v4 + 4) = v29;
      v4[40] = v30;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
      sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
      sub_1BC6FF77C();
      sub_1BC75AE00();
    }

    else
    {
      v37 = [objc_opt_self() mainBundle];
      sub_1BC75B620();
      (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
      v38 = sub_1BC75B610();

      (*(v13 + 8))(v16, v12);
      v46 = v38;
      v47 = xmmword_1BC769410;
      v48 = 0;
      v49 = 0;
      v50 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
      sub_1BC6FF648();
      sub_1BC680F34();
      sub_1BC75AE00();
      v39 = v53;
      v40 = v54;
      v41 = v52;
      *v4 = v51;
      *(v4 + 1) = v41;
      *(v4 + 4) = v39;
      v4[40] = v40;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
      sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
      sub_1BC6FF77C();
      sub_1BC75AE00();
    }
  }

  else
  {
    v42 = v5;
    if (v21)
    {
      sub_1BC75B5C0();
      (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
      v32 = sub_1BC75B610();

      (*(v13 + 8))(v16, v12);
      v33 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v35 = sub_1BC75AD00();
      (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
      *v33 = swift_getKeyPath();
      *v20 = v32;
      *(v20 + 1) = 0;
      *(v20 + 8) = 257;
      *&v20[*(v17 + 36)] = sub_1BC75B500();
    }

    else
    {
      sub_1BC75B5C0();
      (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
      v22 = sub_1BC75B610();

      (*(v13 + 8))(v16, v12);
      v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v25 = sub_1BC75AD00();
      (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
      *v23 = swift_getKeyPath();
      *v20 = v22;
      *(v20 + 1) = 0;
      *(v20 + 8) = 257;
      *&v20[*(v17 + 36)] = sub_1BC75B4F0();
    }

    sub_1BC660024(v20, v8, &qword_1EBCDC5A0, &qword_1BC766B10);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CBAA8();
    sub_1BC75AE00();
    sub_1BC660024(v11, v4, &qword_1EBCDDFE0, &unk_1BC769898);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
    sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
    sub_1BC6FF77C();
    sub_1BC75AE00();
    sub_1BC66008C(v11, &qword_1EBCDDFE0, &unk_1BC769898);
    return sub_1BC66008C(v20, &qword_1EBCDC5A0, &qword_1BC766B10);
  }
}

uint64_t sub_1BC6FDA48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF88, &qword_1BC769588);
  v5 = *(a1 + 16);
  v6 = sub_1BC633C54(&qword_1EBCDDF90, &qword_1EBCDDF88, &qword_1BC769588);
  v7 = *(a1 + 24);
  *&v30 = v4;
  *(&v30 + 1) = v5;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  v8 = sub_1BC75A8B0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = v2[1];
  v30 = *v2;
  v31 = v16;
  v32 = v2[2];
  v33 = *(v2 + 6);
  v27 = v5;
  v28 = v7;
  v29 = &v30;
  v23 = v5;
  v24 = v7;
  v25 = &v30;
  sub_1BC6FDDC0(sub_1BC6FEBB0, v26, sub_1BC6FEBBC, v22, v4, v5);
  swift_getWitnessTable();
  v17 = v9[2];
  v17(v15, v13, v8);
  v18 = v9[1];
  v18(v13, v8);
  v17(v21, v15, v8);
  return (v18)(v15, v8);
}

uint64_t sub_1BC6FDC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  v13 = *(v10 + 48);
  (*(v10 + 40))();
  v14 = v5[2];
  v14(v12, v9, a2);
  v15 = v5[1];
  v15(v9, a2);
  v14(a3, v12, a2);
  return (v15)(v12, a2);
}

uint64_t sub_1BC6FDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v7();
  return sub_1BC75A8A0();
}

uint64_t sub_1BC6FDE94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1BC660024(v2, &v17 - v11, &qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BC75A710();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1BC75BF70();
    v16 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_1BC6FE0B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  _s7SectionVMa();
  sub_1BC6F879C(&v7);
  result = *&v7;
  v6 = v8;
  *a1 = v7;
  a1[1] = v6;
  return result;
}

uint64_t _s3RowVMa()
{
  result = qword_1EBCEDD70;
  if (!qword_1EBCEDD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC6FE158(uint64_t a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6FE1B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AA90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC6FE1E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1BC75AAA0();
}

unint64_t sub_1BC6FE220()
{
  result = qword_1EBCDDE30;
  if (!qword_1EBCDDE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE18, &qword_1BC7694A8);
    sub_1BC6FE2D8();
    sub_1BC633C54(&qword_1EBCDDF58, &qword_1EBCDDF60, &unk_1BC769570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE30);
  }

  return result;
}

unint64_t sub_1BC6FE2D8()
{
  result = qword_1EBCDDE38;
  if (!qword_1EBCDDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE10, &qword_1BC7694A0);
    sub_1BC6FE35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE38);
  }

  return result;
}

unint64_t sub_1BC6FE35C()
{
  result = qword_1EBCDDE40;
  if (!qword_1EBCDDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE48, &qword_1BC7694F0);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE40);
  }

  return result;
}

unint64_t sub_1BC6FE3E8()
{
  result = qword_1EBCDDE50;
  if (!qword_1EBCDDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE58, &qword_1BC7694F8);
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE50);
  }

  return result;
}

unint64_t sub_1BC6FE474()
{
  result = qword_1EBCDDE60;
  if (!qword_1EBCDDE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE60);
  }

  return result;
}

unint64_t sub_1BC6FE52C()
{
  result = qword_1EBCDDE80;
  if (!qword_1EBCDDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE80);
  }

  return result;
}

unint64_t sub_1BC6FE580()
{
  result = qword_1EBCDDE88;
  if (!qword_1EBCDDE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC6FE52C();
    sub_1BC6FE60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE88);
  }

  return result;
}

unint64_t sub_1BC6FE60C()
{
  result = qword_1EBCDDE98;
  if (!qword_1EBCDDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDEA0, &qword_1BC769518);
    sub_1BC633C54(&qword_1EBCDDEA8, &qword_1EBCDDEB0, &qword_1BC769520);
    sub_1BC633C54(&qword_1EBCDDEB8, &qword_1EBCDDEC0, &qword_1BC769528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE98);
  }

  return result;
}

unint64_t sub_1BC6FE6F0()
{
  result = qword_1EBCDDEC8;
  if (!qword_1EBCDDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDEC8);
  }

  return result;
}

unint64_t sub_1BC6FE77C()
{
  result = qword_1EBCDDED8;
  if (!qword_1EBCDDED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDED8);
  }

  return result;
}

unint64_t sub_1BC6FE85C()
{
  result = qword_1EBCDDF08;
  if (!qword_1EBCDDF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF10, &qword_1BC769550);
    sub_1BC6FE52C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF18, &qword_1BC769558);
    sub_1BC75AED0();
    sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558);
    sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF08);
  }

  return result;
}

unint64_t sub_1BC6FE9A8()
{
  result = qword_1EBCDDF30;
  if (!qword_1EBCDDF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FEA60();
    sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF30);
  }

  return result;
}

unint64_t sub_1BC6FEA60()
{
  result = qword_1EBCDDF40;
  if (!qword_1EBCDDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF40);
  }

  return result;
}

unint64_t sub_1BC6FEAB4()
{
  result = qword_1EBCDDF68;
  if (!qword_1EBCDDF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF68);
  }

  return result;
}

unint64_t sub_1BC6FEB38()
{
  result = qword_1EBCDDF70;
  if (!qword_1EBCDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF70);
  }

  return result;
}

uint64_t sub_1BC6FEBBC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v5[1];
  v17 = *v5;
  v16 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v9 = v5[1];
  v8 = v5[2];
  v10 = *v5;
  *(v7 + 80) = *(v5 + 6);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF88, &qword_1BC769588) + 44);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  v12 = v16;
  *a1 = v17;
  *(a1 + 16) = v12;
  *(a1 + 32) = sub_1BC6FF5C8;
  *(a1 + 40) = v7;
  sub_1BC6FF5EC(&v17, v15);
  sub_1BC6FF5EC(&v16, v15);
  v13 = _s4LinkVMa();
  return (*(*(v13 - 8) + 16))(v15, v5, v13);
}

uint64_t sub_1BC6FED48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1BC6FEE4C()
{
  sub_1BC6335A0();
  if (v0 <= 0x3F)
  {
    sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6FEF30()
{
  sub_1BC6FF03C();
  if (v0 <= 0x3F)
  {
    sub_1BC6335A0();
    if (v1 <= 0x3F)
    {
      sub_1BC6FF08C();
      if (v2 <= 0x3F)
      {
        sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC6FF03C()
{
  if (!qword_1EBCDDFA8)
  {
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDDFA8);
    }
  }
}

void sub_1BC6FF08C()
{
  if (!qword_1EDDCE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCE700);
    }
  }
}

void sub_1BC6FF118()
{
  sub_1BC6FF1E4(319, &qword_1EBCDDFB0, type metadata accessor for Report.Evidence, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1BC6FF248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6FF1E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6FF248()
{
  if (!qword_1EBCDDFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEAB4();
    v0 = sub_1BC75A6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDDFB8);
    }
  }
}

void sub_1BC6FF2C0()
{
  sub_1BC6335A0();
  if (v0 <= 0x3F)
  {
    sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC6FF3AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC6FF410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BC6FF458(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BC6FF4DC()
{
  result = qword_1EBCDDFC0;
  if (!qword_1EBCDDFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFC8, &qword_1BC769880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE18, &qword_1BC7694A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FE220();
    sub_1BC6FEAB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDFC0);
  }

  return result;
}

unint64_t sub_1BC6FF648()
{
  result = qword_1EBCDDFF0;
  if (!qword_1EBCDDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDFF0);
  }

  return result;
}

uint64_t sub_1BC6FF700(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6FF77C()
{
  result = qword_1EBCDE008;
  if (!qword_1EBCDE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
    sub_1BC6FF648();
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE008);
  }

  return result;
}

uint64_t sub_1BC6FF808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC75AB60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6FF860@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BC75AB80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BC6FF894(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1BC75AB90();
}

unint64_t sub_1BC6FF8C4()
{
  result = qword_1EBCDE018;
  if (!qword_1EBCDE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
    sub_1BC633C54(&qword_1EBCDE020, &qword_1EBCDE028, &qword_1BC769938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE018);
  }

  return result;
}

uint64_t sub_1BC6FF97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6FF9E4(uint64_t a1, uint64_t a2)
{
  v4 = _s3RowVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6FFA48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s3RowVMa() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FBF74(a1);
}

uint64_t sub_1BC6FFAE4(uint64_t a1)
{
  v3 = *(_s3RowVMa() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FC098(a1);
}

uint64_t sub_1BC6FFB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6FFC78@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(_s3RowVMa() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FBDA4(a1);
}

unint64_t sub_1BC6FFD2C()
{
  result = qword_1EBCDE0E0;
  if (!qword_1EBCDE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0E0);
  }

  return result;
}

unint64_t sub_1BC6FFD80()
{
  result = qword_1EBCDE0E8;
  if (!qword_1EBCDE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0E8);
  }

  return result;
}

unint64_t sub_1BC6FFDD4()
{
  result = qword_1EBCDE0F8;
  if (!qword_1EBCDE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0F8);
  }

  return result;
}

unint64_t sub_1BC6FFE28()
{
  result = qword_1EBCDE100;
  if (!qword_1EBCDE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE100);
  }

  return result;
}

uint64_t sub_1BC6FFE7C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(_s3RowVMa() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_1BC6FFF2C@<X0>(uint64_t a1@<X8>)
{
  sub_1BC7572F8(**(v1 + 16), *(*(v1 + 16) + 8), v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  result = sub_1BC651E78(v7);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BC6FFFA0@<X0>(void *a1@<X8>)
{
  v3 = *(_s3RowVMa() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FBBC4(a1);
}

uint64_t objectdestroy_60Tm()
{
  v1 = _s3RowVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v40 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v3 + *(v1 + 20));
  v6 = *v5;

  v7 = v5[1];

  v8 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v9 = sub_1BC759910();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = type metadata accessor for Report.Evidence(0);
  v12 = &v8[v11[6]];
  v13 = *(v12 + 1);

  v14 = *(v12 + 3);

  v15 = *(v12 + 5);

  v16 = *(v12 + 7);

  v17 = *(v12 + 9);

  v18 = *(v12 + 11);

  v19 = *(v12 + 13);

  v20 = *(v12 + 15);

  v21 = *(v12 + 17);

  v22 = *(v12 + 19);

  v23 = *(v12 + 21);

  v24 = *(v12 + 23);

  v25 = _s6VictimVMa(0);
  (*(v10 + 8))(&v12[*(v25 + 44)], v9);
  v26 = *&v8[v11[7]];

  v27 = *&v8[v11[9] + 8];

  v28 = *&v8[v11[12]];

  v29 = &v8[v11[13]];
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_1BC6AE140(*v29, v30);
  }

  v31 = (v40 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = *&v8[v11[14] + 8];

  v33 = *&v8[v11[16] + 8];

  v34 = *&v8[v11[17] + 8];

  v35 = (v0 + v3 + *(v1 + 24));
  v36 = *v35;

  v37 = v35[1];

  v38 = *(v0 + v31);

  return MEMORY[0x1EEE6BDD0](v0, v31 + 8, v2 | 7);
}

uint64_t sub_1BC7002F0(uint64_t *a1)
{
  v3 = *(_s3RowVMa() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FBCB8(a1);
}

uint64_t sub_1BC70039C()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCEDF38);
  __swift_project_value_buffer(v0, qword_1EBCEDF38);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC700420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *))
{
  if (a1)
  {
    v7 = sub_1BC75BA30();
  }

  else
  {
    v7 = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BC700514;
  v10[3] = &block_descriptor_162;
  v8 = _Block_copy(v10);

  a4(v7, v8);
  _Block_release(v8);
}

void sub_1BC700514(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1BC7005A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBD8, &qword_1BC768CB0);
    v2 = sub_1BC75C420();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BC65F494(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1BC678BBC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BC678BBC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BC678BBC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1BC75C1D0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1BC678BBC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BC700868(uint64_t a1)
{
  v3 = type metadata accessor for ReportNavigationStack(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  sub_1BC70A1DC(a1, v6, type metadata accessor for ReportNavigationStack);
  v8 = sub_1BC75AD20();
  sub_1BC70C0DC(a1, type metadata accessor for ReportNavigationStack);
  return v8;
}

id Report.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Report.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Report();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1BC700AF0(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1BC75B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
  if (swift_dynamicCast())
  {
    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69DB570])
    {
      (*(v5 + 96))(v8, v4);
      v11 = *v8;
      v10 = v8[1];
      v12 = *v8 == 0xD00000000000001FLL && 0x80000001BC773790 == v10;
      if (v12 || (v13 = *v8, v14 = v8[1], (sub_1BC75C5E0() & 1) != 0) || (v11 == 0xD000000000000019 ? (v15 = 0x80000001BC7737B0 == v10) : (v15 = 0), v15))
      {

        goto LABEL_23;
      }

      v16 = sub_1BC75C5E0();

      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  v27 = a1;
  v17 = a1;
  if (swift_dynamicCast())
  {

    a1 = v26;
LABEL_23:

    goto LABEL_24;
  }

  _s3__C4CodeOMa_0(0);
  v27 = 6;
  v18 = a1;
  sub_1BC70A26C(&qword_1EBCDE128, _s3__C4CodeOMa_0);
  v19 = sub_1BC759690();

  if ((v19 & 1) == 0)
  {
    v27 = 34;
    v20 = a1;
    v21 = sub_1BC759690();

    if ((v21 & 1) == 0)
    {
      v27 = 4;
      v22 = a1;
      v23 = sub_1BC759690();

      if ((v23 & 1) == 0)
      {
        v27 = 3;
        v24 = a1;
        v25 = sub_1BC759690();

        if ((v25 & 1) == 0)
        {
          a1 |= 0x8000000000000000;
        }
      }
    }
  }

LABEL_24:
  *a2 = a1;
}

void sub_1BC700E54()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (qword_1EBCEDF30 != -1)
      {
        swift_once();
      }

      v18 = sub_1BC75A4E0();
      __swift_project_value_buffer(v18, qword_1EBCEDF38);
      oslog = sub_1BC75A4C0();
      v19 = sub_1BC75BF60();
      if (!os_log_type_enabled(oslog, v19))
      {
        goto LABEL_25;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BC630000, oslog, v19, "Failed to send report. TrustKit unavailable.", v20, 2u);
      v16 = v20;
LABEL_24:
      MEMORY[0x1BFB27EF0](v16, -1, -1);
LABEL_25:
      v17 = oslog;

      goto LABEL_19;
    }

    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v10 = sub_1BC75A4E0();
    __swift_project_value_buffer(v10, qword_1EBCEDF38);
    v11 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v12;
      *v7 = v12;
      v9 = "Failed to send report. Error: %@";
      goto LABEL_16;
    }
  }

  else if (v2)
  {
    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v13 = sub_1BC75A4E0();
    __swift_project_value_buffer(v13, qword_1EBCEDF38);
    v14 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v15;
      *v7 = v15;
      v9 = "Failed to start report. No report info. Error: %@";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC75A4E0();
    __swift_project_value_buffer(v3, qword_1EBCEDF38);
    v4 = v1;
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      v9 = "Failed to send report. No connection. Error: %@";
LABEL_16:
      _os_log_impl(&dword_1BC630000, oslog, v5, v9, v6, 0xCu);
      sub_1BC66008C(v7, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v7, -1, -1);
      v16 = v6;
      goto LABEL_24;
    }
  }

  v17 = (v1 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_19:
}

uint64_t sub_1BC701210()
{
  v0 = type metadata accessor for Report.TestingOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EBCF4678);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF4678);
  if (qword_1EBCEDF58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EBCF4690);
  return sub_1BC70A1DC(v2, v1, type metadata accessor for Report.TestingOptions);
}

uint64_t sub_1BC7012D8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Report.TestingOptions(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1BC70132C()
{
  v0 = type metadata accessor for Report.TestingOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EBCF4690);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF4690);
  v2 = v0[5];
  v3 = sub_1BC759800();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v0[6];
  v5 = sub_1BC759990();
  result = (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + v0[7]) = 0;
  *(v1 + v0[8]) = 0;
  *(v1 + v0[9]) = 0;
  *(v1 + v0[10]) = 0;
  *(v1 + v0[11]) = 0;
  return result;
}

uint64_t sub_1BC70145C(uint64_t a1)
{
  v2 = sub_1BC75A850();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BC75AB50();
}

uint64_t sub_1BC701C48(uint64_t a1)
{
  v2 = type metadata accessor for ReportNavigationStack(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for ReportScreen(0);
  sub_1BC70A1DC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportNavigationStack);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BC70A704(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ReportNavigationStack);
  type metadata accessor for ReportToAuthoritiesScreenView(0);
  sub_1BC70A26C(&qword_1EBCDE170, type metadata accessor for ReportScreen);
  sub_1BC70A26C(&qword_1EBCDE178, type metadata accessor for ReportToAuthoritiesScreenView);
  sub_1BC75B320();
}

uint64_t sub_1BC701E28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v38 = a1;
  v5 = type metadata accessor for ReportNavigationStack(0);
  v6 = v5 - 8;
  v35 = *(v5 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = v8;
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75ABB0();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v31 - v15);
  v17 = *a2;
  v18 = type metadata accessor for ReportToAuthoritiesScreenView(0);
  v19 = v18[5];
  v34 = a3;
  sub_1BC70A1DC(v38, a3 + v19, type metadata accessor for ReportScreen);
  v20 = *(v6 + 32);
  v21 = v18[6];
  v38 = a2;
  sub_1BC660024(a2 + v20, v16, &qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1BC75A830();
    v23 = v34;
    (*(*(v22 - 8) + 32))(v34 + v21, v16, v22);
  }

  else
  {
    v24 = *v16;

    sub_1BC75BF70();
    v25 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    v23 = v34;
    swift_getAtKeyPath();

    (*(v32 + 8))(v12, v33);
  }

  v26 = v37;
  sub_1BC70A1DC(v38, v37, type metadata accessor for ReportNavigationStack);
  v27 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v28 = swift_allocObject();
  result = sub_1BC70A704(v26, v28 + v27, type metadata accessor for ReportNavigationStack);
  *v23 = v17;
  v30 = (v23 + v18[7]);
  *v30 = sub_1BC70E8A4;
  v30[1] = v28;
  return result;
}

uint64_t sub_1BC70218C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE548, &unk_1BC76A428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for ReportScreen(0);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = sub_1BC75A830();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ReportScreen.Control(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC70A1DC(a1, v24, type metadata accessor for ReportScreen.Control);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v45 = a2 + *(type metadata accessor for ReportNavigationStack(0) + 24);
      sub_1BC7092F4(&qword_1EBCDD880, &qword_1BC767910, MEMORY[0x1E697BF90], v20);
      sub_1BC75A820();
      return (*(v17 + 8))(v20, v16);
    }

    v32 = *(a2 + 8);
    v33 = *(a2 + 16);
    v52 = v32;
    v53 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE148, &qword_1BC769B10);
    sub_1BC75B640();
    v34 = v51;
    if (!v51[2])
    {
      v39 = 1;
      v35 = v47;
      goto LABEL_16;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v35 = v47;
    if (result)
    {
      v36 = v34[2];
      if (v36)
      {
LABEL_12:
        v37 = v36 - 1;
        v38 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v37;
        v34[2] = v37;
        sub_1BC70A704(v38, v7, type metadata accessor for ReportScreen);
        v39 = 0;
LABEL_16:
        (*(v35 + 56))(v7, v39, 1, v46);
        sub_1BC66008C(v7, &qword_1EBCDE548, &unk_1BC76A428);
        v49 = v32;
        v50 = v33;
        v48 = v34;
        sub_1BC75B650();
      }
    }

    else
    {
      result = sub_1BC709B44(v34);
      v34 = result;
      v36 = *(result + 16);
      if (v36)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    v40 = *v24;
    v41 = *v24;
    sub_1BC700AF0(v40, &v52);
    v42 = v52;
    sub_1BC700E54();
    v43 = (a2 + *(type metadata accessor for ReportNavigationStack(0) + 32));
    v44 = v43[1];
    v52 = *v43;
    v53 = v44;
    v49 = v42;
    sub_1BC70E63C(v52);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
    sub_1BC75B650();

    sub_1BC70A2B4(v52);
  }

  else
  {
    sub_1BC70A704(v24, v15, type metadata accessor for ReportScreen);
    sub_1BC70A1DC(v15, v13, type metadata accessor for ReportScreen);
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    v52 = v26;
    v53 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE148, &qword_1BC769B10);
    sub_1BC75B640();
    v28 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1BC70996C(0, v28[2] + 1, 1, v28);
    }

    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1BC70996C(v29 > 1, v30 + 1, 1, v28);
    }

    v28[2] = v30 + 1;
    sub_1BC70A704(v13, v28 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30, type metadata accessor for ReportScreen);
    v49 = v26;
    v50 = v27;
    v48 = v28;
    sub_1BC75B650();

    return sub_1BC70C0DC(v15, type metadata accessor for ReportScreen);
  }
}

uint64_t sub_1BC70272C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE538, &qword_1BC76A418);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v38 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1B0, &unk_1BC769B30);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v38 - v9;
  v10 = type metadata accessor for ReportNavigationStack(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  if (*a1 >> 62)
  {
    v37._countAndFlagsBits = 0x4B4341425F4F47;
    v37._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v37);
    v44 = v46;
    v45 = v47;
    sub_1BC651F0C(&v44);
    (*(v13 + 16))(v43, v24, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    sub_1BC75AE00();
    return (*(v13 + 8))(v24, v12);
  }

  else
  {
    v25._object = 0x80000001BC773C20;
    v26 = a2;
    v27 = v22;
    v25._countAndFlagsBits = 0xD000000000000013;
    SCLocalizedStringKey.init(stringLiteral:)(v25);
    v44 = v46;
    v45 = v47;
    sub_1BC70A1DC(v26, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportNavigationStack);
    v28 = *(v39 + 80);
    v39 = a3;
    v29 = (v28 + 16) & ~v28;
    v30 = swift_allocObject();
    sub_1BC70A704(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for ReportNavigationStack);
    sub_1BC651F0C(&v44);
    v31._countAndFlagsBits = 0x4B4341425F4F47;
    v31._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v31);
    v44 = v46;
    v45 = v47;
    v38 = v27;
    sub_1BC651F0C(&v44);
    v32 = *(v13 + 16);
    v32(v20, v24, v12);
    v32(v17, v27, v12);
    v33 = v40;
    v32(v40, v20, v12);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE540, &qword_1BC76A420);
    v32((v33 + *(v34 + 48)), v17, v12);
    v35 = *(v13 + 8);
    v35(v17, v12);
    v35(v20, v12);
    sub_1BC660024(v33, v43, &unk_1EBCDE1B0, &unk_1BC769B30);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    sub_1BC75AE00();
    sub_1BC66008C(v33, &unk_1EBCDE1B0, &unk_1BC769B30);
    v35(v38, v12);
    return (v35)(v24, v12);
  }
}

uint64_t sub_1BC702D48(uint64_t a1)
{
  v2 = sub_1BC759800();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC75A850();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ReportNavigationStack(0) + 28);
  sub_1BC7092F4(&qword_1EBCDE108, &qword_1BC769AE8, MEMORY[0x1E697E178], v11);
  v13 = sub_1BC6D8094();
  (*(v3 + 16))(v6, v13, v2);
  sub_1BC75A840();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BC702FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v12[0] = *v1;
  v12[1] = v3;

  v4 = sub_1BC651E78(v12);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

id sub_1BC703020()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_1BC7030A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

void sub_1BC703148(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_1BC65F664(0, &qword_1EBCDCB70, 0x1E696AE38);
  v5 = v4;
  v6 = sub_1BC75C040();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 160))(v9, sub_1BC70A76C);
  }
}

void (*sub_1BC703278(uint64_t *a1))(void *a1)
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
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI29ReportToAuthoritiesScreenView17ProgressViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC70A26C(&qword_1EBCDE1D0, type metadata accessor for ReportToAuthoritiesScreenView.ProgressViewModel);
  sub_1BC759A70();

  v4[7] = sub_1BC655290();
  return sub_1BC7033B4;
}

void sub_1BC7033B4(void *a1)
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

uint64_t sub_1BC703448(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BC759A80();
  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_1BC7035D4()
{
  v1 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI29ReportToAuthoritiesScreenView17ProgressViewModel___observationRegistrar;
  v2 = sub_1BC759A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC703678@<X0>(double a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = sub_1BC75AC60();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE528, &qword_1BC76A408);
  v8 = *(v7 - 8);
  v32 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v35 = a1;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1D8, &qword_1BC769B98);
  sub_1BC75B640();
  sub_1BC75A7A0();
  sub_1BC75AC50();
  sub_1BC75AC40();
  v35 = a1;
  v36 = a2;
  sub_1BC75B640();
  v15 = v34;
  *&v16 = COERCE_DOUBLE(sub_1BC75BF00());
  LOBYTE(a1) = v17;

  v18 = *&v16;
  if (LOBYTE(a1))
  {
    v18 = 0.0;
  }

  v35 = v18;
  sub_1BC75AC30();
  sub_1BC75AC40();
  sub_1BC75AC80();
  v19 = sub_1BC75B1A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v8 + 16);
  v27 = v14;
  v26(v12, v14, v7);
  v28 = v33;
  v26(v33, v12, v7);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE530, &qword_1BC76A410) + 48)];
  *v29 = v19;
  *(v29 + 1) = v21;
  LOBYTE(v26) = v23 & 1;
  v29[16] = v23 & 1;
  *(v29 + 3) = v25;
  sub_1BC680FFC(v19, v21, v23 & 1);
  v30 = *(v32 + 8);

  v30(v27, v7);
  sub_1BC680E6C(v19, v21, v26);

  return (v30)(v12, v7);
}

uint64_t sub_1BC703998@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1E0, &qword_1BC769BA0);
  return sub_1BC703678(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_1BC7039FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BC70A7E8(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_1BC703A70(uint64_t a1, void (*a2)(char *), void (*a3)(char *), void *a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v43 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Report.Evidence(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ReportScreen.Control(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ReportScreen(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(a1, v24, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v39 = type metadata accessor for Report.Evidence;
      sub_1BC70A704(v24, v16, type metadata accessor for Report.Evidence);
      v28 = v41;
      [v41 showsBusyIndicator];
      v29 = sub_1BC75BE10();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
      sub_1BC70A1DC(v16, v14, type metadata accessor for Report.Evidence);
      sub_1BC75BDE0();
      v30 = v42;

      v41 = v28;
      v31 = sub_1BC75BDD0();
      v32 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      v34[2] = v31;
      v34[3] = v35;
      v34[4] = v30;
      sub_1BC70A704(v14, v34 + v32, v39);
      v36 = (v34 + v33);
      *v36 = v43;
      v36[1] = a3;
      *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;
      sub_1BC652910(0, 0, v10, &unk_1BC76A3F8, v34);

      v26 = type metadata accessor for Report.Evidence;
      v27 = v16;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v43(v20);
      sub_1BC70C0DC(v20, type metadata accessor for ReportScreen.Control);
      v26 = type metadata accessor for ReportScreen;
      v27 = v24;
    }

    return sub_1BC70C0DC(v27, v26);
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v24, type metadata accessor for ReportScreen);
    swift_storeEnumTagMultiPayload();
    v43(v20);
    v26 = type metadata accessor for ReportScreen.Control;
    v27 = v20;
    return sub_1BC70C0DC(v27, v26);
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC703F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for ReportScreen.Control(0);
  v8[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v8[9] = sub_1BC75BDD0();
  v12 = sub_1BC75BD80();
  v8[10] = v12;
  v8[11] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BC704038, v12, v11);
}

uint64_t sub_1BC704038()
{
  v1 = v0[2];
  v2 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[12] = v2;
  v3 = *(*v1 + 184);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1BC70418C;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v6, v2);
}

uint64_t sub_1BC70418C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = v6[10];
    v10 = v6[11];
    v11 = sub_1BC7043AC;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v9 = v6[10];
    v10 = v6[11];
    v11 = sub_1BC7042C0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BC7042C0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  *v5 = v1;
  v5[1] = v2;
  type metadata accessor for ReportScreen(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8(v5);

  sub_1BC70C0DC(v0[8], type metadata accessor for ReportScreen.Control);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BC7043AC()
{
  v1 = v0[12];
  v2 = v0[9];

  if (qword_1EBCEDF30 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v4 = sub_1BC75A4E0();
  __swift_project_value_buffer(v4, qword_1EBCEDF38);
  v5 = v3;
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BC630000, v6, v7, "An error occurred during the upload process: %@", v9, 0xCu);
    sub_1BC66008C(v10, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v10, -1, -1);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
  }

  v13 = v0[14];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = v0[4];

  [v17 hidesBusyIndicator];
  *v14 = v13;
  swift_storeEnumTagMultiPayload();
  v19 = v13;
  v18(v14);

  sub_1BC70C0DC(v0[8], type metadata accessor for ReportScreen.Control);

  v20 = v0[1];

  return v20();
}

id sub_1BC7045C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReportScreen.Control(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  sub_1BC70C0DC(v8, type metadata accessor for ReportScreen.Control);
  return [objc_opt_self() openChatWithParentsForInterventionType_];
}

uint64_t sub_1BC7046A4(void (*a1)(char *))
{
  v2 = type metadata accessor for ReportScreen.Control(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_1BC70C0DC(v5, type metadata accessor for ReportScreen.Control);
}

id sub_1BC7047D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BC704808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportScreen(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1BC70A1DC(v2 + *(a2 + 20), v7, type metadata accessor for ReportScreen);
  v9 = (v2 + *(a2 + 24));
  v10 = *v9;
  v11 = v9[1];
  v12 = objc_allocWithZone(type metadata accessor for ReportToAuthoritiesScreenView.FlowView.FlowController());

  v13 = sub_1BC70A7E8(v8, v7, v10, v11);

  return v13;
}

uint64_t sub_1BC7048FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC704990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC704A24()
{
  sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t sub_1BC704A7C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for ReportOverviewScreen(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1E8, &qword_1BC769BA8);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v43 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1F0, &qword_1BC769BB0);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1F8, &qword_1BC769BB8);
  v14 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v16 = &v43 - v15;
  v17 = type metadata accessor for ReportScreen(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - v22;
  v24 = type metadata accessor for ReportToAuthoritiesScreenView(0);
  v25 = v24[5];
  sub_1BC70A1DC(v1 + v25, v23, type metadata accessor for ReportScreen);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    v36 = *v1;
    sub_1BC70A1DC(v1 + v25, v21, type metadata accessor for ReportScreen);
    v37 = (v1 + v24[7]);
    v38 = *v37;
    v39 = v37[1];

    v40 = v43;
    sub_1BC747D68(v36, v21, v38, v39, v43);
    v41 = v44;
    sub_1BC706EF8(v1 + v25, *(v36 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType), v1 + v24[6], v44);
    sub_1BC70C0DC(v40, type metadata accessor for ReportOverviewScreen);
    v33 = &qword_1EBCDE1E8;
    v34 = &qword_1BC769BA8;
    sub_1BC660024(v41, v9, &qword_1EBCDE1E8, &qword_1BC769BA8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C13C();
    sub_1BC70CA90();
    sub_1BC75AE00();
    v35 = v41;
  }

  else
  {
    sub_1BC70C0DC(v23, type metadata accessor for ReportScreen);
    v26 = *v1;
    sub_1BC70A1DC(v1 + v25, v13 + *(v10 + 20), type metadata accessor for ReportScreen);
    v27 = (v1 + v24[7]);
    v28 = *v27;
    v29 = v27[1];
    *v13 = v26;
    v30 = (v13 + *(v10 + 24));
    *v30 = v28;
    v30[1] = v29;
    v31 = *(v26 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
    v32 = v24[6];

    sub_1BC704F2C(v1 + v25, v31, v1 + v32, v16);
    sub_1BC70C0DC(v13, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    v33 = &qword_1EBCDE1F8;
    v34 = &qword_1BC769BB8;
    sub_1BC660024(v16, v9, &qword_1EBCDE1F8, &qword_1BC769BB8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C13C();
    sub_1BC70CA90();
    sub_1BC75AE00();
    v35 = v16;
  }

  return sub_1BC66008C(v35, v33, v34);
}

uint64_t sub_1BC704F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v208 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE478, &qword_1BC76A340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v175 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE480, &qword_1BC76A348);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v175 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE488, &qword_1BC76A350);
  v14 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v191 = v175 - v15;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE270, &qword_1BC769BF8);
  v16 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v192 = v175 - v17;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE238, &qword_1BC769BD8);
  v195 = *(v210 - 8);
  v18 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v193 = v175 - v19;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE490, &qword_1BC76A358);
  v182 = *(v197 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v181 = v175 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE280, &qword_1BC769C00);
  v22 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v24 = v175 - v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE498, &qword_1BC76A360);
  v25 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v207 = v175 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4A0, &qword_1BC76A368);
  v27 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v200 = v175 - v28;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4A8, &qword_1BC76A370);
  v29 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v187 = v175 - v30;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE220, &qword_1BC769BC8);
  v31 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v189 = v175 - v32;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE210, &qword_1BC769BC0);
  v33 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v201 = v175 - v34;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE248, &qword_1BC769BE8);
  v204 = *(v209 - 8);
  v35 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v37 = v175 - v36;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4B0, &qword_1BC76A378);
  v184 = *(v196 - 8);
  v38 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v183 = v175 - v39;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE230, &qword_1BC769BD0);
  v40 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v42 = v175 - v41;
  v43 = type metadata accessor for ReportScreen(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = a1;
  v47 = v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(v46, v47, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v175[0] = v6;
    v176 = v42;
    v180 = v47;
    v175[1] = v10;
    v177 = v9;
    v178 = v13;
    v179 = v24;
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      v119 = *(sub_1BC75A9F0() - 8);
      v120 = *(v119 + 72);
      v121 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v123 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
      v124 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
      MEMORY[0x1BFB25FE0](1, v122, v123, v124);

      if (a2)
      {
        MEMORY[0x1EEE9AC00](v125);
        v175[-2] = v194;
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v123;
        v212 = v124;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v128 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v129 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v128;
        v212 = v129;
        v130 = swift_getOpaqueTypeConformance2();
        v131 = v183;
        v132 = v209;
        sub_1BC75B3F0();
        (*(v204 + 8))(v37, v132);
        v133 = v184;
        v134 = v196;
        (*(v184 + 16))(v177, v131, v196);
        swift_storeEnumTagMultiPayload();
        v211 = v132;
        v212 = v126;
        v213 = OpaqueTypeConformance2;
        v214 = v130;
        v135 = v132;
        swift_getOpaqueTypeConformance2();
        v136 = v179;
        sub_1BC75AE00();
        (*(v133 + 8))(v131, v134);
      }

      else
      {
        v160 = v204;
        v135 = v209;
        (*(v204 + 16))(v177, v37, v209);
        swift_storeEnumTagMultiPayload();
        v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v123;
        v212 = v124;
        v162 = swift_getOpaqueTypeConformance2();
        v163 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v164 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v163;
        v212 = v164;
        v165 = swift_getOpaqueTypeConformance2();
        v211 = v135;
        v212 = v161;
        v213 = v162;
        v214 = v165;
        swift_getOpaqueTypeConformance2();
        v136 = v179;
        sub_1BC75AE00();
        (*(v160 + 8))(v37, v135);
      }

      sub_1BC660024(v136, v191, &qword_1EBCDE280, &qword_1BC769C00);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C8CC();
      v166 = v136;
      v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v211 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
      v212 = v124;
      v168 = swift_getOpaqueTypeConformance2();
      v211 = v135;
      v212 = v168;
      v169 = swift_getOpaqueTypeConformance2();
      v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v171 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
      v211 = v170;
      v212 = v171;
      v172 = swift_getOpaqueTypeConformance2();
      v211 = v210;
      v212 = v167;
      v213 = v169;
      v214 = v172;
      swift_getOpaqueTypeConformance2();
      v173 = v192;
      sub_1BC75AE00();
      sub_1BC660024(v173, v200, &qword_1EBCDE270, &qword_1BC769BF8);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C2F8();
      sub_1BC70C6C4();
      v174 = v201;
      sub_1BC75AE00();
      sub_1BC66008C(v173, &qword_1EBCDE270, &qword_1BC769BF8);
      sub_1BC660024(v174, v207, &qword_1EBCDE210, &qword_1BC769BC0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C26C();
      sub_1BC75AE00();
      sub_1BC66008C(v174, &qword_1EBCDE210, &qword_1BC769BC0);
      v157 = v166;
      v158 = &qword_1EBCDE280;
      v159 = &qword_1BC769C00;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      v61 = *(sub_1BC75A9F0() - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v65 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
      v66 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
      MEMORY[0x1BFB25FE0](1, v64, v65, v66);

      v67 = (v204 + 8);
      v192 = v66;
      v211 = v65;
      v212 = v66;
      v68 = swift_getOpaqueTypeConformance2();
      if (a2)
      {
        v69 = v193;
        v70 = v209;
        sub_1BC75B360();
        (*v67)(v37, v70);
        v71 = v195;
        v72 = v210;
        (*(v195 + 16))(v178, v69, v210);
        swift_storeEnumTagMultiPayload();
        v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v70;
        v212 = v68;
        v74 = swift_getOpaqueTypeConformance2();
        v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v76 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v75;
        v212 = v76;
        v77 = swift_getOpaqueTypeConformance2();
        v211 = v72;
        v212 = v73;
        v213 = v74;
        v214 = v77;
        swift_getOpaqueTypeConformance2();
        v78 = v176;
        sub_1BC75AE00();
        (*(v71 + 8))(v69, v72);
      }

      else
      {
        v137 = v193;
        v138 = v209;
        sub_1BC75B360();
        v139 = (*v67)(v37, v138);
        MEMORY[0x1EEE9AC00](v139);
        v175[-2] = v194;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v138;
        v212 = v68;
        v141 = swift_getOpaqueTypeConformance2();
        v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v143 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v142;
        v212 = v143;
        v144 = swift_getOpaqueTypeConformance2();
        v145 = v181;
        v146 = v210;
        sub_1BC75B3F0();
        (*(v195 + 8))(v137, v146);
        v147 = v182;
        v148 = v197;
        (*(v182 + 16))(v178, v145, v197);
        swift_storeEnumTagMultiPayload();
        v211 = v146;
        v212 = v140;
        v213 = v141;
        v214 = v144;
        swift_getOpaqueTypeConformance2();
        v78 = v176;
        sub_1BC75AE00();
        (*(v147 + 8))(v145, v148);
      }

      sub_1BC660024(v78, v187, &qword_1EBCDE230, &qword_1BC769BD0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C4C4();
      v149 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v211 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
      v212 = v192;
      v150 = swift_getOpaqueTypeConformance2();
      v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v152 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
      v211 = v151;
      v212 = v152;
      v153 = swift_getOpaqueTypeConformance2();
      v154 = v209;
      v211 = v209;
      v212 = v149;
      v213 = v150;
      v214 = v153;
      swift_getOpaqueTypeConformance2();
      v155 = v189;
      sub_1BC75AE00();
      sub_1BC660024(v155, v200, &qword_1EBCDE220, &qword_1BC769BC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C2F8();
      sub_1BC70C6C4();
      v156 = v201;
      sub_1BC75AE00();
      sub_1BC66008C(v155, &qword_1EBCDE220, &qword_1BC769BC8);
      sub_1BC660024(v156, v207, &qword_1EBCDE210, &qword_1BC769BC0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C26C();
      v211 = v154;
      v212 = v150;
      swift_getOpaqueTypeConformance2();
      sub_1BC75AE00();
      sub_1BC66008C(v156, &qword_1EBCDE210, &qword_1BC769BC0);
      v157 = v78;
      v158 = &qword_1EBCDE230;
      v159 = &qword_1BC769BD0;
    }

    sub_1BC66008C(v157, v158, v159);
    return sub_1BC70C0DC(v180, type metadata accessor for ReportScreen);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1BC70C0DC(v47, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v79 = *(sub_1BC75A9F0() - 8);
    v80 = *(v79 + 72);
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v83 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v84 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    MEMORY[0x1BFB25FE0](1, v82, v83, v84);

    v211 = v83;
    v212 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v193;
    v87 = v209;
    sub_1BC75B360();
    v88 = (*(v204 + 8))(v37, v87);
    MEMORY[0x1EEE9AC00](v88);
    v175[-2] = v194;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v211 = v87;
    v212 = v85;
    v90 = swift_getOpaqueTypeConformance2();
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v92 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    v211 = v91;
    v212 = v92;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v181;
    v95 = v210;
    v209 = v90;
    sub_1BC75B3F0();
    (*(v195 + 8))(v86, v95);
    v96 = v182;
    v97 = v197;
    (*(v182 + 16))(v191, v94, v197);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C8CC();
    v211 = v95;
    v212 = v89;
    v213 = v90;
    v214 = v93;
    swift_getOpaqueTypeConformance2();
    v98 = v192;
    sub_1BC75AE00();
    sub_1BC660024(v98, v200, &qword_1EBCDE270, &qword_1BC769BF8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C2F8();
    sub_1BC70C6C4();
    v99 = v201;
    sub_1BC75AE00();
    sub_1BC66008C(v98, &qword_1EBCDE270, &qword_1BC769BF8);
    sub_1BC660024(v99, v207, &qword_1EBCDE210, &qword_1BC769BC0);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    sub_1BC75AE00();
    sub_1BC66008C(v99, &qword_1EBCDE210, &qword_1BC769BC0);
    return (*(v96 + 8))(v94, v97);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v47, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v49 = *(sub_1BC75A9F0() - 8);
    v50 = *(v49 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v53 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v54 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    MEMORY[0x1BFB25FE0](1, v52, v53, v54);

    v211 = v53;
    v212 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v193;
    v57 = v209;
    sub_1BC75B360();
    (*(v204 + 8))(v37, v57);
    v58 = v195;
    v59 = v210;
    (*(v195 + 16))(v207, v56, v210);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    v211 = v57;
    v212 = v55;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v58 + 8))(v56, v59);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v100 = *(sub_1BC75A9F0() - 8);
    v101 = *(v100 + 72);
    v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v104 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v105 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    MEMORY[0x1BFB25FE0](1, v103, v104, v105);

    MEMORY[0x1EEE9AC00](v106);
    v175[-2] = v194;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v211 = v104;
    v212 = v105;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v110 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    v211 = v109;
    v212 = v110;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v183;
    v113 = v209;
    v114 = v108;
    v203 = v108;
    sub_1BC75B3F0();
    (*(v204 + 8))(v37, v113);
    v115 = v184;
    v116 = v196;
    (*(v184 + 16))(v187, v112, v196);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C4C4();
    v211 = v113;
    v212 = v107;
    v213 = v114;
    v214 = v111;
    swift_getOpaqueTypeConformance2();
    v117 = v189;
    sub_1BC75AE00();
    sub_1BC660024(v117, v200, &qword_1EBCDE220, &qword_1BC769BC8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C2F8();
    sub_1BC70C6C4();
    v118 = v201;
    sub_1BC75AE00();
    sub_1BC66008C(v117, &qword_1EBCDE220, &qword_1BC769BC8);
    sub_1BC660024(v118, v207, &qword_1EBCDE210, &qword_1BC769BC0);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    v211 = v113;
    v212 = v203;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC66008C(v118, &qword_1EBCDE210, &qword_1BC769BC0);
    return (*(v115 + 8))(v112, v116);
  }
}

uint64_t sub_1BC706EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v208 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4B8, &qword_1BC76A380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v175 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4C0, &qword_1BC76A388);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v175 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4C8, &qword_1BC76A390);
  v14 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v191 = v175 - v15;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2E0, &qword_1BC769C30);
  v16 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v192 = v175 - v17;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2C0, &qword_1BC769C20);
  v195 = *(v210 - 8);
  v18 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v193 = v175 - v19;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4D0, &qword_1BC76A398);
  v182 = *(v197 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v181 = v175 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F0, &qword_1BC769C38);
  v22 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v24 = v175 - v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4D8, &qword_1BC76A3A0);
  v25 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v207 = v175 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4E0, &qword_1BC76A3A8);
  v27 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v200 = v175 - v28;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4E8, &qword_1BC76A3B0);
  v29 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v187 = v175 - v30;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2A8, &qword_1BC769C10);
  v31 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v189 = v175 - v32;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE298, &qword_1BC769C08);
  v33 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v201 = v175 - v34;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2C8, &qword_1BC769C28);
  v204 = *(v209 - 8);
  v35 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v37 = v175 - v36;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE4F0, &qword_1BC76A3B8);
  v184 = *(v196 - 8);
  v38 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v183 = v175 - v39;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2B8, &qword_1BC769C18);
  v40 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v42 = v175 - v41;
  v43 = type metadata accessor for ReportScreen(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = a1;
  v47 = v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(v46, v47, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v175[0] = v6;
    v176 = v42;
    v180 = v47;
    v175[1] = v10;
    v177 = v9;
    v178 = v13;
    v179 = v24;
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      v119 = *(sub_1BC75A9F0() - 8);
      v120 = *(v119 + 72);
      v121 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v123 = type metadata accessor for ReportOverviewScreen(0);
      v124 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
      MEMORY[0x1BFB25FE0](1, v122, v123, v124);

      if (a2)
      {
        MEMORY[0x1EEE9AC00](v125);
        v175[-2] = v194;
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v123;
        v212 = v124;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v128 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v129 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v128;
        v212 = v129;
        v130 = swift_getOpaqueTypeConformance2();
        v131 = v183;
        v132 = v209;
        sub_1BC75B3F0();
        (*(v204 + 8))(v37, v132);
        v133 = v184;
        v134 = v196;
        (*(v184 + 16))(v177, v131, v196);
        swift_storeEnumTagMultiPayload();
        v211 = v132;
        v212 = v126;
        v213 = OpaqueTypeConformance2;
        v214 = v130;
        v135 = v132;
        swift_getOpaqueTypeConformance2();
        v136 = v179;
        sub_1BC75AE00();
        (*(v133 + 8))(v131, v134);
      }

      else
      {
        v160 = v204;
        v135 = v209;
        (*(v204 + 16))(v177, v37, v209);
        swift_storeEnumTagMultiPayload();
        v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v123;
        v212 = v124;
        v162 = swift_getOpaqueTypeConformance2();
        v163 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v164 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v163;
        v212 = v164;
        v165 = swift_getOpaqueTypeConformance2();
        v211 = v135;
        v212 = v161;
        v213 = v162;
        v214 = v165;
        swift_getOpaqueTypeConformance2();
        v136 = v179;
        sub_1BC75AE00();
        (*(v160 + 8))(v37, v135);
      }

      sub_1BC660024(v136, v191, &qword_1EBCDE2F0, &qword_1BC769C38);
      swift_storeEnumTagMultiPayload();
      sub_1BC70D220();
      v166 = v136;
      v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v211 = type metadata accessor for ReportOverviewScreen(255);
      v212 = v124;
      v168 = swift_getOpaqueTypeConformance2();
      v211 = v135;
      v212 = v168;
      v169 = swift_getOpaqueTypeConformance2();
      v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v171 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
      v211 = v170;
      v212 = v171;
      v172 = swift_getOpaqueTypeConformance2();
      v211 = v210;
      v212 = v167;
      v213 = v169;
      v214 = v172;
      swift_getOpaqueTypeConformance2();
      v173 = v192;
      sub_1BC75AE00();
      sub_1BC660024(v173, v200, &qword_1EBCDE2E0, &qword_1BC769C30);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CC4C();
      sub_1BC70D018();
      v174 = v201;
      sub_1BC75AE00();
      sub_1BC66008C(v173, &qword_1EBCDE2E0, &qword_1BC769C30);
      sub_1BC660024(v174, v207, &qword_1EBCDE298, &qword_1BC769C08);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CBC0();
      sub_1BC75AE00();
      sub_1BC66008C(v174, &qword_1EBCDE298, &qword_1BC769C08);
      v157 = v166;
      v158 = &qword_1EBCDE2F0;
      v159 = &qword_1BC769C38;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      v61 = *(sub_1BC75A9F0() - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v65 = type metadata accessor for ReportOverviewScreen(0);
      v66 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
      MEMORY[0x1BFB25FE0](1, v64, v65, v66);

      v67 = (v204 + 8);
      v192 = v66;
      v211 = v65;
      v212 = v66;
      v68 = swift_getOpaqueTypeConformance2();
      if (a2)
      {
        v69 = v193;
        v70 = v209;
        sub_1BC75B360();
        (*v67)(v37, v70);
        v71 = v195;
        v72 = v210;
        (*(v195 + 16))(v178, v69, v210);
        swift_storeEnumTagMultiPayload();
        v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v70;
        v212 = v68;
        v74 = swift_getOpaqueTypeConformance2();
        v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v76 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v75;
        v212 = v76;
        v77 = swift_getOpaqueTypeConformance2();
        v211 = v72;
        v212 = v73;
        v213 = v74;
        v214 = v77;
        swift_getOpaqueTypeConformance2();
        v78 = v176;
        sub_1BC75AE00();
        (*(v71 + 8))(v69, v72);
      }

      else
      {
        v137 = v193;
        v138 = v209;
        sub_1BC75B360();
        v139 = (*v67)(v37, v138);
        MEMORY[0x1EEE9AC00](v139);
        v175[-2] = v194;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v211 = v138;
        v212 = v68;
        v141 = swift_getOpaqueTypeConformance2();
        v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v143 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
        v211 = v142;
        v212 = v143;
        v144 = swift_getOpaqueTypeConformance2();
        v145 = v181;
        v146 = v210;
        sub_1BC75B3F0();
        (*(v195 + 8))(v137, v146);
        v147 = v182;
        v148 = v197;
        (*(v182 + 16))(v178, v145, v197);
        swift_storeEnumTagMultiPayload();
        v211 = v146;
        v212 = v140;
        v213 = v141;
        v214 = v144;
        swift_getOpaqueTypeConformance2();
        v78 = v176;
        sub_1BC75AE00();
        (*(v147 + 8))(v145, v148);
      }

      sub_1BC660024(v78, v187, &qword_1EBCDE2B8, &qword_1BC769C18);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CE18();
      v149 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v211 = type metadata accessor for ReportOverviewScreen(255);
      v212 = v192;
      v150 = swift_getOpaqueTypeConformance2();
      v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v152 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
      v211 = v151;
      v212 = v152;
      v153 = swift_getOpaqueTypeConformance2();
      v154 = v209;
      v211 = v209;
      v212 = v149;
      v213 = v150;
      v214 = v153;
      swift_getOpaqueTypeConformance2();
      v155 = v189;
      sub_1BC75AE00();
      sub_1BC660024(v155, v200, &qword_1EBCDE2A8, &qword_1BC769C10);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CC4C();
      sub_1BC70D018();
      v156 = v201;
      sub_1BC75AE00();
      sub_1BC66008C(v155, &qword_1EBCDE2A8, &qword_1BC769C10);
      sub_1BC660024(v156, v207, &qword_1EBCDE298, &qword_1BC769C08);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CBC0();
      v211 = v154;
      v212 = v150;
      swift_getOpaqueTypeConformance2();
      sub_1BC75AE00();
      sub_1BC66008C(v156, &qword_1EBCDE298, &qword_1BC769C08);
      v157 = v78;
      v158 = &qword_1EBCDE2B8;
      v159 = &qword_1BC769C18;
    }

    sub_1BC66008C(v157, v158, v159);
    return sub_1BC70C0DC(v180, type metadata accessor for ReportScreen);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1BC70C0DC(v47, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v79 = *(sub_1BC75A9F0() - 8);
    v80 = *(v79 + 72);
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v83 = type metadata accessor for ReportOverviewScreen(0);
    v84 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    MEMORY[0x1BFB25FE0](1, v82, v83, v84);

    v211 = v83;
    v212 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v193;
    v87 = v209;
    sub_1BC75B360();
    v88 = (*(v204 + 8))(v37, v87);
    MEMORY[0x1EEE9AC00](v88);
    v175[-2] = v194;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v211 = v87;
    v212 = v85;
    v90 = swift_getOpaqueTypeConformance2();
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v92 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    v211 = v91;
    v212 = v92;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v181;
    v95 = v210;
    v209 = v90;
    sub_1BC75B3F0();
    (*(v195 + 8))(v86, v95);
    v96 = v182;
    v97 = v197;
    (*(v182 + 16))(v191, v94, v197);
    swift_storeEnumTagMultiPayload();
    sub_1BC70D220();
    v211 = v95;
    v212 = v89;
    v213 = v90;
    v214 = v93;
    swift_getOpaqueTypeConformance2();
    v98 = v192;
    sub_1BC75AE00();
    sub_1BC660024(v98, v200, &qword_1EBCDE2E0, &qword_1BC769C30);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CC4C();
    sub_1BC70D018();
    v99 = v201;
    sub_1BC75AE00();
    sub_1BC66008C(v98, &qword_1EBCDE2E0, &qword_1BC769C30);
    sub_1BC660024(v99, v207, &qword_1EBCDE298, &qword_1BC769C08);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    sub_1BC75AE00();
    sub_1BC66008C(v99, &qword_1EBCDE298, &qword_1BC769C08);
    return (*(v96 + 8))(v94, v97);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v47, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v49 = *(sub_1BC75A9F0() - 8);
    v50 = *(v49 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v53 = type metadata accessor for ReportOverviewScreen(0);
    v54 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    MEMORY[0x1BFB25FE0](1, v52, v53, v54);

    v211 = v53;
    v212 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v193;
    v57 = v209;
    sub_1BC75B360();
    (*(v204 + 8))(v37, v57);
    v58 = v195;
    v59 = v210;
    (*(v195 + 16))(v207, v56, v210);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    v211 = v57;
    v212 = v55;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v58 + 8))(v56, v59);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    v100 = *(sub_1BC75A9F0() - 8);
    v101 = *(v100 + 72);
    v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v104 = type metadata accessor for ReportOverviewScreen(0);
    v105 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    MEMORY[0x1BFB25FE0](1, v103, v104, v105);

    MEMORY[0x1EEE9AC00](v106);
    v175[-2] = v194;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v211 = v104;
    v212 = v105;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v110 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    v211 = v109;
    v212 = v110;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v183;
    v113 = v209;
    v114 = v108;
    v203 = v108;
    sub_1BC75B3F0();
    (*(v204 + 8))(v37, v113);
    v115 = v184;
    v116 = v196;
    (*(v184 + 16))(v187, v112, v196);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CE18();
    v211 = v113;
    v212 = v107;
    v213 = v114;
    v214 = v111;
    swift_getOpaqueTypeConformance2();
    v117 = v189;
    sub_1BC75AE00();
    sub_1BC660024(v117, v200, &qword_1EBCDE2A8, &qword_1BC769C10);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CC4C();
    sub_1BC70D018();
    v118 = v201;
    sub_1BC75AE00();
    sub_1BC66008C(v117, &qword_1EBCDE2A8, &qword_1BC769C10);
    sub_1BC660024(v118, v207, &qword_1EBCDE298, &qword_1BC769C08);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    v211 = v113;
    v212 = v203;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC66008C(v118, &qword_1EBCDE298, &qword_1BC769C08);
    return (*(v115 + 8))(v112, v116);
  }
}

uint64_t sub_1BC708EC8(uint64_t a1)
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

uint64_t sub_1BC7090A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BC75A830();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1BC75A650();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75A640();
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return MEMORY[0x1BFB26270](v11, a3, v13);
}

id sub_1BC70922C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for Report.ReportNavigationHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1BC7092F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1BC75ABB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - v17);
  sub_1BC660024(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_1BC75BF70();
    v22 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1BC709504(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BC709570(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BC7095DC(void *a1, uint64_t a2)
{
  v4 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BC70966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BC7096E8(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE408, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BC709754(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE408, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BC7097C0(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BC70982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BC7098B0(uint64_t a1)
{
  v2 = sub_1BC70A26C(&unk_1EBCDE458, type metadata accessor for Key);
  v3 = sub_1BC70A26C(&qword_1EBCDE5F0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

size_t sub_1BC70996C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE118, &qword_1BC769AF8);
  v10 = *(type metadata accessor for ReportScreen(0) - 8);
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
  v15 = *(type metadata accessor for ReportScreen(0) - 8);
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

uint64_t sub_1BC709B58(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ReportNavigationStack(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v40 - v15);
  v17 = type metadata accessor for Report.Authority(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BC660024(a4, &v44, &qword_1EBCDE440, &unk_1BC76A328);
    if (v45)
    {
      sub_1BC678BBC(&v44, v46);
      sub_1BC65F494(v46, &v44);
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE5B0, &unk_1BC76A438);
      if (swift_dynamicCast())
      {
        v40 = v14;
        v22 = a3;
        v42 = a1;
        v23 = v43;
        if ([v43 respondsToSelector_])
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          v25 = swift_allocObject();
          *(v25 + 16) = sub_1BC70E914;
          *(v25 + 24) = v24;
          type metadata accessor for ReportToAuthoritiesViewModel(0);
          sub_1BC70A1DC(v21 + OBJC_IVAR___SCUIReportAuthority_authority, v20, type metadata accessor for Report.Authority);
          v26 = swift_allocObject();
          v41 = v21;
          v27 = v26;
          v26[2] = sub_1BC70E92C;
          v26[3] = v25;
          v26[4] = a5;

          swift_unknownObjectRetain();

          v28 = sub_1BC733F34(v20, v22, sub_1BC70E984, v27);
          v29 = v10[6];
          *(v16 + v29) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
          swift_storeEnumTagMultiPayload();
          v30 = v10[7];
          *(v16 + v30) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE108, &qword_1BC769AE8);
          swift_storeEnumTagMultiPayload();
          v31 = v10[8];
          v43 = 0xF000000000000007;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE110, &qword_1BC769AF0);
          sub_1BC75B630();
          *(v16 + v31) = v44;
          *v16 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE118, &qword_1BC769AF8);
          v32 = *(type metadata accessor for ReportScreen(0) - 8);
          v33 = *(v32 + 72);
          v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1BC761600;
          sub_1BC70A1DC(v28 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v35 + v34, type metadata accessor for Report.Authority);
          swift_storeEnumTagMultiPayload();
          v16[1] = v35;
          v16[2] = 0;
          v36 = objc_allocWithZone(type metadata accessor for Report.ReportNavigationHostingController(0));
          sub_1BC70A1DC(v16, v40, type metadata accessor for ReportNavigationStack);
          v37 = sub_1BC75AD20();
          sub_1BC70C0DC(v16, type metadata accessor for ReportNavigationStack);
          [v42 presentViewController:v37 animated:1 completion:0];

          swift_unknownObjectRelease();

          return __swift_destroy_boxed_opaque_existential_1(v46);
        }
      }
    }

    else
    {
      v39 = a2;
      sub_1BC66008C(&v44, &qword_1EBCDE440, &unk_1BC76A328);
    }
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC70A1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC70A26C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC70A2B4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

void sub_1BC70A2CC(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for ReportNavigationStack(0);
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
  sub_1BC75B640();
  if ((v5 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1BC70A2B4(v5);
  }

  *a1 = (v5 & 0xF000000000000007) != 0xF000000000000007;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for ReportNavigationStack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 16);

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BC75A830();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE108, &qword_1BC769AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1BC75A850();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  v16 = (v6 + v1[8]);
  if ((~*v16 & 0xF000000000000007) != 0)
  {
  }

  v17 = v16[1];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC70A560()
{
  v1 = type metadata accessor for ReportNavigationStack(0);
  v2 = (v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  v4 = *v2;
  v5 = v2[1];
  sub_1BC70E63C(*v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
  sub_1BC75B650();
  sub_1BC70A2B4(v4);
}

unint64_t sub_1BC70A620()
{
  result = qword_1EBCDE1A0;
  if (!qword_1EBCDE1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE188, &qword_1BC769B28);
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE1A0);
  }

  return result;
}

uint64_t sub_1BC70A704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BC70A76C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
}

uint64_t sub_1BC70A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v185 = a4;
  v189 = a3;
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  v176 = v8;
  v177 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v174 = v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v180 = v165 - v13;
  v173 = type metadata accessor for ReportScreen(0);
  v172 = *(v173 - 8);
  v14 = *(v172 + 64);
  v15 = MEMORY[0x1EEE9AC00](v173);
  v171 = v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v170 = v165 - v17;
  v18 = type metadata accessor for ReportScreen.Button(0);
  v184 = *(v18 - 8);
  v19 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v183 = v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Report.Evidence(0);
  v179 = *(v21 - 1);
  v22 = *(v179 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v165 - v27;
  v29 = type metadata accessor for Report.Authority(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = a1;
  v33 = *(a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
  sub_1BC699634(&v194, v33);
  v34 = sub_1BC75BB30();

  v191 = v33;
  v181 = a2;
  sub_1BC6998B4(&v194, v33);
  v190 = v21;
  if (v195)
  {
    v35 = sub_1BC75BB30();
  }

  else
  {
    v35 = 0;
  }

  v36 = v191;
  v37 = sub_1BC699B5C();
  v38 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView.FlowController();
  v193.receiver = v5;
  v193.super_class = v38;
  v39 = objc_msgSendSuper2(&v193, sel_initWithTitle_detailText_icon_contentLayout_, v34, v35, v37, 2);

  sub_1BC699D98(v36, &v194);
  v182 = v18;
  v188 = v39;
  if (v195)
  {
    v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE518, &unk_1BC76A3E0));
    v41 = sub_1BC75A900();
    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    v42 = [v39 contentView];
    [v42 addSubview_];

    v43 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BC768CD0;
    v45 = [v41 leadingAnchor];
    v46 = [v39 contentView];
    v47 = [v46 leadingAnchor];

    v48 = [v45 constraintEqualToAnchor_];
    *(v44 + 32) = v48;
    v49 = [v41 trailingAnchor];
    v50 = [v39 contentView];
    v51 = [v50 trailingAnchor];

    v52 = [v49 constraintEqualToAnchor_];
    *(v44 + 40) = v52;
    v53 = [v41 topAnchor];
    v54 = [v39 contentView];
    v55 = [v54 topAnchor];

    v56 = [v53 constraintEqualToAnchor_];
    *(v44 + 48) = v56;
    v57 = [v41 bottomAnchor];

    v58 = [v39 contentView];
    v59 = [v58 bottomAnchor];

    v60 = v185;
    v61 = [v57 constraintEqualToAnchor_];

    *(v44 + 56) = v61;
    v62 = v60;
    sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
    v63 = sub_1BC75BCF0();

    [v43 activateConstraints_];

    v64 = v184;
    v65 = v39;
  }

  else
  {
    v66 = sub_1BC699EF8();
    v64 = v184;
    if (v66)
    {
      v192 = v66;
      v67 = v66;
      sub_1BC65F664(0, &qword_1EBCDCB70, 0x1E696AE38);
      v190 = v67;
      sub_1BC75B630();
      v68 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE510, &unk_1BC76A3D0));
      v69 = sub_1BC75A900();
      [v69 setTranslatesAutoresizingMaskIntoConstraints_];
      v70 = v188;
      v71 = [v188 contentView];
      [v71 addSubview_];

      v179 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1BC768CD0;
      v73 = [v69 leadingAnchor];
      v74 = [v70 contentView];
      v75 = [v74 leadingAnchor];

      v76 = [v73 constraintEqualToAnchor_];
      *(v72 + 32) = v76;
      v77 = [v69 trailingAnchor];
      v78 = [v70 contentView];
      v79 = [v78 trailingAnchor];

      v80 = [v77 constraintEqualToAnchor_];
      *(v72 + 40) = v80;
      v81 = [v69 topAnchor];
      v82 = [v70 contentView];
      v83 = [v82 topAnchor];

      v84 = [v81 constraintEqualToAnchor_];
      *(v72 + 48) = v84;
      v85 = [v69 bottomAnchor];

      v86 = [v70 contentView];
      v87 = [v86 bottomAnchor];

      v88 = v185;
      v89 = [v85 constraintEqualToAnchor_];

      v65 = v70;
      v62 = v88;
      *(v72 + 56) = v89;
      sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
      v90 = sub_1BC75BCF0();

      [v179 activateConstraints_];
    }

    else
    {
      v91 = v186;
      v92 = sub_1BC70A1DC(v186 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v32, type metadata accessor for Report.Authority);
      (*(*v91 + 144))(v92);
      v93 = v190;
      v94 = (*(v179 + 6))(v28, 1, v190);
      v65 = v188;
      if (v94)
      {
        sub_1BC66008C(v28, &qword_1EBCDED80, &unk_1BC76A3C0);
        v95 = 0;
      }

      else
      {
        sub_1BC70A1DC(v28, v24, type metadata accessor for Report.Evidence);
        sub_1BC66008C(v28, &qword_1EBCDED80, &unk_1BC76A3C0);
        v95 = *&v24[v93[15]];
        sub_1BC70C0DC(v24, type metadata accessor for Report.Evidence);
      }

      v62 = v185;
      sub_1BC699FB4(v32, v95, v94 != 0, v191);
      v97 = v96;
      sub_1BC70C0DC(v32, type metadata accessor for Report.Authority);
      v98 = *(v97 + 16);
      if (v98)
      {
        v99 = (v97 + 48);
        do
        {
          v100 = *(v99 - 2);
          v101 = *(v99 - 1);
          v102 = *v99;
          v99 += 3;
          swift_bridgeObjectRetain_n();
          v103 = v102;
          v104 = sub_1BC75BB30();

          v105 = sub_1BC75BB30();
          [v65 addBulletedListItemWithTitle:v104 description:v105 image:v103];

          --v98;
        }

        while (v98);

        v62 = v185;
      }

      else
      {
      }
    }
  }

  v106 = sub_1BC69A80C(v186 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v191);
  v107 = v106;
  v108 = v183;
  v191 = *(v106 + 16);
  if (!v191)
  {
LABEL_39:

    sub_1BC70C0DC(v181, type metadata accessor for ReportScreen);
    return v65;
  }

  v109 = 0;
  v190 = (v106 + ((*(v64 + 80) + 32) & ~*(v64 + 80)));
  v169 = v177 + 32;
  v168 = v177 + 16;
  v167 = v177 + 8;
  v166 = v187 + 7;
  v165[1] = "init(coder:rootView:)";
  v187 = v106;
  while (v109 < *(v107 + 16))
  {
    sub_1BC70A1DC(v190 + *(v64 + 72) * v109, v108, type metadata accessor for ReportScreen.Button);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v117 = *v108;
    v118 = v108[1];
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          goto LABEL_18;
        }

        v110 = [objc_opt_self() boldButton];
        v156 = sub_1BC75BB30();

        [v110 setTitle:v156 forState:0];

        sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
        v157 = swift_allocObject();
        *(v157 + 16) = v189;
        *(v157 + 24) = v62;

        v158 = sub_1BC75C070();
        [v110 addAction:v158 forControlEvents:64];

        v114 = [v65 buttonTray];
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v110 = [objc_opt_self() linkButton];
          v119 = sub_1BC75BB30();

          [v110 setTitle:v119 forState:0];

          sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
          swift_allocObject();
          swift_unknownObjectWeakInit();
        }

        else
        {
          v110 = [objc_opt_self() linkButton];
          v154 = sub_1BC75BB30();

          [v110 setTitle:v154 forState:0];

          sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
          v155 = swift_allocObject();
          v155[2] = v189;
          v155[3] = v62;
          v155[4] = v186;

          v107 = v187;
        }

        v120 = sub_1BC75C070();
        [v110 addAction:v120 forControlEvents:64];

        v114 = [v65 buttonTray];
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB60, &qword_1BC763C60) + 48);
        v123 = v176;
        v122 = v177;
        v179 = *(v177 + 32);
        v124 = v180;
        (v179)(v180, v108 + v121, v176);
        v125 = [objc_opt_self() linkButton];
        v126 = sub_1BC75BB30();

        [v125 setTitle:v126 forState:0];

        sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = v174;
        (*(v122 + 16))(v174, v124, v123);
        v129 = (*(v122 + 80) + 24) & ~*(v122 + 80);
        v130 = swift_allocObject();
        *(v130 + 16) = v127;
        v131 = v130 + v129;
        v107 = v187;
        (v179)(v131, v128, v123);
        v65 = v188;
        v108 = v183;
        v132 = sub_1BC75C070();
        [v125 addAction:v132 forControlEvents:64];

        v133 = [v65 buttonTray];
        [v133 addButton_];

        v134 = *(v122 + 8);
        v135 = v123;
        v64 = v184;
        v62 = v185;
        v134(v180, v135);
        goto LABEL_20;
      }

LABEL_18:
      v110 = [objc_opt_self() linkButton];
      v111 = sub_1BC75BB30();

      [v110 setTitle:v111 forState:0];

      sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
      v112 = swift_allocObject();
      *(v112 + 16) = v189;
      *(v112 + 24) = v62;

      v113 = sub_1BC75C070();
      [v110 addAction:v113 forControlEvents:64];

      v114 = [v65 buttonTray];
LABEL_19:
      v115 = v114;
      [v115 addButton_];

      goto LABEL_20;
    }

    v136 = [objc_opt_self() boldButton];

    v137 = sub_1BC75BB30();

    [v136 setTitle:v137 forState:0];

    v178 = sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
    v179 = type metadata accessor for ReportScreen;
    v138 = v181;
    v139 = v170;
    sub_1BC70A1DC(v181, v170, type metadata accessor for ReportScreen);
    v140 = (*(v172 + 80) + 16) & ~*(v172 + 80);
    v141 = (v166 + v140) & 0xFFFFFFFFFFFFFFF8;
    v142 = (v141 + 23) & 0xFFFFFFFFFFFFFFF8;
    v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
    v144 = swift_allocObject();
    sub_1BC70A704(v139, v144 + v140, type metadata accessor for ReportScreen);
    v145 = (v144 + v141);
    v146 = v185;
    v147 = v186;
    *v145 = v189;
    v145[1] = v146;
    *(v144 + v142) = v136;
    v62 = v146;
    *(v144 + v143) = v147;
    v148 = v138;

    v149 = v136;

    v150 = sub_1BC75C070();
    [v149 addAction:v150 forControlEvents:64];

    v151 = v171;
    sub_1BC70A1DC(v148, v171, v179);
    if (swift_getEnumCaseMultiPayload())
    {

      sub_1BC70C0DC(v151, type metadata accessor for ReportScreen);
      v108 = v183;
      v152 = v184;
      v107 = v187;
      v65 = v188;
      v153 = &selRef_actionID;
    }

    else
    {
      sub_1BC70C0DC(v151, type metadata accessor for ReportScreen);
      v159 = objc_opt_self();
      v160 = sub_1BC75BB30();
      v161 = [v159 linkWithBundleIdentifier_];

      v65 = v188;
      if (!v161)
      {
        goto LABEL_41;
      }

      v153 = &selRef_actionID;
      v162 = [v65 buttonTray];
      [v162 setPrivacyLinkController_];

      v108 = v183;
      v152 = v184;
      v107 = v187;
    }

    v163 = [v65 v153[40]];
    [v163 addButton_];

    v64 = v152;
LABEL_20:
    if (v191 == ++v109)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC70C0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC70C13C()
{
  result = qword_1EBCDE200;
  if (!qword_1EBCDE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE1F8, &qword_1BC769BB8);
    sub_1BC70C26C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE248, &qword_1BC769BE8);
    type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
    sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE200);
  }

  return result;
}

unint64_t sub_1BC70C26C()
{
  result = qword_1EBCDE208;
  if (!qword_1EBCDE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE210, &qword_1BC769BC0);
    sub_1BC70C2F8();
    sub_1BC70C6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE208);
  }

  return result;
}

unint64_t sub_1BC70C2F8()
{
  result = qword_1EBCDE218;
  if (!qword_1EBCDE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE220, &qword_1BC769BC8);
    sub_1BC70C4C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE248, &qword_1BC769BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
    sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE218);
  }

  return result;
}

unint64_t sub_1BC70C4C4()
{
  result = qword_1EBCDE228;
  if (!qword_1EBCDE228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE230, &qword_1BC769BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE238, &qword_1BC769BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE248, &qword_1BC769BE8);
    type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
    sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE228);
  }

  return result;
}

unint64_t sub_1BC70C6C4()
{
  result = qword_1EBCDE268;
  if (!qword_1EBCDE268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE270, &qword_1BC769BF8);
    sub_1BC70C8CC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE238, &qword_1BC769BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE248, &qword_1BC769BE8);
    type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
    sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE268);
  }

  return result;
}

unint64_t sub_1BC70C8CC()
{
  result = qword_1EBCDE278;
  if (!qword_1EBCDE278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE280, &qword_1BC769C00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE248, &qword_1BC769BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
    sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE278);
  }

  return result;
}

unint64_t sub_1BC70CA90()
{
  result = qword_1EBCDE288;
  if (!qword_1EBCDE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE1E8, &qword_1BC769BA8);
    sub_1BC70CBC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C8, &qword_1BC769C28);
    type metadata accessor for ReportOverviewScreen(255);
    sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE288);
  }

  return result;
}

unint64_t sub_1BC70CBC0()
{
  result = qword_1EBCDE290;
  if (!qword_1EBCDE290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE298, &qword_1BC769C08);
    sub_1BC70CC4C();
    sub_1BC70D018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE290);
  }

  return result;
}

unint64_t sub_1BC70CC4C()
{
  result = qword_1EBCDE2A0;
  if (!qword_1EBCDE2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2A8, &qword_1BC769C10);
    sub_1BC70CE18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C8, &qword_1BC769C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    type metadata accessor for ReportOverviewScreen(255);
    sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE2A0);
  }

  return result;
}