uint64_t sub_1BD857290(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C08);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  v10 = *a1;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C30);
  sub_1BD857404(v10, a2, a3, &v9[*(v11 + 44)]);
  v9[*(v6 + 36)] = 0;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  sub_1BD858880();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v9, &qword_1EBD55C08);
}

uint64_t sub_1BD857404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v44 = a1;
  v53 = a4;
  v51 = sub_1BE051F34();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE051F14();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v9);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v43 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C38);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v48 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - v21;
  v47 = sub_1BE04F7B4();
  v71 = 0;
  v23 = a1;
  v24 = a2;
  v25 = a2;
  v26 = a3;
  sub_1BD857A5C(v23, v24, a3, v62);
  memcpy(v72, v62, sizeof(v72));
  memcpy(v73, v62, 0x120uLL);
  sub_1BD0DE19C(v72, v61, &qword_1EBD467B0);
  sub_1BD0DE53C(v73, &qword_1EBD467B0);
  memcpy(&v70[7], v72, 0x120uLL);
  v45 = v71;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v27 = sub_1BE051574();
  sub_1BE04EA34();
  *v14 = v27;
  sub_1BE050384();
  sub_1BD1BC688();
  sub_1BE050854();
  sub_1BD0DE53C(v14, &qword_1EBD3C1F0);
  sub_1BE051F04();
  v62[0] = v25;
  v62[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v28 = v61[0];
  swift_getKeyPath();
  v62[0] = v28;
  sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v29 = *(v28 + 40);

  v30 = v29 != v44;
  v31 = v46;
  sub_1BE051F24();
  v32 = &v22[*(v16 + 44)];
  v33 = sub_1BE050124();
  v34 = v49;
  v35 = v51;
  (*(v49 + 16))(&v32[*(v33 + 20)], v31, v51);
  sub_1BD858A5C(&qword_1EBD55C40, MEMORY[0x1E6982148]);
  v36 = v43;
  v37 = v50;
  sub_1BE051ED4();
  (*(v34 + 8))(v31, v35);
  (*(v52 + 8))(v36, v37);
  v32[*(v33 + 24)] = v30;
  v38 = v48;
  sub_1BD0BB7FC(v22, v48);
  v39 = v47;
  v61[0] = v47;
  v61[1] = 0;
  LOBYTE(v35) = v45;
  LOBYTE(v61[2]) = v45;
  memcpy(&v61[2] + 1, v70, 0x127uLL);
  *&v61[47] = v58;
  *&v61[49] = v59;
  *&v61[51] = v60;
  *&v61[39] = v54;
  *&v61[41] = v55;
  *&v61[43] = v56;
  *&v61[45] = v57;
  v40 = v53;
  memcpy(v53, v61, 0x1A8uLL);
  v40[53] = 0;
  *(v40 + 432) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C48);
  sub_1BD0BB7FC(v38, v40 + *(v41 + 64));
  sub_1BD0DE19C(v61, v62, &qword_1EBD55C50);
  sub_1BD0DE53C(v22, &qword_1EBD55C38);
  sub_1BD0DE53C(v38, &qword_1EBD55C38);
  v62[0] = v39;
  v62[1] = 0;
  LOBYTE(v62[2]) = v35;
  memcpy(&v62[2] + 1, v70, 0x127uLL);
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v63 = v54;
  v64 = v55;
  v65 = v56;
  v66 = v57;
  return sub_1BD0DE53C(v62, &qword_1EBD55C50);
}

uint64_t sub_1BD857A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v94 = a2;
  v95 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v83[0] + 48) featureIdentifier];

  __dst = a4;
  v52 = a2;
  v53 = a3;
  if (a1 == 7 || a1 == 6)
  {
    v8 = sub_1BE04C124();
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v94 = v8;
  v95 = v9;
  sub_1BD0DDEBC();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  if (qword_1EBD36DE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v10, v12, v14 & 1);

  if (qword_1EBD36DE8 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v20 = sub_1BE050574();
  v54 = v21;
  v23 = v22;
  v25 = v24;
  sub_1BD0DDF10(v15, v17, v19 & 1);

  v50 = sub_1BE051CE4();
  v51 = v26;
  LOBYTE(v49) = 1;
  LOBYTE(v48) = 1;
  sub_1BE04EE54();
  v116 = v23 & 1;
  v94 = v52;
  v95 = v53;
  sub_1BE0516A4();
  [*(v83[0] + 48) featureIdentifier];

  v55 = v20;
  if (a1 == 7 || a1 == 6)
  {
    v27 = sub_1BE04C124();
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v94 = v27;
  v95 = v28;
  v29 = sub_1BE0506C4();
  v31 = v30;
  v33 = v32;
  v34 = PKOBKListSubtitleCellSubtitleFont(0);
  sub_1BE050484();
  v35 = sub_1BE0505F4();
  v37 = v36;
  v39 = v38;

  sub_1BD0DDF10(v29, v31, v33 & 1);

  if (qword_1EBD36DF0 != -1)
  {
    swift_once();
  }

  v94 = qword_1EBDAB558;
  sub_1BE048964();
  v40 = sub_1BE050574();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1BD0DDF10(v35, v37, v39 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  v107 = v44 & 1;
  *&v65 = v55;
  *(&v65 + 1) = v54;
  LOBYTE(v66) = v23 & 1;
  *(&v66 + 1) = *v115;
  DWORD1(v66) = *&v115[3];
  *(&v66 + 1) = v25;
  v71 = v112;
  v72 = v113;
  v73 = v114;
  v67 = v108;
  v68 = v109;
  v69 = v110;
  v70 = v111;
  __src[6] = v112;
  __src[7] = v113;
  __src[2] = v108;
  __src[3] = v109;
  __src[4] = v110;
  __src[5] = v111;
  __src[0] = v65;
  __src[1] = v66;
  *&v74 = v40;
  *(&v74 + 1) = v42;
  LOBYTE(v75) = v44 & 1;
  *(&v75 + 1) = *v106;
  DWORD1(v75) = *&v106[3];
  *(&v75 + 1) = v46;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v79 = v61;
  __src[12] = v59;
  __src[13] = v60;
  __src[10] = v75;
  __src[11] = v58;
  __src[14] = v61;
  __src[15] = v62;
  __src[16] = v63;
  __src[17] = v64;
  __src[8] = v114;
  __src[9] = v74;
  memcpy(__dst, __src, 0x120uLL);
  v83[0] = v40;
  v83[1] = v42;
  v84 = v44 & 1;
  *v85 = *v106;
  *&v85[3] = *&v106[3];
  v86 = v46;
  v91 = v62;
  v92 = v63;
  v93 = v64;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  sub_1BD0DE19C(&v65, &v94, &qword_1EBD3E090);
  sub_1BD0DE19C(&v74, &v94, &qword_1EBD3E090);
  sub_1BD0DE53C(v83, &qword_1EBD3E090);
  v94 = v55;
  v95 = v54;
  v96 = v23 & 1;
  *v97 = *v115;
  *&v97[3] = *&v115[3];
  v98 = v25;
  v103 = v112;
  v104 = v113;
  v105 = v114;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v102 = v111;
  return sub_1BD0DE53C(&v94, &qword_1EBD3E090);
}

uint64_t sub_1BD8580E4()
{
  sub_1BE051D74();
  sub_1BE04E7D4();
}

uint64_t sub_1BD858154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  if (*(v7 + 40) == a3)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8582B4()
{
  v0 = sub_1BE04F7B4();
  v26 = 0;
  sub_1BD8584FC(&v32);
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  sub_1BD0DE19C(&v27, &v17, &qword_1EBD54278);
  sub_1BD0DE53C(v31, &qword_1EBD54278);
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v1 = v26;
  v2 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v32) = 0;
  v11 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *&v18[17] = *&v25[16];
  *&v18[33] = *&v25[32];
  *&v18[49] = *&v25[48];
  v26 = 0;
  v17 = v0;
  v18[0] = v1;
  *&v18[64] = *&v25[63];
  *&v18[1] = *v25;
  v18[72] = v2;
  *&v19 = v4;
  *(&v19 + 1) = v6;
  *&v20 = v8;
  *(&v20 + 1) = v10;
  LOBYTE(v21) = 0;
  BYTE8(v21) = v11;
  *&v22 = v12;
  *(&v22 + 1) = v13;
  *&v23 = v14;
  *(&v23 + 1) = v15;
  v24 = 0;
  sub_1BE0501C4();
  if (qword_1EBD36DD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541A0);
  sub_1BD7E3BFC();
  sub_1BE050A34();
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v36 = *&v18[48];
  v37 = *&v18[64];
  v38 = v19;
  v39 = v20;
  v32 = v17;
  v33 = *v18;
  v34 = *&v18[16];
  v35 = *&v18[32];
  return sub_1BD0DE53C(&v32, &qword_1EBD541A0);
}

uint64_t sub_1BD8584FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v16 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v15 = v5;
  v7 = v6;
  sub_1BE0516A4();
  [*(v16 + 48) featureIdentifier];

  sub_1BE04C124();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v13;
  sub_1BD0D7F18(v2, v4, v15 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v8, v10, v12);
  sub_1BE048C84();
  sub_1BD0DDF10(v8, v10, v12);

  sub_1BD0DDF10(v2, v4, v15 & 1);
}

unint64_t sub_1BD858708()
{
  result = qword_1EBD55BE8;
  if (!qword_1EBD55BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B88);
    sub_1BE04FB94();
    sub_1BD856BE8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD7E82BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BE8);
  }

  return result;
}

unint64_t sub_1BD858880()
{
  result = qword_1EBD55C10;
  if (!qword_1EBD55C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55C08);
    sub_1BD0DE4F4(&qword_1EBD55C18, &qword_1EBD55C20);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55C10);
  }

  return result;
}

uint64_t sub_1BD858964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_100()
{

  return swift_deallocObject();
}

uint64_t sub_1BD858A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD858AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1BE052434();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1BE048964();
  v2(v3, v5);
}

uint64_t sub_1BD858B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v17;
  *(v8 + 160) = v18;
  *(v8 + 136) = v16;
  *(v8 + 356) = v15;
  *(v8 + 120) = v14;
  *(v8 + 352) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  *(v8 + 168) = sub_1BE0528A4();
  *(v8 + 176) = sub_1BE052894();
  v10 = sub_1BE052844();
  *(v8 + 184) = v10;
  *(v8 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD858BF0, v10, v9);
}

uint64_t sub_1BD858BF0()
{
  *(v0 + 200) = [*(v0 + 80) transferType];
  *(v0 + 208) = sub_1BE052894();
  v2 = sub_1BE052844();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BD858C90, v2, v1);
}

uint64_t sub_1BD858C90()
{
  v1 = *(*(v0 + 88) + 32);
  if (v1 && (v2 = [v1 targetDevice], (*(v0 + 232) = v2) != 0))
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = *(v0 + 88);
      v5 = sub_1BE052894();
      *(v0 + 240) = v5;
      v6 = swift_task_alloc();
      *(v0 + 248) = v6;
      v6[2] = v3;
      v6[3] = v4;
      v6[4] = 251;
      v7 = swift_task_alloc();
      *(v0 + 256) = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C68);
      *v7 = v0;
      v7[1] = sub_1BD858EA8;
      v9 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DDE0](v0 + 72, v5, v9, 0xD000000000000015, 0x80000001BE13D2C0, sub_1BD85B950, v6, v8);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  *(v0 + 264) = 0;
  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_1BD8590CC;
  v11 = *(v0 + 200);
  v12 = *(v0 + 356);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 352);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  return sub_1BD85A94C(v11, v16, v17, v15, v13, v14, v12);
}

uint64_t sub_1BD858EA8()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD859008, v3, v2);
}

uint64_t sub_1BD859008()
{

  swift_unknownObjectRelease();
  *(v0 + 264) = *(v0 + 72);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1BD8590CC;
  v2 = *(v0 + 200);
  v3 = *(v0 + 356);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 352);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  return sub_1BD85A94C(v2, v7, v8, v6, v4, v5, v3);
}

uint64_t sub_1BD8590CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[35] = a1;
  v3[36] = a2;

  v3[37] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[38] = v5;
  v3[39] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD859214, v5, v4);
}

uint64_t sub_1BD859214()
{
  v10 = *(v0 + 280);
  v1 = *(v0 + 264);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = sub_1BE052894();
  *(v0 + 320) = v4;
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v10;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 336) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C60);
  *v6 = v0;
  v6[1] = sub_1BD85935C;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 64, v4, v8, 0xD00000000000003ELL, 0x80000001BE13D280, sub_1BD85B940, v5, v7);
}

uint64_t sub_1BD85935C()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1BD8594E0, v3, v2);
}

uint64_t sub_1BD8594E0()
{
  v1 = v0[33];

  v0[43] = v0[8];
  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1BD859554, v2, v3);
}

uint64_t sub_1BD859554()
{
  v1 = v0[43];

  if (v1)
  {
    v2 = v0[43];
    v3 = v0[12];
    v4 = [v2 referenceIdentifier];
    v5 = [v3 manifestHashWithReferenceIdentifier_];

    if (v5)
    {
      v6 = sub_1BE04AAC4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xF000000000000000;
    }

    sub_1BE052434();
    v9 = [v2 nonce];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1BE04AAC4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v14 = sub_1BE052404();

    if (v8 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_1BE04AAB4();
      sub_1BD030220(v6, v8);
    }

    if (v13 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1BE04AAB4();
      sub_1BD030220(v11, v13);
    }

    v17 = v0[17];
    v18 = [objc_allocWithZone(MEMORY[0x1E69B8598]) initWithKeyIdentifier:v14 manifestHash:v15 nonce:v16];

    swift_beginAccess();
    v19 = *(v17 + 16);
    *(v17 + 16) = v18;
  }

  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[18];
  v23 = v0[12];
  swift_beginAccess();
  v24 = *(v21 + 16);
  v25 = v24;
  v22(v24, v20, v23);

  v26 = v0[1];

  return v26();
}

void sub_1BD8597AC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v9 = v8;
  v74 = a8;
  LODWORD(v75) = a5;
  v72 = a6;
  v73 = a7;
  v14 = sub_1BE04AA64();
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04AF64();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04B3B4();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v25 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_1BE04D8B4();

  v27 = v83;
  v28 = [v83 type];

  if (v28 != 4)
  {
    return;
  }

  v29 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v29;
  sub_1BE04D8B4();

  v31 = v83;
  v32 = [v83 savingsDetails];

  if (!v32)
  {
    return;
  }

  v33 = [a2 selectedMethods];
  if ((v33 & 2) != 0)
  {
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a4;
    v39 = v75;
    v40 = 2;
  }

  else
  {
    if ((v33 & 1) == 0)
    {
      v34 = 0;
      goto LABEL_10;
    }

    v35 = a1;
    v36 = a2;
    v37 = v72;
    v38 = v73;
    v39 = v74;
    v40 = 1;
  }

  sub_1BD859F38(v35, v36, v37, v38, v39, v40);
  v34 = v41;
LABEL_10:
  v42 = [objc_allocWithZone(MEMORY[0x1E69B83F8]) init];
  v75 = v34;
  [v42 addScheduledTransfer_];
  v43 = [a1 transferType];
  v44 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v43 == 2)
  {
    v45 = v44;
    sub_1BE04D8B4();

    v46 = v83;
    v47 = [v83 oneTimeDepositFeatureDescriptor];

    if (v47)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v48 = v44;
  sub_1BE04D8B4();

  v49 = v83;
  v47 = [v83 oneTimeWithdrawalFeatureDescriptor];

  if (!v47)
  {
    goto LABEL_27;
  }

LABEL_14:
  v50 = [v47 transferTermsIdentifier];

  if (v50)
  {
    sub_1BE052434();
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69B8440]) init];
  [v53 setFrequency_];
  v54 = [v32 productTimeZone];
  if (v54)
  {
    v55 = v54;
    sub_1BE04B394();

    v56 = sub_1BE04B374();
    (*(v76 + 8))(v24, v77);
  }

  else
  {
    v56 = 0;
  }

  [v53 setScheduleTimeZone_];

  v57 = [objc_opt_self() now];
  sub_1BE04AEE4();

  v58 = sub_1BE04AE64();
  (*(v81 + 8))(v20, v82);
  [v53 setScheduledDate_];

  v59 = v32;
  if (v52)
  {
    v60 = sub_1BE052404();
  }

  else
  {
    v60 = 0;
  }

  [v53 setTransferTermsIdentifier_];

  v61 = [objc_allocWithZone(MEMORY[0x1E69B84C8]) init];
  [v61 setScheduledTransfers_];
  [v61 setScheduleDetails_];
  v62 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v62;
  sub_1BE04D8B4();

  v64 = v83;
  v65 = [v83 accountIdentifier];

  [v61 setAccountIdentifier_];
  v66 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v66;
  sub_1BE04D8B4();

  v68 = v83;
  v69 = [v83 accountBaseURL];

  if (v69)
  {
    v70 = v78;
    sub_1BE04A9F4();

    v69 = sub_1BE04A9C4();
    (*(v79 + 8))(v70, v80);
  }

  [v61 setBaseURL_];
}

void sub_1BD859F38(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [a1 transferType];
  if (v13 == 3)
  {
    v31 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB403F0](a3, a4, a5, v31, v32, v33))
    {
      return;
    }
  }

  else
  {
    if (v13 != 2)
    {
      return;
    }

    v14 = MEMORY[0x1BFB403C0](0);
    if ((MEMORY[0x1BFB403F0](v14) & 1) == 0)
    {
      return;
    }
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B8438]) initWithType_];
  if (a6 == 1)
  {
    v16 = [a2 bankAccountInformation];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 identifier];

      if (v18)
      {
        if (v15)
        {
          v19 = v15;
          [v19 setIdentifier_];
        }
      }
    }
  }

  swift_beginAccess();
  v20 = *(v6 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v20;
  sub_1BE04D8B4();

  v22 = [v36 type];
  if (v22 != 4)
  {
    goto LABEL_17;
  }

  v23 = *(v6 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  sub_1BE04D8B4();

  v25 = [v36 savingsDetails];
  if (v25)
  {
    v26 = [v25 currencyCode];

    if (v26)
    {
      sub_1BE052434();
      v28 = v27;

      v29 = sub_1BE053344();
      if (v28)
      {
        v30 = sub_1BE052404();

LABEL_19:
        v34 = PKCurrencyAmountMake();

        v35 = [a1 transferType];
        [objc_allocWithZone(MEMORY[0x1E69B83F0]) initWithCurrencyAmount:v34 type:v35 externalAccount:v15];

        return;
      }

LABEL_18:
      v30 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v29 = sub_1BE053344();
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1BD85A274(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = aBlock - v15;
  [a2 setDeviceMetadata_];
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  [a2 setOdiAssessment_];

  v17 = *(a6 + 32);
  if (v17)
  {
    (*(v12 + 16))(v16, a1, v11);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    (*(v12 + 32))(v19 + v18, v16, v11);
    aBlock[4] = sub_1BD85BA5C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_43_3;
    v20 = _Block_copy(aBlock);

    [v17 scheduleTransferWithRequest:a2 completion:v20];
    _Block_release(v20);
  }
}

uint64_t sub_1BD85A488(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78);
  return sub_1BE052864();
}

void sub_1BD85A4D8(void *a1)
{
  v28 = sub_1BE04D214();
  v2 = *(v28 - 8);
  v4 = MEMORY[0x1EEE9AC00](v28, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1BFB403C0](0, v4);
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1BFB403C0](0);
  v14 = v13;
  v16 = v15;
  v17 = [a1 _transactionAmount];
  if (v17)
  {
    v18 = v17;
    [v17 decimalValue];

    v19 = sub_1BD85B83C([a1 transferType], v7, v9, v11, v12, v14, v16);
    if ((v20 & 1) == 0)
    {
      v21 = v19;
      sub_1BE04D1E4();
      v22 = sub_1BE04D204();
      v23 = sub_1BE052C54();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v21;
        _os_log_impl(&dword_1BD026000, v22, v23, "Prewarming assessment for %ld", v24, 0xCu);
        MEMORY[0x1BFB45F20](v24, -1, -1);
      }

      (*(v2 + 8))(v6, v28);
      v25 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
      v26 = *(v29 + 40);
      *(v29 + 40) = v25;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD85A6F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = aBlock - v12;
  result = [a2 respondsToSelector_];
  if (result)
  {
    v15 = *(a3 + 32);
    (*(v9 + 16))(v13, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v13, v8);
    aBlock[4] = sub_1BD85B95C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD20815C;
    aBlock[3] = &block_descriptor_37_0;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    sub_1BE048964();

    [a2 paymentWebService:v15 deviceMetadataWithFields:a4 completion:v18];
    _Block_release(v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD85A8FC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70);
  return sub_1BE052864();
}

uint64_t sub_1BD85A94C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = v7;
  *(v8 + 160) = a4;
  *(v8 + 164) = a7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_1BE04D214();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = sub_1BE0528A4();
  *(v8 + 120) = sub_1BE052894();
  v11 = sub_1BE052844();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD85AA5C, v11, v10);
}

uint64_t sub_1BD85AA5C()
{
  v1 = *(v0 + 32);
  if (v1 == 3)
  {
    v9 = *(v0 + 160);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB40440](v11, v10, v9, v12, v13, v14))
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }

    goto LABEL_14;
  }

  if (v1 == 2)
  {
    v2 = *(v0 + 160);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB40440](v4, v3, v2, v5, v6, v7))
    {
      v8 = 6;
    }

    else
    {
      v17 = *(v0 + 164);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB40440](v19, v18, v17, v20, v21, v22))
      {
        v8 = 5;
      }

      else
      {
        v8 = 7;
      }
    }

LABEL_14:
    v23 = *(v0 + 72);
    v24 = *(v23 + 40);
    if (v24)
    {
      if ([v24 type] != v8)
      {
        sub_1BE04D1E4();
        v25 = sub_1BE04D204();
        v26 = sub_1BE052C54();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v8;
          _os_log_impl(&dword_1BD026000, v25, v26, "ODI assessment changed to type %ld", v27, 0xCu);
          MEMORY[0x1BFB45F20](v27, -1, -1);
        }

        v29 = *(v0 + 88);
        v28 = *(v0 + 96);
        v30 = *(v0 + 80);

        (*(v29 + 8))(v28, v30);
        [*(v23 + 40) updateAssessmentType_];
      }
    }

    else
    {
      sub_1BE04D1E4();
      v31 = sub_1BE04D204();
      v32 = sub_1BE052C54();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v8;
        _os_log_impl(&dword_1BD026000, v31, v32, "ODI assessment was not prewarmed for %ld", v33, 0xCu);
        MEMORY[0x1BFB45F20](v33, -1, -1);
      }

      v34 = *(v0 + 104);
      v35 = *(v0 + 80);
      v36 = *(v0 + 88);

      (*(v36 + 8))(v34, v35);
      v37 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
      v38 = *(v23 + 40);
      *(v23 + 40) = v37;
    }

    v39 = sub_1BE052894();
    *(v0 + 144) = v39;
    v40 = swift_task_alloc();
    *(v0 + 152) = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    *v40 = v0;
    v40[1] = sub_1BD85AE2C;
    v42 = *(v0 + 72);
    v43 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 16, v39, v43, 0xD000000000000035, 0x80000001BE13D240, sub_1BD85B6FC, v42, v41);
  }

  v15 = *(v0 + 8);

  return v15(0, 0);
}

uint64_t sub_1BD85AE2C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD85AF70, v3, v2);
}

uint64_t sub_1BD85AF70()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

void sub_1BD85AFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 40);
  if (v10)
  {
    (*(v5 + 16))(v9, a1, v4, v7);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    (*(v5 + 32))(v12 + v11, v9, v4);
    aBlock[4] = sub_1BD85B704;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD858AA4;
    aBlock[3] = &block_descriptor_192;
    v13 = _Block_copy(aBlock);
    v14 = v10;
    sub_1BE048964();

    [v14 waitForAssessmentWithCompletion_];
    _Block_release(v13);
  }
}

uint64_t sub_1BD85B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a2;
  v32 = sub_1BE051F54();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v28 - v16;
  sub_1BD14BE3C();
  v29 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v17, a4, v12);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v19, v17, v12);
  v22 = (v21 + v20);
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1BD85B794;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_26_2;
  v24 = _Block_copy(aBlock);
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v25 = v32;
  sub_1BE053664();
  v26 = v29;
  MEMORY[0x1BFB3FDF0](0, v11, v7, v24);
  _Block_release(v24);

  (*(v35 + 8))(v7, v25);
  return (*(v33 + 8))(v11, v34);
}

void sub_1BD85B570()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58);
  sub_1BE052864();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 40);

    [v1 provideSessionFeedbackIngested];
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

uint64_t sub_1BD85B64C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BD85B6C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountScheduleTransferModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD85B704(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD85B1C8(a1, a2, v6, v7);
}

void sub_1BD85B794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58);

  sub_1BD85B570();
}

uint64_t sub_1BD85B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 3)
  {
    v17 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB40440](a2, a3, a4, v17, v18, v19))
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if (a1 == 2)
  {
    v13 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB40440](a2, a3, a4, v13, v14, v15))
    {
      return 6;
    }

    else
    {
      v20 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB40440](a5, a6, a7, v20, v21, v22))
      {
        return 5;
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD85B95C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70);

  return sub_1BD85A8FC(a1);
}

uint64_t objectdestroy_33Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1BD85BA5C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78);

  return sub_1BD85A488(a1);
}

unint64_t sub_1BD85BB14()
{
  result = qword_1EBD55C80;
  if (!qword_1EBD55C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55C80);
  }

  return result;
}

uint64_t sub_1BD85BB68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1BE051F44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD85BBDC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1BE051F44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD85BC58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD85BCD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD85BD48(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  if ((v5 ^ v4))
  {
    return 0;
  }

  else
  {
    return ((v4 & 0x100) == 0) ^ ((v5 & 0x100) >> 8);
  }
}

char *sub_1BD85BDFC(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel__displayableError;
  v19 = type metadata accessor for FeatureError(0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_1BD23C2BC(v17, v13);
  sub_1BE04D874();
  sub_1BD23C32C(v17);
  (*(v6 + 32))(&v2[v18], v9, v5);
  *&v2[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer] = 0;
  v20 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService;
  *&v2[v20] = [objc_opt_self() sharedInstance];
  v21 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_paymentWebService;
  *&v2[v21] = [objc_opt_self() sharedService];
  *&v2[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account] = a1;
  if (a2)
  {
    v22 = a1;
    v23 = a2;
    v24 = [v23 state];
    if ([v23 isExpired])
    {
      v25 = 256;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    swift_beginAccess();
    v35 = a2;
    v36 = v26;
  }

  else
  {
    swift_beginAccess();
    v35 = 0;
    v36 = 0;
    v27 = a1;
  }

  sub_1BE04D874();
  swift_endAccess();
  v28 = type metadata accessor for InStoreTopUpTokenModel();
  v34.receiver = v2;
  v34.super_class = v28;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  v30 = *&v29[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v30)
  {
    v31 = v30;
    [v31 registerObserver_];
  }

  return v29;
}

id sub_1BD85C148()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v1)
  {
    [v1 unregisterObserver_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for InStoreTopUpTokenModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for InStoreTopUpTokenModel()
{
  result = qword_1EBD55CC0;
  if (!qword_1EBD55CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD85C36C()
{
  v1 = sub_1BE051F54();
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v83 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BE051FA4();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v4);
  v81 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1BE051F44();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v6);
  v79 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v78 = v63 - v10;
  v11 = sub_1BE04AF64();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FC4();
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v63 - v21;
  v23 = sub_1BE04D214();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE052DC4();
  MEMORY[0x1EEE9AC00](v28, v29);
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer))
  {
    v33 = v0;
    v64 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer;
    v66 = v32;
    v67 = v30;
    v68 = v27;
    ObjectType = v24;
    v70 = v23;
    v71 = v18;
    v72 = v14;
    v73 = v11;
    v74 = v22;
    v75 = v15;
    v34 = v87;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v35 = aBlock;
    if (aBlock >= 2)
    {
      v63[1] = v89;
      sub_1BD0E5E8C(0, &unk_1EBD39A90);
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
      sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0);
      v36 = v64;
      v37 = v67;
      sub_1BE053664();
      v38 = sub_1BE052DD4();
      (*(v66 + 8))(v36, v37);
      *(v0 + v65) = v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v39 = v68;
      sub_1BE04D194();
      v40 = sub_1BE04D204();
      v41 = sub_1BE052C54();
      v42 = os_log_type_enabled(v40, v41);
      v67 = v33;
      if (v42)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1BD026000, v40, v41, "Setting up timer for in store token", v43, 2u);
        MEMORY[0x1BFB45F20](v43, -1, -1);
      }

      (*(ObjectType + 8))(v39, v70);
      ObjectType = swift_getObjectType();
      v70 = v38;
      v44 = v71;
      sub_1BE051FB4();
      v45 = [v35 expirationDate];
      v46 = v72;
      sub_1BE04AEE4();

      sub_1BE04AEB4();
      (*(v76 + 8))(v46, v73);
      v47 = v74;
      sub_1BE051FF4();
      v48 = v77[1];
      v49 = v44;
      v50 = v75;
      v48(v49, v75);
      v51 = *MEMORY[0x1E69E7F40];
      v52 = v80;
      v77 = v35;
      v53 = *(v80 + 104);
      v54 = v78;
      v53(v78, v51, v34);
      v55 = v79;
      *v79 = 0;
      v53(v55, *MEMORY[0x1E69E7F28], v34);
      MEMORY[0x1BFB3FF60](v47, v54, v55, ObjectType);
      v56 = *(v52 + 8);
      v56(v55, v34);
      v56(v54, v34);
      v48(v47, v50);
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v58 = swift_allocObject();
      v59 = v77;
      *(v58 + 16) = v57;
      *(v58 + 24) = v59;
      v92 = sub_1BD85ED44;
      v93 = v58;
      aBlock = MEMORY[0x1E69E9820];
      v89 = 1107296256;
      v90 = sub_1BD126964;
      v91 = &block_descriptor_64_1;
      v60 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BD576BC0(v59);
      v61 = v81;
      sub_1BE051F74();
      v62 = v83;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v60);
      (*(v85 + 8))(v62, v86);
      (*(v82 + 8))(v61, v84);

      sub_1BE052E14();
      sub_1BD576BB0(v59);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BD576BB0(aBlock);
    }
  }
}

uint64_t sub_1BD85CCD0(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BE04D194();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "In Store token expired", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v12 = (v15 > 1) & v16;
    sub_1BD576BB0(v15);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = a2;
    v16 = v12 | 0x100;
    v13 = a2;
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD85CEDC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer))
  {
    swift_unknownObjectRetain();
    sub_1BE04D194();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Cancelling timer for in store token", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    swift_getObjectType();
    sub_1BE052E04();
    swift_unknownObjectRelease();
    *(v1 + v7) = 0;
    swift_unknownObjectRelease();
  }
}

void sub_1BD85D060(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account) accountIdentifier];
  if (!v7)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (a3)
  {
    if (v9 == a2 && v11 == a3)
    {
    }

    else
    {
      v13 = sub_1BE053B84();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

LABEL_15:
    if (a1)
    {

      sub_1BD85E840(a1);
    }

    else
    {
      __break(1u);
    }

    return;
  }
}

id sub_1BD85D214()
{
  v0 = sub_1BE052484();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = v25;
  if (v25 < 2)
  {
    goto LABEL_7;
  }

  if ([v25 tokenType])
  {
    sub_1BE04D194();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = v0;
      v14 = v13;
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Attempted to render top up barcode token for the wrong type", v13, 2u);
      v15 = v14;
      v0 = v24;
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  v16 = [v10 token];
  sub_1BE052434();

  sub_1BE052474();
  v17 = sub_1BE052444();
  v19 = v18;

  (*(v1 + 8))(v4, v0);
  if (v19 >> 60 == 15)
  {
LABEL_7:
    sub_1BD576BB0(v10);
    return 0;
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E69B86B0]) init];
    [v21 setFormat_];
    v22 = sub_1BE04AAB4();
    [v21 setMessageData_];

    [v21 setShouldRemoveQuietZone_];
    sub_1BD030220(v17, v19);
    sub_1BD576BB0(v10);
    return v21;
  }
}

uint64_t sub_1BD85D55C()
{
  v0 = 0x45444F43524142;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v3 < 2)
  {
    sub_1BD576BB0(v3);
    return v0;
  }

  v1 = [v3 tokenType];
  sub_1BD576BB0(v3);
  if (!v1)
  {
    return v0;
  }

  if (v1 == 1)
  {
    return 0;
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000043, 0x80000001BE13D410);
  type metadata accessor for PKAppleBalanceInStoreTopUpTokenType(0);
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD85D6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v11) = 0;
  v1 = v0;
  sub_1BE04D8C4();
  v2 = [*&v1[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account] accountIdentifier];
  if (v2)
  {
    v3 = sub_1BE052434();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *&v1[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v3;
    v8[4] = v5;
    v14 = sub_1BD85ECC0;
    v15 = v8;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1BD20815C;
    v13 = &block_descriptor_193;
    v9 = _Block_copy(&v10);

    [v6 inStoreTopUpTokenForAccountWithIdentifier:v2 completion:v9];
    _Block_release(v9);
  }

  else
  {
  }
}

void sub_1BD85D88C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v19 = MEMORY[0x1EEE9AC00](v16, v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = v18;
    v47 = v12;
    v22 = [a1 isExpired];
    v23 = a1;
    if (![v23 state] && (v22 & 1) == 0)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v49 = sub_1BE052D54();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = v23;
      v54 = sub_1BD85ED64;
      v55 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_1BD126964;
      v53 = &block_descriptor_39_3;
      v25 = _Block_copy(&aBlock);
      v26 = v23;
      sub_1BE048964();

      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      v27 = v49;
      MEMORY[0x1BFB3FDF0](0, v21, v15, v25);
      _Block_release(v25);

      (*(v47 + 8))(v15, v11);
      (*(v46 + 8))(v21, v16);
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = *(Strong + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account);

    v31 = [objc_allocWithZone(MEMORY[0x1E69B84B0]) init];
    v32 = [v30 accountBaseURL];
    if (v32)
    {
      v33 = v32;
      sub_1BE04A9F4();

      v34 = sub_1BE04A9C4();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v34 = 0;
    }

    [v31 setBaseURL_];

    v35 = [v30 accountIdentifier];
    [v31 setAccountIdentifier_];

    [v31 setTokenType_];
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36 && (v37 = *(v36 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_paymentWebService), v38 = v36, v39 = v37, v38, v37))
    {
      v40 = swift_allocObject();
      v41 = v48;
      v42 = v49;
      v40[2] = a2;
      v40[3] = v41;
      v40[4] = v42;
      v54 = sub_1BD85ED0C;
      v55 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_1BD14E1D8;
      v53 = &block_descriptor_33_7;
      v43 = _Block_copy(&aBlock);
      sub_1BE048C84();
      sub_1BE048964();
      v44 = v30;
      v45 = v31;

      [v39 generateTopUpTokenWithRequest:v45 forAccount:v44 completion:v43];

      _Block_release(v43);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD85DE80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE051FA4();
  v41 = *(v42 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1, v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 && (v19 = [v15 token]) != 0)
  {
    v20 = v19;
    v40 = v10;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService);
      v23 = Strong;
      v39 = v22;

      if (v22)
      {
        v24 = v20;
        if (a5)
        {
          v38 = sub_1BE052404();
        }

        else
        {
          v38 = 0;
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v20;
        v47 = sub_1BD85ED3C;
        v48 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v45 = sub_1BD03E30C;
        v46 = &block_descriptor_57_5;
        v30 = _Block_copy(&aBlock);
        v31 = v20;

        v33 = v38;
        v32 = v39;
        [v39 insertOrUpdateInStoreTopUpToken:v31 accountIdentifier:v38 completion:v30];
        _Block_release(v30);
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v25 = sub_1BE052D54();
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = v20;
    v47 = sub_1BD85ED20;
    v48 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BD126964;
    v46 = &block_descriptor_51_1;
    v35 = _Block_copy(&aBlock);
    sub_1BE048964();
    v36 = v20;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v18, v13, v35);
    _Block_release(v35);

    v10 = v40;
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v25 = sub_1BE052D54();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a2;
    v47 = sub_1BD85ED18;
    v48 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BD126964;
    v46 = &block_descriptor_45_0;
    v27 = _Block_copy(&aBlock);
    sub_1BE048964();
    v28 = a2;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v18, v13, v27);
    _Block_release(v27);
  }

  (*(v10 + 8))(v13, v9);
  return (*(v41 + 8))(v18, v42);
}

void sub_1BD85E454(void *a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_1BE04D194();
    v10 = a1;
    v11 = a2;
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2112;
      v16 = a1;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      v15[1] = v18;
      _os_log_impl(&dword_1BD026000, v12, v13, "Failed to insert in store token %@ with error: %@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E590);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD85E658(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD85E840(a2);
  }
}

uint64_t sub_1BD85E6B4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = a2;
    FeatureError.init(feature:error:)(4, a2, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v10, v6);
    sub_1BE04D8C4();
    sub_1BD23C32C(v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = 0;
    v14 = 0;
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD85E840(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  if (PKVerifySignatureForInStoreTopUpToken())
  {
    v11 = a1;
    v12 = [v11 state];
    if ([v11 isExpired])
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = a1;
    v19 = v14;
    v15 = v1;
    sub_1BE04D8C4();
    sub_1BD85C36C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = 0;
    v19 = 0;
    v16 = v1;
    sub_1BE04D8C4();
    FeatureError.init(feature:error:)(4, 0, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v10, v6);
    v17 = v16;
    sub_1BE04D8C4();
    sub_1BD23C32C(v10);
  }
}

void sub_1BD85EA4C()
{
  sub_1BD85EB34();
  if (v0 <= 0x3F)
  {
    sub_1BD693914();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD85EB34()
{
  if (!qword_1EBD55CD0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD55CD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI22InStoreTopUpTokenModelC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD85EB9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 10))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD85EBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BD85EC50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_1BD85EC80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InStoreTopUpTokenModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_26Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1BD85ED80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  *a2 = *(v3 + 88);
  return sub_1BE048964();
}

id sub_1BD85EE58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *a2 = v4;

  return v4;
}

void sub_1BD85EF18(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD402AC0(v1);
}

uint64_t WalletSettingsView.init(settingsModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WalletDeepLinkCoordinator();
  sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
  *a1 = sub_1BE04EEC4();
  a1[1] = v2;
  v3 = type metadata accessor for WalletSettingsView();
  v4 = a1 + v3[6];
  sub_1BE051694();
  *v4 = v8;
  *(v4 + 1) = *(&v8 + 1);
  v5 = a1 + v3[7];
  sub_1BE051694();
  *v5 = v8;
  *(v5 + 1) = *(&v8 + 1);
  v6 = a1 + v3[8];
  sub_1BE051694();
  *v6 = v8;
  *(v6 + 2) = v9;
  type metadata accessor for WalletSettingsModel(0);
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  return sub_1BE051A94();
}

uint64_t type metadata accessor for WalletSettingsView()
{
  result = qword_1EBD55CE8;
  if (!qword_1EBD55CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - v5;
  *v6 = sub_1BE04F784();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55CE0);
  sub_1BD85F5CC(v1, &v6[*(v7 + 44)]);
  v8 = type metadata accessor for WalletSettingsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  sub_1BD864588(v1, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalletSettingsView);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD864520(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for WalletSettingsView);
  v16 = sub_1BE0528D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v33 - v20;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = sub_1BE04EAA4();
    v37 = &v33;
    v35 = *(v36 - 8);
    MEMORY[0x1EEE9AC00](v36, v22);
    v34 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BE053834();

    v39 = 0xD00000000000002FLL;
    v40 = 0x80000001BE13D490;
    v38 = 48;
    v24 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v24);

    v33 = &v33;
    v27 = MEMORY[0x1EEE9AC00](v25, v26);
    (*(v17 + 16))(&v33 - v20, &v33 - v20, v16, v27);
    v28 = v34;
    sub_1BE04EA94();
    (*(v17 + 8))(v21, v16);
    sub_1BD0DE204(v6, a1, &qword_1EBD372A0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372A8);
    return (*(v35 + 32))(a1 + *(v29 + 36), v28, v36);
  }

  else
  {
    v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372B0) + 36));
    v32 = sub_1BE04E7B4();
    (*(v17 + 32))(&v31[*(v32 + 20)], &v33 - v20, v16);
    *v31 = &unk_1BE0FDB60;
    *(v31 + 1) = v14;
    return sub_1BD0DE204(v6, a1, &qword_1EBD372A0);
  }
}

uint64_t sub_1BD85F5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v40 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D28);
  v43 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v7);
  v42 = &v40 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D30);
  MEMORY[0x1EEE9AC00](v45, v9);
  v48 = &v40 - v10;
  v46 = sub_1BE04ECF4();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D38);
  v14 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v15);
  v17 = &v40 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D40);
  v18 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v19);
  v21 = &v40 - v20;
  v22 = (a1 + *(type metadata accessor for WalletSettingsView() + 24));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v51) = v23;
  *&v52 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  v25 = sub_1BE0516A4();
  if (v54 == 1)
  {
    MEMORY[0x1EEE9AC00](v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462D0);
    sub_1BD447538();
    sub_1BE0504A4();
    sub_1BE051DD4();
    v27 = sub_1BD0DE4F4(&qword_1EBD55DD8, &qword_1EBD55D38);
    v28 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    v29 = v44;
    v30 = v46;
    sub_1BE051134();
    (*(v40 + 8))(v13, v30);
    (*(v14 + 8))(v17, v29);
    v31 = v47;
    (*(v18 + 16))(v48, v21, v47);
    swift_storeEnumTagMultiPayload();
    v51 = v29;
    *&v52 = v30;
    *(&v52 + 1) = v27;
    v53 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55DE0, &qword_1EBD55D28);
    sub_1BE04F9A4();
    return (*(v18 + 8))(v21, v31);
  }

  else
  {
    sub_1BE051A84();
    swift_getKeyPath();
    sub_1BE051AA4();

    v33 = (*(v41 + 8))(v6, v3);
    v54 = v51;
    v55 = v52;
    MEMORY[0x1EEE9AC00](v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D50);
    sub_1BD0DE4F4(&qword_1EBD55D58, &qword_1EBD55D48);
    sub_1BD0DE4F4(&qword_1EBD55D60, &qword_1EBD55D48);
    sub_1BD0DE4F4(&qword_1EBD55D68, &qword_1EBD55D48);
    sub_1BD863C28();
    sub_1BD5F84E0();
    v35 = v42;
    sub_1BE04EBF4();
    v36 = v43;
    v37 = v49;
    (*(v43 + 16))(v48, v35, v49);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1BD0DE4F4(&qword_1EBD55DD8, &qword_1EBD55D38);
    v39 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    v51 = v44;
    *&v52 = v46;
    *(&v52 + 1) = v38;
    v53 = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55DE0, &qword_1EBD55D28);
    sub_1BE04F9A4();
    return (*(v36 + 8))(v35, v37);
  }
}

uint64_t sub_1BD85FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v3[8] = sub_1BE0528A4();
  v3[9] = sub_1BE052894();
  v3[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD85FEC0, v5, v4);
}

uint64_t sub_1BD85FEC0()
{
  v1 = type metadata accessor for WalletSettingsView();
  *(v0 + 104) = v1;
  *(v0 + 168) = *(v1 + 20);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  *(v0 + 120) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1BD85FFA8;

  return sub_1BD40EDBC();
}

uint64_t sub_1BD85FFA8(char a1)
{
  v2 = *v1;
  *(*v1 + 173) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD8600F4, v4, v3);
}

uint64_t sub_1BD8600F4()
{
  v1 = *(v0 + 173);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = (v3 + *(v2 + 24));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 172) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v8 = sub_1BE052844();
  *(v0 + 136) = v8;
  *(v0 + 144) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD8601D8, v8, v7);
}

uint64_t sub_1BD8601D8()
{
  sub_1BE051A74();
  v1 = v0[5];
  swift_getKeyPath();
  v0[6] = v1;
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  v0[19] = *(v1 + 88);
  sub_1BE048964();

  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1BD860310;

  return sub_1BD1BD518();
}

uint64_t sub_1BD860310()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v3, v2);
}

uint64_t sub_1BD860454()
{
  v2 = *(type metadata accessor for WalletSettingsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD85FE18(v4, v5, v0 + v3);
}

uint64_t sub_1BD86054C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

uint64_t sub_1BD860660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00);
  sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00);
  sub_1BE051A44();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050AE4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD860834@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660);
  return sub_1BE04E2B4();
}

id sub_1BD8608FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v41 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v37[-v9];
  v11 = *MEMORY[0x1E69B80F0];
  v12 = *(v3 + 104);
  v12(&v37[-v9], v11, v2, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    v18 = *(v3 + 8);
    v18(v10, v2);
    v44 = v15;
    v45 = v17;
    sub_1BD0DDEBC();
    v39 = sub_1BE0506C4();
    v40 = v19;
    v21 = v20;
    v38 = v22;
    (v12)(v41, v11, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = v41;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v18(v24, v2);
      v44 = v25;
      v45 = v27;
      v28 = sub_1BE0506C4();
      v30 = v29;
      v31 = v38 & 1;
      v42 = v38 & 1;
      LOBYTE(v44) = v38 & 1;
      v33 = v32 & 1;
      v43 = v32 & 1;
      v35 = v39;
      v34 = v40;
      *a1 = v39;
      *(a1 + 8) = v21;
      *(a1 + 16) = v31;
      *(a1 + 24) = v34;
      *(a1 + 32) = v28;
      *(a1 + 40) = v29;
      *(a1 + 48) = v32 & 1;
      *(a1 + 56) = v36;
      sub_1BD0D7F18(v35, v21, v31);
      sub_1BE048C84();
      sub_1BD0D7F18(v28, v30, v33);
      sub_1BE048C84();
      sub_1BD0DDF10(v28, v30, v33);

      sub_1BD0DDF10(v35, v21, v42);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD860BD0(uint64_t a1)
{
  v2 = type metadata accessor for WalletSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD864588(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalletSettingsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD864520(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for WalletSettingsView);
  return sub_1BE051704();
}

uint64_t sub_1BD860D24()
{
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  sub_1BD40EC88();
}

id sub_1BD860D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

uint64_t sub_1BD860EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v93 = sub_1BE04ECF4();
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v3);
  v90 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WalletSettingsView();
  v109 = *(v5 - 8);
  v111 = *(v109 + 64);
  v6 = v5 - 8;
  v83 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DB0);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v10);
  v81 = v77 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DA8);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v12);
  v84 = v77 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D98);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v14);
  v85 = v77 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D90);
  v95 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v16);
  v106 = (v77 - v17);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D88);
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v18);
  v108 = v77 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DE8);
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v20);
  v97 = v77 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D80);
  MEMORY[0x1EEE9AC00](v96, v22);
  v102 = v77 - v23;
  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF8);
  sub_1BD0DE4F4(&qword_1EBD55E00, &qword_1EBD55DF0);
  sub_1BD0DE4F4(&qword_1EBD55E08, &qword_1EBD55DF8);
  sub_1BE050494();
  v24 = a1 + *(v6 + 36);
  v25 = *v24;
  v26 = *(v24 + 8);
  v120 = v25;
  v121 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v77[3] = v115;
  v82 = a1;
  v105 = type metadata accessor for WalletSettingsView;
  sub_1BD864588(a1, v9, type metadata accessor for WalletSettingsView);
  v27 = *(v109 + 80);
  v28 = (v27 + 16) & ~v27;
  v79 = v28;
  v109 = v27;
  v29 = swift_allocObject();
  v104 = type metadata accessor for WalletSettingsView;
  sub_1BD864520(v9, v29 + v28, type metadata accessor for WalletSettingsView);
  v110 = v9;
  sub_1BD864588(a1, v9, type metadata accessor for WalletSettingsView);
  v30 = swift_allocObject();
  sub_1BD864520(v9, v30 + v28, type metadata accessor for WalletSettingsView);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DA0);
  v32 = sub_1BD0DE4F4(&qword_1EBD55DB8, &qword_1EBD55DB0);
  v33 = sub_1BD863F6C();
  v78 = v33;
  v80 = v31;
  v34 = v84;
  v35 = v86;
  v36 = v81;
  sub_1BE050F64();

  (*(v87 + 8))(v36, v35);
  v37 = v90;
  sub_1BE051DD4();
  v113 = v35;
  v114 = v31;
  v115 = v32;
  v116 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  v40 = v85;
  v41 = v88;
  v42 = v93;
  sub_1BE051134();
  (*(v94 + 8))(v37, v42);
  (*(v89 + 8))(v34, v41);
  v43 = v82;
  v44 = v110;
  sub_1BD864588(v82, v110, v105);
  v45 = v79;
  v46 = swift_allocObject();
  sub_1BD864520(v44, v46 + v45, v104);
  v113 = v41;
  v114 = v42;
  v115 = OpaqueTypeConformance2;
  v116 = v39;
  v94 = swift_getOpaqueTypeConformance2();
  v47 = sub_1BD5F84E0();
  v48 = v78;
  v49 = v91;
  v50 = v80;
  sub_1BE050D64();

  (*(v92 + 8))(v40, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  v51 = v113;
  swift_getKeyPath();
  v113 = v51;
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  v52 = *(v51 + 32);
  sub_1BE048C84();

  v119 = v52;
  v53 = v43;
  v54 = v110;
  sub_1BD864588(v43, v110, v105);
  v55 = swift_allocObject();
  v56 = v45;
  sub_1BD864520(v54, v55 + v45, v104);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D48);
  v113 = v49;
  v114 = &type metadata for PaymentPassPaneIdentifier;
  v58 = v53;
  v115 = v50;
  v116 = v94;
  v117 = v47;
  v118 = v48;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_1BD864068();
  v61 = v107;
  v105 = v57;
  v62 = v106;
  sub_1BE051064();

  (*(v95 + 8))(v62, v61);
  if (*v58)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    LOBYTE(v119) = v113;
    v106 = type metadata accessor for WalletSettingsView;
    v63 = v110;
    sub_1BD864588(v58, v110, type metadata accessor for WalletSettingsView);
    v64 = swift_allocObject();
    sub_1BD864520(v63, v64 + v56, type metadata accessor for WalletSettingsView);
    v113 = v107;
    v114 = v105;
    v115 = v59;
    v116 = v60;
    swift_getOpaqueTypeConformance2();
    v65 = v97;
    v66 = v100;
    v67 = v108;
    sub_1BE051064();

    (*(v98 + 8))(v67, v66);
    v68 = v106;
    sub_1BD864588(v58, v63, v106);
    v69 = swift_allocObject();
    sub_1BD864520(v63, v69 + v56, type metadata accessor for WalletSettingsView);
    v70 = v102;
    (*(v99 + 32))(v102, v65, v101);
    v71 = &v70[*(v96 + 36)];
    *v71 = sub_1BD86432C;
    v71[1] = v69;
    v71[2] = 0;
    v71[3] = 0;
    sub_1BD864588(v58, v63, v68);
    v72 = swift_allocObject();
    sub_1BD864520(v63, v72 + v56, type metadata accessor for WalletSettingsView);
    v73 = v70;
    v74 = v103;
    sub_1BD0DE204(v73, v103, &qword_1EBD55D80);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D50);
    v76 = (v74 + *(result + 36));
    *v76 = 0;
    v76[1] = 0;
    v76[2] = sub_1BD864478;
    v76[3] = v72;
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator();
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD861E0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsOptionsSection();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v22 - v8);
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  sub_1BD5F9048(v26[0], v26);
  sub_1BE051A74();
  v10 = sub_1BD2D3FE0(v25);
  v23 = v11;
  v24 = v10;
  sub_1BE051A74();
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *v9 = sub_1BE04E124();
  type metadata accessor for WalletSettingsModel(0);
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE051A94();
  v12 = v26[0];
  v13 = v26[1];
  v15 = v26[2];
  v14 = v26[3];
  v16 = v27;
  v17 = v28;
  sub_1BD864588(v9, v5, type metadata accessor for SettingsOptionsSection);
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16 & 1;
  v19 = v23;
  v18 = v24;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E18);
  sub_1BD864588(v5, a1 + *(v20 + 64), type metadata accessor for SettingsOptionsSection);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD8645F0(v9);
  sub_1BD8645F0(v5);
}

uint64_t sub_1BD8620C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E10);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  return (*(v3 + 8))(v6, v2);
}

id sub_1BD86227C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

uint64_t sub_1BD8623E8()
{
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8624A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  v9 = (a1 + *(v8 + 32));
  v10 = *v9;
  v11 = *(v9 + 2);
  v22 = v10;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v12 = WalletSettingsModel.passForUniqueID(uniqueID:)(v21);

  if (v12)
  {
    sub_1BE051A74();
    v13 = v22;
    *v7 = v12;
    *(v7 + 1) = v13;
    LOBYTE(v21._countAndFlagsBits) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B88);
    sub_1BE051694();
    v14 = *(&v22 + 1);
    v7[16] = v22;
    *(v7 + 3) = v14;
    v15 = *(v3 + 28);
    *&v7[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    v16 = v20;
    sub_1BD864520(v7, v20, type metadata accessor for PaymentPassDetailsSheet);
    v17 = 0;
    v18 = v16;
  }

  else
  {
    v17 = 1;
    v18 = v20;
  }

  return (*(v4 + 56))(v18, v17, 1, v3);
}

uint64_t sub_1BD8626E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentPassDetailsSheet(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  v11._countAndFlagsBits = v9;
  v11._object = v10;
  v12 = WalletSettingsModel.passForUniqueID(uniqueID:)(v11);

  if (v12)
  {
    sub_1BE051A74();
    v13 = v19;
    *v8 = v12;
    *(v8 + 1) = v13;
    v18[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B88);
    sub_1BE051694();
    v14 = v20;
    v8[16] = v19;
    *(v8 + 3) = v14;
    v15 = *(v4 + 28);
    *&v8[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    sub_1BD864520(v8, a2, type metadata accessor for PaymentPassDetailsSheet);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v5 + 56))(a2, v16, 1, v4);
}

uint64_t sub_1BD8628D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v5 = (*a2 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];
    v8 = type metadata accessor for WalletSettingsView();
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
    sub_1BE051A74();
    sub_1BE048C84();
    v9._countAndFlagsBits = v7;
    v9._object = v6;
    v10 = WalletSettingsModel.passForUniqueID(uniqueID:)(v9);

    if (!v10)
    {

      goto LABEL_11;
    }

    if (![v10 passActivationState] || objc_msgSend(v10, sel_passActivationState) == 2)
    {

      goto LABEL_11;
    }

    sub_1BE051A74();
    swift_getKeyPath();
    sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    v11 = *(v22 + 32);
    if (*(v11 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v13 = *(v11 + 16);
        if (v13)
        {
LABEL_10:
          *(v11 + 16) = v13 - 1;
          *(v22 + 32) = v11;
          swift_endAccess();

          swift_getKeyPath();
          sub_1BE04B5A4();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
          sub_1BE0516B4();
          v22 = *(a3 + *(v8 + 32));
          v21 = v7;
          sub_1BE048964();
          sub_1BE048C84();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
          sub_1BE0516B4();

          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1BD4FFFA4(v11);
    v11 = result;
    v13 = *(result + 16);
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_11:
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  sub_1BE04B594();

  swift_beginAccess();
  v14 = *(v22 + 32);
  sub_1BE048C84();

  v15 = *(v14 + 16);

  if (!v15)
  {
    sub_1BE051A74();
    if (*(v21 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v17);
      sub_1BE04B584();
    }

    sub_1BE051A74();
    sub_1BE051A74();
    v18 = *(v21 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath);
    v19 = *(v21 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath + 8);
    sub_1BE048C84();

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v20);
  }

  return result;
}

void sub_1BD862DE8(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for WalletSettingsView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
    sub_1BE051A74();
    sub_1BE051A74();
    v5 = *(v11 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
    v4 = *(v11 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8);
    sub_1BE048C84();

    swift_getKeyPath();
    sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
    sub_1BE04B594();

    swift_getKeyPath();
    sub_1BE04B5B4();

    swift_beginAccess();
    v6 = *(v11 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 32) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1BD1D8E5C(0, *(v6 + 2) + 1, 1, v6);
      *(v11 + 32) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1BD1D8E5C((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v4;
    *(v11 + 32) = v6;
    swift_endAccess();
    swift_getKeyPath();
    sub_1BE04B5A4();

    if (*a3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator();
      sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD8630B8(void *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    if (v9)
    {
      type metadata accessor for WalletSettingsView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
      sub_1BE051A74();
      sub_1BE051A74();
      v3 = *(v9 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
      v2 = *(v9 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8);
      sub_1BE048C84();

      swift_getKeyPath();
      sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
      sub_1BE04B594();

      swift_getKeyPath();
      sub_1BE04B5B4();

      swift_beginAccess();
      v4 = *(v9 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 32) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1BD1D8E5C(0, *(v4 + 2) + 1, 1, v4);
        *(v9 + 32) = v4;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = sub_1BD1D8E5C((v6 > 1), v7 + 1, 1, v4);
      }

      *(v4 + 2) = v7 + 1;
      v8 = &v4[16 * v7];
      *(v8 + 4) = v3;
      *(v8 + 5) = v2;
      *(v9 + 32) = v4;
      swift_endAccess();
      swift_getKeyPath();
      sub_1BE04B5A4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      return sub_1BE04D8C4();
    }
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator();
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8633D4()
{
  type metadata accessor for WalletSettingsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  sub_1BE051A74();
  sub_1BE051A74();
  v0 = *(v7 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
  v1 = *(v7 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8);
  sub_1BE048C84();

  v2._countAndFlagsBits = v0;
  v2._object = v1;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v2);

  sub_1BE051A74();
  sub_1BE051A74();
  v3 = *(v7 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath);
  v4 = *(v7 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath + 8);
  sub_1BE048C84();

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v5);
}

void sub_1BD863538()
{
  sub_1BD86360C();
  if (v0 <= 0x3F)
  {
    sub_1BD8636A0();
    if (v1 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0);
      if (v2 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD86360C()
{
  if (!qword_1EBD55CF8)
  {
    type metadata accessor for WalletDeepLinkCoordinator();
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD55CF8);
    }
  }
}

void sub_1BD8636A0()
{
  if (!qword_1EBD40C80)
  {
    type metadata accessor for WalletSettingsModel(255);
    v0 = sub_1BE051AB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40C80);
    }
  }
}

uint64_t sub_1BD863720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BE053B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BD8637A8(uint64_t a1)
{
  v2 = sub_1BD863BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD8637E4(uint64_t a1)
{
  v2 = sub_1BD863BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD863820()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD863874()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD8638BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD863BCC();
  sub_1BE053D94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = sub_1BE053A94();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1BD863A38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD863BCC();
  sub_1BE053DA4();
  sub_1BE053AE4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1BD863B78()
{
  result = qword_1EBD55D08;
  if (!qword_1EBD55D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D08);
  }

  return result;
}

unint64_t sub_1BD863BCC()
{
  result = qword_1EBD55D18;
  if (!qword_1EBD55D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D18);
  }

  return result;
}

unint64_t sub_1BD863C28()
{
  result = qword_1EBD55D70;
  if (!qword_1EBD55D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D50);
    sub_1BD863CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D70);
  }

  return result;
}

unint64_t sub_1BD863CB4()
{
  result = qword_1EBD55D78;
  if (!qword_1EBD55D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA8);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DB0);
    sub_1BD0DE4F4(&qword_1EBD55DB8, &qword_1EBD55DB0);
    sub_1BD863F6C();
    swift_getOpaqueTypeConformance2();
    sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD5F84E0();
    swift_getOpaqueTypeConformance2();
    sub_1BD864068();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D78);
  }

  return result;
}

unint64_t sub_1BD863F6C()
{
  result = qword_1EBD55DC0;
  if (!qword_1EBD55DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA0);
    sub_1BD864020(&qword_1EBD55DC8, type metadata accessor for PaymentPassDetailsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55DC0);
  }

  return result;
}

uint64_t sub_1BD864020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD864068()
{
  result = qword_1EBD55DD0;
  if (!qword_1EBD55DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D48);
    sub_1BD863B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55DD0);
  }

  return result;
}

uint64_t sub_1BD86413C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD8624A8(v4, a1);
}

uint64_t sub_1BD8641AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WalletSettingsView();

  return sub_1BD8626E0(a1, a2);
}

uint64_t sub_1BD86422C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WalletSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD8628D0(a1, a2, v6);
}

void sub_1BD8642AC(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for WalletSettingsView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD862DE8(a1, a2, v6);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = (type metadata accessor for WalletSettingsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD864490(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WalletSettingsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD864520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD864588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8645F0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsOptionsSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD864660()
{
  result = qword_1EBD55E20;
  if (!qword_1EBD55E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55E20);
  }

  return result;
}

unint64_t sub_1BD8646B8()
{
  result = qword_1EBD55E28;
  if (!qword_1EBD55E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55E28);
  }

  return result;
}

unint64_t sub_1BD864710()
{
  result = qword_1EBD55E30[0];
  if (!qword_1EBD55E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD55E30);
  }

  return result;
}

uint64_t WrapperHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v6 = sub_1BD864EE8(a1, v5);
  (*(*(*(v2 + class metadata base offset for WrapperHostingController) - 8) + 8))(a1);
  return v6;
}

void sub_1BD86481C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BD864868(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD8648F8;
}

void sub_1BD8648F8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
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

uint64_t ObservableHostingController.__deallocating_deinit()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8649CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableHostingController();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t WrapperHostingController.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = sub_1BD864EE8(a1, a2);
  (*(*(*(v4 + class metadata base offset for WrapperHostingController) - 8) + 8))(a1);
  return v5;
}

void sub_1BD864AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1BD8651E0(v3);
}

id WrapperHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrapperHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InnerHostingView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B1E8);
  v2 = sub_1BE04EBD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  type metadata accessor for ObservableHostingController();
  v11 = *(a1 + 24);
  sub_1BD8652DC();
  sub_1BE050BE4();
  v12 = sub_1BD865330();
  v15[0] = v11;
  v15[1] = v12;
  swift_getWitnessTable();
  sub_1BD147308(v6);
  v13 = *(v3 + 8);
  v13(v6, v2);
  sub_1BD147308(v10);
  return (v13)(v10, v2);
}

uint64_t sub_1BD864EE8(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for WrapperHostingController);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - v6;
  v8 = type metadata accessor for InnerHostingView();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v20 - v15;
  type metadata accessor for ObservableHostingController();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for WrapperHostingController + 16)) = v17;
  (*(v5 + 16))(v7, a1, v4);
  (*(v5 + 32))(v16, v7, v4);
  *&v16[*(v8 + 36)] = v17;
  (*(v9 + 16))(v12, v16, v8);
  sub_1BE048964();
  v18 = sub_1BE04F894();
  (*(v9 + 8))(v16, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v18;
}

unint64_t sub_1BD8652DC()
{
  result = qword_1EBD3B1A0;
  if (!qword_1EBD3B1A0)
  {
    type metadata accessor for ObservableHostingController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1A0);
  }

  return result;
}

unint64_t sub_1BD865330()
{
  result = qword_1EBD3B1E0;
  if (!qword_1EBD3B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1E0);
  }

  return result;
}

uint64_t sub_1BD8654E4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservableHostingController();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD865560(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1BD86569C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI14UIFlowItemViewO(uint64_t *a1)
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

uint64_t sub_1BD86588C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1BD8658E8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1BD865948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  (*(a6 + 8))(a1, a2, v7, a3, a4, a5);
  return sub_1BD12FF7C(v7);
}

uint64_t sub_1BD8659A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v5, 0, sizeof(v5));
  v6 = -1;
  (*(a4 + 8))(a1, a2, v5, 0, 0, a3, a4);
  return sub_1BD12FF7C(v5);
}

uint64_t sub_1BD865A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD865A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD865AAC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1BD865AF4()
{
  result = qword_1EBD55F38;
  if (!qword_1EBD55F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55F38);
  }

  return result;
}

uint64_t type metadata accessor for ShippingAddressRow()
{
  result = qword_1EBD55F40;
  if (!qword_1EBD55F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD865BC4()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD2A1EF0();
    if (v1 <= 0x3F)
    {
      sub_1BD3A0CE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD865CA0()
{
  result = qword_1EBD55F50;
  if (!qword_1EBD55F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55F50);
  }

  return result;
}

uint64_t sub_1BD865CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1BE04FF64();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F58);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F60);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v21 - v14;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F68);
  sub_1BD866004(v2, &v10[*(v16 + 44)]);
  sub_1BE04FF44();
  v17 = sub_1BD0DE4F4(&qword_1EBD55F70, &qword_1EBD55F58);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v22);
  sub_1BD0DE53C(v10, &qword_1EBD55F58);
  sub_1BE052434();
  v24 = v7;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1BE050DE4();

  (*(v12 + 8))(v15, v11);
  LOBYTE(v10) = *(v21[1] + 64);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F78) + 36);
  *v19 = 0;
  *(v19 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F80);
  *(v18 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1BD866004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v160 = sub_1BE04F454();
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v3);
  v155 = &v139[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = sub_1BE04E8A4();
  v154 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v5);
  v151 = &v139[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54650);
  v156 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v7);
  v152 = &v139[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v139[-v11];
  v145 = sub_1BE04C894();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v12);
  v143 = &v139[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_1BE04C764();
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v14);
  v147 = &v139[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54658);
  MEMORY[0x1EEE9AC00](v170, v16);
  v146 = &v139[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v149 = &v139[-v20];
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F88);
  MEMORY[0x1EEE9AC00](v168, v21);
  v169 = &v139[-v22];
  v164 = sub_1BE04F6E4();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v23);
  v162 = &v139[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558);
  MEMORY[0x1EEE9AC00](v167, v25);
  v165 = &v139[-v26];
  v27 = sub_1BE051AD4();
  v182 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v161 = &v139[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v181, v30);
  v173 = &v139[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v174 = &v139[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v139[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v139[-v41];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v172 = &v139[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46, v47);
  v180 = &v139[-v48];
  MEMORY[0x1EEE9AC00](v49, v50);
  v171 = &v139[-v51];
  MEMORY[0x1EEE9AC00](v52, v53);
  v142 = &v139[-v54];
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v139[-v57];
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v139[-v61];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F90);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v139[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v67, v68);
  v177 = &v139[-v69];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F98);
  MEMORY[0x1EEE9AC00](v70 - 8, v71);
  v176 = &v139[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v139[-v75];
  v77 = *(a1 + *(type metadata accessor for ShippingAddressRow() + 44));
  *v76 = sub_1BE04F504();
  *(v76 + 1) = v77;
  v76[16] = 0;
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FA0) + 44);
  v175 = v76;
  sub_1BD867578(a1, &v76[v78]);
  v79 = *(a1 + 64) == 1;
  v178 = v66;
  v166 = a1;
  if (!v79)
  {
    goto LABEL_14;
  }

  v141 = v38;
  sub_1BD70A2C8(v42);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v80 - 8) + 48))(v42, 1, v80) == 1)
  {
    sub_1BD0DE53C(v42, &qword_1EBD40450);
    v81 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v80);
    sub_1BD0DE53C(v42, &qword_1EBD40520);
    v81 = 0;
  }

  v82 = v182;
  v83 = *(v182 + 56);
  v83(v62, v81, 1, v27);
  (*(v82 + 104))(v58, *MEMORY[0x1E697D708], v27);
  v83(v58, 0, 1, v27);
  v84 = *(v181 + 48);
  v85 = v174;
  sub_1BD0DE19C(v62, v174, &qword_1EBD40530);
  sub_1BD0DE19C(v58, &v85[v84], &qword_1EBD40530);
  v86 = *(v82 + 48);
  if (v86(v85, 1, v27) == 1)
  {
    sub_1BD0DE53C(v58, &qword_1EBD40530);
    v87 = v174;
    sub_1BD0DE53C(v62, &qword_1EBD40530);
    if (v86(&v87[v84], 1, v27) == 1)
    {
      sub_1BD0DE53C(v87, &qword_1EBD40530);
      v38 = v141;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v88 = v142;
  sub_1BD0DE19C(v85, v142, &qword_1EBD40530);
  if (v86(&v85[v84], 1, v27) == 1)
  {
    sub_1BD0DE53C(v58, &qword_1EBD40530);
    v87 = v174;
    sub_1BD0DE53C(v62, &qword_1EBD40530);
    (*(v182 + 8))(v88, v27);
LABEL_11:
    sub_1BD0DE53C(v87, &qword_1EBD40528);
    goto LABEL_12;
  }

  v99 = v182;
  v100 = v88;
  v101 = v161;
  (*(v182 + 32))(v161, &v85[v84], v27);
  sub_1BD8681A4(&qword_1EBD40538, MEMORY[0x1E697D718]);
  v140 = sub_1BE052334();
  v102 = *(v99 + 8);
  v102(v101, v27);
  sub_1BD0DE53C(v58, &qword_1EBD40530);
  sub_1BD0DE53C(v62, &qword_1EBD40530);
  v102(v100, v27);
  sub_1BD0DE53C(v85, &qword_1EBD40530);
  v38 = v141;
  if (v140)
  {
LABEL_14:
    sub_1BD70A2C8(v38);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if ((*(*(v103 - 8) + 48))(v38, 1, v103) == 1)
    {
      sub_1BD0DE53C(v38, &qword_1EBD40450);
      v104 = 1;
      v105 = v172;
      v106 = v173;
      v107 = v171;
    }

    else
    {
      v107 = v171;
      MEMORY[0x1BFB3E970](v103);
      sub_1BD0DE53C(v38, &qword_1EBD40520);
      v104 = 0;
      v105 = v172;
      v106 = v173;
    }

    v108 = v180;
    v109 = v182;
    v110 = *(v182 + 56);
    v110(v107, v104, 1, v27);
    (*(v109 + 104))(v108, *MEMORY[0x1E697D708], v27);
    v110(v108, 0, 1, v27);
    v111 = *(v181 + 48);
    sub_1BD0DE19C(v107, v106, &qword_1EBD40530);
    sub_1BD0DE19C(v108, v106 + v111, &qword_1EBD40530);
    v112 = *(v109 + 48);
    if (v112(v106, 1, v27) == 1)
    {
      sub_1BD0DE53C(v108, &qword_1EBD40530);
      sub_1BD0DE53C(v107, &qword_1EBD40530);
      v113 = v112(v106 + v111, 1, v27);
      v97 = v177;
      if (v113 == 1)
      {
        sub_1BD0DE53C(v106, &qword_1EBD40530);
LABEL_25:
        v118 = MEMORY[0x1E69BC9F8];
        if (!*(v166 + 32))
        {
          v118 = MEMORY[0x1E69BCA00];
        }

        (*(v144 + 104))(v143, *v118, v145);
        v119 = v147;
        sub_1BE04C754();
        v120 = v151;
        sub_1BE04E894();
        v121 = v155;
        sub_1BE04F444();
        v122 = sub_1BD8681A4(&unk_1EBD36878, MEMORY[0x1E697E410]);
        v123 = sub_1BD8681A4(&unk_1EBD367A0, MEMORY[0x1E697F260]);
        v124 = v153;
        v125 = v157;
        v126 = v160;
        sub_1BE04E314();
        (*(v158 + 8))(v121, v126);
        (*(v154 + 8))(v120, v125);
        v127 = v156;
        v128 = v159;
        (*(v156 + 16))(v152, v124, v159);
        v183 = v125;
        v184 = v126;
        v185 = v122;
        v186 = v123;
        swift_getOpaqueTypeConformance2();
        v129 = sub_1BE04E644();
        (*(v127 + 8))(v124, v128);
        v130 = v146;
        (*(v148 + 32))(v146, v119, v150);
        *(v130 + *(v170 + 36)) = v129;
        v131 = v149;
        sub_1BD0DE204(v130, v149, &qword_1EBD54658);
        sub_1BD0DE19C(v131, v169, &qword_1EBD54658);
        swift_storeEnumTagMultiPayload();
        sub_1BD8680E8();
        sub_1BD7F1A50();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v131, &qword_1EBD54658);
        v98 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      sub_1BD0DE19C(v106, v105, &qword_1EBD40530);
      if (v112(v106 + v111, 1, v27) != 1)
      {
        v114 = v182;
        v115 = v161;
        (*(v182 + 32))(v161, v106 + v111, v27);
        sub_1BD8681A4(&qword_1EBD40538, MEMORY[0x1E697D718]);
        v116 = sub_1BE052334();
        v117 = *(v114 + 8);
        v117(v115, v27);
        sub_1BD0DE53C(v180, &qword_1EBD40530);
        sub_1BD0DE53C(v107, &qword_1EBD40530);
        v117(v105, v27);
        sub_1BD0DE53C(v106, &qword_1EBD40530);
        v97 = v177;
        if (v116)
        {
          goto LABEL_25;
        }

LABEL_23:
        v98 = 1;
LABEL_28:
        v96 = v178;
        goto LABEL_29;
      }

      sub_1BD0DE53C(v180, &qword_1EBD40530);
      sub_1BD0DE53C(v107, &qword_1EBD40530);
      (*(v182 + 8))(v105, v27);
      v97 = v177;
    }

    sub_1BD0DE53C(v106, &qword_1EBD40528);
    goto LABEL_23;
  }

LABEL_12:
  v89 = sub_1BE051574();
  v90 = sub_1BE0502D4();
  KeyPath = swift_getKeyPath();
  v92 = sub_1BE0511E4();
  v93 = swift_getKeyPath();
  v183 = v89;
  v184 = KeyPath;
  v185 = v90;
  v186 = v93;
  v187 = v92;
  v188 = sub_1BD1F3E44;
  v189 = 0;
  v94 = v162;
  sub_1BE04F6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578);
  sub_1BD2A298C();
  v95 = v165;
  v96 = v178;
  sub_1BE050DA4();
  (*(v163 + 8))(v94, v164);

  sub_1BD0DE19C(v95, v169, &qword_1EBD40558);
  swift_storeEnumTagMultiPayload();
  sub_1BD8680E8();
  sub_1BD7F1A50();
  v97 = v177;
  sub_1BE04F9A4();
  sub_1BD0DE53C(v95, &qword_1EBD40558);
  v98 = 0;
LABEL_29:
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FA8);
  (*(*(v132 - 8) + 56))(v97, v98, 1, v132);
  v134 = v175;
  v133 = v176;
  sub_1BD0DE19C(v175, v176, &qword_1EBD55F98);
  sub_1BD0DE19C(v97, v96, &qword_1EBD55F90);
  v135 = v179;
  sub_1BD0DE19C(v133, v179, &qword_1EBD55F98);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FB0);
  v137 = v135 + *(v136 + 48);
  *v137 = 0;
  *(v137 + 8) = 1;
  sub_1BD0DE19C(v96, v135 + *(v136 + 64), &qword_1EBD55F90);
  sub_1BD0DE53C(v97, &qword_1EBD55F90);
  sub_1BD0DE53C(v134, &qword_1EBD55F98);
  sub_1BD0DE53C(v96, &qword_1EBD55F90);
  return sub_1BD0DE53C(v133, &qword_1EBD55F98);
}

uint64_t sub_1BD867578@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FC0);
  sub_1BD867718(a1, &v11[*(v15 + 44)]);
  sub_1BD0DE19C(v11, v7, &qword_1EBD55FB8);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FC8);
  sub_1BD0DE19C(v7, a2 + *(v16 + 48), &qword_1EBD55FB8);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v11, &qword_1EBD55FB8);
  sub_1BD0DE53C(v7, &qword_1EBD55FB8);
}

uint64_t sub_1BD867718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v97 = sub_1BE04F774();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v3);
  v95 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0);
  MEMORY[0x1EEE9AC00](v99, v5);
  v100 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD8);
  v102 = *(v7 - 8);
  v103 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FE0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v104 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v107 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v101 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v92 - v26;
  v108 = a1;
  v29 = a1[1];
  v106 = &v92 - v26;
  if (v29)
  {
    v109 = *v108;
    v110 = v29;
    sub_1BD0DDEBC();
    v94 = v16;
    sub_1BE048C84();
    v30 = sub_1BE0506C4();
    v32 = v31;
    v93 = v17;
    v34 = v33;
    sub_1BE050324();
    v92 = v20;
    v35 = sub_1BE0505F4();
    v37 = v36;
    v39 = v38;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    sub_1BE050384();
    v40 = sub_1BE050544();
    v42 = v41;
    v44 = v43;
    sub_1BD0DDF10(v35, v37, v39 & 1);

    sub_1BE051224();
    v45 = sub_1BE050564();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    sub_1BD0DDF10(v40, v42, v44 & 1);

    KeyPath = swift_getKeyPath();
    v109 = v45;
    v110 = v47;
    LOBYTE(v42) = v49 & 1;
    v111 = v49 & 1;
    v112 = v51;
    v113 = KeyPath;
    v114 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    v53 = v92;
    v28 = v106;
    sub_1BE050DE4();

    sub_1BD0DDF10(v45, v47, v42);

    sub_1BD0DE204(v53, v28, &qword_1EBD38A98);
    (*(v93 + 56))(v28, 0, 1, v94);
  }

  else
  {
    (*(v17 + 56))(&v92 - v26, 1, 1, v16, v27);
  }

  v54 = v108[3];
  if (v54)
  {
    v55 = v108;
    v109 = v108[2];
    v110 = v54;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v56 = sub_1BE0506C4();
    v58 = v57;
    v60 = v59;
    sub_1BE0502E4();
    v61 = sub_1BE0505F4();
    v63 = v62;
    v65 = v64;

    sub_1BD0DDF10(v56, v58, v60 & 1);

    v66 = *(v55 + 32);
    if (v66)
    {
      sub_1BE051264();
    }

    else
    {
      sub_1BE051234();
    }

    v67 = v95;
    v95 = sub_1BE050564();
    v94 = v68;
    v70 = v69;
    v93 = v71;

    sub_1BD0DDF10(v61, v63, v65 & 1);

    type metadata accessor for ShippingAddressRow();
    sub_1BD70A4D0(v67);
    if (v66)
    {
      (*(v96 + 8))(v67, v97);
      v72 = 2;
    }

    else
    {
      v73 = sub_1BE04F764();
      (*(v96 + 8))(v67, v97);
      if (v73)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }
    }

    v74 = swift_getKeyPath();
    v75 = swift_getKeyPath();
    v76 = v70 & 1;
    LOBYTE(v109) = v70 & 1;
    v115 = 0;
    v77 = swift_getKeyPath();
    v78 = v100;
    v79 = &v100[*(v99 + 36)];
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
    v81 = *MEMORY[0x1E6980FA8];
    v82 = sub_1BE050554();
    (*(*(v82 - 8) + 104))(v79 + v80, v81, v82);
    *v79 = swift_getKeyPath();
    v83 = v94;
    *v78 = v95;
    *(v78 + 8) = v83;
    *(v78 + 16) = v76;
    *(v78 + 24) = v93;
    *(v78 + 32) = v74;
    *(v78 + 40) = v72;
    *(v78 + 48) = 0;
    *(v78 + 56) = v75;
    *(v78 + 64) = 0;
    *(v78 + 72) = v77;
    *(v78 + 80) = 1;
    sub_1BE052434();
    sub_1BD8681EC();
    v84 = v98;
    sub_1BE050DE4();

    sub_1BD0DE53C(v78, &qword_1EBD55FD0);
    v85 = v107;
    sub_1BD0DE204(v84, v107, &qword_1EBD55FD8);
    (*(v102 + 56))(v85, 0, 1, v103);
    v28 = v106;
  }

  else
  {
    (*(v102 + 56))(v107, 1, 1, v103);
  }

  v86 = v101;
  sub_1BD0DE19C(v28, v101, &qword_1EBD3E660);
  v87 = v107;
  v88 = v104;
  sub_1BD0DE19C(v107, v104, &qword_1EBD55FE0);
  v89 = v105;
  sub_1BD0DE19C(v86, v105, &qword_1EBD3E660);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FE8);
  sub_1BD0DE19C(v88, v89 + *(v90 + 48), &qword_1EBD55FE0);
  sub_1BD0DE53C(v87, &qword_1EBD55FE0);
  sub_1BD0DE53C(v28, &qword_1EBD3E660);
  sub_1BD0DE53C(v88, &qword_1EBD55FE0);
  return sub_1BD0DE53C(v86, &qword_1EBD3E660);
}

unint64_t sub_1BD8680E8()
{
  result = qword_1EBD40568;
  if (!qword_1EBD40568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40558);
    sub_1BD2A298C();
    sub_1BD8681A4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40568);
  }

  return result;
}

uint64_t sub_1BD8681A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8681EC()
{
  result = qword_1EBD55FF0;
  if (!qword_1EBD55FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55FD0);
    sub_1BD8682A4();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55FF0);
  }

  return result;
}

unint64_t sub_1BD8682A4()
{
  result = qword_1EBD55FF8;
  if (!qword_1EBD55FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56000);
    sub_1BD86835C();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55FF8);
  }

  return result;
}

unint64_t sub_1BD86835C()
{
  result = qword_1EBD56008;
  if (!qword_1EBD56008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56010);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56008);
  }

  return result;
}

unint64_t sub_1BD868414()
{
  result = qword_1EBD56018;
  if (!qword_1EBD56018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F80);
    sub_1BD8684CC();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56018);
  }

  return result;
}

unint64_t sub_1BD8684CC()
{
  result = qword_1EBD56020;
  if (!qword_1EBD56020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F78);
    sub_1BD868584();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56020);
  }

  return result;
}

unint64_t sub_1BD868584()
{
  result = qword_1EBD56028;
  if (!qword_1EBD56028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F58);
    sub_1BD0DE4F4(&qword_1EBD55F70, &qword_1EBD55F58);
    swift_getOpaqueTypeConformance2();
    sub_1BD8681A4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56028);
  }

  return result;
}

uint64_t sub_1BD8686DC()
{
  v1 = v0;
  v94 = sub_1BE051F54();
  v99 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v2);
  v97 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE051FA4();
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v4);
  v95 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v100 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v103 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v84 - v19;
  v21 = sub_1BE04B3B4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(v0 + 24);
  v26 = *(v0 + 40);
  aBlock = *(v0 + 24);
  v106 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516A4();
  if (*(&v111 + 1))
  {
    return v111;
  }

  v90 = v20;
  v84 = v25;
  v91 = v22;
  v92 = v21;
  v88 = v12;
  v28 = v103;
  v89 = v9;
  v85 = v26;
  v29 = *(v0 + 8);
  if (v29)
  {
    v30 = *v0;
    v31 = v29;
    v93 = v30;
    v32 = sub_1BD2F4DC8(v30);

    v33 = v28;
    v34 = v90;
    v87 = v1;
    v86 = v31;
    if (v32)
    {
      v35 = [v32 savingsDetails];

      if (!v35)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v36 = [v35 productTimeZone];

      if (v36)
      {
        sub_1BE04B394();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v91;
      v39 = v92;
      (*(v91 + 56))(v16, v37, 1, v92);
      sub_1BD196DA8(v16, v34);
      if ((*(v38 + 48))(v34, 1, v39) != 1)
      {
        v42 = v84;
        (*(v38 + 32))(v84, v34, v39);
        v41 = v88;
        if (qword_1EBD36C20 != -1)
        {
          swift_once();
        }

        v43 = qword_1EBDAB168;
        v44 = sub_1BE04B374();
        [v43 setTimeZone_];

        if (qword_1EBD36C28 != -1)
        {
          swift_once();
        }

        v45 = qword_1EBDAB170;
        v46 = sub_1BE04B374();
        [v45 setTimeZone_];

        (*(v91 + 8))(v42, v92);
        LODWORD(v92) = 1;
        v40 = v93;
        goto LABEL_17;
      }
    }

    else
    {
      (*(v91 + 56))(v90, 1, 1, v92);
    }

    sub_1BD0DE53C(v34, &unk_1EBD3D260);
    LODWORD(v92) = 0;
    v40 = v93;
    v41 = v88;
LABEL_17:
    v47 = v89;
    if (qword_1EBD36C20 != -1)
    {
      swift_once();
    }

    v48 = qword_1EBDAB168;
    v49 = [v40 openingDate];
    sub_1BE04AEE4();

    v50 = sub_1BE04AE64();
    v51 = *(v33 + 8);
    v51(v41, v47);
    v52 = [v48 stringFromDate_];

    v53 = sub_1BE052434();
    v103 = v54;

    v55 = v102;
    if (qword_1EBD36C28 != -1)
    {
      swift_once();
    }

    v56 = qword_1EBDAB170;
    v57 = [v40 closingDate];
    sub_1BE04AEE4();

    v58 = sub_1BE04AE64();
    v51(v41, v47);
    v59 = [v56 stringFromDate_];

    v60 = sub_1BE052434();
    v62 = v61;

    v64 = v100;
    v63 = v101;
    (*(v101 + 104))(v100, *MEMORY[0x1E69B80E0], v55);
    v65 = PKPassKitBundle();
    if (v65)
    {
      v66 = v65;
      sub_1BE04B6F4();

      (*(v63 + 8))(v64, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BE0B6CA0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1BD110550();
      v70 = v103;
      *(v67 + 32) = v53;
      *(v67 + 40) = v70;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v60;
      *(v67 + 80) = v62;
      v27 = sub_1BE052454();
      v72 = v71;

      if (v92)
      {
        sub_1BD14BE3C();
        v73 = sub_1BE052D54();
        v111 = v110;
        v112 = v85;
        v74 = swift_allocObject();
        v75 = v87;
        v76 = v87[1];
        *(v74 + 16) = *v87;
        *(v74 + 32) = v76;
        *(v74 + 48) = v75[2];
        *(v74 + 64) = v27;
        *(v74 + 72) = v72;
        v108 = sub_1BD869B80;
        v109 = v74;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v106 = sub_1BD126964;
        v107 = &block_descriptor_194;
        v77 = _Block_copy(&aBlock);
        v78 = v86;
        v79 = v93;
        sub_1BD0DE19C(&v111, v104, &qword_1EBD3A5C8);
        sub_1BD0DE19C(&v112, v104, &qword_1EBD56050);
        sub_1BE048C84();

        v80 = v95;
        sub_1BE051F74();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD869C84(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
        v81 = v97;
        v82 = v94;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v80, v81, v77);
        _Block_release(v77);

        (*(v99 + 8))(v81, v82);
        (*(v96 + 8))(v80, v98);
      }

      return v27;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD869C84(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD869258()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8692BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56038);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56040);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v25 - v15;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370);
  sub_1BD86957C(v2, &v11[*(v17 + 44)]);
  LOBYTE(v2) = sub_1BE050234();
  sub_1BE04E1F4();
  v18 = &v11[*(v8 + 36)];
  *v18 = v2;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_1BE04FF44();
  v23 = sub_1BD8699E4();
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v11, &qword_1EBD56038);
  sub_1BE052434();
  v25[2] = v8;
  v25[3] = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v13 + 8))(v16, v12);
}

id sub_1BD86957C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v54 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  v60 = sub_1BD8686DC();
  v61 = v15;
  v58 = sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  sub_1BE051234();
  v21 = sub_1BE050564();
  v23 = v22;
  v25 = v24;

  sub_1BD0DDF10(v16, v18, v20 & 1);

  sub_1BE0502A4();
  v26 = sub_1BE0505F4();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  v60 = v26;
  v61 = v28;
  v62 = v16 & 1;
  v63 = v31;
  sub_1BE052434();
  v53 = v14;
  sub_1BE050DE4();

  sub_1BD0DDF10(v26, v28, v16 & 1);

  sub_1BD869A9C(*v59);
  v60 = v32;
  v61 = v33;
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  if (result)
  {
    sub_1BE050484();
    v40 = sub_1BE0505F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    sub_1BD0DDF10(v34, v36, v38 & 1);

    v60 = v40;
    v61 = v42;
    v62 = v44 & 1;
    v63 = v46;
    sub_1BE052434();
    v47 = v54;
    sub_1BE050DE4();

    sub_1BD0DDF10(v40, v42, v44 & 1);

    v48 = v53;
    v49 = v55;
    sub_1BD0DE19C(v53, v55, &qword_1EBD452C0);
    v50 = v57;
    sub_1BD0DE19C(v47, v57, &qword_1EBD452C0);
    v51 = v56;
    sub_1BD0DE19C(v49, v56, &qword_1EBD452C0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
    sub_1BD0DE19C(v50, v51 + *(v52 + 48), &qword_1EBD452C0);
    sub_1BD0DE53C(v47, &qword_1EBD452C0);
    sub_1BD0DE53C(v48, &qword_1EBD452C0);
    sub_1BD0DE53C(v50, &qword_1EBD452C0);
    return sub_1BD0DE53C(v49, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD8699E4()
{
  result = qword_1EBD56048;
  if (!qword_1EBD56048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56038);
    sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56048);
  }

  return result;
}

void sub_1BD869A9C(void *a1)
{
  v2 = [a1 closingBalance];
  v3 = [a1 currencyCode];
  if (!v3)
  {
    sub_1BE052434();
    v3 = sub_1BE052404();
  }

  v4 = PKCurrencyAmountMake();

  if (v4)
  {
    v5 = [v4 formattedStringValue];

    if (v5)
    {
      sub_1BE052434();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD869B8C()
{
  result = qword_1EBD56058;
  if (!qword_1EBD56058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD56060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56038);
    sub_1BD8699E4();
    swift_getOpaqueTypeConformance2();
    sub_1BD869C84(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56058);
  }

  return result;
}

uint64_t sub_1BD869C84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD869CD0()
{
  result = qword_1EBD56070;
  if (!qword_1EBD56070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56070);
  }

  return result;
}

unint64_t sub_1BD869D28()
{
  result = qword_1EBD56078;
  if (!qword_1EBD56078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56078);
  }

  return result;
}

double sub_1BD869DB4@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD869F48()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB740);
  __swift_project_value_buffer(v9, qword_1EBDAB740);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD86A27C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56160);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v29 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56168);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v27 = &v23 - v14;
  v34 = 7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56170);
  v25 = sub_1BD15D0F8();
  sub_1BD15D344();
  sub_1BD0DE4F4(&qword_1EBD56180, &unk_1EBD56170);
  v26 = v15;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD56188, &qword_1EBD56168);
  v16 = v8;
  sub_1BE048ED4();
  v24 = *(v33 + 8);
  v33 += 8;
  v24(v11, v8);
  v17 = v28;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD56190, &qword_1EBD56160);
  v18 = v29;
  v19 = v30;
  sub_1BE048ED4();
  v20 = *(v31 + 8);
  v20(v17, v19);
  v21 = v27;
  sub_1BE048EB4();
  v20(v18, v19);
  return (v24)(v21, v16);
}

uint64_t sub_1BD86A678()
{
  swift_getKeyPath();
  sub_1BD15D0F8();
  v0 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v1 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v2 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v3 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v4 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v5 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v6 = sub_1BE048964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0FE6A0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  sub_1BE048964();
  v8 = sub_1BE048C84();

  return v8;
}

uint64_t sub_1BD86A8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56198);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD561A0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56170);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v18 - v13;
  sub_1BD15D0F8();
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD561A8);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CB4();
  v15 = sub_1BD0DE4F4(&qword_1EBD56180, &unk_1EBD56170);
  MEMORY[0x1BFB35E60](v10, &type metadata for SearchTransactionsIntent, v6, v15);
  v16 = *(v7 + 8);
  v16(v10, v6);
  MEMORY[0x1BFB35E50](v14, &type metadata for SearchTransactionsIntent, v6, v15);
  return (v16)(v14, v6);
}

uint64_t sub_1BD86ABB8()
{
  swift_getKeyPath();
  sub_1BD15D0F8();
  v0 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v1 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v2 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v3 = sub_1BE048964();

  swift_getKeyPath();
  sub_1BE048964();
  v4 = sub_1BE048964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0FE6B0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  sub_1BE048964();
  v6 = sub_1BE048C84();

  return v6;
}

uint64_t sub_1BD86AD6C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_1BE04D214();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v2[33] = swift_task_alloc();
  v4 = sub_1BE04AFE4();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_1BE04B0D4();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_1BE04B0F4();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC98);
  v2[43] = swift_task_alloc();
  v7 = sub_1BE04CFC4();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v8 = sub_1BE04CFE4();
  v2[48] = v8;
  v2[49] = *(v8 - 8);
  v2[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD86B074, 0, 0);
}

uint64_t sub_1BD86B074()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:SearchTransactionsIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v11 = *(v0 + 352);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  *(v0 + 408) = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 coordinator];
  *(v0 + 416) = v13;

  if (v13)
  {
    *(v0 + 424) = **(v0 + 232);
    sub_1BE048874();
    v14 = *(v0 + 32);
    *(v0 + 432) = v14;
    v15 = v14;
    sub_1BD030458(v0 + 16);
    v16 = [objc_opt_self() sharedInstance];
    *(v0 + 440) = v16;
    if (v16)
    {
      v17 = v16;
      if (PKSupportsSearchForPass())
      {
        v18 = swift_task_alloc();
        *(v0 + 448) = v18;
        *v18 = v0;
        v18[1] = sub_1BD86B4DC;

        return sub_1BD99C8D8(v15);
      }
    }

    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD86C508();
  }

  else
  {
    sub_1BE04D074();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "SearchTransactionsIntent: PKAppIntentCoordinator was nil", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 240);

    (*(v24 + 8))(v23, v25);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD86C508();
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1BD86B4DC(char a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_1BD86B9E4;
  }

  else
  {
    *(v4 + 521) = a1 & 1;
    v5 = sub_1BD86B608;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD86B608()
{
  v1 = *(v0 + 521);
  v2 = *(v0 + 440);

  if (v1)
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
LABEL_10:
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD86C508();

    v24 = *(v0 + 8);

    return v24();
  }

  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_1BE04B0A4();
  sub_1BE04B0E4();
  (*(v6 + 8))(v4, v5);
  sub_1BE04B0B4();
  (*(v8 + 8))(v7, v9);
  v10 = sub_1BE04B014();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {
    sub_1BD0DE53C(*(v0 + 344), &qword_1EBD4FC98);
LABEL_9:
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    goto LABEL_10;
  }

  v12 = *(v0 + 344);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v15 = *(v0 + 272);
  sub_1BE04B004();
  (*(v11 + 8))(v12, v10);
  sub_1BE04AFD4();
  sub_1BE04AF74();
  (*(v14 + 8))(v13, v15);
  sub_1BE048874();
  sub_1BE048C84();
  sub_1BD030458(v0 + 80);
  v16 = objc_allocWithZone(MEMORY[0x1E69B92F0]);
  v17 = sub_1BE052404();

  v18 = sub_1BE052404();

  v19 = sub_1BE052404();

  v20 = [v16 initWithIdentifier:v17 keyboardLanguage:v18 passUniqueIdentifier:v19];
  *(v0 + 464) = v20;

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  v22 = swift_task_alloc();
  *(v0 + 472) = v22;
  *v22 = v0;
  v22[1] = sub_1BD86BAE4;

  return sub_1BD86C7F4();
}

uint64_t sub_1BD86B9E4()
{
  v1 = *(v0 + 432);

  swift_unknownObjectRelease();
  sub_1BD86C508();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD86BAE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {

    v5 = sub_1BD86C40C;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_1BD86BC14;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD86BC14()
{
  v1 = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56128);
  v2 = sub_1BE052724();

  [v1 setTokens_];

  sub_1BE048874();
  if (v0[27])
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[58];
  [v4 setText_];

  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_1BD86BD64;

  return sub_1BD0D7278();
}

uint64_t sub_1BD86BD64(char a1)
{
  *(*v1 + 522) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD86BE64, 0, 0);
}

uint64_t sub_1BD86BE64()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  if (*(v0 + 522) == 1)
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 232);
    v5 = sub_1BE0528D4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1BE0528A4();
    v6 = v1;
    swift_unknownObjectRetain();
    sub_1BD871118(v4, v0 + 144);
    v7 = sub_1BE052894();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v8 + 32) = v2;
    v10 = v4[2];
    v11 = v4[3];
    v12 = v4[1];
    *(v8 + 40) = *v4;
    *(v8 + 88) = v11;
    *(v8 + 72) = v10;
    *(v8 + 56) = v12;
    *(v8 + 104) = v6;
    v13 = sub_1BD123214(0, 0, v3, &unk_1BE0FE898, v8);
    *(v0 + 504) = v13;
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    *v14 = v0;
    v14[1] = sub_1BD86C118;
    v15 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DA40](v0 + 520, v13, v15);
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1BD86C508();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1BD86C118()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD86C230, 0, 0);
}

uint64_t sub_1BD86C230()
{
  v1 = *(v0 + 464);
  if (*(v0 + 520) == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD86C508();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD86C40C()
{
  swift_unknownObjectRelease();
  sub_1BD86C508();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD86C508()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:SearchTransactionsIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD86C7F4()
{
  v1[24] = v0;
  v1[22] = MEMORY[0x1E69E7CC0];
  v2 = swift_task_alloc();
  v1[25] = v2;
  *v2 = v1;
  v2[1] = sub_1BD86C890;

  return sub_1BD86D540();
}

uint64_t sub_1BD86C890(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1BD86D19C;
  }

  else
  {
    v4 = sub_1BD86C9A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD86C9A4()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v3 = *(v0 + 176);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1BE048874();
  v4 = *(v0 + 272);
  if (v4 != 8)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69B8EB0]) init];
    [v5 setType_];
    [v5 setMerchantCategory_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69B91D0]) init];
    [v6 setGroup_];
    v7 = v6;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v3 = *(v0 + 176);
  }

  sub_1BE048874();
  v8 = *(v0 + 273);
  if (v8 != 12)
  {
    if (sub_1BD231C4C(*(v0 + 273)) == 0x6E776F6E6B6E75 && v9 == 0xE700000000000000)
    {
    }

    else
    {
      v10 = sub_1BE053B84();

      if ((v10 & 1) == 0)
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E69B91C8]) init];
        v12 = sub_1BD231BFC(v8);
        [v11 setTag_];

        v13 = v11;
        MEMORY[0x1BFB3F7A0]();
        if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v3 = *(v0 + 176);
      }
    }
  }

  *(v0 + 224) = v3;
  sub_1BE048874();
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  *(v0 + 232) = v15;
  *(v0 + 248) = *(v0 + 168);
  v16 = v15;
  if (v15)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    *(v0 + 256) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    *(v18 + 32) = v14;
    *(v18 + 40) = v16;
    sub_1BE048C84();
    v19 = sub_1BE052724();
    *(v0 + 264) = v19;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_1BD86CE30;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD994558;
    *(v0 + 104) = &block_descriptor_17_3;
    *(v0 + 112) = v20;
    [v17 regionsWithIdentifiers:v19 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v21 = *(v0 + 8);

    return v21(v3);
  }
}

uint64_t sub_1BD86CE30()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD86CF10, 0, 0);
}

uint64_t sub_1BD86CF10()
{
  v1 = *(v0 + 184);

  if (!v1)
  {

LABEL_13:

    v5 = (v0 + 224);
    goto LABEL_14;
  }

  if (v1 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_4:
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
  v5 = (v0 + 176);

  v6 = [objc_allocWithZone(MEMORY[0x1E69B8EB0]) init];
  [v6 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B7020;
  *(v7 + 32) = v4;
  sub_1BD871218();
  v8 = v4;
  v9 = sub_1BE052724();

  [v6 setRegions_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69B91D0]) init];
  [v10 setGroup_];
  v11 = v10;
  MEMORY[0x1BFB3F7A0]();
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  v12 = *(v0 + 256);
  sub_1BE0527C4();

LABEL_14:
  v13 = *v5;
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1BD86D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  sub_1BE0528A4();
  v6[30] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[31] = v8;
  v6[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD86D250, v8, v7);
}

uint64_t sub_1BD86D250()
{
  v1 = v0[29];
  v2 = v0[27];
  sub_1BE048874();
  sub_1BE048C84();
  sub_1BD030458((v0 + 10));
  v3 = sub_1BE052404();
  v0[33] = v3;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1BD86D3C4;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1BD68F38C;
  v0[21] = &block_descriptor_195;
  v0[22] = v4;
  [v2 presentSearchForPassWithUniqueID:v3 withQuery:v1 completion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD86D3C4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD86D4CC, v2, v1);
}

uint64_t sub_1BD86D4CC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);

  *v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD86D540()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  v1[6] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE04B2F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD86D8C4, 0, 0);
}

uint64_t sub_1BD86D8C4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B9190]) init];
  *(v0 + 328) = v1;
  sub_1BE04AEF4();
  sub_1BE048874();
  v2 = *(v0 + 416);
  if (v2 <= 3)
  {
    if (*(v0 + 416) > 1u)
    {
      if (v2 == 2)
      {
        v129 = *(v0 + 184);
        v130 = *(v0 + 160);
        v132 = *(v0 + 176);
        v10 = *(v0 + 88);
        v9 = *(v0 + 96);
        v12 = *(v0 + 72);
        v11 = *(v0 + 80);
        v13 = *(v0 + 64);
        v127 = *(v0 + 168);
        v128 = *(v0 + 56);
        v15 = *(v0 + 40);
        v14 = *(v0 + 48);
        [v1 setType_];
        sub_1BE04B2A4();
        (*(v10 + 56))(v14, 1, 1, v11);
        v16 = sub_1BE04B3B4();
        (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
        LOBYTE(v126) = 1;
        LOBYTE(v125) = 1;
        LOBYTE(v124) = 1;
        LOBYTE(v123) = 1;
        LOBYTE(v122) = 1;
        LOBYTE(v121) = 1;
        LOBYTE(v120) = 1;
        LOBYTE(v119) = 1;
        LOBYTE(v118) = 1;
        LOBYTE(v117) = 1;
        LOBYTE(v116) = 0;
        sub_1BE04A454();
        sub_1BE04B214();
        (*(v13 + 8))(v12, v128);
        (*(v10 + 8))(v9, v11);
        sub_1BD15D62C(v127, v130);
        v17 = *(v129 + 48);
        v18 = 0;
        if (v17(v130, 1, v132) != 1)
        {
          v19 = *(v0 + 176);
          v20 = *(v0 + 184);
          v21 = *(v0 + 160);
          v18 = sub_1BE04AE64();
          (*(v20 + 8))(v21, v19);
        }

        v22 = PKStartOfDay();

        if (v22)
        {
          v23 = *(v0 + 296);
          v24 = *(v0 + 176);
          v25 = *(v0 + 184);
          sub_1BE04AEE4();

          v26 = sub_1BE04AE64();
          (*(v25 + 8))(v23, v24);
        }

        else
        {
          v26 = 0;
        }

        v70 = *(v0 + 168);
        v69 = *(v0 + 176);
        v71 = *(v0 + 152);
        [v1 setStartDate_];

        sub_1BD15D62C(v70, v71);
        if (v17(v71, 1, v69) == 1)
        {
          v72 = 0;
        }

        else
        {
          v73 = *(v0 + 176);
          v74 = *(v0 + 184);
          v75 = *(v0 + 152);
          v72 = sub_1BE04AE64();
          (*(v74 + 8))(v75, v73);
        }

        v76 = PKEndOfDay();

        if (v76)
        {
          v77 = *(v0 + 288);
          v78 = *(v0 + 176);
          v79 = *(v0 + 184);
          sub_1BE04AEE4();

          v80 = sub_1BE04AE64();
          (*(v79 + 8))(v77, v78);
        }

        else
        {
          v80 = 0;
        }

        v87 = *(v0 + 184);
        v90 = *(v0 + 168);
        [v1 setEndDate_];

        sub_1BD0DE53C(v90, &unk_1EBD39970);
        goto LABEL_53;
      }

      [v1 setType_];
      v45 = sub_1BE04AE64();
      v46 = PKStartOfMonth();

      if (v46)
      {
        v47 = *(v0 + 280);
        v48 = *(v0 + 176);
        v49 = *(v0 + 184);
        sub_1BE04AEE4();

        v50 = sub_1BE04AE64();
        (*(v49 + 8))(v47, v48);
      }

      else
      {
        v50 = 0;
      }

      [v1 setStartDate_];

      v84 = sub_1BE04AE64();
      v67 = PKEndOfMonth();

      if (!v67)
      {
LABEL_52:
        v87 = *(v0 + 184);
        [v1 setEndDate_];

LABEL_53:
        v88 = *(v87 + 8);
LABEL_54:
        v131 = *(v0 + 328);
        v88(*(v0 + 320), *(v0 + 176));
        goto LABEL_55;
      }

      v68 = *(v0 + 272);
    }

    else
    {
      if (!*(v0 + 416))
      {
        (*(*(v0 + 184) + 8))(*(v0 + 320), *(v0 + 176));

        v131 = 0;
LABEL_55:

        v89 = *(v0 + 8);

        return v89(v131);
      }

      [v1 setType_];
      v33 = sub_1BE04AE64();
      v34 = PKStartOfDay();

      if (v34)
      {
        v35 = *(v0 + 312);
        v36 = *(v0 + 176);
        v37 = *(v0 + 184);
        sub_1BE04AEE4();

        v38 = sub_1BE04AE64();
        (*(v37 + 8))(v35, v36);
      }

      else
      {
        v38 = 0;
      }

      [v1 setStartDate_];

      v82 = sub_1BE04AE64();
      v67 = PKEndOfDay();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 304);
    }

LABEL_51:
    v85 = *(v0 + 176);
    v86 = *(v0 + 184);
    sub_1BE04AEE4();

    v67 = sub_1BE04AE64();
    (*(v86 + 8))(v68, v85);
    goto LABEL_52;
  }

  if (*(v0 + 416) <= 5u)
  {
    if (v2 == 4)
    {
      [v1 setType_];
      v3 = sub_1BE04AE64();
      v4 = PKStartOfLastMonth();

      if (v4)
      {
        v5 = *(v0 + 264);
        v6 = *(v0 + 176);
        v7 = *(v0 + 184);
        sub_1BE04AEE4();

        v8 = sub_1BE04AE64();
        (*(v7 + 8))(v5, v6);
      }

      else
      {
        v8 = 0;
      }

      [v1 setStartDate_];

      v66 = sub_1BE04AE64();
      v67 = PKEndOfLastMonth();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 256);
    }

    else
    {
      [v1 setType_];
      v39 = sub_1BE04AE64();
      v40 = PKStartOfYear();

      if (v40)
      {
        v41 = *(v0 + 248);
        v42 = *(v0 + 176);
        v43 = *(v0 + 184);
        sub_1BE04AEE4();

        v44 = sub_1BE04AE64();
        (*(v43 + 8))(v41, v42);
      }

      else
      {
        v44 = 0;
      }

      [v1 setStartDate_];

      v83 = sub_1BE04AE64();
      v67 = PKEndOfYear();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 240);
    }

    goto LABEL_51;
  }

  if (v2 == 6)
  {
    [v1 setType_];
    v27 = sub_1BE04AE64();
    v28 = PKStartOfLastYear();

    if (v28)
    {
      v29 = *(v0 + 232);
      v30 = *(v0 + 176);
      v31 = *(v0 + 184);
      sub_1BE04AEE4();

      v32 = sub_1BE04AE64();
      (*(v31 + 8))(v29, v30);
    }

    else
    {
      v32 = 0;
    }

    [v1 setStartDate_];

    v81 = sub_1BE04AE64();
    v67 = PKEndOfLastYear();

    if (!v67)
    {
      goto LABEL_52;
    }

    v68 = *(v0 + 224);
    goto LABEL_51;
  }

  v51 = *(v0 + 176);
  v52 = *(v0 + 184);
  v53 = *(v0 + 144);
  *(v0 + 336) = *(*(v0 + 16) + 16);
  sub_1BE048874();
  v54 = *(v52 + 48);
  *(v0 + 344) = v54;
  *(v0 + 352) = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v51) = v54(v53, 1, v51);
  sub_1BD0DE53C(v53, &unk_1EBD39970);
  if (v51 == 1)
  {
    v55 = *(v0 + 32);
    *(v0 + 360) = sub_1BE048894();
    v56 = sub_1BE048654();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = sub_1BD86E6C8;
    v58 = *(v0 + 216);
    v59 = *(v0 + 32);
  }

  else
  {
    v60 = *(v0 + 344);
    v61 = *(v0 + 176);
    v62 = *(v0 + 120);
    *(v0 + 384) = *(*(v0 + 16) + 24);
    sub_1BE048874();
    LODWORD(v61) = v60(v62, 1, v61);
    sub_1BD0DE53C(v62, &unk_1EBD39970);
    if (v61 != 1)
    {
      v91 = *(v0 + 344);
      v92 = *(v0 + 176);
      v93 = *(v0 + 112);
      sub_1BE048874();
      if (v91(v93, 1, v92) == 1)
      {
        v94 = *(v0 + 328);
        v95 = *(v0 + 112);
        (*(*(v0 + 184) + 8))(*(v0 + 320), *(v0 + 176));

        v96 = v95;
      }

      else
      {
        v97 = *(v0 + 344);
        v98 = *(v0 + 176);
        v99 = *(v0 + 104);
        v100 = *(*(v0 + 184) + 32);
        v100(*(v0 + 200), *(v0 + 112), v98);
        sub_1BE048874();
        v101 = v97(v99, 1, v98);
        v102 = *(v0 + 328);
        if (v101 != 1)
        {
          v110 = *(v0 + 192);
          v109 = *(v0 + 200);
          v111 = *(v0 + 176);
          v112 = *(v0 + 184);
          v100(v110, *(v0 + 104), v111);
          [v102 setType_];
          v113 = sub_1BE04AE64();
          [v102 setStartDate_];

          v114 = sub_1BE04AE64();
          [v102 setEndDate_];

          v88 = *(v112 + 8);
          v88(v110, v111);
          v88(v109, v111);
          goto LABEL_54;
        }

        v103 = *(v0 + 320);
        v104 = *(v0 + 200);
        v105 = *(v0 + 176);
        v106 = *(v0 + 184);
        v107 = *(v0 + 104);

        v108 = *(v106 + 8);
        v108(v104, v105);
        v108(v103, v105);
        v96 = v107;
      }

      sub_1BD0DE53C(v96, &unk_1EBD39970);
      v131 = 0;
      goto LABEL_55;
    }

    v63 = *(v0 + 24);
    *(v0 + 392) = sub_1BE048894();
    v64 = sub_1BE048654();
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
    v65 = swift_task_alloc();
    *(v0 + 400) = v65;
    *v65 = v0;
    v65[1] = sub_1BD86ED98;
    v58 = *(v0 + 208);
    v59 = *(v0 + 24);
  }

  return MEMORY[0x1EEDB33A8](v58, v59);
}

uint64_t sub_1BD86E6C8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 376) = v0;

  sub_1BD0DE53C(v2, &qword_1EBD39290);

  if (v0)
  {
    v3 = sub_1BD86F340;
  }

  else
  {
    v3 = sub_1BD86E82C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD86E82C()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970);
  (*(v3 + 8))(v1, v2);
  v6 = v0[43];
  v7 = v0[22];
  v8 = v0[15];
  v0[48] = *(v0[2] + 24);
  sub_1BE048874();
  LODWORD(v7) = v6(v8, 1, v7);
  sub_1BD0DE53C(v8, &unk_1EBD39970);
  if (v7 == 1)
  {
    v9 = v0[3];
    v0[49] = sub_1BE048894();
    v10 = sub_1BE048654();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_task_alloc();
    v0[50] = v11;
    *v11 = v0;
    v11[1] = sub_1BD86ED98;
    v12 = v0[26];
    v13 = v0[3];

    return MEMORY[0x1EEDB33A8](v12, v13);
  }

  v14 = v0[43];
  v15 = v0[22];
  v16 = v0[14];
  sub_1BE048874();
  if (v14(v16, 1, v15) == 1)
  {
    v17 = v0[41];
    v18 = v0[14];
    (*(v0[23] + 8))(v0[40], v0[22]);
  }

  else
  {
    v19 = v0[43];
    v20 = v0[22];
    v21 = v0[13];
    v22 = *(v0[23] + 32);
    v22(v0[25], v0[14], v20);
    sub_1BE048874();
    v23 = v19(v21, 1, v20);
    v24 = v0[41];
    v25 = v0[22];
    v26 = v0[23];
    v18 = v0[13];
    if (v23 != 1)
    {
      v31 = v0[24];
      v30 = v0[25];
      v22(v31, v0[13], v0[22]);
      [v24 setType_];
      v32 = sub_1BE04AE64();
      [v24 setStartDate_];

      v33 = sub_1BE04AE64();
      [v24 setEndDate_];

      v34 = *(v26 + 8);
      v34(v31, v25);
      v34(v30, v25);
      v37 = v0[41];
      v34(v0[40], v0[22]);
      goto LABEL_11;
    }

    v27 = v0[40];
    v28 = v0[25];

    v29 = *(v26 + 8);
    v29(v28, v25);
    v29(v27, v25);
  }

  sub_1BD0DE53C(v18, &unk_1EBD39970);
  v37 = 0;
LABEL_11:

  v35 = v0[1];

  return v35(v37);
}

uint64_t sub_1BD86ED98()
{
  v2 = *(*v1 + 24);
  *(*v1 + 408) = v0;

  sub_1BD0DE53C(v2, &qword_1EBD39290);

  if (v0)
  {
    v3 = sub_1BD86F55C;
  }

  else
  {
    v3 = sub_1BD86EEFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD86EEFC()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970);
  (*(v3 + 8))(v1, v2);
  v6 = v0[43];
  v7 = v0[22];
  v8 = v0[14];
  sub_1BE048874();
  if (v6(v8, 1, v7) == 1)
  {
    v9 = v0[41];
    v10 = v0[14];
    (*(v0[23] + 8))(v0[40], v0[22]);

LABEL_5:
    sub_1BD0DE53C(v10, &unk_1EBD39970);
    v29 = 0;
    goto LABEL_7;
  }

  v11 = v0[43];
  v12 = v0[22];
  v13 = v0[13];
  v14 = *(v0[23] + 32);
  v14(v0[25], v0[14], v12);
  sub_1BE048874();
  v15 = v11(v13, 1, v12);
  v16 = v0[41];
  v17 = v0[22];
  v18 = v0[23];
  v10 = v0[13];
  if (v15 == 1)
  {
    v19 = v0[40];
    v20 = v0[25];

    v21 = *(v18 + 8);
    v21(v20, v17);
    v21(v19, v17);
    goto LABEL_5;
  }

  v23 = v0[24];
  v22 = v0[25];
  v14(v23, v0[13], v0[22]);
  [v16 setType_];
  v24 = sub_1BE04AE64();
  [v16 setStartDate_];

  v25 = sub_1BE04AE64();
  [v16 setEndDate_];

  v26 = *(v18 + 8);
  v26(v23, v17);
  v26(v22, v17);
  v29 = v0[41];
  v26(v0[40], v0[22]);
LABEL_7:

  v27 = v0[1];

  return v27(v29);
}

uint64_t sub_1BD86F340()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD86F55C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD86F778@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB740);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD86F820(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56150);
  v5 = sub_1BD0DE4F4(&qword_1EBD56158, &qword_1EBD56150);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD86A27C, 0, v4, a2, v5);
}

uint64_t sub_1BD86F8E8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1BD86F994;

  return sub_1BD86AD6C(a1);
}

uint64_t sub_1BD86F994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1BD86FA88@<D0>(_OWORD *a1@<X8>)
{
  sub_1BD86FB14(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_1BD86FAC8(uint64_t a1)
{
  v2 = sub_1BD15D0F8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD86FB14@<X0>(uint64_t *a1@<X8>)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v98 = &v91 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD560B0);
  v95 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v4);
  v96 = &v91 - v5;
  v118 = sub_1BE048D74();
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v6);
  v116 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v102 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v108 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v119 = &v91 - v16;
  v17 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1BE04A874();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v111 = sub_1BE04A884();
  v117 = *(v111 - 8);
  v29 = MEMORY[0x1EEE9AC00](v111, v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v91 - v31;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_1EBDAB400);
  v34 = *(v22 + 16);
  v34(v25, v33, v21);
  sub_1BE04B0A4();
  v107 = v32;
  sub_1BE04A894();
  sub_1BE052354();
  v109 = v33;
  v110 = v21;
  v105 = v22 + 16;
  v34(v25, v33, v21);
  v106 = v34;
  sub_1BE04B0A4();
  v35 = v119;
  sub_1BE04A894();
  v36 = *(v117 + 56);
  v117 += 56;
  v112 = v36;
  v36(v35, 0, 1, v111);
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  sub_1BE052354();
  v34(v25, v33, v21);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v37 = v108;
  sub_1BE048664();
  v38 = sub_1BE048654();
  v113 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v41 = v39 + 56;
  v40(v37, 0, 1, v38);
  v40(v102, 1, 1, v38);
  v115 = *MEMORY[0x1E695A500];
  v114 = *(v120 + 104);
  v120 += 104;
  v114(v116);
  sub_1BD87101C();
  sub_1BD0304AC();
  v97 = sub_1BE0488B4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560D0);
  sub_1BE052354();
  v42 = v109;
  v43 = v110;
  v44 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v44(v25, v42, v43);
  sub_1BE04B0A4();
  v45 = v119;
  sub_1BE04A894();
  v46 = v111;
  v112(v45, 0, 1, v111);
  LOBYTE(v121) = 0;
  v47 = v113;
  v103 = v40;
  v104 = v41;
  v40(v108, 1, 1, v113);
  v40(v102, 1, 1, v47);
  v48 = v116;
  (v114)(v116, v115, v118);
  sub_1BD871070();
  v49 = v48;
  v94 = sub_1BE0488A4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E0);
  sub_1BE052354();
  v50 = v109;
  v51 = v110;
  v52 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v52(v25, v50, v51);
  sub_1BE04B0A4();
  v53 = v119;
  sub_1BE04A894();
  v112(v53, 0, 1, v46);
  v103(v108, 1, 1, v113);
  LODWORD(v93) = *MEMORY[0x1E695A198];
  v92 = *(v95 + 104);
  v54 = v96;
  v92(v96);
  (v114)(v49, v115, v118);
  v95 = sub_1BE0488E4();
  sub_1BE052354();
  v55 = v109;
  v56 = v110;
  v57 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v57(v25, v55, v56);
  sub_1BE04B0A4();
  v58 = v119;
  sub_1BE04A894();
  v112(v58, 0, 1, v111);
  v59 = v108;
  v103(v108, 1, 1, v113);
  (v92)(v54, v93, v101);
  (v114)(v116, v115, v118);
  v92 = v20;
  v60 = v59;
  v101 = sub_1BE0488E4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E8);
  sub_1BE052354();
  v61 = v109;
  v62 = v110;
  v57(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v57(v25, v61, v62);
  sub_1BE04B0A4();
  v63 = v119;
  sub_1BE04A894();
  v112(v63, 0, 1, v111);
  LOBYTE(v121) = 8;
  v64 = v113;
  v65 = v103;
  v103(v60, 1, 1, v113);
  v66 = v102;
  v65(v102, 1, 1, v64);
  (v114)(v116, v115, v118);
  sub_1BD0F0AB4();
  v67 = v66;
  v100 = sub_1BE0488A4();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560F8);
  sub_1BE052354();
  v68 = v109;
  v69 = v110;
  v70 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v70(v25, v68, v69);
  sub_1BE04B0A4();
  v71 = v119;
  sub_1BE04A894();
  v112(v71, 0, 1, v111);
  LOBYTE(v121) = 12;
  v72 = v108;
  v73 = v113;
  v74 = v103;
  v103(v108, 1, 1, v113);
  v74(v67, 1, 1, v73);
  (v114)(v116, v115, v118);
  sub_1BD2336F8();
  v96 = sub_1BE0488A4();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620);
  sub_1BE052354();
  v75 = v109;
  v76 = v110;
  v77 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v77(v25, v75, v76);
  sub_1BE04B0A4();
  v78 = v119;
  sub_1BE04A894();
  v112(v78, 0, 1, v111);
  v79 = sub_1BE052344();
  v121 = 0uLL;
  (*(*(v79 - 8) + 56))(v98, 1, 1, v79);
  v80 = v103;
  v103(v72, 1, 1, v113);
  (v114)(v116, v115, v118);
  v98 = sub_1BE0488F4();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56110);
  sub_1BE052354();
  v81 = v109;
  v82 = v110;
  v83 = v106;
  v106(v25, v109, v110);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v83(v25, v81, v82);
  sub_1BE04B0A4();
  v84 = v119;
  sub_1BE04A894();
  v112(v84, 0, 1, v111);
  v121 = 0u;
  v122 = 0u;
  v85 = v113;
  v80(v108, 1, 1, v113);
  v80(v102, 1, 1, v85);
  (v114)(v116, v115, v118);
  sub_1BD8710C4();
  result = sub_1BE0488C4();
  v87 = v99;
  v88 = v94;
  *v99 = v97;
  v87[1] = v88;
  v89 = v101;
  v87[2] = v95;
  v87[3] = v89;
  v90 = v96;
  v87[4] = v100;
  v87[5] = v90;
  v87[6] = v98;
  v87[7] = result;
  return result;
}

unint64_t sub_1BD87101C()
{
  result = qword_1EBD560C0;
  if (!qword_1EBD560C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560C0);
  }

  return result;
}

unint64_t sub_1BD871070()
{
  result = qword_1EBD560D8;
  if (!qword_1EBD560D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560D8);
  }

  return result;
}

unint64_t sub_1BD8710C4()
{
  result = qword_1EBD56118;
  if (!qword_1EBD56118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56118);
  }

  return result;
}

uint64_t sub_1BD871150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD86D1B4(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_1BD871218()
{
  result = qword_1EBD56140;
  if (!qword_1EBD56140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD56140);
  }

  return result;
}

id sub_1BD87126C(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_outputObjects] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_identifier];
  *v8 = 0xD000000000000016;
  v8[1] = 0x80000001BE13D850;
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection__manualEntryOptions] = &type metadata for ManualEntryOptions;
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_showBrowseBanks] = a2;
  v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_fromWelcomeScreen] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

_BYTE *sub_1BD87141C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for ProvisioningHeroFlowItem();
    if (swift_dynamicCastClass())
    {
      KeyPath = swift_getKeyPath();
      sub_1BD187078(v1, v31);
      sub_1BD7CD0C0();
      v4 = v35;
      sub_1BD7CD0C0();
      if ((sub_1BD6CBE60(v4, v32) & 1) != 0 && (sub_1BD6CBE60(v4, v33) & 1) == 0)
      {
        v5 = v35;
      }

      else
      {
        v5 = byte_1F3B8C820;
        sub_1BD7CD0C0();
        if (sub_1BD6CBE60(v5, v32) & 1) == 0 || (sub_1BD6CBE60(v5, v33))
        {
          v5 = byte_1F3B8C821;
          sub_1BD7CD0C0();
          if (sub_1BD6CBE60(v5, v32) & 1) == 0 || (sub_1BD6CBE60(v5, v33))
          {
            v5 = byte_1F3B8C822;
            sub_1BD7CD0C0();
            if (sub_1BD6CBE60(v5, v32) & 1) == 0 || (sub_1BD6CBE60(v5, v33))
            {
              v5 = 3;
            }
          }
        }
      }

      v24 = v1;
      sub_1BD12F5D4(v31, v24, KeyPath);

      v42 = v32;
      sub_1BD58532C(&v42);
      v43 = v33;
      sub_1BD58532C(&v43);
      v44 = v34;
      sub_1BD58532C(&v44);
      if (v5 == 3)
      {
        return 0;
      }

      v25 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryOptionFlowSection());
      v26 = sub_1BE048964();
      v27 = sub_1BD87305C(v26, 0, v5);
    }

    else
    {
      v13 = type metadata accessor for ProvisioningManualEntryOptionFlowSection();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (result[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_didActivate])
      {
        return 0;
      }

      v14 = swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_1BD187078(v1, v36);
      sub_1BD7CD0C0();
      v15 = v40;
      sub_1BD7CD0C0();
      if ((sub_1BD6CBE60(v15, v37) & 1) != 0 && (sub_1BD6CBE60(v15, v38) & 1) == 0)
      {
        v16 = v40;
      }

      else
      {
        v16 = byte_1F3B8C848;
        sub_1BD7CD0C0();
        if (sub_1BD6CBE60(v16, v37) & 1) == 0 || (sub_1BD6CBE60(v16, v38))
        {
          v16 = byte_1F3B8C849;
          sub_1BD7CD0C0();
          if (sub_1BD6CBE60(v16, v37) & 1) == 0 || (sub_1BD6CBE60(v16, v38))
          {
            v16 = byte_1F3B8C84A;
            sub_1BD7CD0C0();
            if (sub_1BD6CBE60(v16, v37) & 1) == 0 || (sub_1BD6CBE60(v16, v38))
            {
              v16 = 3;
            }
          }
        }
      }

      v28 = v1;
      sub_1BD12F5D4(v36, v28, v14);

      v42 = v37;
      sub_1BD58532C(&v42);
      v43 = v38;
      sub_1BD58532C(&v43);
      v44 = v39;
      sub_1BD58532C(&v44);
      if (v16 == 3)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      v29 = objc_allocWithZone(v13);
      v30 = sub_1BE048964();
      v27 = sub_1BD87305C(v30, 0, v16);
      swift_unknownObjectRelease();
    }

    return v27;
  }

  sub_1BD8719A0();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    type metadata accessor for PaymentSetupProductsFlowSection();
    swift_allocObject();
    v10 = sub_1BE048964();
    v11 = sub_1BD0DB670(v10, v9, v8);

    return v11;
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context];
    v18 = v2[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_fromWelcomeScreen];
    v19 = type metadata accessor for ProvisioningHeroFlowItem();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v21 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = &v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v17;
    v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = v18;
    *&v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v23 = *&v20[v21];
    *&v20[v21] = 0;
    sub_1BE048964();

    v20[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v41.receiver = v20;
    v41.super_class = v19;
    return objc_msgSendSuper2(&v41, sel_init);
  }
}

void sub_1BD8719A0()
{
  v1 = sub_1BE04B944();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - v8;
  v10 = sub_1BE04BAC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_showBrowseBanks) == 1)
  {
    sub_1BE04BC34();
    v15 = sub_1BE04BA54();
    (*(v11 + 8))(v14, v10);
    if ((v15 & 1) == 0)
    {
      sub_1BE04BB94();
      v16 = sub_1BE04B934();
      v17 = *(v2 + 8);
      v17(v9, v1);
      v18 = [v16 deviceRegion];
      swift_unknownObjectRelease();
      sub_1BE04BB94();
      v19 = sub_1BE04B8E4();
      v17(v5, v1);
      v20 = [v19 context];

      if (v20)
      {
        v21 = [v20 configuration];

        if (!v21)
        {

          return;
        }

        v22 = v21;
        v23 = [v22 browseProvisioningBankAppsEnabledForRegion_];

        if ((v23 & 1) == 0 || (v24 = sub_1BE04BBD4(), v25 = [v24 paymentSetupProductModel], v24, !v25))
        {

          return;
        }

        v26 = [v25 setupProductsOfType_];
        if (v26)
        {
          v27 = v26;
          sub_1BD0E5E8C(0, &qword_1EBD38568);
          v61 = sub_1BE052744();
        }

        else
        {
          v61 = 0;
        }

        v28 = [v25 allSections];
        if (v28)
        {
          v29 = v28;
          v59 = v22;
          sub_1BD0E5E8C(0, &qword_1EBD42938);
          v30 = sub_1BE052744();

          v62 = v30;
          v58 = v25;
          if (v30 >> 62)
          {
            goto LABEL_50;
          }

          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
LABEL_15:
            v32 = 0;
            v64 = v62 & 0xFFFFFFFFFFFFFF8;
            v65 = v62 & 0xC000000000000001;
            v63 = v62 + 32;
            v60 = v31;
            while (1)
            {
              if (v65)
              {
                v33 = MEMORY[0x1BFB40900](v32, v62);
              }

              else
              {
                if (v32 >= *(v64 + 16))
                {
                  goto LABEL_49;
                }

                v33 = *(v63 + 8 * v32);
              }

              v34 = v33;
              v35 = __OFADD__(v32, 1);
              v36 = v32 + 1;
              if (v35)
              {
                goto LABEL_48;
              }

              v37 = [v33 categories];
              if (!v37)
              {
                goto LABEL_64;
              }

              v38 = v37;
              v66 = v36;
              sub_1BD0E5E8C(0, &qword_1EBD42940);
              v39 = sub_1BE052744();

              v67 = v34;
              if (v39 >> 62)
              {
                break;
              }

              v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v40)
              {
                goto LABEL_24;
              }

LABEL_16:

              v32 = v66;
              if (v66 == v60)
              {
                goto LABEL_51;
              }
            }

            v40 = sub_1BE053704();
            if (!v40)
            {
              goto LABEL_16;
            }

LABEL_24:
            v41 = 0;
            v68 = v39 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v39 & 0xC000000000000001) != 0)
              {
                v42 = MEMORY[0x1BFB40900](v41, v39);
              }

              else
              {
                if (v41 >= *(v68 + 16))
                {
                  goto LABEL_47;
                }

                v42 = *(v39 + 8 * v41 + 32);
              }

              v43 = v42;
              v44 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
LABEL_50:
                v31 = sub_1BE053704();
                if (!v31)
                {
                  goto LABEL_51;
                }

                goto LABEL_15;
              }

              v45 = [v42 identifier];
              if (!v45)
              {
                break;
              }

              v46 = v45;
              v47 = sub_1BE052434();
              v49 = v48;

              v50 = sub_1BE052434();
              if (!v49)
              {
                goto LABEL_26;
              }

              if (v47 == v50 && v49 == v51)
              {

                goto LABEL_45;
              }

              v53 = sub_1BE053B84();

              if (v53)
              {

LABEL_45:

                goto LABEL_52;
              }

LABEL_27:

              ++v41;
              if (v44 == v40)
              {
                goto LABEL_16;
              }
            }

            sub_1BE052434();
LABEL_26:

            goto LABEL_27;
          }

LABEL_51:

          v43 = 0;
LABEL_52:
          v55 = v58;
          v54 = v59;
          if (v61)
          {
            if (v61 >> 62)
            {
              v56 = sub_1BE053704();
            }

            else
            {
              v56 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v56)
            {
              if (!v43)
              {
              }

              return;
            }
          }

          else
          {
          }

          return;
        }
      }

      else
      {

        __break(1u);
LABEL_64:
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BD87203C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD872084(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioning];

  type metadata accessor for ProvisioningCardReaderFlowItem();
  sub_1BD6A1404(0, 255, 0, 0);
  return a1(1);
}

uint64_t sub_1BD8721E0(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BBD4();
  [v6 resetForNewProvisioning];

  KeyPath = swift_getKeyPath();
  sub_1BD188350(v3, &v30);
  sub_1BD7CD0C0();
  v8 = *(&v30 + 1);
  if (*(*(&v30 + 1) + 16) && (sub_1BE053D04(), sub_1BE052524(), v9 = sub_1BE053D64(), v10 = -1 << *(v8 + 32), v11 = v9 & ~v10, ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v25 = v3;
    v26 = a1;
    v12 = ~v10;
    while (!*(*(v8 + 48) + v11) || *(*(v8 + 48) + v11) == 1)
    {
      v13 = sub_1BE053B84();

      if (v13)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v14 = 0;
        goto LABEL_20;
      }
    }

LABEL_11:
    v15 = v31;
    if (*(v31 + 16) && (sub_1BE053D04(), sub_1BE052524(), v16 = sub_1BE053D64(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (!*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 1)
      {
        v20 = sub_1BE053B84();

        if ((v20 & 1) == 0)
        {
          v18 = (v18 + 1) & v19;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            continue;
          }
        }

        v14 = v20 ^ 1;
        goto LABEL_20;
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

LABEL_20:
    a1 = v26;
    v3 = v25;
  }

  else
  {
    v14 = 0;
  }

  v27 = v30;
  v28 = v31;
  v29 = v32;
  v21 = v3;
  sub_1BD12FC44(&v27, v21, KeyPath);

  v33 = *(&v27 + 1);
  sub_1BD58532C(&v33);
  v34 = v28;
  sub_1BD58532C(&v34);
  v35 = *(&v28 + 1);
  sub_1BD58532C(&v35);
  if ((v14 & 1) == 0)
  {
    return a1(1);
  }

  type metadata accessor for ProvisioningCardReaderFlowItem();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v23 = v21;
  sub_1BE048964();
  sub_1BD6A1404(0x4000000000000000, 1, sub_1BD873400, v22);
}

uint64_t sub_1BD8725A0(char a1, void *a2, uint64_t (*a3)(void))
{
  if ((a1 & 1) == 0)
  {
    v24 = a3;
    KeyPath = swift_getKeyPath();
    sub_1BD188350(a2, v27);
    v3 = v29;
    v21 = v28;
    v4 = v30;
    v19 = v31;
    v20 = v27[0];
    sub_1BE053D04();
    sub_1BE052524();
    v5 = sub_1BE053D64();
    v6 = -1 << *(v3 + 32);
    v7 = v5 & ~v6;
    if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (!*(*(v3 + 48) + v7) || *(*(v3 + 48) + v7) == 1)
      {
        v9 = sub_1BE053B84();

        if (v9)
        {
          goto LABEL_9;
        }

        v7 = (v7 + 1) & v8;
        if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v3;
      sub_1BD2A939C(2, v7, isUniquelyReferenced_nonNull_native);
    }

LABEL_9:
    sub_1BE053D04();
    sub_1BE052524();
    v11 = sub_1BE053D64();
    v12 = -1 << *(v4 + 32);
    v13 = v11 & ~v12;
    if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (!*(*(v4 + 48) + v13) || *(*(v4 + 48) + v13) == 1)
      {
        v15 = sub_1BE053B84();

        if (v15)
        {
          goto LABEL_16;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v4;
      sub_1BD2A939C(2, v13, v16);
    }

LABEL_16:
    LOBYTE(v25[0]) = v20;
    v25[1] = v21;
    v25[2] = v3;
    v25[3] = v4;
    v26 = v19;
    v17 = a2;
    sub_1BD12FC44(v25, v17, KeyPath);

    a3 = v24;
  }

  return a3(1);
}

id sub_1BD8728D8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = v2;
  sub_1BD12F620(1, v6, KeyPath);

  if (!a1)
  {
    return sub_1BD872C5C(v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_entryOption]);
  }

  v7 = &v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult];
  v8 = v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult + 8];
  if (v8 != 255)
  {
    v9 = *v7;
    if (v8)
    {
      v27 = *v7;
      sub_1BD0E5E8C(0, qword_1EBD45AD0);
      sub_1BD412688();
      swift_willThrowTypedImpl();
    }

    else
    {
      ObjectType = swift_getObjectType();
      v12 = *(a2 + 8);
      sub_1BD8733EC(v9, v8);
      v25 = v9;
      if (v12(ObjectType, a2) == 0x6F69747365676E69 && v13 == 0xE90000000000006ELL)
      {
      }

      else
      {
        v14 = sub_1BE053B84();

        if ((v14 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BE0B6CA0;
          v16 = *&v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context];
          v17 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
          sub_1BD8733EC(v9, v8);
          v18 = sub_1BE048964();
          v19 = sub_1BD989980(v18, v25);
          sub_1BD585394(v9, v8);

          *(v15 + 32) = v19;
          *(v15 + 40) = &off_1F3BC8F80;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1BE0B7020;
          *(v20 + 32) = v25;
          v21 = type metadata accessor for ProvisioningBatchPassIngestionSection();
          v22 = objc_allocWithZone(v21);
          *&v22[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v23 = &v22[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier];
          *v23 = 0xD000000000000019;
          *(v23 + 1) = 0x80000001BE126DA0;
          *&v22[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context] = v16;
          *&v22[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups] = v20;
          sub_1BD8733EC(v9, v8);
          v26.receiver = v22;
          v26.super_class = v21;
          sub_1BE048964();
          *(v15 + 48) = objc_msgSendSuper2(&v26, sel_init);
          *(v15 + 56) = &off_1F3BAFB20;
          type metadata accessor for UIStaticFlowSection();
          v24 = swift_allocObject();
          *(v24 + 24) = 0;
          swift_unknownObjectWeakInit();
          sub_1BD585394(v9, v8);
          sub_1BD585394(v9, v8);
          result = v24;
          *(v24 + 40) = 0x6F69747365676E69;
          *(v24 + 48) = 0xE90000000000006ELL;
          *(v24 + 56) = v15;
          *(v24 + 32) = 514;
          return result;
        }
      }

      sub_1BD585394(v9, v8);
      sub_1BD585394(v9, v8);
    }
  }

  return 0;
}

id sub_1BD872C5C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects) = MEMORY[0x1E69E7CC0];

      v2 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
      v4 = type metadata accessor for ProvisioningCameraCaptureFlowItem();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_managingSection];
      *&v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_managingSection + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v7 = &v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_identifier];
      *v7 = 0xD000000000000015;
      v7[1] = 0x80000001BE13D8B0;
      *&v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
      *&v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_context] = v2;
      v5[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_forceShow] = v3;
      *(v6 + 1) = &off_1F3BC0A90;
      swift_unknownObjectWeakAssign();
      v23.receiver = v5;
      v23.super_class = v4;
      sub_1BE048964();
      return objc_msgSendSuper2(&v23, sel_init);
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
      v17 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
      v18 = type metadata accessor for ProvisioningCardReaderFlowItem();
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_managingSection];
      *&v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_managingSection + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
      *&v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v21 = &v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_identifier];
      *v21 = 0xD000000000000012;
      v21[1] = 0x80000001BE13D890;
      *&v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context] = v16;
      v19[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_forceShow] = v17;
      *(v20 + 1) = &off_1F3BC0A90;
      swift_unknownObjectWeakAssign();
      v24.receiver = v19;
      v24.super_class = v18;
      sub_1BE048964();
      return objc_msgSendSuper2(&v24, sel_init);
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
    v10 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
    v11 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects);
    v12 = type metadata accessor for ProvisioningManualEntryFlowItem();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_managingSection];
    *&v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_managingSection + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
    *&v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v15 = &v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_identifier];
    *v15 = 0xD000000000000013;
    v15[1] = 0x80000001BE13D8D0;
    *&v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_context] = v9;
    v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_forceShow] = v10;
    *(v14 + 1) = &off_1F3BC0A90;
    swift_unknownObjectWeakAssign();
    *&v13[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects] = v11;
    v22.receiver = v13;
    v22.super_class = v12;
    sub_1BE048C84();
    sub_1BE048964();
    return objc_msgSendSuper2(&v22, sel_init);
  }
}

uint64_t sub_1BD873000()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

id sub_1BD87305C(uint64_t a1, int a2, unsigned __int8 a3)
{
  v4 = v3;
  v26 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects] = MEMORY[0x1E69E7CC0];
  v11 = &v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult];
  *v11 = 0;
  v11[8] = -1;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_didActivate] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection__manualEntryOptions] = &type metadata for ManualEntryOptions;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection__isManualProvisioning] = &type metadata for IsManualProvisioning;
  v23 = OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_presentationConfiguration;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_presentationConfiguration] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_entryOption] = a3;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1BE048964();
  sub_1BE053834();

  v31 = 0xD00000000000001DLL;
  v32 = 0x80000001BE13D870;
  if (a3)
  {
    v12 = 0x61436172656D6163;
    if (a3 == 1)
    {
      v13 = 0xED00006572757470;
    }

    else
    {
      v12 = 0x6F72506F54706174;
      v13 = 0xEE006E6F69736976;
    }
  }

  else
  {
    v12 = 0x6472614365707974;
    v13 = 0xEE007265626D754ELL;
  }

  v29 = v12;
  v30 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE053534();
  v16 = v15;

  MEMORY[0x1BFB3F610](v14, v16);

  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v17 = v32;
  v18 = &v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_identifier];
  *v18 = v31;
  v18[1] = v17;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow] = v26 & 1;
  if (a3 > 1u)
  {
  }

  else
  {
    v19 = sub_1BE053B84();

    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1BE04BC34();
  v20 = sub_1BE04BAB4();
  (*(v24 + 8))(v10, v25);
  if ((v20 & 1) == 0)
  {
    v4[v23] = 1;
  }

LABEL_12:
  v28.receiver = v4;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_1BD8733EC(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id sub_1BD873460@<X0>(void *a1@<X8>)
{
  v2 = sub_1BD874648();
  *a1 = v2;

  return v2;
}

uint64_t sub_1BD873498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD873514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD873590()
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

void sub_1BD8735DC(void *a1)
{
  v1 = a1;
  sub_1BD8735D0();
}

void *sub_1BD873630(void *result)
{
  v2 = (v1 + *result);
  v3 = *v2;
  if (*v2)
  {
    v4 = sub_1BD0D44B8(*v2);
    v3(v4);

    return sub_1BD0D4744(v3);
  }

  return result;
}

void sub_1BD873698(void *a1)
{
  v1 = a1;
  sub_1BD873624();
}

id sub_1BD8736E0()
{
  v1 = &v0[qword_1EBD56240];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[qword_1EBD56248[0]];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PaymentSetupDockView.Coordinator();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1BD873794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentSetupDockView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD873804(uint64_t a1)
{
  sub_1BD0D4744(*(a1 + qword_1EBD56240));
  v2 = *(a1 + qword_1EBD56248[0]);

  return sub_1BD0D4744(v2);
}

void sub_1BD873870()
{
  type metadata accessor for PaymentSetupDockView.Coordinator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKPaymentSetupContext(319);
    if (v1 <= 0x3F)
    {
      sub_1BE0534B4();
      if (v2 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD4F750);
        if (v3 <= 0x3F)
        {
          sub_1BD873DE0();
          if (v4 <= 0x3F)
          {
            sub_1BD1C2DD8(319, &qword_1EBD502A8);
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

uint64_t sub_1BD873990(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = a1[v10]) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_1BD873B38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((((((v11 + 16) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);
          v25 = a2 + 1;
          v26 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;

          v24(v26, v25);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_1BD873DE0()
{
  if (!qword_1EBD56350)
  {
    type metadata accessor for PKPrivacyLinkContext(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD56350);
    }
  }
}

void sub_1BD873E54(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1BE0534B4();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - v9;
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v53 - v16;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + *(a2 + 64));
  [a1 setButtonsEnabled_];
  v61 = *v2;
  if (*(v61 + qword_1EBD56240) && (v24 = [a1 primaryButton]) != 0)
  {
    v25 = v24;
    v56 = v23;
    [v24 removeTarget:0 action:0 forControlEvents:0x2000];
    [v25 addTarget:v61 action:sel_continueButtonPressed forControlEvents:0x2000];
    v26 = *(v3 + *(a2 + 48) + 8);
    v54 = a1;
    v55 = v6;
    if (!v26)
    {
      (*(v18 + 104))(v22, *MEMORY[0x1E69B80D8], v17);
      v27 = PKPassKitBundle();
      if (!v27)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v28 = v27;
      sub_1BE04B6F4();

      (*(v18 + 8))(v22, v17);
    }

    sub_1BE048C84();
    v29 = v25;
    v30 = sub_1BE052404();
    [v29 setTitle:v30 forState:0];

    if ((sub_1BE051C54() & 1) != 0 && *(v3 + *(a2 + 44)) == 1)
    {

      v31 = v29;
      v32 = sub_1BE052404();
    }

    else
    {
      v33 = v29;
      v32 = sub_1BE052404();
    }

    a1 = v54;
    v23 = v56;
    [v29 setTitle:v32 forState:2];

    [v29 setEnabled_];
    [v29 setShowSpinner_];

    v6 = v55;
  }

  else
  {
    [a1 setPrimaryButton_];
  }

  v34 = [a1 footerView];
  if (v34)
  {
    v35 = v34;
    if (*(v61 + qword_1EBD56248))
    {
      v36 = [v34 setUpLaterButton];
      v37 = v36;
      if (*(v3 + *(a2 + 56) + 8))
      {
        if (v36)
        {
          v56 = v23;
          v38 = v36;
          v39 = sub_1BE052404();
          [v38 setTitle:v39 forStates:0];

          v23 = v56;
LABEL_20:
          [v37 removeTarget:0 action:0 forControlEvents:0x2000];
          [v37 addTarget:v61 action:sel_setUpLaterButtonPressed forControlEvents:0x2000];
        }
      }

      else if (v36)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [v34 setSetUpLaterButton_];
    }

    [v35 setManualEntryButton_];
    [v35 setButtonsEnabled_];
  }

  v40 = v3 + *(a2 + 60);
  if ((v40[8] & 1) == 0)
  {
    v41 = [objc_opt_self() pk:*v40 privacyLinkForContext:?];
    [a1 setPrivacyLink_];
  }

  v43 = v59;
  v42 = v60;
  (*(v59 + 16))(v10, v3 + *(a2 + 40), v60);
  v44 = v62;
  if ((*(v62 + 48))(v10, 1, v6) == 1)
  {
    (*(v43 + 8))(v10, v42);
    return;
  }

  v45 = a1;
  v46 = v58;
  (*(v44 + 32))(v58, v10, v6);
  sub_1BE04F8C4();
  (*(v44 + 16))(v57, v46, v6);
  v47 = sub_1BE04F884();
  v48 = [v47 view];
  if (!v48)
  {
    __break(1u);
    goto LABEL_32;
  }

  v49 = v48;
  v50 = [objc_opt_self() clearColor];
  [v49 setBackgroundColor_];

  v51 = [v47 view];
  [v45 setAdditionalView_];

  v52 = (v3 + *(a2 + 68));
  if (v52[1])
  {
    (*(v62 + 8))(v58, v6);
  }

  else
  {
    [v45 setAdditionalViewBottomPadding_];

    (*(v62 + 8))(v58, v6);
  }
}