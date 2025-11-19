uint64_t sub_26A7422F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v57 = a2;
  v59 = a4;
  v8 = sub_26A84F988();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummaryItemStandardTextLayout();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68A0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v54 = a1;
  sub_26A740230(v72);
  v19 = *a3;
  v20 = a3[1];
  v21 = a3[2];
  LOBYTE(v62[0]) = *(a3 + 24);
  sub_26A7444D8(a1, v12);
  v22 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  *(v23 + 48) = v62[0];
  v24 = v23 + v22;
  v25 = v12;
  v27 = v56;
  v26 = v57;
  sub_26A74453C(v25, v24);
  v28 = *(v14 + 56);
  *&v18[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();

  v29 = v54;

  sub_26A8505C8();
  *v18 = sub_26A7449F4;
  *(v18 + 1) = v23;
  *(v18 + 2) = 2;
  *(v18 + 3) = v26;
  *(v18 + 4) = a5;
  v30 = *(v29 + *(v27 + 56));
  if (v30)
  {
    v31 = qword_28157E6D0;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v60, &qword_2803AA880);
    sub_26A51D0F8(v60, &v62[25], &qword_2803AA880);
    sub_26A6AEE74(v73);
    sub_26A4DBD10(v60, &qword_2803AA880);
    memcpy(&v62[1], v73, 0xBFuLL);
    v62[36] = 0;
    v62[35] = sub_26A80A810;
    v62[0] = v30;
  }

  else
  {
    bzero(v62, 0x128uLL);
  }

  v32 = sub_26A850258();
  v33 = v29 + *(v27 + 24);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    if (v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_26A851EA8();
  v35 = sub_26A8501F8();
  sub_26A84EA78();

  v36 = v51;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v34, 0);
  (*(v52 + 8))(v36, v53);
  if ((v60[0] & 1) == 0)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  }

LABEL_11:
  sub_26A84ED48();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  memcpy(v60, v62, 0x128uLL);
  v61[0] = 0;
  v45 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28) + 32);
  KeyPath = swift_getKeyPath();
  memcpy(v62, v60, sizeof(v62));
  v63 = v32;
  v64 = v38;
  v65 = v40;
  v66 = v42;
  v67 = v44;
  v68 = v61[0];
  *v69 = *v61;
  *&v69[3] = *&v61[3];
  v70 = KeyPath;
  v71 = v45;
  sub_26A51D0F8(v72, v61, &qword_2803B2780);
  v47 = v58;
  sub_26A51D0F8(v18, v58, &qword_2803B68A0);
  sub_26A51D0F8(v62, v60, &qword_2803ADB60);
  v48 = v59;
  sub_26A51D0F8(v61, v59, &qword_2803B2780);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68A8);
  sub_26A51D0F8(v47, v48 + *(v49 + 48), &qword_2803B68A0);
  sub_26A51D0F8(v60, v48 + *(v49 + 64), &qword_2803ADB60);
  sub_26A4DBD10(v62, &qword_2803ADB60);
  sub_26A4DBD10(v18, &qword_2803B68A0);
  sub_26A4DBD10(v72, &qword_2803B2780);
  sub_26A4DBD10(v60, &qword_2803ADB60);
  sub_26A4DBD10(v47, &qword_2803B68A0);
  return sub_26A4DBD10(v61, &qword_2803B2780);
}

uint64_t sub_26A74295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v14[0] = sub_26A84FC08();
  *&v14[1] = a4;
  v15 = 0;
  sub_26A742A6C(a1, a2, &v16);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  sub_26A51D0F8(v14, v13, &qword_2803B68B0);
  sub_26A51D0F8(v13, a3, &qword_2803B68B0);
  *(a3 + 376) = v8;
  *(a3 + 384) = v9;
  *(a3 + 392) = v10;
  *(a3 + 400) = v11;
  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(v14, &qword_2803B68B0);

  return sub_26A4DBD10(v13, &qword_2803B68B0);
}

uint64_t sub_26A742A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *(a2 + *(type metadata accessor for SummaryItemStandardTextLayout() + 52));
  if (v8)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880);
    sub_26A51D0F8(__dst, &v11[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    sub_26A4DBD10(__dst, &qword_2803AA880);
    memcpy(&v11[1], __src, 0xBFuLL);
    v11[35] = sub_26A80A810;
    v11[36] = 0;
    v11[0] = v8;
  }

  else
  {
    bzero(v11, 0x128uLL);
  }

  KeyPath = swift_getKeyPath();
  memcpy(__dst, v11, sizeof(__dst));
  v12 = 0;
  v14 = KeyPath;
  v15 = 1;
  v16 = 0;
  sub_26A51D0F8(__dst, v11, &qword_2803B68B8);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  sub_26A51D0F8(v11, a3 + 32, &qword_2803B68B8);

  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(__dst, &qword_2803B68B8);
  sub_26A4DBD10(v11, &qword_2803B68B8);
}

uint64_t sub_26A742C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout();
  v5 = *(a1 + v4[15]);
  if (v5)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_281588848, &v20[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v20[1], __src, 0xBFuLL);
    v20[36] = 0;
    v20[35] = sub_26A80A810;
    v20[0] = v5;
  }

  else
  {
    bzero(v20, 0x128uLL);
  }

  memcpy(__dst, v20, sizeof(__dst));
  v6 = *(a1 + v4[12]);
  v7 = qword_2803A8E40;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, v19, &qword_2803AA880);
  sub_26A51D0F8(v19, &v20[25], &qword_2803AA880);
  sub_26A6AEE74(v26);
  sub_26A4DBD10(v19, &qword_2803AA880);
  memcpy(&v20[1], v26, 0xBFuLL);
  v20[36] = 0;
  v20[35] = sub_26A80A810;
  v20[0] = v6;
  v8 = qword_28157FC98;

  if (v8 != -1)
  {
    swift_once();
  }

  v21 = qword_2815889D8;
  v22 = sub_26A4C2508;
  v23 = 0;
  sub_26A51D0F8(v20, v19, &qword_2803ADBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v9 = sub_26A851248();
  sub_26A4DBD10(v20, &qword_2803ADBA0);
  v10 = *(a1 + v4[13]);
  if (v10)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, v20, &qword_2803AA880);
    sub_26A51D0F8(v20, &v19[25], &qword_2803AA880);
    sub_26A6AEE74(v27);
    sub_26A4DBD10(v20, &qword_2803AA880);
    memcpy(&v19[1], v27, 0xBFuLL);
    v19[36] = 0;
    v19[35] = sub_26A80A810;
    v19[0] = v10;
  }

  else
  {
    bzero(v19, 0x128uLL);
  }

  KeyPath = swift_getKeyPath();
  memcpy(v20, v19, sizeof(v20));
  v21 = KeyPath;
  v22 = 0x4000000000000000;
  v12 = *(a1 + v4[14]);
  if (v12)
  {
    v13 = qword_28157E6D0;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v19, &qword_2803AA880);
    sub_26A51D0F8(v19, &v17[25], &qword_2803AA880);
    sub_26A6AEE74(v28);
    sub_26A4DBD10(v19, &qword_2803AA880);
    memcpy(&v17[1], v28, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v12;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  v14 = swift_getKeyPath();
  memcpy(v19, v17, 0x128uLL);
  v19[37] = v14;
  v19[38] = 0x3FF0000000000000;
  sub_26A51D0F8(__dst, v18, &qword_2803AA888);
  sub_26A51D0F8(v20, v17, &qword_2803ADB68);
  sub_26A51D0F8(v19, v16, &qword_2803ADB68);
  sub_26A51D0F8(v18, a2, &qword_2803AA888);
  *(a2 + 296) = v9;
  sub_26A51D0F8(v17, a2 + 304, &qword_2803ADB68);
  sub_26A51D0F8(v16, a2 + 616, &qword_2803ADB68);

  sub_26A4DBD10(v19, &qword_2803ADB68);
  sub_26A4DBD10(v20, &qword_2803ADB68);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v16, &qword_2803ADB68);
  sub_26A4DBD10(v17, &qword_2803ADB68);

  return sub_26A4DBD10(v18, &qword_2803AA888);
}

unint64_t sub_26A74322C()
{
  result = qword_2803B67A8;
  if (!qword_2803B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67A8);
  }

  return result;
}

unint64_t sub_26A743280()
{
  result = qword_28157DC48[0];
  if (!qword_28157DC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DC48);
  }

  return result;
}

unint64_t sub_26A7432D4()
{
  result = qword_2803B67C0;
  if (!qword_2803B67C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67C8);
    sub_26A743358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67C0);
  }

  return result;
}

unint64_t sub_26A743358()
{
  result = qword_2803B67D0;
  if (!qword_2803B67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67D8);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8);
    sub_26A743410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67D0);
  }

  return result;
}

unint64_t sub_26A743410()
{
  result = qword_2803B67F0;
  if (!qword_2803B67F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67F8);
    sub_26A6D1B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67F0);
  }

  return result;
}

uint64_t sub_26A743494()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v9, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 80) = sub_26A573830();
  *(inited + 48) = 2;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v6 = sub_26A8516A8();
  memset(v8, 0, sizeof(v8));
  sub_26A66DDEC(v6, &unk_2803B66B0);

  sub_26A4DBD10(v8, &qword_2803ABAC0);
  return sub_26A4DBD10(v9, &qword_2803AA880);
}

uint64_t sub_26A7436C4()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2815887F8, v49, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v47, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588968;
  *(v5 + 32) = qword_281588968;
  v7 = byte_281588970;
  *(v5 + 40) = byte_281588970;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (*&v45[0])
  {
    v9 = v45[1];
    *(inited + 40) = v45[0];
    *(inited + 56) = v9;
    *(inited + 72) = v46[0];
  }

  else
  {
    sub_26A4F20CC(v48, inited + 40);
  }

  sub_26A4DBD10(v47, &qword_2803AA880);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v11 = qword_281588978;
  *(v10 + 32) = qword_281588978;
  v12 = byte_281588980;
  *(v10 + 40) = byte_281588980;
  *(v10 + 48) = 1;
  *(v10 + 56) = 3;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(inited + 88) = v13;
  v14 = sub_26A850498();
  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  v15 = sub_26A573830();
  *(inited + 136) = v15;
  *(inited + 104) = 1;
  *(inited + 96) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26A8570F0;
  v17 = qword_281588968;
  *(v16 + 32) = qword_281588968;
  v18 = byte_281588970;
  *(v16 + 40) = byte_281588970;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  sub_26A4E324C(v17, v18);
  sub_26A621A9C(v16);
  *(inited + 144) = v19;
  sub_26A51D0F8(&unk_281588848, v45, &qword_2803AA880);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26A8570D0;
  v21 = qword_281588968;
  *(v20 + 32) = qword_281588968;
  v22 = byte_281588970;
  *(v20 + 40) = byte_281588970;
  sub_26A4E324C(v21, v22);

  sub_26A58787C(v23);
  sub_26A5075B0();

  if (*&v43[0])
  {
    v24 = v43[1];
    *(inited + 152) = v43[0];
    *(inited + 168) = v24;
    *(inited + 184) = v44[0];
  }

  else
  {
    sub_26A4F20CC(v46, inited + 152);
  }

  sub_26A4DBD10(v45, &qword_2803AA880);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A8570F0;
  v26 = qword_281588968;
  *(v25 + 32) = qword_281588968;
  v27 = byte_281588970;
  *(v25 + 40) = byte_281588970;
  *(v25 + 48) = 3;
  *(v25 + 56) = 1;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(inited + 200) = v28;
  sub_26A51D0F8(&unk_281588848, v43, &qword_2803AA880);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26A8570D0;
  v30 = qword_281588968;
  *(v29 + 32) = qword_281588968;
  v31 = byte_281588970;
  *(v29 + 40) = byte_281588970;
  sub_26A4E324C(v30, v31);

  sub_26A58787C(v32);
  sub_26A5075B0();

  if (v40)
  {
    *(inited + 208) = v40;
    *(inited + 224) = v41;
    *(inited + 240) = v42;
  }

  else
  {
    sub_26A4F20CC(v44, inited + 208);
  }

  sub_26A4DBD10(v43, &qword_2803AA880);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26A857110;
  v34 = qword_281588968;
  *(v33 + 32) = qword_281588968;
  v35 = byte_281588970;
  *(v33 + 40) = byte_281588970;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 64) = 1;
  *(v33 + 72) = 4;
  sub_26A4E324C(v34, v35);
  sub_26A621A9C(v33);
  *(inited + 256) = v36;
  v37 = sub_26A850418();
  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v15;
  *(inited + 272) = 2;
  *(inited + 264) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v38 = sub_26A8516A8();
  v48[0] = 0u;
  memset(v47, 0, sizeof(v47));
  sub_26A66DDEC(v38, &unk_28157E6D8);

  sub_26A4DBD10(v47, &qword_2803ABAC0);
  return sub_26A4DBD10(v49, &qword_2803AA880);
}

uint64_t sub_26A743D08()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v30, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803D2760, v28, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v25)
  {
    *(inited + 40) = v25;
    *(inited + 56) = v26;
    *(inited + 72) = v27;
  }

  else
  {
    sub_26A4F20CC(v29, inited + 40);
  }

  sub_26A4DBD10(v28, &qword_2803AA880);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v10 = qword_281588988;
  *(v9 + 32) = qword_281588988;
  v11 = byte_281588990;
  *(v9 + 40) = byte_281588990;
  *(v9 + 48) = 1;
  *(v9 + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A850468();
  sub_26A8503B8();
  v13 = sub_26A850428();

  v14 = sub_26A84FED8();
  v15 = MEMORY[0x277CE04F8];
  v16 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v16;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v18 = qword_281588968;
  *(v17 + 32) = qword_281588968;
  v19 = byte_281588970;
  *(v17 + 40) = byte_281588970;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 64) = 1;
  *(v17 + 72) = 4;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 144) = v20;
  v21 = sub_26A850418();
  v22 = sub_26A84FEC8();
  *(inited + 184) = v15;
  *(inited + 192) = v16;
  *(inited + 160) = v22;
  *(inited + 152) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v23 = sub_26A8516A8();
  v29[0] = 0u;
  memset(v28, 0, sizeof(v28));
  sub_26A66DDEC(v23, &unk_2803B6700);

  sub_26A4DBD10(v28, &qword_2803ABAC0);
  return sub_26A4DBD10(v30, &qword_2803AA880);
}

uint64_t sub_26A744170()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2815888E8, v16, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = qword_281588988;
  *(v1 + 32) = qword_281588988;
  v3 = byte_281588990;
  *(v1 + 40) = byte_281588990;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  sub_26A850458();
  sub_26A8503A8();
  v5 = sub_26A850428();

  *(inited + 80) = 0;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v7 = qword_281588968;
  *(v6 + 32) = qword_281588968;
  v8 = byte_281588970;
  *(v6 + 40) = byte_281588970;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 1;
  *(v6 + 72) = 4;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  v10 = sub_26A850408();
  v11 = sub_26A84FEA8();
  v12 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v12;
  *(inited + 104) = v11;
  *(inited + 96) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v13 = sub_26A8516A8();
  memset(v15, 0, sizeof(v15));
  sub_26A66DDEC(v13, &unk_2803B6750);

  sub_26A4DBD10(v15, &qword_2803ABAC0);
  return sub_26A4DBD10(v16, &qword_2803AA880);
}

uint64_t sub_26A744454(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A7444D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74453C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7445A0()
{
  type metadata accessor for SummaryItemStandardTextLayout();

  return sub_26A74038C();
}

unint64_t sub_26A744618()
{
  result = qword_2803B6828;
  if (!qword_2803B6828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6820);
    sub_26A7446A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6828);
  }

  return result;
}

unint64_t sub_26A7446A4()
{
  result = qword_2803B6830;
  if (!qword_2803B6830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6838);
    sub_26A744730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6830);
  }

  return result;
}

unint64_t sub_26A744730()
{
  result = qword_2803B6840;
  if (!qword_2803B6840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6848);
    sub_26A7447E8();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6840);
  }

  return result;
}

unint64_t sub_26A7447E8()
{
  result = qword_2803B6850;
  if (!qword_2803B6850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6858);
    sub_26A4DBCC8(&qword_2803B6860, &qword_2803B6868);
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6850);
  }

  return result;
}

unint64_t sub_26A7448CC()
{
  result = qword_2803B6880;
  if (!qword_2803B6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6808);
    sub_26A4DBCC8(&qword_2803B6888, &qword_2803B6890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6880);
  }

  return result;
}

uint64_t sub_26A744984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7449F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryItemStandardTextLayout() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 49) & ~*(v3 + 80));

  return sub_26A74295C(v1 + 24, v5, a1, v4);
}

unint64_t sub_26A744A6C()
{
  result = qword_2803B68D8;
  if (!qword_2803B68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B68D0);
    sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8);
    sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B68D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_86()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_7_58()
{

  return type metadata accessor for SummaryItemConstants();
}

uint64_t sub_26A744C78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A744CB8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26A744D2C()
{
  sub_26A7451F4();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A744DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A7453C4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A744E0C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v1 + 8);
  v7 = *v1;
  v28 = *v1;
  if (v29 == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = v1[2];
      v20 = 0;
      v21 = 0;
      v19 = v8;
      v22 = 0;

      goto LABEL_10;
    }
  }

  else
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A7450B8(&v28);
    (*(v4 + 8))(v6, v3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  v11 = sub_26A850208();
  *(inited + 32) = v11;
  v12 = sub_26A850228();
  *(inited + 33) = v12;
  v13 = sub_26A850218();
  sub_26A850218();
  if (sub_26A850218() != v11)
  {
    v13 = sub_26A850218();
  }

  sub_26A850218();
  if (sub_26A850218() != v12)
  {
    v13 = sub_26A850218();
  }

  v15 = v1[3];
  v14 = v1[4];
  v26 = v14;
  v27 = v15;
  sub_26A745120(&v27, &v23);
  sub_26A745120(&v26, &v23);
  v19 = v13;
  v20 = v15;
  v21 = v14;
  v22 = 1;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6910);
  sub_26A745190();
  sub_26A84FDF8();
  result = *&v23;
  v17 = v24;
  v18 = v25;
  *a1 = v23;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_26A7450B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A745120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A745190()
{
  result = qword_2803B6918;
  if (!qword_2803B6918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6918);
  }

  return result;
}

unint64_t sub_26A7451F4()
{
  result = qword_2803B6920;
  if (!qword_2803B6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6920);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummaryItemAttributionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A745334()
{
  result = qword_2803B6928;
  if (!qword_2803B6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6930);
    sub_26A745190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6928);
  }

  return result;
}

unint64_t sub_26A7453C4()
{
  result = qword_2803B6938;
  if (!qword_2803B6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentColumnLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ComponentColumnLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_26A7454A8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_26A84F218();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = type metadata accessor for ComponentColumnLayout.Cache();
  *(a3 + v9[7]) = MEMORY[0x277D84F98];
  v10 = a3 + v9[8];
  result = 0.0;
  *(v10 + 25) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 41) = 1;
  *(a3 + v9[5]) = a4;
  *(a3 + v9[6]) = a2;
  return result;
}

void sub_26A7455A0()
{
  OUTLINED_FUNCTION_23_20();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v143 = v13;
  v144 = v12;
  MEMORY[0x28223BE20](v12);
  v139 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_23();
  v140 = v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_23();
  v142 = v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_23();
  v141 = v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_23();
  v23 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v24);
  v26 = &v138 - v25;
  v27 = type metadata accessor for ComponentColumnLayout.Cache();
  v28 = v3 + v27[8];
  if ((*(v28 + 41) & 1) == 0)
  {
    v29 = *(v28 + 40);
    v2 = *v28;
    v1 = *(v28 + 8);
    LOBYTE(v234) = *(v28 + 24) & 1;
    v233 = v29 & 1;
    if (sub_26A84F5A8())
    {
      goto LABEL_33;
    }
  }

  v148 = v9;
  v147 = v5;
  v145 = v7;
  v146 = v11;
  sub_26A84F218();
  sub_26A746D10();
  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  if (OUTLINED_FUNCTION_8_57() == 1)
  {
    sub_26A84F228();
    LOBYTE(v234) = v148 & 1;
    v233 = v147 & 1;
    sub_26A84F0E8();
    OUTLINED_FUNCTION_17_27();
    (*(v143 + 8))(v26, v144);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  if (OUTLINED_FUNCTION_8_57() == 3)
  {
    sub_26A84F228();
    sub_26A84F228();
    sub_26A84F228();
    v30 = *(v3 + v27[6]);
    v31 = sub_26A84F598();
    v35 = v148;
    v138 = v23;
    if (v30)
    {
      v37 = v145;
      v36 = v146;
      OUTLINED_FUNCTION_16_27(v31, v32 & 1, v33, v34);
      sub_26A84F0E8();
      if (v30 == 1)
      {
        v40 = v38;
        v41 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v175 = v40;
        v176 = v41;
        v177 = v36;
        v42 = v35 & 1;
        v178 = v42;
        v179 = v37;
        v43 = v147 & 1;
        v180 = v147 & 1;
        OUTLINED_FUNCTION_13_37();
        sub_26A655A44(v44, v45);
        OUTLINED_FUNCTION_18_27();
        v46 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v46, v47, v48, v49);
        sub_26A84F0E8();
        v51 = v50;
        v53 = v52;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v171[0] = v51;
        *&v171[1] = v53;
        *&v171[2] = v146;
        v172 = v42;
        v173 = v37;
        v174 = v43;
        sub_26A655A44(v171, 2);
        OUTLINED_FUNCTION_18_27();
        v54 = v141;
        LOBYTE(v234) = 0;
        v233 = 1;
        v36 = v146;
        OUTLINED_FUNCTION_6_59();
        sub_26A84F0E8();
        v56 = v55;
        v1 = v57;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v165 = v56;
        v166 = v1;
        v167 = v36;
        v168 = v42;
        v169 = v37;
        v170 = v43;
        OUTLINED_FUNCTION_14_38();
      }

      else
      {
        OUTLINED_FUNCTION_17_27();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v191 = v2;
        v192 = v1;
        v193 = v36;
        v95 = v35 & 1;
        v194 = v95;
        v195 = v37;
        v96 = v147 & 1;
        v196 = v147 & 1;
        OUTLINED_FUNCTION_14_38();
        sub_26A655A44(v97, v98);
        OUTLINED_FUNCTION_18_27();
        v99 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v99, v100, v101, v102);
        sub_26A84F0E8();
        v104 = v103;
        v53 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v187[0] = v104;
        *&v187[1] = v53;
        *&v187[2] = v36;
        v188 = v95;
        v189 = v37;
        v190 = v96;
        sub_26A655A44(v187, 2);
        OUTLINED_FUNCTION_18_27();
        OUTLINED_FUNCTION_0_83();
        v54 = v141;
        sub_26A84F0E8();
        v107 = v106;
        v41 = v108;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v181 = v107;
        v182 = v41;
        v183 = v36;
        v184 = v95;
        v185 = v37;
        v186 = v96;
        OUTLINED_FUNCTION_13_37();
      }

      sub_26A655A44(v58, v59);
      OUTLINED_FUNCTION_18_27();
      v91 = v142;
    }

    else
    {
      OUTLINED_FUNCTION_16_27(v31, v32 & 1, v33, v34);
      sub_26A84F0E8();
      OUTLINED_FUNCTION_17_27();
      v81 = v27[7];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v159 = v2;
      v160 = v1;
      v37 = v145;
      v36 = v146;
      v161 = v146;
      v82 = v35 & 1;
      v162 = v82;
      v163 = v145;
      LODWORD(v140) = v147 & 1;
      v164 = v147 & 1;
      OUTLINED_FUNCTION_14_38();
      sub_26A655A44(v83, v84);
      *(v3 + v81) = v234;
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      v86 = v85;
      v41 = v87;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v153 = v86;
      v154 = v41;
      v155 = v36;
      v156 = v82;
      v157 = v37;
      v88 = v140;
      v158 = v140;
      OUTLINED_FUNCTION_13_37();
      sub_26A655A44(v89, v90);
      *(v3 + v81) = v234;
      OUTLINED_FUNCTION_1_87();
      v91 = v142;
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      v93 = v92;
      v53 = v94;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v149[0] = v93;
      *&v149[1] = v53;
      *&v149[2] = v36;
      v150 = v82;
      v151 = v37;
      v152 = v88;
      v54 = v141;
      sub_26A655A44(v149, 2);
      *(v3 + v81) = v234;
    }

    v109 = *(v143 + 8);
    v110 = v91;
    v111 = v144;
    v109(v110, v144);
    v109(v54, v111);
    v109(v138, v111);
    if (v1 > v41)
    {
      v112 = v1;
    }

    else
    {
      v112 = v41;
    }

    if (v112 > v53)
    {
      v61 = v112;
    }

    else
    {
      v61 = v53;
    }

LABEL_28:
    v62 = v148;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  v60 = OUTLINED_FUNCTION_8_57();
  v61 = 0.0;
  v37 = v145;
  v36 = v146;
  v62 = v148;
  if (v60 == 2)
  {
    sub_26A84F228();
    v63 = v139;
    sub_26A84F228();
    if (*(v3 + v27[6]))
    {
      if (*(v3 + v27[6]) == 1)
      {
        v64 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v64, v65, v66, v67);
        sub_26A84F0E8();
        v69 = v68;
        v71 = v70;
        v72 = v27[7];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v215 = v69;
        v216 = v71;
        v217 = v36;
        LODWORD(v142) = v148 & 1;
        v218 = v148 & 1;
        v219 = v37;
        v73 = v147 & 1;
        v220 = v147 & 1;
        OUTLINED_FUNCTION_13_37();
        sub_26A655A44(v74, v75);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_0_83();
        sub_26A84F0E8();
        v77 = v76;
        v61 = v78;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v209 = v77;
        v210 = v61;
        v211 = v36;
        v212 = v142;
        v213 = v145;
        v214 = v73;
        OUTLINED_FUNCTION_14_38();
      }

      else
      {
        v124 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v124, v125, v126, v127);
        sub_26A84F0E8();
        OUTLINED_FUNCTION_17_27();
        v72 = v27[7];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v227 = v2;
        v228 = 0;
        v229 = v36;
        LODWORD(v142) = v148 & 1;
        v230 = v148 & 1;
        v231 = v37;
        v128 = v147 & 1;
        v232 = v147 & 1;
        OUTLINED_FUNCTION_14_38();
        sub_26A655A44(v129, v130);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_0_83();
        sub_26A84F0E8();
        v132 = v131;
        v71 = v133;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v221 = v132;
        v222 = v71;
        v223 = v36;
        v224 = v142;
        v225 = v145;
        v226 = v128;
        OUTLINED_FUNCTION_13_37();
      }

      sub_26A655A44(v79, v80);
      *(v3 + v72) = v234;
    }

    else
    {
      v113 = v62 & 1;
      LOBYTE(v234) = 0;
      v233 = 1;
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      OUTLINED_FUNCTION_17_27();
      v114 = v27[7];
      swift_isUniquelyReferenced_nonNull_native();
      v234 = *(v3 + v114);
      v203 = v2;
      v204 = 0;
      v205 = v36;
      v206 = v113;
      v207 = v37;
      v115 = v37;
      v116 = v147 & 1;
      v208 = v147 & 1;
      OUTLINED_FUNCTION_14_38();
      sub_26A655A44(v117, v118);
      *(v3 + v114) = v234;
      OUTLINED_FUNCTION_0_83();
      sub_26A84F0E8();
      v120 = v119;
      v71 = v121;
      swift_isUniquelyReferenced_nonNull_native();
      v234 = *(v3 + v114);
      v197 = v120;
      v198 = v71;
      v199 = v36;
      v200 = v113;
      v201 = v115;
      v202 = v116;
      OUTLINED_FUNCTION_13_37();
      sub_26A655A44(v122, v123);
      *(v3 + v114) = v234;
      v27 = v140;
    }

    v134 = v144;
    v135 = *(v143 + 8);
    v135(v63, v144);
    v135(v27, v134);
    if (v61 <= v71)
    {
      v61 = v71;
    }

    v37 = v145;
    v36 = v146;
    goto LABEL_28;
  }

LABEL_29:
  if (v62)
  {
    v136 = 0.0;
  }

  else
  {
    v136 = v36;
  }

  *v28 = v136;
  *(v28 + 8) = v61;
  v137 = v147 & 1;
  *(v28 + 16) = v36;
  *(v28 + 24) = v62 & 1;
  *(v28 + 32) = v37;
  *(v28 + 40) = v137;
LABEL_33:
  OUTLINED_FUNCTION_24_24();
}

void sub_26A745F54()
{
  OUTLINED_FUNCTION_23_20();
  v36 = v0;
  v35 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F218();
  sub_26A746D10();
  OUTLINED_FUNCTION_10_47();
  sub_26A851D88();
  OUTLINED_FUNCTION_10_47();
  sub_26A851DD8();
  if (OUTLINED_FUNCTION_7_59() == 1)
  {
    sub_26A84F228();
    v39.origin.x = OUTLINED_FUNCTION_4_73();
    CGRectGetMinX(v39);
    v40.origin.x = OUTLINED_FUNCTION_4_73();
    CGRectGetMinY(v40);
    sub_26A851568();
    v38 = v5 & 1;
    v37 = v3 & 1;
    sub_26A84F0F8();
    (*(v8 + 8))(v11, v6);
  }

  else
  {
    OUTLINED_FUNCTION_10_47();
    sub_26A851D88();
    OUTLINED_FUNCTION_10_47();
    sub_26A851DD8();
    if (OUTLINED_FUNCTION_7_59() == 2)
    {
      v38 = v5 & 1;
      v37 = v3 & 1;
      OUTLINED_FUNCTION_4_73();
      v12 = OUTLINED_FUNCTION_11_45();
      sub_26A746158(v19, v20, v21, v22, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      sub_26A851D88();
      OUTLINED_FUNCTION_10_47();
      sub_26A851DD8();
      if (OUTLINED_FUNCTION_7_59() == 3)
      {
        v38 = v5 & 1;
        v37 = v3 & 1;
        OUTLINED_FUNCTION_4_73();
        v23 = OUTLINED_FUNCTION_11_45();
        sub_26A746498(v30, v31, v32, v33, v34, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  OUTLINED_FUNCTION_24_24();
}

uint64_t sub_26A746158(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = a11;
  v36 = sub_26A84F108();
  v18 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  sub_26A84F228();
  sub_26A84F228();
  a6 &= 1u;
  v38 = a6;
  a8 &= 1u;
  v37 = a8;
  sub_26A746B24(0);
  v25 = v24;
  v38 = a6;
  v37 = a8;
  sub_26A746B24(1);
  v27 = v26;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  if (v17 == 1)
  {
    CGRectGetMinX(*&v28);
  }

  else
  {
    CGRectGetMinX(*&v28);
    if (v27 >= v25)
    {
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      v42.size.height = a4;
      CGRectGetMinY(v42);
      sub_26A851568();
      v38 = 0;
      v37 = 0;
      sub_26A84F0F8();
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      CGRectGetMaxX(v43);
      v44.origin.x = a1;
      v44.origin.y = a2;
      v44.size.width = a3;
      v44.size.height = a4;
      CGRectGetMinY(v44);
      sub_26A851578();
      goto LABEL_6;
    }
  }

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetMidY(v39);
  sub_26A8515B8();
  v38 = 0;
  v37 = 0;
  sub_26A84F0F8();
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetMaxX(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  CGRectGetMidY(v41);
  sub_26A8515C8();
LABEL_6:
  v38 = 0;
  v37 = 0;
  sub_26A84F0F8();
  v32 = *(v18 + 8);
  v33 = v36;
  v32(v20, v36);
  return (v32)(v23, v33);
}

uint64_t sub_26A746498(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v19 = a12;
  v20 = sub_26A84F108();
  v40 = *(v20 - 8);
  v41 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v39 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v39 - v27;
  sub_26A84F228();
  sub_26A84F228();
  sub_26A84F228();
  a7 &= 1u;
  v44 = a7;
  a9 &= 1u;
  v43 = a9;
  sub_26A746B24(0);
  v30 = v29;
  v44 = a7;
  v43 = a9;
  v39[2] = sub_26A746B24(1);
  v42 = v31;
  v44 = a7;
  v43 = a9;
  v32 = sub_26A746B24(2);
  *&v39[3] = a5;
  *&v39[4] = v32;
  *&v39[1] = v33;
  if (v19 != 1)
  {
    if (v42 < v30)
    {
      if (v30 >= v33)
      {
        if (v33 >= v30)
        {
LABEL_17:
          v59.origin.x = a1;
          v59.origin.y = a2;
          v59.size.width = a3;
          v59.size.height = a4;
          CGRectGetMinX(v59);
          v60.origin.x = a1;
          v60.origin.y = a2;
          v60.size.width = a3;
          v60.size.height = a4;
          CGRectGetMinY(v60);
          sub_26A851568();
          v44 = 0;
          v43 = 0;
          sub_26A84F0F8();
          v61.origin.x = a1;
          v61.origin.y = a2;
          v61.size.width = a3;
          v61.size.height = a4;
          CGRectGetMinX(v61);
          v62.origin.x = a1;
          v62.origin.y = a2;
          v62.size.width = a3;
          v62.size.height = a4;
          CGRectGetMinY(v62);
          sub_26A851568();
          v44 = 0;
          v43 = 0;
          sub_26A84F0F8();
          v63.origin.x = a1;
          v63.origin.y = a2;
          v63.size.width = a3;
          v63.size.height = a4;
          CGRectGetMaxX(v63);
          v64.origin.x = a1;
          v64.origin.y = a2;
          v64.size.width = a3;
          v64.size.height = a4;
          CGRectGetMinY(v64);
          sub_26A851578();
          goto LABEL_18;
        }
      }

      else if (v33 >= v30)
      {
        if (v42 >= v33)
        {
          goto LABEL_17;
        }

LABEL_14:
        v51.origin.x = a1;
        v51.origin.y = a2;
        v51.size.width = a3;
        v51.size.height = a4;
        CGRectGetMinX(v51);
        v52.origin.x = a1;
        v52.origin.y = a2;
        v52.size.width = a3;
        v52.size.height = a4;
        CGRectGetMidY(v52);
        sub_26A8515B8();
        v44 = 0;
        v43 = 0;
        sub_26A84F0F8();
        v53.origin.x = a1;
        v53.origin.y = a2;
        v53.size.width = a3;
        v53.size.height = a4;
        CGRectGetMinX(v53);
        v54.origin.x = a1;
        v54.origin.y = a2;
        v54.size.width = a3;
        v54.size.height = a4;
        CGRectGetMidY(v54);
        sub_26A8515B8();
        v44 = 0;
        v43 = 0;
        sub_26A84F0F8();
        v55.origin.x = a1;
        v55.origin.y = a2;
        v55.size.width = a3;
        v55.size.height = a4;
        CGRectGetMaxX(v55);
        v56.origin.x = a1;
        v56.origin.y = a2;
        v56.size.width = a3;
        v56.size.height = a4;
        CGRectGetMinY(v56);
        sub_26A851578();
        goto LABEL_18;
      }

      v57.origin.x = a1;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      CGRectGetMinX(v57);
      v58.origin.x = a1;
      v58.origin.y = a2;
      v58.size.width = a3;
      v58.size.height = a4;
      CGRectGetMinY(v58);
      sub_26A851568();
      v44 = 0;
      v43 = 0;
      goto LABEL_3;
    }

    if (v30 >= v33 || v42 >= v33)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  CGRectGetMinX(v45);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  CGRectGetMidY(v46);
  sub_26A8515B8();
  v44 = 0;
  v43 = 0;
LABEL_3:
  sub_26A84F0F8();
  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  CGRectGetMinX(v47);
  v48.origin.x = a1;
  v48.origin.y = a2;
  v48.size.width = a3;
  v48.size.height = a4;
  CGRectGetMidY(v48);
  sub_26A8515B8();
  v44 = 0;
  v43 = 0;
  sub_26A84F0F8();
  v49.origin.x = a1;
  v49.origin.y = a2;
  v49.size.width = a3;
  v49.size.height = a4;
  CGRectGetMaxX(v49);
  v50.origin.x = a1;
  v50.origin.y = a2;
  v50.size.width = a3;
  v50.size.height = a4;
  CGRectGetMidY(v50);
  sub_26A8515C8();
LABEL_18:
  v44 = 0;
  v43 = 0;
  sub_26A84F0F8();
  v35 = *(v40 + 8);
  v36 = v22;
  v37 = v41;
  v35(v36, v41);
  v35(v25, v37);
  return (v35)(v28, v37);
}

double sub_26A746B24(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for ComponentColumnLayout.Cache() + 28));
  if (!*(v3 + 16))
  {
    return 0.0;
  }

  v4 = sub_26A5484D4(a1);
  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = *(*(v3 + 56) + 48 * v4);
  if ((sub_26A84F5A8() & 1) == 0)
  {
    return 0.0;
  }

  return v6;
}

void (*sub_26A746C44(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

unint64_t sub_26A746CBC()
{
  result = qword_2803B6940;
  if (!qword_2803B6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6940);
  }

  return result;
}

unint64_t sub_26A746D10()
{
  result = qword_28157FE70;
  if (!qword_28157FE70)
  {
    sub_26A84F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE70);
  }

  return result;
}

uint64_t type metadata accessor for ComponentColumnLayout.Cache()
{
  result = qword_2803B6948;
  if (!qword_2803B6948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A746DDC()
{
  sub_26A84F218();
  if (v0 <= 0x3F)
  {
    sub_26A746E90();
    if (v1 <= 0x3F)
    {
      sub_26A5D4A20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A746E90()
{
  if (!qword_2803B6958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF8E0);
    v0 = sub_26A8516D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B6958);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ComponentColumnLayout.ColumnSizingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A746FE4()
{
  result = qword_2803B6960;
  if (!qword_2803B6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_59()
{

  return sub_26A851DC8();
}

uint64_t OUTLINED_FUNCTION_8_57()
{

  return sub_26A851DC8();
}

uint64_t OUTLINED_FUNCTION_9_52()
{

  return sub_26A851D88();
}

uint64_t OUTLINED_FUNCTION_20_28()
{

  return sub_26A851DD8();
}

uint64_t sub_26A747224(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A747278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A747310@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6968);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  *v5 = sub_26A84FC08();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6970);
  sub_26A7474F4(v1, &v5[*(v6 + 44)]);
  sub_26A4DBCC8(&qword_2803B6978, &qword_2803B6968);
  sub_26A850AF8();
  sub_26A4DBD10(v5, &qword_2803B6968);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26A68CCBC;
  *(v7 + 24) = 0;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6980) + 36);
  *(v8 + 16) = swift_getKeyPath();
  *(v8 + 24) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v10 = *(v9 + 40);
  *(v8 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = v8 + *(v9 + 44);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  *v8 = sub_26A4D1F7C;
  *(v8 + 8) = v7;
  return result;
}

uint64_t sub_26A7474F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE620);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE618);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v73 = &v69 - v20;
  v96[0] = *a1;
  v21 = v96[0];
  if (v96[0])
  {
    if (qword_28157E6C0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815888E8, &v83[200], &qword_2803AA880);
    sub_26A6AEE74(v89);
    memcpy(&v83[8], v89, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v21;
  }

  else
  {
    bzero(v83, 0x128uLL);
  }

  memcpy(v88, v83, sizeof(v88));
  v22 = a1[1];
  if (v22)
  {
    sub_26A4DBD68(v96, v78, &qword_2803AAFF8);
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v83[200], &qword_2803AA880);
    sub_26A6AEE74(v90);
    memcpy(&v83[8], v90, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v22;

    v23 = sub_26A8502F8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6988);
    v25 = &v18[*(v24 + 36)];
    *v25 = v23;
    *(v25 + 1) = swift_getKeyPath();
    v25[16] = 0;
    v26 = *(type metadata accessor for MinimumFontSizeModifier() + 24);
    *&v25[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0);
    swift_storeEnumTagMultiPayload();
    memcpy(v18, v83, 0x128uLL);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v24);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6988);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v27);
    sub_26A4DBD68(v96, v83, &qword_2803AAFF8);
  }

  sub_26A4DBDB4(v18, v73, &qword_2803AE618);
  v28 = a1[2];
  if (v28)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v83[200], &qword_2803AA880);
    sub_26A6AEE74(v91);
    memcpy(&v83[8], v91, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v28;

    v29 = sub_26A850258();
    sub_26A84ED48();
    *(&v31 + 1) = v30;
    *(&v33 + 1) = v32;
    v34 = *v83;
    v35 = *&v83[16];
    v36 = *&v83[32];
    v37 = *&v83[48];
    v38 = *&v83[64];
    v39 = *&v83[80];
    v40 = *&v83[96];
    v41 = *&v83[112];
    v42 = *&v83[128];
    v43 = *&v83[144];
    v44 = *&v83[160];
    v45 = *&v83[176];
    v46 = *&v83[192];
    v47 = *&v83[208];
    v48 = *&v83[224];
    v49 = *&v83[240];
    v50 = *&v83[256];
    v51 = *&v83[272];
    v52 = *&v83[288];
    v53 = v29;
    LOBYTE(v78[0]) = 0;
  }

  else
  {
    v53 = 0;
    v52 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    LOBYTE(v78[0]) = 0;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v31 = 0uLL;
    v33 = 0uLL;
  }

  *v83 = v34;
  *&v83[16] = v35;
  *&v83[32] = v36;
  *&v83[48] = v37;
  *&v83[64] = v38;
  *&v83[80] = v39;
  *&v83[96] = v40;
  *&v83[112] = v41;
  *&v83[128] = v42;
  *&v83[144] = v43;
  *&v83[160] = v44;
  *&v83[176] = v45;
  *&v83[192] = v46;
  *&v83[208] = v47;
  *&v83[224] = v48;
  *&v83[240] = v49;
  *&v83[256] = v50;
  *&v83[272] = v51;
  *&v83[288] = v52;
  v84 = v53;
  v85 = v31;
  v86 = v33;
  v87 = v78[0];
  v54 = v74;
  sub_26A8512B8();
  v55 = sub_26A8502A8();
  sub_26A84ED48();
  v56 = v54 + *(v8 + 36);
  *v56 = v55;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  *v7 = sub_26A84FA58();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6990);
  sub_26A747F4C(a1, &v7[*(v61 + 44)]);
  v62 = a1[3];
  v95 = v62;
  if (v62)
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, &v78[25], &qword_2803AA880);
    sub_26A6AEE74(v92);
    memcpy(&v78[1], v92, 0xBFuLL);
    v78[36] = 0;
    v78[35] = sub_26A80A810;
    v78[0] = v62;
  }

  else
  {
    bzero(v78, 0x128uLL);
  }

  memcpy(v82, v78, sizeof(v82));
  v63 = a1[4];
  v94 = v63;
  if (v63)
  {
    sub_26A4DBD68(&v95, v78, &qword_2803AAFF8);
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    v64 = v7;
    sub_26A4DBD68(&unk_2815887F8, &v78[25], &qword_2803AA880);
    sub_26A6AEE74(v93);
    memcpy(&v78[1], v93, 0xBFuLL);
    v78[36] = 0;
    v78[35] = sub_26A80A810;
    v78[0] = v63;
  }

  else
  {
    v64 = v7;
    bzero(v78, 0x128uLL);
    sub_26A4DBD68(&v95, v81, &qword_2803AAFF8);
  }

  memcpy(v81, v78, sizeof(v81));
  sub_26A4DBD68(v88, v79, &qword_2803AA888);
  v80[0] = v79;
  v65 = v73;
  sub_26A4DBD68(v73, v15, &qword_2803AE618);
  v80[1] = v15;
  sub_26A4DBD68(v83, v78, &qword_2803AA890);
  v80[2] = v78;
  v70 = v15;
  v66 = v74;
  sub_26A4DBD68(v74, v10, &qword_2803AD3C0);
  v80[3] = v10;
  v69 = v10;
  v67 = v72;
  sub_26A4DBD68(v64, v72, &qword_2803AE620);
  v80[4] = v67;
  sub_26A4DBD68(v82, v77, &qword_2803AA888);
  v80[5] = v77;
  sub_26A4DBD68(v81, v76, &qword_2803AA888);
  v80[6] = v76;
  sub_26A594938(v80);
  sub_26A4DBD68(&v94, &v75, &qword_2803AAFF8);
  sub_26A4DBD10(v81, &qword_2803AA888);
  sub_26A4DBD10(v82, &qword_2803AA888);
  sub_26A4DBD10(v64, &qword_2803AE620);
  sub_26A4DBD10(v66, &qword_2803AD3C0);
  sub_26A4DBD10(v83, &qword_2803AA890);
  sub_26A4DBD10(v65, &qword_2803AE618);
  sub_26A4DBD10(v88, &qword_2803AA888);
  sub_26A4DBD10(v76, &qword_2803AA888);
  sub_26A4DBD10(v77, &qword_2803AA888);
  sub_26A4DBD10(v67, &qword_2803AE620);
  sub_26A4DBD10(v69, &qword_2803AD3C0);
  sub_26A4DBD10(v78, &qword_2803AA890);
  sub_26A4DBD10(v70, &qword_2803AE618);
  return sub_26A4DBD10(v79, &qword_2803AA888);
}

uint64_t sub_26A747F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6998);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = a1[5];
  v17 = a1[7];
  v16 = a1[8];
  v18 = a1[9];
  *v14 = sub_26A84FBF8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69A0);
  sub_26A748198(v15, v16, v17, v18, &v14[*(v19 + 44)]);
  v20 = a1[6];
  v21 = a1[10];
  v22 = a1[11];
  v23 = a1[12];
  *v11 = sub_26A84FBF8();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_26A748198(v20, v22, v21, v23, &v11[*(v19 + 44)]);
  sub_26A4DBD68(v14, v8, &qword_2803B6998);
  sub_26A4DBD68(v11, v5, &qword_2803B6998);
  v24 = v29;
  sub_26A4DBD68(v8, v29, &qword_2803B6998);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69A8);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_26A4DBD68(v5, v24 + *(v25 + 64), &qword_2803B6998);
  sub_26A4DBD10(v11, &qword_2803B6998);
  sub_26A4DBD10(v14, &qword_2803B6998);
  sub_26A4DBD10(v5, &qword_2803B6998);
  return sub_26A4DBD10(v8, &qword_2803B6998);
}

uint64_t sub_26A748198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a5;
  v102 = a4;
  v99 = a3;
  *&v98 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v82 - v7;
  v8 = sub_26A84B1D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v82 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2718);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v103 = &v82 - v25;
  if (a1)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D62B38], v8, v24);
    KeyPath = swift_getKeyPath();
    *&v96 = v15;
    *&v95 = KeyPath;
    v27 = v14 + *(v12 + 36);
    v28 = a1;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v9 + 32))(&v27[v29], v11, v8);
    __swift_storeEnumTagSinglePayload(&v27[v29], 0, 1, v8);
    *v27 = v95;
    *v14 = v28;
    v30 = swift_getKeyPath();
    sub_26A4DBDB4(v14, v17, &qword_2803AAFA0);
    v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36)];
    *v31 = v30;
    v31[8] = 1;
    v32 = swift_getKeyPath();
    v33 = &v17[*(v96 + 36)];
    *v33 = v32;
    v33[8] = 0;

    LOBYTE(v29) = sub_26A850268();
    sub_26A84ED48();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_26A4DBDB4(v17, v22, &qword_2803AB2E0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2720);
    v43 = &v22[*(v42 + 36)];
    *v43 = v29;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    v44 = v22;
    v45 = 0;
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2720);
    v44 = v22;
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v42);
  sub_26A4DBDB4(v22, v103, &qword_2803B2718);
  v46 = v99;
  v47 = v98;
  if (v98)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v109[25], &qword_2803AA880);
    sub_26A6AEE74(v112);
    memcpy(&v109[1], v112, 0xBFuLL);
    v109[36] = 0;
    v109[35] = sub_26A80A810;
    v109[0] = v47;
  }

  else
  {
    bzero(v109, 0x128uLL);
  }

  memcpy(v111, v109, sizeof(v111));
  if (v46)
  {
    v48 = qword_2803A9048;

    if (v48 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D28A0, &v109[25], &qword_2803AA880);
    sub_26A6AEE74(v113);
    memcpy(&v109[1], v113, 0xBFuLL);
    v49 = sub_26A80A810;
    v109[36] = 0;
    v109[35] = sub_26A80A810;
    v109[0] = v46;
    v98 = *&v109[1];
    v95 = *&v109[5];
    v96 = *&v109[3];
    v93 = *&v109[9];
    v94 = *&v109[7];
    v91 = *&v109[13];
    v92 = *&v109[11];
    v89 = *&v109[17];
    v90 = *&v109[15];
    v87 = *&v109[21];
    v88 = *&v109[19];
    v85 = *&v109[25];
    v86 = *&v109[23];
    v83 = *&v109[29];
    v84 = *&v109[27];
    v82 = *&v109[31];
    v50 = v109[33];
    v51 = v109[34];
    v52 = 1;
    v108[0] = 1;
    v53 = swift_getKeyPath();
    v55 = v82;
    v54 = v83;
    v57 = v84;
    v56 = v85;
    v59 = v86;
    v58 = v87;
    v61 = v88;
    v60 = v89;
    v63 = v90;
    v62 = v91;
    v65 = v92;
    v64 = v93;
    v67 = v94;
    v66 = v95;
    v68 = v96;
    v69 = v98;
    v70 = v108[0];
    LOBYTE(v104) = 0;
  }

  else
  {
    LOBYTE(v104) = 0;

    v49 = 0;
    v51 = 0;
    v50 = 0;
    v53 = 0;
    v52 = 0;
    v70 = 0;
    v69 = 0uLL;
    v68 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
  }

  *&v109[1] = v69;
  *&v109[3] = v68;
  *&v109[5] = v66;
  *&v109[7] = v67;
  *&v109[9] = v64;
  *&v109[11] = v65;
  *&v109[13] = v62;
  *&v109[15] = v63;
  *&v109[17] = v60;
  *&v109[19] = v61;
  *&v109[21] = v58;
  *&v109[23] = v59;
  *&v109[25] = v56;
  *&v109[27] = v57;
  *&v109[29] = v54;
  *&v109[31] = v55;
  v109[0] = v46;
  v109[33] = v50;
  v109[34] = v51;
  v109[35] = v49;
  v109[37] = 0;
  v109[36] = 0;
  v109[38] = v70 | (v52 << 8);
  v109[39] = v53;
  v109[40] = v52;
  v110 = v104;
  if (v102)
  {
    v71 = sub_26A850338();
    v72 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v71);

    v73 = sub_26A8503E8();
    sub_26A4DBD10(v72, &qword_2803AB208);
    v74 = sub_26A84FEC8();
    v106 = MEMORY[0x277CE04F8];
    v107 = MEMORY[0x277CE04E8];
    v105 = v74;
    v104 = v73;
    sub_26A6078C0();
    v76 = v75;
    sub_26A57E57C(&v104);
  }

  else
  {

    v76 = 0;
  }

  v77 = v103;
  v78 = v100;
  sub_26A4DBD68(v103, v100, &qword_2803B2718);
  sub_26A4DBD68(v111, v108, &qword_2803AA888);
  sub_26A4DBD68(v109, &v104, &qword_2803B69B0);
  v79 = v101;
  sub_26A4DBD68(v78, v101, &qword_2803B2718);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69B8);
  sub_26A4DBD68(v108, v79 + v80[12], &qword_2803AA888);
  sub_26A4DBD68(&v104, v79 + v80[16], &qword_2803B69B0);
  *(v79 + v80[20]) = v76;

  sub_26A4DBD10(v109, &qword_2803B69B0);
  sub_26A4DBD10(v111, &qword_2803AA888);
  sub_26A4DBD10(v77, &qword_2803B2718);

  sub_26A4DBD10(&v104, &qword_2803B69B0);
  sub_26A4DBD10(v108, &qword_2803AA888);
  return sub_26A4DBD10(v78, &qword_2803B2718);
}

unint64_t sub_26A748B28()
{
  result = qword_2803B69C0;
  if (!qword_2803B69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6968);
    sub_26A4DBCC8(&qword_2803B6978, &qword_2803B6968);
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B69C0);
  }

  return result;
}

uint64_t sub_26A748C50()
{
  sub_26A84AB48();
  OUTLINED_FUNCTION_0_84();
  sub_26A53ACC8();
  if (OUTLINED_FUNCTION_3_77())
  {

    v0 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    v0 = OUTLINED_FUNCTION_3_77();
  }

  return v0 & 1;
}

uint64_t sub_26A748CE4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_26A84AB98();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  result = sub_26A748C50();
  if (result)
  {
    if (a3 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (a3 < 9.22337204e18)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
            v41 = a1;
            v39 = a3;
            v47 = sub_26A84AB48();
            v48 = v14;
            OUTLINED_FUNCTION_0_84();
            v45 = v15;
            v46 = v16;
            v43 = a2;
            v43 = sub_26A852568();
            v44 = v17;
            v18 = sub_26A53ACC8();
            v19 = OUTLINED_FUNCTION_2_86(&v45, &v43);
            v21 = v20;

            v47 = v19;
            v48 = v21;
            OUTLINED_FUNCTION_1_88();
            v45 = v22;
            v46 = v23;
            v43 = v39;
            v43 = sub_26A852568();
            v44 = v24;
            v36 = v18;
            v38 = v18;
            OUTLINED_FUNCTION_2_86(&v45, &v43);

            sub_26A84AB88();

            if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
            {
              sub_26A67B574(v12);
              v25 = sub_26A851E98();
              LOBYTE(v36) = 2;
              sub_26A7B8464(v25, 1, "SnippetUI/URL+extensions.swift", 30, 2, 47, "setImageSizeParameters(with:width:)", 35, v36, v18, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
              v26 = v41;
              v27 = *(v42 + 16);
              v27(v41, v4, v8);
            }

            else
            {
              v26 = v41;
              (*(v42 + 32))(v41, v12, v8);
              v27 = *(v42 + 16);
            }

            v30 = v40;
            v27(v40, v26, v8);
            v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
            v32 = swift_allocObject();
            v33 = v32;
            (*(v42 + 32))(v32 + v31, v30, v8);
            v34 = sub_26A851E88();
            LOBYTE(v36) = 2;
            sub_26A7C7120(v34, sub_26A74920C, v33, 1, "SnippetUI/URL+extensions.swift", 30, 2, 33, "parameterized(with:)", 20, v36, v38, v39, SHIDWORD(v39), v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  v28 = sub_26A851E88();
  LOBYTE(v35) = 2;
  sub_26A7B86C0(v28, 1, "SnippetUI/URL+extensions.swift", 30, 2, 27, "parameterized(with:)", 20, v35, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v29 = *(v42 + 16);

  return v29(a1, v3, v8);
}

unint64_t sub_26A74918C()
{
  sub_26A852248();

  v0 = sub_26A84AB48();
  MEMORY[0x26D663B00](v0);

  return 0xD000000000000033;
}

unint64_t sub_26A74920C()
{
  sub_26A84AB98();

  return sub_26A74918C();
}

uint64_t OUTLINED_FUNCTION_2_86(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211F2F8](a1, a2, 0, 0, 0, 1, v2, v2);
}

uint64_t OUTLINED_FUNCTION_3_77()
{

  return sub_26A8520E8();
}

double sub_26A7492F8()
{
  v1 = [v0 coordinate];
  if (!v1)
  {
    return *MEMORY[0x277CE4278];
  }

  v2 = v1;
  [v1 lat];
  v4 = v3;
  [v2 lng];

  return v4;
}

uint64_t sub_26A74937C()
{
  v1 = [v0 content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A7E0200(v1);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if (!sub_26A73670C(v3))
  {

LABEL_17:

    return 0;
  }

  sub_26A736710(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D6644E0](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 image_element];
  if (!v7 || (v8 = sub_26A55DF78(v7)) == 0)
  {

LABEL_15:
    return 0;
  }

  v9 = v8;
  if (!sub_26A73670C(v8))
  {

    goto LABEL_17;
  }

  sub_26A736710(0, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D6644E0](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = [v11 symbol];
  if (v12)
  {
    v13 = v12;
    sub_26A74E490(v12);
    if (v14)
    {
      v15 = sub_26A851918();

      return v15 & 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_26A74954C()
{
  result = sub_26A749754(v0);
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_26A749578()
{
  v1 = [v0 anchor];
  if (!v1)
  {
    return 0.5;
  }

  v2 = v1;
  [v1 x];
  v4 = v3;
  [v2 y];

  return v4;
}

id RFMapAnnotation.init(coordinate:title:anchor:content:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_allocWithZone(MEMORY[0x277D4C408]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setLat_];
  [v17 setLng_];
  [v16 setCoordinate_];
  sub_26A5A4500(a1, a2, v16);
  v18 = [objc_allocWithZone(MEMORY[0x277D4C038]) init];
  [v18 setX_];
  [v18 setY_];
  [v16 setAnchor_];
  [v16 setContent_];

  return v16;
}

uint64_t sub_26A749754(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t type metadata accessor for Separator()
{
  result = qword_2803B69C8;
  if (!qword_2803B69C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A74982C()
{
  sub_26A84BBF8();
  if (v0 <= 0x3F)
  {
    sub_26A749900(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
    if (v1 <= 0x3F)
    {
      sub_26A749900(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A749900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A749970@<X0>(uint64_t a1@<X8>)
{
  sub_26A7499F8(v1, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69D8) + 36);
  sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v5 = *(v4 + 16);

  return v5(a1 + v3, v1);
}

uint64_t sub_26A7499F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for Separator();
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = v4;
  v65 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69E0);
  MEMORY[0x28223BE20](v68);
  v69 = v62 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69E8);
  MEMORY[0x28223BE20](v78);
  v70 = v62 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F0);
  MEMORY[0x28223BE20](v67);
  v66 = v62 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F8);
  MEMORY[0x28223BE20](v74);
  v71 = (v62 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A00);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A08);
  MEMORY[0x28223BE20](v75);
  v77 = v62 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A10);
  MEMORY[0x28223BE20](v72);
  v14 = v62 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A18);
  MEMORY[0x28223BE20](v76);
  v73 = v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A20);
  MEMORY[0x28223BE20](v16);
  v79 = v62 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A28);
  MEMORY[0x28223BE20](v80);
  v19 = v62 - v18;
  v20 = sub_26A84BBF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a1, v20, v22);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == *MEMORY[0x277D62F50] || v25 == *MEMORY[0x277D62F48])
  {
    goto LABEL_6;
  }

  v62[1] = v9;
  v62[2] = v16;
  if (v25 == *MEMORY[0x277D62F30])
  {
    v30 = sub_26A84FBF8();
    v31 = v71;
    *v71 = v30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A90);
    sub_26A8512C8();
    sub_26A74AF34();
    sub_26A851318();
    *(v31 + *(v74 + 36)) = 0x3FD3333333333333;
    v32 = &qword_2803B69F8;
    sub_26A51D0F8(v31, v14, &qword_2803B69F8);
    swift_storeEnumTagMultiPayload();
    sub_26A74AEA8();
    sub_26A74AF8C();
    v33 = v73;
    sub_26A84FDF8();
    sub_26A51D0F8(v33, v77, &qword_2803B6A18);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v34 = v79;
    sub_26A84FDF8();
    sub_26A4DBD10(v33, &qword_2803B6A18);
    sub_26A51D0F8(v34, v11, &qword_2803B6A20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v34, &qword_2803B6A20);
    v35 = v31;
LABEL_11:
    v41 = v32;
    return sub_26A4DBD10(v35, v41);
  }

  v36 = v80;
  if (v25 == *MEMORY[0x277D62F20])
  {
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v37 = &v19[*(v36 + 36)];
    v38 = __src[1];
    *v37 = __src[0];
    *(v37 + 1) = v38;
    *(v37 + 2) = __src[2];
    v32 = &qword_2803B6A28;
    sub_26A51D0F8(v19, v14, &qword_2803B6A28);
    swift_storeEnumTagMultiPayload();
    sub_26A74AEA8();
    sub_26A74AF8C();
    v39 = v73;
    sub_26A84FDF8();
    sub_26A51D0F8(v39, v77, &qword_2803B6A18);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v40 = v79;
    sub_26A84FDF8();
    sub_26A4DBD10(v39, &qword_2803B6A18);
    sub_26A51D0F8(v40, v11, &qword_2803B6A20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v40, &qword_2803B6A20);
    v35 = v19;
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x277D62F28])
  {
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v42 = &v19[*(v36 + 36)];
    v43 = __src[1];
    *v42 = __src[0];
    *(v42 + 1) = v43;
    *(v42 + 2) = __src[2];
    sub_26A51D0F8(v19, v69, &qword_2803B6A28);
    swift_storeEnumTagMultiPayload();
    sub_26A74B0D0();
    sub_26A74AEA8();
    v44 = v70;
    sub_26A84FDF8();
    sub_26A51D0F8(v44, v77, &qword_2803B69E8);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v45 = v79;
    sub_26A84FDF8();
    sub_26A4DBD10(v44, &qword_2803B69E8);
    sub_26A51D0F8(v45, v11, &qword_2803B6A20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v45, &qword_2803B6A20);
    v35 = v19;
    v41 = &qword_2803B6A28;
    return sub_26A4DBD10(v35, v41);
  }

  if (v25 == *MEMORY[0x277D62F58])
  {
    v46 = v66;
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v47 = (v46 + *(v36 + 36));
    v48 = v84;
    *v47 = v83;
    v47[1] = v48;
    v47[2] = v85;
    v49 = sub_26A850298();
    if (qword_2803A8CE0 != -1)
    {
      swift_once();
    }

    v50 = xmmword_2803D1FA8;
    v52 = qword_2803D1FB8;
    v51 = unk_2803D1FC0;
    v53 = qword_2803D1FC8;
    sub_26A6AEE74(__src);
    v54 = v46 + *(v67 + 36);
    memcpy(v54, __src, 0xC0uLL);
    *(v54 + 192) = v50;
    *(v54 + 208) = v52;
    *(v54 + 216) = v51;
    *(v54 + 224) = v53;
    *(v54 + 232) = v49;
    sub_26A51D0F8(v46, v69, &qword_2803B69F0);
    swift_storeEnumTagMultiPayload();
    sub_26A74B0D0();
    sub_26A74AEA8();

    v55 = v70;
    sub_26A84FDF8();
    sub_26A51D0F8(v55, v77, &qword_2803B69E8);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v56 = v79;
    sub_26A84FDF8();
    sub_26A4DBD10(v55, &qword_2803B69E8);
    sub_26A51D0F8(v56, v11, &qword_2803B6A20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v56, &qword_2803B6A20);
    v35 = v46;
    v41 = &qword_2803B69F0;
    return sub_26A4DBD10(v35, v41);
  }

  if (v25 == *MEMORY[0x277D62F38])
  {
LABEL_6:
    LOBYTE(v85) = 0;
    v83 = 0u;
    v84 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A551788();
    sub_26A84FDF8();
    v27 = __src[2];
    v28 = __src[1];
    *v11 = __src[0];
    *(v11 + 1) = v28;
    v11[32] = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
    sub_26A74AD90();
    sub_26A74B1B0();
    return sub_26A84FDF8();
  }

  v57 = v65;
  sub_26A74ACCC(a1, v65);
  v58 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v59 = swift_allocObject();
  sub_26A56BF04(v57, v59 + v58);
  *&v83 = sub_26A74AD30;
  *(&v83 + 1) = v59;
  v84 = 0uLL;
  LOBYTE(v85) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
  sub_26A551788();
  sub_26A84FDF8();
  v60 = __src[2];
  v61 = __src[1];
  *v11 = __src[0];
  *(v11 + 1) = v61;
  v11[32] = v60;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30);
  sub_26A74AD90();
  sub_26A74B1B0();
  sub_26A84FDF8();

  return (*(v21 + 8))(v24, v20);
}

unint64_t sub_26A74ABA4(uint64_t a1)
{
  v2 = sub_26A84BBF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_26A852248();

  v8 = 0xD00000000000001ELL;
  v9 = 0x800000026A88F270;
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_26A8517F8();
  MEMORY[0x26D663B00](v6);

  return v8;
}

uint64_t sub_26A74ACCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Separator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74AD30()
{
  v1 = *(type metadata accessor for Separator() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A74AA6C(v2);
}

unint64_t sub_26A74AD90()
{
  result = qword_2803B6A38;
  if (!qword_2803B6A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A20);
    sub_26A74AE1C();
    sub_26A74B044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A38);
  }

  return result;
}

unint64_t sub_26A74AE1C()
{
  result = qword_2803B6A40;
  if (!qword_2803B6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A18);
    sub_26A74AEA8();
    sub_26A74AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A40);
  }

  return result;
}

unint64_t sub_26A74AEA8()
{
  result = qword_2803B6A48;
  if (!qword_2803B6A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A28);
    sub_26A74AF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A48);
  }

  return result;
}

unint64_t sub_26A74AF34()
{
  result = qword_2803B6A50;
  if (!qword_2803B6A50)
  {
    sub_26A8512C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A50);
  }

  return result;
}

unint64_t sub_26A74AF8C()
{
  result = qword_2803B6A58;
  if (!qword_2803B6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69F8);
    sub_26A4DBCC8(&qword_2803B6A60, &qword_2803B6A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A58);
  }

  return result;
}

unint64_t sub_26A74B044()
{
  result = qword_2803B6A70;
  if (!qword_2803B6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69E8);
    sub_26A74B0D0();
    sub_26A74AEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A70);
  }

  return result;
}

unint64_t sub_26A74B0D0()
{
  result = qword_2803B6A78;
  if (!qword_2803B6A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69F0);
    sub_26A74AEA8();
    sub_26A74B15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A78);
  }

  return result;
}

unint64_t sub_26A74B15C()
{
  result = qword_2803B6A80;
  if (!qword_2803B6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A80);
  }

  return result;
}

unint64_t sub_26A74B1B0()
{
  result = qword_2803B6A88;
  if (!qword_2803B6A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A30);
    sub_26A551788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A88);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = (type metadata accessor for Separator() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  sub_26A4D82E8(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_26A74B38C()
{
  v1 = *(type metadata accessor for Separator() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A74ABA4(v2);
}

unint64_t sub_26A74B3EC()
{
  result = qword_2803B6A98;
  if (!qword_2803B6A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69D8);
    sub_26A74B4A4();
    sub_26A4DBCC8(&qword_2803B6AC0, &qword_2803B6AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A98);
  }

  return result;
}

unint64_t sub_26A74B4A4()
{
  result = qword_2803B6AA0;
  if (!qword_2803B6AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AA8);
    sub_26A74B528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AA0);
  }

  return result;
}

unint64_t sub_26A74B528()
{
  result = qword_2803B6AB0;
  if (!qword_2803B6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AB8);
    sub_26A74AD90();
    sub_26A74B1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AB0);
  }

  return result;
}

int *sub_26A74B5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26A84BD28();
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for SimpleItemVisualElementView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v49 - v11;
  v13 = [v3 image];
  if (v13)
  {
    v14 = v13;
    v52 = v5;
    v53 = a1;
    v54 = v2;
    v15 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    if ([v3 command])
    {
      MEMORY[0x26D663CE0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v51 = v66;
    }

    else
    {
      v51 = v15;
    }

    RFVisualProperty.asVisualProperty()();
    v18 = [v3 text_1];
    if (v18)
    {
      v19 = v18;
      *(&v64 + 1) = &type metadata for PartialText;
      v65 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v63 = swift_allocObject();
      RFTextProperty.asPartialText()(v63 + 16);
    }

    else
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
    }

    v20 = [v3 text_2];
    if (v20)
    {
      v21 = v20;
      *(&v61 + 1) = &type metadata for PartialText;
      v62 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v60 = swift_allocObject();
      RFTextProperty.asPartialText()(v60 + 16);
    }

    else
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
    }

    v22 = [v3 footnote];
    if (v22)
    {
      v23 = v22;
      *(&v58 + 1) = &type metadata for PartialText;
      v59 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v57 = swift_allocObject();
      RFTextProperty.asPartialText()(v57 + 16);
    }

    else
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
    }

    v24 = sub_26A7DC554([v3 horizontal_alignment]);
    v49 = v25;
    v50 = [v3 attribution_style];
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_162(KeyPath);
    v27 = v6[6];
    *(v8 + v27) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v28 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v28);
    v29 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v29);
    v30 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v30);
    v31 = v8 + v6[10];
    *v31 = swift_getKeyPath();
    v31[9] = 0;
    swift_unknownObjectWeakInit();
    *(v8 + v6[11]) = VisualProperty.asAnyView()();
    sub_26A5582C8(&v63, v55);
    if (v56)
    {
      v32 = OUTLINED_FUNCTION_0_85();
      v34 = v33(v32);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v34 = 0;
    }

    *(v8 + v6[12]) = v34;
    sub_26A5582C8(&v60, v55);
    if (v56)
    {
      v35 = OUTLINED_FUNCTION_0_85();
      v37 = v36(v35);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v37 = 0;
    }

    *(v8 + v6[13]) = v37;
    sub_26A5582C8(&v57, v55);
    if (v56)
    {
      v38 = OUTLINED_FUNCTION_0_85();
      v40 = v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v40 = 0;
    }

    *(v8 + v6[14]) = v40;
    if (v49)
    {
      v24 = sub_26A84FC08();

      v41 = OUTLINED_FUNCTION_2_87();
      v42(v41);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_2_87();
      v44(v43);
    }

    v45 = v53;
    sub_26A537648(&v57);
    *(v8 + v6[15]) = v24;
    *(v8 + v6[16]) = (*(&v64 + 1) | *(&v61 + 1)) == 0;
    sub_26A537648(&v63);
    *(v8 + v6[17]) = v50;
    sub_26A74BD54(v8, v12);
    sub_26A537648(&v60);
    v46 = swift_getKeyPath();
    sub_26A74BD54(v12, v45);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AD8);
    v47 = (v45 + result[9]);
    v48 = v51;
    *v47 = v46;
    v47[1] = v48;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v16 = v3;
    *(v16 + 8) = &unk_287B13A48;
    *(v16 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  return result;
}

unint64_t sub_26A74BC70()
{
  result = qword_2803B6AD0;
  if (!qword_2803B6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AD8);
    sub_26A74BCFC();
    sub_26A5C82B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AD0);
  }

  return result;
}

unint64_t sub_26A74BCFC()
{
  result = qword_2803B6AE0;
  if (!qword_2803B6AE0)
  {
    type metadata accessor for SimpleItemVisualElementView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AE0);
  }

  return result;
}

uint64_t sub_26A74BD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemVisualElementView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74BE00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ControlSliderView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A74BFE8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ControlSliderView() + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A74C13C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlSliderView();
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ControlSliderView.init<A, B>(slider:text1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = type metadata accessor for ControlSliderView();
  v15 = v14[6];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + v14[7];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v14[8];
  *(a7 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v26 = a6;
  v18 = sub_26A8511B8();
  swift_getWitnessTable();
  *a7 = View.eraseToAnyView()(v18);
  sub_26A4DBD68(a2, v25, &qword_2803A91B8);
  v19 = v26;
  if (v26)
  {
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v21 = (*(v20 + 8))(v19, v20);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    OUTLINED_FUNCTION_16_10();
    (*(v22 + 8))(a1, v18);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_26A4DBD10(a2, &qword_2803A91B8);
    OUTLINED_FUNCTION_16_10();
    (*(v24 + 8))(a1, v18);
    result = sub_26A4DBD10(v25, &qword_2803A91B8);
    v21 = 0;
  }

  a7[1] = v21;
  return result;
}

uint64_t type metadata accessor for ControlSliderView()
{
  result = qword_2803B6B00;
  if (!qword_2803B6B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A74C5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - v5;
  v6 = sub_26A84E1E8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = type metadata accessor for SliderView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for ControlSliderView();
  v22 = v21[6];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[7];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v41;
  v25 = v21[8];
  *(a2 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84B908();
  v26 = &v20[v13[6]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v20[v13[7]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  (*(v8 + 16))(v20, v12, v6);
  v28 = sub_26A84E1A8();
  if (v29)
  {
    sub_26A84E1D8();
    v31 = v30;
  }

  else
  {
    v31 = v28;
  }

  (*(v8 + 8))(v12, v6);
  v32 = &v20[v13[5]];
  *v32 = v31;
  *(v32 + 1) = 0;
  sub_26A74D864(v20, v17);
  sub_26A74D8C8(&qword_2803B6B50, type metadata accessor for SliderView);
  v33 = sub_26A851248();
  sub_26A74D910(v20);
  *a2 = v33;
  v34 = v42;
  sub_26A84B8E8();
  v35 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_26A84B918();
    OUTLINED_FUNCTION_46();
    (*(v36 + 8))(v24);
    result = sub_26A4DBD10(v34, &qword_2803AA838);
    v38 = 0;
  }

  else
  {
    v38 = TextProperty.asAnyView()();
    sub_26A84B918();
    OUTLINED_FUNCTION_46();
    (*(v39 + 8))(v24);
    OUTLINED_FUNCTION_16_10();
    result = (*(v40 + 8))(v34, v35);
  }

  a2[1] = v38;
  return result;
}

uint64_t ControlSliderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A74BE00(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A74BFE8();
  sub_26A74C13C(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4CE218();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AE8) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AF0);
  *(a1 + *(result + 36)) = 31;
  return result;
}

void *sub_26A74CC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v10 = 1;
  sub_26A74CD0C(a1, __src);
  memcpy(__dst, __src, 0x4AuLL);
  memcpy(v12, __src, 0x4AuLL);
  sub_26A4DBD68(__dst, &v7, &qword_2803B6B28);
  sub_26A4DBD10(v12, &qword_2803B6B28);
  memcpy(&v9[7], __dst, 0x4AuLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x51uLL);
}

uint64_t sub_26A74CD0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = *a1;
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 33) = 1;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 73) = 0;
  swift_retain_n();

  sub_26A4C24D0(KeyPath, 0);
  sub_26A4C24D0(v6, 0);

  sub_26A4C24D0(v8, 0);
  sub_26A4C24D0(v9, 0);

  sub_26A49035C(v8, 0);
  sub_26A49035C(v9, 0);

  sub_26A49035C(KeyPath, 0);

  return sub_26A49035C(v6, 0);
}

uint64_t sub_26A74CE7C(uint64_t a1)
{
  result = sub_26A74D8C8(&qword_2803B6AF8, MEMORY[0x277D62E50]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A74CEFC()
{
  sub_26A4E5E18();
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A74CFF8()
{
  result = qword_2803B6B10;
  if (!qword_2803B6B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AF0);
    sub_26A74D084();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B10);
  }

  return result;
}

unint64_t sub_26A74D084()
{
  result = qword_2803B6B18;
  if (!qword_2803B6B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AE8);
    sub_26A4DBCC8(&qword_2803B6B20, &qword_2803A9880);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B18);
  }

  return result;
}

uint64_t sub_26A74D168()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v53 = v2;
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v52 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = sub_26A84B918();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = type metadata accessor for ControlSliderView();
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC90);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC98);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v55 = v30 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v51 - v34;
  (*(v15 + 16))(v19, v0, v13, v33);
  v56 = v24;
  sub_26A74C5D4(v19, v24);
  v58 = v0;
  sub_26A84B8F8();
  v36 = v12;
  v37 = v54;
  sub_26A4DBDB4(v36, v9, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v37) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v39 = &v28[*(v25 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v41 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v39 + v40, 1, 1, v41);
    *v39 = KeyPath;
  }

  else
  {
    v42 = v52;
    v43 = *(v53 + 32);
    v43(v52, v9, v37);
    v44 = swift_getKeyPath();
    v45 = &v28[*(v25 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v43(v45 + v46, v42, v37);
    v47 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
    *v45 = v44;
  }

  sub_26A74D5D4(v56, v28);
  v48 = sub_26A84B8C8();
  sub_26A4DC864(v48);

  sub_26A4DBD10(v28, &qword_2803AAC90);
  sub_26A4DBD68(v35, v55, &qword_2803AAC98);
  sub_26A74D638();
  v49 = sub_26A851248();
  sub_26A4DBD10(v35, &qword_2803AAC98);
  return v49;
}

uint64_t sub_26A74D5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A74D638()
{
  result = qword_2803B6B30;
  if (!qword_2803B6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC98);
    sub_26A74D6F0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B30);
  }

  return result;
}

unint64_t sub_26A74D6F0()
{
  result = qword_2803B6B38;
  if (!qword_2803B6B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC88);
    sub_26A74D77C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B38);
  }

  return result;
}

unint64_t sub_26A74D77C()
{
  result = qword_2803B6B40;
  if (!qword_2803B6B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC90);
    sub_26A74D8C8(&qword_2803B6B48, type metadata accessor for ControlSliderView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B40);
  }

  return result;
}

uint64_t sub_26A74D864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SliderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74D8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A74D910(uint64_t a1)
{
  v2 = type metadata accessor for SliderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A74D970(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84E4D8();
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v56 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  v10 = sub_26A84B1D8();
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v12 = sub_26A84B318();
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_26A84B548();
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  v25 = sub_26A74E490(v2);
  if (v26)
  {
    v54 = v25;
    v55 = a1;
    v27 = sub_26A74E490(v2);
    v52 = v28;
    v53 = v27;
    v29 = [v2 primary_color];
    if (v29)
    {
      v30 = v29;
      sub_26A68D85C();
      Color.init(color:)();

      v31 = sub_26A84DFA8();
      v32 = 0;
    }

    else
    {
      v31 = sub_26A84DFA8();
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v17, v32, 1, v31);
    sub_26A540550([v2 symbol_rendering_mode]);
    sub_26A7EA53C([v2 image_style]);
    sub_26A84B238();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    sub_26A7D61A8([v2 vibrancy]);
    sub_26A84B558();
    v43 = v55;
    (*(v20 + 32))(v55, v24, v18);
    v44 = *MEMORY[0x277D62C58];
    v45 = sub_26A84B248();
    (*(*(v45 - 8) + 104))(v43, v44, v45);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v33 = sub_26A851E98();
    LOBYTE(v49) = 2;
    sub_26A7A6F40(v33, 1, "SnippetUI/RFSymbolImage+ImageElement.swift", 42, 2, 39, "asLoadingImage()", 16, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_26A84B248();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  }
}

void sub_26A74DD58(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_26A84E4D8();
  OUTLINED_FUNCTION_15();
  v104 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v102 = v7 - v6;
  v103 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v101 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v99 = v11 - v10;
  v100 = sub_26A84B318();
  OUTLINED_FUNCTION_15();
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v97 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  v17 = OUTLINED_FUNCTION_79(v16);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v96 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v90 - v23;
  v25 = sub_26A84DFA8();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v90 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  v36 = OUTLINED_FUNCTION_79(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v90 - v41;
  v43 = sub_26A74E490(v2);
  if (v44)
  {
    v92 = v43;
    v93 = v44;
    v95 = v3;
    sub_26A84B238();
    OUTLINED_FUNCTION_81();
    v94 = v45;
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
    v49 = [v2 background_color];
    if (v49)
    {
      v50 = v49;
      sub_26A68D85C();
      Color.init(color:)();

      (*(v27 + 32))(v34, v31, v25);
      (*(v27 + 16))(v24, v34, v25);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v25);
      sub_26A84B2B8();
      OUTLINED_FUNCTION_81();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      sub_26A84B218();
      (*(v27 + 8))(v34, v25);
      sub_26A4E2544(v42, &qword_2803B01F0);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v94);
      sub_26A74E4F4(v39, v42);
    }

    v94 = v42;
    v91 = sub_26A74E490(v2);
    v61 = [v2 primary_color];
    if (v61)
    {
      v62 = v61;
      sub_26A68D85C();
      v63 = v96;
      Color.init(color:)();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v63 = v96;
    }

    __swift_storeEnumTagSinglePayload(v63, v64, 1, v25);
    v71 = [v2 symbol_rendering_mode];
    v72 = v97;
    sub_26A540550(v71);
    v73 = [v2 image_style];
    v74 = v99;
    sub_26A7EA53C(v73);
    [v2 punches_through_background];
    v75 = [v2 vibrancy];
    v76 = v102;
    sub_26A7D61A8(v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860);
    v77 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v78 = v63;
    v80 = v79;
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26A8570D0;
    (*(v80 + 104))(v82 + v81, *MEMORY[0x277D62A28], v77);
    sub_26A67BF28(v82);
    v83 = v94;
    sub_26A84B568();

    (*(v104 + 8))(v76, v95);
    (*(v101 + 8))(v74, v103);
    (*(v98 + 8))(v72, v100);
    sub_26A4E2544(v78, &qword_2803AD038);
    sub_26A4E2544(v83, &qword_2803B01F0);
    sub_26A84B718();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v65 = sub_26A851E98();
    LOBYTE(v88) = 2;
    sub_26A7A76B0(v65, 1, "SnippetUI/RFSymbolImage+ImageElement.swift", 42, 2, 16, "asImageElement()", 16, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    sub_26A84B718();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  }
}

uint64_t sub_26A74E490(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A74E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74E564(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_41();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_35_9();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_26A851538();
}

uint64_t sub_26A74E6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A852068();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_26A74E738@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentedWithSmartDialogText.getter();
  *a1 = result & 1;
  return result;
}

void *DisambiguationStandardView.init(header:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a8;
  v17 = type metadata accessor for DisambiguationStandardView();
  v18 = a9 + v17[13];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a9 + v17[14];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v17[15];
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v21 = a9 + v20;
  v22 = xmmword_2803D2028;
  v23 = qword_2803D2038;
  v24 = unk_2803D2040;
  v25 = qword_2803D2048;

  sub_26A6AEE74(__src);
  result = memcpy(v21, __src, 0xC0uLL);
  *(v21 + 24) = v25;
  *(v21 + 200) = v22;
  *(v21 + 27) = v23;
  *(v21 + 28) = v24;
  *(v21 + 29) = v25;
  *(a9 + v17[18]) = 0x4024000000000000;
  v27 = (a9 + v17[16]);
  *v27 = a1;
  v27[1] = a2;
  v28 = (a9 + v17[17]);
  *v28 = a3;
  v28[1] = a4;
  return result;
}

uint64_t sub_26A74E950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A755FC4(v2, &v14 - v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26A74EB50(uint64_t a1)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_25_21();
  if ((v3 & 1) == 0)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v5 = OUTLINED_FUNCTION_4_63();
    v6(v5);
    return v8;
  }

  return a1;
}

uint64_t sub_26A74EC54(char a1)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_25_21();
  if (v3 != 1)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v5 = OUTLINED_FUNCTION_4_63();
    v6(v5);
    a1 = v8;
  }

  return a1 & 1;
}

void DisambiguationStandardView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v184 = v0;
  v2 = v1;
  v188 = v3;
  v193 = *(v1 + 16);
  v195 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  sub_26A84F4F8();
  sub_26A84F4F8();
  v183 = v2;
  v194 = *(v2 + 3);
  v200 = *(v2 + 5);
  v4 = type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88);
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  v192 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A851238();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_31_16();
  v5 = sub_26A84F4F8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0);
  v206 = v6;
  v196 = type metadata accessor for OuterPlatterBackground(255);
  OUTLINED_FUNCTION_28_10();
  v7 = sub_26A84F4F8();
  v240[72] = OUTLINED_FUNCTION_7_31();
  v240[73] = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_19_24();
  WitnessTable = swift_getWitnessTable();
  v9 = OUTLINED_FUNCTION_21_27();
  v240[70] = WitnessTable;
  v240[71] = v9;
  v10 = swift_getWitnessTable();
  v240[0] = MEMORY[0x277CE1350];
  v240[1] = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_18_28();
  v11 = OUTLINED_FUNCTION_53_5();
  v205 = v11;
  OUTLINED_FUNCTION_17_28();
  v189 = sub_26A755CD0();
  v240[68] = v10;
  v240[69] = v189;
  v12 = swift_getWitnessTable();
  v203 = v7;
  v204 = v5;
  v240[0] = v5;
  v240[1] = v6;
  v240[2] = v7;
  v197 = v12;
  v198 = v10;
  v240[3] = v10;
  v240[4] = v11;
  v240[5] = v12;
  OUTLINED_FUNCTION_15_32();
  v186 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v172 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v171 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v170 = &v170 - v20;
  v199 = v4;
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  v201 = v21;
  v202 = sub_26A84F4F8();
  v173 = OpaqueTypeMetadata2;
  v22 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v175 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v174 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  v179 = &v170 - v28;
  sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v177 = v30;
  v178 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_41();
  v176 = v32 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  sub_26A84F4F8();
  v33 = sub_26A4D7DCC();
  v240[66] = v200;
  v240[67] = v33;
  v34 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_42();
  v35 = sub_26A4D7DCC();
  v240[64] = v34;
  v240[65] = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_26A4D7DCC();
  v240[62] = v36;
  v240[63] = v37;
  v200 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_26A69C384();
  v240[60] = v38;
  v240[61] = v39;
  OUTLINED_FUNCTION_128();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_58();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240);
  OUTLINED_FUNCTION_8_58();
  v40 = sub_26A84F4F8();
  v41 = sub_26A84F4F8();
  OUTLINED_FUNCTION_0_86();
  v42 = swift_getWitnessTable();
  v43 = v22;
  v44 = sub_26A4D7DCC();
  v240[58] = v42;
  v240[59] = v44;
  v45 = swift_getWitnessTable();
  v240[56] = v45;
  v240[57] = v189;
  v46 = swift_getWitnessTable();
  v240[0] = v40;
  v240[1] = v206;
  v240[2] = v41;
  v195 = v46;
  v196 = v45;
  v240[3] = v45;
  v240[4] = v205;
  v240[5] = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A852068();
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_58();
  v48 = type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448);
  OUTLINED_FUNCTION_150();
  v192 = v48;
  v193 = sub_26A84F4F8();
  v49 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v181 = v50;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_82();
  v180 = v52;
  v53 = v47;
  v189 = *(v47 - 8);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  v57 = (v55 - v56);
  MEMORY[0x28223BE20](v58);
  v182 = &v170 - v59;
  sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v185 = v61;
  v186 = v60;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_82();
  v194 = v63;
  v64 = sub_26A74EB50(v183);
  v65 = sub_26A61B05C(v64, &unk_287B13068);
  v187 = v43;
  v190 = v41;
  v191 = v40;
  if (v65)
  {
    v66 = OUTLINED_FUNCTION_30_13();
    sub_26A7503C8(v66, v67);
    v240[0] = v40;
    v240[1] = v206;
    v240[2] = v41;
    v240[3] = v196;
    v240[4] = v205;
    v240[5] = v195;
    OUTLINED_FUNCTION_3_78();
    v183 = v68;
    v69 = OUTLINED_FUNCTION_53_5();
    v70 = v182;
    v71 = v53;
    sub_26A80757C(v57);
    v72 = *(v189 + 8);
    v189 += 8;
    v184 = v72;
    v72(v57, v53);
    sub_26A80757C(v70);
    v73 = swift_getWitnessTable();
    OUTLINED_FUNCTION_17_5();
    v74 = sub_26A4D7DCC();
    v215 = v73;
    v216 = v74;
    v75 = swift_getWitnessTable();
    v76 = v180;
    OUTLINED_FUNCTION_1_30();
    sub_26A801234();
    v213 = v69;
    v214 = v75;
    swift_getWitnessTable();
    v77 = swift_getWitnessTable();
    v78 = sub_26A4D6BF8();
    v211 = v77;
    v212 = v78;
    v209 = swift_getWitnessTable();
    v210 = v200;
    v79 = swift_getWitnessTable();
    OUTLINED_FUNCTION_7_60();
    v240[3] = v198;
    v240[4] = v205;
    OUTLINED_FUNCTION_47_3(v197);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v207 = v79;
    v208 = OpaqueTypeConformance2;
    swift_getWitnessTable();
    sub_26A801234();
    (*(v181 + 8))(v76, v49);
    v81 = OUTLINED_FUNCTION_1_30();
    v82 = v184;
    (v184)(v81);
    v82(v182, v71);
  }

  else
  {
    v182 = v47;
    v189 = v49;
    v83 = v176;
    OUTLINED_FUNCTION_30_13();
    sub_26A74E950(v84);
    v85 = sub_26A84F388();
    (*(v177 + 8))(v83, v178);
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_30_13();
      sub_26A750BB4(v86);
      memcpy(v239, v240, 0x41uLL);
      v87 = swift_getWitnessTable();
      OUTLINED_FUNCTION_17_5();
      v88 = sub_26A4D7DCC();
      v225 = v87;
      v226 = v88;
      OUTLINED_FUNCTION_6_60();
      v89 = v193;
      v90 = swift_getWitnessTable();
      sub_26A80757C(v239);
      memcpy(v234, v239, 0x41uLL);
      v91 = *(v89 - 8);
      v92 = *(v91 + 8);
      v92(v234, v89);
      v93 = v92;
      memcpy(v235, v233, 0x41uLL);
      v94 = OUTLINED_FUNCTION_46_4();
      memcpy(v94, v95, 0x41uLL);
      sub_26A80757C(v240);
      memcpy(v236, v240, 0x41uLL);
      v96 = v205;
      v97 = *(v91 + 16);
      v97(v239, v235, v89);
      v93(v236, v89);
      v183 = v93;
      v184 = (v91 + 8);
      memcpy(v237, v228, 0x41uLL);
      memcpy(v240, v228, 0x41uLL);
      v97(v239, v237, v89);
      v239[0] = v191;
      v239[1] = v206;
      v239[2] = v190;
      v239[3] = v196;
      v239[4] = v96;
      v239[5] = v195;
      OUTLINED_FUNCTION_3_78();
      v179 = v98;
      v99 = swift_getOpaqueTypeConformance2();
      v100 = v180;
      sub_26A8012F4();
      memcpy(v238, v240, 0x41uLL);
      v93(v238, v89);
      v223 = v99;
      v224 = v90;
      OUTLINED_FUNCTION_16_28();
      v101 = v189;
      swift_getWitnessTable();
      v102 = swift_getWitnessTable();
      v103 = sub_26A4D6BF8();
      v221 = v102;
      v222 = v103;
      v219 = swift_getWitnessTable();
      v220 = v200;
      v104 = swift_getWitnessTable();
      OUTLINED_FUNCTION_7_60();
      v240[3] = v198;
      v240[4] = v96;
      OUTLINED_FUNCTION_47_3(v197);
      v105 = swift_getOpaqueTypeConformance2();
      v217 = v104;
      v218 = v105;
      swift_getWitnessTable();
      sub_26A801234();
      (*(v181 + 8))(v100, v101);
      memcpy(v239, v228, 0x41uLL);
      v106 = v183;
      v183(v239, v89);
      v107 = OUTLINED_FUNCTION_46_4();
      memcpy(v107, v108, 0x41uLL);
      v106(v240, v89);
    }

    else
    {
      v109 = OUTLINED_FUNCTION_30_13();
      v110 = sub_26A74EC54(v109);
      v111 = v205;
      if (v110)
      {
        v112 = OUTLINED_FUNCTION_30_13();
        sub_26A750F4C(v112, v113);
        memcpy(v239, v240, 0xE9uLL);
        OUTLINED_FUNCTION_0_86();
        v114 = v111;
        v115 = swift_getWitnessTable();
        v116 = sub_26A4D6BF8();
        v231 = v115;
        v232 = v116;
        OUTLINED_FUNCTION_6_60();
        v229 = swift_getWitnessTable();
        v230 = v200;
        v117 = v202;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C(v118);
        memcpy(v234, v239, 0xE9uLL);
        v119 = *(v117 - 8);
        v120 = *(v119 + 8);
        v120(v234, v117);
        memcpy(v235, v233, 0xE9uLL);
        v121 = OUTLINED_FUNCTION_46_4();
        memcpy(v121, v122, 0xE9uLL);
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C(v123);
        memcpy(v236, v240, 0xE9uLL);
        v124 = *(v119 + 16);
        v124(v239, v235, v117);
        v120(v236, v117);
        memcpy(v237, v228, 0xE9uLL);
        memcpy(v227, v228, sizeof(v227));
        v124(v240, v237, v117);
        OUTLINED_FUNCTION_7_60();
        v125 = v197;
        v126 = v198;
        v240[3] = v198;
        v240[4] = v114;
        v240[5] = v197;
        OUTLINED_FUNCTION_3_78();
        OUTLINED_FUNCTION_53_5();
        sub_26A801234();
        memcpy(v238, v227, 0xE9uLL);
        v120(v238, v117);
        memcpy(v239, v228, 0xE9uLL);
        v120(v239, v117);
        v127 = OUTLINED_FUNCTION_46_4();
        memcpy(v127, v128, 0xE9uLL);
        v120(v240, v117);
      }

      else
      {
        v129 = v171;
        v130 = OUTLINED_FUNCTION_30_13();
        sub_26A751360(v130, v131);
        OUTLINED_FUNCTION_7_60();
        v125 = v197;
        v240[3] = v198;
        v240[4] = v111;
        v240[5] = v197;
        OUTLINED_FUNCTION_3_78();
        OUTLINED_FUNCTION_53_5();
        v132 = v170;
        v133 = v173;
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C(v134);
        v135 = *(v172 + 8);
        v135(v129, v133);
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C(v136);
        OUTLINED_FUNCTION_0_86();
        v137 = swift_getWitnessTable();
        v138 = sub_26A4D6BF8();
        v240[54] = v137;
        v240[55] = v138;
        OUTLINED_FUNCTION_19_24();
        v240[52] = swift_getWitnessTable();
        v240[53] = v200;
        swift_getWitnessTable();
        sub_26A8012F4();
        v135(v129, v133);
        v135(v132, v133);
        v126 = v198;
      }

      OUTLINED_FUNCTION_0_86();
      v189 = v139;
      v140 = swift_getWitnessTable();
      v141 = sub_26A4D6BF8();
      v240[50] = v140;
      v240[51] = v141;
      OUTLINED_FUNCTION_6_60();
      v184 = v142;
      v240[48] = swift_getWitnessTable();
      v240[49] = v200;
      v143 = swift_getWitnessTable();
      v240[0] = v204;
      v144 = v205;
      v145 = v206;
      v240[1] = v206;
      v240[2] = v203;
      v240[3] = v126;
      v240[4] = v205;
      v240[5] = v125;
      v146 = swift_getOpaqueTypeConformance2();
      v240[46] = v143;
      v240[47] = v146;
      v147 = v187;
      swift_getWitnessTable();
      v148 = v174;
      v149 = v179;
      sub_26A80757C(v179);
      v240[0] = v191;
      v240[1] = v145;
      v240[2] = v190;
      v240[3] = v196;
      v240[4] = v144;
      OUTLINED_FUNCTION_47_3(v195);
      v150 = swift_getOpaqueTypeConformance2();
      v151 = swift_getWitnessTable();
      OUTLINED_FUNCTION_17_5();
      v152 = sub_26A4D7DCC();
      v240[44] = v151;
      v240[45] = v152;
      v153 = swift_getWitnessTable();
      v240[42] = v150;
      v240[43] = v153;
      swift_getWitnessTable();
      sub_26A8012F4();
      v154 = *(v175 + 8);
      v154(v148, v147);
      v154(v149, v147);
    }
  }

  v240[0] = v191;
  v155 = v205;
  v156 = v206;
  v240[1] = v206;
  v240[2] = v190;
  v240[3] = v196;
  v240[4] = v205;
  v240[5] = v195;
  v157 = swift_getOpaqueTypeConformance2();
  v158 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_5();
  v159 = sub_26A4D7DCC();
  v240[40] = v158;
  v240[41] = v159;
  v160 = swift_getWitnessTable();
  v240[38] = v157;
  v240[39] = v160;
  OUTLINED_FUNCTION_16_28();
  v161 = swift_getWitnessTable();
  v162 = swift_getWitnessTable();
  v163 = sub_26A4D6BF8();
  v240[36] = v162;
  v240[37] = v163;
  v240[34] = swift_getWitnessTable();
  v240[35] = v200;
  v164 = swift_getWitnessTable();
  v240[0] = v204;
  v240[1] = v156;
  v240[2] = v203;
  v240[3] = v198;
  v240[4] = v155;
  OUTLINED_FUNCTION_47_3(v197);
  v165 = swift_getOpaqueTypeConformance2();
  v240[32] = v164;
  v240[33] = v165;
  v166 = swift_getWitnessTable();
  v240[30] = v161;
  v240[31] = v166;
  swift_getWitnessTable();
  v167 = OUTLINED_FUNCTION_128();
  sub_26A80757C(v167);
  v168 = OUTLINED_FUNCTION_128();
  v169(v168);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7503C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = v52 - v3;
  v62 = *(a1 - 1);
  *&v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0);
  v61 = a1[3];
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  v6 = sub_26A84F4F8();
  v59 = a1[5];
  v7 = v59;
  v8 = sub_26A4D7DCC();
  v75[21] = v7;
  v75[22] = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_26A4D7DCC();
  v75[19] = WitnessTable;
  v75[20] = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_26A4D7DCC();
  v75[17] = v11;
  v75[18] = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_26A69C384();
  v75[15] = v13;
  v75[16] = v14;
  v52[4] = v6;
  v52[5] = swift_getWitnessTable();
  v15 = type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240);
  v52[3] = v15;
  v16 = sub_26A84F4F8();
  type metadata accessor for OuterPlatterBackground(255);
  v17 = sub_26A84F4F8();
  v18 = swift_getWitnessTable();
  v52[2] = v18;
  v19 = sub_26A4D7DCC();
  v75[13] = v18;
  v75[14] = v19;
  v20 = swift_getWitnessTable();
  v54 = v20;
  v75[0] = MEMORY[0x277CE1350];
  v75[1] = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = OpaqueTypeConformance2;
  v22 = sub_26A755CD0();
  v75[11] = v20;
  v75[12] = v22;
  v52[1] = v17;
  v23 = swift_getWitnessTable();
  v75[0] = v16;
  v75[1] = v68;
  v75[2] = v17;
  v75[3] = v20;
  v75[4] = OpaqueTypeConformance2;
  v75[5] = v23;
  v24 = v23;
  v56 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  v57 = OpaqueTypeMetadata2;
  v58 = v26;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52[0] = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v55 = v52 - v30;
  v31 = v62;
  v32 = v60;
  (*(v62 + 16))(v60, v64, a1, v29);
  v33 = v31;
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *&v36 = a1[2];
  *(&v36 + 1) = v61;
  *&v37 = a1[4];
  *(&v37 + 1) = v59;
  v63 = v37;
  v64 = v36;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  (*(v33 + 32))(v35 + v34, v32, a1);
  swift_checkMetadataState();
  ComponentStack.init(content:)(sub_26A755AD8, v35, v74);
  v38 = _UISolariumEnabled();
  v39 = 0x4000000000000000;
  if (v38)
  {
    v39 = 0;
  }

  v73[0] = v39;
  LOBYTE(v73[1]) = 0;
  v40 = swift_checkMetadataState();
  View.lastComponentBottomSpacing(_:)();
  v72[0] = v74[0];
  v72[1] = v74[1];
  v72[2] = v74[2];
  v72[3] = v74[3];
  (*(*(v40 - 8) + 8))(v72, v40);
  memcpy(v71, v75, 0x51uLL);
  sub_26A851408();
  v41 = v65;
  sub_26A84FB98();
  v69 = v64;
  v70 = v63;
  v42 = swift_checkMetadataState();
  v43 = swift_checkMetadataState();
  v44 = v68;
  v45 = v53;
  v46 = v54;
  sub_26A850CB8();
  (*(v66 + 8))(v41, v44);
  memcpy(v73, v71, 0x51uLL);
  (*(*(v42 - 8) + 8))(v73, v42);
  v71[0] = v42;
  v71[1] = v44;
  v71[2] = v43;
  v71[3] = v46;
  v71[4] = v45;
  v71[5] = v24;
  swift_getOpaqueTypeConformance2();
  v47 = v55;
  v48 = v52[0];
  v49 = v57;
  sub_26A80757C(v52[0]);
  v50 = *(v58 + 8);
  v50(v48, v49);
  sub_26A80757C(v47);
  return (v50)(v47, v49);
}

uint64_t sub_26A750BB4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v4);
  v6 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v7 + 24) = v14;
  *(v7 + 40) = *(a1 + 40);
  (*(v2 + 32))(v7 + v6, v5, a1);
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A852068();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  swift_getWitnessTable();
  ComponentStack.init(content:)(sub_26A755AFC, v7, __dst);
  v8 = type metadata accessor for ComponentStack();
  WitnessTable = swift_getWitnessTable();
  View.hideConversationAreaKeyline(_:)();
  v19[0] = *__dst;
  v19[1] = *&__dst[16];
  v19[2] = *&__dst[32];
  v19[3] = *&__dst[48];
  (*(*(v8 - 8) + 8))(v19, v8);
  memcpy(v17, __src, 0x41uLL);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448);
  v10 = sub_26A84F4F8();
  v11 = sub_26A4D7DCC();
  v15 = WitnessTable;
  v16 = v11;
  swift_getWitnessTable();
  sub_26A80757C(v17);
  memcpy(__dst, v17, sizeof(__dst));
  v12 = *(*(v10 - 8) + 8);
  v12(__dst, v10);
  memcpy(v17, v18, 0x41uLL);
  sub_26A80757C(v17);
  memcpy(__src, v17, 0x41uLL);
  return (v12)(__src, v10);
}

uint64_t sub_26A750F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v6 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v5);
  v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = a1[2];
  v10 = a1[3];
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v11 = a1[4];
  v12 = a1[5];
  *(v8 + 4) = v11;
  *(v8 + 5) = v12;
  (*(v3 + 32))(&v8[v7], v6, a1);
  ComponentStack.init(content:)(sub_26A755BA4, v8, v33);
  v13 = sub_26A751CD4(v25[0], v9, v10, v11, v12);
  v15 = v14;
  v16 = type metadata accessor for ComponentStack();
  WitnessTable = swift_getWitnessTable();
  sub_26A69C17C(v13, v15, v16, WitnessTable);

  v30[0] = v33[0];
  v30[1] = v33[1];
  v30[2] = v33[2];
  v30[3] = v33[3];
  (*(*(v16 - 8) + 8))(v30, v16);
  memcpy(v29, v32, 0xD9uLL);
  swift_getKeyPath();
  v26[0] = 1;
  v18 = sub_26A84F4F8();
  v19 = sub_26A4D6BF8();
  v27 = WitnessTable;
  v28 = v19;
  v20 = swift_getWitnessTable();
  sub_26A8509A8();

  memcpy(v31, v29, 0xD9uLL);
  (*(*(v18 - 8) + 8))(v31, v18);
  memcpy(v26, v33, 0xE9uLL);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  v21 = sub_26A84F4F8();
  v22 = sub_26A4D7DCC();
  v25[2] = v20;
  v25[3] = v22;
  swift_getWitnessTable();
  sub_26A80757C(v26);
  memcpy(v32, v26, 0xE9uLL);
  v23 = *(*(v21 - 8) + 8);
  v23(v32, v21);
  memcpy(v26, v29, 0xE9uLL);
  sub_26A80757C(v26);
  memcpy(v33, v26, 0xE9uLL);
  return (v23)(v33, v21);
}

uint64_t sub_26A751360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0);
  v60 = v3;
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v77 = &v49 - v4;
  v75 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v75);
  v76 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  *&v71 = a1[2];
  sub_26A84F4F8();
  sub_26A84F4F8();
  v70 = a1[3];
  *&v69 = a1[5];
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88);
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  v66 = sub_26A851528();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_26A851238();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v49 - v7;
  v8 = sub_26A84F4F8();
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v9;
  v61 = v8;
  v10 = sub_26A84F4F8();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v49 - v11;
  type metadata accessor for OuterPlatterBackground(255);
  v12 = v10;
  v13 = sub_26A84F4F8();
  v51 = swift_getWitnessTable();
  v95 = v51;
  v96 = MEMORY[0x277CDF918];
  v14 = swift_getWitnessTable();
  v53 = v14;
  v15 = sub_26A4D7DCC();
  v93 = v14;
  v94 = v15;
  v57 = v12;
  v16 = swift_getWitnessTable();
  v59 = v16;
  v99 = MEMORY[0x277CE1350];
  v100 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeConformance2;
  v18 = sub_26A755CD0();
  v91 = v16;
  v92 = v18;
  v52 = v13;
  v19 = swift_getWitnessTable();
  v99 = v12;
  v100 = v3;
  v101 = v13;
  v102 = v16;
  v103 = OpaqueTypeConformance2;
  v104 = v19;
  v20 = v19;
  v62 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v63 = OpaqueTypeMetadata2;
  v64 = v22;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v50 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v54 = &v49 - v25;
  sub_26A84FC08();
  v26 = v74;
  sub_26A74ED5C(v97, a1);
  *&v27 = a1[4];
  *(&v27 + 1) = v69;
  v69 = v27;
  *&v28 = v71;
  *(&v28 + 1) = v70;
  v71 = v28;
  v82 = v28;
  v83 = v27;
  v84 = v26;
  v29 = v56;
  sub_26A851228();
  sub_26A74ED5C(&v98, a1);
  v30 = v55;
  sub_26A850C48();
  (*(v67 + 8))(v29, v6);
  sub_26A74ED5C(&v99, a1);
  v31 = v105;
  v32 = *(v75 + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_26A84FB88();
  v35 = v76;
  (*(*(v34 - 8) + 104))(&v76[v32], v33, v34);
  *v35 = v31;
  v35[1] = v31;
  sub_26A755CD0();
  v85 = sub_26A851358();
  sub_26A755D14();
  v36 = v61;
  sub_26A6F43B0();
  v37 = v68;
  sub_26A850CC8();

  (*(v72 + 8))(v30, v36);
  sub_26A851408();
  v38 = v77;
  sub_26A84FB98();
  v80 = v71;
  v81 = v69;
  v39 = swift_checkMetadataState();
  v41 = v57;
  v40 = v58;
  v43 = v59;
  v42 = v60;
  sub_26A850CB8();
  (*(v78 + 8))(v38, v42);
  (*(v73 + 8))(v37, v41);
  v85 = v41;
  v86 = v42;
  v87 = v39;
  v88 = v43;
  v89 = v40;
  v90 = v20;
  swift_getOpaqueTypeConformance2();
  v44 = v54;
  v45 = v50;
  v46 = v63;
  sub_26A80757C(v50);
  v47 = *(v64 + 8);
  v47(v45, v46);
  sub_26A80757C(v44);
  return (v47)(v44, v46);
}

uint64_t (*sub_26A751CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(__int16 *a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for DisambiguationStandardView();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_26A755C20;
}

uint64_t sub_26A751E30(__int16 *a1)
{
  v1 = *(a1 + 1);
  v4 = *a1;
  v5 = v1;
  type metadata accessor for DisambiguationStandardView();
  sub_26A751E8C(&v4);
  return v2 & 1;
}

double sub_26A751E8C(_BYTE *a1)
{
  if (*a1 == 74 && a1[1] == 74)
  {
    return *&qword_2803D2010;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_26A751ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v103 = a6;
  v100 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v100);
  v99 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InnerPlatterBackground(0);
  MEMORY[0x28223BE20](v12);
  v92 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&__dst[0] = a2;
  *(&__dst[0] + 1) = a3;
  v104 = a4;
  *&__dst[1] = a4;
  *(&__dst[1] + 1) = a5;
  v14 = type metadata accessor for DisambiguationStandardView();
  v84 = *(v14 - 8);
  v82 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v83 = &v79 - v15;
  v89 = a3;
  v90 = a5;
  v16 = type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  v88 = v16;
  v91 = sub_26A84F4F8();
  v93 = v12;
  v17 = sub_26A84F4F8();
  v95 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v94 = &v79 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88);
  v96 = v17;
  v102 = sub_26A84F4F8();
  v97 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = &v79 - v21;
  v22 = *(a2 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  v26 = sub_26A84F4F8();
  v87 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v79 - v27;
  v107 = sub_26A84F4F8();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v108 = &v79 - v32;
  (*(a1 + *(v14 + 64)))(v31);
  if (qword_2803A8CB8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for SeparatorsConfig(0);
  v34 = __swift_project_value_buffer(v33, qword_2803D1E50);
  v35 = v104;
  sub_26A605E84(v34);
  (*(v22 + 8))(v25, a2);
  sub_26A850278();
  v80 = v14;
  v81 = a1;
  v36 = a1;
  sub_26A74ED5C(v114, v14);
  v37 = sub_26A4D7DCC();
  v113[12] = v35;
  v113[13] = v37;
  WitnessTable = swift_getWitnessTable();
  v39 = v106;
  sub_26A850C58();
  v87[1](v28, v26);
  v113[10] = WitnessTable;
  v113[11] = MEMORY[0x277CDF918];
  v40 = v107;
  v85 = swift_getWitnessTable();
  sub_26A80757C(v39);
  v41 = *(v105 + 8);
  v86 = v105 + 8;
  v87 = v41;
  (v41)(v39, v40);
  v43 = v83;
  v42 = v84;
  v44 = v80;
  (*(v84 + 16))(v83, v36, v80);
  v45 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = a2;
  v47 = v90;
  v48 = v104;
  *(v46 + 3) = v89;
  *(v46 + 4) = v48;
  *(v46 + 5) = v47;
  (*(v42 + 32))(&v46[v45], v43, v44);
  ComponentStack.init(content:)(sub_26A756178, v46, __dst);
  swift_getKeyPath();
  LOBYTE(v112[0]) = 1;
  v49 = v88;
  v50 = swift_getWitnessTable();
  sub_26A8509A8();

  v115[0] = __dst[0];
  v115[1] = __dst[1];
  v115[2] = __dst[2];
  v115[3] = __dst[3];
  (*(*(v49 - 8) + 8))(v115, v49);
  memcpy(v112, v113, 0x49uLL);
  KeyPath = swift_getKeyPath();
  v52 = v92;
  *v92 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v53 = v93;
  v54 = v52 + *(v93 + 20);
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = v52 + *(v53 + 24);
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = sub_26A4D7DCC();
  v111[6] = v50;
  v111[7] = v56;
  v57 = v91;
  v58 = swift_getWitnessTable();
  v59 = v94;
  MEMORY[0x26D662ED0](v52, v57, v53, v58);
  sub_26A755F70();
  memcpy(__dst, v112, 0x49uLL);
  (*(*(v57 - 8) + 8))(__dst, v57);
  sub_26A74ED5C(v113, v44);
  v60 = v113[6];
  v61 = *(v100 + 20);
  v62 = *MEMORY[0x277CE0118];
  v63 = sub_26A84FB88();
  v64 = v99;
  (*(*(v63 - 8) + 104))(&v99[v61], v62, v63);
  *v64 = v60;
  v64[1] = v60;
  sub_26A755CD0();
  v112[0] = sub_26A851358();
  v65 = sub_26A755CD0();
  v111[4] = v58;
  v111[5] = v65;
  v66 = v96;
  v67 = swift_getWitnessTable();
  sub_26A755D14();
  sub_26A6F43B0();
  v68 = v101;
  sub_26A850CC8();

  (*(v95 + 8))(v59, v66);
  v69 = sub_26A4D7DCC();
  v111[2] = v67;
  v111[3] = v69;
  v70 = v102;
  v71 = swift_getWitnessTable();
  v72 = v98;
  sub_26A80757C(v68);
  v73 = v97;
  v74 = *(v97 + 8);
  v74(v68, v70);
  v75 = v106;
  v76 = v107;
  (*(v105 + 16))(v106, v108, v107);
  v112[0] = v75;
  (*(v73 + 16))(v68, v72, v70);
  v112[1] = v68;
  v111[0] = v76;
  v111[1] = v70;
  v109 = v85;
  v110 = v71;
  sub_26A74E564(v112, 2, v111);
  v74(v72, v70);
  v77 = v87;
  (v87)(v108, v76);
  v74(v68, v70);
  return (v77)(v75, v76);
}

uint64_t sub_26A752AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_6_0();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v15;
  v16 = type metadata accessor for DisambiguationStandardView();
  (*(a1 + *(v16 + 68)))();
  sub_26A80757C(v8);
  v17 = *(v5 + 8);
  v17(v8, a3);
  sub_26A80757C(v11);
  return v17(v11, a3);
}

uint64_t sub_26A752C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v2 = type metadata accessor for OuterPlatterBackground(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  sub_26A84F4F8();
  sub_26A84F4F8();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88);
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  swift_getWitnessTable();
  sub_26A851238();
  sub_26A84F4F8();
  v5 = sub_26A84F4F8();
  v6 = sub_26A84F4F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v19[6] = swift_getWitnessTable();
  v19[7] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_26A4D7DCC();
  v19[4] = WitnessTable;
  v19[5] = v14;
  v15 = swift_getWitnessTable();
  MEMORY[0x26D662ED0](v4, v5, v2, v15);
  sub_26A755F70();
  v16 = sub_26A755CD0();
  v19[2] = v15;
  v19[3] = v16;
  swift_getWitnessTable();
  sub_26A80757C(v9);
  v17 = *(v7 + 8);
  v17(v9, v6);
  sub_26A80757C(v12);
  return (v17)(v12, v6);
}

uint64_t sub_26A753028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a4;
  v61 = a6;
  v56 = sub_26A84BBF8();
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0);
  v15 = sub_26A84F4F8();
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v47 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  v17 = sub_26A84F4F8();
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v48 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  v55 = sub_26A84F4F8();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v47 - v19;
  v20 = sub_26A84F4F8();
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v52 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = &v47 - v23;
  v70 = a2;
  v71 = a3;
  v72 = v50;
  v73 = a5;
  v24 = type metadata accessor for DisambiguationStandardView();
  (*(a1 + *(v24 + 68)))();
  v25 = a5;
  sub_26A850CE8();
  (*(v11 + 8))(v14, a3);
  v26 = _UISolariumEnabled();
  v27 = v51;
  v28 = MEMORY[0x277D62F58];
  if (!v26)
  {
    v28 = MEMORY[0x277D62F38];
  }

  v29 = v53;
  v30 = v56;
  (*(v51 + 104))(v53, *v28, v56);
  v50 = MEMORY[0x277CE0868];
  v31 = sub_26A4D7DCC();
  v68 = v25;
  v69 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = v48;
  v34 = v47;
  View.separators(_:isOverride:)(v29, 0, v15, WitnessTable);
  (*(v27 + 8))(v29, v30);
  (*(v54 + 8))(v34, v15);
  swift_getKeyPath();
  LOBYTE(v70) = 1;
  v35 = sub_26A4D7DCC();
  v66 = WitnessTable;
  v67 = v35;
  v36 = swift_getWitnessTable();
  v37 = v49;
  sub_26A8509A8();

  (*(v58 + 8))(v33, v17);
  if (_UISolariumEnabled())
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 2.0;
  }

  v39 = sub_26A4D7DCC();
  v64 = v36;
  v65 = v39;
  v40 = v55;
  v41 = swift_getWitnessTable();
  v42 = v52;
  View.componentSpacing(top:bottom:)(v40, v41, v38, 0.0);
  (*(v59 + 8))(v37, v40);
  v43 = sub_26A69C384();
  v62 = v41;
  v63 = v43;
  swift_getWitnessTable();
  v44 = v57;
  sub_26A80757C(v42);
  v45 = *(v60 + 8);
  v45(v42, v20);
  sub_26A80757C(v44);
  return (v45)(v44, v20);
}

uint64_t sub_26A753730@<X0>(const void *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v27[0] = type metadata accessor for OuterPlatterBackground(0);
  MEMORY[0x28223BE20](v27[0]);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  sub_26A84F4F8();
  v27[1] = MEMORY[0x277CE0868];
  v6 = sub_26A4D7DCC();
  v41 = a2;
  v42 = v6;
  WitnessTable = swift_getWitnessTable();
  v8 = sub_26A4D7DCC();
  v39 = WitnessTable;
  v40 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_26A4D7DCC();
  v37 = v9;
  v38 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_26A69C384();
  v35 = v11;
  v36 = v12;
  swift_getWitnessTable();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240);
  v13 = sub_26A84F4F8();
  v14 = sub_26A84F4F8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  memcpy(__dst, v28, sizeof(__dst));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v21 = swift_getWitnessTable();
  v22 = sub_26A4D7DCC();
  v32 = v21;
  v33 = v22;
  v23 = swift_getWitnessTable();
  MEMORY[0x26D662ED0](v5, v13, v27[0], v23);
  sub_26A755F70();
  v24 = sub_26A755CD0();
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  sub_26A80757C(v17);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_26A80757C(v20);
  return (v25)(v20, v14);
}

uint64_t sub_26A753BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a6;
  v72 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v64 - v13;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A84F4F8();
  v66 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v78 = v22;
  v23 = sub_26A84F4F8();
  v67 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v65 = &v64 - v27;
  v71 = sub_26A852068();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v77 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v69 = &v64 - v30;
  v92 = a2;
  v93 = a3;
  v70 = a3;
  v79 = a4;
  v94 = a4;
  v95 = a5;
  v31 = a1;
  v76 = a5;
  v32 = type metadata accessor for DisambiguationStandardView();
  v33 = sub_26A74EC54(v32);
  v34 = MEMORY[0x277CDF918];
  if (v33)
  {
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v23);
    v35 = sub_26A69C384();
    v82 = v79;
    v83 = v35;
    WitnessTable = swift_getWitnessTable();
    v81 = v34;
    v36 = v23;
    swift_getWitnessTable();
  }

  else
  {
    (*(v31 + *(v32 + 64)))();
    v37 = v32;
    v38 = v31;
    v39 = v79;
    View.componentSpacing(top:bottom:)(a2, v79, 10.0, 10.0);
    (*(v15 + 8))(v18, a2);
    sub_26A850238();
    v40 = sub_26A69C384();
    v91[4] = v39;
    v91[5] = v40;
    v41 = v78;
    v42 = swift_getWitnessTable();
    sub_26A850C58();
    v43 = v41;
    v31 = v38;
    v32 = v37;
    (*(v66 + 8))(v21, v43);
    v91[2] = v42;
    v91[3] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v44 = v65;
    sub_26A80757C(v25);
    v45 = v67;
    v46 = v67[1];
    v46(v25, v23);
    sub_26A80757C(v44);
    v46(v44, v23);
    v47 = v77;
    (v45[4])(v77, v25, v23);
    v48 = v47;
    v36 = v23;
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v23);
  }

  v49 = v69;
  v50 = v77;
  v64 = v36;
  sub_26A74E6CC(v77, v69);
  v51 = v68;
  v52 = *(v68 + 8);
  v66 = v68 + 8;
  v67 = v52;
  v53 = v71;
  v54 = (v52)(v50, v71);
  v55 = v74;
  (*(v31 + *(v32 + 68)))(v54);
  v56 = v73;
  v57 = v70;
  sub_26A80757C(v55);
  v58 = v72;
  v65 = *(v72 + 8);
  (v65)(v55, v57);
  (*(v51 + 16))(v50, v49, v53);
  v92 = v50;
  (*(v58 + 16))(v55, v56, v57);
  v93 = v55;
  v91[0] = v53;
  v91[1] = v57;
  v59 = sub_26A69C384();
  v87 = v79;
  v88 = v59;
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF918];
  v84 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v90 = v76;
  sub_26A74E564(&v92, 2, v91);
  v60 = v56;
  v61 = v65;
  (v65)(v60, v57);
  v62 = v67;
  (v67)(v49, v53);
  v61(v55, v57);
  return v62(v50, v53);
}

uint64_t sub_26A7543D0()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for InnerPlatterBackground(0);
  OUTLINED_FUNCTION_25_21();
  if ((v2 & 1) == 0)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v4 = OUTLINED_FUNCTION_4_63();
    v5(v4);
    return v7;
  }

  return v0;
}

uint64_t sub_26A7544D8()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for InnerPlatterBackground(0);
  OUTLINED_FUNCTION_25_21();
  if (v2 != 1)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v4 = OUTLINED_FUNCTION_4_63();
    v5(v4);
    v0 = v7;
  }

  return v0 & 1;
}

void sub_26A7545F0()
{
  sub_26A754870(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_26A754870(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A754770(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A754770(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
        if (v3 <= 0x3F)
        {
          sub_26A5046B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A754770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26A7547E8()
{
  sub_26A754870(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A754870(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A7548EC()
{
  sub_26A754870(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_26A754870(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A754770(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A754A00()
{
  OUTLINED_FUNCTION_28_0();
  v70 = v0;
  v75 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_82();
  v62[0] = v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C18);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v67 = v5;
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v62[2] = v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v64 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C30);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  v63 = v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C38);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v68 = v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C40);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  v73 = v15;
  v16 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v29 = (v62 - v28);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C48);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v62 - v35;
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  if (byte_2803B0440 != 1 || (v37 = sub_26A7543D0(), !sub_26A61B05C(v37, &unk_287B13B08)))
  {
    sub_26A755310();
    v43 = OUTLINED_FUNCTION_45_7();
    v44(v43);
    v45 = sub_26A84EE58();
    v46 = *(v18 + 8);
    v46(v22, v16);
    v46(v25, v16);
    if (v45)
    {
      sub_26A850E18();
      sub_26A850248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50);
      OUTLINED_FUNCTION_5_0();
      (*(v47 + 16))(v63, v70);
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_37_11();
      swift_storeEnumTagMultiPayload();
      sub_26A75575C();
      OUTLINED_FUNCTION_29_16();
      OUTLINED_FUNCTION_38_8();
      swift_storeEnumTagMultiPayload();
      sub_26A7556D8();
      sub_26A755840();
      v48 = v68;
    }

    else
    {
      v49 = sub_26A7543D0();
      v50 = sub_26A61B05C(v49, &unk_287B131A0);
      v48 = v68;
      if (!v50 || (sub_26A7544D8() & 1) == 0)
      {
        v52 = v62[0];
        v53 = v62[0] + *(v69 + 36);
        sub_26A8513E8();
        v54 = sub_26A850248();
        *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)) = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50);
        OUTLINED_FUNCTION_5_0();
        (*(v55 + 16))(v52, v70);
        sub_26A755FC4(v52, v67, &qword_2803B6C10);
        swift_storeEnumTagMultiPayload();
        sub_26A7556D8();
        sub_26A755840();
        sub_26A84FDF8();
        goto LABEL_14;
      }

      sub_26A850DD8();
      sub_26A850248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50);
      OUTLINED_FUNCTION_5_0();
      (*(v51 + 16))(v63, v70);
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_37_11();
      swift_storeEnumTagMultiPayload();
      sub_26A75575C();
      OUTLINED_FUNCTION_29_16();
      OUTLINED_FUNCTION_38_8();
      swift_storeEnumTagMultiPayload();
      sub_26A7556D8();
      sub_26A755840();
    }

    sub_26A84FDF8();
    sub_26A4D6FD8();
LABEL_14:
    sub_26A4D6FD8();
    sub_26A755FC4(v48, v73, &qword_2803B6C38);
    swift_storeEnumTagMultiPayload();
    sub_26A755924();
    sub_26A755A08();
    sub_26A84FDF8();
    goto LABEL_17;
  }

  sub_26A755310();
  v38 = OUTLINED_FUNCTION_45_7();
  v39(v38);
  v40 = sub_26A84EE58();
  v41 = *(v18 + 8);
  v41(v22, v16);
  v41(v25, v16);
  if (v40)
  {
    v42 = MEMORY[0x277CE13E8];
    sub_26A850E18();
  }

  else
  {
    v42 = MEMORY[0x277CE13D0];
    sub_26A850DD8();
  }

  v56 = sub_26A850E68();

  v57 = *(v26 + 36);
  v58 = *v42;
  sub_26A8514D8();
  OUTLINED_FUNCTION_5_0();
  (*(v59 + 104))(v29 + v57, v58);
  *v29 = v56;
  LOBYTE(v58) = sub_26A850248();
  v60 = v33 + *(v71 + 36);
  sub_26A755A94(v29, v60, &qword_2803B1838);
  *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C88) + 36)) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50);
  OUTLINED_FUNCTION_5_0();
  (*(v61 + 16))(v33, v70);
  sub_26A755A94(v33, v36, &qword_2803B6C48);
  sub_26A755FC4(v36, v73, &qword_2803B6C48);
  swift_storeEnumTagMultiPayload();
  sub_26A755924();
  sub_26A755A08();
  sub_26A84FDF8();
  OUTLINED_FUNCTION_211();
LABEL_17:
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A755310()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74_0();
  sub_26A755FC4(v0, v1, &qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_5_0();
    (*(v6 + 32))(v3, v1);
  }

  else
  {
    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_128();
    v9(v8);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7554EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_26A755310();
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3D0], v4);
  OUTLINED_FUNCTION_1_30();
  v14 = sub_26A84EE58();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v15(v13, v4);
  if (v14)
  {
    v16 = 0x8000000000000001;
  }

  else
  {
    v16 = sub_26A850DD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C00);
  OUTLINED_FUNCTION_5_0();
  (*(v17 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C08);
  *(a2 + *(result + 36)) = v16;
  return result;
}

double sub_26A755688()
{
  v0 = _UISolariumEnabled();
  v1 = 38.0;
  if (!v0)
  {
    v1 = 28.0;
  }

  *&xmmword_2803D23C0 = v1;
  *(&xmmword_2803D23C0 + 1) = v1;
  qword_2803D23D0 = *&v1;
  unk_2803D23D8 = *&v1;
  result = 28.0;
  xmmword_2803D23E0 = xmmword_26A87F790;
  unk_2803D23F0 = xmmword_26A85D560;
  return result;
}

unint64_t sub_26A7556D8()
{
  result = qword_2803B6C58;
  if (!qword_2803B6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C28);
    sub_26A75575C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C58);
  }

  return result;
}

unint64_t sub_26A75575C()
{
  result = qword_2803B6C60;
  if (!qword_2803B6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C30);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C60);
  }

  return result;
}

unint64_t sub_26A755840()
{
  result = qword_2803B6C70;
  if (!qword_2803B6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C10);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C70);
  }

  return result;
}

unint64_t sub_26A755924()
{
  result = qword_2803B6C78;
  if (!qword_2803B6C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C48);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C78);
  }

  return result;
}

unint64_t sub_26A755A08()
{
  result = qword_2803B6C90;
  if (!qword_2803B6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C38);
    sub_26A7556D8();
    sub_26A755840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C90);
  }

  return result;
}

uint64_t sub_26A755A94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return v3;
}

uint64_t sub_26A755B14(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_52_6();
  v2 = OUTLINED_FUNCTION_27_14(*(v1 + 80));

  return a1(v2);
}

uint64_t sub_26A755BA8()
{
  OUTLINED_FUNCTION_52_6();
  v1 = OUTLINED_FUNCTION_27_14(*(v0 + 80));
  return sub_26A752AB4(v1, v2, v3);
}

uint64_t sub_26A755C20(__int16 *a1)
{
  OUTLINED_FUNCTION_52_6();

  return sub_26A751E30(a1);
}

unint64_t sub_26A755CD0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A755D14()
{
  result = qword_2803B6C98;
  if (!qword_2803B6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C98);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for DisambiguationStandardView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_26A49035C(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  sub_26A49035C(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v5 = v3 + v1[15];
  sub_26A49035C(*v5, *(v5 + 8));
  sub_26A49035C(*(v5 + 16), *(v5 + 24));
  sub_26A49035C(*(v5 + 32), *(v5 + 40));
  sub_26A49035C(*(v5 + 48), *(v5 + 56));
  sub_26A49035C(*(v5 + 64), *(v5 + 72));
  sub_26A49035C(*(v5 + 80), *(v5 + 88));
  sub_26A49035C(*(v5 + 96), *(v5 + 104));
  sub_26A49035C(*(v5 + 112), *(v5 + 120));
  sub_26A49035C(*(v5 + 128), *(v5 + 136));
  sub_26A49035C(*(v5 + 144), *(v5 + 152));

  return swift_deallocObject();
}

uint64_t sub_26A755F70()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A755FC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return v3;
}

unint64_t sub_26A756008()
{
  result = qword_2803B6CA8;
  if (!qword_2803B6CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C08);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CA8);
  }

  return result;
}

unint64_t sub_26A7560EC()
{
  result = qword_2803B6CB8;
  if (!qword_2803B6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CC0);
    sub_26A755924();
    sub_26A755A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CB8);
  }

  return result;
}

void OUTLINED_FUNCTION_7_60()
{
  v0[331] = v0[34];
  v0[332] = v0[36];
  v0[333] = v0[33];
}

unint64_t OUTLINED_FUNCTION_21_27()
{

  return sub_26A4D7DCC();
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_37_11()
{
  v4 = *(v2 - 192);

  return sub_26A755FC4(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_38_8()
{
  v4 = *(v2 - 152);

  return sub_26A755FC4(v1, v4, v0);
}

void OUTLINED_FUNCTION_39_5()
{
  v4 = v3 + *(v2 + 36);
  *v4 = v0;
  *(v4 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t dispatch thunk of ArchiveSource.fetchArchive(snippetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26A557454;

  return v13(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for ArchiveSourceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A75674C()
{
  result = qword_2803B6CC8;
  if (!qword_2803B6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CC8);
  }

  return result;
}

uint64_t sub_26A7567F4()
{
  v4 = OUTLINED_FUNCTION_9_53();
  type metadata accessor for SmartDialogAnimationChunk(v4);
  OUTLINED_FUNCTION_11_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_70();
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = *(v2 + 16);
  if (v9 != *(v3 + 16))
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  if (v9 && v2 != v3)
  {
    OUTLINED_FUNCTION_7_61();
    v11 = v2 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      sub_26A759960(v11, v8, type metadata accessor for SmartDialogAnimationChunk);
      sub_26A759960(v12, v1, type metadata accessor for SmartDialogAnimationChunk);
      if (*v8 != *v1)
      {
        break;
      }

      v15 = sub_26A54081C(v8 + *(v0 + 20), v1 + *(v0 + 20));
      sub_26A7599BC();
      sub_26A7599BC();
      if (v15)
      {
        v12 += v14;
        v11 += v14;
        if (--v9)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    sub_26A7599BC();
    OUTLINED_FUNCTION_5_21();
    sub_26A7599BC();
    goto LABEL_11;
  }

  v15 = 1;
  return v15 & 1;
}

void sub_26A7569C4(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for TableRowWatchCellViewModel();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16) && v13 && a1 != a2)
  {
    v14 = 0;
    v15 = a1 + 32;
    v16 = a2 + 32;
    v28 = a1 + 32;
    v29 = v5;
    v27 = a2 + 32;
    while (1)
    {
      if (v14 == v13)
      {
        __break(1u);
        return;
      }

      v17 = (v15 + 16 * v14);
      v18 = (v16 + 16 * v14);
      if (*v17 != *v18)
      {
        return;
      }

      v19 = v17[1];
      v20 = v18[1];
      v21 = *(v19 + 16);
      if (v21 != *(v20 + 16))
      {
        return;
      }

      if (v21 && v19 != v20)
      {
        break;
      }

LABEL_16:
      if (++v14 == v13)
      {
        return;
      }
    }

    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);

    v23 = *(v5 + 72);
    while (1)
    {
      sub_26A759960(v19 + v22, v12, type metadata accessor for TableRowWatchCellViewModel);
      sub_26A759960(v20 + v22, v9, type metadata accessor for TableRowWatchCellViewModel);
      if (*v12 != *v9 || *(v12[2] + 16) != *(v9[2] + 16))
      {
        break;
      }

      v24 = *(v30 + 36);
      v25 = *(v12 + v24);
      v26 = *(v9 + v24);
      sub_26A7599BC();
      sub_26A7599BC();
      if (v25 != v26)
      {
        goto LABEL_20;
      }

      v22 += v23;
      if (!--v21)
      {

        v15 = v28;
        v5 = v29;
        v16 = v27;
        goto LABEL_16;
      }
    }

    sub_26A7599BC();
    sub_26A7599BC();
LABEL_20:
  }
}

uint64_t sub_26A756C68()
{
  OUTLINED_FUNCTION_9_53();
  type metadata accessor for TableRowWatchCellViewModel();
  OUTLINED_FUNCTION_11_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_70();
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v8 = *(v2 + 16);
  if (v8 != *(v3 + 16))
  {
    return 0;
  }

  if (!v8 || v2 == v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_61();
  v10 = v2 + v9;
  v11 = v3 + v9;
  v13 = *(v12 + 72);
  while (1)
  {
    result = sub_26A759960(v10, v7, type metadata accessor for TableRowWatchCellViewModel);
    if (!v8)
    {
      break;
    }

    sub_26A759960(v11, v1, type metadata accessor for TableRowWatchCellViewModel);
    if (*v7 != *v1 || *(v7[2] + 16) != *(v1[2] + 16))
    {
      sub_26A7599BC();
      OUTLINED_FUNCTION_5_21();
      sub_26A7599BC();
      return 0;
    }

    v15 = *(v0 + 36);
    v16 = *(v7 + v15);
    v17 = *(v1 + v15);
    sub_26A7599BC();
    sub_26A7599BC();
    result = v16 == v17;
    v18 = v16 != v17 || v8-- == 1;
    v11 += v13;
    v10 += v13;
    if (v18)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A756E44(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26A852168())
  {
    if (a2 >> 62)
    {
      result = sub_26A852168();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_26A4EC5B0(0, &qword_2803B3308);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x26D6644E0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x26D6644E0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_26A851FF8();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A757018(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_26A757074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
      if (!v9 && (sub_26A852598() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          sub_26A4EC5B0(0, &qword_2803AC8F0);

          sub_26A5065E0(v5, 1u);

          sub_26A5065E0(v7, 1u);
          sub_26A5065E0(v7, 1u);
          sub_26A5065E0(v5, 1u);
          v10 = sub_26A851FF8();
          sub_26A5066FC(v5, 1u);
          sub_26A5066FC(v7, 1u);

          sub_26A5066FC(v7, 1u);

          v11 = v5;
          v12 = 1;
        }

        else
        {
          if (v8 != 2)
          {
LABEL_21:
            sub_26A5065E0(v7, v8);
            sub_26A5065E0(v5, v6);
            sub_26A5066FC(v5, v6);
            sub_26A5066FC(v7, v8);
            return;
          }

          sub_26A5065E0(v5, 2u);

          sub_26A5065E0(v7, 2u);
          sub_26A5065E0(v7, 2u);
          sub_26A5065E0(v5, 2u);
          v10 = sub_26A757074(v5, v7);
          sub_26A5066FC(v5, 2u);
          sub_26A5066FC(v7, 2u);

          sub_26A5066FC(v7, 2u);

          v11 = v5;
          v12 = 2;
        }
      }

      else
      {
        if (v8)
        {
          goto LABEL_21;
        }

        sub_26A4EC5B0(0, &qword_2803AC8F0);

        sub_26A5065E0(v5, 0);

        sub_26A5065E0(v7, 0);
        sub_26A5065E0(v7, 0);
        sub_26A5065E0(v5, 0);
        v10 = sub_26A851FF8();
        sub_26A5066FC(v5, 0);
        sub_26A5066FC(v7, 0);

        sub_26A5066FC(v7, 0);

        v11 = v5;
        v12 = 0;
      }

      sub_26A5066FC(v11, v12);
      if (v10)
      {
        v3 += 32;
        v4 += 32;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_26A75736C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableCell() - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_61();
      v12 = a1 + v11;
      v13 = a2 + v11;
      v15 = *(v14 + 72);
      do
      {
        sub_26A759960(v12, v9, type metadata accessor for TableCell);
        sub_26A759960(v13, v6, type metadata accessor for TableCell);
        v16 = sub_26A84AC98();
        sub_26A7599BC();
        sub_26A7599BC();
        if ((v16 & 1) == 0)
        {
          break;
        }

        v13 += v15;
        v12 += v15;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_26A75750C()
{
  OUTLINED_FUNCTION_9_53();
  v2 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = *(v0 + 16);
  if (v13 != *(v1 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || v0 == v1)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = v0 + v14;
  v16 = v1 + v14;
  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v19 = (v17 - 8);
  v27 = *(v17 + 56);
  v28 = v18;
  while (1)
  {
    v20 = v28;
    result = (v28)(v12, v15, v2, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v2);
    sub_26A759A10();
    OUTLINED_FUNCTION_5_21();
    v23 = sub_26A851758();
    v24 = *v19;
    v25 = OUTLINED_FUNCTION_211();
    v24(v25);
    (v24)(v12, v2);
    if (v23)
    {
      v16 += v27;
      v15 += v27;
      v26 = v13-- == 1;
      v17 = v22;
      if (!v26)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t View.engageable()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_41();
  v7 = 0;
  v8 = 0;
  MEMORY[0x26D662ED0](&KeyPath, a1, &type metadata for EngageableTextViewModifier, a2);
  return sub_26A757780(&KeyPath);
}

uint64_t sub_26A7577B0@<X0>(void *a1@<X8>)
{
  result = OUTLINED_FUNCTION_29_3();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_26A759CE8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t (*sub_26A75781C())(uint64_t, uint64_t)
{
  sub_26A7598C8();
  sub_26A84F998();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_7();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_26A759CEC;
}

uint64_t sub_26A7578A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_26A7578D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_29_7();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_26A7598C8();
  return sub_26A84F9A8();
}

uint64_t sub_26A75795C(uint64_t a1, uint64_t a2, int a3)
{
  v60 = a3;
  v73 = a2;
  v72 = sub_26A84F4A8();
  OUTLINED_FUNCTION_15();
  v70 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v71 = v7 - v6;
  v8 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  *&v69 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v76 = v58 - v15;
  v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  v19 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v65 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v59 = v58 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = v58 - v29;
  v31 = sub_26A8507A8();
  OUTLINED_FUNCTION_46();
  (*(v32 + 16))(v30, a1, v31);
  v33 = *(v27 + 44);
  v34 = sub_26A759A10();
  v62 = v30;
  v66 = v33;
  v61 = v31;
  sub_26A851D88();
  v64 = (v21 + 16);
  v58[2] = v21 + 32;
  v75 = (v69 + 16);
  v74 = (v69 + 32);
  v70 += 8;
  v35 = (v69 + 8);
  v58[1] = v21 + 8;
  v69 = xmmword_26A8570D0;
  v68 = xmmword_26A86B870;
  v67 = xmmword_26A86B880;
  v58[3] = v34;
  while (1)
  {
    v36 = v62;
    sub_26A851DD8();
    if (*&v36[v66] == v77)
    {
      break;
    }

    v37 = sub_26A851E18();
    v38 = v59;
    v63 = *v64;
    v63(v59);
    v37(&v77, 0);
    v39 = v65;
    sub_26A851DE8();
    v40 = OUTLINED_FUNCTION_10_48();
    v41(v40, v38, v19);
    if (v60)
    {
      (v63)(v18, v39, v19);
      v42 = *(v58[0] + 36);
      sub_26A759A10();
      sub_26A851D88();
      while (1)
      {
        sub_26A851DD8();
        if (*&v18[v42] == v77)
        {
          break;
        }

        v43 = sub_26A851E18();
        v44 = v76;
        (*v75)(v76);
        v43(&v77, 0);
        sub_26A851DE8();
        (*v74)(v13, v44, v8);
        sub_26A53AC74();
        sub_26A850768();
        if (v78 != 255)
        {
          sub_26A5066E8(v77, v78);
          sub_26A850748();
          v45 = v79;
          v46 = v81;
          v47 = v80 - v82;
          v48 = v82 + v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870);
          inited = swift_initStackObject();
          *(inited + 16) = v69;
          v88.origin.x = v45;
          v88.origin.y = v47;
          v88.size.width = v46;
          v88.size.height = v48;
          *(inited + 32) = CGRectInset(v88, -1.0, 0.0);
          v85 = inited;
          v86 = v68;
          v87 = v67;
          MEMORY[0x28223BE20](v50);
          v58[-2] = v51;
          sub_26A850558();
          swift_setDeallocating();
          v52 = [objc_opt_self() secondarySystemFillColor];
          sub_26A850D38();
          sub_26A84F498();

          sub_26A84F428();
          sub_26A59DFE8(v84);
          v53 = OUTLINED_FUNCTION_10_48();
          v54(v53, v72);
        }

        (*v35)(v13, v8);
      }

      sub_26A4D6FD8();
    }

    sub_26A84F418();
    v55 = OUTLINED_FUNCTION_10_48();
    v56(v55, v19);
  }

  return sub_26A4D6FD8();
}

void (*sub_26A7581B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

double sub_26A75822C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6CF0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6CF8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_26A7597C0(v3, v29);
  v13 = swift_allocObject();
  sub_26A7597F8(v29, v13 + 16);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = &v8[*(v5 + 44)];
  *(v16 + 7) = swift_getKeyPath();
  v16[65] = 0;
  swift_unknownObjectWeakInit();
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *(v16 + 2) = KeyPath;
  *(v16 + 12) = 0;
  *(v16 + 4) = v15;
  *(v16 + 5) = 0;
  v16[48] = 0;
  *(v16 + 10) = &type metadata for Engageable;
  *(v16 + 11) = sub_26A759830;
  *(v16 + 12) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D00);
  OUTLINED_FUNCTION_46();
  (*(v17 + 16))(v8, a1);
  v18 = swift_getKeyPath();
  v20 = *(v3 + 40);
  v19 = *(v3 + 48);
  if (v20)
  {
    OUTLINED_FUNCTION_29_7();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    v22 = sub_26A759894;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  sub_26A759838(v8, v12, &qword_2803B6CF0);
  v23 = &v12[*(v9 + 36)];
  *v23 = v18;
  v23[1] = v22;
  v23[2] = v21;
  sub_26A4C2304(v20);
  sub_26A666CE8(v29);
  v24 = v28;
  sub_26A759838(v12, v28, &qword_2803B6CF8);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D08) + 36));
  v26 = v29[1];
  *v25 = v29[0];
  v25[1] = v26;
  result = v30[0];
  v25[2] = *v30;
  return result;
}

void sub_26A7584EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      return;
    }

    sub_26A5E8BF0();
    v5 = *(a3 + 40);
    if (!v5)
    {
      return;
    }

    v6 = sub_26A6BD2FC(v4);
  }

  else
  {
    sub_26A7585B4(*a1);
    v5 = *(a3 + 40);
    if (!v5)
    {
      return;
    }

    v6 = sub_26A758F24(v4);
  }

  v5(v6);

  sub_26A4C24DC(v5);
}

void sub_26A7585B4(void *a1)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *v1;
    v17[1] = v1;
    v8 = *(v1 + 8);
    v18 = a1;
    if (v8 == 1)
    {
      sub_26A759954(v7, 1);
    }

    else
    {
      sub_26A759954(v7, 0);
      sub_26A851EA8();
      v9 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5714(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v19;
    }

    v10 = sub_26A73670C();
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D6644E0](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v12 commandReference];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 isEqual_];

        if (v16)
        {

          InteractionDelegateWrapper.perform(sfCommand:)();

          return;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26A75880C@<X0>(void *a1@<X8>)
{
  result = sub_26A75781C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_26A759CE8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_26A75887C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_26A7598C4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_26A4C2304(v1);
  return sub_26A7578D8(v4, v3);
}

uint64_t static Engageable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0);
      sub_26A5065E0(v3, 0);
      sub_26A5065E0(v2, 0);
      OUTLINED_FUNCTION_5_21();
      v5 = sub_26A851FF8();
      goto LABEL_10;
    }

LABEL_9:
    v9 = OUTLINED_FUNCTION_211();
    sub_26A5065E0(v9, v10);
    v11 = OUTLINED_FUNCTION_8_30();
    sub_26A5065E0(v11, v12);
    v5 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 8) != 1)
  {
    if (v4 == 2)
    {
      sub_26A5065E0(*a2, 2u);
      sub_26A5065E0(v2, 2u);
      v6 = OUTLINED_FUNCTION_5_21();
      sub_26A757074(v6, v7);
      v5 = v8;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  sub_26A4EC5B0(0, &qword_2803AC8F0);
  sub_26A5065E0(v3, 1u);
  sub_26A5065E0(v2, 1u);
  OUTLINED_FUNCTION_5_21();
  v5 = sub_26A851FF8();
LABEL_10:
  v13 = OUTLINED_FUNCTION_8_30();
  sub_26A5066FC(v13, v14);
  v15 = OUTLINED_FUNCTION_211();
  sub_26A5066FC(v15, v16);
  return v5 & 1;
}

void Engageable.hash(into:)()
{
  if (!*(v0 + 8))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x26D664930](v1);
    sub_26A852008();
    return;
  }

  MEMORY[0x26D664930](2);
  v2 = OUTLINED_FUNCTION_5_21();

  sub_26A759300(v2, v3);
}

uint64_t Engageable.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26A8526B8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26D664930](2);
      sub_26A759300(v5, v1);
      return sub_26A8526F8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26D664930](v3);
  sub_26A852008();
  return sub_26A8526F8();
}

uint64_t sub_26A758B74()
{
  sub_26A8526B8();
  Engageable.hash(into:)();
  return sub_26A8526F8();
}

id EngageableListItem.engageable.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_26A5065E0(v2, v3);
}

uint64_t EngageableListItem.init(title:engageable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t static EngageableListItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = 0, (sub_26A852598() & 1) != 0))
  {
    v19 = v2;
    v20 = v3;
    v17 = v4;
    v18 = v5;
    v8 = OUTLINED_FUNCTION_211();
    sub_26A5065E0(v8, v9);
    v10 = OUTLINED_FUNCTION_8_30();
    sub_26A5065E0(v10, v11);
    v7 = static Engageable.== infix(_:_:)(&v19, &v17);
    v12 = OUTLINED_FUNCTION_8_30();
    sub_26A5066FC(v12, v13);
    v14 = OUTLINED_FUNCTION_211();
    sub_26A5066FC(v14, v15);
  }

  return v7 & 1;
}

void EngageableListItem.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_26A851848();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x26D664930](v2);
    sub_26A852008();
    return;
  }

  MEMORY[0x26D664930](2);
  v3 = OUTLINED_FUNCTION_5_21();

  sub_26A759300(v3, v4);
}

uint64_t EngageableListItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26A8526B8();
  sub_26A851848();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26D664930](2);
      sub_26A759300(v5, v1);
      return sub_26A8526F8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26D664930](v3);
  sub_26A852008();
  return sub_26A8526F8();
}

uint64_t sub_26A758E1C()
{
  sub_26A8526B8();
  sub_26A851848();
  Engageable.hash(into:)();
  return sub_26A8526F8();
}

uint64_t View.engageable(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_41();
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = a1;
  v12 = a2;

  MEMORY[0x26D662ED0](&KeyPath, a3, &type metadata for EngageableTextViewModifier, a4);
  return sub_26A757780(&KeyPath);
}

uint64_t sub_26A758F24(void *a1)
{
  v1 = [a1 referenceIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A758F84(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for TableRowWatchCellViewModel();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = (v7 - v6);
  v9 = *(a2 + 16);
  result = MEMORY[0x26D664930](v9);
  v21 = v9;
  if (v9)
  {
    v11 = 0;
    v20 = a2 + 32;
    do
    {
      v12 = (v20 + 16 * v11);
      v13 = v12[1];
      MEMORY[0x26D664930](*v12);
      result = MEMORY[0x26D664930](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v19 + 36);
        v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

        v17 = *(v4 + 72);
        do
        {
          sub_26A759960(v16, v8, type metadata accessor for TableRowWatchCellViewModel);
          MEMORY[0x26D664930](*v8);
          MEMORY[0x26D664930](*(v8[2] + 16));
          v18 = *(v8 + v15);
          if (v18 == 0.0)
          {
            v18 = 0.0;
          }

          MEMORY[0x26D664950](*&v18);
          sub_26A7599BC();
          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v21);
  }

  return result;
}

uint64_t sub_26A759120(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TableRowWatchCellViewModel();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = (v8 - v7);
  v10 = *(a2 + 16);
  result = MEMORY[0x26D664930](v10);
  if (v10)
  {
    v12 = *(v3 + 36);
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_26A759960(v13, v9, type metadata accessor for TableRowWatchCellViewModel);
      MEMORY[0x26D664930](*v9);
      MEMORY[0x26D664930](*(v9[2] + 16));
      v15 = *(v9 + v12);
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x26D664950](*&v15);
      result = sub_26A7599BC();
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_26A75925C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26A73670C(a2);
  MEMORY[0x26D664930](v3);
  v4 = sub_26A73670C(a2);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D6644E0](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_26A852008();
      }
    }
  }
}

void sub_26A759300(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x26D664930](v4);
  if (v4)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_26A5065E0(v6, v7);
      OUTLINED_FUNCTION_211();
      sub_26A851848();
      if (v7)
      {
        if (v7 != 1)
        {
          MEMORY[0x26D664930](2);
          sub_26A759300(a1, v6);
          goto LABEL_9;
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x26D664930](v8);
      sub_26A852008();
LABEL_9:
      v5 += 32;

      sub_26A5066FC(v6, v7);
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_26A7593EC()
{
  result = qword_2803B6CD0;
  if (!qword_2803B6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CD0);
  }

  return result;
}

unint64_t sub_26A759444()
{
  result = qword_2803B6CD8;
  if (!qword_2803B6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CD8);
  }

  return result;
}

unint64_t sub_26A75949C()
{
  result = qword_2803B6CE0;
  if (!qword_2803B6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CE0);
  }

  return result;
}

uint64_t sub_26A759500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A759540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A7595AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A759600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EngageableTextRenderer(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A759750()
{
  result = qword_2803B6CE8;
  if (!qword_2803B6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CE8);
  }

  return result;
}

uint64_t sub_26A759838(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

unint64_t sub_26A7598C8()
{
  result = qword_2803B6D10;
  if (!qword_2803B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D10);
  }

  return result;
}

uint64_t sub_26A75991C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_26A759954(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26A759960(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A7599BC()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A759A10()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A759A64()
{
  result = qword_2803B6D18;
  if (!qword_2803B6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6D08);
    sub_26A759AF0();
    sub_26A759C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D18);
  }

  return result;
}

unint64_t sub_26A759AF0()
{
  result = qword_2803B6D20;
  if (!qword_2803B6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CF8);
    sub_26A759BA8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D20);
  }

  return result;
}

unint64_t sub_26A759BA8()
{
  result = qword_2803B6D28;
  if (!qword_2803B6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CF0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D28);
  }

  return result;
}

unint64_t sub_26A759C8C()
{
  result = qword_2803B6D58;
  if (!qword_2803B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_41()
{

  return swift_unknownObjectWeakInit();
}

id sub_26A759DA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(__src);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v85 + 1) = &type metadata for PartialText;
      v86 = &protocol witness table for PartialText;
      v84[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v84[0] + 16);
    }

    else
    {
      v86 = 0;
      *v84 = 0u;
      v85 = 0u;
    }

    v10 = [v2 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v82 + 1) = &type metadata for PartialText;
      v83 = &protocol witness table for PartialText;
      v81[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v81[0] + 16);
    }

    else
    {
      v83 = 0;
      *v81 = 0u;
      v82 = 0u;
    }

    v12 = [v2 addTint];
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for PrimaryHeaderStandardView();
    v14 = a1 + v13[5];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    v15 = v13[6];
    *(a1 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v16 = memcpy(__dst, __src, 0xFAuLL);
    OUTLINED_FUNCTION_1_89(v16, v17, v18, v19, v20, v21, v22, v23, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
    sub_26A4EC458(__dst, &v46);
    sub_26A4EC4B4();
    *(a1 + v13[7]) = sub_26A851248();
    sub_26A5582C8(v84, v78);
    if (v79)
    {
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v24 = OUTLINED_FUNCTION_1_2();
      v26 = v25(v24);
      __swift_destroy_boxed_opaque_existential_1(v78);
    }

    else
    {
      sub_26A537648(v78);
      v26 = 0;
    }

    *(a1 + v13[8]) = v26;
    v27 = sub_26A5582C8(v81, &v46);
    if (v49)
    {
      __swift_project_boxed_opaque_existential_1(&v46, v49);
      v35 = OUTLINED_FUNCTION_1_2();
      v37 = v36(v35);

      OUTLINED_FUNCTION_1_89(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      sub_26A4EC508(v78);
      sub_26A537648(v81);
      sub_26A537648(v84);
      result = __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    else
    {
      OUTLINED_FUNCTION_1_89(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, 0, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      sub_26A4EC508(v78);

      sub_26A537648(v81);
      sub_26A537648(v84);
      result = sub_26A537648(&v46);
      v37 = 0;
    }

    *(a1 + v13[9]) = v37;
    *(a1 + v13[10]) = v12;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B138C8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A75A144()
{
  result = qword_2803AF858;
  if (!qword_2803AF858)
  {
    type metadata accessor for PrimaryHeaderStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF858);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x360], 0xFAuLL);
}

uint64_t sub_26A75A1B8()
{
  v1 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v6 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v6, qword_281588728);
  OUTLINED_FUNCTION_38_9();
  sub_26A68D640(v5, v0);
  v7 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v7, v8);
  v9 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  v12 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v12, v13);
  v14 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v1);
  v17 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v17, v18);
  v19 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
  v22 = OUTLINED_FUNCTION_4_74(v6[8]);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v1);
  v25 = OUTLINED_FUNCTION_4_74(v6[9]);
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v1);
  v28 = OUTLINED_FUNCTION_4_74(v6[10]);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v1);
  v31 = OUTLINED_FUNCTION_25_22();
  sub_26A75CC5C(v31, v32);
  v33 = OUTLINED_FUNCTION_10_49();
  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v1);
}

uint64_t sub_26A75A3AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v11, a3);
  OUTLINED_FUNCTION_38_9();
  sub_26A68D640(v10, v3);
  v12 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v12, v13);
  v14 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  v17 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v17, v18);
  v19 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
  v22 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v22, v23);
  v24 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v6);
  v27 = OUTLINED_FUNCTION_4_74(v11[8]);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v6);
  v30 = OUTLINED_FUNCTION_4_74(v11[9]);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v6);
  v33 = OUTLINED_FUNCTION_4_74(v11[10]);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v6);
  v36 = OUTLINED_FUNCTION_25_22();
  sub_26A75CC5C(v36, v37);
  v38 = OUTLINED_FUNCTION_10_49();
  return __swift_storeEnumTagSinglePayload(v38, v39, v40, v6);
}

void sub_26A75A500()
{
  OUTLINED_FUNCTION_28_0();
  v31 = v7;
  v32 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_21();
  if (qword_28157DC40 != -1)
  {
    OUTLINED_FUNCTION_3_79();
  }

  v16 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v16, qword_281588740);
  v17 = sub_26A68C628(v32);
  if (qword_28157DC38 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_15_33(v17, qword_281588728);
  sub_26A68C628(v32);
  sub_26A68D640(v6, v4);
  sub_26A68D640(v6, v2);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  if (v31)
  {
    v21 = v5;
  }

  else
  {
    v21 = v6;
  }

  sub_26A68D640(v21, v1);
  OUTLINED_FUNCTION_22_0();
  v25 = OUTLINED_FUNCTION_40_8(v22, v23, v24);
  sub_26A75CCC0(v25);
  sub_26A75CC5C(v21, v0);
  OUTLINED_FUNCTION_11_47(v0);
  OUTLINED_FUNCTION_1_90(v26);
  v27 = OUTLINED_FUNCTION_4_74(*(v16 + 44));
  OUTLINED_FUNCTION_36_7(v27, v28, v29);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v0, v30);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75A70C()
{
  OUTLINED_FUNCTION_28_0();
  v42 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v44 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v43 = v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  if (qword_2803A8E58 != -1)
  {
    OUTLINED_FUNCTION_8_59();
  }

  v22 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v22, qword_2803D2418);
  v23 = sub_26A68C628(v7);
  if (qword_28157DC40 != -1)
  {
    v23 = OUTLINED_FUNCTION_3_79();
  }

  OUTLINED_FUNCTION_15_33(v23, qword_281588740);
  v24 = sub_26A68C628(v7);
  if (qword_28157DC38 != -1)
  {
    v24 = OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_15_33(v24, qword_281588728);
  sub_26A68C628(v7);
  v25 = v43;
  sub_26A68D640(v21, v43);
  sub_26A68D640(v21, v1);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  if (v42)
  {
    sub_26A75CCC0(v21);
    sub_26A68D640(v3, v0);
    v29 = v3;
  }

  else
  {
    sub_26A75CC5C(v21, v0);
    v29 = v4;
  }

  OUTLINED_FUNCTION_22_0();
  v33 = OUTLINED_FUNCTION_40_8(v30, v31, v32);
  sub_26A75CCC0(v33);
  v34 = v29;
  v35 = v44;
  sub_26A75CC5C(v34, v44);
  OUTLINED_FUNCTION_11_47(v35);
  OUTLINED_FUNCTION_1_90(v36);
  v37 = OUTLINED_FUNCTION_4_74(*(v22 + 44));
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v2);
  sub_26A75CC5C(v25, v9);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v35, v40);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75A9AC()
{
  OUTLINED_FUNCTION_28_0();
  v8 = v7;
  v10 = v9;
  v37 = v11;
  v38 = v12;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_21();
  if (*v10 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v22, v8);
  v23 = sub_26A68C628(v38);
  if (qword_28157DC38 != -1)
  {
    v23 = OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_15_33(v23, qword_281588728);
  sub_26A68C628(v38);
  sub_26A68D640(v6, v4);
  sub_26A68D640(v6, v2);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  if (v37)
  {
    v27 = v5;
  }

  else
  {
    v27 = v6;
  }

  sub_26A68D640(v27, v1);
  OUTLINED_FUNCTION_22_0();
  v31 = OUTLINED_FUNCTION_40_8(v28, v29, v30);
  if (v37)
  {
    sub_26A75CC5C(v31, v0);
  }

  else
  {
    sub_26A75CCC0(v31);
    sub_26A68D640(v6, v0);
  }

  OUTLINED_FUNCTION_11_47(v0);
  OUTLINED_FUNCTION_1_90(v32);
  sub_26A75CC5C(v6, v14 + *(v22 + 44));
  v33 = OUTLINED_FUNCTION_10_49();
  OUTLINED_FUNCTION_36_7(v33, v34, v35);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v0, v36);
  OUTLINED_FUNCTION_27_0();
}