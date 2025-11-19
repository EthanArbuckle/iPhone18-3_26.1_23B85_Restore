uint64_t sub_1B382384C(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  MEMORY[0x1B8C6AD50](a2 & 1);
  return MEMORY[0x1B8C6AD50](v2);
}

uint64_t sub_1B3823880(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1 & 1);
  MEMORY[0x1B8C6AD50](v2);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B382391C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  MEMORY[0x1B8C6AD50](v2);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B3823980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3823978();
  *a1 = result & 1;
  a1[1] = BYTE1(result);
  return result;
}

uint64_t sub_1B38239B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B382AAD0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B3823A18()
{
  sub_1B382AB3C();
  sub_1B3C9AE98();
  return v1;
}

void sub_1B3823A9C(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v85 = sub_1B3C9AAF8();
  OUTLINED_FUNCTION_0();
  v84 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_25(v6 - v5);
  v7 = sub_1B3C9AE88();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_25(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856418);
  OUTLINED_FUNCTION_8_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v16 = v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856420);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v77 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856428);
  OUTLINED_FUNCTION_0();
  v81 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_25(v22);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856430);
  OUTLINED_FUNCTION_0();
  v87 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v77 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856438);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_25(v28);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856440);
  OUTLINED_FUNCTION_0();
  v93 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_25(v31);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856448);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_25(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  v35 = sub_1B3C9B4B8();
  *(inited + 32) = v35;
  v36 = sub_1B3C9B4D8();
  *(inited + 33) = v36;
  v37 = sub_1B3C9B4C8();
  sub_1B3C9B4C8();
  if (sub_1B3C9B4C8() != v35)
  {
    v37 = sub_1B3C9B4C8();
  }

  sub_1B3C9B4C8();
  if (sub_1B3C9B4C8() != v36)
  {
    v37 = sub_1B3C9B4C8();
  }

  *v16 = v37;
  v108 = *(v2 + 48);
  v38 = *(v2 + 40);
  v107 = v38;
  v101 = v108;
  v99 = v7;
  v98 = v9;
  v86 = v26;
  v77[1] = v38 >> 8;
  if (v108 == 1)
  {
    LOWORD(v106[0]) = v38 & 0xFF01;
    v7 = v38 >> 8;
    v39 = v38;
  }

  else
  {

    sub_1B3C9CAD8();
    v40 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    v41 = v100;
    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B371B36C(&v107, &qword_1EB856458);
    (*(v9 + 8))(v41, v7);
    v39 = v106[0];
    LOWORD(v7) = BYTE1(v106[0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856460);
  sub_1B3823688(v39 & 1 | (v7 << 8));
  *&v103 = v42;
  swift_getKeyPath();
  v43 = swift_allocObject();
  v44 = *(v2 + 16);
  *(v43 + 16) = *v2;
  *(v43 + 32) = v44;
  *(v43 + 48) = *(v2 + 32);
  *(v43 + 64) = *(v2 + 48);
  v96 = v2;
  sub_1B382B218(v2, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856470);
  sub_1B370ED54(&qword_1EB84F230, &qword_1EB856468);
  sub_1B382B250();
  sub_1B382B2A4();
  sub_1B3C9BE88();
  v78 = v38;
  if (v101)
  {
    v45 = v38;
  }

  else
  {

    sub_1B3C9CAD8();
    v46 = sub_1B3C9B4A8();
    OUTLINED_FUNCTION_13_19();

    v47 = v100;
    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B371B36C(&v107, &qword_1EB856458);
    (*(v98 + 8))(v47, v99);
    v45 = v106[0];
  }

  v48 = v86;
  sub_1B382C33C();
  v49 = v80;
  v19[*(v80 + 52)] = v45 & 1;
  v50 = v84;
  v51 = v83;
  v52 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x1E697E6E8], v85);
  v53 = sub_1B370ED54(&qword_1EB84F290, &qword_1EB856420);
  v54 = v79;
  sub_1B3C9B928();
  (*(v50 + 8))(v51, v52);
  sub_1B371B36C(v19, &qword_1EB856420);
  *&v106[0] = v49;
  *(&v106[0] + 1) = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v82;
  sub_1B3C9BA38();
  (*(v81 + 8))(v54, v55);
  v56 = v48;
  if (v101)
  {
    v57 = v100;
    v58 = v98;
    v59 = v99;
    if ((v78 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    sub_1B3C9CAD8();
    v60 = sub_1B3C9B4A8();
    OUTLINED_FUNCTION_18_18();

    v57 = v100;
    sub_1B3C9AE78();
    OUTLINED_FUNCTION_8_20();
    sub_1B371B36C(&v107, &qword_1EB856458);
    v58 = v98;
    v61 = *(v98 + 8);
    v59 = v99;
    v61(v57, v99);
    if ((v106[0] & 1) == 0)
    {
LABEL_19:

      sub_1B3C9CAD8();
      v63 = sub_1B3C9B4A8();
      OUTLINED_FUNCTION_13_19();

      sub_1B3C9AE78();
      OUTLINED_FUNCTION_8_20();
      sub_1B371B36C(&v107, &qword_1EB856458);
      v64 = *(v58 + 8);
      v64(v57, v59);
      if ((v106[0] & 1) == 0)
      {

        sub_1B3C9CAD8();
        v65 = sub_1B3C9B4A8();
        OUTLINED_FUNCTION_13_19();

        sub_1B3C9AE78();
        OUTLINED_FUNCTION_8_20();
        sub_1B371B36C(&v107, &qword_1EB856458);
        v64(v57, v59);
      }

LABEL_21:
      sub_1B3C9C008();
      sub_1B3C9A8D8();
      v66 = v89;
      (*(v87 + 32))(v89, v56, v88);
      v67 = (v66 + *(v90 + 36));
      v68 = v106[1];
      *v67 = v106[0];
      v67[1] = v68;
      v67[2] = v106[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564A0);
      sub_1B382B648();
      v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564A8);
      v70 = sub_1B3C9BE58();
      v71 = sub_1B382B788();
      v72 = sub_1B382B5E0(&qword_1EB84F268, MEMORY[0x1E6981998]);
      *&v103 = v69;
      *(&v103 + 1) = v70;
      v104 = v71;
      v105 = v72;
      swift_getOpaqueTypeConformance2();
      v73 = v92;
      sub_1B3C9B7B8();
      sub_1B371B36C(v66, &qword_1EB856438);
      v103 = *v96;
      LOBYTE(v104) = *(v96 + 16);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564B8);
      MEMORY[0x1B8C69360](&v102, v74);
      if (v102 == 11)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = 1.0;
      }

      v76 = v95;
      (*(v93 + 32))(v95, v73, v94);
      *(v76 + *(v91 + 36)) = v75;
      sub_1B3C9C0E8();
      sub_1B3C9A928();
      sub_1B3C9A908();
      sub_1B3C9A948();

      sub_1B382C888();
    }

    sub_1B3C9CAD8();
    v62 = sub_1B3C9B4A8();
    OUTLINED_FUNCTION_18_18();

    sub_1B3C9AE78();
    OUTLINED_FUNCTION_8_20();
    sub_1B371B36C(&v107, &qword_1EB856458);
    v61(v57, v59);
  }

  if (v101)
  {
    goto LABEL_21;
  }

  goto LABEL_19;
}

uint64_t sub_1B3824864()
{
  v1 = sub_1B3C9A958();

  v2 = *(v0 - 296);
  sub_1B3707078();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564C0);
  *(v2 + *(result + 36)) = v1;
  return result;
}

uint64_t sub_1B3824908@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856480);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856478);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - v8;
  if (a1)
  {
    v27 = sub_1B3C9AFF8();
    v28 = 0;
    v29 = 0;
    sub_1B382B89C();
    v10 = sub_1B3C9C078();
    v24 = 0;
  }

  else
  {
    v27 = sub_1B3C9AF18();
    v28 = 0;
    v29 = 0;
    sub_1B382B9B8();
    v10 = sub_1B3C9C078();
    v24 = 0x4028000000000000;
  }

  v23 = a1 >> 8;
  *v7 = v10;
  v22 = *(v5 + 44);
  v30 = *(v3 + 24);
  v31 = v30;
  v11 = swift_allocObject();
  v12 = *(v3 + 16);
  *(v11 + 16) = *v3;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v3 + 32);
  *(v11 + 64) = *(v3 + 48);
  v13 = 0x4032000000000000;
  if (BYTE1(a1) < 3u)
  {
    v13 = 0x4020000000000000;
  }

  *(v11 + 65) = a1 & 1;
  *(v11 + 66) = BYTE1(a1);
  if (a1)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1B38203A0();
  sub_1B382B218(v3, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856498);
  sub_1B370ED54(&qword_1EB84F228, &qword_1EB8564D0);
  sub_1B382B524();
  sub_1B382B964();
  sub_1B3C9BE98();
  v15 = sub_1B3C9B508();

  sub_1B382C33C();
  v16 = v24;
  v17 = &v9[*(v25 + 36)];
  *v17 = v15;
  *(v17 + 1) = v14;
  *(v17 + 2) = v16;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  KeyPath = swift_getKeyPath();
  v19 = v26;
  sub_1B382C33C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856470);
  v21 = v19 + *(result + 36);
  *v21 = KeyPath;
  *(v21 + 8) = a1 & 1;
  *(v21 + 9) = v23;
  return result;
}

uint64_t sub_1B3824C58@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_1B3C9BE58();
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B3C9BC08();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564A8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v19 - v8;
  v11 = &v19 + *(v10 + 36) - v8;
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1B3C9AFA8();
  v14 = *(*(v13 - 8) + 104);
  v14(v11, v12, v13);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564B0) + 36)] = 256;
  sub_1B37070D8();
  sub_1B3C9BBF8();
  MEMORY[0x1B8C69160](1);
  v15 = *(v2 + 8);
  v16 = v21;
  v15(v4, v21);
  v17 = v22;
  v14(v22, v12, v13);
  sub_1B382B788();
  sub_1B382B5E0(&qword_1EB84F268, MEMORY[0x1E6981998]);
  sub_1B3C9B888();
  sub_1B382B840(v17);
  v15(v7, v16);
  return sub_1B371B36C(v9, &qword_1EB8564A8);
}

uint64_t sub_1B3824F40@<X0>(char *a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564B8);
  sub_1B3C9BE18();
  v8 = v5 == 4 || v5 == 2;
  *a3 = v6;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  *(a3 + 25) = v8;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  v9 = *(type metadata accessor for PhotoEditToolbarButton(0) + 32);
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854D28);
  swift_storeEnumTagMultiPayload();
  v10 = sub_1B3825094(v6, a2 & 0xFF01);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v9) = sub_1B3C9B508();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856498);
  v18 = a3 + *(result + 36);
  *v18 = v9;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

double sub_1B3825094(char a1, __int16 a2)
{
  if (a2)
  {
    return dbl_1B3D07C38[SHIBYTE(a2)];
  }

  if (HIBYTE(a2) == 4 || HIBYTE(a2) == 2)
  {
    sub_1B380D5A4(a1);
    sub_1B3C9C678();
  }

  return 0.0;
}

uint64_t sub_1B3825154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3823A18();
  *a1 = result & 1;
  a1[1] = BYTE1(result);
  return result;
}

uint64_t sub_1B3825200()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[24];
  v14 = *(v0 + 1);
  v15 = v2;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564B8);
  MEMORY[0x1B8C69360](&v13, v4);
  v5 = v13;
  if (v13 == 11)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1B380DE70(v1);
    v9 = v8;
    if (v7 == sub_1B380DE70(v5) && v9 == v10)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1B3C9D6A8();
    }
  }

  return v6 & 1;
}

uint64_t sub_1B38252D4@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1B3C9AFC8();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1B3C9B258();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v44 - v6;
  v57 = sub_1B3C9B278();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v44 - v9;
  v10 = type metadata accessor for PhotoEditToolbarButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564F0);
  v13 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8564F8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856500);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856508);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v47 = &v44 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856510);
  MEMORY[0x1EEE9AC00](v49);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856518);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v48 = &v44 - v24;
  sub_1B382BE8C(v1, &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1B382BEF0(&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v62 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856520);
  sub_1B370ED54(&unk_1EB84F278, &qword_1EB856520);
  sub_1B3C9BCE8();
  v63 = sub_1B380D784(*v1);
  v64 = v27;
  sub_1B370ED54(&unk_1EB84F298, &qword_1EB8564F0);
  sub_1B371B158();
  v28 = v45;
  sub_1B3C9B978();

  (*(v13 + 8))(v15, v28);
  if (sub_1B3825200())
  {
    v29 = sub_1B3C9B328();
  }

  else
  {
    v29 = sub_1B3C9B338();
  }

  v30 = v29;
  sub_1B382C33C();
  *&v18[*(v46 + 36)] = v30;
  sub_1B382C33C();
  v31 = v50;
  sub_1B3C9B248();
  v32 = v54;
  v33 = v56;
  (*(v54 + 16))(v53, v31, v56);
  v34 = v52;
  sub_1B3C9B268();
  (*(v32 + 8))(v31, v33);
  v35 = v55;
  v36 = v57;
  (*(v55 + 16))(v51, v34, v57);
  sub_1B382B5E0(&qword_1EB84F2F8, MEMORY[0x1E697FBD0]);
  v37 = sub_1B3C9A968();
  (*(v35 + 8))(v34, v36);
  sub_1B382C33C();
  *&v22[*(v49 + 36)] = v37;
  if (sub_1B3825200())
  {
    v38 = v58;
    sub_1B3C9AFB8();
    v39 = v60;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1B382B5E0(&qword_1EB84F300, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856528);
    sub_1B370ED54(&qword_1EB84F220, &qword_1EB856528);
    v38 = v58;
    v39 = v60;
    sub_1B3C9D278();
  }

  sub_1B382BFB8();
  sub_1B3C9BA08();
  (*(v59 + 8))(v38, v39);
  sub_1B371B36C(v22, &qword_1EB856510);
  KeyPath = swift_getKeyPath();
  v41 = v61;
  sub_1B382C33C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856538);
  v43 = v41 + *(result + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 0;
  return result;
}

uint64_t sub_1B3825BA8()
{
  sub_1B3C9C038();
  sub_1B3C9A9D8();
}

uint64_t sub_1B3825C88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B3C9AFF8();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856540);
  return sub_1B3825CE0(a1, a2 + *(v4 + 44));
}

uint64_t sub_1B3825CE0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8538B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v79 - v4;
  v81 = sub_1B3C9AE88();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856548);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v79 - v7;
  v9 = sub_1B3C9BC48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856550);
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v79 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856558);
  MEMORY[0x1EEE9AC00](v85);
  v16 = &v79 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856560);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v79 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856568);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v79 - v23;
  v24 = *a1;
  v25 = sub_1B3825200();
  sub_1B380D8DC(v25 & 1, v24);
  sub_1B3C9BC58();
  (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
  v83 = sub_1B3C9BC78();

  (*(v10 + 8))(v12, v9);
  v26 = 0.95;
  v27 = 0x3FF11EB851EB851FLL;
  switch(v24)
  {
    case 0u:
    case 1u:
      v26 = 0.82;
      goto LABEL_4;
    case 2u:
      goto LABEL_8;
    case 3u:
    case 6u:
      goto LABEL_4;
    case 4u:
      v27 = 0x3FF051EB851EB852;
LABEL_8:
      sub_1B3C9C0E8();
      v29 = v33;
      v31 = v34;
      v99 = 1;
      v95 = v97;
      v96 = v98;
      v26 = *&v27;
      goto LABEL_9;
    case 7u:
      sub_1B3C9C0E8();
      v29 = v35;
      v31 = v36;
      v99 = 1;
      v95 = v97;
      v96 = v98;
      v26 = 0.9;
      v32 = v84;
      goto LABEL_12;
    default:
      v26 = 1.0;
LABEL_4:
      sub_1B3C9C0E8();
      v29 = v28;
      v31 = v30;
      v99 = 1;
      v95 = v97;
      v96 = v98;
      if (v24 > 7)
      {
LABEL_9:
        v32 = v84;
LABEL_10:
        sub_1B3C9B038();
        goto LABEL_13;
      }

      v32 = v84;
      if (((1 << v24) & 0xC8) == 0)
      {
        goto LABEL_10;
      }

LABEL_12:
      sub_1B3C9B028();
LABEL_13:
      v37 = sub_1B3C9B048();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v37);
      KeyPath = swift_getKeyPath();
      v39 = &v14[*(v32 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856570);
      sub_1B382C33C();
      *v39 = KeyPath;
      *v14 = v83;
      *(v14 + 1) = 0;
      v14[16] = 1;
      v14[17] = 1;
      *(v14 + 11) = v96;
      *(v14 + 18) = v95;
      *(v14 + 3) = v26;
      *(v14 + 4) = v26;
      *(v14 + 5) = v29;
      *(v14 + 6) = v31;
      sub_1B38266DC();
      sub_1B38266DC();
      sub_1B3C9C008();
      sub_1B3C9A8D8();
      sub_1B382C33C();
      v40 = &v16[*(v85 + 36)];
      v41 = v101;
      *v40 = v100;
      *(v40 + 1) = v41;
      *(v40 + 2) = v102;
      if (v24 == 4)
      {
        v42 = -1.5;
      }

      else if (v24 == 7)
      {
        if (a1[25])
        {
          v42 = 0.0;
        }

        else
        {
          v42 = -1.0;
        }
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v88;
      sub_1B382C33C();
      v44 = v43 + *(v86 + 36);
      *v44 = 0;
      *(v44 + 8) = v42;
      v45 = *(a1 + 4);
      if (a1[40] == 1)
      {
        if ((v45 & 1) == 0)
        {
LABEL_22:
          v46 = sub_1B3C9BFF8();
          goto LABEL_25;
        }
      }

      else
      {

        sub_1B3C9CAD8();
        v48 = sub_1B3C9B4A8();
        sub_1B3C9A438();

        v49 = v79;
        sub_1B3C9AE78();
        swift_getAtKeyPath();
        sub_1B37BA2E8(v45, 0);
        (*(v80 + 8))(v49, v81);
        if ((v92 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v46 = sub_1B3C9C018();
LABEL_25:
      v50 = v46;
      v51 = v47;
      v52 = &v21[*(v87 + 36)];
      sub_1B3826838(v52);
      v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856578) + 36));
      *v53 = v50;
      v53[1] = v51;
      sub_1B382C33C();
      sub_1B382C33C();
      v54 = sub_1B3827228();
      if (v55)
      {
        v92 = v54;
        v93 = v55;
        sub_1B371B158();
        v56 = sub_1B3C9B7A8();
        v58 = v57;
        v60 = v59;
        sub_1B3C9B638();
        v61 = sub_1B3C9B608();
        v88 = 1;
        v62 = v82;
        __swift_storeEnumTagSinglePayload(v82, 1, 1, v61);
        sub_1B3C9B678();
        sub_1B371B36C(v62, &qword_1EB8538B0);
        v87 = sub_1B3C9B778();
        v64 = v63;
        v66 = v65;
        v68 = v67;

        sub_1B371B148(v56, v58, v60 & 1);

        v69 = swift_getKeyPath();
        LOBYTE(v92) = v66 & 1;
        v94 = 0;
        v70 = v66 & 1;
        v71 = 256;
      }

      else
      {
        v87 = 0;
        v88 = 0;
        v64 = 0;
        v70 = 0;
        v68 = 0;
        v69 = 0;
        v71 = 0;
      }

      v72 = v91;
      v73 = v89;
      sub_1B38203A0();
      v74 = v90;
      sub_1B38203A0();
      v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856580) + 48);
      v76 = v87;
      v77 = v88;
      *v75 = v87;
      *(v75 + 8) = v64;
      *(v75 + 16) = v70;
      *(v75 + 24) = v68;
      *(v75 + 32) = v69;
      *(v75 + 40) = v77;
      *(v75 + 50) = 0;
      *(v75 + 48) = v71;
      sub_1B382C29C(v76, v64, v70, v68);
      sub_1B371B36C(v72, &qword_1EB856568);
      sub_1B382C2EC(v76, v64, v70, v68);
      return sub_1B371B36C(v73, &qword_1EB856568);
  }
}

double sub_1B38266DC()
{
  v1 = sub_1B3C9AE88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    v6 = BYTE1(v5);
  }

  else
  {

    sub_1B3C9CAD8();
    v7 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 22.0;
  if (!v6)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_1B3826838@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856588);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  if (sub_1B3825200())
  {
    sub_1B3826930(v4);
    sub_1B382C33C();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_1B3826930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v72 = sub_1B3C9AE88();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C9BC48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856590);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856598);
  MEMORY[0x1EEE9AC00](v70);
  v82 = &v69 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565A0);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v69 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565A8);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v69 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565B0);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v69 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565B8);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v69 - v18;
  sub_1B3C9BC38();
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v19 = sub_1B3C9BC78();

  (*(v6 + 8))(v8, v5);
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565C0) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562C8) + 28);
  v22 = *MEMORY[0x1E69816C8];
  v23 = sub_1B3C9BC68();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 1) = 0;
  *(v12 + 8) = 1;
  v24 = sub_1B3C9BB98();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565C8) + 36)] = v24;
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v25 = &v12[*(v10 + 44)];
  v26 = v85;
  *v25 = v84;
  *(v25 + 1) = v26;
  *(v25 + 2) = v86;
  v27 = *(v2 + 32);
  v80 = v2;
  v28 = *(v2 + 40);
  if (v28 == 1)
  {
    v29 = v27;
    v30 = v72;
    v31 = v71;
  }

  else
  {

    sub_1B3C9CAD8();
    v32 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v27, 0);
    v31 = v71;
    v30 = v72;
    (*(v71 + 8))(v4, v72);
    v29 = v83;
  }

  if (v29)
  {
    v33 = 1.57079633;
  }

  else
  {
    v33 = 3.14159265;
  }

  sub_1B3C9C0E8();
  v35 = v34;
  v37 = v36;
  v38 = v82;
  sub_1B382C33C();
  v39 = &v38[*(v70 + 36)];
  *v39 = v33;
  *(v39 + 1) = v35;
  *(v39 + 2) = v37;
  if (v28)
  {
    v40 = v27;
  }

  else
  {

    sub_1B3C9CAD8();
    v41 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v27, 0);
    v42 = *(v31 + 8);
    v42(v4, v30);
    v40 = v83;

    sub_1B3C9CAD8();
    v43 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v27, 0);
    v42(v4, v30);
    LOBYTE(v27) = v83;
  }

  if (v40)
  {
    v44 = -10.0;
  }

  else
  {
    v44 = 0.0;
  }

  if (v27)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = -8.0;
  }

  sub_1B382C33C();
  v46 = &v15[*(v75 + 36)];
  *v46 = v44;
  v46[1] = v45;
  v47 = sub_1B3827438();
  v48 = v78;
  sub_1B382C33C();
  *(v48 + *(v74 + 36)) = v47;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PhotoEditToolbarButton(0);
  v50 = (v77 + *(v73 + 36));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8565D0);
  sub_1B37CA210(v51, v52, v53, v54, v55, v56, v57, v58, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  *v50 = KeyPath;
  sub_1B382C33C();
  v59 = sub_1B38276B0();
  v60 = v79;
  sub_1B382C33C();
  v61 = (v60 + *(v76 + 36));
  *v61 = v59;
  v61[1] = 0.0;
  v62 = swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856588);
  v64 = (v81 + *(v63 + 36));
  v65 = *(v51 + 28);
  v66 = *MEMORY[0x1E697E7D0];
  v67 = sub_1B3C9AB08();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = v62;
  return sub_1B382C33C();
}

uint64_t sub_1B3827228()
{
  v1 = sub_1B3C9AE88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  if (*(v0 + 25) == 1)
  {
    v6 = *(v0 + 32);
    if (*(v0 + 40) == 1)
    {
      if (v6)
      {
        v7 = BYTE1(v6);
        goto LABEL_7;
      }
    }

    else
    {

      sub_1B3C9CAD8();
      v8 = sub_1B3C9B4A8();
      sub_1B3C9A438();

      sub_1B3C9AE78();
      swift_getAtKeyPath();
      sub_1B37BA2E8(v6, 0);
      v9 = *(v2 + 8);
      v9(v4, v1);
      if (v11[14])
      {

        sub_1B3C9CAD8();
        v10 = sub_1B3C9B4A8();
        sub_1B3C9A438();

        sub_1B3C9AE78();
        swift_getAtKeyPath();
        sub_1B37BA2E8(v6, 0);
        v9(v4, v1);
        v7 = v11[13];
LABEL_7:
        if (v7 == 2)
        {
          return sub_1B380D6F8(*v0);
        }
      }
    }

    return sub_1B380D5A4(*v0);
  }

  return result;
}

uint64_t sub_1B3827438()
{
  v1 = sub_1B3C9AE88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1B3C9CAD8();
    v6 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v5, 0);
    (*(v2 + 8))(v4, v1);
  }

  sub_1B3C9A918();
  sub_1B3C9A938();
  sub_1B3C9A8F8();

  MEMORY[0x1B8C695C0](v7, 0.5, 0.7, 0.0);
  v8 = sub_1B3C9A958();

  return v8;
}

uint64_t sub_1B38275E8(uint64_t a1)
{
  v2 = sub_1B3C9AB08();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1B3C9AD18();
}

double sub_1B38276B0()
{
  v1 = sub_1B3C9AE88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 4);
  if (v0[40] == 1)
  {
    result = 0.0;
    if (v5)
    {
      return result;
    }
  }

  else
  {

    sub_1B3C9CAD8();
    v7 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37BA2E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.0;
    if (v9[14])
    {
      return result;
    }
  }

  v8 = *v0;
  result = -4.0;
  if (v8 >= 2)
  {
    if (v8 == 7)
    {
      return -0.5;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

void sub_1B3827838()
{
  v1 = sub_1B3C9B498();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_14_21();
  if (!v3)
  {
    v4 = [objc_allocWithZone(type metadata accessor for PhotoEditToolbarController()) init];
    [v0 setSwiftToolbarController_];

    v5 = OUTLINED_FUNCTION_14_21();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 view];

      [v0 setSwiftToolbarView_];
      v8 = OUTLINED_FUNCTION_14_21();
      if (v8)
      {
        v9 = v8;
        [v0 addChildViewController_];

        v10 = [v0 view];
        if (v10)
        {
          v11 = v10;
          v12 = [v0 swiftToolbarView];
          if (v12)
          {
            v13 = v12;
            [v11 addSubview_];

            v14 = OUTLINED_FUNCTION_14_21();
            if (v14)
            {
              v15 = v14;
              [v14 didMoveToParentViewController_];

              v16 = [v0 swiftToolbarView];
              if (v16)
              {
                v17 = v16;
                [v16 setTranslatesAutoresizingMaskIntoConstraints_];

                v18 = OUTLINED_FUNCTION_14_21();
                if (v18)
                {
                  v19 = v18;
                  v20 = *&v18[OBJC_IVAR___PUPhotoEditSwiftToolbarController_hostingController];

                  sub_1B3C9B488();
                  sub_1B3C9B068();

                  v21 = OUTLINED_FUNCTION_14_21();
                  if (v21)
                  {
                    v22 = v21;
                    v23 = swift_allocObject();
                    swift_unknownObjectWeakInit();

                    sub_1B3827B68(sub_1B382AE44, v23);

                    return;
                  }

                  goto LABEL_21;
                }

LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                return;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
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

void sub_1B3827B04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong switchToEditingToolWithTag_];
  }
}

uint64_t sub_1B3827B68(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1B38294A4(sub_1B382AE4C);
}

void sub_1B3827C44()
{
  v1 = v0;
  if (!sub_1B382AD50(v0))
  {
    goto LABEL_13;
  }

  objc_opt_self();
  sub_1B3710718(0, &qword_1EB84FE50);
  v2 = sub_1B3C9C778();
  v3 = OUTLINED_FUNCTION_15_22();
  [v3 v4];

  v5 = sub_1B382AD50(v0);
  v156 = v5;
  if (!v5)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v6 = v5;

  if (v6 >> 62 || (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
    v13 = sub_1B383C5D8(v6);
    v14 = sub_1B383D1DC(0, v13);

    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = sub_1B3C9C778();

    goto LABEL_12;
  }

  v7 = sub_1B3711890(v6);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  v8 = v7;
  if (sub_1B3711890(v6) < v7)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v9 = sub_1B3711890(v6);
  v10 = __OFADD__(v9, -v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_1B37ED0C0(v11, 1);
  sub_1B37EBE40(0, v8, 0);
  if (v156)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = 0;
LABEL_12:
  [v1 setSwiftToolbarConstraints_];

LABEL_13:
  if (OUTLINED_FUNCTION_19_15() == 1)
  {
    v15 = 0;
    v16 = 2;
  }

  else
  {
    v16 = 2;
    if (sub_1B3828A28())
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1B3828AB8();
      if (v15)
      {
        v16 = 4;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  v17 = sub_1B3828B34();
  v18 = [v1 photoEditSpec];
  if (!v18)
  {
    goto LABEL_80;
  }

  v19 = v18;
  v20 = [v18 currentLayoutStyle];

  v21 = [v1 swiftToolbarController];
  if (!v21)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v22 = v21;
  v23 = v16 << 8;
  if (v17)
  {
    v23 = 256;
  }

  if (v20 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_1B3828C08(v24 & 0xFFFFFFFE | v15 & 1);

  v25 = OUTLINED_FUNCTION_5_29();
  if (!v25)
  {
    goto LABEL_71;
  }

  if (OUTLINED_FUNCTION_19_15() == 1)
  {
    [objc_opt_self() isNotchedPhone];
    v26 = OUTLINED_FUNCTION_5_29();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 bottomAnchor];

      v29 = OUTLINED_FUNCTION_12_20();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 bottomAnchor];

        v32 = OUTLINED_FUNCTION_10_5();
        v34 = [v32 v33];

        LODWORD(v35) = 1144750080;
        [v34 setPriority_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1B3D001A0;
        *(v36 + 32) = v34;
        v37 = v34;
        v38 = OUTLINED_FUNCTION_5_29();
        if (v38)
        {
          v39 = v38;
          v40 = [v38 leadingAnchor];

          v41 = OUTLINED_FUNCTION_12_20();
          if (v41)
          {
            v42 = v41;
            v43 = [v41 leadingAnchor];

            v44 = [v40 constraintEqualToAnchor_];
            *(v36 + 40) = v44;
            v45 = OUTLINED_FUNCTION_5_29();
            if (v45)
            {
              v46 = v45;
              v47 = [v45 trailingAnchor];

              v48 = OUTLINED_FUNCTION_12_20();
              if (v48)
              {
                v49 = v48;
                v50 = [v48 trailingAnchor];

                v51 = [v47 constraintEqualToAnchor_];
                *(v36 + 48) = v51;
                v52 = OUTLINED_FUNCTION_5_29();
                if (v52)
                {
                  v53 = v52;
                  v54 = [v52 heightAnchor];

                  v55 = [v1 swiftToolbarController];
                  if (v55)
                  {
                    v56 = v55;
                    v57 = sub_1B3828C58() >> 8;

                    v58 = [v54 constraintEqualToConstant_];
                    *(v36 + 56) = v58;
                    sub_1B382ADC0(v36, v1);

                    goto LABEL_71;
                  }

                  goto LABEL_90;
                }

LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
LABEL_91:
                __break(1u);
                goto LABEL_92;
              }

LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((sub_1B3828A28() & 1) != 0 && OUTLINED_FUNCTION_19_15() != 2)
  {
    v110 = OUTLINED_FUNCTION_5_29();
    if (!v110)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v111 = v110;
    v112 = [v110 topAnchor];

    v113 = OUTLINED_FUNCTION_20_15();
    if (!v113)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v114 = v113;
    v115 = [v113 safeAreaLayoutGuide];

    v116 = [v115 topAnchor];
    v117 = OUTLINED_FUNCTION_10_5();
    v119 = [v117 v118];

    v120 = OUTLINED_FUNCTION_5_29();
    if (!v120)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v121 = v120;
    v122 = [v120 centerYAnchor];

    v123 = OUTLINED_FUNCTION_20_15();
    if (!v123)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v124 = v123;
    v125 = [v123 centerYAnchor];

    v126 = [v122 constraintEqualToAnchor_];
    LODWORD(v127) = 1132068864;
    [v126 setPriority_];
    v128 = OUTLINED_FUNCTION_5_29();
    if (!v128)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v129 = v128;
    v130 = [v128 bottomAnchor];

    v131 = OUTLINED_FUNCTION_20_15();
    if (!v131)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v132 = v131;
    v133 = [v131 safeAreaLayoutGuide];

    v134 = [v133 bottomAnchor];
    v135 = [v130 constraintLessThanOrEqualToAnchor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1B3CFC370;
    *(v136 + 32) = v119;
    *(v136 + 40) = v126;
    *(v136 + 48) = v135;
    v137 = v119;
    v138 = v126;
    v139 = v135;
    v140 = OUTLINED_FUNCTION_5_29();
    if (!v140)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v141 = v140;
    v142 = [v140 rightAnchor];

    v143 = OUTLINED_FUNCTION_20_15();
    if (!v143)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v144 = v143;
    v145 = [v143 rightAnchor];

    v146 = [v142 constraintEqualToAnchor:v145 constant:-30.0];
    *(v136 + 56) = v146;
    v147 = OUTLINED_FUNCTION_5_29();
    if (!v147)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v148 = v147;
    v149 = [v147 widthAnchor];

    v150 = [v1 swiftToolbarController];
    if (!v150)
    {
LABEL_111:
      __break(1u);
      return;
    }

    v151 = v150;
    v152 = sub_1B3828C58() >> 8;

    v153 = [v149 constraintEqualToConstant_];
    *(v136 + 64) = v153;
    sub_1B382ADC0(v136, v1);
  }

  else if ((sub_1B3828AB8() & 1) != 0 || OUTLINED_FUNCTION_19_15() == 2)
  {
    if (sub_1B3828AB8())
    {
      v59 = 27.0;
    }

    else
    {
      v59 = 30.0;
    }

    v60 = OUTLINED_FUNCTION_5_29();
    if (!v60)
    {
      goto LABEL_91;
    }

    v61 = v60;
    v62 = [v60 topAnchor];

    v63 = OUTLINED_FUNCTION_12_20();
    if (!v63)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v64 = v63;
    v65 = [v63 safeAreaLayoutGuide];

    v66 = [v65 topAnchor];
    v67 = OUTLINED_FUNCTION_15_22();
    v69 = [v67 v68];

    v70 = OUTLINED_FUNCTION_5_29();
    if (!v70)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v71 = v70;
    v72 = [v70 centerYAnchor];

    v73 = OUTLINED_FUNCTION_12_20();
    if (!v73)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v74 = v73;
    v75 = [v73 centerYAnchor];

    v76 = OUTLINED_FUNCTION_15_22();
    v78 = [v76 v77];

    LODWORD(v79) = 1132068864;
    [v78 setPriority_];
    v80 = OUTLINED_FUNCTION_5_29();
    if (!v80)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v81 = v80;
    v82 = [v80 bottomAnchor];

    v83 = OUTLINED_FUNCTION_12_20();
    if (!v83)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v84 = v83;
    v85 = [v83 safeAreaLayoutGuide];

    v86 = [v85 bottomAnchor];
    v87 = OUTLINED_FUNCTION_15_22();
    v89 = [v87 v88];

    LOBYTE(v86) = sub_1B3828AB8();
    v90 = OUTLINED_FUNCTION_12_20();
    v91 = v90;
    if (v86)
    {
      if (!v90)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v92 = [v90 safeAreaLayoutGuide];

      v93 = [v92 leftAnchor];
      v91 = v92;
    }

    else
    {
      if (!v90)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v93 = [v90 leftAnchor];
    }

    v94 = v93;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1B3CFC370;
    *(v95 + 32) = v69;
    *(v95 + 40) = v78;
    *(v95 + 48) = v89;
    v96 = v69;
    v97 = v78;
    v98 = v89;
    v99 = OUTLINED_FUNCTION_5_29();
    if (!v99)
    {
      goto LABEL_97;
    }

    v100 = v99;
    v101 = [v99 leftAnchor];

    v102 = [v101 constraintEqualToAnchor:v94 constant:v59];
    *(v95 + 56) = v102;
    v103 = OUTLINED_FUNCTION_5_29();
    if (!v103)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v104 = v103;
    v105 = [v103 widthAnchor];

    v106 = [v1 swiftToolbarController];
    if (!v106)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v107 = v106;
    v108 = sub_1B3828C58() >> 8;

    v109 = [v105 constraintEqualToConstant_];
    *(v95 + 64) = v109;
    sub_1B382ADC0(v95, v1);
  }

  else
  {
    [v1 setSwiftToolbarConstraints_];
  }

LABEL_71:
  if (sub_1B382AD50(v1))
  {
    v154 = objc_opt_self();
    sub_1B3710718(0, &qword_1EB84FE50);
    v155 = sub_1B3C9C778();

    [v154 activateConstraints_];
  }
}

id sub_1B3828A28()
{
  if ([v0 layoutOrientation] != 3 && objc_msgSend(v0, sel_layoutOrientation) != 2)
  {
    return 0;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v2 = result;
    v3 = [result currentLayoutStyle];

    return (v3 != 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B3828AB8()
{
  if ([v0 layoutOrientation] != 3)
  {
    return 0;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v2 = result;
    v3 = [result currentLayoutStyle];

    return (v3 == 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3828B34()
{
  result = [v0 photoEditSpec];
  if (result)
  {
    v2 = result;
    v3 = [result currentLayoutStyle];

    if (v3 == 1)
    {
      return 1;
    }

    else
    {
      v4 = sub_1B3C9C5A8();
      v5 = PULocalizedString(v4);

      v6 = sub_1B3C9C5E8();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      return v9 == 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3828C08(int a1)
{

  sub_1B3828D8C(a1 & 0xFFFFFF01);
}

uint64_t sub_1B3828C58()
{

  v0 = sub_1B3828CE4();

  return v0 & 0xFFFFFF01;
}

uint64_t sub_1B3828CE4()
{
  swift_getKeyPath();
  sub_1B382B5E0(&qword_1EB84F600, type metadata accessor for PhotoEditToolbarController.IntegrationModel);
  sub_1B3C982D8();

  return *(v0 + 48) | (*(v0 + 49) << 8);
}

uint64_t sub_1B3828D8C(uint64_t result)
{
  if ((*(v1 + 48) | (*(v1 + 49) << 8)) ^ result & 0xFF01) > 0xFFu || ((*(v1 + 48) ^ result & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B382A210();
  }

  else
  {
    *(v1 + 48) = result & 1;
    *(v1 + 49) = BYTE1(result);
  }

  return result;
}

id sub_1B3828E64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PhotoEditToolbarController.IntegrationView(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  type metadata accessor for PhotoEditToolbarController.IntegrationModel(0);
  v5 = swift_allocObject();
  sub_1B382A588(0x201u);
  *&v1[OBJC_IVAR___PUPhotoEditSwiftToolbarController_integrationModel] = v5;
  OUTLINED_FUNCTION_3_35();
  sub_1B382B5E0(v6, v7);

  sub_1B3C9BF18();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856400));
  *&v1[OBJC_IVAR___PUPhotoEditSwiftToolbarController_hostingController] = sub_1B3C9B088();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1B382902C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B3C9B498();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v5 = OBJC_IVAR___PUPhotoEditSwiftToolbarController_hostingController;
  [v1 addChildViewController_];
  [*&v5[v1] didMoveToParentViewController_];
  v6 = *&v5[v1];
  sub_1B3C9B078();

  v7 = *&v5[v1];
  sub_1B3C9B488();
  sub_1B3C9B068();

  v8 = [*&v5[v1] view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v10 addSubview_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B3D001A0;
  v14 = [v9 topAnchor];
  v15 = OUTLINED_FUNCTION_6_24();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = OUTLINED_FUNCTION_10_5();
  v20 = [v18 v19];

  *(v13 + 32) = v20;
  v21 = [v9 bottomAnchor];
  v22 = OUTLINED_FUNCTION_6_24();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = OUTLINED_FUNCTION_10_5();
  v27 = [v25 v26];

  *(v13 + 40) = v27;
  v28 = [v9 leadingAnchor];
  v29 = OUTLINED_FUNCTION_6_24();
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = OUTLINED_FUNCTION_10_5();
  v34 = [v32 v33];

  *(v13 + 48) = v34;
  v35 = [v9 trailingAnchor];
  v36 = OUTLINED_FUNCTION_6_24();
  if (v36)
  {
    v37 = v36;
    v38 = objc_opt_self();
    v39 = [v37 trailingAnchor];

    v40 = [v5 constraintEqualToAnchor_];
    *(v13 + 56) = v40;
    sub_1B3710718(0, &qword_1EB84FE50);
    v41 = sub_1B3C9C778();

    [v38 activateConstraints_];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1B38294A4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B382A210();
  sub_1B36F9DA0(a1);
}

void sub_1B382952C(uint64_t a1)
{
  v2 = sub_1B3711890(a1);
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C6A930](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v7 = v5;
    v8 = sub_1B380DB20();

    ++v3;
    if (v8 != 11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B371001C(0, *(v4 + 16) + 1, 1, v4);
        v4 = v11;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B371001C(v9 > 1, v10 + 1, 1, v4);
        v4 = v12;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + v10 + 32) = v8;
      v3 = v6;
    }
  }

  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = (v4 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 != 10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B37EADF0(0, *(v15 + 16) + 1, 1);
        }

        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B37EADF0(v18 > 1, v19 + 1, 1);
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + v19 + 32) = v16;
      }

      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1B3829754(v15);
}

uint64_t sub_1B3829754(uint64_t a1)
{

  sub_1B3761C58();
  v4 = v3;

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B382A210();
  }
}

uint64_t sub_1B38298BC()
{
  v0 = sub_1B380DB20();

  v1 = sub_1B3829ED8();

  if (v1 == 11)
  {
    if (v0 == 11)
    {
      return result;
    }

LABEL_5:

    sub_1B3829ED8();

    MEMORY[0x1EEE9AC00](v3);
    sub_1B3C9C058();
    sub_1B3C9A9D8();
  }

  if (v0 == 11)
  {
    goto LABEL_5;
  }

  v4 = sub_1B380DE70(v1);
  v6 = v5;
  if (v4 == sub_1B380DE70(v0) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1B3C9D6A8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return result;
}

void (*sub_1B3829A88(uint64_t a1))(uint64_t)
{
  v2 = a1;
  result = sub_1B3829B60(a1);
  if (v2 != 11)
  {
    result = sub_1B382A2B8();
    if (result)
    {
      v4 = result;
      result(a1);

      return sub_1B36F9DA0(v4);
    }
  }

  return result;
}

uint64_t sub_1B3829B04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(a2);
}

uint64_t sub_1B3829B60(char a1)
{
  result = sub_1B3829F78(*(v1 + 16), a1);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B382A210();
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return result;
}

uint64_t sub_1B3829C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8563F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  sub_1B3C9BF08();
  swift_getKeyPath();
  sub_1B3C9BF28();

  (*(v3 + 8))(v5, v2);
  v6 = v14[2];
  v7 = v14[3];
  v8 = v15;
  sub_1B3C9BEF8();
  v9 = sub_1B3829E30();

  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1B3C9BEF8();
  v12 = sub_1B3828CE4();

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 2;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12 & 1;
  *(a1 + 65) = HIBYTE(v12);
  return result;
}

uint64_t sub_1B3829E30()
{
  swift_getKeyPath();
  sub_1B382B5E0(&qword_1EB84F600, type metadata accessor for PhotoEditToolbarController.IntegrationModel);
  sub_1B3C982D8();
}

uint64_t sub_1B3829ED8()
{
  swift_getKeyPath();
  sub_1B382B5E0(&qword_1EB84F600, type metadata accessor for PhotoEditToolbarController.IntegrationModel);
  sub_1B3C982D8();

  return *(v0 + 16);
}

BOOL sub_1B3829F78(unsigned __int8 a1, char a2)
{
  v2 = a2 == 11 && a1 == 11;
  v3 = 0xEE006F6564695663;
  v4 = 0x6974616D656E6963;
  v5 = a1;
  v6 = 0x6974616D656E6963;
  v7 = 0xEE006F6564695663;
  switch(v5)
  {
    case 1:
      v7 = 0xE500000000000000;
      v8 = 1701079414;
      goto LABEL_15;
    case 2:
      v6 = 0x746F68506576696CLL;
      v7 = 0xE90000000000006FLL;
      break;
    case 3:
      v7 = 0xE800000000000000;
      v6 = 0x7469617274726F70;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v6 = 0x7473756A6461;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v6 = 0x737265746C6966;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v6 = 0x73656C797473;
      break;
    case 7:
      v7 = 0xE400000000000000;
      v6 = 1886351971;
      break;
    case 8:
      v7 = 0xE500000000000000;
      v8 = 1768191329;
LABEL_15:
      v6 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 9:
      v7 = 0xE700000000000000;
      v6 = 0x70756E61656C63;
      break;
    case 10:
      v7 = 0xE600000000000000;
      v6 = 0x657945646572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v3 = 0xE500000000000000;
      v9 = 1701079414;
      goto LABEL_27;
    case 2:
      v4 = 0x746F68506576696CLL;
      v3 = 0xE90000000000006FLL;
      goto LABEL_28;
    case 3:
      v3 = 0xE800000000000000;
      v4 = 0x7469617274726F70;
      goto LABEL_28;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x7473756A6461;
      goto LABEL_28;
    case 5:
      v3 = 0xE700000000000000;
      v4 = 0x737265746C6966;
      goto LABEL_28;
    case 6:
      v3 = 0xE600000000000000;
      v4 = 0x73656C797473;
      goto LABEL_28;
    case 7:
      v3 = 0xE400000000000000;
      v4 = 1886351971;
      goto LABEL_28;
    case 8:
      v3 = 0xE500000000000000;
      v9 = 1768191329;
LABEL_27:
      v4 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      goto LABEL_28;
    case 9:
      v3 = 0xE700000000000000;
      v4 = 0x70756E61656C63;
      goto LABEL_28;
    case 10:
      v3 = 0xE600000000000000;
      v4 = 0x657945646572;
LABEL_28:
      if (v6 == v4 && v7 == v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1B3C9D6A8();
      }

      break;
    default:
      return (v2 & 1) == 0;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1B382A210()
{
  OUTLINED_FUNCTION_3_35();
  sub_1B382B5E0(v0, v1);
  return sub_1B3C982C8();
}

uint64_t sub_1B382A2B8()
{
  swift_getKeyPath();
  sub_1B382B5E0(&qword_1EB84F600, type metadata accessor for PhotoEditToolbarController.IntegrationModel);
  sub_1B3C982D8();

  v1 = *(v0 + 24);
  sub_1B370A6FC(v1);
  return v1;
}

uint64_t sub_1B382A36C@<X0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  result = sub_1B382A2B8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B382AC04;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B382A3DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B382ABAC;
  }

  else
  {
    v4 = 0;
  }

  sub_1B370A6FC(v1);
  return sub_1B38294A4(v4);
}

uint64_t sub_1B382A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_1B370A6FC(a2);
  return sub_1B36F9DA0(v3);
}

uint64_t sub_1B382A4E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t sub_1B382A520@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3828CE4();
  *a1 = result & 1;
  a1[1] = BYTE1(result);
  return result;
}

uint64_t sub_1B382A588(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  *(v1 + 16) = 11;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1B3C98308();
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = v2 & 1;
  *(v1 + 49) = v3;
  return v1;
}

uint64_t sub_1B382A5EC()
{
  sub_1B36F9DA0(*(v0 + 24));

  v1 = OBJC_IVAR____TtCC15PhotosUIPrivate26PhotoEditToolbarController16IntegrationModel___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1B382A654()
{
  sub_1B382A5EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B382A79C()
{
  result = sub_1B3C98318();
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

uint64_t getEnumTagSinglePayload for PhotoEditToolbarStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotoEditToolbarStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1B382AA14()
{
  sub_1B382BBCC(319, &qword_1EB84F258, type metadata accessor for PhotoEditToolbarController.IntegrationModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B382AAD0()
{
  result = qword_1EB84F690;
  if (!qword_1EB84F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F690);
  }

  return result;
}

void sub_1B382AB24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 49) = v2;
}

unint64_t sub_1B382AB3C()
{
  result = qword_1EB84F308;
  if (!qword_1EB84F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F308);
  }

  return result;
}

uint64_t sub_1B382ABAC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B382ACA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856548);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B38203A0();
  return sub_1B3C9AD88();
}

uint64_t sub_1B382AD50(void *a1)
{
  v1 = [a1 swiftToolbarConstraints];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &qword_1EB84FE50);
  v3 = sub_1B3C9C788();

  return v3;
}

void sub_1B382ADC0(uint64_t a1, void *a2)
{
  sub_1B3710718(0, &qword_1EB84FE50);
  v3 = sub_1B3C9C778();

  [a2 setSwiftToolbarConstraints_];
}

_BYTE *storeEnumTagSinglePayload for PhotoEditToolbarStyle.SizeFamily(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotoEditToolbarStyle.LayoutAxis(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B382B038()
{
  result = qword_1EB84F3A0;
  if (!qword_1EB84F3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856408);
    sub_1B382B0F0();
    sub_1B370ED54(&qword_1EB84F2E0, &qword_1EB856410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F3A0);
  }

  return result;
}

unint64_t sub_1B382B0F0()
{
  result = qword_1EB84F6B0;
  if (!qword_1EB84F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F6B0);
  }

  return result;
}

unint64_t sub_1B382B148()
{
  result = qword_1EB84F6A8;
  if (!qword_1EB84F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F6A8);
  }

  return result;
}

unint64_t sub_1B382B1A0()
{
  result = qword_1EB84F698;
  if (!qword_1EB84F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F698);
  }

  return result;
}

unint64_t sub_1B382B250()
{
  result = qword_1EB84F6A0;
  if (!qword_1EB84F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F6A0);
  }

  return result;
}

unint64_t sub_1B382B2A4()
{
  result = qword_1EB84F350;
  if (!qword_1EB84F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856470);
    sub_1B382B35C();
    sub_1B370ED54(&qword_1EB84F2E0, &qword_1EB856410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F350);
  }

  return result;
}

unint64_t sub_1B382B35C()
{
  result = qword_1EB84F390;
  if (!qword_1EB84F390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856478);
    sub_1B382B3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F390);
  }

  return result;
}

unint64_t sub_1B382B3E8()
{
  result = qword_1EB84F3C0;
  if (!qword_1EB84F3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856480);
    sub_1B370ED54(&qword_1EB84F3D0, &qword_1EB856488);
    sub_1B382B4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F3C0);
  }

  return result;
}

unint64_t sub_1B382B4A0()
{
  result = qword_1EB84F260;
  if (!qword_1EB84F260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856490);
    sub_1B382B524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F260);
  }

  return result;
}

unint64_t sub_1B382B524()
{
  result = qword_1EB84F398;
  if (!qword_1EB84F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856498);
    sub_1B382B5E0(&qword_1EB84F688, type metadata accessor for PhotoEditToolbarButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F398);
  }

  return result;
}

uint64_t sub_1B382B5E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B382B648()
{
  result = qword_1EB84F370;
  if (!qword_1EB84F370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856420);
    sub_1B370ED54(&qword_1EB84F290, &qword_1EB856420);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F370);
  }

  return result;
}

unint64_t sub_1B382B788()
{
  result = qword_1EB84F340;
  if (!qword_1EB84F340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564A8);
    sub_1B382B648();
    sub_1B370ED54(&qword_1EB84F3D8, &qword_1EB8564B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F340);
  }

  return result;
}

uint64_t sub_1B382B840(uint64_t a1)
{
  v2 = sub_1B3C9BE58();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B382B89C()
{
  result = qword_1EB8564C8;
  if (!qword_1EB8564C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8564C8);
  }

  return result;
}

uint64_t objectdestroy_57Tm(uint64_t a1)
{

  sub_1B37BA2E8(*(v1 + 56), *(v1 + 64));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1B382B964()
{
  result = qword_1EB84F640;
  if (!qword_1EB84F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F640);
  }

  return result;
}

unint64_t sub_1B382B9B8()
{
  result = qword_1EB84F3C8;
  if (!qword_1EB84F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F3C8);
  }

  return result;
}

void sub_1B382BA34()
{
  sub_1B382BB18();
  if (v0 <= 0x3F)
  {
    sub_1B382BB7C();
    if (v1 <= 0x3F)
    {
      sub_1B382BBCC(319, &qword_1EB84F3E0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B382BB18()
{
  if (!qword_1EB84F270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564E0);
    v0 = sub_1B3C9BE48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F270);
    }
  }
}

void sub_1B382BB7C()
{
  if (!qword_1EB84F3E8)
  {
    v0 = sub_1B3C9A7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F3E8);
    }
  }
}

void sub_1B382BBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B382BC30()
{
  result = qword_1EB84F348;
  if (!qword_1EB84F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564C0);
    sub_1B382BCE8();
    sub_1B370ED54(&qword_1EB84F2F0, &qword_1EB8564E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F348);
  }

  return result;
}

unint64_t sub_1B382BCE8()
{
  result = qword_1EB84F378;
  if (!qword_1EB84F378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564A0);
    sub_1B382B648();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564A8);
    sub_1B3C9BE58();
    sub_1B382B788();
    sub_1B382B5E0(&qword_1EB84F268, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F378);
  }

  return result;
}

uint64_t sub_1B382BE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoEditToolbarButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B382BEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoEditToolbarButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B382BF54()
{
  v0 = type metadata accessor for PhotoEditToolbarButton(0);
  OUTLINED_FUNCTION_8_0(v0);

  return sub_1B3825BA8();
}

unint64_t sub_1B382BFB8()
{
  result = qword_1EB84F328;
  if (!qword_1EB84F328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856510);
    sub_1B382C070();
    sub_1B370ED54(&qword_1EB84F2F0, &qword_1EB8564E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F328);
  }

  return result;
}

unint64_t sub_1B382C070()
{
  result = qword_1EB84F330;
  if (!qword_1EB84F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856508);
    sub_1B382C0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F330);
  }

  return result;
}

unint64_t sub_1B382C0FC()
{
  result = qword_1EB84F338;
  if (!qword_1EB84F338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856500);
    sub_1B382C1B4();
    sub_1B370ED54(&qword_1EB84F2E8, &qword_1EB856530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F338);
  }

  return result;
}

unint64_t sub_1B382C1B4()
{
  result = qword_1EB84F368;
  if (!qword_1EB84F368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8564F8);
    sub_1B370ED54(&unk_1EB84F298, &qword_1EB8564F0);
    sub_1B382B5E0(&qword_1EB84F2A8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F368);
  }

  return result;
}

uint64_t sub_1B382C29C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B370EFD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B382C2EC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B371B148(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B382C33C()
{
  OUTLINED_FUNCTION_2_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = OUTLINED_FUNCTION_87();
  v3(v2);
  return v0;
}

unint64_t sub_1B382C3B0()
{
  result = qword_1EB84F318;
  if (!qword_1EB84F318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856538);
    sub_1B382C468();
    sub_1B370ED54(&qword_1EB84F2C8, &qword_1EB8565D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F318);
  }

  return result;
}

unint64_t sub_1B382C468()
{
  result = qword_1EB84F320;
  if (!qword_1EB84F320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856518);
    sub_1B382BFB8();
    sub_1B382B5E0(&qword_1EB84F2A8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F320);
  }

  return result;
}

id OUTLINED_FUNCTION_6_24()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return swift_getAtKeyPath();
}

id OUTLINED_FUNCTION_12_20()
{

  return [v1 (v0 + 2808)];
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_1B3C9A438();
}

id OUTLINED_FUNCTION_14_21()
{

  return [v0 (v1 + 3690)];
}

id OUTLINED_FUNCTION_19_15()
{

  return [v1 (v0 + 3448)];
}

id OUTLINED_FUNCTION_20_15()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_1B382C60C(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 8 * i) == a1)
    {
      break;
    }
  }

  return i;
}

void sub_1B382C69C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4(v2);
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_11:
      OUTLINED_FUNCTION_27();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C6A930](v6, v3);
      goto LABEL_6;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(v3 + 8 * v6 + 32);
LABEL_6:
    v8 = v7;
    sub_1B3710718(0, v1);
    v9 = sub_1B3C9CFA8();

    if (v9)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1B382C784(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3711890(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C6A930](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1B3C98B88();
    v7 = sub_1B3C9CFA8();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1B382C8DC()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB8565E0);
  __swift_project_value_buffer(v0, qword_1EB8565E0);
  return sub_1B3C9A528();
}

uint64_t sub_1B382C940()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8567B0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_systemStyleCollections);
  *(v1 + 16) = xmmword_1B3CFC360;
  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_standardStyleCollections);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_creativeStyleCollections);

  return v1;
}

void sub_1B382C9D8()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    __break(1u);
    goto LABEL_27;
  }

  [v1 toolControllerWantsGestureRecognizerUpdate_];
  swift_unknownObjectRelease();
  v2 = [v0 delegate];
  if (!v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = [v2 mediaView];
  swift_unknownObjectRelease();
  if (!v17)
  {
    return;
  }

  v3 = v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode];
  v4 = [v0 delegate];
  if (v3 != 1)
  {
    if (v4)
    {
      [v4 toolControllerDidChangeWantsTapToToggleOriginalEnabled:v0 enabled:1];
      swift_unknownObjectRelease();
      if (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture])
      {
        [v17 removeGestureRecognizer_];
      }

      v13 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer];
      if (!v15)
      {
        goto LABEL_23;
      }

      v8 = v15;
      v9 = v14;
      v10 = v13;
      [v17 removeGestureRecognizer_];
      [v17 removeGestureRecognizer_];
      v16 = [v0 view];
      if (v16)
      {
        v12 = v16;
        [v16 removeGestureRecognizer_];
        goto LABEL_22;
      }

LABEL_31:
      __break(1u);
      return;
    }

    goto LABEL_29;
  }

  if (!v4)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v4 toolControllerDidChangeWantsTapToToggleOriginalEnabled:v0 enabled:0];
  swift_unknownObjectRelease();
  if (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture])
  {
    [v17 addGestureRecognizer_];
  }

  v5 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  [v17 addGestureRecognizer_];
  [v17 addGestureRecognizer_];
  v11 = [v0 view];
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = v11;
  [v11 addGestureRecognizer_];
LABEL_22:

LABEL_23:
}

id sub_1B382CCB8()
{
  v0 = [objc_opt_self() currentTheme];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_1B3C9C5A8();
  v3 = PELocalizedString();

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  v13 = v4;
  sub_1B371B158();
  v7 = sub_1B3C9D1B8();
  v9 = v8;

  sub_1B3813F1C(v7, v9, v1, &selRef_setText_);
  if (v0)
  {
    v10 = [v0 photoEditingTopToolbarToolLabelButtonColor];
    [v1 setTextColor_];

    v11 = [v0 topToolbarToolLabelFont];
  }

  else
  {
    [v1 setTextColor_];
    v11 = 0;
  }

  [v1 setFont_];
  swift_unknownObjectRelease();

  return v1;
}

id sub_1B382CE5C()
{
  if (MEMORY[0x1B8C6D660]())
  {
    v0 = [objc_opt_self() currentTheme];
    v1 = objc_allocWithZone(PUEditBadgeLabel);
    v2 = sub_1B383B828(0, 0, 1, v0);
    [v2 setAlpha_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
LABEL_8:

    return v2;
  }

  result = [objc_allocWithZone(MEMORY[0x1E6993830]) initWithFrame_];
  if (result)
  {
    v4 = result;
    v5 = objc_opt_self();
    v2 = v4;
    v6 = [v5 currentTheme];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 photoEditingBadgeViewFillColor];
      [v2 _setFillColor_];

      v9 = [v7 photoEditingBadgeViewContentColor];
    }

    else
    {
      [v2 _setFillColor_];
      v9 = 0;
    }

    [v2 _setContentColor_];

    [v2 _setFillCornerRadius_];
    [objc_opt_self() _defaultTextInsets];
    [v2 _setTextInsets_];
    [v2 setAlpha_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1B382D084()
{
  v0 = [objc_opt_self() currentTheme];
  v1 = *MEMORY[0x1E69BE128];
  v2 = objc_allocWithZone(type metadata accessor for PUPhotoStyleSectionLabel());
  swift_unknownObjectRetain();
  v3 = sub_1B37B5828(v1, v0);
  [v3 setAlpha_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  swift_unknownObjectRelease();

  return v3;
}

id sub_1B382D13C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69938A0]) initWithFrame_];
  [v0 setTransparentGradients];
  [v0 setDefaultIndex_];
  [v0 setItemCount_];
  [v0 setSelectedIndex_];
  [v0 setDotIndicatorBehavior_];
  [v0 setSelectionDotCenterTopSpacing_];
  [v0 setDotPlacement_];
  [v0 setLayoutDirection_];
  [v0 setLayoutOrder_];
  [v0 setThumbnailSpacing_];
  [v0 setCornerStyle_];
  [v0 setSelectedThumbnailBorderWidth_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:0.3];
  [v0 setSelectedThumbnailBorderColor_];

  [v0 setSelectionLoupeVisibility_];
  [v0 setCustomThumbnailVisibility_];
  [v0 setCellOverlayMode_];
  [v0 setCustomThumbnailVisibility_];
  v2 = v0;
  [v2 setUserInteractionEnabled_];
  [v2 setAlpha_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1B38676DC(0xD000000000000011, 0x80000001B3D1BCA0, v2);

  return v2;
}

void sub_1B382D364(id a1, void *a2)
{
  v4 = *(v2 + *a2);
  if (a1)
  {
    if (v4)
    {
      sub_1B3710718(0, &qword_1EB8567D0);
      v5 = v4;
      v6 = a1;
      v7 = sub_1B3C9CFA8();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  [a1 invalidate];
}

void sub_1B382D410(void *a1, void *a2)
{
  v5 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v4 = a1;
  sub_1B382D364(v5, a2);
}

void sub_1B382D47C()
{
  OUTLINED_FUNCTION_39();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1B3C98FA8();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  sub_1B383CFA4();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel) = 0;
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_systemStyleCollections;
  (*(v9 + 104))(v12 - v11, *MEMORY[0x1E69C32B8], v7);
  sub_1B3C9C7C8();
  v14 = OUTLINED_FUNCTION_28_9();
  v15(v14);
  *(v0 + v13) = v1;
  v16 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_creativeStyleCollections;
  *(v0 + v16) = sub_1B3C9C7D8();
  v17 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_standardStyleCollections;
  *(v0 + v17) = MEMORY[0x1B8C69D30]();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_thumbnailsBaseCompositionController) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources) = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolTitleLabel;
  *(v0 + v19) = sub_1B382CCB8();
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel;
  *(v0 + v20) = sub_1B382CE5C();
  v21 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabel;
  *(v0 + v21) = sub_1B382D084();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberThumbnailsDimension) = 0x4049800000000000;
  v22 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  *(v0 + v22) = sub_1B382D13C();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isDraggingScrubberView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_defaultToolContainerViewMaskView) = 0;
  v23 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v23) = v24;
  v25 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad;
  sub_1B3C9CBC8();
  *MEMORY[0x1E69BE128];
  MEMORY[0x1B8C66510]();
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_38_6();
  *(v0 + v25) = sub_1B3C9CB58();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_expandedPadPulsingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadPulsingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_impactGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_staticDottedGridImage) = 0;
  v26 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider;
  *(v2 + v26) = [objc_allocWithZone(MEMORY[0x1E69C42C8]) init];
  v27 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView;
  v28 = [objc_allocWithZone(MEMORY[0x1E69C42D0]) initWithTone:0.0 color:0.0 palette:0.0];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v2 + v27) = v28;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_mediaViewIntersectsTopPlatter) = 0;
  v29 = (v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_lastdPadCollapsedFrame);
  *v29 = 0u;
  v29[1] = 0u;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolConstraints) = v18;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabelConstraints) = v18;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_adjustmentLabelConstraints) = v18;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelConstraints) = v18;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelTargetAlpha) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelVisibilityTimer) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelValueFormatter) = 0;
  OUTLINED_FUNCTION_14();
  objc_msgSendSuper2(v30, v31, v2, ObjectType);
  OUTLINED_FUNCTION_27();
}

void sub_1B382D8B0()
{
  v1 = v0;
  v2 = sub_1B3C98FA8();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  sub_1B383CFA4();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel) = 0;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_systemStyleCollections;
  (*(v7 + 104))(v10 - v9, *MEMORY[0x1E69C32B8], v5);
  v13 = sub_1B3C9C7C8();
  (*(v7 + 8))(v11, v5);
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_creativeStyleCollections;
  *(v0 + v14) = sub_1B3C9C7D8();
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_standardStyleCollections;
  *(v0 + v15) = MEMORY[0x1B8C69D30]();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_thumbnailsBaseCompositionController) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolTitleLabel;
  *(v0 + v17) = sub_1B382CCB8();
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel;
  *(v0 + v18) = sub_1B382CE5C();
  v19 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabel;
  *(v0 + v19) = sub_1B382D084();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberThumbnailsDimension) = 0x4049800000000000;
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  *(v0 + v20) = sub_1B382D13C();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isDraggingScrubberView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_defaultToolContainerViewMaskView) = 0;
  v21 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v21) = v22;
  v23 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad;
  sub_1B3C9CBC8();
  v24 = *MEMORY[0x1E69BE128];
  MEMORY[0x1B8C66510]();
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_38_6();
  *(v0 + v23) = sub_1B3C9CB58();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_expandedPadPulsingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadPulsingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_impactGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_staticDottedGridImage) = 0;
  v25 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider;
  *(v1 + v25) = [objc_allocWithZone(MEMORY[0x1E69C42C8]) init];
  v26 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView;
  v27 = [objc_allocWithZone(MEMORY[0x1E69C42D0]) initWithTone:0.0 color:0.0 palette:0.0];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v26) = v27;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_mediaViewIntersectsTopPlatter) = 0;
  v28 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_lastdPadCollapsedFrame);
  *v28 = 0u;
  v28[1] = 0u;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolConstraints) = v16;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabelConstraints) = v16;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_adjustmentLabelConstraints) = v16;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelConstraints) = v16;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelTargetAlpha) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelVisibilityTimer) = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelValueFormatter) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B382DD30()
{
  ObjectType = swift_getObjectType();
  v54.receiver = v0;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, sel_viewDidLoad);
  [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] setDelegate_];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_8_21();
  v52 = sub_1B383CEFC;
  v53 = v1;
  v48 = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1B382E850;
  v51 = &block_descriptor_92;
  _Block_copy(&v48);
  OUTLINED_FUNCTION_26_9();
  v3 = OUTLINED_FUNCTION_9_19();
  [v3 v4];
  _Block_release(v1);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_8_21();
  v52 = sub_1B383CF04;
  v53 = v1;
  v48 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_40();
  v50 = v5;
  v51 = &block_descriptor_96;
  _Block_copy(&v48);
  OUTLINED_FUNCTION_26_9();
  v6 = OUTLINED_FUNCTION_9_19();
  [v6 v7];
  _Block_release(v1);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_8_21();
  v52 = sub_1B383CF0C;
  v53 = v1;
  v48 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_40();
  v50 = v8;
  v51 = &block_descriptor_100;
  _Block_copy(&v48);
  OUTLINED_FUNCTION_26_9();
  v9 = OUTLINED_FUNCTION_9_19();
  [v9 v10];
  _Block_release(v1);
  v11 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_8_21();
  v52 = sub_1B383CF14;
  v53 = v1;
  v48 = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1B382EE04;
  v51 = &block_descriptor_104;
  _Block_copy(&v48);
  OUTLINED_FUNCTION_26_9();
  v12 = OUTLINED_FUNCTION_9_19();
  [v12 v13];
  _Block_release(v1);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_8_21();
  v52 = sub_1B383CF1C;
  v53 = v1;
  v48 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_40();
  v50 = v14;
  v51 = &block_descriptor_108;
  _Block_copy(&v48);
  OUTLINED_FUNCTION_26_9();
  v15 = OUTLINED_FUNCTION_9_19();
  [v15 v16];
  _Block_release(v1);
  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_1B383CF24;
  v53 = v17;
  v48 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_40();
  v50 = v18;
  v51 = &block_descriptor_112_0;
  v19 = _Block_copy(&v48);

  [v11 setOnGestureDidEnd_];
  _Block_release(v19);
  v51 = ObjectType;
  v48 = v0;
  v20 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v21 = v0;
  v22 = sub_1B3898D74(&v48, sel_handlePadDismissalWithGestureRecognizer_);
  v23 = *&v21[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer];
  *&v21[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalMediaViewGestureRecognizer] = v22;

  v51 = ObjectType;
  v48 = v21;
  v24 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v25 = v21;
  v26 = sub_1B3898D74(&v48, sel_handlePadDismissalWithGestureRecognizer_);
  v27 = *&v25[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer];
  *&v25[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissalToolViewGestureRecognizer] = v26;

  v51 = ObjectType;
  v48 = v25;
  v28 = objc_allocWithZone(MEMORY[0x1E69DCFC8]);
  v29 = v25;
  v30 = sub_1B383B8B0(&v48, sel_handlePadDismissalWithGestureRecognizer_);
  v31 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer;
  v32 = *&v29[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer];
  *&v29[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_swipeDownGestureRecognizer] = v30;

  v33 = *&v29[v31];
  if (v33)
  {
    [v33 setDirection_];
  }

  v51 = ObjectType;
  v48 = v29;
  objc_allocWithZone(MEMORY[0x1E69DCC48]);
  v34 = v29;
  v35 = sub_1B3898D74(&v48, sel_handleToggleOriginalWithGestureRecognizer_);
  v36 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture];
  *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toggleOriginalCustomGesture] = v35;

  v37 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView];
  OUTLINED_FUNCTION_20();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_1B383CF54;
  v53 = v38;
  v48 = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1B370C014;
  v51 = &block_descriptor_116;
  v39 = _Block_copy(&v48);

  [v37 setResetAction_];
  _Block_release(v39);
  result = [v34 view];
  if (result)
  {
    v41 = result;
    v42 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:result];

    v43 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_impactGenerator;
    swift_beginAccess();
    v44 = *&v34[v43];
    *&v34[v43] = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1B3CF6CE0;
    v46 = sub_1B3C9A5D8();
    v47 = MEMORY[0x1E69DC2B0];
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = ObjectType;
    OUTLINED_FUNCTION_9_19();
    sub_1B3C9CC08();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B382E394()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad);
    sub_1B382E400(v2);
  }
}

void sub_1B382E400(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - v5;
  v7 = sub_1B3C98798();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 value];
  v13 = v12;
  [a1 value];
  v15 = v14;
  sub_1B3710718(0, &qword_1EB8553C0);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 shouldConstraintDpadValuesToGrid];

  if (v17)
  {
    v18 = round(v13 / 0.1);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = round(v15 / 0.1);
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v19 > -9.22337204e18)
          {
            if (v19 < 9.22337204e18)
            {
              v13 = v18 * 0.1;
              v15 = v19 * 0.1;
              goto LABEL_9;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel;
  if (!*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView];

  [v21 selectedIndex];
  v22 = sub_1B3C98818();

  if (!v22)
  {
    return;
  }

  v36[0] = v8;
  v23 = *&v2[v20];
  if (!v23)
  {
    goto LABEL_25;
  }

  v36[1] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v13;
  *(v24 + 32) = v15;
  sub_1B3C98878();
  sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);

  v25 = v22;
  sub_1B3C9A038();

  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v26 = v36[0];
    (*(v36[0] + 32))(v11, v6, v7);
    v27 = [v2 compositionController];
    if (v27)
    {
      v28 = v27;
      v29 = objc_opt_self();
      v30 = sub_1B3C98758();
      sub_1B3C98768();
      v32 = v31;
      sub_1B3C98778();
      v34 = v33;
      sub_1B3C98788();
      [v29 updateCompositionController:v28 withStyleCast:v30 tone:v32 color:v34 intensity:v35];

      (*(v26 + 8))(v11, v7);
      goto LABEL_16;
    }

LABEL_26:
    __break(1u);
    return;
  }

  sub_1B370EEB0(v6, &qword_1EB8567C8);
LABEL_16:
  sub_1B38364E8();
  sub_1B38366D8();
}

uint64_t sub_1B382E850(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v5(v6, a2, a3);
}

void sub_1B382E8AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActivelyAdjusting_];
    [v1 willModifyAdjustment];
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing) = 1;
  }
}

void sub_1B382E92C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActivelyAdjusting_];
    v2 = sub_1B3C9C5A8();
    v3 = PELocalizedString();

    v4 = sub_1B3C9C5E8();
    v6 = v5;

    v7 = sub_1B383C9F0(v4, v6, v1);
  }
}

void sub_1B382E9F4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B382EA58(a1);
  }
}

void sub_1B382EA58(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_1B3C98798();
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel;
  if (!*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
    __break(1u);
    goto LABEL_8;
  }

  v34[0] = v8;

  v12 = sub_1B3C98838();

  v13 = sub_1B3C98B68();

  v14 = *&v2[v11];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34[1] = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v16 + 32) = a1;
  sub_1B3C98878();
  sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);

  v17 = v13;
  sub_1B3C9A038();

  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_1B370EEB0(v6, &qword_1EB8567C8);
    return;
  }

  v18 = v34[0];
  (*(v34[0] + 32))(v10, v6, v7);
  [v2 willModifyAdjustment];
  v19 = [v2 compositionController];
  if (v19)
  {
    v20 = v19;
    v21 = objc_opt_self();
    v22 = sub_1B3C98758();
    sub_1B3C98768();
    v24 = v23;
    sub_1B3C98778();
    v26 = v25;
    sub_1B3C98788();
    [v21 updateCompositionController:v20 withStyleCast:v22 tone:v24 color:v26 intensity:v27];

    v28 = sub_1B3C9C5A8();
    v29 = PELocalizedString();

    v30 = sub_1B3C9C5E8();
    v32 = v31;

    v33 = sub_1B383C9F0(v30, v32, v2);
    (*(v18 + 8))(v10, v7);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1B382EE04(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void sub_1B382EE58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActivelyAdjusting_];
    [v1 willModifyAdjustment];
  }
}

id sub_1B382EEC8()
{
  [v0 setActivelyAdjusting_];

  return [v0 willModifyAdjustment];
}

void sub_1B382EF0C()
{
  [v0 setActivelyAdjusting_];
  v1 = sub_1B3C9C5A8();
  v2 = PELocalizedString();

  v3 = sub_1B3C9C5E8();
  v5 = v4;

  v6 = sub_1B383C9F0(v3, v5, v0);
}

void sub_1B382EFAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = sub_1B3C98798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel;
  if (!*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v16 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView];

  [v16 selectedIndex];
  v17 = sub_1B3C98818();

  if (!v17)
  {
    return;
  }

  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    v18 = v7;
LABEL_16:
    sub_1B370EEB0(v18, &qword_1EB8567C8);
    return;
  }

  v63 = v11;
  v64 = v9;
  v61 = *(v9 + 32);
  v62 = v9 + 32;
  v61(v14, v7, v8);
  v19 = objc_opt_self();
  v20 = sub_1B3C98758();
  v21 = [v19 defaultValuesForCast_];

  sub_1B3710718(0, &qword_1EB852330);
  v22 = sub_1B3C9C788();

  v23 = v22 & 0xC000000000000001;
  sub_1B37ED0BC(0, (v22 & 0xC000000000000001) == 0, v22);
  v65 = v14;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1B8C6A930](0, v22);
  }

  else
  {
    v24 = *(v22 + 32);
  }

  v25 = v24;
  [v24 doubleValue];
  v27 = v26;

  sub_1B37ED0BC(1, v23 == 0, v22);
  if (v23)
  {
    v28 = MEMORY[0x1B8C6A930](1, v22);
  }

  else
  {
    v28 = *(v22 + 40);
  }

  v29 = v28;
  [v28 doubleValue];
  v31 = v30;

  sub_1B37ED0BC(2, v23 == 0, v22);
  if (v23)
  {
    v32 = MEMORY[0x1B8C6A930](2, v22);
  }

  else
  {
    v32 = *(v22 + 48);
  }

  v33 = v32;
  [v32 doubleValue];
  v35 = v34;

  if (!*&v1[v15])
  {
    goto LABEL_22;
  }

  v66 = *&v1[v15];
  v36 = swift_allocObject();
  v36[2] = v17;
  v36[3] = v27;
  v36[4] = v31;
  v36[5] = v35;
  sub_1B3C98878();
  sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);

  v37 = v17;
  sub_1B3C9A038();

  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    (*(v64 + 8))(v65, v8);

    v18 = v4;
    goto LABEL_16;
  }

  v38 = v63;
  v61(v63, v4, v8);
  [v1 willModifyAdjustment];
  v39 = [v1 compositionController];
  v40 = v65;
  if (!v39)
  {
    goto LABEL_23;
  }

  v41 = v39;

  v42 = objc_opt_self();
  v43 = sub_1B3C98758();
  sub_1B3C98768();
  v45 = v44;
  sub_1B3C98778();
  v47 = v46;
  sub_1B3C98788();
  [v42 updateCompositionController:v41 withStyleCast:v43 tone:v45 color:v47 intensity:v48];

  v49 = sub_1B3C9C5A8();
  v50 = PELocalizedString();

  v51 = sub_1B3C9C5E8();
  v53 = v52;

  sub_1B3837884(v37, 0, v54, v55, v56, v57, v58, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  sub_1B38364E8();
  sub_1B38366D8();

  v60 = *(v64 + 8);
  v60(v38, v8);
  v60(v40, v8);
}

uint64_t sub_1B382F594(void *a1)
{
  v2 = sub_1B3C9C118();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B3C9C168();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v8 = sub_1B3C9CC88();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_1B383CF8C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_125_0;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B383CD20(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v7, v4, v10);
  _Block_release(v10);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_1B382F888()
{
  sub_1B382F8EC(0);
  sub_1B382FE48();
  return sub_1B3830100();
}

id sub_1B382F8EC(char a1)
{
  v2 = v1;
  v4 = sub_1B3C98FA8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 toolContainerView];
  if (result)
  {
    v10 = result;
    v11 = [result superview];

    if (v11)
    {
      v12 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_defaultToolContainerViewMaskView];
      [v11 setMaskView_];
    }

    v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode] = 0;
    sub_1B382C9D8();
    sub_1B38360B0();
    v13 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator;
    v14 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator];
    if (v14)
    {
      if ([v14 state] != 2)
      {
        v15 = *&v2[v13];
        if (v15)
        {
          [v15 stopAnimation_];
        }
      }
    }

    v16 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator;
    v17 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator];
    if (v17)
    {
      if ([v17 state] != 2)
      {
        v18 = *&v2[v16];
        if (v18)
        {
          [v18 stopAnimation_];
        }
      }
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (a1)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDuration:0.35 bounce:0.15];
      v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.35];
      v22 = *&v2[v13];
      *&v2[v13] = v21;
      v23 = v21;

      v24 = swift_allocObject();
      *(v24 + 16) = sub_1B383CE64;
      *(v24 + 24) = v19;
      v35 = sub_1B3753CE8;
      v36 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1B370C014;
      v34 = &block_descriptor_71_0;
      v25 = _Block_copy(&aBlock);
      v30 = v4;

      [v23 addAnimations_];
      _Block_release(v25);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1B383CE6C;
      *(v26 + 24) = v20;
      v35 = sub_1B3753CE8;
      v36 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1B38412D0;
      v34 = &block_descriptor_77_0;
      v27 = _Block_copy(&aBlock);

      v4 = v30;

      [v23 addCompletion_];
      _Block_release(v27);
      [v23 startAnimation];
    }

    else
    {

      sub_1B3836110();

      sub_1B3836360();
    }

    [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad] setIsDottedGridAnimated_];
    sub_1B3C9CB68();
    sub_1B3C98F58();
    sub_1B3C98F78();
    [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] thumbnailCornerRadius];
    sub_1B3C98F48();
    v28 = sub_1B3C98F88();
    MEMORY[0x1EEE9AC00](v28);
    *(&v29 - 2) = v2;
    *(&v29 - 1) = v8;
    sub_1B3C9CB88();
    sub_1B3835E1C(0, 1);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B382FE48()
{
  OUTLINED_FUNCTION_19_16();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = 0.0;
  if ((v13 & 1) == 0 || (v15 = 1.0, (v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_mediaViewIntersectsTopPlatter] & 1) == 0))
  {
    v16 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabel];
    [v16 alpha];
    *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelTargetAlpha] = v15;
    if (v17 != v15 && (v14 & 1) != 0)
    {
      sub_1B3832344();
    }

    if (v6)
    {
      if (v12)
      {
        sub_1B3710718(0, &unk_1EB84F790);
        sub_1B382C888();
      }

      v28 = [v16 setAlpha_];
      if (v4)
      {
        v4(v28);
      }
    }

    else
    {
      v18 = v8;
      v19 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelVisibilityTimer;
      v20 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelVisibilityTimer];
      if (v20)
      {
        [v20 invalidate];
      }

      v21 = objc_opt_self();
      OUTLINED_FUNCTION_20();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v15;
      *(v23 + 32) = v0;
      *(v23 + 40) = v12 & 1;
      *(v23 + 48) = v10;
      *(v23 + 56) = v4;
      *(v23 + 64) = v2;
      v29[4] = sub_1B383CA70;
      v29[5] = v23;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 1107296256;
      v29[2] = sub_1B37D2F2C;
      v29[3] = &block_descriptor_46;
      v24 = _Block_copy(v29);
      v25 = v0;
      sub_1B370A6FC(v4);

      v26 = [v21 scheduledTimerWithTimeInterval:0 repeats:v24 block:v18];
      _Block_release(v24);
      v27 = *&v0[v19];
      *&v0[v19] = v26;
    }
  }

  OUTLINED_FUNCTION_18_19();
}

uint64_t sub_1B3830100()
{
  v2 = v0;
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabelConstraints;
  swift_beginAccess();
  sub_1B3710718(0, &qword_1EB84FE50);

  v5 = sub_1B3C9C778();

  [v3 deactivateConstraints_];

  swift_beginAccess();
  v6 = *&v2[v4];
  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v6 = *&v2[v4], (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    v9 = sub_1B383C5D8(v6);
    *&v2[v4] = sub_1B383BBBC(0, v9);
  }

  else
  {
    v8 = sub_1B3711890(*&v2[v4]);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1B383C190(0, v8);
  }

  swift_endAccess();
  v1 = &selRef_item;
  if (![v2 layoutOrientation])
  {
    return 1;
  }

  v10 = [v2 view];
  if (!v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = v10;
  v12 = [v10 window];

  if (!v12)
  {
    sub_1B383CA94();
    swift_willThrowTypedImpl();

    v22 = sub_1B3C9C778();

    [v3 activateConstraints_];

    return 1;
  }

  v13 = [v2 delegate];
  if (!v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = [v13 toolControllerMainContainerView_];
  if (!v44)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  v14 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel];
  [v14 sizeToFit];
  if ([v2 layoutOrientation] != 1)
  {
    if (([v2 layoutOrientation] == 3 || objc_msgSend(v2, sel_layoutOrientation) == 2) && (sub_1B3832ADC() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B3CFB680;
      v1 = [v14 bottomAnchor];
      v31 = [v2 view];
      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = v31;
      v33 = [v31 safeAreaLayoutGuide];

      v34 = [v33 bottomAnchor];
      v35 = [(SEL *)v1 constraintEqualToAnchor:v34];

      *(v15 + 32) = v35;
      v18 = [v14 centerXAnchor];
      v27 = v44;
      v21 = [v44 centerXAnchor];
      v26 = [v18 constraintEqualToAnchor_];
      goto LABEL_23;
    }

    if ([v2 layoutOrientation] == 3 && (sub_1B3832ADC() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B3CFB680;
      v23 = [v14 rightAnchor];
      v24 = [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] leftAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:-32.0];

      *(v15 + 32) = v25;
      v18 = [v14 centerYAnchor];
      v21 = [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView] centerYAnchor];
      goto LABEL_22;
    }

LABEL_31:
    if (qword_1EB8500C0 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B3CFB680;
  v1 = [v14 bottomAnchor];
  v16 = [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] topAnchor];
  v17 = [(SEL *)v1 constraintEqualToAnchor:v16 constant:-32.0];

  *(v15 + 32) = v17;
  v18 = [v14 centerXAnchor];
  v19 = [v2 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 centerXAnchor];

LABEL_22:
    v26 = [v18 constraintEqualToAnchor_];
    v27 = v44;
LABEL_23:
    v28 = v26;

    *(v15 + 40) = v28;
    *&v2[v4] = v15;

    v29 = sub_1B3C9C778();

    [v3 activateConstraints_];

    return 1;
  }

  while (1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
LABEL_32:
    v36 = sub_1B3C9A558();
    __swift_project_value_buffer(v36, qword_1EB8565E0);
    v37 = v2;
    v38 = sub_1B3C9A538();
    v2 = sub_1B3C9CAC8();
    if (!os_log_type_enabled(v38, v2))
    {

      goto LABEL_40;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v39 = 136315394;
    [v37 v1[222]];
    type metadata accessor for PUPhotoEditLayoutOrientation(0);
    sub_1B3C9D458();
    v41 = sub_1B3749364(0, 0xE000000000000000, &v45);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    v42 = [v37 photoEditSpec];

    if (v42)
    {
      break;
    }

    __break(1u);
  }

  [v42 currentLayoutStyle];

  type metadata accessor for PULayoutStyle(0);
  sub_1B3C9D458();
  v43 = sub_1B3749364(0, 0xE000000000000000, &v45);

  *(v39 + 14) = v43;
  _os_log_impl(&dword_1B36F3000, v38, v2, "updateStyleLabelConstraints encountered unexpected conditions. layoutOrientation %s, layoutStyle: %s", v39, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1B8C6EC70](v40, -1, -1);
  MEMORY[0x1B8C6EC70](v39, -1, -1);
LABEL_40:

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

id sub_1B38309F4(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  sub_1B3830AF0();
  v4 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad];
  OUTLINED_FUNCTION_25_7();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    [result frame];
    [v6 setFrame_];

    v7 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider];
    sub_1B3C9CDF8();
    [v7 frame];
    return [v7 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B3830AF0()
{
  v1 = [v0 layoutOrientation] != 1;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView];
  [v2 setLayoutDirection_];
  [v2 setLayoutOrder_];
  [v2 setDotPlacement_];
  v3 = [v2 selectedIndex];

  return [v2 setSelectedIndex_];
}

void sub_1B3830BF0(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1B383CEF4;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B372B6C8;
  v9[3] = &block_descriptor_88;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_1B3830D04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B382F8EC(0);
    sub_1B3830AF0();
    sub_1B382FE48();
    v2 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad];
    sub_1B3C9CB98();
  }
}

void sub_1B3830E24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_0();
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setLayoutOrientation_withTransitionCoordinator_, v3, a2);
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {

      sub_1B382F8EC(0);
    }

    sub_1B3830AF0();
    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      [v8 setNeedsUpdateConstraints];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B3830F74()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v18 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v16 = v9;
  v17 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  sub_1B383126C();
  sub_1B3831D58();
  sub_1B3830100();
  sub_1B3832344();
  sub_1B3710718(0, &qword_1EB84FE60);
  v13 = sub_1B3C9CC88();
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = sub_1B383CE34;
  v21[5] = v14;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1B370C014;
  v21[3] = &block_descriptor_63;
  v15 = _Block_copy(v21);

  sub_1B3C9C138();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1B383CD20(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v12, v7, v15);
  _Block_release(v15);

  (*(v18 + 8))(v7, v2);
  (*(v16 + 8))(v12, v17);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_updateViewConstraints);
  OUTLINED_FUNCTION_27();
}

void sub_1B383126C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolConstraints;
  swift_beginAccess();
  sub_1B3710718(0, &qword_1EB84FE50);

  v4 = sub_1B3C9C778();

  [v2 deactivateConstraints_];

  swift_beginAccess();
  v5 = *(&v1->isa + v3);
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v5 = *(&v1->isa + v3), (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    v8 = sub_1B383C5D8(v5);
    *(&v1->isa + v3) = sub_1B383BBBC(0, v8);
  }

  else
  {
    v7 = sub_1B3711890(*(&v1->isa + v3));
    if (v7 < 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_1B383C190(0, v7);
  }

  swift_endAccess();
  if (![v1 layoutOrientation])
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B3D001A0;
  v10 = *(&v1->isa + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView);
  v11 = [v10 topAnchor];
  v12 = [v1 toolContainerView];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v1 toolContainerView];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = v17;
  v73 = v2;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v20;
  v21 = [v10 leadingAnchor];
  v22 = [v1 toolContainerView];
  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v25;
  v26 = [v10 trailingAnchor];
  v27 = [v1 toolContainerView];
  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  *(&v1->isa + v3) = v9;

  if ([v1 layoutOrientation]== 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3D001A0;
    v32 = *(&v1->isa + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
    v33 = [v32 leadingAnchor];
    v34 = [v10 leadingAnchor];
    v35 = [v33 &selRef_currentPosterMedia + 5];

    *(inited + 32) = v35;
    v36 = [v32 trailingAnchor];
    v37 = [v10 trailingAnchor];
    v38 = [v36 &selRef_currentPosterMedia + 5];

    *(inited + 40) = v38;
    v39 = [v32 topAnchor];
    v40 = [v10 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:28.0];

    *(inited + 48) = v41;
    v42 = [v32 heightAnchor];
    v43 = [v42 constraintEqualToConstant_];

    *(inited + 56) = v43;
    swift_beginAccess();
    sub_1B37E77AC(inited);
    swift_endAccess();
    sub_1B383298C(0.0, 0.0, -50.0, 0.0);
LABEL_27:

    v64 = sub_1B3C9C778();

    [v73 activateConstraints_];

    return;
  }

  if ([v1 layoutOrientation]!= 3 && [v1 layoutOrientation]!= 2)
  {
LABEL_35:
    if (qword_1EB8500C0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v44 = (sub_1B3832ADC() & 1) != 0 || [v1 layoutOrientation]== 2;
  v45 = [v1 view];
  if (!v45)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v46 = v45;
  v47 = [v45 superview];

  if (v47)
  {
LABEL_23:
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1B3D001A0;
    v50 = *(&v1->isa + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
    v51 = [v50 topAnchor];
    if (v44)
    {
      v52 = [v10 topAnchor];
      v53 = 33.0;
    }

    else
    {
      v54 = [v47 safeAreaLayoutGuide];
      v52 = [v54 topAnchor];

      v53 = 28.0;
    }

    v55 = [v51 constraintEqualToAnchor_];

    *(v49 + 32) = v55;
    v56 = [v50 bottomAnchor];
    v57 = [v10 bottomAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v49 + 40) = v58;
    v59 = [v50 widthAnchor];
    v60 = [v59 constraintEqualToConstant_];

    *(v49 + 48) = v60;
    v61 = [v50 leftAnchor];
    v62 = [v10 leftAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:v53];

    *(v49 + 56) = v63;
    swift_beginAccess();
    sub_1B37E77AC(v49);
    swift_endAccess();
    sub_1B383298C(-40.0, -10.0, 0.0, -50.0);

    goto LABEL_27;
  }

  v48 = [v1 view];
  if (v48)
  {
    v47 = v48;
    goto LABEL_23;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    swift_once();
LABEL_36:
    v65 = sub_1B3C9A558();
    __swift_project_value_buffer(v65, qword_1EB8565E0);
    v66 = v1;
    v1 = sub_1B3C9A538();
    v67 = sub_1B3C9CAC8();
    if (!os_log_type_enabled(v1, v67))
    {

      goto LABEL_43;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    v75 = 0;
    *v68 = 136315394;
    v76 = 0xE000000000000000;
    [v66 layoutOrientation];
    type metadata accessor for PUPhotoEditLayoutOrientation(0);
    sub_1B3C9D458();
    v70 = sub_1B3749364(v75, v76, &v74);

    *(v68 + 4) = v70;
    *(v68 + 12) = 2080;
    v75 = 0;
    v76 = 0xE000000000000000;
    v71 = [v66 photoEditSpec];

    if (v71)
    {
      break;
    }

    __break(1u);
  }

  [v71 currentLayoutStyle];

  type metadata accessor for PULayoutStyle(0);
  sub_1B3C9D458();
  v72 = sub_1B3749364(v75, v76, &v74);

  *(v68 + 14) = v72;
  _os_log_impl(&dword_1B36F3000, v1, v67, "updateToolConstraints encountered unexpected conditions. layoutOrientation %s, layoutStyle: %s", v68, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1B8C6EC70](v69, -1, -1);
  MEMORY[0x1B8C6EC70](v68, -1, -1);
LABEL_43:

  sub_1B3C9D4C8();
  __break(1u);
}

uint64_t sub_1B3831D58()
{
  v1 = v0;
  result = [v0 delegate];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = [result secondaryToolbar];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 1;
  }

  [v3 frame];
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = 0.0;
  v38.size.height = 0.0;
  if (CGRectEqualToRect(v37, v38))
  {
    goto LABEL_11;
  }

  result = [v0 delegate];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = [result toolControllerMainContainerView_];
  swift_unknownObjectRelease();
  if (!v4)
  {
LABEL_11:

    return 1;
  }

  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_adjustmentLabelConstraints;
  swift_beginAccess();
  sub_1B3710718(0, &qword_1EB84FE50);

  v7 = sub_1B3C9C778();

  [v5 deactivateConstraints_];

  swift_beginAccess();
  v8 = *&v1[v6];
  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v8 = *&v1[v6];
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      result = sub_1B3711890(*&v1[v6]);
      if ((result & 0x8000000000000000) == 0)
      {
        sub_1B383C190(0, result);
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  v10 = sub_1B383C5D8(v8);
  *&v1[v6] = sub_1B383BBBC(0, v10);

LABEL_13:
  swift_endAccess();
  if (![v1 layoutOrientation])
  {

    return 1;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = result;
  v12 = [result window];

  if (!v12)
  {
    sub_1B383CA94();
    swift_willThrowTypedImpl();

    v34 = sub_1B3C9C778();

    [v5 activateConstraints_];

LABEL_23:
    return 1;
  }

  v35 = v5;
  v36 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B3D001A0;
  v14 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView];
  v15 = [v14 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_29;
  }

  v16 = result;
  v17 = [result leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [v14 trailingAnchor];
  result = [v1 view];
  if (result)
  {
    v20 = result;
    v21 = [result trailingAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v13 + 40) = v22;
    v23 = [v14 heightAnchor];
    v24 = [v23 constraintEqualToConstant_];

    *(v13 + 48) = v24;
    v25 = [v14 centerXAnchor];
    v26 = [v36 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v13 + 56) = v27;
    *&v1[v6] = v13;

    v28 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolTitleLabel];
    v29 = [v28 superview];
    if (v29)
    {

      v30 = [v14 centerYAnchor];
      v31 = [v28 centerYAnchor];
      v32 = [v30 constraintEqualToAnchor_];

      v33 = swift_beginAccess();
      MEMORY[0x1B8C69CE0](v33);
      sub_1B370EE54(*((*&v1[v6] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B3C9C808();
      swift_endAccess();
    }

    v34 = sub_1B3C9C778();

    [v35 activateConstraints_];

    goto LABEL_23;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B3832344()
{
  v1 = v0;
  v2 = [v0 delegate];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 secondaryToolbar];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  [v3 frame];
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = 0.0;
  v39.size.height = 0.0;
  if (CGRectEqualToRect(v38, v39))
  {
    goto LABEL_17;
  }

  v4 = objc_opt_self();
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelConstraints;
  swift_beginAccess();
  sub_1B3710718(0, &qword_1EB84FE50);

  v6 = sub_1B3C9C778();

  [v4 deactivateConstraints_];

  swift_beginAccess();
  v7 = *&v1[v5];
  if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v7 = *&v1[v5], (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    v10 = sub_1B383C5D8(v7);
    *&v1[v5] = sub_1B383BBBC(0, v10);
  }

  else
  {
    result = sub_1B3711890(*&v1[v5]);
    if (result < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_1B383C190(0, result);
  }

  swift_endAccess();
  if (![v1 layoutOrientation])
  {
LABEL_17:

    return 0;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = result;
  v12 = [result window];

  if (!v12)
  {

    v34 = sub_1B3C9C778();

    [v4 activateConstraints_];

    return 0;
  }

  result = [v1 delegate];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = v4;
  result = [result toolControllerMainContainerView_];
  if (result)
  {
    v13 = result;
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B3CFC180;
    v15 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabel];
    v16 = [v15 leadingAnchor];
    v17 = [v13 leadingAnchor];
    v18 = v13;
    v19 = [v16 constraintEqualToAnchor_];

    *(v14 + 32) = v19;
    v20 = [v15 trailingAnchor];
    v36 = v18;
    v21 = v18;
    v22 = v15;
    v23 = [v21 trailingAnchor];
    v24 = [v20 constraintEqualToAnchor_];

    *(v14 + 40) = v24;
    v25 = [v15 heightAnchor];
    v26 = [v25 constraintEqualToConstant_];

    *(v14 + 48) = v26;
    *&v1[v5] = v14;

    v27 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolTitleLabel];
    v28 = [v27 superview];
    if (v28)
    {

      v29 = [v22 topAnchor];
      v30 = [v27 bottomAnchor];
      v31 = [v29 constraintEqualToAnchor:v30 constant:44.0];

      v32 = swift_beginAccess();
      MEMORY[0x1B8C69CE0](v32);
      sub_1B370EE54(*((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B3C9C808();
      swift_endAccess();

      v33 = sub_1B3C9C778();

      [v37 activateConstraints_];
    }

    else
    {

      sub_1B383CA94();
      swift_willThrowTypedImpl();

      v35 = sub_1B3C9C778();

      [v37 activateConstraints_];
    }

    return 0;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1B38328EC(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1B383298C(double a1, double a2, double a3, double a4)
{
  [*&v4[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView] setHitTestInsets_];
  v9 = [v4 toolContainerView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  [v9 setHitTestInsets_];

  v11 = [v4 toolContainerView];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 superview];

  [v13 setHitTestInsets_];
  v14 = [v4 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setHitTestInsets_];
}

id sub_1B3832ADC()
{
  result = [v0 photoEditSpec];
  if (result)
  {
    v2 = result;
    v3 = [result currentLayoutStyle];

    return (v3 == 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B3832B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_toolTitleLabel);
  v2 = v1;
  return v1;
}

void sub_1B3832B68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = v0;
  v42 = &v40 - v2;
  if (!*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
    goto LABEL_48;
  }

  v3 = sub_1B3C98828();

  v4 = sub_1B3711890(v3);
  v5 = 0;
  v49 = v3 & 0xFFFFFFFFFFFFFF8;
  v50 = v3 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v43 = v3;
  v44 = v4;
  v48 = v3 + 32;
  while (1)
  {
    if (v5 == v4)
    {

      v30 = v41;
      v31 = [v41 px_screen];
      [v31 scale];
      v33 = v32;

      v34 = v33 * 51.0;
      [*&v30[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] setItemCount_];
      v35 = sub_1B3C9C8B8();
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1B3C9C888();

      v37 = sub_1B3C9C878();
      v38 = swift_allocObject();
      v39 = MEMORY[0x1E69E85E0];
      *(v38 + 16) = v37;
      *(v38 + 24) = v39;
      *(v38 + 32) = v36;
      *(v38 + 40) = v34;
      *(v38 + 48) = v34;
      *(v38 + 56) = v6;

      sub_1B3850B9C();

      return;
    }

    if (v50)
    {
      v7 = MEMORY[0x1B8C6A930](v5, v43);
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_41;
      }

      v7 = *(v48 + 8 * v5);
    }

    v8 = v7;
    v9 = __OFADD__(v5++, 1);
    if (v9)
    {
      break;
    }

    v10 = sub_1B3C98B78();

    if (v10 >> 62)
    {
      v11 = sub_1B3C9D2C8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v13 = sub_1B3C9D2C8();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v51 = v11;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v12)
      {
LABEL_18:
        sub_1B3C9D2C8();
      }

LABEL_19:
      v6 = sub_1B3C9D3C8();
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_20;
    }

    if (v12)
    {
      goto LABEL_18;
    }

    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v14 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v17 = *(v16 + 16);
    v18 = (*(v16 + 24) >> 1) - v17;
    v19 = v16 + 8 * v17;
    if (v10 >> 62)
    {
      v21 = sub_1B3C9D2C8();
      if (v21)
      {
        v22 = v21;
        v23 = sub_1B3C9D2C8();
        if (v18 < v23)
        {
          goto LABEL_46;
        }

        if (v22 < 1)
        {
          goto LABEL_47;
        }

        v20 = v23;
        v45 = v16;
        v46 = v5;
        v47 = v6;
        sub_1B370ED54(&qword_1EB856800, &qword_1EB8567F8);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567F8);
          v25 = sub_1B37ECF70(v52, i, v10);
          v27 = *v26;
          v25(v52, 0);
          *(v19 + 32 + 8 * i) = v27;
        }

        v5 = v46;
        v6 = v47;
        v4 = v44;
        v16 = v45;
        goto LABEL_30;
      }

LABEL_34:

      if (v51 > 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_34;
      }

      if (v18 < v20)
      {
        goto LABEL_45;
      }

      sub_1B3C987D8();
      swift_arrayInitWithCopy();
LABEL_30:

      if (v20 < v51)
      {
        goto LABEL_43;
      }

      if (v20 > 0)
      {
        v28 = *(v16 + 16);
        v9 = __OFADD__(v28, v20);
        v29 = v28 + v20;
        if (v9)
        {
          goto LABEL_44;
        }

        *(v16 + 16) = v29;
      }
    }
  }

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
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1B3833048(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a7;
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
  *(v7 + 152) = a6;
  sub_1B3C9C888();
  *(v7 + 184) = sub_1B3C9C878();
  v9 = sub_1B3C9C848();
  *(v7 + 192) = v9;
  *(v7 + 200) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B38330E8, v9, v8);
}

uint64_t sub_1B38330E8()
{
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
    v0[27] = v3;
    v4 = [v2 compositionController];
    v0[28] = v4;
    if (v4)
    {
      v7 = v3;
      v8 = swift_task_alloc();
      v0[29] = v8;
      *v8 = v0;
      v8[1] = sub_1B3833240;
      v5.n128_u64[0] = v0[20];
      v6.n128_u64[0] = v0[21];
      v4 = v3;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2D140](v4, v5, v6);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v9();
  }
}

uint64_t sub_1B3833240()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v3[30] = v5;
  v3[31] = v0;

  v6 = v2[28];
  if (v0)
  {
    v8 = v3[26];
    v7 = v3[27];

    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_1B383394C;
  }

  else
  {

    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_1B3833384;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1B3833384()
{
  v1 = sub_1B3711890(v0[22]);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v31 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B3C9D428();
    if (v3 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE2D138](v4, v5, v6, v7);
    }

    v8 = 0;
    v9 = v0[30];
    v10 = v0[22];
    v11 = v10 & 0xC000000000000001;
    v12 = v10 + 32;
    do
    {
      if (v11)
      {
        v13 = MEMORY[0x1B8C6A930](v8, v0[22]);
      }

      else
      {
        v13 = *(v12 + 8 * v8);
      }

      v14 = v13;
      v15 = v0[30];
      ++v8;
      type metadata accessor for WheelScrubberImageSource();
      swift_allocObject();
      v16 = v15;
      sub_1B383B3E4(v14, v9);
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
    }

    while (v3 != v8);
    v2 = v31;
  }

  v17 = v0[26];
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources;
  v0[32] = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources;
  swift_beginAccess();
  *(v17 + v18) = v2;

  v19 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  v0[33] = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  [*(v17 + v19) updateItems];
  [*(v17 + v19) alpha];
  if (v20 == 0.0 && sub_1B3711890(*(v17 + v18)))
  {
    sub_1B3833C74();
    sub_1B3833ED8();
  }

  v21 = v0[26];
  [*(v17 + v19) selectedIndex];
  sub_1B38342FC();
  v4 = [v21 compositionController];
  if (!v4)
  {
    goto LABEL_20;
  }

  v22 = v4;
  v23 = v0[26];
  [v4 copy];

  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  sub_1B3710718(0, &qword_1EB856808);
  v24 = swift_dynamicCast();
  v25 = v0[18];
  if (!v24)
  {
    v25 = 0;
  }

  v26 = *&v23[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_thumbnailsBaseCompositionController];
  *&v23[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_thumbnailsBaseCompositionController] = v25;

  v27 = [v23 compositionController];
  v0[34] = v27;

  if (!v27)
  {
    goto LABEL_21;
  }

  v28 = v0[27];
  v29 = swift_task_alloc();
  v0[35] = v29;
  *v29 = v0;
  v29[1] = sub_1B3833680;
  v6.n128_u64[0] = v0[20];
  v7.n128_u64[0] = v0[21];
  v4 = v0[22];
  v5 = v28;

  return MEMORY[0x1EEE2D138](v4, v5, v6, v7);
}

uint64_t sub_1B3833680(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v4 + 288) = v1;

  if (v1)
  {
    v7 = *(v4 + 192);
    v8 = *(v4 + 200);
    v9 = sub_1B3833AD4;
  }

  else
  {
    v10 = *(v4 + 272);

    *(v4 + 296) = a1;
    v7 = *(v4 + 192);
    v8 = *(v4 + 200);
    v9 = sub_1B38337B0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B38337B0()
{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];

  sub_1B38344E0(v7, v1);
  v9 = v8;

  *&v5[v3] = v9;

  v10 = objc_opt_self();
  v11 = *&v5[v2];
  OUTLINED_FUNCTION_20();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v0[6] = sub_1B383CCF4;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B370C014;
  v0[5] = &block_descriptor_46;
  v13 = _Block_copy(v0 + 2);
  v14 = v5;

  [v10 transitionWithView:v11 duration:5242882 options:v13 animations:0 completion:0.2];

  _Block_release(v13);
  OUTLINED_FUNCTION_1();

  return v15();
}

uint64_t sub_1B383394C()
{
  v1 = v0[31];

  if (qword_1EB8500C0 != -1)
  {
    OUTLINED_FUNCTION_2_37();
  }

  v2 = sub_1B3C9A558();
  __swift_project_value_buffer(v2, qword_1EB8565E0);
  v3 = v1;
  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  v8 = v0[27];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_9_0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_37_3(&dword_1B36F3000, v13, v14, "loadScrubberThumbnails failed when rendering square thumbnails: %@");
    sub_1B370EEB0(v10, &qword_1EB8567E0);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();

  return v15();
}

uint64_t sub_1B3833AD4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  v3 = *(v0 + 288);

  if (qword_1EB8500C0 != -1)
  {
    OUTLINED_FUNCTION_2_37();
  }

  v4 = sub_1B3C9A558();
  __swift_project_value_buffer(v4, qword_1EB8565E0);
  v5 = v3;
  v6 = sub_1B3C9A538();
  v7 = sub_1B3C9CAC8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  if (v8)
  {
    v11 = OUTLINED_FUNCTION_9_0();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_37_3(&dword_1B36F3000, v15, v16, "loadScrubberThumbnails failed when rendering square thumbnails: %@");
    sub_1B370EEB0(v12, &qword_1EB8567E0);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();

  return v17();
}

uint64_t sub_1B3833ED8()
{
  v1 = sub_1B3C9C118();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1B3C9C188();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  sub_1B3830100();
  sub_1B3834880();
  sub_1B3710718(0, &unk_1EB84F790);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B3C9CF58();

  if ((*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode) & 1) == 0)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    if (PFIsCameraMessagesApp() && ([v0 layoutOrientation] == 2 || objc_msgSend(v0, sel_layoutOrientation) == 3))
    {

      sub_1B3710718(0, &qword_1EB84FE60);
      v15 = sub_1B3C9CC88();
      sub_1B3C9C178();
      sub_1B3C9C1B8();
      v11 = *(v3 + 8);
      v13[1] = v3 + 8;
      v14 = v11;
      v11(v5, v2);
      aBlock[4] = sub_1B383CD18;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_51;
      _Block_copy(aBlock);
      v16 = MEMORY[0x1E69E7CC0];
      sub_1B383CD20(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
      sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
      sub_1B3C9D278();
      sub_1B3C9C1A8();
      swift_allocObject();
      sub_1B3C9C198();

      v12 = v15;
      sub_1B3C9CC68();

      return v14(v8, v2);
    }

    else
    {
      sub_1B3834BA4();
    }
  }

  return result;
}

void sub_1B38342FC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {

    v2 = sub_1B3C98818();

    if (v2)
    {
      v3 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap;
      swift_beginAccess();
      v4 = sub_1B3899020(v2, *(v1 + v3));
      if (v4)
      {
        v5 = v4;
        swift_endAccess();
        if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing))
        {
        }

        else
        {
          v6 = objc_opt_self();
          v7 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v8 = swift_allocObject();
          *(v8 + 16) = v7;
          *(v8 + 24) = v5;
          v12[4] = sub_1B383CB30;
          v12[5] = v8;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 1107296256;
          v12[2] = sub_1B37D2F2C;
          v12[3] = &block_descriptor_33_0;
          v9 = _Block_copy(v12);
          v10 = v5;

          v11 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:2.0];
          _Block_release(v9);
          sub_1B382D410(v11, &OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadPulsingTimer);
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B38344E0(unint64_t a1, unint64_t a2)
{
  v4 = sub_1B3711890(a1);
  v5 = sub_1B3711890(a2);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v7 = &v31;
  sub_1B3C9D428();
  if (v6 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:

    __break(1u);
    return;
  }

  v8 = v6;
  v30 = a1 >> 62;
  v28 = a2 >> 62;
  if (v6)
  {
    v29 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v27 = a2 & 0xC000000000000001;
    v11 = 4;
    v26 = v8;
    v12 = v8;
    while (1)
    {
      v13 = v30 ? sub_1B3C9D2C8() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v11 - 4;
      if (v11 - 4 == v13)
      {
        break;
      }

      if (v29)
      {
        v15 = MEMORY[0x1B8C6A930](v11 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v15 = *(a1 + 8 * v11);
      }

      v7 = v15;
      if (v28)
      {
        v16 = sub_1B3C9D2C8();
      }

      else
      {
        v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 == v16)
      {
        goto LABEL_54;
      }

      if (v27)
      {
        v17 = MEMORY[0x1B8C6A930](v11 - 4, a2);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v17 = *(a2 + 8 * v11);
      }

      v18 = v17;
      type metadata accessor for WheelScrubberImageSource();
      swift_allocObject();
      sub_1B383B3E4(v7, v18);
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      v7 = &v31;
      sub_1B3C9D418();
      ++v11;
      if (!--v12)
      {
        v8 = v26;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xC000000000000001;
  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  v27 = a2 & 0xC000000000000001;
LABEL_26:
  for (i = v8 + 4; ; ++i)
  {
    v20 = v30 ? sub_1B3C9D2C8() : *(v9 + 16);
    v21 = i - 4;
    if (i - 4 == v20)
    {
      break;
    }

    if (v29)
    {
      v22 = MEMORY[0x1B8C6A930](i - 4, a1);
    }

    else
    {
      if (v21 >= *(v9 + 16))
      {
        goto LABEL_50;
      }

      v22 = *(a1 + 8 * i);
    }

    v7 = v22;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_49;
    }

    if (v28)
    {
      v23 = sub_1B3C9D2C8();
    }

    else
    {
      v23 = *(v10 + 16);
    }

    if (v21 == v23)
    {

      return;
    }

    if (v27)
    {
      v24 = MEMORY[0x1B8C6A930](i - 4, a2);
    }

    else
    {
      if (v21 >= *(v10 + 16))
      {
        goto LABEL_51;
      }

      v24 = *(a2 + 8 * i);
    }

    v25 = v24;
    type metadata accessor for WheelScrubberImageSource();
    swift_allocObject();
    sub_1B383B3E4(v7, v25);
    sub_1B3C9D408();
    sub_1B3C9D438();
    sub_1B3C9D448();
    v7 = &v31;
    sub_1B3C9D418();
  }
}

uint64_t sub_1B3834830()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_staticDottedGridImage) = sub_1B3C9CBA8();

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B3834880()
{
  if (MEMORY[0x1B8C6D660]())
  {
    v1 = [v0 delegate];
    if (v1)
    {
      v43 = [v1 mediaView];
      swift_unknownObjectRelease();
      if (v43)
      {
        v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel];
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (v3)
        {
          v4 = v3;
          v5 = v2;
          v6 = [v0 view];
          if (!v6)
          {
            __break(1u);
            return;
          }

          v7 = v6;
          [v4 frame];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v16 = [v0 view];
          [v7 convertRect:v16 toView:{v9, v11, v13, v15}];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          [v43 imageFrame];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v33 = [v0 view];
          [v43 convertRect:v33 toView:{v26, v28, v30, v32}];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          if (v18 != 0.0 || v20 != 0.0)
          {
            v45.origin.x = v35;
            v45.origin.y = v37;
            v45.size.width = v39;
            v45.size.height = v41;
            v46.origin.x = v18;
            v46.origin.y = v20;
            v46.size.width = v22;
            v46.size.height = v24;
            [v4 setStyle_];
          }

          v42 = v5;
        }

        else
        {
          v42 = v43;
        }
      }
    }
  }
}

void sub_1B3834AFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
    [*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView) setUserInteractionEnabled_];
    if ((v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode] & 1) == 0)
    {
      [*&v1[v2] setAlpha_];
      [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel] setAlpha_];
    }
  }
}

uint64_t sub_1B3834BA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_1B382FE48();
  }

  return result;
}

void sub_1B3834C8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B382FE48();
  }
}

void sub_1B3834D00()
{
  v1 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {
    __break(1u);
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);

  [v2 selectedIndex];
  v13 = sub_1B3C98818();

  if (v13)
  {
    sub_1B3C987C8();
    v3 = sub_1B3C9C628();
    v5 = v4;

    v7 = MEMORY[0x1B8C6D660](v6);
    v8 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel);
    if (v7)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = &selRef_setText_;
LABEL_9:
        sub_1B3813F1C(v3, v5, v10, v11);
LABEL_11:
        [v8 sizeToFit];

        return;
      }
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v10 = v12;
        v11 = &selRef__setText_;
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }
}

void sub_1B3834E58(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1B3C98FA8();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 toolContainerView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  v17 = [v15 superview];

  v18 = [v17 maskView];
  v19 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_defaultToolContainerViewMaskView];
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_defaultToolContainerViewMaskView] = v18;

  v20 = [v5 toolContainerView];
  if (!v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [v20 superview];

  if (v22)
  {
    [v22 setMaskView_];
  }

  v69 = v10;
  sub_1B3833C74();
  sub_1B38355C4();
  sub_1B3831D58();
  sub_1B3832344();
  v23 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView];
  [v23 selectedIndex];
  sub_1B383561C();
  v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode] = 1;
  sub_1B382C9D8();
  sub_1B382FE48();
  v67 = a1;
  v24 = a1;
  v68 = a2;
  v25 = a4;
  sub_1B383570C(v24, a2, a3, a4);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad];
  [v23 thumbnailCornerRadius];
  sub_1B3C9CB68();
  sub_1B3C98F48();
  sub_1B3C9CB78();
  sub_1B3C9CBB8();
  v35 = [v34 view];
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = v35;
  sub_1B3C9CEA8();
  [v36 setCenter_];

  v37 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider];
  sub_1B3C9CEA8();
  v39 = v38;
  v74.origin.x = v27;
  v74.origin.y = v29;
  v74.size.width = v31;
  v74.size.height = v33;
  [v37 setCenter_];
  v40 = [v34 view];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  sub_1B38357F8(&v73);
  t1 = v73;
  [v41 setTransform_];

  v42 = [v34 view];
  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = v42;
  [v42 setAlpha_];

  if (!*&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
LABEL_27:
    __break(1u);
    return;
  }

  [v23 selectedIndex];
  v44 = sub_1B3C98818();

  if (v44)
  {
    if (sub_1B3835964())
    {
      CGAffineTransformMakeScale(&t1, 0.3, 0.3);
      tx = t1.tx;
      ty = t1.ty;
      v66 = *&t1.a;
      v65 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, 0.0, -80.0);
      v47 = *&t1.a;
      v48 = *&t1.c;
      v49 = *&t1.tx;
      *&t1.c = v65;
      *&t1.a = v66;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v47;
      *&t2.c = v48;
      *&t2.tx = v49;
      CGAffineTransformConcat(&v70, &t1, &t2);
      t1 = v70;
      [v37 setTransform_];
    }
  }

  v50 = &v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_lastdPadCollapsedFrame];
  v51 = v68;
  *v50 = v67;
  v50[1] = v51;
  v50[2] = a3;
  v50[3] = v25;
  v52 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator;
  v53 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator];
  if (v53)
  {
    if ([v53 state] != 2)
    {
      v54 = *&v5[v52];
      if (v54)
      {
        [v54 stopAnimation_];
      }
    }
  }

  v55 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator;
  v56 = *&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padRevealAnimator];
  if (v56 && [v56 state] != 2)
  {
    v57 = *&v5[v55];
    if (v57)
    {
      [v57 stopAnimation_];
    }
  }

  v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDuration:0.35 bounce:0.2];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.35];
  v60 = *&v5[v55];
  *&v5[v55] = v59;
  v61 = v59;

  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&t1.tx = sub_1B383CAE8;
  *&t1.ty = v62;
  *&t1.a = MEMORY[0x1E69E9820];
  *&t1.b = 1107296256;
  *&t1.c = sub_1B370C014;
  *&t1.d = &block_descriptor_13_1;
  v63 = _Block_copy(&t1);

  [v61 addAnimations_];
  _Block_release(v63);
  [v61 startAnimation];
  v64 = sub_1B3835DB0();
  MEMORY[0x1EEE9AC00](v64);
  *(&v65 - 2) = v5;
  *(&v65 - 1) = v14;
  sub_1B3C9CB88();
  sub_1B3835E1C(1, 1);
  sub_1B3835F94();

  (*(v11 + 8))(v14, v69);
}

id sub_1B38355C4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_impactGenerator;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result impactOccurredWithIntensity_];
  }

  return result;
}

void sub_1B383561C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {

    v2 = sub_1B3C98818();

    if (v2)
    {
      v3 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap;
      swift_beginAccess();
      v4 = sub_1B3899020(v2, *(v1 + v3));
      if (v4)
      {
        v5 = v4;
        swift_endAccess();
        if ([v5 pulsingValueIndicator])
        {
          [v5 setPulsingValueIndicator_];
          sub_1B382D410(0, &OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadPulsingTimer);
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B383570C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1B3832ADC();
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  MidY = CGRectGetMidY(v19);
  if (v9)
  {
    v11 = MidY;
  }

  else
  {
    v11 = MidY + -20.0;
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  MidX = CGRectGetMidX(v20);
  if ([v4 layoutOrientation] == 1)
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v11 = CGRectGetMinY(v21) + -10.0 + 62.5;
  }

  v15.n128_u64[0] = 0x405F400000000000;
  v13.n128_f64[0] = MidX;
  v14.n128_f64[0] = v11;
  v16.n128_u64[0] = 0x405F400000000000;

  return MEMORY[0x1EEE2DB40](v13, v14, v15, v16);
}

CGFloat sub_1B38357F8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  [v3 centeredThumbnailContentFrame];
  [v3 convertRect:*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView) toCoordinateSpace:?];
  sub_1B383570C(v4, v5, v6, v7);
  sub_1B3838228(v26);
  v21 = v28;
  v22 = v27;
  sub_1B3C9CEA8();
  v9 = v8;
  sub_1B3C9CEA8();
  v11 = v9 - v10;
  sub_1B3C9CEA8();
  v13 = v12;
  sub_1B3C9CEA8();
  CGAffineTransformMakeTranslation(&t1, v11, v13 - v14);
  v15 = *&t1.a;
  v16 = *&t1.c;
  v17 = *&t1.tx;
  *&t1.a = v26[0];
  *&t1.c = v26[1];
  t1.tx = v22;
  t1.ty = v21;
  *&t2.a = v15;
  *&t2.c = v16;
  *&t2.tx = v17;
  CGAffineTransformConcat(&v23, &t1, &t2);
  result = v23.a;
  v19 = *&v23.c;
  v20 = *&v23.tx;
  *a1 = *&v23.a;
  a1[1] = v19;
  a1[2] = v20;
  return result;
}

uint64_t sub_1B3835964()
{
  v0 = sub_1B3C98798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v0))
  {
    sub_1B370EEB0(v6, &qword_1EB8567C8);
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_1B370EEB0(v6, &qword_1EB8567C8);
  v7 = sub_1B3C98758();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1B3C9C5E8();
  v10 = v9;
  if (v8 == sub_1B3C9C5E8() && v10 == v11)
  {

    goto LABEL_10;
  }

  v13 = sub_1B3C9D6A8();

  if (v13)
  {

    goto LABEL_10;
  }

  v16 = sub_1B3C9C5E8();
  v18 = v17;
  if (v16 == sub_1B3C9C5E8() && v18 == v19)
  {

    v14 = 0;
  }

  else
  {
    v21 = sub_1B3C9D6A8();

    v14 = v21 ^ 1;
  }

  return v14 & 1;
}

void sub_1B3835BF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad;
  v3 = [*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad) view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled_];

  v5 = [*&v1[v2] view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  v14 = 0;
  v15 = 0x3FF0000000000000;
  v16 = 0;
  v17 = 0;
  [v5 setTransform_];

  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel] setAlpha_];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] setAlpha_];
  [v1 setPerformingLiveInteraction_];
  if (!*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = *&v1[v7];

  [v8 selectedIndex];
  v9 = sub_1B3C98818();

  if (v9)
  {
    if (sub_1B3835964())
    {
      v10 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider;
      [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider] setAlpha_];
      v11 = *&v1[v10];
      v12 = 0x3FF0000000000000;
      v13 = 0;
      v14 = 0;
      v15 = 0x3FF0000000000000;
      v16 = 0;
      v17 = 0;
      [v11 setTransform_];
    }
  }
}

uint64_t sub_1B3835DB0()
{
  v0 = sub_1B3C9CB68();
  if (MEMORY[0x1B8C6D660](v0))
  {
    sub_1B3C98F58();
  }

  sub_1B3C98F78();
  sub_1B3C98F68();
  sub_1B3C98F48();
  return sub_1B3C98F88();
}

void sub_1B3835E1C(int a1, char a2)
{
  v5 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView];
  [v5 alpha];
  if ((((v6 == 0.0) ^ a1) & 1) == 0)
  {
    if (a2)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = a1 & 1;
      v12[4] = sub_1B383CAF8;
      v12[5] = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1B370C014;
      v12[3] = &block_descriptor_23_0;
      v9 = _Block_copy(v12);
      v10 = v2;

      [v7 animateWithDuration:0 delay:v9 options:0 animations:0.2 completion:0.0];
      _Block_release(v9);
    }

    else
    {
      v11 = 0.0;
      if (a1)
      {
        v11 = 1.0;
      }

      [v5 setAlpha_];
    }
  }
}

void sub_1B3835F94()
{
  if ((*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing) & 1) == 0)
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_1B383CAF0;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B37D2F2C;
    v5[3] = &block_descriptor_17;
    v3 = _Block_copy(v5);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:2.0];
    _Block_release(v3);
    sub_1B382D410(v4, &OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_expandedPadPulsingTimer);
  }
}

void sub_1B38360B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad);
  if ([v1 pulsingValueIndicator])
  {
    [v1 setPulsingValueIndicator_];
    sub_1B382D410(0, &OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_expandedPadPulsingTimer);
  }
}

void sub_1B3836110()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad;
  [*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad) setPulsingValueIndicator_];
  v3 = [*&v1[v2] view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled_];

  v5 = [*&v1[v2] view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  sub_1B38357F8(&v22);
  t1 = v22;
  [v6 setTransform_];

  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel] setAlpha_];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView;
  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] setAlpha_];
  if (!*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = *&v1[v7];

  [v8 selectedIndex];
  v9 = sub_1B3C98818();

  if (v9)
  {
    if (sub_1B3835964())
    {
      v10 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider;
      [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider] setAlpha_];
      v11 = *&v1[v10];
      CGAffineTransformMakeScale(&t1, 0.3, 0.3);
      tx = t1.tx;
      ty = t1.ty;
      v17 = *&t1.c;
      v18 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, 0.0, -80.0);
      v14 = *&t1.a;
      v15 = *&t1.c;
      v16 = *&t1.tx;
      *&t1.a = v18;
      *&t1.c = v17;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v14;
      *&t2.c = v15;
      *&t2.tx = v16;
      CGAffineTransformConcat(&v19, &t1, &t2);
      t1 = v19;
      [v11 setTransform_];
    }
  }

  [v1 setPerformingLiveInteraction_];
  sub_1B38355C4();
}

void sub_1B3836360()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad) view];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B38363F0()
{
  sub_1B3C98FA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
  return sub_1B3C9CB78();
}

void sub_1B38364E8()
{
  OUTLINED_FUNCTION_19_16();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap;
  swift_beginAccess();
  v15 = sub_1B3899020(v2, *(v0 + v14));
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    sub_1B3C987A8();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      sub_1B370EEB0(v6, &qword_1EB8567C8);
    }

    else
    {
      (*(v9 + 32))(v13, v6, v7);
      sub_1B3C98778();
      sub_1B3C98768();
      sub_1B3C98748();
      v18 = v17;
      v20 = v19;
      v21 = OUTLINED_FUNCTION_28_5();
      [v22 v23];
      [v16 setDefaultValue_];

      v24 = OUTLINED_FUNCTION_5_1();
      v25(v24);
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_18_19();
}

uint64_t sub_1B38366D8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_20();
  v4 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    return sub_1B370EEB0(v1, &qword_1EB8567C8);
  }

  (*(v6 + 32))(v10, v1, v4);
  v12 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView);
  sub_1B3C98768();
  [v12 setTone_];
  sub_1B3C98778();
  [v12 setColor_];
  sub_1B3C98788();
  [v12 setPalette_];
  [v12 setIsResetButtonEnabled_];
  [v12 setHidePaletteLabel_];
  return (*(v6 + 8))(v10, v4);
}

void sub_1B383691C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B3C98738();
    sub_1B38366D8();
  }
}

uint64_t sub_1B3836A8C()
{
  result = sub_1B382C940();
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v37 = result + 32;
  v38 = *(result + 16);
  v35 = result;
  while (v2 != v38)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v4 = *(v37 + 8 * v2);
    if (v4 >> 62)
    {
      v5 = sub_1B3C9D2C8();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v3 >> 62;
    if (v3 >> 62)
    {
      result = sub_1B3C9D2C8();
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = result + v5;
    if (__OFADD__(result, v5))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v6)
      {
LABEL_14:
        sub_1B3C9D2C8();
      }

LABEL_15:
      result = sub_1B3C9D3C8();
      v3 = result;
      v8 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_16;
    }

    if (v6)
    {
      goto LABEL_14;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v7 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }

LABEL_16:
    ++v2;
    v9 = *(v8 + 16);
    v10 = (*(v8 + 24) >> 1) - v9;
    v11 = v8 + 8 * v9;
    v39 = v8;
    if (v4 >> 62)
    {
      v13 = sub_1B3C9D2C8();
      if (!v13)
      {
        goto LABEL_30;
      }

      v14 = v13;
      result = sub_1B3C9D2C8();
      if (v10 < result)
      {
        goto LABEL_47;
      }

      if (v14 < 1)
      {
        goto LABEL_48;
      }

      v12 = result;
      v36 = v2;
      v15 = v11 + 32;
      sub_1B370ED54(&qword_1EB856818, &qword_1EB856810);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856810);
        v17 = sub_1B37ECD30(v40, i, v4);
        v19 = *v18;
        v17(v40, 0);
        *(v15 + 8 * i) = v19;
      }

      v1 = v35;
      v2 = v36;
LABEL_26:

      if (v12 < v5)
      {
        goto LABEL_44;
      }

      if (v12 > 0)
      {
        v20 = *(v39 + 16);
        v21 = __OFADD__(v20, v12);
        v22 = v20 + v12;
        if (v21)
        {
          goto LABEL_45;
        }

        *(v39 + 16) = v22;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        if (v10 < v12)
        {
          goto LABEL_46;
        }

        sub_1B3C98B88();
        swift_arrayInitWithCopy();
        goto LABEL_26;
      }

LABEL_30:

      if (v5 > 0)
      {
        goto LABEL_44;
      }
    }
  }

  sub_1B3C98878();
  swift_allocObject();
  *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel] = sub_1B3C98858();

  result = [v34 toolContainerView];
  if (!result)
  {
    goto LABEL_49;
  }

  v23 = result;
  v24 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView];
  [result addSubview_];

  sub_1B3832B68();
  sub_1B3834830();
  sub_1B3834D00();
  v25 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad];
  result = [v25 view];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = result;
  [result setAlpha_];

  [v24 addSubview_];
  [v34 addChildViewController_];
  [v25 didMoveToParentViewController_];
  result = [v25 view];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = result;
  [v24 addSubview_];

  result = [v34 view];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v28 = result;
  [result addSubview_];

  result = [v34 view];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v29 = result;
  [result addSubview_];

  v30 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider];
  result = [v25 view];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v31 = result;
  [v24 insertSubview:v30 belowSubview:result];

  [v30 setAlpha_];
  result = [v34 view];
  if (result)
  {
    v32 = result;
    v33 = *&v34[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView];
    [result addSubview_];

    return [v33 setAlpha_];
  }

LABEL_55:
  __break(1u);
  return result;
}

void sub_1B3836FE4(void *a1)
{
  v2 = v1;
  v49 = sub_1B3C98798();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v46 - v8;
  v10 = [a1 adjustmentControllerForKey_];
  if (!v10)
  {
    return;
  }

  v47 = v10;
  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55)
  {
    v45 = v47;

    return;
  }

  v46 = a1;
  v48 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel;
  if (!*&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = sub_1B3C98828();

  v12 = sub_1B3711890(v11);
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  v58 = v11 & 0xFFFFFFFFFFFFFF8;
  v53 = (v4 + 8);
  v54 = (v4 + 16);
  v15 = v49;
  v51 = v12;
  v52 = v11;
  v50 = v11 & 0xC000000000000001;
  while (v12 != v13)
  {
    if (v14)
    {
      v16 = MEMORY[0x1B8C6A930](v13, v11);
    }

    else
    {
      if (v13 >= *(v58 + 16))
      {
        goto LABEL_37;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = v16;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = sub_1B3C98B68();
    sub_1B3C987A8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v15))
    {

      sub_1B370EEB0(v9, &qword_1EB8567C8);
      goto LABEL_22;
    }

    v19 = v56;
    (*v54)(v56, v9, v15);
    sub_1B370EEB0(v9, &qword_1EB8567C8);
    v20 = sub_1B3C98758();
    (*v53)(v19, v15);
    v21 = [v55 cast];
    v22 = sub_1B3C9C5E8();
    v24 = v23;
    v57 = v20;
    if (v22 == sub_1B3C9C5E8() && v24 == v25)
    {

LABEL_19:
      if (!*&v2[v48])
      {
        goto LABEL_38;
      }

      v59 = *&v2[v48];
      v28 = swift_allocObject();
      *(v28 + 16) = v2;
      *(v28 + 24) = v17;
      sub_1B3C98878();
      sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);

      v29 = v2;
      v30 = v17;
      sub_1B3C9A038();

      v15 = v49;
      goto LABEL_21;
    }

    v27 = sub_1B3C9D6A8();

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_21:
    v12 = v51;
    v11 = v52;
    v14 = v50;
LABEL_22:
    ++v13;
  }

  v31 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView];
  v32 = [v31 selectedIndex];
  if (!*&v2[v48])
  {
    goto LABEL_40;
  }

  v33 = v32;
  v34 = v2;

  v35 = sub_1B3C98868();

  if (v33 != v35)
  {
    if (!*&v34[v48])
    {
      goto LABEL_42;
    }

    v36 = sub_1B3C98868();

    [v31 setSelectedIndex_];
  }

  sub_1B3834D00();
  if (*&v34[v48])
  {

    [v31 selectedIndex];
    v37 = sub_1B3C98818();

    if (v37)
    {
      sub_1B3837628(v37, v46);
      sub_1B3837884(v37, 0, v38, v39, v40, v41, v42, v43, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      sub_1B38364E8();
      sub_1B38366D8();
      v44 = v37;
      sub_1B3837A94(v37);
    }

    return;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1B3837588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {

    v4 = sub_1B3C98828();

    sub_1B382C784(a3, v4);

    swift_getObjectType();
    return sub_1B3C98C58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B3837628(void *a1, id a2)
{
  v4 = [a2 semanticStyleAdjustmentController];
  if (v4)
  {
    v5 = v4;
    [v4 tone];
    v7 = v6;
    [v5 color];
    v9 = v8;
    [v5 intensity];
    if (*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = v7;
      v12[4] = v9;
      v12[5] = v11;
      sub_1B3C98878();
      sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);

      v13 = a1;
      sub_1B3C9A038();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EB8500C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B3C9A558();
    __swift_project_value_buffer(v14, qword_1EB8565E0);
    oslog = sub_1B3C9A538();
    v15 = sub_1B3C9CAC8();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B36F3000, oslog, v15, "update(style:with:) failed because semanticStyleAdjustmentController is nil.", v16, 2u);
      MEMORY[0x1B8C6EC70](v16, -1, -1);
    }
  }
}

void sub_1B3837884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_16();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  OUTLINED_FUNCTION_8_0(v26);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v36 = v35 - v34;
  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_1B370EEB0(v29, &qword_1EB8567C8);
  }

  else
  {
    (*(v32 + 32))(v36, v29, v30);
    sub_1B3C98778();
    sub_1B3C98768();
    sub_1B3C98748();
    v38 = v37;
    v40 = v39;
    v41 = *(v22 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_castIntensitySlider);
    sub_1B3C98788();
    [v41 setValue:0 notifyObserver:?];
    v42 = sub_1B3C98758();
    [v41 setGradientCast_];

    v43 = *(v25 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad);
    [v43 setDefaultValue_];
    v44 = OUTLINED_FUNCTION_28_5();
    [v45 v46];
    v47 = sub_1B3C98758();
    [v43 setGradientCast_];

    (*(v32 + 8))(v36, v30);
  }

  OUTLINED_FUNCTION_18_19();
}

void sub_1B3837A94(void *a1)
{
  v4 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_20();
  v13 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  if (!*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {
    __break(1u);
    return;
  }

  v14 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);

  [v14 selectedIndex];
  v13 = sub_1B3C98818();

  if (v13)
  {
LABEL_4:
    v15 = a1;
    sub_1B3C987A8();
    if (!__swift_getEnumTagSinglePayload(v2, 1, v4))
    {
      (*(v6 + 16))(v10, v2, v4);
      sub_1B370EEB0(v2, &qword_1EB8567C8);
      sub_1B3C98758();
      (*(v6 + 8))(v10, v4);
      sub_1B37B54A8();
    }

    sub_1B370EEB0(v2, &qword_1EB8567C8);
  }
}

id sub_1B3837C80(char a1, char a2)
{
  [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel) alpha];
  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (v5 != v6 && (a1 & 1) != 0)
  {
    sub_1B3830100();
  }

  return sub_1B3837D5C(a2 & 1, v2);
}

id sub_1B3837D5C(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_1B3710718(0, &unk_1EB84F790);
    sub_1B382C888();
  }

  v2 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleLabel);

  return [v2 setAlpha_];
}

void sub_1B3837E60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&Strong[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabelTargetAlpha];

    if (v11 == a1)
    {
      if (a5)
      {
        sub_1B3710718(0, &unk_1EB84F790);
        sub_1B382C888();
      }

      v12 = [*(a4 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_styleSectionLabel) setAlpha_];
      if (a6)
      {
        a6(v12);
      }
    }
  }
}

void sub_1B3837FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_16();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v26 = sub_1B3C98FE8();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  v32 = v30 - v31;
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v36 = &a9 - v35;
  v37 = [v25 delegate];
  if (v37)
  {
    v38 = [v37 mediaView];
    swift_unknownObjectRelease();
    if (v38)
    {
      [*&v25[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView] frame];
      v51 = CGRectInset(v50, 0.0, 6.0);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
      [v38 imageFrame];
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      if (CGRectIntersectsRect(v52, v53) && (MEMORY[0x1B8C6D660]() & 1) == 0)
      {
        v25[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_mediaViewIntersectsTopPlatter] = 1;
        v43 = objc_opt_self();
        v44 = [v38 px_screen];
        [v43 currentEDRHeadroomForScreen_];
        v46 = v45;

        [objc_opt_self() thresholdDisplayHeadroom];
        if (v47 <= v46)
        {
          sub_1B3C9BB68();
          sub_1B3C98FB8();
        }

        else
        {
          sub_1B3C98FC8();
        }

        (*(v28 + 16))(v32, v36, v26);
        sub_1B3C9CE18();

        v48 = OUTLINED_FUNCTION_5_1();
        v49(v48);
      }

      else
      {
        v25[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_mediaViewIntersectsTopPlatter] = 0;
        sub_1B3C98FD8();
        sub_1B3C9CE18();
      }
    }

    OUTLINED_FUNCTION_18_19();
  }

  else
  {
    __break(1u);
  }
}

CGFloat sub_1B3838228@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  [v3 centeredThumbnailContentFrame];
  [v3 convertRect:*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView) toCoordinateSpace:?];
  v5 = v4;
  v7 = v6;
  sub_1B383570C(v8, v9, v4, v6);
  CGAffineTransformMakeScale(&v15, v5 / v10, v7 / v11);
  result = v15.a;
  v13 = *&v15.c;
  v14 = *&v15.tx;
  *a1 = *&v15.a;
  a1[1] = v13;
  a1[2] = v14;
  return result;
}

id sub_1B38382C4(void *a1)
{
  result = [a1 state];
  if (result == 3 && *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode) == 1)
  {
    result = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad) isActive];
    if ((result & 1) == 0)
    {

      return sub_1B382F8EC(1);
    }
  }

  return result;
}

id sub_1B38383A0(void *a1)
{
  if ([a1 state] == 1 && *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) != 1 || ((result = objc_msgSend(a1, sel_state), result == 3) || (result = objc_msgSend(a1, sel_state), result == 4) || (result = objc_msgSend(a1, sel_state), result == 5)) && *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) == 1)
  {
    result = [v1 delegate];
    if (result)
    {
      [result toolControllerWantsToToggleOriginal_];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B38384FC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isValid] && v3[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode] == 1)
    {
      v4 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing;
      if ((v3[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing] & 1) == 0)
      {
        [*&v3[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_dPad] setPulsingValueIndicator_];
        v3[v4] = 1;
      }
    }
  }
}

void sub_1B38385B4(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([a1 isValid] && (v6[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode] & 1) == 0)
    {
      v7 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing;
      if ((v6[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_hasShownPadPulsing] & 1) == 0)
      {
        [a3 setPulsingValueIndicator_];
        v6[v7] = 1;
      }
    }
  }
}

id sub_1B383890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setupWithAsset_compositionController_editSource_valuesCalculator_, a1, a2, a3, a4);
  result = [v4 enabled];
  if (result)
  {
    if (a2)
    {
      return sub_1B3836A8C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B3838A74()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

uint64_t sub_1B3838B24()
{
  sub_1B3710718(0, &unk_1EB84FE20);
  OUTLINED_FUNCTION_32_4();
  v1 = sub_1B380E38C(0xD000000000000010, v0);
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
  }

  return OUTLINED_FUNCTION_5_14();
}

id sub_1B3838BC0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_5_14();
  v5 = sub_1B3C9C5A8();

  return v5;
}

uint64_t sub_1B3838C24()
{
  sub_1B3710718(0, &unk_1EB84FE20);
  OUTLINED_FUNCTION_32_4();
  v1 = sub_1B380E38C(0xD000000000000015, v0);
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
  }

  return OUTLINED_FUNCTION_5_14();
}

id sub_1B3838CC0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B3C9C5A8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B3838D3C()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

void sub_1B3838DB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  v2 = [v1 itemCount];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = [v1 selectedIndex];
  if (__OFADD__(v4, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if ((v4 + 1) < v3)
  {
    v3 = v4 + 1;
  }

  if ([v1 selectedIndex] != v3)
  {
    [v1 setSelectedIndex_];

    sub_1B3838E74(v1);
  }
}

void sub_1B3838E74(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel;
  if (!*&v1[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel])
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = sub_1B3C98848();

  if (!*&v1[v15])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [a1 selectedIndex];
  v17 = sub_1B3C98818();

  if (!v17)
  {
LABEL_16:
    sub_1B383561C();
    [a1 selectedIndex];
    sub_1B38342FC();
    return;
  }

  sub_1B3C987A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_1B370EEB0(v7, &qword_1EB8567C8);
    goto LABEL_16;
  }

  v49 = v8;
  v50 = v16;
  v48 = v10;
  (*(v10 + 32))(v14, v7, v8);
  if (!*&v1[v15])
  {
    goto LABEL_20;
  }

  v51 = *&v1[v15];
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = a1;
  sub_1B3C98878();
  sub_1B383CD20(&qword_1EB8567D8, MEMORY[0x1E69C3268]);
  v47 = a1;

  sub_1B3C9A038();

  [v1 willModifyAdjustment];
  v18 = [v1 compositionController];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  objc_opt_self();
  v20 = sub_1B3C98758();
  sub_1B3C98768();
  sub_1B3C98778();
  sub_1B3C98788();
  v21 = OUTLINED_FUNCTION_28_5();
  [v22 v23];

  OUTLINED_FUNCTION_13_0();
  v24 = sub_1B3C9C5A8();
  v25 = PELocalizedString();

  v26 = sub_1B3C9C5E8();
  v28 = v27;

  sub_1B3834D00();
  if (*&v2[v15])
  {

    [v47 selectedIndex];
    v29 = sub_1B3C98818();

    if (v29)
    {
      sub_1B3837884(v29, 0, v30, v31, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      sub_1B38366D8();
      v36 = v29;
      sub_1B3837A94(v29);

      v37 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_impactGenerator;
      swift_beginAccess();
      v38 = *&v2[v37];
      if (v38)
      {
        swift_endAccess();
        v39 = v38;
        [v39 prepare];

        v40 = OUTLINED_FUNCTION_17_15();
        v41(v40);
        goto LABEL_16;
      }

      v44 = OUTLINED_FUNCTION_17_15();
      v45(v44);
      swift_endAccess();
    }

    else
    {
      v42 = OUTLINED_FUNCTION_17_15();
      v43(v42);
    }

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

void sub_1B3839358()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  if ([v1 selectedIndex] >= 1)
  {
    v2 = [v1 selectedIndex];
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      [v1 setSelectedIndex_];

      sub_1B3838E74(v1);
    }
  }
}

void sub_1B383943C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_willBecomeActiveTool);
  v1 = [v0 compositionController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  sub_1B3836FE4(v1);

  sub_1B3830F74();
  OUTLINED_FUNCTION_3_36();
  sub_1B382FE48();
  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_thumbnailsBaseCompositionController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v0 compositionController];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 composition];

  LOBYTE(v6) = [v4 isEqual:v7 visualChangesOnly:1];
  if ((v6 & 1) == 0)
  {
    sub_1B3832B68();
  }
}

void sub_1B3839594()
{
  ObjectType = swift_getObjectType();
  sub_1B3837C80(1, 1);
  OUTLINED_FUNCTION_3_36();
  sub_1B382FE48();
  OUTLINED_FUNCTION_31_5();
  sub_1B382FE48();
  v2.receiver = v0;
  v2.super_class = ObjectType;
  objc_msgSendSuper2(&v2, sel_didBecomeActiveTool);
  sub_1B3834880();
}

void sub_1B3839674()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_willResignActiveTool);
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator];
  if (v2)
  {
    if ([v2 state] != 2)
    {
      v3 = *&v0[v1];
      if (v3)
      {
        [v3 stopAnimation_];
        v4 = *&v0[v1];
        if (v4)
        {
          [v4 finishAnimationAtPosition_];
        }
      }
    }
  }

  sub_1B3837C80(0, 0);
  OUTLINED_FUNCTION_3_36();
  sub_1B382FE48();
}

void sub_1B3839784()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didResignActiveTool);
  [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView] selectedIndex];
  sub_1B383561C();
}

void sub_1B3839820()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_willBecomeEnabled);
  v1 = [v0 compositionController];
  if (v1)
  {
    v2 = v1;
    sub_1B3836A8C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B38398D4(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a1 != 1) | *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewMode) ^ 1;
  }

  return v2 & 1;
}

void sub_1B3839970()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  if (![v0 isActiveTool] || !objc_msgSend(v0, sel_enabled) || (objc_msgSend(v0, sel_isActivelyAdjusting) & 1) != 0)
  {
    goto LABEL_38;
  }

  v4 = [v0 compositionController];
  if (!v4)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v5 = v4;
  v6 = [v4 adjustmentConstants];

  v41 = v6;
  if (v6)
  {
    v39 = v1;
    if (v3)
    {
      v7 = [v6 nonVisualAdjustmentTypes];
      v8 = sub_1B3C9C788();

      v37 = sub_1B3839DA8(v8, v3);

      v38 = v3;

      v9 = [v41 allAdjustmentTypes];
      v10 = sub_1B3C9C788();

      v11 = 0;
      v12 = *(v10 + 16);
      v13 = v10 + 40;
      v40 = MEMORY[0x1E69E7CC0];
LABEL_8:
      v14 = (v13 + 16 * v11);
      while (v12 != v11)
      {
        if (v11 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v15 = *(v14 - 1);
        v16 = *v14;

        v17 = [v41 nonVisualAdjustmentTypes];
        sub_1B3C9C788();

        MEMORY[0x1EEE9AC00](v18);
        LOBYTE(v17) = sub_1B3876E2C();

        if ((v17 & 1) == 0)
        {
          v19 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B37EABC0(0, *(v40 + 16) + 1, 1);
            v19 = v40;
          }

          v13 = v10 + 40;
          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            sub_1B37EABC0((v20 > 1), v21 + 1, 1);
            v13 = v10 + 40;
            v22 = v21 + 1;
            v19 = v40;
          }

          ++v11;
          *(v19 + 16) = v22;
          v40 = v19;
          v23 = v19 + 16 * v21;
          *(v23 + 32) = v15;
          *(v23 + 40) = v16;
          goto LABEL_8;
        }

        v14 += 2;
        ++v11;
      }

      v3 = v38;
      v24 = sub_1B383C230(v40, v38);

      if (*(v24 + 16) != 1)
      {
        goto LABEL_29;
      }

      v25 = sub_1B387CA84(v24);
      v27 = v26;

      v28 = sub_1B3C9C5E8();
      if (!v27)
      {

        goto LABEL_31;
      }

      if (v25 == v28 && v27 == v29)
      {

        goto LABEL_34;
      }

      v31 = sub_1B3C9D6A8();

      if ((v37 & 1) == 0 && (v31 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_32:

LABEL_34:
      v1 = v39;
      goto LABEL_35;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v3)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_29:

LABEL_31:
  if (v37)
  {
    goto LABEL_32;
  }

LABEL_26:
  v1 = v39;
  sub_1B3832B68();

LABEL_35:
  v32 = sub_1B3C9C5E8();
  v34 = sub_1B373F33C(v32, v33, v3);

  if (!v34)
  {
LABEL_38:
    OUTLINED_FUNCTION_27();
    return;
  }

  v35 = [v1 compositionController];
  if (v35)
  {
    v36 = v35;
    sub_1B3836FE4(v35);

    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1B3839DA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1B387CA84(a2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](result);
      v3 = sub_1B3876E2C();

      return v3;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      return 1;
    }

    return sub_1B383C64C(a1, a2);
  }

  return result;
}

uint64_t sub_1B3839F08()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

void sub_1B383A1B0()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_previewingOriginalDidStart);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) = 1;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_3_36();
  sub_1B382FE48();
}

id sub_1B383A254()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, sel_previewingOriginalDidStop);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isShowingOriginal) = 0;
  return result;
}

void sub_1B383A2E8(void *a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v86 = a1;
  v90 = sub_1B3C98FA8();
  OUTLINED_FUNCTION_0();
  v89 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v88 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567C8);
  v15 = OUTLINED_FUNCTION_8_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - v20;
  v92 = sub_1B3C98798();
  OUTLINED_FUNCTION_0();
  v87 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  v30 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v31 = sub_1B3711890(*(v4 + v30));
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v31 > a3)
  {
    OUTLINED_FUNCTION_34_6();
    v30 = *(v4 + v30);
    sub_1B37ED0BC(a3, (v30 & 0xC000000000000001) == 0, v30);
    if ((v30 & 0xC000000000000001) == 0)
    {
      v32 = *(v30 + 8 * a3 + 32);

LABEL_5:
      swift_endAccess();
      v93 = *(v32 + 24);

      goto LABEL_7;
    }

LABEL_42:
    v32 = MEMORY[0x1B8C6A930](a3, v30);
    goto LABEL_5;
  }

  v93 = 0;
LABEL_7:
  if (!a2)
  {
    __break(1u);
    goto LABEL_44;
  }

  v33 = [a2 itemView];
  if (!v33)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v34 = v33;
  v35 = [v33 layer];

  v36 = v93;
  [v35 setContents_];

  v37 = *(v4 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  if ([v37 cellOverlayMode] != 1)
  {

    return;
  }

  v91 = a3;
  if (!*(v4 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_viewModel))
  {
    goto LABEL_45;
  }

  v38 = v29;

  v39 = sub_1B3C98818();

  v85 = v39;
  if (!v39)
  {
    if (qword_1EB8500C0 != -1)
    {
      OUTLINED_FUNCTION_2_37();
    }

    v47 = sub_1B3C9A558();
    __swift_project_value_buffer(v47, qword_1EB8565E0);
    v48 = sub_1B3C9A538();
    v49 = sub_1B3C9CAC8();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v91;
    if (v50)
    {
      v52 = OUTLINED_FUNCTION_9_0();
      *v52 = 134217984;
      *(v52 + 4) = v51;
      OUTLINED_FUNCTION_33_4(&dword_1B36F3000, v53, v54, "wheelScrubberView:updateCell - Cannot retrieve style element at index:%ld");
      OUTLINED_FUNCTION_3_5();
    }

    goto LABEL_39;
  }

  v40 = [a2 overlayView];
  if (!v40)
  {
    v55 = v85;
    sub_1B3C987A8();
    v56 = v92;
    if (__swift_getEnumTagSinglePayload(v21, 1, v92) == 1)
    {
      OUTLINED_FUNCTION_27_9();

      v46 = v21;
      goto LABEL_23;
    }

    v65 = v87;
    v66 = v38;
    (*(v87 + 32))(v38, v21, v56);
    sub_1B3C98778();
    sub_1B3C98768();
    sub_1B3C98748();
    sub_1B3C9CBC8();
    sub_1B3C98758();
    MEMORY[0x1B8C66510]();
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_28_5();
    v67 = sub_1B3C9CB58();
    [v67 setStaticDottedGridImage_];
    v68 = v88;
    sub_1B3C9CB68();
    [v37 thumbnailCornerRadius];
    [v37 centeredThumbnailContentFrame];
    sub_1B3C98F48();
    sub_1B3C98F68();
    sub_1B3C98F78();
    sub_1B3C98F58();
    (*(v89 + 16))(v13, v68, v90);
    sub_1B3C9CB78();
    OUTLINED_FUNCTION_25_7();
    v69 = v67;
    v70 = [v69 view];
    if (v70)
    {
      v71 = v70;
      sub_1B3838228(v95);
      v94[0] = v95[0];
      v94[1] = v95[1];
      v94[2] = v95[2];
      [v71 setTransform_];

      v72 = [v69 view];
      v73 = v91;
      if (v72)
      {
        v74 = v72;
        [v72 setUserInteractionEnabled_];

        v75 = [v69 view];
        if (v75)
        {
          v76 = v75;
          v77 = [v37 selectedIndex];
          v78 = 0.0;
          if (v77 == v73)
          {
            v78 = 1.0;
          }

          [v76 setAlpha_];

          v79 = [v69 view];
          [a2 setOverlayView_];

          swift_beginAccess();
          v80 = v69;
          v81 = v85;
          sub_1B383BCA0(v80, v81);
          swift_endAccess();

          if (v86)
          {
            if ([v86 selectedIndex] == v73)
            {
              sub_1B38342FC();
            }

            OUTLINED_FUNCTION_27_9();
            (*(v89 + 8))(v88, v90);
            (*(v65 + 8))(v66, v92);
            return;
          }

LABEL_49:
          __break(1u);
          return;
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

  v41 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_overlayPadMap;
  OUTLINED_FUNCTION_34_6();
  v42 = v85;
  v43 = sub_1B3899020(v85, *(v4 + v41));
  if (!v43)
  {
    swift_endAccess();
    if (qword_1EB8500C0 != -1)
    {
      OUTLINED_FUNCTION_2_37();
    }

    v57 = sub_1B3C9A558();
    __swift_project_value_buffer(v57, qword_1EB8565E0);
    v58 = v42;
    v48 = sub_1B3C9A538();
    v59 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v48, v59))
    {
      v60 = OUTLINED_FUNCTION_9_0();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v58;
      *v61 = v42;
      v62 = v58;
      OUTLINED_FUNCTION_33_4(&dword_1B36F3000, v63, v64, "wheelScrubberView:updateCell - Cannot retrieve dpad view controller for style: %@");
      sub_1B370EEB0(v61, &qword_1EB8567E0);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();

LABEL_40:
      OUTLINED_FUNCTION_27_9();
      return;
    }

LABEL_39:
    goto LABEL_40;
  }

  v44 = v43;
  swift_endAccess();
  sub_1B38364E8();
  sub_1B3C987A8();
  v45 = v92;
  if (__swift_getEnumTagSinglePayload(v18, 1, v92))
  {

    OUTLINED_FUNCTION_27_9();
    v46 = v18;
LABEL_23:
    sub_1B370EEB0(v46, &qword_1EB8567C8);
    return;
  }

  v82 = v87;
  (*(v87 + 16))(v26, v18, v45);
  sub_1B370EEB0(v18, &qword_1EB8567C8);
  v83 = sub_1B3C98758();
  (*(v82 + 8))(v26, v45);
  [v44 setGradientCast_];
  OUTLINED_FUNCTION_27_9();
}