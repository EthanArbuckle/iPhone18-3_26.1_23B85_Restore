uint64_t sub_1A8BC5DF4()
{
  memcpy(__dst, v0, 0x12BuLL);
  if (sub_1A8BAECD4(__dst) == 1)
  {
    v1 = sub_1A8AAD988(__dst);
    memcpy(v14, v1, 0x12BuLL);
    *&v11[0] = 0x6E696C69746C756DLL;
    *(&v11[0] + 1) = 0xEB000000005B3A65;
    v2 = sub_1A8BC5FE8();
    MEMORY[0x1AC573970](v2);

    MEMORY[0x1AC573970](93, 0xE100000000000000);
    v3 = 0xEB000000005B3A65;
    v4 = 0x6E696C69746C756DLL;
  }

  else
  {
    v5 = sub_1A8AAD988(__dst);
    v6 = *(v5 + 112);
    v14[6] = *(v5 + 96);
    v14[7] = v6;
    v14[8] = *(v5 + 128);
    LOBYTE(v14[9]) = *(v5 + 144);
    v7 = *(v5 + 48);
    v14[2] = *(v5 + 32);
    v14[3] = v7;
    v8 = *(v5 + 80);
    v14[4] = *(v5 + 64);
    v14[5] = v8;
    v9 = *(v5 + 16);
    v14[0] = *v5;
    v14[1] = v9;
    MEMORY[0x1AC573970](0x694C656C676E6973, 0xEC0000005B3A656ELL);
    v11[6] = v14[6];
    v11[7] = v14[7];
    v11[8] = v14[8];
    v12 = v14[9];
    v11[2] = v14[2];
    v11[3] = v14[3];
    v11[4] = v14[4];
    v11[5] = v14[5];
    v11[0] = v14[0];
    v11[1] = v14[1];
    sub_1A8BDE334();
    MEMORY[0x1AC573970](93, 0xE100000000000000);
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  sub_1A8BDE314();

  strcpy(v11, "NameStyle: { ");
  MEMORY[0x1AC573970](v4, v3);

  MEMORY[0x1AC573970](8233154, 0xA300000000000000);
  return *&v11[0];
}

uint64_t sub_1A8BC5FE8()
{
  sub_1A8BDE314();
  MEMORY[0x1AC573970](0xD000000000000017, 0x80000001A8C03820);
  sub_1A8BDE334();
  MEMORY[0x1AC573970](0x6F74746F62202C5DLL, 0xEF5B3A656D614E6DLL);
  sub_1A8BDE334();
  MEMORY[0x1AC573970](0xD000000000000018, 0x80000001A8C03840);
  sub_1A8BDE334();
  MEMORY[0x1AC573970](0xD000000000000015, 0x80000001A8C03860);
  sub_1A8BDE334();
  MEMORY[0x1AC573970](8200285, 0xE300000000000000);
  return 0;
}

BOOL sub_1A8BC61CC(uint64_t a1)
{
  v65 = a1;
  v66 = sub_1A8BDDF84();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  [v4 maximumHorizontalTextBounds];
  Width = CGRectGetWidth(v123);
  [v4 minimumScaleFactor];
  v7 = v6;
  if (*(v1 + 297))
  {
    if ((*(v1 + 298) & 1) == 0)
    {
      v8 = 176;
LABEL_6:
      v9 = *v1;
      v68 = *(v1 + 8);
      v10 = *(v1 + v8);
      v11 = v68;
      swift_bridgeObjectRetain_n();
      v12 = v10;
      v13 = *(&v68 + 1);
      v63 = v9;
      sub_1A8BB0BC8(v9, v11, v12, v95);
      v14 = *(v1 + 152);
      v67 = *(v1 + 160);
      v57 = BYTE8(v96);
      v15 = v96;
      v16 = *(&v95[5] + 1);
      v61 = *(&v95[3] + 8);
      v62 = *(&v95[4] + 8);
      v59 = *(&v95[1] + 8);
      v60 = *(&v95[2] + 8);
      v17 = *&v95[0];
      v18 = v67;
      v58 = *(v95 + 8);
      swift_bridgeObjectRetain_n();
      v19 = v12;
      v20 = *(&v67 + 1);
      sub_1A8BB0BC8(v14, v18, v19, v100);
      v21 = 0;
      v22 = 0;
      v23 = BYTE8(v101);
      v24 = v101;
      v25 = *(&v100[5] + 1);
      v26 = *(&v100[4] + 8);
      v27 = *(&v100[3] + 8);
      v28 = *(&v100[2] + 8);
      v29 = *(&v100[1] + 8);
      v30 = *&v100[0];
      v31 = v19;
      v32 = *(v100 + 8);
      goto LABEL_8;
    }
  }

  else if (*(v1 + 298))
  {
    v8 = 24;
    goto LABEL_6;
  }

  v33 = *(v1 + 112);
  v101 = *(v1 + 96);
  v102 = v33;
  v103 = *(v1 + 128);
  v104 = *(v1 + 144);
  v34 = *(v1 + 48);
  v100[2] = *(v1 + 32);
  v100[3] = v34;
  v35 = *(v1 + 80);
  v100[4] = *(v1 + 64);
  v100[5] = v35;
  v36 = *(v1 + 16);
  v100[0] = *v1;
  v100[1] = v36;
  v37 = *(v1 + 264);
  v38 = *(v1 + 280);
  v96 = *(v1 + 248);
  v97 = v37;
  v98 = v38;
  v99 = *(v1 + 296);
  v39 = *(v1 + 200);
  v95[2] = *(v1 + 184);
  v95[3] = v39;
  v40 = *(v1 + 232);
  v95[4] = *(v1 + 216);
  v95[5] = v40;
  v41 = *(v1 + 168);
  v95[0] = *(v1 + 152);
  v95[1] = v41;
  v17 = *(&v100[2] + 1);
  v58 = v100[3];
  v59 = v100[4];
  v60 = v100[5];
  v61 = v101;
  v62 = v102;
  v15 = *(&v103 + 1);
  v16 = v103;
  v42 = v100[2];
  v19 = *(&v100[1] + 1);
  v63 = *&v100[0];
  v57 = v104;
  v30 = *(&v95[2] + 1);
  v55 = v95[4];
  v56 = v95[3];
  v53 = v95[5];
  v54 = v97;
  v52 = v96;
  v24 = *(&v38 + 1);
  v25 = v38;
  v22 = v95[2];
  v31 = *(&v41 + 1);
  v14 = *&v95[0];
  v67 = *(v95 + 8);
  v68 = *(v100 + 8);
  v23 = v99;
  sub_1A8BAF018(v100, &v82);
  sub_1A8BAF018(v95, &v82);
  v29 = v55;
  v32 = v56;
  v27 = v52;
  v28 = v53;
  v26 = v54;
  v21 = v42;
LABEL_8:
  v105 = v30;
  v106 = v32;
  v107 = v29;
  v108 = v28;
  v109 = v27;
  v110 = v26;
  v111 = v25;
  v112 = v24;
  v113 = v23 & 1;
  v69 = v14;
  v70 = v67;
  v71 = v31;
  v72 = v22;
  v73 = v30;
  v74 = v32;
  v75 = v29;
  v76 = v28;
  v77 = v27;
  v78 = v26;
  v79 = v25;
  v80 = v24;
  v81 = v23 & 1;
  v114 = v17;
  v115 = v58;
  v117 = v60;
  v116 = v59;
  v119 = v62;
  v118 = v61;
  v120 = v16;
  v121 = v15;
  v122 = v57 & 1;
  v83 = v68;
  v82 = v63;
  v84 = v19;
  v85 = v21;
  v86 = v17;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v91 = v62;
  v92 = v16;
  v93 = v15;
  v94 = v57 & 1;
  v43 = v65;
  sub_1A8BB8A4C(v65);
  sub_1A8BB011C(v3, v7);
  v45 = v44;
  v46 = *(v64 + 8);
  v47 = v66;
  v46(v3, v66);
  sub_1A8BB8A4C(v43);
  sub_1A8BB011C(v3, v7);
  v49 = v48;
  v46(v3, v47);
  sub_1A8BC07E4(&v69);
  sub_1A8BC07E4(&v82);
  if (v45 > v49)
  {
    v50 = v45;
  }

  else
  {
    v50 = v49;
  }

  return v50 <= Width;
}

unint64_t sub_1A8BC6680(char a1)
{
  if (a1)
  {
    v1 = 0x6D6F74746F62;
  }

  else
  {
    v1 = 7368564;
  }

  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  sub_1A8BDE314();

  v3 = sub_1A8BDE3A4();
  MEMORY[0x1AC573970](v3);

  MEMORY[0x1AC573970](0xD000000000000010, 0x80000001A8C038A0);
  MEMORY[0x1AC573970](v1, v2);

  MEMORY[0x1AC573970](8200285, 0xE300000000000000);
  return 0xD00000000000001BLL;
}

void *sub_1A8BC679C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_1A8BC67D4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [objc_opt_self() posterNameComponentsForContact_];
  v11 = [v10 secondNameComponent];
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_1A8BDE134();
  v15 = v14;
  if (a4)
  {
    goto LABEL_3;
  }

  v59 = v13;
  v17 = [v10 firstNameComponent];
  v18 = sub_1A8BDE134();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_3;
  }

  v22 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v22 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_3:

LABEL_4:
    a3 = v10;
    v10 = v12;
LABEL_6:

    sub_1A8BC7388(__src);
    return memcpy(a5, __src, 0x12BuLL);
  }

  v23 = [v10 singleNameComponentIndex];
  if (v23)
  {
    if (v23 != 1)
    {
LABEL_26:

      goto LABEL_4;
    }

    v24 = 1;
    v25 = sub_1A8BDE244();
    if (v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
    v25 = sub_1A8BDE244();
    if (v27)
    {
LABEL_21:
      v57 = 1;
      goto LABEL_22;
    }
  }

  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v57 = 0;
LABEL_22:
  v28 = [v10 firstNameComponent];
  if (!v28)
  {
    sub_1A8BDE134();
    v28 = sub_1A8BDE104();
  }

  IsSuitableForArabicJustification = CTStringIsSuitableForArabicJustification();

  if (IsSuitableForArabicJustification)
  {

LABEL_28:
    v24 = 0;
    v31 = 0;
    goto LABEL_29;
  }

  v30 = CTStringIsSuitableForArabicJustification();

  v31 = v57;
  if (v30)
  {
    goto LABEL_28;
  }

LABEL_29:
  v58 = v31;
  v55 = v24;
  v54 = objc_opt_self();
  [v54 defaultSecondaryNameFontSize];
  v32 = [a3 fontWithSize_];
  v33 = [v10 firstNameComponent];
  v56 = sub_1A8BDE134();
  v35 = v34;

  v36 = v32;
  v37 = a2;

  sub_1A8BB0BC8(v56, v35, v36, v78);
  *(&v74[1] + 7) = v78[1];
  *(v74 + 7) = v78[0];
  *(&v74[4] + 7) = v78[4];
  *(&v74[3] + 7) = v78[3];
  *(&v74[5] + 7) = v79[0];
  v74[6] = *(v79 + 9);
  *(&v74[2] + 7) = v78[2];
  *&v77[49] = v74[3];
  *&v77[65] = v74[4];
  *&v77[81] = v74[5];
  *&v77[97] = *(v79 + 9);
  *&v77[1] = v74[0];
  *&v77[17] = v74[1];
  *&v75 = v56;
  *(&v75 + 1) = v35;
  *&v76 = v37;
  *(&v76 + 1) = v36;
  v77[0] = 0;
  *&v77[33] = v74[2];
  v38 = v36;
  v39 = v37;

  sub_1A8BB0BC8(v59, v15, v38, v80);
  *&v70[23] = v80[1];
  *&v70[7] = v80[0];
  *&v70[71] = v80[4];
  *&v70[55] = v80[3];
  *&v70[87] = v81[0];
  *&v70[96] = *(v81 + 9);
  *&v70[39] = v80[2];
  *&v73[49] = *&v70[48];
  *&v73[65] = *&v70[64];
  *&v73[81] = *&v70[80];
  *&v73[97] = *(v81 + 9);
  *&v73[1] = *v70;
  *&v73[17] = *&v70[16];
  *&v71 = v59;
  *(&v71 + 1) = v15;
  *&v72 = v39;
  *(&v72 + 1) = v38;
  v73[0] = 0;
  *&v73[33] = *&v70[32];
  if (v58)
  {
    v53 = &v73[8];
    v40 = sub_1A8BDE104();
    v41 = sub_1A8BDE104();
    [v54 idealEmphasizedFontSizeForHorizontalName:v40 nonEmphasizedText:v41 nonEmphasizedFont:v38 emphasizedNameIsTopName:0];
    v43 = v42;

    v44 = [a3 fontWithSize_];
    *(&v72 + 1) = v44;

    v45 = v59;
    v46 = v15;
    v47 = v44;
  }

  else
  {
    v53 = &v77[8];
    v48 = sub_1A8BDE104();
    v49 = sub_1A8BDE104();
    [v54 idealEmphasizedFontSizeForHorizontalName:v48 nonEmphasizedText:v49 nonEmphasizedFont:v38 emphasizedNameIsTopName:1];
    v51 = v50;

    v52 = [a3 fontWithSize_];
    *(&v76 + 1) = v52;

    v45 = v56;
    v46 = v35;
    v47 = v52;
  }

  sub_1A8BB0BC8(v45, v46, v47, v82);

  sub_1A8BC0D6C(v82, v53);
  v61[6] = *&v77[64];
  v61[7] = *&v77[80];
  v61[8] = *&v77[96];
  v61[2] = *v77;
  v61[3] = *&v77[16];
  v61[4] = *&v77[32];
  v61[5] = *&v77[48];
  v61[0] = v75;
  v61[1] = v76;
  v63[6] = *&v73[64];
  v63[7] = *&v73[80];
  v63[8] = *&v73[96];
  v63[2] = *v73;
  v63[3] = *&v73[16];
  v63[4] = *&v73[32];
  v63[5] = *&v73[48];
  v63[0] = v71;
  v63[1] = v72;
  v60[6] = *&v77[64];
  v60[7] = *&v77[80];
  v60[8] = *&v77[96];
  v60[2] = *v77;
  v60[3] = *&v77[16];
  v60[4] = *&v77[32];
  v60[5] = *&v77[48];
  v60[0] = v75;
  v60[1] = v76;
  *(&v60[16] + 8) = *&v73[80];
  *(&v60[17] + 8) = *&v73[96];
  *(&v60[15] + 8) = *&v73[64];
  *(&v60[11] + 8) = *v73;
  *(&v60[12] + 8) = *&v73[16];
  *(&v60[13] + 8) = *&v73[32];
  *(&v60[14] + 8) = *&v73[48];
  *(&v60[9] + 8) = v71;
  *(&v60[10] + 8) = v72;
  v65[6] = *&v73[64];
  v65[7] = *&v73[80];
  v65[8] = *&v73[96];
  v65[2] = *v73;
  v65[3] = *&v73[16];
  v65[4] = *&v73[32];
  v65[5] = *&v73[48];
  v62 = v77[112];
  v64 = v73[112];
  LOBYTE(v60[9]) = v77[112];
  BYTE8(v60[18]) = v73[112];
  v66 = v73[112];
  v65[0] = v71;
  v65[1] = v72;
  sub_1A8BAF018(v61, __src);
  sub_1A8BAF018(v63, __src);
  sub_1A8BC07E4(v65);
  v67[6] = *&v77[64];
  v67[7] = *&v77[80];
  v67[8] = *&v77[96];
  v68 = v77[112];
  v67[2] = *v77;
  v67[3] = *&v77[16];
  v67[4] = *&v77[32];
  v67[5] = *&v77[48];
  v67[0] = v75;
  v67[1] = v76;
  sub_1A8BC07E4(v67);
  memcpy(__dst, v60, 0x129uLL);
  __dst[297] = v58;
  __dst[298] = v55;
  nullsub_1(__dst);
  memcpy(__src, __dst, 0x12BuLL);
  return memcpy(a5, __src, 0x12BuLL);
}

void *sub_1A8BC6F3C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  sub_1A8BC67D4(v7, v8, v9, 0, __src);
  memcpy(__dst, __src, 0x12BuLL);
  if (sub_1A8AADFA8(__dst) == 1)
  {
    v10 = [objc_opt_self() posterNameComponentsForContact_];
    v11 = [v10 firstNameComponent];

    v12 = sub_1A8BDE134();
    v14 = v13;

LABEL_11:

    v19 = sub_1A8BDE104();
    IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

    v21 = IsSuitableForVerticalLayout;
    v22 = objc_opt_self();
    v23 = sub_1A8BDE104();

    [v22 idealEmphasizedFontSizeForName:v23 usingLayout:v21];
    v25 = v24;

    v26 = [v9 fontWithSize_];

    v27 = v26;
    sub_1A8BB0BC8(v12, v14, v27, v33);

    *&v30[23] = v33[1];
    *&v30[7] = v33[0];
    *&v30[71] = v33[4];
    *&v30[55] = v33[3];
    *&v30[87] = v34[0];
    *&v30[96] = *(v34 + 9);
    *&v30[39] = v33[2];
    *(&v31[10] + 1) = *&v30[48];
    *(&v31[12] + 1) = *&v30[64];
    *(&v31[14] + 1) = *&v30[80];
    *(&v31[16] + 1) = *(v34 + 9);
    *(&v31[4] + 1) = *v30;
    *(&v31[6] + 1) = *&v30[16];
    v31[0] = v12;
    v31[1] = v14;
    v31[2] = v8;
    v31[3] = v27;
    LOBYTE(v31[4]) = 0;
    *(&v31[8] + 1) = *&v30[32];
    sub_1A8BC11B4(v31);
    v15 = v31;
    goto LABEL_12;
  }

  memcpy(v36, __dst, 0x12BuLL);
  memcpy(v31, __dst, 0x12BuLL);
  if (!sub_1A8BC61CC(0))
  {
    v16 = [objc_opt_self() stringFromContact:v7 style:0];
    if (v16)
    {
      v17 = v16;
      v12 = sub_1A8BDE134();
      v14 = v18;

      sub_1A8BAF4B8(__src, &qword_1EB341718);
    }

    else
    {
      if (BYTE10(v36[18]))
      {
        v29[2] = *(&v36[11] + 8);
        v29[3] = *(&v36[12] + 8);
        v29[4] = *(&v36[13] + 8);
        v29[5] = *(&v36[14] + 8);
        v29[0] = *(&v36[9] + 8);
        v29[1] = *(&v36[10] + 8);
        v29[6] = *(&v36[15] + 8);
        v29[7] = *(&v36[16] + 8);
        LOBYTE(v29[9]) = BYTE8(v36[18]);
        v29[8] = *(&v36[17] + 8);
      }

      else
      {
        v29[6] = v36[6];
        v29[7] = v36[7];
        v29[8] = v36[8];
        LOBYTE(v29[9]) = v36[9];
        v29[2] = v36[2];
        v29[3] = v36[3];
        v29[4] = v36[4];
        v29[5] = v36[5];
        v29[0] = v36[0];
        v29[1] = v36[1];
      }

      sub_1A8BAF018(v29, v37);
      sub_1A8BAF4B8(__src, &qword_1EB341718);
      v12 = *&v29[0];
      *&v37[0] = *&v29[0];
      *(v37 + 8) = *(v29 + 8);
      *(&v37[1] + 1) = *(&v29[1] + 1);
      LOBYTE(v37[2]) = v29[2];
      *(&v37[2] + 1) = *(&v29[2] + 1);
      v37[3] = v29[3];
      v37[4] = v29[4];
      v37[5] = v29[5];
      v37[6] = v29[6];
      v37[7] = v29[7];
      v37[8] = v29[8];
      v14 = *(&v29[0] + 1);
      LOBYTE(v37[9]) = v29[9] & 1;

      sub_1A8BC07E4(v37);
    }

    goto LABEL_11;
  }

  memcpy(v29, v31, 0x12BuLL);
  sub_1A8BC116C(v29);
  v15 = v29;
LABEL_12:
  memcpy(v37, v15, 0x12BuLL);
  return memcpy(a4, v37, 0x12BuLL);
}

double sub_1A8BC7388(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 283) = 0u;
  return result;
}

uint64_t sub_1A8BC7434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 299))
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

uint64_t sub_1A8BC747C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 298) = 0;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 299) = 1;
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

    *(result + 299) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8BC7524()
{
  result = qword_1EB341728;
  if (!qword_1EB341728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB341728);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A8BC7598(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1A8BC75E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A8BC7644(void *a1)
{
  v3 = *(v1 + 8);
  [a1 setMinimumScaleFactor_];
  v4 = *(v1 + 40);
  if (v4)
  {
    [a1 setAttributedText_];
  }

  else
  {
    v5 = sub_1A8BDE104();
    [a1 setText_];

    [a1 setTextColor_];
  }

  v6 = *v1;
  [a1 setFont_];
  [v6 pointSize];
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v6, v3 * v7, 0, 0);
  v9 = sub_1A8BDE104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8BF8F70;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  *(inited + 64) = v12;
  *(inited + 40) = CopyWithAttributes;
  v13 = v11;
  v14 = CopyWithAttributes;
  sub_1A8BB69EC(inited);
  swift_setDeallocating();
  sub_1A8BC7AD0(inited + 32);
  type metadata accessor for Key(0);
  sub_1A8BC7B38();
  v15 = sub_1A8BDE0D4();

  [v9 sizeWithAttributes_];
  v17 = v16;

  if (*(v1 + 48) >= v17)
  {
    [a1 setMarqueeEnabled_];
    [a1 setMarqueeRunning_];
    v18 = 0;
  }

  else
  {
    [a1 setMarqueeEnabled_];
    [a1 setMarqueeRunning_];
    v18 = *(v1 + 57);
  }

  [a1 _setMarqueeUpdatable_];
}

id sub_1A8BC7878()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontSizeToFitWidth_];
  LODWORD(v1) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  return v0;
}

uint64_t sub_1A8BC798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A8BC7A7C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A8BC79F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A8BC7A7C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A8BC7A54()
{
  sub_1A8BC7A7C();
  sub_1A8BDDED4();
  __break(1u);
}

unint64_t sub_1A8BC7A7C()
{
  result = qword_1EB33D148;
  if (!qword_1EB33D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D148);
  }

  return result;
}

uint64_t sub_1A8BC7AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3411C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8BC7B38()
{
  result = qword_1EB33D018;
  if (!qword_1EB33D018)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D018);
  }

  return result;
}

void __PRSetupSharedWidgetExtensionProvider_block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 extensions];
  v4 = 134217984;
  v5 = [v3 count];
  _os_log_debug_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_DEBUG, "Chrono extensions loaded: %lu", &v4, 0xCu);
}

void NSStringFromPRPosterSnapshotDefinitionLayerSet_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull NSStringFromPRPosterSnapshotDefinitionLayerSet(PRPosterSnapshotDefinitionLayerSet)"];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"PRPosterSnapshotDefinition.m";
  v7 = 1024;
  v8 = 26;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

void NSStringFromPRPosterGalleryPresentationStyle_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nullable NSStringFromPRPosterGalleryPresentationStyle(PRPosterGalleryPresentationStyle)"];
  OUTLINED_FUNCTION_3_3();
  v5 = @"PRPosterDescriptorGalleryOptions.m";
  v6 = 1024;
  v7 = 27;
  v8 = v3;
  v9 = a1;
  _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, 0x26u);
}

void NSStringFromPRPosterGalleryDisplayStyle_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nullable NSStringFromPRPosterGalleryDisplayStyle(PRPosterGalleryDisplayStyle)"];
  OUTLINED_FUNCTION_3_3();
  v5 = @"PRPosterDescriptorGalleryOptions.m";
  v6 = 1024;
  v7 = 42;
  v8 = v3;
  v9 = a1;
  _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, 0x26u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x1EEE4DB28](string);
  result.y = v2;
  result.x = v1;
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

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x1EEE4DB30](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x1EEE4DB38](string);
  result.height = v2;
  result.width = v1;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}