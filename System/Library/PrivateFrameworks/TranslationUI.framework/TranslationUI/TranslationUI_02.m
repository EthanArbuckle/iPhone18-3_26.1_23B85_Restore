uint64_t ExpandingText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v75 = sub_26F49E2E8();
  v71 = *(v75 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v75);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B8, &qword_26F4A3F28);
  v6 = *(v5 - 8);
  v65 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v64 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3C0, &qword_26F4A3F30);
  v11 = *(v10 - 8);
  v67 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3C8, &qword_26F4A3F38);
  v15 = *(v14 - 8);
  v74 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v64 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D0, &qword_26F4A3F40);
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v64 - v19;
  v20 = type metadata accessor for ExpandingText();
  v21 = *(v20 - 8);
  v68 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3D2844(v1, v23);
  sub_26F49FBD8();
  v24 = sub_26F49FBC8();
  v25 = *(v21 + 80);
  v26 = (v25 + 32) & ~v25;
  v76 = v22;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v24;
  *(v27 + 24) = v28;
  sub_26F3D28AC(v23, v27 + v26);
  sub_26F3D2844(v1, v23);
  v29 = sub_26F49FBC8();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  sub_26F3D28AC(v23, v30 + v26);
  sub_26F49F478();
  v31 = v85;
  v72 = *(&v85 + 1);
  v73 = v85;
  LODWORD(v29) = v86;
  *v9 = sub_26F49F5C8();
  v9[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D8, &qword_26F4A3F48);
  sub_26F3D185C(v2, v31, *(&v31 + 1), v29, v9 + *(v33 + 44));
  v34 = (v9 + *(v65 + 44));
  *v34 = CGPointMake;
  v34[1] = 0;
  KeyPath = swift_getKeyPath();
  v36 = sub_26F3D0C04();
  v37 = v71;
  v38 = MEMORY[0x277CDFA90];
  if ((v36 & 1) == 0)
  {
    v38 = MEMORY[0x277CDFA88];
  }

  v39 = v70;
  v40 = v75;
  (*(v71 + 104))(v70, *v38, v75);
  v41 = v66;
  v42 = &v66[*(v67 + 44)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v37 + 32))(v42 + *(v43 + 28), v39, v40);
  *v42 = KeyPath;
  sub_26F3BBAEC(v9, v41, &qword_2806DF3B8, &qword_26F4A3F28);
  sub_26F49F5A8();
  sub_26F49E3D8();
  v44 = v69;
  sub_26F3BBAEC(v41, v69, &qword_2806DF3C0, &qword_26F4A3F30);
  v45 = (v44 + *(v74 + 44));
  v46 = v90;
  v45[4] = v89;
  v45[5] = v46;
  v45[6] = v91;
  v47 = v86;
  *v45 = v85;
  v45[1] = v47;
  v48 = v88;
  v45[2] = v87;
  v45[3] = v48;
  v49 = v2;
  v50 = (v2 + *(v68 + 44));
  *&v48 = *v50;
  v51 = v50[1];
  v83 = v48;
  v84 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F368();
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v55 = sub_26F49F5A8();
  v57 = v56;
  v58 = v77;
  sub_26F3BBAEC(v44, v77, &qword_2806DF3C8, &qword_26F4A3F38);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E8, &qword_26F4A3F50) + 36));
  *v59 = sub_26F3D2654;
  v59[1] = 0;
  v59[2] = v55;
  v59[3] = v57;
  v60 = swift_allocObject();
  *(v60 + 2) = v52;
  *(v60 + 3) = v53;
  *(v60 + 4) = v54;
  v61 = (v58 + *(v78 + 36));
  *v61 = sub_26F3D2C7C;
  v61[1] = v60;
  LOBYTE(v80) = sub_26F3CFBF8();
  sub_26F3D2844(v49, v23);
  v62 = swift_allocObject();
  sub_26F3D28AC(v23, v62 + ((v25 + 16) & ~v25));
  sub_26F3D2D08();
  sub_26F49F168();

  return sub_26F3B6B4C(v58, &qword_2806DF3D0, &qword_26F4A3F40);
}

void *sub_26F3D16C4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32) & 1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    result = MEMORY[0x274390240](&v11, v3);
  }

  else
  {
    v5 = (a1 + *(type metadata accessor for ExpandingText() + 32));
    v7 = *v5;
    v9 = *(v5 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    result = sub_26F49F348();
  }

  *a2 = v11;
  return result;
}

uint64_t sub_26F3D1778(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*(a4 + 24))
  {
    v7 = *(a4 + 16);
    v10 = *(a4 + 32) & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  else
  {
    v6 = (a4 + *(type metadata accessor for ExpandingText() + 32));
    v8 = *v6;
    v9 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    return sub_26F49F358();
  }
}

uint64_t sub_26F3D185C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v108 = a4;
  v107 = a3;
  v106 = a2;
  v115 = a5;
  v98 = sub_26F49E358();
  v97 = *(v98 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ExpandingText();
  v89 = *(v99 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v99);
  v90 = v9;
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C8, &unk_26F4A8360);
  v94 = *(v95 - 8);
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v88 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D0, &qword_26F4A41C8);
  v111 = *(v113 - 8);
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v92 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v112 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E0, &qword_26F4A41D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E8, &unk_26F4A8380);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F0, &qword_26F4A41D8);
  v27 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v88 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F8, &unk_26F4A8390);
  v29 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v110 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  MEMORY[0x28223BE20](v34);
  v109 = &v88 - v35;
  v36 = a1[1];
  *&v120 = *a1;
  *(&v120 + 1) = v36;
  sub_26F3BDC0C();

  v102 = sub_26F49EED8();
  v101 = v37;
  v39 = v38;
  v100 = v40;
  sub_26F49F578();
  sub_26F49E3D8();
  v41 = v39 & 1;
  v127 = v39 & 1;
  v42 = a1;
  if (sub_26F3CFBF8())
  {
    v43 = v106;
    v117 = v106;
    v44 = v107;
    v118 = v107;
    v45 = v108 & 1;
    v119 = v108 & 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v116, v46);
    if (v116)
    {
      v47 = 0;
    }

    else
    {
      v48 = v42 + *(v99 + 44);
      v49 = *v48;
      v50 = *(v48 + 8);
      LOBYTE(v117) = v49;
      v118 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
      sub_26F49F348();
      v47 = v116;
    }
  }

  else
  {
    v43 = v106;
    v44 = v107;
    v47 = 0;
    v45 = v108 & 1;
  }

  *v22 = sub_26F49E6D8();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF500, &qword_26F4A41E0);
  sub_26F3D0438(v47, v42, &v22[*(v51 + 44)]);
  sub_26F3BBAEC(v22, &v26[*(v23 + 36)], &qword_2806DF4E0, &qword_26F4A41D0);
  v52 = v101;
  *v26 = v102;
  *(v26 + 1) = v52;
  v26[16] = v41;
  *(v26 + 3) = v100;
  v53 = v125;
  *(v26 + 6) = v124;
  *(v26 + 7) = v53;
  *(v26 + 8) = v126;
  v54 = v121;
  *(v26 + 2) = v120;
  *(v26 + 3) = v54;
  v55 = v123;
  *(v26 + 4) = v122;
  *(v26 + 5) = v55;
  v56 = v43;
  v117 = v43;
  v118 = v44;
  v57 = v44;
  v119 = v45;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v116);
  v59 = v116;
  v60 = (v116 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v62 = v26;
  v63 = v103;
  sub_26F3BBAEC(v62, v103, &qword_2806DF4E8, &unk_26F4A8380);
  v64 = v63 + *(v105 + 36);
  *v64 = KeyPath;
  *(v64 + 8) = v60;
  *(v64 + 16) = v59;
  sub_26F3BBAEC(v63, v33, &qword_2806DF4F0, &qword_26F4A41D8);
  v33[*(v104 + 36)] = 0;
  v65 = v109;
  sub_26F3BBAEC(v33, v109, &qword_2806DF4F8, &unk_26F4A8390);
  if (sub_26F3CFBF8())
  {
    v117 = v56;
    v118 = v57;
    v119 = v45;
    MEMORY[0x274390240](&v116, v58);
    v66 = v112;
    if ((v116 & 1) != 0 || (v67 = v42 + *(v99 + 44), v68 = *v67, v69 = *(v67 + 8), LOBYTE(v117) = v68, v118 = v69, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00), sub_26F49F348(), v116 != 1))
    {
      v82 = 1;
      v81 = v113;
    }

    else
    {
      v70 = v91;
      sub_26F3D2844(v42, v91);
      v71 = (*(v89 + 80) + 33) & ~*(v89 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v56;
      *(v72 + 24) = v57;
      *(v72 + 32) = v45;
      v73 = sub_26F3D28AC(v70, v72 + v71);
      MEMORY[0x28223BE20](v73);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF510, &unk_26F4A83E0);
      sub_26F3D36B0();
      v74 = v93;
      sub_26F49F398();
      v75 = v96;
      sub_26F49E348();
      sub_26F3B18CC(&qword_2806DF520, &qword_2806DF4C8, &unk_26F4A8360);
      sub_26F3CAB30();
      v76 = v92;
      v77 = v95;
      v78 = v98;
      sub_26F49EF48();
      (*(v97 + 8))(v75, v78);
      (*(v94 + 8))(v74, v77);
      v79 = sub_26F49F228();
      v80 = v113;
      *(v76 + *(v113 + 36)) = v79;
      sub_26F3BBAEC(v76, v66, &qword_2806DF4D0, &qword_26F4A41C8);
      v81 = v80;
      v82 = 0;
    }
  }

  else
  {
    v82 = 1;
    v81 = v113;
    v66 = v112;
  }

  (*(v111 + 56))(v66, v82, 1, v81);
  v83 = v110;
  sub_26F3B8DD4(v65, v110, &qword_2806DF4F8, &unk_26F4A8390);
  v84 = v114;
  sub_26F3A2864(v66, v114);
  v85 = v115;
  sub_26F3B8DD4(v83, v115, &qword_2806DF4F8, &unk_26F4A8390);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF508, &unk_26F4A83D0);
  sub_26F3A2864(v84, v85 + *(v86 + 48));
  sub_26F3B6B4C(v66, &qword_2806DF4D8, &unk_26F4A8370);
  sub_26F3B6B4C(v65, &qword_2806DF4F8, &unk_26F4A8390);
  sub_26F3B6B4C(v84, &qword_2806DF4D8, &unk_26F4A8370);
  return sub_26F3B6B4C(v83, &qword_2806DF4F8, &unk_26F4A8390);
}

uint64_t sub_26F3D2384(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v9 = a1;
  v10 = a2;
  v11 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v8);
  LOBYTE(v9) = (v8 & 1) == 0;
  sub_26F49F458();

  result = type metadata accessor for ExpandingText();
  v6 = a4 + *(result + 28);
  if (*v6)
  {
    v7 = *(v6 + 8);
    return (*v6)();
  }

  return result;
}

uint64_t sub_26F3D2458@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  v2 = sub_26F49EEC8();
  v4 = v3;
  v6 = v5;
  sub_26F49ECA8();
  v7 = sub_26F49EEA8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_26F3B8D40(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_26F49EC78();
  result = sub_26F49DF78();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_26F3D258C(uint64_t a1)
{
  v2 = sub_26F49E2E8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_26F49E498();
}

uint64_t sub_26F3D2678(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = (a3 + *(type metadata accessor for ExpandingText() + 40));
  v7 = *v5;
  v6 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B0, &qword_26F4A41B8);
  sub_26F49F348();
  if (v12 == 3)
  {
    sub_26F3CFBF8();
  }

  sub_26F49F348();
  sub_26F49F358();

  if (*(a3 + 24))
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    v11 = *(a3 + 32) & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  return result;
}

uint64_t sub_26F3D27D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D2844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandingText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D28AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandingText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26F3D2910@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ExpandingText() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F3D16C4(v6, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for ExpandingText();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  if (*(v0 + v2 + 24))
  {
    v7 = *(v5 + 16);

    v8 = *(v5 + 24);
  }

  v9 = v1[6];
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[7]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v5 + v1[9] + 8);

  v16 = *(v5 + v1[10] + 8);

  v17 = *(v5 + v1[11] + 8);

  v18 = (v5 + v1[12]);
  v19 = *v18;
  v20 = *(v18 + 8);
  j__swift_release();
  v21 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_26F49E2E8();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else
  {
    v23 = *(v5 + v21);
  }

  v24 = v1[14];
  v25 = sub_26F49EE58();
  (*(*(v25 - 8) + 8))(v5 + v24, v25);

  return swift_deallocObject();
}

uint64_t sub_26F3D2C08(char *a1)
{
  v3 = *(type metadata accessor for ExpandingText() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F3D1778(a1, v4, v5, v6);
}

uint64_t sub_26F3D2C7C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_26F3D5B98(a1);
}

uint64_t sub_26F3D2C88(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ExpandingText() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F3D2678(a1, a2, v6);
}

unint64_t sub_26F3D2D08()
{
  result = qword_2806DF3F0;
  if (!qword_2806DF3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3D0, &qword_26F4A3F40);
    sub_26F3D2DC0();
    sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3F0);
  }

  return result;
}

unint64_t sub_26F3D2DC0()
{
  result = qword_2806DF3F8;
  if (!qword_2806DF3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3E8, &qword_26F4A3F50);
    sub_26F3D2E78();
    sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3F8);
  }

  return result;
}

unint64_t sub_26F3D2E78()
{
  result = qword_2806DF400;
  if (!qword_2806DF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3C8, &qword_26F4A3F38);
    sub_26F3D2F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF400);
  }

  return result;
}

unint64_t sub_26F3D2F04()
{
  result = qword_2806DF408;
  if (!qword_2806DF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3C0, &qword_26F4A3F30);
    sub_26F3D2FBC();
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF408);
  }

  return result;
}

unint64_t sub_26F3D2FBC()
{
  result = qword_2806DF410;
  if (!qword_2806DF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3B8, &qword_26F4A3F28);
    sub_26F3B18CC(&qword_2806DF418, &qword_2806DF420, &qword_26F4A8290);
    sub_26F3D3074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF410);
  }

  return result;
}

unint64_t sub_26F3D3074()
{
  result = qword_2806DF428;
  if (!qword_2806DF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF428);
  }

  return result;
}

void sub_26F3D310C()
{
  sub_26F3D33AC(319, &qword_2806DF450, &qword_2806DEDE8, &qword_26F4A3110, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26F3D3410(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26F3D33AC(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F3D3360(319, &qword_2806DF468);
        if (v3 <= 0x3F)
        {
          sub_26F3D3360(319, &qword_2806DEA48);
          if (v4 <= 0x3F)
          {
            sub_26F3D3360(319, &qword_2806DF470);
            if (v5 <= 0x3F)
            {
              sub_26F3D33AC(319, &qword_2806DF478, &qword_2806DF480, &qword_26F4A3FD0, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_26F3D3410(319, &qword_2806DF488, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_26F49EE58();
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

void sub_26F3D3360(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26F49F378();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26F3D33AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3D3410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F3D3488()
{
  result = qword_2806DF490;
  if (!qword_2806DF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF490);
  }

  return result;
}

unint64_t sub_26F3D34E0()
{
  result = qword_2806DF498;
  if (!qword_2806DF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF498);
  }

  return result;
}

unint64_t sub_26F3D3538()
{
  result = qword_2806DF4A0;
  if (!qword_2806DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF4A0);
  }

  return result;
}

unint64_t sub_26F3D3590()
{
  result = qword_2806DF4A8;
  if (!qword_2806DF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF4A8);
  }

  return result;
}

uint64_t sub_26F3D35E4(uint64_t a1)
{
  v2 = type metadata accessor for ExpandingText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3D3640()
{
  v1 = *(type metadata accessor for ExpandingText() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_26F3D2384(v2, v3, v4, v5);
}

unint64_t sub_26F3D36B0()
{
  result = qword_2806DF518;
  if (!qword_2806DF518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF510, &unk_26F4A83E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF518);
  }

  return result;
}

unint64_t sub_26F3D3734()
{
  result = qword_2806DF548;
  if (!qword_2806DF548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D37C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF548);
  }

  return result;
}

unint64_t sub_26F3D37C0()
{
  result = qword_2806DF550;
  if (!qword_2806DF550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF558, &qword_26F4A4258);
    sub_26F3D36B0();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF550);
  }

  return result;
}

uint64_t sub_26F3D3884()
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F3D38F0()
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F3D3940@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F4A02A8();

  *a2 = v5 != 0;
  return result;
}

const char *TranslateFeatures.feature.getter()
{
  v1 = *v0;
  v2 = "EnableVisualIntelligenceUI";
  v3 = "refresh_system_translation";
  v4 = "lowConfidenceLID";
  if (v1 != 4)
  {
    v4 = "onDeviceFirst";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "asset_services";
  if (v1 != 1)
  {
    v5 = "asset_services_adaptive_refresh";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F3D3A7C()
{
  result = _UISolariumEnabled();
  byte_2806DF590 = result;
  return result;
}

uint64_t static TranslateFeatures.isSolariumEnabled.getter()
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2806DF590;
}

uint64_t static TranslateFeatures.isSolariumEnabled.setter(char a1)
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2806DF590 = a1 & 1;
  return result;
}

uint64_t (*static TranslateFeatures.isSolariumEnabled.modify())()
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26F3D3C14@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_2806DF590;
  return result;
}

uint64_t sub_26F3D3C90(char *a1)
{
  v1 = *a1;
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2806DF590 = v1;
  return result;
}

uint64_t TranslateFeatures.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for TranslateFeatures;
  v4[4] = sub_26F3D3D60();
  LOBYTE(v4[0]) = v1;
  v2 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_26F3D3D60()
{
  result = qword_280F66AD8[0];
  if (!qword_280F66AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66AD8);
  }

  return result;
}

uint64_t TranslateFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

unint64_t sub_26F3D3E40()
{
  result = qword_2806DF598;
  if (!qword_2806DF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF598);
  }

  return result;
}

const char *sub_26F3D3EA8()
{
  v1 = *v0;
  v2 = "EnableVisualIntelligenceUI";
  v3 = "refresh_system_translation";
  v4 = "lowConfidenceLID";
  if (v1 != 4)
  {
    v4 = "onDeviceFirst";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "asset_services";
  if (v1 != 1)
  {
    v5 = "asset_services_adaptive_refresh";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslateFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F3D40A4()
{
  result = qword_2806DF5A0;
  if (!qword_2806DF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5A0);
  }

  return result;
}

uint64_t GenderDisambiguationLearnMoreView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t GenderDisambiguationLearnMoreView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5A8, &qword_26F4A44B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26F49E318();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49F298();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5E0, &qword_26F4A4508);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_26F3D4330()
{
  sub_26F49EC68();
  sub_26F49E328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0);
  swift_getOpaqueTypeConformance2();
  return sub_26F49F148();
}

uint64_t sub_26F3D4464(uint64_t a1)
{
  v2 = sub_26F49E998();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5D0, &qword_26F4A44D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_26F49E968();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF610, &qword_26F4A46A8);
  sub_26F3D55C0();
  sub_26F49E028();
  v9 = sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0);
  MEMORY[0x27438F7E0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F3D461C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_26F49DF68();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF628, &qword_26F4A46B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_26F49DF58();
  sub_26F3D56A4(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_26F3D5708(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  MEMORY[0x2743901A0](v10, sub_26F3D576C, v17);
  if (qword_2806DE770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = 0;
  if ((byte_2806DF590 & 1) == 0)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v18 = sub_26F49F298();
  }

  KeyPath = swift_getKeyPath();
  (*(v12 + 32))(a2, v15, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF610, &qword_26F4A46A8);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v18;
  return result;
}

uint64_t sub_26F3D4900(uint64_t a1)
{
  v2 = sub_26F49E678();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = sub_26F49E148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3D57CC(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_26F49FDE8();
    v17 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_26F49E138();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_26F3D4B68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5A8, &qword_26F4A44B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B8, &qword_26F4A44C8);
  sub_26F3D4E94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5D0, &qword_26F4A44D0);
  sub_26F3B18CC(&qword_2806DF5D8, &qword_2806DF5D0, &qword_26F4A44D0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26F49E318();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49F298();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF5E0, &qword_26F4A4508);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_26F3D4D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3D51C0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F3D4DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3D51C0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F3D4E40()
{
  sub_26F3D51C0();
  sub_26F49EB98();
  __break(1u);
}

unint64_t sub_26F3D4E94()
{
  result = qword_2806DF5C0;
  if (!qword_2806DF5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5B0, &qword_26F4A44C0);
    sub_26F3D4F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5C0);
  }

  return result;
}

unint64_t sub_26F3D4F20()
{
  result = qword_2806DF5C8;
  if (!qword_2806DF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5C8);
  }

  return result;
}

uint64_t sub_26F3D4F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E648();
  *a1 = result;
  return result;
}

uint64_t sub_26F3D4FA0(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F49E658();
}

uint64_t type metadata accessor for GenderDisambiguationLearnMoreView()
{
  result = qword_280F65828;
  if (!qword_280F65828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3D505C()
{
  sub_26F3B6E18();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_26F3D50C8()
{
  result = qword_2806DF5E8;
  if (!qword_2806DF5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF5E0, &qword_26F4A4508);
    sub_26F3B18CC(&qword_2806DF5F0, &qword_2806DF5F8, &qword_26F4A4598);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF5E8);
  }

  return result;
}

unint64_t sub_26F3D51C0()
{
  result = qword_2806DF600;
  if (!qword_2806DF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF600);
  }

  return result;
}

void sub_26F3D5214()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_26F3D5564();
  v3 = sub_26F49F898();
  v4 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = [v1 bundleForClass_];
  v6 = sub_26F49F898();
  v7 = [objc_opt_self() colorNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    v8 = [v4 imageWithTintColor_];

LABEL_5:
    sub_26F49D7D8();
    v9 = objc_allocWithZone(MEMORY[0x277D37688]);
    v10 = v8;
    v11 = sub_26F49F898();

    v12 = [v9 initWithTitle:v11 detailText:0 icon:{v10, 0xE000000000000000}];

    sub_26F49D7D8();
    v13 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v13, 0xE000000000000000}];

    sub_26F49D7D8();
    v14 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v14, 0xE000000000000000}];

    sub_26F49D7D8();
    v15 = sub_26F49F898();

    [v12 addSectionWithHeader:0 content:{v15, 0xE000000000000000}];

    return;
  }

  __break(1u);
}

unint64_t sub_26F3D5564()
{
  result = qword_2806DF608;
  if (!qword_2806DF608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DF608);
  }

  return result;
}

unint64_t sub_26F3D55C0()
{
  result = qword_2806DF618;
  if (!qword_2806DF618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF610, &qword_26F4A46A8);
    sub_26F3B18CC(&qword_2806DF620, &qword_2806DF628, &qword_26F4A46B0);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF618);
  }

  return result;
}

uint64_t sub_26F3D56A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D5708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenderDisambiguationLearnMoreView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D576C()
{
  v1 = *(type metadata accessor for GenderDisambiguationLearnMoreView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3D4900(v2);
}

uint64_t sub_26F3D57CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.bindGeometry(to:reader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v21[0] = a2;
  v21[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  v12 = sub_26F49E308();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v21[4] = a3;
  v21[5] = a4;

  sub_26F49F5A8();
  sub_26F3D5A7C();
  sub_26F49EF28();

  v17 = swift_allocObject();
  v18 = v21[0];
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  *(v17 + 32) = a7;
  v19 = sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480);
  v21[2] = a5;
  v21[3] = v19;

  swift_getWitnessTable();
  sub_26F3D5C50();
  sub_26F3D5CA4();
  sub_26F49F068();

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_26F3D5A7C()
{
  result = qword_280F65C18[0];
  if (!qword_280F65C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F65C18);
  }

  return result;
}

void *sub_26F3D5AD0(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_26F3D5B2C@<X0>(void (**a1)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_26F3D5DB8;
  a1[1] = v5;
}

uint64_t sub_26F3D5B98(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF630, &qword_26F4A47D0);
  return sub_26F49F458();
}

uint64_t sub_26F3D5BF0(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF630, &qword_26F4A47D0);
  return sub_26F49F458();
}

unint64_t sub_26F3D5C50()
{
  result = qword_280F65AD0;
  if (!qword_280F65AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65AD0);
  }

  return result;
}

unint64_t sub_26F3D5CA4()
{
  result = qword_280F66390;
  if (!qword_280F66390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66390);
  }

  return result;
}

uint64_t sub_26F3D5D08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26F3D5D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26F3D5DB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = sub_26F49F248();
  v8 = v6(a1);
  *a2 = v7;
  *(a2 + 8) = v8;
}

uint64_t GrayCapsuleButton.init(title:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t GrayCapsuleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_26F49E7E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF648, &qword_26F4A47E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = v13;
  v15[5] = v14;
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v31 = v14;

  sub_26F49F398();
  v16 = sub_26F49F288();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_26F49E7D8();
  sub_26F3D61AC();
  sub_26F3D6290();
  v19 = v27;
  sub_26F49EF48();
  (*(v3 + 8))(v6, v2);
  sub_26F3D62E8(v10);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF660, &qword_26F4A4818) + 36));
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF668, &qword_26F4A4820) + 28);
  sub_26F49E3F8();
  *v20 = swift_getKeyPath();
  v22 = sub_26F49F228();
  v23 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF670, &qword_26F4A4888);
  v25 = (v19 + *(result + 36));
  *v25 = v23;
  v25[1] = v22;
  return result;
}

uint64_t sub_26F3D60B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_26F3D60D8@<X0>(uint64_t a1@<X8>)
{
  sub_26F3BDC0C();

  result = sub_26F49EED8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26F3D6144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_26F3D60D8(a1);
}

uint64_t sub_26F3D6154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E468();
  *a1 = result;
  return result;
}

uint64_t sub_26F3D6180(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F49E478();
}

unint64_t sub_26F3D61AC()
{
  result = qword_2806DF650;
  if (!qword_2806DF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF648, &qword_26F4A47E0);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF650);
  }

  return result;
}

unint64_t sub_26F3D6290()
{
  result = qword_2806DF658;
  if (!qword_2806DF658)
  {
    sub_26F49E7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF658);
  }

  return result;
}

uint64_t sub_26F3D62E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF648, &qword_26F4A47E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3D6350(uint64_t a1)
{
  v2 = sub_26F49E408();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_26F49E528();
}

unint64_t sub_26F3D6444()
{
  result = qword_2806DF678;
  if (!qword_2806DF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF670, &qword_26F4A4888);
    sub_26F3D64FC();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF678);
  }

  return result;
}

unint64_t sub_26F3D64FC()
{
  result = qword_2806DF680;
  if (!qword_2806DF680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF660, &qword_26F4A4818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF648, &qword_26F4A47E0);
    sub_26F49E7E8();
    sub_26F3D61AC();
    sub_26F3D6290();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF688, &qword_2806DF668, &qword_26F4A4820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF680);
  }

  return result;
}

id sub_26F3D6680(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v11 = a3;
  LanguageDownloadView.init(context:headerView:)(&v11, 0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
  v8 = sub_26F49E858();

  return v8;
}

uint64_t sub_26F3D6740(unsigned __int8 a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8 = a1;
  LanguageDownloadView.init(context:headerView:)(&v8, 0, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
  return sub_26F49E858();
}

id HostedDownloadViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HostedDownloadViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedDownloadViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HostedDownloadViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedDownloadViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s13TranslationUI24HostedDownloadViewBridgeC018personalTranslatorE28ControllerWithAnimatedHeader3forSo06UIViewI0CAG_tFZ_0(void *a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B0, &unk_26F4A4970);
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    sub_26F49E868();
    v7 = v14;
    v13 = 4;

    LanguageDownloadView.init(context:headerView:)(&v13, v7, v5);
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
    v9 = sub_26F49E858();

    return v9;
  }

  else
  {
    v15 = 4;
    LanguageDownloadView.init(context:headerView:)(&v15, 0, v5);
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF690, &qword_26F4A4930));
    return sub_26F49E858();
  }
}

uint64_t _s13TranslationUI24HostedDownloadViewBridgeC015presentLanguagedE35InSettingContextWithTraitCollection_9specifierySo07UITraitN0C_So11PSSpecifierCtFZ_0()
{
  v0 = sub_26F49DB88();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F49DBB8();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F49DB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_26F49FEA8();
  (*(v9 + 104))(v12, *MEMORY[0x277D40278], v8);
  sub_26F3D6E44(&qword_2806DF698, MEMORY[0x277D40290]);
  sub_26F49FA98();
  sub_26F49FA98();
  v16 = *(v9 + 8);
  v16(v12, v8);
  result = (v16)(v15, v8);
  if (v23 == v22)
  {
    sub_26F49FE98();
    type metadata accessor for LanguageDownloadView(0);
    sub_26F3D6E44(&qword_2806DF6A0, type metadata accessor for LanguageDownloadView);
    sub_26F49DB78();
    sub_26F3D6E44(&qword_2806DF6A8, MEMORY[0x277D40260]);
    sub_26F49DBA8();
    (*(v21 + 8))(v3, v0);
    return (*(v19 + 8))(v7, v20);
  }

  return result;
}

uint64_t sub_26F3D6E44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageTranslationButtonStyle.Style.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F3D6F18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B8, &qword_26F4A49B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ImageTranslationButtonStyle();
  sub_26F3B8DD4(v1 + *(v12 + 24), v11, &qword_2806DF6B8, &qword_26F4A49B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F3BBAEC(v11, a1, &qword_2806DF700, &qword_26F4A4B20);
  }

  v14 = *v11;
  sub_26F49FDE8();
  v15 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ImageTranslationButtonStyle.init(style:highlighted:)@<X0>(char *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ImageTranslationButtonStyle() + 24);
  *&a3[v6] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6B8, &qword_26F4A49B0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = a2;
  return result;
}

uint64_t type metadata accessor for ImageTranslationButtonStyle()
{
  result = qword_280F66258;
  if (!qword_280F66258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageTranslationButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_26F49EAC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6C0, &qword_26F4A49B8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6C8, &qword_26F4A49C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6D0, &qword_26F4A49C8);
  v19 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v21 = &v45 - v20;
  v47 = a1;
  sub_26F49EAD8();
  v22 = v3;
  *v3;
  sub_26F49F5A8();
  sub_26F49E0C8();
  (*(v6 + 32))(v14, v9, v5);
  v23 = &v14[*(v11 + 44)];
  v24 = v50;
  *v23 = v49;
  *(v23 + 1) = v24;
  *(v23 + 2) = v51;
  if (v3[1] == 1)
  {
    v25 = sub_26F49F238();
  }

  else
  {
    v25 = sub_26F49F278();
  }

  v26 = v25;
  KeyPath = swift_getKeyPath();
  sub_26F3BBAEC(v14, v18, &qword_2806DF6C0, &qword_26F4A49B8);
  v28 = &v18[*(v15 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  if (*v22)
  {
    v29 = sub_26F49ECA8();
  }

  else
  {
    v29 = sub_26F49ECC8();
  }

  v30 = v29;
  v31 = swift_getKeyPath();
  sub_26F3BBAEC(v18, v21, &qword_2806DF6C8, &qword_26F4A49C0);
  v32 = &v21[*(v46 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6D8, &qword_26F4A4A30);
  v34 = v48;
  v35 = v48 + *(v33 + 36);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_26F49E7C8();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  v38 = sub_26F3D758C(v47);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6E0, &qword_26F4A4A38);
  *(v35 + *(v39 + 52)) = v38;
  *(v35 + *(v39 + 56)) = 256;
  v40 = sub_26F49F5A8();
  v42 = v41;
  v43 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6E8, &qword_26F4A4A40) + 36));
  *v43 = v40;
  v43[1] = v42;
  return sub_26F3BBAEC(v21, v34, &qword_2806DF6D0, &qword_26F4A49C8);
}

uint64_t sub_26F3D758C(uint64_t a1)
{
  v3 = sub_26F49F568();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49EA38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF730, &qword_26F4A4B48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF700, &qword_26F4A4B20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v31 - v22;
  if (*(v1 + 1) != 1)
  {
    v31[1] = v3;
    v31[2] = a1;
    sub_26F3D6F18(v31 - v22);
    (*(v7 + 104))(v20, *MEMORY[0x277CE0558], v6);
    (*(v7 + 56))(v20, 0, 1, v6);
    v24 = *(v10 + 48);
    sub_26F3B8DD4(v23, v13, &qword_2806DF700, &qword_26F4A4B20);
    sub_26F3B8DD4(v20, &v13[v24], &qword_2806DF700, &qword_26F4A4B20);
    v25 = *(v7 + 48);
    if (v25(v13, 1, v6) == 1)
    {
      sub_26F3B6B4C(v20, &qword_2806DF700, &qword_26F4A4B20);
      sub_26F3B6B4C(v23, &qword_2806DF700, &qword_26F4A4B20);
      if (v25(&v13[v24], 1, v6) == 1)
      {
        sub_26F3B6B4C(v13, &qword_2806DF700, &qword_26F4A4B20);
LABEL_13:
        if ((sub_26F49EAE8() & 1) == 0)
        {
          LODWORD(v34) = sub_26F49EA18();
          return sub_26F49E0D8();
        }

        sub_26F49F258();
        goto LABEL_15;
      }
    }

    else
    {
      sub_26F3B8DD4(v13, v17, &qword_2806DF700, &qword_26F4A4B20);
      if (v25(&v13[v24], 1, v6) != 1)
      {
        v26 = v32;
        (*(v7 + 32))(v32, &v13[v24], v6);
        sub_26F3D7FF0(&qword_2806DF738, MEMORY[0x277CE0570]);
        v27 = sub_26F49F868();
        v28 = *(v7 + 8);
        v28(v26, v6);
        sub_26F3B6B4C(v20, &qword_2806DF700, &qword_26F4A4B20);
        sub_26F3B6B4C(v23, &qword_2806DF700, &qword_26F4A4B20);
        v28(v17, v6);
        sub_26F3B6B4C(v13, &qword_2806DF700, &qword_26F4A4B20);
        if (v27)
        {
          goto LABEL_13;
        }

LABEL_9:
        if ((sub_26F49EAE8() & 1) == 0)
        {
          sub_26F49F548();
          return sub_26F49E0D8();
        }

        sub_26F49F238();
LABEL_15:
        v29 = sub_26F49F268();

        v34 = v29;
        return sub_26F49E0D8();
      }

      sub_26F3B6B4C(v20, &qword_2806DF700, &qword_26F4A4B20);
      sub_26F3B6B4C(v23, &qword_2806DF700, &qword_26F4A4B20);
      (*(v7 + 8))(v17, v6);
    }

    sub_26F3B6B4C(v13, &qword_2806DF730, &qword_26F4A4B48);
    goto LABEL_9;
  }

  v34 = sub_26F49F258();
  return sub_26F49E0D8();
}

uint64_t sub_26F3D7AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF700, &qword_26F4A4B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v6 - v4, &qword_2806DF700, &qword_26F4A4B20);
  return sub_26F49E548();
}

unint64_t sub_26F3D7B7C()
{
  result = qword_2806DF6F0;
  if (!qword_2806DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF6F0);
  }

  return result;
}

void sub_26F3D7C14()
{
  sub_26F3D7C98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26F3D7C98()
{
  if (!qword_280F65758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF700, &qword_26F4A4B20);
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F65758);
    }
  }
}

unint64_t sub_26F3D7D0C()
{
  result = qword_2806DF708;
  if (!qword_2806DF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6D8, &qword_26F4A4A30);
    sub_26F3D7DC4();
    sub_26F3B18CC(&qword_2806DF728, &qword_2806DF6E8, &qword_26F4A4A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF708);
  }

  return result;
}

unint64_t sub_26F3D7DC4()
{
  result = qword_2806DF710;
  if (!qword_2806DF710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6D0, &qword_26F4A49C8);
    sub_26F3D7E7C();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF710);
  }

  return result;
}

unint64_t sub_26F3D7E7C()
{
  result = qword_2806DF718;
  if (!qword_2806DF718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6C8, &qword_26F4A49C0);
    sub_26F3D7F34();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF718);
  }

  return result;
}

unint64_t sub_26F3D7F34()
{
  result = qword_2806DF720;
  if (!qword_2806DF720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF6C0, &qword_26F4A49B8);
    sub_26F3D7FF0(&qword_2806DECF8, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF720);
  }

  return result;
}

uint64_t sub_26F3D7FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LanguageDownloadView.init(context:headerView:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49F528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = *a1;
  v15 = type metadata accessor for LanguageDownloadView(0);
  v16 = v15[5];
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v15[6];
  LOBYTE(v39) = 0;
  sub_26F49F338();
  v18 = *(&v40 + 1);
  *v17 = v40;
  *(v17 + 8) = v18;
  v19 = a3 + v15[7];
  LOBYTE(v39) = 0;
  sub_26F49F338();
  v20 = *(&v40 + 1);
  *v19 = v40;
  *(v19 + 8) = v20;
  v21 = a3 + v15[8];
  LOBYTE(v39) = 0;
  sub_26F49F338();
  v22 = *(&v40 + 1);
  *v21 = v40;
  *(v21 + 8) = v22;
  v23 = v15[9];
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF748, &qword_26F4A4BA8);
  sub_26F49F338();
  *(a3 + v23) = v40;
  v24 = v15[10];
  (*(v7 + 104))(v13, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v10, v13, v6);
  sub_26F49F338();
  (*(v7 + 8))(v13, v6);
  v25 = (a3 + v15[11]);
  v26 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  sub_26F49F338();
  v27 = *(&v40 + 1);
  *v25 = v40;
  v25[1] = v27;
  v28 = (a3 + v15[12]);
  v39 = v26;
  sub_26F49F338();
  v29 = *(&v40 + 1);
  *v28 = v40;
  v28[1] = v29;
  v30 = v15[13];
  v31 = v15[14];
  type metadata accessor for AudioAccessoryAssetDownLoadService();
  swift_allocObject();
  *(a3 + v31) = AudioAccessoryAssetDownLoadService.init()();
  v32 = v15[15];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a3 + v32) = [objc_opt_self() bundleForClass_];
  *(a3 + v15[16]) = v14;
  *(a3 + v30) = a2;
  LOBYTE(v40) = 2 * (v14 == 4);
  v34 = type metadata accessor for LanguagesService();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  result = LanguagesService.init(task:)(&v40);
  *a3 = sub_26F3E1168;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_26F3D83D8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LanguageListItem(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_26F3D8530@<X0>(void *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for LanguageListItem(0) + 20);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v8 = sub_26F49D9F8();
  v9 = sub_26F49D9F8();
  v10 = [v8 lt:0 displayNameForContext:v9 inTargetLocale:?];

  if (v10)
  {
    v11 = sub_26F49F8C8();
    v13 = v12;

    (*(v3 + 8))(v6, v2);
    v31[2] = v11;
    v31[3] = v13;
    v31[0] = v13;
    sub_26F3BDC0C();

    v14 = sub_26F49EED8();
    v16 = v15;
    v18 = v17;
    v19 = sub_26F3D83D8();
    v20 = objc_opt_self();
    v21 = &selRef_labelColor;
    if ((v19 & 1) == 0)
    {
      v21 = &selRef_secondaryLabelColor;
    }

    v22 = [v20 *v21];
    sub_26F49F218();
    v10 = sub_26F49EE68();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_26F3B8D40(v14, v16, v18 & 1);

    v30 = v26 & 1;
  }

  else
  {
    result = (*(v3 + 8))(v6, v2);
    v24 = 0;
    v30 = 0;
    v28 = 0;
  }

  *a1 = v10;
  a1[1] = v24;
  a1[2] = v30;
  a1[3] = v28;
  return result;
}

__n128 sub_26F3D8780@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49E808();
  sub_26F3D8530(v5);
  result = v5[0];
  v4 = v5[1];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_26F3D87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF890, &qword_26F4A4EC8);
  return sub_26F3D8834(a1, a2 + *(v4 + 44));
}

uint64_t sub_26F3D8834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for LanguageListItem(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = &v28 + *(v4 + 32) - v8;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *v9 = v10;
  *(v9 + 1) = v11;
  *(v9 + 2) = v12;
  v9[24] = v13;
  *(v9 + 4) = v14;
  *(v9 + 5) = v15;
  v17 = *(v4 + 28);
  swift_bridgeObjectRetain_n();

  sub_26F49D978();
  if (v13)
  {
    v18 = a1 + *(type metadata accessor for LanguageDownloadButton(0) + 24);
    if (sub_26F49F518())
    {
      v19 = 0;
      v20 = -256;
      goto LABEL_10;
    }

    v30 = 0;
    v31 = 257;
  }

  else
  {
    v30 = v12;
    v31 = 0;
  }

  sub_26F3E1D4C();
  sub_26F49E928();
  v19 = v32;
  if (v34)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v20 = v21 | v33;
LABEL_10:
  v22 = v28;
  sub_26F3E1DA0(v9, v28, type metadata accessor for LanguageListItem);
  v23 = v29;
  sub_26F3E1DA0(v22, v29, type metadata accessor for LanguageListItem);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8A0, &qword_26F4A4F00);
  v25 = v23 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v23 + *(v24 + 64);
  *v26 = v19;
  *(v26 + 8) = v20;
  sub_26F3E2D18(v9, type metadata accessor for LanguageListItem);
  return sub_26F3E2D18(v22, type metadata accessor for LanguageListItem);
}

uint64_t sub_26F3D8A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F3E1DA0(v2, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageDownloadButton);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26F3E2090(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for LanguageDownloadButton);
  v10 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF878, &qword_26F4A4EB8);
  sub_26F3B18CC(&qword_2806DF880, &qword_2806DF878, &qword_26F4A4EB8);
  sub_26F49F398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF888, &qword_26F4A4EC0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26F3D8C1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t LanguageDownloadView.ContextView.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F3D8CF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v4 = (v13 + 56);
  v5 = *(v13 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 48;
    if (v7 == 1 && v6 == 0)
    {

      v9 = *(v0 + *(type metadata accessor for LanguageDownloadView(0) + 64));
      type metadata accessor for _BundleObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_26F49D7D8();

      sub_26F3BDC0C();
      return sub_26F49EED8();
    }
  }

  return 0;
}

uint64_t sub_26F3D8F04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v4 = Array<A>.downloadable.getter(v10);

  v5 = *(v4 + 16);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v0 + *(type metadata accessor for LanguageDownloadView(0) + 64));
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  sub_26F3BDC0C();
  return sub_26F49EED8();
}

uint64_t sub_26F3D9104()
{
  v1 = sub_26F49E758();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v31 = ObjCClassFromMetadata;
  v5 = [v4 bundleForClass_];
  v6 = sub_26F49D7D8();

  v33 = v6;
  sub_26F3BDC0C();
  v7 = sub_26F49EED8();
  v9 = v8;
  LOBYTE(v5) = v10;
  sub_26F49F228();
  v11 = sub_26F49EE68();
  v32 = v12;
  v14 = v13;

  sub_26F3B8D40(v7, v9, v5 & 1);

  v15 = type metadata accessor for LanguageDownloadView(0);
  v16 = *(v0 + *(v15 + 64));
  if (!*(v0 + *(v15 + 64)) || v16 == 1 || v16 == 4)
  {
    sub_26F3B8D40(v11, v32, v14 & 1);

    return 0;
  }

  v18 = *v0;
  v19 = v0[1];
  v20 = *(v0 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  if (v33)
  {
    goto LABEL_8;
  }

  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v22 = v21;
  v23 = sub_26F49F898();
  v24 = [v22 BOOLForKey_];

  v25 = [objc_opt_self() sharedConnection];
  if (!v25)
  {

    if (v24)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_26F49E748();
    sub_26F49E738();
    sub_26F49E718();
    sub_26F49E738();
    sub_26F49E778();
    v30 = [v4 bundleForClass_];
    v29 = sub_26F49EEC8();
    sub_26F3B8D40(v11, v32, v14 & 1);
    goto LABEL_11;
  }

  v26 = v25;
  v27 = [v25 isOnDeviceOnlyTranslationForced];

  if (((v27 | v24) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_26F49E768();
  v28 = [v4 bundleForClass_];
  v29 = sub_26F49EEC8();
  sub_26F3B8D40(v11, v32, v14 & 1);
LABEL_11:

  return v29;
}

uint64_t sub_26F3D95CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F3D9104();
  if (v14)
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    sub_26F49D868();
    result = (*(v7 + 48))(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = (*(v7 + 32))(v10, v5, v6);
      MEMORY[0x28223BE20](v20);
      *(&v24 - 4) = v15;
      *(&v24 - 3) = v16;
      *(&v24 - 16) = v17 & 1;
      *(&v24 - 1) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB30, &qword_26F4A51A0);
      sub_26F3E35C8();
      sub_26F49EDA8();
      sub_26F3B8D40(v15, v16, v17 & 1);

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9E0, &unk_26F4A50A0);
      return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    }
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9E0, &unk_26F4A50A0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  return result;
}

double sub_26F3D98B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_26F3B0EE4(a1, a2, a3 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB30, &qword_26F4A51A0);
  swift_dynamicCast();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 33) = v10;
  return result;
}

uint64_t sub_26F3D9954(char a1)
{
  v3 = type metadata accessor for LanguageDownloadView(0);
  v4 = v3;
  if (*(v1 + v3[16]) == 4)
  {
    v5 = *(v1 + v3[14]);
    v6 = (v1 + v3[12]);
    v23 = *v6;
    v25 = v6[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v7 = *(v22._rawValue + 2);
    if (v7)
    {
      v24 = MEMORY[0x277D84F90];
      sub_26F403380(0, v7, 0);
      v8 = v24;
      v9 = (v22._rawValue + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v13 = *(v24 + 16);
        v12 = *(v24 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_26F403380((v12 > 1), v13 + 1, 1);
        }

        *(v24 + 16) = v13 + 1;
        v14 = v24 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 6;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    sub_26F3B3364(v8, a1 & 1, sub_26F3D9C1C, 0);
  }

  else
  {
    v15 = *v1;
    v16 = v1[1];
    v17 = *(v1 + 16);
    type metadata accessor for LanguagesService();
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
    *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular) = a1 & 1;

    sub_26F49DFF8();
    v18 = (v1 + v4[12]);
    v19 = *v18;
    v20 = v18[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    LanguagesService.download(_:)(v22);

    sub_26F49F348();

    sub_26F49F358();
  }
}

void sub_26F3D9C1C(uint64_t a1)
{
  if (a1)
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v1 = sub_26F49DCA8();
    __swift_project_value_buffer(v1, qword_280F67E98);
    oslog = sub_26F49DC88();
    v2 = sub_26F49FDF8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v14 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_26F3B38D0(0xD00000000000001FLL, 0x800000026F4AD5F0, &v14);
      _os_log_impl(&dword_26F39E000, oslog, v2, "%s:  language download successful", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x274391F70](v4, -1, -1);
      v5 = v3;
LABEL_10:
      MEMORY[0x274391F70](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v6 = sub_26F49DCA8();
    __swift_project_value_buffer(v6, qword_280F67E98);
    oslog = sub_26F49DC88();
    v7 = sub_26F49FDD8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_26F3B38D0(0xD00000000000001FLL, 0x800000026F4AD5F0, &v14);
      *(v8 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF748, &qword_26F4A4BA8);
      v10 = sub_26F49FFB8();
      v12 = sub_26F3B38D0(v10, v11, &v14);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26F39E000, oslog, v7, "%s:  language download failed error:%s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v9, -1, -1);
      v5 = v8;
      goto LABEL_10;
    }
  }
}

uint64_t sub_26F3D9ED8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  v4 = (v0 + *(type metadata accessor for LanguageDownloadView(0) + 44));
  v5 = *v4;
  v6 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v8);

  sub_26F49F348();

  sub_26F49F358();
}

uint64_t LanguageDownloadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v123 = &v93 - v4;
  v127 = sub_26F49D878();
  v126 = *(v127 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v93 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26F49D818();
  v124 = *(v94 - 8);
  v125 = v94 - 8;
  v121 = v124;
  v7 = *(v124 + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v120 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_26F49E6A8();
  v119 = *(v122 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v122);
  v118 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_26F49E9D8();
  v113 = *(v112 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF758, &qword_26F4A4BC0);
  v99 = *(v13 - 8);
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v93 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF760, &qword_26F4A4BC8);
  v103 = *(v102 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  v96 = &v93 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF768, &qword_26F4A4BD0);
  v106 = *(v105 - 8);
  v19 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  v98 = &v93 - v20;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF770, &qword_26F4A4BD8);
  v110 = *(v108 - 8);
  v21 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  v100 = &v93 - v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF778, &qword_26F4A4BE0);
  v115 = *(v114 - 8);
  v23 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  v104 = &v93 - v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF780, &qword_26F4A4BE8);
  v117 = *(v116 - 8);
  v25 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v93 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF788, &qword_26F4A4BF0);
  v27 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128 - 8);
  v101 = &v93 - v28;
  v132 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF790, &qword_26F4A4BF8);
  sub_26F3B18CC(&qword_2806DF798, &qword_2806DF790, &qword_26F4A4BF8);
  sub_26F49EDB8();
  v29 = type metadata accessor for LanguageDownloadView(0);
  v30 = *(v29 + 32);
  v107 = v29;
  v31 = (v1 + v30);
  v32 = *v31;
  v33 = *(v31 + 1);
  v137 = v32;
  v138 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v131 = v1;
  v34 = sub_26F3B18CC(&qword_2806DF7A0, &qword_2806DF758, &qword_26F4A4BC0);
  sub_26F49F0F8();

  (*(v99 + 8))(v16, v13);
  v35 = (v1 + *(v29 + 28));
  v36 = *v35;
  v37 = *(v35 + 1);
  v137 = v36;
  v138 = v37;
  sub_26F49F368();
  v130 = v1;
  v38 = v1;
  v97 = v1;
  v133 = v13;
  v134 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v98;
  v41 = v102;
  v42 = v96;
  sub_26F49F0F8();

  v43 = v42;
  v44 = v41;
  (*(v103 + 8))(v43, v41);
  v45 = v109;
  sub_26F49E9C8();
  v133 = v44;
  v134 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = MEMORY[0x277CDE0D0];
  v48 = v100;
  v49 = v45;
  v50 = v105;
  v51 = v112;
  sub_26F49F198();
  v52 = v51;
  (*(v113 + 8))(v49, v51);
  (*(v106 + 8))(v40, v50);
  v129 = v38;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7A8, &qword_26F4A4C08);
  v133 = v50;
  v134 = v52;
  v135 = v46;
  v136 = v47;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_26F3B18CC(&qword_2806DF7B0, &qword_2806DF7A8, &qword_26F4A4C08);
  v56 = v104;
  v57 = v108;
  sub_26F49F148();
  v58 = v57;
  (*(v110 + 8))(v48, v57);
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass_];
  v61 = sub_26F49EEC8();
  v63 = v62;
  LOBYTE(v48) = v64;
  v133 = v58;
  v134 = v53;
  v135 = v54;
  v136 = v55;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v111;
  v67 = v114;
  sub_26F49F008();
  v68 = v48 & 1;
  v69 = v121;
  v70 = v63;
  v71 = v123;
  sub_26F3B8D40(v61, v70, v68);
  v72 = v120;

  v73 = v67;
  (*(v115 + 8))(v56, v67);
  v74 = v119;
  v75 = v118;
  v76 = v122;
  (*(v119 + 104))(v118, *MEMORY[0x277CDDDC0], v122);
  v133 = v73;
  v134 = v65;
  swift_getOpaqueTypeConformance2();
  v77 = v101;
  v78 = v116;
  sub_26F49F0D8();
  (*(v74 + 8))(v75, v76);
  (*(v117 + 8))(v66, v78);
  KeyPath = swift_getKeyPath();
  v80 = (v77 + *(v128 + 36));
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7B8, &qword_26F4A4C40) + 28);
  v82 = v107;
  v83 = *(v107 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  v84 = v97;
  sub_26F49F368();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C8, &qword_26F4A4C50);
  (*(*(v85 - 8) + 56))(v80 + v81, 0, 1, v85);
  *v80 = KeyPath;
  v86 = *(v84 + *(v82 + 60));
  sub_26F49D7D8();
  sub_26F49D808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7D0, &qword_26F4A4C58);
  v87 = *(v124 + 72);
  v88 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  *(swift_allocObject() + 16) = xmmword_26F4A3B80;
  sub_26F49D7D8();
  sub_26F49D808();
  sub_26F49D7D8();
  v89 = v126;
  v90 = v127;
  sub_26F49D808();
  sub_26F49D868();
  result = (*(v89 + 48))(v71, 1, v90);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v92 = v93;
    (*(v89 + 32))(v93, v71, v90);
    sub_26F3E1190();
    sub_26F49EEE8();

    (*(v89 + 8))(v92, v90);
    (*(v69 + 8))(v72, v94);
    return sub_26F3B6B4C(v77, &qword_2806DF788, &qword_26F4A4BF0);
  }

  return result;
}

uint64_t sub_26F3DAFE0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF938, &qword_26F4A4FE8);
  v153 = *(v3 - 8);
  v154 = v3;
  v4 = *(v153 + 64);
  MEMORY[0x28223BE20](v3);
  v160 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v159 = v126 - v7;
  v145 = sub_26F49E358();
  v143 = *(v145 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v140 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF940, &qword_26F4A4FF0);
  v10 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v138 = v126 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF948, &qword_26F4A4FF8);
  v142 = *(v144 - 8);
  v12 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v139 = v126 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF950, &qword_26F4A5000);
  v14 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v146 = v126 - v15;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF958, &qword_26F4A5008);
  v16 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v156 = (v126 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF960, &qword_26F4A5010);
  v149 = *(v18 - 8);
  v150 = v18;
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v18);
  v158 = v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v162 = v126 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF968, &qword_26F4A5018);
  v23 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v126[1] = v126 - v24;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF970, &qword_26F4A5020);
  v136 = *(v137 - 8);
  v25 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v126[0] = v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF978, &qword_26F4A5028);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v157 = v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v163 = v126 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF980, &qword_26F4A5030);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = v126 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF988, &qword_26F4A5038);
  v130 = *(v36 - 8);
  v37 = *(v130 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = v126 - v38;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF990, &qword_26F4A5040);
  v131 = *(v132 - 8);
  v40 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v42 = v126 - v41;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF998, &qword_26F4A5048);
  v133 = *(v134 - 8);
  v43 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v45 = v126 - v44;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9A0, &qword_26F4A5050);
  v46 = *(v135 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v135);
  v129 = v126 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9A8, &qword_26F4A5058);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v155 = v126 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = v126 - v53;
  v128 = type metadata accessor for LanguageDownloadView(0);
  v55 = *(v128 + 52);
  v151 = a1;
  v56 = *(a1 + v55);
  v161 = v54;
  if (v56)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA78, &qword_26F4A50E8);
    sub_26F3E2874();
    sub_26F49F4F8();
    *&v35[*(v32 + 36)] = sub_26F49F438();
    sub_26F49EC38();
    v57 = sub_26F3E28F8();
    sub_26F49F048();
    sub_26F3B6B4C(v35, &qword_2806DF980, &qword_26F4A5030);
    sub_26F49EC88();
    v164 = v32;
    v165 = v57;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26F49F048();
    (*(v130 + 8))(v39, v36);
    sub_26F49E068();
    v164 = v36;
    v165 = OpaqueTypeConformance2;
    v59 = v161;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v132;
    sub_26F49F028();
    (*(v131 + 8))(v42, v61);
    sub_26F49EC48();
    v164 = v61;
    v165 = v60;
    swift_getOpaqueTypeConformance2();
    v62 = v129;
    v63 = v134;
    sub_26F49EFC8();

    (*(v133 + 8))(v45, v63);
    v64 = v135;
    (*(v46 + 32))(v59, v62, v135);
    (*(v46 + 56))(v59, 0, 1, v64);
  }

  else
  {
    (*(v46 + 56))(v54, 1, 1, v135);
  }

  v167 = &type metadata for TranslateFeatures;
  v168 = sub_26F3D3D60();
  LOBYTE(v164) = 3;
  v65 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(&v164);
  if ((v65 & 1) != 0 && *(v151 + *(v128 + 64)) != 4)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = [objc_opt_self() bundleForClass_];
    v70 = sub_26F49D7D8();
    v72 = v71;

    v164 = v70;
    v165 = v72;
    sub_26F3BDC0C();
    v73 = sub_26F49EED8();
    v75 = v74;
    v77 = v76;
    v79 = v78 & 1;
    KeyPath = swift_getKeyPath();
    v164 = v73;
    v165 = v75;
    v166 = v79;
    v167 = v77;
    v168 = KeyPath;
    v169 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA60, &qword_26F4A50E0);
    sub_26F3E2700();
    sub_26F49F0C8();
    sub_26F3B8D40(v73, v75, v79);

    sub_26F3E27B8(&qword_2806DFA70, &qword_2806DF968, &qword_26F4A5018, sub_26F3E2700);
    v81 = v126[0];
    sub_26F49F508();
    v82 = v137;
    v83 = v81 + *(v137 + 36);
    *v83 = xmmword_26F4A4B60;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;
    sub_26F3BBAEC(v81, v163, &qword_2806DF970, &qword_26F4A5020);
    v67 = v82;
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v67 = v137;
  }

  (*(v136 + 56))(v163, v66, 1, v67);
  v84 = sub_26F3D8CF8();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v164 = v84;
  v165 = v85;
  v166 = v87;
  v167 = v89;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
  sub_26F3E2158();
  sub_26F49F0C8();
  sub_26F3E21D4(v84, v86, v88, v90);
  v91 = v138;
  sub_26F3D95CC(v138);
  v92 = swift_getKeyPath();
  v93 = v141;
  v94 = v91 + *(v141 + 36);
  *v94 = v92;
  *(v94 + 8) = 0;
  v95 = v140;
  sub_26F49E348();
  v96 = sub_26F3E2218();
  v97 = sub_26F3E1FB4(&qword_2806DF160, MEMORY[0x277CDDB18]);
  v98 = v139;
  v99 = v145;
  sub_26F49EF48();
  (*(v143 + 8))(v95, v99);
  sub_26F3B6B4C(v91, &qword_2806DF940, &qword_26F4A4FF0);
  v164 = v93;
  v165 = v99;
  v166 = v96;
  v167 = v97;
  swift_getOpaqueTypeConformance2();
  v100 = v144;
  sub_26F49F0C8();
  v101 = (*(v142 + 8))(v98, v100);
  MEMORY[0x28223BE20](v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9F8, &qword_26F4A50B0);
  v145 = sub_26F3E27B8(&qword_2806DFA00, &qword_2806DF958, &qword_26F4A5008, sub_26F3E2158);
  sub_26F3B18CC(&qword_2806DFA08, &qword_2806DF9F8, &qword_26F4A50B0);
  sub_26F3E2388();
  sub_26F49F4E8();
  v102 = sub_26F3D8F04();
  v104 = v103;
  LOBYTE(v95) = v105;
  v107 = v106;
  v164 = v102;
  v165 = v103;
  v166 = v105;
  v167 = v106;
  sub_26F49F0C8();
  v108 = sub_26F3E21D4(v102, v104, v95, v107);
  MEMORY[0x28223BE20](v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA18, &qword_26F4A50B8);
  sub_26F3E24D8();
  v109 = v159;
  sub_26F49F4D8();
  v110 = v155;
  sub_26F3A396C(v161, v155);
  v111 = v157;
  sub_26F3B8DD4(v163, v157, &qword_2806DF978, &qword_26F4A5028);
  v113 = v149;
  v112 = v150;
  v156 = *(v149 + 16);
  v114 = v158;
  v156(v158, v162, v150);
  v115 = v153;
  v151 = *(v153 + 16);
  v116 = v109;
  v117 = v154;
  v151(v160, v116, v154);
  v118 = v110;
  v119 = v152;
  sub_26F3A396C(v118, v152);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA58, &qword_26F4A50D8);
  sub_26F3B8DD4(v111, v119 + v120[12], &qword_2806DF978, &qword_26F4A5028);
  v156((v119 + v120[16]), v114, v112);
  v121 = v119 + v120[20];
  v122 = v160;
  v151(v121, v160, v117);
  v123 = *(v115 + 8);
  v123(v159, v117);
  v124 = *(v113 + 8);
  v124(v162, v112);
  sub_26F3B6B4C(v163, &qword_2806DF978, &qword_26F4A5028);
  sub_26F3B6B4C(v161, &qword_2806DF9A8, &qword_26F4A5058);
  v123(v122, v117);
  v124(v158, v112);
  sub_26F3B6B4C(v157, &qword_2806DF978, &qword_26F4A5028);
  return sub_26F3B6B4C(v155, &qword_2806DF9A8, &qword_26F4A5058);
}

uint64_t sub_26F3DC2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F49F5A8();
  sub_26F49E3D8();
  *(a2 + 56) = v8;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 104) = v11;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *a2 = a1;
  *(a2 + 40) = v7;
}

uint64_t sub_26F3DC390@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_26F49F528();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LanguageDownloadView(0);
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62);
  v72 = v8;
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAB0, &qword_26F4A5158);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v61 = v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAB8, &qword_26F4A5160);
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = v56 - v16;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v59 = a1;
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v20 = Array<A>.installed.getter(v77);

  v75 = v20;
  KeyPath = swift_getKeyPath();
  v60 = type metadata accessor for LanguageDownloadView;
  sub_26F3E1DA0(a1, v9, type metadata accessor for LanguageDownloadView);
  v21 = *(v6 + 80);
  v22 = ((v21 + 16) & ~v21);
  v23 = swift_allocObject();
  v57 = type metadata accessor for LanguageDownloadView;
  sub_26F3E2090(v9, v22 + v23, type metadata accessor for LanguageDownloadView);
  v56[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAC0, &qword_26F4A5168);
  v56[0] = sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0);
  v24 = type metadata accessor for LanguageListItem(255);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAC8, &qword_26F4A5170);
  v26 = sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem);
  v27 = v9;
  v28 = v62;
  v29 = sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170);
  v77 = v24;
  v78 = v25;
  v79 = v26;
  v80 = v29;
  v73 = 1;
  swift_getOpaqueTypeConformance2();
  v30 = v61;
  sub_26F49F4B8();
  v31 = v59;
  sub_26F3E1DA0(v59, v27, v60);
  KeyPath = v21;
  v32 = swift_allocObject();
  v60 = v22;
  v33 = v27;
  sub_26F3E2090(v27, v22 + v32, v57);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26F3E2E2C;
  *(v34 + 24) = v32;
  v35 = &v30[*(v63 + 36)];
  v36 = v30;
  *v35 = sub_26F3E2E9C;
  v35[1] = v34;
  v37 = v31 + v28[6];
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v75) = v38;
  v76 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v74 = v31;
  sub_26F3E2ECC();
  v40 = v64;
  sub_26F49F0F8();

  sub_26F3B6B4C(v36, &qword_2806DFAB0, &qword_26F4A5158);
  v41 = v28[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  v42 = v65;
  sub_26F49F348();
  LOBYTE(v36) = sub_26F49F518();
  (*(v66 + 8))(v42, v67);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (v36)
  {
    if (*(v31 + v28[16]) == 4)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v73 = 1;
    }

    else
    {
      sub_26F3E1DA0(v31, v33, type metadata accessor for LanguageDownloadView);
      v46 = v60;
      v45 = swift_allocObject();
      sub_26F3E2090(v33, v46 + v45, type metadata accessor for LanguageDownloadView);
      LOBYTE(v75) = 0;
      sub_26F49F338();
      v43 = v77;
      v73 = v78;

      v44 = sub_26F3E3168;
    }
  }

  v48 = v68;
  v47 = v69;
  v49 = *(v69 + 16);
  v50 = v70;
  v49(v68, v40, v70);
  v51 = v71;
  v49(v71, v48, v50);
  v52 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB08, &unk_26F4A5188) + 48)];
  v53 = v73;
  sub_26F3E30C8(v43, v73, v44);
  sub_26F3E3118(v43, v53, v44);
  *v52 = v43;
  v52[1] = v53;
  v52[2] = v44;
  v52[3] = v45;
  v54 = *(v47 + 8);
  v54(v40, v50);
  sub_26F3E3118(v43, v53, v44);
  return (v54)(v48, v50);
}

uint64_t sub_26F3DCC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  MEMORY[0x2743907E0](*a1, *(a1 + 8));
  MEMORY[0x2743907E0](32, 0xE100000000000000);
  result = sub_26F400C68(v3, v4);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26F3DCC9C(_OWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageListItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[2];
  v18[1] = a1[1];
  v18[2] = v8;
  v18[0] = *a1;
  v10 = v7 + *(v9 + 24);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a1[2];
  v7[1] = a1[1];
  v7[2] = v11;
  *v7 = *a1;
  v12 = *(v4 + 20);
  sub_26F3E2CA4(v18, v17);

  sub_26F49D978();
  v15 = a2;
  v16 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFAC8, &qword_26F4A5170);
  sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem);
  sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170);
  sub_26F49EFA8();
  return sub_26F3E2D18(v7, type metadata accessor for LanguageListItem);
}

uint64_t sub_26F3DCE78(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-v9];
  sub_26F49DF48();
  v11 = sub_26F49DF68();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_26F3E1DA0(a1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageDownloadView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26F3E2090(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for LanguageDownloadView);
  v14 = (v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  sub_26F3E2CA4(a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
  return sub_26F49F388();
}

uint64_t sub_26F3DD0E0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = (a1 + *(v4 + 44));
  v6 = *v5;
  v7 = v5[1];
  v22 = *v5;
  v23 = v7;
  sub_26F3E2CA4(a2, &v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v8 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_26F446268(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_26F446268((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[48 * v10];
  v12 = *a2;
  v13 = a2[2];
  *(v11 + 3) = a2[1];
  *(v11 + 4) = v13;
  *(v11 + 2) = v12;
  v20 = v6;
  v21 = v7;
  sub_26F49F358();

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 voiceOverImageCaptionsEnabled];

  v16 = a1 + *(v4 + 24);
  v18 = *(v16 + 8);
  LOBYTE(v20) = *v16;
  v17 = v20;
  v21 = v18;
  LOBYTE(v22) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F358();
  LOBYTE(v20) = v17;
  v21 = v18;
  result = sub_26F49F348();
  if ((v22 & 1) == 0)
  {
    return sub_26F3D9ED8();
  }

  return result;
}

uint64_t sub_26F3DD2D0()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  sub_26F3BDC0C();
  return sub_26F49F328();
}

uint64_t sub_26F3DD3B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v6 = Array<A>.installed.getter(v13);

  v11[2] = v6;
  v11[3] = a2;
  sub_26F3DD724(sub_26F3E3268, v11);

  v7 = [objc_opt_self() sharedInstance];
  LOBYTE(v3) = [v7 voiceOverImageCaptionsEnabled];

  v8 = a2 + *(type metadata accessor for LanguageDownloadView(0) + 24);
  v9 = *(v8 + 8);
  LOBYTE(v13) = *v8;
  LOBYTE(v6) = v13;
  v14 = v9;
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F358();
  LOBYTE(v13) = v6;
  v14 = v9;
  result = sub_26F49F348();
  if ((v12 & 1) == 0)
  {
    return sub_26F3D9ED8();
  }

  return result;
}

uint64_t *sub_26F3DD58C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) == 0 && v3 < *(a2 + 16))
  {
    v4 = a2 + 48 * v3;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 48);
    v17 = *(v4 + 56);
    v8 = *(v4 + 72);
    v16 = *(v4 + 64);
    v9 = (a3 + *(type metadata accessor for LanguageDownloadView(0) + 44));
    v10 = *v9;
    v11 = v9[1];

    v18 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v12 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_26F446268(0, *(v19 + 16) + 1, 1, v19);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_26F446268((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[48 * v14];
    *(v15 + 4) = v6;
    *(v15 + 5) = v18;
    *(v15 + 6) = v7;
    v15[56] = v17;
    *(v15 + 8) = v16;
    *(v15 + 9) = v8;
    sub_26F49F358();
  }

  return result;
}

uint64_t sub_26F3DD724(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v29[0] = a1;
  v29[1] = a2;
  v31 = sub_26F49DAC8();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49DAD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB10, &qword_26F4A5198);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v29 - v18;
  (*(v10 + 16))(v13, v4, v9, v17);
  v20 = MEMORY[0x277CC9A28];
  sub_26F3E1FB4(&qword_2806DFB18, MEMORY[0x277CC9A28]);
  sub_26F49FA78();
  v21 = *(v15 + 44);
  sub_26F3E1FB4(&qword_2806DFB20, v20);
  v22 = (v5 + 8);
  do
  {
    sub_26F49FD78();
    sub_26F3E1FB4(&qword_2806DFB28, MEMORY[0x277CC9A08]);
    v23 = v31;
    v24 = sub_26F49F868();
    (*v22)(v8, v23);
    if (v24)
    {
      break;
    }

    v25 = sub_26F49FD98();
    v27 = *v26;
    v25(v30, 0);
    sub_26F49FD88();
    v30[0] = v27;
    (v29[0])(v30);
  }

  while (!v3);
  return sub_26F3B6B4C(v19, &qword_2806DFB10, &qword_26F4A5198);
}

uint64_t sub_26F3DDA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for LanguageDownloadView(0);
  v4 = v3 - 8;
  v101 = *(v3 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = v6;
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F208();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v91 - v11;
  v12 = sub_26F49DAB8();
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v12);
  v95 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v91 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v91 - v27;
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v97 = objc_opt_self();
  v98 = ObjCClassFromMetadata;
  v30 = [v97 bundleForClass_];
  v31 = sub_26F49D7D8();
  v99 = v32;
  v100 = v31;

  v33 = *(v4 + 52);
  v104 = a1;
  v34 = (a1 + v33);
  v36 = *v34;
  v35 = v34[1];
  v110 = v36;
  v111 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  if (v109[2])
  {
    v37 = v109[4];
    v38 = v109[5];
    swift_bridgeObjectRetain_n();

    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v39 = sub_26F49D9F8();
    v40 = sub_26F49D9F8();
    v41 = [v39 lt:3 displayNameForContext:v40 inTargetLocale:?];

    v42 = MEMORY[0x277D837D0];
    if (v41)
    {
      v43 = sub_26F49F8C8();
      v93 = v44;
      v94 = v43;

      v45 = *(v107 + 8);
      v45(v25, v12);
      v45(v28, v12);
      v46 = [v97 bundleForClass_];
      sub_26F49D7D8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_26F4A3150;
      *(v47 + 56) = v42;
      *(v47 + 64) = sub_26F3CDADC();
      v48 = v93;
      *(v47 + 32) = v94;
      *(v47 + 40) = v48;
      v49 = sub_26F49F8F8();
      v93 = v50;
      v94 = v49;
    }

    else
    {
      v45 = *(v107 + 8);
      v45(v25, v12);
      v45(v28, v12);
      v93 = 0xE000000000000000;
      v94 = 0;
    }

    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v55 = sub_26F49D9F8();
    v56 = sub_26F49D9F8();
    v57 = [v55 lt:2 displayNameForContext:v56 inTargetLocale:?];

    if (v57)
    {
      v92 = sub_26F49F8C8();
      v59 = v58;

      v45(v19, v12);
      v45(v22, v12);
      v60 = v96;
      sub_26F49D978();
      v61 = v95;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v62 = sub_26F49D9F8();
      v63 = sub_26F49D9F8();
      v64 = [v62 lt:3 displayNameForContext:v63 inTargetLocale:?];

      if (v64)
      {
        v65 = sub_26F49F8C8();
        v67 = v66;

        v45(v61, v12);
        v45(v60, v12);
        v68 = [v97 bundleForClass_];
        sub_26F49D7D8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_26F4A3B80;
        v70 = MEMORY[0x277D837D0];
        *(v69 + 56) = MEMORY[0x277D837D0];
        v71 = sub_26F3CDADC();
        *(v69 + 32) = v92;
        *(v69 + 40) = v59;
        *(v69 + 96) = v70;
        *(v69 + 104) = v71;
        *(v69 + 64) = v71;
        *(v69 + 72) = v65;
        *(v69 + 80) = v67;
        v51 = sub_26F49F8F8();
        v53 = v72;

LABEL_12:
        v54 = v93;
        v52 = v94;
        goto LABEL_13;
      }

      v45(v61, v12);
      v45(v60, v12);
    }

    else
    {

      v45(v19, v12);
      v45(v22, v12);
    }

    v51 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_12;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0xE000000000000000;
  v54 = 0xE000000000000000;
LABEL_13:
  v110 = v52;
  v111 = v54;
  sub_26F3BDC0C();
  v107 = sub_26F49EED8();
  v97 = v74;
  v98 = v73;
  LODWORD(v96) = v75;
  v110 = v51;
  v111 = v53;
  v76 = sub_26F49EED8();
  v94 = v77;
  v95 = v76;
  v93 = v78;
  v92 = v79 & 1;
  v91 = type metadata accessor for LanguageDownloadView;
  v80 = v103;
  v81 = v104;
  sub_26F3E1DA0(v104, v103, type metadata accessor for LanguageDownloadView);
  v82 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v83 = swift_allocObject();
  sub_26F3E2090(v80, v83 + v82, type metadata accessor for LanguageDownloadView);
  sub_26F49F1E8();

  v110 = v100;
  v111 = v99;
  v84 = sub_26F49EED8();
  v86 = v85;
  v88 = v87;
  sub_26F3E1DA0(v81, v80, v91);
  v89 = swift_allocObject();
  sub_26F3E2090(v80, v89 + v82, type metadata accessor for LanguageDownloadView);
  sub_26F49F1D8();
  sub_26F3B8D40(v84, v86, v88 & 1);

  return sub_26F49F1C8();
}

uint64_t sub_26F3DE3E0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LanguageDownloadView(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();

  sub_26F49F358();
}

uint64_t sub_26F3DE494(uint64_t *a1)
{
  v2 = sub_26F49F528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  LanguagesService.deleteAll()();

  (*(v3 + 104))(v9, *MEMORY[0x277CDF0D8], v2);
  LODWORD(v10) = *(type metadata accessor for LanguageDownloadView(0) + 40);
  (*(v3 + 16))(v6, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  sub_26F49F358();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_26F3DE670(uint64_t a1)
{
  v2 = type metadata accessor for LanguageDownloadView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v8 = Array<A>.downloadable.getter(v13);

  v13 = v8;
  swift_getKeyPath();
  sub_26F3E1DA0(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_26F3E2090(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LanguageDownloadView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA30, &qword_26F4A50C0);
  sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0);
  sub_26F3E255C();
  return sub_26F49F4B8();
}

uint64_t sub_26F3DE918@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = sub_26F49F528();
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = v80 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v80 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v80 - v18;
  v20 = type metadata accessor for LanguageDownloadView(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = type metadata accessor for LanguageDownloadButton(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA40, &qword_26F4A50C8);
  v28 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v90 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v83 = v80 - v31;
  v32 = a1[2];
  v96 = a1[1];
  v97 = v32;
  v95 = *a1;
  v33 = *(v21 + 48);
  v34 = *(v24 + 24);
  sub_26F3E2CA4(&v95, &v93);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  v80[3] = v33;
  v80[2] = v35;
  sub_26F49F348();
  v86 = a2;
  sub_26F3E1DA0(a2, v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v36 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v37 = swift_allocObject();
  sub_26F3E2090(v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for LanguageDownloadView);
  v38 = (v37 + ((v23 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  v39 = v95;
  v40 = v96;
  *v38 = v95;
  v38[1] = v40;
  v41 = v97;
  v38[2] = v97;
  *v27 = v39;
  v27[1] = v40;
  v27[4] = v40;
  v27[5] = v41;
  v27[2] = v41;
  v27[3] = v39;
  v42 = (v27 + *(v24 + 28));
  *v42 = sub_26F3E2D00;
  v42[1] = v37;
  v43 = v95;
  sub_26F3E2CA4(&v95, &v93);
  sub_26F3E2CA4(&v95, &v93);

  v80[1] = v43;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v44 = sub_26F49D9F8();
  v45 = sub_26F49D9F8();
  v46 = [v44 lt:0 displayNameForContext:v45 inTargetLocale:?];

  if (v46)
  {
    v47 = sub_26F49F8C8();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v51 = v92 + 8;
  v50 = *(v92 + 8);
  v52 = v16;
  v53 = v91;
  v50(v52, v91);
  v92 = v51;
  v50(v19, v53);
  v93 = v47;
  v94 = v49;
  sub_26F3BDC0C();
  v54 = sub_26F49EED8();
  v56 = v55;
  v58 = v57;
  sub_26F3E1FB4(&qword_2806DFA48, type metadata accessor for LanguageDownloadButton);
  sub_26F49EFB8();
  sub_26F3B8D40(v54, v56, v58 & 1);

  sub_26F3E2D18(v27, type metadata accessor for LanguageDownloadButton);

  v59 = v82;
  sub_26F49D978();
  v60 = v84;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v61 = sub_26F49D9F8();
  v62 = sub_26F49D9F8();
  v63 = [v61 lt:0 displaySubnameForContext:v62 inTargetLocale:?];

  if (v63)
  {
    v64 = sub_26F49F8C8();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0xE000000000000000;
  }

  v67 = v91;
  v50(v60, v91);
  v50(v59, v67);
  v93 = v64;
  v94 = v66;
  v68 = sub_26F49EED8();
  v70 = v69;
  LOBYTE(v67) = v71;
  v72 = v83;
  v73 = v90;
  sub_26F49E2F8();
  sub_26F3B8D40(v68, v70, v67 & 1);

  sub_26F3B6B4C(v73, &qword_2806DFA40, &qword_26F4A50C8);
  v74 = v85;
  sub_26F49F348();
  LOBYTE(v73) = sub_26F49F518();
  (*(v87 + 8))(v74, v88);
  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v73 & 1;
  v77 = v89;
  sub_26F3BBAEC(v72, v89, &qword_2806DFA40, &qword_26F4A50C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFA30, &qword_26F4A50C0);
  v79 = (v77 + *(result + 36));
  *v79 = KeyPath;
  v79[1] = sub_26F3E2D78;
  v79[2] = v76;
  return result;
}

uint64_t sub_26F3DF0CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  result = type metadata accessor for LanguageDownloadView(0);
  v71 = result;
  v72 = a1;
  if (*(a1 + *(result + 64)) == 1)
  {
    v76 = 0x53555F6E65;
    v77 = 0xE500000000000000;
    v78 = 45;
    v79 = 0xE100000000000000;
    v73 = 95;
    v74 = 0xE100000000000000;
    sub_26F3BDC0C();
    v16 = sub_26F49FFF8();
    v18 = v17;
    LOBYTE(v76) = 1;

    v70 = v16;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v19 = sub_26F49D9F8();
    v20 = sub_26F49D9F8();
    v21 = [v19 lt:0 displayNameForContext:v20 inTargetLocale:?];

    if (v21)
    {
      v69 = sub_26F49F8C8();
      v23 = v22;

      v24 = *(v5 + 8);
      v24(v11, v4);
      v24(v14, v4);
    }

    else
    {
      v25 = v11;
      v26 = *(v5 + 8);
      v26(v25, v4);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v27 = sub_26F49D9F8();
      v28 = sub_26F49D9F8();
      v29 = [v27 lt:0 displaySubnameForContext:v28 inTargetLocale:?];

      if (v29)
      {
        v69 = sub_26F49F8C8();
        v23 = v30;

        v26(v8, v4);
        v26(v14, v4);
      }

      else
      {
        v26(v8, v4);
        v26(v14, v4);

        v69 = v70;
        v23 = v18;
      }
    }

    v31 = v76;
    v32 = (v72 + v71[12]);
    v33 = *v32;
    v34 = v32[1];
    v76 = *v32;
    v77 = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v35 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_26F446268(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_26F446268((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[48 * v37];
    *(v38 + 4) = v70;
    *(v38 + 5) = v18;
    *(v38 + 6) = 1;
    v38[56] = v31;
    *(v38 + 8) = v69;
    *(v38 + 9) = v23;
    v78 = v33;
    v79 = v34;
    v75 = v35;
    sub_26F49F358();
  }

  if (*(a2 + 24))
  {
    v39 = v72;
    if (!*(a2 + 16))
    {
      return result;
    }

    v40 = (v72 + v71[12]);
    v41 = *v40;
    v42 = v40[1];
    v78 = *v40;
    v79 = v42;
    sub_26F3E2CA4(a2, &v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
    sub_26F49F348();
    v43 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_26F446268(0, *(v43 + 2) + 1, 1, v43);
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_26F446268((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[48 * v45];
    v47 = *a2;
    v48 = *(a2 + 32);
    *(v46 + 3) = *(a2 + 16);
    *(v46 + 4) = v48;
    *(v46 + 2) = v47;
    v76 = v41;
    v77 = v42;
    v75 = v43;
    sub_26F49F358();

    v49 = *v39;
    v50 = v39[1];
    v51 = *(v39 + 16);
    type metadata accessor for LanguagesService();
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
    v52 = sub_26F49DFF8();
    if (*(v52 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability))
    {
      v53 = *(v52 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability);

      Reachability.networkStatus.getter(&v76);

      if (v76 > 1u)
      {
        if (v76 == 2)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_30;
        }
      }

      else
      {
        v63 = sub_26F4A0458();

        if (v63)
        {
LABEL_30:
          v64 = *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser);

          if ((v64 & 1) == 0)
          {
            v65 = v39 + v71[7];
            v66 = *v65;
            v67 = *(v65 + 1);
            LOBYTE(v76) = v66;
            v77 = v67;
            LOBYTE(v78) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
            return sub_26F49F358();
          }
        }
      }
    }

    else
    {
    }

    return sub_26F3D9954(0);
  }

  v54 = (v72 + v71[11]);
  v55 = *v54;
  v56 = v54[1];
  v78 = *v54;
  v79 = v56;
  sub_26F3E2CA4(a2, &v76);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v57 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_26F446268(0, *(v57 + 2) + 1, 1, v57);
  }

  v59 = *(v57 + 2);
  v58 = *(v57 + 3);
  if (v59 >= v58 >> 1)
  {
    v57 = sub_26F446268((v58 > 1), v59 + 1, 1, v57);
  }

  *(v57 + 2) = v59 + 1;
  v60 = &v57[48 * v59];
  v61 = *a2;
  v62 = *(a2 + 32);
  *(v60 + 3) = *(a2 + 16);
  *(v60 + 4) = v62;
  *(v60 + 2) = v61;
  v76 = v55;
  v77 = v56;
  v75 = v57;
  sub_26F49F358();

  return sub_26F3D9ED8();
}

uint64_t sub_26F3DF8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF928, &qword_26F4A4FD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - v5;
  sub_26F49E768();
  v7 = type metadata accessor for LanguageDownloadView(0);
  v8 = *(a1 + *(v7 + 60));
  v9 = sub_26F49EEC8();
  v29[2] = v10;
  v29[3] = v9;
  v29[1] = v11;
  v32 = *(a1 + *(v7 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF930, &qword_26F4A4FE0);
  result = sub_26F49F348();
  v13 = v31;
  if (v31)
  {
    ErrorValue = swift_getErrorValue();
    v15 = v30;
    v16 = *(v30 - 8);
    v17 = *(v16 + 64);
    v18 = MEMORY[0x28223BE20](ErrorValue);
    v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v20, v18);

    v21 = sub_26F4A04D8();
    v23 = v22;
    (*(v16 + 8))(v20, v15);
    *&v32 = v21;
    *(&v32 + 1) = v23;
    sub_26F3BDC0C();
    sub_26F49EED8();
    sub_26F49E768();
    v24 = sub_26F49EEC8();
    v26 = v25;
    LOBYTE(v16) = v27;
    sub_26F49F1F8();
    sub_26F3B8D40(v24, v26, v16 & 1);

    v28 = sub_26F49F208();
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    return sub_26F49F1B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F3DFC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_26F49E758();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v82[1] = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26F49DA98();
  v85 = *(v86 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = v82 - v10;
  v11 = sub_26F49DAB8();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = v82 - v15;
  v16 = type metadata accessor for LanguageDownloadView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = v16 - 8;
  v91 = v16 - 8;
  MEMORY[0x28223BE20](v16 - 8);
  v20 = sub_26F49F208();
  v96 = *(v20 - 8);
  v97 = v20;
  v21 = *(v96 + 64);
  MEMORY[0x28223BE20](v20);
  v94 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v93 = v82 - v24;
  MEMORY[0x28223BE20](v25);
  v100 = v82 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v82 - v28;
  sub_26F49E768();
  v30 = *(v19 + 68);
  v90 = a1;
  v92 = *(a1 + v30);
  v31 = sub_26F49EEC8();
  v33 = v32;
  v35 = v34;
  sub_26F3E1DA0(a1, v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
  v36 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v37 = swift_allocObject();
  sub_26F3E2090(v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for LanguageDownloadView);
  sub_26F49F1F8();
  sub_26F3B8D40(v31, v33, v35 & 1);

  sub_26F49E768();
  v38 = sub_26F49EEC8();
  v40 = v39;
  LOBYTE(v18) = v41;
  sub_26F49F1F8();
  sub_26F3B8D40(v38, v40, v18 & 1);

  v42 = *v90;
  v43 = *(v90 + 8);
  v44 = *(v90 + 16);
  v45 = v90;
  type metadata accessor for LanguagesService();
  sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
  *(sub_26F49DFF8() + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser) = 1;

  v46 = (v45 + *(v91 + 56));
  v48 = *v46;
  v47 = v46[1];
  v102 = v48;
  v103 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF920, &qword_26F4A4FD0);
  sub_26F49F348();
  v49 = v101[2];
  v95 = v29;
  if (!v49)
  {

    goto LABEL_5;
  }

  v50 = v101[4];
  v51 = v101[5];

  sub_26F49D978();
  v52 = v84;
  sub_26F49DAA8();
  v53 = v87;
  sub_26F49DA58();
  (*(v85 + 8))(v52, v86);
  v54 = sub_26F49D9B8();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    (*(v88 + 8))(v99, v89);
    sub_26F3B6B4C(v53, &qword_2806DF918, &qword_26F4A5810);
LABEL_5:
    v56 = v96;
    goto LABEL_6;
  }

  sub_26F49D998();
  v70 = v89;
  v71 = *(v88 + 8);
  v71(v99, v89);
  (*(v55 + 8))(v53, v54);
  v72 = v83;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  sub_26F49D9C8();
  v74 = v73;

  v71(v72, v70);
  v56 = v96;
  if (v74)
  {
    sub_26F49E748();
    sub_26F49E738();
    sub_26F49E728();

    sub_26F49E738();
    sub_26F49E778();
    v75 = v92;
    v99 = sub_26F49EEC8();
    v91 = v77;
    v92 = v76;
    LODWORD(v90) = v78;
    sub_26F49E768();
    v79 = sub_26F49EEC8();
    v88 = v80;
    v89 = v79;
    v63 = v56;
    v81 = *(v56 + 16);
    v65 = v95;
    v66 = v97;
    v81(v93, v95, v97);
    v67 = v100;
    v81(v94, v100, v66);
    goto LABEL_7;
  }

LABEL_6:
  sub_26F49E768();
  v57 = v92;
  v99 = sub_26F49EEC8();
  v96 = v58;
  LODWORD(v91) = v59;
  v92 = v60;
  sub_26F49E768();
  v61 = sub_26F49EEC8();
  v89 = v62;
  v90 = v61;
  v63 = v56;
  v64 = *(v56 + 16);
  v65 = v95;
  v66 = v97;
  v64(v93, v95, v97);
  v67 = v100;
  v64(v94, v100, v66);
LABEL_7:
  sub_26F49F1C8();
  v68 = *(v63 + 8);
  v68(v67, v66);
  return (v68)(v65, v66);
}

uint64_t sub_26F3E06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8B0, &qword_26F4A4F10);
  v3 = *(*(v20[0] - 8) + 64);
  MEMORY[0x28223BE20](v20[0]);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8B8, &qword_26F4A4F18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_26F49E998();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C0, &qword_26F4A4F20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  sub_26F49E958();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C8, &qword_26F4A4F28);
  sub_26F3E1E1C();
  sub_26F49E3C8();
  sub_26F49E988();
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF908, &qword_26F4A4F48);
  sub_26F3E2004();
  sub_26F49E3C8();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_26F49E838();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_26F3E09C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8F0, &unk_26F4A4F38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8E0, &qword_26F4A4F30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  if (*(a1 + *(type metadata accessor for LanguageDownloadView(0) + 64)) == 3)
  {
    v13 = *a1;
    v14 = a1[1];
    v15 = *(a1 + 16);
    type metadata accessor for LanguagesService();
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
    sub_26F49DFF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v16 = (v27 + 56);
    v17 = *(v27 + 16) + 1;
    while (--v17)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 48;
      if (v19 == 1 && v18 == 0)
      {

        sub_26F49DF88();
        sub_26F49ECA8();
        v21 = sub_26F49ECB8();

        KeyPath = swift_getKeyPath();
        v23 = &v7[*(v4 + 36)];
        *v23 = KeyPath;
        v23[1] = v21;
        sub_26F3E1ECC();
        sub_26F49F0C8();
        sub_26F3B6B4C(v7, &qword_2806DF8F0, &unk_26F4A4F38);
        sub_26F3BBAEC(v12, a2, &qword_2806DF8E0, &qword_26F4A4F30);
        v24 = 0;
        return (*(v9 + 56))(a2, v24, 1, v8);
      }
    }
  }

  v24 = 1;
  return (*(v9 + 56))(a2, v24, 1, v8);
}

uint64_t sub_26F3E0CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8F0, &unk_26F4A4F38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8E0, &qword_26F4A4F30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8C8, &qword_26F4A4F28);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if (*(a1 + *(type metadata accessor for LanguageDownloadView(0) + 64)) == 3)
  {
    v17 = *(v34 + 56);

    return v17(a2, 1, 1, v13);
  }

  else
  {
    v32 = v8;
    v33 = a2;
    v19 = *a1;
    v20 = a1[1];
    v21 = *(a1 + 16);
    type metadata accessor for LanguagesService();
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
    sub_26F49DFF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v22 = (v35 + 56);
    v23 = *(v35 + 16) + 1;
    while (--v23)
    {
      v24 = *(v22 - 1);
      v25 = *v22;
      v22 += 48;
      if (v25 == 1 && v24 == 0)
      {

        sub_26F49DF88();
        sub_26F49ECA8();
        v27 = sub_26F49ECB8();

        KeyPath = swift_getKeyPath();
        v29 = &v7[*(v4 + 36)];
        *v29 = KeyPath;
        v29[1] = v27;
        sub_26F3E1ECC();
        sub_26F49F0C8();
        sub_26F3B6B4C(v7, &qword_2806DF8F0, &unk_26F4A4F38);
        sub_26F3BBAEC(v12, v16, &qword_2806DF8E0, &qword_26F4A4F30);
        v30 = 0;
        goto LABEL_14;
      }
    }

    v30 = 1;
LABEL_14:
    (*(v9 + 56))(v16, v30, 1, v32);
    v31 = v33;
    sub_26F3BBAEC(v16, v33, &qword_2806DF8C8, &qword_26F4A4F28);
    return (*(v34 + 56))(v31, 0, 1, v13);
  }
}

uint64_t sub_26F3E1098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF8A8, &qword_26F4A4F08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v6 - v4, &qword_2806DF8A8, &qword_26F4A4F08);
  return sub_26F49E5D8();
}

unint64_t sub_26F3E1190()
{
  result = qword_2806DF7D8;
  if (!qword_2806DF7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF788, &qword_26F4A4BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF780, &qword_26F4A4BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF778, &qword_26F4A4BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF770, &qword_26F4A4BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF7A8, &qword_26F4A4C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF768, &qword_26F4A4BD0);
    sub_26F49E9D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF760, &qword_26F4A4BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF758, &qword_26F4A4BC0);
    sub_26F3B18CC(&qword_2806DF7A0, &qword_2806DF758, &qword_26F4A4BC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF7B0, &qword_2806DF7A8, &qword_26F4A4C08);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF7E0, &qword_2806DF7B8, &qword_26F4A4C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF7D8);
  }

  return result;
}

unint64_t sub_26F3E1460()
{
  result = qword_2806DF7E8;
  if (!qword_2806DF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF7E8);
  }

  return result;
}

void sub_26F3E14F8()
{
  sub_26F3E1700();
  if (v0 <= 0x3F)
  {
    sub_26F3E1A90(319, &qword_2806DF818, &qword_2806DF820, &qword_26F4A4D48, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26F3E1BF4(319, &qword_2806DF468, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_26F3E1A90(319, &qword_2806DF828, &qword_2806DF748, &qword_26F4A4BA8, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26F3E1794();
          if (v4 <= 0x3F)
          {
            sub_26F3E1A90(319, &qword_2806DF838, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26F3E1BF4(319, &qword_2806DF840, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for AudioAccessoryAssetDownLoadService();
                if (v7 <= 0x3F)
                {
                  sub_26F3E17EC();
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

void sub_26F3E1700()
{
  if (!qword_2806DF808)
  {
    type metadata accessor for LanguagesService();
    sub_26F3E1FB4(&qword_2806DF810, type metadata accessor for LanguagesService);
    v0 = sub_26F49E008();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DF808);
    }
  }
}

void sub_26F3E1794()
{
  if (!qword_2806DF830)
  {
    sub_26F49F528();
    v0 = sub_26F49F378();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DF830);
    }
  }
}

unint64_t sub_26F3E17EC()
{
  result = qword_2806DF848;
  if (!qword_2806DF848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DF848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageDownloadView.ContextView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageDownloadView.ContextView(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26F3E19D0()
{
  sub_26F49F528();
  if (v0 <= 0x3F)
  {
    sub_26F3E1A90(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F3E1A90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3E1B3C()
{
  sub_26F49DAB8();
  if (v0 <= 0x3F)
  {
    sub_26F3E1BF4(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F3E1BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26F3E1C44()
{
  result = qword_280F65E00;
  if (!qword_280F65E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65E00);
  }

  return result;
}

uint64_t sub_26F3E1CD0()
{
  v1 = type metadata accessor for LanguageDownloadButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

unint64_t sub_26F3E1D4C()
{
  result = qword_2806DF898;
  if (!qword_2806DF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF898);
  }

  return result;
}

uint64_t sub_26F3E1DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3E1E08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26F3E1E1C()
{
  result = qword_2806DF8D0;
  if (!qword_2806DF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF8C8, &qword_26F4A4F28);
    sub_26F3E27B8(&qword_2806DF8D8, &qword_2806DF8E0, &qword_26F4A4F30, sub_26F3E1ECC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF8D0);
  }

  return result;
}

unint64_t sub_26F3E1ECC()
{
  result = qword_2806DF8E8;
  if (!qword_2806DF8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF8F0, &unk_26F4A4F38);
    sub_26F3E1FB4(&qword_2806DF8F8, MEMORY[0x277CDD680]);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF8E8);
  }

  return result;
}

uint64_t sub_26F3E1FB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F3E2004()
{
  result = qword_2806DF910;
  if (!qword_2806DF910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF908, &qword_26F4A4F48);
    sub_26F3E1E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF910);
  }

  return result;
}

uint64_t sub_26F3E2090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3E20F8()
{
  v1 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26F3D9954(1);
}

unint64_t sub_26F3E2158()
{
  result = qword_2806DF9B8;
  if (!qword_2806DF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9B0, &qword_26F4A5060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9B8);
  }

  return result;
}

uint64_t sub_26F3E21D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B8D40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26F3E2218()
{
  result = qword_2806DF9C0;
  if (!qword_2806DF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF940, &qword_26F4A4FF0);
    sub_26F3E22D0();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9C0);
  }

  return result;
}

unint64_t sub_26F3E22D0()
{
  result = qword_2806DF9C8;
  if (!qword_2806DF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9D0, &qword_26F4A5098);
    sub_26F3B18CC(&qword_2806DF9D8, &qword_2806DF9E0, &unk_26F4A50A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9C8);
  }

  return result;
}

unint64_t sub_26F3E2388()
{
  result = qword_2806DFA10;
  if (!qword_2806DFA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF950, &qword_26F4A5000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF940, &qword_26F4A4FF0);
    sub_26F49E358();
    sub_26F3E2218();
    sub_26F3E1FB4(&qword_2806DF160, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA10);
  }

  return result;
}

unint64_t sub_26F3E24D8()
{
  result = qword_2806DFA20;
  if (!qword_2806DFA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA18, &qword_26F4A50B8);
    sub_26F3E255C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA20);
  }

  return result;
}

unint64_t sub_26F3E255C()
{
  result = qword_2806DFA28;
  if (!qword_2806DFA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA30, &qword_26F4A50C0);
    sub_26F3E2614();
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA28);
  }

  return result;
}

unint64_t sub_26F3E2614()
{
  result = qword_2806DFA38;
  if (!qword_2806DFA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA40, &qword_26F4A50C8);
    sub_26F3E1FB4(&qword_2806DFA48, type metadata accessor for LanguageDownloadButton);
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA38);
  }

  return result;
}

unint64_t sub_26F3E2700()
{
  result = qword_2806DFA68;
  if (!qword_2806DFA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA60, &qword_26F4A50E0);
    sub_26F3E2158();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA68);
  }

  return result;
}

uint64_t sub_26F3E27B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26F3E1FB4(&qword_2806DF900, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F3E2874()
{
  result = qword_2806DFA80;
  if (!qword_2806DFA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA78, &qword_26F4A50E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA80);
  }

  return result;
}

unint64_t sub_26F3E28F8()
{
  result = qword_2806DFA88;
  if (!qword_2806DFA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF980, &qword_26F4A5030);
    sub_26F3E29B0();
    sub_26F3B18CC(&qword_2806DFAA0, &qword_2806DFAA8, &qword_26F4A50F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA88);
  }

  return result;
}

unint64_t sub_26F3E29B0()
{
  result = qword_2806DFA90;
  if (!qword_2806DFA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFA98, &qword_26F4A50F0);
    sub_26F3E2874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFA90);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for LanguageDownloadView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_26F3E2088();
  v7 = v3 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(v7 + 1);

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48) + 32);
    v12 = sub_26F49E378();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  v13 = *(v3 + v1[6] + 8);

  v14 = *(v3 + v1[7] + 8);

  v15 = *(v3 + v1[8] + 8);

  v16 = v3 + v1[9];

  v17 = *(v16 + 8);

  v18 = v3 + v1[10];
  v19 = sub_26F49F528();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48) + 28));

  v21 = (v3 + v1[11]);
  v22 = *v21;

  v23 = v21[1];

  v24 = (v3 + v1[12]);
  v25 = *v24;

  v26 = v24[1];

  v27 = *(v3 + v1[13]);

  v28 = *(v3 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_26F3E2D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F3E2D98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26F3E2E2C(uint64_t a1)
{
  v3 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_26F3DD3B0(a1, v4);
}

uint64_t sub_26F3E2E9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_26F3E2ECC()
{
  result = qword_2806DFAE0;
  if (!qword_2806DFAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAB0, &qword_26F4A5158);
    sub_26F3E2F84();
    sub_26F3B18CC(&qword_2806DFAF8, &qword_2806DFB00, &qword_26F4A5180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFAE0);
  }

  return result;
}

unint64_t sub_26F3E2F84()
{
  result = qword_2806DFAE8;
  if (!qword_2806DFAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAF0, &qword_26F4A5178);
    type metadata accessor for LanguageListItem(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFAC8, &qword_26F4A5170);
    sub_26F3E1FB4(&qword_2806DFAD0, type metadata accessor for LanguageListItem);
    sub_26F3B18CC(&qword_2806DFAD8, &qword_2806DFAC8, &qword_26F4A5170);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFAE8);
  }

  return result;
}

void sub_26F3E30C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {

    sub_26F3ACF68(a3);
  }
}

void sub_26F3E3118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {

    sub_26F3ACE98(a3);
  }
}

uint64_t sub_26F3E3198(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F3E320C()
{
  v1 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26F3D9ED8();
}

uint64_t objectdestroy_65Tm()
{
  v1 = type metadata accessor for LanguageDownloadView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  sub_26F3E2088();
  v8 = (v0 + v3 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v8 + 1);

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48) + 32);
    v13 = sub_26F49E378();
    (*(*(v13 - 8) + 8))(&v8[v12], v13);
  }

  v14 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + v1[6] + 8);

  v16 = *(v4 + v1[7] + 8);

  v17 = *(v4 + v1[8] + 8);

  v18 = v4 + v1[9];

  v19 = *(v18 + 8);

  v20 = v4 + v1[10];
  v21 = sub_26F49F528();
  (*(*(v21 - 8) + 8))(v20, v21);
  v22 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48) + 28));

  v23 = (v4 + v1[11]);
  v24 = *v23;

  v25 = v23[1];

  v26 = (v4 + v1[12]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v4 + v1[13]);

  v30 = *(v4 + v1[14]);

  v31 = *(v0 + v14 + 8);

  v32 = *(v0 + v14 + 40);

  return swift_deallocObject();
}

uint64_t sub_26F3E3510(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for LanguageDownloadView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

unint64_t sub_26F3E35C8()
{
  result = qword_2806DFB38;
  if (!qword_2806DFB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFB30, &qword_26F4A51A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFB38);
  }

  return result;
}

unint64_t sub_26F3E364C()
{
  result = qword_2806DFB40;
  if (!qword_2806DFB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF888, &qword_26F4A4EC0);
    sub_26F3B18CC(&qword_2806DFB48, &qword_2806DFB50, &unk_26F4A51F0);
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFB40);
  }

  return result;
}

uint64_t sub_26F3E3738()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v42 = &v32 - v9;
  v10 = *(type metadata accessor for LanguageMenu() + 24);
  v11 = MEMORY[0x277D84F90];
  if (*(v0 + v10))
  {
    v12 = *(v0 + v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_26F404250(v12);

  v15 = *v0;
  v34 = *(*v0 + 16);
  if (v34)
  {
    v16 = 0;
    v40 = v13 + 56;
    v41 = v2 + 16;
    v17 = (v2 + 8);
    v35 = (v2 + 32);
    v32 = v15;
    v33 = v2;
    while (v16 < *(v15 + 16))
    {
      v37 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v38 = v11;
      v18 = *(v2 + 72);
      v39 = v16;
      v19 = *(v2 + 16);
      v19(v42, v15 + v37 + v18 * v16, v1);
      if (*(v13 + 16) && (v20 = *(v13 + 40), sub_26F3E5E14(&qword_2806DFC18), v21 = sub_26F49F818(), v22 = -1 << *(v13 + 32), v23 = v21 & ~v22, ((*(v40 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = v13;
          v19(v7, *(v13 + 48) + v23 * v18, v1);
          sub_26F3E5E14(qword_2806E07F0);
          v26 = sub_26F49F868();
          v27 = *v17;
          (*v17)(v7, v1);
          if (v26)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          v13 = v25;
          if (((*(v40 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        result = (v27)(v42, v1);
        v13 = v25;
        v11 = v38;
      }

      else
      {
LABEL_14:
        v28 = *v35;
        (*v35)(v36, v42, v1);
        v11 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F40333C(0, *(v11 + 16) + 1, 1);
          v11 = v43;
        }

        v31 = *(v11 + 16);
        v30 = *(v11 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_26F40333C(v30 > 1, v31 + 1, 1);
          v11 = v43;
        }

        *(v11 + 16) = v31 + 1;
        result = (v28)(v11 + v37 + v31 * v18, v36, v1);
      }

      v16 = v39 + 1;
      v2 = v33;
      v15 = v32;
      if (v39 + 1 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t sub_26F3E3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LanguageMenu();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26F3E5C28(a2, &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26F3E5C8C(&v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v11);
  (*(v5 + 32))(v13 + v12, v7, v4);
  v16 = a1;
  return sub_26F49F398();
}

uint64_t sub_26F3E3CF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  LODWORD(a2) = *(type metadata accessor for LanguageMenu() + 20);
  sub_26F3B8DD4(v9, v6, &qword_2806DEFD8, &qword_26F4A3670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  sub_26F49F458();
  return sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F3E3E70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v7 = sub_26F49D9F8();
  v8 = sub_26F49D9F8();
  v9 = [v7 lt:0 displayNameForContext:v8 inTargetLocale:?];

  if (v9)
  {
    v10 = sub_26F49F8C8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  (*(v3 + 8))(v6, v2);
  v17[0] = v10;
  v17[1] = v12;
  sub_26F3BDC0C();
  result = sub_26F49EED8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t LanguageMenu.init(locales:selection:suggestedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for LanguageMenu();
  v9 = v8[6];
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  result = sub_26F3E5840(a2, a4 + v8[5]);
  *(a4 + v9) = a3;
  return result;
}

uint64_t type metadata accessor for LanguageMenu()
{
  result = qword_2806DFB90;
  if (!qword_2806DFB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageMenu.body.getter()
{
  sub_26F49E768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB78, &qword_26F4A5240);
  sub_26F3B18CC(&qword_2806DFB80, &qword_2806DFB78, &qword_26F4A5240);
  return sub_26F49EDD8();
}

uint64_t sub_26F3E41C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v105 = *(v109 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v109);
  v113 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v89 - v6;
  v7 = type metadata accessor for LanguageMenu();
  v8 = v7 - 8;
  v108 = *(v7 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v103 = v10;
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBC8, &qword_26F4A52C0);
  v97 = *(v12 - 8);
  v13 = *(v97 + 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBD0, &qword_26F4A52C8);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v89 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBD8, &qword_26F4A52D0);
  v18 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v20 = &v89 - v19;
  v21 = sub_26F49F4A8();
  v106 = *(v21 - 8);
  v107 = v21;
  v22 = v106[8];
  MEMORY[0x28223BE20](v21);
  v114 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v115 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBE0, &qword_26F4A52D8);
  v94 = *(v26 - 8);
  v27 = *(v94 + 64);
  MEMORY[0x28223BE20](v26);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v96 = &v89 - v30;
  MEMORY[0x28223BE20](v31);
  v95 = &v89 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFBE8, &qword_26F4A52E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v111 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v110 = &v89 - v40;
  v41 = *(a1 + *(v8 + 32));
  v100 = v11;
  v98 = a1;
  if (v41 && *(v41 + 16) && (v119 = &type metadata for TranslateFeatures, v120 = sub_26F3D3D60(), LOBYTE(v116) = 4, v42 = sub_26F49DB58(), __swift_destroy_boxed_opaque_existential_0(&v116), (v42 & 1) != 0))
  {
    sub_26F49E768();
    v43 = sub_26F49EEC8();
    v97 = v20;
    v116 = v43;
    v117 = v44;
    v118 = v45 & 1;
    v119 = v46;
    MEMORY[0x28223BE20](v43);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
    sub_26F3E2158();
    v47 = sub_26F3E5CF4();
    v48 = v35;
    v92 = v35;
    v91 = v47;
    sub_26F49F4D8();
    v49 = v115;
    sub_26F49F498();
    sub_26F49E768();
    v116 = sub_26F49EEC8();
    v117 = v50;
    v118 = v51 & 1;
    v119 = v52;
    MEMORY[0x28223BE20](v116);
    v53 = v95;
    sub_26F49F4D8();
    v54 = v94;
    v55 = *(v94 + 16);
    v56 = v96;
    v55(v96, v48, v26);
    v90 = v12;
    v57 = v114;
    v89 = v106[2];
    v89(v114, v49, v107);
    v58 = v93;
    v55(v93, v53, v26);
    v59 = v97;
    v55(v97, v56, v26);
    v60 = v26;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC10, &qword_26F4A5320);
    v62 = v107;
    v89((v59 + *(v61 + 48)), v57, v107);
    v55((v59 + *(v61 + 64)), v58, v60);
    v63 = *(v54 + 8);
    v63(v58, v60);
    v64 = v106[1];
    v64(v57, v62);
    v63(v96, v60);
    sub_26F3B8DD4(v59, v99, &qword_2806DFBD8, &qword_26F4A52D0);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFBF8, &qword_2806DFBD8, &qword_26F4A52D0);
    v65 = v110;
    sub_26F49E928();
    sub_26F3B6B4C(v59, &qword_2806DFBD8, &qword_26F4A52D0);
    v63(v95, v60);
    v64(v115, v107);
    v63(v92, v60);
  }

  else
  {
    v116 = *a1;
    swift_getKeyPath();
    sub_26F3E5C28(a1, v11);
    v66 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v67 = v99;
    v68 = swift_allocObject();
    sub_26F3E5C8C(v11, v68 + v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
    sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
    sub_26F49F4B8();
    v69 = v97;
    (*(v97 + 2))(v67, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFBF8, &qword_2806DFBD8, &qword_26F4A52D0);
    sub_26F3E5CF4();
    v65 = v110;
    sub_26F49E928();
    v69[1](v15, v12);
  }

  v70 = v115;
  sub_26F49F498();
  v71 = v100;
  sub_26F3E5C28(v98, v100);
  v72 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v73 = swift_allocObject();
  sub_26F3E5C8C(v71, v73 + v72);
  v74 = v112;
  sub_26F49F398();
  v75 = v111;
  sub_26F3B8DD4(v65, v111, &qword_2806DFBE8, &qword_26F4A52E0);
  v76 = v106;
  v108 = v106[2];
  v77 = v114;
  v78 = v70;
  v79 = v107;
  (v108)(v114, v78, v107);
  v80 = v105;
  v81 = *(v105 + 16);
  v82 = v109;
  v81(v113, v74, v109);
  v83 = v104;
  sub_26F3B8DD4(v75, v104, &qword_2806DFBE8, &qword_26F4A52E0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC08, &qword_26F4A5318);
  (v108)(v83 + *(v84 + 48), v77, v79);
  v85 = v113;
  v81((v83 + *(v84 + 64)), v113, v82);
  v86 = *(v80 + 8);
  v86(v112, v82);
  v87 = v76[1];
  v87(v115, v79);
  sub_26F3B6B4C(v110, &qword_2806DFBE8, &qword_26F4A52E0);
  v86(v85, v82);
  v87(v114, v79);
  return sub_26F3B6B4C(v111, &qword_2806DFBE8, &qword_26F4A52E0);
}

uint64_t sub_26F3E4ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a2;
  swift_getKeyPath();
  sub_26F3E5C28(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26F3E5C8C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100);
  sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
  return sub_26F49F4B8();
}

uint64_t sub_26F3E50C0(uint64_t a1)
{
  v2 = type metadata accessor for LanguageMenu();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_26F3E3738();
  swift_getKeyPath();
  sub_26F3E5C28(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F3E5C8C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100);
  sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
  return sub_26F49F4B8();
}

uint64_t sub_26F3E52AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49E1B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E554C(v13);
  sub_26F49D868();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_26F49E188();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_26F3E54D4@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  result = sub_26F49EEC8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26F3E554C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LanguageMenu();
  sub_26F3B8DD4(v1 + *(v12 + 28), v11, &qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E1B8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_26F3E5778(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_26F49E508();
}

uint64_t sub_26F3E5840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E58D4()
{
  sub_26F49E768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB78, &qword_26F4A5240);
  sub_26F3B18CC(&qword_2806DFB80, &qword_2806DFB78, &qword_26F4A5240);
  return sub_26F49EDD8();
}

void sub_26F3E59F4()
{
  sub_26F3E5BC4(319, &qword_2806DFBA0, MEMORY[0x277CC9788], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26F3E5B60(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_280F65708, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F3E5BC4(319, &qword_2806DFBB0, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F3E5B60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3E5BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26F3E5C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E5C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3E5CF4()
{
  result = qword_2806DFC00;
  if (!qword_2806DFC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFBC8, &qword_26F4A52C0);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFC00);
  }

  return result;
}

uint64_t sub_26F3E5DA4()
{
  v0 = *(*(type metadata accessor for LanguageMenu() - 8) + 80);

  return sub_26F3E52AC();
}

uint64_t sub_26F3E5E14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26F49DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for LanguageMenu();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = &v3[v1[5]];
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238) + 32);
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v5[v8], 1, v9))
  {
    (*(v10 + 8))(&v5[v8], v9);
  }

  v11 = *&v3[v1[6]];

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E1B8();
    (*(*(v13 - 8) + 8))(&v3[v12], v13);
  }

  else
  {
    v14 = *&v3[v12];
  }

  return swift_deallocObject();
}

uint64_t sub_26F3E6034(uint64_t a1)
{
  v3 = *(type metadata accessor for LanguageMenu() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F3E3AE0(a1, v4);
}

uint64_t sub_26F3E60B4()
{
  v1 = *(type metadata accessor for LanguageMenu() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F49DAB8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F3E3CF0(v0 + v2, v5);
}

uint64_t Locale.title(_:)(unint64_t a1)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v11 = Locale.sqDisplayName(context:in:)(a1);
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v10, v3);
  if (!v13)
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v15 = sub_26F49DCA8();
    __swift_project_value_buffer(v15, qword_280F67E98);
    (*(v4 + 16))(v7, v1, v3);
    v16 = sub_26F49DC88();
    v17 = sub_26F49FDD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      sub_26F3E735C(&unk_280F66398, MEMORY[0x277CC9788]);
      v20 = sub_26F4A0428();
      v22 = v21;
      v14(v7, v3);
      v23 = sub_26F3B38D0(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26F39E000, v16, v17, "Locale %{public}s has no value for sqDisplayName()", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x274391F70](v19, -1, -1);
      MEMORY[0x274391F70](v18, -1, -1);
    }

    else
    {

      v14(v7, v3);
    }

    return 0;
  }

  return v11;
}

uint64_t Locale.subtitle(opposite:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E718C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    if (MEMORY[0x27438E800](v1, v11))
    {
      type metadata accessor for _BundleObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_26F49D7D8();

      (*(v8 + 8))(v11, v7);
      return v14;
    }

    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

uint64_t LanguageOption.title(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LanguageOption();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v2, v12);
  if ((*(v5 + 48))(v12, 2, v4))
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_26F49D7D8();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = Locale.title(_:)(a1);
    (*(v5 + 8))(v8, v4);
  }

  return v15;
}

uint64_t LanguageOption.subtitle(opposite:)(uint64_t a1)
{
  v3 = type metadata accessor for LanguageOption();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = sub_26F49DAB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_26F3E718C(a1, v13);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    sub_26F3B6B4C(v13, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    v29 = v18;
    v30 = v10;
    v23 = *(v15 + 32);
    v23(v21, v13, v14);
    sub_26F3E7248(v1, v6);
    if (!v22(v6, 2, v14))
    {
      v25 = v29;
      v23(v29, v6, v14);
      v26 = v30;
      (*(v15 + 16))(v30, v21, v14);
      (*(v15 + 56))(v26, 0, 1, v14);
      v27 = Locale.subtitle(opposite:)(v26);
      sub_26F3B6B4C(v26, &qword_2806DEFD8, &qword_26F4A3670);
      v28 = *(v15 + 8);
      v28(v25, v14);
      v28(v21, v14);
      return v27;
    }

    (*(v15 + 8))(v21, v14);
    sub_26F3C03B0(v6);
  }

  return 0;
}

uint64_t LanguageOption.id.getter()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LanguageOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v0, v9);
  if ((*(v2 + 48))(v9, 2, v1))
  {
    return LanguageOption.title(_:)(0);
  }

  (*(v2 + 32))(v5, v9, v1);
  v11 = sub_26F49D988();
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t LanguageOption.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LanguageOption();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3E7248(v1, v6);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 2, v7))
  {
    sub_26F3C03B0(v6);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LanguageOption();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC28, &qword_26F4A8110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_26F3E7248(a1, &v24 - v16);
  sub_26F3E7248(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_26F3E7248(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = MEMORY[0x27438E800](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_26F3C03B0(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_26F3B6B4C(v17, &qword_2806DFC28, &qword_26F4A8110);
    v21 = 0;
    return v21 & 1;
  }

  sub_26F3C03B0(v17);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_26F3E718C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LanguageOption()
{
  result = qword_280F65D30;
  if (!qword_280F65D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3E7248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3E72AC(uint64_t a1)
{
  result = sub_26F3E735C(qword_2806E07F0, MEMORY[0x277CC9788]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F3E7304(uint64_t a1)
{
  result = sub_26F3E735C(&qword_2806DFC20, type metadata accessor for LanguageOption);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F3E735C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F3E73F4()
{
  v0 = sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_26F3E744C@<X0>(void *a1@<X8>)
{
  sub_26F3EA5CC();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F3E749C(uint64_t *a1)
{
  v2 = *a1;
  sub_26F3EA5CC();
  return sub_26F49E698();
}

uint64_t sub_26F3E74E8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for LanguagePicker() + 36);
  result = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {
    v8 = *v6;

    sub_26F49FDE8();
    v9 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v8, 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return result;
}

uint64_t LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LanguagePicker();
  v13 = v12[5];
  v14 = v12[8];
  v15 = a6 + v12[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_26F3E7760(a1, a6);
  *(a6 + v13) = a2;
  v16 = v12[6];
  v17 = sub_26F49DAB8();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a3, v17);
  *(a6 + v12[7]) = a4;
  *(a6 + v14) = a5;
  return result;
}

uint64_t type metadata accessor for LanguagePicker()
{
  result = qword_280F65CB0;
  if (!qword_280F65CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3E7760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = sub_26F49F628();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC38, &qword_26F4A5400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  v15 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC48, &unk_26F4A5410);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806DFC50, &qword_2806DFC48, &unk_26F4A5410);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806DFC58, &qword_2806DFC38, &qword_26F4A5400);
  sub_26F49F1A8();
  (*(v2 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26F3E7A48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v61 = sub_26F49F4A8();
  v59 = *(v61 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC8, &qword_26F4A5640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v52 - v9;
  v10 = type metadata accessor for LanguagePicker();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCD0, &qword_26F4A5648);
  v65 = *(v60 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v60);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v52 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v52 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  sub_26F3E808C();
  v23 = v22;
  v58 = v24;
  v70 = v22;
  swift_getKeyPath();
  v62 = a1;
  sub_26F3EA100(a1, &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v54 = v12;
  v26 = swift_allocObject();
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3EA164(v53, v26 + v25);

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCD8, &unk_26F4A5678);
  sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0);
  sub_26F3EA1C8();
  v69 = v21;
  v57 = v27;
  v55 = v28;
  sub_26F49F4B8();
  v29 = *(v23 + 16);

  if (v29)
  {
    v30 = v52;
    sub_26F49F498();
    v31 = v59;
    v32 = v68;
    v33 = v30;
    v34 = v61;
    (*(v59 + 32))(v68, v33, v61);
    v35 = 0;
    v36 = v34;
    v37 = v31;
  }

  else
  {
    v35 = 1;
    v32 = v68;
    v36 = v61;
    v37 = v59;
  }

  (*(v37 + 56))(v32, v35, 1, v36);
  v70 = v58;
  swift_getKeyPath();
  v38 = v53;
  sub_26F3EA100(v62, v53);
  v39 = swift_allocObject();
  sub_26F3EA164(v38, v39 + v25);
  v40 = v56;
  sub_26F49F4B8();
  v41 = v65;
  v42 = *(v65 + 16);
  v43 = v63;
  v44 = v60;
  v42(v63, v69, v60);
  v45 = v32;
  v46 = v66;
  sub_26F3B8DD4(v45, v66, &qword_2806DFCC8, &qword_26F4A5640);
  v47 = v64;
  v42(v64, v40, v44);
  v48 = v67;
  v42(v67, v43, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE0, &qword_26F4A5688);
  sub_26F3B8DD4(v46, &v48[*(v49 + 48)], &qword_2806DFCC8, &qword_26F4A5640);
  v42(&v48[*(v49 + 64)], v47, v44);
  v50 = *(v41 + 8);
  v50(v40, v44);
  sub_26F3B6B4C(v68, &qword_2806DFCC8, &qword_26F4A5640);
  v50(v69, v44);
  v50(v47, v44);
  sub_26F3B6B4C(v46, &qword_2806DFCC8, &qword_26F4A5640);
  return (v50)(v43, v44);
}

void sub_26F3E808C()
{
  v49 = sub_26F49DAB8();
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for LanguagePicker();
  v12 = v11;
  v13 = *(v11 + 20);
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *(v0 + v13);
  }

  else
  {
    v34 = *(v0 + *(v11 + 28));
    if (!*(v34 + 16))
    {
      goto LABEL_35;
    }

    sub_26F49D9D8();
    v61 = sub_26F49FAD8();

    v35 = *(v34 + 16);
    if (v35)
    {
      v59 = v12;
      v60 = v0;
      v63 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v35, 0);
      v36 = v63;
      v62 = v1 + 32;
      v37 = (v34 + 40);
      v38 = v49;
      do
      {
        v40 = *(v37 - 1);
        v39 = *v37;

        sub_26F49D978();
        v63 = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_26F40333C(v41 > 1, v42 + 1, 1);
          v38 = v49;
          v36 = v63;
        }

        *(v36 + 16) = v42 + 1;
        (*(v1 + 32))(v36 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v42, v10, v38);
        v37 += 6;
        --v35;
      }

      while (v35);
      v12 = v59;
      v0 = v60;
    }

    v43 = objc_opt_self();
    v44 = sub_26F49FAD8();

    v45 = v61;
    v46 = [v43 lt:v61 bestMatchesForPreferredLocales:v44 fromSupportedLocales:?];

    if (!v46)
    {
      goto LABEL_35;
    }

    v14 = sub_26F49FAF8();
  }

  v61 = *(v14 + 16);
  if (!v61)
  {

LABEL_35:
    v47 = *(v0 + *(v12 + 28));

    return;
  }

  v16 = *(v0 + *(v12 + 28));
  v52 = *(v16 + 16);
  if (v52)
  {
    v17 = 0;
    v51 = v16 + 32;
    v60 = v1 + 16;
    v18 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v19 = v49;
    v50 = v16;
    while (v17 < *(v16 + 16))
    {
      v23 = (v51 + 48 * v17);
      v24 = v23[1];
      v62 = *v23;
      v57 = v23[2];
      v56 = *(v23 + 24);
      v25 = v23[5];
      v55 = v23[4];
      v58 = v17 + 1;
      v59 = v18;

      v54 = v25;

      v26 = 0;
      do
      {
        if (v61 == v26)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v16 = v50;
            v18 = v59;
            v32 = v53;
          }

          else
          {
            v32 = sub_26F446268(0, *(v53 + 2) + 1, 1, v53);
            v16 = v50;
            v18 = v59;
          }

          v30 = *(v32 + 2);
          v33 = *(v32 + 3);
          v31 = (v30 + 1);
          if (v30 < v33 >> 1)
          {
            v53 = v32;
            v20 = v32;
          }

          else
          {
            v59 = (v30 + 1);
            v20 = sub_26F446268((v33 > 1), v30 + 1, 1, v32);
            v31 = v59;
            v53 = v20;
          }

          goto LABEL_7;
        }

        if (v26 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        (*(v1 + 16))(v7, v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v26++, v19);

        sub_26F49D978();
        v27 = MEMORY[0x27438E800](v7, v4);
        v28 = *(v1 + 8);
        v28(v4, v19);
        v28(v7, v19);
      }

      while ((v27 & 1) == 0);
      v18 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26F446268(0, *(v18 + 2) + 1, 1, v18);
      }

      v16 = v50;
      v30 = *(v18 + 2);
      v29 = *(v18 + 3);
      v31 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        v59 = (v30 + 1);
        v20 = sub_26F446268((v29 > 1), v30 + 1, 1, v18);
        v31 = v59;
        v18 = v20;
      }

      else
      {
        v20 = v18;
      }

LABEL_7:
      *(v20 + 2) = v31;
      v21 = &v20[48 * v30];
      *(v21 + 4) = v62;
      *(v21 + 5) = v24;
      *(v21 + 6) = v57;
      v21[56] = v56;
      v22 = v54;
      *(v21 + 8) = v55;
      *(v21 + 9) = v22;
      v17 = v58;
      if (v58 == v52)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_31:
  }
}

uint64_t sub_26F3E8600@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26F49DAB8();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  v51 = &v50 - v12;
  v57 = type metadata accessor for LanguagePicker();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v65 = *a1;
  v66 = v16;
  v67 = a1[2];
  sub_26F3EA100(v3, v15);
  sub_26F49FBD8();
  sub_26F3E2CA4(&v65, &v62);
  v17 = sub_26F49FBC8();
  v18 = *(v13 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  v21 = v66;
  *(v19 + 32) = v65;
  *(v19 + 48) = v21;
  *(v19 + 64) = v67;
  sub_26F3EA164(v15, v19 + ((v18 + 80) & ~v18));
  v61 = v3;
  sub_26F3EA100(v3, v15);
  sub_26F3E2CA4(&v65, &v62);
  v22 = sub_26F49FBC8();
  v23 = (v18 + 32) & ~v18;
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v20;
  v26 = v52;
  v27 = v25 + v23;
  v28 = v51;
  sub_26F3EA164(v15, v27);
  v29 = (v25 + v24);
  v30 = v66;
  *v29 = v65;
  v29[1] = v30;
  v29[2] = v67;
  sub_26F49F478();
  v56 = *(&v62 + 1);
  v31 = v62;
  v55 = v63;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v32 = sub_26F49D9F8();
  v33 = sub_26F49D9F8();
  v34 = [v32 lt:0 displayNameForContext:v33 inTargetLocale:?];

  if (v34)
  {
    v54 = sub_26F49F8C8();
    v53 = v35;
  }

  else
  {
    v54 = 0;
    v53 = 0xE000000000000000;
  }

  v36 = v60;
  v37 = *(v59 + 8);
  v37(v26, v60);
  v37(v28, v36);

  v38 = v58;
  sub_26F49D978();
  v39 = MEMORY[0x27438E800](v38, v61 + *(v57 + 24));
  v37(v38, v36);
  if (v39)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_26F49D7D8();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v62 = v65;
  v63 = v66;
  v64 = v67;
  v45 = sub_26F3E933C(&v62);
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = !v45;
  v48 = v56;
  *a2 = v31;
  *(a2 + 8) = v48;
  *(a2 + 16) = v55;
  v49 = v53;
  *(a2 + 24) = v54;
  *(a2 + 32) = v49;
  *(a2 + 40) = v42;
  *(a2 + 48) = v44;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = sub_26F3E2D78;
  *(a2 + 72) = result;
  return result;
}

__n128 sub_26F3E8B24@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_26F3E8600(&v9, v14);
  v7 = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v14[4];
  result = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26F3E8B94@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC0, &qword_26F4A5638);
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240](v18);
  v19 = sub_26F3E74E8();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v20 = Locale.sqDisplayName(context:in:)(v19);
  v22 = v21;
  v23 = *(v2 + 8);
  v23(v5, v1);
  v23(v8, v1);
  if (v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v22)
  {
    v25 = v22;
  }

  v34 = v24;
  v35 = v25;
  sub_26F3BDC0C();
  sub_26F49F328();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
  sub_26F3E900C();
  v26 = v31;
  sub_26F49EF38();
  (*(v32 + 8))(v13, v26);
  v27 = v33;
  (*(v14 + 32))(v33, v17, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  v29 = (v27 + *(result + 36));
  *v29 = sub_26F3E9060;
  v29[1] = 0;
  return result;
}

unint64_t sub_26F3E8EFC()
{
  result = qword_280F65740;
  if (!qword_280F65740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFC40, &qword_26F4A5408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
    sub_26F3E900C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65740);
  }

  return result;
}

unint64_t sub_26F3E900C()
{
  result = qword_280F658C0[0];
  if (!qword_280F658C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F658C0);
  }

  return result;
}

uint64_t sub_26F3E9088@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v13 = *a1;
  v12 = a1[1];

  sub_26F49D978();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240](v14);
  v15 = MEMORY[0x27438E800](v11, v8);
  v16 = *(v5 + 8);
  v16(v8, v4);
  result = (v16)(v11, v4);
  *a2 = v15 & 1;
  return result;
}

void sub_26F3E91E0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  if (*a1 == 1)
  {
    v16 = *a5;
    v15 = a5[1];

    sub_26F49D978();
    (*(v8 + 16))(v11, v14, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
    sub_26F49F458();
    (*(v8 + 8))(v14, v7);
  }
}

BOOL sub_26F3E933C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v24 = *a1;
  v25 = v9;
  v26 = a1[2];
  v10 = type metadata accessor for LanguagePicker();
  if (sub_26F47A5A4(&v24, *(v2 + *(v10 + 32))))
  {
    return 0;
  }

  sub_26F49D978();
  v12 = *(v10 + 24);
  v13 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v14 = sub_26F49D9F8();
  v15 = sub_26F49D9F8();
  v16 = [v13 initWithSourceLocale:v14 targetLocale:v15];

  (*(v5 + 8))(v8, v4);
  if ([v16 isVariantPair])
  {

    return 0;
  }

  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v18 = v17;
  v19 = sub_26F49F898();
  v20 = [v18 BOOLForKey_];

  v21 = [objc_opt_self() sharedConnection];
  if (!v21)
  {

    if (v20)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v22 = v21;
  v23 = [v21 isOnDeviceOnlyTranslationForced];

  if (((v23 | v20) & 1) == 0)
  {
    return 1;
  }

LABEL_7:
  if ((BYTE8(v25) & 1) == 0)
  {
    return 0;
  }

  return v25 == 0;
}

uint64_t sub_26F3E9594@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = sub_26F49F628();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC38, &qword_26F4A5400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  v15 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC48, &unk_26F4A5410);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806DFC50, &qword_2806DFC48, &unk_26F4A5410);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806DFC58, &qword_2806DFC38, &qword_26F4A5400);
  sub_26F49F1A8();
  (*(v2 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t LanguagePickerLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6D8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC60, &qword_26F4A5420);
  return sub_26F3E9868(a1 + *(v2 + 44));
}

uint64_t sub_26F3E9868@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC78, &qword_26F4A5528);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC80, &qword_26F4A5530);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  sub_26F49EA78();
  sub_26F49ED78();
  sub_26F49ED28();
  v17 = sub_26F49ED58();

  KeyPath = swift_getKeyPath();
  v19 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2F0, &qword_26F4A3DD0) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC88, &qword_26F4A5570) + 36)];
  sub_26F49E2B8();
  v21 = swift_getKeyPath();
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC90, &qword_26F4A55A8) + 36)];
  *v22 = v21;
  v22[8] = 1;
  v23 = swift_getKeyPath();
  v24 = &v16[*(v10 + 44)];
  *v24 = v23;
  *(v24 + 1) = 1;
  v24[16] = 0;
  sub_26F49EA68();
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC98, &qword_26F4A55E0) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
  v27 = *MEMORY[0x277CE1050];
  v28 = sub_26F49F2E8();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA8, &qword_26F4A5620) + 36)];
  sub_26F49E2B8();
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCB0, &qword_26F4A5628) + 36)] = 1053609165;
  sub_26F49ED78();
  sub_26F49ED28();
  v30 = sub_26F49ED58();

  v31 = swift_getKeyPath();
  v32 = &v8[*(v2 + 44)];
  *v32 = v31;
  v32[1] = v30;
  sub_26F3B8DD4(v16, v13, &qword_2806DFC80, &qword_26F4A5530);
  sub_26F3B8DD4(v8, v5, &qword_2806DFC78, &qword_26F4A5528);
  v33 = v37;
  sub_26F3B8DD4(v13, v37, &qword_2806DFC80, &qword_26F4A5530);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCB8, &qword_26F4A5630);
  sub_26F3B8DD4(v5, v33 + *(v34 + 48), &qword_2806DFC78, &qword_26F4A5528);
  sub_26F3B6B4C(v8, &qword_2806DFC78, &qword_26F4A5528);
  sub_26F3B6B4C(v16, &qword_2806DFC80, &qword_26F4A5530);
  sub_26F3B6B4C(v5, &qword_2806DFC78, &qword_26F4A5528);
  return sub_26F3B6B4C(v13, &qword_2806DFC80, &qword_26F4A5530);
}

uint64_t sub_26F3E9C44@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6D8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC60, &qword_26F4A5420);
  return sub_26F3E9868(a1 + *(v2 + 44));
}

uint64_t _s13TranslationUI14LanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  MEMORY[0x274390240]();
  MEMORY[0x274390240](v12);
  v13 = MEMORY[0x27438E800](v11, v8);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v11, v4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = type metadata accessor for LanguagePicker();
  if ((MEMORY[0x27438E800](a1 + v15[6], a2 + v15[6]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = v15[5];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (v18)
    {
      v19 = *(a2 + v16);

      v20 = sub_26F42DB78(v17, v18);

      if (v20)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v21 = 0;
    return v21 & 1;
  }

  if (v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  v21 = sub_26F42DD8C(*(a1 + v15[7]), *(a2 + v15[7]));
  return v21 & 1;
}

void sub_26F3E9EC0()
{
  sub_26F3E9FEC();
  if (v0 <= 0x3F)
  {
    sub_26F3C0298();
    if (v1 <= 0x3F)
    {
      sub_26F49DAB8();
      if (v2 <= 0x3F)
      {
        sub_26F3EA0A0(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26F3EA044();
          if (v4 <= 0x3F)
          {
            sub_26F3EA0A0(319, &qword_280F65768, &type metadata for DisplayNameContext, MEMORY[0x277CDF468]);
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

void sub_26F3E9FEC()
{
  if (!qword_280F65718)
  {
    sub_26F49DAB8();
    v0 = sub_26F49F488();
    if (!v1)
    {
      atomic_store(v0, &qword_280F65718);
    }
  }
}

void sub_26F3EA044()
{
  if (!qword_280F656A0)
  {
    sub_26F3E1C44();
    v0 = sub_26F49FD68();
    if (!v1)
    {
      atomic_store(v0, &qword_280F656A0);
    }
  }
}

void sub_26F3EA0A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26F3EA100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3EA164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3EA1C8()
{
  result = qword_280F65748;
  if (!qword_280F65748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFCD8, &unk_26F4A5678);
    sub_26F3EA280();
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65748);
  }

  return result;
}

unint64_t sub_26F3EA280()
{
  result = qword_280F65AC8;
  if (!qword_280F65AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65AC8);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for LanguagePicker() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8) + 32);
  v7 = sub_26F49DAB8();
  v8 = *(*(v7 - 8) + 8);
  v8(&v3[v6], v7);
  v9 = *&v3[v1[7]];

  v8(&v3[v1[8]], v7);
  v10 = *&v3[v1[9]];

  v11 = *&v3[v1[10]];

  sub_26F3E1E08(*&v3[v1[11]], v3[v1[11] + 8]);

  return swift_deallocObject();
}

double sub_26F3EA440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for LanguagePicker() - 8) + 80);
  *&result = sub_26F3E8B24(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_26F3EA4B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(type metadata accessor for LanguagePicker() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];

  return sub_26F3E9088(v1 + 4, a1);
}

void sub_26F3EA52C(_BYTE *a1)
{
  v3 = *(type metadata accessor for LanguagePicker() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26F3E91E0(a1, v5, v6, v1 + v4, v7);
}

unint64_t sub_26F3EA5CC()
{
  result = qword_280F657C8;
  if (!qword_280F657C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F657C8);
  }

  return result;
}

uint64_t LanguagePickerItem.body.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v0 + 6);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  sub_26F49F468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE8, &qword_26F4A56C8);
  sub_26F3B18CC(&qword_2806DFCF0, &qword_2806DFCE8, &qword_26F4A56C8);
  return sub_26F49F408();
}

uint64_t sub_26F3EA740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD08, &unk_26F4A57B0);
  sub_26F3B18CC(&qword_2806DFD10, &qword_2806DFD08, &unk_26F4A57B0);
  return sub_26F49DF98();
}

uint64_t sub_26F3EA7EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1[3];
  v22 = a1[4];
  sub_26F3BDC0C();

  v4 = sub_26F49EED8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1[6])
  {
    v21 = a1[5];
    v23 = a1[6];

    v11 = sub_26F49EED8();
    v13 = v12;
    v15 = v14;
    v17 = v16 & 1;
    sub_26F3B0EE4(v11, v12, v16 & 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v15 = 0;
  }

  v18 = v8 & 1;
  sub_26F3B0EE4(v4, v6, v18);

  sub_26F3EAC9C(v11, v13, v17, v15);
  sub_26F3E21D4(v11, v13, v17, v15);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v17;
  *(a2 + 56) = v15;
  sub_26F3E21D4(v11, v13, v17, v15);
  sub_26F3B8D40(v4, v6, v18);
}

uint64_t sub_26F3EA95C()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v0 + 6);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  sub_26F49F468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCE8, &qword_26F4A56C8);
  sub_26F3B18CC(&qword_2806DFCF0, &qword_2806DFCE8, &qword_26F4A56C8);
  return sub_26F49F408();
}

uint64_t _s13TranslationUI18LanguagePickerItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  *v16 = a1[5];
  *&v16[16] = a1[6];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v15 = a2[5];
  *&v16[8] = a2[6];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v17);
  v12 = v17;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  MEMORY[0x274390240](&v17, v11);
  if (v12 == v17 && (v4 == v9 && v5 == v10 || (sub_26F4A0458() & 1) != 0))
  {
    v13 = *&v16[8] == 0;
    if (*&v16[16] && *&v16[8])
    {
      if (__PAIR128__(*&v16[16], v15) == *v16)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_26F4A0458();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
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

uint64_t sub_26F3EABF0(uint64_t a1, int a2)
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

uint64_t sub_26F3EAC38(uint64_t result, int a2, int a3)
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

uint64_t sub_26F3EAC9C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26F3B0EE4(result, a2, a3 & 1);
  }

  return result;
}

double sub_26F3EACE4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  result = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
  *a2 = result;
  return result;
}

double sub_26F3EADBC()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
}

uint64_t type metadata accessor for LanguageSelectionDownloadModel()
{
  result = qword_2806DFD48;
  if (!qword_2806DFD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3EAEB0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) == a1)
  {
    *(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3EAFE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  *a2 = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
  return result;
}

uint64_t sub_26F3EB0B8()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
}

uint64_t sub_26F3EB160(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3EB28C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3EB3A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_26F49DA98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = sub_26F49D9B8();
  v34 = *(v17 - 8);
  v18 = v34[8];
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = &v28 - v21;
  if (a1)
  {
    v31 = v20;
    v32 = v5;
    v33 = v10;
    sub_26F49DAB8();
    sub_26F3EBF04(qword_2806E07F0, MEMORY[0x277CC9788]);

    if (sub_26F49F868())
    {

      v23 = 1;
    }

    else
    {
      sub_26F49DAA8();
      sub_26F49DA58();
      v35 = *(v33 + 8);
      v35(v16, v9);
      v24 = v34;
      v33 = v34[6];
      if ((v33)(v8, 1, v17) != 1)
      {
        v29 = v24[4];
        v30 = v24 + 4;
        v29(v22, v8, v17);
        sub_26F49DAA8();
        v8 = v32;
        sub_26F49DA58();
        v35(v13, v9);
        if ((v33)(v8, 1, v17) != 1)
        {
          v25 = v31;
          v29(v31, v8, v17);
          v23 = MEMORY[0x27438E7A0](v22, v25);

          v26 = v34[1];
          v26(v25, v17);
          v26(v22, v17);
          return v23 & 1;
        }

        (v34[1])(v22, v17);
      }

      sub_26F3EB7AC(v8);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_26F3EB7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3EB814()
{
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  return *(v0 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
}

uint64_t sub_26F3EB8BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3EBF04(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
  sub_26F49DB28();

  *a2 = *(v3 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
  return result;
}

uint64_t sub_26F3EB9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26F3EBA20()
{
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788]);
  return sub_26F49F828();
}

uint64_t LanguageSelectionDownloadModel.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v2 = sub_26F49DAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_26F49DB48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LanguageSelectionDownloadModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v2 = sub_26F49DAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_26F49DB48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F3EBC34()
{
  sub_26F4A0528();
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F3EBCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  v5 = sub_26F49DAB8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_26F3EBD4C()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F3EBDEC()
{
  v1 = *v0;
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788]);
  return sub_26F49F828();
}

uint64_t sub_26F3EBF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F3EBF4C()
{
  sub_26F4A0528();
  v1 = *v0;
  sub_26F49DAB8();
  sub_26F3EBF04(&qword_2806DFC18, MEMORY[0x277CC9788]);
  sub_26F49F828();
  return sub_26F4A0568();
}

void sub_26F3EBFE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  JUMPOUT(0x27438E800);
}

uint64_t sub_26F3EC00C()
{
  result = sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26F49DB48();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_26F3EC228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = result;
  return result;
}

double sub_26F3EC270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49E6D8();
  v20 = 1;
  sub_26F3EC3FC(a1, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_26F3B8DD4(&v21, &v11, &qword_2806DFD58, &qword_26F4A59E0);
  sub_26F3B6B4C(v28, &qword_2806DFD58, &qword_26F4A59E0);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a2 + 81) = v19[4];
  *(a2 + 97) = v5;
  v6 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v6;
  v7 = v19[1];
  *(a2 + 17) = v19[0];
  *(a2 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a2 + 49) = v19[2];
  v10 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 65) = v9;
  *(a2 + 145) = 0;
  return result;
}

uint64_t sub_26F3EC3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v9 = sub_26F49D9F8();
  v10 = sub_26F49D9F8();
  v11 = [v9 lt:0 displayNameForContext:v10 inTargetLocale:?];

  if (v11)
  {
    v12 = sub_26F49F8C8();
    v14 = v13;

    (*(v5 + 8))(v8, v4);
    *&v49[0] = v12;
    *(&v49[0] + 1) = v14;
    sub_26F3BDC0C();
    v15 = sub_26F49EED8();
    v39 = a1;
    v17 = v16;
    LOBYTE(v12) = v18;
    v19 = [objc_opt_self() labelColor];
    sub_26F49F218();
    v20 = sub_26F49EE68();
    v38 = v21;
    v23 = v22;
    v25 = v24;

    v26 = v17;
    a1 = v39;
    sub_26F3B8D40(v15, v26, v12 & 1);

    v27 = v23 & 1;
    v28 = v38;
    sub_26F3B0EE4(v20, v38, v27);

    sub_26F3B8D40(v20, v28, v27);

    sub_26F3B0EE4(v20, v28, v27);

    LOBYTE(v11) = 1;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v20 = 0;
    v28 = 0;
    v27 = 0;
    v25 = 0;
  }

  sub_26F3EC7E4(a1, &v41);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_26F49F298();
  v45 = v41;
  v46 = v42;
  v47 = v43;
  v48[0] = v44;
  *&v48[1] = v31;
  BYTE8(v48[1]) = 0;
  sub_26F3EAC9C(v20, v28, v27, v25);
  sub_26F3B8DD4(&v45, v49, &qword_2806DFD60, &qword_26F4A59E8);
  sub_26F3E21D4(v20, v28, v27, v25);
  v32 = v44;
  *(v40 + 7) = v45;
  *(&v40[1] + 7) = v46;
  *(&v40[2] + 7) = v47;
  *(&v40[3] + 7) = v48[0];
  v40[4] = *(v48 + 9);
  *a2 = v20;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = v11;
  v33 = v40[1];
  *(a2 + 41) = v40[0];
  v34 = v40[3];
  *(a2 + 105) = v40[4];
  v35 = v40[2];
  *(a2 + 89) = v34;
  *(a2 + 73) = v35;
  *(a2 + 57) = v33;
  v49[2] = v43;
  v49[3] = v32;
  v49[0] = v41;
  v49[1] = v42;
  v50 = v31;
  v51 = 0;
  sub_26F3B6B4C(v49, &qword_2806DFD60, &qword_26F4A59E8);
  return sub_26F3E21D4(v20, v28, v27, v25);
}

__n128 sub_26F3EC7E4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_26F49F2C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v32 = a1;
  sub_26F3ECE34();
  sub_26F49DB28();

  v9 = *(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      LOBYTE(v21[0]) = 0;
      v34[24] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
      sub_26F3ECE8C();
      sub_26F49E928();
      v15 = v23;
      v16 = v24;
      v17[0] = *v25;
      *(v17 + 9) = *&v25[9];
      LOBYTE(v27) = 1;
      BYTE9(v17[1]) = 1;
      goto LABEL_11;
    }

    if (v9 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      swift_getKeyPath();
      *&v32 = a1;
      sub_26F49DB28();

      v10 = *(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress);
      LOBYTE(v21[0]) = 0;
      LOBYTE(v19[0]) = 1;
      *&v32 = v10;
      BYTE8(v32) = 0;
      v34[24] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
      sub_26F3ECE8C();
      sub_26F3E1D4C();
      sub_26F49E928();
      v15 = v23;
      v16 = v24;
      v17[0] = *v25;
      *(v17 + 9) = *&v25[9];
      LOBYTE(v27) = 0;
      BYTE9(v17[1]) = 0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD78, &qword_26F4A5A20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD80, &qword_26F4A5A28);
      sub_26F3ECF10();
      sub_26F3ECF9C();
      sub_26F49E928();
      goto LABEL_12;
    }

LABEL_8:
    sub_26F49F2B8();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v12 = sub_26F49F2F8();

    (*(v5 + 8))(v8, v4);
    sub_26F49F5A8();
    sub_26F49E0C8();
    v22 = v28;
    v20 = v30;
    v18 = 1;
    *&v32 = v12;
    *(&v32 + 1) = v27;
    LOBYTE(v33) = v28;
    *(&v33 + 1) = v21[0];
    DWORD1(v33) = *(v21 + 3);
    *(&v33 + 1) = v29;
    v34[0] = v30;
    *&v34[1] = v19[0];
    *&v34[4] = *(v19 + 3);
    *&v34[8] = v31;
    v34[24] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
    sub_26F3ECE8C();
    sub_26F49E928();
    v32 = v23;
    v33 = v24;
    *v34 = *v25;
    *&v34[9] = *&v25[9];
    v26 = 1;
    v34[25] = 1;
    goto LABEL_9;
  }

  sub_26F49F2B8();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_26F49F2F8();

  (*(v5 + 8))(v8, v4);
  sub_26F49F5A8();
  sub_26F49E0C8();
  v22 = v28;
  v20 = v30;
  v18 = 0;
  *&v32 = v11;
  *(&v32 + 1) = v27;
  LOBYTE(v33) = v28;
  *(&v33 + 1) = v21[0];
  DWORD1(v33) = *(v21 + 3);
  *(&v33 + 1) = v29;
  v34[0] = v30;
  *&v34[1] = v19[0];
  *&v34[4] = *(v19 + 3);
  *&v34[8] = v31;
  v34[24] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD68, &qword_26F4A5A18);
  sub_26F3ECE8C();
  sub_26F3E1D4C();
  sub_26F49E928();
  v32 = v23;
  v33 = v24;
  *v34 = *v25;
  *&v34[9] = *&v25[9];
  v26 = 0;
  v34[25] = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD78, &qword_26F4A5A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFD80, &qword_26F4A5A28);
  sub_26F3ECF10();
  sub_26F3ECF9C();
  sub_26F49E928();

  v32 = v15;
  v33 = v16;
  *v34 = v17[0];
  *&v34[10] = *(v17 + 10);
LABEL_12:
  v13 = v33;
  *a2 = v32;
  a2[1] = v13;
  a2[2] = *v34;
  result = *&v34[10];
  *(a2 + 42) = *&v34[10];
  return result;
}

unint64_t sub_26F3ECE34()
{
  result = qword_2806DFD20;
  if (!qword_2806DFD20)
  {
    type metadata accessor for LanguageSelectionDownloadModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD20);
  }

  return result;
}

unint64_t sub_26F3ECE8C()
{
  result = qword_2806DFD70;
  if (!qword_2806DFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD68, &qword_26F4A5A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD70);
  }

  return result;
}

unint64_t sub_26F3ECF10()
{
  result = qword_2806DFD88;
  if (!qword_2806DFD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD78, &qword_26F4A5A20);
    sub_26F3ECE8C();
    sub_26F3E1D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD88);
  }

  return result;
}

unint64_t sub_26F3ECF9C()
{
  result = qword_2806DFD90;
  if (!qword_2806DFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFD80, &qword_26F4A5A28);
    sub_26F3ECE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD90);
  }

  return result;
}

unint64_t sub_26F3ED028()
{
  result = qword_2806DFD98;
  if (!qword_2806DFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFDA0, &qword_26F4A5A58);
    sub_26F3B18CC(&qword_2806DFDA8, &qword_2806DFDB0, &unk_26F4A5A60);
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFD98);
  }

  return result;
}

uint64_t sub_26F3ED134()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();
}

uint64_t sub_26F3ED1A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F3ED218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F3ED28C()
{
  v1 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__sourceLocale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__targetLocale, v2);
  v4 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__selection;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE10, &qword_26F4A5B20);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__suggestedLocales;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE18, &qword_26F4A5B28);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LanguageSelectionModel()
{
  result = qword_2806DFDD8;
  if (!qword_2806DFDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3ED450()
{
  sub_26F3ED5D4(319, &qword_2806DFDE8, &qword_2806DEFD8, &qword_26F4A3670);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26F3ED584();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26F3ED5D4(319, &qword_2806DFDF8, &qword_2806DFE00, &qword_26F4A5A90);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26F3ED584()
{
  if (!qword_2806DFDF0)
  {
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DFDF0);
    }
  }
}

void sub_26F3ED5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26F49DDC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26F3ED628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE18, &qword_26F4A5B28);
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE10, &qword_26F4A5B20);
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__sourceLocale;
  v18 = sub_26F49DAB8();
  v19 = *(*(v18 - 8) + 56);
  v19(v16, 1, 1, v18);
  sub_26F3E718C(v16, v13);
  sub_26F49DD68();
  sub_26F3EDA38(v16);
  v20 = *(v7 + 32);
  v29 = v7 + 32;
  v21 = v0 + v17;
  v22 = v31;
  v20(v21, v10, v31);
  v23 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__targetLocale;
  v19(v16, 1, 1, v18);
  sub_26F3E718C(v16, v13);
  sub_26F49DD68();
  sub_26F3EDA38(v16);
  v20(v0 + v23, v10, v22);
  v24 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__selection;
  v38 = 1;
  v25 = v32;
  sub_26F49DD68();
  (*(v33 + 32))(v0 + v24, v25, v34);
  v26 = OBJC_IVAR____TtC13TranslationUI22LanguageSelectionModel__suggestedLocales;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE00, &qword_26F4A5A90);
  v27 = v35;
  sub_26F49DD68();
  (*(v36 + 32))(v0 + v26, v27, v37);
  return v0;
}

uint64_t sub_26F3ED9F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LanguageSelectionModel();
  result = sub_26F49DD48();
  *a1 = result;
  return result;
}

uint64_t sub_26F3EDA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LanguageSelectionView();
  v16 = v15[5];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a8 + v16) = [objc_opt_self() bundleForClass_];
  v18 = v15[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  sub_26F49F338();
  *(a8 + v18) = v26;
  v19 = v15[13];
  sub_26F49F338();
  result = *&v26;
  *(a8 + v19) = v26;
  *(a8 + v15[9]) = a1;
  v21 = (a8 + v15[6]);
  *v21 = a2;
  v21[1] = a3;
  *(a8 + v15[7]) = 0;
  v22 = (a8 + v15[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a8 + v15[10]);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a8 + v15[11]);
  *v24 = a6;
  v24[1] = a7;
  return result;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:shouldAddDismissButton:didTapDismiss:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for LanguageSelectionView();
  v18 = v17[5];
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a8 + v18) = [objc_opt_self() bundleForClass_];
  v20 = v17[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  sub_26F49F338();
  *(a8 + v20) = v29;
  v21 = v17[13];
  sub_26F49F338();
  result = *&v29;
  *(a8 + v21) = v29;
  *(a8 + v17[9]) = a1;
  v23 = (a8 + v17[6]);
  *v23 = a2;
  v23[1] = a3;
  *(a8 + v17[7]) = a4;
  v24 = (a8 + v17[8]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a8 + v17[10]);
  *v25 = a7;
  v25[1] = a9;
  v26 = (a8 + v17[11]);
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t LanguageSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE28, &qword_26F4A5C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE30, &qword_26F4A5C58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE38, &qword_26F4A5C60);
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v45 - v13;
  v15 = type metadata accessor for LanguageSelectionView();
  if (*(v1 + *(v15 + 28)) == 1)
  {
    v50 = &v45;
    MEMORY[0x28223BE20](v15);
    v49 = &v45 - 4;
    *(&v45 - 2) = v1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE88, &qword_26F4A5C88);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE90, &qword_26F4A5C90);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE98, &qword_26F4A5C98);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA0, &qword_26F4A5CA0);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    v20 = v2;
    v21 = sub_26F49E9D8();
    v22 = sub_26F3F19F0();
    v53 = v19;
    v54 = v21;
    v55 = v22;
    v56 = MEMORY[0x277CDE0D0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38);
    v53 = v18;
    v54 = v17;
    v55 = OpaqueTypeConformance2;
    v56 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    v53 = v16;
    v54 = v17;
    v55 = v25;
    v56 = v24;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA8, &qword_26F4A5CA8);
    v28 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8);
    v53 = v27;
    v54 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v53 = v20;
    v54 = v45;
    v55 = v26;
    v56 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = sub_26F3BDC0C();
    v53 = v46;
    v54 = MEMORY[0x277D837D0];
    v55 = v30;
    v56 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v53 = v47;
    v54 = v32;
    swift_getOpaqueTypeConformance2();
    sub_26F49E318();
    v33 = v51;
    (*(v11 + 16))(v10, v14, v51);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60);
    sub_26F49E928();
    return (*(v11 + 8))(v14, v33);
  }

  else
  {
    sub_26F3EEAC0(v6);
    (*(v3 + 16))(v10, v6, v2);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60);
    v35 = v2;
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    v40 = sub_26F49E9D8();
    v41 = sub_26F3F19F0();
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v56 = MEMORY[0x277CDE0D0];
    v42 = swift_getOpaqueTypeConformance2();
    v43 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38);
    v53 = v38;
    v54 = v37;
    v55 = v42;
    v56 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v53 = v36;
    v54 = v37;
    v55 = v44;
    v56 = v43;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return (*(v3 + 8))(v6, v35);
  }
}

uint64_t sub_26F3EE4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_26F49E6A8();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE28, &qword_26F4A5C50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE98, &qword_26F4A5C98);
  v12 = *(v11 - 8);
  v52 = v11;
  v53 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE90, &qword_26F4A5C90);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v51 = &v50 - v19;
  sub_26F3EEAC0(v10);
  v60 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEA0, &qword_26F4A5CA0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
  v25 = sub_26F49E9D8();
  v26 = sub_26F3F19F0();
  v63 = v24;
  v64 = v25;
  v65 = v26;
  v66 = MEMORY[0x277CDE0D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38);
  v63 = v23;
  v64 = v22;
  v65 = OpaqueTypeConformance2;
  v66 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v63 = v21;
  v64 = v22;
  v65 = v29;
  v66 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFEA8, &qword_26F4A5CA8);
  v32 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8);
  v63 = v31;
  v64 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  sub_26F49F148();
  (*(v7 + 8))(v10, v6);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass_];
  v36 = sub_26F49D7D8();
  v38 = v37;

  v61 = v36;
  v62 = v38;
  v63 = v6;
  v64 = v20;
  v65 = v30;
  v66 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_26F3BDC0C();
  v41 = MEMORY[0x277D837D0];
  v43 = v51;
  v42 = v52;
  sub_26F49F018();

  v44 = v42;
  (*(v53 + 8))(v15, v42);
  v45 = v56;
  v46 = v57;
  v47 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277CDDDC0], v58);
  v63 = v44;
  v64 = v41;
  v65 = v39;
  v66 = v40;
  swift_getOpaqueTypeConformance2();
  v48 = v54;
  sub_26F49F0D8();
  (*(v46 + 8))(v45, v47);
  return (*(v55 + 8))(v43, v48);
}

uint64_t sub_26F3EEAC0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_26F49E9D8();
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LanguageSelectionView();
  v8 = *(v7 - 8);
  v56 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v10;
  v12 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE58, &qword_26F4A5C78);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE50, &qword_26F4A5C70);
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = v44 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE48, &qword_26F4A5C68);
  v21 = *(v20 - 8);
  v50 = v20;
  v51 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v55 = v44 - v23;
  v53 = v1;
  v57 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEE0, &qword_26F4A5D40);
  sub_26F3B18CC(&qword_2806DFEE8, &qword_2806DFEE0, &qword_26F4A5D40);
  sub_26F49EDB8();
  v44[0] = v12;
  sub_26F3F2160(v1, v12);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v44[1] = v11;
  v25 = swift_allocObject();
  sub_26F3F21C4(v12, v25 + v24);
  v26 = &v15[*(v54 + 36)];
  v27 = &v26[*(sub_26F49E1E8() + 20)];
  sub_26F49FBE8();
  *v26 = &unk_26F4A5D50;
  *(v26 + 1) = v25;
  sub_26F49E9C8();
  v28 = sub_26F3F19F0();
  v29 = v46;
  sub_26F49F198();
  (*(v47 + 8))(v6, v29);
  sub_26F3B6B4C(v15, &qword_2806DFE58, &qword_26F4A5C78);
  v30 = v53;
  v58 = *(v53 + *(v56 + 56));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F348();
  v31 = v44[0];
  sub_26F3F2160(v30, v44[0]);
  v32 = swift_allocObject();
  v33 = v31;
  sub_26F3F21C4(v31, v32 + v24);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  *&v58 = v54;
  *(&v58 + 1) = v29;
  v59 = v28;
  v60 = MEMORY[0x277CDE0D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38);
  v37 = v48;
  v38 = v45;
  sub_26F49F168();

  (*(v49 + 8))(v38, v37);
  v39 = v53;
  v58 = *(v53 + *(v56 + 60));
  sub_26F49F348();
  sub_26F3F2160(v39, v33);
  v40 = swift_allocObject();
  sub_26F3F21C4(v33, v40 + v24);
  *&v58 = v37;
  *(&v58 + 1) = v34;
  v59 = OpaqueTypeConformance2;
  v60 = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v50;
  v42 = v55;
  sub_26F49F168();

  return (*(v51 + 8))(v42, v41);
}

uint64_t sub_26F3EF130(uint64_t a1)
{
  v2 = sub_26F49E998();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEA8, &qword_26F4A5CA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_26F49E958();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC70, &qword_26F4A2AE0);
  sub_26F3B18CC(&qword_2806DEC78, &qword_2806DEC70, &qword_26F4A2AE0);
  sub_26F49E028();
  v9 = sub_26F3B18CC(&qword_2806DFEB0, &qword_2806DFEA8, &qword_26F4A5CA8);
  MEMORY[0x27438F7E0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F3EF31C(uint64_t a1)
{
  v2 = type metadata accessor for LanguageSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3F2160(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F3F21C4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_26F49F398();
}

uint64_t sub_26F3EF448(uint64_t a1)
{
  v2 = sub_26F49E148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for LanguageSelectionView() + 32);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v10);

    return sub_26F3ACE98(v8);
  }

  else
  {
    sub_26F3EF578(v6);
    sub_26F49E138();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_26F3EF578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49E678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26F3B8DD4(v2, &v17 - v11, &qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E148();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}