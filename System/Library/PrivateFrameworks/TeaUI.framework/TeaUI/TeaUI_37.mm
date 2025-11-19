void JSONView.body.getter(uint64_t a1@<X8>)
{
  v43 = a1;
  v3 = type metadata accessor for JSONView(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190664();
  OUTLINED_FUNCTION_9();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_48();
  sub_1D8150A88();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v35 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  sub_1D81510E4();
  OUTLINED_FUNCTION_9();
  v41 = v15;
  v42 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v34 = v18 - v17;
  v33 = v1;
  v44 = v1;
  sub_1D7E189E8(0, &unk_1ECA11BD0);
  sub_1D815105C();
  sub_1D81907A4();
  v19 = (v1 + *(v4 + 32));
  v20 = *v19;
  v21 = *(v19 + 2);
  v47 = v20;
  v48 = v21;
  sub_1D8152D04(0, &qword_1ECA0FEC0);
  sub_1D81909B4();
  sub_1D8190654();
  OUTLINED_FUNCTION_5_87();
  v24 = sub_1D8150E10(v22, v23);
  sub_1D8190844();

  (*(v36 + 8))(v2, v37);
  (*(v35 + 8))(v14, v9);
  v25 = (v33 + *(v4 + 28));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v47) = v26;
  *(&v47 + 1) = v27;
  sub_1D8152D04(0, &qword_1ECA0FE78);
  sub_1D81909B4();
  sub_1D8155038();
  swift_allocObject();
  sub_1D8156434();
  sub_1D8153B90();
  v45 = v9;
  v46 = v24;
  OUTLINED_FUNCTION_8_61();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_94();
  sub_1D8150E10(v28, v29);
  v30 = v41;
  v31 = v34;
  sub_1D81908A4();

  (*(v42 + 8))(v31, v30);
  OUTLINED_FUNCTION_100();
}

void sub_1D8150A88()
{
  if (!qword_1ECA11BC8)
  {
    sub_1D7E189E8(255, &unk_1ECA11BD0);
    sub_1D815105C();
    v0 = sub_1D81907B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11BC8);
    }
  }
}

void sub_1D8150B1C()
{
  if (!qword_1ECA11BD8)
  {
    sub_1D8150B8C(255);
    sub_1D8057900();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA11BD8);
    }
  }
}

void sub_1D8150C5C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v6 = v5;
    v7 = v4;
    v8 = OUTLINED_FUNCTION_35();
    v10 = v9(v8);
    v11 = v7(255);
    v12 = v6(v3, v10, v11);
    if (!v13)
    {
      atomic_store(v12, v2);
    }
  }
}

void sub_1D8150CD8()
{
  if (!qword_1ECA11C00)
  {
    sub_1D8150DA0();
    type metadata accessor for JSONView.RowView(255);
    sub_1D8150E10(&qword_1ECA11C10, sub_1D8150DA0);
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C00);
    }
  }
}

void sub_1D8150DA0()
{
  if (!qword_1ECA11C08)
  {
    sub_1D81564E4(255, &qword_1ECA0EF88);
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C08);
    }
  }
}

uint64_t sub_1D8150E10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D8150EDC()
{
  if (!qword_1ECA11C28)
  {
    sub_1D7E189E8(255, &unk_1ECA11C30);
    sub_1D7E189E8(255, &unk_1ECA11C38);
    sub_1D8150FD4();
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C28);
    }
  }
}

unint64_t sub_1D8150FD4()
{
  result = qword_1ECA11C40;
  if (!qword_1ECA11C40)
  {
    sub_1D7E189E8(255, &unk_1ECA11C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11C40);
  }

  return result;
}

unint64_t sub_1D815105C()
{
  result = qword_1ECA11C48;
  if (!qword_1ECA11C48)
  {
    sub_1D7E189E8(255, &unk_1ECA11BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11C48);
  }

  return result;
}

void sub_1D81510E4()
{
  if (!qword_1ECA11C50)
  {
    sub_1D8150A88();
    sub_1D8150E10(&qword_1ECA11C58, sub_1D8150A88);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA11C50);
    }
  }
}

uint64_t sub_1D8151198@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  sub_1D8057900();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v113 = v85 - v6;
  sub_1D81548A8(0, &qword_1ECA11DE0, sub_1D8150E94, MEMORY[0x1E69E73E0], MEMORY[0x1E697F948]);
  v102 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v101 = v85 - v8;
  sub_1D8150C5C(0, &unk_1ECA11DE8);
  v105 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v106 = v85 - v10;
  sub_1D8150E94(0);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v107 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150E58(0);
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v104 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150EDC();
  v100 = v15;
  v99 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v98 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150CD8();
  v92 = v17;
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150C5C(0, &unk_1ECA11DF0);
  v89 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v90 = v85 - v20;
  sub_1D8150C14(0);
  v96 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v91 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150C5C(0, &unk_1ECA11DF8);
  v109 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v108 = v85 - v24;
  sub_1D81554B8(0, &unk_1ECA11E00);
  v93 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v95 = v85 - v26;
  sub_1D8154C10(0, &unk_1ECA11E08);
  MEMORY[0x1EEE9AC00](v27);
  v85[1] = v85 - v28;
  sub_1D8154C10(0, &unk_1ECA11BF0);
  v94 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v85[2] = v85 - v30;
  sub_1D8150BD4(0);
  v110 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v97 = v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for JSONView.RowView(0);
  MEMORY[0x1EEE9AC00](v33);
  v88 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D818F824();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8150B8C(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v112 = v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v85 - v42);
  v44 = (a1 + *(type metadata accessor for JSONView(0) + 24));
  v45 = *v44;
  v46 = *(v44 + 2);
  v120 = v45;
  v121 = v46;
  sub_1D8152D04(0, &qword_1ECA0FEC0);
  sub_1D8190994();
  v47 = a1;
  sub_1D8152D50(v118, v119, v38);

  v48 = (*(v36 + 88))(v38, v35);
  if (v48 == *MEMORY[0x1E69D6A48])
  {
    (*(v36 + 96))(v38, v35);
    v97 = *v38;
    v49 = *(v97 + 2);
    swift_bridgeObjectRetain_n();
    v50 = sub_1D80709E4(v49);

    MEMORY[0x1EEE9AC00](v51);
    v52 = a1;
    sub_1D803DEA4(sub_1D8155A70, &v85[-4], v50);
    v54 = sub_1D7FDF590(v53);

    *&v120 = v54;
    swift_getKeyPath();
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1D8156344;
    *(v56 + 24) = v55;
    sub_1D7E189E8(0, &unk_1ECA11C30);
    sub_1D7E189E8(0, &unk_1ECA11C38);
    sub_1D8150FD4();
    v84 = sub_1D81555C4();
    v57 = v98;
    sub_1D8190AD4();
    v58 = v99;
    v59 = v100;
    (v99[2])(v106, v57, v100);
    swift_storeEnumTagMultiPayload();
    sub_1D815554C();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815569C();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
    sub_1D8155330();
    v58[1](v57, v59);

    v47 = v52;
LABEL_17:
    MEMORY[0x1EEE9AC00](v60);
    v84 = v47;
    sub_1D8154DE4(0, &qword_1ECA0FDD8, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1D8056978();
    v73 = v113;
    sub_1D8190B04();
    sub_1D8155038();
    v75 = v116;
    v74 = v117;
    v76 = *(v116 + 16);
    v77 = v114;
    v76(v114, v73, v117);
    v78 = v115;
    sub_1D8155038();
    sub_1D8150B1C();
    v76((v78 + *(v79 + 48)), v77, v74);
    v80 = *(v75 + 8);
    v80(v73, v74);
    sub_1D8155330();
    v80(v77, v74);
    return sub_1D8155330();
  }

  v99 = v43;
  v61 = a1;
  if (v48 == *MEMORY[0x1E69D6A30])
  {
    (*(v36 + 96))(v38, v35);
    v107 = *v38;
    v62 = sub_1D8190DB4();
    sub_1D7FDF744(v62);
    v64 = v63;

    *&v120 = v64;
    swift_getKeyPath();
    sub_1D8150DA0();
    sub_1D8150E10(&qword_1ECA11C10, sub_1D8150DA0);
    v84 = sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    v65 = v86;
    sub_1D8190AD4();
    v66 = v87;
    v67 = v92;
    (*(v87 + 16))(v90, v65, v92);
    swift_storeEnumTagMultiPayload();
    sub_1D8155954();
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D81557CC();
    sub_1D81558A4();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
    sub_1D8155330();
    (*(v66 + 8))(v65, v67);

    v47 = v61;
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x1E69D6A50])
  {
    (*(v36 + 8))(v38, v35);
    v68 = v88;
    (*(v36 + 16))(&v88[*(v33 + 20)], a1, v35);
    *v68 = 0x65756C6156;
    v68[1] = 0xE500000000000000;
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8155954();
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D81557CC();
    sub_1D81558A4();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
LABEL_7:
    sub_1D8155330();
LABEL_16:
    v60 = sub_1D8155330();
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x1E69D6A40])
  {
    (*(v36 + 8))(v38, v35);
    v69 = *(v33 + 20);
    v70 = v88;
    (*(v36 + 16))(&v88[v69], a1, v35);
    *v70 = 0x65756C6156;
    v70[1] = 0xE500000000000000;
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8190634();
    sub_1D8156380();
    swift_storeEnumTagMultiPayload();
    sub_1D81557CC();
    sub_1D81558A4();
    sub_1D8190634();
    sub_1D81563E0();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
    sub_1D8155330();
    goto LABEL_16;
  }

  if (v48 == *MEMORY[0x1E69D6A28] || v48 == *MEMORY[0x1E69D6A38])
  {
    v72 = v88;
    (*(v36 + 16))(&v88[*(v33 + 20)], a1, v35);
    *v72 = 0x65756C6156;
    v72[1] = 0xE500000000000000;
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8190634();
    sub_1D8156380();
    swift_storeEnumTagMultiPayload();
    sub_1D81557CC();
    sub_1D81558A4();
    sub_1D8190634();
    sub_1D81563E0();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
    sub_1D8155330();
    v47 = a1;
    goto LABEL_16;
  }

  if (v48 == *MEMORY[0x1E69D6A20])
  {
    v82 = v88;
    (*(v36 + 16))(&v88[*(v33 + 20)], a1, v35);
    *v82 = 0x65756C6156;
    v82[1] = 0xE500000000000000;
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815554C();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815569C();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815574C();
    sub_1D81559FC(&qword_1ECA11E50, sub_1D8150E58, sub_1D815569C);
    sub_1D8190634();
    goto LABEL_7;
  }

  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  sub_1D81921A4();

  *&v120 = 0xD00000000000001ELL;
  *(&v120 + 1) = 0x80000001D81D8E20;
  v83 = sub_1D818F7E4();
  MEMORY[0x1DA713260](v83);

  result = sub_1D81923A4();
  __break(1u);
  return result;
}

void sub_1D8152D04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D81909C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D8152D50(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_0();
  v75 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_40();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v67 - v18);
  v21 = HIBYTE(a2) & 0xF;
  v85 = a1;
  v86 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22 = *(v9 + 16);
  if (!v21)
  {
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X4, X16 }
  }

  v88 = *(v9 + 16);
  v89 = v9 + 16;
  v22(&v67 - v18, v3, v7, v19);
  v23 = OUTLINED_FUNCTION_68();
  v83 = v25;
  v84 = v24;
  v26 = (v25)(v23);
  v27 = v26;
  v82 = *MEMORY[0x1E69D6A48];
  if (v26 == v82)
  {
    v28 = OUTLINED_FUNCTION_68();
    v29(v28);
    v30 = swift_allocObject();
    v31 = v27;
    v32 = v86;
    sub_1D8190DB4();
    v33 = sub_1D8190DB4();
    v34 = v32;
    v35 = a3;
    v36 = sub_1D8155A90(v33, v85, v34);

    *(v30 + 16) = v36;
    *v35 = v30;
    (*(v9 + 104))(v35, v31, v7);
LABEL_43:

    goto LABEL_53;
  }

  if (v26 == *MEMORY[0x1E69D6A30])
  {
    v72 = a3;
    v39 = *(v9 + 96);
    v87 = v7;
    v76 = v39;
    v39(v20, v7);
    v71 = *v20;
    v40 = *(v71 + 16);
    v81 = *(v40 + 16);
    v79 = *MEMORY[0x1E69D6A50];
    v70 = *MEMORY[0x1E69D6A40];
    v69 = *MEMORY[0x1E69D6A28];
    v68 = *MEMORY[0x1E69D6A38];
    v67 = *MEMORY[0x1E69D6A20];
    v77 = v9 + 96;
    v78 = (v9 + 8);
    v73 = (v9 + 32);
    sub_1D8190DB4();
    v41 = 0;
    v74 = MEMORY[0x1E69E7CC0];
    v80 = v27;
    while (1)
    {
      if (v81 == v41)
      {
        v64 = swift_allocObject();

        *(v64 + 16) = v74;
        *v72 = v64;
        (*(v9 + 104))();
        goto LABEL_43;
      }

      if (v41 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v42 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v43 = v40;
      v44 = v9;
      v45 = *(v9 + 72);
      v46 = v40 + v42 + v45 * v41;
      v47 = v90;
      v48 = v87;
      v88(v90, v46, v87);
      v88(v15, v47, v48);
      v49 = v83(v15, v48);
      if (v49 == v82 || v49 == v27)
      {
        goto LABEL_22;
      }

      if (v49 != v79)
      {
        break;
      }

      v76(v15, v48);
      v93 = sub_1D8190FA4();
      v94 = v51;
      v91 = sub_1D8190FA4();
      v92 = v52;
      sub_1D7E50D2C();
      v53 = sub_1D8191F14();
      v48 = v87;

      if ((v53 & 1) == 0)
      {
        (*v78)(v90, v48);
        ++v41;
        goto LABEL_20;
      }

LABEL_31:
      v56 = *v73;
      (*v73)(v75, v90, v48);
      v57 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F0910C(0, *(v57 + 16) + 1, 1);
        v57 = v95;
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1D7F0910C(v59 > 1, v60 + 1, 1);
        v57 = v95;
      }

      ++v41;
      *(v57 + 16) = v60 + 1;
      v74 = v57;
      v56(v57 + v42 + v60 * v45, v75, v87);
LABEL_20:
      v9 = v44;
      LODWORD(v27) = v80;
      v40 = v43;
    }

    if (v49 != v70)
    {
      if (v49 != v69 && v49 != v68 && v49 != v67)
      {
        goto LABEL_55;
      }

      goto LABEL_31;
    }

LABEL_22:
    (*v78)(v15, v48);
    goto LABEL_31;
  }

  if (v26 == *MEMORY[0x1E69D6A50] || v26 == *MEMORY[0x1E69D6A40])
  {
    v62 = OUTLINED_FUNCTION_68();
    v63(v62);
LABEL_52:
    v88(a3, v3, v7);
LABEL_53:
    OUTLINED_FUNCTION_100();
    return;
  }

  if (v26 == *MEMORY[0x1E69D6A28] || v26 == *MEMORY[0x1E69D6A38] || v26 == *MEMORY[0x1E69D6A20])
  {
    goto LABEL_52;
  }

LABEL_55:
  sub_1D8192624();
  __break(1u);
}

uint64_t sub_1D815340C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D7F01D3C();
  v4 = sub_1D8191F24();
  v6 = v5;
  v7 = *(type metadata accessor for JSONView.RowView(0) + 20);
  v8 = sub_1D818F824();
  result = (*(*(v8 - 8) + 16))(a2 + v7, a1, v8);
  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D81534B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D81564E4(0, &qword_1ECA0EF88);
  v5 = a1 + *(v4 + 48);

  return sub_1D815340C(v5, a2);
}

uint64_t sub_1D8153528()
{
  type metadata accessor for JSONView(0);
  sub_1D8152D04(0, &qword_1ECA0FEC0);
  sub_1D8190994();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    sub_1D8190FA4();
    sub_1D8190994();
    sub_1D8190FA4();

    sub_1D7E50D2C();
    v1 = sub_1D8191F14();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_1D8153674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for JSONView.RowView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D818F824();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  if (*(a3 + 16) && (v18 = sub_1D7E11428(a1, a2), (v19 & 1) != 0))
  {
    (*(v12 + 16))(v14, *(a3 + 56) + *(v12 + 72) * v18, v11);
    v20 = *(v12 + 32);
    v20(v17, v14, v11);
    v20(v10 + *(v8 + 20), v17, v11);
    *v10 = a1;
    v10[1] = a2;
    sub_1D8156434();
    __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    return sub_1D8190DB4();
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  }
}

uint64_t sub_1D81538A0()
{
  v0 = type metadata accessor for JSONView(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D81905D4();
  sub_1D8155038();
  swift_allocObject();
  sub_1D8156434();
  return sub_1D81909E4();
}

uint64_t sub_1D8153A18()
{
  type metadata accessor for JSONView(0);
  sub_1D8152D04(0, &qword_1ECA0FE78);
  return sub_1D81909A4();
}

uint64_t sub_1D8153A90()
{
  sub_1D8153C3C();
  sub_1D8150E10(&qword_1ECA11C80, sub_1D8153C3C);
  return sub_1D8190424();
}

uint64_t sub_1D8153B24()
{
  v0 = type metadata accessor for JSONView(0);
  OUTLINED_FUNCTION_50(v0);

  return sub_1D8153A90();
}

void sub_1D8153B90()
{
  if (!qword_1ECA11C60)
  {
    sub_1D81903D4();
    sub_1D8153C3C();
    sub_1D8150E10(&qword_1ECA11C80, sub_1D8153C3C);
    v0 = sub_1D8190434();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C60);
    }
  }
}

void sub_1D8153C3C()
{
  if (!qword_1ECA11C68)
  {
    sub_1D8153CA0();
    sub_1D8153D20();
    v0 = sub_1D8190324();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C68);
    }
  }
}

void sub_1D8153CA0()
{
  if (!qword_1ECA11C70)
  {
    sub_1D8154DE4(255, &qword_1ECA0FD70, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v0 = sub_1D8190644();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11C70);
    }
  }
}

unint64_t sub_1D8153D20()
{
  result = qword_1ECA11C78;
  if (!qword_1ECA11C78)
  {
    sub_1D8153CA0();
    sub_1D8056A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11C78);
  }

  return result;
}

uint64_t sub_1D8153DB4()
{
  sub_1D8190774();
  sub_1D8153CA0();
  sub_1D8153D20();
  return sub_1D8190334();
}

void *sub_1D8153E30@<X0>(void *a1@<X8>)
{
  v2 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D814CCCC(sub_1D8155430);
  v5 = v4;
  if (v6)
  {
    sub_1D81905B4();
    sub_1D81905A4();
    v7 = v3;
    sub_1D7E61D28();
    sub_1D8190F84();
    sub_1D8190594();

    sub_1D81905A4();
    sub_1D81905E4();
    v19 = 1;
    v20[0] = sub_1D8190804();
    v20[1] = v8;
    LOBYTE(v20[2]) = v9 & 1;
    *(&v20[2] + 1) = v3;
    HIDWORD(v20[2]) = v3 >> 24;
    v20[3] = v10;
    LOBYTE(v20[4]) = sub_1D8190784();
    *(&v20[4] + 1) = v18[0];
    HIDWORD(v20[4]) = *(v18 + 3);
    memset(&v20[5], 0, 32);
    LOBYTE(v20[9]) = 1;
    memcpy(__dst, v20, 0x49uLL);
    v21 = 1;
    BYTE1(__dst[9]) = 1;
    v11 = MEMORY[0x1E697E5E0];
    v12 = MEMORY[0x1E697E830];
    sub_1D8156380();
    sub_1D8154DE4(0, &qword_1ECA0FD70, v11, v12);
    sub_1D8056A30();
    sub_1D8190634();
    sub_1D8155450(v3, v5, 1, MEMORY[0x1E69E7D20]);
    sub_1D8155464();
    memcpy(__dst, v18, 0x4AuLL);
  }

  else
  {
    sub_1D81905B4();
    sub_1D81905A4();
    sub_1D8190594();
    sub_1D8155450(v3, v5, 0, MEMORY[0x1E69E7D20]);
    sub_1D81905A4();
    sub_1D81905E4();
    v13 = sub_1D8190804();
    LOBYTE(__dst[0]) = v14 & 1;
    LOBYTE(v20[0]) = 0;
    v18[0] = v13;
    v18[1] = v15;
    LOBYTE(v18[2]) = v14 & 1;
    v18[3] = v16;
    LOBYTE(v18[4]) = sub_1D8190784();
    memset(&v18[5], 0, 32);
    LOWORD(v18[9]) = 1;
    sub_1D8154DE4(0, &qword_1ECA0FD70, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1D8056A30();
    sub_1D8190634();
  }

  return memcpy(a1, __dst, 0x4AuLL);
}

uint64_t sub_1D8154218@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D8154260();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1D8154260()
{
  v0 = sub_1D8190F74();
  v1 = OUTLINED_FUNCTION_50(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D818E384();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_48();
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  sub_1D7E189E8(0, &qword_1ECA0FB78);
  *(swift_allocObject() + 16) = xmmword_1D819FAC0;
  sub_1D818E364();
  sub_1D818E354();
  sub_1D8150E10(&qword_1ECA0FB80, MEMORY[0x1E6967F78]);
  sub_1D7E189E8(0, &qword_1ECA0FB88);
  sub_1D804A4A0();
  sub_1D8192004();
  sub_1D818E394();
  sub_1D818F824();
  OUTLINED_FUNCTION_7_81();
  sub_1D8150E10(v6, v7);
  v8 = sub_1D818E3A4();
  if (v15 || (v10 = v8, v11 = v9, sub_1D8190F64(), v4 = sub_1D8190F34(), v13 = v12, result = sub_1D7EF4CE0(v10, v11), v13))
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8154568()
{
  sub_1D818F824();
  if (v0 <= 0x3F)
  {
    sub_1D8152D04(319, &qword_1ECA0FE78);
    if (v1 <= 0x3F)
    {
      sub_1D8152D04(319, &qword_1ECA0FEC0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D815464C()
{
  result = sub_1D818F824();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D81546E4()
{
  if (!qword_1ECA11CB0)
  {
    sub_1D7E189E8(255, &unk_1ECA11CB8);
    v0 = sub_1D8190374();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11CB0);
    }
  }
}

void sub_1D815477C()
{
  if (!qword_1ECA11CC0)
  {
    sub_1D81547E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA11CC0);
    }
  }
}

void sub_1D81548A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = OUTLINED_FUNCTION_35();
    v11 = v10(v9);
    v12 = a5(a1, v11, a4);
    if (!v13)
    {
      atomic_store(v12, v5);
    }
  }
}

void sub_1D815494C()
{
  if (!qword_1ECA11CF8)
  {
    type metadata accessor for JSONView(255);
    sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
    v0 = sub_1D81903C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11CF8);
    }
  }
}

void sub_1D8154A1C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_35();
    sub_1D8154A88(v5);
    OUTLINED_FUNCTION_1_174(v6, &qword_1ECA11D48, MEMORY[0x1E69E73E0]);
    v7 = OUTLINED_FUNCTION_13_52();
    v8 = v4(v7);
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

void sub_1D8154AD0()
{
  if (!qword_1ECA11D18)
  {
    sub_1D8154B8C();
    sub_1D8154C10(255, &unk_1ECA11D28);
    sub_1D8154C70();
    sub_1D8154D0C();
    v0 = sub_1D81903C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11D18);
    }
  }
}

void sub_1D8154B8C()
{
  if (!qword_1ECA11D20)
  {
    sub_1D8154DE4(255, &qword_1ECA11CD8, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v0 = sub_1D8190644();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11D20);
    }
  }
}

void sub_1D8154C10(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v8 = v7(v6);
    v9 = v5(v3, v8, v8);
    if (!v10)
    {
      atomic_store(v9, v2);
    }
  }
}

unint64_t sub_1D8154C70()
{
  result = qword_1ECA11D30;
  if (!qword_1ECA11D30)
  {
    sub_1D8154B8C();
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, MEMORY[0x1E6981148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11D30);
  }

  return result;
}

unint64_t sub_1D8154D0C()
{
  result = qword_1ECA11D40;
  if (!qword_1ECA11D40)
  {
    sub_1D8154C10(255, &unk_1ECA11D28);
    sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11D40);
  }

  return result;
}

void sub_1D8154DE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E6981148]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D8154E38(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    sub_1D815486C(v6);
    v8 = v5(v3, MEMORY[0x1E6981148], v7);
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

void sub_1D8154E98(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    OUTLINED_FUNCTION_1_174(0, &qword_1ECA11CD8, MEMORY[0x1E6981148]);
    sub_1D815484C(255);
    v6 = OUTLINED_FUNCTION_13_52();
    v7 = v4(v6);
    if (!v8)
    {
      atomic_store(v7, v5);
    }
  }
}

unint64_t sub_1D8154F08()
{
  result = qword_1ECA11D88;
  if (!qword_1ECA11D88)
  {
    sub_1D8154A88(255);
    sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
    sub_1D8150E10(&qword_1ECA11D98, sub_1D8154AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11D88);
  }

  return result;
}

uint64_t sub_1D8154FE4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_174(0, a2, a3);
    OUTLINED_FUNCTION_4_99();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8155038()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_109();
  v4(v3);
  return v0;
}

unint64_t sub_1D815508C()
{
  result = qword_1ECA11DA8;
  if (!qword_1ECA11DA8)
  {
    sub_1D815482C(255);
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, MEMORY[0x1E6981148]);
    sub_1D815512C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11DA8);
  }

  return result;
}

unint64_t sub_1D815512C()
{
  result = qword_1ECA11DB0;
  if (!qword_1ECA11DB0)
  {
    sub_1D815484C(255);
    sub_1D81559FC(&qword_1ECA11DB8, sub_1D815486C, sub_1D81551E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11DB0);
  }

  return result;
}

unint64_t sub_1D81551E0()
{
  result = qword_1ECA11DC0;
  if (!qword_1ECA11DC0)
  {
    sub_1D8154910(255);
    sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11DC0);
  }

  return result;
}

unint64_t sub_1D8155290()
{
  result = qword_1ECA11DC8;
  if (!qword_1ECA11DC8)
  {
    sub_1D81549FC(255);
    sub_1D8154F08();
    sub_1D8154FE4(&qword_1ECA11DA0, &qword_1ECA11D48, MEMORY[0x1E69E73E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11DC8);
  }

  return result;
}

uint64_t sub_1D8155330()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D8155394(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8133EC0(a1, a2, a3 & 1);

  return sub_1D8190DB4();
}

uint64_t sub_1D81553D0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8155450(a1, a2, a3 & 1, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1D8155450(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1D8155464()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1D81554B8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    sub_1D8154C10(255, &unk_1ECA11BF0);
    sub_1D8150C14(255);
    v6 = OUTLINED_FUNCTION_13_52();
    v7 = v4(v6);
    if (!v8)
    {
      atomic_store(v7, v5);
    }
  }
}

unint64_t sub_1D815554C()
{
  result = qword_1ECA11E10;
  if (!qword_1ECA11E10)
  {
    sub_1D8150EDC();
    sub_1D81555C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E10);
  }

  return result;
}

unint64_t sub_1D81555C4()
{
  result = qword_1ECA11E18;
  if (!qword_1ECA11E18)
  {
    sub_1D7E189E8(255, &unk_1ECA11C38);
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E18);
  }

  return result;
}

unint64_t sub_1D815569C()
{
  result = qword_1ECA11E28;
  if (!qword_1ECA11E28)
  {
    sub_1D8150E94(255);
    sub_1D815554C();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E28);
  }

  return result;
}

unint64_t sub_1D815574C()
{
  result = qword_1ECA11E30;
  if (!qword_1ECA11E30)
  {
    sub_1D8150BD4(255);
    sub_1D81557CC();
    sub_1D81558A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E30);
  }

  return result;
}

unint64_t sub_1D81557CC()
{
  result = qword_1ECA11E38;
  if (!qword_1ECA11E38)
  {
    sub_1D8154C10(255, &unk_1ECA11BF0);
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E38);
  }

  return result;
}

unint64_t sub_1D81558A4()
{
  result = qword_1ECA11E40;
  if (!qword_1ECA11E40)
  {
    sub_1D8150C14(255);
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    sub_1D8155954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E40);
  }

  return result;
}

unint64_t sub_1D8155954()
{
  result = qword_1ECA11E48;
  if (!qword_1ECA11E48)
  {
    sub_1D8150CD8();
    sub_1D8150E10(&qword_1ECA11E20, type metadata accessor for JSONView.RowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E48);
  }

  return result;
}

uint64_t sub_1D81559FC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    OUTLINED_FUNCTION_4_99();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8155A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1D8190DB4();
      a2 = sub_1D815629C(v14, v9, a1, a2, a3);
      MEMORY[0x1DA715D00](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1D7E2CB98(0, v9, v11);
  sub_1D8190DB4();
  v12 = sub_1D8155C68(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_1D8155C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v72 = a4;
  v51 = a2;
  v52 = a1;
  sub_1D81564E4(0, &qword_1ECA0D2B8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v47 - v7);
  v9 = sub_1D818F824();
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = &v47 - v15;
  v55 = 0;
  v17 = 0;
  v67 = a3;
  v18 = *(a3 + 64);
  v54 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v53 = (v19 + 63) >> 6;
  v61 = (v13 + 88);
  v60 = *MEMORY[0x1E69D6A48];
  v59 = *MEMORY[0x1E69D6A30];
  v58 = *MEMORY[0x1E69D6A50];
  v57 = (v13 + 96);
  v64 = v13;
  v66 = (v13 + 8);
  v50 = *MEMORY[0x1E69D6A40];
  v49 = *MEMORY[0x1E69D6A28];
  v48 = *MEMORY[0x1E69D6A38];
  v47 = *MEMORY[0x1E69D6A20];
  v62 = v13 + 16;
  v63 = v16;
  v70 = v8;
  v71 = v12;
  do
  {
    do
    {
      if (!v21)
      {
        v23 = v17;
        while (1)
        {
          v17 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v17 >= v53)
          {
            goto LABEL_33;
          }

          v24 = *(v54 + 8 * v17);
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v68 = (v24 - 1) & v24;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_35:
        result = sub_1D8192624();
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64(v21));
      v68 = (v21 - 1) & v21;
LABEL_11:
      v25 = v22 | (v17 << 6);
      v26 = *(v67 + 56);
      v27 = (*(v67 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v64 + 72);
      v56 = v25;
      v31 = *(v64 + 16);
      v31(v16, v26 + v30 * v25, v9, v14);
      *v8 = v28;
      v8[1] = v29;
      v32 = *(v65 + 48);
      (v31)(v8 + v32, v16, v9);
      v76 = sub_1D8190FA4();
      v77 = v33;
      v74 = sub_1D8190FA4();
      v75 = v34;
      sub_1D7E50D2C();
      v69 = v29;
      swift_bridgeObjectRetain_n();
      LOBYTE(v28) = sub_1D8191F14();
      v9 = v71;

      v8 = v70;

      if (v28)
      {
        goto LABEL_29;
      }

      v35 = v73;
      (v31)(v73, v8 + v32, v9);
      v36 = (*v61)(v35, v9);
      if (v36 == v60 || v36 == v59)
      {
        goto LABEL_20;
      }

      if (v36 != v58)
      {
        if (v36 == v50)
        {
LABEL_20:
          (*v66)(v73, v9);
        }

        else if (v36 != v49 && v36 != v48 && v36 != v47)
        {
          goto LABEL_35;
        }

LABEL_29:
        sub_1D8155464();
        v16 = v63;
        (*v66)(v63, v9);

        v21 = v68;
        break;
      }

      (*v57)(v73, v9);
      v76 = sub_1D8190FA4();
      v77 = v38;
      v74 = sub_1D8190FA4();
      v75 = v39;
      v40 = sub_1D8191F14();
      v8 = v70;

      v9 = v71;

      sub_1D8155464();
      v16 = v63;
      (*v66)(v63, v9);

      v21 = v68;
    }

    while ((v40 & 1) == 0);
    *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
  }

  while (!__OFADD__(v55++, 1));
  __break(1u);
LABEL_33:
  sub_1D818BE98();
  v45 = v44;

  return v45;
}

void *sub_1D815629C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1D8155C68(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1D8156380()
{
  v1 = OUTLINED_FUNCTION_30();
  v5(v1, v2, v3, v4);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_109();
  v7(v6);
  return v0;
}

uint64_t sub_1D81563E0()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D8156434()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_109();
  v4(v3);
  return v0;
}

uint64_t sub_1D8156488()
{
  v0 = type metadata accessor for JSONView(0);
  OUTLINED_FUNCTION_50(v0);

  return sub_1D8153A18();
}

void sub_1D81564E4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_35();
    sub_1D818F824();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, v2);
    }
  }
}

void sub_1D815654C()
{
  if (!qword_1ECA11E60)
  {
    sub_1D7E189E8(255, &unk_1ECA11CB8);
    sub_1D81565E0();
    v0 = sub_1D8190A74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11E60);
    }
  }
}

unint64_t sub_1D81565E0()
{
  result = qword_1ECA11E68;
  if (!qword_1ECA11E68)
  {
    sub_1D7E189E8(255, &unk_1ECA11CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E68);
  }

  return result;
}

id sub_1D8156670(uint64_t *a1, char *a2, uint64_t a3)
{
  v5 = *a1;
  [a2 setFrame_];
  [*&a2[OBJC_IVAR____TtC5TeaUI16OverlayAlertView_backdropView] setFrame_];
  v6 = *&a2[OBJC_IVAR____TtC5TeaUI16OverlayAlertView_image];
  [v6 setFrame_];
  [v6 setImage_];
  v7 = *&a2[OBJC_IVAR____TtC5TeaUI16OverlayAlertView_titleLabel];
  [v7 setFrame_];
  [v7 setAttributedText_];
  v8 = *&a2[OBJC_IVAR____TtC5TeaUI16OverlayAlertView_subtitleLabel];
  [v8 setFrame_];
  [v8 setAttributedText_];
  OUTLINED_FUNCTION_0_241();
  sub_1D80485E8(a2);
  OUTLINED_FUNCTION_0_241();
  sub_1D80486C4(v6);
  OUTLINED_FUNCTION_0_241();
  sub_1D80486C4(v7);
  OUTLINED_FUNCTION_0_241();
  return sub_1D80486C4(v8);
}

uint64_t sub_1D815681C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D815685C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D81568C0(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 64);
  v34 = *(v1 + 56);
  v7 = *(v1 + 72);
  if ((*(v1 + 48) & 1) == 0)
  {
    if (v3[2])
    {
      v33 = *(v1 + 8);
      v8 = 0;
      v10 = v3 + 4;
      v11 = v3 + 5;
      v12 = *(v1 + 32);
      v32 = v12;
LABEL_8:
      v30 = *v10;
      v31 = *v11;
      v13 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      sub_1D8156D00();
      sub_1D8156D00();
      sub_1D8190DB4();
      v14 = v7;
      v15 = v33;

      v16 = [v13 initWithAttributedString_];
      if (v8 < *(v12 + 16))
      {
        v17 = v6;
        v18 = v16;
        v19 = v12 + 16 * v8;
        v29 = v4;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v22 = *MEMORY[0x1E69DB650];
        v28 = v17;
        v27 = v14;
        v23 = objc_opt_self();
        v24 = [v23 blackColor];
        [v18 addAttribute:v22 value:v24 range:{v20, v21}];

        v25 = *MEMORY[0x1E69DB600];
        v26 = [v23 systemYellowColor];
        [v18 addAttribute:v25 value:v26 range:{v20, v21}];

        sub_1D8142BE8();
        *a1 = v18;
        *(a1 + 8) = v33;
        *(a1 + 24) = v29;
        *(a1 + 32) = v8;
        *(a1 + 40) = v32;
        *(a1 + 48) = 1;
        *(a1 + 56) = v34;
        *(a1 + 64) = v28;
        *(a1 + 72) = v27;
        *(a1 + 80) = v30;
        *(a1 + 88) = v31;
        return;
      }

      goto LABEL_12;
    }

LABEL_10:
    OUTLINED_FUNCTION_3_136();
    return;
  }

  v8 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    if ((v8 & 0x8000000000000000) == 0 && v8 < *(v5 + 16))
    {
      v33 = *(v1 + 8);
      v9 = v5 + 16 * v8;
      v10 = (v9 + 32);
      v11 = (v9 + 40);
      v12 = *(v1 + 40);
      v32 = v12;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1D8156B2C(uint64_t a1@<X8>)
{
  if (*(v1 + 48) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 32);
  v4 = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = *(v1 + 40);
      if (v4 < *(v5 + 16))
      {
        v22 = *(v1 + 8);
        v6 = *(v1 + 24);
        v7 = *(v1 + 64);
        v21 = *(v1 + 56);
        v8 = v5 + 16 * v4;
        v18 = *(v8 + 40);
        v19 = *(v8 + 32);
        v9 = *(v1 + 72);
        v10 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        OUTLINED_FUNCTION_0_242();
        sub_1D8156D00();
        OUTLINED_FUNCTION_0_242();
        sub_1D8156D00();
        v11 = v22;

        v20 = v7;
        sub_1D8190DB4();
        v17 = v9;
        v12 = [v10 initWithAttributedString_];
        if (v4 < *(v5 + 16))
        {
          v13 = v12;
          OUTLINED_FUNCTION_0_242();
          sub_1D8142BE8();
          v14 = objc_opt_self();
          v15 = [v14 blackColor];
          OUTLINED_FUNCTION_1_175();

          v16 = [v14 systemYellowColor];
          OUTLINED_FUNCTION_1_175();

          *a1 = v13;
          *(a1 + 8) = v22;
          *(a1 + 24) = v6;
          *(a1 + 32) = v4;
          *(a1 + 40) = v5;
          *(a1 + 48) = 1;
          *(a1 + 56) = v21;
          *(a1 + 64) = v20;
          *(a1 + 72) = v17;
          *(a1 + 80) = v19;
          *(a1 + 88) = v18;
          return;
        }

        goto LABEL_9;
      }
    }

LABEL_7:
    OUTLINED_FUNCTION_3_136();
    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_1D8156D0C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v43 = *(v1 + 16);
  v44 = *(v1 + 32);
  v39 = *(v1 + 48);
  v40 = *(v1 + 56);
  v41 = *(v1 + 64);
  v42 = *(v1 + 40);
  v5 = *(v1 + 72);
  v6 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  sub_1D8190DB4();
  v7 = v3;

  v8 = [v6 initWithAttributedString_];
  v9 = *MEMORY[0x1E69DB648];
  sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  v10 = OUTLINED_FUNCTION_2_160();
  v11 = v8;
  [v11 addAttribute:v9 value:v10 range:{0, objc_msgSend(v11, sel_length)}];

  v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v13 = [v12 &selRef:v7 setPrefersScrollingExpandsWhenScrolledToEdge:?];
  v14 = OUTLINED_FUNCTION_2_160();
  v15 = v13;
  v16 = v42;
  v17 = v15;
  v18 = v44;
  v19 = [v15 length];
  v20 = v9;
  v21 = v4;
  [v17 addAttribute:v20 value:v14 range:{0, v19}];

  v22 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  sub_1D8156D00();
  v23 = [v22 initWithAttributedString_];
  v25 = v40;
  v24 = v41;
  v26 = v43;
  v27 = v23;
  if (v39 != 1)
  {
    goto LABEL_5;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v44 < *(v42 + 16))
  {
    v28 = v42 + 16 * v44;
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    v31 = *MEMORY[0x1E69DB650];
    v32 = objc_opt_self();
    v33 = [v32 blackColor];
    [v27 addAttribute:v31 value:v33 range:{v29, v30}];

    v34 = *MEMORY[0x1E69DB600];
    v35 = v32;
    v16 = v42;
    v36 = [v35 systemYellowColor];
    v37 = v34;
    v18 = v44;
    v38 = v30;
    v21 = v4;
    [v27 addAttribute:v37 value:v36 range:{v29, v38}];

    v26 = v43;
    v25 = v40;
    v24 = v41;
LABEL_5:
    *a1 = v27;
    *(a1 + 8) = v17;
    *(a1 + 16) = v26;
    *(a1 + 24) = v21;
    *(a1 + 32) = v18;
    *(a1 + 40) = v16;
    *(a1 + 48) = v39;
    *(a1 + 56) = v25;
    *(a1 + 64) = v24;
    *(a1 + 72) = v11;
    return;
  }

  __break(1u);
}

uint64_t sub_1D8157008()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  v3 = 0xE000000000000000;
  if (!v2)
  {
    return 0;
  }

  if (*(v0 + 48))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 32);
  }

  v5 = *v4;
  v6 = sub_1D81925B4();
  MEMORY[0x1DA713260](v6);

  MEMORY[0x1DA713260](0x686374614D20, 0xE600000000000000);
  if (*(v5 + 16) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 29541;
  }

  if (*(v5 + 16) != 1)
  {
    v3 = 0xE200000000000000;
  }

  MEMORY[0x1DA713260](v7, v3);

  return 0;
}

void sub_1D81570F4(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v48 = *a1;
  v9 = *(a1 + 2);
  v10 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v11 = v48;

  sub_1D8190DB4();
  v12 = sub_1D81574C4(a2, a3, 1);
  v45 = a2;
  v46 = a5;
  v47 = a3;
  v13 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v14 = v11;
  v15 = [v13 initWithAttributedString_];

  v16 = v15;
  v17 = [v16 string];
  if (!v17)
  {
    sub_1D8190F14();
    v17 = sub_1D8190EE4();
  }

  v51 = v16;
  v44 = v12;
  v18 = [v12 matchesInString:v17 options:8 range:{0, objc_msgSend(v16, sel_length)}];

  sub_1D7E0A1A8(0, &qword_1ECA11E70);
  v19 = sub_1D8191314();

  v20 = sub_1D7E36AB8(v19);
  if (v20)
  {
    v21 = v20;
    if (v20 < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    v22 = 0;
    v23 = *MEMORY[0x1E69DB600];
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA714420](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      ++v22;
      v26 = a4;
      v27 = [v25 range];
      [v51 addAttribute:v23 value:v26 range:{v27, v28}];
    }

    while (v21 != v22);
  }

  v29 = v51;

  v30 = sub_1D7E36AB8(v19);
  if (!v30)
  {
    v43 = v51;

    v34 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *v46 = v29;
    *(v46 + 8) = v48;
    *(v46 + 24) = v9;
    *(v46 + 32) = v34;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = v45;
    *(v46 + 64) = v47;
    *(v46 + 72) = v29;
    return;
  }

  v31 = v30;
  v52 = MEMORY[0x1E69E7CC0];
  v32 = v51;
  sub_1D7F090EC();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v52;
    v49 = v19 & 0xC000000000000001;
    v50 = a4;
    v35 = v19;
    do
    {
      if (v49)
      {
        v36 = MEMORY[0x1DA714420](v33, v19);
      }

      else
      {
        v36 = *(v19 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = [v36 range];
      v40 = v39;

      v41 = *(v52 + 16);
      if (v41 >= *(v52 + 24) >> 1)
      {
        sub_1D7F090EC();
      }

      ++v33;
      *(v52 + 16) = v41 + 1;
      v42 = v52 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v40;
      v19 = v35;
    }

    while (v31 != v33);

    v29 = v51;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

id sub_1D81574C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D8190EE4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D818E544();

    swift_willThrow();
  }

  return v6;
}

void MotionManager.add(observer:view:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  sub_1D81585B8(a1, a3, v3, ObjectType, a2);
}

uint64_t MotionManager.remove(observer:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D81588EC(a1, v1);
}

uint64_t MotionManager.motionEnabled.getter()
{
  if ([*(v0 + 32) isDeviceMotionAvailable])
  {
    v1 = sub_1D815772C() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1D8157694()
{
  type metadata accessor for MotionManager();
  swift_allocObject();
  result = sub_1D8157B44();
  qword_1EDBBB708 = result;
  return result;
}

uint64_t static MotionManager.shared.getter()
{
  if (qword_1EDBBB700 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D815772C()
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 1;
  }

  v1 = [objc_opt_self() processInfo];
  v0 = [v1 isLowPowerModeEnabled];

  return v0;
}

uint64_t sub_1D8157794()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v3 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MotionDisplayLinkAnimator();
    swift_allocObject();
    v1 = sub_1D81582F8(sub_1D8158BBC, v3);
    *(v2 + 24) = v1;
  }

  return v1;
}

void sub_1D815784C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + 32) deviceMotion];
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_self();
      [v4 begin];
      [v4 setDisableActions_];
      v5 = v3;

      sub_1D8157934(v6, v5, v1);
      [v4 commit];
    }

    else
    {
    }
  }
}

uint64_t sub_1D8157934(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1D7E36AB8(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    sub_1D8190DB4();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v6);
      }

      else
      {
      }

      v10 = sub_1D8047EA0(a2);
      if (v10)
      {
        sub_1D8047FB0(a3, v10);
      }
    }
  }

  v11 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D7E36AB8(v11);
  result = sub_1D8190DB4();
  for (j = 0; v12 != j; ++j)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA714420](j, v11);
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }
    }

    if (__OFADD__(j, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      result = sub_1D8192284();
    }

    else
    {
    }
  }

  *(a1 + 16) = v14;

  if (!sub_1D7E36AB8(*(a1 + 16)))
  {
    sub_1D8157EB8();
  }
}

uint64_t sub_1D8157B44()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + 32) = v1;
  if ([v1 isDeviceMotionAvailable])
  {
    [*(v0 + 32) setDeviceMotionUpdateInterval_];
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:sel_handleReduceMotionChanged name:*MEMORY[0x1E69DD918] object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:sel_handleReduceMotionChanged name:*MEMORY[0x1E696A7D8] object:0];

  v5 = [v2 defaultCenter];
  [v5 addObserver:v0 selector:sel_scenDidEnterBackground name:*MEMORY[0x1E69DE348] object:0];

  v6 = [v2 defaultCenter];
  [v6 addObserver:v0 selector:sel_sceneDidBecomeActive name:*MEMORY[0x1E69DE338] object:0];

  return v0;
}

uint64_t MotionManager.deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  OUTLINED_FUNCTION_0_243(v2, v3, v4, *MEMORY[0x1E69DD918]);

  v5 = [v1 defaultCenter];
  OUTLINED_FUNCTION_0_243(v5, v6, v7, *MEMORY[0x1E696A7D8]);

  v8 = [v1 defaultCenter];
  OUTLINED_FUNCTION_0_243(v8, v9, v10, *MEMORY[0x1E69DE348]);

  v11 = [v1 defaultCenter];
  OUTLINED_FUNCTION_0_243(v11, v12, v13, *MEMORY[0x1E69DE338]);

  return v0;
}

uint64_t MotionManager.__deallocating_deinit()
{
  MotionManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8157E18()
{
  v1 = *(v0 + 32);
  if (([v1 isDeviceMotionActive] & 1) == 0 && sub_1D8157F4C())
  {
    [v1 startDeviceMotionUpdates];
    sub_1D8157794();
    v2 = sub_1D81581B8();
    [v2 setPaused_];
  }
}

id sub_1D8157EB8()
{
  v1 = *(v0 + 32);
  result = [v1 isDeviceMotionActive];
  if (result)
  {
    sub_1D8157794();
    v3 = sub_1D81581B8();
    [v3 setPaused_];

    return [v1 stopDeviceMotionUpdates];
  }

  return result;
}

BOOL sub_1D8157F4C()
{
  if (sub_1D815772C())
  {
    return 0;
  }

  swift_beginAccess();
  return sub_1D7E36AB8(*(v0 + 16)) != 0;
}

uint64_t sub_1D8157F9C()
{

  sub_1D818FD04();
}

void sub_1D8157FE8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = sub_1D7E36AB8(v2);
  sub_1D8190DB4();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA714420](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v5 = MotionManager.motionEnabled.getter();
    sub_1D804804C(a1, v5 & 1);
  }

  if (sub_1D815772C())
  {
    sub_1D8157EB8();
  }

  else
  {
    sub_1D8157E18();
  }
}

void sub_1D8158128()
{
  if (sub_1D8157F4C())
  {

    sub_1D8157E18();
  }
}

uint64_t sub_1D8158174(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

id sub_1D81581B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1D7E0A1A8(0, &qword_1EDBB3210);
    v4 = type metadata accessor for MotionDisplayLinkAnimator.Container();
    swift_allocObject();

    v9[3] = v4;
    v9[0] = sub_1D8158478();
    v5 = sub_1D8158278(v9, sel_updateWithDisplayLink_);
    v6 = *(v0 + 16);
    *(v3 + 16) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1D8158278(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D8192614();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t sub_1D81582F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  v3 = sub_1D81581B8();
  [v3 setPaused_];

  v4 = *(v2 + 16);
  sub_1D8191A04();
  [v4 setPreferredFrameRateRange_];

  v5 = *(v2 + 16);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainRunLoop];
  [v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

  return v2;
}

uint64_t sub_1D8158400()
{
  v1 = sub_1D81581B8();
  [v1 invalidate];

  return v0;
}

uint64_t sub_1D8158448()
{
  sub_1D8158400();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8158478()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1D81584BC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);

    v1(v2);
  }

  return result;
}

uint64_t sub_1D8158580()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1D81585B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D8190C74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v13 = sub_1D8191AB4();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1D8190CA4();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (![*(a3 + 32) isDeviceMotionAvailable])
    {
      (*(a5 + 16))(a3, 0, a4, a5);
      return;
    }

    v24 = a2;
    v25 = a4;
    v26 = a5;
    swift_beginAccess();
    v15 = *(a3 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    v16 = sub_1D7E36AB8(v15);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {

        *(a3 + 16) = v27;

        type metadata accessor for MotionManagerObserverProxy();
        v20 = swift_allocObject();
        swift_unknownObjectRetain();
        v21 = v24;
        sub_1D8048154(a1, v21, v20, v25, v26);
        v22 = swift_beginAccess();
        MEMORY[0x1DA713500](v22);
        sub_1D7E2893C(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1D8191404();
        swift_endAccess();
        sub_1D8157E18();
        return;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v19 = Strong, swift_unknownObjectRelease(), v19 == a1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D81588EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8190C74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v7 = sub_1D8191AB4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D8190CA4();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v10 = *(a2 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    v11 = sub_1D7E36AB8(v10);
    result = sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        *(a2 + 16) = v15;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1DA714420](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v14 = Strong, swift_unknownObjectRelease(), v14 == a1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        result = sub_1D8192284();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

id GutterView.remove(observer:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D8159004(a1, v1);
}

id GutterView.add(observer:silent:)(void *a1, char a2)
{
  swift_getObjectType();

  return sub_1D8159020(a1, a2, v2);
}

id GutterView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

Swift::Void __swiftcall GutterView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC5TeaUI10GutterView_boundsObservers] allObjects];
  sub_1D815908C();
  v2 = sub_1D8191314();

  v3 = sub_1D7E36AB8(v2);
  if (!v3)
  {
LABEL_8:

    return;
  }

  v4 = v3;
  if (v3 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v6 gutterViewBoundsDidChange];
      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  __break(1u);
}

id GutterView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI10GutterView_boundsObservers;
  *(v0 + v2) = [objc_opt_self() hashTableWithOptions_];
  v3 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
}

id GutterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GutterView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI10GutterView_boundsObservers;
  *&v1[v4] = [objc_opt_self() hashTableWithOptions_];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id GutterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8159020(void *a1, char a2, uint64_t a3)
{
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI10GutterView_boundsObservers) addObject_];
  if ((a2 & 1) == 0)
  {

    return [a1 gutterViewBoundsDidChange];
  }

  return result;
}

unint64_t sub_1D815908C()
{
  result = qword_1ECA11E80;
  if (!qword_1ECA11E80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA11E80);
  }

  return result;
}

uint64_t ShortcutItemHandlerMatch.pattern.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D7E19F24(v2);
}

uint64_t SwipeAction.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t SwipeAction.accessibilityLabelBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SwipeAction.init<A>(command:context:backgroundColor:image:accessibilityLabel:style:actionBlockRunOption:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v41 = *(*a1 + 88);
  v16 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v39 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  LOBYTE(v21) = *a7;
  LOBYTE(a7) = *a8;
  v23 = a1[2];
  v24 = a1[3];
  v36 = a1;
  v42 = v24;
  *a9 = v23;
  *(a9 + 8) = v24;
  *(a9 + 64) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  *(a9 + 16) = sub_1D7F8DD7C;
  *(a9 + 24) = v25;
  *(a9 + 65) = a7;
  v26 = swift_allocObject();
  *(v26 + 16) = v38;
  *(a9 + 88) = sub_1D80A5D20;
  *(a9 + 96) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v40;
  *(a9 + 32) = sub_1D815A77C;
  *(a9 + 40) = v27;
  (*(v18 + 16))(v22, a2, v16);
  v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v41;
  *(v29 + 24) = a1;
  v31 = *(v18 + 32);
  v31(v29 + v28, v22, v16);
  *(a9 + 48) = sub_1D815946C;
  *(a9 + 56) = v29;
  v31(v22, v37, v16);
  v32 = swift_allocObject();
  v33 = v36;
  *(v32 + 16) = v30;
  *(v32 + 24) = v33;
  v31(v32 + v28, v22, v16);
  *(a9 + 72) = sub_1D802EBF0;
  *(a9 + 80) = v32;
  sub_1D8190DB4();
}

uint64_t sub_1D815946C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D8191E84() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1D802EC80(a1, a2, v6, v7);
}

uint64_t objectdestroy_8Tm_3()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1D8191E84() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t SwipeAction.init<A, B>(command:context:backgroundColor:image:accessibilityLabelValue:style:actionBlockRunOption:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v61 = a3;
  v70 = a2;
  v7 = *a1;
  v8 = *(*a1 + 136);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v53 - v15;
  v62 = *(v17 + 16);
  v19 = *(v18 + 16);
  v21 = *(v20 + 24);
  v58 = *(v20 + 16);
  v56 = v20;
  v57 = v21;
  v23 = *v22;
  v59 = *v24;
  v60 = v23;
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v65 = v19;
  v66 = v27;
  *a5 = v26;
  *(a5 + 8) = v27;
  v28 = *(v10 + 16);
  v71 = v10 + 16;
  v73 = v28;
  (v28)(v16, v14);
  v29 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v69 = *(v10 + 80);
  v63 = v29 + v12;
  v30 = (v29 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v31[2] = v8;
  v72 = *(v7 + 144);
  v31[3] = v72;
  v68 = *(v7 + 152);
  v31[4] = v68;
  v31[5] = a1;
  v67 = *(v10 + 32);
  v54 = a1;
  v55 = v10 + 32;
  v53[1] = v29;
  OUTLINED_FUNCTION_11_3();
  v32();
  v33 = v31 + v30;
  *v33 = *v56;
  v34 = v57;
  *(v33 + 2) = v58;
  *(v33 + 3) = v34;
  *(a5 + 16) = sub_1D8159C70;
  *(a5 + 24) = v31;
  LOBYTE(v33) = v59;
  *(a5 + 64) = v60;
  *(a5 + 65) = v33;
  v35 = v70;
  v73(v16, v70, v8);
  v36 = swift_allocObject();
  v37 = v72;
  v36[2] = v8;
  v36[3] = v37;
  v38 = v68;
  v36[4] = v68;
  v36[5] = a1;
  OUTLINED_FUNCTION_11_3();
  v39 = v67;
  v67();
  v40 = v36 + v30;
  v41 = v62;
  *v40 = *v61;
  *(v40 + 2) = v41;
  *(a5 + 88) = sub_1D8159CE0;
  *(a5 + 96) = v36;
  v73(v16, v35, v8);
  v42 = swift_allocObject();
  v43 = v72;
  v42[2] = v8;
  v42[3] = v43;
  v42[4] = v38;
  v44 = v54;
  v42[5] = v54;
  OUTLINED_FUNCTION_11_3();
  v39();
  v45 = v42 + v30;
  v46 = v65;
  *v45 = *v64;
  *(v45 + 2) = v46;
  *(a5 + 32) = sub_1D815A044;
  *(a5 + 40) = v42;
  v73(v16, v70, v8);
  v47 = swift_allocObject();
  v47[2] = v8;
  v47[3] = v43;
  v48 = v68;
  v47[4] = v68;
  v47[5] = v44;
  OUTLINED_FUNCTION_11_3();
  v49 = v67;
  v67();
  *(a5 + 48) = sub_1D815A258;
  *(a5 + 56) = v47;
  (v49)(v16, v70, v8);
  v50 = swift_allocObject();
  v51 = v72;
  v50[2] = v8;
  v50[3] = v51;
  v50[4] = v48;
  v50[5] = v44;
  OUTLINED_FUNCTION_11_3();
  v49();
  *(a5 + 72) = sub_1D815A4CC;
  *(a5 + 80) = v50;
  swift_retain_n();
  return sub_1D8190DB4();
}

uint64_t sub_1D81599F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v21 = a4;
  v22 = a2;
  v9 = *a3;
  v10 = *(*a3 + 136);
  v23 = sub_1D8191E84();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v21 - v12;
  v14 = *(v9 + 144);
  v24 = sub_1D8191E84();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v21 - v16;
  ObjectType = swift_getObjectType();
  (*(*(v10 - 8) + 16))(v13, v21, v10);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  (*(v22 + 80))(a3, v13, v10, v14, *(v9 + 152), ObjectType);
  (*(v11 + 8))(v13, v23);
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v19 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v17, v19, &v33);
  (*(v15 + 8))(v17, v24);
  return v33;
}

uint64_t sub_1D8159D0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t), uint64_t (*a9)(char *, uint64_t))
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v28 = a4;
  v29 = a2;
  v36 = a9;
  v10 = *a3;
  v11 = *(*a3 + 136);
  v30 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *(v10 + 144);
  v31 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  ObjectType = swift_getObjectType();
  (*(*(v11 - 8) + 16))(v16, v28, v11);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v11);
  v24 = *(v10 + 152);
  (*(v29 + 80))(a3, v16, v11, v17, v24, ObjectType);
  (*(v13 + 8))(v16, v30);
  v37 = v32;
  v38 = v33;
  v39 = v34;
  v25 = v35(0, v17, v24);
  v26 = v36(v22, v25);
  (*(v19 + 8))(v22, v31);
  return v26;
}

uint64_t objectdestroy_17Tm_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);

  return swift_deallocObject();
}

uint64_t sub_1D815A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 136);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t sub_1D815A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a4 + 136);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  ObjectType = swift_getObjectType();
  (*(*(v9 - 8) + 16))(v13, a5, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  (*(a2 + 8))(a4, v13, a3, v9, ObjectType, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t objectdestroy_23Tm_3()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  return swift_deallocObject();
}

unint64_t sub_1D815A50C()
{
  result = qword_1ECA11E88;
  if (!qword_1ECA11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E88);
  }

  return result;
}

unint64_t sub_1D815A564()
{
  result = qword_1ECA11E90;
  if (!qword_1ECA11E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11E90);
  }

  return result;
}

uint64_t sub_1D815A5B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D815A5F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D815A668(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1D815A794(uint64_t a1, double a2, double a3)
{
  if (*(v3 + OBJC_IVAR____TtC5TeaUI15CardDimmingView_preventTouches) == 1)
  {
    return v3;
  }

  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v8, sel_hitTest_withEvent_, a1, a2, a3);
}

id sub_1D815A894(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC5TeaUI15CardDimmingView_preventTouches] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1D815A92C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC5TeaUI15CardDimmingView_preventTouches] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t MenuBarButtonItem.barButtonItemIdentifier.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  sub_1D8190DB4();
  return v1;
}

uint64_t MenuBarButtonItem.state.getter()
{
  OUTLINED_FUNCTION_25_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_0();
  return v0();
}

uint64_t sub_1D815AB24(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MenuBarButtonItem.state.setter(v5);
}

uint64_t MenuBarButtonItem.state.setter(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v7 = sub_1D8191E84();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - v8;
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - v10;
  sub_1D815B184();
  v11 = *v1;
  v12 = *v5;
  v54 = *(v2 + *((*v5 & v11) + 0x78) + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v2 + *((v12 & v11) + 0x88));
  v15 = *((v12 & v11) + 0x90);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v47 = *((v4 & v3) + 0x50);
  v17[2] = v47;
  v17[3] = v6;
  v17[4] = *((v4 & v3) + 0x60);
  v18 = *((v4 & v3) + 0x68);
  v17[5] = v18;
  v17[6] = v16;

  v48 = v15;
  v49 = v14;
  v51 = ObjectType;
  v19 = ObjectType;
  v20 = v54;
  CommandCenterType.canExecute<A>(command:context:closure:)(v14, v2 + v15, sub_1D80B2F38, v17, v19, v54);

  __swift_project_boxed_opaque_existential_1(&v59, v62);
  sub_1D818ED84();
  __swift_destroy_boxed_opaque_existential_1Tm(&v59);
  v21 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  v22 = *v21;
  if (*v21)
  {
    v23 = v21[16];
    v24 = *(v21 + 1);
    v59 = v22;
    v60 = v24;
    LOBYTE(v61) = v23 & 1;
    v25 = type metadata accessor for StateCommandValue();
    v26 = v55;
    StateCommandValue.value(for:)(v55, v25, &v58);
    if (v58 != 1)
    {
LABEL_3:
      v27 = *MEMORY[0x1E69DDA08];
      v28 = [v2 accessibilityTraits];
      v29 = -1;
      if ((v28 & v27) != 0)
      {
        v29 = ~v27;
      }

      v30 = v29 & v28;
      goto LABEL_14;
    }
  }

  else
  {
    v31 = v50;
    v33 = v52;
    v32 = v53;
    (*(v20 + 80))(v49, v2 + v48, v47, v6, v18, v51, v20);
    if (__swift_getEnumTagSinglePayload(v32, 1, v6) == 1)
    {
      v34 = *(v56 + 8);
      v35 = v57;
      v34(v55, v57);
      return (v34)(v53, v35);
    }

    (*(v33 + 32))(v31, v53, v6);
    (*(v18 + 8))(&v59, v6, v18);
    (*(v33 + 8))(v31, v6);
    v26 = v55;
    if ((v59 & 0xFE) == 2 || (v59 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v37 = *MEMORY[0x1E69DDA08];
  v38 = [v2 accessibilityTraits];
  if ((v37 & ~v38) != 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  v30 = v39 | v38;
LABEL_14:
  [v2 setAccessibilityTraits_];
  v40 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0));
  v41 = *v40;
  if (*v40)
  {
    v43 = v40[2];
    v42 = v40[3];
    v44 = v40[1];
    v59 = *v40;
    v60 = v44;
    v61 = v43;
    v62 = v42;
    v45 = type metadata accessor for StateCommandValue();

    sub_1D8190DB4();
    StateCommandValue.value(for:)(v26, v45, &v58);
    v46 = sub_1D8190EE4();

    [v2 setAccessibilityLabel_];

    sub_1D80696FC(v41);
  }

  return (*(v56 + 8))(v26, v57);
}

void sub_1D815B184()
{
  if (sub_1D8190B24())
  {

    sub_1D815BA0C();
  }

  else
  {

    sub_1D815BD7C();
  }
}

void (*MenuBarButtonItem.state.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D8191E84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  MenuBarButtonItem.state.getter();
  return sub_1D815B2C0;
}

void sub_1D815B2C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    MenuBarButtonItem.state.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MenuBarButtonItem.state.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id MenuBarButtonItem.init(identifier:commandCenter:commandSource:command:context:contextMenu:image:symbolConfiguration:stateAccessibilityLabel:stateAccessibilitySelected:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10, __int128 *a11, uint64_t *a12)
{
  ObjectType = swift_getObjectType();
  v17 = *MEMORY[0x1E69E7D40];
  v46 = *(a9 + 2);
  v49 = a12[1];
  v51 = *a12;
  v48 = *(a12 + 16);
  v18 = &v12[*((*MEMORY[0x1E69E7D40] & *v12) + 0x70)];
  *v18 = a1;
  *(v18 + 1) = a2;
  OUTLINED_FUNCTION_1_176();
  v20 = &v12[*(v19 + 120)];
  *v20 = a3;
  *(v20 + 1) = a4;
  OUTLINED_FUNCTION_1_176();
  *&v12[*(v21 + 128)] = a5;
  OUTLINED_FUNCTION_1_176();
  *&v12[*(v22 + 136)] = a6;
  OUTLINED_FUNCTION_1_176();
  v24 = *(v23 + 144);
  v26 = v25;
  v53 = *((v17 & v25) + 0x50);
  v57 = sub_1D8191E84();
  v58 = *(v57 - 8);
  v45 = *a11;
  v44 = *a9;
  (*(v58 + 16))(&v12[v24], a7, v57);
  OUTLINED_FUNCTION_1_176();
  *&v12[*(v27 + 184)] = a8;
  OUTLINED_FUNCTION_1_176();
  v29 = &v12[*(v28 + 152)];
  *v29 = v44;
  *(v29 + 2) = v46;
  OUTLINED_FUNCTION_1_176();
  *&v12[*(v30 + 176)] = a10;
  OUTLINED_FUNCTION_1_176();
  v32 = &v12[*(v31 + 160)];
  *v32 = v45;
  *(v32 + 1) = v33;
  OUTLINED_FUNCTION_1_176();
  v35 = &v12[*(v34 + 168)];
  *v35 = v51;
  *(v35 + 1) = v49;
  v35[16] = v48;
  v63.receiver = v12;
  v63.super_class = ObjectType;
  swift_unknownObjectRetain();

  v55 = a10;
  v36 = objc_msgSendSuper2(&v63, sel_init);
  v52 = swift_getObjectType();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v53;
  v39 = *((v17 & v26) + 0x58);
  v38[3] = v39;
  v40 = *((v17 & v26) + 0x60);
  v38[4] = v40;
  v41 = *((v17 & v26) + 0x68);
  v38[5] = v41;
  v38[6] = v37;
  v50 = *(a4 + 88);
  v42 = v36;

  v50(v62, a6, a7, sub_1D815C8BC, v38, v53, v39, v40, v41, v52, a4);

  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  sub_1D818ED84();

  swift_unknownObjectRelease();
  (*(v58 + 8))(a7, v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return v42;
}

void sub_1D815B830(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    MenuBarButtonItem.state.setter(v5);
  }
}

void sub_1D815BA0C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = sub_1D8191E84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = (v0 + *((v4 & v2) + 0x98));
  v11 = v10[1];
  v12 = v10[2];
  aBlock = *v10;
  v27 = v11;
  v28 = v12;

  v13 = v12;
  MenuBarButtonItem.state.getter();
  sub_1D7E0A1A8(255, &qword_1EDBB2F60);
  v14 = *((v4 & v2) + 0x68);
  v15 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v9, v15, &v32);
  (*(v7 + 8))(v9, v6);

  v16 = v32;
  v17 = [v32 imageByApplyingSymbolConfiguration_];

  [v1 setImage_];
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  sub_1D7E49240();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D81A50A0;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = *((v4 & v2) + 0x50);
  v21[3] = v5;
  v21[4] = *((v4 & v2) + 0x60);
  v21[5] = v14;
  v21[6] = v20;
  v30 = sub_1D815CA10;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7F65060;
  v29 = &block_descriptor_84;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 elementWithUncachedProvider_];
  _Block_release(v22);
  *(v18 + 32) = v23;
  isa = UIMenu.init(children:)(v18).super.super.isa;
  [v1 setMenu_];
}

uint64_t sub_1D815BD7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = sub_1D8191E84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = sub_1D815C28C(v0);
  v11 = (v0 + *((*v3 & *v0) + 0x98));
  v12 = v11[1];
  v13 = v11[2];
  v31 = *v11;
  v32 = v12;
  v33 = v13;

  v14 = v13;
  MenuBarButtonItem.state.getter();
  sub_1D7E0A1A8(255, &qword_1EDBB2F60);
  v30 = *((v4 & v2) + 0x68);
  v15 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v9, v15, &v34);
  (*(v7 + 8))(v9, v6);

  v16 = v34;
  v17 = [v34 imageByApplyingSymbolConfiguration_];

  v18 = v10;
  [v18 setImage:v17 forState:0];
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  isa = UIMenu.init(children:)(MEMORY[0x1E69E7CC0]).super.super.isa;
  [v18 setMenu_];

  [v18 setShowsMenuAsPrimaryAction_];
  v20 = OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation;
  v21 = *&v18[OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation];

  v22 = *&v18[v20];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = *((v4 & v2) + 0x50);
  v25[3] = v5;
  v25[4] = *((v4 & v2) + 0x60);
  v25[5] = v30;
  v25[6] = v23;
  v25[7] = v24;
  v26 = v22;
  v27 = sub_1D7FB685C(sub_1D815CA20, v25);
}

uint64_t sub_1D815C0EC(void (*a1)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E69E7D40];

    v5 = v3;
    v6 = sub_1D810DEDC();

    type metadata accessor for ContextMenu();
    swift_allocObject();
    v7 = sub_1D8190DB4();
    if (ContextMenu.init(groups:activityItemConfiguration:)(v7))
    {
      v8 = *(v5 + *((*v4 & *v5) + 0x78) + 8);
      v9 = swift_unknownObjectRetain();
      v10 = ContextMenu.build(commandCenter:source:)(v9, v8, v6);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    a1(v10);
  }

  return result;
}

id sub_1D815C28C(void *a1)
{
  v2 = [a1 customView];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  type metadata accessor for ActionButton();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_4:
    v4 = [objc_allocWithZone(type metadata accessor for ActionButton()) init];
    [a1 setCustomView_];
  }

  return v4;
}

void sub_1D815C324()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E69E7D40];

      v5 = [v1 customView];
      v6 = sub_1D810DE04();

      type metadata accessor for ContextMenu();
      swift_allocObject();
      v7 = sub_1D8190DB4();
      if (ContextMenu.init(groups:activityItemConfiguration:)(v7))
      {
        v8 = *(v1 + *((*v4 & *v1) + 0x78) + 8);
        v9 = swift_unknownObjectRetain();
        v10 = ContextMenu.build(commandCenter:source:)(v9, v8, v6);

        swift_unknownObjectRelease();
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
      v11 = v3;
      isa = UIMenu.init(children:)(v10).super.super.isa;
      [v11 setMenu_];

      v1 = isa;
    }
  }
}

id MenuBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MenuBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D815C5DC(uint64_t a1)
{

  OUTLINED_FUNCTION_2_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_5();

  OUTLINED_FUNCTION_2_5();

  OUTLINED_FUNCTION_2_5();
  v3 = *(v2 + 144);
  v4 = sub_1D8191E84();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  OUTLINED_FUNCTION_2_5();

  OUTLINED_FUNCTION_2_5();
  sub_1D80696FC(*(a1 + *(v6 + 160)));
  OUTLINED_FUNCTION_2_5();
  sub_1D7E0E10C(*(a1 + *(v7 + 168)));
  OUTLINED_FUNCTION_2_5();

  OUTLINED_FUNCTION_2_5();
}

Swift::Void __swiftcall MenuBarButtonItem.recolor(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  if ((sub_1D8190B24() & 1) == 0)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
    v4 = *(v1 + v3);
    sub_1D7E0A1A8(0, &qword_1EDBB3050);
    v5 = v4;
    sub_1D8190DB4();
    v6 = sub_1D806A548();
    v7 = [v5 configurationByApplyingConfiguration_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;

    sub_1D815B184();
  }
}

uint64_t sub_1D815C8CC()
{
  result = sub_1D8191E84();
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

uint64_t Radar.component.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D809E714(v2, v3);
}

uint64_t Radar.title.getter()
{
  v1 = *(v0 + 48);
  sub_1D8190DB4();
  return v1;
}

uint64_t Radar.description.getter()
{
  v1 = *(v0 + 72);
  sub_1D8190DB4();
  return v1;
}

__n128 Radar.init(component:title:includeDevicePrefixInTitle:description:attachments:diagnostics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a8;
  v10 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v10;
  result = *(a1 + 32);
  *(a9 + 32) = result;
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v9;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI14RadarComponentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D815CB0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1D815CB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CardNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CardNavigationController.__allocating_init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithRootViewController:a1 navigationBarClass:ObjCClassFromMetadata];

  return v5;
}

id CardNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id CardNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D815CF04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D818EF94();
  if (*(a2 + 16) && (v5 = sub_1D7E11428(v3, v4), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D815CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D818EF94();
  if (*(a3 + 16) && (v6 = sub_1D7E11428(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1D815D00C(uint64_t a1)
{
  sub_1D815D068();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D815D068()
{
  if (!qword_1ECA11EA8)
  {
    sub_1D7E63050();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11EA8);
    }
  }
}

uint64_t BlueprintItem.hash(into:)()
{
  sub_1D818EF94();
  sub_1D8190FF4();
}

uint64_t BlueprintItem.hashValue.getter()
{
  sub_1D81927E4();
  BlueprintItem.hash(into:)();
  return sub_1D8192824();
}

uint64_t sub_1D815D1C0()
{
  sub_1D81927E4();
  BlueprintItem.hash(into:)();
  return sub_1D8192824();
}

uint64_t BlueprintItem.description.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v5);
  v3(v2);
  return sub_1D8190F84();
}

uint64_t BlueprintItem.isSelectable.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v8[0]);
  v3(v2);
  sub_1D7E0631C(0, qword_1EDBB7610);
  if (OUTLINED_FUNCTION_3_137())
  {
    OUTLINED_FUNCTION_2_162();
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v8, &qword_1ECA0DA98, qword_1EDBB7610);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t BlueprintItem.isDeletable.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v8[0]);
  v3(v2);
  sub_1D7E0631C(0, qword_1EDBB7610);
  if (OUTLINED_FUNCTION_3_137())
  {
    OUTLINED_FUNCTION_2_162();
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v8, &qword_1ECA0DA98, qword_1EDBB7610);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t BlueprintItem.customDiscoveryTitles.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v8[0]);
  v3(v2);
  sub_1D7E0631C(0, qword_1EDBB7610);
  if (OUTLINED_FUNCTION_3_137())
  {
    OUTLINED_FUNCTION_2_162();
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v8, &qword_1ECA0DA98, qword_1EDBB7610);
    sub_1D815D5AC();
    return sub_1D8190D94();
  }

  return v6;
}

unint64_t sub_1D815D5AC()
{
  result = qword_1ECA11EB8;
  if (!qword_1ECA11EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11EB8);
  }

  return result;
}

uint64_t BlueprintItem.keyCommands.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v8[0]);
  v3(v2);
  sub_1D7E0631C(0, qword_1EDBB7610);
  if (OUTLINED_FUNCTION_3_137())
  {
    OUTLINED_FUNCTION_2_162();
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v8, &qword_1ECA0DA98, qword_1EDBB7610);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1D815D714(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SectionFooterViewModel.AttributedText.text.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t SectionFooterViewModel.AttributedText.init(text:color:textAlignment:lineHeightMultiple:tracking:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

TeaUI::SectionFooterViewModel::Icon __swiftcall SectionFooterViewModel.Icon.init(image:tint:)(TeaUI::SectionFooterViewModel::Icon image, UIColor_optional tint)
{
  isa = image.image.super.isa;
  v6 = v2;
  if (tint.value.super.isa)
  {
    v7 = tint.value.super.isa;
    v8 = tint.value.super.isa;
    v9 = 0;
    v10 = UIImage.with(tintColor:size:)(v8, *&v3).super.isa;

    isa = v10;
  }

  *v6 = isa;
  return image;
}

__n128 SectionFooterViewModel.init(prefixText:sectionText:font:icon:separatorColor:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = a2[3];
  v8 = *a4;
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v6;
  *(a6 + 56) = *(a2 + 1);
  *(a6 + 72) = v7;
  result = *(a2 + 2);
  *(a6 + 80) = result;
  *(a6 + 96) = a3;
  *(a6 + 104) = v8;
  *(a6 + 112) = a5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI22SectionFooterViewModelV14AttributedTextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D815D880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1D815D8C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SegmentedViewControllerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D815DA68()
{
  result = qword_1ECA11EC0;
  if (!qword_1ECA11EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11EC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SegmentedViewControllerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MemoryCacheAccessQueue.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  MemoryCacheAccessQueue.init()();
  return v0;
}

uint64_t MemoryCacheAccessQueue.accessValue(block:)()
{
  sub_1D7E1CB70();
  sub_1D8191AC4();
  return v1;
}

uint64_t sub_1D815DC34@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t MemoryCacheAccessQueue.__deallocating_deinit()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocClassInstance();
}

uint64_t MemoryCacheAccessMainWriter.__deallocating_deinit()
{

  OUTLINED_FUNCTION_19();

  return swift_deallocClassInstance();
}

id CurtainViewController.init(view:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CurtainViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  [v3 setView_];

  return v3;
}

id CurtainViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CurtainViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurtainViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PillViewRenderer.__allocating_init(styler:imageRenderer:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1D7E05450(a1, v4 + 16);
  sub_1D7E05450(a2, v4 + 56);
  return v4;
}

uint64_t PillViewRenderer.init(styler:imageRenderer:)(__int128 *a1, __int128 *a2)
{
  sub_1D7E05450(a1, v2 + 16);
  sub_1D7E05450(a2, v2 + 56);
  return v2;
}

void PillViewRenderer.render(model:with:in:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  v9 = type metadata accessor for PillViewImage();
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80D2F8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = *a2;
  v63 = *(a2 + 8);
  v17 = *(a2 + 24);
  v71 = *(a2 + 16);
  v72 = v17;
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v66 = *(a2 + 72);
  v23 = *(a2 + 80);
  v65 = *(a2 + 88);
  v24 = *(a2 + 104);
  v64 = *(a2 + 96);
  v25 = *(a2 + 120);
  v68 = *(a2 + 112);
  v67 = v25;
  v75 = *(a2 + 128);
  [a3 setAlpha_];
  v26 = [a3 layer];
  [v26 setShouldRasterize_];

  v69 = *&a3[OBJC_IVAR____TtC5TeaUI8PillView_iconImageView];
  v60 = v16;
  v27 = v16;
  v28 = v63;
  [v69 setFrame_];
  v29 = *&a3[OBJC_IVAR____TtC5TeaUI8PillView_titleLabel];
  v58 = v18;
  v59 = v19;
  v56 = v20;
  v57 = v21;
  v30 = v21;
  v31 = v64;
  [v29 setFrame_];
  v32 = *&a3[OBJC_IVAR____TtC5TeaUI8PillView_contentView];
  v61 = v22;
  v33 = v22;
  v34 = v66;
  v35 = v23;
  v36 = v23;
  v37 = v65;
  [v32 setFrame_];
  v38 = v24;
  v39 = v24;
  v40 = v68;
  v41 = v67;
  [a3 setFrame_];
  OUTLINED_FUNCTION_3_138();
  v42 = OUTLINED_FUNCTION_2_163();
  (*(v4 + 16))(v32, v73, &selRef_attemptTransitionToState_animated_, v4, v42);
  OUTLINED_FUNCTION_3_138();
  v43 = OUTLINED_FUNCTION_2_163();
  v44 = (*(v4 + 56))(v43);
  [v29 setAttributedText_];

  v45 = OBJC_IVAR____TtC5TeaUI13PillViewModel_icon;
  sub_1D80D2F28(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_1_178();
    sub_1D815E75C(v15, v46);
  }

  else
  {
    v47 = sub_1D803D448();
    OUTLINED_FUNCTION_0_246();
    sub_1D815E75C(v15, v48);
    if (v47)
    {
      OUTLINED_FUNCTION_3_138();
      (*(v4 + 40))(v69, v47, &selRef_attemptTransitionToState_animated_, v4);

      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_3_138();
  (*(v4 + 32))(v69, &selRef_attemptTransitionToState_animated_, v4);
LABEL_6:
  v49 = v70;
  sub_1D80D2F28(a1 + v45, v70);
  if (__swift_getEnumTagSinglePayload(v49, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_1_178();
    sub_1D815E75C(v49, v50);
    v76.value.super.isa = 0;
    sub_1D7E73860(v76);
  }

  else
  {
    v51 = v62;
    sub_1D815E6F8(v49, v62);
    v52 = v5[10];
    v53 = v5[11];
    __swift_project_boxed_opaque_existential_1(v5 + 7, v52);
    *v73 = v60;
    *&v73[1] = v28;
    *&v73[2] = v71;
    *&v73[3] = v72;
    *&v73[4] = v58;
    *&v73[5] = v59;
    *&v73[6] = v56;
    *&v73[7] = v57;
    *&v73[8] = v61;
    *&v73[9] = v34;
    *&v73[10] = v35;
    *&v73[11] = v37;
    *&v73[12] = v31;
    *&v73[13] = v38;
    *&v73[14] = v40;
    v73[15] = v41;
    v74 = v75;
    (*(v53 + 8))(v51, a1, a3, v73, v52, v53);
    OUTLINED_FUNCTION_0_246();
    sub_1D815E75C(v51, v54);
  }
}

uint64_t sub_1D815E6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillViewImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D815E75C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PillViewRenderer.renderSelectionState(model:with:in:isSelected:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  sub_1D80D2F8C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[5];
  v12 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v11);
  v13 = *&a3[OBJC_IVAR____TtC5TeaUI8PillView_contentView];
  v14 = a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size;
  v15 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 32);
  v16 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 16);
  v42 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size);
  v43 = v16;
  LOBYTE(v44) = v15;
  (*(v12 + 24))(v13, &v42, a4, v11, v12);
  v17 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v17);
  (*(v18 + 48))(*&a3[OBJC_IVAR____TtC5TeaUI8PillView_iconImageView], a4, v17, v18);
  v39 = *&a3[OBJC_IVAR____TtC5TeaUI8PillView_titleLabel];
  sub_1D7E0E768((v4 + 2), &v42);
  v19 = *(&v43 + 1);
  v20 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(v14 + 32);
  v24 = *(v14 + 16);
  v40[0] = *v14;
  v40[1] = v24;
  v41 = v23;
  sub_1D80D2F28(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon, v10);
  v25 = type metadata accessor for PillViewImage();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v25);
  v27 = sub_1D80D2F8C;
  if (EnumTagSinglePayload == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1D803D448();
    v27 = type metadata accessor for PillViewImage;
  }

  sub_1D815E75C(v10, v27);
  v29 = (*(v20 + 64))(v22, v21, v40, a4 & 1, v28, v19, v20);

  [v39 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1Tm(&v42);
  v30 = *MEMORY[0x1E69DDA08];
  v31 = [a3 accessibilityTraits];
  v32 = -1;
  if ((v31 & v30) != 0)
  {
    v32 = ~v30;
  }

  v33 = v32 & v31;
  if ((v31 & v30) == v30)
  {
    v34 = 0;
  }

  else
  {
    v34 = v30;
  }

  v35 = v34 | v31;
  if (a4)
  {
    v36 = v35;
  }

  else
  {
    v36 = v33;
  }

  return [a3 setAccessibilityTraits_];
}

id PillViewRenderer.renderDimmedState(model:in:alpha:)(int a1, id a2, double a3)
{
  v5 = [a2 layer];
  v6 = [a2 traitCollection];
  [v6 displayScale];
  v8 = v7;

  [v5 setRasterizationScale_];
  v9 = [a2 layer];
  [v9 setShouldRasterize_];

  return [a2 setAlpha_];
}

uint64_t PillViewRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  return v0;
}

uint64_t PillViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return swift_deallocClassInstance();
}

void *EmptyStateStyler.visualEffect.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id EmptyStateStyler.init(backgroundColor:visualEffect:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = a3;
  a4[4] = a3;
  v4 = a3;

  return v4;
}

uint64_t EmptyStateStyler.init(backgroundColor:visualEffect:titleColor:subtitleColor:imageColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

NSAttributedString __swiftcall EmptyStateStyler.styled(title:subtitle:)(Swift::String_optional title, Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v5 = title.value._object;
  v6 = title.value._countAndFlagsBits;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v7;
  v41 = v8;
  sub_1D808F078(v6, v5, countAndFlagsBits, object);
  v10 = sub_1D8190EE4();

  v11 = sub_1D8190EE4();

  v12 = sub_1D7E0A1A8(0, &qword_1EDBB2F28);
  v13 = sub_1D8191CD4();
  sub_1D7E13760(0, &qword_1EDBBE100, sub_1D7F06938);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D819FAC0;
  *(v14 + 56) = v12;
  v15 = sub_1D808F410();
  *(v14 + 32) = v10;
  *(v14 + 96) = v12;
  *(v14 + 104) = v15;
  *(v14 + 64) = v15;
  *(v14 + 72) = v11;
  v16 = v10;
  v40 = v11;
  v42 = sub_1D8191CE4();

  sub_1D7E0A1A8(0, &unk_1EDBB3058);
  sub_1D8190F14();
  v39 = sub_1D8049DF0();
  sub_1D7E13760(0, &qword_1EDBB2C30, sub_1D7F66EA4);
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAC0;
  v19 = *v18;
  *(inited + 32) = *v18;
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DDDB8];
  v38 = v19;
  v22 = [v20 preferredFontForTextStyle_];
  v23 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = v22;
  v24 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v23;
  *(inited + 72) = v24;
  v25 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  *(inited + 104) = v25;
  *(inited + 80) = v9;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v26 = v24;
  OUTLINED_FUNCTION_0_247();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_247();
  v27 = sub_1D8190D44();

  [v39 addAttributes:v27 range:{0, objc_msgSend(v16, sel_length)}];

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1D819FAC0;
  *(v28 + 32) = v38;
  *(v28 + 40) = [v20 preferredFontForTextStyle_];
  *(v28 + 64) = v23;
  *(v28 + 72) = v26;
  *(v28 + 104) = v25;
  *(v28 + 80) = v41;
  OUTLINED_FUNCTION_0_247();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_247();
  v29 = sub_1D8190D44();

  [v39 addAttributes:v29 range:{objc_msgSend(v16, sel_length), objc_msgSend(v40, sel_length)}];

  v30 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v30 setLineSpacing_];
  [v30 setAlignment_];
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1D819FAB0;
  v32 = *MEMORY[0x1E69DB688];
  *(v31 + 32) = *MEMORY[0x1E69DB688];
  *(v31 + 64) = sub_1D7E0A1A8(0, &unk_1EDBB3088);
  *(v31 + 40) = v30;
  v33 = v32;
  v34 = v30;
  OUTLINED_FUNCTION_0_247();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_247();
  v35 = sub_1D8190D44();

  v36 = v39;
  [v36 addAttributes:v35 range:{0, objc_msgSend(v36, sel_length)}];

  return v36;
}

id sub_1D815F2B8@<X0>(SEL *a1@<X0>, void *a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  v7 = [objc_opt_self() *a1];
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  *a4 = v7;
  a4[1] = 0;
  a4[2] = v8;
  a4[3] = v8;
  a4[4] = v8;
  v9 = v8;

  return v9;
}

id sub_1D815F35C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
  qword_1EDBB1480 = result;
  return result;
}

id sub_1D815F3CC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  qword_1EDBB1498 = result;
  return result;
}

void sub_1D815F43C()
{
  v0 = objc_opt_self();
  if (qword_1EDBB1478 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBB1490;
  v2 = qword_1EDBB1480;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBB1498;
  v4 = [v0 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  qword_1EDBB1470 = v4;
}

uint64_t MenuItemState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D815F644()
{
  result = qword_1ECA11EC8;
  if (!qword_1ECA11EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11EC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MenuItemState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t FullscreenTransitionCoverManager.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FullscreenTransitionCoverManager.init(_:)(a1, a2);
  return v4;
}

void sub_1D815F85C(char a1)
{
  v2 = v1;
  if (*(v1 + 40) & 1) != 0 || (a1)
  {
    v4 = (*(v1 + 16))();
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = *(v1 + 32);
        v7 = objc_opt_self();
        v8 = v6;
        v9 = [v7 blackColor];
        v10 = [v9 colorWithAlphaComponent_];

        [v8 setBackgroundColor_];
        goto LABEL_17;
      }

      sub_1D815FEBC(v4, &v28);
      if (!v29)
      {
        sub_1D8160820(&v28);
        goto LABEL_17;
      }

      sub_1D7E05450(&v28, v30);
      v11 = v31;
      v12 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v12 + 8))(&v28, v11, v12);
      v13 = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          v18 = *(v2 + 32);
          v19 = objc_opt_self();
          v16 = v18;
          v17 = [v19 blackColor];
        }

        else
        {
          if (v28 != 2)
          {
            [*(v2 + 32) setBackgroundColor_];
            sub_1D8160930(v13);
            goto LABEL_16;
          }

          v14 = *(v2 + 32);
          v15 = objc_opt_self();
          v16 = v14;
          v17 = [v15 systemBackgroundColor];
        }
      }

      else
      {
        v20 = *(v2 + 32);
        v21 = objc_opt_self();
        v16 = v20;
        v17 = [v21 whiteColor];
      }

      v22 = v17;
      [v16 setBackgroundColor_];

LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_17:
      v23 = *(v2 + 32);
      v24 = [v5 view];
      if (v24)
      {
        [v24 bounds];
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_2_164(v25, sel_setFrame_);

        v26 = [v5 view];
        if (v26)
        {
          v27 = v26;
          [v26 addSubview_];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t FullscreenTransitionCoverManager.deinit()
{

  return v0;
}

uint64_t FullscreenTransitionCoverManager.__deallocating_deinit()
{
  FullscreenTransitionCoverManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D815FBBC()
{
  *(v0 + 40) = 1;
  if ((*(v0 + 41) & 1) == 0)
  {
    v1 = v0;
    v2 = (*(v0 + 16))();
    if (v2)
    {
      v3 = v2;
      sub_1D815FEBC(v2, &aBlock);
      if (!v23)
      {

        sub_1D8160820(&aBlock);
        return;
      }

      sub_1D7E05450(&aBlock, v26);
      v4 = v27;
      v5 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v5 + 8))(&aBlock, v4, v5);
      v6 = aBlock;
      if (aBlock)
      {
        if (aBlock == 1)
        {
          v11 = *(v1 + 32);
          v12 = objc_opt_self();
          v9 = v11;
          v10 = [v12 blackColor];
        }

        else
        {
          if (aBlock != 2)
          {
            [*(v1 + 32) setBackgroundColor_];
            sub_1D8160930(v6);
LABEL_13:
            v16 = objc_opt_self();
            v17 = swift_allocObject();
            *(v17 + 16) = v1;
            *(v17 + 24) = v3;
            v18 = swift_allocObject();
            *(v18 + 16) = sub_1D8160940;
            *(v18 + 24) = v17;
            v24 = sub_1D7E74D6C;
            v25 = v18;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            v22 = sub_1D7E74D74;
            v23 = &block_descriptor_14_0;
            v19 = _Block_copy(&aBlock);

            v20 = v3;

            [v16 performWithoutAnimation_];

            _Block_release(v19);
            LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

            if (v20)
            {
              __break(1u);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v26);
            }

            return;
          }

          v7 = *(v1 + 32);
          v8 = objc_opt_self();
          v9 = v7;
          v10 = [v8 systemBackgroundColor];
        }
      }

      else
      {
        v13 = *(v1 + 32);
        v14 = objc_opt_self();
        v9 = v13;
        v10 = [v14 whiteColor];
      }

      v15 = v10;
      [v9 setBackgroundColor_];

      goto LABEL_13;
    }
  }
}

void sub_1D815FEBC(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *v2;
  v21 = a1;
  sub_1D7E194D0();
  sub_1D81608D4();
  v6 = a1;
  if (swift_dynamicCast())
  {
LABEL_17:
    sub_1D7E05450(&v18, v22);
    sub_1D7E05450(v22, a2);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1D8160820(&v18);
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 topViewController];
      if (v10)
      {
        v11 = v10;
        sub_1D815FEBC(a2, v10);

        return;
      }
    }

    v12 = [v6 childViewControllers];
    v13 = sub_1D8191314();

    v14 = sub_1D7E36AB8(v13);
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {

        a2[3] = v5;
        a2[4] = &protocol witness table for FullscreenTransitionCoverManager;
        *a2 = v2;

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA714420](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1D815FEBC(&v18, v16);

      if (*(&v19 + 1))
      {

        goto LABEL_17;
      }

      sub_1D8160820(&v18);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1D81600DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
  v15 = [a2 view];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 addSubview_];
}

void sub_1D81601F8()
{
  v1 = v0;
  *(v0 + 41) = 1;
  v2 = (*(v0 + 16))();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 32);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 blackColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v6 setBackgroundColor_];
    v9 = *(v1 + 32);
    v10 = [v3 view];
    if (v10)
    {
      [v10 bounds];
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_2_164(v11, sel_setFrame_);

      v12 = [v3 view];
      if (v12)
      {
        v13 = v12;
        [v12 addSubview_];

        [*(v1 + 32) setAlpha_];
        v14 = objc_opt_self();
        v16[4] = sub_1D816080C;
        v16[5] = v1;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = sub_1D7E64940;
        v16[3] = &block_descriptor_8_0;
        v15 = _Block_copy(v16);

        [v14 animateWithDuration:0 delay:v15 options:0 animations:0.2 completion:0.0];

        _Block_release(v15);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1D8160448()
{
  v1 = objc_opt_self();
  v8 = sub_1D81607F0;
  v9 = v0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = sub_1D7E64940;
  v7 = &block_descriptor_86;
  v2 = _Block_copy(&v4);

  v8 = sub_1D8160804;
  v9 = v0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = sub_1D7EB30D4;
  v7 = &block_descriptor_5_0;
  v3 = _Block_copy(&v4);

  [v1 animateWithDuration:0 delay:v2 options:v3 animations:0.2 completion:0.0];
  _Block_release(v3);
  _Block_release(v2);
}

uint64_t sub_1D81605E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1D8160628(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0 && (*(a2 + 41) & 1) == 0)
  {
    [*(a2 + 32) removeFromSuperview];
    v3 = *(a2 + 32);

    [v3 setAlpha_];
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI30FullscreenTransitionCoverStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D81606E4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D8160740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D8160820(uint64_t a1)
{
  sub_1D816087C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D816087C()
{
  if (!qword_1ECA11ED0)
  {
    sub_1D81608D4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11ED0);
    }
  }
}

unint64_t sub_1D81608D4()
{
  result = qword_1ECA11ED8;
  if (!qword_1ECA11ED8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA11ED8);
  }

  return result;
}

void sub_1D8160930(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t PinningBlueprintCollectionViewLayout.copy()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1EEE9AC00](ObjectType);
  v7 = &v13 - v6;
  (*(v10 + 16))(&v13 - v6, v2 + *((v9 & v8) + 0x80), v5);
  v11 = PinningBlueprintCollectionViewLayout.__allocating_init(blueprintLayoutCollectionProvider:)(v7);
  result = sub_1D803E748();
  a1[3] = ObjectType;
  *a1 = v11;
  return result;
}

uint64_t sub_1D8160AB0(void *a1)
{
  v1 = a1;
  PinningBlueprintCollectionViewLayout.copy()(v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1D8192614();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

CGPoint __swiftcall PinningBlueprintCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(CGPoint forProposedContentOffset, CGPoint withScrollingVelocity)
{
  v3 = (MEMORY[0x1EEE9AC00])();
  v4 = v2;
  v6 = v5;
  v7 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1D7E3D564();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 collectionView];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() sharedApplication];
    v16 = [v15 preferredContentSizeCategory];

    LOBYTE(v15) = sub_1D8191BA4();
    if ((v15 & 1) != 0 && (v80 = v12, v18 = *(v8 + 432), v17 = *(v8 + 440), v19 = *(v17 + 32), v19(v86, v18, v17), memcpy(v87, v86, 0x4E8uLL), v20 = *(v87[147] + 16), sub_1D7E598FC(v87), v20))
    {
      [v14 bounds];
      v22 = v21;
      v24 = v23;
      v19(v85, v18, v17);
      memcpy(v86, v85, sizeof(v86));
      v25 = v14;
      [v25 adjustedContentInset];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      memcpy(v84, &v86[5], sizeof(v84));
      sub_1D7E6EB58(&v86[5], v82);
      sub_1D7E6ED1C();
      v37 = v36;
      v39 = v38;
      v81 = v25;
      memcpy(v83, v84, 0x236uLL);
      sub_1D7E6F268(v83);
      memcpy(v82, v86, sizeof(v82));
      sub_1D7EAED38(v37, v39, v7, v6, v22, v24, v7, v6, v27, v29, v31, v33);
      v41 = v40;
      sub_1D7E598FC(v86);
      if (v41)
      {
        v79[0] = 0;
        v42 = *(v41 + 16);
        v43 = sub_1D7E36AB8(v42);
        v44 = v42 & 0xC000000000000001;
        v45 = v42 & 0xFFFFFFFFFFFFFF8;
        sub_1D8190DB4();
        v46 = 0;
        v79[1] = v41;
        while (1)
        {
          if (v43 == v46)
          {
            v51 = 1;
            v52 = v80;
            goto LABEL_20;
          }

          if (v44)
          {
            v47 = MEMORY[0x1DA714420](v46, v42);
          }

          else
          {
            if (v46 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v47 = *(v42 + 8 * v46 + 32);
          }

          if (__OFADD__(v46, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            v67 = MEMORY[0x1DA714420](0, v46);
            goto LABEL_35;
          }

          v48 = v47;
          [v48 frame];
          v90.size.height = 1.0;
          v90.origin.x = v7;
          v90.origin.y = v6;
          v90.size.width = v22;
          v49 = CGRectIntersectsRect(v88, v90);

          if (v49)
          {
            break;
          }

          ++v46;
        }

        v53 = [v48 indexPath];

        v52 = v80;
        sub_1D818E924();

        v51 = 0;
LABEL_20:
        v54 = sub_1D818E994();
        __swift_storeEnumTagSinglePayload(v52, v51, 1, v54);
        v55 = 0;
        v82[0] = MEMORY[0x1E69E7CC0];
        v46 = v81;
        v56 = &selRef_initWithDuration_dampingRatio_animations_;
        while (v43 != v55)
        {
          if (v44)
          {
            v57 = MEMORY[0x1DA714420](v55, v42);
          }

          else
          {
            if (v55 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v57 = *(v42 + 8 * v55 + 32);
          }

          v58 = v57;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          [v57 frame];
          MaxY = CGRectGetMaxY(v89);
          [v46 v56[500]];
          if (v60 + v6 <= MaxY)
          {
            sub_1D8192274();
            sub_1D81922B4();
            v56 = &selRef_initWithDuration_dampingRatio_animations_;
            sub_1D81922C4();
            sub_1D8192284();
            v46 = v81;
          }

          else
          {
          }

          ++v55;
        }

        MEMORY[0x1EEE9AC00](v61);
        v78 = v4;

        v82[0] = sub_1D80E74B8(v62);
        v63 = v79[0];
        sub_1D81618D8(sub_1D8164760, &v79[-4]);
        if (v63)
        {

          __break(1u);
          goto LABEL_44;
        }

        MEMORY[0x1EEE9AC00](v64);
        v45 = v80;
        v78 = v80;
        sub_1D803DD28(sub_1D8164780, &v79[-4], v65);
        v46 = v66;
        if (!sub_1D7E36AB8(v66))
        {

          v76 = v81;

          goto LABEL_37;
        }

        sub_1D7E33DD8(0, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) != 0)
        {
          goto LABEL_42;
        }

        v67 = *(v46 + 32);
LABEL_35:
        v68 = v67;

        v69 = v68;
        [v69 frame];
        v7 = v70;
        [v69 frame];
        v72 = v71;

        v73 = v81;
        [v81 adjustedContentInset];
        v75 = v74;

        v6 = v72 - v75;
LABEL_37:
        sub_1D7E54BC0(v45, sub_1D7E3D564);
      }

      else
      {
        v50 = v81;
      }
    }

    else
    {
    }
  }

  v34 = v7;
  v35 = v6;
LABEL_44:
  result.y = v35;
  result.x = v34;
  return result;
}

BOOL sub_1D8161228(void **a1, void **a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  (*(*((*MEMORY[0x1E69E7D40] & *a3) + 0x1B8) + 32))(v13, *((*MEMORY[0x1E69E7D40] & *a3) + 0x1B0));
  sub_1D7E598FC(v13);
  v5 = v14;
  [v3 frame];
  if (v5)
  {
    MinY = CGRectGetMinY(*&v6);
    [v4 frame];
    MinX = CGRectGetMinY(v15);
  }

  else
  {
    MinY = CGRectGetMinX(*&v6);
    [v4 frame];
    MinX = CGRectGetMinX(v16);
  }

  return MinY < MinX;
}

uint64_t sub_1D8161338(void **a1, uint64_t a2)
{
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *a1;
  sub_1D81647A0(a2, v6, sub_1D7E3D564);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    v19 = sub_1D8100B50(v14);
    if (v20)
    {
      if (v19 == 0xD000000000000024 && v20 == 0x80000001D81C5910)
      {
      }

      else
      {
        v22 = sub_1D8192634();

        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v23 = [v14 indexPath];
      sub_1D818E924();

      v24 = sub_1D818E974();
      v25 = *(v8 + 8);
      v25(v10, v7);
      v26 = sub_1D818E974();
      v25(v13, v7);
      v18 = v24 == v26;
      return v18 & 1;
    }

LABEL_14:
    (*(v8 + 8))(v13, v7);
    goto LABEL_15;
  }

  sub_1D7E54BC0(v6, sub_1D7E3D564);
  v15 = sub_1D8100B50(v14);
  if (!v16)
  {
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  if (v15 == 0xD000000000000024 && v16 == 0x80000001D81C5910)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_1D8192634();
  }

  return v18 & 1;
}

double sub_1D8161630(void *a1, double a2, double a3)
{
  v5 = a1;
  *&v8 = *&PinningBlueprintCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(__PAIR128__(*&a3, *&a2), __PAIR128__(v7, v6));

  return v8;
}

id PinningBlueprintCollectionViewLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PinningBlueprintCollectionViewLayout.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PinningBlueprintCollectionViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8161794(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120A70();
    v5 = v6;
  }

  result = sub_1D8161970(a1, a2);
  *v2 = v5;
  return result;
}

void sub_1D8161818(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  sub_1D7EE5A18();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120A98(v5);
    v5 = v6;
  }

  sub_1D8161A74(a1, a2);
  *v2 = v5;
}

uint64_t sub_1D81618D8(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1D7E76C38(v6);
  }

  sub_1D8161BB4(a1, a2);
  return sub_1D8192284();
}

uint64_t sub_1D8161970(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1D81925A4();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1D81913D4();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_1D8162158(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1D8161CAC(0, v5, 1, a1);
  }

  return result;
}

void sub_1D8161A74(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_1D81925A4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7EE5A18();
        v9 = sub_1D81913D4();
        *(v9 + 16) = v8;
      }

      sub_1D7EE5A18();
      v11[0] = v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80));
      v11[1] = v8;
      sub_1D81628D8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1D8161DFC(0, v5, 1, a1);
  }
}

void sub_1D8161BB4(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v6 = v2[1];
  v7 = sub_1D81925A4();
  if (v7 < v6)
  {
    v8 = v7;
    v9 = sub_1D7FE74BC(v6 / 2);
    v11[0] = v10;
    v11[1] = (v6 / 2);
    sub_1D8163350(v11, v12, v2, a1, a2, v8);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1D8162058(0, v6, 1, a1);
  }
}

uint64_t sub_1D8161CAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v32 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = *v4 + 48 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v24 = v7;
    v25 = a3;
    v9 = (v6 + 48 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    v23 = v8;
    while (1)
    {
      v14 = *(v7 - 40);
      v16 = *(v7 - 32);
      v15 = v7 - 40;
      v29[0] = v10;
      v29[1] = v11;
      v30 = v12;
      v31 = v13;
      v26[0] = v14;
      v26[1] = v16;
      v17 = *(v7 - 8);
      v27 = *(v7 - 24);
      v28 = v17;
      sub_1D8190DB4();
      sub_1D8190DB4();
      v18 = v32(v29, v26);

      if (v5)
      {
        break;
      }

      if (v18)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = *(v7 + 24);
        v13 = *(v7 + 40);
        v19 = *(v7 - 24);
        *(v7 + 8) = *(v7 - 40);
        *(v7 + 24) = v19;
        v20 = *(v7 - 8);
        *(v7 - 40) = v10;
        *(v7 - 32) = v11;
        *(v7 - 24) = v12;
        *(v7 - 8) = v13;
        v7 -= 48;
        *(v15 + 80) = v20;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v25 + 1;
      v7 = v24 + 48;
      v8 = v23 - 1;
      if (v25 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1D8161DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  sub_1D7EE5A18();
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_1D81647A0(v22, v17, sub_1D7EE5A18);
      sub_1D81647A0(v23, v13, sub_1D7EE5A18);
      v24 = v37(v17, v13);
      sub_1D7E54BC0(v13, sub_1D7EE5A18);
      sub_1D7E54BC0(v17, sub_1D7EE5A18);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_1D7FA10E0(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D7FA10E0(v25, v23);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1D8162058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1D8162158(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v139 = a5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v128 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_95;
    }

    goto LABEL_138;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v122 = v9;
      v12 = *a3;
      v13 = v8 + 1;
      v14 = *a3 + 48 * v11;
      v15 = *(v14 + 8);
      v135 = *v14;
      v136 = v15;
      v16 = *(v14 + 32);
      v137 = *(v14 + 16);
      v138 = v16;
      v17 = (v12 + 48 * v10);
      v18 = v17[1];
      v131 = *v17;
      v132 = v18;
      v19 = *(v17 + 2);
      v133 = *(v17 + 1);
      v134 = v19;
      sub_1D8190DB4();
      sub_1D8190DB4();
      LODWORD(v128) = a4(&v135, &v131);
      if (v6)
      {
LABEL_106:

        goto LABEL_107;
      }

      v125 = 48 * v10;
      v20 = v10;
      v21 = (v12 + 48 * v10 + 128);
      v120 = v20;
      v22 = v20 + 2;
      v11 = v13;
      while (1)
      {
        v23 = v11;
        v24 = v22;
        if (v11 + 1 >= v7)
        {
          break;
        }

        v25 = v7;
        v26 = *(v21 - 3);
        v135 = *(v21 - 4);
        v136 = v26;
        v27 = *v21;
        v137 = *(v21 - 1);
        v138 = v27;
        v28 = *(v21 - 9);
        v131 = *(v21 - 10);
        v132 = v28;
        v29 = *(v21 - 3);
        v133 = *(v21 - 4);
        v134 = v29;
        sub_1D8190DB4();
        sub_1D8190DB4();
        v30 = a4(&v135, &v131);

        v31 = v128 ^ v30;
        v21 += 3;
        ++v11;
        v22 = v24 + 1;
        v7 = v25;
        if (v31)
        {
          goto LABEL_10;
        }
      }

      v11 = v7;
LABEL_10:
      if (v128)
      {
        v10 = v120;
        if (v11 < v120)
        {
          goto LABEL_132;
        }

        v9 = v122;
        if (v120 <= v23)
        {
          if (v7 >= v24)
          {
            v32 = v24;
          }

          else
          {
            v32 = v7;
          }

          v33 = 48 * v32 - 16;
          v34 = v125 + 32;
          v35 = v11;
          v36 = v120;
          do
          {
            if (v36 != --v35)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v38 = (v37 + v34);
              v39 = (v37 + v33);
              v40 = *(v38 - 4);
              v41 = *(v38 - 3);
              v42 = *(v38 - 1);
              v43 = *v38;
              v45 = *(v39 - 1);
              v44 = *v39;
              *(v38 - 2) = *(v39 - 2);
              *(v38 - 1) = v45;
              *v38 = v44;
              *(v39 - 4) = v40;
              *(v39 - 3) = v41;
              *(v39 - 1) = v42;
              *v39 = v43;
            }

            ++v36;
            v33 -= 48;
            v34 += 48;
          }

          while (v36 < v35);
        }
      }

      else
      {
        v10 = v120;
        v9 = v122;
      }
    }

    v46 = a3[1];
    if (v11 >= v46)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_128;
    }

    if (v11 - v10 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v10 + a6 >= v46)
    {
      v47 = a3[1];
    }

    else
    {
      v47 = v10 + a6;
    }

    if (v47 < v10)
    {
      goto LABEL_131;
    }

    if (v11 != v47)
    {
      v121 = v10;
      v123 = v9;
      v91 = *a3;
      v92 = *a3 + 48 * v11 - 8;
      v93 = v10 - v11;
      v117 = v47;
      do
      {
        v127 = v11;
        v128 = v92;
        v94 = (v91 + 48 * v11);
        v95 = *v94;
        v96 = v94[1];
        v97 = *(v94 + 1);
        v98 = *(v94 + 2);
        v118 = v93;
        do
        {
          v99 = *(v92 - 40);
          v101 = *(v92 - 32);
          v100 = v92 - 40;
          v135 = v95;
          v136 = v96;
          v137 = v97;
          v138 = v98;
          v131 = v99;
          v132 = v101;
          v102 = *(v92 - 8);
          v133 = *(v92 - 24);
          v134 = v102;
          sub_1D8190DB4();
          sub_1D8190DB4();
          v103 = a4(&v135, &v131);
          if (v6)
          {
            goto LABEL_106;
          }

          v104 = v103;

          if ((v104 & 1) == 0)
          {
            break;
          }

          if (!v91)
          {
            goto LABEL_135;
          }

          v95 = *(v92 + 8);
          v96 = *(v92 + 16);
          v97 = *(v92 + 24);
          v98 = *(v92 + 40);
          v105 = *(v92 - 24);
          *(v92 + 8) = *(v92 - 40);
          *(v92 + 24) = v105;
          v106 = *(v92 - 8);
          *(v92 - 40) = v95;
          *(v92 - 32) = v96;
          *(v92 - 24) = v97;
          *(v92 - 8) = v98;
          v92 -= 48;
          *(v100 + 80) = v106;
        }

        while (!__CFADD__(v93++, 1));
        ++v11;
        v92 = (v128 + 48);
        v93 = v118 - 1;
      }

      while (v127 + 1 != v117);
      v11 = v117;
      v10 = v121;
      v9 = v123;
    }

LABEL_32:
    if (v11 < v10)
    {
      goto LABEL_127;
    }

    v126 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v9 = v108;
    }

    v48 = *(v9 + 2);
    v49 = v48 + 1;
    v50 = v10;
    if (v48 >= *(v9 + 3) >> 1)
    {
      sub_1D7EE4840();
      v9 = v109;
    }

    *(v9 + 2) = v49;
    v51 = v9 + 32;
    v52 = &v9[16 * v48 + 32];
    *v52 = v50;
    *(v52 + 1) = v126;
    v128 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v48)
    {
      break;
    }

LABEL_81:
    v7 = a3[1];
    v8 = v126;
    if (v126 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v53 = v49 - 1;
    v54 = &v51[16 * v49 - 16];
    v55 = &v9[16 * v49];
    if (v49 >= 4)
    {
      v60 = &v51[16 * v49];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_115;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_116;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_118;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_121;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v49 == 3)
    {
      v56 = *(v9 + 4);
      v57 = *(v9 + 5);
      v66 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      v59 = v66;
LABEL_52:
      if (v59)
      {
        goto LABEL_117;
      }

      v71 = *v55;
      v70 = *(v55 + 1);
      v72 = __OFSUB__(v70, v71);
      v73 = v70 - v71;
      v74 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v75 = *(v54 + 1);
      v76 = v75 - *v54;
      if (__OFSUB__(v75, *v54))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v73, v76))
      {
        goto LABEL_125;
      }

      if (v73 + v76 >= v58)
      {
        if (v58 < v76)
        {
          v53 = v49 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v49 < 2)
    {
      goto LABEL_119;
    }

    v78 = *v55;
    v77 = *(v55 + 1);
    v66 = __OFSUB__(v77, v78);
    v73 = v77 - v78;
    v74 = v66;
LABEL_67:
    if (v74)
    {
      goto LABEL_122;
    }

    v80 = *v54;
    v79 = *(v54 + 1);
    v66 = __OFSUB__(v79, v80);
    v81 = v79 - v80;
    if (v66)
    {
      goto LABEL_124;
    }

    if (v81 < v73)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v53 - 1 >= v49)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v85 = &v51[16 * v53 - 16];
    v86 = *v85;
    v87 = &v51[16 * v53];
    v88 = *(v87 + 1);
    sub_1D8163A0C((*a3 + 48 * *v85), (*a3 + 48 * *v87), *a3 + 48 * v88, v128, a4);
    if (v6)
    {
      goto LABEL_107;
    }

    if (v88 < v86)
    {
      goto LABEL_109;
    }

    v89 = v9;
    v9 = *(v9 + 2);
    if (v53 > v9)
    {
      goto LABEL_110;
    }

    *v85 = v86;
    *(v85 + 1) = v88;
    if (v53 >= v9)
    {
      goto LABEL_111;
    }

    v49 = (v9 - 1);
    sub_1D8120818(v87 + 16, &v9[-v53 - 1], &v51[16 * v53]);
    *(v89 + 2) = v9 - 1;
    v90 = v9 > 2;
    v9 = v89;
    if (!v90)
    {
      goto LABEL_81;
    }
  }

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
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v9 = sub_1D8120804(v9);
LABEL_95:
  v110 = v9 + 16;
  v111 = *(v9 + 2);
  while (v111 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v112 = v9;
    v9 += 16 * v111;
    v113 = *v9;
    v114 = &v110[2 * v111];
    v115 = *(v114 + 1);
    sub_1D8163A0C((*a3 + 48 * *v9), (*a3 + 48 * *v114), *a3 + 48 * v115, v128, a4);
    if (v6)
    {
      break;
    }

    if (v115 < v113)
    {
      goto LABEL_112;
    }

    if (v111 - 2 >= *v110)
    {
      goto LABEL_113;
    }

    *v9 = v113;
    *(v9 + 1) = v115;
    v116 = *v110 - v111;
    if (*v110 < v111)
    {
      goto LABEL_114;
    }

    v111 = *v110 - 1;
    sub_1D8120818(v114 + 16, v116, v114);
    *v110 = v111;
    v9 = v112;
  }

LABEL_107:
}

void sub_1D81628D8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v147 = a5;
  v146 = a4;
  v134 = a1;
  sub_1D7EE5A18();
  v138 = v10;
  v144 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v124 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v124 - v27;
  v145 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v143 = *v134;
    if (v143)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_105;
    }

    goto LABEL_149;
  }

  v139 = v26;
  v136 = v25;
  v127 = a6;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v142 = v16;
  v129 = v21;
  while (1)
  {
    v31 = v29++;
    if (v29 < v28)
    {
      v141 = v28;
      v130 = v30;
      v32 = *v145;
      v33 = *(v144 + 72);
      v133 = v29;
      v34 = v32 + v33 * v29;
      v35 = v31;
      v36 = v131;
      sub_1D81647A0(v34, v131, sub_1D7EE5A18);
      v37 = v132;
      sub_1D81647A0(v32 + v33 * v35, v132, sub_1D7EE5A18);
      LODWORD(v140) = v146(v36, v37);
      if (v7)
      {
        sub_1D7E54BC0(v37, sub_1D7EE5A18);
        v123 = v36;
        goto LABEL_116;
      }

      sub_1D7E54BC0(v37, sub_1D7EE5A18);
      sub_1D7E54BC0(v36, sub_1D7EE5A18);
      v128 = v35;
      v38 = v35 + 2;
      v39 = v32 + v33 * (v35 + 2);
      v29 = v133;
      v40 = v33;
      v143 = v33;
      v41 = v141;
      while (1)
      {
        v42 = v29;
        v43 = v38;
        if (v29 + 1 >= v41)
        {
          break;
        }

        sub_1D81647A0(v39, v21, sub_1D7EE5A18);
        v44 = v21;
        v45 = v139;
        sub_1D81647A0(v34, v139, sub_1D7EE5A18);
        v46 = v146(v44, v45);
        sub_1D7E54BC0(v45, sub_1D7EE5A18);
        v40 = v143;
        sub_1D7E54BC0(v44, sub_1D7EE5A18);
        v47 = v140 ^ v46;
        v39 += v40;
        v34 += v40;
        v29 = v42 + 1;
        v38 = v43 + 1;
        v21 = v44;
        v41 = v141;
        if (v47)
        {
          goto LABEL_10;
        }
      }

      v29 = v41;
LABEL_10:
      if (v140)
      {
        if (v29 < v128)
        {
          goto LABEL_143;
        }

        v48 = v128 <= v42;
        v31 = v128;
        if (!v48)
        {
          v30 = v130;
          v16 = v142;
          goto LABEL_33;
        }

        if (v41 >= v43)
        {
          v49 = v43;
        }

        else
        {
          v49 = v41;
        }

        v50 = v29;
        v51 = v40 * (v49 - 1);
        v52 = v128;
        v53 = v40 * v49;
        v54 = v128 * v40;
        v55 = v50;
        do
        {
          if (v52 != --v50)
          {
            v56 = *v145;
            if (!*v145)
            {
              goto LABEL_147;
            }

            sub_1D7FA10E0(v56 + v54, v135);
            v57 = v54 < v51 || v56 + v54 >= (v56 + v53);
            if (v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D7FA10E0(v135, v56 + v51);
            v40 = v143;
          }

          ++v52;
          v51 -= v40;
          v53 -= v40;
          v54 += v40;
        }

        while (v52 < v50);
        v30 = v130;
        v16 = v142;
        v29 = v55;
      }

      else
      {
        v30 = v130;
        v16 = v142;
      }

      v31 = v128;
    }

LABEL_33:
    v58 = v145[1];
    if (v29 < v58)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_139;
      }

      if (v29 - v31 < v127)
      {
        v59 = v31 + v127;
        if (__OFADD__(v31, v127))
        {
          __break(1u);
        }

        else
        {
          if (v59 >= v58)
          {
            v59 = v145[1];
          }

          if (v59 >= v31)
          {
            if (v29 == v59)
            {
              goto LABEL_41;
            }

            v130 = v30;
            v103 = *v145;
            v104 = *(v144 + 72);
            v105 = *v145 + v104 * (v29 - 1);
            v106 = v31;
            v107 = -v104;
            v128 = v106;
            v108 = v106 - v29;
            v143 = v103;
            v124 = v104;
            v109 = v103 + v29 * v104;
            v125 = v59;
            while (1)
            {
              v133 = v29;
              v126 = v109;
              v140 = v108;
              v141 = v105;
              do
              {
                v110 = v136;
                sub_1D81647A0(v109, v136, sub_1D7EE5A18);
                sub_1D81647A0(v105, v16, sub_1D7EE5A18);
                v111 = v146(v110, v16);
                if (v7)
                {
                  sub_1D7E54BC0(v16, sub_1D7EE5A18);
                  v123 = v110;
LABEL_116:
                  sub_1D7E54BC0(v123, sub_1D7EE5A18);
                  goto LABEL_117;
                }

                v112 = v111;
                sub_1D7E54BC0(v16, sub_1D7EE5A18);
                sub_1D7E54BC0(v110, sub_1D7EE5A18);
                if ((v112 & 1) == 0)
                {
                  break;
                }

                if (!v143)
                {
                  goto LABEL_146;
                }

                v113 = v137;
                sub_1D7FA10E0(v109, v137);
                swift_arrayInitWithTakeFrontToBack();
                sub_1D7FA10E0(v113, v105);
                v105 += v107;
                v109 += v107;
                v57 = __CFADD__(v108++, 1);
              }

              while (!v57);
              v29 = v133 + 1;
              v105 = &v141[v124];
              v108 = v140 - 1;
              v109 = v126 + v124;
              if (v133 + 1 == v125)
              {
                v29 = v125;
                v30 = v130;
                v31 = v128;
                goto LABEL_41;
              }
            }
          }
        }

        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return;
      }
    }

LABEL_41:
    if (v29 < v31)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v30 = v114;
    }

    v60 = *(v30 + 2);
    v61 = v60 + 1;
    if (v60 >= *(v30 + 3) >> 1)
    {
      sub_1D7EE4840();
      v30 = v115;
    }

    *(v30 + 2) = v61;
    v62 = v30 + 32;
    v63 = &v30[16 * v60 + 32];
    *v63 = v31;
    *(v63 + 1) = v29;
    v143 = *v134;
    if (!v143)
    {
      goto LABEL_148;
    }

    if (v60)
    {
      break;
    }

LABEL_91:
    v28 = v145[1];
    v21 = v129;
    if (v29 >= v28)
    {
      goto LABEL_103;
    }
  }

  v141 = v30 + 32;
  while (1)
  {
    v64 = v61 - 1;
    v65 = &v62[16 * v61 - 16];
    v66 = &v30[16 * v61];
    if (v61 >= 4)
    {
      v71 = &v62[16 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_126;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_127;
      }

      v78 = *(v66 + 1);
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_129;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_132;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = *(v65 + 1);
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_137;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

    if (v61 == 3)
    {
      v67 = *(v30 + 4);
      v68 = *(v30 + 5);
      v77 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      v70 = v77;
LABEL_62:
      if (v70)
      {
        goto LABEL_128;
      }

      v82 = *v66;
      v81 = *(v66 + 1);
      v83 = __OFSUB__(v81, v82);
      v84 = v81 - v82;
      v85 = v83;
      if (v83)
      {
        goto LABEL_131;
      }

      v86 = *(v65 + 1);
      v87 = v86 - *v65;
      if (__OFSUB__(v86, *v65))
      {
        goto LABEL_134;
      }

      if (__OFADD__(v84, v87))
      {
        goto LABEL_136;
      }

      if (v84 + v87 >= v69)
      {
        if (v69 < v87)
        {
          v64 = v61 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_77;
    }

    if (v61 < 2)
    {
      goto LABEL_130;
    }

    v89 = *v66;
    v88 = *(v66 + 1);
    v77 = __OFSUB__(v88, v89);
    v84 = v88 - v89;
    v85 = v77;
LABEL_77:
    if (v85)
    {
      goto LABEL_133;
    }

    v91 = *v65;
    v90 = *(v65 + 1);
    v77 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v77)
    {
      goto LABEL_135;
    }

    if (v92 < v84)
    {
      goto LABEL_91;
    }

LABEL_84:
    if (v64 - 1 >= v61)
    {
      break;
    }

    if (!*v145)
    {
      goto LABEL_144;
    }

    v96 = &v62[16 * v64 - 16];
    v97 = *v96;
    v98 = v64;
    v99 = &v62[16 * v64];
    v100 = *(v99 + 1);
    sub_1D8163D8C(*v145 + *(v144 + 72) * *v96, *v145 + *(v144 + 72) * *v99, *v145 + *(v144 + 72) * v100, v143, v146, v147);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v100 < v97)
    {
      goto LABEL_120;
    }

    v7 = v29;
    v101 = v30;
    v30 = *(v30 + 2);
    if (v98 > v30)
    {
      goto LABEL_121;
    }

    *v96 = v97;
    *(v96 + 1) = v100;
    if (v98 >= v30)
    {
      goto LABEL_122;
    }

    v102 = v98;
    v61 = (v30 - 1);
    sub_1D8120818(v99 + 16, &v30[-v102 - 1], v99);
    *(v101 + 2) = v30 - 1;
    v48 = v30 > 2;
    v30 = v101;
    v62 = v141;
    v16 = v142;
    v29 = v7;
    v7 = 0;
    if (!v48)
    {
      goto LABEL_91;
    }
  }

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
LABEL_126:
  __break(1u);
LABEL_127:
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
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  v30 = sub_1D8120804(v30);
LABEL_105:
  v116 = v30 + 16;
  v117 = *(v30 + 2);
  while (v117 >= 2)
  {
    if (!*v145)
    {
      goto LABEL_145;
    }

    v118 = v30;
    v119 = &v30[16 * v117];
    v30 = *v119;
    v120 = &v116[2 * v117];
    v121 = *(v120 + 1);
    sub_1D8163D8C(*v145 + *(v144 + 72) * *v119, *v145 + *(v144 + 72) * *v120, *v145 + *(v144 + 72) * v121, v143, v146, v147);
    if (v7)
    {
      break;
    }

    if (v121 < v30)
    {
      goto LABEL_123;
    }

    if (v117 - 2 >= *v116)
    {
      goto LABEL_124;
    }

    *v119 = v30;
    *(v119 + 1) = v121;
    v122 = *v116 - v117;
    if (*v116 < v117)
    {
      goto LABEL_125;
    }

    v117 = *v116 - 1;
    sub_1D8120818(v120 + 16, v122, v120);
    *v116 = v117;
    v30 = v118;
  }

LABEL_117:
}

void sub_1D8163350(void ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(id *, void **), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v111 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_96;
    }

    goto LABEL_138;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = *a3;
      v14 = v9 + 1;
      v115 = *(*a3 + 8 * v12);
      v114 = *(v13 + 8 * v9);
      v15 = v114;
      v16 = v115;
      v17 = v15;
      LODWORD(v111) = a4(&v115, &v114);
      if (v7)
      {

        goto LABEL_106;
      }

      v105 = v10;

      v108 = 8 * v11;
      v18 = (v13 + 8 * v11 + 16);
      v103 = v11;
      v19 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v20 = v12;
        v21 = v19;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v22 = v8;
        v23 = *(v18 - 1);
        v115 = *v18;
        v114 = v23;
        v24 = v115;
        v25 = v23;
        v26 = a4(&v115, &v114);

        v27 = v111 ^ v26;
        ++v18;
        v12 = v20 + 1;
        v19 = v21 + 1;
        v8 = v22;
        v7 = 0;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (v111)
      {
        if (v12 < v103)
        {
          goto LABEL_132;
        }

        v28 = v103 <= v20;
        v10 = v105;
        v11 = v103;
        if (v28)
        {
          if (v8 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v8;
          }

          v30 = 8 * v29 - 8;
          v31 = v12;
          v32 = v103;
          v33 = v108;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        v11 = v103;
        v10 = v105;
      }
    }

    v36 = a3[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_128;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v36)
          {
            v37 = a3[1];
          }

          else
          {
            v37 = v11 + a6;
          }

          if (v37 >= v11)
          {
            if (v12 == v37)
            {
              goto LABEL_33;
            }

            v80 = v11;
            v81 = *a3;
            v82 = (*a3 + 8 * v12 - 8);
            v104 = v80;
            v106 = v10;
            v83 = (v80 - v12);
            v101 = v37;
            while (1)
            {
              v110 = v12;
              v111 = v83;
              v84 = *(v81 + 8 * v12);
              v85 = v82;
              do
              {
                v115 = v84;
                v114 = *v82;
                v86 = v114;
                v87 = v84;
                v17 = v86;
                v88 = a4(&v115, &v114);
                if (v7)
                {

LABEL_106:
                  return;
                }

                v89 = v88;

                if ((v89 & 1) == 0)
                {
                  break;
                }

                if (!v81)
                {
                  goto LABEL_135;
                }

                v90 = *v82;
                v84 = v82[1];
                *v82 = v84;
                v82[1] = v90;
                --v82;
                v91 = __CFADD__(v83, 1);
                v83 = (v83 + 1);
              }

              while (!v91);
              v12 = v110 + 1;
              v82 = v85 + 1;
              v83 = (v111 - 1);
              if (v110 + 1 == v101)
              {
                v12 = v101;
                v11 = v104;
                v10 = v106;
                goto LABEL_33;
              }
            }
          }
        }

        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    v109 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v10 = v92;
    }

    v38 = *(v10 + 2);
    v39 = v38 + 1;
    v40 = v11;
    if (v38 >= *(v10 + 3) >> 1)
    {
      sub_1D7EE4840();
      v10 = v93;
    }

    *(v10 + 2) = v39;
    v41 = v10 + 32;
    v42 = &v10[16 * v38 + 32];
    *v42 = v40;
    *(v42 + 1) = v109;
    v111 = *a1;
    if (!*a1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v38)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v109;
    if (v109 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v43 = v39 - 1;
    v44 = &v41[16 * v39 - 16];
    v45 = &v10[16 * v39];
    if (v39 >= 4)
    {
      v50 = &v41[16 * v39];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_115;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_116;
      }

      v57 = *(v45 + 1);
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_118;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_121;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = *(v44 + 1);
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_126;
        }

        if (v48 < v74)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v39 == 3)
    {
      v46 = *(v10 + 4);
      v47 = *(v10 + 5);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_53:
      if (v49)
      {
        goto LABEL_117;
      }

      v61 = *v45;
      v60 = *(v45 + 1);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_120;
      }

      v65 = *(v44 + 1);
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_125;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v39 < 2)
    {
      goto LABEL_119;
    }

    v68 = *v45;
    v67 = *(v45 + 1);
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_68:
    if (v64)
    {
      goto LABEL_122;
    }

    v70 = *v44;
    v69 = *(v44 + 1);
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_124;
    }

    if (v71 < v63)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v43 - 1 >= v39)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v75 = &v41[16 * v43 - 16];
    v76 = *v75;
    v77 = &v41[16 * v43];
    v78 = *(v77 + 1);
    sub_1D8164354((*a3 + 8 * *v75), (*a3 + 8 * *v77), (*a3 + 8 * v78), v111, a4);
    if (v7)
    {
      goto LABEL_104;
    }

    if (v78 < v76)
    {
      goto LABEL_109;
    }

    v79 = v10;
    v10 = *(v10 + 2);
    if (v43 > v10)
    {
      goto LABEL_110;
    }

    *v75 = v76;
    *(v75 + 1) = v78;
    if (v43 >= v10)
    {
      goto LABEL_111;
    }

    v39 = (v10 - 1);
    sub_1D8120818(v77 + 16, &v10[-v43 - 1], &v41[16 * v43]);
    *(v79 + 2) = v10 - 1;
    v28 = v10 > 2;
    v10 = v79;
    if (!v28)
    {
      goto LABEL_82;
    }
  }

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
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v10 = sub_1D8120804(v10);
LABEL_96:
  v94 = v10 + 16;
  v95 = *(v10 + 2);
  while (v95 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v96 = v10;
    v97 = &v10[16 * v95];
    v10 = *v97;
    v98 = &v94[2 * v95];
    v99 = *(v98 + 1);
    sub_1D8164354((*a3 + 8 * *v97), (*a3 + 8 * *v98), (*a3 + 8 * v99), v111, a4);
    if (v7)
    {
      break;
    }

    if (v99 < v10)
    {
      goto LABEL_112;
    }

    if (v95 - 2 >= *v94)
    {
      goto LABEL_113;
    }

    *v97 = v10;
    *(v97 + 1) = v99;
    v100 = *v94 - v95;
    if (*v94 < v95)
    {
      goto LABEL_114;
    }

    v95 = *v94 - 1;
    sub_1D8120818(v98 + 16, v100, v98);
    *v94 = v95;
    v10 = v96;
  }

LABEL_104:
}

uint64_t sub_1D8163A0C(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 48;
  v10 = (a3 - a2) / 48;
  if (v9 >= v10)
  {
    sub_1D80E5DDC(a2, (a3 - a2) / 48, a4);
    v56 = &v5[48 * v10];
    __src = v5;
LABEL_15:
    v26 = 0;
    v53 = (v7 - 48);
    while (1)
    {
      i = &v56[v26];
      if (&v56[v26] <= v5 || v7 <= a1)
      {
LABEL_29:
        v43 = (i - v5) / 48;
        v44 = v7 < v5 || v7 >= &v5[48 * v43];
        if (v44 || v7 != v5)
        {
          v45 = 48 * v43;
          v46 = v7;
          v47 = v5;
          goto LABEL_47;
        }

        return 1;
      }

      v28 = v6;
      v30 = *(i - 5);
      v29 = i - 48;
      v31 = *(i - 2);
      v32 = *(i - 1);
      v62 = *(i - 6);
      v63 = v30;
      v64 = v31;
      v65 = v32;
      v33 = *(v7 - 40);
      v58 = *(v7 - 48);
      v59 = v33;
      v34 = *(v7 - 16);
      v60 = *(v7 - 32);
      v61 = v34;
      sub_1D8190DB4();
      sub_1D8190DB4();
      v35 = v66;
      v36 = a5(&v62, &v58);
      v66 = v35;
      if (v35)
      {
        break;
      }

      v37 = v36;

      v38 = (v28 + v26 - 48);
      if (v37)
      {
        v56 += v26;
        v6 = v28 + v26 - 48;
        v23 = v28 + v26 == v7;
        v5 = __src;
        v7 -= 48;
        if (!v23)
        {
          v41 = *v53;
          v42 = v53[2];
          *(v28 + v26 - 32) = v53[1];
          *(v28 + v26 - 16) = v42;
          *v38 = v41;
          v7 = v53;
          v6 = v28 + v26 - 48;
        }

        goto LABEL_15;
      }

      v6 = v28;
      if (&v56[v26] != (v28 + v26))
      {
        v39 = *v29;
        v40 = *(v29 + 2);
        *(v28 + v26 - 32) = *(v29 + 1);
        *(v28 + v26 - 16) = v40;
        *v38 = v39;
      }

      v26 -= 48;
      v5 = __src;
    }

    v47 = __src;
    v50 = (v56 - __src + v26) / 48;
    if (v7 < __src || v7 >= &__src[48 * v50])
    {
      v45 = 48 * v50;
      v46 = v7;
      goto LABEL_47;
    }

    if (v7 != __src)
    {
      v45 = 48 * v50;
      v46 = v7;
      goto LABEL_47;
    }
  }

  else
  {
    sub_1D80E5DDC(a1, (a2 - a1) / 48, a4);
    for (i = &v5[48 * v9]; ; i = v13)
    {
      if (v5 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = i;
      v14 = v6;
      v15 = *(v7 + 8);
      v62 = *v7;
      v63 = v15;
      v16 = *(v7 + 32);
      v64 = *(v7 + 16);
      v65 = v16;
      v17 = *(v5 + 1);
      v58 = *v5;
      v59 = v17;
      v18 = *(v5 + 2);
      v60 = *(v5 + 1);
      v61 = v18;
      sub_1D8190DB4();
      sub_1D8190DB4();
      v19 = v66;
      v20 = a5(&v62, &v58);
      v66 = v19;
      if (v19)
      {
        break;
      }

      v21 = v20;

      if (v21)
      {
        v22 = v7;
        v23 = v8 == v7;
        v7 += 48;
      }

      else
      {
        v22 = v5;
        v23 = v8 == v5;
        v5 += 48;
      }

      v6 = v14;
      if (!v23)
      {
        v24 = *v22;
        v25 = v22[2];
        *(v8 + 1) = v22[1];
        *(v8 + 2) = v25;
        *v8 = v24;
      }

      v8 += 48;
    }

    v48 = (v13 - v5) / 48;
    v49 = v8 < v5 || v8 >= &v5[48 * v48];
    if (v49 || v8 != v5)
    {
      v45 = 48 * v48;
      v46 = v8;
      v47 = v5;
LABEL_47:
      memmove(v46, v47, v45);
    }
  }

  return 1;
}

void sub_1D8163D8C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v80 = a5;
  v81 = a6;
  sub_1D7EE5A18();
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v68 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v24 = a2 - a1;
  v25 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v25)
  {
    goto LABEL_65;
  }

  v26 = a2;
  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v29 = v24 / v23;
  v84 = a1;
  v83 = a4;
  v30 = v27 / v23;
  if (v24 / v23 >= v27 / v23)
  {
    v74 = v19;
    v44 = v26;
    sub_1D80E5EF4(v26, v27 / v23, a4);
    v45 = v44;
    v75 = a4;
    v46 = a4 + v30 * v23;
    v47 = -v23;
    v48 = v46;
    v71 = a1;
    v72 = -v23;
LABEL_38:
    v49 = v45 + v47;
    v50 = a3;
    v68 = v48;
    v51 = v48;
    v52 = v69;
    v53 = v47;
    v76 = v45;
    v73 = v45 + v47;
    while (1)
    {
      if (v46 <= v75)
      {
        v84 = v45;
        v82 = v51;
        goto LABEL_63;
      }

      if (v45 <= a1)
      {
        v84 = v45;
        v82 = v68;
        goto LABEL_63;
      }

      v54 = v7;
      v55 = v50;
      v70 = v51;
      v77 = v46 + v53;
      v78 = v46;
      sub_1D81647A0(v46 + v53, v52, sub_1D7EE5A18);
      v56 = v52;
      v57 = v74;
      sub_1D81647A0(v49, v74, sub_1D7EE5A18);
      v58 = v80(v56, v57);
      if (v54)
      {
        break;
      }

      v59 = v58;
      v60 = v55 + v53;
      sub_1D7E54BC0(v57, sub_1D7EE5A18);
      sub_1D7E54BC0(v56, sub_1D7EE5A18);
      if (v59)
      {
        v64 = v55 < v76 || v60 >= v76;
        a3 = v55 + v53;
        if (v64)
        {
          v65 = v73;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v65;
          v7 = 0;
          v48 = v70;
          a1 = v71;
          v47 = v72;
          v46 = v78;
        }

        else
        {
          v48 = v70;
          v25 = v55 == v76;
          v47 = v72;
          v66 = v73;
          v45 = v73;
          v7 = 0;
          a1 = v71;
          v46 = v78;
          if (!v25)
          {
            v67 = v70;
            swift_arrayInitWithTakeBackToFront();
            v45 = v66;
            v48 = v67;
          }
        }

        goto LABEL_38;
      }

      v52 = v56;
      if (v55 < v78 || v60 >= v78)
      {
        v62 = v77;
        swift_arrayInitWithTakeFrontToBack();
        v50 = v60;
        v46 = v62;
        v51 = v62;
        v45 = v76;
        v7 = 0;
        a1 = v71;
        v53 = v72;
        v49 = v73;
      }

      else
      {
        v45 = v76;
        v63 = v77;
        v51 = v77;
        v25 = v78 == v55;
        v50 = v55 + v53;
        v46 = v77;
        v7 = 0;
        a1 = v71;
        v53 = v72;
        v49 = v73;
        if (!v25)
        {
          swift_arrayInitWithTakeBackToFront();
          v45 = v76;
          v50 = v60;
          v46 = v63;
          v51 = v63;
        }
      }
    }

    sub_1D7E54BC0(v57, sub_1D7EE5A18);
    sub_1D7E54BC0(v56, sub_1D7EE5A18);
    v84 = v76;
    v82 = v70;
  }

  else
  {
    v78 = a3;
    v31 = v26;
    sub_1D80E5EF4(a1, v24 / v23, a4);
    v32 = v31;
    v77 = a4 + v29 * v23;
    v82 = v77;
    v33 = a4;
    while (v33 < v77 && v32 < v78)
    {
      v35 = v32;
      sub_1D81647A0(v32, v21, sub_1D7EE5A18);
      sub_1D81647A0(v33, v17, sub_1D7EE5A18);
      v36 = v80(v21, v17);
      if (v6)
      {
        sub_1D7E54BC0(v17, sub_1D7EE5A18);
        sub_1D7E54BC0(v21, sub_1D7EE5A18);
        break;
      }

      v37 = v36;
      v38 = v33;
      sub_1D7E54BC0(v17, sub_1D7EE5A18);
      sub_1D7E54BC0(v21, sub_1D7EE5A18);
      if (v37)
      {
        v39 = v35;
        v40 = v23;
        v41 = v39 + v23;
        if (a1 < v39 || a1 >= v41)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = v41;
      }

      else
      {
        v33 += v23;
        if (a1 < v38 || a1 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v83 = v38 + v23;
        v32 = v35;
        v40 = v23;
      }

      a1 += v40;
      v84 = a1;
    }
  }

LABEL_63:
  sub_1D8164684(&v84, &v83, &v82, sub_1D7EE5A18);
}

uint64_t sub_1D8164354(void **a1, void **a2, char *a3, void **a4, uint64_t (*a5)(id *, void **))
{
  v6 = a4;
  v7 = a1;
  v8 = a2 - a1;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_1D80E75B8(a2, (a3 - a2) / 8, a4);
    v29 = a2;
    v13 = &v6[v9];
    v30 = -v6;
    v31 = a3;
    v53 = -v6;
    __src = v6;
LABEL_15:
    v32 = v29 - 1;
    --v31;
    v33 = v13 + v30;
    v55 = v29;
    while (1)
    {
      if (v13 <= v6 || v29 <= v7)
      {
LABEL_29:
        v45 = v13 - v6;
        v46 = v29 < v6 || v29 >= &v6[v45];
        if (v46 || v29 != v6)
        {
          v47 = 8 * v45;
          v48 = v6;
          goto LABEL_47;
        }

        return 1;
      }

      v56 = v33;
      v35 = v7;
      v36 = v13;
      v37 = v13 - 1;
      v60 = *(v13 - 1);
      v38 = v32;
      v59 = *v32;
      v39 = v59;
      v40 = v60;
      v41 = v39;
      v42 = a5(&v60, &v59);
      if (v5)
      {
        break;
      }

      v43 = v42;

      v44 = (v31 + 1);
      if (v43)
      {
        v6 = __src;
        v29 = v38;
        v7 = v35;
        v13 = v36;
        v30 = v53;
        if (v44 != v55)
        {
          *v31 = *v38;
          v29 = v38;
        }

        goto LABEL_15;
      }

      v7 = v35;
      v29 = v55;
      v32 = v38;
      if (v36 != v44)
      {
        *v31 = *v37;
      }

      --v31;
      v33 = v56 - 8;
      v13 = v37;
      v6 = __src;
    }

    v29 = v55;
    v48 = __src;
    v51 = v55 < __src || v55 >= &__src[v56 / 8];
    if (v51 || v55 != __src)
    {
      v47 = 8 * (v56 / 8);
      goto LABEL_47;
    }
  }

  else
  {
    v10 = v5;
    sub_1D80E75B8(a1, a2 - a1, a4);
    v12 = a2;
    v13 = &v6[v8];
    v14 = a3;
    while (1)
    {
      if (v6 >= v13 || v12 >= v14)
      {
        v29 = v7;
        goto LABEL_29;
      }

      v16 = v13;
      v17 = v7;
      v18 = v12;
      v60 = *v12;
      v19 = v6;
      v20 = *v6;
      v59 = v20;
      v21 = v60;
      v22 = v20;
      v23 = a5(&v60, &v59);
      if (v10)
      {
        break;
      }

      v24 = v23;

      if (v24)
      {
        v10 = 0;
        v25 = v18;
        v12 = v18 + 1;
        v26 = v17;
        v27 = v17 == v18;
        v6 = v19;
      }

      else
      {
        v10 = 0;
        v25 = v19;
        v6 = v19 + 1;
        v26 = v17;
        v27 = v17 == v19;
        v12 = v18;
      }

      v14 = a3;
      v13 = v16;
      if (!v27)
      {
        *v26 = *v25;
      }

      v7 = (v26 + 1);
    }

    v48 = v19;
    v49 = v16 - v19;
    v50 = v17 < v19 || v17 >= &v19[v49];
    if (v50 || v17 != v19)
    {
      v47 = 8 * v49;
      v29 = v17;
LABEL_47:
      memmove(v29, v48, v47);
    }
  }

  return 1;
}

void sub_1D8164684(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_8();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1D81647A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t AppBackgroundTaskManager.backgroundTask(withName:work:)(uint64_t a1, uint64_t a2, void (*a3)(void (*)(), uint64_t))
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = sub_1D8190EE4();
  v6 = [v4 beginBackgroundTaskWithName:v5 expirationHandler:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  a3(sub_1D816498C, v7);
}

void sub_1D816491C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 endBackgroundTask_];
}

uint64_t sub_1D8164A08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D81927E4();
  a4(v8, v6);
  return sub_1D8192824();
}

id TwoLabelButton.labelNormal.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

id TwoLabelButton.labelHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

void *TwoLabelButton.borderColor.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_borderColor;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *TwoLabelButton.backgroundColorNormal.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorNormal;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *TwoLabelButton.backgroundColorHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorHighlighted;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id TwoLabelButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *TwoLabelButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationTrigger) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_borderColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorNormal) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorHighlighted) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_onTap;
  OUTLINED_FUNCTION_3_140(qword_1EDBB38C0, MEMORY[0x1E69E7CA8]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  v4 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_titleLabelNormal;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_titleLabelNormal) = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  v6 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_titleLabelHighlighted;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_titleLabelHighlighted) = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setAttributedText_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  [v7 setLineBreakMode_];
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v9 = v7;
  v10 = [v8 init];
  [v10 setAttributedText_];
  [v10 setNumberOfLines_];
  [v10 setTextAlignment_];
  [v10 setLineBreakMode_];
  [v10 setAlpha_];
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v12 = v10;
  v13 = [v11 init];
  v14 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_highlightMask;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_highlightMask) = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v16 = v13;
  v17 = [v15 initWithWhite:1.0 alpha:0.7];
  [v16 setBackgroundColor_];

  [*(v0 + v14) setAlpha_];
  v18 = OUTLINED_FUNCTION_80();
  v21 = objc_msgSendSuper2(v19, v20, v18);
  v22 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
  OUTLINED_FUNCTION_8_4();
  v23 = *&v21[v22];
  v24 = v21;
  [v24 addSubview_];
  v25 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
  OUTLINED_FUNCTION_8_4();
  [v24 addSubview_];
  [v24 addSubview_];

  return v24;
}

id TwoLabelButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TwoLabelButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationTrigger) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_borderColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorNormal) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorHighlighted) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_onTap;
  OUTLINED_FUNCTION_3_140(qword_1EDBB38C0, MEMORY[0x1E69E7CA8]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall TwoLabelButton.layoutSubviews()()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_highlightMask);
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
  OUTLINED_FUNCTION_8_4();
  v3 = *&v2[v0];
  OUTLINED_FUNCTION_7_83();
  [v2 setFrame_];

  v4 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
  OUTLINED_FUNCTION_8_4();
  v5 = *&v4[v0];
  OUTLINED_FUNCTION_7_83();
  [v4 setFrame_];

  v6 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_borderColor;
  OUTLINED_FUNCTION_8_4();
  v7 = *(v0 + v6);
  if (v7)
  {
    v7 = [v7 CGColor];
  }

  v8 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor);
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor) = v7;

  v9 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorNormal;
  OUTLINED_FUNCTION_8_4();
  v10 = *(v0 + v9);
  if (v10)
  {
    v10 = [v10 CGColor];
  }

  v11 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal);
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal) = v10;

  v12 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_backgroundColorHighlighted;
  OUTLINED_FUNCTION_8_4();
  v13 = *(v0 + v12);
  if (v13)
  {
    v13 = [v13 CGColor];
  }

  v14 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted);
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted) = v13;

  [v0 bounds];
  if (CGRectGetHeight(v21) > 0.0)
  {
    sub_1D81655E0();
    v15 = [v0 layer];
    OUTLINED_FUNCTION_7_83();
    [&selRef_setMenu_ setCornerRadius_];

    v16 = [v1 layer];
    v17 = [v0 layer];
    [v17 cornerRadius];
    v19 = v18;

    [v16 setCornerRadius_];
  }
}

void sub_1D81655E0()
{
  v1 = v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState];
  v2 = [v0 layer];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 setBorderWidth_];

    v4 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
    swift_beginAccess();
    [*&v0[v4] setAlpha_];
    v5 = &v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted];
    swift_beginAccess();
    v6 = 1.0;
  }

  else
  {
    [v2 setBorderWidth_];

    v7 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
    swift_beginAccess();
    [*&v0[v7] setAlpha_];
    v5 = &v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted];
    swift_beginAccess();
    v6 = 0.0;
  }

  [*v5 setAlpha_];
  sub_1D8166BE4();
}

void TwoLabelButton.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  OUTLINED_FUNCTION_5_91();
  v5 = sub_1D8191604();
  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_touchesBegan_withEvent_, v5, a2);

  if ((*(v2 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState) & 1) == 0)
  {
    sub_1D816580C();
  }
}

void sub_1D816580C()
{
  v1 = CACurrentMediaTime();
  sub_1D7E0A1A8(0, &unk_1ECA11F80);
  v2 = sub_1D80D7434(0x6F43726564726F62, 0xEB00000000726F6CLL);
  v3 = [v0 layer];
  [v3 convertTime:0 fromLayer:v1];
  v5 = v4;

  [v2 setBeginTime_];
  [v2 setDuration_];
  v6 = *&v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor];
  if (v6 && (CopyWithAlpha = CGColorCreateCopyWithAlpha(v6, 0.4)) != 0)
  {
    v20 = CopyWithAlpha;
    type metadata accessor for CGColor();
    v8 = sub_1D8192614();
  }

  else
  {
    v8 = 0;
  }

  [v2 setToValue_];
  swift_unknownObjectRelease();
  v9 = *MEMORY[0x1E69797E8];
  [v2 setFillMode_];
  [v2 setRemovedOnCompletion_];

  v10 = [v0 layer];
  sub_1D80D7A40(v2, 0xD000000000000014, 0x80000001D81D97B0, v10);

  v11 = sub_1D80D7434(0x7974696361706FLL, 0xE700000000000000);
  v12 = *&v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_highlightMask];
  v13 = v11;
  v14 = [v12 layer];
  [v14 convertTime:0 fromLayer:v1];
  v16 = v15;

  [v13 setBeginTime_];
  [v13 setDuration_];
  v17 = sub_1D818ED14();
  [v13 setFromValue_];

  v18 = sub_1D818ED14();
  [v13 setToValue_];

  [v13 setFillMode_];
  [v13 setRemovedOnCompletion_];

  v19 = [v12 layer];
  sub_1D80D7A40(v13, 0x696E416168706C61, 0xEE006E6F6974616DLL, v19);
}

void TwoLabelButton.touchesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  OUTLINED_FUNCTION_5_91();
  v5 = sub_1D8191604();
  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_touchesCancelled_withEvent_, v5, a2);

  sub_1D8165BE0();
}

void sub_1D8165BE0()
{
  v1 = CACurrentMediaTime();
  sub_1D7E0A1A8(0, &unk_1ECA11F80);
  v2 = sub_1D80D7434(0x6F43726564726F62, 0xEB00000000726F6CLL);
  v3 = [v0 layer];
  [v3 convertTime:0 fromLayer:v1];
  v5 = v4;

  [v2 setBeginTime_];
  [v2 setDuration_];
  [v2 setToValue_];
  v6 = *MEMORY[0x1E69797E8];
  [v2 setFillMode_];
  [v2 setRemovedOnCompletion_];

  v7 = [v0 layer];
  sub_1D80D7A40(v2, 0xD000000000000014, 0x80000001D81D97B0, v7);

  v8 = sub_1D80D7434(0x7974696361706FLL, 0xE700000000000000);
  v9 = *&v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_highlightMask];
  v10 = v8;
  v11 = [v9 layer];
  [v11 convertTime:0 fromLayer:v1];
  v13 = v12;

  [v10 setBeginTime_];
  [v10 setDuration_];
  v14 = sub_1D818ED14();
  [v10 setFromValue_];

  v15 = sub_1D818ED14();
  [v10 setToValue_];

  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];

  v16 = [v9 layer];
  sub_1D80D7A40(v10, 0x696E416168706C61, 0xEE006E6F6974616DLL, v16);
}

uint64_t sub_1D8165EE0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  OUTLINED_FUNCTION_5_91();
  v8 = sub_1D8191614();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void TwoLabelButton.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  v5 = sub_1D8191604();
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_touchesEnded_withEvent_, v5, a2);

  if ((*(v2 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationTrigger) = 0;
    sub_1D8165BE0();
  }

  sub_1D7F1E8FC();
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;

    [v2 bounds];
    v13.x = v9;
    v13.y = v11;
    if (CGRectContainsPoint(v14, v13))
    {
      sub_1D816609C();
    }
  }
}

void sub_1D816609C()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState) = 1;
  if (*(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal);
    if (!v1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
    swift_beginAccess();
    v3 = *(v0 + v2);
    v4 = (v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal);
    swift_beginAccess();
    v5 = 2.0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted);
    if (!v1)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
    swift_beginAccess();
    v3 = *(v0 + v6);
    v4 = (v0 + OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted);
    swift_beginAccess();
    v5 = 0.0;
  }

  v7 = *v4;
  v8 = v1;
  v9 = v3;
  v10 = v7;
  sub_1D8166210(v9, v10, v8, v5);
}

void sub_1D8166210(void *a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v8 = CACurrentMediaTime();
  v9 = [v4 layer];
  [v9 setBorderWidth_];

  sub_1D7E0A1A8(0, &unk_1ECA11F80);
  v10 = sub_1D80D7434(0x756F72676B636162, 0xEF726F6C6F43646ELL);
  v11 = [v5 &selRef_setTyFunction_];
  [v11 convertTime:0 fromLayer:v8];
  v13 = v12;

  [v10 setBeginTime_];
  [v10 setDuration_];
  [v10 setToValue_];
  v81 = *MEMORY[0x1E69797E8];
  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];

  v86 = v10;
  v14 = [v5 &selRef_setTyFunction_];
  sub_1D80D7A40(v10, 0xD000000000000012, 0x80000001D81D9730, v14);

  v15 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  v16 = sub_1D818ED14();
  [v15 &selRef_clipsToBounds + 2];

  v17 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v18 = v15;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 1.0;
  LODWORD(v21) = 1041865114;
  v22 = [v17 initWithControlPoints__:v19 :{0.0, v21, v20}];
  v83 = v18;
  [v18 setTimingFunction_];

  v23 = sub_1D80D7434(0x7974696361706FLL, 0xE700000000000000);
  v24 = sub_1D818ED14();
  [v23 setFromValue_];

  v25 = sub_1D818ED14();
  [v23 &selRef_clipsToBounds + 2];

  v26 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v27 = v23;
  LODWORD(v28) = 0.25;
  LODWORD(v29) = 0.75;
  LODWORD(v30) = 1.0;
  v31 = [v26 &selRef:v28 setHidesBottomBarWhenPushed:{0.0, v29, v30} + 6];
  v84 = v27;
  [v27 setTimingFunction_];

  v32 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
  v33 = [a1 &selRef_setTyFunction_];
  [v33 convertTime:0 fromLayer:v8];
  v35 = v34;

  [v32 setBeginTime_];
  [v32 setDuration_];
  [v32 setFillMode_];
  [v32 setRemovedOnCompletion_];

  sub_1D7E336E0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D81A5090;
  *(v36 + 32) = v18;
  *(v36 + 40) = v27;
  sub_1D8167194(v36, v32);
  v37 = [a1 &selRef_setTyFunction_];
  sub_1D80D7A40(v32, 0xD000000000000015, 0x80000001D81D9750, v37);

  v38 = sub_1D80D7434(0x7974696361706FLL, 0xE700000000000000);
  v39 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
  swift_beginAccess();
  v40 = *&v5[v39];
  v41 = v38;
  v42 = [v40 &selRef_setTyFunction_];
  [v42 convertTime:0 fromLayer:v8 + 0.05];
  v44 = v43;

  [v41 setBeginTime_];
  [v41 setDuration_];
  v45 = sub_1D818ED14();
  [v41 setFromValue_];

  v46 = sub_1D818ED14();
  [v41 setToValue_];

  v47 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v48) = 0.25;
  LODWORD(v49) = 0.75;
  LODWORD(v50) = 1.0;
  v51 = [v47 initWithControlPoints__:v48 :{0.0, v49, v50}];
  [v41 setTimingFunction_];

  [v41 setFillMode_];
  [v41 setRemovedOnCompletion_];

  v52 = [a2 &selRef_setTyFunction_];
  sub_1D80D7A40(v41, 0x6D696E41776F6873, 0xED00006E6F697461, v52);

  v53 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  v54 = *&v5[v39];
  v55 = v53;
  v56 = [v54 &selRef_setTyFunction_];
  [v56 convertTime:0 fromLayer:v8 + 0.05];
  v58 = v57;

  [v55 setBeginTime_];
  [v55 setDuration_];
  v59 = sub_1D818ED14();
  [v55 setFromValue_];

  v60 = sub_1D818ED14();
  [v55 setToValue_];

  v61 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v62) = 1045220557;
  LODWORD(v63) = 1.0;
  LODWORD(v64) = 1045220557;
  v65 = [v61 initWithControlPoints__:v62 :{0.0, v64, v63}];
  [v55 setTimingFunction_];

  [v55 setFillMode_];
  [v55 setRemovedOnCompletion_];

  v66 = [a2 layer];
  sub_1D80D7A40(v55, 0xD000000000000010, 0x80000001D81D9770, v66);

  v67 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  v68 = *&v5[v39];
  v69 = v67;
  v70 = [v68 layer];
  [v70 convertTime:0 fromLayer:v8 + 0.15];
  v72 = v71;

  [v69 setBeginTime_];
  [v69 setDuration_];
  v73 = sub_1D818ED14();
  [v69 &selRef_childViewControllerForStatusBarStyle + 4];

  v74 = sub_1D818ED14();
  [v69 setToValue_];

  v75 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v76) = 0.25;
  LODWORD(v77) = 1.0;
  LODWORD(v78) = 1041865114;
  v79 = [v75 initWithControlPoints__:v76 :{0.0, v78, v77}];
  [v69 setTimingFunction_];

  [v69 setFillMode_];
  [v69 setDelegate_];
  [v69 setRemovedOnCompletion_];

  v80 = [a2 layer];
  sub_1D80D7A40(v69, 0xD000000000000016, 0x80000001D81D9790, v80);
}

void sub_1D8166BE4()
{
  v1 = [v0 layer];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBorderColor];
  [v1 setBorderColor_];

  LODWORD(v1) = v0[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState];
  v5 = [v0 layer];
  v3 = &OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorHighlighted;
  if (!v1)
  {
    v3 = &OBJC_IVAR____TtC5TeaUI14TwoLabelButton_currentBackgroundColorNormal;
  }

  v4 = *&v0[*v3];
  [v5 setBackgroundColor_];
}

id TwoLabelButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TwoLabelButton.animationDidStop(_:finished:)(CAAnimation _, Swift::Bool finished)
{
  v2[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState] = (v2[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_buttonState] & 1) == 0;
  sub_1D81655E0();
  v2[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationState] = 0;
  v3 = [v2 layer];
  [v3 removeAllAnimations];

  v4 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelNormal;
  OUTLINED_FUNCTION_8_4();
  v5 = [*&v2[v4] layer];
  [v5 removeAllAnimations];

  v6 = OBJC_IVAR____TtC5TeaUI14TwoLabelButton_labelHighlighted;
  OUTLINED_FUNCTION_8_4();
  v7 = [*&v2[v6] layer];
  [v7 removeAllAnimations];

  if ((v2[OBJC_IVAR____TtC5TeaUI14TwoLabelButton_animationTrigger] & 1) == 0)
  {
    sub_1D7E80824();
  }
}

_BYTE *sub_1D8166FB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8167090()
{
  result = qword_1ECA11F68;
  if (!qword_1ECA11F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11F68);
  }

  return result;
}

unint64_t sub_1D81670E8()
{
  result = qword_1ECA11F70;
  if (!qword_1ECA11F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11F70);
  }

  return result;
}

unint64_t sub_1D8167140()
{
  result = qword_1ECA11F78;
  if (!qword_1ECA11F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11F78);
  }

  return result;
}

void sub_1D8167194(uint64_t a1, void *a2)
{
  sub_1D7E0A1A8(0, qword_1ECA11F90);
  v3 = sub_1D8191304();

  [a2 setAnimations_];
}

uint64_t sub_1D816721C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8167258(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8167298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8167340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D8191E84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1D81673AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D8190464();
  OUTLINED_FUNCTION_9();
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8190744();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1D816855C();
  v14 = v13;
  OUTLINED_FUNCTION_9();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v18);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v33 = a1;
  sub_1D81685F0();
  sub_1D81688BC(&qword_1ECA12110, sub_1D81685F0);
  sub_1D81909D4();
  sub_1D8190454();
  OUTLINED_FUNCTION_4_101();
  sub_1D81688BC(v23, v24);
  OUTLINED_FUNCTION_3_141();
  sub_1D81688BC(v25, v26);
  v27 = v30;
  sub_1D8190854();
  (*(v31 + 8))(v6, v27);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_1D81676C8()
{
  v0 = sub_1D8190704();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_1D8167724()
{
  sub_1D8190724();
  sub_1D8168710(0, &qword_1ECA120B0, sub_1D81686DC, sub_1D8168864);
  sub_1D81688BC(&qword_1ECA120D8, MEMORY[0x1E697C948]);
  sub_1D8168904();
  return sub_1D8190964();
}

uint64_t sub_1D8167828@<X0>(uint64_t a1@<X8>)
{
  sub_1D81686DC(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190714();
  v5 = sub_1D8190944();
  if (sub_1D8190714())
  {
    v6 = sub_1D81908D4();
  }

  else
  {
    v6 = sub_1D8190934();
  }

  v19[2] = v5;
  v19[3] = v6;
  sub_1D8190714();
  sub_1D81905D4();
  v7 = sub_1D8190804();
  v9 = v8;
  v11 = v10;
  sub_1D8168784();
  sub_1D8168A94();
  sub_1D8190884();
  sub_1D80CBD04(v7, v9, v11 & 1);

  sub_1D8168710(0, &qword_1ECA120B0, sub_1D81686DC, sub_1D8168864);
  v13 = (a1 + *(v12 + 36));
  sub_1D8168864();
  v15 = *(v14 + 28);
  v16 = *MEMORY[0x1E69816C0];
  v17 = sub_1D8190954();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = swift_getKeyPath();
  return sub_1D8168CF4(v4, a1);
}

uint64_t sub_1D8167A98()
{
  sub_1D81684C8();
  sub_1D8190AA4();
  return v1;
}

uint64_t sub_1D8167AEC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_84(a1, &qword_1ECA10BE8, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CheckboxView.CheckToggleStyle();
  v8 = sub_1D8168438();
  OUTLINED_FUNCTION_2_165();
  v25 = v4;
  v26 = v7;
  v27 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_96();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8_63();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  v9 = sub_1D8190A14();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21[-v16];
  v22 = v5;
  v23 = v6;
  v24 = v1;
  sub_1D8190574();
  sub_1D8190A04();
  OUTLINED_FUNCTION_5_92();
  v18 = swift_getWitnessTable();
  sub_1D80CCC80(v14, v9, v18);
  v19 = *(v11 + 8);
  v19(v14, v9);
  sub_1D80CCC80(v17, v9, v18);
  return (v19)(v17, v9);
}

uint64_t sub_1D8167D0C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v54 - v9;
  sub_1D8168810(0, &qword_1ECA10BE8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v54 - v13;
  v56 = a2;
  v64 = a3;
  v15 = type metadata accessor for CheckboxView.CheckToggleStyle();
  v16 = sub_1D8168438();
  WitnessTable = swift_getWitnessTable();
  v68 = v15;
  v69 = v11;
  v74 = v11;
  v75 = v15;
  v66 = WitnessTable;
  v67 = v16;
  v76 = v16;
  v77 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  v62 = sub_1D8191E84();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v61 = v54 - v28;
  if (*a1)
  {
    __swift_storeEnumTagSinglePayload(v26, 1, 1, OpaqueTypeMetadata2);
    v74 = v69;
    v75 = v68;
    v76 = v67;
    v77 = v66;
    swift_getOpaqueTypeConformance2();
    v29 = a1;
  }

  else
  {
    sub_1D81905D4();
    v54[1] = v30;
    v55 = v24;
    v58 = v26;
    v57 = v19;
    sub_1D8167A98();
    sub_1D8190A54();
    v31 = swift_checkMetadataState();
    v32 = v21;
    v33 = v69;
    v34 = v67;
    v29 = a1;
    v35 = v66;
    sub_1D8190864();
    (*(v12 + 8))(v14, v33);
    v74 = v33;
    v75 = v31;
    v76 = v34;
    v77 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v55;
    sub_1D80CCC80(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v38 = v57;
    v39 = *(v57 + 8);
    v39(v32, OpaqueTypeMetadata2);
    sub_1D80CCC80(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v39(v37, OpaqueTypeMetadata2);
    v26 = v58;
    (*(v38 + 32))(v58, v32, OpaqueTypeMetadata2);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, OpaqueTypeMetadata2);
  }

  v40 = v61;
  sub_1D8167340(v26, v61);
  v41 = v26;
  v42 = v60;
  v58 = *(v60 + 8);
  v43 = v62;
  v44 = (v58)(v41, v62);
  v45 = *(v29 + 4);
  v46 = v59;
  v45(v44);
  v47 = v56;
  v48 = v64;
  sub_1D80CCC80(v46, v56, v64);
  v49 = v63;
  v57 = *(v63 + 8);
  (v57)(v46, v47);
  (*(v42 + 16))(v41, v40, v43);
  v73[0] = v41;
  v50 = v70;
  (*(v49 + 16))(v46, v70, v47);
  v72[0] = v43;
  v72[1] = v47;
  v73[1] = v46;
  v74 = v69;
  v75 = v68;
  v76 = v67;
  v77 = v66;
  v71 = swift_getOpaqueTypeConformance2();
  v74 = swift_getWitnessTable();
  v75 = v48;
  sub_1D8133860(v73, 2, v72);
  v51 = v57;
  (v57)(v50, v47);
  v52 = v58;
  (v58)(v40, v43);
  v51(v46, v47);
  return (v52)(v41, v43);
}

unint64_t sub_1D8168438()
{
  result = qword_1ECA10BE0;
  if (!qword_1ECA10BE0)
  {
    sub_1D8168810(255, &qword_1ECA10BE8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BE0);
  }

  return result;
}

void sub_1D81684C8()
{
  if (!qword_1ECA0FEF0)
  {
    v0 = sub_1D8190AC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FEF0);
    }
  }
}

void sub_1D816855C()
{
  if (!qword_1ECA120A0)
  {
    sub_1D81685F0();
    sub_1D81688BC(&qword_1ECA12110, sub_1D81685F0);
    v0 = sub_1D81909F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA120A0);
    }
  }
}

void sub_1D81685F0()
{
  if (!qword_1ECA120A8)
  {
    sub_1D8190724();
    sub_1D8168710(255, &qword_1ECA120B0, sub_1D81686DC, sub_1D8168864);
    sub_1D81688BC(&qword_1ECA120D8, MEMORY[0x1E697C948]);
    sub_1D8168904();
    v0 = sub_1D8190974();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA120A8);
    }
  }
}

void sub_1D8168710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D8190414();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D8168784()
{
  if (!qword_1ECA120C0)
  {
    sub_1D8168810(255, &qword_1ECA120C8, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA120C0);
    }
  }
}

void sub_1D8168810(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1D8168864()
{
  if (!qword_1ECA120D0)
  {
    sub_1D8190954();
    v0 = sub_1D8190754();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA120D0);
    }
  }
}

uint64_t sub_1D81688BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8168904()
{
  result = qword_1ECA120E0;
  if (!qword_1ECA120E0)
  {
    sub_1D8168710(255, &qword_1ECA120B0, sub_1D81686DC, sub_1D8168864);
    sub_1D81689E4();
    sub_1D81688BC(&qword_1ECA12108, sub_1D8168864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA120E0);
  }

  return result;
}

unint64_t sub_1D81689E4()
{
  result = qword_1ECA120E8;
  if (!qword_1ECA120E8)
  {
    sub_1D81686DC(255);
    sub_1D8168A94();
    sub_1D81688BC(&qword_1ECA12100, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA120E8);
  }

  return result;
}

unint64_t sub_1D8168A94()
{
  result = qword_1ECA120F0;
  if (!qword_1ECA120F0)
  {
    sub_1D8168784();
    sub_1D8168B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA120F0);
  }

  return result;
}

unint64_t sub_1D8168B14()
{
  result = qword_1ECA120F8;
  if (!qword_1ECA120F8)
  {
    sub_1D8168810(255, &qword_1ECA120C8, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA120F8);
  }

  return result;
}

uint64_t sub_1D8168B98()
{
  sub_1D8190744();

  return sub_1D81676C8();
}

uint64_t sub_1D8168C2C(uint64_t a1)
{
  v2 = sub_1D8190954();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D81904C4();
}

uint64_t sub_1D8168CF4(uint64_t a1, uint64_t a2)
{
  sub_1D81686DC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8168D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 16);
  v6 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v3;
  v18 = *(v3 + 16);
  (*(v8 + 16))(v11, a1, v6, v15);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v8 + 8))(v11, v6);
    sub_1D8190DB4();
  }

  else
  {
    (*(v13 + 32))(v17, v11, v5);
    v18 = v20(v17, v21);
    (*(v13 + 8))(v17, v5);
  }

  return v18;
}

uint64_t StateCommandContextTitle.init(default:block:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t, char *)@<X8>)
{
  v12 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  __swift_storeEnumTagSinglePayload(&v22 - v16, 1, 1, a5);
  v18 = a2(a1, v17);
  v20 = v19;
  (*(*(a4 - 8) + 8))(a1, a4);
  result = (*(v14 + 8))(v17, v12);
  a6[2] = v18;
  a6[3] = v20;
  *a6 = a2;
  a6[1] = a3;
  return result;
}

uint64_t sub_1D8169084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

CGSize_optional __swiftcall ModalHostable.preferredModalContentSize(for:)(CGSize a1)
{
  v1 = 0;
  result.value.height = a1.height;
  result.value.width = a1.width;
  result.is_nil = v1;
  return result;
}

uint64_t ModalHostable<>.modalHostViewController.getter()
{
  for (i = [v0 parentViewController]; ; i = v3)
  {
    result = 0;
    if (!i)
    {
      break;
    }

    type metadata accessor for ModalHostViewController();
    result = swift_dynamicCastClass();
    if (result)
    {
      break;
    }

    v3 = [i parentViewController];
  }

  return result;
}

uint64_t sub_1D8169218()
{
  v0 = sub_1D818E454();
  __swift_allocate_value_buffer(v0, qword_1EDBB0600);
  __swift_project_value_buffer(v0, qword_1EDBB0600);
  sub_1D8190EE4();
  return sub_1D818E424();
}

uint64_t sub_1D81692C0()
{
  v0 = sub_1D818E454();
  __swift_allocate_value_buffer(v0, qword_1EDBB05D8);
  __swift_project_value_buffer(v0, qword_1EDBB05D8);
  sub_1D8190EE4();
  return sub_1D818E424();
}

uint64_t sub_1D8169368(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1D818E454();
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_6_97();
  v4 = OUTLINED_FUNCTION_8_64();

  return v5(v4);
}

uint64_t sub_1D81693F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8169454(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ModalHostViewController.modalHostDelegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ModalHostViewController.modalHostDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ModalHostViewController.modalHostDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

id ModalHostViewController.isCloseButtonHidden.getter()
{
  v0 = sub_1D81696BC();
  v1 = [v0 isHidden];

  return v1;
}

void ModalHostViewController.isCloseButtonHidden.setter(char a1)
{
  v2 = sub_1D81696BC();
  [v2 setHidden_];
}

id sub_1D81696BC()
{
  v1 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController____lazy_storage___closeButton;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23ModalHostViewController____lazy_storage___closeButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI23ModalHostViewController____lazy_storage___closeButton];
  }

  else
  {
    v4 = v0;
    v10[3] = swift_getObjectType();
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v5 = v0;
    v6 = sub_1D7FC8078(24, v10, sel_closeButtonPressedWithSender_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id (*ModalHostViewController.isCloseButtonHidden.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_1D81696BC();
  v4 = [v3 isHidden];

  *(a1 + 8) = v4;
  return sub_1D81697CC;
}

char *ModalHostViewController.init(viewController:styler:delegate:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_1D818E794();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v12 = a2[1];
  v14 = &v5[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate];
  *&v5[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5TeaUI23ModalHostViewController____lazy_storage___closeButton] = 0;
  v15 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v16 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
  v17 = type metadata accessor for ModalViewSession();
  __swift_storeEnumTagSinglePayload(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController] = a1;
  v18 = &v5[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler];
  *v18 = v13;
  *(v18 + 1) = v12;
  swift_beginAccess();
  *(v14 + 1) = v29;
  swift_unknownObjectWeakAssign();
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v32, sel_initWithRootViewController_, v19);
  v21 = sub_1D81696BC();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1D81921A4();

  v30 = 0xD000000000000014;
  v31 = 0x80000001D81D97D0;
  sub_1D818E784();
  v22 = sub_1D818E764();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1DA713260](v22, v24);

  sub_1D7F89C88(v30, v31, v21);

  if (*&v20[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8])
  {
    v25 = v20;
    [v25 setTransitioningDelegate_];
  }

  swift_unknownObjectRelease();
  return v20;
}

uint64_t type metadata accessor for ModalHostViewController()
{
  result = qword_1EDBB05A8;
  if (!qword_1EDBB05A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8169AF8()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_modalHostDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController____lazy_storage___closeButton) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v2 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
  v3 = type metadata accessor for ModalViewSession();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8169BE0()
{
  OUTLINED_FUNCTION_0_8();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_7_85();
  v4[4] = sub_1D816C5A0;
  v4[5] = v1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_180();
  v4[2] = v2;
  v4[3] = &block_descriptor_25_2;
  v3 = _Block_copy(v4);

  [v0 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

id sub_1D8169CE0()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result setBackgroundColor_];

    return [v0 setNeedsStatusBarAppearanceUpdate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8169D58()
{
  v1 = v0;
  v2 = [v0 presentingViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];

    if (v4)
    {
      v5 = [v4 window];

      if (v5)
      {
        [v5 bounds];
        v7 = v6;
        v9 = v8;

        v18 = *&v1[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        sub_1D816C25C();
        v10 = v18;
        if (swift_dynamicCast())
        {
          sub_1D7E05450(v16, v19);
          v11 = v20;
          v12 = v21;
          __swift_project_boxed_opaque_existential_1(v19, v20);
          v13 = COERCE_DOUBLE((*(v12 + 8))(v11, v12, v7, v9));
          if ((v15 & 1) == 0)
          {
            [v1 setPreferredContentSize_];
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        else
        {
          v17 = 0;
          memset(v16, 0, sizeof(v16));
          sub_1D816C2B8(v16, &unk_1ECA12160, sub_1D816C25C);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id ModalHostViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
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

id ModalHostViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id ModalHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ModalHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ModalHostViewController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [*&v0[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController] navigationItem];
  v2 = sub_1D81696BC();
  v3 = OUTLINED_FUNCTION_8_64();
  [v3 v4];

  sub_1D8169CE0();
}

Swift::Void __swiftcall ModalHostViewController.viewWillLayoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillLayoutSubviews);
  v1 = [v0 presentingViewController];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  if (!*&v0[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8])
  {
LABEL_5:

LABEL_6:
    sub_1D8169D58();
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    OUTLINED_FUNCTION_9_0();

    OUTLINED_FUNCTION_3_2(v3, sel_setFrame_);
    goto LABEL_5;
  }

  __break(1u);
}

Swift::Void __swiftcall ModalHostViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  sub_1D8169CE0();
}

Swift::Void __swiftcall ModalHostViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidAppear_, a1);
  _s5TeaUI23ModalHostViewControllerC24sceneWillEnterForegroundyyF_0();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_6_97();
    v4 = OUTLINED_FUNCTION_8_64();
    v5(v4);
    swift_unknownObjectRelease();
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_1EDBB05C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D818E454();
  __swift_project_value_buffer(v7, qword_1EDBB05D8);
  v8 = sub_1D818E404();
  [v6 postNotification_];

  v9 = [v2 presentingViewController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 subviews];

      sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
      v14 = sub_1D8191314();

      v15 = *&v2[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView];
      v24 = v15;
      MEMORY[0x1EEE9AC00](v16);
      v23[2] = &v24;
      sub_1D7F8F4EC(sub_1D816C030, v23, v14);
      LOBYTE(v12) = v17;

      if (v12)
      {
        goto LABEL_12;
      }

      v18 = &v2[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler];
      if (!*&v2[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8])
      {
        goto LABEL_12;
      }

      v19 = [v10 view];
      if (v19)
      {
        v20 = v19;
        [v19 bounds];
        OUTLINED_FUNCTION_9_0();

        OUTLINED_FUNCTION_3_2(v15, sel_setFrame_);
        v21 = [v10 view];
        if (v21)
        {
          v22 = v21;
          [v21 addSubview_];

          [v15 setEffect_];
LABEL_12:

          return;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t _s5TeaUI23ModalHostViewControllerC24sceneWillEnterForegroundyyF_0()
{
  v1 = v0;
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_1D818E794();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModalViewSession();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController);
  v12 = v25;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D816C25C();
  v13 = v12;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v23, v26);
    v14 = *(v9 + 24);
    v15 = sub_1D818E754();
    __swift_storeEnumTagSinglePayload(v11 + v14, 1, 1, v15);
    sub_1D818E784();
    v16 = sub_1D818E764();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    sub_1D818E744();
    *v11 = v16;
    v11[1] = v18;
    sub_1D816C528(v11, v4);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
    v19 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
    swift_beginAccess();
    sub_1D816C4A8(v4, v1 + v19);
    swift_endAccess();
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v21 + 16))(v11, v20, v21);
    sub_1D816C44C(v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    return sub_1D816C2B8(v23, &unk_1ECA12160, sub_1D816C25C);
  }
}

Swift::Void __swiftcall ModalHostViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1);
  _s5TeaUI23ModalHostViewControllerC23sceneDidEnterBackgroundyyF_0();
  if (*&v1[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8])
  {
    v3 = *&v1[OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView];
    [v3 setEffect_];
    [v3 removeFromSuperview];
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_6_97();
    (*(v4 + 16))();
    swift_unknownObjectRelease();
  }

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1EDBB05F0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D818E454();
  __swift_project_value_buffer(v6, qword_1EDBB0600);
  v7 = sub_1D818E404();
  v8 = OUTLINED_FUNCTION_9_54();
  [v8 v9];
}

uint64_t _s5TeaUI23ModalHostViewControllerC23sceneDidEnterBackgroundyyF_0()
{
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for ModalViewSession();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController);
  v10 = v17;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D816C25C();
  v11 = v10;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v18, v20);
    v12 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
    swift_beginAccess();
    sub_1D816C368(v0 + v12, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1D816C2B8(v6, qword_1EDBB1418, type metadata accessor for ModalViewSession);
    }

    else
    {
      sub_1D816C3E8(v6, v9);
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
      swift_beginAccess();
      sub_1D816C4A8(v3, v0 + v12);
      swift_endAccess();
      v14 = v21;
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v15 + 40))(v9, v14, v15);
      sub_1D816C44C(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    return sub_1D816C2B8(v18, &unk_1ECA12160, sub_1D816C25C);
  }
}

void ModalHostViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_7_85();
  v11[4] = sub_1D816C050;
  v11[5] = v7;
  OUTLINED_FUNCTION_2_1();
  v11[1] = 1107296256;
  v11[2] = sub_1D7F6900C;
  v11[3] = &block_descriptor_87;
  v8 = _Block_copy(v11);

  v9 = OUTLINED_FUNCTION_9_54();
  [v9 v10];
  _Block_release(v8);
}

void sub_1D816B05C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D8169D58();
  }
}

uint64_t _s5TeaUI23ModalHostViewControllerC21sceneWillResignActiveyyF_0()
{
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for ModalViewSession();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController);
  v7 = v15;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D816C25C();
  v8 = v7;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v13, v16);
    v9 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
    swift_beginAccess();
    sub_1D816C368(v0 + v9, v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_1D816C2B8(v3, qword_1EDBB1418, type metadata accessor for ModalViewSession);
    }

    else
    {
      sub_1D816C3E8(v3, v6);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 24))(v6, v11, v12);
      sub_1D816C44C(v6);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1D816C2B8(v13, &unk_1ECA12160, sub_1D816C25C);
  }
}

uint64_t _s5TeaUI23ModalHostViewControllerC20sceneDidBecomeActiveyyF_0()
{
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for ModalViewSession();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_viewController);
  v7 = v15;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D816C25C();
  v8 = v7;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v13, v16);
    v9 = OBJC_IVAR____TtC5TeaUI23ModalHostViewController_session;
    swift_beginAccess();
    sub_1D816C368(v0 + v9, v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_1D816C2B8(v3, qword_1EDBB1418, type metadata accessor for ModalViewSession);
    }

    else
    {
      sub_1D816C3E8(v3, v6);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 32))(v6, v11, v12);
      sub_1D816C44C(v6);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1D816C2B8(v13, &unk_1ECA12160, sub_1D816C25C);
  }
}

uint64_t ModalHostViewController.keyCommands.getter()
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D7E0A1A8(0, &qword_1EDBB3260);
  v0 = sub_1D8190F14();
  v2 = sub_1D7E3DCEC(v0, v1, 0, sel_dismissKeyCommand);
  MEMORY[0x1DA713500]();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D81913B4();
  }

  sub_1D8191404();
  v3 = sub_1D7E3DCEC(91, 0xE100000000000000, 0x100000, sel_dismissKeyCommand);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_7();
  v6 = sub_1D818E514();
  v8 = v7;

  sub_1D7F76CD4(v6, v8, v3);
  MEMORY[0x1DA713500](v9);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D81913B4();
  }

  sub_1D8191404();

  return v11;
}

void sub_1D816B818()
{
  OUTLINED_FUNCTION_0_8();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_7_85();
  v4[4] = sub_1D816C240;
  v4[5] = v1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_180();
  v4[2] = v2;
  v4[3] = &block_descriptor_21_6;
  v3 = _Block_copy(v4);

  [v0 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

void sub_1D816B8B8()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_6_97();
      v2 = OUTLINED_FUNCTION_8_64();
      v3(v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id ModalHostViewController.animationController(forPresented:presenting:source:)(int a1, id a2)
{
  if (!*(v2 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8))
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView);
  result = [a2 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    OUTLINED_FUNCTION_9_0();

    OUTLINED_FUNCTION_3_2(v4, sel_setFrame_);
    result = [a2 view];
    if (result)
    {
      v7 = result;
      [result addSubview_];

      v8 = [objc_allocWithZone(MEMORY[0x1E69DD6F0]) init];
      [v8 setIsReversed_];
      OUTLINED_FUNCTION_0_8();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_7_85();
      v14[4] = sub_1D816C058;
      v14[5] = v9;
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_1_180();
      v14[2] = v10;
      v14[3] = &block_descriptor_4;
      v11 = _Block_copy(v14);

      v12 = OUTLINED_FUNCTION_9_54();
      [v12 v13];
      _Block_release(v11);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D816BB40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView) setEffect_];
  }
}

id ModalHostViewController.animationController(forDismissed:)()
{
  if (!*(v0 + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_styler + 8))
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD6F0]) init];
  [v1 setIsReversed_];
  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_85();
  v13 = sub_1D816C060;
  v14 = v2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1D7E64940;
  v12 = &block_descriptor_8_1;
  v3 = _Block_copy(&v9);

  [v1 setNoninteractiveAnimations_];
  _Block_release(v3);
  OUTLINED_FUNCTION_0_8();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_7_85();
  v13 = sub_1D816C068;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1D7EB30D4;
  v12 = &block_descriptor_12_2;
  v5 = _Block_copy(&v9);

  v6 = OUTLINED_FUNCTION_9_54();
  [v6 v7];
  _Block_release(v5);
  return v1;
}

void sub_1D816BDF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView) setEffect_];
  }
}

void sub_1D816BE60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5TeaUI23ModalHostViewController_transitionEffectView) removeFromSuperview];
  }
}

Swift::Void __swiftcall ModalHostViewController.presentationControllerDidDismiss(_:)(UIPresentationController *a1)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_6_97();
    (*(v1 + 24))();
    swift_unknownObjectRelease();
  }
}

void sub_1D816C138()
{
  sub_1D816C314(319, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D816C25C()
{
  result = qword_1EDBB1B58;
  if (!qword_1EDBB1B58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB1B58);
  }

  return result;
}

uint64_t sub_1D816C2B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D816C314(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D816C314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D816C368(uint64_t a1, uint64_t a2)
{
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D816C3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalViewSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D816C44C(uint64_t a1)
{
  v2 = type metadata accessor for ModalViewSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D816C4A8(uint64_t a1, uint64_t a2)
{
  sub_1D816C314(0, qword_1EDBB1418, type metadata accessor for ModalViewSession);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D816C528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalViewSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t URLHandlerOpenOptions.init(options:)()
{
  sub_1D7E4E660();
  if (v3)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1D7E7BAAC(v2);
  }

  sub_1D7E4E660();
  sub_1D7E4E660();

  if (v1[3])
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1D7E7BAAC(v1);
  }

  return sub_1D818F644();
}

uint64_t sub_1D816C6E4()
{
  sub_1D816CBD4(0, &qword_1EDBB2C28, sub_1D816CC38, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  v2 = *MEMORY[0x1E69DDB68];
  *(inited + 32) = *MEMORY[0x1E69DDB68];
  v3 = v2;
  v4 = sub_1D816CB70(v0);
  v6 = v5;
  sub_1D7E09D14(0, &qword_1EDBB3400);
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *MEMORY[0x1E69DDB58];
  *(inited + 64) = v8;
  *(inited + 72) = v7;
  v9 = v7;
  if ([v0 annotation])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_1D7E09D14(0, &qword_1EDBBC780);
  *(inited + 104) = v10;
  v11 = swift_allocObject();
  *(inited + 80) = v11;
  *(v11 + 16) = v16;
  *(v11 + 32) = v17;
  v12 = *MEMORY[0x1E69DDB60];
  *(inited + 112) = *MEMORY[0x1E69DDB60];
  v13 = v12;
  v14 = [v0 openInPlace];
  *(inited + 144) = MEMORY[0x1E69E6370];
  *(inited + 120) = v14;
  type metadata accessor for OpenURLOptionsKey();
  sub_1D7E09E08();
  return sub_1D8190D94();
}

uint64_t sub_1D816C888()
{
  sub_1D816CB70(v0);
  if ([v0 annotation])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  [v0 openInPlace];
  return sub_1D818F644();
}

uint64_t URLHandlerContext<A>.options.getter()
{
  v0 = type metadata accessor for AppURLContext();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_15();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_0_249();
  sub_1D816CBD4(0, v4, v5, MEMORY[0x1E69D66D8]);
  sub_1D818F494();
  v6 = *v3;
  sub_1D8190DB4();
  sub_1D7FEB20C(v3);
  return v6;
}

uint64_t URLHandlerContext<A>.options2.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppURLContext();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_0_249();
  sub_1D816CBD4(0, v7, v8, MEMORY[0x1E69D66D8]);
  sub_1D818F494();
  v9 = *(v3 + 28);
  v10 = sub_1D818F654();
  (*(*(v10 - 8) + 16))(a1, v6 + v9, v10);
  return sub_1D7FEB20C(v6);
}

uint64_t URLHandlerContext<A>.route.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for AppURLContext();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_0_249();
  sub_1D816CBD4(0, v7, v8, MEMORY[0x1E69D66D8]);
  sub_1D818F494();
  v9 = *(v6 + *(v3 + 32));
  result = sub_1D7FEB20C(v6);
  *a1 = v9;
  return result;
}

uint64_t sub_1D816CB70(void *a1)
{
  v1 = [a1 sourceApplication];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D816CBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D816CC38()
{
  if (!qword_1EDBB3028)
  {
    type metadata accessor for OpenURLOptionsKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB3028);
    }
  }
}

id CrossFadeNavigationBarCompressionAnimation.init(navigationItem:navigationBar:scrollView:backgroundColor:)()
{
  OUTLINED_FUNCTION_1_86();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_appliedPercentage];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_navigationItem] = v4;
  *&v1[OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_navigationBar] = v3;
  *&v1[OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_scrollView] = v2;
  *&v1[OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_backgroundColor] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall CrossFadeNavigationBarCompressionAnimation.attached()()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_appliedPercentage;
  *v1 = 0;
  *(v1 + 8) = 1;
  OUTLINED_FUNCTION_0_250();
}

void sub_1D816CDE4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_scrollView);
    v4 = 0.0;
    if (v3)
    {
      v5 = v3;
      [v5 contentSize];
      v7 = v6;
      [v5 bounds];
      if (CGRectGetHeight(v23) >= v7)
      {
      }

      else
      {
        [v5 adjustedContentInset];
        v9 = v8;
        [v5 contentOffset];
        v11 = v9 + v10;
        [v5 adjustedContentInset];
        v13 = v12;

        v4 = fmin(v11 / (v13 * 0.5), 1.0);
        if (v4 >= 0.0)
        {
          goto LABEL_9;
        }
      }

      v4 = 0.0;
    }
  }

  else
  {
    v4 = *&a1;
  }

LABEL_9:
  v14 = v2 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_appliedPercentage;
  if ((*(v2 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_appliedPercentage + 8) & 1) != 0 || *v14 != v4)
  {
    *v14 = v4;
    *(v14 + 8) = 0;
    v15 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v15 configureWithTransparentBackground];
    v16 = [*(v2 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_backgroundColor) colorWithAlphaComponent_];
    [v15 setBackgroundColor_];

    [v15 setBackgroundImage_];
    [v15 setShadowColor_];

    [v15 setBackgroundEffect_];
    v17 = *(v2 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_navigationItem);
    v21 = v15;
    [v17 setStandardAppearance_];
    [v17 setScrollEdgeAppearance_];

    v18 = [v17 titleView];
    if (v18)
    {
      v19 = v18;
      v20 = swift_dynamicCastObjCProtocolConditional();
      if (v20)
      {
        [v20 setContentAlpha_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CrossFadeNavigationBarCompressionAnimation.detached()()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_appliedPercentage;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_1D816CDE4(0x3FF0000000000000, 0);
}

double sub_1D816D1C4()
{
  [*(v0 + OBJC_IVAR____TtC5TeaUI42CrossFadeNavigationBarCompressionAnimation_navigationBar) bounds];

  return CGRectGetHeight(*&v1);
}

id CrossFadeNavigationBarCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CrossFadeNavigationBarCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D816D37C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D8191E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v19 = *(v2 + 16);
  (*(v6 + 16))(v8, a1, v5, v11);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v15 = v19;

    return v15;
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    v17 = v14(v13);
    (*(v9 + 8))(v13, v4);
    return v17;
  }
}

uint64_t StateCommandColor.init(default:block:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(void)@<X8>)
{
  v10 = a2();
  result = (*(*(a4 - 8) + 8))(a1, a4);
  a5[1] = a3;
  a5[2] = v10;
  *a5 = a2;
  return result;
}

uint64_t (*StateCommandColor<>.init(_:)@<X0>(uint64_t (*a1)(unsigned __int8 *a1)@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>))(unsigned __int8 *a1)
{
  a2[2] = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D80A5D20;
  *(v4 + 24) = v3;
  *a2 = sub_1D80A5C58;
  a2[1] = v4;

  return a1;
}

uint64_t sub_1D816D6B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D816D734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_19_35();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = a2;
  }

  sub_1D8190DB4();
  MEMORY[0x1DA713260](v3, v7);

  MEMORY[0x1DA713260](58, 0xE100000000000000);
  v8 = sub_1D81925B4();
  MEMORY[0x1DA713260](v8);

  return v10;
}

uint64_t sub_1D816D800(uint64_t a1, uint64_t a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBAE530);
  OUTLINED_FUNCTION_19_35();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = a2;
  }

  sub_1D8190DB4();
  MEMORY[0x1DA713260](v2, v6);

  MEMORY[0x1DA713260](58, 0xE100000000000000);
  v7 = sub_1D81925B4();
  MEMORY[0x1DA713260](v7);

  return v9;
}

id sub_1D816D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D816D800(a2, a3);
  v5 = sub_1D8190EE4();

  v6 = sub_1D818E8E4();
  v7 = [v4 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  return v7;
}

uint64_t sub_1D816D948(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v7 = v5;
  sub_1D816D734(a2, a3, a4);
  v8 = sub_1D8190EE4();

  v9 = sub_1D818E8E4();
  v10 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  a5(0);
  OUTLINED_FUNCTION_1_73();

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1D816DA04()
{
  swift_unknownObjectWeakAssign();
  sub_1D7FE1DBC(0, 0);
  sub_1D7FE1E5C(0, 0);
  sub_1D7FE1F2C(0, 0);
  v0 = OUTLINED_FUNCTION_16_5();
  [v0 v1];
  v2 = OUTLINED_FUNCTION_16_5();
  [v2 v3];
  return sub_1D804E3B0();
}

uint64_t sub_1D816DA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v6[2] = *(a3 + 32);
  v7 = v3;
  return sub_1D804E114(a1, a2, v6, 1);
}

id sub_1D816DAE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5TeaUI20DebugTableViewSource_dataSource] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D816DC00()
{
  sub_1D7E05ED8();
  v1 = v0;
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_8_4();
  v8 = OUTLINED_FUNCTION_16_5();
  v9(v8);
  sub_1D7E05C3C(&unk_1ECA12210, sub_1D7E05ED8);
  OUTLINED_FUNCTION_16_49();
  sub_1D8191724();
  sub_1D81917B4();
  v10 = sub_1D81917A4();
  (*(v3 + 8))(v7, v1);
  return v10;
}

uint64_t sub_1D816DDAC()
{
  sub_1D7E05ED8();
  v1 = v0;
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_8_4();
  v8 = OUTLINED_FUNCTION_8_65();
  v9(v8);
  OUTLINED_FUNCTION_16_49();
  sub_1D818F3B4();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_8_4();
  v10 = *(v13 + 24);
  sub_1D8190DB4();

  v11 = *(v10 + 16);

  return v11;
}

unint64_t sub_1D816DF2C(uint64_t a1, uint64_t a2)
{
  sub_1D7E05ED8();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_8_4();
  v12 = OUTLINED_FUNCTION_8_65();
  v13(v12);
  sub_1D818E974();
  sub_1D818F3B4();
  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_8_4();
  v14 = *(v121[0] + 24);
  sub_1D8190DB4();

  result = sub_1D818E964();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (result >= *(v14 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v16 = v14 + 72 * result;
  v118 = *(v16 + 32);
  v119 = a1;
  v18 = *(v16 + 48);
  v17 = *(v16 + 56);
  v20 = *(v16 + 64);
  v19 = *(v16 + 72);
  v22 = *(v16 + 80);
  v21 = *(v16 + 88);
  v23 = *(v16 + 96);
  sub_1D8190DB4();
  v24 = v18;
  v120 = v20;
  v25 = v20;
  v26 = v19;
  v27 = v19;
  v28 = v22;
  v29 = v22;
  v30 = v21;
  sub_1D804E800(v18, v17, v25, v27, v29, v21, v23);

  switch(v23)
  {
    case 4uLL:
    case 8uLL:
      v55 = OUTLINED_FUNCTION_3_142();
      v58 = sub_1D816D8C0(v55, v56, v57);
      v59 = OUTLINED_FUNCTION_22_27(v58);
      if (v59)
      {
        v60 = v59;
        v61 = sub_1D8190EE4();
        v62 = OUTLINED_FUNCTION_16_5();
        [v62 v63];
      }

      v64 = [v23 (a2 + 1016)];
      if (v64)
      {
        v65 = v64;
        v66 = [objc_opt_self() labelColor];
        OUTLINED_FUNCTION_21_37(v66, sel_setTextColor_);
      }

      [v23 setAccessoryType_];
      v67 = OUTLINED_FUNCTION_26_26();
      [v67 v68];

      OUTLINED_FUNCTION_17_41();
      sub_1D80AF4FC(v69, v70, v71, v72, v73, v74, v23);
      goto LABEL_41;
    case 5uLL:
      OUTLINED_FUNCTION_2_166();
      v95 = OUTLINED_FUNCTION_3_142();
      v23 = sub_1D816D948(v95, v96, v97, v98, v99);
      if ([v23 textLabel])
      {
        v24 = OUTLINED_FUNCTION_15_49();
        v100 = OUTLINED_FUNCTION_16_5();
        [v100 v101];
      }

      if ([v23 detailTextLabel])
      {
        OUTLINED_FUNCTION_5_93();
        v122 = 5;
        v102 = v121;
        v103 = sub_1D8118284();
        if (v104)
        {
          sub_1D8190EE4();
          v103 = OUTLINED_FUNCTION_28_25();
        }

        else
        {
          v102 = 0;
        }

        OUTLINED_FUNCTION_21_37(v103, sel_setText_);
      }

      v115 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
      [v23 setAccessoryView_];

      v116 = OUTLINED_FUNCTION_26_26();
      [v116 v117];

      OUTLINED_FUNCTION_17_41();
      v111 = 5;
      goto LABEL_40;
    case 6uLL:
    case 7uLL:
    case 9uLL:
      v31 = v23;
      v45 = OUTLINED_FUNCTION_3_142();
      v23 = sub_1D816D948(v45, v46, v47, v48, v49);
      if ([v23 textLabel])
      {
        v24 = OUTLINED_FUNCTION_15_49();
        v50 = OUTLINED_FUNCTION_16_5();
        [v50 v51];
      }

      if ([v23 detailTextLabel])
      {
        OUTLINED_FUNCTION_5_93();
        v122 = v31;
        v52 = v121;
        v53 = sub_1D8118284();
        if (v54)
        {
          sub_1D8190EE4();
          v53 = OUTLINED_FUNCTION_28_25();
        }

        else
        {
          v52 = 0;
        }

        OUTLINED_FUNCTION_21_37(v53, sel_setText_);
      }

      [v23 setAccessoryType_];
      v93 = sel_setSelectionStyle_;
      v92 = v23;
      v94 = 0;
      goto LABEL_39;
    case 0xCuLL:
    case 0xDuLL:
      OUTLINED_FUNCTION_2_166();
      v75 = OUTLINED_FUNCTION_3_142();
      v80 = sub_1D816D948(v75, v76, v77, v78, v79);
      if (OUTLINED_FUNCTION_22_27(v80))
      {
        v81 = OUTLINED_FUNCTION_15_49();
        v82 = OUTLINED_FUNCTION_16_5();
        [v82 v83];
      }

      v84 = [v23 (a2 + 1016)];
      if (v84)
      {
        v85 = v84;
        v86 = [objc_opt_self() systemBlueColor];
        OUTLINED_FUNCTION_21_37(v86, sel_setTextColor_);
      }

      v87 = [v23 detailTextLabel];
      if (v87)
      {
        v88 = v87;
        v121[0] = v18;
        v121[1] = v17;
        v121[2] = v120;
        v121[3] = v26;
        v121[4] = v28;
        v121[5] = v30;
        v122 = v23;
        v89 = v121;
        v90 = sub_1D8118284();
        if (v91)
        {
          sub_1D8190EE4();
          v90 = OUTLINED_FUNCTION_28_25();
        }

        else
        {
          v89 = 0;
        }

        OUTLINED_FUNCTION_21_37(v90, sel_setText_);
      }

      v112 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
      [v23 setAccessoryView_];

      v113 = OUTLINED_FUNCTION_26_26();
      [v113 v114];

      v105 = v18;
      v106 = v17;
      v107 = v120;
      v108 = v26;
      v109 = v28;
      v110 = v30;
      v111 = v23;
      goto LABEL_40;
    default:
      v31 = v23;
      OUTLINED_FUNCTION_2_166();
      v32 = OUTLINED_FUNCTION_3_142();
      v37 = sub_1D816D948(v32, v33, v34, v35, v36);
      if (OUTLINED_FUNCTION_22_27(v37))
      {
        v24 = OUTLINED_FUNCTION_15_49();
        v38 = OUTLINED_FUNCTION_16_5();
        [v38 v39];
      }

      v40 = [v23 (a2 + 1016)];
      if (v40)
      {
        v24 = v40;
        v41 = [objc_opt_self() systemBlueColor];
        OUTLINED_FUNCTION_21_37(v41, sel_setTextColor_);
      }

      if ([v23 detailTextLabel])
      {
        OUTLINED_FUNCTION_5_93();
        v122 = v23;
        v42 = v121;
        v43 = sub_1D8118284();
        if (v44)
        {
          sub_1D8190EE4();
          v43 = OUTLINED_FUNCTION_28_25();
        }

        else
        {
          v42 = 0;
        }

        OUTLINED_FUNCTION_21_37(v43, sel_setText_);
      }

      [v23 setAccessoryType_];
      v92 = OUTLINED_FUNCTION_26_26();
LABEL_39:
      [v92 v93];

      OUTLINED_FUNCTION_17_41();
      v111 = v31;
LABEL_40:
      sub_1D80AF4FC(v105, v106, v107, v108, v109, v110, v111);

LABEL_41:
      result = v23;
      break;
  }

  return result;
}

uint64_t sub_1D816E824()
{
  sub_1D7E05ED8();
  v1 = v0;
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_8_4();
  v8 = OUTLINED_FUNCTION_8_65();
  v9(v8);
  OUTLINED_FUNCTION_16_49();
  sub_1D818F3B4();
  (*(v3 + 8))(v7, v1);
  v10 = *(v12 + 16);

  return qword_1D81C3708[v10];
}

void sub_1D816E9D0(void *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v129 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E05ED8();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_1D818E8E4();
  v19 = OUTLINED_FUNCTION_20_44();
  [v19 v20];

  v134 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC5TeaUI20DebugTableViewSource_dataSource);
  v22 = OBJC_IVAR____TtC5TeaUI15DebugDataSource_sections;
  OUTLINED_FUNCTION_8_4();
  (*(v13 + 16))(v17, v21 + v22, v11);
  sub_1D818E974();
  sub_1D818F3B4();
  (*(v13 + 8))(v17, v11);
  v23 = v136;
  OUTLINED_FUNCTION_8_4();
  v24 = *(v23 + 24);
  sub_1D8190DB4();

  v25 = sub_1D818E964();
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v25 >= *(v24 + 16))
  {
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
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  memcpy(__dst, (v24 + 72 * v25 + 32), 0x41uLL);
  v27 = __dst[2];
  v26 = __dst[3];
  v132 = __dst[4];
  v133 = __dst[5];
  v131 = __dst[6];
  v130 = __dst[7];
  v28 = LOBYTE(__dst[8]);
  sub_1D8147260(__dst, v135);

  v29 = sub_1D818E8E4();
  v30 = OUTLINED_FUNCTION_20_44();
  [v30 v31];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  switch(v28)
  {
    case 1:
      OUTLINED_FUNCTION_24_29();
      goto LABEL_5;
    case 2:
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_24_29();
LABEL_21:

      v27(v101);

      v102 = OUTLINED_FUNCTION_12_54();
      if (!v102)
      {
        goto LABEL_37;
      }

      v103 = v102;
      [v102 dismissViewControllerAnimated:1 completion:0];
      sub_1D804E8BC(__dst);

      return;
    case 4:

      v42 = (v27)(v84);
      v85 = OUTLINED_FUNCTION_12_54();
      if (v85)
      {
        v47 = v85;
        [v85 showViewController:v42 sender:0];
        OUTLINED_FUNCTION_0_251();
        v54 = 4;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_0_251();
      v127 = 4;
      goto LABEL_36;
    case 5:

      v109 = sub_1D818E8E4();
      v110 = OUTLINED_FUNCTION_20_44();
      v112 = [v110 v111];

      if (!v112)
      {
        goto LABEL_42;
      }

      v113 = [v112 accessoryView];

      if (!v113)
      {
        goto LABEL_45;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_1_73();
      [swift_dynamicCastObjCClassUnconditional() startAnimating];

      v128[0] = (v27)();
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v114 = sub_1D8191AB4();
      OUTLINED_FUNCTION_0_8();
      swift_allocObject();
      OUTLINED_FUNCTION_13_53();
      v115 = OUTLINED_FUNCTION_9_55();
      v116(v115);
      v117 = swift_allocObject();
      v118 = OUTLINED_FUNCTION_14_50(v117);
      v119(v118);
      v120 = a1;
      OUTLINED_FUNCTION_7_86();
      sub_1D804E8BC(__dst);

      OUTLINED_FUNCTION_0_251();
      v73 = 5;
      goto LABEL_31;
    case 6:
    case 7:
    case 9:
      goto LABEL_37;
    case 8:
      v74 = __dst[0];
      v75 = __dst[1];
      objc_allocWithZone(type metadata accessor for DebugSubViewController());
      sub_1D804E800(v27, v26, v132, v133, v131, v130, 8);
      v76 = OUTLINED_FUNCTION_4_102();
      sub_1D804E800(v76, v77, v78, v79, v80, v81, v82);
      sub_1D8190DB4();
      v42 = DebugSubViewController.init(dataSource:title:)(v27, v74, v75);
      v83 = OUTLINED_FUNCTION_12_54();
      if (v83)
      {
        v47 = v83;
        [v83 showViewController:v42 sender:0];
        v48 = OUTLINED_FUNCTION_4_102();
        goto LABEL_27;
      }

      v121 = OUTLINED_FUNCTION_4_102();
      goto LABEL_36;
    case 10:

      v42 = (v27)(v104);
      [v42 setModalPresentationStyle_];
      v105 = OUTLINED_FUNCTION_29_24();
      if (v105)
      {
        v106 = v105;
        [v105 setSourceView_];
      }

      v107 = OUTLINED_FUNCTION_29_24();
      OUTLINED_FUNCTION_27_29(v107, sel_setSourceRect_);

      v108 = OUTLINED_FUNCTION_12_54();
      if (v108)
      {
        v47 = v108;
        [v108 presentViewController:v42 animated:1 completion:0];
        OUTLINED_FUNCTION_0_251();
        v54 = 10;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_0_251();
      v127 = 10;
      goto LABEL_36;
    case 11:

      v42 = (v27)(v41);
      [v42 setModalPresentationStyle_];
      v43 = OUTLINED_FUNCTION_29_24();
      if (v43)
      {
        v44 = v43;
        [v43 setSourceView_];
      }

      v45 = OUTLINED_FUNCTION_29_24();
      OUTLINED_FUNCTION_27_29(v45, sel_setSourceRect_);

      v46 = OUTLINED_FUNCTION_12_54();
      if (v46)
      {
        v47 = v46;
        [v46 presentViewController:v42 animated:1 completion:0];
        OUTLINED_FUNCTION_0_251();
        v54 = 11;
LABEL_27:
        sub_1D80AF4FC(v48, v49, v50, v51, v52, v53, v54);

        sub_1D804E8BC(__dst);
      }

      else
      {
        OUTLINED_FUNCTION_0_251();
        v127 = 11;
LABEL_36:
        sub_1D80AF4FC(v121, v122, v123, v124, v125, v126, v127);

LABEL_37:
        sub_1D804E8BC(__dst);
      }

      break;
    case 12:

      v55 = sub_1D818E8E4();
      v56 = OUTLINED_FUNCTION_20_44();
      v58 = [v56 v57];

      if (!v58)
      {
        goto LABEL_40;
      }

      v59 = [v58 accessoryView];

      if (!v59)
      {
        goto LABEL_43;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_1_73();
      [swift_dynamicCastObjCClassUnconditional() startAnimating];

      v128[0] = (v27)();
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v60 = sub_1D8191AB4();
      OUTLINED_FUNCTION_0_8();
      swift_allocObject();
      OUTLINED_FUNCTION_13_53();
      v61 = OUTLINED_FUNCTION_9_55();
      v62(v61);
      v63 = swift_allocObject();
      v64 = OUTLINED_FUNCTION_14_50(v63);
      v65(v64);
      v66 = a1;
      OUTLINED_FUNCTION_7_86();
      sub_1D804E8BC(__dst);

      OUTLINED_FUNCTION_0_251();
      v73 = 12;
      goto LABEL_31;
    case 13:

      v86 = sub_1D818E8E4();
      v87 = OUTLINED_FUNCTION_20_44();
      v89 = [v87 v88];

      if (!v89)
      {
        goto LABEL_41;
      }

      v90 = [v89 accessoryView];

      if (!v90)
      {
        goto LABEL_44;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_1_73();
      [swift_dynamicCastObjCClassUnconditional() startAnimating];

      v128[1] = v27;
      v128[0] = (v27)();
      v91 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v92 = sub_1D8191AB4();
      OUTLINED_FUNCTION_0_8();
      swift_allocObject();
      OUTLINED_FUNCTION_13_53();
      v93 = v129;
      v94 = OUTLINED_FUNCTION_9_55();
      v95(v94);
      v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v97 = (v7 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = v91;
      *(v98 + 24) = a1;
      (*(v93 + 32))(v98 + v96, v9, v4);
      v99 = (v98 + v97);
      *v99 = v33;
      v99[1] = v35;
      v99[2] = v37;
      v99[3] = v39;
      v100 = a1;
      OUTLINED_FUNCTION_7_86();
      sub_1D804E8BC(__dst);

      OUTLINED_FUNCTION_0_251();
      v73 = 13;
LABEL_31:
      sub_1D80AF4FC(v67, v68, v69, v70, v71, v72, v73);
      return;
    default:
LABEL_5:

      v27(v40);
      sub_1D804E8BC(__dst);

      return;
  }
}

void sub_1D816F484(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = sub_1D818E8E4();
  v8 = [a3 cellForRowAtIndexPath_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = [v8 accessoryView];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() stopAnimating];

  [v4 setModalPresentationStyle_];
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_1D816F5D0(void **a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  v15 = sub_1D818E8E4();
  v16 = [a7 cellForRowAtIndexPath_];

  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = [v16 accessoryView];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() stopAnimating];

  [v12 setModalPresentationStyle_];
  v18 = [v12 popoverPresentationController];
  if (v18)
  {
    v19 = v18;
    [v18 setSourceView_];
  }

  v20 = [v12 popoverPresentationController];
  [v20 setSourceRect_];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v21 presentViewController:v12 animated:1 completion:0];
  }
}

void sub_1D816F7A8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = sub_1D818E8E4();
  v8 = [a3 cellForRowAtIndexPath_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = [v8 accessoryView];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() stopAnimating];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 showViewController:v4 sender:0];
  }
}

void sub_1D816FA04(void **a1)
{
  v3 = *(sub_1D818E994() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D816F5D0(a1, *v4, v4[1], v4[2], v4[3], *(v1 + 16), *(v1 + 24));
}

void sub_1D816FB6C(uint64_t a1@<X8>)
{
  v3 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  if (sub_1D818E964())
  {
    v10 = sub_1D818E964();
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
      return;
    }

    v12 = sub_1D818E974();
    MEMORY[0x1DA710B60](v11, v12);
    v13 = sub_1D818E8E4();
    (*(v5 + 8))(v9, v3);
    v14 = [v1 cellForRowAtIndexPath_];

    if (v14)
    {
      v15 = &qword_1EDBAE530;
      goto LABEL_7;
    }
  }

  else if ([v1 headerViewForSection_])
  {
    v15 = &qword_1ECA0E810;
LABEL_7:
    sub_1D7E0A1A8(0, v15);
    sub_1D7E0631C(0, qword_1EDBB0098);
    OUTLINED_FUNCTION_9_54();
    if (swift_dynamicCast())
    {
      return;
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t UITableView.deselectItem(at:animated:)(uint64_t a1, char a2)
{
  v4 = sub_1D818E8E4();
  [v2 deselectRowAtIndexPath:v4 animated:a2 & 1];

  sub_1D816FB6C(v10);
  v5 = v11;
  if (!v11)
  {
    return sub_1D8172E0C();
  }

  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  OUTLINED_FUNCTION_6_14();
  v8 = v7(v5, v6);
  SeparatorView.clearSelections()();

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t UITableView.selectItem(at:animated:)(uint64_t a1, int a2)
{
  v3 = v2;
  v109 = a2;
  v113 = a1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v111 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v110 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v107 - v10;
  sub_1D7EA0824();
  v13 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_28_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v107 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v107 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v107 - v30;
  v112 = v3;
  v32 = [v3 indexPathForSelectedRow];
  if (v32)
  {
    v33 = v32;
    sub_1D818E924();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v31, v34, 1, v4);
  v35 = *(v13 + 48);
  sub_1D8172DAC(v31, v17, sub_1D7E3D564);
  v36 = v113;
  sub_1D8172DAC(v113, v17 + v35, sub_1D7E3D564);
  OUTLINED_FUNCTION_3_9(v17);
  if (v40)
  {
    OUTLINED_FUNCTION_0_252();
    sub_1D7E54C18();
    OUTLINED_FUNCTION_3_9(v17 + v35);
    v37 = v111;
    if (v40)
    {
      OUTLINED_FUNCTION_0_252();
      return sub_1D7E54C18();
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_181();
  sub_1D8172DAC(v17, v27, v39);
  OUTLINED_FUNCTION_3_9(v17 + v35);
  if (v40)
  {
    OUTLINED_FUNCTION_0_252();
    sub_1D7E54C18();
    v37 = v111;
    v41 = OUTLINED_FUNCTION_128();
    v42(v41);
LABEL_12:
    sub_1D7E54C18();
LABEL_13:
    OUTLINED_FUNCTION_1_181();
    sub_1D8172DAC(v36, v24, v43);
    OUTLINED_FUNCTION_3_9(v24);
    if (v40)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_1D818E8E4();
      (*(v37 + 8))(v24, v4);
    }

    v45 = v110;
    v46 = v112;
    v47 = OUTLINED_FUNCTION_9_54();
    [v47 v48];

    OUTLINED_FUNCTION_1_181();
    sub_1D8172DAC(v36, v21, v49);
    OUTLINED_FUNCTION_3_9(v21);
    if (!v40)
    {
      (*(v37 + 32))(v45, v21, v4);
      sub_1D816FB6C(v118);
      v93 = v119;
      if (v119)
      {
        v94 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        OUTLINED_FUNCTION_6_14();
        v96 = v95(v93, v94);
        v97 = sub_1D8172568(v46);
        v98 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
        swift_beginAccess();
        v98[v96] = v97 & 1;
        sub_1D806EB08();

        v99 = OUTLINED_FUNCTION_128();
        v100(v99);
        return __swift_destroy_boxed_opaque_existential_1Tm(v118);
      }

      else
      {
        v105 = OUTLINED_FUNCTION_128();
        v106(v105);
        return sub_1D8172E0C();
      }
    }

    OUTLINED_FUNCTION_0_252();
    sub_1D7E54C18();
    v50 = [v46 visibleCells];
    v51 = sub_1D7E0A1A8(0, &qword_1EDBAE530);
    v52 = sub_1D8191314();

    result = sub_1D7E36AB8(v52);
    if (result)
    {
      v53 = result;
      if (result < 1)
      {
        goto LABEL_46;
      }

      v54 = 0;
      v55 = qword_1EDBB0098;
      v56 = v52 & 0xC000000000000001;
      v57 = &protocol descriptor for SeparatorViewProviderType;
      v113 = result;
      do
      {
        if (v56)
        {
          v58 = MEMORY[0x1DA714420](v54, v52);
        }

        else
        {
          v58 = *(v52 + 8 * v54 + 32);
        }

        v59 = v58;
        v117 = v58;
        sub_1D7E0631C(0, v55);
        v60 = v59;
        if (swift_dynamicCast())
        {
          sub_1D7E05450(&v114, v118);
          v61 = v56;
          v62 = v52;
          v63 = v51;
          v64 = v57;
          v65 = v55;
          v67 = v119;
          v66 = v120;
          __swift_project_boxed_opaque_existential_1(v118, v119);
          OUTLINED_FUNCTION_6_14();
          v68 = v66;
          v55 = v65;
          v57 = v64;
          v51 = v63;
          v52 = v62;
          v56 = v61;
          v53 = v113;
          v70 = v69(v67, v68);
          SeparatorView.clearSelections()();

          __swift_destroy_boxed_opaque_existential_1Tm(v118);
        }

        else
        {

          v116 = 0;
          v114 = 0u;
          v115 = 0u;
          sub_1D8172E0C();
        }

        ++v54;
      }

      while (v53 != v54);
    }

    v71 = v112;
    result = [v112 numberOfSections];
    if ((result & 0x8000000000000000) == 0)
    {
      v72 = result;
      if (!result)
      {
        return result;
      }

      v73 = 0;
      v74 = &selRef_setMenu_;
      v75 = &qword_1EDBB0090;
      v76 = qword_1EDBB0098;
      v77 = &protocol descriptor for SeparatorViewProviderType;
      v78 = &qword_1ECA0E810;
      v79 = 0x1E69DD050uLL;
      v113 = result;
      while (1)
      {
        v80 = [v71 v74[185]];
        if (!v80)
        {
          break;
        }

        v118[0] = v80;
        sub_1D7E0A1A8(0, v78);
        v81 = OUTLINED_FUNCTION_76_0();
        sub_1D7E0631C(v81, v76);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!*(&v115 + 1))
        {
          goto LABEL_36;
        }

        sub_1D7E05450(&v114, v118);
        v82 = v77;
        v83 = v76;
        v84 = v74;
        v85 = v75;
        v86 = v79;
        v87 = v78;
        v88 = v119;
        v89 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        OUTLINED_FUNCTION_6_14();
        v90 = v89;
        v78 = v87;
        v79 = v86;
        v75 = v85;
        v74 = v84;
        v76 = v83;
        v77 = v82;
        v72 = v113;
        v92 = v91(v88, v90);
        SeparatorView.clearSelections()();

        v71 = v112;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v118);
LABEL_37:
        if (v72 == ++v73)
        {
          return result;
        }
      }

      v116 = 0;
      v114 = 0u;
      v115 = 0u;
LABEL_36:
      result = sub_1D8172E0C();
      goto LABEL_37;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

  v101 = v111;
  (*(v111 + 32))(v11, v17 + v35, v4);
  sub_1D8008590();
  v108 = sub_1D8190ED4();
  v102 = *(v101 + 8);
  v103 = v11;
  v37 = v101;
  v102(v103, v4);
  sub_1D7E54C18();
  v104 = OUTLINED_FUNCTION_128();
  (v102)(v104);
  v36 = v113;
  result = sub_1D7E54C18();
  if ((v108 & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D8170654(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    return a2();
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v14[4] = a5;
  v14[5] = v12;
  OUTLINED_FUNCTION_2_1();
  v14[1] = 1107296256;
  v14[2] = sub_1D7E74D74;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [v11 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

id UITableView.blueprintViewDataSource.getter()
{
  result = [v0 dataSource];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v2);
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t UITableView.reload(apply:animated:completion:)(void (*a1)(void), uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = [v5 dataSource];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a4;
    *(v14 + 32) = a5;
    *(v14 + 40) = a1;
    *(v14 + 48) = a2;
    *(v14 + 56) = a3 & 1;
    *(v14 + 64) = v12;
    v17[4] = sub_1D8172C48;
    v17[5] = v14;
    OUTLINED_FUNCTION_2_1();
    v17[1] = 1107296256;
    v17[2] = sub_1D7E64940;
    v17[3] = &block_descriptor_88;
    v15 = _Block_copy(v17);

    swift_unknownObjectRetain();

    [v5 deferWhenTouchingWithBlock_];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    a1();
    return a4(0);
  }
}

void sub_1D817094C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1D7FE82FC(v10);
    v13 = v12;
    a4();
    v14 = v10;
    sub_1D8087290(a6 & 1, v14, v14);
    if (v11)
    {

      (v11)(v15);
      sub_1D7E418F4(v11, v13);
    }

    (a2)(0);
    sub_1D7E418F4(v11, v13);
  }

  else
  {
    sub_1D7FE814C();
    v16 = swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 4;
    a2();
  }
}

uint64_t UITableView.update(with:apply:response:animated:beforeCompletion:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t *a9)
{
  v10 = v9;
  v24 = a1;
  v18 = [v10 dataSource];
  if (v18)
  {
    if (a4)
    {
      v25 = 0;
      v23 = a9;
      BlueprintViewActionResponse.complete(apply:)(&v25);
    }

    v23 = &v22;
    MEMORY[0x1EEE9AC00](v18);
    v20[2] = v10;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = v24;
    v20[6] = a6;
    v20[7] = a7;
    v20[8] = a8;
    v20[9] = a9;
    v21 = a5 & 1;
    sub_1D8170654(a5 & 1, sub_1D8172C60, v20, &unk_1F530B8F0, sub_1D7E74D6C, &block_descriptor_10_1);
    if (a4)
    {
      v26 = 1;
      BlueprintViewActionResponse.complete(apply:)(&v26);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    a2();
    return a8(0);
  }
}

uint64_t sub_1D8170C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_1D7E0E768(a4, v32);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  sub_1D7E05450(v32, (v15 + 4));
  v15[9] = a1;
  v15[10] = a5;
  v15[11] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D8172D5C;
  *(v16 + 24) = v15;
  v30 = sub_1D7EA8F68;
  v31 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7E74D74;
  v29 = &block_descriptor_20_3;
  v17 = _Block_copy(&aBlock);

  v18 = a1;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a4, v32);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  sub_1D7E05450(v32, v20 + 40);
  *(v20 + 80) = a9;
  v30 = sub_1D8172D70;
  v31 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7EB30D4;
  v29 = &block_descriptor_27_2;
  v21 = _Block_copy(&aBlock);

  [v18 performBatchUpdates:v17 completion:v21];
  _Block_release(v21);
  _Block_release(v17);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8170EC0(void (*a1)(double), uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v88 = a6;
  v89 = a5;
  sub_1D7E98BE0();
  v10 = *(v9 - 8);
  v84[1] = v9;
  v85 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D818E8B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v87 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = v84 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v84 - v20;
  a1(v19);
  v23 = a3[3];
  v22 = a3[4];
  v24 = __swift_project_boxed_opaque_existential_1(a3, v23);
  v25 = *(v22 + 32);
  v91 = v24;
  v92 = v22;
  v90 = v25;
  v25(v23, v22);
  v26 = sub_1D818E874();
  v29 = *(v14 + 8);
  v28 = (v14 + 8);
  v27 = v29;
  v29(v21, v13);
  if ((v26 & 1) == 0)
  {
    v90(v23, v92);
    v30 = sub_1D818E814();
    v27(v21, v13);
    [a4 reloadSections:v30 withRowAnimation:100];
  }

  v86 = v23;
  v31 = v13;
  v93 = v27;
  v32 = a3[3];
  v33 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v32);
  v34 = *(v33 + 40);
  v35 = v33;
  v36 = v93;
  v34(v32, v35);
  v37 = v87;
  v90(v86, v92);
  sub_1D7EDF944(v37, v94);
  v36(v37, v31);
  v36(v21, v31);
  if ((sub_1D818E874() & 1) == 0)
  {
    v38 = sub_1D818E814();
    [a4 ts:v38 reloadSectionHeaderFooters:5 withRowAnimation:?];
  }

  v39 = a3[3];
  v40 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v39);
  v41 = *((*(v40 + 72))(v39, v40) + 16);

  if (v41)
  {
    v42 = a3[3];
    v43 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v42);
    (*(v43 + 72))(v42, v43);
    sub_1D818E994();
    v44 = sub_1D8191304();

    [a4 reloadRowsAtIndexPaths:v44 withRowAnimation:5];
  }

  v45 = a3[3];
  v46 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v45);
  (*(v46 + 16))(v45, v46);
  v47 = sub_1D818E874();
  v36(v21, v31);
  if ((v47 & 1) == 0)
  {
    v48 = a3[3];
    v49 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v48);
    (*(v49 + 16))(v48, v49);
    v50 = sub_1D818E814();
    v36(v21, v31);
    [a4 deleteSections:v50 withRowAnimation:100];
  }

  v51 = a3[3];
  v52 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v51);
  (*(v52 + 24))(v51, v52);
  v53 = sub_1D818E874();
  v36(v21, v31);
  if ((v53 & 1) == 0)
  {
    v54 = a3[3];
    v55 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v54);
    (*(v55 + 24))(v54, v55);
    v56 = sub_1D818E814();
    v36(v21, v31);
    [a4 insertSections:v56 withRowAnimation:100];
  }

  v57 = a3[3];
  v58 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v57);
  v59 = *((*(v58 + 56))(v57, v58) + 16);

  if (v59)
  {
    v60 = a3[3];
    v61 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v60);
    (*(v61 + 56))(v60, v61);
    sub_1D818E994();
    v62 = sub_1D8191304();

    [a4 deleteRowsAtIndexPaths:v62 withRowAnimation:100];
  }

  v63 = a3[3];
  v64 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v63);
  v65 = *((*(v64 + 64))(v63, v64) + 16);

  if (v65)
  {
    v66 = a3[3];
    v67 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v66);
    (*(v67 + 64))(v66, v67);
    sub_1D818E994();
    v68 = sub_1D8191304();

    [a4 insertRowsAtIndexPaths:v68 withRowAnimation:100];
  }

  v69 = a3[3];
  v70 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v69);
  v71 = (*(v70 + 48))(v69, v70);
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = (v71 + 40);
    do
    {
      [a4 moveSection:*(v73 - 1) toSection:*v73];
      v73 += 2;
      --v72;
    }

    while (v72);
  }

  v74 = a3[3];
  v75 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v74);
  v76 = (*(v75 + 80))(v74, v75);
  v77 = *(v76 + 16);
  if (v77)
  {
    v91 = v28;
    v92 = v31;
    v78 = v76 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v79 = *(v85 + 72);
    do
    {
      sub_1D8172DAC(v78, v12, sub_1D7E98BE0);
      v80 = sub_1D818E8E4();
      v81 = sub_1D818E8E4();
      sub_1D7E54C18();
      [a4 moveRowAtIndexPath:v80 toIndexPath:v81];

      v78 += v79;
      --v77;
    }

    while (v77);

    v31 = v92;
  }

  else
  {
  }

  v89(v82);
  return (v93)(v94, v31);
}

void sub_1D81716F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v17 = [objc_opt_self() sharedApplication];
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v30 = sub_1D7EB38AC;
    v31 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D7E64940;
    v29 = &block_descriptor_33_3;
    v19 = _Block_copy(&aBlock);

    [v17 ts:v19 installCACommitCompletionBlock:?];
    v20 = v19;
LABEL_7:
    _Block_release(v20);
    goto LABEL_8;
  }

  v11 = Strong;
  v12 = a5[3];
  v13 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v12);
  v14 = *((*(v13 + 88))(v12, v13) + 16);

  if (!v14)
  {
    v17 = [objc_opt_self() sharedApplication];
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;
    v30 = sub_1D7EB38AC;
    v31 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D7E64940;
    v29 = &block_descriptor_45_3;
    v22 = _Block_copy(&aBlock);

    [v17 ts:v22 installCACommitCompletionBlock:?];

    v20 = v22;
    goto LABEL_7;
  }

  v15 = [v11 dataSource];
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    v25[2] = v11;
    v25[3] = a5;
    v25[4] = a3;
    v25[5] = a4;
    v25[6] = v16;
    sub_1D8170654(a6 & 1, sub_1D8172D84, v25, &unk_1F530B8F0, sub_1D7E74D6C, &block_descriptor_10_1);
    swift_unknownObjectRelease();

    return;
  }

  v17 = [objc_opt_self() sharedApplication];
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v30 = sub_1D7EB38AC;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7E64940;
  v29 = &block_descriptor_39_1;
  v24 = _Block_copy(&aBlock);

  [v17 ts:v24 installCACommitCompletionBlock:?];
  _Block_release(v24);

LABEL_8:
}

uint64_t sub_1D8171AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7E0E768(a2, v22);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1D7E05450(v22, v9 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8172D94;
  *(v10 + 24) = v9;
  v20 = sub_1D7EA8F68;
  v21 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7E74D74;
  v19 = &block_descriptor_55;
  v11 = _Block_copy(&aBlock);
  v12 = a1;

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v20 = sub_1D8172DA0;
  v21 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7EB30D4;
  v19 = &block_descriptor_61_0;
  v14 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v12 performBatchUpdates:v11 completion:v14];
  _Block_release(v14);
  _Block_release(v11);

  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_1D8171CF8(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 88))(v3, v4);
  sub_1D818E994();
  v5 = sub_1D8191304();

  [a1 reloadRowsAtIndexPaths:v5 withRowAnimation:100];
}

void sub_1D8171DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1D7EB38E4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D7E64940;
  v8[3] = &block_descriptor_67;
  v7 = _Block_copy(v8);

  [v5 ts:v7 installCACommitCompletionBlock:?];
  _Block_release(v7);
}

uint64_t UITableView.invalidateLayout(animated:completion:)(char a1, uint64_t (*a2)(id))
{
  [v2 setNeedsLayout];
  if ((a1 & 1) == 0)
  {
    return a2([v2 layoutIfNeeded]);
  }

  v5 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1D8190B34();
  sub_1D8191C84();
}

uint64_t UITableView.indexPathsForVisibleItems.getter()
{
  result = sub_1D8172CB4(v0, &selRef_indexPathsForVisibleRows);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall UITableView.indexPathsForItems(in:)(__C::CGRect in)
{
  if ([v2 indexPathsForRowsInRect_])
  {
    OUTLINED_FUNCTION_76_0();
    sub_1D818E994();
    v4 = sub_1D8191314();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v3;
  return result;
}

uint64_t UITableView.indexPathForItem(at:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 indexPathForRowAtPoint_];
  if (v3)
  {
    v4 = v3;
    sub_1D818E924();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id UITableView.cell(at:)()
{
  v0 = sub_1D818E8E4();
  v1 = OUTLINED_FUNCTION_9_54();
  v3 = [v1 v2];

  return v3;
}

uint64_t UITableView.indexPaths(visibility:)(unsigned __int8 *a1)
{
  v6 = v1;
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_0();
  v35 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v39 = *a1;
  result = sub_1D8172CB4(v6, &selRef_indexPathsForVisibleRows);
  v18 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v19 = result;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v19 + 16);
  v38 = v10 + 16;
  v34 = (v10 + 32);
  while (1)
  {
    if (v40 == v18)
    {

      return v36;
    }

    if (v18 >= *(v19 + 16))
    {
      break;
    }

    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = *(v10 + 72);
    (*(v10 + 16))(v16, v19 + v20 + v21 * v18, v8);
    sub_1D818E8E4();
    v22 = OUTLINED_FUNCTION_9_54();
    [v22 v23];
    OUTLINED_FUNCTION_26_4();
    v42.origin.x = height;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = x;
    v43 = CGRectIntegral(v42);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    [v6 bounds];
    v45 = CGRectIntegral(v44);
    switch(v39)
    {
      case 0:
        OUTLINED_FUNCTION_2_167();
        OUTLINED_FUNCTION_13_54();
        if (!CGRectIntersectsRect(v46, v52))
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      case 1:
        OUTLINED_FUNCTION_2_167();
        OUTLINED_FUNCTION_13_54();
        if (!CGRectContainsRect(v51, v53))
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      case 2:
        if (v45.origin.x <= x && v45.origin.y <= y)
        {
          goto LABEL_16;
        }

        goto LABEL_22;
      case 3:
        v47.origin.x = OUTLINED_FUNCTION_2_167();
        MaxX = CGRectGetMaxX(v47);
        v48.origin.x = OUTLINED_FUNCTION_2_6();
        CGRectGetMaxX(v48);
        v49.origin.x = OUTLINED_FUNCTION_2_167();
        MaxY = CGRectGetMaxY(v49);
        v50.origin.x = OUTLINED_FUNCTION_2_6();
        if (CGRectGetMaxY(v50) > MaxY)
        {
          goto LABEL_22;
        }

LABEL_16:
        MaxX = *v34;
        (*&MaxX)(v35, v16, v8);
        v26 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7EB0144();
          v26 = v41;
        }

        v28 = *(v26 + 16);
        v29 = v28 + 1;
        if (v28 >= *(v26 + 24) >> 1)
        {
          v36 = v28 + 1;
          v33 = v28;
          sub_1D7EB0144();
          v29 = v36;
          v28 = v33;
          v26 = v41;
        }

        ++v18;
        *(v26 + 16) = v29;
        v36 = v26;
        result = (*&MaxX)(v26 + v20 + v28 * v21, v35, v8);
        break;
      default:
LABEL_22:
        v30 = OUTLINED_FUNCTION_128();
        result = v31(v30);
        ++v18;
        break;
    }
  }

  __break(1u);
  return result;
}

void UITableView.frame(at:)(uint64_t a1@<X8>)
{
  sub_1D818E8E4();
  v6 = OUTLINED_FUNCTION_9_54();
  [v6 v7];
  OUTLINED_FUNCTION_26_4();
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
}

void __swiftcall UITableView.sectionFrame(at:)(__C::CGRect_optional *__return_ptr retstr, Swift::Int at)
{
  [v2 rectForSection_];
  retstr->value.origin.x = v4;
  retstr->value.origin.y = v5;
  retstr->value.size.width = v6;
  retstr->value.size.height = v7;
  retstr->is_nil = 0;
}

uint64_t sub_1D8172568(void *a1)
{
  v2 = sub_1D818E8E4();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3)
  {
    goto LABEL_8;
  }

  if (![v3 selectionStyle])
  {

    v5 = 0;
    return v5 & 1;
  }

  v15 = v3;
  sub_1D7E0A1A8(0, &qword_1EDBAE530);
  sub_1D7E0631C(0, &qword_1EDBAFE80);
  v4 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D8172E0C();
LABEL_8:
    v5 = 1;
    return v5 & 1;
  }

  sub_1D7E05450(&v12, v16);
  if ([v4 isHighlighted])
  {

    v5 = 1;
  }

  else
  {
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 8))(&v15, v6, v7);
    v8 = v15;
    SelectionBehavior.style.getter(&v12);
    sub_1D7E9B848(v8);
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v5 = (*(v10 + 40))(1, 0, v9, v10);

    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v5 & 1;
}

Swift::Void __swiftcall UITableView.selectItem(identifier:animated:)(Swift::String_optional identifier, Swift::Bool animated)
{
  v3 = v2;
  v4 = animated;
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_28_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &ObjectType - v12;
  v14 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  if (object)
  {
    sub_1D8190DB4();
    v21 = [v3 dataSource];
    if (v21)
    {
      v22 = v21;
      v29 = v16;
      v30 = countAndFlagsBits;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v22))
      {
        v24 = v23;
        v28 = v4;
        ObjectType = swift_getObjectType();
        sub_1D8172D0C();
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D819FAB0;
        *(v25 + 32) = v30;
        *(v25 + 40) = object;
        (*(v24 + 80))();

        sub_1D7E9D980();

        if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
        {
          v26 = v29;
          (*(v29 + 32))(v20, v13, v14);
          (*(v26 + 16))(v10, v20, v14);
          __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
          UITableView.selectItem(at:animated:)(v10, v28);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_0_252();
          sub_1D7E54C18();
          (*(v26 + 8))(v20, v14);
          return;
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_0_252();
        sub_1D7E54C18();
        LOBYTE(v4) = v28;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  UITableView.selectItem(at:animated:)(v10, v4);
  OUTLINED_FUNCTION_0_252();
  sub_1D7E54C18();
}

void UITableView.scroll(to:animated:)(uint64_t a1, char a2)
{
  v4 = sub_1D818E8E4();
  [v2 scrollToRowAtIndexPath:v4 atScrollPosition:0 animated:a2 & 1];
}

void UITableView.snap(to:direction:animated:)(uint64_t a1, _BYTE *a2, char a3)
{
  if (*a2 == 1)
  {
    v5 = sub_1D818E8E4();
    [v3 scrollToRowAtIndexPath:v5 atScrollPosition:0 animated:a3 & 1];
  }
}

double sub_1D8172B88@<D0>(uint64_t a1@<X8>)
{
  UITableView.frame(at:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

CGFloat sub_1D8172BCC@<D0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  UITableView.sectionFrame(at:)(&v5, a1);
  result = v5.value.origin.x;
  size = v5.value.size;
  *a2 = v5.value.origin;
  *(a2 + 16) = size;
  *(a2 + 32) = v5.is_nil;
  return result;
}

uint64_t sub_1D8172CB4(void *a1, SEL *a2)
{
  if (![a1 *a2])
  {
    return 0;
  }

  OUTLINED_FUNCTION_76_0();
  sub_1D818E994();
  v3 = sub_1D8191314();

  return v3;
}

void sub_1D8172D0C()
{
  if (!qword_1EDBB2C60)
  {
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2C60);
    }
  }
}

uint64_t sub_1D8172DAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D8172E0C()
{
  v1 = OUTLINED_FUNCTION_76_0();
  sub_1D7E328A8(v1, v2, v3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t BlueprintAnimatorManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t BlueprintAnimatorManager.lookup(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1D7E11428(a1, a2), (v9 & 1) != 0))
  {
    sub_1D7E0E768(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t BlueprintAnimatorManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_5TeaUI17SwipeActionInsetsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8173038(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
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

uint64_t sub_1D8173094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D81730E4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_1D8173114(void *a1, id a2)
{
  v3 = *v2;
  if (*v2)
  {
    if (v3 == 1)
    {
      [a2 layoutMargins];
      [a1 frame];
      CGRectGetMinX(v6);
      [a2 bounds];
      CGRectGetMaxX(v7);
      [a1 frame];
      CGRectGetMaxX(v8);
    }

    else if (v3 != 2)
    {
      v3(a2);
    }
  }
}

uint64_t static TabBarSplitViewPresentation.Navigation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_13;
      }

      sub_1D7EFB594(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_20;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v8 = 1;
      sub_1D7EFB594(*a1, 1uLL);
      sub_1D7EFB594(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      sub_1D7EFB594(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_20;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      sub_1D7EFB594(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_20;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      sub_1D7EFB594(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_20;
    default:
      if (v5 >= 5)
      {
        v17 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v19 = sub_1D8192634();
          v20 = OUTLINED_FUNCTION_1_47();
          sub_1D7EFB46C(v20, v21);
          v22 = OUTLINED_FUNCTION_2_4();
          sub_1D7EFB46C(v22, v23);
          v24 = OUTLINED_FUNCTION_2_4();
          sub_1D7EFB594(v24, v25);
          v26 = OUTLINED_FUNCTION_1_47();
          sub_1D7EFB594(v26, v27);
          return v19 & 1;
        }

        sub_1D7EFB46C(v17, v3);
        v29 = OUTLINED_FUNCTION_2_4();
        sub_1D7EFB46C(v29, v30);
        v31 = OUTLINED_FUNCTION_2_4();
        sub_1D7EFB594(v31, v32);
        v6 = OUTLINED_FUNCTION_2_4();
LABEL_20:
        sub_1D7EFB594(v6, v7);
        return 1;
      }

      else
      {
LABEL_13:
        v9 = OUTLINED_FUNCTION_1_47();
        sub_1D7EFB46C(v9, v10);
        v11 = OUTLINED_FUNCTION_2_4();
        sub_1D7EFB46C(v11, v12);
        v13 = OUTLINED_FUNCTION_2_4();
        sub_1D7EFB594(v13, v14);
        v15 = OUTLINED_FUNCTION_1_47();
        sub_1D7EFB594(v15, v16);
        return 0;
      }
  }
}

uint64_t TabBarSplitViewPresentation.Pane.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t TabBarSplitViewPresentation.ModalPane.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

id + infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  sub_1D8173598();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D819FAC0;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 48) = v8;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v9;
  *a3 = v10;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0x80;
  v11 = OUTLINED_FUNCTION_2_4();
  sub_1D7EFB42C(v11, v12, v8);

  return sub_1D7EFB42C(v6, v7, v9);
}

void sub_1D8173598()
{
  if (!qword_1EDBAE2D0)
  {
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE2D0);
    }
  }
}

unint64_t sub_1D81735EC()
{
  result = qword_1ECA12230;
  if (!qword_1ECA12230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12230);
  }

  return result;
}

unint64_t sub_1D8173644()
{
  result = qword_1ECA12238;
  if (!qword_1ECA12238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12238);
  }

  return result;
}

uint64_t sub_1D8173698(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 17))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D81736E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8173768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D81737C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TabBarSplitViewPresentation.Pane(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TabBarSplitViewPresentation.ModalPane(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t PageBlueprintModifierTrait.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

unint64_t sub_1D8173A90()
{
  result = qword_1ECA12240;
  if (!qword_1ECA12240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12240);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageBlueprintModifierTrait(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void Blueprint.contains(indexPath:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_41_15(v0, v1);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_10();
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v3 = sub_1D818E974();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    sub_1D818F394();
    OUTLINED_FUNCTION_9_11();
    swift_getWitnessTable();
    if (v3 < sub_1D8191834())
    {
      sub_1D818E974();
      sub_1D818F3B4();
      if ((sub_1D818E964() & 0x8000000000000000) == 0)
      {
        sub_1D818E964();
        OUTLINED_FUNCTION_7_5();
        swift_getWitnessTable();
        sub_1D8191834();
      }

      v4 = OUTLINED_FUNCTION_68();
      v5(v4);
    }
  }

  OUTLINED_FUNCTION_100();
}

Swift::Bool __swiftcall Blueprint.contains(index:)(Swift::Int index)
{
  OUTLINED_FUNCTION_45_15();
  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_9_11();
    swift_getWitnessTable();
    sub_1D8191834();
  }

  OUTLINED_FUNCTION_46_15();
  return result;
}

void Blueprint.indexPath(for:)()
{
  OUTLINED_FUNCTION_120();
  v2 = type metadata accessor for BlueprintItem();
  v3 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_24();
  Blueprint.item(for:)();
  OUTLINED_FUNCTION_43_0(v0, 1, v2);
  if (v10)
  {
    (*(v5 + 8))(v0, v3);
    sub_1D818E994();
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    (*(v8 + 32))(v1, v0, v2);
    Blueprint.indexPath(forItem:)();
    (*(v8 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_100();
}

void Blueprint<>.rank(inclusiveFor:)()
{
  OUTLINED_FUNCTION_120();
  v54 = v1;
  v3 = v2;
  v50 = v4;
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = type metadata accessor for BlueprintItem();
  v53 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v47 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_24();
  *&v10 = *(v3 + 32);
  *&v11 = *(v3 + 16);
  *(&v11 + 1) = v5;
  *(&v10 + 1) = v6;
  v56 = v11;
  v57 = v10;
  v12 = OUTLINED_FUNCTION_33_19();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v51 = v14;
  v52 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  OUTLINED_FUNCTION_2();
  v49 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v46 - v23;
  v55 = v3;
  v24 = sub_1D8174404();
  if (v24)
  {
    v25 = v24;
    OUTLINED_FUNCTION_1_1();
    swift_getWitnessTable();
    sub_1D815CF04(v50, v25);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  BlueprintItem.identifier.getter();
  Blueprint.section(forItem:)();

  OUTLINED_FUNCTION_43_0(v17, 1, v12);
  if (v28)
  {
    (*(v51 + 8))(v17, v52);
LABEL_17:
    OUTLINED_FUNCTION_100();
    return;
  }

  v29 = v48;
  v30 = v49;
  (*(v49 + 32))(v48, v17, v12);
  OUTLINED_FUNCTION_8_66();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  sub_1D81918C4();
  if (BYTE8(v56))
  {
    (*(v30 + 8))(v29, v12);
    goto LABEL_17;
  }

  v51 = v12;
  v52 = v7;
  v31 = v56;
  if ((v56 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = 0;
    v34 = (v47 + 8);
    v35 = (v49 + 8);
    while (v31 != v32)
    {
      Blueprint.subscript.getter();
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v52);
      OUTLINED_FUNCTION_32_20();
      v40 = v39;
      (*v34)(v0, v53);
      (*v35)(v21, v12);
      v41 = __OFADD__(v33, v40);
      v33 += v40;
      if (v41)
      {
        __break(1u);
        goto LABEL_19;
      }

      v41 = __OFADD__(v32++, 1);
      if (v41)
      {
        __break(1u);
        break;
      }
    }

    Blueprint.subscript.getter();
    v42 = v52;
    (*(*(v52 - 8) + 16))(v0, v50, v52);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v42);
    OUTLINED_FUNCTION_32_20();
    v44 = v43;
    (*v34)(v0, v53);
    v45 = *v35;
    (*v35)(v21, v12);
    if (__OFADD__(v33, v44))
    {
      goto LABEL_20;
    }

    v45(v48, v12);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1D8174404()
{

  sub_1D818F934();

  sub_1D81764AC(0, &qword_1EDBBA0C8, sub_1D7E21920, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    return 1802396018;
  }

  else
  {
    return 0;
  }
}

uint64_t Blueprint.subscript.getter(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  OUTLINED_FUNCTION_9_56();
  sub_1D81764AC(0, v2, v3, MEMORY[0x1E69E62F8]);
  v5 = v4;
  OUTLINED_FUNCTION_25_19();
  v6 = type metadata accessor for BlueprintItem();
  v7 = sub_1D8175924(&qword_1EDBAE608);
  return sub_1D7E6CDC0(sub_1D81758B4, v10, v5, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

uint64_t Blueprint.sessionIdentifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

void Blueprint.prepend(_:)()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_36_17(v0, v1);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  sub_1D818F324();
  OUTLINED_FUNCTION_18_40();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_24();
  sub_1D818F754();
  OUTLINED_FUNCTION_80_0();
}

uint64_t Blueprint.replace(_:with:removeIfEmpty:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 & 1) != 0 && (type metadata accessor for BlueprintSection(), OUTLINED_FUNCTION_7_5(), swift_getWitnessTable(), (sub_1D8191874()))
  {
    BlueprintSection.identifier.getter();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    sub_1D818F394();
    sub_1D818F344();
  }

  else
  {
    type metadata accessor for BlueprintSection();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    sub_1D818F394();
    OUTLINED_FUNCTION_68();
    sub_1D818F354();
  }

  type metadata accessor for BlueprintSection();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1D818F784();
  sub_1D818F764();
  if ((a3 & 1) == 0)
  {
    return sub_1D818F754();
  }

  result = sub_1D8191874();
  if ((result & 1) == 0)
  {
    return sub_1D818F754();
  }

  return result;
}

void Blueprint.replaceOrAppend(_:with:removeIfEmpty:)()
{
  OUTLINED_FUNCTION_120();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 32);
  v23 = *(v6 + 16);
  v24 = v7;
  v8 = OUTLINED_FUNCTION_33_19();
  v9 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v11 + 16))(v0, v5, v9, v16);
  OUTLINED_FUNCTION_43_0(v0, 1, v8);
  if (v19)
  {
    (*(v11 + 8))(v0, v9);
LABEL_7:
    OUTLINED_FUNCTION_85();
    Blueprint.append(_:)();
    goto LABEL_8;
  }

  (*(v14 + 32))(v18, v0, v8);
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  swift_getWitnessTable();
  v20 = sub_1D8191254();
  if ((v20 & 1) == 0)
  {
    (*(v14 + 8))(v18, v8);
    goto LABEL_7;
  }

  Blueprint.replace(_:with:removeIfEmpty:)(v18, v3, v22 & 1);
  (*(v14 + 8))(v18, v8);
LABEL_8:
  OUTLINED_FUNCTION_100();
}

void Blueprint.replace(_:with:)()
{
  OUTLINED_FUNCTION_120();
  v36 = v0;
  v2 = v1;
  v33 = v3;
  v5 = v4;
  v6 = *(v1 + 40);
  v37 = *(v1 + 16);
  OUTLINED_FUNCTION_34_20(*(v1 + 24));
  v40 = v6;
  v7 = type metadata accessor for BlueprintSection();
  v30 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v28 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  OUTLINED_FUNCTION_2();
  v31 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v35 = *(v2 + 60);
  OUTLINED_FUNCTION_25_19();
  v18 = type metadata accessor for BlueprintItem();
  v32 = v5;
  v34 = BlueprintItem.identifier.getter();
  OUTLINED_FUNCTION_7_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v23 = swift_getWitnessTable();
  v37 = v7;
  v38 = v18;
  v39 = WitnessTable;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  OUTLINED_FUNCTION_24_30(v23);
  sub_1D818F794();

  OUTLINED_FUNCTION_43_0(v11, 1, v7);
  if (v24)
  {
    (*(v28 + 8))(v11, v30);
  }

  else
  {
    v25 = v31;
    (*(v31 + 32))(v17, v11, v7);
    v26 = v29;
    (*(v25 + 16))(v29, v17, v7);
    BlueprintSection.replace(_:with:)();
    Blueprint.replace(_:with:removeIfEmpty:)(v17, v26, 0);
    v27 = *(v25 + 8);
    v27(v26, v7);
    v27(v17, v7);
  }

  OUTLINED_FUNCTION_100();
}

void Blueprint.move(_:to:)()
{
  OUTLINED_FUNCTION_45_15();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  OUTLINED_FUNCTION_14_0();
  sub_1D818F2C4();
  OUTLINED_FUNCTION_46_15();
}

uint64_t sub_1D8174EF8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = type metadata accessor for BlueprintSection();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  type metadata accessor for Blueprint();
  sub_1D818E974();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F394();
  sub_1D818F3B4();
  v13 = sub_1D818E964();
  BlueprintSection.subscript.getter(v13, v9);
  return (*(v10 + 8))(v12, v9);
}

uint64_t Blueprint.section(indexPath:)@<X0>(uint64_t a1@<X8>)
{
  if (sub_1D818E974() < 0 || (v2 = sub_1D818E974(), v3 = type metadata accessor for BlueprintSection(), OUTLINED_FUNCTION_4_2(), swift_getWitnessTable(), OUTLINED_FUNCTION_3_11(), swift_getWitnessTable(), OUTLINED_FUNCTION_7_7(), sub_1D818F394(), OUTLINED_FUNCTION_9_11(), swift_getWitnessTable(), v2 >= sub_1D8191834()))
  {
    type metadata accessor for BlueprintSection();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    sub_1D818E974();
    sub_1D818F3B4();
    v4 = a1;
    v5 = 0;
    v6 = 1;
    v7 = v3;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

Swift::Int_optional __swiftcall Blueprint.sectionIndex(for:)(Swift::String a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  sub_1D81917D4();
  v2 = v4;
  v3 = v5;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D8175294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D818EF94() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D8192634();
  }

  return v6 & 1;
}

uint64_t Blueprint.indexPaths.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_60();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_107();
  sub_1D81923F4();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_10();
  MEMORY[0x1DA7133A0](a1, WitnessTable);
  OUTLINED_FUNCTION_9_56();
  sub_1D81764AC(0, v4, v5, MEMORY[0x1E69E62F8]);
  swift_getWitnessTable();
  sub_1D8175924(&qword_1ECA0EB98);
  v6 = sub_1D8191214();
  v7 = OUTLINED_FUNCTION_68();
  v8(v7);
  return v6;
}

uint64_t sub_1D81754B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v10 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1D81923F4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  MEMORY[0x1DA7133A0](v10, WitnessTable, v14);
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v23;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = sub_1D8176484;
  v30 = &v31;
  v17 = sub_1D818E994();
  v37 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v20 = sub_1D7E6CDC0(sub_1D817648C, v24, v12, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v13 + 8))(v16, v12);
  return v20;
}

uint64_t sub_1D81756BC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  type metadata accessor for BlueprintItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1D817574C@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  type metadata accessor for BlueprintSection();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a3 = result;
  return result;
}

uint64_t static Blueprint.== infix(_:_:)()
{
  type metadata accessor for Blueprint();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  return sub_1D818F2B4() & 1;
}

uint64_t sub_1D8175924(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_9_56();
    sub_1D81764AC(255, v3, v4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_1D8175988@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Blueprint.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D81759B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D8175A08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

void Blueprint<>.groupRank(for:)()
{
  OUTLINED_FUNCTION_120();
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v26 = v4;
  v27 = v2;
  v25 = *(v1 + 24);
  v28 = v25;
  v29 = v3;
  v5 = OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_107();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v22 = v7;
  v23 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_2();
  v24 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1D8174404();
  if (!v13 || (v15 = v13, v16 = v14, OUTLINED_FUNCTION_25_19(), type metadata accessor for BlueprintItem(), OUTLINED_FUNCTION_1_1(), swift_getWitnessTable(), sub_1D815CF80(v26, v15, v16), v18 = v17, , , (v18 & 1) != 0))
  {
    OUTLINED_FUNCTION_25_19();
    type metadata accessor for BlueprintItem();
    BlueprintItem.identifier.getter();
    Blueprint.section(forItem:)();

    OUTLINED_FUNCTION_43_0(v0, 1, v5);
    if (v19)
    {
      (*(v22 + 8))(v0, v23);
    }

    else
    {
      v20 = v24;
      (*(v24 + 32))(v12, v0, v5);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      sub_1D81918C4();
      (*(v20 + 8))(v12, v5);
    }
  }

  OUTLINED_FUNCTION_100();
}

void Blueprint<>.insert(_:sortBy:)()
{
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  sub_1D8191744();
  Blueprint.insert(_:at:)();
}

uint64_t Blueprint.description.getter(uint64_t a1)
{
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v4 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_10();
  (*(v6 + 16))(WitnessTable, v1 + *(a1 + 56), v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_85();
  return sub_1D8190F94();
}

unint64_t Blueprint.visualDescription.getter(void *a1)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D81921A4();

  v20 = 0xD000000000000013;
  v21 = 0x80000001D81D9AB0;
  v2 = a1[3];
  v12 = a1[2];
  v13 = v2;
  v3 = a1[5];
  v14 = a1[4];
  v15 = v3;
  v16 = v12;
  v17 = v2;
  v18 = v14;
  v19 = v3;
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v4 = sub_1D818F394();
  OUTLINED_FUNCTION_9_11();
  WitnessTable = swift_getWitnessTable();
  sub_1D7E6CDC0(sub_1D8176094, &v11, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  v7 = MEMORY[0x1DA713540]();
  v9 = v8;

  MEMORY[0x1DA713260](v7, v9);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return v20;
}

unint64_t sub_1D817603C@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BlueprintSection();
  result = BlueprintSection.visualDescription.getter(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void Blueprint.traversable(at:)()
{
  OUTLINED_FUNCTION_66_0();
  v1 = v0;
  v0[3] = type metadata accessor for BlueprintSection();
  v1[4] = &protocol witness table for BlueprintSection<A, B>;
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_14_0();
  Blueprint.subscript.getter();
}

uint64_t sub_1D8176124()
{
  swift_getWitnessTable();

  return sub_1D8191834();
}

uint64_t Blueprint.itemsCount.getter()
{
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  sub_1D81911F4();
  return v1;
}

uint64_t sub_1D8176200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  result = sub_1D8191834();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t Blueprint.itemIdentifiers.getter()
{
  swift_getKeyPath();
  sub_1D7E09DB8(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  sub_1D8176408();
  v0 = sub_1D8191214();

  return v0;
}

uint64_t sub_1D8176390@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BlueprintSection();
  result = BlueprintSection.itemIdentifiers.getter(v2);
  *a1 = result;
  return result;
}

unint64_t sub_1D8176408()
{
  result = qword_1ECA12248;
  if (!qword_1ECA12248)
  {
    sub_1D7E09DB8(255, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12248);
  }

  return result;
}

void sub_1D81764AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Alert.__allocating_init(type:)(void *a1)
{
  v2 = swift_allocObject();
  Alert.init(type:)(a1);
  return v2;
}

uint64_t Alert.onAccept(block:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

void Alert.present(from:animated:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = [a1 presentedViewController];
  if (!v9 || (v10 = v9, objc_opt_self(), v11 = swift_dynamicCastObjCClass(), v10, !v11))
  {
    v12 = *(v4 + 112);
    if (v12)
    {
      if (a3)
      {
        v16[4] = a3;
        v16[5] = a4;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = sub_1D7E64940;
        v16[3] = &block_descriptor_89;
        v13 = _Block_copy(v16);
        v14 = v12;
        sub_1D7E19F24(a3);
      }

      else
      {
        v15 = v12;
        v13 = 0;
      }

      [a1 presentViewController:v12 animated:a2 & 1 completion:v13];
      _Block_release(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PreferredActionButton.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void *sub_1D8176800(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a1;
  v8 = a3;
  return a2;
}

void *Alert.init(type:)(void *a1)
{
  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1ECA0ED08);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  OUTLINED_FUNCTION_3_143();
  v9 = OUTLINED_FUNCTION_30_1();
  v11 = v10(v9);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 64))(v14, v15);
  v17 = sub_1D7FC5088(v6, v8, v11, v13, v16);
  v18 = *(v1 + 112);
  *(v1 + 112) = v17;

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 96))(v19, v20);
  if (v22)
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
    sub_1D7E0A1A8(0, &qword_1ECA0ED10);
    sub_1D7E0E768(a1, &aBlock);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    sub_1D7E05450(&aBlock, v27 + 24);

    v28 = sub_1D7FC52F8(v24, v25, v26, sub_1D8177948, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = (*(v30 + 88))(v29, v30);
  v34 = v33;
  if (v33)
  {
    v35 = v31;
    v36 = v32;
    sub_1D7E0A1A8(0, &qword_1ECA0ED10);
    sub_1D7E0E768(a1, &aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    sub_1D7E05450(&aBlock, v37 + 24);

    v34 = sub_1D7FC52F8(v35, v34, v36, sub_1D81778FC, v37);
  }

  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 104))(v38, v39);
  if (v41)
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
    sub_1D7E0A1A8(0, &qword_1ECA0ED10);

    v46 = sub_1D7FC52F8(v43, v44, v45, sub_1D81778F4, v2);
  }

  else
  {
    v46 = 0;
  }

  OUTLINED_FUNCTION_3_143();
  v47 = OUTLINED_FUNCTION_30_1();
  if (v48(v47))
  {
    v49 = *(v2 + 112);
    if (v49)
    {
      sub_1D7E0E768(a1, v85);
      v50 = swift_allocObject();
      sub_1D7E05450(v85, (v50 + 2));
      v50[7] = v34;
      v50[8] = v46;
      v50[9] = v28;
      v83 = sub_1D81778E4;
      v84 = v50;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v81 = sub_1D7F845F8;
      v82 = &block_descriptor_3_2;
      v51 = _Block_copy(&aBlock);
      v52 = v28;
      v53 = v49;
      v54 = v34;
      v55 = v46;

      [v53 addTextFieldWithConfigurationHandler_];
      _Block_release(v51);
    }
  }

  OUTLINED_FUNCTION_3_143();
  v56 = OUTLINED_FUNCTION_30_1();
  v58 = v57(v56);
  v59 = v34;
  v60 = v34;
  v61 = v28;
  v79 = v46;
  v62 = v58(v60, v28, v46);
  v64 = v63;
  v66 = v65;

  sub_1D8176E34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  *(inited + 32) = v62;
  *(inited + 40) = v64;
  *(inited + 48) = v66;
  v68 = v66;
  v69 = v62;
  v70 = v64;
  for (i = 32; i != 56; i += 8)
  {
    if (*(inited + i))
    {
      result = *(v2 + 112);
      if (!result)
      {
        __break(1u);
        goto LABEL_26;
      }

      [result addAction_];
    }
  }

  swift_setDeallocating();
  sub_1D8103154();
  v74 = a1[3];
  v73 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  result = (*(v73 + 72))(&aBlock, v74, v73);
  v75 = *(v2 + 112);
  if (!aBlock)
  {
    goto LABEL_21;
  }

  v76 = v59;
  if (aBlock == 1)
  {
    v77 = v61;
    v61 = v79;
    if (!v75)
    {
      __break(1u);
LABEL_21:
      v77 = v59;
      v76 = v79;
      if (!v75)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

LABEL_24:
    v78 = v75;
    [v78 setPreferredAction_];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v2;
  }

LABEL_23:
  v77 = v79;
  if (v75)
  {
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1D8176E34()
{
  if (!qword_1ECA12250)
  {
    sub_1D81036C8();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA12250);
    }
  }
}

uint64_t sub_1D8176E8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[4];
  if (v5)
  {

    v5(v6);
    sub_1D7E0E10C(v5);
  }

  v7 = a2[10];
  if (v7)
  {
    v8 = a2[14];
    sub_1D7E19F24(a2[10]);
    v9 = v8;
    v7(v8);
    sub_1D7E0E10C(v7);
  }

  v10 = a2[14];
  a2[14] = 0;

  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  return (*(v12 + 120))(v11, v12);
}

uint64_t sub_1D8176F64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[2];
  if (v5)
  {

    v5(v6);
    sub_1D7E0E10C(v5);
  }

  v7 = a2[8];
  if (v7)
  {
    v8 = a2[14];
    sub_1D7E19F24(a2[8]);
    v9 = v8;
    v7(v8);
    sub_1D7E0E10C(v7);
  }

  v10 = a2[14];
  a2[14] = 0;

  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  return (*(v12 + 112))(v11, v12);
}

void sub_1D817703C(uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3)
  {

    v3(v4);
    sub_1D7E0E10C(v3);
  }

  v5 = a2[12];
  if (v5)
  {
    v6 = a2[14];
    sub_1D7E19F24(a2[12]);
    v7 = v6;
    v5(v6);
    sub_1D7E0E10C(v5);
  }

  v8 = a2[14];
  a2[14] = 0;
}

uint64_t sub_1D81770E8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 32))(v10, v11);
  if (v12)
  {
    v13 = sub_1D8190EE4();
  }

  else
  {
    v13 = 0;
  }

  [a1 setText_];

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 40))(v14, v15);
  if (v16)
  {
    v17 = sub_1D8190EE4();
  }

  else
  {
    v17 = 0;
  }

  [a1 setPlaceholder_];

  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  [a1 setAutocapitalizationType_];
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  [a1 setEnablesReturnKeyAutomatically_];
  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x1E69DE5C0];
  v24 = [objc_opt_self() mainQueue];
  sub_1D7E0E768(a2, v39);
  v25 = swift_allocObject();
  sub_1D7E05450(v39, (v25 + 2));
  v25[7] = a1;
  v25[8] = a3;
  v25[9] = a4;
  v25[10] = a5;
  aBlock[4] = sub_1D8177C18;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8177500;
  aBlock[3] = &block_descriptor_21_7;
  v26 = _Block_copy(aBlock);
  v27 = a5;
  v28 = a1;
  v29 = a3;
  v30 = a4;

  v31 = [v22 addObserverForName:v23 object:v28 queue:v24 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  v34 = sub_1D7FC3208(v28);
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  (*(v33 + 128))(v34, v36, a3, a4, a5, v32, v33);
}

uint64_t sub_1D817744C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = sub_1D7FC3208(a3);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  (*(v11 + 128))(v12, v14, a4, a5, a6, v10, v11);
}

uint64_t sub_1D8177500(uint64_t a1)
{
  v2 = sub_1D818E454();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D818E414();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t Alert.onReject(block:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

{
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t Alert.onNeutral(block:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

{
  v3 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t Alert.deinit()
{
  sub_1D7E0E10C(*(v0 + 16));
  sub_1D7E0E10C(*(v0 + 32));
  sub_1D7E0E10C(*(v0 + 48));
  sub_1D7E0E10C(*(v0 + 64));
  sub_1D7E0E10C(*(v0 + 80));
  sub_1D7E0E10C(*(v0 + 96));

  return v0;
}

uint64_t Alert.__deallocating_deinit()
{
  Alert.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D81777B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onAccept(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1D81777E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onAccept(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1D8177810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onReject(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1D817783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onReject(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1D8177868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onNeutral(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1D8177894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = Alert.onNeutral(block:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t objectdestroy_5Tm_1()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D8177958()
{
  result = qword_1ECA12258[0];
  if (!qword_1ECA12258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA12258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreferredActionButton(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.__allocating_init(blueprintLayoutProvider:blueprintViewProvider:blueprintProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RestoreViewportByIdentifierBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:blueprintProvider:)(a1, a2, a3);
  return v6;
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:blueprintProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 32))(v3 + v7);
  OUTLINED_FUNCTION_12();
  *(v3 + *(v8 + 152)) = a2;
  OUTLINED_FUNCTION_12();
  *(v3 + *(v9 + 160)) = a3;
  return v3;
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.__deallocating_deinit()
{
  RestoreViewportByIdentifierBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8177E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v8 = type metadata accessor for RestoreViewportByIdentifierBlueprintBookmarkApplicator.RestoreContext();
  v9 = *(v8 + 84);
  v10 = sub_1D818E994();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a3, v10);
  *&a4[*(v8 + 88)] = a5;
  return result;
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.supportedBookmark.getter()
{
  type metadata accessor for BlueprintBookmark();

  return swift_storeEnumTagMultiPayload();
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.prepare(bookmark:context:)@<X0>(const void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v85 = a2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_57();
  v80 = v6;
  v7 = v5[13];
  OUTLINED_FUNCTION_9_57();
  v9 = *(v8 + 136);
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v77 = v11;
  v78 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94();
  v76 = v13;
  OUTLINED_FUNCTION_9_57();
  v81 = *(v14 + 96);
  *&v15 = v81;
  v83 = v7;
  *(&v15 + 1) = v7;
  v79 = v5[16];
  *&v16 = v79;
  v82 = v9;
  *(&v16 + 1) = v9;
  v95[1] = v16;
  v95[0] = v15;
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v74 = v18;
  v75 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_94();
  v72 = v20;
  OUTLINED_FUNCTION_0_254();
  sub_1D8179E74(0, v21, v22);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  v84 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v71 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v73 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v69 - v33;
  memcpy(__dst, a1, sizeof(__dst));
  OUTLINED_FUNCTION_9_57();
  v34 = v5[10];
  OUTLINED_FUNCTION_9_57();
  v36 = *(v35 + 112);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v34, v36);
  v37 = OUTLINED_FUNCTION_15_50();
  v38 = OUTLINED_FUNCTION_15_50();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v94[0] = v37;
  v94[1] = v38;
  v94[2] = AssociatedConformanceWitness;
  v94[3] = v40;
  v41 = type metadata accessor for BlueprintLayout();
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v5) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  result = (*(v42 + 8))(v95, v41);
  if ((v5 & 1) == 0)
  {
    memcpy(v94, __dst, sizeof(v94));
    result = sub_1D7FA0BEC(v94);
    if (result != 1)
    {
      memcpy(v95, v94, 0x80uLL);
      sub_1D81785AC(v94[4], v25);
      sub_1D7EE5A18();
      v45 = v44;
      OUTLINED_FUNCTION_21(v25);
      if (v46)
      {
        sub_1D81785AC(v94[5], v28);
        OUTLINED_FUNCTION_21(v25);
        if (!v46)
        {
          OUTLINED_FUNCTION_0_254();
          sub_1D81793D4(v25, v47, v48);
        }
      }

      else
      {
        sub_1D7FA10E0(v25, v28);
        __swift_storeEnumTagSinglePayload(v28, 0, 1, v45);
      }

      OUTLINED_FUNCTION_21(v28);
      if (!v46)
      {
        v52 = &v28[*(v45 + 48)];
        v53 = *v52;
        v54 = v52[1];
        v55 = v70;
        v71 = *(v71 + 32);
        (v71)(v70, v28, v84);
        v56 = sub_1D81788E0(v3, v95, v53, v54);

        v57 = v72;
        sub_1D818F154();

        v58 = v75;
        v59 = v76;
        Blueprint.subscript.getter();
        (*(v74 + 8))(v57, v58);
        v60 = v78;
        v61 = BlueprintItem.identifier.getter();
        v74 = v62;
        v75 = v61;
        (*(v77 + 8))(v59, v60);
        v63 = v73;
        (v71)(v73, v55, v84);
        v64 = *(v80 + 88);
        v65 = *(v80 + 120);
        v86 = v34;
        v87 = v64;
        v88 = v81;
        v89 = v83;
        v90 = v36;
        v91 = v65;
        v92 = v79;
        v93 = v82;
        v66 = type metadata accessor for RestoreViewportByIdentifierBlueprintBookmarkApplicator.RestoreContext();
        v67 = v85;
        v85[3] = v66;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
        return sub_1D8177E54(v75, v74, v63, boxed_opaque_existential_0, v56);
      }

      OUTLINED_FUNCTION_0_254();
      result = sub_1D81793D4(v28, v49, v50);
    }
  }

  v51 = v85;
  *v85 = 0u;
  *(v51 + 1) = 0u;
  return result;
}

uint64_t sub_1D81785AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D8179E74(0, &unk_1EDBBC660, sub_1D7EE5A18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  sub_1D7EE5A18();
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v25 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v17 = *(sub_1D818E994() - 8);
    sub_1D817942C(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v3, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
    {
      sub_1D81793D4(v8, &unk_1EDBBC660, sub_1D7EE5A18);
      ++v14;
    }

    else
    {
      v27 = a2;
      v18 = v28;
      sub_1D7FA10E0(v8, v28);
      sub_1D7FA10E0(v18, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE5150(0, *(v16 + 16) + 1, 1, v16);
        v16 = v22;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        sub_1D7EE5150(v19 > 1, v20 + 1, 1, v16);
        v21 = v26;
        v16 = v23;
      }

      ++v14;
      *(v16 + 16) = v21;
      sub_1D7FA10E0(v30, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20);
      a2 = v27;
    }
  }

  v31 = v16;
  sub_1D8190DB4();
  sub_1D8161818(sub_1D8179E54, v3);

  sub_1D7F1E76C();
}

double sub_1D81788E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(*a1 + 80), *(*a1 + 112));
  v7 = v13[565];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for BlueprintLayout();
  (*(*(v8 - 8) + 8))(v13, v8);
  v9 = 48;
  if (v7)
  {
    v9 = 56;
  }

  v10 = 104;
  if (v7)
  {
    v10 = 96;
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  return v11 - (*(a2 + v9) + *(a2 + v10));
}

uint64_t RestoreViewportByIdentifierBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  v103 = a3;
  v6 = *v3;
  v7 = *(v6 + 128);
  v107 = *(v6 + 96);
  v108 = v7;
  v110 = v107;
  v111 = v7;
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v95 = v9;
  v96 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v94 = v11;
  OUTLINED_FUNCTION_2_168();
  sub_1D8179E74(0, v12, v13);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94();
  v97 = v15;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v100 = v17;
  v101 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v105 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_57();
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_11_57();
  OUTLINED_FUNCTION_11_57();
  v22 = *(v21 + 112);
  v23 = *(v6 + 120);
  *&v110 = v20;
  *(&v110 + 1) = v24;
  v104 = v24;
  v111 = v107;
  v112 = v22;
  v113 = v23;
  v106 = v23;
  v114 = v108;
  v25 = type metadata accessor for RestoreViewportByIdentifierBlueprintBookmarkApplicator.RestoreContext();
  v26 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v102 = v27;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v93 - v29;
  *&v108 = v25;
  v99 = *(v25 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_94();
  *&v107 = v32;
  memcpy(v118, a2, sizeof(v118));
  OUTLINED_FUNCTION_11_57();
  v98 = *(v33 + 144);
  OUTLINED_FUNCTION_6_98();
  v34 = OUTLINED_FUNCTION_14_51();
  v35 = OUTLINED_FUNCTION_14_51();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedConformanceWitness();
  *&v109[0] = v34;
  *&v109[1] = v35;
  *&v109[2] = AssociatedConformanceWitness;
  *&v109[3] = v37;
  type metadata accessor for BlueprintLayout();
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v6) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  v39 = *(v38 + 8);
  v40 = v38 + 8;
  v41 = OUTLINED_FUNCTION_12_55();
  result = v39(v41);
  if ((v6 & 1) == 0)
  {
    sub_1D7EB2914(v103, &v110, sub_1D7E2CEC0);
    if (*(&v111 + 1))
    {
      v93[1] = v40;
      v43 = v108;
      v44 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v30, v44 ^ 1u, 1, v43);
      OUTLINED_FUNCTION_21(v30);
      if (!v88)
      {
        v93[0] = v39;
        (*(v99 + 32))(v107, v30, v43);
        v45 = *(v106 + 56);
        v93[2] = *(v4 + *(*v4 + 152));
        v102 = v45;
        v103 = v106 + 56;
        v46 = (v45)(v104);
        [v46 contentOffset];
        v48 = v47;
        v50 = v49;

        v51 = v94;
        sub_1D818F154();

        v52 = v96;
        v53 = v97;
        Blueprint.indexPath(for:)();
        (*(v95 + 8))(v51, v52);
        v54 = v101;
        if (__swift_getEnumTagSinglePayload(v53, 1, v101) == 1)
        {
          (*(v100 + 16))(v105, v107 + *(v43 + 84), v54);
          if (__swift_getEnumTagSinglePayload(v53, 1, v54) != 1)
          {
            OUTLINED_FUNCTION_2_168();
            sub_1D81793D4(v53, v55, v56);
          }
        }

        else
        {
          (*(v100 + 32))(v105, v53, v54);
        }

        v57 = v102(v104, v106);
        swift_getAssociatedTypeWitness();
        v58 = swift_getAssociatedConformanceWitness();
        v59 = *(v58 + 88);
        v60 = swift_checkMetadataState();
        v59(v116, v105, v60, v58);

        if (v117)
        {
          v97 = v102(v104, v106);
          OUTLINED_FUNCTION_6_98();
          v61 = v115;
          v62 = OUTLINED_FUNCTION_12_55();
          v63 = v93[0];
          (v93[0])(v62);
          LOBYTE(v109[0]) = v61;
          v64 = v97;
          (*(v58 + 208))(v105, v109, 0, v60, v58);

          v65 = OUTLINED_FUNCTION_8_67();
          v66 = (v102)(v65);
          [v66 contentOffset];
          v48 = v67;
          v50 = v68;

          v69 = v107;
        }

        else
        {
          v70 = *v116;
          v71 = *&v116[1];
          OUTLINED_FUNCTION_6_98();
          v72 = v115;
          v73 = OUTLINED_FUNCTION_12_55();
          (v93[0])(v73);
          v74 = OUTLINED_FUNCTION_8_67();
          v75 = (v102)(v74);
          [v75 adjustedContentInset];
          v77 = v76;
          v79 = v78;

          if (v72)
          {
            v50 = v71 - v77;
          }

          else
          {
            v48 = v70 - v79;
          }

          v69 = v107;
          v63 = v93[0];
        }

        OUTLINED_FUNCTION_6_98();
        v80 = v115;
        v81 = OUTLINED_FUNCTION_12_55();
        v63(v81);
        v82 = v108;
        if (v80)
        {
          memcpy(v109, v118, sizeof(v109));
          if (sub_1D7FA0BEC(v109) != 1)
          {
            v88 = v109[1] == v109[3] && v109[0] == v109[2];
            if (!v88 && v109[7] < 0.0)
            {
              v89 = OUTLINED_FUNCTION_8_67();
              v87 = v90(v89);
              v91 = -v109[12];
              [v87 contentOffset];
              [v87 setContentOffset_];
              goto LABEL_21;
            }
          }

          v50 = v50 - *(v69 + *(v82 + 88));
          v83 = OUTLINED_FUNCTION_8_67();
          v85 = v84(v83);
        }

        else
        {
          v48 = v48 - *(v69 + *(v108 + 88));
          v86 = OUTLINED_FUNCTION_8_67();
          v85 = (v102)(v86);
        }

        v87 = v85;
        [v85 setContentOffset_];
LABEL_21:

        (*(v100 + 8))(v105, v101);
        return (*(v99 + 8))(v69, v82);
      }
    }

    else
    {
      sub_1D7E7BAAC(&v110);
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v108);
    }

    return (*(v102 + 1))(v30, v26);
  }

  return result;
}

uint64_t sub_1D81793D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D8179E74(0, a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D817942C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v41 = *a2;
  v4 = v41;
  v5 = v41[14];
  v6 = v41[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v40 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for BlueprintLayoutItem();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v42 = v4[18];
  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  *&v50 = v12;
  *(&v50 + 1) = AssociatedTypeWitness;
  *&v51 = v13;
  *(&v51 + 1) = AssociatedConformanceWitness;
  v14 = type metadata accessor for BlueprintLayout();
  v48 = a1;
  LOBYTE(v12) = BlueprintLayout.contains(indexPath:)();
  v15 = *(*(v14 - 8) + 8);
  v15(&v53, v14);
  if ((v12 & 1) == 0)
  {
    sub_1D7EE5A18();
    v23 = v22;
    v24 = v49;
    goto LABEL_9;
  }

  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v16 = v43;
  BlueprintLayout.subscript.getter(v48, v14);
  v15(&v53, v14);
  (*(v44 + 16))(v45, v16, AssociatedTypeWitness);
  sub_1D7FA19F8();
  v17 = v16;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_1D81793D4(&v50, &unk_1EDBB0E98, sub_1D7FA19F8);
    v21 = v49;
LABEL_7:
    v25 = (*(v41[15] + 56))(v41[11], v41[15]);
    swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v27 = *(v26 + 88);
    v28 = swift_checkMetadataState();
    v29 = v48;
    v27(&v53, v48, v28, v26);

    (*(v46 + 8))(v17, v47);
    if ((v56 & 1) == 0)
    {
      v33 = v54;
      v34 = v55;
      v50 = v53;
      if (v54 > 0.0 && *&v55 > 0.0)
      {
        sub_1D7EE5A18();
        v36 = v35;
        v37 = v21 + *(v35 + 48);
        v38 = sub_1D818E994();
        (*(*(v38 - 8) + 16))(v21, v29, v38);
        *v37 = v50;
        *(v37 + 16) = v33;
        *(v37 + 24) = v34;
        v24 = v21;
        v31 = 0;
        v23 = v36;
        return __swift_storeEnumTagSinglePayload(v24, v31, 1, v23);
      }
    }

    sub_1D7EE5A18();
    v23 = v30;
    v24 = v21;
LABEL_9:
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v31, 1, v23);
  }

  sub_1D7E05450(&v50, &v53);
  v18 = v55;
  v19 = v56;
  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v20 = (*(v19 + 8))(v18, v19);
  v21 = v49;
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    goto LABEL_7;
  }

  (*(v46 + 8))(v16, v47);
  sub_1D7EE5A18();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v39);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v53);
}

BOOL sub_1D81799D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24[0] = a2;
  v4 = *a3;
  sub_1D7EE5A18();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EB2914(a1, v8, sub_1D7EE5A18);
  v9 = &v8[*(v6 + 56)];
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_1D818E994();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  sub_1D7EB2914(v24[0], v8, sub_1D7EE5A18);
  v14 = &v8[*(v6 + 56)];
  v15 = *v14;
  v16 = v14[1];
  v13(v8, v12);
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(v4 + 80), *(v4 + 112));
  v17 = v25[565];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v24[1] = AssociatedTypeWitness;
  v24[2] = v19;
  v24[3] = AssociatedConformanceWitness;
  v24[4] = v21;
  v22 = type metadata accessor for BlueprintLayout();
  (*(*(v22 - 8) + 8))(v25, v22);
  if (v17)
  {
    return v11 < v16;
  }

  else
  {
    return v10 < v15;
  }
}

uint64_t sub_1D8179CB8()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D8179DA8()
{
  result = sub_1D818E994();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D8179E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *ModernPageViewController.init(blueprintProvider:viewControllerProvider:prewarmer:sessionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v32 = a2;
  v34 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x230);
  v30 = *(v34 - 8);
  v6 = v30;
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v30 - v7;
  v10 = *((v9 & v8) + 0x218);
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v18 = *((v17 & v16) + 0x220);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v4[*((v17 & v16) + 0x258)], v13);
  OUTLINED_FUNCTION_3_7();
  v21 = *(v11 + 16);
  v22 = &v4[*(v20 + 608)];
  v31 = a1;
  v21(v22, a1, v10);
  v21(v15, a1, v10);
  v23 = *(v6 + 16);
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v23(v33, v35, v34);
  v27 = v36;
  sub_1D7E0E768(v36, v37);
  v28 = PageViewController.init(blueprintProvider:prewarmer:sessionManager:)(v15, v24, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v30 + 8))(v26, v25);
  (*(v19 + 8))(v32, v18);
  (*(v11 + 8))(v31, v10);
  return v28;
}

id ModernPageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1D817A29C()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_7();
  return v0();
}

uint64_t sub_1D817A35C()
{
  OUTLINED_FUNCTION_10_2();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

id ModernPageViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D817A470(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_10_2();
  v7 = *(v6 + 8);

  return v7(a1 + v5);
}

Swift::Void __swiftcall ModernPageViewController.set(previewing:)(Swift::Bool previewing)
{
  v2 = sub_1D7FCEEE8();
  if (v2)
  {
    v3 = v2;
    v10 = v2;
    sub_1D7E194D0();
    sub_1D80BDB68();
    v4 = v3;
    if (swift_dynamicCast())
    {
      sub_1D7E17C84(v8, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 8))(previewing, v5, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1D80BDBC4(v8);
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        [v7 setPreviewing_];
      }
    }
  }
}

uint64_t MenuItemAlternate.init<A>(command:title:modifierFlags:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a5;
  v9 = *(*a1 + 88);
  v10 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  type metadata accessor for MenuGroupItem.CommandMenuItem();
  v13 = a1[2];
  v14 = a1[3];
  OUTLINED_FUNCTION_3_144();
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = a2;
  v15[4] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  sub_1D8190DB4();
  result = sub_1D813D020(v13, v14, a1, v12, sub_1D7FADEB0, v15, j__OUTLINED_FUNCTION_13_1, v16, 0, 0, a4, 0, 0);
  *v19 = result;
  return result;
}

uint64_t MenuItemAlternate.init<A, B>(command:title:state:modifierFlags:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a5;
  v24 = a6;
  v21[0] = a3;
  v9 = *a1;
  v10 = *(*a1 + 136);
  v11 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v21 - v12;
  LOBYTE(a4) = *a4;
  v14 = type metadata accessor for MenuGroupItem.CommandMenuItem();
  v15 = a1[3];
  v21[1] = a1[2];
  v22 = v14;
  OUTLINED_FUNCTION_3_144();
  v16 = swift_allocObject();
  v16[2] = v10;
  v17 = *(v9 + 144);
  v16[3] = v17;
  v18 = *(v9 + 152);
  v16[4] = v18;
  v16[5] = a2;
  v16[6] = v21[0];
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v17;
  v19[4] = v18;
  HIBYTE(v25) = a4;
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_169();
  result = sub_1D813D450(0, v15, a1, v13, sub_1D7FAE328, v16, j__OUTLINED_FUNCTION_13_1, v19, &v25 + 7, 0, v22, v23, v24, v25);
  *v24 = result;
  return result;
}

uint64_t MenuItemAlternate.init<A, B>(command:title:state:modifierFlags:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_1D817AA80(a1, a2, a3, a4, &unk_1F530C658, sub_1D817AA2C, j__OUTLINED_FUNCTION_13_1, a5);
}

{
  return sub_1D817AA80(a1, a2, a3, a4, &unk_1F530C6A8, sub_1D817ACE0, j__OUTLINED_FUNCTION_13_1, a5);
}

uint64_t sub_1D817AA80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v31 = a8;
  v32 = a7;
  v29 = a4;
  v30 = a6;
  v28 = a5;
  v11 = *a1;
  v12 = *(*a1 + 136);
  v13 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = *(a2 + 24);
  v24 = *(a2 + 16);
  v25 = *a3;
  v17 = type metadata accessor for MenuGroupItem.CommandMenuItem();
  v18 = a1[3];
  v26 = a1[2];
  v27 = v17;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v12);
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = *(v11 + 144);
  *(v19 + 24) = v20;
  v21 = *(v11 + 152);
  *(v19 + 32) = v21;
  *(v19 + 40) = *a2;
  *(v19 + 56) = v24;
  *(v19 + 64) = v16;
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = v20;
  v22[4] = v21;
  v33 = v25;
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_169();
  result = sub_1D813D450(v26, v18, a1, v15, v30, v19, v32, v22, &v33, 0, v26, v29, v28, v29);
  *v31 = result;
  return result;
}

uint64_t objectdestroy_11Tm_1()
{

  return swift_deallocObject();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

id sub_1D817AF7C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = *a1;
  v15 = OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_adPrivacyHeaderIconView;
  *&v7[v15] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  *&v7[OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_onboardingFlowDelegate + 8] = 0;
  v16 = swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_buttonStyle] = v14;
  *(v16 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v17 = &v7[OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOnCallback];
  *v17 = a4;
  v17[1] = a5;
  v18 = &v7[OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOffCallback];
  *v18 = a6;
  v18[1] = a7;
  v28 = a7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  sub_1D7E19F24(a4);
  sub_1D7E19F24(a6);
  v21 = [v20 bundleForClass_];
  sub_1D818E514();

  v22 = [v20 bundleForClass_];
  sub_1D818E514();

  v23 = sub_1D8190EE4();

  v24 = sub_1D8190EE4();

  v30.receiver = v7;
  v30.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v23, v24, 0, 2, 0x80000001D81DA1D0);

  v26 = v25;
  [v26 setModalPresentationStyle_];
  [v26 setModalInPresentation_];
  sub_1D7E418F4(a6, v28);
  sub_1D7E418F4(a4, a5);

  swift_unknownObjectRelease();
  return v26;
}

void sub_1D817B250()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1D817B294();
  sub_1D817B338();
  sub_1D817B490();
}

void sub_1D817B294()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    [v2 addSubview_];
  }
}

void sub_1D817B338()
{
  v7 = [objc_opt_self() accessoryButton];
  v1 = [v0 headerView];
  [v1 addAccessoryButton_];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D818E514();
  v6 = v5;

  sub_1D818CF98(v4, v6, 0, v7);
  [v7 addTarget:v0 action:sel_didTapLearnMore forControlEvents:{64, 0x80000001D81D9EC0}];
}

void sub_1D817B490()
{
  v1 = v0;
  sub_1D817CB4C(0, &qword_1EDBAE428, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1D8191E04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumFeatureFlagEnabled())
  {
    if (*(v0 + OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_buttonStyle))
    {
      v9 = [objc_opt_self() boldButton];
      v10 = objc_opt_self();
      v30 = v9;
      v11 = [v10 linkButton];
    }

    else
    {
      type metadata accessor for TintingBoldTrayButton();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [ObjCClassFromMetadata boldButton];
      v11 = [ObjCClassFromMetadata boldButton];
      sub_1D8191DB4();
      v14 = *(v6 + 16);
      v14(v4, v8, v5);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      sub_1D8191E24();
      v30 = v13;

      v14(v4, v8, v5);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      sub_1D8191E24();

      (*(v6 + 8))(v8, v5);
    }

    type metadata accessor for Localized();
    v15 = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 bundleForClass_];
    v19 = sub_1D818E514();
    v21 = v20;

    sub_1D818CF98(v19, v21, 0, v17);
    [v17 addTarget:v1 action:sel_didTapTurnOff forControlEvents:64];

    v22 = v30;
    v23 = [v16 bundleForClass_];
    v24 = sub_1D818E514();
    v26 = v25;

    sub_1D818CF98(v24, v26, 0, v22);
    [v22 addTarget:v1 action:sel_didTapTurnOn forControlEvents:64];

    v27 = [v1 buttonTray];
    [v27 addButton_];

    v28 = [v1 buttonTray];
    [v28 addButton_];
  }

  else
  {

    sub_1D817B99C();
  }
}

void sub_1D817B99C()
{
  v1 = v0;
  sub_1D817CB4C(0, &qword_1EDBAE428, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_1D8191E04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_buttonStyle))
  {
    v9 = [objc_opt_self() boldButton];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 linkButton];
  }

  else
  {
    type metadata accessor for TintingBoldTrayButton();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [ObjCClassFromMetadata boldButton];
    v12 = [ObjCClassFromMetadata boldButton];
    sub_1D8191E14();

    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1D8191DA4();
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
      {
        sub_1D7F8CA80(v4);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
    }

    v14 = [objc_opt_self() systemGray5Color];
    v15 = sub_1D8191D04();
    sub_1D818FF04();
    v15(v30, 0);
    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for Localized();
  v16 = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = v12;
  v19 = [v17 bundleForClass_];
  v20 = sub_1D818E514();
  v22 = v21;

  sub_1D818CF98(v20, v22, 0, v18);
  [v18 addTarget:v1 action:sel_didTapTurnOff forControlEvents:64];

  v23 = v11;
  v24 = [v17 bundleForClass_];
  v25 = sub_1D818E514();
  v27 = v26;

  sub_1D818CF98(v25, v27, 0, v23);
  [v23 addTarget:v1 action:sel_didTapTurnOn forControlEvents:64];

  v28 = [v1 buttonTray];
  [v28 addButton_];

  v29 = [v1 buttonTray];
  [v29 addButton_];
}

uint64_t sub_1D817BE60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewDidLayoutSubviews, v13);
  sub_1D817C12C();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v16 = sub_1D8191AB4();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D817CB44;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_90;
  v18 = _Block_copy(aBlock);

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7EBCD5C();
  sub_1D817CB4C(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v15, v8, v18);
  _Block_release(v18);

  (*(v5 + 8))(v8, v3);
  return (*(v11 + 8))(v15, v9);
}

void sub_1D817C12C()
{
  v1 = [v0 headerView];
  v7 = [v1 customIconContainerView];

  if (v7)
  {
    v2 = *&v0[OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_adPrivacyHeaderIconView];
    [v7 bounds];
    v3 = sub_1D7F78F2C();
    v5 = v4;
    [v7 bounds];
    v6 = CGRectGetMidX(v9) - v3 * 0.5;
    [v7 bounds];
    [v2 setFrame_];
  }
}

void sub_1D817C244()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, sel_customIconContainerView), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_adPrivacyHeaderIconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1D817C12C();
    }
  }
}

void sub_1D817C5AC()
{
  sub_1D7E0A1A8(0, &qword_1ECA12308);
  v1 = sub_1D817C64C(0xD000000000000020, 0x80000001D81D9D50);
  v2 = v1;
  if (v1)
  {
    [v1 setPresentingViewController_];
    v1 = v2;
  }

  [v1 present];
}

id sub_1D817C64C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1D8190EE4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() presenterForPrivacySplashWithIdentifier_];

  return v3;
}

uint64_t sub_1D817C758(void *a1)
{
  v2 = (v1 + *a1);
  if (*v2)
  {
    (*v2)(v1);
  }

  v3 = v1 + OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_onboardingFlowDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D817C85C()
{
  sub_1D817CB4C(0, &qword_1EDBAE428, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1D8191E14();
  v7 = sub_1D8191E04();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = [v0 tintColor];
    sub_1D8191D74();
  }

  sub_1D7F8CA00(v6, v3);
  sub_1D8191E24();
  return sub_1D7F8CA80(v6);
}

id sub_1D817C9C8(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TintingBoldTrayButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1D817CA54(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TintingBoldTrayButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1D817CAE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintingBoldTrayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D817CB4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D817CBB0()
{
  v0 = sub_1D818EC04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D818EBF4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v9[1] = 0x3FD6666666666666;
  sub_1D7E258C4();
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA12310 = result;
  return result;
}

uint64_t sub_1D817CD90()
{
  v0 = sub_1D818EBF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E258C4();
  v5[2] = 0;
  v5[3] = 0x3FD3333333333333;
  v5[1] = 0x3FF0000000000000;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D818EC44();
  qword_1ECA12318 = result;
  return result;
}

_BYTE *sub_1D817CEF4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *sub_1D817CFA4()
{
  ObjectType = swift_getObjectType();
  v33.origin.x = OUTLINED_FUNCTION_80();
  *(v0 + OBJC_IVAR____TtC5TeaUI15JSONTextToolbar_toolbar) = [objc_allocWithZone(MEMORY[0x1E69DD180]) initWithFrame_];
  v2 = OUTLINED_FUNCTION_80();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
  v6 = OBJC_IVAR____TtC5TeaUI15JSONTextToolbar_toolbar;
  v7 = *&v5[OBJC_IVAR____TtC5TeaUI15JSONTextToolbar_toolbar];
  v8 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = v8;
  v10 = *&v5[v6];
  v11 = v9;
  [v11 addSubview_];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  [v11 setAutoresizingMask_];
  v13 = objc_opt_self();
  sub_1D7E49240();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D81A7860;
  v15 = [*&v5[v6] leadingAnchor];
  v16 = OUTLINED_FUNCTION_2_170();

  v17 = [v16 leadingAnchor];
  v18 = OUTLINED_FUNCTION_0_256();

  *(v14 + 32) = v18;
  v19 = [*&v5[v6] trailingAnchor];
  v20 = OUTLINED_FUNCTION_2_170();

  v21 = [v20 trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_256();

  *(v14 + 40) = v22;
  v23 = [*&v5[v6] topAnchor];
  v24 = OUTLINED_FUNCTION_2_170();

  v25 = [v24 topAnchor];
  v26 = OUTLINED_FUNCTION_0_256();

  *(v14 + 48) = v26;
  v27 = [*&v5[v6] bottomAnchor];
  v28 = OUTLINED_FUNCTION_2_170();

  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor_];

  *(v14 + 56) = v30;
  sub_1D8026CF0();
  v31 = sub_1D8191304();

  [v13 activateConstraints_];

  return v11;
}

id sub_1D817D5DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for DebugDataSource();
  result = sub_1D818EFE4();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7E0631C(0, qword_1EDBBD630);
    result = sub_1D818EFF4();
    if (v6)
    {
      v4 = objc_allocWithZone(type metadata accessor for DebugViewController());
      return DebugViewController.init(dataSource:settingsPresentable:)(v3, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D817D708(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

BOOL static PageBlueprintChangeResult.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (!*a1)
  {
    return !v2;
  }

  return v2 > 1;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI25PageBlueprintChangeResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D817D7B4()
{
  result = type metadata accessor for PageBlueprint();
  if (v1 <= 0x3F)
  {
    result = sub_1D7E61D28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id PluginLayoutOptionsProvider.__allocating_init(blueprintLayoutOptionsProvider:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_14_4();

  return sub_1D817E194(v0, v1, v2, v3);
}

id PluginLayoutOptionsProvider.init(blueprintLayoutOptionsProvider:useWindowSizeViewportAdjustment:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_layoutOptionsCommit;
  sub_1D7E268D8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D7E5A594();
  swift_allocObject();
  *&v3[v8] = sub_1D818F144();
  v9 = &v3[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_blueprintLayoutOptionsProvider];
  *v9 = a1;
  v9[1] = a2;
  v3[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_useWindowSizeViewportAdjustment] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PluginLayoutOptionsProvider.__allocating_init(view:contentSizeCategoryProvider:layoutViewportConfiguration:)(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v7 = *a3;
  type metadata accessor for BlueprintLayoutOptionsProvider();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = BlueprintLayoutOptionsProvider.__allocating_init(view:contentSizeCategoryProvider:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(v8, a2, v14, 0, 0);
  swift_beginAccess();
  *(v9 + 40) = v7;
  v10 = objc_allocWithZone(v4);

  v12 = sub_1D817E1EC(v11, v10);

  swift_unknownObjectRelease();
  return v12;
}

id PluginLayoutOptionsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PluginLayoutOptionsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PluginLayoutOptionsProvider.layoutOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_1_183();
  (*(v1 + 8))(v5, v3, v1);
  sub_1D817DBC4(v5, a1);
  memcpy(__dst, v5, 0x235uLL);
  return sub_1D7E4C1A0(__dst);
}

uint64_t sub_1D817DBC4@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 8);
  v10 = *(a1 + 15);
  v12 = *(a1 + 16);
  v11 = *(a1 + 17);
  v14 = *(a1 + 18);
  v13 = *(a1 + 19);
  v15 = *(a1 + 224);
  v16 = *(a1 + 29);
  memcpy(__dst, a1 + 120, 0x7AuLL);
  v17 = *(v2 + OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_useWindowSizeViewportAdjustment);
  v29[0] = v15;
  *a2 = v5;
  v18 = *(a1 + 2);
  v19 = *(a1 + 3);
  if (v17)
  {
    v20 = *(a1 + 4);
  }

  else
  {
    v20 = v7;
  }

  *(a2 + 8) = v6;
  *(a2 + 16) = v20;
  *(a2 + 24) = v8;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a2 + 104) = *(a1 + 52);
  *(a2 + 120) = v10;
  *(a2 + 128) = v12;
  *(a2 + 136) = v11;
  *(a2 + 144) = v14;
  *(a2 + 152) = v13;
  v21 = *(a1 + 11);
  *(a2 + 160) = *(a1 + 10);
  *(a2 + 176) = v21;
  v22 = *(a1 + 13);
  *(a2 + 192) = *(a1 + 12);
  *(a2 + 208) = v22;
  *(a2 + 224) = v15;
  *(a2 + 232) = v16;
  memcpy((a2 + 240), a1 + 120, 0x7AuLL);
  v23 = *(a1 + 24);
  *(a2 + 368) = *(a1 + 23);
  *(a2 + 384) = v23;
  v24 = *(a1 + 26);
  *(a2 + 400) = *(a1 + 25);
  *(a2 + 416) = v24;
  memcpy((a2 + 432), a1 + 216, 0x85uLL);
  v25 = v12;
  v26 = v11;
  v27 = v13;
  return sub_1D7E22264(__dst, v29);
}

uint64_t PluginLayoutOptionsProvider.createLayoutOptions(bounds:safeAreaInsets:kind:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v20 = *a1;
  v21 = OUTLINED_FUNCTION_1_183();
  __dst[0] = v20;
  (*(v10 + 64))(v23, __dst, v21, v10, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_1D817DBC4(v23, a2);
  memcpy(__dst, v23, 0x235uLL);
  return sub_1D7E4C1A0(__dst);
}

double sub_1D817DEFC@<D0>(uint64_t a1@<X8>)
{
  PluginLayoutOptionsProvider.additionalSafeAreaInsets.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D817DF40(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1D80300E4(v6, v1, v2, v3, v4);
  return PluginLayoutOptionsProvider.additionalSafeAreaInsets.setter(&v6);
}

uint64_t PluginLayoutOptionsProvider.additionalSafeAreaInsets.setter(__int128 *a1)
{
  v3 = *(a1 + 32);
  v4 = OUTLINED_FUNCTION_0_257();
  v5 = *a1;
  v7[1] = a1[1];
  v7[0] = v5;
  v8 = v3;
  return (*(v1 + 48))(v7, v4, v1);
}

void (*PluginLayoutOptionsProvider.additionalSafeAreaInsets.modify(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v4;
  v4[5] = v1;
  v5 = OUTLINED_FUNCTION_1_183();
  (*(v2 + 40))(v5, v2);
  return sub_1D817E088;
}

void sub_1D817E088(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (a2)
  {
    sub_1D80300E4(v4, v5, v6, v7, v8);
    PluginLayoutOptionsProvider.additionalSafeAreaInsets.setter(&v9);
    sub_1D803010C(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    PluginLayoutOptionsProvider.additionalSafeAreaInsets.setter(&v9);
  }

  free(v3);
}

void (*sub_1D817E134(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PluginLayoutOptionsProvider.additionalSafeAreaInsets.modify(v2);
  return sub_1D7F4150C;
}

id sub_1D817E194(uint64_t a1, Class a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(a2);

  return sub_1D7E5A338(a1, v7, a3, a4);
}

id sub_1D817E1EC(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_layoutOptionsCommit;
  sub_1D7E268D8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D7E5A594();
  swift_allocObject();
  *&a2[v5] = sub_1D818F144();
  v6 = &a2[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_blueprintLayoutOptionsProvider];
  *v6 = a1;
  v6[1] = &protocol witness table for BlueprintLayoutOptionsProvider;
  a2[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_useWindowSizeViewportAdjustment] = 0;
  v8.receiver = a2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t BlueprintBookmark.hashValue.getter()
{
  sub_1D81927E4();
  BlueprintBookmark.hash(into:)();
  return sub_1D8192824();
}

uint64_t BlueprintBookmark.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  sub_1D7E1AF84(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  v11 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = (v17 - v16);
  sub_1D7E1AF84(0, &qword_1ECA12340, type metadata accessor for BlueprintBookmark, MEMORY[0x1E69D65D0]);
  OUTLINED_FUNCTION_9();
  v64 = v20;
  v65 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - v21;
  sub_1D7E2B108(v2, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D7E2A12C();
      v49 = (v18 + *(v48 + 48));
      v50 = *v49;
      v51 = v49[1];
      (*(v5 + 32))(v9, v18, v3);
      OUTLINED_FUNCTION_0_258();
      sub_1D7E1AF84(0, v52, v53, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v55 = OUTLINED_FUNCTION_7_87(inited, xmmword_1D819FAC0);
      v55[2].n128_u64[0] = v56;
      v55[2].n128_u64[1] = 0xE600000000000000;
      v55[4].n128_u64[1] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55[3]);
      (*(v5 + 16))(boxed_opaque_existential_0, v9, v3);
      inited[5].n128_u64[0] = 0x74657366666FLL;
      inited[5].n128_u64[1] = 0xE600000000000000;
      type metadata accessor for CGPoint();
      inited[7].n128_u64[1] = v58;
      inited[6].n128_u64[0] = v50;
      inited[6].n128_u64[1] = v51;
      OUTLINED_FUNCTION_8_68();
      sub_1D8190D94();
      sub_1D818F264();
      (*(v5 + 8))(v9, v3);
      break;
    case 2u:
      v34 = v18[2];
      v35 = v18[3];
      OUTLINED_FUNCTION_0_258();
      sub_1D7E1AF84(0, v36, v37, MEMORY[0x1E69E6F90]);
      v38 = swift_initStackObject();
      v39 = OUTLINED_FUNCTION_4_103(v38, xmmword_1D819FAC0);
      OUTLINED_FUNCTION_6_99(v39);
      v38[7].n128_u64[1] = v40;
      v38[6].n128_u64[0] = v34;
      v38[6].n128_u64[1] = v35;
      OUTLINED_FUNCTION_8_68();
      sub_1D8190D94();
      goto LABEL_10;
    case 3u:
      v41 = v18[2];
      v42 = v18[3];
      OUTLINED_FUNCTION_0_258();
      sub_1D7E1AF84(0, v43, v44, MEMORY[0x1E69E6F90]);
      v45 = swift_initStackObject();
      v46 = OUTLINED_FUNCTION_4_103(v45, xmmword_1D819FAC0);
      OUTLINED_FUNCTION_6_99(v46);
      v45[7].n128_u64[1] = v47;
      v45[6].n128_u64[0] = v41;
      v45[6].n128_u64[1] = v42;
      OUTLINED_FUNCTION_8_68();
      sub_1D8190D94();
      goto LABEL_10;
    case 4u:
      v30 = *v18;
      v29 = v18[1];
      OUTLINED_FUNCTION_0_258();
      sub_1D7E1AF84(0, v31, v32, MEMORY[0x1E69E6F90]);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1D819FAB0;
      *(v33 + 32) = 0x676E69727473;
      *(v33 + 40) = 0xE600000000000000;
      *(v33 + 72) = MEMORY[0x1E69E6158];
      *(v33 + 48) = v30;
      *(v33 + 56) = v29;
      sub_1D8190D94();
      goto LABEL_10;
    case 5u:
      sub_1D8190D94();
      goto LABEL_10;
    case 6u:
    case 7u:
      sub_1D8190D94();
LABEL_10:
      sub_1D818F264();
      break;
    default:
      sub_1D8013D78(v18, v14);
      OUTLINED_FUNCTION_0_258();
      sub_1D7E1AF84(0, v23, v24, MEMORY[0x1E69E6F90]);
      v25 = swift_initStackObject();
      v26 = OUTLINED_FUNCTION_7_87(v25, xmmword_1D819FAB0);
      v26[2].n128_u64[0] = v27;
      v26[2].n128_u64[1] = 0xE600000000000000;
      v26[4].n128_u64[1] = v11;
      v28 = __swift_allocate_boxed_opaque_existential_0(&v26[3]);
      sub_1D7E54838(v14, v28);
      OUTLINED_FUNCTION_8_68();
      sub_1D8190D94();
      sub_1D818F264();
      sub_1D7E73334(v14);
      break;
  }

  v60 = v65;
  v59 = v66;
  v61 = v64;
  v66[3] = v65;
  v59[4] = sub_1D817EA78();
  v62 = __swift_allocate_boxed_opaque_existential_0(v59);
  return (*(v61 + 32))(v62, v22, v60);
}

unint64_t sub_1D817EA78()
{
  result = qword_1ECA12348;
  if (!qword_1ECA12348)
  {
    sub_1D7E1AF84(255, &qword_1ECA12340, type metadata accessor for BlueprintBookmark, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12348);
  }

  return result;
}

uint64_t sub_1D817EB38(uint64_t a1)
{
  v2 = sub_1D7E2B7D0(&qword_1ECA12358);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t ItemBlueprintBookmarkApplicator.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ItemBlueprintBookmarkApplicator.init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(a1, a2, a3);
  return v6;
}

uint64_t ItemBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_48_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ItemBlueprintBookmarkApplicator.__deallocating_deinit()
{
  ItemBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

double ItemBlueprintBookmarkApplicator.prepare(bookmark:context:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ItemBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_171();
  v60 = v4;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15();
  v63 = v7 - v6;
  v67 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v65 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v64 = v11 - v10;
  OUTLINED_FUNCTION_2_171();
  v13 = *(v3 + 80);
  v74 = *(v12 + 104);
  v71 = v13;
  v81 = OUTLINED_FUNCTION_6_100();
  v82 = OUTLINED_FUNCTION_6_100();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = swift_getAssociatedConformanceWitness();
  v70 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v75 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v60 - v16;
  v17 = type metadata accessor for BlueprintItem();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v61 = v19;
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v60 - v20;
  v73 = v17;
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v60 - v22;
  v23 = type metadata accessor for BlueprintBookmark();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_2_171();
  v27 = *(v3 + 88);
  OUTLINED_FUNCTION_2_171();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v27, *(v28 + 112));
  v29 = OUTLINED_FUNCTION_5_94();
  v30 = OUTLINED_FUNCTION_5_94();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v77 = v29;
  v78 = v30;
  v79 = v31;
  v80 = v32;
  v33 = type metadata accessor for BlueprintLayout();
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1D8191874();
  result = (*(*(v33 - 8) + 8))(&v81, v33);
  if ((v3 & 1) == 0)
  {
    sub_1D7E2B108(v76, v26);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v43 = type metadata accessor for BlueprintBookmark;
      v44 = v26;
      return sub_1D817F4D4(v44, v43);
    }

    v35 = *(v26 + 16);
    v76 = *(*v2 + 128);
    v36 = v69;
    v37 = v71;
    BlueprintProviderType.blueprint.getter(v71, v74);
    v38 = v68;
    v39 = v70;
    Blueprint.item(for:)();

    v40 = v75 + 8;
    v41 = *(v75 + 8);
    v41(v36, v39);
    v42 = v73;
    if (__swift_getEnumTagSinglePayload(v38, 1, v73) == 1)
    {
      return (*(v61 + 8))(v38, v62);
    }

    v45 = v66;
    (*(v72 + 32))(v66, v38, v42);
    v75 = v40;
    BlueprintProviderType.blueprint.getter(v37, v74);
    v46 = v63;
    Blueprint.indexPath(forItem:)();
    v41(v36, v39);
    v47 = v67;
    if (__swift_getEnumTagSinglePayload(v46, 1, v67) == 1)
    {
      (*(v72 + 8))(v45, v42);
      v43 = sub_1D7E3D564;
      v44 = v46;
      return sub_1D817F4D4(v44, v43);
    }

    (*(v65 + 32))(v64, v46, v47);
    v48 = *(v2 + *(*v2 + 144));
    v49 = *(v60 + 120);
    v50 = *(v60 + 96);
    v75 = *(v49 + 56);
    v76 = v48;
    v51 = (v75)(v50, v49);
    swift_getAssociatedTypeWitness();
    v52 = swift_getAssociatedConformanceWitness();
    v53 = *(v52 + 88);
    v54 = v64;
    v55 = swift_checkMetadataState();
    v53(&v81, v54, v55, v52);

    if ((v85 & 1) == 0)
    {
      v56 = sub_1D80B8A94(v2, *&v81, *&v82, *&AssociatedConformanceWitness, *&v84, v35);
      v58 = v57;
      v59 = (v75)(v50, v49);
      [v59 setContentOffset_];
    }

    (*(v65 + 8))(v54, v67);
    return (*(v72 + 8))(v66, v73);
  }

  return result;
}

uint64_t sub_1D817F4D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D817F59C()
{
  v1 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D817F5E0(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_1D817F640(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

void sub_1D817F6A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D817F714(v1);
}

id sub_1D817F6D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView) image];

  return v1;
}

void sub_1D817F714(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView) setImage_];
}

void (*sub_1D817F764(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_1D817F7C8;
}

void sub_1D817F7C8(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_];
}

id sub_1D817F8CC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability] = 0x4020000000000000;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ScalableImageView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D817FAC8();

  return v10;
}

char *ScalableImageView.init(image:)(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability] = 0x4020000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScalableImageView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = *&v4[OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView];
  v6 = v4;
  [v5 setImage_];
  sub_1D817FAC8();

  return v6;
}

id sub_1D817FAC8()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView];
  v2 = [v1 layer];
  [v2 setAnchorPoint_];

  return [v0 addSubview_];
}

void sub_1D817FB4C()
{
  v1 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability) = 0x4020000000000000;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D817FBFC()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ScalableImageView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI17ScalableImageView_imageView];
  v2 = OBJC_IVAR____TtC5TeaUI17ScalableImageView_scalability;
  swift_beginAccess();
  CGAffineTransformMakeScale(&v5, 1.0 / *&v0[v2], 1.0 / *&v0[v2]);
  [v1 setTransform_];
  OUTLINED_FUNCTION_0_259();
  OUTLINED_FUNCTION_0_259();
  [v1 bounds];
  [v1 setBounds_];
  v3 = [v1 layer];
  OUTLINED_FUNCTION_0_259();
  MidX = CGRectGetMidX(v7);
  OUTLINED_FUNCTION_0_259();
  [v3 setPosition_];
}

id ScalableImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScalableImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FadeOutNavigationBarCompressionAnimation.__allocating_init(navigationBar:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5TeaUI40FadeOutNavigationBarCompressionAnimation_navigationBar] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FadeOutNavigationBarCompressionAnimation.init(navigationBar:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI40FadeOutNavigationBarCompressionAnimation_navigationBar] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

double FadeOutNavigationBarCompressionAnimation.maximumBarHeight(for:)()
{
  [*(v0 + OBJC_IVAR____TtC5TeaUI40FadeOutNavigationBarCompressionAnimation_navigationBar) bounds];

  return CGRectGetHeight(*&v1);
}

id FadeOutNavigationBarCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FadeOutNavigationBarCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8180248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_0_13();
  (*(v7 + 32))(a5, a1);
  v8 = type metadata accessor for SwipeActionMenuContext();
  v9 = v8[21];
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(a5 + v9, a2);
  memcpy((a5 + v8[22]), a3, 0x260uLL);
  return sub_1D7E05450(a4, a5 + v8[23]);
}

uint64_t SwipeActionMenuContext.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D818E994();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SwipeActionMenuContext.blueprint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_13();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t SwipeActionMenuContext.layoutBlueprint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 88);
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for BlueprintLayout();
  OUTLINED_FUNCTION_0_13();
  return (*(v5 + 16))(a2, v2 + v4);
}

id DebugWindow.__allocating_init(windowScene:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithWindowScene_];

  return v1;
}

TeaUI::DebugWindowActivation_optional __swiftcall DebugWindowActivation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugWindowActivation.rawValue.getter()
{
  v1 = 0x616853724F706174;
  if (*v0 != 1)
  {
    v1 = 0x656B616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7364980;
  }
}

uint64_t sub_1D8180664@<X0>(uint64_t *a1@<X8>)
{
  result = DebugWindowActivation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D818068C(uint64_t a1)
{
  v2 = sub_1D7F02D90();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D81806E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7F02D90();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D818073C(uint64_t a1)
{
  v2 = sub_1D7F02D90();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D8180790@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___TUDebugWindow_debugDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D81807EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___TUDebugWindow_debugDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*DebugWindow.debugDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___TUDebugWindow_debugDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

uint64_t DebugWindow.observableRootViewController.getter()
{

  sub_1D818F534();

  return v1;
}

uint64_t sub_1D8180978(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return DebugWindow.observableRootViewController.setter(v1);
}

void (*DebugWindow.observableRootViewController.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + OBJC_IVAR___TUDebugWindow__observableRootViewController);

  v3[5] = sub_1D818F524();
  return sub_1D7FED5F4;
}

uint64_t DebugWindow.$observableRootViewController.getter()
{

  sub_1D818F554();
  OUTLINED_FUNCTION_16_1();

  return v0;
}

uint64_t sub_1D8180A60()
{
  swift_getObjectType();
  sub_1D818EEE4();
  if ((sub_1D818EEC4() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ECA0C2E0 != -1)
  {
    swift_once();
  }

  sub_1D81818E0();
  sub_1D818EA44();
  return v1;
}

id DebugWindow.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id DebugWindow.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  OUTLINED_FUNCTION_10_5(OBJC_IVAR___TUDebugWindow_debugDelegate);
  *(v0 + OBJC_IVAR___TUDebugWindow_isAllowed) = 0;
  *(v0 + OBJC_IVAR___TUDebugWindow_isPresenting) = 0;
  v1 = OBJC_IVAR___TUDebugWindow__observableRootViewController;
  sub_1D7E19330();
  swift_allocObject();
  *(v0 + v1) = sub_1D818F514();
  v2 = OUTLINED_FUNCTION_80();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  sub_1D7E19560();

  return v5;
}

id DebugWindow.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

id DebugWindow.init(coder:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_10_5(OBJC_IVAR___TUDebugWindow_debugDelegate);
  v1[OBJC_IVAR___TUDebugWindow_isAllowed] = 0;
  v1[OBJC_IVAR___TUDebugWindow_isPresenting] = 0;
  v3 = OBJC_IVAR___TUDebugWindow__observableRootViewController;
  v7 = 0;
  sub_1D7E19330();
  swift_allocObject();
  *&v1[v3] = sub_1D818F514();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, v0);

  if (v4)
  {
  }

  return v4;
}

Swift::Void __swiftcall DebugWindow.sendEvent(_:)(UIEvent a1)
{
  OUTLINED_FUNCTION_16_1();
  v3.receiver = v2;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_sendEvent_);
  if (![v1 type])
  {
    sub_1D7E0A1A8(0, &qword_1EDBBC788);
    static UIWindow.keyWindowScene.setter([v2 windowScene]);
  }
}

Swift::Void __swiftcall DebugWindow.motionBegan(_:with:)(UIEventSubtype _, UIEvent_optional with)
{
  v3 = v2;
  isa = with.value.super.isa;
  ObjectType = swift_getObjectType();
  if (_ == UIEventSubtypeMotionShake)
  {
    if (qword_1ECA0C300 != -1)
    {
      swift_once();
    }

    sub_1D81818E0();
    sub_1D818EA44();
    if (aBlock[0])
    {
      if ((sub_1D8180A60() & 1) != 0 && *(v2 + OBJC_IVAR___TUDebugWindow_isAllowed) == 1 && (*(v2 + OBJC_IVAR___TUDebugWindow_isPresenting) & 1) == 0)
      {
        v23.receiver = v2;
        v23.super_class = ObjectType;
        v7 = objc_msgSendSuper2(&v23, sel_rootViewController);
        if (v7)
        {
          v8 = v7;
          v9 = sub_1D8181580(v7);
          if (v9)
          {
            v10 = v9;
            OUTLINED_FUNCTION_4_104();
            if (!swift_unknownObjectWeakLoadStrong())
            {

              goto LABEL_16;
            }

            v11 = v2[1];
            v12 = swift_getObjectType();
            v13 = (*(v11 + 8))(v2, v12, v11);
            swift_unknownObjectRelease();
            [v13 setModalInPresentation_];
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_8_69();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v15 = Strong;
              *(Strong + OBJC_IVAR___TUDebugWindow_isPresenting) = 1;
              OUTLINED_FUNCTION_0_8();
              *(swift_allocObject() + 16) = v15;
              OUTLINED_FUNCTION_0_260();
              OUTLINED_FUNCTION_1_184();
              v20 = v16;
              v21 = &block_descriptor_92;
              v17 = _Block_copy(aBlock);
              v18 = v15;

              [v10 presentViewController:v13 animated:1 completion:v17];

              _Block_release(v17);
              MEMORY[0x1DA715E30](v22);
              goto LABEL_16;
            }

            MEMORY[0x1DA715E30](v22);
          }
        }
      }
    }
  }

LABEL_16:
  v24.receiver = v3;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_motionBegan_withEvent_, _, isa);
}

Swift::Void __swiftcall DebugWindow.presentDebugMenu()()
{
  ObjectType = swift_getObjectType();
  if ((sub_1D8180A60() & 1) != 0 && *(v0 + OBJC_IVAR___TUDebugWindow_isAllowed) == 1 && (*(v0 + OBJC_IVAR___TUDebugWindow_isPresenting) & 1) == 0)
  {
    v19.receiver = v0;
    v19.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v19, sel_rootViewController);
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D8181580(v2);
      if (v4)
      {
        v5 = v4;
        OUTLINED_FUNCTION_4_104();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v6 = v0[1];
          v7 = swift_getObjectType();
          v8 = (*(v6 + 8))(v0, v7, v6);
          swift_unknownObjectRelease();
          [v8 setModalInPresentation_];
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_8_69();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v10 = Strong;
            v11 = v5;
            *(Strong + OBJC_IVAR___TUDebugWindow_isPresenting) = 1;
            OUTLINED_FUNCTION_0_8();
            *(swift_allocObject() + 16) = v10;
            OUTLINED_FUNCTION_0_260();
            OUTLINED_FUNCTION_1_184();
            v16 = v12;
            v17 = &block_descriptor_7_0;
            v13 = _Block_copy(aBlock);
            v14 = v10;

            [v5 presentViewController:v8 animated:1 completion:v13];

            _Block_release(v13);
            v5 = v14;
            v3 = v8;
          }

          else
          {
            v11 = v8;
          }

          MEMORY[0x1DA715E30](v18);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

void (*DebugWindow.rootViewController.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v3[4].receiver = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  v3[3].receiver = [(objc_super *)v3 rootViewController];
  return sub_1D818140C;
}

void sub_1D818140C(objc_super **a1, char a2)
{
  v3 = *a1;
  receiver = (*a1)[3].receiver;
  v5 = receiver;
  v6 = v5;
  super_class = v3[3].super_class;
  v8 = v3[4].receiver;
  if (a2)
  {
    v9 = v5;
    DebugWindow.observableRootViewController.setter(receiver);
    v3[1].receiver = super_class;
    v3[1].super_class = v8;
    objc_msgSendSuper2(v3 + 1, sel_setRootViewController_, v9);

    v6 = v3[3].receiver;
  }

  else
  {
    DebugWindow.observableRootViewController.setter(receiver);
    v3[2].receiver = super_class;
    v3[2].super_class = v8;
    objc_msgSendSuper2(v3 + 2, sel_setRootViewController_, v6);
  }

  free(v3);
}

id DebugWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D8181580(void *a1)
{
  type metadata accessor for DebugNavigationController();
  v2 = [a1 isKindOfClass_];
  result = 0;
  if ((v2 & 1) == 0)
  {
    v4 = [a1 presentedViewController];
    if (v4)
    {
      v5 = v4;
      a1 = sub_1D8181580();
    }

    else
    {
      v6 = a1;
    }

    return a1;
  }

  return result;
}

void sub_1D8181604()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  if (qword_1ECA0C300 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DebugWindow();
  sub_1D81818E0();
  sub_1D818EA44();
  if (LOBYTE(v16[0]) == 2 || (sub_1D8180A60() & 1) == 0 || (v1[OBJC_IVAR___TUDebugWindow_isAllowed] & 1) == 0 || (v1[OBJC_IVAR___TUDebugWindow_isPresenting] & 1) != 0 || (v18.receiver = v1, v18.super_class = v2, (v3 = objc_msgSendSuper2(&v18, sel_rootViewController)) == 0))
  {
LABEL_15:

    return;
  }

  v4 = v3;
  v5 = sub_1D8181580(v3);
  if (!v5)
  {

    goto LABEL_15;
  }

  v6 = v5;
  v7 = &v1[OBJC_IVAR___TUDebugWindow_debugDelegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_15;
  }

  v8 = *(v7 + 1);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 8))(v1, ObjectType, v8);
  swift_unknownObjectRelease();
  [v10 setModalInPresentation_];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    *(v11 + OBJC_IVAR___TUDebugWindow_isPresenting) = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v16[4] = sub_1D8181AA8;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D7E64940;
    v16[3] = &block_descriptor_27_3;
    v14 = _Block_copy(v16);
    v15 = v12;

    [v6 presentViewController:v10 animated:1 completion:v14];

    _Block_release(v14);
  }

  else
  {

    v15 = v10;
    v1 = v6;
    v10 = v4;
  }

  MEMORY[0x1DA715E30](v17);
}

unint64_t sub_1D81818E0()
{
  result = qword_1ECA12398;
  if (!qword_1ECA12398)
  {
    type metadata accessor for DebugWindow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12398);
  }

  return result;
}

unint64_t sub_1D8181948()
{
  result = qword_1ECA123A0;
  if (!qword_1ECA123A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA123A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugWindowActivation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of BlueprintLayoutBuilderType.layout(blueprint:layoutOptions:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 72) + **(a6 + 72));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D7FF3204;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_1D8181C94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7E36AB8(a2);
  for (i = 0; v3 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 identifier];
      v9 = sub_1D8190F14();
      v11 = v10;
      if (v9 == sub_1D8190F14() && v11 == v12)
      {

        return;
      }

      v14 = sub_1D8192634();

      if (v14)
      {
        return;
      }
    }

    else
    {
    }
  }
}

id MenuManager.init(_:)(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI11MenuManager_menuItems;
  *&v1[v4] = OUTLINED_FUNCTION_2_172();
  v5 = OBJC_IVAR____TtC5TeaUI11MenuManager_alternateMenuItems;
  *&v1[v5] = OUTLINED_FUNCTION_2_172();
  v6 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedMenuActions;
  sub_1D7E31228();
  v9 = *a1;
  *&v1[v6] = OUTLINED_FUNCTION_2_172();
  v7 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedAlternateMenuActions;
  *&v1[v7] = OUTLINED_FUNCTION_2_172();
  *&v1[OBJC_IVAR____TtC5TeaUI11MenuManager_menu] = v9;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void MenuManager.buildMenu(with:)(void *a1)
{
  v2 = v1;
  sub_1D7E0A1A8(0, &unk_1EDBB3248);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = sub_1D8191CC4();

  if (v6)
  {
    v7 = 0;
    v8 = v2 + OBJC_IVAR____TtC5TeaUI11MenuManager_menu;
    v9 = *(v2 + OBJC_IVAR____TtC5TeaUI11MenuManager_menu);
    v10 = *(v9 + 16);
    while (v10 != v7)
    {
      if (v7 >= *(v9 + 16))
      {
        __break(1u);
        return;
      }

      v11 = v7 + 1;
      [a1 removeMenuForIdentifier_];
      v7 = v11;
    }

    v12 = *(v8 + 8);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *MEMORY[0x1E69DE190];
      v15 = v12 + 32;
      do
      {
        sub_1D7F0B324(v15, v20);
        v16 = 2;
        v17 = 2;
        sub_1D818209C(v20, a1, v14, &v16, &v18);
        sub_1D7F0C9E0(v18, v19);
        sub_1D7F0B35C(v20);
        v15 += 80;
        --v13;
      }

      while (v13);
    }
  }
}

void sub_1D818209C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v10 = *a4;
  v11 = *(a4 + 8);
  sub_1D7F0B324(a1, &v50);
  switch(v59)
  {
    case 1:
      v33 = v53;
      v34 = v11;
      v35 = v54;
      v44 = v53;
      LOBYTE(v42) = BYTE1(v54);
      v45 = v54;
      v46 = v10;
      v47 = v34;
      sub_1D8183308(v52, *(&v52 + 1), 0, 0, &v44, &v42, a5, v55, a2, a3, &v46);

      v21 = v33;
      v22 = v35;
      goto LABEL_9;
    case 2:
      v18 = a3;
      v19 = v55;
      v20 = v56;
      v44 = v55;
      v45 = v56;
      LOBYTE(v42) = v57;
      v46 = v10;
      v47 = v11;
      sub_1D8183308(v52, *(&v52 + 1), v53, v54, &v44, &v42, a5, v58, a2, v18, &v46);

      v21 = v19;
      v22 = v20;
LABEL_9:
      sub_1D7F0C9E0(v21, v22);
      return;
    case 3:

      sub_1D7E05450(&v52, &v46);
      v23 = v48;
      v24 = v49;
      __swift_project_boxed_opaque_existential_1(&v46, v48);
      v25 = (*(v24 + 8))(v23, v24);

      v26 = v48;
      v27 = v49;
      __swift_project_boxed_opaque_existential_1(&v46, v48);
      v28 = (*(v27 + 8))(v26, v27);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = a2;
      swift_unknownObjectRetain();

      v31 = v48;
      v32 = v49;
      __swift_project_boxed_opaque_existential_1(&v46, v48);
      (*(v32 + 16))(&v44, v31, v32);
      v42 = v10;
      v43 = v11;
      sub_1D818209C(&v44, a2, a3, &v42);
      sub_1D7F0B35C(&v44);
      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      return;
    default:
      v12 = 0;
      v14 = v50;
      v13 = v51;
      v15 = v52;
      v16 = *(v51 + 16);
      break;
  }

  while (v16 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    v17 = v12 + 1;
    [a2 removeMenuForIdentifier_];
    v12 = v17;
  }

  v36 = *(v15 + 16);
  v37 = v15 + 32;
  v38 = v6;
  swift_unknownObjectRetain();
  v39 = v14;
  v40 = 2;
  for (i = 2; v36; --v36)
  {
    v46 = v40;
    v47 = i;
    sub_1D8025AD4(v40, i);
    sub_1D818209C(v37, a2, v39, &v46);
    sub_1D7F0C9E0(v46, v47);
    sub_1D7F0C9E0(v40, i);
    v40 = v44;
    i = v45;
    v37 += 80;
  }

  swift_unknownObjectRelease();
  *a5 = v40;
  *(a5 + 8) = i;
}

void MenuManager.validate(_:with:tracker:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (!sub_1D8182830(a1))
  {
    goto LABEL_14;
  }

  sub_1D81828E8(a1);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_55_0();
    v10(v9);
    v11 = sub_1D8190EE4();

    [a1 setTitle_];

    v12 = OUTLINED_FUNCTION_55_0();
    v13(v12);
    sub_1D7E0A1A8(0, &qword_1EDBB2F60);
    v14 = sub_1D7E47238();
    [a1 setImage_];

    v15 = OUTLINED_FUNCTION_55_0();
    [a1 setState_];
    v17 = OUTLINED_FUNCTION_55_0();
    if (v18(v17))
    {
      v19 = OUTLINED_FUNCTION_55_0();
      v20(v19);
      [a1 setAttributes_];
    }

    else
    {
      [a1 setAttributes_];
    }

    [a1 action];
    if (sub_1D818E9A4())
    {
      sub_1D7E0E768(a4, v46);
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_5_95(v22, v23, v24, v25, v26, v27, v28, v29, v40, v41, v43, v44, v45, v46[0]);
      v30 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedMenuActions;
      OUTLINED_FUNCTION_8_70();

      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v5 + v30);
LABEL_13:
      sub_1D7EF6AF0();
      *(v5 + v30) = v42;

      swift_endAccess();

LABEL_14:
      OUTLINED_FUNCTION_80_0();
      return;
    }

    [a1 action];
    if (sub_1D818E9A4())
    {
      sub_1D7E0E768(a4, v46);
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_5_95(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v43, v44, v45, v46[0]);
      v30 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedAlternateMenuActions;
      OUTLINED_FUNCTION_8_70();

      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v5 + v30);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_80_0();
  }

  else
  {
    OUTLINED_FUNCTION_80_0();
  }
}

uint64_t sub_1D8182830(void *a1)
{
  v3 = sub_1D81828E8(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  [a1 action];
  if (sub_1D818E9A4())
  {
    v7 = OBJC_IVAR____TtC5TeaUI11MenuManager_alternateMenuItems;
  }

  else
  {
    v7 = OBJC_IVAR____TtC5TeaUI11MenuManager_menuItems;
  }

  swift_beginAccess();
  v8 = sub_1D7E886F4(v5, v6, *(v1 + v7));
  swift_endAccess();

  return v8;
}

uint64_t sub_1D81828E8(void *a1)
{
  if ([a1 propertyList])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4 = v2;
  v5 = v3;
  if (!*(&v3 + 1))
  {
    goto LABEL_11;
  }

  sub_1D804DF58(0, &qword_1ECA0FC20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D7EDF26C();

  if (!*(&v5 + 1))
  {
LABEL_11:
    sub_1D7E7BAAC(&v4);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8182A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 112);
  v8 = type metadata accessor for CommandExecutionSource();
  v21 = 5;
  sub_1D7E0E768(a4, v18);
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  v9 = v19;
  v10 = v20;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D810E784(&v21, v14, 0, v22, 0, 0, 0, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v7(a2, a3, v16);
}

void MenuManager.handleMenuCommand(sender:)(uint64_t a1)
{
  sub_1D7E1B288(a1, &v28);
  sub_1D7E0A1A8(0, &unk_1EDBB2EE8);
  if (!swift_dynamicCast())
  {
    if (qword_1EDBBCFC0 != -1)
    {
      OUTLINED_FUNCTION_1_113();
    }

    v8 = sub_1D81919C4();
    OUTLINED_FUNCTION_0_261(v8, &qword_1EDBBE100);
    v9 = OUTLINED_FUNCTION_174();
    *(v9 + 16) = xmmword_1D819FAB0;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1D8192334();
    v10 = v28;
    v11 = v29;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D7E13BF4();
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    OUTLINED_FUNCTION_3_145();
    goto LABEL_20;
  }

  v2 = sub_1D81828E8(v27);
  if (!v3)
  {
    if (qword_1EDBBCFC0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v4 = v2;
  v5 = v3;
  [v27 action];
  if (sub_1D818E9A4())
  {
    v6 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedMenuActions;
    OUTLINED_FUNCTION_9_58();
    v7 = sub_1D7EDF770(v4, v5, *(v1 + v6));
    if (!v7)
    {
      swift_endAccess();

      if (qword_1EDBBCFC0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

LABEL_14:
    v13 = v7;
    swift_endAccess();

    v13(v14);

    sub_1D7E0E10C(v13);
    return;
  }

  [v27 action];
  if (sub_1D818E9A4())
  {
    v12 = OBJC_IVAR____TtC5TeaUI11MenuManager_stagedAlternateMenuActions;
    OUTLINED_FUNCTION_9_58();
    v7 = sub_1D7EDF770(v4, v5, *(v1 + v12));
    if (v7)
    {
      goto LABEL_14;
    }

    swift_endAccess();

    if (qword_1EDBBCFC0 == -1)
    {
LABEL_19:
      v21 = sub_1D81919C4();
      OUTLINED_FUNCTION_0_261(v21, &qword_1EDBBE100);
      v22 = OUTLINED_FUNCTION_174();
      *(v22 + 16) = xmmword_1D819FAB0;
      v23 = [v27 description];
      v24 = sub_1D8190F14();
      v26 = v25;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1D7E13BF4();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      OUTLINED_FUNCTION_3_145();

LABEL_20:

      return;
    }

LABEL_21:
    OUTLINED_FUNCTION_1_113();
    goto LABEL_19;
  }

  if (qword_1EDBBCFC0 != -1)
  {
    OUTLINED_FUNCTION_1_113();
  }

  v15 = sub_1D81919C4();
  OUTLINED_FUNCTION_0_261(v15, &qword_1EDBBE100);
  v16 = OUTLINED_FUNCTION_174();
  *(v16 + 16) = xmmword_1D819FAB0;
  v17 = [v27 description];
  v18 = sub_1D8190F14();
  v20 = v19;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D7E13BF4();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  OUTLINED_FUNCTION_3_145();
}

uint64_t sub_1D8183070(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1D8191F34();
  swift_unknownObjectRelease();
  a4(v8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t MenuManager.canPerformAction(_:withSender:)()
{
  if (sub_1D818E9A4())
  {
    return 1;
  }

  return sub_1D818E9A4();
}

id MenuManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MenuManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8183308(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v12 = a10;
  v44 = *a5;
  v13 = *(a5 + 8);
  v14 = *a6;
  v15 = *a11;
  v16 = *(a11 + 8);
  v17 = [a9 menuForIdentifier_];
  if (v17)
  {
    if ((*(a8 + 16) != 0) | v14 & 1)
    {
      v41 = v15;
      v42 = v17;
      v43 = a7;
      v18 = sub_1D8190F14();
      v20 = v19;
      v22 = v18 == sub_1D8190F14() && v20 == v21;
      if (v22)
      {
      }

      else
      {
        v23 = sub_1D8192634();

        if ((v23 & 1) == 0)
        {
LABEL_15:
          v24 = sub_1D8190EE4();
          v49 = v14;
          v25 = sub_1D81837C8(v24, a1, a2, a3, a4, &v49, a8, a9);

          v26 = v41;
          if (v13)
          {
            v22 = v13 == 1;
            v27 = v42;
            if (v22)
            {
              v28 = [v42 children];
              sub_1D7E0A1A8(0, &qword_1EDBB3208);
              v29 = sub_1D8191314();

              v26 = v44;
              goto LABEL_19;
            }

            if (v44)
            {
              v32 = &selRef_insertChildMenu_atStartOfMenuForIdentifier_;
              v37 = v44 == 1;
LABEL_26:
              if (!v37)
              {
                v32 = &selRef_insertChildMenu_atEndOfMenuForIdentifier_;
              }

              goto LABEL_28;
            }

            if (v16)
            {
              if (v16 != 1)
              {
                if (!v41)
                {
                  goto LABEL_29;
                }

                v32 = &selRef_insertChildMenu_atStartOfMenuForIdentifier_;
                v37 = v41 == 1;
                goto LABEL_26;
              }

              v39 = [v42 children];
              sub_1D7E0A1A8(0, &qword_1EDBB3208);
              v29 = sub_1D8191314();

LABEL_19:
              v12 = v26;
              sub_1D8181C94(v12, v29);
              v31 = v30;
              sub_1D7F0C9E0(v26, 1u);

              if (v31)
              {
                v32 = &selRef_insertSiblingMenu_afterMenuForIdentifier_;
LABEL_28:
                [a9 *v32];
                goto LABEL_29;
              }

              goto LABEL_29;
            }

            v40 = [v42 children];
            sub_1D7E0A1A8(0, &qword_1EDBB3208);
            v34 = sub_1D8191314();
          }

          else
          {
            v27 = v42;
            v33 = [v42 children];
            sub_1D7E0A1A8(0, &qword_1EDBB3208);
            v34 = sub_1D8191314();

            v26 = v44;
          }

          v12 = v26;
          sub_1D8181C94(v12, v34);
          v36 = v35;
          sub_1D7F0C9E0(v26, 0);

          if (v36)
          {
            v32 = &selRef_insertSiblingMenu_beforeMenuForIdentifier_;
            goto LABEL_28;
          }

LABEL_29:
          v38 = [v25 identifier];

          *v43 = v38;
          *(v43 + 8) = 1;
          return;
        }
      }

      v14 = 1;
      goto LABEL_15;
    }
  }

  *a7 = v15;
  *(a7 + 8) = v16;

  sub_1D8025AD4(v15, v16);
}

void sub_1D81836FC(void *a1)
{
  if (qword_1EDBBCFC0 != -1)
  {
    swift_once();
  }

  sub_1D81919E4();
  sub_1D818FD44();
  v2 = [a1 system];
  [v2 setNeedsRebuild];
}

uint64_t sub_1D81837C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = MEMORY[0x1E69E7CC0];
  v8 = *(a7 + 16);
  if (v8)
  {
    v10 = a7 + 32;
    do
    {
      sub_1D7E0E768(v10, v19);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v12 + 8))(v18, v11, v12);
      v13 = sub_1D81839AC(v18, a8);
      sub_1D818453C(v18);
      v14 = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      if (v13)
      {
        MEMORY[0x1DA713500](v14);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
      }

      v10 += 40;
      --v8;
    }

    while (v8);
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  sub_1D8190DB4();
  sub_1D7E47238();
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  sub_1D8190DB4();
  v15 = a1;
  return sub_1D8191C44();
}

uint64_t sub_1D81839AC(uint64_t a1, uint64_t a2)
{
  sub_1D7FAE394(a1, __src);
  switch(v30)
  {
    case 1:
      sub_1D7E05450(__src, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);

      v17 = v27;
      v18 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v19 = (*(v18 + 8))(v17, v18);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = a2;
      swift_unknownObjectRetain();

      v22 = v27;
      v23 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v23 + 16))(__dst, v22, v23);
      v3 = sub_1D81839AC(__dst, a2);
      sub_1D818453C(__dst);
      goto LABEL_6;
    case 2:
      memcpy(__dst, __src, 0x49uLL);
      v3 = sub_1D8183E1C(__dst, a2);
      sub_1D7F0B35C(__dst);
      break;
    case 3:
      sub_1D7E05450(__src, v26);
      v4 = v27;
      v5 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v6 = (*(v5 + 8))(v4, v5);

      v7 = v27;
      v8 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v9 = (*(v8 + 8))(v7, v8);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = a2;
      swift_unknownObjectRetain();

      v12 = v27;
      v13 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v13 + 16))(__dst, v12, v13);
      v3 = sub_1D8183E1C(__dst, a2);
      sub_1D7F0B35C(__dst);
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      break;
    default:
      v3 = sub_1D8183CFC(*__src);

      break;
  }

  return v3;
}

uint64_t sub_1D8183CFC(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI11MenuManager_menuItems;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  sub_1D7EF6C24();
  *(v1 + v3) = v6;
  swift_endAccess();
  if (a1[26])
  {
    v4 = OBJC_IVAR____TtC5TeaUI11MenuManager_alternateMenuItems;
    swift_beginAccess();
    swift_retain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + v4);
    sub_1D7EF6C24();
    *(v1 + v4) = v7;
    swift_endAccess();
  }

  return sub_1D8184108(a1);
}

uint64_t sub_1D8183E1C(uint64_t a1, uint64_t a2)
{
  sub_1D7F0B324(a1, &v29);
  switch(v37)
  {
    case 1:
      v20 = v30;
      v21 = BYTE1(v32);
      v22 = v33;
      sub_1D7F0C9E0(v31, v32);
      v23 = sub_1D8190EE4();

      LOBYTE(v25[0]) = v21;
      v3 = sub_1D81837C8(v23, v20, *(&v20 + 1), 0, 0, v25, v22, a2);

      break;
    case 2:
      v4 = v30;
      v5 = v31;
      v6 = v32;
      v7 = v35;
      v8 = v36;
      sub_1D7F0C9E0(v33, v34);
      v9 = sub_1D8190EE4();

      LOBYTE(v25[0]) = v7;
      v3 = sub_1D81837C8(v9, v4, *(&v4 + 1), v5, v6, v25, v8, a2);

      break;
    case 3:

      sub_1D7E05450(&v30, v26);
      v10 = v27;
      v11 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v12 = (*(v11 + 8))(v10, v11);

      v13 = v27;
      v14 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v15 = (*(v14 + 8))(v13, v14);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a2;
      swift_unknownObjectRetain();

      v18 = v27;
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v19 + 16))(v25, v18, v19);
      v3 = sub_1D8183E1C(v25, a2);
      sub_1D7F0B35C(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      break;
    default:
      sub_1D7F0B35C(&v29);
      v3 = 0;
      break;
  }

  return v3;
}

uint64_t sub_1D8184108(void *a1)
{
  sub_1D7E13818(0, &qword_1EDBB2C58, sub_1D7EE5958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001D81D0D20;
  v3 = a1[3];
  *(inited + 48) = a1[2];
  *(inited + 56) = v3;
  sub_1D8190DB4();
  sub_1D8190D94();
  if (a1[11])
  {
    sub_1D804DF58(0, &qword_1EDBB3460);
    v4 = a1[26];
    if (v4)
    {
      sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D81A50A0;
      if (*(v4 + 104))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v4 + 96);
      }

      sub_1D7E0A1A8(0, &unk_1EDBB3120);
      sub_1D8190DB4();

      *(v5 + 32) = sub_1D8184408(0, 0xE000000000000000, sel_handleAlternateMenuCommandWithSender_, v6);
    }

    else
    {
      sub_1D8190DB4();
    }

    sub_1D7E0A1A8(0, &qword_1EDBB3260);
    return sub_1D8191984();
  }

  else
  {
    sub_1D7E0A1A8(0, &unk_1EDBB2EE8);
    sub_1D804DF58(0, &qword_1EDBB3460);
    return sub_1D8191E64();
  }
}

void sub_1D81843AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D81836FC(a2);
  }
}

id sub_1D8184408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D8190EE4();

  v7 = [swift_getObjCClassFromMetadata() alternateWithTitle:v6 action:a3 modifierFlags:a4];

  return v7;
}

uint64_t objectdestroy_10Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8184638(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  sub_1D8184ADC(a2, v43);
  v8 = v44;
  if (v44)
  {
    v40 = v3;
    v9 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v9 + 16))(v41, v8, v9);
    v10 = v41[4];
    v11 = v42;
    [a1 bounds];
    v8 = 0;
    switch(v11)
    {
      case 1:
        OUTLINED_FUNCTION_3_146();
        UIEdgeInsetsInsetRect(v20, v21, v22, v23, v24, v25);
        OUTLINED_FUNCTION_0_99();
        objc_opt_self();
        v26 = OUTLINED_FUNCTION_5_13();
        v19 = [v27 v28];
        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_3_146();
        UIEdgeInsetsInsetRect(v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_0_99();
        objc_opt_self();
        v35 = OUTLINED_FUNCTION_5_13();
        v19 = [v36 v37];
        goto LABEL_7;
      case 3:
        goto LABEL_8;
      default:
        OUTLINED_FUNCTION_3_146();
        UIEdgeInsetsInsetRect(v12, v13, v14, v15, v16, v17);
        OUTLINED_FUNCTION_9_0();
        v18 = objc_opt_self();
        v19 = OUTLINED_FUNCTION_3_2(v18, sel_bezierPathWithRect_);
LABEL_7:
        v8 = v19;
LABEL_8:
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        break;
    }
  }

  else
  {
    sub_1D8184BF4(v43);
  }

  [v6 setVisiblePath_];

  v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:v6];
  sub_1D8184BF4(a2);
  return v38;
}

UIBezierPath_optional __swiftcall DragPreviewClipping.bezierPath(bounds:)(__C::CGRect bounds)
{
  v2 = *(v1 + 32);
  v3 = 0;
  switch(*(v1 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_2_173();
      UIEdgeInsetsInsetRect(v12, v13, v14, v15, v16, v17);
      OUTLINED_FUNCTION_0_99();
      objc_opt_self();
      v18 = OUTLINED_FUNCTION_5_13();
      v11 = [v19 v20];
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_2_173();
      UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_0_99();
      objc_opt_self();
      v27 = OUTLINED_FUNCTION_5_13();
      v11 = [v28 v29];
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_2_173();
      UIEdgeInsetsInsetRect(v4, v5, v6, v7, v8, v9);
      OUTLINED_FUNCTION_9_0();
      v10 = objc_opt_self();
      v11 = OUTLINED_FUNCTION_3_2(v10, sel_bezierPathWithRect_);
LABEL_5:
      v3 = v11;
LABEL_6:
      result.value.super.isa = v3;
      result.is_nil = v30;
      return result;
  }
}

double DragPreviewable.dragPreviewClipping.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 3;
  return result;
}

uint64_t getEnumTagSinglePayload for DragPreviewClipping(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 49))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DragPreviewClipping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8184A64(uint64_t a1)
{
  if (*(a1 + 48) <= 2u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1D8184A7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D8184ADC(uint64_t a1, uint64_t a2)
{
  sub_1D8184B40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8184B40()
{
  if (!qword_1EDBB17C0)
  {
    sub_1D8184B98();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB17C0);
    }
  }
}

unint64_t sub_1D8184B98()
{
  result = qword_1EDBB17D0;
  if (!qword_1EDBB17D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB17D0);
  }

  return result;
}

uint64_t sub_1D8184BF4(uint64_t a1)
{
  sub_1D8184B40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8184C64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D80D2F8C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(a2 + 576);
  sub_1D80D2F28(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon, v10);
  v11 = type metadata accessor for PillViewImage();
  LODWORD(a2) = __swift_getEnumTagSinglePayload(v10, 1, v11);
  sub_1D80D3174(v10);
  v12 = a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size;
  v14 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size);
  v13 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 8);
  v15 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 24);
  v86 = *(a1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 16);
  v88 = v15;
  v16 = v4[5];
  v17 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
  v18 = a1[2];
  v19 = a1[3];
  v20 = v12[32];
  v21 = *(v12 + 1);
  v89 = *v12;
  v90 = v21;
  LOBYTE(v91) = v20;
  v22 = (*(v17 + 56))(v18, v19, &v89, a1[4], v16, v17);
  [v22 boundingRectWithSize:35 options:0 context:{1.79769313e308, 1.79769313e308}];
  v24 = v23;

  v25 = 0.0;
  v26 = v13;
  if (a2 != 1)
  {
    v25 = 20.0;
    v92.size.width = 20.0;
    v92.size.height = 20.0;
    v92.origin.x = v13;
    v92.origin.y = v14;
    v26 = CGRectGetMaxX(v92) + 4.0;
  }

  v81 = v25;
  v93.origin.x = OUTLINED_FUNCTION_2_174();
  v27 = v14;
  v28 = v13;
  Width = CGRectGetWidth(v93);
  v94.origin.x = OUTLINED_FUNCTION_2_174();
  v95.size.height = CGRectGetHeight(v94);
  v95.origin.x = v26;
  v95.origin.y = v27;
  v95.size.width = Width;
  v96 = CGRectIntegral(v95);
  x = v96.origin.x;
  v84 = v96.origin.x;
  y = v96.origin.y;
  v31 = v96.origin.y;
  v32 = v96.size.width;
  height = v96.size.height;
  v83 = v96.size.width;
  v97.origin.x = OUTLINED_FUNCTION_0_262();
  v114.origin.x = v28;
  v114.origin.y = v27;
  v33 = v81;
  v114.size.width = v81;
  v114.size.height = v81;
  v98 = CGRectUnion(v97, v114);
  v115.origin.x = x;
  v115.origin.y = v31;
  v115.size.width = v32;
  v115.size.height = v24;
  v99 = CGRectUnion(v98, v115);
  v34 = CGRectGetWidth(v99);
  v35 = dbl_1D81C4A38[v12[32]];
  v100.origin.x = OUTLINED_FUNCTION_20();
  v36 = v86 + CGRectGetHeight(v100);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = v88 + v34;
  v39 = 0;
  v40 = 0;
  v101 = CGRectIntegral(*(&v37 - 3));
  v88 = v101.origin.x;
  v86 = v101.origin.y;
  v41 = v101.size.width;
  v78 = v101.size.height;
  v102.origin.x = OUTLINED_FUNCTION_20();
  v116.size.width = v41;
  v103 = CGRectUnion(v102, v116);
  v42 = v103.origin.x;
  v43 = v103.origin.y;
  v44 = v103.size.width;
  v45 = v103.size.height;
  v104.origin.y = CGRectGetMidY(v103) - v33 * 0.5;
  v104.origin.x = v28;
  v104.size.width = v33;
  v104.size.height = v33;
  v105 = CGRectIntegral(v104);
  v46 = v105.origin.x;
  v47 = v105.origin.y;
  v77 = v105.size.width;
  v48 = v105.size.height;
  v105.origin.x = v42;
  v105.origin.y = v43;
  v105.size.width = v44;
  v105.size.height = v45;
  MidY = CGRectGetMidY(v105);
  v50 = v84;
  v106.origin.y = y;
  v106.origin.x = v84;
  v52 = height;
  v51 = v83;
  v106.size.width = v83;
  v106.size.height = height;
  v107.origin.y = MidY - CGRectGetHeight(v106) * 0.5;
  v107.origin.x = v50;
  v107.size.width = v51;
  v107.size.height = v52;
  v108 = CGRectIntegral(v107);
  v53 = v108.origin.x;
  v54 = v108.origin.y;
  v55 = v108.size.width;
  v109.origin.x = OUTLINED_FUNCTION_0_262();
  v84 = v47;
  y = v46;
  v117.origin.x = v46;
  v117.origin.y = v47;
  v56 = v77;
  v117.size.width = v77;
  v83 = v48;
  v117.size.height = v48;
  v110 = CGRectUnion(v109, v117);
  v81 = v54;
  height = v53;
  v118.origin.x = v53;
  v118.origin.y = v54;
  v79 = v52;
  v80 = v55;
  v118.size.width = v55;
  v118.size.height = v52;
  v111 = CGRectUnion(v110, v118);
  v119.origin.x = v88;
  v119.origin.y = v86;
  v86 = v41;
  v119.size.width = v41;
  v57 = v78;
  v119.size.height = v78;
  v112 = CGRectUnion(v111, v119);
  v58 = v112.origin.x;
  v59 = v112.origin.y;
  v60 = v112.size.width;
  v61 = v112.size.height;
  v62 = CGRectGetHeight(v112);
  v63 = 14.0;
  if (v12[32] <= 1u)
  {
    v113.origin.x = v58;
    v113.origin.y = v59;
    v113.size.width = v60;
    v113.size.height = v61;
    v63 = CGRectGetHeight(v113) * 0.5;
  }

  v64 = v87;
  v65 = v4[5];
  v66 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v65);
  (*(v66 + 8))(&v89, v65, v66);
  v67 = *(&v90 + 1);
  v68 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  v69 = (*(v68 + 24))(v67, v68);
  v70 = v84;
  *a3 = y;
  *(a3 + 8) = v70;
  v72 = height;
  v71 = v83;
  *(a3 + 16) = v56;
  *(a3 + 24) = v71;
  v74 = v80;
  v73 = v81;
  *(a3 + 32) = v72;
  *(a3 + 40) = v73;
  v75 = v79;
  *(a3 + 48) = v74;
  *(a3 + 56) = v75;
  *(a3 + 64) = v88;
  *(a3 + 72) = v64;
  *(a3 + 80) = v86;
  *(a3 + 88) = v57;
  *(a3 + 96) = v58;
  *(a3 + 104) = v59;
  *(a3 + 112) = v60;
  *(a3 + 120) = v64 + v62;
  *(a3 + 128) = v63;
  *(a3 + 136) = v69;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v89);
}

uint64_t ToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ToolbarItem.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t ToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ToolbarItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static SectionViewScrollPosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

void *KeyCommandBlock.__allocating_init(key:flags:title:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

uint64_t KeyCommandBlock.key.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t KeyCommandBlock.title.getter()
{
  v1 = *(v0 + 40);
  sub_1D8190DB4();
  return v1;
}

uint64_t KeyCommandBlock.block.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *KeyCommandBlock.init(key:flags:title:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

uint64_t KeyCommandBlock.deinit()
{

  return v0;
}

uint64_t KeyCommandBlock.__deallocating_deinit()
{
  KeyCommandBlock.deinit();

  return swift_deallocClassInstance();
}

UIColor __swiftcall MastheadViewProviderType.backgroundColor(traitCollection:)(UITraitCollection traitCollection)
{
  v1 = [objc_opt_self() systemBackgroundColor];

  return v1;
}

uint64_t _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0()
{
  swift_getObjectType();
  v1 = dynamic_cast_existential_1_conditional(v0);
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v4 = [v0 ts_parentVC];
    if (v4)
    {
      v5 = v4;
      v2 = _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D81857B8(uint64_t result, uint64_t a2)
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

uint64_t sub_1D8185814(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D81920A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v17 = 0;
    return v17 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
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
LABEL_30:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for JSONSchemaValue(0);
    v18 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_1D81920A4();
        goto LABEL_3;
      }

      if (v11)
      {
        MEMORY[0x1DA714420](v13 - 4, v18);
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_147();
        if (v16)
        {
          goto LABEL_33;
        }

        if (v12)
        {
LABEL_21:
          MEMORY[0x1DA714420](v13 - 4, a2);
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_3_147();
      if (v16)
      {
        goto LABEL_34;
      }

LABEL_26:
      v17 = sub_1D7EFBFA0();

      if (v17)
      {
        ++v13;
        a2 = v14;
        if (v15 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D81859E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1D8185AAC()
{
  OUTLINED_FUNCTION_1_185();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    v4 = (v2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else if ((sub_1D8192634() & 1) == 0 || v5 != v6)
      {
        return;
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

void sub_1D8185B5C()
{
  OUTLINED_FUNCTION_1_185();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    v4 = (v2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else if ((sub_1D8192634() & 1) == 0 || v5 != v6)
      {
        return;
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

void sub_1D8185C0C()
{
  OUTLINED_FUNCTION_1_185();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1D8185CA4(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D81920A4())
  {
    if (a2 >> 62)
    {
      result = sub_1D81920A4();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    sub_1D7E0A1A8(0, a3);
    v21 = v5;
    v13 = v5 & 0xC000000000000001;
    v5 = a2;
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    a2 = i;
    while (1)
    {
      v6 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        break;
      }

      if (v13)
      {
        v16 = MEMORY[0x1DA714420](v15 - 4, v21);
      }

      else
      {
        OUTLINED_FUNCTION_3_147();
        if (v17)
        {
          goto LABEL_34;
        }

        v16 = *(v21 + 8 * v15);
      }

      a3 = v16;
      if (v14)
      {
        v18 = MEMORY[0x1DA714420](v15 - 4, v5);
      }

      else
      {
        OUTLINED_FUNCTION_3_147();
        if (v17)
        {
          goto LABEL_35;
        }

        v18 = *(v5 + 8 * v15);
      }

      v19 = v18;
      v20 = sub_1D8191CC4();

      if (v20)
      {
        ++v15;
        if (v6 != a2)
        {
          continue;
        }
      }

      return v20 & 1;
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

__n128 GradientDescriptor.init(colors:locations:direction:offset:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *(a3 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v9;
  *(a7 + 48) = v7;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6 & 1;
  return result;
}

uint64_t GradientDescriptor.cgColors.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_1D81920A4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_5_96();
    result = sub_1D81922A4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1DA714420](v4, v1);
        }

        else
        {
          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        v7 = [v5 CGColor];

        sub_1D8192274();
        OUTLINED_FUNCTION_4_105();
        sub_1D81922B4();
        OUTLINED_FUNCTION_4_105();
        sub_1D81922C4();
        sub_1D8192284();
      }

      while (v2 != v4);
      return v8;
    }
  }

  return result;
}

uint64_t GradientDescriptor.cgLocations.getter()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_5_96();
    sub_1D7F0906C(0, v2, 0);
    result = v8;
    v4 = (v1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1D7F0906C(v7 > 1, v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

double GradientDescriptor.Direction.startPoint.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32) != 1)
  {
    return *v0;
  }

  v4 = v0[2];
  v3 = v0[3];
  if (!(v2 | v1 | v3 | v4))
  {
    return 0.5;
  }

  v5 = v3 | v2 | v4;
  if (v1 == 1 && v5 == 0)
  {
    return 0.5;
  }

  if (v1 == 2 && v5 == 0)
  {
    return 0.5;
  }

  if (v1 != 3 || (result = 0.0, v5))
  {
    result = 1.0;
    if (v1 != 4 || v5)
    {
      if (v1 != 5 || v5)
      {
        if (v1 != 6 || v5)
        {
          if (v5)
          {
            v9 = 0;
          }

          else
          {
            v9 = v1 == 7;
          }

          result = 0.0;
          if (!v9)
          {
            return 1.0;
          }
        }
      }

      else
      {
        return 0.0;
      }
    }
  }

  return result;
}

double GradientDescriptor.Direction.endPoint.getter()
{
  if (*(v0 + 32) != 1)
  {
    return v0[2];
  }

  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3) | *(v0 + 2);
  result = 0.5;
  if (v3 | *v0 | v2)
  {
    v5 = v3 | v2;
    if ((*&v1 != 1 || v5 != 0) && (*&v1 != 2 || v5 != 0))
    {
      if (*&v1 != 3 || (result = 1.0, v5))
      {
        result = 0.0;
        if (*&v1 != 4 || v5)
        {
          if (*&v1 != 5 || v5)
          {
            if (*&v1 != 6 || v5)
            {
              if (v5)
              {
                v8 = 0;
              }

              else
              {
                v8 = *&v1 == 7;
              }

              result = 1.0;
              if (!v8)
              {
                return 0.0;
              }
            }
          }

          else
          {
            return 1.0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GradientDescriptor.resolvedCGColors(with:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = sub_1D81920A4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    OUTLINED_FUNCTION_5_96();
    result = sub_1D81922A4();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA714420](v6, v3);
        }

        else
        {
          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = [v7 resolvedColorWithTraitCollection_];
        v10 = [v9 CGColor];

        sub_1D8192274();
        OUTLINED_FUNCTION_4_105();
        sub_1D81922B4();
        OUTLINED_FUNCTION_4_105();
        sub_1D81922C4();
        sub_1D8192284();
      }

      while (v4 != v6);
      return v11;
    }
  }

  return result;
}

uint64_t GradientDescriptor.nsLocations.getter()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_5_96();
    sub_1D81922A4();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

BOOL static GradientDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a2 + 8);
  v14 = *(a2 + 32);
  v15 = *(a2 + 16);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  if ((sub_1D8185CA4(*a1, *a2, &qword_1EDBB2F68) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7 || (sub_1D81857B8(v2, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v20[0] = v16;
  v20[1] = v17;
  v21 = v3;
  v18[0] = v15;
  v18[1] = v14;
  v19 = v8;
  if (!static GradientDescriptor.Direction.== infix(_:_:)(v20, v18))
  {
    return 0;
  }

  if (v6)
  {
    return (v11 & 1) != 0;
  }

  if (v11)
  {
    return 0;
  }

  return v4 == v9 && v5 == v10;
}

uint64_t Gradient.identifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_1D7FF8398(__dst);
  v2 = sub_1D7ED042C(__dst);
  if (v1 == 1)
  {
    v3 = *v2;
    sub_1D8190DB4();
  }

  else
  {
    memcpy(v6, v2, sizeof(v6));
    GradientDescriptor.identifier.getter();
    return v4;
  }

  return v3;
}

void GradientDescriptor.identifier.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_263();
  sub_1D7E0E8C0(0, v2, v3, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D81A3F90;
  v6 = sub_1D7E36AB8(v1);
  v22 = v5;
  if (!v6)
  {
    sub_1D8190DB4();
LABEL_12:
    sub_1D7E0E8C0(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7E1B6BC();
    v16 = OUTLINED_FUNCTION_2_175();
    v18 = v17;

    v22[4] = v16;
    v22[5] = v18;
    sub_1D8186CB0();
    v22[6] = sub_1D8190F84();
    v22[7] = v19;
    v22[8] = sub_1D8190F84();
    v22[9] = v20;
    sub_1D8186D2C();
    v22[10] = sub_1D8190F84();
    v22[11] = v21;
    OUTLINED_FUNCTION_2_175();

    return;
  }

  v7 = v6;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8190DB4();
  sub_1D7F08E34();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA714420](v8, v1);
      }

      else
      {
        v9 = *(v1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = UIColor.identifier.getter();
      v13 = v12;

      v14 = *(v23 + 16);
      if (v14 >= *(v23 + 24) >> 1)
      {
        sub_1D7F08E34();
      }

      ++v8;
      *(v23 + 16) = v14 + 1;
      v15 = v23 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
    }

    while (v7 != v8);
    goto LABEL_12;
  }

  __break(1u);
}

__n128 GradientDescriptor.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id static GradientDescriptor.solid(color:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_263();
  sub_1D7E0E8C0(0, v4, v3 + 8, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D81A50A0;
  *(v6 + 32) = a1;
  *a2 = v6;
  *(a2 + 8) = &unk_1F52E4CD0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;

  return a1;
}

BOOL static GradientDescriptor.Direction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 32) == 1)
  {
    v10 = *&v5 | *&v3;
    if (!(v10 | *&v2 | *&v4))
    {
      if (*(a2 + 32))
      {
        return (*&v9 | *&v7 | *&v6 | *&v8) == 0;
      }

      return 0;
    }

    v11 = v10 | *&v4;
    if (*&v2 == 1 && v11 == 0)
    {
      if (*(a2 + 32))
      {
        v18 = *&v9 | *&v7;
        if (v18 | *&v6 | *&v8)
        {
          if (*&v6 == 1 && !(v18 | *&v8))
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (*&v2 == 2 && v11 == 0)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v19 = *&v9 | *&v7;
      if (!(v19 | *&v6 | *&v8))
      {
        return 0;
      }

      v15 = v19 | *&v8;
      if (*&v6 == 1 && !v15)
      {
        return 0;
      }

      if (*&v6 != 2)
      {
        return 0;
      }

      return !v15;
    }

    if (*&v2 == 3 && !v11)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v14 = *&v9 | *&v7;
      if (!(v14 | *&v6 | *&v8))
      {
        return 0;
      }

      v15 = v14 | *&v8;
      if ((*&v6 - 1) <= 1 && !v15)
      {
        return 0;
      }

      if (*&v6 != 3)
      {
        return 0;
      }

      return !v15;
    }

    if (*&v2 == 4 && !v11)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v20 = *&v9 | *&v7;
      if (!(v20 | *&v6 | *&v8))
      {
        return 0;
      }

      v15 = v20 | *&v8;
      if ((*&v6 - 1) <= 2 && !v15)
      {
        return 0;
      }

      if (*&v6 != 4)
      {
        return 0;
      }

      return !v15;
    }

    if (*&v2 == 5 && !v11)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v21 = *&v9 | *&v7;
      if (!(v21 | *&v6 | *&v8))
      {
        return 0;
      }

      v15 = v21 | *&v8;
      if ((*&v6 - 1) <= 3 && !v15)
      {
        return 0;
      }

      if (*&v6 != 5)
      {
        return 0;
      }

      return !v15;
    }

    if (*&v2 == 6 && !v11)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v22 = *&v9 | *&v7;
      if (!(v22 | *&v6 | *&v8))
      {
        return 0;
      }

      v15 = v22 | *&v8;
      if ((*&v6 - 1) <= 4 && !v15)
      {
        return 0;
      }

      if (*&v6 != 6)
      {
        return 0;
      }

      return !v15;
    }

    if (*&v2 != 7 || v11)
    {
      if ((*(a2 + 32) & 1) == 0)
      {
        return 0;
      }

      v26 = *&v9 | *&v7;
      if (!(v26 | *&v6 | *&v8))
      {
        return 0;
      }

      v27 = v26 | *&v8;
      if ((*&v6 - 1) <= 5 && !v27)
      {
        return 0;
      }

      return *&v6 != 7 || v27 != 0;
    }

    else
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      v23 = *&v9 | *&v7;
      if (!(v23 | *&v6 | *&v8))
      {
        return 0;
      }

      v24 = v23 | *&v8;
      if ((*&v6 - 1) <= 5 && !v24)
      {
        return 0;
      }

      return *&v6 == 7 && v24 == 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 != v6 || v3 != v7)
    {
      return 0;
    }

    return v4 == v8 && v5 == v9;
  }
}

uint64_t GradientDescriptor.hash(into:)()
{
  GradientDescriptor.identifier.getter();
  sub_1D8190FF4();
}

uint64_t GradientDescriptor.hashValue.getter()
{
  sub_1D81927E4();
  GradientDescriptor.identifier.getter();
  sub_1D8190FF4();

  return sub_1D8192824();
}

uint64_t sub_1D8186C58()
{
  sub_1D81927E4();
  GradientDescriptor.identifier.getter();
  sub_1D8190FF4();

  return sub_1D8192824();
}

void sub_1D8186CB0()
{
  if (!qword_1EDBAE5B0)
  {
    sub_1D7E0E8C0(255, &qword_1EDBAE5B8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE5B0);
    }
  }
}

void sub_1D8186D2C()
{
  if (!qword_1EDBB2FA0)
  {
    type metadata accessor for CGPoint();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2FA0);
    }
  }
}

unint64_t sub_1D8186D88()
{
  result = qword_1ECA12430;
  if (!qword_1ECA12430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12430);
  }

  return result;
}

uint64_t sub_1D8186E00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D8186E7C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 255;
  *(a1 + 16) = xmmword_1D81C4EE0;
  return result;
}

double Impressionable.impressionManagerOptions.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 255;
  *(a1 + 16) = xmmword_1D81C4EE0;
  return result;
}

uint64_t ImpressionTraits.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

unint64_t sub_1D8186F4C()
{
  result = qword_1ECA12438;
  if (!qword_1ECA12438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA12438);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImpressionTraits(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D81870B4(uint64_t a1, void *a2)
{
  v29 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1D8190DB4();
  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1D8190DB4();

    if (Strong && (Strong, Strong == a2))
    {
    }

    else
    {
      v18 = v29;
      if (*(v29 + 24) <= *(v29 + 16))
      {
        sub_1D7F01AE0();
        v18 = v31;
      }

      v29 = v18;
      sub_1D81927E4();
      sub_1D8190FF4();
      result = sub_1D8192824();
      v19 = v29 + 64;
      v20 = -1 << *(v29 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v29 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v29 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v29 + 48) + 16 * v23);
      *v28 = v15;
      v28[1] = v14;
      *(*(v29 + 56) + 8 * v23) = v16;
      ++*(v29 + 16);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v29;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t TipManager.__allocating_init()()
{
  v0 = swift_allocObject();
  TipManager.init()();
  return v0;
}

Swift::Void __swiftcall TipManager.dismissTips(for:animated:)(UIViewController *a1, Swift::Bool animated)
{
  OUTLINED_FUNCTION_120();
  v4 = v2;
  v6 = v5;
  v42 = v7;
  v8 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_140();
  v10 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v3 = sub_1D8191AB4();
  v11 = OUTLINED_FUNCTION_9_59();
  v12(v11);
  sub_1D8190CA4();
  v13 = OUTLINED_FUNCTION_8_71();
  v14(v13, v8);
  if (v10)
  {
    v40 = v6;
    sub_1D818EDB4();
    OUTLINED_FUNCTION_21_38();
    v3 = *(v4 + 24);
    v15 = v3 + 8;
    OUTLINED_FUNCTION_24();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    sub_1D8190DB4();
    v21 = 0;
    for (i = v3; ; v3 = i)
    {
      do
      {
        if (!v18)
        {
          while (1)
          {
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v22 >= v20)
            {
              goto LABEL_17;
            }

            v18 = v15[v22];
            ++v21;
            if (v18)
            {
              v21 = v22;
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_19;
        }

LABEL_8:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = *(v3[7] + 8 * (v23 | (v21 << 6)));
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      while (!Strong);
      v26 = Strong;
      sub_1D8190DB4();
      v3 = v24;

      if (v26 == v42)
      {
        break;
      }
    }

    if (qword_1EDBBC398 != -1)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_0_264();
    swift_once();
  }

  v27 = sub_1D818FE34();
  __swift_project_value_buffer(v27, qword_1EDBBC3A0);
  sub_1D8190DB4();
  v28 = v3;
  v29 = sub_1D818FE14();
  v30 = sub_1D81919E4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_18_1();
    v43[0] = OUTLINED_FUNCTION_31_20();
    *v31 = 136315394;
    v32 = TipPlacement.description.getter();
    v34 = sub_1D7E1C3D8(v32, v33, v43);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    swift_unknownObjectWeakLoadStrong();
    sub_1D7E192B0(0);
    v35 = sub_1D8190F84();
    v37 = sub_1D7E1C3D8(v35, v36, v43);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_1D7DFF000, v29, v30, "Dismissing tip presentation for tip placement=%s, for sourceViewController=%s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_12_56();
  }

  v38 = v28;
  v39 = swift_unknownObjectWeakLoadStrong();

  if (v39)
  {
    [v39 dismissViewControllerAnimated:v40 & 1 completion:0];
  }

  sub_1D8188028();

LABEL_17:

  sub_1D818EDC4();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8187708(uint64_t a1, char a2)
{
  v3 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    *v9 = sub_1D8191AB4();
    v12 = OUTLINED_FUNCTION_24_31();
    v13(v12);
    v14 = sub_1D8190CA4();
    result = (*(v5 + 8))(v9, v3);
    if (v14)
    {
      *(v11 + 40) = a2;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t TipManager.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TipManager.__deallocating_deinit()
{
  TipManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D81878FC()
{
  if (!sub_1D818E444())
  {
    v60 = 0u;
    v61 = 0u;
    goto LABEL_50;
  }

  sub_1D8192124();
  sub_1D7EDF46C();

  sub_1D7F060D8(&v58);
  if (!*(&v61 + 1))
  {
LABEL_50:
    sub_1D7E7BAAC(&v60);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v58 != 1)
  {
    return;
  }

  sub_1D818EDB4();
  swift_beginAccess();
  v2 = *(v57 + 16) + 64;
  OUTLINED_FUNCTION_0_222();
  v5 = v4 & v3;
  OUTLINED_FUNCTION_28_26();
  sub_1D8190DB4();
  v6 = 0;
  v51 = v1;
  v52 = v2;
LABEL_6:
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    do
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_54;
      }

      if (v7 >= v1)
      {

        sub_1D818EDC4();
        return;
      }

      v5 = *(v2 + 8 * v7);
      ++v6;
    }

    while (!v5);
  }

  v53 = v7;
  v8 = OUTLINED_FUNCTION_25_20(__clz(__rbit64(v5)));
  v5 &= v9;
  v10 = v8 + 64;
  OUTLINED_FUNCTION_0_222();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  sub_1D8190DB4();
  v16 = 0;
  v54 = v15;
  while (v13)
  {
LABEL_17:
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_39_19();
    isa = v0[6].isa;
    v19 = v0[7].isa;
    OUTLINED_FUNCTION_59();
    v20 = *(v57 + 24);
    v21 = v20[2];
    OUTLINED_FUNCTION_30_27();
    swift_retain_n();
    sub_1D8190DB4();
    if (v21 && (sub_1D7E11428(isa, v19), (v22 & 1) != 0))
    {
      OUTLINED_FUNCTION_41_16();
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_30;
      }

      v24 = Strong;
      v25 = v0;
      if ((v0[9].isa & 2) != 0)
      {
        v0 = v20;
        OUTLINED_FUNCTION_47_14(v24, sel_dismissViewControllerAnimated_completion_);
        sub_1D8188028();
        if (qword_1EDBBC398 != -1)
        {
          OUTLINED_FUNCTION_0_264();
          swift_once();
        }

        v31 = sub_1D818FE34();
        OUTLINED_FUNCTION_26_17(v31, qword_1EDBBC3A0);

        v32 = sub_1D818FE14();
        v33 = sub_1D81919E4();

        v1 = v51;
        v2 = v52;
        if (os_log_type_enabled(v32, v33))
        {
          v55 = v0;
          v34 = OUTLINED_FUNCTION_55_1();
          v35 = OUTLINED_FUNCTION_61();
          *&v60 = v35;
          *v34 = 136446210;
          v36 = v25[7].isa;
          v48 = v25[6].isa;
          log = v35;
          OUTLINED_FUNCTION_5_97();
          v58 = v37;
          OUTLINED_FUNCTION_13_55();
          v59 = v38;
          sub_1D8190DB4();
          MEMORY[0x1DA713260](v48, v36);
          OUTLINED_FUNCTION_20_45();

          v39 = sub_1D7E1C3D8(v58, v59, &v60);

          *(v34 + 4) = v39;
          _os_log_impl(&dword_1D7DFF000, v32, v33, "Dismissing presentation for placement source=%{public}s on bar compression event.", v34, 0xCu);
          v0 = log;
          __swift_destroy_boxed_opaque_existential_1Tm(log);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();

          OUTLINED_FUNCTION_36_18();

          goto LABEL_40;
        }

        goto LABEL_42;
      }

      v26 = v20;
      v27 = sub_1D818E444();
      if (v27)
      {
        v28 = v27;
        sub_1D8192124();
        if (!*(v28 + 16) || (v29 = sub_1D7F05094(), (v30 & 1) == 0))
        {

          sub_1D7F060D8(&v58);
          v60 = 0u;
          v61 = 0u;
LABEL_32:

          OUTLINED_FUNCTION_36_18();

          goto LABEL_34;
        }

        sub_1D7E1B288(*(v28 + 56) + 32 * v29, &v60);
        sub_1D7F060D8(&v58);

        if (!*(&v61 + 1))
        {
          goto LABEL_32;
        }

        if (swift_dynamicCast() && (v58 & 1) != 0 && (v0[9].isa & 0x10) != 0)
        {
          OUTLINED_FUNCTION_47_14(v24, sel_dismissViewControllerAnimated_completion_);
          sub_1D8188028();
          if (qword_1EDBBC398 != -1)
          {
            OUTLINED_FUNCTION_0_264();
            swift_once();
          }

          v40 = sub_1D818FE34();
          OUTLINED_FUNCTION_26_17(v40, qword_1EDBBC3A0);

          v41 = sub_1D818FE14();
          v42 = sub_1D81919E4();

          v1 = v51;
          v2 = v52;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = OUTLINED_FUNCTION_55_1();
            v56 = OUTLINED_FUNCTION_61();
            *&v60 = v56;
            *v43 = 136446210;
            v44 = v0[7].isa;
            v49 = v25[6].isa;
            OUTLINED_FUNCTION_5_97();
            v58 = v45;
            OUTLINED_FUNCTION_13_55();
            v59 = v46;
            sub_1D8190DB4();
            MEMORY[0x1DA713260](v49, v44);
            OUTLINED_FUNCTION_20_45();

            v47 = sub_1D7E1C3D8(v58, v59, &v60);

            *(v43 + 4) = v47;
            v0 = v41;
            _os_log_impl(&dword_1D7DFF000, v41, v42, "Dismissing presentation for placement source=%{public}s on tab bar compression event.", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();

            OUTLINED_FUNCTION_36_18();

LABEL_40:
LABEL_43:

            v6 = v53;
            goto LABEL_6;
          }

LABEL_42:
          OUTLINED_FUNCTION_36_18();

          goto LABEL_43;
        }

        OUTLINED_FUNCTION_36_18();

        v15 = v54;
      }

      else
      {

        OUTLINED_FUNCTION_36_18();

        v60 = 0u;
        v61 = 0u;
LABEL_34:
        sub_1D7E7BAAC(&v60);
        v15 = v54;
      }
    }

    else
    {
      swift_endAccess();
LABEL_30:

      v15 = v54;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v6 = v53;
      v1 = v51;
      v2 = v52;
      goto LABEL_6;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1D8188028()
{
  v0 = sub_1D8190C74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v3 = sub_1D8191AB4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = sub_1D8190CA4();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    sub_1D8190DB4();
    sub_1D7F0431C();
    v6 = v5;
    swift_endAccess();

    TipPresentation.teardown()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TipManager.invalidate(sourceViewController:)(UIViewController *sourceViewController)
{
  OUTLINED_FUNCTION_120();
  v3 = v1;
  v5 = v4;
  v6 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_140();
  v8 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v2 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_9_59();
  v10(v9);
  sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_8_71();
  v12(v11, v6);
  if ((v8 & 1) == 0)
  {
    goto LABEL_31;
  }

  v60 = v3;
  sub_1D818EDB4();
  if (qword_1EDBBC398 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_264();
    swift_once();
  }

  v13 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v13, qword_1EDBBC3A0);
  v14 = v5;
  v15 = sub_1D818FE14();
  v16 = sub_1D81919E4();

  v62 = v14;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_55_1();
    v18 = OUTLINED_FUNCTION_61();
    v63 = v18;
    *v17 = 136446210;
    v19 = [v14 description];
    v20 = sub_1D8190F14();
    v22 = v21;

    v23 = sub_1D7E1C3D8(v20, v22, &v63);

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_34_21(&dword_1D7DFF000, v24, v16, "Invalidating sourceViewController=%{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_21_38();
  v25 = *(v60 + 16) + 64;
  OUTLINED_FUNCTION_0_222();
  v5 = v27 & v26;
  v29 = (v28 + 63) >> 6;
  v56 = v30;
  sub_1D8190DB4();
  v31 = 0;
  v54 = v29;
  v55 = v25;
  if (v5)
  {
LABEL_6:
    v32 = v31;
LABEL_10:
    v33 = *(*(v56 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v5)))));
    v5 &= v5 - 1;
    v34 = v33 + 64;
    OUTLINED_FUNCTION_0_222();
    v37 = v36 & v35;
    v39 = (v38 + 63) >> 6;
    sub_1D8190DB4();
    v40 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v37)
          {
            while (1)
            {
              v41 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                break;
              }

              if (v41 >= v39)
              {

                v31 = v32;
                v29 = v54;
                v25 = v55;
                if (!v5)
                {
                  goto LABEL_7;
                }

                goto LABEL_6;
              }

              v37 = *(v34 + 8 * v41);
              ++v40;
              if (v37)
              {
                v40 = v41;
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_16:
          OUTLINED_FUNCTION_16_11();
          v43 = *(*(v33 + 56) + 8 * (v42 | (v40 << 6)));
          Strong = swift_unknownObjectWeakLoadStrong();
        }

        while (!Strong);
        v45 = Strong;
        sub_1D8190DB4();

        if (v45 == v62)
        {
          break;
        }
      }

      v61 = v33;
      v46 = *(v43 + 56);
      v57 = *(v43 + 48);
      OUTLINED_FUNCTION_59();
      v47 = *(v60 + 24);
      if (*(v47 + 16) && (sub_1D8190DB4(), v53 = sub_1D7E11428(v57, v46), v58 = v48, , (v58 & 1) != 0))
      {
        v49 = *(*(v47 + 56) + 8 * v53);
        swift_endAccess();
        v50 = swift_unknownObjectWeakLoadStrong();
        if (v50)
        {
          v51 = v50;
          v59 = v50;
          v52 = v49;
          OUTLINED_FUNCTION_47_14(v51, sel_dismissViewControllerAnimated_completion_);
          sub_1D8188028();

          goto LABEL_25;
        }
      }

      else
      {
        swift_endAccess();
      }

LABEL_25:
      v33 = v61;
      *(v43 + 64) = 0;
    }
  }

  while (1)
  {
LABEL_7:
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_30;
    }

    if (v32 >= v29)
    {
      break;
    }

    v5 = *(v25 + 8 * v32);
    ++v31;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  sub_1D818EDC4();
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall TipManager.dismissTips(animated:)(Swift::Bool animated)
{
  OUTLINED_FUNCTION_120();
  v3 = v1;
  v36 = v4;
  v5 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_140();
  v7 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v2 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_9_59();
  v9(v8);
  sub_1D8190CA4();
  v10 = OUTLINED_FUNCTION_8_71();
  v11(v10, v5);
  if (v7)
  {
    sub_1D818EDB4();
    OUTLINED_FUNCTION_21_38();
    v12 = *(v3 + 24);
    v13 = v12 + 64;
    OUTLINED_FUNCTION_24();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    sub_1D8190DB4();
    v19 = 0;
    v35 = v12;
    while (v16)
    {
LABEL_8:
      OUTLINED_FUNCTION_23_25();
      v16 &= v21;
      v23 = *(*(v12 + 56) + 8 * (v22 | (v19 << 6)));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        v25 = qword_1EDBBC398;
        sub_1D8190DB4();
        v26 = v23;
        if (v25 != -1)
        {
          OUTLINED_FUNCTION_0_264();
          swift_once();
        }

        v27 = sub_1D818FE34();
        __swift_project_value_buffer(v27, qword_1EDBBC3A0);
        sub_1D8190DB4();
        v28 = v26;
        v29 = sub_1D818FE14();
        v30 = sub_1D81919E4();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_55_1();
          v38 = OUTLINED_FUNCTION_61();
          *v31 = 136315138;
          v32 = TipPlacement.description.getter();
          v34 = sub_1D7E1C3D8(v32, v33, &v38);

          *(v31 + 4) = v34;
          _os_log_impl(&dword_1D7DFF000, v29, v30, "Dismissing tip presentation for tip placement=%s", v31, 0xCu);
          OUTLINED_FUNCTION_49_10();
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        v12 = v35;
        [v37 dismissViewControllerAnimated:v36 & 1 completion:0];
        sub_1D8188028();
      }
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        sub_1D818EDC4();
        OUTLINED_FUNCTION_100();
        return;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void TipManager.dismissTips(for:traits:animated:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v55 = v4;
  v6 = v5;
  v57 = v7;
  v8 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_140();
  v56 = *v6;
  LOBYTE(v6) = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v2 = sub_1D8191AB4();
  v10 = OUTLINED_FUNCTION_9_59();
  v11(v10);
  sub_1D8190CA4();
  v12 = OUTLINED_FUNCTION_8_71();
  v13(v12, v8);
  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1D818EDB4();
  OUTLINED_FUNCTION_42_0();
  v14 = *(v3 + 16) + 64;
  OUTLINED_FUNCTION_0_222();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  sub_1D8190DB4();
  v20 = 0;
  v58 = v19;
  v59 = v14;
  v62 = v3;
  if (!v17)
  {
    goto LABEL_3;
  }

LABEL_7:
  while (2)
  {
    v60 = v20;
    v22 = OUTLINED_FUNCTION_25_20(__clz(__rbit64(v17)));
    v24 = (v23 & v17);
    v61 = v24;
    v25 = v22 + 64;
    OUTLINED_FUNCTION_0_222();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    sub_1D8190DB4();
    v31 = 0;
    if (!v28)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_12:
      OUTLINED_FUNCTION_39_19();
      v33 = v1[6];
      v34 = v1[7];
      OUTLINED_FUNCTION_59();
      v35 = *(v3 + 24);
      v36 = v35[2];
      v63 = v1;
      v1 = v24;
      swift_retain_n();
      sub_1D8190DB4();
      if (!v36 || (sub_1D7E11428(v33, v34), (v37 & 1) == 0))
      {
        swift_endAccess();
        v3 = v62;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_41_16();
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = v62;
      if (Strong)
      {
        break;
      }

LABEL_21:
      v28 &= v28 - 1;

      if (!v28)
      {
LABEL_8:
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            goto LABEL_28;
          }

          v28 = *(v25 + 8 * v32);
          ++v31;
          if (v28)
          {
            v31 = v32;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v39 = Strong;
    v40 = swift_unknownObjectWeakLoadStrong();
    if (!v40)
    {
LABEL_19:

      goto LABEL_21;
    }

    v24 = v40;
    if (v40 != v57 || (v56 & ~v63[9]) != 0)
    {

      goto LABEL_19;
    }

    v41 = qword_1EDBBC398;
    v42 = v35;
    if (v41 != -1)
    {
      OUTLINED_FUNCTION_0_264();
      swift_once();
    }

    v43 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v43, qword_1EDBBC3A0);

    v44 = sub_1D818FE14();
    v45 = sub_1D81919E4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_31_20();
      v54 = v42;
      *v46 = 136446466;
      v47 = v63[7];
      v53 = v63[6];
      OUTLINED_FUNCTION_5_97();
      v64 = v48;
      v65 = v49;
      OUTLINED_FUNCTION_13_55();
      v66 = v50;
      sub_1D8190DB4();
      MEMORY[0x1DA713260](v53, v47);
      OUTLINED_FUNCTION_20_45();

      sub_1D7E1C3D8(v65, v66, &v64);
      OUTLINED_FUNCTION_35_20();
      *(v46 + 4) = v47;
      *(v46 + 12) = 2080;
      v65 = v56;
      v51 = TipPlacement.Traits.description.getter();
      sub_1D7E1C3D8(v51, v52, &v64);
      OUTLINED_FUNCTION_35_20();
      *(v46 + 14) = v47;
      _os_log_impl(&dword_1D7DFF000, v44, v45, "Dismissing presentation for placement source=%{public}s on %s event.", v46, 0x16u);
      OUTLINED_FUNCTION_33_20();
      v42 = v54;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_77_0();
    }

    [v39 dismissViewControllerAnimated:v55 & 1 completion:0];
    sub_1D8188028();

LABEL_28:

    v19 = v58;
    v14 = v59;
    v20 = v60;
    v17 = v61;
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_3:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      sub_1D818EDC4();
      OUTLINED_FUNCTION_100();
      return;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_7;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void TipManager.dismissTips(animated:traits:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v53 = v5;
  v6 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v54 = *v4;
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v12 = sub_1D8191AB4();
  v13 = OUTLINED_FUNCTION_24_31();
  v14(v13);
  LOBYTE(v4) = sub_1D8190CA4();
  (*(v8 + 8))(v12, v6);
  if (v4)
  {
    sub_1D818EDB4();
    OUTLINED_FUNCTION_42_0();
    v15 = *(v2 + 16) + 64;
    OUTLINED_FUNCTION_0_222();
    v18 = v17 & v16;
    OUTLINED_FUNCTION_28_26();
    sub_1D8190DB4();
    v19 = 0;
    v55 = v1;
    v56 = v15;
    v59 = v2;
LABEL_3:
    if (v18)
    {
LABEL_7:
      OUTLINED_FUNCTION_23_25();
      v57 = v21;
      v23 = OUTLINED_FUNCTION_25_20(v22);
      v58 = v24 & v18;
      v25 = v23 + 64;
      OUTLINED_FUNCTION_0_222();
      v28 = v27 & v26;
      OUTLINED_FUNCTION_28_26();
      v60 = v29;
      sub_1D8190DB4();
      v30 = 0;
      if (!v28)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_12:
        v32 = *(*(v60 + 56) + 8 * (__clz(__rbit64(v28)) | (v30 << 6)));
        v33 = v32[6];
        v34 = v32[7];
        OUTLINED_FUNCTION_59();
        v35 = *(v2 + 24);
        v36 = v35[2];
        v61 = v32;
        swift_retain_n();
        sub_1D8190DB4();
        if (v36 && (sub_1D7E11428(v33, v34), (v37 & 1) != 0))
        {
          OUTLINED_FUNCTION_41_16();
          swift_endAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          v2 = v59;
          if (Strong)
          {
            v39 = Strong;
            if ((v54 & ~v32[9]) == 0)
            {
              v40 = v35;
              [v39 dismissViewControllerAnimated:v53 & 1 completion:0];
              sub_1D8188028();
              if (qword_1EDBBC398 != -1)
              {
                OUTLINED_FUNCTION_0_264();
                swift_once();
              }

              v41 = sub_1D818FE34();
              OUTLINED_FUNCTION_26_17(v41, qword_1EDBBC3A0);

              v42 = sub_1D818FE14();
              v43 = sub_1D81919E4();

              v1 = v55;
              v15 = v56;
              v18 = v58;
              if (os_log_type_enabled(v42, v43))
              {
                v44 = OUTLINED_FUNCTION_18_1();
                OUTLINED_FUNCTION_31_20();
                *v44 = 136446466;
                v51 = v61[6];
                v52 = v40;
                v45 = v61[7];
                OUTLINED_FUNCTION_5_97();
                v62 = v46;
                v63 = v47;
                OUTLINED_FUNCTION_13_55();
                v64 = v48;
                sub_1D8190DB4();
                MEMORY[0x1DA713260](v51, v45);
                OUTLINED_FUNCTION_20_45();

                sub_1D7E1C3D8(v63, v64, &v62);
                OUTLINED_FUNCTION_35_20();
                *(v44 + 4) = v45;
                *(v44 + 12) = 2080;
                v63 = v54;
                v49 = TipPlacement.Traits.description.getter();
                sub_1D7E1C3D8(v49, v50, &v62);
                OUTLINED_FUNCTION_35_20();
                *(v44 + 14) = v45;
                _os_log_impl(&dword_1D7DFF000, v42, v43, "Dismissing presentation for placement source=%{public}s on %s event.", v44, 0x16u);
                OUTLINED_FUNCTION_33_20();
                OUTLINED_FUNCTION_38();
                OUTLINED_FUNCTION_38();

                OUTLINED_FUNCTION_30_27();
              }

              else
              {

                OUTLINED_FUNCTION_30_27();
              }

              v19 = v57;
              goto LABEL_3;
            }
          }
        }

        else
        {
          swift_endAccess();
          v2 = v59;
        }

        v28 &= v28 - 1;
        OUTLINED_FUNCTION_30_27();
      }

      while (v28);
LABEL_8:
      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v1)
        {

          v19 = v57;
          v18 = v58;
          v1 = v55;
          v15 = v56;
          goto LABEL_3;
        }

        v28 = *(v25 + 8 * v31);
        ++v30;
        if (v28)
        {
          v30 = v31;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v1)
        {

          sub_1D818EDC4();
          OUTLINED_FUNCTION_100();
          return;
        }

        v18 = *(v15 + 8 * v20);
        ++v19;
        if (v18)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall TipManager.deregister(sourceViewController:)(UIViewController *sourceViewController)
{
  v2 = v1;
  sub_1D818EDB4();
  if (qword_1EDBBC398 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v4 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v4, qword_1EDBBC3A0);
    sourceViewController = sourceViewController;
    v5 = sub_1D818FE14();
    v6 = sub_1D81919E4();

    v44 = sourceViewController;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_55_1();
      v8 = OUTLINED_FUNCTION_61();
      v50[0] = v8;
      *v7 = 136446210;
      v9 = [(UIViewController *)sourceViewController description];
      v10 = sub_1D8190F14();
      v11 = v2;
      v13 = v12;

      sourceViewController = sub_1D7E1C3D8(v10, v13, v50);
      v2 = v11;

      *(v7 + 4) = sourceViewController;
      OUTLINED_FUNCTION_34_21(&dword_1D7DFF000, v14, v6, "Deregistering all tips registered for source view controller=%{public}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_38();
    }

    swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = v15 + 64;
    OUTLINED_FUNCTION_24();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    sub_1D8190DB4();
    v22 = 0;
    v47 = v15 + 64;
    v48 = v21;
    v45 = v2;
    v46 = v15;
    if (v19)
    {
      break;
    }

LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        OUTLINED_FUNCTION_0_8();
        swift_allocObject();
        swift_weakInit();

        sub_1D818FD04();

        sub_1D818EDC4();
        return;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v22 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_264();
    swift_once();
  }

  while (1)
  {
LABEL_9:
    v24 = (*(v15 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
    v25 = *v24;
    v26 = v24[1];
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_59();
    v27 = *(v2 + 16);
    if (v27[2])
    {
      sourceViewController = sub_1D7E11428(v25, v26);
      v29 = v28;

      if (v29)
      {
        sourceViewController = *(v27[7] + 8 * sourceViewController);
        swift_endAccess();
        v30 = v44;
        OUTLINED_FUNCTION_161();
        v31 = sub_1D8190DB4();
        v32 = sub_1D81870B4(v31, v27);
        v16 = v47;

        goto LABEL_15;
      }

      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v32 = 0;
LABEL_15:
    OUTLINED_FUNCTION_15_2();
    if (!v32)
    {
      sub_1D7E11428(v25, v26);
      sourceViewController = v39;

      v21 = v48;
      if (sourceViewController)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_1D7F04690();
        sub_1D8192374();
        sourceViewController = v49;

        sub_1D818C2C8(0, &unk_1EDBB3450, type metadata accessor for TipPlacement, MEMORY[0x1E69E5E28]);
        sub_1D7E30F60();
        sub_1D8192384();
        *(v2 + 16) = v49;
      }

      goto LABEL_27;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v34 = sub_1D7E11428(v25, v26);
    if (__OFADD__(v33->_overrideTransitioningDelegate, (v35 & 1) == 0))
    {
      goto LABEL_31;
    }

    v2 = v34;
    v36 = v35;
    sub_1D7F04690();
    if ((sub_1D8192374() & 1) == 0)
    {
      goto LABEL_20;
    }

    v37 = sub_1D7E11428(v25, v26);
    if ((v36 & 1) != (v38 & 1))
    {
      break;
    }

    v2 = v37;
LABEL_20:
    if (v36)
    {

      sourceViewController = v33;
      v33->_navigationItem[v2].super.isa = v32;
    }

    else
    {
      sourceViewController = v33;
      (&v33->_toolbarItems)[v2 >> 6] = ((&v33->_toolbarItems)[v2 >> 6] | (1 << v2));
      v40 = (v33->_tabElement + 16 * v2);
      *v40 = v25;
      v40[1] = v26;
      v33->_navigationItem[v2].super.isa = v32;
      overrideTransitioningDelegate = v33->_overrideTransitioningDelegate;
      v42 = __OFADD__(overrideTransitioningDelegate, 1);
      v43 = (overrideTransitioningDelegate + 1);
      if (v42)
      {
        goto LABEL_32;
      }

      v33->_overrideTransitioningDelegate = v43;
    }

    v2 = v45;
    v15 = v46;
    *(v45 + 16) = sourceViewController;
    v16 = v47;
    v21 = v48;
LABEL_27:
    v19 &= v19 - 1;
    swift_endAccess();
    if (!v19)
    {
      goto LABEL_5;
    }
  }

  sub_1D8192714();
  __break(1u);
}

uint64_t sub_1D8189928()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E2C778();
  }

  return result;
}

BOOL TipManager.isValidPlacement(for:queryBy:)()
{
  TipManager.validPlacement(for:queryBy:)();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

void TipManager.validPlacement(for:queryBy:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v14 = *v5;
  v13 = v5[1];
  v15 = *v3;
  v16 = v3[1];
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v12 = sub_1D8191AB4();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v6);
  LOBYTE(v3) = sub_1D8190CA4();
  v18 = *(v8 + 8);
  v17 = v8 + 8;
  v18(v12, v6);
  if ((v3 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_264();
    swift_once();
    goto LABEL_4;
  }

  v17 = *(v1 + 64);
  sub_1D818EDB4();
  OUTLINED_FUNCTION_59();
  v19 = sub_1D7E18744(v14, v13, *(v1 + 16));
  if (!v19)
  {
    swift_endAccess();
    if (qword_1EDBBC398 != -1)
    {
      OUTLINED_FUNCTION_0_264();
      swift_once();
    }

    v29 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v29, qword_1EDBBC3A0);
    sub_1D8190DB4();
    v30 = sub_1D818FE14();
    v31 = sub_1D81919C4();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_30;
    }

    v32 = OUTLINED_FUNCTION_55_1();
    v33 = OUTLINED_FUNCTION_61();
    *v32 = 136446210;
    OUTLINED_FUNCTION_5_97();
    OUTLINED_FUNCTION_11_58(v34);
    MEMORY[0x1DA713260](v35, v13);
    OUTLINED_FUNCTION_20_45();
    OUTLINED_FUNCTION_32_21();
    OUTLINED_FUNCTION_161();

    *(v32 + 4) = v17;
    v36 = "No valid placements registered for tip source=%{public}s";
    goto LABEL_29;
  }

  v20 = v19;
  v51 = v16;
  swift_endAccess();

  v12 = sub_1D818B268(v20, v1);

  if (qword_1EDBBC398 != -1)
  {
    goto LABEL_38;
  }

LABEL_4:
  v21 = sub_1D818FE34();
  v22 = __swift_project_value_buffer(v21, qword_1EDBBC3A0);

  v23 = sub_1D818FE14();
  v24 = sub_1D81919B4();
  v50 = v14;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_18_1();
    v49 = OUTLINED_FUNCTION_61();
    v53 = v49;
    *v25 = 134218242;
    *(v25 + 4) = v12[2];

    *(v25 + 12) = 2080;
    type metadata accessor for TipPlacement();
    v26 = sub_1D8190D64();
    v28 = sub_1D7E1C3D8(v26, v27, &v53);

    *(v25 + 14) = v28;
    _os_log_impl(&dword_1D7DFF000, v23, v24, "Found (%ld) placements registered=%s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  if (!v51)
  {
    OUTLINED_FUNCTION_24();
    v14 = v44 & v43;
    OUTLINED_FUNCTION_28_26();

    v45 = 0;
    if (!v14)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v15 = v45;
LABEL_22:
      v46 = *(v12[7] + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      if (sub_1D7FF00EC())
      {
        break;
      }

      v14 &= v14 - 1;

      v45 = v15;
      if (!v14)
      {
LABEL_19:
        while (1)
        {
          v15 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v15 >= v17)
          {

            goto LABEL_26;
          }

          v14 = v12[v15 + 8];
          ++v45;
          if (v14)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    if (*(v46 + 64) != 1)
    {
      goto LABEL_26;
    }

    sub_1D8190DB4();
    v38 = v22;
    v39 = sub_1D818FE14();
    v40 = sub_1D81919E4();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v37 = sub_1D7E886A4(v15, v51, v12);

  if (!v37)
  {
    goto LABEL_27;
  }

  if (!sub_1D7FF00EC())
  {
LABEL_26:

LABEL_27:
    sub_1D8190DB4();
    v47 = v22;
    v30 = sub_1D818FE14();
    v31 = sub_1D81919C4();

    if (!os_log_type_enabled(v30, v31))
    {
LABEL_30:

      goto LABEL_31;
    }

    v32 = OUTLINED_FUNCTION_55_1();
    v33 = OUTLINED_FUNCTION_61();
    *v32 = 136446210;
    OUTLINED_FUNCTION_5_97();
    OUTLINED_FUNCTION_11_58(v48);
    MEMORY[0x1DA713260](v50, v13);
    OUTLINED_FUNCTION_20_45();
    OUTLINED_FUNCTION_32_21();
    OUTLINED_FUNCTION_161();

    *(v32 + 4) = v47;
    v36 = "No valid placement found for tip source=%{public}s";
LABEL_29:
    _os_log_impl(&dword_1D7DFF000, v30, v31, v36, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_30;
  }

  sub_1D8190DB4();
  v38 = v22;
  v39 = sub_1D818FE14();
  v40 = sub_1D81919E4();

  if (os_log_type_enabled(v39, v40))
  {
LABEL_15:
    v41 = OUTLINED_FUNCTION_55_1();
    v52 = OUTLINED_FUNCTION_61();
    *v41 = 136446210;
    OUTLINED_FUNCTION_5_97();
    OUTLINED_FUNCTION_11_58(v42);
    MEMORY[0x1DA713260](v50, v13);
    OUTLINED_FUNCTION_20_45();
    OUTLINED_FUNCTION_32_21();
    OUTLINED_FUNCTION_161();

    *(v41 + 4) = v38;
    OUTLINED_FUNCTION_51_10(&dword_1D7DFF000, v39, v40, "Found placement for tip source=%{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_12_56();
  }

LABEL_16:

LABEL_31:
  sub_1D818EDC4();
  OUTLINED_FUNCTION_100();
}

void TipManager.present(placement:tipViewController:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v118 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = (v17 - v16);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v18 = sub_1D8191AB4();
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v12);
  v19 = sub_1D8190CA4();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v21(v18, v12);
  if (v19)
  {
    v22 = v11;
    v11 = v5;
    v113 = v7;
    v115 = v2;
    v7 = *(v2 + 64);
    sub_1D818EDB4();
    v1 = v22[6];
    v20 = v22[7];
    v117 = v22[2];
    v123 = v22;
    v12 = v22[3];
    if (qword_1EDBBC398 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_68:
    __break(1u);
  }

  OUTLINED_FUNCTION_0_264();
  swift_once();
LABEL_3:
  v23 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v23, qword_1EDBBC3A0);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v24 = sub_1D818FE14();
  v25 = sub_1D81919E4();

  v114 = v1;
  v116 = v20;
  if (os_log_type_enabled(v24, v25))
  {
    v121 = v7;
    v26 = OUTLINED_FUNCTION_18_1();
    v131[0] = OUTLINED_FUNCTION_31_20();
    *v26 = 136446466;
    OUTLINED_FUNCTION_13_55();
    v124 = 0x6372756F53706954;
    v125 = v27;
    MEMORY[0x1DA713260](v1, v20);
    OUTLINED_FUNCTION_20_45();
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_50_10();
    *(v26 + 4) = &unk_1D81AC000;
    v28 = v11;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1D7E1C3D8(v117, v12, v131);
    _os_log_impl(&dword_1D7DFF000, v24, v25, "Attempting to present tip=%{public}s sourceIdentifier=%{public}s...", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    v7 = v121;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v28 = v11;
  }

  v11 = v123;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1D8190DB4();
    v39 = sub_1D818FE14();
    v40 = sub_1D81919C4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_55_1();
      v42 = OUTLINED_FUNCTION_61();
      v131[0] = v42;
      *v41 = 136446210;
      OUTLINED_FUNCTION_7_88();
      MEMORY[0x1DA713260](v1, v116);
      OUTLINED_FUNCTION_20_45();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_35_20();
      *(v41 + 4) = v116;
      OUTLINED_FUNCTION_45_16(&dword_1D7DFF000, v43, v44, "No source item found for tip=%{public}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (v28)
    {
      v45 = OUTLINED_FUNCTION_38_17();
      v28(v45);
    }

    goto LABEL_54;
  }

  v30 = Strong;
  if (!sub_1D7FF00EC())
  {

    v46 = sub_1D818FE14();
    v47 = sub_1D81919C4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_55_1();
      v49 = OUTLINED_FUNCTION_61();
      v124 = v49;
      *v48 = 136315138;
      v50 = TipPlacement.description.getter();
      sub_1D7E1C3D8(v50, v51, &v124);
      OUTLINED_FUNCTION_35_20();
      *(v48 + 4) = v9;
      OUTLINED_FUNCTION_45_16(&dword_1D7DFF000, v52, v53, "Placement is no longer within bounds, tip placement=%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (!v28)
    {
      goto LABEL_23;
    }

LABEL_22:
    v54 = OUTLINED_FUNCTION_38_17();
    v28(v54);
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_54;
  }

  v31 = OUTLINED_FUNCTION_48_13();
  if (v31)
  {
    v32 = v31;
    [v31 setSourceItem_];
  }

  if ((*(v123 + 72) & 4) != 0)
  {

    v55 = sub_1D818FE14();
    v56 = sub_1D81919B4();

    if (os_log_type_enabled(v55, v56))
    {
      v107 = v12;
      v57 = v7;
      v58 = OUTLINED_FUNCTION_55_1();
      v110 = v28;
      v59 = OUTLINED_FUNCTION_61();
      v124 = v59;
      *v58 = 136315138;
      v60 = TipPlacement.description.getter();
      v62 = sub_1D7E1C3D8(v60, v61, &v124);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1D7DFF000, v55, v56, "Assigning dismiss on scroll passthrough views to tip for placement=%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      v28 = v110;
      OUTLINED_FUNCTION_38();
      v7 = v57;
      v12 = v107;
      OUTLINED_FUNCTION_38();
    }

    v63 = OUTLINED_FUNCTION_48_13();
    if (v63)
    {
      v35 = v63;
      sub_1D818C218(MEMORY[0x1E69E7CC0], v63);
LABEL_28:
    }
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 view];

      if (v35)
      {
        v36 = OUTLINED_FUNCTION_48_13();
        if (v36)
        {
          v37 = v36;
          sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1D81A50A0;
          *(v38 + 32) = v35;
          sub_1D818C218(v38, v37);
          v35 = v37;
        }

        goto LABEL_28;
      }
    }
  }

  v122 = v7;
  if ((*(v123 + 88) & 1) == 0)
  {
    v64 = *(v123 + 80);

    v65 = sub_1D818FE14();
    v66 = sub_1D81919B4();

    if (os_log_type_enabled(v65, v66))
    {
      v119 = v64;
      v67 = OUTLINED_FUNCTION_55_1();
      v111 = OUTLINED_FUNCTION_61();
      v124 = v111;
      *v67 = 136315138;
      v68 = TipPlacement.description.getter();
      sub_1D7E1C3D8(v68, v69, &v124);
      OUTLINED_FUNCTION_50_10();
      *(v67 + 4) = v28;
      _os_log_impl(&dword_1D7DFF000, v65, v66, "Assigning permitted arrow directions to tip for placement=%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      OUTLINED_FUNCTION_77_0();
      v64 = v119;
      OUTLINED_FUNCTION_38();
    }

    v70 = OUTLINED_FUNCTION_48_13();
    [v70 setPermittedArrowDirections_];
  }

  v71 = swift_unknownObjectWeakLoadStrong();
  if (!v71)
  {
    sub_1D8190DB4();

    v93 = v12;
    v94 = sub_1D818FE14();
    v95 = sub_1D81919C4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = OUTLINED_FUNCTION_18_1();
      v131[0] = OUTLINED_FUNCTION_31_20();
      *v96 = 136446466;
      v97 = *(v123 + 48);
      v98 = *(v123 + 56);
      OUTLINED_FUNCTION_7_88();
      sub_1D8190DB4();
      MEMORY[0x1DA713260](v97, v98);
      OUTLINED_FUNCTION_20_45();

      v99 = OUTLINED_FUNCTION_37_17();

      *(v96 + 4) = v99;
      *(v96 + 12) = 2082;
      v100 = sub_1D7E1C3D8(v117, v93, v131);

      *(v96 + 14) = v100;
      _os_log_impl(&dword_1D7DFF000, v94, v95, "No source view controller found for tip source=%{public}s, with sourceIdentifier=%{public}s", v96, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v109 = v71;
  v120 = v9;
  v108 = v12;
  v12 = v30;
  v112 = v28;
  OUTLINED_FUNCTION_42_0();
  v20 = 0;
  v72 = *(v115 + 24) + 64;
  v9 = *(v115 + 24);
  OUTLINED_FUNCTION_24();
  v75 = v74 & v73;
  OUTLINED_FUNCTION_28_26();
  while (v75)
  {
    v76 = v20;
LABEL_42:
    v77 = __clz(__rbit64(v75));
    v75 &= v75 - 1;
    v78 = *(v9[7] + ((v76 << 9) | (8 * v77)));
    v79 = swift_unknownObjectWeakLoadStrong();
    if (v79)
    {
      v80 = v79;
      sub_1D8190DB4();
      v81 = v78;
      v82 = v28;
      if ([v80 isBeingPresented])
      {
        goto LABEL_46;
      }

      v83 = [v80 viewIfLoaded];
      if (v83)
      {

LABEL_46:
        sub_1D8190DB4();
        sub_1D8190DB4();
        v84 = sub_1D818FE14();
        v85 = sub_1D81919E4();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = OUTLINED_FUNCTION_18_1();
          v130 = OUTLINED_FUNCTION_31_20();
          *v86 = 136446466;
          OUTLINED_FUNCTION_7_88();
          MEMORY[0x1DA713260](v114, v116);
          OUTLINED_FUNCTION_20_45();
          v87 = sub_1D7E1C3D8(v124, v125, &v130);

          *(v86 + 4) = v87;
          *(v86 + 12) = 2082;
          v88 = sub_1D7E1C3D8(v117, v108, &v130);

          *(v86 + 14) = v88;
          _os_log_impl(&dword_1D7DFF000, v84, v85, "Unable to present tip=%{public}s, sourceIdentifier=%{public}s; there's already a tip being presented", v86, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_38();
          v82 = v112;
          OUTLINED_FUNCTION_38();
        }

        else
        {
        }

        if (v82)
        {
          v105 = OUTLINED_FUNCTION_38_17();
          v82(v105);
          goto LABEL_65;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (v28)
        {
          v106 = OUTLINED_FUNCTION_38_17();
          v28(v106);
        }

        sub_1D8188028();
LABEL_65:

        swift_unknownObjectRelease();
      }

      goto LABEL_54;
    }
  }

  v1 = v122;
  v7 = v12;
  while (1)
  {
    v76 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v76 >= &unk_1D81AC000)
    {
      break;
    }

    v75 = *(v72 + 8 * v76);
    ++v20;
    if (v75)
    {
      v20 = v76;
      goto LABEL_42;
    }
  }

  v89 = swift_allocObject();
  v89[2] = v114;
  v89[3] = v116;
  v89[4] = v28;
  v89[5] = v118;
  v128 = sub_1D818B42C;
  v129 = v89;
  v124 = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_1D7E64940;
  v127 = &block_descriptor_93;
  v90 = _Block_copy(&v124);
  sub_1D8190DB4();
  sub_1D7E38808(v28);

  [v109 presentViewController:v120 animated:v113 & 1 completion:v90];
  _Block_release(v90);
  OUTLINED_FUNCTION_59();
  v91 = sub_1D7E90458(v114, v116, *(v115 + 24));
  if (v91)
  {
    v92 = v91;
    swift_endAccess();
    TipPresentation.teardown()();
  }

  else
  {
    swift_endAccess();
  }

  v101 = objc_allocWithZone(type metadata accessor for TipPresentation());

  v102 = v109;
  v103 = sub_1D7F44CCC(v123, v102, v120);
  *&v103[OBJC_IVAR____TtC5TeaUI15TipPresentation_delegate + 8] = &off_1F530D3D0;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_15_2();
  v104 = v103;
  swift_isUniquelyReferenced_nonNull_native();
  v130 = *(v115 + 24);
  sub_1D7EF6CFC();
  *(v115 + 24) = v130;
  swift_endAccess();
  TipPresentation.setup(sourceViewController:)(v102);
  swift_unknownObjectRelease();

LABEL_54:
  sub_1D818EDC4();
  OUTLINED_FUNCTION_100();
}

void sub_1D818ADCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1EDBBC398 != -1)
  {
    swift_once();
  }

  v6 = sub_1D818FE34();
  __swift_project_value_buffer(v6, qword_1EDBBC3A0);
  sub_1D8190DB4();
  v7 = sub_1D818FE14();
  v8 = sub_1D81919E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v12 = v10;
    MEMORY[0x1DA713260](a1, a2);
    MEMORY[0x1DA713260](41, 0xE100000000000000);
    v11 = sub_1D7E1C3D8(0x6372756F53706954, 0xEA00000000002865, &v12);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1D7DFF000, v7, v8, "Presented tip=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA715D00](v10, -1, -1);
    MEMORY[0x1DA715D00](v9, -1, -1);
  }

  if (a3)
  {
    a3(1);
  }
}

void sub_1D818AF88()
{
  v0 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v6 = sub_1D8191AB4();
  v7 = OUTLINED_FUNCTION_24_31();
  v8(v7);
  v9 = sub_1D8190CA4();
  (*(v2 + 8))(v6, v0);
  if (v9)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      OUTLINED_FUNCTION_47_14(Strong, sel_dismissViewControllerAnimated_completion_);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D818B0BC(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1D818B98C(v8, v4, v2);
      MEMORY[0x1DA715D00](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1D7E2CB98(0, v4, v5);
  v6 = sub_1D818B438(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1D818B268(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a1[32];
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v5 = sub_1D818BA04(v13, v8, v5, a2);
      MEMORY[0x1DA715D00](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  v10 = v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1D7E2CB98(0, v8, v10);

  v11 = sub_1D818B594(v10, v8, v5, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v11;
  }

LABEL_6:

  return v5;
}

uint64_t sub_1D818B438(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_1D8190DB4();

    v14 = sub_1D7FF05DC();

    if (v14)
    {
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return sub_1D818BC38(v17, a2, v18, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1D818BC38(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D818B594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v24 = result;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_11:
    v28 = v12 | (v6 << 6);
    v15 = *(v4 + 40);
    if (*(v4 + 48))
    {
      v16 = *(v4 + 56);
      v30 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 24);
      sub_1D8190DB4();

      swift_unknownObjectRetain();
      v18(ObjectType, v16);
      v4 = a4;
      swift_unknownObjectRelease();
      sub_1D818F154();
      v5 = a3;

      v15 = v30;
      v19 = v31;
    }

    else
    {
      sub_1D8190DB4();

      v19 = 3;
    }

    v20 = sub_1D7FF0B30(v15, v19);

    v10 = v29;
    if (v20)
    {
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_18:
        v22 = sub_1D818BC38(v24, a2, v25, v5);

        return v22;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v29 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D818B7AC(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v21 = a1;
    v22 = 0;
    v20 = a2;
    v5 = 0;
    v6 = 1 << *(a3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a3 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v13 = v10 | (v5 << 6);
      v14 = *(*(a3 + 56) + 8 * v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      v16 = v14;
      sub_1D8190DB4();
      if (Strong && (Strong, v17 = v16, v18 = swift_unknownObjectWeakLoadStrong(), v17, v18))
      {

        *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
LABEL_20:
          sub_1D7E2CBFC(v21, v20, v22, a3);

          return;
        }
      }

      else
      {
        TipPresentation.teardown()();
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_20;
      }

      v12 = *(a3 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1D818B98C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1D818B438(v5, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1D818BA04(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = sub_1D818B594(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1D818BAA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D818C33C(0, &qword_1ECA12450, type metadata accessor for CGSize, sub_1D7EF7254);
  result = sub_1D8192444();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = (*(v4 + 48) + 24 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 2);
    v20 = (*(v4 + 56) + 16 * v15);
    v21 = *v20;
    v22 = v20[1];
    sub_1D8190DB4();
    result = sub_1D806554C(v17, v18, v9, v19, v21, v22);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D818BC38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D818C2C8(0, &qword_1EDBB2D40, type metadata accessor for TipPlacement, MEMORY[0x1E69E6EC8]);
  result = sub_1D8192444();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D81927E4();
    sub_1D8190DB4();

    sub_1D8190FF4();
    result = sub_1D8192824();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1D818BE98()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v6;
  sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  if (!v3)
  {
    goto LABEL_27;
  }

  if (v1[2] == v3)
  {

LABEL_27:
    OUTLINED_FUNCTION_100();
    return;
  }

  v51 = v11;
  sub_1D818C2C8(0, &qword_1ECA12440, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6EC8]);
  v13 = sub_1D8192444();
  if (v5 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v50;
  }

  v15 = 0;
  v48 = v13;
  v49 = v55 + 16;
  v16 = v55 + 32;
  v17 = v13 + 64;
  v18 = v51;
  v47 = v1;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v53 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = v1[7];
    v26 = (v1[6] + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = v55;
    v54 = *(v55 + 72);
    v30 = v52;
    (*(v55 + 16))(v52, v25 + v54 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v33 = v19;
    v34 = v28;
    v16 = v20;
    v31(v56, v32, v33);
    v35 = v48;
    sub_1D81927E4();
    sub_1D8190DB4();
    sub_1D8190FF4();
    v36 = sub_1D8192824();
    v37 = -1 << *(v35 + 32);
    v38 = v36 & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v17 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      v18 = v51;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v17 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v17 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    v18 = v51;
LABEL_25:
    *(v17 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v45 = (*(v35 + 48) + 16 * v40);
    *v45 = v34;
    v45[1] = v27;
    v31((*(v35 + 56) + v40 * v54), v56, v18);
    ++*(v35 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_30;
    }

    v1 = v47;
    v14 = v53;
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v5)
    {
      goto LABEL_27;
    }

    v23 = v50[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v53 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1D818C218(uint64_t a1, void *a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  v3 = sub_1D8191304();

  [a2 setPassthroughViews_];
}

void sub_1D818C2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D818C33C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D8192454();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1D818C3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_iconView;
  *&v6[v12] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v6[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_onboardingFlowDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v13 = &v6[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_continueCallback];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v6[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_manageCallback];
  *v14 = a5;
  v14[1] = a6;
  v24 = a6;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  sub_1D7E19F24(a3);
  sub_1D7E19F24(a5);
  v17 = [v16 bundleForClass_];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_186();

  v18 = [v16 bundleForClass_];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_186();

  v19 = sub_1D8190EE4();

  v20 = sub_1D8190EE4();

  v26.receiver = v6;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, 0, 2, 0x80000001D81DAA40);

  v22 = v21;
  [v22 setModalInPresentation_];
  sub_1D7E418F4(a5, v24);
  sub_1D7E418F4(a3, a4);

  swift_unknownObjectRelease();
  return v22;
}

void sub_1D818C64C()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_iconView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [objc_opt_self() configurationWithPointSize_];
  [v2 setPreferredSymbolConfiguration_];
  sub_1D7E471D0();
  v3 = sub_1D7E47238();
  [v2 setImage_];

  [v2 sizeToFit];
  v4 = [v1 headerView];
  v5 = [v4 customIconContainerView];

  [v5 addSubview_];
  v6 = [objc_opt_self() boldButton];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  OUTLINED_FUNCTION_7();
  v10 = OUTLINED_FUNCTION_1_186();
  v12 = v11;

  sub_1D818CF98(v10, v12, 0, v6);
  [v6 addTarget:v1 action:sel_didTapContinue forControlEvents:{64, 0x80000001D81DA930}];
  v13 = [v1 buttonTray];
  [v13 addButton_];

  v14 = [objc_opt_self() linkButton];
  v15 = [v8 bundleForClass_];
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_1_186();
  v18 = v17;

  sub_1D818CF98(v16, v18, 0, v14);
  [v14 addTarget:v1 action:sel_didTapManage forControlEvents:{64, 0x80000001D81DA980}];
  v19 = [v1 buttonTray];
  [v19 addButton_];
}

void sub_1D818CA04()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_iconView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tintColor];

    [v1 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D818CAF8()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 headerView];
  v3 = [v2 customIconContainerView];

  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_iconView];
    v5 = [v4 centerXAnchor];
    v6 = [v3 centerXAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    [v7 setActive_];
    v8 = [v4 centerYAnchor];
    v9 = [v3 centerYAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    [v10 setActive_];
    v11.receiver = v0;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_updateViewConstraints);
  }
}

uint64_t sub_1D818CE94(void *a1)
{
  v2 = (v1 + *a1);
  if (*v2)
  {
    (*v2)(v1);
  }

  v3 = v1 + OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_onboardingFlowDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D818CF98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_1D818D00C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D8191E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v14 = *(v2 + 16);
  (*(v6 + 16))(v8, a1, v5, v11);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1D8190DB4();
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    v14 = v17(v13);
    (*(v9 + 8))(v13, v4);
  }

  return v14;
}

uint64_t StateCommandTitle.init(default:block:)()
{
  OUTLINED_FUNCTION_1_6();
  v6 = v5();
  v8 = v7;
  result = (*(*(v0 - 8) + 8))(v3, v0);
  v4[2] = v6;
  v4[3] = v8;
  *v4 = v2;
  v4[1] = v1;
  return result;
}

uint64_t StateCommandTitle<>.init(off:on:)()
{
  OUTLINED_FUNCTION_1_6();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v0;
  v8[4] = v3;
  v8[5] = v2;
  OUTLINED_FUNCTION_0_32();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D818D320;
  *(v9 + 24) = v8;
  *v4 = sub_1D818D370;
  v4[1] = v9;

  return sub_1D8190DB4();
}

uint64_t sub_1D818D320(char a1)
{
  v2 = (v1 + 16);
  if ((a1 & 1) == 0)
  {
    v2 = (v1 + 32);
  }

  v3 = *v2;
  sub_1D8190DB4();
  return v3;
}

uint64_t StateCommandTitle<>.init(_:)@<X0>(uint64_t (*a1)(unsigned __int8 *)@<X0>, uint64_t (*a2)(unsigned __int8 *)@<X1>, uint64_t (**a3)(unsigned __int8 *)@<X8>)
{
  a3[2] = a1;
  a3[3] = a2;
  OUTLINED_FUNCTION_0_32();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_0_32();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D7F8DD7C;
  *(v7 + 24) = v6;
  *a3 = sub_1D818D488;
  a3[1] = v7;

  return sub_1D8190DB4();
}

uint64_t sub_1D818D434()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1D818D4AC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double Pluggable.pluginLayoutTransitionManager.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static PillViewIconURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D818E5F4())
  {
    v4 = type metadata accessor for PillViewIconURL();
    if (sub_1D818E5F4() & 1) != 0 && (sub_1D818E5F4())
    {
      v5 = *(v4 + 28);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_1D7E9F44C();
          v8 = v7;
          v9 = v6;
          v10 = sub_1D8191CC4();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for PillViewIconURL()
{
  result = qword_1EDBB1640;
  if (!qword_1EDBB1640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PillViewIconURL.url(at:)(double a1)
{
  if (a1 < 3.0)
  {
    if (a1 >= 2.0)
    {
      v2 = 20;
      goto LABEL_6;
    }

    if (a1 >= 1.0)
    {
      goto LABEL_7;
    }
  }

  v2 = 24;
LABEL_6:
  v1 += *(type metadata accessor for PillViewIconURL() + v2);
LABEL_7:
  sub_1D818E644();
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_1_187();

  return v4(v3, v1);
}

uint64_t PillViewIconURL.x1URL.getter()
{
  sub_1D818E644();
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_1_187();

  return v2(v1, v0);
}

uint64_t PillViewIconURL.x2URL.getter()
{
  type metadata accessor for PillViewIconURL();
  sub_1D818E644();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_187();

  return v1(v0);
}

uint64_t PillViewIconURL.x3URL.getter()
{
  type metadata accessor for PillViewIconURL();
  sub_1D818E644();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_187();

  return v1(v0);
}

void *PillViewIconURL.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for PillViewIconURL() + 28));
  v2 = v1;
  return v1;
}

uint64_t PillViewIconURL.init(x1URL:x2URL:x3URL:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D818E644();
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for PillViewIconURL();
  v12(a5 + v13[5], a2, v10);
  result = (v12)(a5 + v13[6], a3, v10);
  *(a5 + v13[7]) = a4;
  return result;
}

void sub_1D818DA44()
{
  sub_1D818E644();
  if (v0 <= 0x3F)
  {
    sub_1D8088668();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D818DAE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 horizontalSizeClass] == 2)
  {
    if (qword_1EDBAF348 != -1)
    {
      swift_once();
    }

    v3 = &unk_1EDBAF350;
  }

  else
  {
    if (qword_1EDBAF3D0 != -1)
    {
      swift_once();
    }

    v3 = &unk_1EDBAF3D8;
  }

  memcpy(__dst, v3, 0x7AuLL);
  memcpy(a2, v3, 0x7AuLL);
  return sub_1D7E22264(__dst, &v5);
}

uint64_t BlueprintCompositionalLayoutOptionsProviderType.layoutOptions(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 horizontalSizeClass] == 2)
  {
    if (qword_1EDBAF348 != -1)
    {
      swift_once();
    }

    v3 = &unk_1EDBAF350;
  }

  else
  {
    if (qword_1EDBAF3D0 != -1)
    {
      swift_once();
    }

    v3 = &unk_1EDBAF3D8;
  }

  memcpy(__dst, v3, 0x7AuLL);
  memcpy(a2, v3, 0x7AuLL);
  return sub_1D7E22264(__dst, &v5);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}