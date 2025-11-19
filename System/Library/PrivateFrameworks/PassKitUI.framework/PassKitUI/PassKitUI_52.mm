uint64_t sub_1BD5AFE70@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v128 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBF8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v108 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v117 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC08);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v108 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC10);
  v123 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v113 = &v108 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC18);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v24);
  v121 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v120 = &v108 - v28;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC20);
  MEMORY[0x1EEE9AC00](v114, v29);
  v31 = (&v108 - v30);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC28);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v32);
  v119 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v122 = &v108 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC30);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v41.n128_f64[0] = MEMORY[0x1EEE9AC00](v39, v40);
  v133 = &v108 - v42;
  LODWORD(v115) = a1;
  v132 = v16;
  v131 = v20;
  v130 = v9;
  v129 = v10;
  v118 = v8;
  v127 = v43;
  v116 = v5;
  if (a1)
  {
    v44 = 0;
    v124 = 0;
    v45 = 0;
    v125 = 0;
  }

  else
  {
    type metadata accessor for AddressSearchingModel();
    sub_1BD5B37E0(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel);
    sub_1BE04E3C4();
    v46 = v21;
    v47 = swift_allocObject();
    v48 = *(a2 + 112);
    v47[7] = *(a2 + 96);
    v47[8] = v48;
    v47[9] = *(a2 + 128);
    v49 = *(a2 + 48);
    v47[3] = *(a2 + 32);
    v47[4] = v49;
    v50 = *(a2 + 80);
    v47[5] = *(a2 + 64);
    v47[6] = v50;
    v51 = *(a2 + 16);
    v47[1] = *a2;
    v47[2] = v51;
    sub_1BD5B30DC(a2, v138);
    v44 = sub_1BE04E954();
    v124 = v52;
    v53 = v52;
    v125 = v47;
    v21 = v46;
    sub_1BE048964();
    v45 = sub_1BD5B3350;
  }

  v54 = *(a2 + 64);
  v139 = v54;
  v55 = v54 >> 62;
  if (v54 >> 62)
  {
    v56 = sub_1BE053704();
  }

  else
  {
    v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v126 = v44;
  if (v56 && (*(a2 + 56) & 1) == 0 && (v115 & 1) != 0)
  {
    v108 = v21;
    v115 = v45;
    *v31 = sub_1BE051CE4();
    v31[1] = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC50);
    sub_1BD5B221C(a2, v31 + *(v58 + 44));
    v138[0] = sub_1BE051274();
    v59 = sub_1BE0518D4();
    *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC58) + 36)) = v59;
    v60 = v31 + *(v114 + 36);
    v60[32] = 0;
    *v60 = 0u;
    *(v60 + 1) = 0u;
    sub_1BE04E554();
    sub_1BD5B3550();
    sub_1BE050BB4();
    sub_1BD0DE53C(v31, &qword_1EBD4BC20);
    if ((v56 & 0x8000000000000000) != 0)
    {
      v61 = 4;
      if (!v55)
      {
LABEL_14:
        result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    else
    {
      if (v56 >= 4)
      {
        v61 = 4;
      }

      else
      {
        v61 = v56;
      }

      if (!v55)
      {
        goto LABEL_14;
      }
    }

    result = sub_1BE053704();
    if (result < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    result = sub_1BE053704();
LABEL_19:
    if (result >= v61)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        sub_1BD0E8CBC();
        sub_1BE048C84();
        v63 = 0;
        do
        {
          v64 = v63 + 1;
          sub_1BE053864();
          v63 = v64;
        }

        while (v61 != v64);
        if (v55)
        {
          sub_1BD0DE53C(&v139, &qword_1EBD38868);
          v65 = sub_1BE0539D4();
LABEL_27:
          v134 = v65;
          v135 = v66;
          v136 = v67;
          v137 = v68;
          swift_getKeyPath();
          v69 = swift_allocObject();
          v70 = *(a2 + 112);
          v69[7] = *(a2 + 96);
          v69[8] = v70;
          v69[9] = *(a2 + 128);
          v71 = *(a2 + 48);
          v69[3] = *(a2 + 32);
          v69[4] = v71;
          v72 = *(a2 + 80);
          v69[5] = *(a2 + 64);
          v69[6] = v72;
          v73 = *(a2 + 16);
          v69[1] = *a2;
          v69[2] = v73;
          sub_1BD5B30DC(a2, v138);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC88);
          sub_1BD0DE4F4(&qword_1EBD4BC90, &qword_1EBD4BC80);
          sub_1BD5B36F4();
          v74 = v120;
          sub_1BE0519C4();
          v75 = v109;
          v76 = *(v109 + 16);
          v77 = v119;
          v78 = v110;
          v76(v119, v122, v110);
          v79 = v111;
          v114 = *(v111 + 16);
          v80 = v74;
          v81 = v112;
          (v114)(v121, v80, v112);
          v82 = v113;
          v76(v113, v77, v78);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCA0);
          v84 = v121;
          (v114)(v82 + *(v83 + 48), v121, v81);
          v85 = *(v79 + 8);
          v85(v120, v81);
          v86 = *(v75 + 8);
          v86(v122, v78);
          v85(v84, v81);
          v86(v119, v78);
          v87 = v133;
          sub_1BD0890C0(v82, v133);
          (*(v123 + 56))(v87, 0, 1, v108);
          v45 = v115;
          goto LABEL_28;
        }
      }

      else
      {
        sub_1BE048C84();
      }

      v67 = 0;
      v65 = v54 & 0xFFFFFFFFFFFFFF8;
      v66 = (v54 & 0xFFFFFFFFFFFFFF8) + 32;
      v68 = (2 * v61) | 1;
      goto LABEL_27;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  (*(v123 + 56))(v133, 1, 1, v21, v41);
LABEL_28:
  v88 = 1;
  v89 = v131;
  v90 = v130;
  v91 = v129;
  if ((*(a2 + 56) & 1) == 0)
  {
    v92 = swift_allocObject();
    v93 = *(a2 + 112);
    v92[7] = *(a2 + 96);
    v92[8] = v93;
    v92[9] = *(a2 + 128);
    v94 = *(a2 + 48);
    v92[3] = *(a2 + 32);
    v92[4] = v94;
    v95 = *(a2 + 80);
    v92[5] = *(a2 + 64);
    v92[6] = v95;
    v96 = *(a2 + 16);
    v92[1] = *a2;
    v92[2] = v96;
    sub_1BD5B30DC(a2, v138);
    v97 = v118;
    sub_1BE051704();
    v98 = sub_1BE050234();
    v99 = v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F50) + 36);
    *v99 = v98;
    *(v99 + 8) = 0u;
    *(v99 + 24) = 0u;
    *(v99 + 40) = 1;
    v138[0] = sub_1BE051274();
    *(v97 + *(v116 + 36)) = sub_1BE0518D4();
    sub_1BE052434();
    sub_1BD5B3360();
    v100 = v117;
    sub_1BE050DE4();

    sub_1BD0DE53C(v97, &qword_1EBD4BBF8);
    sub_1BD0DE204(v100, v89, &qword_1EBD4BC00);
    v88 = 0;
  }

  (*(v91 + 56))(v89, v88, 1, v90);
  v101 = v133;
  v102 = v127;
  sub_1BD08904C(v133, v127);
  v103 = v132;
  sub_1BD0DE19C(v89, v132, &qword_1EBD4BC08);
  v104 = v128;
  v105 = v126;
  v106 = v124;
  *v128 = v126;
  v104[1] = v106;
  v104[2] = v45;
  v104[3] = v125;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC48);
  sub_1BD08904C(v102, v104 + *(v107 + 48));
  sub_1BD0DE19C(v103, v104 + *(v107 + 64), &qword_1EBD4BC08);
  sub_1BD5B34D0(v105, v106);
  sub_1BD5B3510(v105, v106);
  sub_1BD0DE53C(v89, &qword_1EBD4BC08);
  sub_1BD0DE53C(v101, &qword_1EBD4BC30);
  sub_1BD0DE53C(v103, &qword_1EBD4BC08);
  sub_1BD0DE53C(v102, &qword_1EBD4BC30);
  return sub_1BD5B3510(v105, v106);
}

uint64_t sub_1BD5B0C48(void *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    return (*(a2 + 72))();
  }

  if (!a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    sub_1BE052434();
    v4 = sub_1BE052404();

    [v3 setValueSource_];

    a1 = 0;
  }

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90);
  return sub_1BE0516B4();
}

uint64_t sub_1BD5B0D3C(void **a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16[-v6];
  v8 = *a1;
  v9 = swift_allocObject();
  v10 = a2[7];
  *(v9 + 112) = a2[6];
  *(v9 + 128) = v10;
  *(v9 + 144) = a2[8];
  v11 = a2[3];
  *(v9 + 48) = a2[2];
  *(v9 + 64) = v11;
  v12 = a2[5];
  *(v9 + 80) = a2[4];
  *(v9 + 96) = v12;
  v13 = a2[1];
  *(v9 + 16) = *a2;
  *(v9 + 32) = v13;
  *(v9 + 160) = v8;
  v17 = v8;
  sub_1BD5B30DC(a2, v18);
  type metadata accessor for AddressSearchingResults.ResultRow();
  sub_1BD5B37E0(&qword_1EBD4B6E8, type metadata accessor for AddressSearchingResults.ResultRow);
  v14 = v8;
  sub_1BE051704();
  v18[0] = sub_1BE051274();
  *&v7[*(v4 + 36)] = sub_1BE0518D4();
  sub_1BE052434();
  sub_1BD598D7C();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v7, &qword_1EBD4B6C8);
}

uint64_t sub_1BD5B0F40(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B0A4();
  type metadata accessor for AddressEditingModel();
  swift_allocObject();
  sub_1BD840B14(v7);
  sub_1BE052434();
  v8 = sub_1BE052404();

  [a1 setValueSource_];

  v9 = a1;
  sub_1BD84367C(v9);

  v10 = v2[1];
  v18 = *v2;
  v19 = v10;
  v20 = *(v2 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v18;
  v22 = v19;
  *&v23 = v20;
  sub_1BE048964();
  sub_1BD10D494(&v18, v15);
  sub_1BE04D8C4();
  sub_1BD841418();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v31 = v15[10];
  v32 = v15[11];
  v33 = v15[12];
  v27 = v15[6];
  v28 = v15[7];
  v29 = v15[8];
  v30 = v15[9];
  v23 = v15[2];
  v24 = v15[3];
  v25 = v15[4];
  v26 = v15[5];
  v21 = v15[0];
  v22 = v15[1];
  LOBYTE(v7) = sub_1BD4F7DB0();
  sub_1BD4FBC18(&v21);
  if (v7 & 1) != 0 && sub_1BD20B8F0() && (sub_1BD20BAFC())
  {
    (*(v2 + 9))(v9);
  }

  else
  {
    v12 = *(v2 + 16);
    v16 = *(v2 + 17);
    v17 = v12;
    *&v15[0] = v12;
    *(&v15[0] + 1) = v16;
    v14[1] = v9;
    v13 = v9;
    sub_1BD0DE19C(&v17, v14, &qword_1EBD4BBD0);
    sub_1BD0DE19C(&v16, v14, &qword_1EBD4BBD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90);
    sub_1BE0516B4();

    sub_1BD0DE53C(&v17, &qword_1EBD4BBD0);
    return sub_1BD0DE53C(&v16, &qword_1EBD4BBD8);
  }
}

id sub_1BD5B123C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for AddressSearchingResults.ResultRow();
  v4 = *(v3 + 20);
  v5 = *MEMORY[0x1E6980FA8];
  v6 = sub_1BE050554();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;

  return a1;
}

uint64_t sub_1BD5B131C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BE052434();
  v1 = sub_1BE052404();

  [v0 setValueSource_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90);
  return sub_1BE0516B4();
}

id sub_1BD5B13D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v28[2] = v10;
    v28[3] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE051224();
    v22 = sub_1BE050564();
    v24 = v23;
    LOBYTE(v10) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD5B15F0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - v12;
  v15 = *(v0 + 48);
  v16 = *MEMORY[0x1E69B8068];
  v17 = *(v2 + 104);
  if (v15 == 1)
  {
    v17(v9, v16, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (!v15)
  {
    v17(&v21 - v12, v16, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v14, v1);
      return v20;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17(v5, v16, v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD5B1850(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8);
  sub_1BD4588AC();
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

id sub_1BD5B1A08@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v26[-v12 - 8];
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v4 + 8))(v7, v3);
    v19 = swift_allocObject();
    v20 = a1[7];
    v19[7] = a1[6];
    v19[8] = v20;
    v19[9] = a1[8];
    v21 = a1[3];
    v19[3] = a1[2];
    v19[4] = v21;
    v22 = a1[5];
    v19[5] = a1[4];
    v19[6] = v22;
    v23 = a1[1];
    v19[1] = *a1;
    v19[2] = v23;
    v27[0] = v16;
    v27[1] = v18;
    MEMORY[0x1EEE9AC00](v19, v24);
    *(&v25 - 4) = v27;
    *(&v25 - 3) = 0x6B72616D78;
    *(&v25 - 2) = 0xE500000000000000;
    sub_1BD5B30DC(a1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BE051704();

    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BE050DE4();

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5B1D70(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesView();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBC0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38[-v10];
  v12 = *a1;
  if (*a1)
  {
    v45 = *(a2 + 40);
    v13 = *(a2 + 16);
    v42 = *a2;
    v43 = v13;
    v44 = *(a2 + 32);
    v14 = swift_allocObject();
    v15 = *(a2 + 112);
    v14[7] = *(a2 + 96);
    v14[8] = v15;
    v14[9] = *(a2 + 128);
    v16 = *(a2 + 48);
    v14[3] = *(a2 + 32);
    v14[4] = v16;
    v17 = *(a2 + 80);
    v14[5] = *(a2 + 64);
    v14[6] = v17;
    v18 = *(a2 + 16);
    v14[1] = *a2;
    v14[2] = v18;
    v19 = swift_allocObject();
    v20 = *(a2 + 112);
    v19[7] = *(a2 + 96);
    v19[8] = v20;
    v19[9] = *(a2 + 128);
    v21 = *(a2 + 48);
    v19[3] = *(a2 + 32);
    v19[4] = v21;
    v22 = *(a2 + 80);
    v19[5] = *(a2 + 64);
    v19[6] = v22;
    v23 = *(a2 + 16);
    v19[1] = *a2;
    v19[2] = v23;
    v39 = 0;
    v38[7] = 0;
    sub_1BD5B30DC(a2, v40);
    sub_1BD5B30DC(a2, v40);
    v24 = v12;
    sub_1BD0DE19C(&v45, v40, &qword_1EBD4BBC8);
    sub_1BD10D494(&v42, v40);
    sub_1BE051694();
    v25 = v42;
    v26 = v43;
    *(v11 + 1) = v45;
    *(v11 + 2) = v25;
    v27 = v40[0];
    v28 = v41;
    v29 = v39;
    *v11 = 0;
    *(v11 + 1) = v12;
    *(v11 + 3) = v26;
    *(v11 + 8) = v44;
    *(v11 + 9) = sub_1BD5B32F8;
    *(v11 + 10) = v14;
    *(v11 + 11) = sub_1BD5B3300;
    *(v11 + 12) = v19;
    *(v11 + 13) = sub_1BDA50324;
    *(v11 + 14) = 0;
    v11[120] = v29;
    v11[128] = v27;
    *(v11 + 17) = v28;
    swift_storeEnumTagMultiPayload();
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView);
    return sub_1BE04F9A4();
  }

  else
  {
    *&v42 = *(a2 + 64);
    v31 = v42;
    v32 = swift_allocObject();
    v33 = *(a2 + 112);
    *(v32 + 7) = *(a2 + 96);
    *(v32 + 8) = v33;
    *(v32 + 9) = *(a2 + 128);
    v34 = *(a2 + 48);
    *(v32 + 3) = *(a2 + 32);
    *(v32 + 4) = v34;
    v35 = *(a2 + 80);
    *(v32 + 5) = *(a2 + 64);
    *(v32 + 6) = v35;
    v36 = *(a2 + 16);
    *(v32 + 1) = *a2;
    *(v32 + 2) = v36;
    *(v7 + *(v4 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    *v7 = v31;
    v37 = (v7 + *(v4 + 24));
    *v37 = sub_1BD5B3278;
    v37[1] = v32;
    sub_1BD598AE0(v7, v11);
    swift_storeEnumTagMultiPayload();
    sub_1BD5B30DC(a2, v40);
    sub_1BD0DE19C(&v42, v40, &qword_1EBD38868);
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView);
    sub_1BE04F9A4();
    return sub_1BD5B329C(v7);
  }
}

uint64_t sub_1BD5B21A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90);
  sub_1BE0516B4();
  return (*(a2 + 72))(a1);
}

uint64_t sub_1BD5B221C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1BE051994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCA8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCB0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v37 - v25;
  *v26 = sub_1BE04F504();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCB8);
  sub_1BD5B25A4(a1, &v26[*(v27 + 44)]);
  *v18 = sub_1BE04F7B4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v28 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCC0) + 44)];
  sub_1BE051984();
  v40 = 1;
  v29 = *(v4 + 16);
  v29(v7, v11, v3);
  v30 = v40;
  *v28 = 0;
  v28[8] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCC8);
  v29(&v28[*(v31 + 48)], v7, v3);
  v32 = *(v4 + 8);
  v32(v11, v3);
  v32(v7, v3);
  sub_1BD0DE19C(v26, v22, &qword_1EBD4BCB0);
  v33 = v38;
  sub_1BD0DE19C(v18, v38, &qword_1EBD4BCA8);
  v34 = v39;
  sub_1BD0DE19C(v22, v39, &qword_1EBD4BCB0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCD0);
  sub_1BD0DE19C(v33, v34 + *(v35 + 48), &qword_1EBD4BCA8);
  sub_1BD0DE53C(v18, &qword_1EBD4BCA8);
  sub_1BD0DE53C(v26, &qword_1EBD4BCB0);
  sub_1BD0DE53C(v33, &qword_1EBD4BCA8);
  return sub_1BD0DE53C(v22, &qword_1EBD4BCB0);
}

id sub_1BD5B25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v125 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v110 = &v102[-v4];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCD8);
  MEMORY[0x1EEE9AC00](v109, v5);
  v111 = &v102[-v6];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCE0);
  v122 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v7);
  v108 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v107 = &v102[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCE8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v123 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v127 = &v102[-v17];
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v117 = &v102[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v102[-v25];
  v27 = *(v19 + 104);
  v115 = *MEMORY[0x1E69B8068];
  v116 = v19 + 104;
  v114 = v27;
  v27(&v102[-v25], v24);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    v33 = *(v19 + 8);
    v121 = v18;
    v106 = v19 + 8;
    v104 = v33;
    v33(v26, v18);
    v128 = v30;
    v129 = v32;
    v105 = sub_1BD0DDEBC();
    v34 = sub_1BE0506C4();
    v36 = v35;
    LOBYTE(v29) = v37;
    sub_1BE050324();
    v38 = sub_1BE0505F4();
    v40 = v39;
    v42 = v41;

    sub_1BD0DDF10(v34, v36, v29 & 1);

    sub_1BE051234();
    v43 = sub_1BE050564();
    v119 = v44;
    v120 = v45;
    v47 = v46;

    sub_1BD0DDF10(v38, v40, v42 & 1);

    v48 = sub_1BE050204();
    sub_1BE04E1F4();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v47 & 1;
    v147 = v47 & 1;
    v144 = 0;
    v58 = v125;
    v59 = *(v125 + 64);
    if (v59 >> 62)
    {
      v60 = sub_1BE053704();
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = 1;
    v62 = v126;
    v63 = v121;
    if (v60 < 5)
    {
      goto LABEL_7;
    }

    v103 = v47 & 1;
    v64 = v48;
    v65 = v117;
    v114(v117, v115, v121);
    result = PKPassKitBundle();
    if (result)
    {
      v66 = result;
      v67 = sub_1BE04B6F4();
      v69 = v68;

      v104(v65, v63);
      *&v140 = v67;
      *(&v140 + 1) = v69;
      v70 = swift_allocObject();
      v71 = v58[7];
      v70[7] = v58[6];
      v70[8] = v71;
      v70[9] = v58[8];
      v72 = v58[3];
      v70[3] = v58[2];
      v70[4] = v72;
      v73 = v58[5];
      v70[5] = v58[4];
      v70[6] = v73;
      v74 = v58[1];
      v70[1] = *v58;
      v70[2] = v74;
      sub_1BD5B30DC(v58, &v128);
      v75 = v110;
      sub_1BE051744();
      v76 = sub_1BE0511F4();
      KeyPath = swift_getKeyPath();
      v78 = v111;
      (*(v112 + 32))(v111, v75, v113);
      v79 = &v78[*(v109 + 36)];
      *v79 = KeyPath;
      v79[1] = v76;
      LOBYTE(v76) = sub_1BE050224();
      sub_1BE04E1F4();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v88 = v78;
      v89 = v108;
      sub_1BD0DE204(v88, v108, &qword_1EBD4BCD8);
      v90 = &v89[*(v62 + 36)];
      *v90 = v76;
      *(v90 + 1) = v81;
      *(v90 + 2) = v83;
      *(v90 + 3) = v85;
      *(v90 + 4) = v87;
      v90[40] = 0;
      v91 = v89;
      v92 = v107;
      sub_1BD0DE204(v91, v107, &qword_1EBD4BCE0);
      sub_1BD0DE204(v92, v127, &qword_1EBD4BCE0);
      v61 = 0;
      v48 = v64;
      v57 = v103;
LABEL_7:
      v118 = v48;
      v93 = v127;
      (*(v122 + 56))(v127, v61, 1, v62);
      v94 = v123;
      sub_1BD0DE19C(v93, v123, &qword_1EBD4BCE8);
      v95 = v119;
      *&v140 = v43;
      *(&v140 + 1) = v119;
      LOBYTE(v141) = v57;
      *(&v141 + 1) = *v146;
      DWORD1(v141) = *&v146[3];
      v126 = v43;
      v96 = v120;
      *(&v141 + 1) = v120;
      LOBYTE(v142) = v48;
      *(&v142 + 1) = *v145;
      DWORD1(v142) = *&v145[3];
      *(&v142 + 1) = v50;
      *&v143[0] = v52;
      *(&v143[0] + 1) = v54;
      *&v143[1] = v56;
      BYTE8(v143[1]) = 0;
      v97 = v140;
      v98 = v141;
      v99 = v124;
      *(v124 + 57) = *(v143 + 9);
      v100 = v143[0];
      *(v99 + 32) = v142;
      *(v99 + 48) = v100;
      *v99 = v97;
      *(v99 + 16) = v98;
      *(v99 + 80) = 0;
      *(v99 + 88) = 1;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCF0);
      sub_1BD0DE19C(v94, v99 + *(v101 + 64), &qword_1EBD4BCE8);
      sub_1BD0DE19C(&v140, &v128, &unk_1EBD3DF90);
      sub_1BD0DE53C(v93, &qword_1EBD4BCE8);
      sub_1BD0DE53C(v94, &qword_1EBD4BCE8);
      v128 = v126;
      v129 = v95;
      v130 = v57;
      *v131 = *v146;
      *&v131[3] = *&v146[3];
      v132 = v96;
      v133 = v118;
      *v134 = *v145;
      *&v134[3] = *&v145[3];
      v135 = v50;
      v136 = v52;
      v137 = v54;
      v138 = v56;
      v139 = 0;
      return sub_1BD0DE53C(&v128, &unk_1EBD3DF90);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI20ShippingContactLabelOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI21ShippingAddressPickerV5Sheet33_C08B7A738403456556CE3CC2563085A5LLOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD5B2EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1BD5B2EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5B2F8C()
{
  result = qword_1EBD4BB60;
  if (!qword_1EBD4BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB68);
    sub_1BE04E9A4();
    sub_1BD0DE4F4(&qword_1EBD4BB70, &qword_1EBD4BB68);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB60);
  }

  return result;
}

unint64_t sub_1BD5B3114()
{
  result = qword_1EBD4BBA0;
  if (!qword_1EBD4BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBA0);
  }

  return result;
}

unint64_t sub_1BD5B3168()
{
  result = qword_1EBD4BBA8;
  if (!qword_1EBD4BBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB98);
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBA8);
  }

  return result;
}

unint64_t sub_1BD5B3224()
{
  result = qword_1EBD4BBB0;
  if (!qword_1EBD4BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBB0);
  }

  return result;
}

uint64_t sub_1BD5B329C(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD5B3360()
{
  result = qword_1EBD4BC38;
  if (!qword_1EBD4BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BBF8);
    sub_1BD5B3418();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC38);
  }

  return result;
}

unint64_t sub_1BD5B3418()
{
  result = qword_1EBD4BC40;
  if (!qword_1EBD4BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F50);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC40);
  }

  return result;
}

uint64_t sub_1BD5B34D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD5B3510(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BD5B3550()
{
  result = qword_1EBD4BC60;
  if (!qword_1EBD4BC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC20);
    sub_1BD5B3608();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC60);
  }

  return result;
}

unint64_t sub_1BD5B3608()
{
  result = qword_1EBD4BC68;
  if (!qword_1EBD4BC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC58);
    sub_1BD0DE4F4(&qword_1EBD4BC70, &qword_1EBD4BC78);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC68);
  }

  return result;
}

unint64_t sub_1BD5B36F4()
{
  result = qword_1EBD4BC98;
  if (!qword_1EBD4BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC88);
    sub_1BD598D7C();
    sub_1BD5B37E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC98);
  }

  return result;
}

uint64_t sub_1BD5B37E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_64()
{

  if (*(v0 + 64) >= 5uLL)
  {
  }

  sub_1BD0D4604(*(v0 + 104), *(v0 + 112));
  sub_1BD035CB4(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 144);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD5B391C()
{
  result = qword_1EBD4BCF8;
  if (!qword_1EBD4BCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB18);
    sub_1BE04FE84();
    sub_1BD0DE4F4(&qword_1EBD4BB88, &qword_1EBD4BB18);
    sub_1BD5B37E0(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    sub_1BD5B3114();
    sub_1BD5B3168();
    swift_getOpaqueTypeConformance2();
    sub_1BD5B37E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BCF8);
  }

  return result;
}

id sub_1BD5B3B14(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD5B3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BDA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = PKAccessibilityIDSet(Strong, *MEMORY[0x1E69B9C98]);
    MEMORY[0x1EEE9AC00](v16, v17);
    v20[-2] = a4;
    sub_1BD5B8A64();
    v18 = v15;
    sub_1BE04FCE4();
    sub_1BE050234();
    sub_1BE04FCD4();
    v19 = *(v6 + 8);
    v19(v9, v5);
    sub_1BE0501C4();
    v20[3] = v5;
    v20[4] = sub_1BD0DE4F4(&qword_1EBD4BDB8, &qword_1EBD4BDA8);
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_1BE04FCD4();
    v19(v13, v5);
    MEMORY[0x1BFB3FEF0](v20);
  }
}

uint64_t sub_1BD5B3E4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  v6 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  sub_1BE048964();
  sub_1BE04B5C4();
  *(v4 + 16) = v3;
  result = sub_1BE051694();
  *a2 = v8;
  a2[1] = v9;
  return result;
}

id PKDashboardFinanceKitSpendingSummaryCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDashboardFinanceKitSpendingSummaryCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 8.0;
  if (v9)
  {
    v10 = 11.0;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_verticalPadding] = v10;
  v11 = _UISolariumFeatureFlagEnabled();
  v12 = 12.0;
  if (v11)
  {
    v12 = 15.0;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_horizontalPadding] = v12;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDashboardFinanceKitSpendingSummaryCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDashboardFinanceKitSpendingSummaryCell.init(coder:)(void *a1)
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = 8.0;
  if (v3)
  {
    v4 = 11.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_verticalPadding] = v4;
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 12.0;
  if (v5)
  {
    v6 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_horizontalPadding] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PKDashboardFinanceKitSpendingSummaryCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD5B43C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD68);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD70);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v23 - v13;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD78);
  sub_1BD5B4608(a1, a2, &v9[*(v15 + 44)]);
  sub_1BE051C94();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v14, &qword_1EBD4BD68);
  v16 = &v14[*(v11 + 44)];
  v17 = v23[5];
  *(v16 + 4) = v23[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v23[6];
  v18 = v23[1];
  *v16 = v23[0];
  *(v16 + 1) = v18;
  v19 = v23[3];
  *(v16 + 2) = v23[2];
  *(v16 + 3) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD80) + 36));
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE0528B4();
  *v21 = &unk_1BE0E5170;
  v21[1] = v20;
  return sub_1BD0DE204(v14, a3, &qword_1EBD4BD70);
}

id sub_1BD5B4608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v63 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v55 - v12;
  v67 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v14 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v15);
  v55 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD90);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v62 = &v55 - v22;
  v65 = a1;
  v77 = a1;
  v78 = a2;
  v66 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD88);
  sub_1BE0516A4();
  v23 = v71;
  swift_getKeyPath();
  v77 = v23;
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  LOBYTE(a2) = *(v23 + 24);

  sub_1BD5B83C4(a2);
  v77 = v24;
  v78 = v25;
  sub_1BD0DDEBC();
  v60 = sub_1BE0506C4();
  v70 = v26;
  v28 = v27;
  v61 = v29;
  KeyPath = swift_getKeyPath();
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC90], 0x8000, 0, *MEMORY[0x1E69DB978]);
  if (result)
  {
    v59 = sub_1BE050484();
    v57 = swift_getKeyPath();
    v68 = v28 & 1;
    v93 = v28 & 1;
    v92 = 0;
    v56 = swift_getKeyPath();
    v77 = v65;
    v78 = v66;
    sub_1BE0516A4();
    v31 = v71;
    swift_getKeyPath();
    v77 = v31;
    sub_1BE04B594();

    v32 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
    swift_beginAccess();
    sub_1BD0DE19C(v31 + v32, v13, &qword_1EBD4BD58);

    v33 = (*(v14 + 48))(v13, 1, v67);
    v58 = a3;
    if (v33 == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD4BD58);
      v34 = 1;
      v35 = v62;
    }

    else
    {
      v36 = v55;
      sub_1BD5B89F4(v13, v55, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
      v77 = v65;
      v78 = v66;
      sub_1BE0516A4();
      v37 = v71;
      swift_getKeyPath();
      v77 = v37;
      sub_1BE04B594();

      v38 = *(v37 + 24);

      sub_1BD0DE204(v36, &v9[v6[5]], &qword_1EBD38DB8);
      v39 = (v36 + *(v67 + 20));
      v40 = *v39;
      v41 = v39[1];
      v42 = *(v36 + *(v67 + 24));
      *&v9[v6[11]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
      swift_storeEnumTagMultiPayload();
      *v9 = v38;
      v43 = &v9[v6[6]];
      *v43 = v40;
      v43[1] = v41;
      *&v9[v6[7]] = v42;
      v9[v6[8]] = 2;
      v9[v6[9]] = 1;
      v9[v6[10]] = 1;
      v35 = v62;
      sub_1BD5B89F4(v9, v62, type metadata accessor for FinanceKitSpendingSummariesGraphView);
      v34 = 0;
    }

    (*(v63 + 56))(v35, v34, 1, v6);
    v44 = v64;
    sub_1BD0DE19C(v35, v64, &qword_1EBD4BD90);
    v45 = v60;
    *&v71 = v60;
    *(&v71 + 1) = v70;
    LOBYTE(v72) = v68;
    *(&v72 + 1) = *v91;
    DWORD1(v72) = *&v91[3];
    v46 = v61;
    *(&v72 + 1) = v61;
    *&v73 = KeyPath;
    *(&v73 + 1) = 1;
    LOBYTE(v74) = 0;
    *(&v74 + 1) = *v90;
    DWORD1(v74) = *&v90[3];
    v47 = v57;
    *(&v74 + 1) = v57;
    v48 = v59;
    v49 = v56;
    *&v75 = v59;
    *(&v75 + 1) = v56;
    v76 = 0x3FE0000000000000;
    v50 = v75;
    v51 = v58;
    *(v58 + 80) = 0x3FE0000000000000;
    v52 = v73;
    v51[3] = v74;
    v51[4] = v50;
    v53 = v72;
    *v51 = v71;
    v51[1] = v53;
    v51[2] = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD98);
    sub_1BD0DE19C(v44, v51 + *(v54 + 48), &qword_1EBD4BD90);
    sub_1BD0DE19C(&v71, &v77, &qword_1EBD4BDA0);
    sub_1BD0DE53C(v35, &qword_1EBD4BD90);
    sub_1BD0DE53C(v44, &qword_1EBD4BD90);
    v77 = v45;
    v78 = v70;
    v79 = v68;
    *v80 = *v91;
    *&v80[3] = *&v91[3];
    v81 = v46;
    v82 = KeyPath;
    v83 = 1;
    v84 = 0;
    *v85 = *v90;
    *&v85[3] = *&v90[3];
    v86 = v47;
    v87 = v48;
    v88 = v49;
    v89 = 0x3FE0000000000000;
    return sub_1BD0DE53C(&v77, &qword_1EBD4BDA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5B4E60()
{
  swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  return *(v0 + 24);
}

uint64_t sub_1BD5B4F00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD4BD58);
}

uint64_t sub_1BD5B4FD8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1BE0528A4();
  v2[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5070, v4, v3);
}

uint64_t sub_1BD5B5070()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD88);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5B5130;

  return sub_1BD5B52D4();
}

uint64_t sub_1BD5B5130()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5274, v3, v2);
}

uint64_t sub_1BD5B5274()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5B52D4()
{
  v1[3] = v0;
  v2 = sub_1BE04D214();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1BE0528A4();
  v1[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B53C8, v4, v3);
}

uint64_t sub_1BD5B53C8()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BD5B53EC, v1, 0);
}

uint64_t sub_1BD5B53EC()
{
  v1 = *(v0 + 80);
  sub_1BD5B81CC(*(v0 + 24), v1, &off_1F3BB0030);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5464, v1, 0);
}

uint64_t sub_1BD5B5464()
{
  *(v0 + 112) = sub_1BD9FBA80();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B54CC, v1, v2);
}

uint64_t sub_1BD5B54CC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  if (*(v2 + 24) != v1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 16) = v2;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
    sub_1BE04B584();
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BD5B5634;

  return sub_1BD9FDE08();
}

uint64_t sub_1BD5B5634()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x1EEE6DFA0](sub_1BD5B5924, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[13] = v5;
    *v5 = v2;
    v5[1] = sub_1BD5B579C;

    return sub_1BD5B6168();
  }
}

uint64_t sub_1BD5B579C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B58BC, v3, v2);
}

uint64_t sub_1BD5B58BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5B5924()
{
  v1 = v0[12];

  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to setup spending summaries cell with error: %@.", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD5B5AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04AF64();
  sub_1BD5B8158(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  if ((sub_1BE052334() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  if ((sub_1BE052334() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1BD4001A4(v12, v13);
}

uint64_t sub_1BD5B5BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BD5B5C84(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD5B5D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD4BD58);
}

uint64_t sub_1BD5B5E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD4BD58);
  return sub_1BD5B5F10(v5);
}

uint64_t sub_1BD5B5F10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD4BD58);
  v8 = sub_1BD5B84CC(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD4BD58);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
    sub_1BE04B584();
  }

  else
  {
    swift_beginAccess();
    sub_1BD5B8870(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD4BD58);
}

uint64_t sub_1BD5B60FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  sub_1BD5B8870(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD5B6168()
{
  v1[4] = v0;
  v2 = sub_1BE04D214();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04B2D4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v1[14] = swift_task_alloc();
  sub_1BE0528A4();
  v1[15] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6360, v5, v4);
}

uint64_t sub_1BD5B6360()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[18] = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel___observationRegistrar;
  v0[2] = v1;
  v0[19] = sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
  sub_1BE04B594();

  v2 = *(v1 + 24);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1BD5B6484;
  v5 = v0[13];
  v4 = v0[14];

  return sub_1BD5B6BC4(v4, v5, v2);
}

uint64_t sub_1BD5B6484()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B65A4, v3, v2);
}

uint64_t sub_1BD5B65A4()
{
  v1 = v0[9];
  v2 = v0[4];
  swift_getKeyPath();
  v0[3] = v2;
  sub_1BE04B594();

  v3 = qword_1E80100F8[*(v2 + 24)];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  (*(v1 + 104))(v5, *v3, v6);
  (*(v7 + 32))(v4, v5, v6);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1BD5B66E0;
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];

  return sub_1BD9FC674(v11, v9, v10, v12);
}

uint64_t sub_1BD5B66E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[9] + 8))(v2[11], v2[8]);
  v3 = v2[17];
  v4 = v2[16];
  if (v0)
  {
    v5 = sub_1BD5B69C8;
  }

  else
  {
    v5 = sub_1BD5B6868;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5B6868()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[4];

  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  sub_1BE051D74();
  sub_1BE04E7D4();

  sub_1BD0DE53C(v2, &qword_1EBD402D0);
  sub_1BD5B88FC(v3, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD5B69C8()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[13];

  sub_1BD0DE53C(v3, &qword_1EBD402D0);
  sub_1BD0DE53C(v2, &qword_1EBD38DB8);
  sub_1BE04D114();
  v4 = v1;
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v5, v6, "Failed to reload spending summaries cell with error: %@.", v9, 0xCu);
    sub_1BD0DE53C(v10, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD5B6BC4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 176) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  *(v4 + 40) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_1BE0528A4();
  *(v4 + 72) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v4 + 80) = v7;
  *(v4 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6D04, v7, v6);
}

uint64_t sub_1BD5B6D04()
{
  v1 = *(v0 + 176);
  v2 = *(*(v0 + 32) + 16);
  *(v0 + 96) = v2;
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = sub_1BD5B7060;
    }

    else
    {
      v3 = sub_1BD5B7368;
    }
  }

  else
  {
    v3 = sub_1BD5B6D58;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1BD5B6D58()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[13] = *v1;
  v0[14] = v1[1];
  v0[15] = v1[2];
  sub_1BD298E60(v2);
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6DE4, v3, v4);
}

uint64_t sub_1BD5B6DE4()
{
  v1 = v0[13];
  if (v1)
  {
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0[7] + 56);
  v2(v0[3], 1, 1, v0[6]);
  v3 = *(v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {

    if (v3 <= *(v1 + 16))
    {
      v7 = v0[7];
      v8 = v0[5];
      v14 = v0[6];
      v9 = v0[3];
      v10 = v3 - 1;
      v11 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v12 = *(v7 + 72);
      sub_1BD0DE19C(v11 + v12 * v10, v0[8], &qword_1EBD38DB8);
      sub_1BD0DE19C(v11 + v12 * v4, v8, &qword_1EBD38DB8);

      sub_1BD0DE53C(v9, &qword_1EBD402D0);
      v2(v8, 0, 1, v14);
      sub_1BD0DE204(v8, v9, &qword_1EBD402D0);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v3)
  {
    return sub_1BE053994();
  }

  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v0[7] + 80);
  sub_1BD0DE19C(v1 + ((v6 + 32) & ~v6), v0[8], &qword_1EBD38DB8);

LABEL_10:
  sub_1BD0DE204(v0[8], v0[2], &qword_1EBD38DB8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD5B7060()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[16] = *v1;
  v0[17] = v1[1];
  v0[18] = v1[2];
  sub_1BD298E60(v2);
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B70EC, v3, v4);
}

uint64_t sub_1BD5B70EC()
{
  if (v0[16])
  {
    v1 = v0[17];
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0[7] + 56);
  v2(v0[3], 1, 1, v0[6]);
  v3 = *(v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {

    if (v3 <= *(v1 + 16))
    {
      v7 = v0[7];
      v8 = v0[5];
      v14 = v0[6];
      v9 = v0[3];
      v10 = v3 - 1;
      v11 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v12 = *(v7 + 72);
      sub_1BD0DE19C(v11 + v12 * v10, v0[8], &qword_1EBD38DB8);
      sub_1BD0DE19C(v11 + v12 * v4, v8, &qword_1EBD38DB8);

      sub_1BD0DE53C(v9, &qword_1EBD402D0);
      v2(v8, 0, 1, v14);
      sub_1BD0DE204(v8, v9, &qword_1EBD402D0);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v3)
  {
    return sub_1BE053994();
  }

  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v0[7] + 80);
  sub_1BD0DE19C(v1 + ((v6 + 32) & ~v6), v0[8], &qword_1EBD38DB8);

LABEL_10:
  sub_1BD0DE204(v0[8], v0[2], &qword_1EBD38DB8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD5B7368()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[19] = *v1;
  v0[20] = v1[1];
  v0[21] = v1[2];
  sub_1BD298E60(v2);
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B73F4, v3, v4);
}

uint64_t sub_1BD5B73F4()
{
  if (v0[19])
  {
    v1 = v0[21];
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0[7] + 56);
  v2(v0[3], 1, 1, v0[6]);
  v3 = *(v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {

    if (v3 <= *(v1 + 16))
    {
      v7 = v0[7];
      v8 = v0[5];
      v14 = v0[6];
      v9 = v0[3];
      v10 = v3 - 1;
      v11 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v12 = *(v7 + 72);
      sub_1BD0DE19C(v11 + v12 * v10, v0[8], &qword_1EBD38DB8);
      sub_1BD0DE19C(v11 + v12 * v4, v8, &qword_1EBD38DB8);

      sub_1BD0DE53C(v9, &qword_1EBD402D0);
      v2(v8, 0, 1, v14);
      sub_1BD0DE204(v8, v9, &qword_1EBD402D0);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v3)
  {
    return sub_1BE053994();
  }

  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v0[7] + 80);
  sub_1BD0DE19C(v1 + ((v6 + 32) & ~v6), v0[8], &qword_1EBD38DB8);

LABEL_10:
  sub_1BD0DE204(v0[8], v0[2], &qword_1EBD38DB8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD5B7670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  sub_1BD0DE19C(a2, v17 - v7, &qword_1EBD38DB8);
  v9 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v10 = sub_1BE0493A4();
  v12 = v11;
  v13 = *(a3 + *(v9 + 28));
  v14 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v15 = &v8[*(v14 + 20)];
  *v15 = v10;
  v15[1] = v12;
  *&v8[*(v14 + 24)] = v13;
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  sub_1BE048C84();
  return sub_1BD5B5F10(v8);
}

uint64_t sub_1BD5B77B4()
{

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData, &qword_1EBD4BD58);
  v1 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD5B78A0()
{
  sub_1BD5B7AC4(319, &qword_1EBD4BD38, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD5B7A08()
{
  sub_1BD0F5C4C();
  if (v0 <= 0x3F)
  {
    sub_1BD5B7AC4(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD5B7AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD5B7B44(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  sub_1BE0528A4();
  *(v2 + 32) = sub_1BE052894();
  v4 = sub_1BE052844();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B7BE0, v4, v3);
}

uint64_t sub_1BD5B7BE0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  if (*(v1 + 24) != v2)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    *(v0 + 16) = v1;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel);
    sub_1BE04B584();
  }

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1BD5B7D48;

  return sub_1BD5B6168();
}

uint64_t sub_1BD5B7D48()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B7E68, v3, v2);
}

uint64_t sub_1BD5B7E68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5B7ECC()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD5B7F78;

  return sub_1BD5B6168();
}

uint64_t sub_1BD5B7F78()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD440A84, v1, v0);
}

uint64_t sub_1BD5B80B4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD5B7B44(a1);
}

uint64_t sub_1BD5B8158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD5B81CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v15 = a2;
  if (v7 >> 62)
  {
LABEL_19:
    v8 = sub_1BE053704();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v9, v7);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_1BE048964();
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
    }

    while (v10 != v8);
  }

  type metadata accessor for WeakObserver();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x1BFB3F7A0](v13);
  if (*((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  return swift_endAccess();
}

void sub_1BD5B83C4(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v1);

    if (v2)
    {
LABEL_8:
      sub_1BE052434();

      return;
    }

    __break(1u);
  }

  v3 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v3);

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v4 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v4);

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BD5B84CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD60);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v27 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v27 - v15, &qword_1EBD4BD58);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD4BD58);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD4BD58);
      v20 = 0;
      return v20 & 1;
    }

LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD4BD60);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD4BD58);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1BD5B88FC(v12, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
    goto LABEL_6;
  }

  sub_1BD5B89F4(&v16[v18], v8, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BE04AF64();
  sub_1BD5B8158(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  if (sub_1BE052334() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8), (sub_1BE052334()) && ((v21 = *(v4 + 20), v22 = *&v12[v21], v23 = *&v12[v21 + 8], v24 = &v8[v21], v22 == *v24) ? (v25 = v23 == *(v24 + 1)) : (v25 = 0), v25 || (sub_1BE053B84()))
  {
    v20 = sub_1BD4001A4(*&v12[*(v4 + 24)], *&v8[*(v4 + 24)]) ^ 1;
  }

  else
  {
    v20 = 1;
  }

  sub_1BD5B88FC(v8, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BD5B88FC(v12, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BD0DE53C(v16, &qword_1EBD4BD58);
  return v20 & 1;
}

uint64_t sub_1BD5B8870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5B88FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5B895C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD5B4FD8(v2, v3);
}

uint64_t sub_1BD5B89F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD5B8A64()
{
  result = qword_1EBD4BDB0;
  if (!qword_1EBD4BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDB0);
  }

  return result;
}

unint64_t sub_1BD5B8AB8()
{
  result = qword_1EBD4BDC0;
  if (!qword_1EBD4BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD80);
    sub_1BD5B8B74();
    sub_1BD5B8158(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDC0);
  }

  return result;
}

unint64_t sub_1BD5B8B74()
{
  result = qword_1EBD4BDC8;
  if (!qword_1EBD4BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD70);
    sub_1BD0DE4F4(&unk_1EBD4BDD0, &qword_1EBD4BD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDC8);
  }

  return result;
}

id sub_1BD5B8C48(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_identifier];
  *v6 = 0xD00000000000001BLL;
  *(v6 + 1) = 0x80000001BE130350;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product] = a2;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = a2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1BD5B8DF8(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v3 = sub_1BE04BA14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BAC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product);
  result = [v13 configuration];
  if (result)
  {
    v15 = result;
    v16 = [result type];

    if (v16 == 3)
    {
      sub_1BE04BA24();
      if ((*(v4 + 88))(v7, v3) != *MEMORY[0x1E69B8020])
      {
        (*(v4 + 8))(v7, v3);
        v20 = 0xD000000000000018;
        v21 = 0x80000001BE130390;
        goto LABEL_9;
      }

      (*(v4 + 96))(v7, v3);
      v17 = sub_1BE04B9D4();
      (*(*(v17 - 8) + 8))(v7, v17);
      v18 = sub_1BE04BBD4();
      v19 = [v18 isWatchSupportedForProduct_];

      if (v19)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_10:
        v25(v20, v21, 0, v22);
        return (*(v9 + 8))(v12, v8);
      }

      v23 = "product doesn't support watch";
    }

    else
    {
      v23 = "product not a transit product";
    }

    v21 = (v23 - 32) | 0x8000000000000000;
    v20 = 0xD00000000000001DLL;
LABEL_9:
    v22 = 1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1BD5B90E8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() watchWebServiceForIssuerProvisioning];
  if (v29)
  {
    v27 = a1;
    v28 = a2;
    v16 = sub_1BE04BBD4();
    sub_1BE04BC34();
    v26 = sub_1BE04B9A4();
    (*(v12 + 8))(v15, v11);
    v17 = *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product);
    sub_1BE04BB94();
    v18 = sub_1BE04B8E4();
    (*(v7 + 8))(v10, v6);
    v19 = objc_allocWithZone(PKPaymentSetupDevicePickerViewController);
    v20 = v29;
    v21 = [v19 initWithProvisioningController:v16 context:v26 setupDelegate:0 product:v17 webService:v18 nanoWebService:v29];

    v22 = *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController);
    *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController) = v21;
    v23 = v21;

    if (v23)
    {
      [v23 setFlowDelegate_];
      sub_1BE052434();
      v24 = sub_1BE04BB74();

      [v23 setReporter_];

      aBlock[4] = v27;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD976224;
      aBlock[3] = &block_descriptor_133;
      v25 = _Block_copy(aBlock);
      sub_1BE048964();

      [v23 preflightWithCompletion_];
      _Block_release(v25);
    }

    else
    {
      (v27)(0);
    }
  }

  else
  {
    a1();
  }
}

uint64_t sub_1BD5B9440()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5B947C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD5B94D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD5B9594(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = a1;
  sub_1BE04BBE4();
  v13 = sub_1BE04B8D4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  result = [v12 webService];
  if (result)
  {
    sub_1BE04B914();
    sub_1BE04BBA4();
    v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct);
    *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct) = a2;
    v16 = a2;

    v17 = v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BB0098, ObjectType, v18);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5B97B0()
{
  sub_1BE053D04();
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD5B9814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1BD5B9860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BD5BB92C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BD5B9894(uint64_t a1)
{
  v2 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1BD5B98D0(uint64_t a1)
{
  v2 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1BD5B9928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

char *PKDataReleaseViewController.init(request:delegate:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_dataReleaseDelegate;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_dataReleasePresentationController;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
  v8 = *(MEMORY[0x1E695F050] + 16);
  *v7 = *MEMORY[0x1E695F050];
  *(v7 + 1) = v8;
  v9 = [objc_allocWithZone(PKDataReleaseContentViewController) initWithRequest_];
  if (v9)
  {
    *&v2[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] = v9;
    v10 = v9;
    swift_unknownObjectWeakAssign();
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v11 = v10;
    v12 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
    v13 = *&v12[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController];
    v14 = v12;
    [v13 setDelegate_];
    [v14 setModalPresentationStyle_];
    [v14 setTransitioningDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B7020;
    *(v15 + 32) = v11;
    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v16 = v11;
    v17 = sub_1BE052724();

    [v14 setViewControllers_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1BD0D4534(&v2[v5]);
    MEMORY[0x1BFB46050](&v2[v6]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

id PKDataReleaseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PKDataReleaseViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect);
  v2 = *(MEMORY[0x1E695F050] + 16);
  *v1 = *MEMORY[0x1E695F050];
  v1[1] = v2;
  sub_1BE053994();
  __break(1u);
}

Swift::Void __swiftcall PKDataReleaseViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  if ([objc_opt_self() userIntentStyle] == 1)
  {
    sub_1BD5B9E1C();
  }
}

void sub_1BD5B9E1C()
{
  if (!PKUserIntentIsAvailable())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ([*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] shouldShowPhysicalButton])
  {
    v1 = [v0 isBeingDismissed];
    v2 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView])
    {
      v3 = v1 ^ 1;
      if ([*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] isAnimating] == v3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((v1 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v2 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    v4 = *&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v4 && ([v4 isAnimating] & 1) != 0)
    {
      v3 = 0;
LABEL_13:
      [*v2 setAnimating_];
      sub_1BD5BA1C8();
    }
  }

LABEL_14:
}

Swift::Void __swiftcall PKDataReleaseViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  if ([v1 isBeingDismissed])
  {
    sub_1BD5B9E1C();
  }
}

id PKDataReleaseViewController._backgroundColorForModalFormSheet.getter()
{
  v0 = [objc_opt_self() blackColor];
  IsAvailable = PKUserIntentIsAvailable();
  v2 = 0.4;
  if (IsAvailable)
  {
    v2 = 0.52;
  }

  v3 = [v0 colorWithAlphaComponent_];

  return v3;
}

void sub_1BD5BA1C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView);
    if (v2 && [v2 isAnimating])
    {
      v3 = [objc_opt_self() mainScreen];
      v4 = [v3 fixedCoordinateSpace];

      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      LAUIPhysicalButtonNormalizedFrame();
      v14.n128_f64[0] = v6 + v10 * v13;
      v16.n128_f64[0] = v8 + v12 * v15;
      v18.n128_f64[0] = v10 * v17;
      v20.n128_u64[0] = 26.0;
      v21.n128_f64[0] = v12 * v19 + 26.0;
      PKRectRoundToPixel(v14, v16, v18, v21, v20);
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v0 view];
      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 convertRect:v4 fromCoordinateSpace:{v23, v25, v27, v29}];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      swift_unknownObjectRelease();
    }

    else
    {
      v33 = *MEMORY[0x1E695F050];
      v35 = *(MEMORY[0x1E695F050] + 8);
      v37 = *(MEMORY[0x1E695F050] + 16);
      v39 = *(MEMORY[0x1E695F050] + 24);
    }

    v40 = &v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
    *v40 = v33;
    *(v40 + 1) = v35;
    *(v40 + 2) = v37;
    *(v40 + 3) = v39;
    sub_1BD5BA390();
  }
}

void sub_1BD5BA390()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished) == 1)
    {
      v1 = swift_allocObject();
      *(v1 + 16) = v5;
      v2 = swift_allocObject();
      *(v2 + 16) = sub_1BD5BBE6C;
      *(v2 + 24) = v1;
      aBlock[4] = sub_1BD267328;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD5B974C;
      aBlock[3] = &block_descriptor_33_3;
      v3 = _Block_copy(aBlock);
      v4 = v5;
      sub_1BE048964();

      [v4 animateChanges_];

      _Block_release(v3);
      LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

      if (v3)
      {
        __break(1u);
      }
    }

    else
    {
      [Strong invalidateDetents];
    }
  }
}

void PKDataReleaseViewController.dataReleaseCompletedWithError(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController);
  if (a1)
  {
    v3 = v2;
    v4 = sub_1BE04A844();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  v6 = v4;
  [v2 dataReleaseCompletedWithError_];
}

void PKDataReleaseViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    if (*(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished) == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = isEscapingClosureAtFileLocation;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1BD5BB948;
      *(v6 + 24) = v5;
      v9[4] = sub_1BD214190;
      v9[5] = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1BD5B974C;
      v9[3] = &block_descriptor_134;
      v7 = _Block_copy(v9);
      v8 = isEscapingClosureAtFileLocation;
      sub_1BE048964();

      [v8 animateChanges_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    [isEscapingClosureAtFileLocation invalidateDetents];
  }
}

void sub_1BD5BA8A4()
{
  [*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] preferredContentSize];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong containerView];

    if (v3)
    {
      v4 = &v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
      if (CGRectIsNull(*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect]))
      {
      }

      else
      {
        [v3 bounds];
        CGRectGetHeight(v7);
        CGRectGetMaxY(*v4);
        v5 = [v0 view];
        if (v5)
        {
          v6 = v5;
          [v5 safeAreaInsets];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id PKDataReleaseViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
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

id PKDataReleaseViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id PKDataReleaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t PKDataReleaseViewController.dataReleaseContentViewController(_:didAuthorizeWithExternalAuthorizationData:dataToRelease:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04AAB4();
    [v7 dataReleaseViewController:v4 didAuthorizeWithExternalAuthorizationData:v8 dataToRelease:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PKDataReleaseViewController.dataReleaseContentViewController(_:didFinishWithError:)(void *a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a2;
  v9[4] = sub_1BD5BB958;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BD126964;
  v9[3] = &block_descriptor_9_6;
  v6 = _Block_copy(v9);
  v7 = v2;
  v8 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1BD5BAF1C(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      a2 = sub_1BE04A844();
    }

    [v5 dataReleaseViewController:a1 didDismissWithError:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PKDataReleaseViewController.dataReleaseContentViewController(_:didResolveTo:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 dataReleaseViewController:v2 didResolveToMerchant:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PKDataReleaseViewController.dataReleaseContentViewControllerDidChangePhysicalButtonState(_:)(PKDataReleaseContentViewController *a1)
{
  if (!PKUserIntentIsAvailable())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ([*&v1[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] shouldShowPhysicalButton])
  {
    v2 = [v1 isBeingDismissed];
    v3 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView])
    {
      v4 = v2 ^ 1;
      if ([*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] isAnimating] == v4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (!v2)
    {
      v4 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v3 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    v5 = *&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v5 && ([v5 isAnimating] & 1) != 0)
    {
      v4 = 0;
LABEL_13:
      [*v3 setAnimating_];
      sub_1BD5BA1C8();
    }
  }

LABEL_14:
}

id sub_1BD5BB3C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD818]) initWithVariant_];
  result = [v0 setFlexible_];
  qword_1EBD4BE80 = v0;
  return result;
}

id sub_1BD5BB418(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished] = 0;
  if (PKUserIntentIsAvailable())
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69AD308]) initWithStyle_];
    *&v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052404();
      v10 = PKLocalizedIdentityString(v9);

      [v8 setInstruction_];
    }
  }

  else
  {
    *&v3[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
  [v11 _setAllowsDraggingToDismiss_];
  if (qword_1EBD36CA8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBD4BE80;
  [v11 _setLargeBackground_];
  [v11 _setNonLargeBackground_];

  return v11;
}

void sub_1BD5BB600()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 presentedViewController];
  v3 = [v2 view];

  if (v3)
  {
    [v3 layoutIfNeeded];

    v8.receiver = v0;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_presentationTransitionWillBegin);
    v4 = *&v0[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 containerView];
      if (v6)
      {
        v7 = v6;
        [v6 insertSubview:v5 atIndex:0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD5BB824()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x1E69DE3C0];
  }

  v1 = Strong;
  sub_1BD5BA8A4();
  v3 = v2;

  return v3;
}

uint64_t sub_1BD5BB92C(uint64_t result)
{
  if ((result - 1) >= 4 && result != -1)
  {
    return 0;
  }

  return result;
}

uint64_t _s9PassKitUI27PKDataReleaseViewControllerC012presentationG10DidDismissyySo014UIPresentationG0CF_0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1BD5BBCE4();
    v3 = swift_allocError();
    *v4 = 2;
    v5 = sub_1BE04A844();

    [v2 dataReleaseViewController:v0 didDismissWithError:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id _s9PassKitUI27PKDataReleaseViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for PKDataReleaseViewController.PresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  swift_unknownObjectWeakAssign();
  v4 = v3;
  [v4 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  sub_1BD0E5E8C(0, &unk_1EBD43AF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v6 = sub_1BE052F44();

  *(v5 + 32) = v6;
  v7 = sub_1BE052724();

  [v4 setDetents_];

  return v3;
}

unint64_t sub_1BD5BBB84()
{
  result = qword_1EBD4BEB8;
  if (!qword_1EBD4BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEB8);
  }

  return result;
}

unint64_t sub_1BD5BBBDC()
{
  result = qword_1EBD4BEC0;
  if (!qword_1EBD4BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEC0);
  }

  return result;
}

unint64_t sub_1BD5BBC34()
{
  result = qword_1EBD4BEC8;
  if (!qword_1EBD4BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEC8);
  }

  return result;
}

unint64_t sub_1BD5BBC8C()
{
  result = qword_1EBD4BED0;
  if (!qword_1EBD4BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BED0);
  }

  return result;
}

unint64_t sub_1BD5BBCE4()
{
  result = qword_1EBD4BEE0;
  if (!qword_1EBD4BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BEE0);
  }

  return result;
}

uint64_t objectdestroy_5Tm_2()
{

  return swift_deallocObject();
}

unint64_t sub_1BD5BBDFC()
{
  result = qword_1EBD4BFB8;
  if (!qword_1EBD4BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BFB8);
  }

  return result;
}

uint64_t sub_1BD5BBE7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088);
  sub_1BE0516C4();
  return v1;
}

uint64_t sub_1BD5BBECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v33 = a5;
  v37 = a3;
  v38 = a4;
  v41 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C068);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1BE04E924();
  v11 = sub_1BE04EC14();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070);
  v14 = sub_1BE04EBD4();
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v36 = &v32 - v19;
  v20 = sub_1BD5BBE7C();
  v22 = v21;
  v24 = v23;
  swift_getKeyPath();
  v50 = v20;
  v51 = v22;
  v52 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C078);
  sub_1BE051904();

  v42 = v33;
  v43 = v34;
  v44 = a1;
  v45 = a2;
  v46 = v37;
  v47 = v38;
  v25 = v32;
  sub_1BE04EBE4();
  swift_getKeyPath();
  v50 = a1;
  v51 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088);
  sub_1BE0516A4();
  v50 = v53;
  WitnessTable = swift_getWitnessTable();
  v27 = v35;
  sub_1BE0508C4();

  (*(v39 + 8))(v25, v11);
  v28 = sub_1BD5BCC90();
  v48 = WitnessTable;
  v49 = v28;
  swift_getWitnessTable();
  v29 = v36;
  sub_1BD147308(v27);
  v30 = *(v40 + 8);
  v30(v27, v14);
  sub_1BD147308(v29);
  return (v30)(v29, v14);
}

uint64_t sub_1BD5BC2D4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v18 - v12;
  v18[2] = v14;
  v18[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C088);
  sub_1BE0516A4();
  a3(v18[1]);

  sub_1BD147308(v9);
  v16 = *(v7 + 8);
  v16(v9, a5);
  sub_1BD147308(v13);
  return (v16)(v13, a5);
}

uint64_t sub_1BD5BC450()
{
  sub_1BD5BCCF4();
  sub_1BE04F3E4();
  return v1;
}

uint64_t sub_1BD5BC48C()
{
  sub_1BD5BCCF4();
  sub_1BE048964();
  return sub_1BE04F3F4();
}

uint64_t sub_1BD5BC4EC()
{
  type metadata accessor for PushNavigationStackModel();
  sub_1BE051694();
  return v1;
}

uint64_t sub_1BD5BC554@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1BD5BCBA0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v4 = sub_1BE04E924();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1BD5BC64C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04E924();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BD5BCBA0(qword_1EBD4BFE0, MEMORY[0x1E697C0B0]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BD5BCBA0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BD5BC8EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v5 = sub_1BE04E924();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1BD5BC988()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  v2 = sub_1BE04E924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel___observationRegistrar;
  v4 = sub_1BE04B5D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushNavigationStackModel()
{
  result = qword_1EBD4BFD0;
  if (!qword_1EBD4BFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5BCAB8()
{
  result = sub_1BE04E924();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BD5BCBA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD5BCBE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD5BCC90()
{
  result = qword_1EBD4C080;
  if (!qword_1EBD4C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C080);
  }

  return result;
}

unint64_t sub_1BD5BCCF4()
{
  result = qword_1EBD4C090;
  if (!qword_1EBD4C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C090);
  }

  return result;
}

uint64_t sub_1BD5BCD5C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C0F8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v64 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C100);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C108);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v70 = &v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C110);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v71 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v61 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C120);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v68 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v61 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C128);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v69 = &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v61 - v43;
  v63 = &v61 - v43;
  sub_1BD5BD42C(&v61 - v43);
  sub_1BD5BD7C8(v30);
  v77 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
  sub_1BE0516C4();
  v45 = v76;
  v62 = v37;
  sub_1BD6FC9AC(v74, v75, v76, v37);

  sub_1BD0DE53C(v30, &qword_1EBD4C118);
  v61 = v26;
  sub_1BD5BDC00(v26);
  v46 = v70;
  sub_1BD5BDE4C(v70);
  v47 = v72;
  sub_1BD5BE2A8(v72);
  v48 = v64;
  sub_1BD5BE4B0(v64);
  v49 = v44;
  v50 = v69;
  sub_1BD0DE19C(v49, v69, &qword_1EBD4C128);
  v51 = v37;
  v52 = v68;
  sub_1BD0DE19C(v51, v68, &qword_1EBD4C120);
  v53 = v71;
  sub_1BD0DE19C(v26, v71, &qword_1EBD4C110);
  v54 = v46;
  v55 = v73;
  sub_1BD0DE19C(v54, v73, &qword_1EBD4C108);
  v56 = v65;
  sub_1BD0DE19C(v47, v65, &qword_1EBD4C100);
  v57 = v67;
  sub_1BD0DE19C(v48, v67, &qword_1EBD4C0F8);
  v58 = v66;
  sub_1BD0DE19C(v50, v66, &qword_1EBD4C128);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C130);
  sub_1BD0DE19C(v52, v58 + v59[12], &qword_1EBD4C120);
  sub_1BD0DE19C(v53, v58 + v59[16], &qword_1EBD4C110);
  sub_1BD0DE19C(v55, v58 + v59[20], &qword_1EBD4C108);
  sub_1BD0DE19C(v56, v58 + v59[24], &qword_1EBD4C100);
  sub_1BD0DE19C(v57, v58 + v59[28], &qword_1EBD4C0F8);
  sub_1BD0DE53C(v48, &qword_1EBD4C0F8);
  sub_1BD0DE53C(v72, &qword_1EBD4C100);
  sub_1BD0DE53C(v70, &qword_1EBD4C108);
  sub_1BD0DE53C(v61, &qword_1EBD4C110);
  sub_1BD0DE53C(v62, &qword_1EBD4C120);
  sub_1BD0DE53C(v63, &qword_1EBD4C128);
  sub_1BD0DE53C(v57, &qword_1EBD4C0F8);
  sub_1BD0DE53C(v56, &qword_1EBD4C100);
  sub_1BD0DE53C(v73, &qword_1EBD4C108);
  sub_1BD0DE53C(v71, &qword_1EBD4C110);
  sub_1BD0DE53C(v68, &qword_1EBD4C120);
  return sub_1BD0DE53C(v69, &qword_1EBD4C128);
}

uint64_t sub_1BD5BD42C@<X0>(uint64_t a1@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1E8);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v4);
  v22 = &v22 - v5;
  v26 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v6 = v25;
  swift_getKeyPath();
  *&v26 = v6;
  sub_1BD5C343C();
  sub_1BE04B594();

  v7 = *(v6 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  v8 = v7;

  if (!v7)
  {
    goto LABEL_14;
  }

  v23 = a1;
  v26 = *v1;
  sub_1BE0516A4();
  v9 = v25;
  swift_getKeyPath();
  *&v26 = v9;
  sub_1BE04B594();

  v10 = *(v9 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  v11 = v10;

  if (!v10)
  {
    goto LABEL_8;
  }

  v26 = *v1;
  sub_1BE0516A4();
  v12 = v25;
  swift_getKeyPath();
  *&v26 = v12;
  sub_1BE04B594();

  v13 = *(v12 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  v14 = v13;

  if (!v13)
  {
    v14 = v8;
    v8 = v11;
    a1 = v23;
LABEL_12:

    goto LABEL_13;
  }

  v15 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(v10, v8, v13);
  if (v15 > 1)
  {
    a1 = v23;
    if (v15 != 2)
    {
      if (v15 != 3)
      {
        goto LABEL_7;
      }

LABEL_17:
      MEMORY[0x1EEE9AC00](v15, v16);
      *(&v22 - 4) = v11;
      *(&v22 - 3) = v14;
      *(&v22 - 2) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1F0);
      sub_1BD5C386C();
      v20 = v22;
      sub_1BE051A44();

      v21 = v24;
      (*(v3 + 32))(a1, v20, v24);
      v18 = v21;
      v17 = 0;
      return (*(v3 + 56))(a1, v17, 1, v18);
    }

    goto LABEL_11;
  }

  a1 = v23;
  if (!v15)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v15 == 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *&v26 = v15;
  sub_1BE053BE4();
  __break(1u);
LABEL_8:
  a1 = v23;
LABEL_13:

LABEL_14:
  v17 = 1;
  v18 = v24;
  return (*(v3 + 56))(a1, v17, 1, v18);
}

uint64_t sub_1BD5BD7C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1E0);
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v5);
  v32 = &v29 - v6;
  v35 = *v1;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v7 = v34;
  swift_getKeyPath();
  *&v35 = v7;
  sub_1BD5C343C();
  sub_1BE04B594();

  v8 = *(v7 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  v9 = v8;

  if (!v8)
  {
    v26 = 1;
    v25 = v33;
    return (*(v4 + 56))(a1, v26, 1, v25);
  }

  v35 = v36;
  sub_1BE0516A4();
  v10 = v34;
  swift_getKeyPath();
  *&v35 = v10;
  sub_1BE04B594();

  v11 = *(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  v31 = v11;

  if (!v11)
  {
    v25 = v33;
LABEL_17:

    v26 = 1;
    return (*(v4 + 56))(a1, v26, 1, v25);
  }

  v30 = a1;
  v35 = v36;
  sub_1BE0516A4();
  v12 = v34;
  swift_getKeyPath();
  *&v35 = v12;
  sub_1BE04B594();

  v13 = *(v12 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  v29 = v13;

  if (!v13)
  {
    a1 = v30;
    v16 = v31;
    v25 = v33;
LABEL_16:

    v9 = v16;
    goto LABEL_17;
  }

  v35 = v36;
  sub_1BE0516A4();
  v14 = v34;
  swift_getKeyPath();
  *&v35 = v14;
  sub_1BE04B594();

  v15 = *(v14 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  v16 = v15;

  if (!v15)
  {
    v16 = v9;
    v9 = v29;
    a1 = v30;
    v25 = v33;
    v19 = v31;
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    v19 = v29;
    a1 = v30;
    v27 = v31;
LABEL_14:

    v25 = v33;
    goto LABEL_15;
  }

  v18 = v17;
  v19 = v31;
  v20 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(v11);

  if ((v20 & 1) == 0)
  {
    v27 = v9;
    v9 = v29;
    a1 = v30;
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v29 - 6) = v19;
  *(&v29 - 5) = v2;
  v23 = v29;
  *(&v29 - 4) = v18;
  *(&v29 - 3) = v23;
  *(&v29 - 2) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190);
  sub_1BD5C3678();
  v24 = v32;
  sub_1BE051A44();

  a1 = v30;
  v25 = v33;
  (*(v4 + 32))(v30, v24, v33);
  v26 = 0;
  return (*(v4 + 56))(a1, v26, 1, v25);
}

uint64_t sub_1BD5BDC00@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47658);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  v16 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v8 = v15[1];
  swift_getKeyPath();
  *&v16 = v8;
  sub_1BD5C343C();
  sub_1BE04B594();

  v9 = *(v8 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  v10 = v9;

  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = sub_1BD5BF110();
  if (!v11)
  {

LABEL_5:
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  v15[-2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE051A44();

  (*(v4 + 32))(a1, v7, v3);
  v13 = 0;
  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_1BD5BDE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C170);
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v5);
  v36 = &v33 - v6;
  v39 = *v1;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v7 = v38;
  swift_getKeyPath();
  *&v39 = v7;
  sub_1BD5C343C();
  sub_1BE04B594();

  v8 = *(v7 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  v9 = v8;

  if (!v8)
  {
    v30 = 1;
    v29 = v37;
    return (*(v4 + 56))(a1, v30, 1, v29);
  }

  v39 = v40;
  sub_1BE0516A4();
  v10 = v38;
  swift_getKeyPath();
  *&v39 = v10;
  sub_1BE04B594();

  v11 = *(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  v35 = v11;

  if (!v11)
  {
    v29 = v37;
LABEL_17:

    v30 = 1;
    return (*(v4 + 56))(a1, v30, 1, v29);
  }

  v34 = a1;
  v39 = v40;
  sub_1BE0516A4();
  v12 = v38;
  swift_getKeyPath();
  *&v39 = v12;
  sub_1BE04B594();

  v13 = *(v12 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  v14 = v13;

  if (!v13)
  {
    a1 = v34;
    v17 = v35;
    v29 = v37;
LABEL_16:

    v9 = v17;
    goto LABEL_17;
  }

  v39 = v40;
  sub_1BE0516A4();
  v15 = v38;
  swift_getKeyPath();
  *&v39 = v15;
  sub_1BE04B594();

  v16 = *(v15 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  v17 = v16;

  if (!v16)
  {
    a1 = v34;
    v17 = v35;
    v29 = v37;
LABEL_15:

    v9 = v14;
    goto LABEL_16;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  a1 = v34;
  if (!v18)
  {
    v29 = v37;
    v31 = v35;
LABEL_14:

    v9 = v14;
    v14 = v31;
    goto LABEL_15;
  }

  v19 = v18;
  v20 = v9;
  v21 = v14;
  v22 = v8;
  v23 = v21;
  v24 = _s9PassKitUI24PaymentOffersUIUtilitiesC42shouldDisplaySetupPostPurchaseInstallments3for19installmentCriteriaSbSo20PKPaymentTransactionCSg_So0p16OfferInstallmentO0CSgtFZ_0(v22, v13);

  if ((v24 & 1) == 0)
  {
    v14 = v35;
    v31 = v23;
    v29 = v37;
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v25, v26);
  v27 = v35;
  *(&v33 - 6) = v35;
  *(&v33 - 5) = v2;
  *(&v33 - 4) = v19;
  *(&v33 - 3) = v23;
  *(&v33 - 2) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C178);
  sub_1BD5C35C0();
  v28 = v36;
  a1 = v34;
  sub_1BE051A44();

  v29 = v37;
  (*(v4 + 32))(a1, v28, v37);
  v30 = 0;
  return (*(v4 + 56))(a1, v30, 1, v29);
}

uint64_t sub_1BD5BE2A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C150);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - v7;
  v17 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v9 = v16[1];
  swift_getKeyPath();
  *&v17 = v9;
  sub_1BD5C343C();
  sub_1BE04B594();

  v10 = *(v9 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  v11 = v10;

  if (v10)
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    v16[-2] = v11;
    v16[-1] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C158);
    sub_1BD5C34A4();
    sub_1BE051A44();

    (*(v5 + 32))(a1, v8, v4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a1, v14, 1, v4);
}

id sub_1BD5BE4B0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C138);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v8);
  v47 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46 - v16;
  v18 = sub_1BE04AA64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v23 = v55;
  swift_getKeyPath();
  *&v52 = v23;
  sub_1BD5C343C();
  sub_1BE04B594();

  v24 = *(v23 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  v25 = v24;

  if (!v24)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_7:
    sub_1BD0DE53C(v17, &unk_1EBD3CF70);
    return (*(v7 + 56))(v51, 1, 1, v50);
  }

  v26 = [v25 statusLink];

  if (v26)
  {
    sub_1BE04A9F4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v49;
  v29 = v22;
  (*(v19 + 56))(v13, v27, 1, v18);
  sub_1BD226B4C(v13, v17);
  v30 = (*(v19 + 48))(v17, 1, v18);
  v31 = v48;
  if (v30 == 1)
  {
    goto LABEL_7;
  }

  v33 = (*(v19 + 32))(v29, v17, v18);
  v49 = &v46;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v46 - 2) = v29;
  (v28[13])(v6, *MEMORY[0x1E69B8088], v31, v35);
  result = PKPassKitBundle();
  v46 = v29;
  if (result)
  {
    v36 = result;
    v37 = sub_1BE04B6F4();
    v39 = v38;

    (v28[1])(v6, v31);
    *&v52 = v37;
    *(&v52 + 1) = v39;
    sub_1BD0DDEBC();
    *&v52 = sub_1BE0506C4();
    *(&v52 + 1) = v40;
    v53 = v41 & 1;
    v54 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v43 = v47;
    sub_1BE051A54();
    v44 = v50;
    v45 = v51;
    (*(v7 + 32))(v51, v43, v50);
    (*(v7 + 56))(v45, 0, 1, v44);
    return (*(v19 + 8))(v46, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD5BEA50@<X0>(id a1@<X2>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X8>)
{
  v6 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a2, a1, a3);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v6;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  v7 = a3;

  return a2;
}

id sub_1BD5BEAC4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v25 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  swift_getKeyPath();
  *&v25 = v26;
  sub_1BD5C343C();
  sub_1BE04B594();

  v12 = *(v26 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent);
  v13 = v12;

  v14 = swift_allocObject();
  v15 = a2[1];
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  v16 = a2[3];
  *(v14 + 48) = a2[2];
  *(v14 + 64) = v16;
  *(v14 + 80) = a1;
  *(v14 + 88) = a4;
  *(v14 + 96) = a5;
  *(v14 + 104) = a3;
  LOBYTE(v26) = 0;
  sub_1BD5C3748(a2, &v25);
  v17 = a1;
  v18 = a4;
  v19 = a5;
  v24 = a3;
  sub_1BE051694();
  v20 = v25;
  v21 = *(&v25 + 1);
  LOBYTE(v25) = 0;
  *a6 = v17;
  *(a6 + 8) = v12;
  *(a6 + 16) = v24;
  *(a6 + 24) = sub_1BD5C3C50;
  *(a6 + 32) = v14;
  *(a6 + 40) = 0;
  *(a6 + 48) = v20;
  *(a6 + 56) = v21;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  v22 = v17;

  return v24;
}

void sub_1BD5BEC68(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v42 = v10;
  v43 = v11;
  *&v41 = v11;
  *(&v41 + 1) = v10;
  sub_1BD0DE19C(&v43, &v40, &qword_1EBD4C860);
  sub_1BD0DE19C(&v42, &v40, &qword_1EBD4C1C0);
  sub_1BD0DE19C(&v43, &v40, &qword_1EBD4C860);
  sub_1BD0DE19C(&v42, &v40, &qword_1EBD4C1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1C8);
  sub_1BE0516A4();
  if (v40)
  {

    *&v41 = v11;
    *(&v41 + 1) = v10;
    sub_1BE0516A4();
    v12 = v40;
    [v40 invalidate];

    *&v41 = v11;
    *(&v41 + 1) = v10;
    v40 = 0;
    sub_1BE0516B4();
  }

  sub_1BD0DE53C(&v43, &qword_1EBD4C860);
  sub_1BD0DE53C(&v42, &qword_1EBD4C1C0);
  v13 = [a1 selectedOfferConfirmationRecord];
  v37 = a1;
  if (v13)
  {
    v14 = v13;
    v15 = [v13 selectedOffer];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 installmentSelectedPaymentOffer];
  v17 = [v16 userEnteredAmount];

  v18 = [objc_allocWithZone(MEMORY[0x1E69B8CF0]) initForPostPurchaseInstallmentsWithTransaction:a3 userEnteredAmount:v17];
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v20 = [objc_opt_self() sharedService];
  v21 = [objc_allocWithZone(MEMORY[0x1E69B8CE8]) initWithPaymentService:v19 paymentWebService:v20 configuration:v18];

  *&v41 = v11;
  *(&v41 + 1) = v10;
  v40 = v21;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v43, &qword_1EBD4C860);
  sub_1BD0DE53C(&v42, &qword_1EBD4C1C0);
  *&v41 = v11;
  *(&v41 + 1) = v10;
  sub_1BE0516A4();
  v22 = v40;
  if (v40)
  {
    [v40 updatePaymentOfferCatalogIfNecessaryWithReason:11 completion:0];
  }

  *&v41 = v11;
  *(&v41 + 1) = v10;
  v23 = sub_1BE0516A4();
  v24 = v40;
  if (v40)
  {
    *&v41 = v35;
    BYTE8(v41) = -63;
    v25 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v26 = v24;
    v27 = v35;
    v28 = a2;
    v29 = sub_1BD8D1EE0(&v41, v24, a2);

    v41 = *(v7 + 48);
    v40 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
    sub_1BE0516B4();
    v30 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    [v30 didInteractWithConfirmationRecordFollowupMessage_];

    v41 = *(v7 + 48);
    v31 = sub_1BE0516A4();
    v32 = v40;
    if (v40)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = a5;
      *(v33 + 24) = a6;
      sub_1BD0D44B8(a5);
      sub_1BD8C1B80(0, 1, sub_1BD3B690C, v33);

      return;
    }

    if (a5)
    {
      a5(v31);
    }
  }

  else if (a5)
  {
    a5(v23);
  }
}

BOOL sub_1BD5BF110()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v36 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  v14 = v35;
  swift_getKeyPath();
  *&v36 = v14;
  sub_1BD5C343C();
  sub_1BE04B594();

  v15 = *(v14 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  v16 = v15;

  if (!v15)
  {
    return 0;
  }

  v36 = *v1;
  sub_1BE0516A4();
  v17 = v35;
  swift_getKeyPath();
  *&v36 = v17;
  sub_1BE04B594();

  v18 = *(v17 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  v19 = v18;

  if (!v18)
  {
    goto LABEL_6;
  }

  v20 = v16;
  v21 = v19;
  if (![v20 isIssuerInstallmentTransaction])
  {

    goto LABEL_10;
  }

  v22 = [v20 issuerInstallmentManagementURL];
  if (!v22)
  {

    (*(v33 + 56))(v13, 1, 1, v34);
    sub_1BD0DE53C(v13, &unk_1EBD3CF70);

    return 0;
  }

  v23 = v22;
  sub_1BE04A9F4();

  v25 = v33;
  v24 = v34;
  (*(v33 + 32))(v13, v5, v34);
  (*(v25 + 56))(v13, 0, 1, v24);
  sub_1BD0DE53C(v13, &unk_1EBD3CF70);
  v26 = _s9PassKitUI24PaymentOffersUIUtilitiesC21shouldDisplayFollowUp3forSbSo32PKPaymentOfferConfirmationRecordCSg_tFZ_0(v18);

  if (v26)
  {
LABEL_10:

    return 0;
  }

LABEL_6:
  v27 = [v16 issuerInstallmentManagementURL];
  v28 = v27 != 0;
  if (v27)
  {
    v29 = v27;
    sub_1BE04A9F4();

    v30 = 0;
    v16 = v29;
  }

  else
  {
    v30 = 1;
  }

  (*(v33 + 56))(v9, v30, 1, v34);
  sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  return v28;
}

uint64_t sub_1BD5BF50C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;

  return sub_1BE051704();
}

id sub_1BD5BF5AC(void *a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v15 - v10;
  result = [a1 issuerInstallmentManagementURL];
  if (result)
  {
    v13 = result;
    sub_1BE04A9F4();

    (*(v3 + 32))(v11, v6, v2);
    v14 = sub_1BE04A9C4();
    PKOpenURL();

    return (*(v3 + 8))(v11, v2);
  }

  return result;
}

id sub_1BD5BF6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8078], v2, v5);
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

uint64_t sub_1BD5BF860@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1A0);
  v11 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v12);
  v14 = &v50 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1A8);
  v16 = MEMORY[0x1EEE9AC00](v52, v15);
  v18 = &v50 - v17;
  if ([a1 isSetupPaymentOfferAfterPurchase] && (v56 = *a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140), sub_1BE0516A4(), v51 = v14, v19 = a4, v20 = v11, v21 = a5, v22 = a3, v23 = v55[0], swift_getKeyPath(), *&v56 = v23, sub_1BD5C343C(), sub_1BE04B594(), , v24 = *(v23 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent), v25 = v24, a3 = v22, a5 = v21, v11 = v20, a4 = v19, v14 = v51, , v24))
  {
    v26 = swift_allocObject();
    v27 = a2[1];
    *(v26 + 16) = *a2;
    *(v26 + 32) = v27;
    v28 = a2[3];
    *(v26 + 48) = a2[2];
    *(v26 + 64) = v28;
    *(v26 + 80) = a1;
    *(v26 + 88) = a4;
    *(v26 + 96) = a5;
    *(v26 + 104) = a3;
    LOBYTE(v55[0]) = 0;
    v29 = v25;
    sub_1BD5C3748(a2, &v56);
    v30 = a1;
    v31 = a4;
    v32 = a5;
    v33 = a3;
    sub_1BE051694();
    v34 = v56;
    v35 = *(&v56 + 1);
    LOBYTE(v55[0]) = 0;
    *&v56 = v30;
    *(&v56 + 1) = v24;
    *&v57 = v33;
    *(&v57 + 1) = sub_1BD5C3780;
    *&v58 = v26;
    BYTE8(v58) = 0;
    LOBYTE(v59) = v34;
    *(&v59 + 1) = v35;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    *(v18 + 4) = 0u;
    *(v18 + 5) = 0u;
    v18[96] = 0;
    v36 = v57;
    *v18 = v56;
    *(v18 + 1) = v36;
    v37 = v59;
    *(v18 + 2) = v58;
    *(v18 + 3) = v37;
    swift_storeEnumTagMultiPayload();
    v38 = v30;
    v39 = v33;
    sub_1BD0DE19C(&v56, v55, &qword_1EBD4C190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0);
    sub_1BE04F9A4();

    return sub_1BD0DE53C(&v56, &qword_1EBD4C190);
  }

  else
  {
    v41 = swift_allocObject();
    v51 = &v50;
    v42 = a2[1];
    *(v41 + 16) = *a2;
    *(v41 + 32) = v42;
    v43 = a2[3];
    *(v41 + 48) = a2[2];
    *(v41 + 64) = v43;
    *(v41 + 80) = a1;
    *(v41 + 88) = a4;
    *(v41 + 96) = a5;
    *(v41 + 104) = a3;
    MEMORY[0x1EEE9AC00](v41, v44);
    *(&v50 - 2) = a4;
    *(&v50 - 1) = a2;
    sub_1BD5C3748(a2, &v56);
    v45 = a1;
    v46 = a4;
    v47 = a5;
    v48 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1B0);
    sub_1BD0DE4F4(&qword_1EBD4C1B8, &qword_1EBD4C1B0);
    sub_1BE051704();
    v49 = v54;
    (*(v11 + 16))(v18, v14, v54);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C190);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0);
    sub_1BE04F9A4();
    return (*(v11 + 8))(v14, v49);
  }
}

uint64_t sub_1BD5BFDE4(_OWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a1[2];
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v10 = swift_allocObject();
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v12 = a1[3];
  v10[3] = a1[2];
  v10[4] = v12;
  sub_1BD5C3748(a1, v14);
  sub_1BD5BEC68(a2, a3, a4, a5, sub_1BD3AEAA4, v10);
}

id sub_1BD5BFED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1BE04F504();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1D0);
  return sub_1BD5BFF3C(a1, a2, a3 + *(v6 + 44));
}

id sub_1BD5BFF3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD425B8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 programName];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE052434();
    v26 = v25;
  }

  else
  {
    (*(v17 + 104))(v21, *MEMORY[0x1E69B8078], v16);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    v24 = sub_1BE04B6F4();
    v26 = v29;

    (*(v17 + 8))(v21, v16);
  }

  v45 = *(v42 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v44 == 1)
  {
    sub_1BE04E4F4();
    v30 = v41;
    (*(v4 + 32))(v15, v7, v41);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v41;
  }

  (*(v4 + 56))(v15, v31, 1, v30);
  *&v45 = v24;
  *(&v45 + 1) = v26;
  sub_1BD0DDEBC();
  v32 = sub_1BE0506C4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE19C(v15, v11, &qword_1EBD425B8);
  v39 = v43;
  sub_1BD0DE19C(v11, v43, &qword_1EBD425B8);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C1D8) + 48);
  *v40 = v32;
  *(v40 + 8) = v34;
  *(v40 + 16) = v36 & 1;
  *(v40 + 24) = v38;
  sub_1BD0D7F18(v32, v34, v36 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v15, &qword_1EBD425B8);
  sub_1BD0DDF10(v32, v34, v36 & 1);

  return sub_1BD0DE53C(v11, &qword_1EBD425B8);
}

id sub_1BD5C0320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C140);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();

  v3 = *(v7 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance);
  v4 = v3;

  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return a1;
}

uint64_t sub_1BD5C03F8(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1BE051704();
}

id sub_1BD5C0558@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8088], v2, v5);
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

void sub_1BD5C0714(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4C228);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0890(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD57A10);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0A0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD39D98);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0B88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E570);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0D04(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4C220);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD5C0E80(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4AB10);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_1BD5C0FFC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1BD5C1074@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD5C343C();
  sub_1BE04B594();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1BD5C1108(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD5C343C();
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD456C0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_1BD5C1270(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass) = 0;
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_provider) = result;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_library) = result;
      sub_1BE04B5C4();
      sub_1BD5C3BD4(a1, v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5C136C()
{
  v1[84] = v0;
  v2 = sub_1BE049184();
  v1[85] = v2;
  v1[86] = *(v2 - 8);
  v1[87] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[88] = v3;
  v1[89] = *(v3 - 8);
  v1[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  v1[91] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[92] = v4;
  v1[93] = *(v4 - 8);
  v1[94] = swift_task_alloc();
  sub_1BE0528A4();
  v1[95] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[96] = v6;
  v1[97] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD5C1554, v6, v5);
}

uint64_t sub_1BD5C1554()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[84];
  v5 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context;
  v0[98] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context;
  (*(v2 + 16))(v1, v4 + v5, v3);
  v0[99] = sub_1BE049944();
  v0[100] = v6;
  if (v6)
  {
    v0[101] = type metadata accessor for TransactionContext(0);
    sub_1BE049534();
    if (v7)
    {
      v8 = *(v0[84] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_library);
      v9 = sub_1BE052404();

      v10 = [v8 passWithFPANIdentifier_];
    }

    else
    {
      v10 = 0;
    }

    v11 = v0[84];
    sub_1BD5C1108(v10);
    swift_getKeyPath();
    v0[102] = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel___observationRegistrar;
    v0[76] = v11;
    v0[103] = sub_1BD5C343C();
    sub_1BE04B594();

    v12 = *(v11 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
    v0[104] = v12;
    if (v12)
    {
      v13 = *(v0[84] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_provider);
      v0[105] = v13;
      v14 = v12;
      v15 = sub_1BE052404();
      v0[106] = v15;
      v0[2] = v0;
      v0[7] = v0 + 77;
      v0[3] = sub_1BD5C1888;
      v16 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C200);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1BD16E918;
      v0[37] = &block_descriptor_135;
      v0[38] = v16;
      [v13 paymentOfferConfirmationRecordForTransactionWithPaymentHash:v15 completion:v0 + 34];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    (*(v0[93] + 8))(v0[94], v0[92]);
  }

  else
  {
    (*(v0[93] + 8))(v0[94], v0[92]);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD5C1888()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 856) = v2;
  if (v2)
  {

    v3 = *(v1 + 776);
    v4 = *(v1 + 768);
    v5 = sub_1BD5C2D50;
  }

  else
  {
    v3 = *(v1 + 776);
    v4 = *(v1 + 768);
    v5 = sub_1BD5C19A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5C19A8()
{
  v1 = *(v0 + 848);
  v8 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 672);
  sub_1BD5C0714(*(v0 + 616));

  swift_getKeyPath();
  *(v0 + 624) = v3;
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  *(v0 + 864) = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord;
  sub_1BD5C0890([*(v3 + v4) transactionDetailMessageTileDynamicContent]);
  v5 = [v2 uniqueID];
  *(v0 + 872) = v5;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 632;
  *(v0 + 88) = sub_1BD5C1B88;
  v6 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C208);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1BD1F07A8;
  *(v0 + 360) = &block_descriptor_83_0;
  *(v0 + 368) = v6;
  [v8 paymentOfferCriteriaForPassUniqueID:v5 criteriaType:1 completion:v0 + 336];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1BD5C1B88()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);

  return MEMORY[0x1EEE6DFA0](sub_1BD5C1C90, v2, v1);
}

uint64_t sub_1BD5C1C90()
{
  v1 = *(v0 + 632);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 800);
  v6 = *(v0 + 792);

  sub_1BD5C0A0C(v2);
  v7 = [v4 uniqueID];
  *(v0 + 880) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  sub_1BE048C84();
  sub_1BD1123D4(inited);
  swift_setDeallocating();
  sub_1BD1BCDE4(inited + 32);
  v9 = sub_1BE052A24();
  *(v0 + 888) = v9;

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 640;
  *(v0 + 152) = sub_1BD5C1EC0;
  v10 = swift_continuation_init();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C210);
  *(v0 + 400) = MEMORY[0x1E69E9820];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_1BD5C2FF4;
  *(v0 + 424) = &block_descriptor_86_0;
  *(v0 + 432) = v10;
  [v3 paymentRewardsRedemptionsForPassUniqueIdentifier:v7 paymentHashes:v9 completion:v0 + 400];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1BD5C1EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 896) = v2;
  if (v2)
  {

    v3 = *(v1 + 776);
    v4 = *(v1 + 768);
    v5 = sub_1BD5C2E34;
  }

  else
  {
    v3 = *(v1 + 776);
    v4 = *(v1 + 768);
    v5 = sub_1BD5C1FEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5C1FEC()
{
  v1 = *(v0 + 640);
  if (v1)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v4 = 0;
      v40 = v1;
      v41 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v41)
        {
          v6 = MEMORY[0x1BFB40900](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_17;
          }

          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = i;
        v10 = *(v0 + 800);
        v11 = *(v0 + 728);
        *(v0 + 576) = *(v0 + 792);
        *(v0 + 584) = v10;
        v12 = [v6 paymentHash];
        v13 = sub_1BE052434();
        v15 = v14;

        *(v0 + 592) = v13;
        *(v0 + 600) = v15;
        v16 = sub_1BE04B0F4();
        (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
        v38 = sub_1BD0DDEBC();
        v39 = v38;
        v17 = sub_1BE0535E4();
        sub_1BD0DE53C(v11, &qword_1EBD450F0);

        if (v17)
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v4;
        i = v9;
        v5 = v8 == v9;
        v1 = v40;
        if (v5)
        {
          v18 = v42;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v20 = *(v0 + 888);
    v21 = *(v0 + 880);

    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v22 = sub_1BE053704();
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else if (*(v18 + 16))
    {
LABEL_23:
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1BFB40900](0, v18);
      }

      else
      {
        if (!*(v18 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEDC1478](v22);
        }

        v23 = *(v18 + 32);
      }

      v24 = v23;

      v25 = v24;
      sub_1BD5C0D04(v24);
      v26 = [v25 balanceIdentifier];
      if (!v26)
      {
        sub_1BE052434();
        v26 = sub_1BE052404();
      }

      v27 = [*(v0 + 840) paymentRewardsBalanceWithIdentifier_];

      sub_1BD5C0B88(v27);
LABEL_34:
      *(v0 + 904) = v25;
      sub_1BE0490F4();
      *(v0 + 912) = sub_1BE0490B4();
      sub_1BE049A14();
      v31 = swift_task_alloc();
      *(v0 + 920) = v31;
      *v31 = v0;
      v31[1] = sub_1BD5C250C;
      v22 = *(v0 + 720);

      return MEMORY[0x1EEDC1478](v22);
    }
  }

  else
  {
    v19 = *(v0 + 880);
  }

  v28 = *(v0 + 864);
  v29 = *(v0 + 672);
  swift_getKeyPath();
  *(v0 + 648) = v29;
  sub_1BE04B594();

  if (*(v29 + v28) || (v30 = *(v0 + 672), swift_getKeyPath(), *(v0 + 656) = v30, sub_1BE04B594(), , *(v30 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria)))
  {
    v25 = 0;
    goto LABEL_34;
  }

  v32 = *(v0 + 832);
  v33 = *(v0 + 752);
  v34 = *(v0 + 744);
  v35 = *(v0 + 736);

  (*(v34 + 8))(v33, v35);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1BD5C250C(uint64_t a1)
{
  v3 = *v2;
  v3[116] = a1;
  v3[117] = v1;

  if (v1)
  {
    v4 = v3[104];
    v5 = v3[90];
    v6 = v3[89];
    v7 = v3[88];

    (*(v6 + 8))(v5, v7);
    v8 = v3[97];
    v9 = v3[96];
    v10 = sub_1BD5C2F20;
  }

  else
  {
    (*(v3[89] + 8))(v3[90], v3[88]);

    v8 = v3[97];
    v9 = v3[96];
    v10 = sub_1BD5C26C4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1BD5C26C4()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 904);
  v3 = *(v0 + 832);
  if (v1)
  {
    v4 = *(v0 + 808);
    v5 = *(v0 + 696);
    v6 = *(v0 + 688);
    v7 = *(v0 + 680);
    v8 = *(v0 + 672) + *(v0 + 784);
    sub_1BD0E5E8C(0, &qword_1EBD498E8);
    (*(v6 + 16))(v5, v8 + *(v4 + 24), v7);
    v9 = v1;
    v10 = sub_1BE052BF4();
    v11 = objc_opt_self();
    v12 = [v11 transactionFromFKPaymentTransaction:v9 institution:v10];
    *(v0 + 944) = v12;

    [v12 setPaymentRewardsRedemption_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B7020;
    *(v13 + 32) = v12;
    sub_1BD0E5E8C(0, &qword_1EBD4AB10);
    v14 = v12;
    v15 = sub_1BE052724();
    *(v0 + 952) = v15;

    v16 = [v3 deviceTransactionSourceIdentifiers];
    if (v16)
    {
      v17 = v16;
      v18 = *(v0 + 832);
      sub_1BE052A34();

      v19 = sub_1BE052A24();
      *(v0 + 960) = v19;

      v16 = [v18 uniqueID];
      *(v0 + 968) = v16;
      if (v16)
      {
        v20 = v16;
        v21 = *(v0 + 840);

        *(v0 + 208) = v0;
        *(v0 + 248) = v0 + 664;
        *(v0 + 216) = sub_1BD5C2AB0;
        v22 = swift_continuation_init();
        *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C218);
        *(v0 + 464) = MEMORY[0x1E69E9820];
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_1BD5C30F0;
        *(v0 + 488) = &block_descriptor_90;
        *(v0 + 496) = v22;
        [v11 augmentTransactionsIfNeeded:v15 transactionSourceIdentifiers:v19 passUniqueID:v20 usingDataProvider:v21 completion:v0 + 464];
        v16 = (v0 + 208);

        return MEMORY[0x1EEE6DEC8](v16);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v16);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 744);
  v25 = *(v0 + 736);

  (*(v24 + 8))(v23, v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1BD5C2AB0()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);

  return MEMORY[0x1EEE6DFA0](sub_1BD5C2BB8, v2, v1);
}

uint64_t sub_1BD5C2BB8()
{

  v1 = v0[83];
  if (v1 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1BFB40900](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = v0[121];
  v13 = v0[120];
  v14 = v0[119];
  v6 = v0[118];
  v7 = v0[113];
  v8 = v0[104];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  sub_1BD5C0E80(v4);

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD5C2D50()
{
  v1 = v0[106];
  v2 = v0[104];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];

  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD5C2E34()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[104];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD5C2F20()
{
  v1 = v0[113];
  v2 = v0[104];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD5C2FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4C220);
      v9 = sub_1BE052744();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD5C30F0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1BD0E5E8C(0, &qword_1EBD4AB10);
  **(*(v1 + 64) + 40) = sub_1BE052744();

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1BD5C3174()
{
  sub_1BD442180(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel_context);

  v1 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BD5C3274()
{
  sub_1BD5C3174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionOffersView.ViewModel()
{
  result = qword_1EBD4C0E8;
  if (!qword_1EBD4C0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5C3320()
{
  result = type metadata accessor for TransactionContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD5C343C()
{
  result = qword_1EBD4C148;
  if (!qword_1EBD4C148)
  {
    type metadata accessor for FinanceKitTransactionOffersView.ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C148);
  }

  return result;
}

unint64_t sub_1BD5C34A4()
{
  result = qword_1EBD4C160;
  if (!qword_1EBD4C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C158);
    sub_1BD5C355C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C160);
  }

  return result;
}

unint64_t sub_1BD5C355C()
{
  result = qword_1EBD4C168;
  if (!qword_1EBD4C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C168);
  }

  return result;
}

unint64_t sub_1BD5C35C0()
{
  result = qword_1EBD4C180;
  if (!qword_1EBD4C180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C178);
    sub_1BD5C3678();
    sub_1BD0DE4F4(&qword_1EBD4C198, &qword_1EBD4C1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C180);
  }

  return result;
}

unint64_t sub_1BD5C3678()
{
  result = qword_1EBD4C188;
  if (!qword_1EBD4C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C190);
    sub_1BD198CAC();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C188);
  }

  return result;
}

uint64_t objectdestroy_59Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_1BD5C386C()
{
  result = qword_1EBD4C1F8;
  if (!qword_1EBD4C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C1F0);
    sub_1BD4881B0();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C1F8);
  }

  return result;
}

uint64_t sub_1BD5C3924@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C860);
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
  sub_1BE051694();
  type metadata accessor for FinanceKitTransactionOffersView.ViewModel();
  result = sub_1BE051694();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  return result;
}

void sub_1BD5C3A14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pass) = v2;
  v4 = v2;
}

void sub_1BD5C3A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__pkTransaction) = v2;
  v4 = v2;
}

void sub_1BD5C3A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsRedemption) = v2;
  v4 = v2;
}

void sub_1BD5C3AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__rewardsBalance) = v2;
  v4 = v2;
}

void sub_1BD5C3B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__installmentCriteria) = v2;
  v4 = v2;
}

void sub_1BD5C3B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__dynamicTileMessageContent) = v2;
  v4 = v2;
}

void sub_1BD5C3B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionOffersView9ViewModel__paymentOfferConfirmationRecord) = v2;
  v4 = v2;
}

uint64_t sub_1BD5C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD5C3C54(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v57 = sub_1BE04D214();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v53 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v53 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v53 - v20;
  v22 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
  *(v22 + 8) = 0;
  v56 = v22;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_presentationConfiguration] = 0;
  v23 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_identifier];
  *v23 = 0xD00000000000001ALL;
  v23[1] = 0x80000001BE130930;
  v55 = OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController] = 0;
  v58 = a2;
  v24 = [a2 criteriaIdentifier];
  if (!v24)
  {
    sub_1BE04D0E4();
    v37 = sub_1BE04D204();
    v38 = sub_1BE052C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v37, v38, "No criteriaIdentifier set on the product dictionary", v39, 2u);
      MEMORY[0x1BFB45F20](v39, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v21, v57);
    goto LABEL_24;
  }

  v25 = v24;
  v53[1] = v23;
  v53[0] = sub_1BE052434();
  v27 = v26;
  v28 = a1;
  v29 = sub_1BE04BBD4();
  v30 = [v29 paymentOffersController];

  if (!v30)
  {

    sub_1BE04D0E4();
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1BD026000, v40, v41, "paymentOffersController not defined on the provisioningController", v42, 2u);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v17, v57);
    goto LABEL_24;
  }

  v31 = [v30 paymentOfferCriteriaForIdentifier_];

  if (!v31)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

LABEL_16:
    sub_1BE04D0E4();
    sub_1BE048C84();
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C54();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136315138;
      v47 = sub_1BD123690(v53[0], v27, &v60);
      v53[0] = v30;
      v48 = v47;

      *(v45 + 4) = v48;
      _os_log_impl(&dword_1BD026000, v43, v44, "No criteria defined on paymentOffersController for %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1BFB45F20](v46, -1, -1);
      MEMORY[0x1BFB45F20](v45, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v9, v57);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = v58;
  if ([v58 supportsSetupProductMethodForType_])
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_context] = v28;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_product] = v34;
    v35 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier];
    *v35 = v53[0];
    *(v35 + 1) = v27;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController] = v30;
    *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteria] = v33;
    v59.receiver = v3;
    v59.super_class = ObjectType;
    return objc_msgSendSuper2(&v59, sel_init);
  }

  sub_1BE04D0E4();
  v49 = sub_1BE04D204();
  v50 = sub_1BE052C54();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v53[0] = v30;
    v52 = v51;
    *v51 = 0;
    _os_log_impl(&dword_1BD026000, v49, v50, "The product does not support the web setup product method", v51, 2u);
    MEMORY[0x1BFB45F20](v52, -1, -1);
  }

  else
  {
  }

  (*(v54 + 8))(v13, v57);
LABEL_24:
  sub_1BD0D4534(v56);

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1BD5C43F4(void (*a1)(id, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v110 = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v102 - v15;
  v17 = sub_1BE04BD74();
  v107 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v106 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v102 - v23;
  v25 = [*(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_product) criteriaIdentifier];
  if (v25)
  {
    v26 = v25;
    v104 = v17;
    v108 = a1;
    v27 = sub_1BE052434();
    v29 = v28;
    v105 = v2;
    v30 = sub_1BE04BBD4();
    v109 = [v30 paymentOffersController];

    if (v109)
    {
      v31 = [v109 paymentOfferCriteriaForIdentifier_];

      if (v31)
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v32;

          v34 = [v33 associatedPassUniqueID];
          if (!v34)
          {
            goto LABEL_35;
          }

          v35 = v34;
          sub_1BE052434();

          v36 = sub_1BE04BBD4();
          v37 = [v36 webService];

          if (!v37)
          {

            goto LABEL_35;
          }

          v38 = [v37 targetDevice];
          if (v38)
          {
            v39 = v38;
            if ([v38 respondsToSelector_])
            {
              if ([v39 respondsToSelector_])
              {
                swift_unknownObjectRetain();
                v40 = v37;
                v41 = sub_1BE052404();
                v42 = [v39 paymentWebService:v40 hasPassWithUniqueID:v41];

                swift_unknownObjectRelease_n();
                if ((v42 & 1) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_28;
              }

              goto LABEL_32;
            }

            if ([v39 respondsToSelector_])
            {
              if (([v39 respondsToSelector_] & 1) == 0)
              {
LABEL_32:

                swift_unknownObjectRelease();
                goto LABEL_35;
              }

              swift_unknownObjectRetain();
              v59 = v37;
              v60 = sub_1BE052404();
              v61 = [v39 paymentWebService:v59 passWithUniqueID:v60];

              swift_unknownObjectRelease_n();
              if (v61)
              {

LABEL_28:
                v62 = *MEMORY[0x1E69B8078];
                v63 = v107;
                v64 = *(v107 + 13);
                v65 = v104;
                v64(v24, v62, v104);
                v66 = PKPassKitBundle();
                if (v66)
                {
                  v67 = v66;
                  v103 = sub_1BE04B6F4();
                  v102 = v68;

                  v69 = *(v63 + 1);
                  v69(v24, v65);
                  v107 = "VISIONED_ALERT_TITLE";
                  v70 = v106;
                  v64(v106, v62, v65);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
                  v71 = swift_allocObject();
                  *(v71 + 16) = xmmword_1BE0B69E0;
                  v72 = [v33 issuerName];
                  v73 = sub_1BE052434();
                  v75 = v74;

                  v76 = MEMORY[0x1E69E6158];
                  *(v71 + 56) = MEMORY[0x1E69E6158];
                  *(v71 + 64) = sub_1BD110550();
                  *(v71 + 32) = v73;
                  *(v71 + 40) = v75;
                  v77 = sub_1BE04B714();
                  v79 = v78;

                  v69(v70, v65);
                  v80 = *MEMORY[0x1E69BB840];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1BE0B6CA0;
                  *(inited + 32) = sub_1BE052434();
                  *(inited + 72) = v76;
                  v82 = v103;
                  *(inited + 40) = v83;
                  *(inited + 48) = v82;
                  *(inited + 56) = v102;
                  *(inited + 80) = sub_1BE052434();
                  *(inited + 88) = v84;
                  *(inited + 120) = v76;
                  *(inited + 96) = v77;
                  *(inited + 104) = v79;
                  v85 = v80;
                  sub_1BD1AACF8(inited);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
                  swift_arrayDestroy();
                  v86 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
                  v87 = sub_1BE052224();

                  v88 = [v86 initWithDomain:v85 code:0 userInfo:v87];

                  v89 = swift_allocObject();
                  v90 = v108;
                  v91 = v110;
                  v89[2] = v108;
                  v89[3] = v91;
                  v89[4] = v88;
                  v92 = v88;
                  sub_1BE048964();
                  v93 = sub_1BE04A844();

                  v94 = swift_allocObject();
                  *(v94 + 16) = sub_1BD5C6964;
                  *(v94 + 24) = v89;
                  v115 = sub_1BD1B6F78;
                  v116 = v94;
                  aBlock = MEMORY[0x1E69E9820];
                  v112 = 1107296256;
                  v113 = sub_1BD126964;
                  v114 = &block_descriptor_33_4;
                  v95 = _Block_copy(&aBlock);
                  sub_1BE048964();

                  v96 = PKAlertForDisplayableErrorWithCancelHandler(v93, 0, v95);
                  _Block_release(v95);

                  if (v96)
                  {
                    v97 = v105 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v98 = *(v97 + 8);
                      ObjectType = swift_getObjectType();
                      (*(v98 + 24))(v96, ObjectType, v98);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                    v101 = v92;
                    v90(v92, 0xD000000000000029, 0x80000001BE130A80, 4);
                  }
                }

                else
                {
                  __break(1u);
                }

                return;
              }

LABEL_35:
              v108(0, 0, 0, 0);

              v100 = v109;

              return;
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_35;
        }
      }

      aBlock = 0;
      v112 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD000000000000033, 0x80000001BE1309E0);
      MEMORY[0x1BFB3F610](v27, v29);

      v53 = aBlock;
      v54 = v112;
      sub_1BE04D0E4();
      sub_1BE048C84();
      v55 = sub_1BE04D204();
      v56 = sub_1BE052C54();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1BD123690(v53, v54, &aBlock);
        _os_log_impl(&dword_1BD026000, v55, v56, "%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1BFB45F20](v58, -1, -1);
        MEMORY[0x1BFB45F20](v57, -1, -1);
      }

      (*(v5 + 8))(v16, v4);
      v108(v53, v54, 0, 1);
    }

    else
    {

      sub_1BE04D0E4();
      v49 = sub_1BE04D204();
      v50 = sub_1BE052C54();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1BD123690(0xD000000000000041, 0x80000001BE130990, &aBlock);
        _os_log_impl(&dword_1BD026000, v49, v50, "%s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1BFB45F20](v52, -1, -1);
        MEMORY[0x1BFB45F20](v51, -1, -1);
      }

      (*(v5 + 8))(v12, v4);
      v108(0xD000000000000041, 0x80000001BE130990, 0, 1);
    }
  }

  else
  {
    sub_1BE04D0E4();
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C54();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = a1;
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v45 = 136315138;
      *(v45 + 4) = sub_1BD123690(0xD000000000000033, 0x80000001BE130950, &aBlock);
      _os_log_impl(&dword_1BD026000, v43, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v48 = v47;
      a1 = v46;
      MEMORY[0x1BFB45F20](v48, -1, -1);
      MEMORY[0x1BFB45F20](v45, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    a1(0xD000000000000033, 0x80000001BE130950, 0, 1);
  }
}

void sub_1BD5C5160(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  v6 = PKDisplayableErrorForCommonType();
  if (v6)
  {
    a1 = 0;
LABEL_4:
    v7 = a1;
    v8 = v6;
    v9 = sub_1BE04A844();

    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v16[4] = sub_1BD1B5F6C;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BD126964;
  v16[3] = &block_descriptor_14_2;
  v11 = _Block_copy(v16);
  sub_1BE048964();

  v12 = PKAlertForDisplayableErrorWithCancelHandler(v9, 0, v11);
  _Block_release(v11);

  if (v12)
  {
    v13 = v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v12, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

void sub_1BD5C5338(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController];
  v6 = sub_1BE052404();
  v13 = [v5 dynamicContentPageForCriteriaIdentifier:v6 pageType:1];

  if (v13)
  {
    sub_1BD5C55CC(1, 0, a1, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0D39A0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v8 = sub_1BE052404();
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    sub_1BD22CFF8();
    v9 = sub_1BE052A24();

    v10 = swift_allocObject();
    v10[2] = v2;
    v10[3] = a1;
    v10[4] = a2;
    aBlock[4] = sub_1BD5C686C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3CC8C0;
    aBlock[3] = &block_descriptor_136;
    v11 = _Block_copy(aBlock);
    v12 = v2;
    sub_1BE048964();

    [v5 updateDynamicContentPageForCriteriaIdentifier:v8 pageTypes:v9 completion:v11];
    _Block_release(v11);
  }
}

void sub_1BD5C55CC(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView();
  MEMORY[0x1EEE9AC00](v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v52 - v22;
  if (a1)
  {
    v57 = v21;
    v59 = a3;
    v60 = a4;
    v24 = *(v4 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_paymentOffersController);
    v25 = sub_1BE052404();
    v26 = [v24 dynamicContentPageForCriteriaIdentifier:v25 pageType:1];

    if (v26)
    {
      v54 = *(v4 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteria);
      v27 = swift_allocObject();
      v56 = v26;
      v28 = v27;
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = 0;
      v54 = v54;
      v53 = v24;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
      sub_1BE051694();
      *(v23 + 7) = v62;
      v29 = type metadata accessor for MultiHyperLinkDetailSheet();
      (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
      sub_1BD0DE19C(v16, v12, &unk_1EBD45160);
      sub_1BE051694();
      sub_1BD0DE53C(v16, &unk_1EBD45160);
      v30 = &v23[*(v17 + 60)];
      LOBYTE(v61) = 0;
      sub_1BE051694();
      v31 = *(&v62 + 1);
      *v30 = v62;
      *(v30 + 1) = v31;
      v33 = v53;
      v32 = v54;
      *v23 = v53;
      *(v23 + 1) = v32;
      v34 = v55;
      *(v23 + 2) = v56;
      *(v23 + 3) = 0;
      *(v23 + 4) = sub_1BD5C6878;
      *(v23 + 5) = v28;
      *(v23 + 6) = PKEdgeInsetsMake;
      *(v23 + 7) = 0;
      *(v23 + 8) = sub_1BD5C6880;
      *(v23 + 9) = v34;
      v35 = v58;
      *(v23 + 10) = sub_1BD5C6888;
      *(v23 + 11) = v35;
      *(v23 + 12) = PKEdgeInsetsMake;
      *(v23 + 13) = 0;
      *&v62 = 0;
      BYTE8(v62) = -32;
      v36 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
      v37 = v32;
      v38 = v33;
      v39 = v33;
      v40 = v38;
      v41 = v32;
      v42 = v4;
      v43 = sub_1BD8D1EE0(&v62, v39, v41);

      v44 = &v23[*(v17 + 64)];
      v61 = v43;
      sub_1BE051694();

      v45 = *(&v62 + 1);
      *v44 = v62;
      *(v44 + 1) = v45;
      sub_1BD5C6890(v23, v57, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
      v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C288));
      v47 = sub_1BE04F894();
      v48 = *(v42 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController);
      *(v42 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController) = v47;

      v59(1);
      sub_1BD5C68F8(v23, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
      return;
    }

    v49 = a2;
    v50 = v59;
    v51 = v60;
  }

  else
  {
    v49 = a2;
    v50 = a3;
    v51 = a4;
  }

  sub_1BD5C5160(v49, v50, v51);
}

uint64_t sub_1BD5C5AD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = v22;
  v18[5] = a5;
  aBlock[4] = sub_1BD5C6958;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_4;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

void sub_1BD5C5DAC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2)
    {
      v14 = a2;
      sub_1BE04D0E4();
      v15 = a2;
      v16 = v13;
      v17 = sub_1BE04D204();
      v18 = sub_1BE052C54();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v34 = a3;
        v20 = v19;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v33;
        *v20 = 136315394;
        v31 = v17;
        v21 = a4;
        v22 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier];
        v23 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_criteriaIdentifier + 8];
        sub_1BE048C84();
        v24 = sub_1BD123690(v22, v23, &v35);

        *(v20 + 4) = v24;
        a4 = v21;
        *(v20 + 12) = 2112;
        v25 = a2;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v26;
        v17 = v31;
        v27 = v32;
        *v32 = v26;
        _os_log_impl(&dword_1BD026000, v17, v18, "Could not get splash screen dynamic content for %s. Error: %@", v20, 0x16u);
        sub_1BD0DE53C(v27, &unk_1EBD3E590);
        MEMORY[0x1BFB45F20](v27, -1, -1);
        v28 = v33;
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1BFB45F20](v28, -1, -1);
        v29 = v20;
        a3 = v34;
        MEMORY[0x1BFB45F20](v29, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v30 = a2;
      sub_1BD5C5160(a2, a3, a4);
    }

    else
    {
      sub_1BD5C55CC(1, 0, a3, a4);
    }
  }
}

void sub_1BD5C6080(uint64_t a1)
{
  v2 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  sub_1BD0DE19C(a1, v9, &qword_1EBD520A0);
  v12 = type metadata accessor for AvailablePass(0);
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD520A0);
LABEL_7:
    v27 = &v11[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 1);
      ObjectType = swift_getObjectType();
      v33 = 0u;
      v34 = 0u;
      v35 = 2;
      v30 = v11;
      sub_1BD865A00(v30, &off_1F3BB05A8, &v33, ObjectType, v28);
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    return;
  }

  sub_1BD5C6890(v9, v5, type metadata accessor for WrappedPass);
  sub_1BD5C68F8(v9, type metadata accessor for AvailablePass);
  v13 = WrappedPass.secureElementPass.getter();
  sub_1BD5C68F8(v5, type metadata accessor for WrappedPass);
  if (!v13)
  {
    goto LABEL_7;
  }

  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = v13;
  v15 = v13;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  v17 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v18 = sub_1BE048964();
  v19 = sub_1BD989980(v18, v16);

  v20 = &v11[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 1);
    v22 = swift_getObjectType();
    v23 = v11;
    v24 = sub_1BE04BD44();
    *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    v32 = v15;
    *&v33 = v24;
    v35 = 0;
    v25 = *(v21 + 8);
    v26 = v19;
    v25(v23, &off_1F3BB05A8, &v33, v19, &off_1F3BC8F80, v22, v21);
    swift_unknownObjectRelease();

LABEL_9:
    sub_1BD0DE53C(&v33, &unk_1EBD3F510);
    return;
  }
}

uint64_t sub_1BD5C647C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v2 = sub_1BE04C384();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BE0B69E0;
    sub_1BD6FB2CC();
    *(v5 + v4) = v6;
    (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B82A8], v2);
    sub_1BE04C3D4();
    swift_allocObject();
    v7 = sub_1BE04C394();
    v8 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_context];
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v9 = swift_allocObject();
    v9[5] = 0;
    swift_unknownObjectWeakInit();
    v9[6] = 0xD000000000000018;
    v9[7] = 0x80000001BE124910;
    v9[8] = 0;
    v9[2] = v8;
    v9[3] = v7;
    v10 = &v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      sub_1BE048964();
      sub_1BE048964();
      v13 = v1;
      sub_1BD865948(v13, &off_1F3BB05A8, v9, &off_1F3BA8BB8, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE048964();
    }
  }

  return result;
}

void sub_1BD5C66C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v6, 0, sizeof(v6));
      v7 = 2;
      v5 = v1;
      sub_1BD865A00(v5, &off_1F3BB05A8, v6, ObjectType, v3);
      swift_unknownObjectRelease();

      sub_1BD0DE53C(v6, &unk_1EBD3F510);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD5C679C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5C67D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD5C682C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningIssuerInstallmentsFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD5C6890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5C68F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD5C6964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = v2;
  v1(v2, 0xD000000000000029, 0x80000001BE130A80, 4);
}

id sub_1BD5C69F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v1 setAutocorrectionType_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C308);
  sub_1BE04FF74();
  [v1 setDelegate_];

  sub_1BE04FF74();
  [v1 addTarget:v6 action:sel_textFieldDidChangeWithTextField_ forControlEvents:0x20000];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  [v1 setAccessibilityIdentifier_];
  return v1;
}

uint64_t sub_1BD5C6B7C()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v2 == 1)
  {
    sub_1BE0516A4();
    if (v2)
    {
      return 0;
    }
  }

  sub_1BD1F2290();
  sub_1BE051264();
  return sub_1BE052FE4();
}

id sub_1BD5C6C28(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C308);
  sub_1BE04FF74();
  v4 = v32;
  v5 = &v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent];
  v6 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 48];
  v8 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent];
  v7 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 16];
  v34[2] = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 32];
  v34[3] = v6;
  v34[0] = v8;
  v34[1] = v7;
  v10 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 80];
  v9 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 96];
  v11 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 64];
  v35 = *&v32[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 112];
  v34[5] = v10;
  v34[6] = v9;
  v34[4] = v11;
  v12 = *v2;
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  *(v5 + 2) = *(v2 + 32);
  *(v5 + 3) = v14;
  *v5 = v12;
  *(v5 + 1) = v13;
  v15 = *(v2 + 64);
  v16 = *(v2 + 80);
  v17 = *(v2 + 96);
  *(v5 + 14) = *(v2 + 112);
  *(v5 + 5) = v16;
  *(v5 + 6) = v17;
  *(v5 + 4) = v15;
  sub_1BD5C75CC(v2, v33);
  sub_1BD5C7604(v34);

  v18 = *(v2 + 16);
  v33[0] = *v2;
  v33[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  MEMORY[0x1BFB3E970](&v32, v19);
  v20 = sub_1BE052404();

  [a1 setText_];

  v21 = sub_1BD5C6B7C();
  [a1 setTextColor_];

  if ((*(v2 + 56) & 1) != 0 || (*(v2 + 32) & 1) == 0)
  {
    sub_1BD1ACD28(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v23 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v24 = sub_1BD1F2290();
    v25 = v23;
    sub_1BE051264();
    v26 = sub_1BE052FE4();
    *(inited + 64) = v24;
    *(inited + 40) = v26;
    sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
  }

  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v28 = sub_1BE052404();
  type metadata accessor for Key(0);
  sub_1BD372728();
  v29 = sub_1BE052224();

  v30 = [v27 initWithString:v28 attributes:v29];

  [a1 setAttributedPlaceholder_];
  [a1 setTextContentType_];
  return [a1 setAutocapitalizationType_];
}

uint64_t sub_1BD5C6EE4()
{
  v1 = v0;
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  MEMORY[0x1BFB3E970](v8, v3);
  v5 = v8[0];
  v4 = v8[1];

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = *(v1 + 88);
  LOBYTE(v8[0]) = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v9 = *(v1 + 104);
  LOBYTE(v8[0]) = 1;
  return sub_1BE0516B4();
}

id sub_1BD5C725C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressEditingTextField.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD5C73B8@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v22 = v1[4];
  v23 = v3;
  v24 = v1[6];
  v25 = *(v1 + 14);
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  v5 = v1[3];
  v20 = v1[2];
  v21 = v5;
  v6 = type metadata accessor for AddressEditingTextField.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent];
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v8 + 2) = v20;
  *(v8 + 3) = v9;
  *v8 = v11;
  *(v8 + 1) = v10;
  v13 = v23;
  v12 = v24;
  v14 = v22;
  *(v8 + 14) = v25;
  *(v8 + 5) = v13;
  *(v8 + 6) = v12;
  *(v8 + 4) = v14;
  sub_1BD5C75CC(&v18, v17);
  v16.receiver = v7;
  v16.super_class = v6;
  result = objc_msgSendSuper2(&v16, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD5C7484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5C7634();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5C74E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5C7634();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5C754C()
{
  sub_1BD5C7634();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5C7578()
{
  result = qword_1EBD4C300;
  if (!qword_1EBD4C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C300);
  }

  return result;
}

unint64_t sub_1BD5C7634()
{
  result = qword_1EBD4C310;
  if (!qword_1EBD4C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C310);
  }

  return result;
}

uint64_t sub_1BD5C7688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1BE053B84(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD5C770C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1BD5C795C(v7, v9) & 1;
}

uint64_t sub_1BD5C7778()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();

    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5C781C()
{
  v1 = [*v0 identifier];
  if (!v1)
  {
    return sub_1BE053D24();
  }

  v2 = v1;
  sub_1BE052434();

  sub_1BE053D24();
  sub_1BE052524();
}

uint64_t sub_1BD5C78BC()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_1BE052434();

    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5C795C(uint64_t a1, uint64_t a2)
{
  sub_1BD22F42C();
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v8 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v7 & 1) != 0 || v4 != v6)
    {
      return result;
    }
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);
  if (v10)
  {
    if (!v11 || (*(a1 + 56) != *(a2 + 56) || v10 != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD5C7AA0(void *a1)
{
  v2 = [a1 dateComponentsRange];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69B8790]) init];
    v5 = [v4 stringFromDateComponentsRange_];

    if (v5)
    {
      v6 = sub_1BE052434();

      goto LABEL_7;
    }
  }

  v7 = [a1 detail];
  if (!v7)
  {
    return 0;
  }

  v3 = v7;
  v6 = sub_1BE052434();
LABEL_7:

  return v6;
}

void sub_1BD5C7B84(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD22F42C();
  v7 = [a1 amount];
  v8 = [objc_opt_self() zero];
  v9 = sub_1BE053074();

  if (v9)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
    v10 = PKPassKitBundle();
    if (v10)
    {
      v11 = v10;
      sub_1BE04B6F4();

      (*(v3 + 8))(v6, v2);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  v12 = [a1 amount];
  v13 = sub_1BE052404();
  v14 = PKFormattedCurrencyStringFromNumber();

  if (!v14)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1BE052434();
}

uint64_t sub_1BD5C7DB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BD5C7DF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5C7E60()
{
  result = qword_1EBD4C320;
  if (!qword_1EBD4C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C320);
  }

  return result;
}

uint64_t sub_1BD5C7EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BD5C7EFC(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD5C7F50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C330);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v15[-v3];
  sub_1BD5C81AC(&v15[-v3]);
  v5 = swift_allocObject();
  v6 = v0[3];
  *(v5 + 3) = v0[2];
  *(v5 + 4) = v6;
  *(v5 + 5) = v0[4];
  v7 = v0[1];
  *(v5 + 1) = *v0;
  *(v5 + 2) = v7;
  v8 = &v4[*(v1 + 36)];
  *v8 = sub_1BD5CA3EC;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD5CA410(v0, v16);
    v10 = v9;
    sub_1BE04D8B4();

    v15[15] = v16[0];
    v11 = swift_allocObject();
    v12 = v0[3];
    v11[3] = v0[2];
    v11[4] = v12;
    v11[5] = v0[4];
    v13 = v0[1];
    v11[1] = *v0;
    v11[2] = v13;
    sub_1BD5CA410(v0, v16);
    sub_1BD5CA4D0();
    sub_1BE051064();

    return sub_1BD0DE53C(v4, &qword_1EBD4C330);
  }

  else
  {
    sub_1BD5CA410(v0, v16);
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5C81AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C390);
  v38 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v5 = v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C380);
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v6);
  v8 = v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3A0);
  MEMORY[0x1EEE9AC00](v45, v9);
  v42 = v36 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3A8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v13 = v36 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C358);
  MEMORY[0x1EEE9AC00](v44, v14);
  v16 = v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C368);
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v36 - v19;
  v49 = v1[4];
  v47[0] = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C398);
  sub_1BE0516A4();
  v21 = *(v48 + 16);

  if (v21)
  {
    v47[0] = v49;
    sub_1BE0516A4();
    v22 = sub_1BD6CA5A4(v48);

    v48 = v22;
    swift_getKeyPath();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v24 = *v2;
    *(v23 + 40) = v2[1];
    v25 = v2[3];
    *(v23 + 56) = v2[2];
    *(v23 + 72) = v25;
    *(v23 + 88) = v2[4];
    *(v23 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1BD5CA898;
    *(v26 + 24) = v23;
    sub_1BD5CA410(v2, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3B0);
    sub_1BD0DE4F4(&qword_1EBD4C3B8, &qword_1EBD4C3B0);
    sub_1BD5CA8E4();
    sub_1BD5CA6F8();
    sub_1BE0519C4();
    v27 = v39;
    (*(v39 + 2))(v13, v20, v17);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CA674();
    sub_1BD5CA74C();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v16, v42, &qword_1EBD4C358);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CA5E8();
    sub_1BD5CA808();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v16, &qword_1EBD4C358);
    return (*(v27 + 1))(v20, v17);
  }

  else
  {
    v36[0] = v5;
    v29 = v38;
    v39 = v13;
    v36[1] = v17;
    v30 = v43;
    v31 = *v1;
    if (*v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v31;
      sub_1BE04D8B4();

      if (v47[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F48);
        sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48);
        sub_1BE051A44();
        v33 = v37;
        v34 = v41;
        (*(v37 + 16))(v39, v8, v41);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA674();
        sub_1BD5CA74C();
        sub_1BE04F9A4();
        sub_1BD0DE19C(v16, v42, &qword_1EBD4C358);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA5E8();
        sub_1BD5CA808();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v16, &qword_1EBD4C358);
        return (*(v33 + 8))(v8, v34);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58);
        sub_1BD3A552C();
        v35 = v36[0];
        sub_1BE051A44();
        (*(v29 + 16))(v42, v35, v30);
        swift_storeEnumTagMultiPayload();
        sub_1BD5CA5E8();
        sub_1BD5CA808();
        sub_1BE04F9A4();
        return (*(v29 + 8))(v35, v30);
      }
    }

    else
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD5C8A1C()
{
  if (*v0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    v3 = *v0;
    sub_1BD2F3FCC(v1, v2);
    v5 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C398);
    sub_1BE0516B4();
    if (v2)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v5 >> 62)
      {
        sub_1BE053704();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  else
  {
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5C8BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD5C8C5C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA8);
  return sub_1BD5C8CAC(a1 + *(v2 + 44));
}

uint64_t sub_1BD5C8CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  sub_1BE04E4F4();
  v11 = *(v3 + 16);
  v11(v6, v10, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FB0);
  v11((a1 + *(v12 + 48)), v6, v2);
  v13 = a1 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = *(v3 + 8);
  v14(v10, v2);
  return (v14)(v6, v2);
}

id sub_1BD5C8E38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80E0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    *&v30 = v10;
    *(&v30 + 1) = v12;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v10) = v15;
    v17 = v16;
    sub_1BE051CD4();
    sub_1BE04EE54();
    v18 = v10 & 1;
    v37 = v10 & 1;
    v19 = sub_1BE050414();
    KeyPath = swift_getKeyPath();
    v21 = [objc_opt_self() secondaryLabelColor];
    v22 = sub_1BE0511C4();
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    result = sub_1BE0501D4();
    v38 = 1;
    *a1 = v29;
    *(a1 + 8) = v14;
    *(a1 + 16) = v18;
    *(a1 + 24) = v17;
    v25 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v25;
    *(a1 + 128) = v36;
    v26 = v31;
    *(a1 + 32) = v30;
    *(a1 + 48) = v26;
    v27 = v33;
    *(a1 + 64) = v32;
    *(a1 + 80) = v27;
    *(a1 + 144) = KeyPath;
    *(a1 + 152) = v19;
    *(a1 + 160) = v23;
    *(a1 + 168) = v22;
    *(a1 + 176) = v24;
    *(a1 + 184) = 1;
    *(a1 + 192) = result;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5C9100@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_1BE04F5B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3D0);
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v11);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3D8);
  MEMORY[0x1EEE9AC00](v27, v14);
  v16 = &v26 - v15;
  v30 = a1;
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3E0);
  sub_1BD0DE4F4(&qword_1EBD4C3E8, &qword_1EBD4C3E0);
  sub_1BE051A44();
  if (a2)
  {
    sub_1BE04F5A4();
  }

  else
  {
    sub_1BE04F594();
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3F0) + 36);
  (*(v6 + 16))(&v16[v17], v9, v5);
  v18 = *(v6 + 56);
  v18(&v16[v17], 0, 1, v5);
  (*(v10 + 32))(v16, v13, v28);
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v27 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v6 + 32))(v20 + v21, v9, v5);
  v18(v20 + v21, 0, 1, v5);
  *v20 = KeyPath;
  v22 = sub_1BE04F794();
  v23 = v29;
  sub_1BD0DE204(v16, v29, &qword_1EBD4C3D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C3F8);
  v25 = (v23 + *(result + 36));
  *v25 = v22;
  v25[1] = sub_1BD3A51BC;
  v25[2] = 0;
  return result;
}

id sub_1BD5C946C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v46) = a2;
  v45 = a3;
  v4 = sub_1BE04BD74();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C400);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  v49 = a1;
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416B0);
  sub_1BD0DE4F4(&qword_1EBD4C408, &qword_1EBD416B0);
  sub_1BD5CA998(&qword_1EBD4C3C8, sub_1BD3B7D94);
  sub_1BD5CAAA0();
  v48 = v15;
  sub_1BE0519C4();
  v16 = 0;
  v17 = 0;
  v47 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if ((v46 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v46 = sub_1BE04EEC4();
  v40 = v21;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v22 = sub_1BE04EEC4();
  v39 = v23;
  v25 = v41;
  v24 = v42;
  (*(v41 + 104))(v44, *MEMORY[0x1E69B80E0], v42);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = v44;
    v19 = sub_1BE04B6F4();
    v20 = v29;

    (*(v25 + 8))(v28, v24);
    v47 = v22;
    sub_1BE048964();
    sub_1BE048C84();
    v16 = v46;
    v30 = v46;
    v18 = v39;
    v17 = v40;
LABEL_4:
    v31 = *(v8 + 16);
    v31(v11, v48, v7);
    v32 = v11;
    v43 = v11;
    v33 = v7;
    v34 = v45;
    v31(v45, v32, v33);
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C418) + 48)];
    v36 = v47;
    sub_1BD5CAAF4(v16, v17, v47, v18, v19, v20);
    sub_1BD5CAB4C(v16, v17, v36, v18, v19, v20);
    *v35 = v16;
    *(v35 + 1) = v17;
    *(v35 + 2) = v36;
    *(v35 + 3) = v18;
    *(v35 + 4) = v19;
    *(v35 + 5) = v20;
    v37 = *(v8 + 8);
    v37(v48, v33);
    sub_1BD5CAB4C(v16, v17, v36, v18, v19, v20);
    return (v37)(v43, v33);
  }

  __break(1u);
  return result;
}

__n128 sub_1BD5C992C@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v4 = v3;
  v5 = sub_1BE04EEC4();
  v7 = v6;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v8 = sub_1BE04EEC4();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  result = v12;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_1BD5C9A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1BE04C744();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C734();
  v36 = *(v8 - 8);
  v9 = v36;
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C448);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v36 - v23);
  *v24 = sub_1BE051CE4();
  v24[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C450);
  sub_1BD5C9DA0(a1, v24 + *(v26 + 44));
  (*(v4 + 104))(v7, *MEMORY[0x1E69BC950], v3);
  sub_1BE04C724();
  sub_1BD0DE19C(v24, v20, &qword_1EBD4C448);
  v39 = 1;
  v27 = *(v9 + 16);
  v28 = v12;
  v29 = v37;
  v27(v12, v16, v37);
  v30 = v38;
  sub_1BD0DE19C(v20, v38, &qword_1EBD4C448);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C458);
  v32 = v30 + *(v31 + 48);
  v33 = v39;
  *v32 = 0;
  *(v32 + 8) = v33;
  v27((v30 + *(v31 + 64)), v28, v29);
  v34 = *(v36 + 8);
  v34(v16, v29);
  sub_1BD0DE53C(v24, &qword_1EBD4C448);
  v34(v28, v29);
  return sub_1BD0DE53C(v20, &qword_1EBD4C448);
}

uint64_t sub_1BD5C9DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C460);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v39 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE68);
  MEMORY[0x1EEE9AC00](v39, v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v17 = sub_1BE04EEC4();
  v19 = *a1;
  if (*a1)
  {
    v20 = v17;
    v21 = v18;
    v44 = a2;
    v22 = v19;
    v23 = sub_1BE04D804();
    v24 = *(a1 + 16);
    type metadata accessor for DeviceAuthenticationModel();
    if (v24)
    {
      sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
      sub_1BE048964();
      v25 = sub_1BE04D804();
      v45 = v20;
      v46 = v21;
      v47 = v23;
      v48 = v19;
      v49 = v25;
      v50 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE80);
      sub_1BD247ED4();
      v26 = v40;
      sub_1BE04E8B4();
      (*(v41 + 32))(v12, v26, v42);
      *&v12[*(v39 + 36)] = 0;
      sub_1BD0DE204(v12, v16, &qword_1EBD3EE68);
      v27 = *(a1 + 40);
      v45 = *(a1 + 32);
      v46 = v27;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v28 = sub_1BE0506C4();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = v43;
      sub_1BD0DE19C(v16, v43, &qword_1EBD3EE68);
      v36 = v44;
      sub_1BD0DE19C(v35, v44, &qword_1EBD3EE68);
      v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C468) + 48);
      *v37 = v28;
      *(v37 + 8) = v30;
      v32 &= 1u;
      *(v37 + 16) = v32;
      *(v37 + 24) = v34;
      sub_1BD0D7F18(v28, v30, v32);
      sub_1BE048C84();
      sub_1BD0DE53C(v16, &qword_1EBD3EE68);
      sub_1BD0DDF10(v28, v30, v32);

      return sub_1BD0DE53C(v35, &qword_1EBD3EE68);
    }
  }

  else
  {
    sub_1BE04EEB4();
    __break(1u);
  }

  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD5CA1E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C440);
  return sub_1BD5C9A6C(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BD5CA250@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD5CA998(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v6 = sub_1BE04EEC4();
  v8 = v7;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD5CA998(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  v9 = sub_1BE04EEC4();
  v11 = v10;
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C328);
  result = sub_1BE051694();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v13;
  *(a3 + 72) = v14;
  return result;
}

uint64_t objectdestroyTm_65()
{

  return swift_deallocObject();
}

uint64_t sub_1BD5CA4A0(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return sub_1BD5C8A1C();
  }

  return result;
}

unint64_t sub_1BD5CA4D0()
{
  result = qword_1EBD4C338;
  if (!qword_1EBD4C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C330);
    sub_1BD5CA55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C338);
  }

  return result;
}

unint64_t sub_1BD5CA55C()
{
  result = qword_1EBD4C340;
  if (!qword_1EBD4C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C348);
    sub_1BD5CA5E8();
    sub_1BD5CA808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C340);
  }

  return result;
}

unint64_t sub_1BD5CA5E8()
{
  result = qword_1EBD4C350;
  if (!qword_1EBD4C350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C358);
    sub_1BD5CA674();
    sub_1BD5CA74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C350);
  }

  return result;
}

unint64_t sub_1BD5CA674()
{
  result = qword_1EBD4C360;
  if (!qword_1EBD4C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C368);
    sub_1BD5CA6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C360);
  }

  return result;
}

unint64_t sub_1BD5CA6F8()
{
  result = qword_1EBD4C370;
  if (!qword_1EBD4C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C370);
  }

  return result;
}

unint64_t sub_1BD5CA74C()
{
  result = qword_1EBD4C378;
  if (!qword_1EBD4C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C380);
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C378);
  }

  return result;
}

unint64_t sub_1BD5CA808()
{
  result = qword_1EBD4C388;
  if (!qword_1EBD4C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C390);
    sub_1BD3A552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C388);
  }

  return result;
}

uint64_t sub_1BD5CA8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1BD5CA8E4()
{
  result = qword_1EBD4C3C0;
  if (!qword_1EBD4C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416B0);
    sub_1BD5CA998(&qword_1EBD4C3C8, sub_1BD3B7D94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C3C0);
  }

  return result;
}

uint64_t sub_1BD5CA998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD5CA9E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1BD5CAA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5CAAA0()
{
  result = qword_1EBD4C410;
  if (!qword_1EBD4C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C410);
  }

  return result;
}

id sub_1BD5CAAF4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = result;
    sub_1BE048964();
    sub_1BE048C84();

    return v6;
  }

  return result;
}

uint64_t sub_1BD5CAB4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = result;
  }

  return result;
}

unint64_t sub_1BD5CABA8()
{
  result = qword_1EBD4C420;
  if (!qword_1EBD4C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3F8);
    sub_1BD5CAC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C420);
  }

  return result;
}

unint64_t sub_1BD5CAC34()
{
  result = qword_1EBD4C428;
  if (!qword_1EBD4C428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3D8);
    sub_1BD5CACEC();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C428);
  }

  return result;
}

unint64_t sub_1BD5CACEC()
{
  result = qword_1EBD4C430;
  if (!qword_1EBD4C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3F0);
    sub_1BD5CADA4();
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C430);
  }

  return result;
}

unint64_t sub_1BD5CADA4()
{
  result = qword_1EBD4C438;
  if (!qword_1EBD4C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C3D0);
    sub_1BD0DE4F4(&qword_1EBD4C3E8, &qword_1EBD4C3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C438);
  }

  return result;
}

uint64_t type metadata accessor for BankAccountSheet()
{
  result = qword_1EBD4C480;
  if (!qword_1EBD4C480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5CAEF0()
{
  type metadata accessor for AccountServiceAuthorizationModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4C490, &type metadata for BankAccounts, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1B7F00();
        if (v3 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_1BD5CB034@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for BankAccountSheet();
  v20[0] = *(v2 - 8);
  v3 = *(v20[0] + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69B8068], v5, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v6 + 8))(v10, v5);
    v16 = *(v1 + 56);
    v17 = *(v1 + 64);
    sub_1BD5CF890(v1, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
    v18 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
    v19 = swift_allocObject();
    sub_1BD5CF0B8(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for BankAccountSheet);
    *&v27 = sub_1BD5CE650;
    *(&v27 + 1) = v19;
    *&v28 = v13;
    *(&v28 + 1) = v15;
    *&v29 = v16;
    *(&v29 + 1) = v17;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v33[0] = sub_1BD5CE650;
    v33[1] = v19;
    v33[2] = v13;
    v33[3] = v15;
    v33[4] = v16;
    v33[5] = v17;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    sub_1BE048964();
    sub_1BD089E68(&v27, v37);
    sub_1BD089ED8(v33);
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498);
    sub_1BD0DE4F4(&qword_1EBD4C4A0, &qword_1EBD4C498);
    sub_1BE050DE4();

    v37[2] = v23;
    v37[3] = v24;
    v37[4] = v25;
    v38 = v26;
    v37[0] = v21;
    v37[1] = v22;
    return sub_1BD089ED8(v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5CB38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4A8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18[-v6];
  v19 = a2;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4B0);
  sub_1BD0DE4F4(&qword_1EBD4C4B8, &qword_1EBD4C4B0);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4C0) + 36)];
  v9 = v26;
  v8[4] = v25;
  v8[5] = v9;
  v8[6] = v27;
  v10 = v22;
  *v8 = v21;
  v8[1] = v10;
  v11 = v24;
  v8[2] = v23;
  v8[3] = v11;
  v12 = sub_1BE051274();
  v13 = sub_1BE0501D4();
  v14 = sub_1BE051CD4();
  v15 = &v7[*(v4 + 36)];
  *v15 = v12;
  v15[8] = v13;
  *(v15 + 2) = v14;
  *(v15 + 3) = v16;
  sub_1BD5CE6D8();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  sub_1BE048964();
  sub_1BE050D64();

  return sub_1BD0DE53C(v7, &qword_1EBD4C4A8);
}

uint64_t sub_1BD5CB5E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4E8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F0);
  v9 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C4F8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C500);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v48 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C508);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v45 - v33;
  sub_1BD5CBAD4(&v45 - v33);
  sub_1BD5CC4EC(v46, v26);
  if (PKOslo2024UIUpdatesEnabled())
  {
    sub_1BD5CC8A4(v12);
    sub_1BD0DE204(v12, v19, &qword_1EBD4C4F0);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v9 + 56))(v19, v35, 1, v47);
  v36 = v8;
  sub_1BD5CCCD0(v8);
  sub_1BD0DE19C(v34, v30, &qword_1EBD4C508);
  v37 = v26;
  v38 = v48;
  sub_1BD0DE19C(v26, v48, &qword_1EBD4C500);
  v39 = v49;
  v47 = v34;
  sub_1BD0DE19C(v19, v49, &qword_1EBD4C4F8);
  v40 = v45;
  sub_1BD0DE19C(v8, v45, &qword_1EBD4C4E8);
  v41 = v50;
  sub_1BD0DE19C(v30, v50, &qword_1EBD4C508);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C510);
  v46 = v30;
  v43 = v42;
  sub_1BD0DE19C(v38, v41 + *(v42 + 48), &qword_1EBD4C500);
  sub_1BD0DE19C(v39, v41 + *(v43 + 64), &qword_1EBD4C4F8);
  sub_1BD0DE19C(v40, v41 + *(v43 + 80), &qword_1EBD4C4E8);
  sub_1BD0DE53C(v36, &qword_1EBD4C4E8);
  sub_1BD0DE53C(v19, &qword_1EBD4C4F8);
  sub_1BD0DE53C(v37, &qword_1EBD4C500);
  sub_1BD0DE53C(v47, &qword_1EBD4C508);
  sub_1BD0DE53C(v40, &qword_1EBD4C4E8);
  sub_1BD0DE53C(v39, &qword_1EBD4C4F8);
  sub_1BD0DE53C(v38, &qword_1EBD4C500);
  return sub_1BD0DE53C(v46, &qword_1EBD4C508);
}

uint64_t sub_1BD5CBAD4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8);
  MEMORY[0x1EEE9AC00](v81, v5);
  v7 = &v68 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C610);
  MEMORY[0x1EEE9AC00](v79, v8);
  v80 = &v68 - v9;
  v10 = type metadata accessor for PeerPaymentModel();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v71 = &v68 - v16;
  v77 = type metadata accessor for PeerPaymentToggleSection();
  v73 = *(v77 - 1);
  MEMORY[0x1EEE9AC00](v77, v17);
  v76 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BankAccountSheet();
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v68 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v68 - v32;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CF0);
  MEMORY[0x1EEE9AC00](v78, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  if (v1[10] != 1)
  {
    v39 = v1[12];
    if (v39)
    {
      if (*(v39 + 16))
      {
        v74 = v38;
        v75 = &v68 - v37;
        sub_1BD0DE19C(v1 + *(v19 + 44), v33, &qword_1EBD45480);
        v40 = *v1;
        sub_1BD5CF890(v1, &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankAccountSheet);
        v41 = (*(v72 + 80) + 16) & ~*(v72 + 80);
        v42 = swift_allocObject();
        sub_1BD5CF0B8(&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for BankAccountSheet);
        v43 = v77[7];
        v44 = *(v11 + 56);
        v44(&v76[v43], 1, 1, v10);
        sub_1BD0DE19C(v33, v29, &qword_1EBD45480);
        if ((*(v11 + 48))(v29, 1, v10) == 1)
        {
          sub_1BE048964();
          sub_1BD0DE53C(v33, &qword_1EBD45480);
        }

        else
        {
          v72 = v40;
          v54 = v29;
          v55 = v71;
          sub_1BD5CF0B8(v54, v71, type metadata accessor for PeerPaymentModel);
          if (*(v55 + v10[12]))
          {
            v57 = v76;
            v56 = v77;
            v58 = v77[9];
            v70 = &v76[v77[8]];
            v69 = &v76[v58];
            *v76 = *(v55 + v10[7]);
            v59 = v56[6];
            sub_1BD5CF890(v55 + v10[5], v57 + v56[5], type metadata accessor for AvailablePass);
            *(v57 + v59) = v72;
            sub_1BE048964();
            sub_1BD0DE53C(v57 + v43, &qword_1EBD45480);
            sub_1BD5CF890(v55, v57 + v43, type metadata accessor for PeerPaymentModel);
            v44((v57 + v43), 0, 1, v10);
            v61 = v69;
            v60 = v70;
            *v69 = 0;
            v61[1] = 0;
            *v60 = sub_1BD5CF820;
            v60[1] = v42;
            v62 = v57 + v56[10];
            v83 = *(v55 + v10[10]);
            sub_1BE051694();
            sub_1BD5CF8F8(v55, type metadata accessor for PeerPaymentModel);
            sub_1BD0DE53C(v33, &qword_1EBD45480);
            v63 = v85;
            *v62 = v84;
            *(v62 + 8) = v63;
            v64 = v74;
            sub_1BD5CF890(v57, v74, type metadata accessor for PeerPaymentToggleSection);
            (*(v73 + 56))(v64, 0, 1, v56);
            sub_1BD5CF8F8(v57, type metadata accessor for PeerPaymentToggleSection);
LABEL_13:
            v65 = v75;
            sub_1BD0DE204(v64, v75, &qword_1EBD47CF0);
            sub_1BD0DE19C(v65, v80, &qword_1EBD47CF0);
            swift_storeEnumTagMultiPayload();
            sub_1BD5CF120();
            sub_1BD4CE5A4();
            v46 = v82;
            sub_1BE04F9A4();
            sub_1BD0DE53C(v65, &qword_1EBD47CF0);
            goto LABEL_14;
          }

          sub_1BD5CF8F8(v55, type metadata accessor for PeerPaymentModel);
          v29 = v33;
        }

        sub_1BD0DE53C(v29, &qword_1EBD45480);
        sub_1BD0DE53C(&v76[v43], &qword_1EBD45480);
        v64 = v74;
        (*(v73 + 56))(v74, 1, 1, v77);
        goto LABEL_13;
      }
    }
  }

  sub_1BD0DE19C(v1 + *(v19 + 44), v25, &qword_1EBD45480);
  v45 = 1;
  if ((*(v11 + 48))(v25, 1, v10) != 1)
  {
    v47 = v75;
    sub_1BD5CF0B8(v25, v75, type metadata accessor for PeerPaymentModel);
    v48 = v74;
    sub_1BD5CF890(v47 + v10[5], v74, type metadata accessor for AvailablePass);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
    v50 = *(v49 + 48);
    v51 = *(v49 + 64);
    sub_1BD5CF0B8(v48, v7, type metadata accessor for AvailablePass);
    *&v7[v50] = 0;
    v7[v51] = 0;
    type metadata accessor for PassRow.Pass(0);
    swift_storeEnumTagMultiPayload();
    v7[*(type metadata accessor for PassRow(0) + 20)] = 1;
    v52 = v80;
    v53 = &v7[*(v81 + 36)];
    *v53 = xmmword_1BE0B8C20;
    *(v53 + 1) = xmmword_1BE0B8C20;
    v53[32] = 0;
    sub_1BD0DE19C(v7, v52, &qword_1EBD47DF8);
    swift_storeEnumTagMultiPayload();
    sub_1BD5CF120();
    sub_1BD4CE5A4();
    v46 = v82;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v7, &qword_1EBD47DF8);
    sub_1BD5CF8F8(v47, type metadata accessor for PeerPaymentModel);
LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  sub_1BD0DE53C(v25, &qword_1EBD45480);
  v46 = v82;
LABEL_15:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C618);
  return (*(*(v66 - 8) + 56))(v46, v45, 1, v66);
}

id sub_1BD5CC4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C588);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = &v31 - v14;
  v16 = *(v2 + 80);
  if (v16 == 1)
  {
    v17 = *(v12 + 56);

    return v17(a2, 1, 1, v10, v13);
  }

  else
  {
    v35 = a1;
    v36 = a2;
    v37 = v12;
    v19 = *(v2 + 112);
    v20 = *(v2 + 96);
    v21 = *(v2 + 104);
    v22 = *(v2 + 88);
    v42[0] = v16;
    v42[1] = v22;
    v42[2] = v20;
    v42[3] = v21;
    v43 = v19 & 1;
    (*(v6 + 104))(v9, *MEMORY[0x1E69B8068], v5, v13.n128_f64[0]);
    v32 = v22;
    sub_1BD3EFCD8(v16, v22);
    v33 = v21;
    sub_1BE048C84();
    v34 = v20;
    sub_1BE048C84();
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v6 + 8))(v9, v5);
      v38 = v24;
      v39 = v26;
      sub_1BD0DDEBC();
      v38 = sub_1BE0506C4();
      v39 = v27;
      v40 = v28 & 1;
      v41 = v29;
      MEMORY[0x1EEE9AC00](v38, v27);
      *(&v31 - 4) = v42;
      *(&v31 - 3) = v2;
      *(&v31 - 2) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C590);
      sub_1BD0DE4F4(&qword_1EBD4C598, &qword_1EBD4C590);
      sub_1BE051A24();
      sub_1BD17195C(v16, v32);

      v30 = v36;
      (*(v37 + 32))(v36, v15, v10);
      return (*(v37 + 56))(v30, 0, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}