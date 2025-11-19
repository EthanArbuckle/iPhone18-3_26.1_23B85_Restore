uint64_t sub_1B7993EE8@<X0>(void *a1@<X8>)
{
  sub_1B7995018();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7993F38()
{
  sub_1B7995018();

  return sub_1B7A978A0();
}

uint64_t sub_1B7993F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v57[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v57[-v6];
  v8 = sub_1B7A99360();
  v9 = *(v8 - 8);
  v74 = v8;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v10;
  v68 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v57[-v12];
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v57[-v21];
  v22 = type metadata accessor for PageMetricsViewModifier(0);
  v23 = v2 + v22[8];
  v24 = *v23;
  v25 = *(v23 + 8);

  if (v25)
  {
    v64 = v24;
  }

  else
  {
    sub_1B7A9AA10();
    v26 = sub_1B7A97E70();
    v70 = v13;
    v27 = v26;
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v14 + 8))(v16, v70);
    v64 = v79;
  }

  v28 = v22[5];
  v61 = *(v75 + 16);
  v29 = v73;
  v30 = v74;
  v61(v73, v2 + v28);
  v31 = (v2 + v22[6]);
  v32 = *v31;
  v65 = v31[1];
  v70 = v7;
  sub_1B7957820(v2, v7, &qword_1EBA465C0);
  sub_1B7957820(v2 + v22[7], v76, &qword_1EBA465C8);
  v60 = type metadata accessor for ClickLocationConfiguration(0);
  v33 = *(v60 - 8);
  (*(v33 + 56))(v19, 1, 1, v60);
  v77 = 0;
  v66 = v32;
  swift_unknownObjectRetain();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E0);
  sub_1B7A986C0();
  v62 = v79;
  v34 = v17[7];
  *&v19[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v35 = &v19[v17[10]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v17[11];
  *&v19[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00);
  swift_storeEnumTagMultiPayload();
  v37 = &v19[v17[12]];
  *v37 = swift_getKeyPath();
  *(v37 + 1) = 0;
  *(v37 + 8) = 0;
  v38 = &v19[v17[13]];
  v77 = 0;
  v78 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548);
  sub_1B7A986C0();
  v39 = BYTE8(v79);
  v40 = v80;
  v59 = v79;
  *v38 = v79;
  v58 = v39;
  v38[8] = v39;
  *(v38 + 2) = v40;
  v41 = v68;
  v42 = v30;
  (v61)(v68, v29, v30);
  v43 = v75;
  v44 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v64;
  (*(v43 + 32))(v45 + v44, v41, v42);
  v46 = &v19[v17[5]];
  *v46 = sub_1B7994990;
  *(v46 + 1) = v45;
  v46[16] = 0;
  if ((*(v33 + 48))(v76, 1, v60) == 1)
  {

    v47 = 0;
  }

  else
  {
    sub_1B7A99850();
    swift_allocObject();

    v47 = sub_1B7A99840();
  }

  v48 = v17[6];
  v77 = v47;

  sub_1B7A986C0();

  *&v19[v48] = v79;
  v49 = &v19[v17[9]];
  v50 = v65;
  *v49 = v66;
  v49[1] = v50;
  v51 = v70;
  sub_1B7957820(v70, &v19[v17[8]], &qword_1EBA465C0);
  *&v79 = v59;
  BYTE8(v79) = v58;
  v80 = v40;
  v77 = 0;
  v78 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8);
  sub_1B7A986E0();

  sub_1B7957888(v51, &qword_1EBA465C0);
  (*(v75 + 8))(v73, v74);

  sub_1B79949F4(v76, v19);
  v52 = v69;
  sub_1B7994A64(v19, v69, type metadata accessor for PageMetricsViewModifier.Instrumentation);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465F0);
  v54 = v72;
  (*(*(v53 - 8) + 16))(v72, v71, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465F8);
  return sub_1B7994A64(v52, v54 + *(v55 + 36), type metadata accessor for PageMetricsViewModifier.Instrumentation);
}

uint64_t View.pageMetrics(_:pipeline:tracker:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - v15;
  v17 = type metadata accessor for ClickLocationConfiguration(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)(a1, a2, a3, a4, v16, a5, a6, a7);
  return sub_1B7957888(v16, &qword_1EBA465C8);
}

uint64_t sub_1B79948D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7994990()
{
  v1 = *(sub_1B7A99360() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B7991B00(v2, v3);
}

uint64_t sub_1B79949F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7994A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7994ACC(uint64_t a1)
{
  v2 = sub_1B7A9ABF0();

  return sub_1B7994D24(a1, v2);
}

unint64_t sub_1B7994B10(uint64_t a1)
{
  sub_1B7A991E0();
  sub_1B7957B74(&qword_1EBA46600, MEMORY[0x1E69AB090]);
  v2 = sub_1B7A9A3E0();
  return sub_1B7994DEC(a1, v2);
}

uint64_t sub_1B7994BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  v5 = sub_1B7A9AFA0();

  return a3(a1, a2, v5);
}

unint64_t sub_1B7994C28(uint64_t a1)
{
  v2 = sub_1B7A9AF70();

  return sub_1B7994FAC(a1, v2);
}

unint64_t sub_1B7994C6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B7A9AE80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7994D24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B79913AC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CABE40](v9, a1);
      sub_1B7991408(v9);
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

unint64_t sub_1B7994DEC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B7A991E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1B7957B74(&qword_1EBA46608, MEMORY[0x1E69AB090]);
      v16 = sub_1B7A9A470();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B7994FAC(uint64_t a1, uint64_t a2)
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

unint64_t sub_1B7995018()
{
  result = qword_1EDC0FF48[0];
  if (!qword_1EDC0FF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC0FF48);
  }

  return result;
}

void sub_1B7995094()
{
  sub_1B7956CAC(319, &qword_1EDC0FEF8, type metadata accessor for ClickLocationConfiguration, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7995370();
    if (v1 <= 0x3F)
    {
      sub_1B7956E94(319, &qword_1EDC0FCB0, &qword_1EBA465E0, &unk_1B7A9D488, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1B7956CAC(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1B7956CAC(319, &qword_1EDC0FCA0, MEMORY[0x1E69AAF88], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B7956E94(319, &qword_1EDC0FC90, &qword_1EBA45D88, &unk_1B7A9C4F8, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B7956E94(319, &qword_1EDC0FD80, &qword_1EBA46618, &unk_1B7A9D580, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1B7956E94(319, &qword_1EDC0FD70, &qword_1EBA45F08, &unk_1B7A9C680, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1B7956E94(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1B7956E94(319, &qword_1EDC0FCA8, &qword_1EBA46548, &unk_1B7A9D540, MEMORY[0x1E6981790]);
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

void sub_1B7995370()
{
  if (!qword_1EDC0FD68)
  {
    sub_1B7A99990();
    sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8]);
    v0 = sub_1B7A97140();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC0FD68);
    }
  }
}

unint64_t sub_1B7995404()
{
  result = qword_1EDC0FD58;
  if (!qword_1EDC0FD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA465F8);
    sub_1B797EC34(&qword_1EDC0FD08, &qword_1EBA465F0);
    sub_1B7957B74(qword_1EDC0FFF8, type metadata accessor for PageMetricsViewModifier.Instrumentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD58);
  }

  return result;
}

uint64_t sub_1B7995508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B799556C(char a1)
{
  v3 = *(type metadata accessor for PageMetricsViewModifier.Instrumentation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1B7A99900() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1B799264C(a1, v1 + v4, v7);
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_1B7A99900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v2 + 16) & ~v2);
  v7 = type metadata accessor for ClickLocationConfiguration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1B7A995F0();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + ((v2 + 16) & ~v2), 1, v8))
    {
      (*(v9 + 8))(v0 + ((v2 + 16) & ~v2), v8);
    }
  }

  sub_1B79599CC();

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6 + v10, v3);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = sub_1B7A98E30();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  swift_unknownObjectRelease();
  sub_1B795AE10(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v14 = v6 + v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {

      v16 = *(v15 + 32);
      v17 = sub_1B7A97480();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  else
  {
  }

  sub_1B797D5A0(*(v6 + v1[12]), *(v6 + v1[12] + 8), *(v6 + v1[12] + 16), *(v6 + v1[12] + 17));

  (*(v4 + 8))(v0 + ((((v2 + 16) & ~v2) + v19 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1B7995A80(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PageMetricsViewModifier.Instrumentation(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1B7A99900() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1B7993558(a1, a2, v2 + v6, v9);
}

unint64_t sub_1B7995B64()
{
  result = qword_1EDC0FD38;
  if (!qword_1EDC0FD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46628);
    sub_1B7995BF0();
    sub_1B797D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD38);
  }

  return result;
}

unint64_t sub_1B7995BF0()
{
  result = qword_1EDC0FD60;
  if (!qword_1EDC0FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46630);
    sub_1B797EC34(&qword_1EDC0FD10, &qword_1EBA46640);
    sub_1B797EC34(&qword_1EDC0FCC8, &qword_1EBA46638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD60);
  }

  return result;
}

uint64_t sub_1B7995CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Array.init<A, B>(initialDataFrom:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B7997BD4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 1) + 8))(a1, a3);
  return v8;
}

uint64_t IntentResult.data.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for IntentResult._State();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v18 = *(v5 + 16);
  v30 = v2;
  v18(v10, v2, v4, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v11 + 32);
    v19(v17, v10, v3);
    v20 = v31;
    v19(v31, v17, v3);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v23 = *(v5 + 8);
    v23(v10, v4);
    (v18)(v7, v30, v4);
    if (swift_getEnumCaseMultiPayload())
    {
      v23(v7, v4);
      v21 = 1;
      v22 = v31;
    }

    else
    {
      v24 = *(v11 + 32);
      v25 = v29;
      v24(v29, v7, v3);
      v26 = v31;
      v24(v31, v25, v3);
      v22 = v26;
      v21 = 0;
    }
  }

  return (*(v11 + 56))(v22, v21, 1, v3);
}

uint64_t static IntentResult.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntentResult._State();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v4, a1);
}

uint64_t sub_1B7996100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntentResult();
  *(a2 + *(v4 + 32)) = 0;
  v5 = type metadata accessor for IntentResult._State();
  result = (*(*(v5 - 8) + 32))(a2, a1, v5);
  *(a2 + *(v4 + 28)) = 0;
  return result;
}

uint64_t static IntentResult.success(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IntentResult._State();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v9, a3);
}

id static IntentResult.failure(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntentResult._State();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  *(&v8 - v5) = a1;
  swift_storeEnumTagMultiPayload();
  sub_1B7996100(v6, a2);
  return a1;
}

uint64_t IntentResult.init<A>(initialDataFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = type metadata accessor for IntentResult._State();
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - v7;
  v30 = sub_1B7A9AB60();
  v34 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = a1;
  sub_1B7A98F60();
  v20 = *(v13 + 48);
  if (v20(v12, 1, a2) == 1)
  {
    v21 = *(v34 + 8);
    v22 = v12;
    v23 = v30;
    v34 += 8;
    v21(v22, v30);
    sub_1B7A995A0();
    (*(*(a3 - 8) + 8))(v19, a3);
    if (v20(v9, 1, a2) == 1)
    {
      v21(v9, v23);
      v24 = v31;
    }

    else
    {
      v26 = *(v13 + 32);
      v27 = v29;
      v26(v29, v9, a2);
      v24 = v31;
      v26(v31, v27, a2);
    }
  }

  else
  {
    (*(*(a3 - 8) + 8))(v19, a3);
    v25 = *(v13 + 32);
    v25(v18, v12, a2);
    v24 = v31;
    v25(v31, v18, a2);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v24, v33);
}

uint64_t IntentResult.init<A, B>(initialDataFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a7;
  v43 = a6;
  v41 = type metadata accessor for IntentResult._State();
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v12;
  v38 = sub_1B7A9AB60();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = a1;
  v37 = a3;
  v39 = a5;
  sub_1B7A98F50();
  v25 = *(v18 + 48);
  if (v25(v17, 1, a2) == 1)
  {
    v26 = *(v36 + 8);
    v27 = v17;
    v28 = v38;
    v26(v27, v38);
    sub_1B7A99590();
    (*(*(a4 - 8) + 8))(v24, a4);
    if (v25(v14, 1, a2) == 1)
    {
      v26(v14, v28);
      v29 = v40;
    }

    else
    {
      v31 = *(v18 + 32);
      v32 = v35;
      v31(v35, v14, a2);
      v29 = v40;
      v31(v40, v32, a2);
    }
  }

  else
  {
    (*(*(a4 - 8) + 8))(v24, a4);
    v30 = *(v18 + 32);
    v30(v23, v17, a2);
    v29 = v40;
    v30(v40, v23, a2);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v29, v42);
}

uint64_t sub_1B7996A3C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IntentResult._State();
  result = (*(*(v5 - 8) + 40))(v2, a1, v5);
  v7 = *(a2 + 32);
  v8 = *(v2 + v7);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v7) = v10;
  }

  return result;
}

BOOL sub_1B7996ACC()
{
  v1 = type metadata accessor for IntentResult._State();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  (*(v2 + 16))(&v8 - v4, v0, v1, v3);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t IntentResult.error.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IntentResult._State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, v1, v2, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v6;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

Swift::Void __swiftcall IntentResult.invalidate(clearing:)(Swift::Bool clearing)
{
  v3 = v1;
  v5 = type metadata accessor for IntentResult._State();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - v6;
  ++*(v2 + *(v3 + 28));
  if (clearing)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B7996A3C(v7, v3);
  }
}

uint64_t static IntentResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v38 - v10;
  v11 = type metadata accessor for IntentResult._State();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v38 - v19;
  v21 = type metadata accessor for IntentResult();
  if (*(a1 + *(v21 + 28)) == *(a2 + *(v21 + 28)))
  {
    v38 = v7;
    v39 = v12;
    v22 = *(v12 + 16);
    v23 = a1;
    v24 = *(TupleTypeMetadata2 + 48);
    v22(v20, v23, v11);
    v22(&v20[v24], a2, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22(v14, v20, v11);
        v32 = *v14;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v33 = *&v20[v24];
          sub_1B7997CDC();
          v34 = sub_1B7A96B00();
          v35 = sub_1B7A96B00();
          v30 = sub_1B7A9AB20();

          goto LABEL_12;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 3)
      {
        v30 = 1;
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v22(v17, v20, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v38;
        v27 = *(v38 + 32);
        v28 = v40;
        v27(v40, v17, a3);
        v29 = v41;
        v27(v41, &v20[v24], a3);
        v30 = sub_1B7A9A470();
        v31 = *(v26 + 8);
        v31(v29, a3);
        v31(v28, a3);
LABEL_12:
        v36 = v39;
        TupleTypeMetadata2 = v11;
LABEL_16:
        (*(v36 + 8))(v20, TupleTypeMetadata2);
        return v30 & 1;
      }

      (*(v38 + 8))(v17, a3);
    }

    v30 = 0;
    v36 = v43;
    goto LABEL_16;
  }

  v30 = 0;
  return v30 & 1;
}

uint64_t Array.init<A, B>(initialDataFrom:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for IntentResult();
  v10 = sub_1B7997394(sub_1B7997D28, v12, a3, v8, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v9);
  (*(*(a3 - 1) + 8))(a1, a3);
  return v10;
}

uint64_t sub_1B7997290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return IntentResult.init<A>(initialDataFrom:)(v7, AssociatedTypeWitness, a2, a3);
}

uint64_t sub_1B7997394(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1B7A9AB60();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1B7A9A550();
  v63 = sub_1B7A9ACF0();
  v58 = sub_1B7A9AD00();
  sub_1B7A9ACD0();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1B7A9A540();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B7A9AB70();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1B7A9ACE0();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1B7A9AB70();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1B7A9ACE0();
      sub_1B7A9AB70();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1B7997A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_checkMetadataState();
  return IntentResult.init<A, B>(initialDataFrom:)(v11, AssociatedTypeWitness, v14, a2, a4, a3, a5);
}

uint64_t sub_1B7997BD4(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for IntentResult();
  return sub_1B7997394(sub_1B7998370, v11, a3, v8, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v9);
}

unint64_t sub_1B7997CDC()
{
  result = qword_1EBA46670[0];
  if (!qword_1EBA46670[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBA46670);
  }

  return result;
}

uint64_t sub_1B7997D4C()
{
  result = type metadata accessor for IntentResult._State();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7997DCC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v5 = a2 - 251;
  v6 = v4 & 0xFFFFFFF8;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v5 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else if (v8 == 2)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
LABEL_23:
      v12 = *(a1 + v3);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v11 = v9 - 1;
  if (v6)
  {
    v11 = 0;
    LODWORD(v6) = *a1;
  }

  return (v6 | v11) + 253;
}

unsigned int *sub_1B7997E98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 >= 0xFD)
  {
    v6 = a3 - 251;
    if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2 - 252;
    if (a2 > 0xFC)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_31;
      }

      *(result + v5) = 0;
    }

    else if (v8)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_31:
      *(result + v4) = -a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  v8 = 0;
  v9 = a2 - 252;
  if (a2 <= 0xFC)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v11 = a2 - 253;
    v12 = result;
    bzero(result, (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v12;
    *v12 = v11;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      *(result + v5) = v10;
    }

    else
    {
      *(result + v5) = v10;
    }
  }

  else if (v8)
  {
    *(result + v5) = v10;
  }

  return result;
}

unint64_t sub_1B7997FC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B799830C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B799803C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1B7998154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1B799830C()
{
  result = qword_1EBA46778;
  if (!qword_1EBA46778)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBA46778);
  }

  return result;
}

uint64_t _ComponentContentByType._adding<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A991E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();

  sub_1B7A991F0();
  v24 = a3;
  v25 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1B795C1E4(&v23, v21);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a2;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  sub_1B7999284(v16, v11, a1, &v20, a3, a4);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

uint64_t _ComponentContentByType._merging(_:)(uint64_t a1, uint64_t a2)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a2;
  sub_1B7999A60(a1, sub_1B79991E0, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t _ComponentContentByType.registry.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ComponentContentByType.body(withContentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B7A991E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v36[3] = v10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v36);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v10);
  sub_1B7A991D0();
  if (!*(a2 + 16) || (v13 = sub_1B7995D44(v9), (v14 & 1) == 0))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_6;
  }

  sub_1B7999E90(*(a2 + 56) + 40 * v13, &v30);
  (*(v7 + 8))(v9, v6);
  v15 = v33;
  v16 = v34;
  __swift_project_boxed_opaque_existential_1(&v30, v33);
  v17 = Component.trySetModel(to:)(a1, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  if (!v17)
  {
LABEL_6:
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B7A9AC50();

    v30 = 0xD00000000000001CLL;
    v31 = 0x80000001B7AC5340;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v19 = sub_1B7A9AFF0();
    MEMORY[0x1B8CAB750](v19);

    MEMORY[0x1B8CAB750](62, 0xE100000000000000);
    v21 = v30;
    v20 = v31;
    sub_1B7999DD8();

    v22 = sub_1B7A98080();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = v21;
    *(v29 + 24) = v20;
    v30 = v22;
    v31 = v24;
    v32 = v26 & 1;
    v33 = v28;
    v34 = sub_1B797D598;
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B7999E2C();
    result = sub_1B7A987F0();
    goto LABEL_7;
  }

  result = v17;
LABEL_7:
  *a3 = result;
  return result;
}

uint64_t Component.trySetModel(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for DataObjectBox();
  sub_1B7A9AB60();
  v23[1] = sub_1B7A97DF0();
  v6 = sub_1B7A97590();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = sub_1B7A9AB60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  sub_1B7999E90(v25, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46798);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    Component.model(_:)(v16, a2);
    v19 = *(a3 + 8);
    WitnessTable = swift_getWitnessTable();
    v26 = v19;
    v27 = WitnessTable;
    swift_getWitnessTable();
    v21 = sub_1B7999EF4(v8);
    (*(v24 + 8))(v8, v6);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
    return v21;
  }

  else
  {
    v18(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    return 0;
  }
}

uint64_t _ComponentContentN.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467A0);
  v7 = sub_1B7A9A6F0();
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t _ComponentContentN.body(withContentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7999E90(a1, v30);
  sub_1B7999E90(a1, &v27);
  v5 = *(a2 + 16);

  if (!v5)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v30);

    __swift_destroy_boxed_opaque_existential_1(&v27);
    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    sub_1B7A9AC50();

    *&v30[0] = 0xD00000000000001BLL;
    *(&v30[0] + 1) = 0x80000001B7AC5390;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v10 = sub_1B7A9AFF0();
    MEMORY[0x1B8CAB750](v10);

    MEMORY[0x1B8CAB750](0x6C65646F6D20, 0xE600000000000000);
    v11 = v30[0];
    sub_1B7999DD8();

    v12 = sub_1B7A98080();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    v27 = v12;
    *&v28 = v14;
    *(&v28 + 1) = v16 & 1;
    *&v29[0] = v18;
    *(&v29[0] + 1) = sub_1B799A220;
    *&v29[1] = v19;
    BYTE8(v29[1]) = 1;
    sub_1B7999FBC(v12, v14, v16 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B7999E2C();
    sub_1B7A97B30();
    sub_1B795A450(v12, v14, v16 & 1);

LABEL_12:
    v24 = v31;
    v25 = v30[1];
    *a3 = v30[0];
    *(a3 + 16) = v25;
    *(a3 + 32) = v30[2];
    *(a3 + 48) = v24;
    return result;
  }

  v6 = (a2 + 32);
  sub_1B7A9A760();
  while (1)
  {
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = Component.trySetModel(to:)(&v27, v7, v8);

    if (v9)
    {
      break;
    }

    v6 += 5;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v6[3];
  v22 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v21);
  v23 = Component.trySetModel(to:)(v30, v21, v22);

  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v23)
  {

    __swift_destroy_boxed_opaque_existential_1(&v27);
    v27 = v23;
    v28 = 0u;
    memset(v29, 0, 25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788);
    sub_1B7999E2C();
    result = sub_1B7A97B30();
    goto LABEL_12;
  }

  result = __swift_destroy_boxed_opaque_existential_1(&v27);
  __break(1u);
  return result;
}

uint64_t sub_1B79991E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0) + 48);
  v6 = sub_1B7A991E0();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1B7999E90(a1 + v4, a2 + v5);
}

uint64_t sub_1B7999284(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B7A991E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6;
  v35 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v17 = *a4;
  v19 = sub_1B7995D44(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = v25[7] + 40 * v19;
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_1B795C1E4(&v36, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_1B79A0BA4();
    goto LABEL_7;
  }

  sub_1B799EE28(v22, a3 & 1);
  v28 = sub_1B7995D44(a2);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1B7A9AEC0();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  sub_1B7999584(v19, v15, v33, v25, a5, v35);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B7999584(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1B7A991E0();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_1B795C1E4(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

void sub_1B7999690(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - v3;
  v4 = sub_1B7A991E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA467D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v41 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v38 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v5 + 16))(v7, *(v15 + 48) + *(v5 + 72) * v24, v4, v13);
    sub_1B7999E90(*(v15 + 56) + 40 * v24, v43);
    v25 = *(v40 + 48);
    v26 = v4;
    v27 = v40;
    (*(v5 + 32))(v14, v7, v26);
    sub_1B795C1E4(v43, &v14[v25]);
    v28 = v39;
    (*(v39 + 56))(v14, 0, 1, v27);
    v29 = v38;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v29;
    v30 = v1[5];
    sub_1B797E788(v14, v10, qword_1EBA467D0);
    v31 = 1;
    v32 = (*(v28 + 48))(v10, 1, v27);
    v33 = v42;
    if (v32 != 1)
    {
      v34 = v37;
      sub_1B797E788(v10, v37, &qword_1EBA467C8);
      v30(v34);
      sub_1B799A1B4(v34);
      v31 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0);
    (*(*(v35 - 8) + 56))(v33, v31, 1, v35);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v28 = v39;
        v27 = v40;
        (*(v39 + 56))(&v36 - v12, 1, 1, v40, v13);
        v29 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B7999A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_1B7A991E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41 = a3;

  while (1)
  {
    sub_1B7999690(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_1B799A1AC();
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_1B795C1E4(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_1B7995D44(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B79A0BA4();
      }
    }

    else
    {
      sub_1B799EE28(v32, a4 & 1);
      v34 = sub_1B7995D44(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = v36[7] + 40 * v29;
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1B795C1E4(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_1B795C1E4(v44, v36[7] + 40 * v29);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B7A9AEC0();
  __break(1u);
  return result;
}

unint64_t sub_1B7999DD8()
{
  result = qword_1EBA46780;
  if (!qword_1EBA46780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46780);
  }

  return result;
}

unint64_t sub_1B7999E2C()
{
  result = qword_1EBA46790;
  if (!qword_1EBA46790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46790);
  }

  return result;
}

uint64_t sub_1B7999E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7999EF4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1B7A987F0();
}

uint64_t sub_1B7999FBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for ComponentContentBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ComponentContentBuilder(_WORD *result, int a2, int a3)
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

unint64_t sub_1B799A120()
{
  result = qword_1EBA467A8;
  if (!qword_1EBA467A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA467B0);
    sub_1B7999E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA467A8);
  }

  return result;
}

uint64_t sub_1B799A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B799A224(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  sub_1B7A28F54(v6, v2);
  return (*(v3 + 8))(a1, v2);
}

void sub_1B799A340(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 120));
  os_unfair_lock_lock(v3 + 4);
  sub_1B799A4AC(v1, a1);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1B799A3B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B799A4AC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(&v11 - v7, a2, AssociatedTypeWitness, v6);
  (*(v9 + 56))(v8, 0, 1, AssociatedTypeWitness);
  sub_1B799B33C(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B799A63C()
{
  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  sub_1B7A9AB60();
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1B799A718()
{
  sub_1B799A63C();

  return swift_deallocClassInstance();
}

uint64_t Observe.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a1;
  type metadata accessor for Observe.Coordinator();
  swift_getWitnessTable();
  result = sub_1B7A97110();
  *a8 = result;
  *(a8 + 8) = v18;
  *(a8 + 16) = v19 & 1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a2;
  v16[7] = a3;

  return Observe.init(_:content:)(a1, sub_1B799AAD4, v16, a4, a5, a6, a7, a8);
}

char *sub_1B799A85C()
{
  type metadata accessor for Observe.Coordinator();
  swift_allocObject();
  v0 = swift_unknownObjectRetain();
  v1 = sub_1B799AFB8(v0);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B799A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  v16(v13);
  sub_1B7957EE0(v12, a5, a7);
  v17 = *(v9 + 8);
  v17(v12, a5);
  sub_1B7957EE0(v15, a5, a7);
  return (v17)(v15, a5);
}

uint64_t sub_1B799AAE4()
{
  type metadata accessor for Observe.Coordinator();
  swift_getWitnessTable();
  return sub_1B7A97120();
}

uint64_t Observe.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness();
  v21[0] = sub_1B7A9AB60();
  v4 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v6 = v21 - v5;
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = *(v2 + 16);
  v16 = *(v2 + 3);
  v17 = *(v2 + 4);
  v22 = *v2;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1B799AAE4();
  sub_1B799A3B4();

  v16(v6);
  (*(v4 + 8))(v6, v21[0]);
  v18 = *(a1 + 40);
  sub_1B7957EE0(v11, v7, v18);
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_1B7957EE0(v14, v7, v18);
  return (v19)(v14, v7);
}

uint64_t sub_1B799ADDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1B799AE38(uint64_t a1, int a2)
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

uint64_t sub_1B799AE80(uint64_t result, int a2, int a3)
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

uint64_t sub_1B799AEE0()
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9AB60();
  result = sub_1B7A96F50();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1B799AFB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v26 = v3;
  v27 = a1;
  v23 = *(v3 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7A99600();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1B7A9AB60();
  v8 = sub_1B7A96F50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = *(v3 + 112);
  (*(*(AssociatedTypeWitness - 8) + 56))(&v23 - v14, 1, 1, AssociatedTypeWitness, v13);
  sub_1B799A224(v15);
  (*(v9 + 32))(&v2[v16], v11, v8);
  v17 = *(*v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA468D8);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&v2[v17] = v18;
  v19 = sub_1B799B4F8();
  v20 = sub_1B7A9AA50();
  v28[3] = v19;
  v28[4] = MEMORY[0x1E69AB720];
  v28[0] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B799B544;
  *(v21 + 24) = 0;
  sub_1B7A98E90();

  (*(v24 + 8))(v7, v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v2;
}

uint64_t sub_1B799B33C(uint64_t a1)
{
  v3 = (*v1 + 88);
  v4 = (*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  *&v11 = v6;
  *(&v11 + 1) = *v3;
  *&v12 = v5;
  *(&v12 + 1) = *v4;
  v14 = v12;
  v15 = v11;
  v18 = v11;
  v19 = v12;
  swift_getKeyPath();
  v16 = v15;
  v17 = v14;
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);

  return sub_1B7A96F30();
}

unint64_t sub_1B799B4F8()
{
  result = qword_1EDC0E5F0;
  if (!qword_1EDC0E5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0E5F0);
  }

  return result;
}

uint64_t View.playable<A>(id:isEnabled:playPercentVisible:pausePercentVisible:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v24 = a5;
  v23 = a3;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlayableViewModifier();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(v12 + 16))(v14, a1, a4, v17);
  v20 = sub_1B799B78C(v14, a2, a4, v19, a6, a7);
  MEMORY[0x1B8CA96D0](v19, v23, v15, v24, v20);
  return (*(v16 + 8))(v19, v15);
}

double sub_1B799B78C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for PlayableViewModifier();
  v13 = a4 + v12[11];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a4 + v12[12];
  sub_1B7A986C0();
  *v14 = v19;
  *(v14 + 8) = v20;
  v15 = a4 + v12[13];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  *(a4 + v12[9]) = a2;
  type metadata accessor for PlayableViewState();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = 0;
  result = 0.0;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  v18 = (a4 + v12[10]);
  *v18 = v16;
  v18[1] = 0;
  return result;
}

uint64_t View.onPlayableViewsChange<A>(identifiedBy:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[2] = a8;
  v20[1] = a1;
  v14 = type metadata accessor for OnPlayableViewChangeModifier();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;

  sub_1B799BB04(sub_1B799BAF4, v18, v17);
  MEMORY[0x1B8CA96D0](v17, a4, v14, a6);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1B799BA4C(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for CGRect(0);
  result = sub_1B7A9AEA0();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B799BB04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a1;
  v6 = sub_1B7A991E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  v10 = *(type metadata accessor for OnPlayableViewChangeModifier() + 44);

  sub_1B7A991F0();
  v11 = *(v7 + 16);
  v11(v9, a3 + v10, v6);
  v12 = type metadata accessor for PlayableStorage();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_allPlayable;
  *&v13[v14] = sub_1B7990B1C(MEMORY[0x1E69E7CC0]);
  v15 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained;
  *&v13[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained] = 0;
  *&v13[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer] = 0;
  v11(&v13[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_validType], v9, v6);
  v16 = &v13[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_action];
  *v16 = v20;
  *(v16 + 1) = a2;
  *&v13[v15] = 0;
  v21.receiver = v13;
  v21.super_class = v12;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  (*(v7 + 8))(v9, v6);
  result = swift_allocObject();
  *(result + 16) = v17;
  *(a3 + 16) = sub_1B79A1750;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  return result;
}

void sub_1B799BDD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = sub_1B7A991E0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v7 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained);
  if (v27)
  {
    v28 = v27;
    sub_1B799BDD8(a1, a2, a3, a4, a5, a6, a7);
  }

  swift_getDynamicType();
  sub_1B7A991F0();
  v29 = sub_1B7A991C0();
  (*(v24 + 8))(v26, v23);
  if (v29)
  {
    v30 = v16;
    v31 = *(v16 + 16);
    v32 = a1;
    v49 = v31;
    v31(v22, a1, a2);
    sub_1B7A9AE10();
    v33 = *(v30 + 8);
    v33(v22, a2);
    v34 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_allPlayable;
    swift_beginAccess();
    v35 = *(v8 + v34);
    if (*(v35 + 16) && (v36 = sub_1B7994ACC(v53), (v37 & 1) != 0))
    {
      v38 = *(v35 + 56) + 32 * v36;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
      swift_endAccess();
      sub_1B7991408(v53);
      v54.origin.x = v39;
      v54.origin.y = v40;
      v54.size.width = v41;
      v54.size.height = v42;
      v55.origin.x = a4;
      v55.origin.y = a5;
      v55.size.width = a6;
      v55.size.height = a7;
      if (CGRectEqualToRect(v54, v55))
      {
        return;
      }
    }

    else
    {
      swift_endAccess();
      sub_1B7991408(v53);
    }

    v43 = v50;
    v49(v50, a1, a2);
    sub_1B7A9AE10();
    v33(v43, a2);
    swift_beginAccess();
    if (*(*(v8 + v34) + 16))
    {
      sub_1B7994ACC(v53);
      v45 = v44 ^ 1;
    }

    else
    {
      v45 = 1;
    }

    swift_endAccess();
    sub_1B7991408(v53);
    v46 = v51;
    v49(v51, v32, a2);
    sub_1B7A9AE10();
    v33(v46, a2);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v8 + v34);
    *(v8 + v34) = 0x8000000000000000;
    sub_1B79A0574(v53, isUniquelyReferenced_nonNull_native, a4, a5, a6, a7);
    sub_1B7991408(v53);
    *(v8 + v34) = v52;
    swift_endAccess();
    sub_1B799C23C(v45 & 1);
  }
}

void sub_1B799C23C(char a1)
{
  v2 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer;
  v3 = *(v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
  if (v3)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v4 = v3;
    [v4 invalidate];
    v5 = *(v1 + v2);
    *(v1 + v2) = 0;

    v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
    v7 = [objc_opt_self() currentRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
    v7 = [objc_opt_self() currentRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x1E695DA28]];
  }

  v8 = *(v1 + v2);
  *(v1 + v2) = v6;
}

void sub_1B799C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = sub_1B7A991E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = *(v3 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained);
  if (v15)
  {
    v16 = v15;
    sub_1B799C3DC(a1, a2, a3);
  }

  swift_getDynamicType();
  sub_1B7A991F0();
  v17 = sub_1B7A991C0();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    (*(v8 + 16))(v10, a1, a2);
    sub_1B7A9AE10();
    (*(v8 + 8))(v10, a2);
    swift_beginAccess();
    sub_1B799C76C(v26, v27);
    swift_endAccess();
    sub_1B7991408(v26);
    if ((v27[32] & 1) == 0)
    {
      v18 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer;
      v19 = *(v4 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
      if (v19)
      {
        v20 = v19;
        [v20 invalidate];
        v21 = *(v4 + v18);
        *(v4 + v18) = 0;

        v22 = [objc_opt_self() timerWithTimeInterval:v4 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
        v23 = [objc_opt_self() currentRunLoop];
        [v23 addTimer:v22 forMode:*MEMORY[0x1E695DA28]];
      }

      else
      {
        v22 = [objc_opt_self() timerWithTimeInterval:v4 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
        v23 = [objc_opt_self() currentRunLoop];
        [v23 addTimer:v22 forMode:*MEMORY[0x1E695DA28]];
      }

      v24 = *(v4 + v18);
      *(v4 + v18) = v22;
    }
  }
}

unint64_t sub_1B799C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1B7994ACC(a1);
  v7 = v6;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v6)
  {
    v10 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B79A0E2C();
      v12 = v16;
    }

    sub_1B7991408(*(v12 + 48) + 40 * v10);
    v13 = (*(v12 + 56) + 32 * v10);
    v14 = *v13;
    v15 = v13[1];
    result = sub_1B79A00B0(v10, v12);
    v8 = v14;
    v9 = v15;
    *v3 = v12;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = (v7 & 1) == 0;
  return result;
}

id sub_1B799C85C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B799C9A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1B7A96EC0();
  *a1 = result;
  return result;
}

uint64_t sub_1B799C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79A1768();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B799CA44()
{
  sub_1B79A16FC();
  sub_1B7A97890();
  return v1;
}

void *sub_1B799CA80()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1B799CBD0()
{
  type metadata accessor for PlayableStorage();
  sub_1B79A181C(qword_1EBA469B0, type metadata accessor for PlayableStorage);

  return sub_1B7A97120();
}

uint64_t sub_1B799CC60()
{
  v0 = sub_1B799CA80();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1B799CBD0();
    v3 = *&v2[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained];
    v4 = v3;

    if (!v3)
    {
      v4 = sub_1B799CBD0();
      v5 = *&v4[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained];
      *&v4[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained] = v1;
      v1 = v5;
    }
  }

  swift_getKeyPath();
  v7 = sub_1B799CBD0();
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getWitnessTable();
  sub_1B7A98150();
}

uint64_t sub_1B799CDA0(void **a1)
{
  v1 = *a1;
  sub_1B79A16FC();
  v2 = v1;
  return sub_1B7A978A0();
}

void sub_1B799CE00(uint64_t a1)
{
  if (*(v1 + *(a1 + 36)) == 1)
  {
    v2 = v1;
    v4 = sub_1B799CF80(a1);
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
      sub_1B7A986D0();
      if (v12 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58);
        sub_1B7A986D0();
        v6 = *(v12 + 32);

        if (v6 == 1 && (sub_1B7A986D0(), v7 = *(v12 + 33), , v7 == 1))
        {
          sub_1B7A986D0();
          v8 = *(v12 + 40);
          v9 = *(v12 + 48);
          v10 = *(v12 + 56);
          v11 = *(v12 + 64);

          sub_1B799BDD8(v2, *(a1 + 16), *(a1 + 24), v8, v9, v10, v11);
        }

        else
        {
          sub_1B799C3DC(v2, *(a1 + 16), *(a1 + 24));
        }
      }
    }
  }
}

void *sub_1B799CF80(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1B799D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v75 = a1;
  v77 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  v8 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EB8);
  v63 = v8;
  v9 = sub_1B7A97590();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v56 - v10;
  v65 = v9;
  v11 = sub_1B7A97590();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v56 - v12;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8);
  v89 = WitnessTable;
  v90 = v14;
  v15 = swift_getWitnessTable();
  v64 = v15;
  v16 = sub_1B797D3EC();
  v87 = v15;
  v88 = v16;
  v70 = v11;
  v69 = swift_getWitnessTable();
  v83 = v11;
  v84 = MEMORY[0x1E69E6370];
  v85 = v69;
  v86 = MEMORY[0x1E69E6388];
  v71 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v72 = OpaqueTypeMetadata2;
  v73 = v18;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v66 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v68 = &v56 - v22;
  v23 = v6;
  v60 = *(v6 + 16);
  v80 = v6 + 16;
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4;
  v58 = v4;
  v60(v57, v4, a2, v21);
  v78 = *(v23 + 80);
  v25 = (v78 + 32) & ~v78;
  v62 = v7;
  v26 = swift_allocObject();
  v27 = a2;
  v59 = *(a2 + 16);
  v79 = *(a2 + 24);
  v28 = v79;
  *(v26 + 16) = v59;
  *(v26 + 24) = v28;
  v29 = *(v23 + 32);
  v29(v26 + v25, &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v30 = v29;
  v61 = v29;
  sub_1B799EB74();
  v31 = v67;
  sub_1B7A98220();

  v32 = v57;
  v33 = v24;
  v34 = v60;
  (v60)(v57, v33, v27);
  v35 = swift_allocObject();
  v36 = v59;
  v37 = v79;
  *(v35 + 16) = v59;
  *(v35 + 24) = v37;
  v30(v35 + v25, v32, v27);
  v38 = v65;
  View.onViewAppearanceChange(perform:)(sub_1B799EBC8, v35, v65, v64);

  (*(v74 + 8))(v31, v38);
  v39 = v58;
  v40 = (v58 + *(v27 + 48));
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v83) = v41;
  v84 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
  sub_1B7A986D0();
  LOBYTE(v83) = v82;
  v34(v32, v39, v27);
  v43 = swift_allocObject();
  v44 = v79;
  *(v43 + 16) = v36;
  *(v43 + 24) = v44;
  v61(v43 + v25, v32, v27);
  v45 = v66;
  v46 = v70;
  v47 = MEMORY[0x1E69E6370];
  v48 = v69;
  v49 = MEMORY[0x1E69E6388];
  v50 = v81;
  sub_1B7A984B0();

  (*(v76 + 8))(v50, v46);
  v83 = v46;
  v84 = v47;
  v85 = v48;
  v86 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v68;
  v53 = v72;
  sub_1B7957EE0(v45, v72, OpaqueTypeConformance2);
  v54 = *(v73 + 8);
  v54(v45, v53);
  sub_1B7957EE0(v52, v53, OpaqueTypeConformance2);
  return (v54)(v52, v53);
}

double sub_1B799D818@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a1;
  v3 = sub_1B7A97540();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A97310();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-2] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, *&v31[0], v11, v13);
  sub_1B7A972E0();
  v17 = v16;
  v19 = v18;
  sub_1B7A97CB0();
  sub_1B7A97300();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E697E668], v3);
  sub_1B7A972D0();
  v30 = v33;
  *v31 = v32;
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  v29 = v30;
  result = v31[0];
  *(a2 + 48) = *v31;
  *(a2 + 64) = v29;
  return result;
}

uint64_t sub_1B799DAD8(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v26 = a1[5];
  v28 = a1[4];
  v5 = a1[8];
  v6 = a1[9];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for PlayableViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58);
  sub_1B7A986D0();
  v8 = *(v32 + 16);
  v9 = *(v32 + 24);
  v10 = *(v32 + 32);
  v11 = *(v32 + 33);
  v30 = *(v32 + 34);
  v31 = *(v32 + 38);

  v12 = v6 / v2;
  if (v5 / v1 < v6 / v2)
  {
    v12 = v5 / v1;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13 < v12;
  v33.origin.x = v3;
  v33.origin.y = v4;
  v33.size.height = v26;
  v33.size.width = v28;
  v34 = CGRectIntegral(v33);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  sub_1B7A986D0();
  v20 = *(v32 + 16);
  v19 = *(v32 + 24);
  v21 = *(v32 + 32);
  v22 = *(v32 + 33);
  v27 = *(v32 + 48);
  v29 = *(v32 + 40);
  v24 = *(v32 + 64);
  v25 = *(v32 + 56);

  if (v8 != v20 || v9 != v19 || ((v21 ^ v14) & 1) != 0 || ((v22 ^ v11) & 1) != 0 || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, v36.origin.y = v27, v36.origin.x = v29, v36.size.height = v24, v36.size.width = v25, !CGRectEqualToRect(v35, v36)))
  {
    sub_1B7A986D0();
    *(v32 + 16) = v8;
    *(v32 + 24) = v9;
    *(v32 + 32) = v14;
    *(v32 + 33) = v11;
    *(v32 + 34) = v30;
    *(v32 + 38) = v31;
    *(v32 + 40) = x;
    *(v32 + 48) = y;
    *(v32 + 56) = width;
    *(v32 + 64) = height;

    sub_1B799CE00(v7);
  }
}

void sub_1B799DD30(char a1)
{
  v2 = type metadata accessor for PlayableViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58);
  sub_1B7A986D0();
  *(v3 + 33) = a1;

  sub_1B799CE00(v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50);
    sub_1B7A986D0();
    if ((v3 & 1) == 0)
    {
      sub_1B7A986E0();
    }
  }
}

uint64_t sub_1B799DE28(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2)
  {
    v3 = type metadata accessor for PlayableViewModifier();
    sub_1B799CE00(v3);
  }
}

BOOL sub_1B799DEFC(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && ((*(a1 + 17) ^ *(a2 + 17)) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  }

  return result;
}

uint64_t View.playable<A>(id:isEnabled:playPercentVisible:pausePercentVisible:frameCoordinateSpace:)(uint64_t a1, char a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v24 = a6;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlayableViewModifier();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  (*(v13 + 16))(v15, a1, a7, v18);
  v21 = sub_1B799B78C(v15, a2, a7, v20, a3, a4);
  MEMORY[0x1B8CA96D0](v20, v24, v16, v25, v21);
  return (*(v17 + 8))(v20, v16);
}

uint64_t type metadata accessor for PlayableStorage()
{
  result = qword_1EBA46908;
  if (!qword_1EBA46908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B799E194()
{
  result = sub_1B7A991E0();
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

uint64_t get_witness_table_7SwiftUI4ViewRzSHRd__r__lAA15ModifiedContentVyx011_JetEngine_aB008PlayableC8Modifier33_A88781FDD5080888A74F07BF6234265BLLVyqd__GGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
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

uint64_t sub_1B799E31C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B799E370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1B799E3D0()
{
  sub_1B797CE50(319, &qword_1EBA46998, &qword_1EBA469A0);
  if (v0 <= 0x3F)
  {
    sub_1B799E4C4();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        sub_1B7A991E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B799E4C4()
{
  if (!qword_1EBA469A8)
  {
    type metadata accessor for PlayableStorage();
    sub_1B79A181C(qword_1EBA469B0, type metadata accessor for PlayableStorage);
    v0 = sub_1B7A97140();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA469A8);
    }
  }
}

void sub_1B799E560()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B799E9B8();
    if (v1 <= 0x3F)
    {
      sub_1B797CE50(319, &qword_1EBA46998, &qword_1EBA469A0);
      if (v2 <= 0x3F)
      {
        sub_1B799EA10();
        if (v3 <= 0x3F)
        {
          sub_1B797CE50(319, &qword_1EDC10140, &qword_1EBA45D08);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B799E668(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B799E7C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v18 + 8) = a2 & 0x7FFFFFFF;
          *(v18 + 16) = 0;
        }

        else
        {
          *(v18 + 8) = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1B799E9B8()
{
  if (!qword_1EBA46A38)
  {
    type metadata accessor for PlayableViewState();
    v0 = sub_1B7A98700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46A38);
    }
  }
}

void sub_1B799EA10()
{
  if (!qword_1EBA46A40)
  {
    v0 = sub_1B7A98700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46A40);
    }
  }
}

uint64_t sub_1B799EAE8(double *a1)
{
  type metadata accessor for PlayableViewModifier();

  return sub_1B799DAD8(a1);
}

unint64_t sub_1B799EB74()
{
  result = qword_1EBA46A48;
  if (!qword_1EBA46A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A48);
  }

  return result;
}

void sub_1B799EBC8(char a1)
{
  type metadata accessor for PlayableViewModifier();

  sub_1B799DD30(a1);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PlayableViewModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  sub_1B795AE1C(*(v3 + v2[13]), *(v3 + v2[13] + 8));

  sub_1B797D5A0(*(v3 + v2[15]), *(v3 + v2[15] + 8), *(v3 + v2[15] + 16), *(v3 + v2[15] + 17));

  return swift_deallocObject();
}

uint64_t sub_1B799ED8C(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for PlayableViewModifier();

  return sub_1B799DE28(a1, a2);
}

uint64_t sub_1B799EE28(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B7A991E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A68);
  v38 = a2;
  result = sub_1B7A9ADB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1B795C1E4((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1B7999E90(*(v9 + 56) + 40 * v23, v43);
      }

      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090]);
      result = sub_1B7A9A3E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1B795C1E4(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B799F20C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590);
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v41 = *(v24 + 32);
        v39 = v25;
        v40 = v26;
      }

      else
      {
        sub_1B79913AC(v24, &v39);
      }

      v27 = (*(v5 + 56) + 32 * v23);
      v37 = v27[1];
      v38 = *v27;
      result = sub_1B7A9ABF0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v39;
      v18 = v40;
      *(v16 + 32) = v41;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v38;
      v19[1] = v37;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B799F4B4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B7A991E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8);
  v39 = a2;
  result = sub_1B7A9ADB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1B7957D50(*(v9 + 56) + 32 * v23, v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1B79948D0(*(v9 + 56) + 32 * v23, v44);
      }

      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090]);
      result = sub_1B7A9A3E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1B7957D50(v44, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B799F88C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8);
  v33 = a2;
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B7A9AF80();
      sub_1B7A9A500();
      result = sub_1B7A9AFA0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B799FB44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560);
  result = sub_1B7A9ADB0();
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
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v32;
        v22 = *(&v32 + 1);
      }

      result = sub_1B7A9AF70();
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
      *(*(v7 + 56) + 16 * v15) = v32;
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

uint64_t sub_1B799FDC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568);
  v42 = a2;
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v42)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v45 = *(v24 + 32);
        v43 = v25;
        v44 = v26;
        v27 = (*(v5 + 56) + 24 * v23);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
      }

      else
      {
        sub_1B79913AC(v24, &v43);
        v31 = (*(v5 + 56) + 24 * v23);
        v28 = *v31;
        v29 = v31[1];
        v30 = v31[2];
      }

      result = sub_1B7A9ABF0();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v43;
      v18 = v44;
      *(v16 + 32) = v45;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 24 * v15);
      *v19 = v28;
      v19[1] = v29;
      v19[2] = v30;
      ++*(v7 + 16);
      v5 = v41;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B79A00B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7A9ABB0() + 1) & ~v5;
    do
    {
      sub_1B79913AC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1B7A9ABF0();
      result = sub_1B7991408(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B79A0254(int64_t a1, uint64_t a2)
{
  v39 = sub_1B7A991E0();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_1B7A9ABB0();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090]);
      v22 = sub_1B7A9A3E0();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

uint64_t sub_1B79A0574(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1B7994ACC(a1);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 >= result && (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v21 >= result && (a2 & 1) == 0)
  {
    result = sub_1B79A0E2C();
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 32 * v16);
      *v23 = a3;
      v23[1] = a4;
      v23[2] = a5;
      v23[3] = a6;
      return result;
    }

LABEL_11:
    result = sub_1B79913AC(a1, v32);
    v22[(v16 >> 6) + 8] |= 1 << v16;
    v25 = v22[6] + 40 * v16;
    v26 = v33;
    v27 = v32[1];
    *v25 = v32[0];
    *(v25 + 16) = v27;
    *(v25 + 32) = v26;
    v28 = (v22[7] + 32 * v16);
    *v28 = a3;
    v28[1] = a4;
    v28[2] = a5;
    v28[3] = a6;
    v29 = v22[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v22[2] = v31;
      return result;
    }

    goto LABEL_14;
  }

  sub_1B799F20C(result, a2 & 1);
  result = sub_1B7994ACC(a1);
  if ((v20 & 1) == (v24 & 1))
  {
    v16 = result;
    v22 = *v7;
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_15:
  result = sub_1B7A9AEC0();
  __break(1u);
  return result;
}

uint64_t sub_1B79A06EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B79948B8(a3, a4);
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
      sub_1B799F88C(v18, a5 & 1);
      v13 = sub_1B79948B8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1B7A9AEC0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1B79A124C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_1B79A0874(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B7994C28(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B799FB44(v16, a4 & 1);
      v11 = sub_1B7994C28(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1B7A9AEC0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B79A13CC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v24 = (v21[7] + 16 * v11);
    *v24 = a1;
    v24[1] = a2;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *(v22 + 8);
  v27 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

uint64_t sub_1B79A09EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_1B7994ACC(a4);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1B799FDC4(v17, a5 & 1);
      v23 = sub_1B7994ACC(a4);
      if ((v18 & 1) != (v24 & 1))
      {
LABEL_17:
        result = sub_1B7A9AEC0();
        __break(1u);
        return result;
      }

      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1B79A1548();
  }

  v20 = *v6;
  if ((v18 & 1) == 0)
  {
LABEL_13:
    result = sub_1B79913AC(a4, v32);
    v20[(v14 >> 6) + 8] |= 1 << v14;
    v25 = v20[6] + 40 * v14;
    v26 = v33;
    v27 = v32[1];
    *v25 = v32[0];
    *(v25 + 16) = v27;
    *(v25 + 32) = v26;
    v28 = (v20[7] + 24 * v14);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v29 = v20[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v20[2] = v31;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
}

void *sub_1B79A0BA4()
{
  v1 = v0;
  v29 = sub_1B7A991E0();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A68);
  v3 = *v0;
  v4 = sub_1B7A9ADA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1B7999E90(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1B795C1E4(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B79A0E2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        result = sub_1B79913AC(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

void *sub_1B79A0FC8()
{
  v1 = v0;
  v26 = sub_1B7A991E0();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8);
  v3 = *v0;
  v4 = sub_1B7A9ADA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1B79948D0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1B7957D50(v30, *(v23 + 56) + v18);
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B79A124C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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

id sub_1B79A13CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;
        v18 = v19;
        result = *(&v19 + 1);
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

void *sub_1B79A1548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        v18 = 40 * v17;
        sub_1B79913AC(*(v2 + 48) + 40 * v17, v28);
        v19 = 24 * v17;
        v20 = (*(v2 + 56) + 24 * v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = *(v4 + 48) + v18;
        v25 = v28[0];
        v26 = v28[1];
        *(v24 + 32) = v29;
        *v24 = v25;
        *(v24 + 16) = v26;
        v27 = (*(v4 + 56) + v19);
        *v27 = v21;
        v27[1] = v22;
        v27[2] = v23;
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

unint64_t sub_1B79A16FC()
{
  result = qword_1EBA46A60;
  if (!qword_1EBA46A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A60);
  }

  return result;
}

unint64_t sub_1B79A1768()
{
  result = qword_1EBA46A80;
  if (!qword_1EBA46A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA469A0);
    sub_1B79A181C(qword_1EBA46A88, type metadata accessor for PlayableStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A80);
  }

  return result;
}

uint64_t sub_1B79A181C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B79A1864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  View.prefetchMediaArtwork<A, B>(of:id:)(a1, KeyPath, a2, a3, a4);
}

uint64_t View.prefetchMediaArtwork<A, B>(of:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v22 = a5;
  v23 = a3;
  v7 = (*a2 + *MEMORY[0x1E69E77B0]);
  v8 = *v7;
  v9 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - v10;
  v13 = *(v12 + 8);
  v25 = v8;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v16 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v9 + 16))(v11, a1, v8, v18);
  sub_1B79A1B4C(v11, a2, v20);

  MEMORY[0x1B8CA96D0](v20, v23, v16, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1B79A1B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v6 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v7 = a3 + v6[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v6[15];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v6[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a3 + v6[17];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a3 + v6[18];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  result = (*(*(v13 - 8) + 32))(a3, a1);
  *(a3 + v6[13]) = a2;
  return result;
}

void sub_1B79A1CC8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B7A9AFB0();
    if (v1 <= 0x3F)
    {
      sub_1B79A232C(319, &qword_1EBA46B10);
      if (v2 <= 0x3F)
      {
        sub_1B79A22D4();
        if (v3 <= 0x3F)
        {
          sub_1B79A232C(319, &qword_1EBA46B20);
          if (v4 <= 0x3F)
          {
            sub_1B79A232C(319, &qword_1EBA46B28);
            if (v5 <= 0x3F)
            {
              sub_1B79A2378();
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

uint64_t sub_1B79A1E00(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1B7A97580() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v6 + 48);

    return v21(a1, v7, v5);
  }
}

void sub_1B79A2048(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1B7A97580() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFF)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      else
      {
        v21 = *(v24 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_1B79A22D4()
{
  if (!qword_1EBA46B18)
  {
    sub_1B7A97580();
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46B18);
    }
  }
}

void sub_1B79A232C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B7A970E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B79A2378()
{
  if (!qword_1EBA46B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B38);
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46B30);
    }
  }
}

uint64_t sub_1B79A2420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a3;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A9A7E0();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_1B7A97C30();
  v11 = *(a2[5] + 8);
  v34 = a2[5];
  v35 = v11;
  v38 = sub_1B7A97980();
  v12 = sub_1B7A97590();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = v36;
  swift_getAtKeyPath();
  sub_1B7A9A770();
  v19 = v37;
  (*(v4 + 16))(v37, v18, a2);
  v20 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *&v22 = a2[2];
  *(&v22 + 1) = v8;
  *&v23 = a2[4];
  *(&v23 + 1) = v34;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  (*(v4 + 32))(v21 + v20, v19, a2);
  WitnessTable = swift_getWitnessTable();
  v25 = v32;
  v26 = v33;
  sub_1B7A983C0();

  (*(v41 + 8))(v25, v42);
  (*(v40 + 8))(v26, v8);
  v27 = swift_getWitnessTable();
  v45 = WitnessTable;
  v46 = v27;
  v28 = swift_getWitnessTable();
  sub_1B7957EE0(v14, v12, v28);
  v29 = *(v39 + 8);
  v29(v14, v12);
  sub_1B7957EE0(v17, v12, v28);
  return (v29)(v17, v12);
}

uint64_t sub_1B79A288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = swift_task_alloc();
  v6 = sub_1B7A97880();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1B7A9A760();
  v5[17] = sub_1B7A9A750();
  v8 = sub_1B7A9A710();
  v5[18] = v8;
  v5[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B79A29B0, v8, v7);
}

uint64_t sub_1B79A29B0()
{
  v23 = v0;
  *(v0 + 16) = *(v0 + 64);
  v1 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 80);
  v2 = v1 + *(type metadata accessor for _PrefetchMediaArtworkViewModifier() + 68);
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
  }

  else
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79A5B8C(v3, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 48);
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  v22 = v3;
  v10 = (*(v8 + 8))(&v22, v9);
  *(v0 + 160) = v10;

  swift_getAtKeyPath();
  v11 = sub_1B7A9A4D0();
  v13 = v12;
  *(v0 + 168) = v12;
  if (*(v10 + 16))
  {
    v14 = v11;
    v15 = *(v0 + 56);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    *(v0 + 176) = sub_1B7A9A750();
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *(v16 + 16) = v21;
    *(v16 + 32) = v20;
    *(v16 + 48) = v10;
    *(v16 + 56) = v15;
    *(v16 + 64) = v14;
    *(v16 + 72) = v13;
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_1B79A2C84;

    return MEMORY[0x1EEE6DDE8]();
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B79A2C84()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1B79A2E24, v3, v2);
}

uint64_t sub_1B79A2E24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79A2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v18;
  v8[58] = v19;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a3;
  v8[52] = a4;
  v8[50] = a2;
  v8[27] = a7;
  v8[28] = a8;
  v8[29] = v18;
  v8[30] = v19;
  v9 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v8[59] = v9;
  v10 = *(v9 - 8);
  v8[60] = v10;
  v8[61] = *(v10 + 64);
  v8[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  sub_1B7A98CC0();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v11 = sub_1B7A9A7E0();
  v8[67] = v11;
  v8[68] = *(v11 - 8);
  v8[69] = swift_task_alloc();
  v8[70] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00);
  v8[71] = swift_task_alloc();
  v12 = sub_1B7A97580();
  v8[72] = v12;
  v8[73] = *(v12 - 8);
  v8[74] = swift_task_alloc();
  v13 = sub_1B7A97880();
  v8[75] = v13;
  v8[76] = *(v13 - 8);
  v8[77] = swift_task_alloc();
  v8[78] = *(type metadata accessor for MediaArtwork.Sized() - 8);
  v8[79] = swift_task_alloc();
  sub_1B7A9A760();
  v8[80] = sub_1B7A9A750();
  v15 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79A31E0, v15, v14);
}

uint64_t sub_1B79A31E0()
{
  v1 = *(v0 + 408);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 416) + v3[14];
    v5 = *(v0 + 624);
    v6 = *(v0 + 408) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v90 = (*(v0 + 608) + 8);
    v7 = *(v0 + 584);
    v69 = (v7 + 32);
    v8 = *(v0 + 544);
    v85 = (v8 + 8);
    v75 = (v7 + 8);
    v67 = (v8 + 56);
    v68 = *(v0 + 480);
    v66 = *(v0 + 488) + 7;
    v65 = (v8 + 48);
    v86 = *v4;
    v9 = *v4;
    v89 = *(v4 + 8);
    v87 = *(v5 + 72);
    v76 = v3;
    while (1)
    {
      sub_1B79A5E84(v6, *(v0 + 632));
      v91 = v2;
      if ((v89 & 1) == 0)
      {
        v10 = *(v0 + 616);
        v11 = *(v0 + 600);

        sub_1B7A9AA10();
        v12 = sub_1B7A97E70();
        sub_1B7A96D30();

        sub_1B7A97870();
        swift_getAtKeyPath();
        sub_1B795AE10(v86, 0);
        (*v90)(v10, v11);
      }

      _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();
      if (*(v0 + 80))
      {
        break;
      }

      sub_1B79A5EE8(*(v0 + 632));
      sub_1B7957888(v0 + 56, &qword_1EBA46B48);
LABEL_4:
      v6 += v87;
      if (!--v2)
      {
        goto LABEL_36;
      }
    }

    v13 = *(v0 + 416);
    sub_1B795C1E4((v0 + 56), v0 + 16);
    v14 = v13 + v3[16];
    v15 = *v14;
    v88 = v6;
    if (*(v14 + 8) == 1)
    {
    }

    else
    {
      v16 = *(v0 + 616);
      v17 = *(v0 + 600);

      sub_1B7A9AA10();
      v18 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v15, 0);
      (*v90)(v16, v17);
      v15 = *(v0 + 376);
    }

    v19 = *(v0 + 416) + v3[17];
    v20 = *v19;
    if (*(v19 + 8) == 1)
    {
    }

    else
    {
      v21 = *(v0 + 616);
      v22 = *(v0 + 600);

      sub_1B7A9AA10();
      v23 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v20, 0);
      (*v90)(v21, v22);
      v20 = *(v0 + 384);
    }

    sub_1B7999E90(v0 + 16, v0 + 96);
    v24 = *&v9;
    if ((v89 & 1) == 0)
    {
      v25 = *(v0 + 616);
      v82 = *(v0 + 600);

      sub_1B7A9AA10();
      v26 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v86, 0);
      (*v90)(v25, v82);
      v24 = *(v0 + 392);
    }

    sub_1B7957820(*(v0 + 416) + v3[15], *(v0 + 568), &qword_1EBA45E00);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v69)(*(v0 + 592), *(v0 + 568), *(v0 + 576));
    }

    else
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 600);
      sub_1B7A9AA10();
      v29 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();

      (*v90)(v27, v28);
    }

    sub_1B7A9A770();
    sub_1B7957820(v0 + 96, v0 + 176, &qword_1EBA46B48);
    v30 = *(v0 + 592);
    v31 = *(v0 + 576);
    v32 = *(v0 + 552);
    v33 = *(v0 + 536);
    if (*(v0 + 200))
    {
      sub_1B795C1E4((v0 + 176), v0 + 136);
      v34 = *(v0 + 160);
      v35 = *(v0 + 168);
      v36 = __swift_project_boxed_opaque_existential_1((v0 + 136), v34);
      v37 = sub_1B7A8CCE0(v36, v15, v20, 0, v30, v32, v34, v35, v24);
      v39 = v38;

      v40 = *v85;
      (*v85)(v32, v33);
      (*v75)(v30, v31);
      sub_1B7957888(v0 + 96, &qword_1EBA46B48);
      __swift_destroy_boxed_opaque_existential_1(v0 + 136);
      if (v37)
      {
        v70 = v40;
        v79 = *(v0 + 536);
        v73 = *(v0 + 512);
        v80 = *(v0 + 504);
        v83 = v39;
        v41 = *(v0 + 496);
        v42 = *(v0 + 472);
        v77 = *(v0 + 432);
        v74 = *(v0 + 424);
        v43 = *(v0 + 416);
        v71 = *(v0 + 456);
        v72 = *(v0 + 440);
        (*v67)();
        (*(v68 + 16))(v41, v43, v42);
        v44 = (*(v68 + 80) + 64) & ~*(v68 + 80);
        v45 = (v66 + v44) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        *(v46 + 32) = v72;
        *(v46 + 48) = v71;
        (*(v68 + 32))(v46 + v44, v41, v42);
        v47 = (v46 + v45);
        *v47 = v37;
        v47[1] = v83;
        v48 = (v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v48 = v74;
        v48[1] = v77;
        sub_1B7957820(v73, v80, &qword_1EBA46B40);
        v49 = (*v65)(v80, 1, v79);
        sub_1B7974B84(v37);

        if (v49 == 1)
        {
          sub_1B7957888(*(v0 + 504), &qword_1EBA46B40);
        }

        else
        {
          v53 = *(v0 + 536);
          v54 = *(v0 + 504);
          sub_1B7A9A7D0();
          v70(v54, v53);
        }

        v3 = v76;
        if (*(v46 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v55 = sub_1B7A9A710();
          v57 = v56;
          swift_unknownObjectRelease();
        }

        else
        {
          v55 = 0;
          v57 = 0;
        }

        v58 = **(v0 + 400);
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_1B7A9DDA0;
        *(v59 + 24) = v46;

        if (v57 | v55)
        {
          v60 = v0 + 312;
          *(v0 + 312) = 0;
          *(v0 + 320) = 0;
          *(v0 + 328) = v55;
          *(v0 + 336) = v57;
        }

        else
        {
          v60 = 0;
        }

        v61 = *(v0 + 632);
        v62 = *(v0 + 512);
        *(v0 + 344) = 1;
        *(v0 + 352) = v60;
        *(v0 + 360) = v58;
        swift_task_create();

        sub_1B7974C44(v37);
        sub_1B7957888(v62, &qword_1EBA46B40);
        sub_1B79A5EE8(v61);
        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
        v2 = v91;
LABEL_35:
        v6 = v88;
        goto LABEL_4;
      }
    }

    else
    {

      (*v85)(v32, v33);
      (*v75)(v30, v31);
      sub_1B7957888(v0 + 96, &qword_1EBA46B48);
      sub_1B7957888(v0 + 176, &qword_1EBA46B48);
    }

    if (qword_1EBA45B78 != -1)
    {
      swift_once();
    }

    v84 = *(v0 + 632);
    v78 = *(v0 + 448);
    v81 = sub_1B7A9A280();
    __swift_project_value_buffer(v81, qword_1EBA507A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v50 = *(v0 + 40);
    v51 = __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
    *(v0 + 272) = v50;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 248));
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_1Tm, v51, v50);
    sub_1B7A98C60();
    sub_1B7957888(v0 + 248, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v3 = v76;
    *(v0 + 304) = v78;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 280));
    swift_getAtKeyPath();
    sub_1B7A98C60();
    sub_1B7957888(v0 + 280, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E40();

    sub_1B79A5EE8(v84);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_35;
  }

LABEL_36:

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1B79A3ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v20;
  *(v8 + 240) = v19;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  v9 = sub_1B7A9A720();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  sub_1B7A98CC0();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v10 = sub_1B7A99CC0();
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 - 8);
  *(v8 + 320) = swift_task_alloc();
  v11 = sub_1B7A96DB0();
  *(v8 + 328) = v11;
  *(v8 + 336) = *(v11 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0);
  *(v8 + 368) = v12;
  *(v8 + 376) = *(v12 - 8);
  *(v8 + 384) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B58);
  *(v8 + 392) = v13;
  *(v8 + 400) = *(v13 - 8);
  *(v8 + 408) = swift_task_alloc();
  v14 = sub_1B7A99CD0();
  *(v8 + 416) = v14;
  *(v8 + 424) = *(v14 - 8);
  *(v8 + 432) = swift_task_alloc();
  v15 = sub_1B7A97880();
  *(v8 + 440) = v15;
  *(v8 + 448) = *(v15 - 8);
  *(v8 + 456) = swift_task_alloc();
  v16 = sub_1B7A96D70();
  *(v8 + 464) = v16;
  *(v8 + 472) = *(v16 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B79A42D0, 0, 0);
}

uint64_t sub_1B79A42D0()
{
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v1 = sub_1B7A96DA0();
  v0[65] = __swift_project_value_buffer(v1, qword_1EBA507B8);
  sub_1B7A96D90();
  sub_1B7A96D40();
  v2 = sub_1B7A96D90();
  v3 = sub_1B7A9AA90();
  if (sub_1B7A9AB50())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v2, v3, v5, "Image.Prefetch", "", v4, 2u);
    MEMORY[0x1B8CACB70](v4, -1, -1);
  }

  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[58];
  v9 = v0[59];

  (*(v9 + 16))(v7, v6, v8);
  sub_1B7A96DE0();
  swift_allocObject();
  v0[66] = sub_1B7A96DD0();
  v0[67] = sub_1B7A9A760();
  v0[68] = sub_1B7A9A750();
  v11 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79A449C, v11, v10);
}

uint64_t sub_1B79A449C()
{
  v1 = *(v0 + 192);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);

  *(v0 + 16) = v11;
  *(v0 + 32) = v10;
  v2 = (v1 + *(type metadata accessor for _PrefetchMediaArtworkViewModifier() + 72));
  v3 = *v2;
  *(v0 + 552) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 656) = v4;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 448);
    v5 = *(v0 + 456);
    v7 = *(v0 + 440);
    sub_1B7A9AA10();
    v8 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 136);
  }

  *(v0 + 560) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B79A45F4, 0, 0);
}

uint64_t sub_1B79A45F4()
{
  if (*(v0 + 560))
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    v3 = *(v0 + 416);
    *v1 = 0;
    (*(v2 + 104))(v1, *MEMORY[0x1E69AB448], v3);
    sub_1B7A99D30();

    (*(v2 + 8))(v1, v3);
  }

  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  (*(v0 + 200))();
  sub_1B7A98B90();
  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  *(v0 + 568) = v7;
  *v7 = v0;
  v7[1] = sub_1B79A4754;
  v8 = *(v0 + 392);

  return MEMORY[0x1EEE15E88](v0 + 144, 0, 0, v8);
}

uint64_t sub_1B79A4754()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1B79A5474;
  }

  else
  {
    v2 = sub_1B79A4868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B79A4868()
{
  if (v0[18])
  {

    v1 = swift_task_alloc();
    v0[71] = v1;
    *v1 = v0;
    v1[1] = sub_1B79A4754;
    v2 = v0[49];

    return MEMORY[0x1EEE15E88](v0 + 18, 0, 0, v2);
  }

  else
  {
    (*(v0[50] + 8))(v0[51], v0[49]);
    v3 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v4 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {
      v5 = v0[45];
      v6 = v0[41];
      v7 = v0[42];

      sub_1B7A96DF0();

      if ((*(v7 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[45], v0[41]);
        v8 = "finished";
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v3, v4, v10, "Image.Prefetch", v8, v9, 2u);
      MEMORY[0x1B8CACB70](v9, -1, -1);
    }

    v11 = v0[62];
    v12 = v0[58];
    v13 = v0[59];

    v14 = *(v13 + 8);
    v0[73] = v14;
    v14(v11, v12);
    v0[74] = sub_1B7A9A750();
    v16 = sub_1B7A9A710();

    return MEMORY[0x1EEE6DFA0](sub_1B79A4AE4, v16, v15);
  }
}

uint64_t sub_1B79A4AE4()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 184);
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v5 = *(v0 + 440);
    sub_1B7A9AA10();
    v6 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 600) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A4C14, 0, 0);
}

uint64_t sub_1B79A4C14()
{
  v1 = v0[73];
  v2 = v0[64];
  v3 = v0[58];
  if (v0[75])
  {
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[38];
    *v4 = 0;
    (*(v5 + 104))(v4, *MEMORY[0x1E69AB438], v6);
    sub_1B7A99D10();

    (*(v5 + 8))(v4, v6);
    v1(v2, v3);
  }

  else
  {
    v1(v0[64], v0[58]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79A4DFC()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 176);
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v5 = *(v0 + 440);
    sub_1B7A9AA10();
    v6 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 624) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A4F2C, 0, 0);
}

uint64_t sub_1B79A4F2C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);
  if (*(v0 + 624))
  {
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 304);
    *v4 = 0;
    (*(v5 + 104))(v4, *MEMORY[0x1E69AB438], v6);
    sub_1B7A99D10();

    (*(v5 + 8))(v4, v6);
    v1(v2, v3);
  }

  else
  {
    v1(*(v0 + 512), *(v0 + 464));
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B79A5134()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 168);
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v5 = *(v0 + 440);
    sub_1B7A9AA10();
    v6 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 648) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A5264, 0, 0);
}

uint64_t sub_1B79A5264()
{
  v1 = v0[79];
  v2 = v0[72];
  v3 = v0[64];
  v4 = v0[58];
  if (v0[81])
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];
    *v5 = v2;
    *(v5 + 8) = 0;
    v11 = v1;
    (*(v6 + 104))(v5, *MEMORY[0x1E69AB428], v7);
    v8 = v2;
    sub_1B7A99D10();

    (*(v6 + 8))(v5, v7);
    v11(v3, v4);
  }

  else
  {
    v1(v0[64], v0[58]);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B79A5474()
{
  v55 = v0;
  v1 = *(v0 + 576);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  if (swift_dynamicCast())
  {

    v3 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v4 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {
      v5 = *(v0 + 352);
      v6 = *(v0 + 328);
      v7 = *(v0 + 336);

      sub_1B7A96DF0();

      if ((*(v7 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 336) + 8))(*(v0 + 352), *(v0 + 328));
        v8 = "cancelled";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v3, v4, v26, "Image.Prefetch", v8, v25, 2u);
      MEMORY[0x1B8CACB70](v25, -1, -1);
    }

    v27 = *(v0 + 488);
    v28 = *(v0 + 464);
    v29 = *(v0 + 472);

    v30 = *(v29 + 8);
    *(v0 + 608) = v30;
    v30(v27, v28);
    *(v0 + 616) = sub_1B7A9A750();
    v31 = sub_1B7A9A710();
    v33 = v32;
    v34 = sub_1B79A4DFC;
  }

  else
  {
    v51 = (v0 + 80);

    if (qword_1EBA45B78 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 576);
    v9 = *(v0 + 224);
    v48 = *(v0 + 216);
    v50 = sub_1B7A9A280();
    __swift_project_value_buffer(v50, qword_1EBA507A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    *(v0 + 72) = MEMORY[0x1E69E6158];
    *(v0 + 48) = v48;
    *(v0 + 56) = v9;

    sub_1B7A98C60();
    sub_1B7957888(v0 + 48, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    swift_getErrorValue();
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    *(v0 + 104) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_1B7A98C70();
    sub_1B7957888(v51, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    v13 = v49;
    v14 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v15 = sub_1B7A9AA80();

    if (sub_1B7A9AB50())
    {
      v17 = *(v0 + 336);
      v16 = *(v0 + 344);
      v18 = *(v0 + 328);

      sub_1B7A96DF0();

      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69E93E8])
      {
        v19 = 0;
        v20 = 0;
        format = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        format = "error=%{public}s";
        v20 = 2;
        v19 = 1;
      }

      v36 = *(v0 + 472);
      v35 = *(v0 + 480);
      v53 = *(v0 + 464);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = v20;
      *(v37 + 1) = v19;
      *(v37 + 2) = 2082;
      v39 = sub_1B7A96B00();
      v40 = AMSLogableError();

      v41 = sub_1B7A9A4B0();
      v43 = v42;

      v44 = sub_1B79A6340(v41, v43, &v54);

      *(v37 + 4) = v44;
      v45 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v14, v15, v45, "Image.Prefetch", format, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B8CACB70](v38, -1, -1);
      MEMORY[0x1B8CACB70](v37, -1, -1);

      v24 = *(v36 + 8);
      v24(v35, v53);
    }

    else
    {
      v22 = *(v0 + 472);
      v21 = *(v0 + 480);
      v23 = *(v0 + 464);

      v24 = *(v22 + 8);
      v24(v21, v23);
    }

    *(v0 + 632) = v24;
    *(v0 + 640) = sub_1B7A9A750();
    v31 = sub_1B7A9A710();
    v33 = v46;
    v34 = sub_1B79A5134;
  }

  return MEMORY[0x1EEE6DFA0](v34, v31, v33);
}

uint64_t sub_1B79A5B8C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B79A5B98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for _PrefetchMediaArtworkViewModifier() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_1B79A5C9C;

  return sub_1B79A288C(v0 + v7, v2, v3, v4, v5);
}

uint64_t sub_1B79A5C9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B79A5D90(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v13 = v2[2];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B798D338;

  return sub_1B79A2E98(a1, a2, v7, v8, v10, v9, v13, v6);
}

uint64_t sub_1B79A5E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.Sized();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79A5EE8(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.Sized();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79A5F44()
{
  v2 = v0[5];
  v19 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v1[2] = v19;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *(type metadata accessor for _PrefetchMediaArtworkViewModifier() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = v0[3];
  v17 = v0[2];
  v9 = (v0 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v8);
  v13 = *(v0 + v8 + 8);
  v14 = swift_task_alloc();
  v1[6] = v14;
  *v14 = v1;
  v14[1] = sub_1B79A68E8;

  return sub_1B79A3ED8(v17, v16, v0 + v6, v10, v11, v12, v13, v19);
}

uint64_t sub_1B79A60B4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B79A619C;

  return v4();
}

uint64_t sub_1B79A619C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B79A6294()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D338;

  return sub_1B79A60B4(v2);
}

unint64_t sub_1B79A6340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B79A640C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B79948D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B79A640C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B79A6518(a5, a6);
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
    result = sub_1B7A9ACC0();
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

uint64_t sub_1B79A6518(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B79A6564(a1, a2);
  sub_1B79A6694(&unk_1F2F94F50);
  return v3;
}

uint64_t sub_1B79A6564(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B79A6780(v5, 0);
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

  result = sub_1B7A9ACC0();
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
        v10 = sub_1B7A9A520();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B79A6780(v10, 0);
        result = sub_1B7A9AC30();
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

uint64_t sub_1B79A6694(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B79A67F4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B79A6780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B79A67F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *Jet.init(startUpProcedure:transaction:makeObjects:working:failed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a1;
  *(a9 + 72) = swift_getKeyPath();
  *(a9 + 80) = 0;
  result = swift_allocObject();
  result[2] = v18;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  *a9 = sub_1B79A6F40;
  *(a9 + 8) = result;
  *(a9 + 16) = 0;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

void *sub_1B79A69B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _JetTakeOff();
  v8 = swift_allocObject();
  v8[6] = 0;
  sub_1B79ADE14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8);
  sub_1B7A96EE0();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = 0;

  return v8;
}

uint64_t _JetViewDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Jet.init(startUpWith:working:failed:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *(a7 + 72) = swift_getKeyPath();
  *(a7 + 80) = 0;
  type metadata accessor for _JetTakeOff();
  sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff);
  result = sub_1B7A97490();
  *a7 = result;
  *(a7 + 8) = v15;
  *(a7 + 16) = 0x80;
  *(a7 + 24) = a1;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t sub_1B79A6B58()
{
  if (*(v0 + 16) < 0)
  {
  }

  else
  {
    type metadata accessor for _JetTakeOff();
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff);

    return sub_1B7A97120();
  }
}

uint64_t sub_1B79A6C14()
{
  if (*(v0 + 16) < 0)
  {
    type metadata accessor for _JetTakeOff();
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff);

    return sub_1B7A974A0();
  }

  else
  {
    type metadata accessor for _JetTakeOff();
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff);

    return sub_1B7A97130();
  }
}

uint64_t sub_1B79A6D18@<X0>(void *a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80) == 1)
  {
    *a1 = *(v1 + 72);
  }

  else
  {

    sub_1B7A9AA10();
    v8 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1B79A6E90@<X0>(void *a1@<X8>)
{
  sub_1B79AF264();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79A6EE0()
{
  sub_1B79AF264();

  return sub_1B7A978A0();
}

uint64_t type metadata accessor for _JetTakeOff()
{
  result = qword_1EDC0FC40;
  if (!qword_1EDC0FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Jet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = sub_1B7A9A7E0();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v84 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v90 = sub_1B7A99300();
  v76 = a1;
  v89 = *(a1 + 16);
  v91 = *(a1 + 40);
  *&v134 = v89;
  *(&v134 + 1) = MEMORY[0x1E69E5FE0];
  v135.i64[0] = v91;
  v135.i64[1] = MEMORY[0x1E69E5FE8];
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98);
  sub_1B7A97590();
  type metadata accessor for AppMetricsViewModifier();
  sub_1B7A97590();
  *&v88 = sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78);
  v132 = WitnessTable;
  v133 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80);
  v130 = v8;
  v131 = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88);
  v128 = v10;
  v129 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90);
  v126 = v12;
  v127 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98);
  v124 = v14;
  v125 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  v122 = v16;
  v123 = v17;
  v120 = swift_getWitnessTable();
  v121 = v16;
  v18 = v88;
  v19 = swift_getWitnessTable();
  v20 = v76;
  v21 = *(v76 + 48);
  v22 = *(v76 + 56);
  v23 = v89;
  *&v134 = v90;
  *(&v134 + 1) = v18;
  *&v136 = v19;
  *(&v136 + 1) = v21;
  v24 = v21;
  *&v137 = v22;
  v25.i64[0] = v89;
  v75 = v25;
  v94 = *(v76 + 24);
  v135 = v94;
  v26 = type metadata accessor for _ResultView();
  v77 = v26;
  v93 = swift_getWitnessTable();
  *&v134 = v26;
  *(&v134 + 1) = v93;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v92 = v72 - v28;
  v81 = v29;
  v30 = sub_1B7A97590();
  v82 = *(v30 - 8);
  v83 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v78 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v79 = v72 - v33;
  v34 = v2[3];
  v35 = v2[1];
  v136 = v2[2];
  v137 = v34;
  v36 = v2[3];
  v138 = v2[4];
  v37 = v2[1];
  v134 = *v2;
  v135 = v37;
  v109 = v136;
  v110 = v36;
  v111 = v2[4];
  v139 = *(v2 + 80);
  v112 = *(v2 + 80);
  v107 = v134;
  v108 = v35;
  sub_1B79A6C14();
  swift_getKeyPath();
  v72[1] = sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff);
  sub_1B7A974B0();

  v104 = v97;
  v105 = v98;
  v106 = v99;
  v38 = swift_allocObject();
  *&v39 = vdupq_laneq_s64(v94, 1).u64[0];
  v40 = v91;
  *(&v39 + 1) = v91;
  *(v38 + 16) = vzip1q_s64(v75, v94);
  *(v38 + 32) = v39;
  *(v38 + 48) = v24;
  *(v38 + 56) = v22;
  v41 = v137;
  *(v38 + 96) = v136;
  *(v38 + 112) = v41;
  *(v38 + 128) = v138;
  *(v38 + 144) = v139;
  v42 = v135;
  *(v38 + 64) = v134;
  *(v38 + 80) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v23;
  *(v43 + 24) = v94;
  *(v43 + 40) = v40;
  *(v43 + 48) = v24;
  *(v43 + 56) = v22;
  v44 = v137;
  *(v43 + 96) = v136;
  *(v43 + 112) = v44;
  *(v43 + 128) = v138;
  *(v43 + 144) = v139;
  v45 = v135;
  *(v43 + 64) = v134;
  *(v43 + 80) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v23;
  *(v46 + 24) = v94;
  *(v46 + 40) = v40;
  *(v46 + 48) = v24;
  v74 = v24;
  *(v46 + 56) = v22;
  v47 = v137;
  *(v46 + 96) = v136;
  *(v46 + 112) = v47;
  *(v46 + 128) = v138;
  *(v46 + 144) = v139;
  v48 = v135;
  *(v46 + 64) = v134;
  *(v46 + 80) = v48;
  swift_checkMetadataState();
  sub_1B7A55184(&v104, sub_1B79A7E24, v38, sub_1B79A804C, v43, sub_1B79AA790, v46, &v113);
  v75.i64[0] = v114;
  *v100 = *v116;
  *&v100[7] = *&v116[7];
  LOBYTE(v40) = v115;
  v97 = v113;
  v98 = v114;
  v99 = v115;
  v90 = v117;
  v101 = v117;
  v88 = v118;
  v102 = v118;
  v73 = "[Error] Interval already ended";
  v103 = v119;
  sub_1B7A9A760();
  v49 = *(*(v20 - 8) + 16);
  v49(&v107, &v134, v20);
  v49(&v107, &v134, v20);
  v49(&v107, &v134, v20);
  v49(&v107, &v134, v20);
  v50 = sub_1B7A9A750();
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E85E0];
  *(v51 + 16) = v50;
  *(v51 + 24) = v52;
  *(v51 + 32) = v89;
  *(v51 + 40) = v94;
  v53 = v74;
  *(v51 + 56) = v91;
  *(v51 + 64) = v53;
  *(v51 + 72) = v22;
  v54 = v137;
  *(v51 + 112) = v136;
  *(v51 + 128) = v54;
  *(v51 + 144) = v138;
  *(v51 + 160) = v139;
  v55 = v135;
  *(v51 + 80) = v134;
  *(v51 + 96) = v55;
  v56 = swift_checkMetadataState();
  v57 = v84;
  v58 = v93;
  sub_1B7974C6C();
  sub_1B7974CBC(0, v57, 0xD000000000000020, v73 | 0x8000000000000000, 349, &unk_1B7A9DF80, v51, v92, v56, v58);
  (*(v85 + 8))(v57, v86);

  sub_1B79AAC54(v75.i64[0], v40);

  v109 = v136;
  v110 = v137;
  v111 = v138;
  v112 = v139;
  v107 = v134;
  v108 = v135;
  sub_1B79A6D18(&v113);
  if (!v113)
  {
    if (v135.i8[0] < 0)
    {
      goto LABEL_3;
    }

    type metadata accessor for _JetTakeOff();
    v71 = *(sub_1B7A97120() + 48);

    if (!v71)
    {
      v59 = 1;
      goto LABEL_4;
    }
  }

LABEL_3:
  v59 = 0;
LABEL_4:
  *&v107 = v56;
  *(&v107 + 1) = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v78;
  v62 = v59;
  v63 = v81;
  v64 = v92;
  sub_1B79EB8EC(v62, v81, OpaqueTypeConformance2);
  (*(v80 + 8))(v64, v63);
  v65 = sub_1B79AAC78();
  v95 = OpaqueTypeConformance2;
  v96 = v65;
  v66 = v83;
  v67 = swift_getWitnessTable();
  v68 = v79;
  sub_1B7957EE0(v61, v66, v67);
  v69 = *(v82 + 8);
  v69(v61, v66);
  sub_1B7957EE0(v68, v66, v67);
  return (v69)(v68, v66);
}

uint64_t sub_1B79A7B4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B79A7BC4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B79A7C4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B79AF24C(v1, v2);
  return sub_1B7A96F30();
}

uint64_t sub_1B79A7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  (*(v12 + 24))();
  sub_1B7957EE0(v11, a3, a6);
  v15 = *(v8 + 8);
  v15(v11, a3);
  sub_1B7957EE0(v14, a3, a6);
  return (v15)(v14, a3);
}

uint64_t sub_1B79A7E10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_1B79599CC();
  }
}

uint64_t sub_1B79A7E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30[0] = a7;
  v32 = a1;
  v33 = a9;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  v22 = *(v21 + 40);
  v30[1] = *(v21 + 48);
  v31 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  v24 = v30[0];
  *(v23 + 48) = v30[0];
  *(v23 + 56) = a8;
  v25 = *(a2 + 48);
  *(v23 + 96) = *(a2 + 32);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(a2 + 64);
  *(v23 + 144) = *(a2 + 80);
  v26 = *(a2 + 16);
  *(v23 + 64) = *a2;
  *(v23 + 80) = v26;
  v34[0] = a3;
  v34[1] = a4;
  v34[2] = a5;
  v34[3] = a6;
  v34[4] = v24;
  v34[5] = a8;
  v27 = type metadata accessor for Jet();
  (*(*(v27 - 8) + 16))(v34, a2, v27);
  v31(v32, sub_1B79AF0E0, v23);

  sub_1B7957EE0(v17, a5, a8);
  v28 = *(v15 + 8);
  v28(v17, a5);
  sub_1B7957EE0(v20, a5, a8);
  return (v28)(v20, a5);
}

uint64_t sub_1B79A8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26[-1] - v15;
  v17 = sub_1B7A9A7E0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B7A9A760();
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v18 = type metadata accessor for Jet();
  (*(*(v18 - 8) + 16))(v26, a1, v18);
  v19 = sub_1B7A9A750();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  *(v20 + 64) = a6;
  *(v20 + 72) = a7;
  v22 = *(a1 + 48);
  *(v20 + 112) = *(a1 + 32);
  *(v20 + 128) = v22;
  *(v20 + 144) = *(a1 + 64);
  *(v20 + 160) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v20 + 80) = *a1;
  *(v20 + 96) = v23;
  sub_1B79A9B34(0, 0, v16, &unk_1B7A9E8C8, v20);
}

uint64_t sub_1B79A8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v13;
  v8[25] = v14;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B79A82D0, v10, v9);
}

uint64_t sub_1B79A82D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = v4;
  type metadata accessor for Jet();
  *(v0 + 232) = sub_1B79A6B58();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_1B79A83B4;

  return sub_1B79A8558(0);
}

uint64_t sub_1B79A83B4()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79A84F8, v3, v2);
}

uint64_t sub_1B79A84F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79A8558(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 25) = a1;
  *(v2 + 64) = sub_1B7A9A760();
  *(v2 + 72) = sub_1B7A9A750();
  v4 = sub_1B7A9A710();
  *(v2 + 80) = v4;
  *(v2 + 88) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B79A85F8, v4, v3);
}

uint64_t sub_1B79A85F8()
{
  if (*(v0 + 25) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1B7A96F20(), , , v1 = *(v0 + 40), v1 == 255) || (sub_1B79AAC54(*(v0 + 32), *(v0 + 40)), (v1 & 1) != 0))
  {
    *(v0 + 96) = *(*(v0 + 56) + 48);

    *(v0 + 104) = sub_1B7A9A750();
    v3 = sub_1B7A9A710();
    *(v0 + 112) = v3;
    *(v0 + 120) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B79A8744, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B79A8744()
{
  if (*(v0 + 96))
  {

    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_1B79A884C;
    v2 = *(v0 + 25);

    return sub_1B79A8558(v2);
  }

  else
  {

    sub_1B7A99300();
    *(v0 + 144) = sub_1B7A992B0();
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1B79A8E84, v4, v5);
  }
}

uint64_t sub_1B79A884C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B79A896C, v3, v2);
}

uint64_t sub_1B79A896C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *(v0 + 136) = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 26) = v1;
  if (v1 == 255)
  {
    sub_1B7A99720();
    sub_1B7A99300();
    *(v0 + 152) = sub_1B7A992B0();

    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = sub_1B79A91D0;
  }

  else
  {

    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = sub_1B79A8AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1B79A8AB8()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 56);

    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_1B79AF040(v2, 1);
    sub_1B7A97600();
    sub_1B79AAC54(v2, v1);
    sub_1B79AAC54(v2, v1);
LABEL_6:

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 160) = v2;
  *(v0 + 168) = v2;
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (v6)
  {
    if (v6 == 1)
    {

      (*(v5 + 32))(v7);
      v8 = sub_1B7A992D0();

      v9 = swift_task_alloc();
      *(v9 + 16) = v5;
      *(v9 + 24) = v8;
      sub_1B7A97600();

      sub_1B79AAC6C(v2, 0);

      goto LABEL_6;
    }

    *(v0 + 176) = *(v5 + 24);

    v14 = sub_1B7A97600();
    (*(v5 + 32))(v14);
    *(v0 + 184) = sub_1B7A992D0();

    *(v0 + 48) = v6;
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08);
    v17 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08);
    *v15 = v0;
    v15[1] = sub_1B79A951C;

    return MEMORY[0x1EEE16720](v0 + 48, v16, v17);
  }

  else
  {
    *(v0 + 208) = *(v5 + 24);

    v12 = sub_1B7A97600();
    (*(v5 + 32))(v12);
    *(v0 + 216) = sub_1B7A992D0();

    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A8E84()
{
  v1 = v0[18];
  v0[20] = v1;
  v0[21] = v1;
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {

      (*(v2 + 32))(v4);
      v5 = sub_1B7A992D0();

      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      sub_1B7A97600();

      sub_1B79AAC6C(v1, 0);

      v7 = v0[1];

      return v7();
    }

    else
    {
      v0[22] = *(v2 + 24);

      v11 = sub_1B7A97600();
      (*(v2 + 32))(v11);
      v0[23] = sub_1B7A992D0();

      v0[6] = v3;
      v12 = swift_task_alloc();
      v0[24] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08);
      v14 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08);
      *v12 = v0;
      v12[1] = sub_1B79A951C;

      return MEMORY[0x1EEE16720](v0 + 6, v13, v14);
    }
  }

  else
  {
    v0[26] = *(v2 + 24);

    v9 = sub_1B7A97600();
    (*(v2 + 32))(v9);
    v0[27] = sub_1B7A992D0();

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A91D0()
{
  v1 = v0[19];
  v0[20] = v1;
  v0[21] = v1;
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {

      (*(v2 + 32))(v4);
      v5 = sub_1B7A992D0();

      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      sub_1B7A97600();

      sub_1B79AAC6C(v1, 0);

      v7 = v0[1];

      return v7();
    }

    else
    {
      v0[22] = *(v2 + 24);

      v11 = sub_1B7A97600();
      (*(v2 + 32))(v11);
      v0[23] = sub_1B7A992D0();

      v0[6] = v3;
      v12 = swift_task_alloc();
      v0[24] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08);
      v14 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08);
      *v12 = v0;
      v12[1] = sub_1B79A951C;

      return MEMORY[0x1EEE16720](v0 + 6, v13, v14);
    }
  }

  else
  {
    v0[26] = *(v2 + 24);

    v9 = sub_1B7A97600();
    (*(v2 + 32))(v9);
    v0[27] = sub_1B7A992D0();

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A951C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9A48;
  }

  else
  {
    v4[31] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9868;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1B79A9650(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9954;
  }

  else
  {

    v4[30] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9780;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1B79A9780()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9868()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9954()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9A48()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7957820(a3, v25 - v10, &qword_1EBA46B40);
  v12 = sub_1B7A9A7E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7957888(v11, &qword_1EBA46B40);
  }

  else
  {
    sub_1B7A9A7D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7A9A710();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7A9A4F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B7957888(a3, &qword_1EBA46B40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7957888(a3, &qword_1EBA46B40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B79A9E34@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a2;
  v70 = a8;
  v67 = a4;
  v92 = a9;
  v73 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v122 = v17;
  *(&v122 + 1) = MEMORY[0x1E69E5FE0];
  *&v123 = v18;
  *(&v123 + 1) = MEMORY[0x1E69E5FE8];
  v72 = sub_1B7A987A0();
  v82 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v93 = &v66 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78);
  v77 = sub_1B7A97590();
  v84 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v66 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80);
  v79 = sub_1B7A97590();
  v86 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v66 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  v80 = sub_1B7A97590();
  v87 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v66 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90);
  v83 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98);
  v81 = sub_1B7A97590();
  v89 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v66 - v23;
  type metadata accessor for AppMetricsViewModifier();
  v90 = sub_1B7A97590();
  v85 = sub_1B7A97B40();
  v91 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v78 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v66 - v26;
  v68 = *a1;
  v27 = v68;
  v28 = a3;
  v94 = a3;
  v95 = a4;
  v29 = a5;
  v96 = a5;
  v97 = a6;
  v30 = a6;
  v31 = v69;
  v32 = v70;
  v98 = a7;
  v99 = v70;
  v100 = v69;
  v101 = v68;
  v33 = v28;
  sub_1B7A99260();
  *&v122 = v27;
  sub_1B7A98390();
  (*(v73 + 8))(v16, v33);
  swift_getKeyPath();
  v34 = v31[3];
  v124 = v31[2];
  v125 = v34;
  v126 = v31[4];
  v127 = *(v31 + 80);
  v35 = v31[1];
  v122 = *v31;
  v123 = v35;
  v116 = v33;
  v117 = v67;
  v118 = v29;
  v119 = v30;
  v120 = a7;
  v121 = v32;
  type metadata accessor for Jet();
  *&v122 = sub_1B79A6B58();
  v36 = v72;
  WitnessTable = swift_getWitnessTable();
  v38 = v71;
  v39 = v93;
  sub_1B7A98150();

  (*(v82 + 8))(v39, v36);
  v40 = sub_1B7A99300();
  v41 = sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78);
  v114 = WitnessTable;
  v115 = v41;
  v42 = v77;
  v43 = swift_getWitnessTable();
  v44 = v75;
  v45 = v68;
  sub_1B7A55AFC(v68, v42, v40, v43, v75);
  (*(v84 + 8))(v38, v42);
  v46 = sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80);
  v112 = v43;
  v113 = v46;
  v47 = v79;
  v48 = swift_getWitnessTable();
  v49 = v76;
  sub_1B7A64E28();
  (*(v86 + 8))(v44, v47);
  v50 = sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88);
  v110 = v48;
  v111 = v50;
  v51 = v80;
  v52 = swift_getWitnessTable();
  v53 = v74;
  sub_1B79F2B78(v45, v51, v52);
  (*(v87 + 8))(v49, v51);
  v54 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90);
  v108 = v52;
  v109 = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98);
  v106 = v55;
  v107 = v56;
  v57 = v81;
  v58 = swift_getWitnessTable();
  v59 = v78;
  sub_1B7A126F4(v45, v57, v58, v78);
  (*(v89 + 8))(v53, v57);
  v60 = sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  v104 = v58;
  v105 = v60;
  v102 = swift_getWitnessTable();
  v103 = v58;
  v61 = v85;
  v62 = swift_getWitnessTable();
  v63 = v88;
  sub_1B7957EE0(v59, v61, v62);
  v64 = *(v91 + 8);
  v64(v59, v61);
  sub_1B7957EE0(v63, v61, v62);
  return (v64)(v63, v61);
}

uint64_t EnvironmentValues.restartJet.getter()
{
  sub_1B79AACCC();

  return sub_1B7A97890();
}

uint64_t sub_1B79AA7EC@<X0>(void *a1@<X8>)
{
  sub_1B79AACCC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79AA83C()
{
  sub_1B79AACCC();

  return sub_1B7A978A0();
}

uint64_t sub_1B79AA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[19] = a3;
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B79AA948, v10, v9);
}

uint64_t sub_1B79AA948()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = v4;
  type metadata accessor for Jet();
  *(v0 + 232) = sub_1B79A6B58();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_1B79AAA2C;

  return sub_1B79A8558(1);
}

uint64_t sub_1B79AAA2C()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79AF2E0, v3, v2);
}

uint64_t sub_1B79AAB70()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B798D54C;

  return sub_1B79AA89C(v7, v8, (v0 + 10), v2, v3, v4, v5, v6);
}

void sub_1B79AAC54(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B79AAC6C(a1, a2 & 1);
  }
}

void sub_1B79AAC6C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1B79AAC78()
{
  result = qword_1EBA46BD0;
  if (!qword_1EBA46BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BD0);
  }

  return result;
}

unint64_t sub_1B79AACCC()
{
  result = qword_1EBA46BD8;
  if (!qword_1EBA46BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BD8);
  }

  return result;
}

uint64_t JetStartUpCoordinator.init(startUpProcedure:transaction:makeObjects:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  type metadata accessor for _JetTakeOff();
  v10 = swift_allocObject();
  v10[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8);
  sub_1B7A96EE0();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = 0;

  *a5 = v10;
  return result;
}

Swift::Void __swiftcall JetStartUpCoordinator.restart()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = sub_1B7A9A7E0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  swift_retain_n();
  sub_1B79A9B34(0, 0, v3, &unk_1B7A9DFA0, v6);
}

uint64_t RestartJetAction.callAsFunction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  if (v4)
  {
    v5 = sub_1B7A9A7E0();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;

    v7 = &unk_1B7A9DFB8;
    v8 = v3;
    v9 = v6;
  }

  else
  {
    sub_1B7A99720();
    v10 = sub_1B7A9A7E0();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v7 = &unk_1B7A9DFB0;
    v8 = v3;
  }

  return sub_1B79A9B34(0, 0, v8, v7, v9);
}

uint64_t JetStartUpCoordinator.debugDescription.getter()
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0xD000000000000017, 0x80000001B7AC55E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF0);
  sub_1B7A9AD50();
  MEMORY[0x1B8CAB750](62, 0xE100000000000000);
  return 0;
}

void *JetStartUpCoordinator.extend(startUpProcedure:withDependencies:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  result = sub_1B79AB1F4(&v6, a2, a3);
  *a4 = result;
  return result;
}

void *sub_1B79AB1F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a1;
  if (*a1 == 2)
  {
    v7 = *(v3 + 16);
    sub_1B79ADE14(v7);
  }

  v8 = *(v3 + 24);
  v9 = swift_allocObject();
  v9[6] = 0;
  sub_1B79AEDC0(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8);
  sub_1B7A96EE0();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = v3;

  return v9;
}

uint64_t JetStartUpDecoration.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79AB3A0()
{
  sub_1B79AED6C();

  return sub_1B7A97890();
}

uint64_t sub_1B79AB3E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B79E9404();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B79AB418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = *(a1 + 16);
  v78 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v74 - v6;
  v8 = *(v7 + 24);
  *&v111 = v3;
  *(&v111 + 1) = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v111 = v3;
  *(&v111 + 1) = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = MEMORY[0x1E6981CD8];
  *&v111 = v3;
  *(&v111 + 1) = MEMORY[0x1E6981CD8];
  *v112 = OpaqueTypeMetadata2;
  *&v112[8] = v8;
  v12 = MEMORY[0x1E6981CD0];
  *&v112[16] = MEMORY[0x1E6981CD0];
  *&v112[24] = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  *&v111 = v3;
  *(&v111 + 1) = v11;
  *v112 = OpaqueTypeMetadata2;
  *&v112[8] = v8;
  *&v112[16] = v12;
  *&v112[24] = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  *&v111 = MEMORY[0x1E69E6530];
  *(&v111 + 1) = v13;
  v84 = v13;
  *v112 = MEMORY[0x1E69E6540];
  *&v112[8] = v14;
  v83 = v14;
  v15 = sub_1B7A98980();
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D88);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D90);
  v21 = sub_1B7A976B0();
  v22 = sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90);
  *&v111 = v20;
  *(&v111 + 1) = v21;
  *v112 = v22;
  *&v112[8] = MEMORY[0x1E697C270];
  v23 = swift_getOpaqueTypeConformance2();
  v81 = v19;
  *&v111 = v19;
  *(&v111 + 1) = MEMORY[0x1E6981E70];
  *v112 = v3;
  *&v112[8] = v23;
  v79 = v23;
  *&v112[16] = MEMORY[0x1E6981E60];
  *&v112[24] = v8;
  v24 = v8;
  v25 = sub_1B7A979C0();
  v94 = v15;
  v26 = sub_1B7A97B40();
  v91 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v74 - v27;
  v97 = v25;
  v82 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v80 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v89 = &v74 - v31;
  v32 = sub_1B7A97880();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v26;
  v93 = sub_1B7A97B40();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v98 = &v74 - v37;
  v38 = v2[1];
  v111 = *v2;
  *v112 = v38;
  *&v112[9] = *(v2 + 25);
  v114 = *(v2 + 24);
  v39 = *(v2 + 2);
  v113 = v39;
  if (v114 == 1)
  {
    v110 = v39;
  }

  else
  {
    sub_1B7957820(&v113, &v115, &qword_1EBA46DA0);
    sub_1B7A9AA10();
    v40 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v113, &qword_1EBA46DA0);
    v36 = (*(v33 + 8))(v35, v32);
    LOBYTE(v39) = v110;
  }

  v116 = v112[24];
  v41 = v112[16];
  v115 = *&v112[16];
  if (v112[24] != 1)
  {

    sub_1B7A9AA10();
    v42 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v115, &qword_1EBA46DA8);
    v36 = (*(v33 + 8))(v35, v32);
    v41 = v109;
  }

  v43 = v94;
  v44 = v96;
  if (v39 > 1u)
  {
    if (v39 != 2)
    {
      v63 = v77;
      (v111)(v36);
      v64 = v76;
      sub_1B7957EE0(v63, v3, v24);
      v65 = *(v78 + 8);
      v65(v63, v3);
      sub_1B7957EE0(v64, v3, v24);
      WitnessTable = swift_getWitnessTable();
      v67 = swift_getWitnessTable();
      v107 = WitnessTable;
      v108 = v67;
      swift_getWitnessTable();
      sub_1B7959A28(v63, v96, v3);
      v65(v63, v3);
      v65(v64, v3);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v39 && (v41 & 1) != 0)
  {
LABEL_11:
    MEMORY[0x1EEE9AC00](v36);
    *(&v74 - 4) = v3;
    *(&v74 - 3) = v24;
    v88 = v3;
    *(&v74 - 2) = &v111;
    v56 = v80;
    sub_1B7A979B0();
    v57 = v97;
    v58 = swift_getWitnessTable();
    v59 = v89;
    sub_1B7957EE0(v56, v57, v58);
    v60 = *(v82 + 8);
    v60(v56, v57);
    sub_1B7957EE0(v59, v57, v58);
    v61 = swift_getWitnessTable();
    v62 = v90;
    sub_1B79B5878(v56, v57);
    v99 = v58;
    v100 = v61;
    swift_getWitnessTable();
    sub_1B79B5878(v62, v44);
    (*(v91 + 8))(v62, v44);
    v60(v56, v57);
    v60(v89, v57);
    goto LABEL_13;
  }

  MEMORY[0x1EEE9AC00](v36);
  v88 = v3;
  *(&v74 - 4) = v3;
  *(&v74 - 3) = v24;
  v75 = v24;
  *(&v74 - 2) = &v111;
  v45 = v86;
  sub_1B7A98970();
  v46 = swift_getWitnessTable();
  v47 = v97;
  v48 = v85;
  sub_1B7957EE0(v45, v43, v46);
  v49 = *(v87 + 8);
  v49(v45, v43);
  sub_1B7957EE0(v48, v43, v46);
  v50 = swift_getWitnessTable();
  v51 = v43;
  v52 = v44;
  v53 = v90;
  sub_1B7959A28(v45, v47, v51);
  v101 = v50;
  v102 = v46;
  swift_getWitnessTable();
  v54 = v75;
  sub_1B79B5878(v53, v52);
  (*(v91 + 8))(v53, v52);
  v55 = v45;
  v24 = v54;
  v49(v55, v51);
  v49(v48, v51);
LABEL_13:
  v68 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v105 = v68;
  v106 = v69;
  v103 = swift_getWitnessTable();
  v104 = v24;
  v70 = v93;
  v71 = swift_getWitnessTable();
  v72 = v98;
  sub_1B7957EE0(v98, v70, v71);
  return (*(v92 + 8))(v72, v70);
}