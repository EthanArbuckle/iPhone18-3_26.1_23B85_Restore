uint64_t sub_269C3A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25[1] = a1;
  v25[2] = a3;
  v25[0] = a2;
  sub_269C3F348(0, &qword_280C0AFF8, sub_269C3F428, sub_269C3F5BC);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C3A954(v18);
  sub_269C3A954(v16);
  v19 = *(v7 + 16);
  v19(v13, v18, v6);
  v26 = 1;
  v19(v10, v16, v6);
  v19(a4, v13, v6);
  sub_269C40C34();
  v21 = &a4[*(v20 + 48)];
  v22 = v26;
  *v21 = 0;
  v21[8] = v22;
  v19(&a4[*(v20 + 64)], v10, v6);
  v23 = *(v7 + 8);
  v23(v16, v6);
  v23(v18, v6);
  v23(v10, v6);
  v23(v13, v6);
}

id sub_269C3A954@<X0>(uint64_t a1@<X8>)
{
  v49[3] = a1;
  sub_269C3F528();
  v49[2] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D99790();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D997A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Somnogram(0);
  v13 = *(v1 + *(v12 + 20));
  v53 = v5;
  v54 = v4;
  v52 = v6;
  if ((v13 & 0x40) != 0)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = [result isAppleWatch];

    if (!v17)
    {
      if (qword_28034D798 != -1)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = sub_269D997C0();
  }

  else
  {
    sub_269D997F0();
    (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v8);
    sub_269D997E0();

    (*(v9 + 8))(v11, v8);
    v14 = sub_269D996D0();
  }

  while (1)
  {
    v18 = *(v1 + *(v12 + 24));
    v49[4] = v12;
    v12 = v1;
    v19 = sub_269D974B0();
    v20 = [v18 stringFromDate_];

    v21 = sub_269D9A630();
    v23 = v22;

    *&v68 = v21;
    *(&v68 + 1) = v23;
    sub_269C3EEE8();
    v24 = sub_269D99960();
    v26 = v25;
    v28 = v27;

    v29 = sub_269D99920();
    v31 = v30;
    v32 = v14;
    v34 = v33;
    v50 = v35;

    sub_269C41568(v24, v26, v28 & 1);

    v36 = v51;
    sub_269C40D78(sub_269C41510, sub_269C41510, MEMORY[0x277CE0A00], v51);
    v37 = sub_269C34610();
    v49[1] = v32;
    if (v37)
    {
      v38 = sub_269D995F0();
      sub_269D99640();
      sub_269D98990();
      LOBYTE(v72) = v34 & 1;
      LOBYTE(v60) = 0;
      *&v64 = v29;
      *(&v64 + 1) = v31;
      LOBYTE(v65) = v34 & 1;
      *(&v65 + 1) = v50;
      LOBYTE(v66) = v38;
      *(&v66 + 1) = v39;
      *&v67[0] = v40;
      *(&v67[0] + 1) = v41;
      *&v67[1] = v42;
      BYTE8(v67[1]) = 0;
      *&v55 = v29;
      *(&v55 + 1) = v31;
      LOBYTE(v56) = v34 & 1;
      *(&v56 + 1) = v50;
      LOBYTE(v57) = v38;
      *(&v57 + 1) = v39;
      *&v58[0] = v40;
      *(&v58[0] + 1) = v41;
      *&v58[1] = v42;
      BYTE8(v58[1]) = 0;
      sub_269C41668(v29, v31, v34 & 1);

      sub_269C41678(&v64, &v68);
      sub_269C41708(&v55);
      v70 = v66;
      v71[0] = v67[0];
      *(v71 + 9) = *(v67 + 9);
      v68 = v64;
      v69 = v65;
      LOBYTE(v60) = 0;
      BYTE9(v71[1]) = 0;
      sub_269C41678(&v64, &v72);
      sub_269C420D4(0, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_269C3F704();
      sub_269D992D0();
      sub_269C41568(v29, v31, v34 & 1);

      sub_269C41708(&v64);
    }

    else
    {
      LOBYTE(v55) = v34 & 1;
      LOBYTE(v64) = 1;
      *&v68 = v29;
      *(&v68 + 1) = v31;
      LOBYTE(v69) = v34 & 1;
      *(&v69 + 1) = v50;
      BYTE9(v71[1]) = 1;
      sub_269C420D4(0, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_269C3F704();
      sub_269D992D0();
    }

    (*(v52 + 8))(v36, v53);
    v43 = v54;
    v62 = v74;
    v63[0] = v75[0];
    *(v63 + 10) = *(v75 + 10);
    v60 = v72;
    v61 = v73;
    v66 = v74;
    v67[0] = v75[0];
    *(v67 + 10) = *(v75 + 10);
    v64 = v72;
    v65 = v73;
    sub_269C41578(&v60, &v68);
    sub_269C415F4(&v64);
    v44 = [objc_opt_self() secondaryLabelColor];
    v45 = sub_269D99CC0();
    KeyPath = swift_getKeyPath();
    v57 = v62;
    v58[0] = v63[0];
    *(v58 + 10) = *(v63 + 10);
    v55 = v60;
    v56 = v61;
    *&v59 = KeyPath;
    *(&v59 + 1) = v45;
    v47 = *MEMORY[0x277CDFA00];
    v48 = sub_269D98CA0();
    (*(*(v48 - 8) + 104))(v43, v47, v48);
    sub_269C4264C(&qword_280C0B650, MEMORY[0x277CDFA28]);
    v1 = v48;
    if (sub_269D9A560())
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_7:
    v14 = qword_280351430;
  }

  sub_269C3F428();
  sub_269C3F5BC();
  sub_269C4264C(&qword_280C0B480, sub_269C3F528);
  sub_269D99AF0();

  sub_269C42558(v43, sub_269C3F528);
  v70 = v57;
  v71[0] = v58[0];
  v71[1] = v58[1];
  v71[2] = v59;
  v68 = v55;
  v69 = v56;
  return sub_269C42558(&v68, sub_269C3F428);
}

uint64_t sub_269C3B120@<X0>(uint64_t a1@<X8>)
{
  sub_269C3CAC8(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_269D97580();
  sub_269D98660();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_269C3A954(a1);
    (*(v6 + 8))(v4, v5);
  }

  return result;
}

double sub_269C3B2D8@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_269D991A0();
  v18 = 1;
  sub_269C3B458(a1, a2, &v12);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = v16;
  v24[0] = v12;
  v24[1] = v13;
  sub_269C424F0(&v19, &v11, sub_269C3FD0C);
  sub_269C42558(v24, sub_269C3FD0C);

  *&v17[7] = v19;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *v17;
  *(a3 + 33) = *&v17[16];
  result = *&v17[32];
  v9 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v9;
  v17[71] = v23;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 81) = *&v17[64];
  *(a3 + 17) = v7;
  return result;
}

uint64_t sub_269C3B458@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_269C41868(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v56 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = sub_269CDB614(a1);
  v60 = v9;
  sub_269C3EEE8();
  v10 = sub_269D99960();
  v50 = a1;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  sub_269D99CC0();
  v18 = sub_269D998F0();
  v52 = v19;
  v53 = v18;
  v51 = v20;
  v54 = v21;

  sub_269C41568(v11, v13, v15 & 1);

  v22 = type metadata accessor for SleepStagesModel(0);
  sub_269C424F0(a2 + *(v22 + 20), v8, sub_269C41868);
  v23 = type metadata accessor for SleepMetricsWrapper(0);
  v24 = (*(*(v23 - 8) + 48))(v8, 1, v23);
  v55 = a2;
  if (v24 == 1)
  {
    sub_269C42558(v8, sub_269C41868);
  }

  else
  {
    sub_269C41440();
    v25 = sub_269D9A2D0();
    sub_269C42558(v8, type metadata accessor for SleepMetricsWrapper);
    sub_269CE0968(v50);
  }

  v26 = sub_269D9B4A0();
  v59 = sub_269CC0DEC(v26, v27);
  v60 = v28;
  v29 = sub_269D99960();
  v31 = v30;
  v33 = v32;
  v34 = [v16 secondaryLabelColor];
  sub_269D99CC0();
  v35 = sub_269D998F0();
  v37 = v36;
  v39 = v38;

  sub_269C41568(v29, v31, v33 & 1);

  type metadata accessor for Somnogram(0);
  sub_269C3B85C(v35, v37, v39 & 1, &v59);
  sub_269C41568(v35, v37, v39 & 1);

  v40 = v59;
  v41 = v60;
  v42 = v61;
  v43 = v62;
  v44 = v51;
  v45 = v51 & 1;
  v58 = v51 & 1;
  v57 = v63 & 1;
  v46 = v63 & 1;
  v48 = v52;
  v47 = v53;
  *a3 = v53;
  *(a3 + 8) = v48;
  *(a3 + 16) = v44 & 1;
  *(a3 + 24) = v54;
  *(a3 + 32) = v40;
  *(a3 + 40) = v41;
  *(a3 + 48) = v42;
  *(a3 + 56) = v43;
  *(a3 + 64) = v46;
  sub_269C41668(v47, v48, v44 & 1);

  sub_269C4189C(v40, v41, v42);
  sub_269C418D8(v40, v41, v42);
  sub_269C41568(v47, v48, v45);
}

double sub_269C3B85C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  sub_269C41668(a1, a2, a3 & 1);
  sub_269C420D4(0, &qword_280C0B640, MEMORY[0x277CE0BD8], MEMORY[0x277CDDA60], MEMORY[0x277CDFAB8]);
  sub_269C41914();

  sub_269D992D0();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  return result;
}

uint64_t sub_269C3B950@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_269D99190();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_269C42434(0, &qword_280C0B0E8, sub_269C3D1FC);
  return sub_269C34768(v1, (a1 + *(v3 + 44)));
}

uint64_t GridView.body.getter@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_269C3BC58;
  a1[1] = result;
  return result;
}

uint64_t sub_269C3BA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D98AE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else if (((a2 - 1) & 0x8000000000000000) == 0)
  {
    v10[0] = 0;
    v10[1] = a2 - 1;
    swift_getKeyPath();
    (*(v5 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    (*(v5 + 32))(v9 + v8, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_269C420D4(0, &qword_280C0AF08, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269C3C630();
    sub_269C3C800();
    sub_269C3C900();
    sub_269D9A080();
  }

  __break(1u);
  return result;
}

unint64_t sub_269C3BC64()
{
  result = qword_28034DE10;
  if (!qword_28034DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DE10);
  }

  return result;
}

unint64_t sub_269C3BCBC()
{
  result = qword_28034DE18;
  if (!qword_28034DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DE18);
  }

  return result;
}

unint64_t sub_269C3BD14()
{
  result = qword_280C0B9A8;
  if (!qword_280C0B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9A8);
  }

  return result;
}

unint64_t sub_269C3BD6C()
{
  result = qword_280C0B9A0;
  if (!qword_280C0B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9A0);
  }

  return result;
}

double sub_269C3BDF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98AD0();
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v12;
  sub_269D98A20();
  v5 = v20;
  v6 = v21;
  v7 = v22;
  v3 = v23;
  v8 = v24;
  if (qword_280C0AFC0 != -1)
  {
LABEL_7:
    swift_once();
  }

  v13 = v4 / a2;
  v14 = v13 * (v11 + 1) + v13 * 0.5 + (v13 * v11 + v13 * 0.5 - (v13 * (v11 + 1) + v13 * 0.5)) * 0.5;
  v15 = qword_280C0AFC8;
  KeyPath = swift_getKeyPath();

  sub_269D98AD0();
  v18 = v17;

  result = v18 * 0.5;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v3;
  *(a3 + 32) = v8;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v15;
  *(a3 + 56) = v18 * 0.5;
  *(a3 + 64) = v14;
  return result;
}

uint64_t sub_269C3BFC0@<X0>(uint64_t (**a1)(uint64_t)@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_269C42698;
  a1[1] = result;
  return result;
}

void sub_269C3C038()
{
  sub_269C3C0C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepStagesModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269C3C0C4()
{
  if (!qword_280C0B660)
  {
    type metadata accessor for SleepDayModel(255);
    sub_269C4264C(&unk_280C0B810, type metadata accessor for SleepDayModel);
    v0 = sub_269D98C90();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B660);
    }
  }
}

unint64_t sub_269C3C184()
{
  result = qword_280C0B5E8;
  if (!qword_280C0B5E8)
  {
    sub_269C42240(255, &qword_280C0B5E0, sub_269C32EF0, sub_269C3C28C, MEMORY[0x277CE0338]);
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8);
    sub_269C3C404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B5E8);
  }

  return result;
}

unint64_t sub_269C3C2C8()
{
  result = qword_280C0B5D8;
  if (!qword_280C0B5D8)
  {
    sub_269C4232C(255, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
    sub_269C4264C(&qword_280C0B568, sub_269C32F80);
    sub_269C3C3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B5D8);
  }

  return result;
}

unint64_t sub_269C3C3B0()
{
  result = qword_280C0B7F0;
  if (!qword_280C0B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B7F0);
  }

  return result;
}

unint64_t sub_269C3C404()
{
  result = qword_280C0B628;
  if (!qword_280C0B628)
  {
    sub_269C3C28C(255);
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B628);
  }

  return result;
}

void sub_269C3C4C8()
{
  if (!qword_280C0B0D8)
  {
    sub_269C3C570();
    sub_269C40648(&qword_280C0AF90, sub_269C3C570, sub_269C3C900);
    v0 = sub_269D98C00();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B0D8);
    }
  }
}

void sub_269C3C570()
{
  if (!qword_280C0AF88)
  {
    sub_269C420D4(255, &qword_280C0AF08, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269C3C630();
    sub_269C3C800();
    v0 = sub_269D9A0A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AF88);
    }
  }
}

void sub_269C3C630()
{
  if (!qword_280C0B088)
  {
    sub_269C42240(255, &qword_280C0B0B8, sub_269C3C6D4, sub_269C3C784, MEMORY[0x277CDFAB8]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B088);
    }
  }
}

void sub_269C3C6D4()
{
  if (!qword_280C0B0F0)
  {
    sub_269C3C730();
    v0 = sub_269D98BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B0F0);
    }
  }
}

unint64_t sub_269C3C730()
{
  result = qword_280C0B260;
  if (!qword_280C0B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B260);
  }

  return result;
}

void sub_269C3C784()
{
  if (!qword_280C0B5B0)
  {
    sub_269C41CB8(255, &qword_280C0B580, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v0 = sub_269D99530();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B5B0);
    }
  }
}

unint64_t sub_269C3C800()
{
  result = qword_280C0AF00;
  if (!qword_280C0AF00)
  {
    sub_269C420D4(255, &qword_280C0AF08, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269C3C8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AF00);
  }

  return result;
}

unint64_t sub_269C3C8AC()
{
  result = qword_280C0AF50;
  if (!qword_280C0AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AF50);
  }

  return result;
}

unint64_t sub_269C3C900()
{
  result = qword_280C0B090;
  if (!qword_280C0B090)
  {
    sub_269C3C630();
    sub_269C3C980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B090);
  }

  return result;
}

unint64_t sub_269C3C980()
{
  result = qword_280C0B0C0;
  if (!qword_280C0B0C0)
  {
    sub_269C42240(255, &qword_280C0B0B8, sub_269C3C6D4, sub_269C3C784, MEMORY[0x277CDFAB8]);
    sub_269C4264C(&qword_280C0B0F8, sub_269C3C6D4);
    sub_269C4264C(&qword_280C0B5B8, sub_269C3C784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B0C0);
  }

  return result;
}

void sub_269C3CAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C3CB40()
{
  type metadata accessor for SleepStagesModel(319);
  if (v0 <= 0x3F)
  {
    sub_269C1B0B8(319, &qword_280C0BF28);
    if (v1 <= 0x3F)
    {
      sub_269C3CAC8(319, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_269C3CAC8(319, &qword_280C0B110, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_269C3CAC8(319, &qword_280C0B108, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_269C41CB8(319, &qword_280C0B100, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

void sub_269C3CD54()
{
  if (!qword_28034DE28)
  {
    sub_269C3C730();
    v0 = sub_269D989D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DE28);
    }
  }
}

uint64_t sub_269C3CDD0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMidY(v9);
  sub_269D998A0();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return sub_269D998C0();
}

double sub_269C3CE78@<D0>(uint64_t a1@<X8>)
{
  sub_269D998E0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_269C3CF00(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_269D98940();
  return sub_269C3CF88;
}

void sub_269C3CF88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_269C3CFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C3C730();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_269C3D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C3C730();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_269C3D09C(uint64_t a1)
{
  v2 = sub_269C3C730();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_269C3D0EC()
{
  result = qword_28034DE30;
  if (!qword_28034DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DE30);
  }

  return result;
}

unint64_t sub_269C3D144()
{
  result = qword_280C0B270[0];
  if (!qword_280C0B270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C0B270);
  }

  return result;
}

unint64_t sub_269C3D19C()
{
  result = qword_280C0B268;
  if (!qword_280C0B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B268);
  }

  return result;
}

void sub_269C3D1FC()
{
  if (!qword_280C0AF68)
  {
    sub_269C41AFC(255, &qword_280C0AFE0, sub_269C3D284, sub_269C40B38);
    v0 = sub_269D9A1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AF68);
    }
  }
}

void sub_269C3D300()
{
  if (!qword_280C0B038)
  {
    sub_269C3D3E8(255);
    sub_269C3EB10(255);
    sub_269C40258();
    sub_269C40648(&qword_280C0AF38, sub_269C3EB10, sub_269C406B8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B038);
    }
  }
}

void sub_269C3D430()
{
  if (!qword_280C0B008)
  {
    sub_269C3D7CC();
    sub_269C40054(255);
    sub_269C3DB1C();
    sub_269C3DE38();
    v0 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v0);
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    swift_getOpaqueTypeConformance2();
    sub_269C3FFD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C40144();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B008);
    }
  }
}

void sub_269C3D7CC()
{
  if (!qword_280C0B018)
  {
    sub_269C3DB1C();
    sub_269C3DE38();
    v0 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v0);
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    swift_getOpaqueTypeConformance2();
    sub_269C3FFD8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B018);
    }
  }
}

void sub_269C3DB1C()
{
  if (!qword_280C0B000)
  {
    sub_269C3DE38();
    v0 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v0);
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    swift_getOpaqueTypeConformance2();
    sub_269C3FFD8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B000);
    }
  }
}

void sub_269C3DE38()
{
  if (!qword_280C0B028)
  {
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B028);
    }
  }
}

void sub_269C3E0D8()
{
  if (!qword_280C0B020)
  {
    sub_269C3E308();
    sub_269C3E500();
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B020);
    }
  }
}

void sub_269C3E308()
{
  if (!qword_280C0B010)
  {
    sub_269C3E500();
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B010);
    }
  }
}

void sub_269C3E500()
{
  if (!qword_280C0B030)
  {
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B030);
    }
  }
}

void sub_269C3E684()
{
  if (!qword_280C0B598)
  {
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B598);
    }
  }
}

void sub_269C3E788()
{
  if (!qword_280C0B590)
  {
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B590);
    }
  }
}

void sub_269C3E85C()
{
  if (!qword_280C0B698)
  {
    sub_269C3E930();
    sub_269C3E9E4();
    sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_269D985D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B698);
    }
  }
}

void sub_269C3E930()
{
  if (!qword_280C0B6F8)
  {
    sub_269C3E9E4();
    sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B6F8);
    }
  }
}

void sub_269C3E9E4()
{
  if (!qword_280C0B6A8)
  {
    sub_269C3EA48();
    sub_269C3EF3C();
    v0 = sub_269D985B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B6A8);
    }
  }
}

void sub_269C3EA48()
{
  if (!qword_280C0B540)
  {
    sub_269C3EB10(255);
    sub_269C3EB44();
    sub_269C4264C(&qword_280C0B508, sub_269C3EB10);
    v0 = sub_269D9A0A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B540);
    }
  }
}

void sub_269C3EB44()
{
  if (!qword_280C0B700)
  {
    sub_269C3EC88();
    sub_269C3ED88();
    sub_269C3EE50();
    sub_269D98480();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C3EEE8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B700);
    }
  }
}

void sub_269C3EC88()
{
  if (!qword_280C0B6F0)
  {
    sub_269C3ED88();
    sub_269C3EE50();
    sub_269D98480();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B6F0);
    }
  }
}

void sub_269C3ED88()
{
  if (!qword_280C0B710)
  {
    sub_269C3EE50();
    sub_269D98480();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B710);
    }
  }
}

void sub_269C3EE50()
{
  if (!qword_280C0B708)
  {
    sub_269D98480();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B708);
    }
  }
}

unint64_t sub_269C3EEE8()
{
  result = qword_280C0B518;
  if (!qword_280C0B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B518);
  }

  return result;
}

unint64_t sub_269C3EF3C()
{
  result = qword_280C0B548;
  if (!qword_280C0B548)
  {
    sub_269C3EA48();
    sub_269C3EC88();
    sub_269C3ED88();
    sub_269C3EE50();
    sub_269D98480();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C3EEE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B548);
  }

  return result;
}

void sub_269C3F0A4()
{
  if (!qword_280C0B190)
  {
    sub_269C3FB30(255, &qword_280C0B1D8, sub_269C3F138, sub_269C3F1F0);
    sub_269C3F7A8();
    v0 = sub_269D98650();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B190);
    }
  }
}

void sub_269C3F16C()
{
  if (!qword_280C0B690)
  {
    sub_269D98630();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B690);
    }
  }
}

void sub_269C3F224()
{
  if (!qword_280C0B1B8)
  {
    sub_269C3F348(255, &qword_280C0AFF8, sub_269C3F428, sub_269C3F5BC);
    sub_269C3F428();
    sub_269C3F528();
    sub_269C3F5BC();
    sub_269C4264C(&qword_280C0B480, sub_269C3F528);
    swift_getOpaqueTypeConformance2();
    v0 = sub_269D984F0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B1B8);
    }
  }
}

void sub_269C3F348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_269C3F528();
    a4();
    sub_269C4264C(&qword_280C0B480, sub_269C3F528);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269C3F428()
{
  if (!qword_280C0B0C8)
  {
    sub_269C3F4A8(255, &qword_280C0B060, &qword_280C0B648, MEMORY[0x277CDF928]);
    sub_269C3C784();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B0C8);
    }
  }
}

void sub_269C3F4A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C420D4(255, a3, MEMORY[0x277CE0BD8], a4, MEMORY[0x277CDFAB8]);
    v5 = sub_269D992E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269C3F528()
{
  if (!qword_280C0B478)
  {
    sub_269D98CA0();
    sub_269C4264C(&qword_280C0B658, MEMORY[0x277CDFA28]);
    v0 = sub_269D9B1A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B478);
    }
  }
}

unint64_t sub_269C3F5BC()
{
  result = qword_280C0B0D0;
  if (!qword_280C0B0D0)
  {
    sub_269C3F428();
    sub_269C3F66C();
    sub_269C4264C(&qword_280C0B5B8, sub_269C3C784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B0D0);
  }

  return result;
}

unint64_t sub_269C3F66C()
{
  result = qword_280C0B068;
  if (!qword_280C0B068)
  {
    sub_269C3F4A8(255, &qword_280C0B060, &qword_280C0B648, MEMORY[0x277CDF928]);
    sub_269C3F704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B068);
  }

  return result;
}

unint64_t sub_269C3F704()
{
  result = qword_280C0B0B0;
  if (!qword_280C0B0B0)
  {
    sub_269C420D4(255, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B0B0);
  }

  return result;
}

unint64_t sub_269C3F7A8()
{
  result = qword_280C0B1E0;
  if (!qword_280C0B1E0)
  {
    sub_269C3FB30(255, &qword_280C0B1D8, sub_269C3F138, sub_269C3F1F0);
    sub_269C3F8A4();
    sub_269C40648(&qword_280C0B1A8, sub_269C3F1F0, sub_269C3F94C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B1E0);
  }

  return result;
}

unint64_t sub_269C3F8A4()
{
  result = qword_280C0B680;
  if (!qword_280C0B680)
  {
    sub_269C3F138(255);
    sub_269D98630();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B680);
  }

  return result;
}

unint64_t sub_269C3F980()
{
  result = qword_280C0B4E8;
  if (!qword_280C0B4E8)
  {
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B4E8);
  }

  return result;
}

void sub_269C3FA14()
{
  if (!qword_280C0B180)
  {
    sub_269C3FB30(255, &qword_280C0B1C8, sub_269C3FAA8, sub_269C3FBB0);
    sub_269C3FDC0();
    v0 = sub_269D98650();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B180);
    }
  }
}

void sub_269C3FAA8()
{
  if (!qword_280C0B1F8)
  {
    sub_269C3FB30(255, &qword_280C0B200, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B1F8);
    }
  }
}

void sub_269C3FB30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98410();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C3FBE4()
{
  if (!qword_280C0B6E0)
  {
    sub_269C3FC78();
    sub_269C4264C(&qword_280C0B558, sub_269C3FC78);
    v0 = sub_269D984F0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B6E0);
    }
  }
}

void sub_269C3FC78()
{
  if (!qword_280C0B550)
  {
    sub_269C3FD0C(255);
    sub_269C4264C(&qword_280C0B528, sub_269C3FD0C);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B550);
    }
  }
}

void sub_269C3FD40()
{
  if (!qword_280C0B5A0)
  {
    sub_269C3F4A8(255, &qword_280C0B5F0, &qword_280C0B640, MEMORY[0x277CDDA60]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C0B5A0);
    }
  }
}

unint64_t sub_269C3FDC0()
{
  result = qword_280C0B1D0;
  if (!qword_280C0B1D0)
  {
    sub_269C3FB30(255, &qword_280C0B1C8, sub_269C3FAA8, sub_269C3FBB0);
    sub_269C40648(&qword_280C0B1E8, sub_269C3FAA8, sub_269C3FEF4);
    sub_269C40648(&qword_280C0B6D0, sub_269C3FBB0, sub_269C3FFA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B1D0);
  }

  return result;
}

unint64_t sub_269C3FEF4()
{
  result = qword_280C0B208;
  if (!qword_280C0B208)
  {
    sub_269C3FB30(255, &qword_280C0B200, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B208);
  }

  return result;
}

unint64_t sub_269C3FFD8()
{
  result = qword_280C0B4F8;
  if (!qword_280C0B4F8)
  {
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B4F8);
  }

  return result;
}

void sub_269C40090()
{
  if (!qword_280C0B588)
  {
    sub_269D98530();
    sub_269C4264C(&qword_280C0B6B8, MEMORY[0x277CBB360]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280C0B588);
    }
  }
}

unint64_t sub_269C40144()
{
  result = qword_280C0B638;
  if (!qword_280C0B638)
  {
    sub_269C40054(255);
    sub_269D98530();
    sub_269C4264C(&qword_280C0B6B8, MEMORY[0x277CBB360]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B638);
  }

  return result;
}

unint64_t sub_269C40258()
{
  result = qword_280C0B0A0;
  if (!qword_280C0B0A0)
  {
    sub_269C3D3E8(255);
    sub_269C3D7CC();
    sub_269C40054(255);
    sub_269C3DB1C();
    sub_269C3DE38();
    v1 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v1);
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    swift_getOpaqueTypeConformance2();
    sub_269C3FFD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C40144();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B5C8, sub_269C40224);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B0A0);
  }

  return result;
}

uint64_t sub_269C40648(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_269C406EC()
{
  result = qword_280C0B058;
  if (!qword_280C0B058)
  {
    sub_269C3D2B8(255);
    sub_269C3D3E8(255);
    sub_269C3EB10(255);
    sub_269C40258();
    sub_269C40648(&qword_280C0AF38, sub_269C3EB10, sub_269C406B8);
    swift_getOpaqueTypeConformance2();
    sub_269C3D7CC();
    sub_269C40054(255);
    sub_269C3DB1C();
    sub_269C3DE38();
    v1 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v1);
    sub_269C3E0D8();
    sub_269C3FA14();
    sub_269C3E308();
    sub_269C3E500();
    sub_269C3E684();
    sub_269C3F0A4();
    sub_269C3E788();
    sub_269C3E85C();
    sub_269D98540();
    sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    swift_getOpaqueTypeConformance2();
    sub_269C3F980();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    swift_getOpaqueTypeConformance2();
    sub_269C3FFD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_269C40144();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B058);
  }

  return result;
}

void sub_269C40B6C()
{
  if (!qword_280C0AFB0)
  {
    sub_269C40C00(255);
    sub_269C4264C(&qword_280C0AF80, sub_269C40C00);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AFB0);
    }
  }
}

void sub_269C40C34()
{
  if (!qword_280C0AFF0)
  {
    sub_269C3F348(255, &qword_280C0AFF8, sub_269C3F428, sub_269C3F5BC);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280C0AFF0);
    }
  }
}

uint64_t sub_269C40D78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_269D99040();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_269C424F0(v8, &v20 - v15, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_269D9AB70();
    v19 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_269C40F74()
{
  sub_269D99000();
  sub_269C4264C(&qword_280C0B078, MEMORY[0x277CE3940]);
  sub_269D99050();
  return v1;
}

uint64_t sub_269C40FF0@<X0>(_BYTE *a1@<X8>)
{
  sub_269D99000();
  sub_269C4264C(&qword_280C0B078, MEMORY[0x277CE3940]);
  result = sub_269D99050();
  *a1 = v3;
  return result;
}

uint64_t sub_269C410A4(uint64_t a1)
{
  v2 = sub_269D98E20();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269D98F10();
}

uint64_t sub_269C4116C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_269D97010();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_269C43380(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_269C43FB8();
      goto LABEL_9;
    }

    sub_269C43984(v18, a4 & 1);
    v21 = sub_269C43380(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_269D9B2C0();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_269C41348(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_269C41348(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_269D97010();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void sub_269C41440()
{
  if (!qword_280C0BBC0[0])
  {
    sub_269C1B0B8(255, &qword_280C0BBB0);
    v0 = sub_269D9A2F0();
    if (!v1)
    {
      atomic_store(v0, qword_280C0BBC0);
    }
  }
}

uint64_t sub_269C41544(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_269C41568(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269C41578(uint64_t a1, uint64_t a2)
{
  sub_269C3F4A8(0, &qword_280C0B060, &qword_280C0B648, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C415F4(uint64_t a1)
{
  sub_269C3F4A8(0, &qword_280C0B060, &qword_280C0B648, MEMORY[0x277CDF928]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C41668(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269C41678(uint64_t a1, uint64_t a2)
{
  sub_269C420D4(0, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C41708(uint64_t a1)
{
  sub_269C420D4(0, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C417C8(uint64_t a1, uint64_t a2)
{
  sub_269C3FB30(0, &qword_280C0B200, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C4189C(uint64_t a1, uint64_t a2, char a3)
{
  sub_269C41668(a1, a2, a3 & 1);
}

uint64_t sub_269C418D8(uint64_t a1, uint64_t a2, char a3)
{
  sub_269C41568(a1, a2, a3 & 1);
}

unint64_t sub_269C41914()
{
  result = qword_280C0B0A8;
  if (!qword_280C0B0A8)
  {
    sub_269C420D4(255, &qword_280C0B640, MEMORY[0x277CE0BD8], MEMORY[0x277CDDA60], MEMORY[0x277CDFAB8]);
    sub_269C419C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B0A8);
  }

  return result;
}

unint64_t sub_269C419C0()
{
  result = qword_280C0B080;
  if (!qword_280C0B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B080);
  }

  return result;
}

void sub_269C41AFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_269C41B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C41BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C41C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269C41CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for Somnogram(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = type metadata accessor for SleepStagesModel(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for SleepMetricsWrapper(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    sub_269C41440();
    (*(*(v6 - 8) + 8))(v2 + v4, v6);
  }

  v7 = *(v3 + 24);
  v8 = sub_269D97010();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[7];
  sub_269C414A8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269D989F0();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_269C414DC(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269D99180();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v1[9];
  sub_269C41510(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_269D99790();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
  }

  sub_269C41544(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_269C42040(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Somnogram(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_269C420D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C42128()
{
  if (!qword_280C0B4D0)
  {
    sub_269D97580();
    sub_269C4264C(&qword_280C0BB68, MEMORY[0x277CC9578]);
    v0 = sub_269D9AA60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B4D0);
    }
  }
}

double sub_269C421BC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D98AE0();
  v5 = *(v2 + 16);

  return sub_269C3BDF8(a1, v5, a2);
}

void sub_269C42240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_269C422C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269C4232C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_269C42398(uint64_t a1, uint64_t a2)
{
  sub_269C4232C(0, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269C42434(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98BB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_269C424D4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 107) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_269C424F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C42558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269C425B8()
{
  if (!qword_280C0AF98)
  {
    sub_269C3D1FC();
    sub_269C4264C(&qword_280C0AF70, sub_269C3D1FC);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AF98);
    }
  }
}

uint64_t sub_269C4264C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OneWeekResults.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OneWeekResults() + 24);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OneWeekResults()
{
  result = qword_28034DE40;
  if (!qword_28034DE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OneWeekResults.averageDurationFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for OneWeekResults() + 28));

  return v1;
}

id OneWeekResults.axisFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for OneWeekResults() + 32));

  return v1;
}

uint64_t OneWeekResults.week.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OneWeekResults() + 36);

  return sub_269C42834(v3, a1);
}

uint64_t sub_269C42834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekResults(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL OneWeekResults.hasData.getter()
{
  v1 = *(v0 + *(type metadata accessor for OneWeekResults() + 36));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0.0;
  }

  else
  {
    v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
    v6 = (v1 + 72);
    v4 = 0.0;
    v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v8 = *(v6 - 4);
      v9 = *v6;
      v6 += 8;
      v4 = v4 + v8 + v9;
      v7 -= 2;
    }

    while (v7);
    if (v2 == v3)
    {
      return v4 > 0.0;
    }
  }

  v10 = v2 - v3;
  v11 = (v1 + 32 * v3 + 40);
  do
  {
    v12 = *v11;
    v11 += 4;
    v4 = v4 + v12;
    --v10;
  }

  while (v10);
  return v4 > 0.0;
}

uint64_t static OneWeekResults.emptyResults.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for WeekResultsBuilder();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_269D97670();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_269D977A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *MEMORY[0x277CCBBF8];
  v14 = *(MEMORY[0x277CCBBF8] + 8);
  (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
  sub_269D97680();
  (*(v6 + 8))(v8, v5);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v15 setAllowedUnits_];
  [v15 setUnitsStyle_];
  v16 = _sSo23NSDateIntervalFormatterC13SleepHealthUIE15weeklyChartAxisABvgZ_0();
  *a1 = v13;
  *(a1 + 1) = v14;
  *(a1 + 2) = MEMORY[0x277D84F90];
  v17 = type metadata accessor for OneWeekResults();
  v18 = v17[6];
  v65 = v10;
  v19 = *(v10 + 16);
  v19(&a1[v18], v12, v9);
  *&a1[v17[7]] = v15;
  v62 = v17;
  v63 = a1;
  *&a1[v17[8]] = v16;
  v20 = &v67[v3[7]];
  v64 = v12;
  v21 = v12;
  v22 = v67;
  v66 = v9;
  v19(v20, v21, v9);
  v23 = v3[11];
  v24 = MEMORY[0x277D84F90];
  *(v22 + v23) = sub_269C44654(MEMORY[0x277D84F90]);
  *v22 = v13;
  v22[1] = 7;
  v25 = v3[8];
  *(v22 + v25) = 0x40CC200000000000;
  *(v22 + v3[9]) = v15;
  *(v22 + v3[10]) = v16;
  if (!(v24 >> 62))
  {
    v26 = v15;
    v27 = v16;
LABEL_3:
    sub_269D65D8C();
    if ((v29 & 1) == 0)
    {
      *(v22 + v25) = v28;
    }

    sub_269D65F84(&v63[v62[9]]);
    (*(v65 + 8))(v64, v66);
    return sub_269C44CAC(v22);
  }

  v31 = sub_269D9AF50();
  v32 = v15;
  v33 = v16;
  if (!v31)
  {
    goto LABEL_3;
  }

  v34 = 0;
  v35 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
  v60 = v31;
  while (1)
  {
    v36 = MEMORY[0x26D651260](v34, MEMORY[0x277D84F90]);
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v38 = v36;
    [v36 v35[311]];
    if (sub_269D9ABB0())
    {
      v61 = v34 + 1;
      v39 = [v38 v35[311]];
      v40 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v22 + v23);
      v42 = v68;
      v43 = v39;
      v45 = sub_269C43418(v39);
      v46 = v42[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_25;
      }

      if (v42[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v51 = v68;
          if ((v44 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v54 = v44;
          sub_269C44238();
          v51 = v68;
          if ((v54 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v59 = v44;
        sub_269C43D5C(v48, isUniquelyReferenced_nonNull_native);
        v49 = sub_269C43418(v43);
        if ((v59 & 1) != (v50 & 1))
        {
          goto LABEL_27;
        }

        v45 = v49;
        v51 = v68;
        if ((v59 & 1) == 0)
        {
LABEL_21:
          v51[(v45 >> 6) + 8] |= 1 << v45;
          *(v51[6] + 8 * v45) = v43;
          *(v51[7] + 8 * v45) = v40;

          v55 = v51[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_26;
          }

          v51[2] = v57;
          goto LABEL_23;
        }
      }

      v52 = v51[7];
      v53 = *(v52 + 8 * v45);
      *(v52 + 8 * v45) = v40;

LABEL_23:
      v35 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
      v31 = v60;
      v37 = v61;
      *(v22 + v23) = v51;
      goto LABEL_9;
    }

LABEL_9:
    ++v34;
    if (v37 == v31)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_269D9B2C0();
  __break(1u);
  return result;
}

uint64_t OneWeekResults.init(morningIndexRange:summaries:gregorianCalendar:averageDurationFormatter:axisFormatter:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, unint64_t *a7@<X8>)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  v69 = a3;
  v12 = type metadata accessor for WeekResultsBuilder();
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v16 = type metadata accessor for OneWeekResults();
  v17 = v16[6];
  v18 = sub_269D977A0();
  v58 = *(v18 - 8);
  v19 = *(v58 + 16);
  v20 = a7 + v17;
  v21 = a1;
  v19(v20, a4, v18);
  v22 = v62;
  v23 = v63;
  *(a7 + v16[7]) = v62;
  v59 = v16;
  v60 = v18;
  v24 = v16[8];
  v25 = v69;
  v61 = a7;
  *(a7 + v24) = v23;
  isUniquelyReferenced_nonNull_native = v22;
  v19(v15 + v13[7], v64, v18);
  v27 = v15;
  v28 = v13[11];
  *(v15 + v28) = sub_269C44654(MEMORY[0x277D84F90]);
  *v15 = v21;
  v15[1] = 7;
  v29 = v13[8];
  *(v15 + v29) = 0x40CC200000000000;
  *(v15 + v13[9]) = isUniquelyReferenced_nonNull_native;
  v30 = v13[10];
  v31 = v23;
  *(v15 + v30) = v23;
  if (v25 >> 62)
  {
LABEL_31:
    v32 = sub_269D9AF50();
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_32:
    v54 = isUniquelyReferenced_nonNull_native;
    v55 = v31;
    sub_269D65D8C();
    if ((v56 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v32 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_32;
  }

LABEL_3:
  v57 = v29;
  v33 = v25 & 0xC000000000000001;
  v65 = v25 & 0xFFFFFFFFFFFFFF8;

  v34 = isUniquelyReferenced_nonNull_native;
  v35 = v31;
  v36 = 0;
  isUniquelyReferenced_nonNull_native = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
  v67 = v32;
  v68 = v21;
  v66 = v25 & 0xC000000000000001;
  do
  {
    if (v33)
    {
      v37 = MEMORY[0x26D651260](v36, v25);
    }

    else
    {
      if (v36 >= *(v65 + 16))
      {
        goto LABEL_29;
      }

      v37 = *(v25 + 8 * v36 + 32);
    }

    v31 = v37;
    v29 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v37 *(isUniquelyReferenced_nonNull_native + 2488)];
    if ((sub_269D9ABB0() & 1) == 0)
    {

      goto LABEL_5;
    }

    v38 = [v31 *(isUniquelyReferenced_nonNull_native + 2488)];
    v31 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v27;
    v25 = v28;
    v27 = *(v27 + v28);
    v70 = v27;
    v21 = sub_269C43418(v38);
    v41 = v27[2];
    v42 = (v40 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_28;
    }

    v28 = v40;
    if (v27[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v70;
        if ((v40 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v27 = &v70;
        sub_269C44238();
        isUniquelyReferenced_nonNull_native = v70;
        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_269C43D5C(v43, isUniquelyReferenced_nonNull_native);
      v27 = v70;
      v44 = sub_269C43418(v38);
      if ((v28 & 1) != (v45 & 1))
      {
        result = sub_269D9B2C0();
        __break(1u);
        return result;
      }

      v21 = v44;
      isUniquelyReferenced_nonNull_native = v70;
      if ((v28 & 1) == 0)
      {
LABEL_21:
        *(isUniquelyReferenced_nonNull_native + 8 * (v21 >> 6) + 64) |= 1 << v21;
        *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v21) = v38;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v21) = v31;

        v48 = *(isUniquelyReferenced_nonNull_native + 16);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_30;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v50;
        goto LABEL_23;
      }
    }

    v46 = *(isUniquelyReferenced_nonNull_native + 56);
    v47 = *(v46 + 8 * v21);
    *(v46 + 8 * v21) = v31;

LABEL_23:
    v27 = v39;
    v28 = v25;
    *(v39 + v25) = isUniquelyReferenced_nonNull_native;
    v21 = v68;
    v25 = v69;
    v33 = v66;
    v32 = v67;
    isUniquelyReferenced_nonNull_native = 0x279C86000;
LABEL_5:
    ++v36;
  }

  while (v29 != v32);

  v29 = v57;
  sub_269D65D8C();
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_25:
  *(v27 + v29) = v51;
LABEL_26:
  sub_269D65F84(v61 + v59[9]);
  (*(v58 + 8))(v64, v60);
  return sub_269C44CAC(v27);
}

unint64_t sub_269C43240(uint64_t a1)
{
  sub_269D9A630();
  sub_269D9B350();
  sub_269D9A6A0();
  v2 = sub_269D9B390();

  return sub_269C43880(a1, v2);
}

unint64_t sub_269C432D0(uint64_t a1)
{
  v2 = sub_269D9AF80();

  return sub_269C434D4(a1, v2);
}

unint64_t sub_269C43314(uint64_t a1)
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](a1);
  v2 = sub_269D9B390();

  return sub_269C4359C(a1, v2);
}

unint64_t sub_269C43380(uint64_t a1)
{
  sub_269D97010();
  sub_269C45570(&qword_280C0BB98, MEMORY[0x277CC88A8]);
  v2 = sub_269D9A4D0();

  return sub_269C43608(a1, v2);
}

unint64_t sub_269C43418(uint64_t a1)
{
  v2 = sub_269D9B340();

  return sub_269C4359C(a1, v2);
}

unint64_t sub_269C4345C(uint64_t a1, uint64_t a2)
{
  sub_269D9B350();
  sub_269D9A6A0();
  v4 = sub_269D9B390();

  return sub_269C437C8(a1, a2, v4);
}

unint64_t sub_269C434D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_269C45058(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6511E0](v9, a1);
      sub_269C3227C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_269C4359C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_269C43608(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_269D97010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_269C45570(&qword_280C0BB90, MEMORY[0x277CC88A8]);
      v15 = sub_269D9A560();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_269C437C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_269D9B280())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_269C43880(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_269D9A630();
      v8 = v7;
      if (v6 == sub_269D9A630() && v8 == v9)
      {
        break;
      }

      v11 = sub_269D9B280();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_269C43984(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_269D97010();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_269C44E9C();
  v44 = a2;
  result = sub_269D9B170();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    v43 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v6 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_269C45570(&qword_280C0BB98, MEMORY[0x277CC88A8]);
      result = sub_269D9A4D0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v6 = v42;
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_269C43D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_269C4545C();
  result = sub_269D9B170();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_269D9B340();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_269C43FB8()
{
  v1 = v0;
  v35 = sub_269D97010();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C44E9C();
  v3 = *v0;
  v4 = sub_269D9B160();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v30, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_21;
      }

      v17 = *(v30 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

id sub_269C44238()
{
  v1 = v0;
  sub_269C4545C();
  v2 = *v0;
  v3 = sub_269D9B160();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

unint64_t sub_269C44388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269C45154();
    v3 = sub_269D9B180();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_269C43240(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_269C4449C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269C452A8();
    v3 = sub_269D9B180();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_269C43240(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_269C44580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269C454D4();
    v3 = sub_269D9B180();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_269C43314(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_269C44654(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_269C4545C();
  v3 = sub_269D9B180();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_269C43418(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_269C43418(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_269C44744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269C451F0(0, &qword_28034DE98);
    v3 = sub_269D9B180();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_269C4345C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_269C4485C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D84030];
    sub_269C451F0(0, &qword_28034DE78);
    v4 = sub_269D9B180();
    v5 = a1 + 32;

    while (1)
    {
      sub_269C44FD8(v5, v14, &qword_28034DE80, v3, sub_269C45244);
      result = sub_269C432D0(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_269C45048(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_269C449C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D837D0];
    sub_269C451F0(0, &qword_28034DEA0);
    v4 = sub_269D9B180();
    v5 = a1 + 32;

    while (1)
    {
      sub_269C44FD8(v5, &v14, &qword_28034DEA8, v3, sub_269C45244);
      v6 = v14;
      v7 = v15;
      result = sub_269C4345C(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_269C45048(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_269C44B80(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_269D9B180();
    v9 = a1 + 32;

    while (1)
    {
      sub_269C44FD8(v9, &v16, a3, a4, sub_269C453F4);
      v10 = v16;
      result = sub_269C43240(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_269C45048(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
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

uint64_t sub_269C44CAC(uint64_t a1)
{
  v2 = type metadata accessor for WeekResultsBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C44D30()
{
  type metadata accessor for HKDayIndexRange(319);
  if (v0 <= 0x3F)
  {
    sub_269C44E34();
    if (v1 <= 0x3F)
    {
      sub_269D977A0();
      if (v2 <= 0x3F)
      {
        sub_269C1B0B8(319, &qword_28034DE58);
        if (v3 <= 0x3F)
        {
          sub_269C1B0B8(319, &qword_28034DE60);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WeekResults(319);
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

void sub_269C44E34()
{
  if (!qword_28034DE50)
  {
    sub_269C1B0B8(255, &qword_280C0AED8);
    v0 = sub_269D9A840();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DE50);
    }
  }
}

void sub_269C44E9C()
{
  if (!qword_280C0B488)
  {
    sub_269D97010();
    sub_269C45570(&qword_280C0BB98, MEMORY[0x277CC88A8]);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B488);
    }
  }
}

void sub_269C44F38()
{
  if (!qword_28034DE68)
  {
    type metadata accessor for TraitKey(255);
    sub_269C45570(&qword_28034DBD8, type metadata accessor for TraitKey);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DE68);
    }
  }
}

uint64_t sub_269C44FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

_OWORD *sub_269C45048(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_269C450B4()
{
  if (!qword_28034DE88)
  {
    type metadata accessor for Key(255);
    sub_269C45570(&qword_28034DBA0, type metadata accessor for Key);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DE88);
    }
  }
}

void sub_269C45154()
{
  if (!qword_28034DE90)
  {
    type metadata accessor for FeatureKey(255);
    sub_269C45570(&unk_2803505D0, type metadata accessor for FeatureKey);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DE90);
    }
  }
}

void sub_269C451F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269D9B190();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_269C45244(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269C452A8()
{
  if (!qword_28034DEB0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_269C45570(&qword_28034DBD8, type metadata accessor for TraitKey);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DEB0);
    }
  }
}

void sub_269C45354()
{
  if (!qword_28034DEB8)
  {
    type metadata accessor for AttributeName(255);
    sub_269C45570(&qword_28034DBF8, type metadata accessor for AttributeName);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DEB8);
    }
  }
}

void sub_269C453F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269C4545C()
{
  if (!qword_28034DEC8)
  {
    sub_269C1B0B8(255, &qword_280C0AED8);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DEC8);
    }
  }
}

void sub_269C454D4()
{
  if (!qword_28034DED0)
  {
    type metadata accessor for CLKDeviceSizeClass(255);
    sub_269C45570(&qword_28034DED8, type metadata accessor for CLKDeviceSizeClass);
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DED0);
    }
  }
}

uint64_t sub_269C45570(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_269C455B8()
{
  type metadata accessor for SilentModeModel();
  v0 = swift_allocObject();
  result = sub_269C460D4();
  qword_28034DEE0 = v0;
  return result;
}

uint64_t static SilentModeModel.shared.getter()
{
  if (qword_28034D610 != -1)
  {
    swift_once();
  }
}

uint64_t sub_269C45654@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C456D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269D98890();
}

uint64_t sub_269C45748()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t sub_269C457BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269D98890();
}

void (*sub_269C4582C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

void sub_269C458D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id sub_269C45938()
{
  v0 = sub_269C46D94();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 getSilentMode];

  return v2;
}

uint64_t sub_269C45980()
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C45A08(uint64_t a1)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269C45BAC()
{
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C45C30(uint64_t a1)
{
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_269C45D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void (*sub_269C45DDC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C45D88(0, &qword_28034DEF0, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI15SilentModeModel__enabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

void sub_269C45F6C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_269D98860();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_269D98860();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void *sub_269C460D4()
{
  v1 = v0;
  v47 = *v0;
  v2 = v47;
  sub_269C47688(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_269D9ACD0();
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  sub_269C2FB3C();
  v55 = v12;
  v60 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v0[2] = 0;
  v0[3] = 0;
  v22 = OBJC_IVAR____TtC13SleepHealthUI15SilentModeModel__enabled;
  type metadata accessor for SilentModeModel();
  LOBYTE(v61) = sub_269C45938() & 1;
  sub_269D98840();
  (*(v19 + 32))(v0 + v22, v21, v18);
  sub_269C46F04();
  v54 = objc_opt_self();
  v23 = [v54 defaultCenter];
  v53 = objc_opt_self();
  v24 = [v53 sharedAVSystemController];
  sub_269D9ACE0();

  sub_269C1B0B8(0, &qword_280C0AEB0);
  v25 = sub_269D9AC40();
  v61 = v25;
  v26 = sub_269D9AC30();
  v27 = *(v26 - 8);
  v51 = *(v27 + 56);
  v52 = v27 + 56;
  v51(v5, 1, 1, v26);
  v50 = sub_269C47780(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
  v49 = sub_269C2FC08();
  v28 = v58;
  sub_269D988E0();
  sub_269C476EC(v5);

  v29 = *(v59 + 8);
  v59 += 8;
  v48 = v29;
  v29(v11, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v2;
  v46 = sub_269C47780(&qword_280C0B178, sub_269C2FB3C);

  v32 = v55;
  v33 = sub_269D98900();

  v34 = *(v60 + 8);
  v60 += 8;
  v34(v16, v32);
  v1[2] = v33;

  v35 = [v54 defaultCenter];
  v36 = [v53 sharedAVSystemController];
  v37 = v56;
  sub_269D9ACE0();

  v38 = sub_269D9AC40();
  v61 = v38;
  v51(v5, 1, 1, v26);
  v40 = v57;
  v39 = v58;
  sub_269D988E0();
  sub_269C476EC(v5);

  v48(v37, v39);
  v41 = swift_allocObject();
  swift_weakInit();

  v42 = swift_allocObject();
  v43 = v47;
  *(v42 + 16) = v41;
  *(v42 + 24) = v43;
  v44 = sub_269D98900();

  v34(v40, v32);
  v1[3] = v44;

  return v1;
}

void sub_269C467C4()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  v0 = sub_269D97040();
  if (!v0)
  {
    goto LABEL_13;
  }

  v1 = v0;
  v20 = sub_269D9A630();
  sub_269D9AFA0();
  if (!*(v1 + 16) || (v2 = sub_269C432D0(v21), (v3 & 1) == 0))
  {

    sub_269C3227C(v21);
    goto LABEL_15;
  }

  sub_269C322D0(*(v1 + 56) + 32 * v2, v22);
  sub_269C3227C(v21);

  sub_269C1B0B8(0, &qword_28034DF10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

LABEL_15:

    return;
  }

  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280351238);
  v5 = v20;
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v8 = 136446466;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = v5;
    v13 = [v12 description];
    v14 = sub_269D9A630();
    v16 = v15;

    v17 = sub_269C2EACC(v14, v16, v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Silent mode enabled did change: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v19, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  v18 = [v5 BOOLValue];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21[0]) = v18;
  sub_269D98890();
}

uint64_t sub_269C46B5C()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_28034D750 != -1)
    {
      swift_once();
    }

    v0 = sub_269D98250();
    __swift_project_value_buffer(v0, qword_280351238);
    v1 = sub_269D98230();
    v2 = sub_269D9AB60();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      v5 = sub_269D9B4D0();
      v7 = sub_269C2EACC(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Server connection died, rebuilding", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x26D652460](v4, -1, -1);
      MEMORY[0x26D652460](v3, -1, -1);
    }

    sub_269C46F04();
  }
}

void static SilentModeModel.prewarm()()
{
  v0 = [objc_opt_self() sharedAVSystemController];
}

id sub_269C46D94()
{
  result = [objc_opt_self() sharedAVSystemController];
  if (!result)
  {
    if (qword_28034D750 != -1)
    {
      swift_once();
    }

    v1 = sub_269D98250();
    __swift_project_value_buffer(v1, qword_280351238);
    v2 = sub_269D98230();
    v3 = sub_269D9AB60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] Failed to access shared AVSystemController", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_269C46F04()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v0 = sub_269C46D94();
  if (v0)
  {
    v1 = v0;
    sub_269C47688(0, &qword_28034DF08, type metadata accessor for Name, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_269D9EBE0;
    v3 = *MEMORY[0x277D26D58];
    *(v2 + 32) = *MEMORY[0x277D26D58];
    type metadata accessor for Name(0);
    v4 = v3;
    v5 = sub_269D9A7D0();

    v6 = *MEMORY[0x277D26DD0];
    v28[0] = 0;
    v7 = [v1 setAttribute:v5 forKey:v6 error:v28];

    v8 = v28[0];
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v27 = v28[0];
      v10 = v28[0];
      v11 = sub_269D97360();

      swift_willThrow();
      if (qword_28034D750 != -1)
      {
        swift_once();
      }

      v12 = sub_269D98250();
      __swift_project_value_buffer(v12, qword_280351238);
      v13 = v11;
      v14 = sub_269D98230();
      v15 = sub_269D9AB60();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136446466;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, v28);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2082;
        ErrorValue = swift_getErrorValue();
        MEMORY[0x28223BE20](ErrorValue);
        (*(v23 + 16))(v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
        v24 = sub_269D9A660();
        v26 = sub_269C2EACC(v24, v25, v28);

        *(v16 + 14) = v26;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Failed to set attribute with error: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t SilentModeModel.deinit()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI15SilentModeModel__enabled;
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SilentModeModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI15SilentModeModel__enabled;
  sub_269C45D88(0, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269C4744C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SilentModeModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SilentModeModel()
{
  result = qword_28034DEF8;
  if (!qword_28034DEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C474E0()
{
  sub_269C45D88(319, &qword_28034E9D0, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_269C47688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C476EC(uint64_t a1)
{
  sub_269C47688(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C47780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10DataSourceCMa()
{
  result = qword_28034DF78;
  if (!qword_28034DF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C478A0()
{
  sub_269D98350();
  if (*(v0 + qword_28034DF40) == 1)
  {
    sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
    sub_269D98310();
    sub_269D98300();
  }

  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  sub_269D98310();
  sub_269D98300();

  result = sub_269D98300();
  if (*(v0 + qword_28034DF48) == 1)
  {
    sub_269D98310();
    result = sub_269D98300();
    if (*(v0 + qword_28034DF50) == 1)
    {
      result = sub_269D98300();
      if (*(v0 + qword_28034DF58) == 1)
      {
        result = sub_269D98300();
      }
    }
  }

  if (*(v0 + qword_28034DF60) == 1)
  {
    sub_269D98310();
    return sub_269D98300();
  }

  return result;
}

uint64_t sub_269C47B24(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_28034DF30) = 2;
  if (*(a1 + qword_28034DF38) != 2)
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280C0B728);
    v3 = sub_269D98230();
    v4 = sub_269D9AB80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_269D9B4D0();
      v9 = sub_269C2EACC(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] performing another snapshot", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D652460](v6, -1, -1);
      MEMORY[0x26D652460](v5, -1, -1);
    }

    sub_269C48F58();
  }
}

id sub_269C47D14(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_269D9A5F0();
  v3 = sub_269D97830();
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:v3];

  return v4;
}

id sub_269C47E4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  a6(a4);
  v13 = v12;

  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

void *sub_269C47F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_269C499A4(0, &unk_28034EF10, MEMORY[0x277D74CC8]);
  v6 = sub_269D983C0();
  v7 = v6(a1, a2);
  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
    v10 = v8;
    swift_beginAccess();
    v11 = *(v10 + v9);
    v12 = *(v3 + qword_28034DF40);
    v13 = &v11[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model];
    swift_beginAccess();
    v13[*(type metadata accessor for SleepScheduleComponentsViewModel() + 32)] = (v12 & 1) == 0;
    v14 = v7;
    v15 = v11;
    sub_269D0A9B8();
    swift_endAccess();
    sub_269C6A388();

    sub_269D06118((*(v3 + qword_28034DF70) & 1) == 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = *(v10 + v9);

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  else
  {
    type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = *(v3 + qword_28034DF40);
      v20 = v18 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
      swift_beginAccess();
      *(v20 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 32)) = (v19 & 1) == 0;
      v21 = v7;
      sub_269D0A9B8();
      swift_endAccess();
    }

    else
    {
      v30 = v7;
      sub_269C1B0B8(0, &unk_28034DC10);
      sub_269C4988C();
      v22 = v7;
      if (swift_dynamicCast())
      {
        sub_269C25520(&v29, v26);
        v23 = v27;
        v24 = v28;
        __swift_project_boxed_opaque_existential_1Tm(v26, v27);
        (*(v24 + 8))(*(v3 + qword_28034DF18), v23, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }
    }
  }

  return v7;
}

id sub_269C48248(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_269D97870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  v9 = a3;
  v10 = a1;
  v11 = sub_269C47F68(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

void sub_269C483D0(void *a1, void *a2)
{
  v23 = a2;
  sub_269C498F0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97870();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_28034DF48;
  v12 = *(v2 + qword_28034DF48);
  v13 = [a1 isEnabled];
  v14 = *(v2 + v11);
  *(v2 + v11) = v13;
  if (v13 != v14)
  {
    sub_269C48F58();
  }

  v15 = qword_28034DF50;
  v16 = *(v2 + qword_28034DF50);
  v17 = [a1 allowsSnooze];
  v18 = *(v2 + v15);
  *(v2 + v15) = v17;
  if (v17 != v18)
  {
    sub_269C48F58();
  }

  v19 = *(v2 + v11);
  if (v12 == v19)
  {
    LOBYTE(v19) = v19 & (v16 ^ *(v2 + v15));
  }

  if (!(v12 & 1 | ((v19 & 1) == 0)))
  {
    v24 = 0xD00000000000002ALL;
    v25 = 0x8000000269DAC270;
    sub_269D983B0();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_269C49948(v6);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v20 = v23;
      if (v23)
      {
        v21 = sub_269D97830();
        [v20 scrollToRowAtIndexPath:v21 atScrollPosition:0 animated:1];
      }

      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_269C48620()
{

  JUMPOUT(0x26D652550);
}

id sub_269C48670()
{
  v2.receiver = v0;
  v2.super_class = _s10DataSourceCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269C486A8()
{

  JUMPOUT(0x26D652550);
}

void sub_269C48704()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t _s10DataSourceC17SnapshotOperationVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10DataSourceC17SnapshotOperationVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_269C488B0(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v45 = a5;
  v46 = a1;
  v43 = a3;
  v44 = a4;
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - v8;
  *(v5 + qword_28034DF20) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + qword_28034DF30) = 2;
  *(v5 + qword_28034DF38) = 2;
  *(v5 + qword_28034DF40) = (*(a2 + 57) & 1) == 0;
  v9 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v10 = [*(a2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v10 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v11 = v50;
  v12 = [v50 isEnabled];

  *(v5 + qword_28034DF48) = v12;
  v13 = [*(a2 + v9) alarmConfiguration];
  [v13 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v14 = v50;
  LOBYTE(v10) = [v50 allowsSnooze];

  *(v5 + qword_28034DF50) = v10;
  v15 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v5 + qword_28034DF58) = *(a2 + v15);
  *(v5 + qword_28034DF60) = v43;
  *(v5 + qword_28034DF68) = *(a2 + 88);
  *(v5 + qword_28034DF70) = v44;
  *(v5 + qword_28034DF18) = a2;
  swift_unknownObjectWeakAssign();

  v16 = v46;
  v17 = sub_269D98370();
  sub_269D98390();
  if (v17[qword_28034DF40] == 1)
  {
    type metadata accessor for ScheduleOccurrenceDayPickerTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = sub_269D9A5F0();
    [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];

    type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
  }

  else
  {
    type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell();
  }

  v20 = swift_getObjCClassFromMetadata();
  v21 = sub_269D9A5F0();
  [v16 registerClass:v20 forCellReuseIdentifier:v21];

  v22 = sub_269D9A5F0();
  [v16 registerClass:v20 forCellReuseIdentifier:v22];

  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = sub_269D9A5F0();
  [v16 registerClass:v23 forCellReuseIdentifier:v24];

  v25 = sub_269D9A5F0();
  [v16 registerClass:v23 forCellReuseIdentifier:v25];

  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v26 = swift_getObjCClassFromMetadata();
  v27 = sub_269D9A5F0();
  [v16 registerClass:v26 forCellReuseIdentifier:v27];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v28 = swift_getObjCClassFromMetadata();
  v29 = sub_269D9A5F0();
  [v16 registerClass:v28 forCellReuseIdentifier:v29];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v30 = swift_getObjCClassFromMetadata();
  v31 = sub_269D9A5F0();
  [v16 registerClass:v30 forCellReuseIdentifier:v31];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v32 = swift_getObjCClassFromMetadata();
  v33 = sub_269D9A5F0();
  [v16 registerClass:v32 forCellReuseIdentifier:v33];

  type metadata accessor for ScheduleOccurrenceAlarmSoundTableViewCell();
  v34 = swift_getObjCClassFromMetadata();
  v35 = sub_269D9A5F0();
  [v16 registerClass:v34 forCellReuseIdentifier:v35];

  type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  v36 = swift_getObjCClassFromMetadata();
  v37 = sub_269D9A5F0();
  [v16 registerClass:v36 forCellReuseIdentifier:v37];

  type metadata accessor for ScheduleOccurrenceDeleteTableViewCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = sub_269D9A5F0();
  [v16 registerClass:v38 forCellReuseIdentifier:v39];

  v40 = v47;
  sub_269C478A0();
  sub_269D983A0();

  (*(v48 + 8))(v40, v49);
  return v17;
}

void sub_269C48F58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = v0[qword_28034DF70];
  v9 = qword_28034DF30;
  v10 = v0[qword_28034DF30];
  if (v10 == 2)
  {
    v0[qword_28034DF38] = 2;
    v0[v9] = v8;
    sub_269C478A0();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = ObjectType;
    v12 = v0;
    sub_269D983A0();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v13 = sub_269D98250();
    v14 = __swift_project_value_buffer(v13, qword_280C0B728);
    v15 = sub_269D98230();
    v16 = sub_269D9AB80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v14;
      v18 = v17;
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446210;
      v20 = sub_269D9B4D0();
      v22 = sub_269C2EACC(v20, v21, &v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] already applying snapshot", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D652460](v19, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }

    if (v8 == (v10 & 1))
    {
      v1[qword_28034DF38] = 2;
    }

    else
    {
      v23 = sub_269D98230();
      v24 = sub_269D9AB80();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136446210;
        v27 = sub_269D9B4D0();
        v29 = sub_269C2EACC(v27, v28, &v31);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_269C18000, v23, v24, "[%{public}s] we'll need to re-apply when it's done", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D652460](v26, -1, -1);
        MEMORY[0x26D652460](v25, -1, -1);
      }

      v1[qword_28034DF38] = v8;
    }
  }
}

uint64_t sub_269C492FC(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4983C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269D9EBF0;
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v4 + 8))(v6, v3);
  v8 = v13;
  if (!v13)
  {
    return 0;
  }

  v9 = v12;
  if (v12 == 0xD000000000000028 && 0x8000000269DAC0C0 == v13 || (sub_269D9B280() & 1) != 0)
  {

    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

LABEL_23:
    swift_once();
    return sub_269D972C0();
  }

  if (v9 == 0xD00000000000002BLL && 0x8000000269DAC120 == v8 || (sub_269D9B280() & 1) != 0)
  {

    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_23;
  }

  if (v9 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v8 || (sub_269D9B280() & 1) != 0 || v9 == 0xD00000000000003ELL && 0x8000000269DAC150 == v8)
  {
  }

  else
  {
    v11 = sub_269D9B280();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + qword_28034DF40) == 1)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_269C49648(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4983C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269D9EBF0;
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v4 + 8))(v6, v3);
  if (!v11)
  {
    return 0;
  }

  if (v10 == 0xD000000000000029 && 0x8000000269DAC210 == v11)
  {
  }

  else
  {
    v8 = sub_269D9B280();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + qword_28034DF68) != 1)
  {
    return 0;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

void sub_269C4983C()
{
  if (!qword_28034D990)
  {
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_28034D990);
    }
  }
}

unint64_t sub_269C4988C()
{
  result = qword_28034EF00;
  if (!qword_28034EF00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034EF00);
  }

  return result;
}

void sub_269C498F0()
{
  if (!qword_28034D998)
  {
    sub_269D97870();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034D998);
    }
  }
}

uint64_t sub_269C49948(uint64_t a1)
{
  sub_269C498F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C499A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D837D0];
    v8[1] = MEMORY[0x277D837D0];
    v8[2] = MEMORY[0x277D837E0];
    v8[3] = MEMORY[0x277D837E0];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269C49A1C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_269D61CB0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269C49B10(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_269D61F20(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_269D98090();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269C49C3C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_269D61F54(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269C49D48(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_269D61DC0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_269C4C0D0();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269C49E5C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_269D9AF50();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_269D9AF50();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_269C4C134(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_269C49F6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_269C4A01C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_269C4A0D4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_269C4A190(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id SleepOnboardingFlowController.__allocating_init(title:detailText:userInfo:presentationStyle:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v15 = objc_allocWithZone(v9);
  v16 = &v15[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v15[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_sleepChangeObserver] = 0;
  *&v15[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo] = a5;
  *&v15[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_presentationStyle] = a6;

  v17 = sub_269D9A5F0();

  if (a4)
  {
    v18 = sub_269D9A5F0();
  }

  else
  {
    v18 = 0;
  }

  v28.receiver = v15;
  v28.super_class = v9;
  v19 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v17, v18, a7, a8);

  v20 = v19;
  [v20 setModalInPresentation_];
  v21 = [v20 headerView];
  [v21 setTitleHyphenationFactor_];

  v22 = [v20 navigationItem];
  [v22 setBackButtonDisplayMode_];

  v23 = [v20 headerView];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269DA0D60;
  *(v24 + 32) = sub_269D9A630();
  *(v24 + 40) = v25;
  *(v24 + 48) = 0x7065656C53;
  *(v24 + 56) = 0xE500000000000000;
  *(v24 + 64) = 0x696472616F626E4FLL;
  *(v24 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F768);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287A9F788);
  v26 = sub_269D9A5F0();

  [v23 setAccessibilityIdentifier_];

  return v20;
}

id SleepOnboardingFlowController.init(title:detailText:userInfo:presentationStyle:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v12 = &v8[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v8[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_sleepChangeObserver] = 0;
  *&v8[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo] = a5;
  *&v8[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_presentationStyle] = a6;

  v13 = sub_269D9A5F0();

  if (a4)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {
    v14 = 0;
  }

  v24.receiver = v8;
  v24.super_class = type metadata accessor for SleepOnboardingFlowController();
  v15 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, a7, a8);

  v16 = v15;
  [v16 setModalInPresentation_];
  v17 = [v16 headerView];
  [v17 setTitleHyphenationFactor_];

  v18 = [v16 navigationItem];
  [v18 setBackButtonDisplayMode_];

  v19 = [v16 headerView];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_269DA0D60;
  *(v20 + 32) = sub_269D9A630();
  *(v20 + 40) = v21;
  *(v20 + 48) = 0x7065656C53;
  *(v20 + 56) = 0xE500000000000000;
  *(v20 + 64) = 0x696472616F626E4FLL;
  *(v20 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F768);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287A9F788);
  v22 = sub_269D9A5F0();

  [v19 setAccessibilityIdentifier_];

  return v16;
}

uint64_t sub_269C4A8B8(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for SleepOnboardingFlowController();
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if (v12)
    {
      return result;
    }

    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v14 = sub_269D98250();
    __swift_project_value_buffer(v14, qword_280C0B728);
    v15 = sub_269D98230();
    v16 = sub_269D9AB80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      v19 = sub_269D9B4D0();
      v21 = sub_269C2EACC(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] Observing sleep settings or schedule changes for dismissal", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_sleepChangeObserver] = sub_269C4AB70(&OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo, &unk_287AA1F88, sub_269C4D244);
  }
}

uint64_t sub_269C4AB70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  sub_269C4C854(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = v40 - v6;
  sub_269C4C8B8(0);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v40[1] = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4C988(0);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  sub_269C4CADC();
  v43 = v10;
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4CBC4();
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4CCF4();
  v18 = *(v17 - 8);
  v50 = v17;
  v51 = v18;
  MEMORY[0x28223BE20](v17);
  v46 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v41 = v3;
  sub_269C2DB5C(v21 + 88, v58);
  v22 = v59;
  v23 = v60;
  __swift_project_boxed_opaque_existential_1Tm(v58, v59);
  (*(v23 + 40))(v55, v22, v23);
  v24 = v56;
  v25 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v54 = (*(v25 + 16))(v24, v25);
  sub_269C4CA64();
  sub_269C4CD90(&qword_28034DFE8, sub_269C4CA64);
  sub_269D988C0();

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  sub_269C2DB5C(*(v3 + v20) + 88, v58);
  v26 = v59;
  v27 = v60;
  __swift_project_boxed_opaque_existential_1Tm(v58, v59);
  (*(v27 + 48))(v55, v26, v27);
  v28 = v56;
  v29 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v54 = (*(v29 + 24))(v28, v29);
  sub_269C4C8F4();
  sub_269C4CD90(&qword_28034D970, sub_269C4C8F4);
  sub_269D988C0();

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  sub_269C4CD90(&qword_28034DFF8, sub_269C4C988);
  sub_269C4CD90(&qword_28034E000, sub_269C4C8B8);
  sub_269D986F0();
  sub_269C4CD90(&qword_28034E020, sub_269C4CADC);
  v30 = v43;
  v31 = sub_269D988B0();
  (*(v44 + 8))(v12, v30);
  v58[0] = v31;
  sub_269C1B0B8(0, &qword_280C0AEB0);
  v32 = sub_269D9AC40();
  v55[0] = v32;
  v33 = sub_269D9AC30();
  v34 = v47;
  (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  sub_269C4CC90();
  sub_269C4CD90(&unk_28034E850, sub_269C4CC90);
  sub_269C2FC08();
  sub_269D988E0();
  sub_269C476EC(v34);

  sub_269C4CD90(&qword_28034E018, sub_269C4CBC4);
  v35 = v46;
  v36 = v48;
  sub_269D988F0();
  (*(v49 + 8))(v16, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C4CD90(&qword_28034E028, sub_269C4CCF4);
  v37 = v50;
  v38 = sub_269D98900();

  (*(v51 + 8))(v35, v37);
  return v38;
}

id sub_269C4B394(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_sleepChangeObserver] = 0;

      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v13 = sub_269D98250();
      __swift_project_value_buffer(v13, qword_280C0B728);
      v14 = sub_269D98230();
      v15 = sub_269D9AB80();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Done observing sleep settings or schedule changes", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }
    }
  }

  v21 = type metadata accessor for SleepOnboardingFlowController();
  v24.receiver = v2;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1 & 1);
}

void sub_269C4B614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_269C4B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_28034D618 != -1)
  {
    swift_once();
  }

  v9 = qword_28034DF88;
  v10 = sub_269D9A5F0();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = sub_269D9A5F0();
    v13 = sub_269D9A5F0();
    [v7 addBulletedListItemWithTitle:v12 description:v13 image:v11 tintColor:a7];
  }

  else
  {
    __break(1u);
  }
}

id SleepOnboardingFlowController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_269D9A5F0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_269D9A5F0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_269D9A5F0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id SleepOnboardingFlowController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_269D9A5F0();

  if (a4)
  {
    v12 = sub_269D9A5F0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_269C4BAEC()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id SleepOnboardingFlowController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingFlowController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C4BCB0(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_269C4BD78()
{
  v0 = *MEMORY[0x277D769A8];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle_];

  qword_28034DF88 = v3;
}

void sub_269C4BDE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269C4BE38()
{
  result = qword_280C0AF30;
  if (!qword_280C0AF30)
  {
    sub_269C4BDE4(255, &qword_280C0B4F0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AF30);
  }

  return result;
}

unint64_t sub_269C4C0D0()
{
  result = qword_28034E550;
  if (!qword_28034E550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034E550);
  }

  return result;
}

uint64_t sub_269C4C134(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_269D9AF50();
LABEL_9:
  result = sub_269D9B020();
  *v1 = result;
  return result;
}

uint64_t sub_269C4C1D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_269D9AF50();
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
      result = sub_269D9AF50();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_269C4C788(0, &qword_28034E030, &qword_28034E1C0, 0x277CCAAD0, MEMORY[0x277D83940]);
          sub_269C4C7F0(&unk_28034E038, &qword_28034E030, &qword_28034E1C0, 0x277CCAAD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_269C4F750(v13, i, a3);
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
        sub_269C1B0B8(0, &qword_28034E1C0);
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

uint64_t sub_269C4C39C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_269D9AF50();
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
      result = sub_269D9AF50();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_269C4C854(0, &qword_28034DFB0, type metadata accessor for ConfirmationFeatureView, MEMORY[0x277D83940]);
          sub_269C4C700();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_269C4F7D0(v13, i, a3);
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
        type metadata accessor for ConfirmationFeatureView();
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

uint64_t sub_269C4C538(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_269D9AF50();
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
      result = sub_269D9AF50();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_269C4C788(0, &qword_28034DFC0, &qword_2803505E0, 0x277D75D18, MEMORY[0x277D83940]);
          sub_269C4C7F0(&qword_28034DFC8, &qword_28034DFC0, &qword_2803505E0, 0x277D75D18);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_269C4F750(v13, i, a3);
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
        sub_269C1B0B8(0, &qword_2803505E0);
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

unint64_t sub_269C4C700()
{
  result = qword_28034DFB8;
  if (!qword_28034DFB8)
  {
    sub_269C4C854(255, &qword_28034DFB0, type metadata accessor for ConfirmationFeatureView, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DFB8);
  }

  return result;
}

void sub_269C4C788(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C1B0B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269C4C7F0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C4C788(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269C4C854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C4C8F4()
{
  if (!qword_280C0B140)
  {
    sub_269C4C788(255, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8, MEMORY[0x277D83D88]);
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B140);
    }
  }
}

void sub_269C4C9C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269C4CD90(a4, a5);
    v8 = sub_269D986C0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269C4CA64()
{
  if (!qword_28034DFE0)
  {
    sub_269C1B0B8(255, &qword_28034E8C0);
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DFE0);
    }
  }
}

void sub_269C4CADC()
{
  if (!qword_28034DFF0)
  {
    sub_269C4C988(255);
    sub_269C4C8B8(255);
    sub_269C4CD90(&qword_28034DFF8, sub_269C4C988);
    sub_269C4CD90(&qword_28034E000, sub_269C4C8B8);
    v0 = sub_269D986E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DFF0);
    }
  }
}

void sub_269C4CBC4()
{
  if (!qword_28034E008)
  {
    sub_269C4CC90();
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269C4CD90(&unk_28034E850, sub_269C4CC90);
    sub_269C2FC08();
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E008);
    }
  }
}

void sub_269C4CC90()
{
  if (!qword_28034E840)
  {
    v0 = sub_269D98730();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E840);
    }
  }
}

void sub_269C4CCF4()
{
  if (!qword_28034E010)
  {
    sub_269C4CBC4();
    sub_269C4CD90(&qword_28034E018, sub_269C4CBC4);
    v0 = sub_269D986D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E010);
    }
  }
}

uint64_t sub_269C4CD90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269C4CDD8()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_269C2EACC(0xD00000000000001DLL, 0x8000000269DA0D70, v12);
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Sleep settings or schedule changed during onboarding, dismissing", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v6 = (Strong + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
  v7 = Strong;
  swift_beginAccess();
  v8 = *v6;
  v9 = v6[1];
  swift_unknownObjectRetain();

  if (!v8)
  {
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 8))(ObjectType, v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_269C4D00C()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_269C2EACC(0xD000000000000026, 0x8000000269DAD280, v12);
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Sleep settings or schedule changed during onboarding, dismissing", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v6 = (Strong + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  v7 = Strong;
  swift_beginAccess();
  v8 = *v6;
  v9 = v6[1];
  swift_unknownObjectRetain();

  if (!v8)
  {
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 8))(ObjectType, v9);

  return swift_unknownObjectRelease();
}

id ProactiveSuggestionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ProactiveSuggestionProvider.hksp_suggestedSleepSchedule(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEB830]) init];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_269C4D41C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_269C4D5F0;
  v7[3] = &block_descriptor;
  v6 = _Block_copy(v7);

  [v4 predictedSleepSuggestionWithCompletionHandler_];
  _Block_release(v6);
}

void sub_269C4D384(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a2)
  {
    (a3)(0);
  }

  else
  {
    if (a1)
    {
      v3 = a3;
      a1 = sub_269C4D424();
      a3 = v3;
    }

    v4 = a1;
    a3();
  }
}

void *sub_269C4D424()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
  [v1 setEnabled_];
  [v1 setSleepDurationGoal_];
  v2 = [v0 occurrence];
  v3 = sub_269C4D918();

  [v3 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034DC30);
  swift_dynamicCast();
  v4 = [objc_allocWithZone(MEMORY[0x277D62478]) init];
  [v4 setEnabled_];
  [v6 setAlarmConfiguration_];
  [v1 saveOccurrence_];
  [v1 copy];
  sub_269D9AED0();

  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_280C0AEF0);
  swift_dynamicCast();
  return v6;
}

void sub_269C4D5F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269C4D7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_269D97350();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id ProactiveSuggestionProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProactiveSuggestionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C4D918()
{
  v1 = v0;
  sub_269C4E34C(0, &qword_28034E048, MEMORY[0x277CC8990]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v80 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v81 = v68 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v77 = v68 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v78 = v68 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v74 = v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v75 = v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v68 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v68 - v18;
  sub_269C4E34C(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v68 - v21;
  sub_269C4E34C(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v68 - v24;
  v26 = sub_269D971F0();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v79 = v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v82 = v68 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v68 - v32;
  v34 = [objc_allocWithZone(MEMORY[0x277D62490]) init];
  v35 = [v1 weekdays];
  v83 = v34;
  [v34 setWeekdays_];
  v36 = sub_269D977A0();
  v37 = *(v36 - 8);
  v38 = 1;
  v72 = *(v37 + 56);
  v73 = v36;
  v71 = v37 + 56;
  v72(v25, 1, 1);
  v39 = sub_269D97810();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v70 = v39;
  v69 = v41;
  v68[1] = v40 + 56;
  (v41)(v22, 1, 1);
  v86 = v33;
  v76 = v22;
  sub_269D971D0();
  v42 = [v1 bedtimeComponents];
  if (v42)
  {
    v43 = v42;
    sub_269D97120();

    v38 = 0;
  }

  v85 = *(v27 + 56);
  v85(v17, v38, 1, v26);
  sub_269C4E3A0(v17, v19);
  v84 = *(v27 + 48);
  v44 = v84(v19, 1, v26);
  v45 = v74;
  if (v44 == 1)
  {
    sub_269C4E420(v19);
  }

  else
  {
    sub_269D97150();
    (*(v27 + 8))(v19, v26);
  }

  sub_269D97160();
  v46 = [v1 bedtimeComponents];
  if (v46)
  {
    v47 = v46;
    sub_269D97120();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v75;
  v85(v45, v48, 1, v26);
  sub_269C4E3A0(v45, v49);
  if (v84(v49, 1, v26) == 1)
  {
    sub_269C4E420(v49);
  }

  else
  {
    sub_269D971A0();
    (*(v27 + 8))(v49, v26);
  }

  sub_269D971B0();
  v50 = v82;
  sub_269D67C24(5, v82);
  v51 = sub_269D97110();
  v52 = *(v27 + 8);
  v52(v50, v26);
  [v83 setBedtimeComponents_];

  v53 = 1;
  (v72)(v25, 1, 1, v73);
  v69(v76, 1, 1, v70);
  v54 = v79;
  sub_269D971D0();
  v55 = [v1 wakeUpComponents];
  v56 = v77;
  if (v55)
  {
    v57 = v55;
    sub_269D97120();

    v53 = 0;
  }

  v85(v56, v53, 1, v26);
  v58 = v78;
  sub_269C4E3A0(v56, v78);
  if (v84(v58, 1, v26) == 1)
  {
    sub_269C4E420(v58);
  }

  else
  {
    sub_269D97150();
    v52(v58, v26);
  }

  sub_269D97160();
  v59 = [v1 wakeUpComponents];
  if (v59)
  {
    v60 = v80;
    v61 = v59;
    sub_269D97120();

    v62 = 0;
  }

  else
  {
    v62 = 1;
    v60 = v80;
  }

  v63 = v81;
  v85(v60, v62, 1, v26);
  sub_269C4E3A0(v60, v63);
  if (v84(v63, 1, v26) == 1)
  {
    sub_269C4E420(v63);
  }

  else
  {
    sub_269D971A0();
    v52(v63, v26);
  }

  sub_269D971B0();
  v64 = v82;
  sub_269D67C24(5, v82);
  v65 = sub_269D97110();
  v52(v64, v26);
  v66 = v83;
  [v83 setWakeUpComponents_];

  [v66 copy];
  sub_269D9AED0();

  swift_unknownObjectRelease();
  v52(v54, v26);
  v52(v86, v26);
  sub_269C1B0B8(0, &qword_28034E050);
  swift_dynamicCast();
  return v87;
}

void sub_269C4E34C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269C4E3A0(uint64_t a1, uint64_t a2)
{
  sub_269C4E34C(0, &qword_28034E048, MEMORY[0x277CC8990]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C4E420(uint64_t a1)
{
  sub_269C4E34C(0, &qword_28034E048, MEMORY[0x277CC8990]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = [v6 leadingAnchor];
  v14 = [a1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a4];

  v16 = [v6 topAnchor];
  v17 = [a1 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:a3];

  v19 = [a1 trailingAnchor];
  v20 = [v6 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:a6];

  v22 = [a1 bottomAnchor];
  v23 = [v6 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:a5];

  if (a2)
  {
    LODWORD(v25) = 1148829696;
    [v24 setPriority_];
  }

  sub_269C4E764();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_269DA0E10;
  *(v26 + 32) = v15;
  *(v26 + 40) = v18;
  *(v26 + 48) = v21;
  *(v26 + 56) = v24;
  v27 = v15;
  v28 = v18;
  v29 = v21;
  v30 = v24;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0);
  v32 = sub_269D9A7D0();
  [v31 activateConstraints_];

  return v26;
}

void sub_269C4E764()
{
  if (!qword_280C0AD70)
  {
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AD70);
    }
  }
}

Swift::Void __swiftcall UIView.alignConstraints(to:)(UILayoutGuide to)
{
  v3 = objc_opt_self();
  sub_269C4E764();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA0E10;
  v5 = [v1 leadingAnchor];
  v6 = [(objc_class *)to.super.isa leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 topAnchor];
  v9 = [(objc_class *)to.super.isa topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [(objc_class *)to.super.isa trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [(objc_class *)to.super.isa bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v17 = sub_269D9A7D0();

  [v3 activateConstraints_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

uint64_t UIView.constrained(toEdgesOf:)(void *a1)
{
  v2 = v1;
  sub_269C4E764();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA0E10;
  v5 = [v2 topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  v17 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0);
  v18 = sub_269D9A7D0();
  [v17 activateConstraints_];

  return v4;
}

void UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(unint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v53 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v45 = a1;
    v14 = sub_269D9AF50();
    a1 = v45;
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v49 = a1 & 0xC000000000000001;
    v50 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D651260](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 32);
    }

    v17 = v16;
    v6 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
    v18 = [v16 topAnchor];
    v19 = [v51 topAnchor];
    v8 = [v18 constraintEqualToAnchor:v19 constant:a3];

    v20 = v8;
    MEMORY[0x26D650A10]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_269D9A7F0();
    }

    sub_269D9A820();

    if (v14 >= 1)
    {
      v47 = v14 - 1;
      v48 = v14;
      v21 = 0;
      v22 = 0;
      v23 = -a6;
      v46 = v50 + 32;
      v24 = 1000.0;
      do
      {
        if (v49)
        {
          v26 = MEMORY[0x26D651260](v22, v50);
        }

        else
        {
          v26 = *(v50 + 8 * v22 + 32);
        }

        v7 = v26;
        [v26 setTranslatesAutoresizingMaskIntoConstraints_];
        v27 = v15;
        v52 = v15;
        v28 = [v7 leadingAnchor];
        v29 = [v51 leadingAnchor];
        v30 = [v28 constraintEqualToAnchor:v29 constant:a4];

        v31 = v30;
        MEMORY[0x26D650A10]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269D9A7F0();
        }

        sub_269D9A820();
        v32 = [v7 trailingAnchor];
        v33 = [v51 trailingAnchor];
        v34 = [v32 constraintEqualToAnchor:v33 constant:v23];

        v35 = v34;
        MEMORY[0x26D650A10]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269D9A7F0();
        }

        sub_269D9A820();
        if (v21)
        {
          v36 = v21;
          v37 = [v7 topAnchor];
          v38 = [v36 bottomAnchor];
          v39 = [v37 constraintEqualToAnchor:v38 constant:a2];

          v40 = v39;
          MEMORY[0x26D650A10]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_269D9A7F0();
          }

          sub_269D9A820();
        }

        ++v22;
        *&v25 = v24;
        [v7 setContentHuggingPriority:1 forAxis:v25];
        v24 = v24 + -1.0;
        sub_269C49D30(v52);

        v21 = v7;
        v15 = v27;
      }

      while (v48 != v22);
      if (v49)
      {
        v8 = MEMORY[0x26D651260](v47, v50);
        v41 = v51;
      }

      else
      {
        v41 = v51;
        if (v48 > *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v46 + 8 * v47);
      }

      v42 = [v8 bottomAnchor];
      v43 = [v41 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43 constant:-a5];

      v6 = v44;
      MEMORY[0x26D650A10]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_269D9A7F0();
LABEL_28:
    sub_269D9A820();
  }
}

Swift::Void __swiftcall UIView.addSubviews(_:useAutoLayout:)(Swift::OpaquePointer _, Swift::Bool useAutoLayout)
{
  if (_._rawValue >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v11 = _._rawValue & 0xC000000000000001;
      v5 = !useAutoLayout;
      while (1)
      {
        if (v11)
        {
          v6 = MEMORY[0x26D651260](v4, _._rawValue);
        }

        else
        {
          if (v4 >= *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(_._rawValue + v4 + 4);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        sub_269D9A8E0();
        sub_269D9A8D0();
        sub_269D9A880();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v7 setTranslatesAutoresizingMaskIntoConstraints_];
        [v12 addSubview_];

        ++v4;
        if (v8 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v9 = useAutoLayout;
      v10 = sub_269D9AF50();
      *&useAutoLayout = v9;
      v3 = v10;
    }

    while (v10);
  }
}

__C::CGRect __swiftcall UIView.smallestFrameFittingVisibleContent()()
{
  v1 = [v0 subviews];
  sub_269C1B0B8(0, &qword_2803505E0);
  v2 = sub_269D9A7E0();

  v11 = UIView.smallestFrameFittingVisibleContent(in:)(v2);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

__C::CGRect __swiftcall UIView.smallestFrameFittingVisibleContent(in:)(Swift::OpaquePointer in)
{
  if (!(in._rawValue >> 62))
  {
    v3 = *((in._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_38:
    [v1 frame];
    goto LABEL_41;
  }

  if (sub_269D9AF50() < 1)
  {
    goto LABEL_38;
  }

  v45 = sub_269D9AF50();
  if (!v45)
  {
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    goto LABEL_41;
  }

  v3 = v45;
  if (v45 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_3:
  v4 = 0;
  v5 = v3 - 1;
  MaxY = 0.0;
  v7 = 1;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  while (2)
  {
    v11 = v4;
    while (1)
    {
      v12 = (in._rawValue & 0xC000000000000001) != 0 ? MEMORY[0x26D651260](v11, in._rawValue) : *(in._rawValue + v11 + 4);
      v13 = v12;
      v4 = v11 + 1;
      if (([v12 isHidden] & 1) == 0)
      {
        break;
      }

      ++v11;
      if (v3 == v4)
      {
        v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        if (v7)
        {
          goto LABEL_41;
        }

        goto LABEL_33;
      }
    }

    v46 = v8;
    v47 = v5;
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v13 superview];
    [v48 convertRect:v22 fromView:{v15, v17, v19, v21}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v49.origin.x = v24;
    v49.origin.y = v26;
    v49.size.width = v28;
    v49.size.height = v30;
    MinX = CGRectGetMinX(v49);
    v32 = MinX;
    if (v7)
    {
      v50.origin.x = v24;
      v50.origin.y = v26;
      v50.size.width = v28;
      v50.size.height = v30;
      v33 = CGRectGetMinX(v50);
      if (v33 >= v32)
      {
        v10 = v32;
      }

      else
      {
        v10 = v33;
      }

      v51.origin.x = v24;
      v51.origin.y = v26;
      v51.size.width = v28;
      v51.size.height = v30;
      MinY = CGRectGetMinY(v51);
      v52.origin.x = v24;
      v52.origin.y = v26;
      v52.size.width = v28;
      v52.size.height = v30;
      v35 = CGRectGetMinY(v52);
      if (v35 >= MinY)
      {
        v9 = MinY;
      }

      else
      {
        v9 = v35;
      }

      v53.origin.x = v24;
      v53.origin.y = v26;
      v53.size.width = v28;
      v53.size.height = v30;
      MaxX = CGRectGetMaxX(v53);
      v54.origin.x = v24;
      v54.origin.y = v26;
      v54.size.width = v28;
      v54.size.height = v30;
      v37 = CGRectGetMaxX(v54);
      if (MaxX > v37)
      {
        v8 = MaxX;
      }

      else
      {
        v8 = v37;
      }

      v55.origin.x = v24;
      v55.origin.y = v26;
      v55.size.width = v28;
      v55.size.height = v30;
      MaxY = CGRectGetMaxY(v55);
    }

    else
    {
      if (MinX < v10)
      {
        v10 = MinX;
      }

      v56.origin.x = v24;
      v56.origin.y = v26;
      v56.size.width = v28;
      v56.size.height = v30;
      v38 = CGRectGetMinY(v56);
      if (v38 < v9)
      {
        v9 = v38;
      }

      v57.origin.x = v24;
      v57.origin.y = v26;
      v57.size.width = v28;
      v57.size.height = v30;
      v39 = CGRectGetMaxX(v57);
      v8 = v46;
      if (v46 <= v39)
      {
        v8 = v39;
      }
    }

    v5 = v47;
    v58.origin.x = v24;
    v58.origin.y = v26;
    v58.size.width = v28;
    v58.size.height = v30;
    v40 = CGRectGetMaxY(v58);

    v7 = 0;
    if (MaxY <= v40)
    {
      MaxY = v40;
    }

    if (v47 != v11)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v43 = v8 - v10;
  v44 = MaxY - v9;
  v41 = v10;
  v42 = v9;
LABEL_41:
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

uint64_t (*sub_269C4F750(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D651260](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_269C4F858;
  }

  __break(1u);
  return result;
}

void (*sub_269C4F7D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D651260](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_269C4F850;
  }

  __break(1u);
  return result;
}

uint64_t Symbol.image.getter()
{
  Symbol.systemName.getter();

  return sub_269D99D90();
}

uint64_t Symbol.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269C4F93C()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269C4F984()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t Symbol.systemName.getter()
{
  v1 = *v0;
  v2 = v1 >> 12;
  if (v1 >> 12 <= 3)
  {
    if (v1 >> 12 > 1)
    {
      if (v2 == 2)
      {
        v4 = 0x6461622E6C6C6562;
        if ((v1 & 0xF00) == 0x100)
        {
          v4 = 0xD000000000000016;
        }

        if (v1)
        {
          return v4;
        }

        else
        {
          return 0x616C732E6C6C6562;
        }
      }

      if (!*v0)
      {
        return 0x72616D6B63656863;
      }

      v7 = 0xD000000000000010;
      v8 = 0xD000000000000015;
      v9 = *v0 == 1;
    }

    else
    {
      if (!v2)
      {
        if (*v0 == 1)
        {
          return 0xD000000000000016;
        }

        else
        {
          return 0x62756F642E646562;
        }
      }

      v7 = 0x6D72616C61;
      v8 = 0xD00000000000001FLL;
      if (v1)
      {
        v7 = 0xD00000000000001FLL;
      }

      else
      {
        v8 = 0x69662E6D72616C61;
      }

      v9 = (v1 & 0xE00) == 0;
    }

    if (v9)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  if (v1 >> 12 <= 5)
  {
    v5 = 0xD000000000000011;
    v6 = 0x6B72616D78;
    if (*v0)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x73756E696DLL;
    }

    if (v2 == 4)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else if (v2 == 6)
  {
    if (*v0)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 1937075312;
    }
  }

  else
  {
    if (v2 == 7)
    {
      if ((v1 & 0xFE) != 0)
      {
        return 0x662E656C63726963;
      }

      else
      {
        return 0x656C63726963;
      }
    }

    if (*v0 <= 0x8101u)
    {
      if (*v0 <= 0x8002u)
      {
        if (v1 == 0x8000)
        {
          return 0x662E7465736E7573;
        }

        if (v1 == 32769)
        {
          return 8026746;
        }

        return 0x7A7A7A2E6E6F6F6DLL;
      }

      if (v1 == 32771)
      {
        v12 = objc_opt_self();
        result = [v12 sharedBehavior];
        if (result)
        {
          v13 = result;
          v14 = [result isAppleWatch];

          result = [v12 sharedBehavior];
          v15 = result;
          if (v14)
          {
            if (!result)
            {
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v16 = [result hksp_systemImageNameForCurrentDevice];
          }

          else
          {
            if (!result)
            {
LABEL_78:
              __break(1u);
              return result;
            }

            v16 = [result hksp_systemImageNameForActivePairedDevice];
          }

          v11 = v16;

          if (!v11)
          {
            return 0x746177656C707061;
          }

          goto LABEL_72;
        }
      }

      else
      {
        if (v1 != 33024)
        {
          result = [objc_opt_self() sharedBehavior];
          if (result)
          {
            v17 = result;
            v18 = [result hksp_activePairedDeviceHasHomeButton];

            if (v18)
            {
              return 0xD000000000000011;
            }

            return 0x656E6F687069;
          }

          goto LABEL_76;
        }

        result = [objc_opt_self() sharedBehavior];
        if (result)
        {
          v10 = result;
          v11 = [result hksp_systemImageNameForCurrentDevice];

          if (!v11)
          {
            return 0x656E6F687069;
          }

LABEL_72:
          v19 = sub_269D9A630();

          return v19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (*v0 > 0x8200u)
    {
      if (v1 == 33281)
      {
        return 0xD000000000000016;
      }

      else if (v1 == 33282)
      {
        return 0x6461622E6C6C6562;
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }

    else if (v1 == 33026)
    {
      return 0x69762E656C707061;
    }

    else if (v1 == 33027)
    {
      return 0x61632E73736F7263;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t static Symbol.alarm(on:snoozing:variant:)@<X0>(uint64_t result@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, __int16 *a4@<X8>)
{
  v4 = *a3;
  v5 = (v4 << 8) | 0x1000;
  v6 = (v4 << 8) | 0x1001;
  if (a2)
  {
    v6 = -32767;
  }

  if ((result & 1) == 0)
  {
    v6 = v5;
  }

  *a4 = v6;
  return result;
}

UIImage __swiftcall Symbol.uiImage(configuration:)(UIImageConfiguration_optional configuration)
{
  isa = configuration.value.super.isa;
  v16 = *v1;
  Symbol.systemName.getter();
  v3 = sub_269D9A5F0();

  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v4)
  {
    return v4;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280C0B728);
  v7 = sub_269D98230();
  v8 = sub_269D9AB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_269C2EACC(0x6C6F626D7953, 0xE600000000000000, &v15);
    *(v9 + 12) = 2082;
    v11 = Symbol.systemName.getter();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] No image for symbol with name %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v14 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v14 init];
}

id Symbol.uiColor.getter()
{
  if ((*v0 & 0xF000) == 0x1000 && (*v0 & 1) == 0)
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v3 = qword_28034E060;

    return v3;
  }

  else
  {
    v1 = [objc_opt_self() hk_sleepKeyColor];

    return v1;
  }
}

uint64_t Symbol.color.getter()
{
  if ((*v0 & 0xF000) == 0x1000 && (*v0 & 1) == 0)
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v2 = qword_28034E060;
  }

  else
  {
    v1 = [objc_opt_self() hk_sleepKeyColor];
  }

  return sub_269D99CC0();
}

uint64_t Symbol.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 12;
  if (v1 >> 12 <= 3)
  {
    if (v1 >> 12 > 1)
    {
      if (v2 != 2)
      {
        v3 = 9;
        goto LABEL_50;
      }

      v4 = (v1 >> 8) & 0xF;
      v5 = 8;
    }

    else
    {
      if (!v2)
      {
        v3 = 1;
        goto LABEL_50;
      }

      v4 = (v1 >> 8) & 0xF;
      v5 = 2;
    }

    MEMORY[0x26D6515B0](v5);
    sub_269D9B370();
  }

  else
  {
    if (v1 >> 12 <= 5)
    {
      if (v2 == 4)
      {
        v3 = 10;
      }

      else
      {
        v3 = 11;
      }

      goto LABEL_50;
    }

    if (v2 == 6)
    {
      v3 = 12;
      goto LABEL_50;
    }

    if (v2 == 7)
    {
      v3 = 13;
LABEL_50:
      MEMORY[0x26D6515B0](v3);
      v4 = v1;
      return MEMORY[0x26D6515B0](v4);
    }

    if (v1 == 33282)
    {
      v6 = 18;
    }

    else
    {
      v6 = 19;
    }

    if (v1 == 33281)
    {
      v7 = 17;
    }

    else
    {
      v7 = v6;
    }

    if (v1 == 33027)
    {
      v8 = 15;
    }

    else
    {
      v8 = 16;
    }

    if (v1 == 33026)
    {
      v9 = 14;
    }

    else
    {
      v9 = v8;
    }

    if (*v0 <= 0x8200u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v1 == 33024)
    {
      v11 = 6;
    }

    else
    {
      v11 = 7;
    }

    if (v1 == 32771)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    if (v1 == 32769)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    if (v1 == 0x8000)
    {
      v13 = 0;
    }

    if (*v0 <= 0x8002u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (*v0 <= 0x8101u)
    {
      v4 = v14;
    }

    else
    {
      v4 = v10;
    }
  }

  return MEMORY[0x26D6515B0](v4);
}

uint64_t Symbol.hashValue.getter()
{
  sub_269D9B350();
  Symbol.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269C505BC()
{
  sub_269D9B350();
  Symbol.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269C5060C()
{
  sub_269D9B350();
  Symbol.hash(into:)();
  return sub_269D9B390();
}

id static UIColor.wakeup(_:)(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() hk_sleepKeyColor];

    return v1;
  }

  else
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v3 = qword_28034E060;

    return v3;
  }
}

id sub_269C50720()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_28034E060 = result;
  return result;
}

id static UIColor.alarmDisabled.getter()
{
  if (qword_28034D620 != -1)
  {
    swift_once();
  }

  v1 = qword_28034E060;

  return v1;
}

uint64_t static Color.wakeup(_:)(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() hk_sleepKeyColor];
  }

  else
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v2 = qword_28034E060;
  }

  return sub_269D99CC0();
}

uint64_t sub_269C5087C()
{
  result = sub_269D99D90();
  qword_28034E068 = result;
  return result;
}

uint64_t static Image.bedtime.getter()
{
  if (qword_28034D628 != -1)
  {
    swift_once();
  }
}

uint64_t static Image.alarm(on:snoozing:variant:)()
{
  Symbol.systemName.getter();

  return sub_269D99D90();
}

uint64_t sub_269C509F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269D99D90();
  if (qword_280C0AFD0 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0AFD8;
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
}

uint64_t static Image.standardNavigationChevron.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269D99D60();
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_269D99CC0();
  KeyPath = swift_getKeyPath();
  sub_269D996C0();
  v6 = sub_269D996D0();

  v7 = swift_getKeyPath();
  sub_269C51C58();
  v9 = (a1 + *(v8 + 36));
  sub_269C51E5C();
  v11 = *(v10 + 28);
  v12 = *MEMORY[0x277CE1050];
  v13 = sub_269D99DB0();
  (*(*(v13 - 8) + 104))(v9 + v11, v12, v13);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v4;
  a1[3] = v7;
  a1[4] = v6;
  return result;
}

uint64_t Symbol.customVoiceOverString.getter()
{
  if ((*v0 & 0xF000) != 0x1000)
  {
    return 0;
  }

  if (*v0)
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  v3 = sub_269D972C0();

  return v3;
}

uint64_t View.addCustomVoiceOverElement(for:title:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a3;
  v66 = a2;
  v80 = a6;
  v65 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - v11;
  v68 = sub_269D99440();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a4;
  v101 = a5;
  v77 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = &v61 - v15;
  sub_269D99540();
  v16 = sub_269D98D00();
  v72 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v61 - v20;
  v21 = sub_269D992E0();
  v75 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v74 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v61 - v24;
  v79 = sub_269D992E0();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v26 = &v61 - v25;
  LOWORD(v100) = *a1;
  v27 = Symbol.customVoiceOverString.getter();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v65 = v26;
    v64 = v21;
    v31 = v77;
    v62 = a4;
    if (v81)
    {
      sub_269D99420();
      v32 = v69;
      sub_269D99B80();
      (*(v67 + 8))(v13, v68);
      v100 = v29;
      v101 = v30;
      v33 = v31;
      MEMORY[0x26D650930](8236, 0xE200000000000000);
      MEMORY[0x26D650930](v66, v81);
      v100 = a4;
      v101 = v31;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_269D99AC0();

      (*(v70 + 8))(v32, OpaqueTypeMetadata2);
      v35 = sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
      v82 = OpaqueTypeConformance2;
      v83 = v35;
      WitnessTable = swift_getWitnessTable();
      v37 = v71;
      sub_269CE81C8(v19, v16, WitnessTable);
      v38 = *(v72 + 8);
      v38(v19, v16);
      sub_269CE81C8(v37, v16, WitnessTable);
      v39 = v73;
      sub_269CE3A44(v19, v16);
    }

    else
    {
      sub_269D99420();
      v46 = v69;
      sub_269D99B80();
      (*(v67 + 8))(v13, v68);
      v100 = a4;
      v101 = v31;
      v47 = swift_getOpaqueTypeConformance2();
      sub_269D99AC0();
      v33 = v31;

      (*(v70 + 8))(v46, OpaqueTypeMetadata2);
      v48 = sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
      v88 = v47;
      v89 = v48;
      v49 = swift_getWitnessTable();
      v37 = v71;
      sub_269CE81C8(v19, v16, v49);
      v38 = *(v72 + 8);
      v38(v19, v16);
      sub_269CE81C8(v37, v16, v49);
      v39 = v73;
      sub_269CE3B3C(v19, v16, v16);
    }

    v38(v19, v16);
    v38(v37, v16);
    v45 = v62;
    v100 = v62;
    v101 = v33;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
    v86 = v50;
    v87 = v51;
    v84 = swift_getWitnessTable();
    v85 = v84;
    v52 = v64;
    v53 = swift_getWitnessTable();
    v54 = v74;
    sub_269CE81C8(v39, v52, v53);
    v26 = v65;
    sub_269CE3A44(v54, v52);
    v55 = *(v75 + 8);
    v55(v54, v52);
    v55(v39, v52);
  }

  else
  {
    v40 = v63;
    v33 = v77;
    sub_269CE81C8(v76, a4, v77);
    v41 = v64;
    sub_269CE81C8(v40, a4, v33);
    v100 = a4;
    v101 = v33;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
    v98 = v42;
    v99 = v43;
    v96 = swift_getWitnessTable();
    v97 = v96;
    swift_getWitnessTable();
    sub_269CE3B3C(v41, v21, a4);
    v44 = *(v65 + 1);
    v44(v41, a4);
    v44(v40, a4);
    v45 = a4;
  }

  v100 = v45;
  v101 = v33;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
  v94 = v56;
  v95 = v57;
  v92 = swift_getWitnessTable();
  v93 = v92;
  v90 = swift_getWitnessTable();
  v91 = v33;
  v58 = v79;
  v59 = swift_getWitnessTable();
  sub_269CE81C8(v26, v58, v59);
  return (*(v78 + 8))(v26, v58);
}

uint64_t sub_269C51880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98FA0();
  *a1 = result;
  return result;
}

uint64_t sub_269C518FC(uint64_t a1)
{
  v2 = sub_269D99DB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269D98E70();
}

uint64_t sub_269C519C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98EC0();
  *a1 = result;
  return result;
}

BOOL _s13SleepHealthUI6SymbolO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 12;
  if (v2 >> 12 > 3)
  {
    if (v2 >> 12 <= 5)
    {
      if (v4 == 4)
      {
        if ((v3 & 0xF000) != 0x4000)
        {
          return 0;
        }
      }

      else if ((v3 & 0xF000) != 0x5000)
      {
        return 0;
      }
    }

    else if (v4 == 6)
    {
      if ((v3 & 0xF000) != 0x6000)
      {
        return 0;
      }
    }

    else
    {
      if (v4 != 7)
      {
        if (*a1 > 0x8101u)
        {
          if (*a1 > 0x8200u)
          {
            if (v2 == 33281)
            {
              if (v3 == 33281)
              {
                return 1;
              }
            }

            else if (v2 == 33282)
            {
              if (v3 == 33282)
              {
                return 1;
              }
            }

            else if (v3 == 33283)
            {
              return 1;
            }
          }

          else if (v2 == 33026)
          {
            if (v3 == 33026)
            {
              return 1;
            }
          }

          else if (v2 == 33027)
          {
            if (v3 == 33027)
            {
              return 1;
            }
          }

          else if (v3 == 33280)
          {
            return 1;
          }
        }

        else if (*a1 > 0x8002u)
        {
          if (v2 == 32771)
          {
            if (v3 == 32771)
            {
              return 1;
            }
          }

          else if (v2 == 33024)
          {
            if (v3 == 33024)
            {
              return 1;
            }
          }

          else if (v3 == 33025)
          {
            return 1;
          }
        }

        else if (v2 == 0x8000)
        {
          if (v3 == 0x8000)
          {
            return 1;
          }
        }

        else if (v2 == 32769)
        {
          if (v3 == 32769)
          {
            return 1;
          }
        }

        else if (v3 == 32770)
        {
          return 1;
        }

        return 0;
      }

      if ((v3 & 0xF000) != 0x7000)
      {
        return 0;
      }
    }

    return (v3 ^ v2) == 0;
  }

  if (v2 >> 12 > 1)
  {
    if (v4 != 2)
    {
      if ((v3 & 0xF000) != 0x3000)
      {
        return 0;
      }

      return (v3 ^ v2) == 0;
    }

    if ((v3 & 0xF000) != 0x2000)
    {
      return 0;
    }
  }

  else
  {
    if (!v4)
    {
      if (v3 >= 0x1000)
      {
        return 0;
      }

      return (v3 ^ v2) == 0;
    }

    if ((v3 & 0xF000) != 0x1000)
    {
      return 0;
    }
  }

  v5 = v3 ^ v2;
  return (v5 & 1) == 0 && (v5 & 0xF00) == 0;
}

void sub_269C51C58()
{
  if (!qword_28034E070)
  {
    sub_269C51CC0();
    sub_269C51E5C();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E070);
    }
  }
}

void sub_269C51CC0()
{
  if (!qword_28034E078)
  {
    sub_269C51D40();
    sub_269C51DB8(255, &qword_28034E088, &qword_28034E090);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E078);
    }
  }
}

void sub_269C51D40()
{
  if (!qword_28034E080)
  {
    sub_269C51DB8(255, &qword_280C0B5B0, &qword_280C0B580);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E080);
    }
  }
}

void sub_269C51DB8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269C51E10(255, a3);
    v4 = sub_269D99530();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C51E10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269D9AE60();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_269C51E5C()
{
  if (!qword_28034E098)
  {
    sub_269D99DB0();
    v0 = sub_269D99530();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E098);
    }
  }
}

unint64_t sub_269C51EB8()
{
  result = qword_28034E0A8;
  if (!qword_28034E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0A8);
  }

  return result;
}

unint64_t sub_269C51F10()
{
  result = qword_28034E0B0;
  if (!qword_28034E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF8)
  {
    goto LABEL_17;
  }

  if (a2 + 61448 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61448 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61448;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61448;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61448;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xC00 | (*a1 >> 12) & 0xFFFFFC0F | (16 * (*a1 >> 2))) ^ 0xFFF;
  if (v6 >= 0xFF7)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for Symbol(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61448 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61448 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF8)
  {
    v4 = 0;
  }

  if (a2 > 0xFF7)
  {
    v5 = ((a2 - 4088) >> 16) + 1;
    *result = a2 - 4088;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = (-a2 >> 4) - (a2 << 8);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269C520DC(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 12;
  v4 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 8;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}