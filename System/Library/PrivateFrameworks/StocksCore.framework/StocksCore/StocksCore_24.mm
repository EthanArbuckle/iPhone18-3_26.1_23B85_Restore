uint64_t sub_1DAC5ECB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAC5D170(&v76, &v67, a5);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC5EFAC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAC5DF2C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAC5ECB8(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC5F0F4(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC0699C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAC5EFAC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAC5F19C()
{
  result = qword_1EE11F080;
  if (!qword_1EE11F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F080);
  }

  return result;
}

unint64_t sub_1DAC5F1F4()
{
  result = qword_1EE11F078;
  if (!qword_1EE11F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F078);
  }

  return result;
}

unint64_t sub_1DAC5F294()
{
  result = qword_1EE11F088;
  if (!qword_1EE11F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F088);
  }

  return result;
}

uint64_t sub_1DAC5F378(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAC5F3FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = type metadata accessor for SymbolEntity();
    v10 = sub_1DAC5F378(a3, type metadata accessor for SymbolEntity);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1DAC5F4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAC5F554()
{
  if (!qword_1ECBE96D0)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAA9A574();
    sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
    sub_1DAA8D9E8();
    v0 = sub_1DACB7104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE96D0);
    }
  }
}

void sub_1DAC5F628()
{
  if (!qword_1ECBE96D8)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAA9A574();
    sub_1DAA8D9E8();
    v0 = sub_1DACB72B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE96D8);
    }
  }
}

void sub_1DAC5F6C0()
{
  if (!qword_1ECBE96E0)
  {
    sub_1DAA9A574();
    sub_1DAA8D9E8();
    v0 = sub_1DACB70D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE96E0);
    }
  }
}

void sub_1DAC5F744()
{
  if (!qword_1ECBE96E8)
  {
    sub_1DAA9A574();
    sub_1DAA8D9E8();
    v0 = sub_1DACB7074();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE96E8);
    }
  }
}

uint64_t sub_1DAC5F7D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DAC5D01C(a1);
}

uint64_t sub_1DAC5F7DC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DAC5CECC(a1);
}

uint64_t sub_1DAC5F818(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *a3;
  sub_1DACB82E4();
  v12 = __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v17 = v11;
  v13 = *v12;
  v14 = sub_1DABD3BF0(a1, a2, &v17, a4, a5);
  v15 = sub_1DACB82B4();

  return v15;
}

uint64_t sub_1DAC5F8DC()
{
  v0 = type metadata accessor for AppConfiguration(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 536);
  v6 = sub_1DACB88D4();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v70 = v0;
  v7(&v4[*(v0 + 560)], 1, 1, v6);
  *v4 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 1) = MEMORY[0x1E69E7CC0];
  *(v4 + 2) = v8;
  *(v4 + 24) = xmmword_1DACD4070;
  *(v4 + 40) = xmmword_1DACD4080;
  *(v4 + 56) = vdupq_n_s64(0x64uLL);
  *(v4 + 9) = 1;
  *(v4 + 10) = v8;
  *(v4 + 44) = 257;
  *(v4 + 12) = 0x3F50624DD2F1A9FCLL;
  *(v4 + 52) = 257;
  *(v4 + 7) = vdupq_n_s64(3uLL);
  *(v4 + 8) = xmmword_1DACD4090;
  *(v4 + 9) = xmmword_1DACD40A0;
  *(v4 + 20) = 0x4092C00000000000;
  *(v4 + 21) = 0xD00000000000002CLL;
  *(v4 + 22) = 0x80000001DACEDBE0;
  v9 = vdupq_n_s64(0x4122750000000000uLL);
  *(v4 + 184) = vdupq_n_s64(0x4082C00000000000uLL);
  *(v4 + 200) = v9;
  *(v4 + 216) = v9;
  *(v4 + 232) = xmmword_1DACD40B0;
  *(v4 + 124) = 1;
  v4[250] = 0;
  *(v4 + 16) = vdupq_n_s64(0xCuLL);
  *(v4 + 17) = vdupq_n_s64(0x40CC200000000000uLL);
  *(v4 + 18) = xmmword_1DACD40C0;
  *(v4 + 19) = xmmword_1DACD40D0;
  *(v4 + 40) = 0x404E000000000000;
  *(v4 + 41) = 2;
  *(v4 + 42) = 0x3FF8000000000000;
  v4[344] = 1;
  *(v4 + 44) = 0x40F5180000000000;
  strcpy(v4 + 1384, "WS-143441-en");
  v4[1397] = 0;
  *(v4 + 699) = -5120;
  *(v4 + 700) = 257;
  *(v4 + 88) = xmmword_1DACD40E0;
  strcpy(v4 + 1424, "YS-143441-en");
  v4[1437] = 0;
  *(v4 + 719) = -5120;
  *(v4 + 180) = 0;
  *(v4 + 181) = 0xE000000000000000;
  *(v4 + 91) = xmmword_1DACD40F0;
  *(v4 + 184) = 0x80000001DACE6EB0;
  *(v4 + 185) = v8;
  *(v4 + 186) = 0x40D5180000000000;
  *(v4 + 187) = 0xD00000000000002FLL;
  *(v4 + 188) = 0x80000001DACEDC10;
  *(v4 + 189) = v8;
  *(v4 + 190) = 0xD00000000000005ELL;
  *(v4 + 191) = 0x80000001DACEDC40;
  *(v4 + 192) = 23899;
  *(v4 + 193) = 0xE200000000000000;
  *(v4 + 194) = 0;
  *(v4 + 195) = 0xE000000000000000;
  v4[1568] = 0;
  *(v4 + 197) = 0x3FF0000000000000;
  *(v4 + 198) = 0x3FF0000000000000;
  *(v4 + 50) = v8;
  *(v4 + 51) = v8;
  sub_1DAA4BB18(v72);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EE1242C0;
  v11 = qword_1EE1242C8;
  sub_1DACB71E4();
  v12 = sub_1DAA4BBA0(v10, v11);
  v68 = v13;
  v69 = v12;

  v14 = qword_1EE1242C0;
  v15 = qword_1EE1242C8;
  sub_1DACB71E4();
  v16 = sub_1DAA4C06C(v14, v15);
  v66 = v17;
  v67 = v16;

  v18 = qword_1EE1242C0;
  v19 = qword_1EE1242C8;
  sub_1DACB71E4();
  v20 = sub_1DAA4C248(v18, v19);
  v64 = v21;
  v65 = v20;

  v22 = qword_1EE1242C0;
  v23 = qword_1EE1242C8;
  sub_1DACB71E4();
  v24 = sub_1DAA4C424(v22, v23);
  v26 = v25;

  v27 = qword_1EE1242C0;
  v28 = qword_1EE1242C8;
  sub_1DACB71E4();
  v29 = sub_1DAA4C600(v27, v28);
  v31 = v30;

  *(v4 + 34) = 0u;
  *(v4 + 35) = xmmword_1DACD4100;
  v32 = v72[8];
  v33 = v72[9];
  v34 = v72[6];
  *(v4 + 46) = v72[7];
  *(v4 + 47) = v32;
  *(v4 + 48) = v33;
  v35 = v72[4];
  v36 = v72[5];
  v37 = v72[2];
  *(v4 + 42) = v72[3];
  *(v4 + 43) = v35;
  *(v4 + 44) = v36;
  *(v4 + 45) = v34;
  v38 = v72[0];
  v39 = v72[1];
  *(v4 + 38) = 0u;
  *(v4 + 39) = v38;
  v79 = 1;
  v77 = 1;
  *(v4 + 26) = 0u;
  v4[432] = 0;
  *(v4 + 433) = 1;
  v4[435] = 0;
  *(v4 + 55) = 0;
  v4[448] = 0;
  *(v4 + 449) = *v80;
  *(v4 + 113) = *&v80[3];
  v41 = v68;
  v40 = v69;
  *(v4 + 57) = 0;
  *(v4 + 58) = v40;
  v43 = v66;
  v42 = v67;
  *(v4 + 59) = v41;
  *(v4 + 60) = v42;
  v44 = v64;
  v45 = v65;
  *(v4 + 61) = v43;
  *(v4 + 62) = v45;
  *(v4 + 63) = v44;
  *(v4 + 64) = v24;
  *(v4 + 65) = v26;
  *(v4 + 66) = v29;
  *(v4 + 67) = v31;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *(v4 + 98) = v73;
  *(v4 + 40) = v39;
  *(v4 + 41) = v37;
  *(v4 + 99) = 0;
  v4[800] = v79;
  *(v4 + 801) = *v78;
  *(v4 + 201) = *&v78[3];
  *(v4 + 101) = 0;
  v4[816] = v77;
  *(v4 + 817) = *v76;
  *(v4 + 205) = *&v76[3];
  *(v4 + 103) = 0;
  *(v4 + 52) = 0u;
  *(v4 + 106) = 0xE000000000000000;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0u;
  *(v4 + 882) = 0u;
  *(v4 + 898) = v74;
  *(v4 + 451) = v75;
  *(v4 + 113) = 25;
  v46 = MEMORY[0x1E69E7CC0];
  *(v4 + 114) = MEMORY[0x1E69E7CC0];
  v4[920] = 1;
  v84[0] = 0;
  LOBYTE(v83[0]) = 0;
  LOBYTE(v82[0]) = 0;
  LOBYTE(v81[0]) = 0;
  *(v4 + 58) = xmmword_1DACD4110;
  v4[944] = 0;
  *(v4 + 945) = v83[0];
  *(v4 + 237) = *(v83 + 3);
  *(v4 + 119) = 0;
  v4[960] = 0;
  *(v4 + 961) = v82[0];
  *(v4 + 241) = *(v82 + 3);
  *(v4 + 121) = 1;
  v4[976] = 0;
  LODWORD(v45) = v81[0];
  *(v4 + 245) = *(v81 + 3);
  *(v4 + 977) = v45;
  *(v4 + 123) = 86400;
  v4[992] = 0;
  *(v4 + 125) = 0x3FA999999999999ALL;
  *(v4 + 130) = 0;
  *(v4 + 63) = xmmword_1DACD4120;
  *(v4 + 64) = 0u;
  *(v4 + 131) = 0x3FA999999999999ALL;
  *(v4 + 66) = xmmword_1DACD4130;
  *(v4 + 67) = xmmword_1DACD4140;
  *(v4 + 68) = xmmword_1DACD4120;
  *(v4 + 69) = xmmword_1DACD4150;
  *(v4 + 70) = xmmword_1DACD4160;
  *(v4 + 71) = xmmword_1DACD4170;
  *(v4 + 144) = 0;
  sub_1DAA4C870(v84);
  memcpy(v71, v84, 0x46BuLL);
  memcpy(&v71[1136], v84, 0x46BuLL);
  memcpy(v4 + 1592, v71, 0x8DBuLL);
  v4[3859] = 0;
  *(v4 + 45) = 1;
  *(v4 + 23) = vdupq_n_s64(0x4143C68000000000uLL);
  *(v4 + 24) = xmmword_1DACD4180;
  *(v4 + 145) = 32123;
  *(v4 + 146) = 0xE200000000000000;
  *(v4 + 483) = 0x3FD0000000000000;
  v4[3872] = 0;
  *(v4 + 485) = 2;
  v4[3888] = 0;
  *(v4 + 487) = 2592000;
  v4[3904] = 0;
  *(v4 + 489) = 0x3FF0000000000000;
  v4[3920] = 0;
  *(v4 + 491) = 0x3FF0000000000000;
  v4[3936] = 0;
  *(v4 + 493) = 0;
  v4[3952] = 1;
  *(v4 + 159) = 600;
  *(v4 + 80) = xmmword_1DACD4190;
  *(v4 + 162) = 180;
  *(v4 + 163) = 0x4008000000000000;
  *(v4 + 164) = 0xD00000000000001CLL;
  *(v4 + 165) = 0x80000001DACEDCA0;
  *(v4 + 166) = 0xD00000000000002BLL;
  *(v4 + 167) = 0x80000001DACEDCC0;
  *(v4 + 168) = 0;
  v4[1176] = 0;
  v47 = objc_opt_self();
  [v47 fc_timeIntervalOneDay];
  *(v4 + 495) = v48;
  *(v4 + 496) = 0;
  [v47 fc_timeIntervalOneDay];
  *(v4 + 497) = v49 * 15.0;
  *(v4 + 148) = 0xFFFFFFFFLL;
  *(v4 + 149) = v46;
  *(v4 + 1992) = 256;
  *(v4 + 3992) = 0u;
  *(v4 + 150) = 0xFFFFFFFFLL;
  *(v4 + 151) = 0xC082C00000000000;
  *(v4 + 152) = 0x4082C00000000000;
  *(v4 + 153) = v46;
  *(v4 + 154) = v46;
  *(v4 + 155) = v46;
  v4[4008] = 1;
  *(v4 + 251) = xmmword_1DACD41A0;
  *(v4 + 504) = 1;
  *(v4 + 4040) = 0u;
  *(v4 + 156) = v46;
  *(v4 + 157) = v46;
  *(v4 + 158) = v46;
  *(v4 + 169) = 1296000;
  v50 = sub_1DAA5518C(&unk_1F567EB58);
  swift_arrayDestroy();
  *(v4 + 170) = v50;
  *(v4 + 1368) = 0u;
  v51 = v70;
  *&v4[v70[135]] = 0;
  *(v4 + 507) = 0;
  v4[4064] = 0;
  *(v4 + 509) = 0x7FEFFFFFFFFFFFFFLL;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  *(v4 + 255) = vnegq_f64(v52);
  *(v4 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  v4[4104] = 0;
  *(v4 + 514) = 0;
  *(v4 + 516) = 0;
  *(v4 + 515) = 0;
  *(v4 + 517) = 0xE000000000000000;
  *(v4 + 518) = 0;
  v4[4152] = 0;
  *(v4 + 520) = 0;
  v4[4168] = 0;
  *(v4 + 522) = 0;
  *(v4 + 524) = 0;
  *(v4 + 523) = 0;
  v4[4200] = 0;
  *(v4 + 526) = 1;
  *(v4 + 527) = 0x415DA9C000000000;
  v4[4224] = 1;
  *(v4 + 529) = 0;
  *(v4 + 531) = 0xFFFFFFFFLL;
  *(v4 + 532) = 0xFFFFFFFFLL;
  sub_1DAA468B8(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  v53 = *(sub_1DACB7DC4() - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v57 = sub_1DAA4CB70(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v4 + 533) = v57;
  *(v4 + 534) = 0;
  *(v4 + 530) = v46;
  v4[4280] = 0;
  *(v4 + 536) = 0;
  *&v4[v51[136]] = 0;
  v4[v51[137]] = 1;
  v4[v51[138]] = 0;
  v58 = &v4[v51[139]];
  *v58 = 0;
  v58[8] = 1;
  sub_1DAA468B8(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC603E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v6 = sub_1DACB8204();
  v41 = v6;
  v46 = *(v6 - 8);
  v7 = v46;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v10;
  v11 = sub_1DACB7CC4();
  v40 = v11;
  v45 = *(v11 - 8);
  v12 = v45;
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v53);
  v44 = *(v3 + 56);
  v16 = *(v12 + 16);
  v16(v15, a2, v11);
  v42 = *(v7 + 16);
  v42(v10, a3, v6);
  v17 = v54;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = type metadata accessor for SDSBaseOperationFactory();
  v51 = v24;
  v52 = &off_1F5690858;
  v50[0] = v23;
  v25 = type metadata accessor for SDSQuoteOperation();
  v26 = objc_allocWithZone(v25);
  v27 = v51;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v49[3] = v24;
  v49[4] = &off_1F5690858;
  v49[0] = v33;
  *&v26[qword_1EE122628] = v47;
  sub_1DAA4D678(v49, &v26[qword_1EE122670]);
  v34 = v40;
  v16(&v26[qword_1EE122660], v15, v40);
  *&v26[qword_1EE122658] = v44;
  v35 = v43;
  v36 = v41;
  v42(&v26[qword_1EE122668], v43, v41);
  v48.receiver = v26;
  v48.super_class = v25;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v37 = objc_msgSendSuper2(&v48, sel_init);
  (*(v46 + 8))(v35, v36);
  (*(v45 + 8))(v15, v34);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1DACB82E4();
  v38 = sub_1DACB82B4();

  return v38;
}

uint64_t sub_1DAC6094C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC6099C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v50 = a1;
  v51 = a2;
  v8 = sub_1DACB8204();
  v45 = v8;
  v49 = *(v8 - 8);
  v9 = v49;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7CC4();
  v44 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a3;
  sub_1DAA4D678(v5 + 16, v57);
  v47 = *(v14 + 16);
  v47(v17, a4, v13);
  v46 = *(v9 + 16);
  v46(v12, v43, v8);
  v18 = v58;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v25 = type metadata accessor for SDSBaseOperationFactory();
  v55 = v25;
  v56 = &off_1F5690858;
  v54[0] = v24;
  v26 = type metadata accessor for SDSChartOperation();
  v27 = objc_allocWithZone(v26);
  v28 = v55;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v53[3] = v25;
  v53[4] = &off_1F5690858;
  v53[0] = v34;
  v35 = &v27[qword_1EE11E9F8];
  v36 = v51;
  *v35 = v50;
  v35[1] = v36;
  v27[qword_1EE11EA00] = v48;
  v37 = v44;
  v47(&v27[qword_1EE11EA08], v17, v44);
  v38 = v45;
  v46(&v27[qword_1EE11EA10], v12, v45);
  sub_1DAA4D678(v53, &v27[qword_1EE11EA18]);
  v52.receiver = v27;
  v52.super_class = v26;
  sub_1DACB71E4();
  v39 = objc_msgSendSuper2(&v52, sel_init);
  (*(v49 + 8))(v12, v38);
  (*(v14 + 8))(v17, v37);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1DACB82E4();
  sub_1DACB8294();
  v40 = sub_1DACB82A4();

  return v40;
}

uint64_t sub_1DAC60E58()
{
  v1 = v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedUserID;
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v3 = v2;
  v4 = *(v2 + 28);
  v5 = sub_1DACB7D04();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedAdsUserID + *(v3 + 28), v5);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DAC60F84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  os_unfair_lock_lock(v4);
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v6 = *(v5 + 28);
  v7 = sub_1DACB7D04();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_1DACB6D04();

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1DAC61060(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return a3(v7, a2, v3, v5, v6);
}

uint64_t sub_1DAC610D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[3] = a3;
  sub_1DAC95674(sub_1DAC629F8, v6, a1);
  v3 = sub_1DACB89D4();
  v4 = sub_1DACB8934();

  return v4;
}

uint64_t sub_1DAC6115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v4;
  v18 = *(a1 + 128);
  v5 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v5;
  v6 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v6;
  v7 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v7;
  (*(a3 + 16))(v7, *(&v7 + 1), a2);
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v10;
  v11 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v11;
  v12 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v12;
  sub_1DAA806E4(v17, v16);
  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8A64();

  return v14;
}

uint64_t sub_1DAC61278(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  *(v4 + 232) = a1[5];
  v6 = a1[7];
  *(v4 + 248) = a1[6];
  *(v4 + 264) = v6;
  v7 = *a1;
  *(v4 + 168) = a1[1];
  v8 = a1[3];
  *(v4 + 184) = a1[2];
  *(v4 + 200) = v8;
  *(v4 + 216) = v5;
  *(v4 + 432) = a3;
  *(v4 + 440) = v3;
  *(v4 + 424) = a2;
  *(v4 + 280) = *(a1 + 16);
  *(v4 + 152) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1DAC612D8, 0, 0);
}

uint64_t sub_1DAC612D8()
{
  v1 = v0[55];
  v0[56] = (*(v0[54] + 8))(v0 + 19, v0[53]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC61398;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61398()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v11 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_1DAC61500;
  }

  else
  {
    v5 = *(v2 + 448);
    v6 = *(v2 + 128);
    *(v2 + 384) = *(v2 + 112);
    *(v2 + 400) = v6;
    *(v2 + 416) = *(v2 + 144);
    v7 = *(v2 + 64);
    *(v2 + 320) = *(v2 + 48);
    *(v2 + 336) = v7;
    v8 = *(v2 + 96);
    *(v2 + 352) = *(v2 + 80);
    *(v2 + 368) = v8;
    v9 = *(v2 + 32);
    *(v2 + 288) = *(v2 + 16);
    *(v2 + 304) = v9;
    sub_1DAA9B1C8(v2 + 288);

    v4 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC61500()
{
  v1 = v0[56];

  v2 = v0[1];
  v3 = v0[58];

  return v2();
}

uint64_t sub_1DAC61564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v4[6] = v3;
  v4[7] = v5;
  v4[8] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1DAC61590, 0, 0);
}

uint64_t sub_1DAC61590()
{
  v1 = v0[6];
  v0[9] = (*(v0[5] + 16))(v0[7], v0[8], v0[4]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC61650;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61650()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DAAEAC68;
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 24);

    v4 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC61778(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC6179C, 0, 0);
}

uint64_t sub_1DAC6179C()
{
  v1 = v0[5];
  v0[6] = (*(v0[4] + 48))(v0[3]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC61858;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61858()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1DABEF238;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC61974(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[4];
  *(v6 + 232) = a1[5];
  v8 = a1[7];
  *(v6 + 248) = a1[6];
  *(v6 + 264) = v8;
  v9 = *a1;
  *(v6 + 168) = a1[1];
  v10 = a1[3];
  *(v6 + 184) = a1[2];
  *(v6 + 200) = v10;
  *(v6 + 584) = v5;
  *(v6 + 576) = a5;
  *(v6 + 568) = a4;
  *(v6 + 560) = a2;
  *(v6 + 280) = *(a1 + 16);
  *(v6 + 216) = v7;
  *(v6 + 152) = v9;
  v11 = *(a3 + 112);
  *(v6 + 384) = *(a3 + 96);
  *(v6 + 400) = v11;
  *(v6 + 416) = *(a3 + 128);
  v12 = *(a3 + 48);
  *(v6 + 320) = *(a3 + 32);
  *(v6 + 336) = v12;
  v13 = *(a3 + 80);
  *(v6 + 352) = *(a3 + 64);
  *(v6 + 368) = v13;
  v14 = *(a3 + 16);
  *(v6 + 288) = *a3;
  *(v6 + 304) = v14;
  return MEMORY[0x1EEE6DFA0](sub_1DAC61A04, 0, 0);
}

uint64_t sub_1DAC61A04()
{
  v1 = v0[73];
  v0[74] = (*(v0[72] + 24))(v0 + 19, v0[70], v0 + 36, v0[71]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[75] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC61AD0;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC61AD0()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v11 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = sub_1DAC61C20;
  }

  else
  {
    v5 = *(v2 + 592);
    v6 = *(v2 + 128);
    *(v2 + 520) = *(v2 + 112);
    *(v2 + 536) = v6;
    *(v2 + 552) = *(v2 + 144);
    v7 = *(v2 + 64);
    *(v2 + 456) = *(v2 + 48);
    *(v2 + 472) = v7;
    v8 = *(v2 + 96);
    *(v2 + 488) = *(v2 + 80);
    *(v2 + 504) = v8;
    v9 = *(v2 + 32);
    *(v2 + 424) = *(v2 + 16);
    *(v2 + 440) = v9;
    sub_1DAA9B1C8(v2 + 424);

    v4 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC61C20()
{
  v1 = v0[74];

  v2 = v0[1];
  v3 = v0[76];

  return v2();
}

uint64_t WatchlistDiff.updatedName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

BOOL WatchlistDiff.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(*(v0 + 8) + 16) | *(v0 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 33) == 3;
  }

  return v2 && *(v0 + 32) > 0xFDu;
}

uint64_t WatchlistDiff.didAddStocks.getter()
{
  sub_1DAC62ADC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v0;
  v16 = *(v11 + 16);
  if (!v16)
  {
    return 0;
  }

  v12 = 0;
  v15 = v3 + 16;
  v13 = *MEMORY[0x1E69D6590];
  v14 = (v3 + 8);
  while (v12 < *(v11 + 16))
  {
    (*(v3 + 16))(v10, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
    (*(v3 + 32))(v7, v10, v2);
    if ((*(v3 + 88))(v7, v2) == v13)
    {
      (*v14)(v7, v2);
      return 1;
    }

    ++v12;
    result = (*v14)(v7, v2);
    if (v16 == v12)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WatchlistDiff.init(changes:newWatchlist:updatedName:updatedSortState:updatedDisplayState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 33) = v8;
  return result;
}

uint64_t sub_1DAC61F20()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  v39 = *v0;
  result = sub_1DACB71E4();
  v7 = 0;
  v8 = MEMORY[0x1E69E6158];
  while (v4)
  {
LABEL_11:
    v31 = __clz(__rbit64(v4)) | (v7 << 6);
    v32 = (*(v39 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(*(v39 + 56) + 8 * v31);
    sub_1DACB71E4();
    v36 = v35;
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0x696C68637461575BLL, 0xEC000000203A7473);
    MEMORY[0x1E1276F20](v33, v34);

    MEMORY[0x1E1276F20](0x6465746164705520, 0xEE00203A656D614ELL);
    v37 = [v36 updatedName];
    if (v37)
    {
      v38 = v37;
      sub_1DACB9324();
    }

    v4 &= v4 - 1;
    sub_1DAB33850();
    v9 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v9);

    MEMORY[0x1E1276F20](0x203A646564644120, 0xE800000000000000);
    v10 = [v36 addedSymbols];
    v11 = sub_1DACB9644();

    v12 = MEMORY[0x1E1277130](v11, v8);
    v14 = v13;

    MEMORY[0x1E1276F20](v12, v14);

    MEMORY[0x1E1276F20](0x6465766F6D655220, 0xEA0000000000203ALL);
    v15 = [v36 removedSymbols];
    v16 = sub_1DACB9644();

    v17 = MEMORY[0x1E1277130](v16, v8);
    v19 = v18;

    MEMORY[0x1E1276F20](v17, v19);

    MEMORY[0x1E1276F20](0x726564726F655220, 0xEC000000203A6465);
    v20 = [v36 reorderedSymbols];
    v21 = sub_1DACB9644();

    v22 = MEMORY[0x1E1277130](v21, v8);
    v24 = v23;

    MEMORY[0x1E1276F20](v22, v24);

    MEMORY[0x1E1276F20](0xD000000000000014, 0x80000001DACF0940);
    v25 = [v36 updatedSortState];
    sub_1DAC62B38();
    v26 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v26);

    MEMORY[0x1E1276F20](0xD000000000000018, 0x80000001DACF0960);
    v27 = [v36 updatedSortOrderState];
    v28 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v28);

    MEMORY[0x1E1276F20](0xD000000000000016, 0x80000001DACF0980);
    [v36 updatedDisplayState];
    v29 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v29);

    MEMORY[0x1E1276F20](663645, 0xE300000000000000);
    MEMORY[0x1E1276F20](0, 0xE000000000000000);
  }

  while (1)
  {
    v30 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v30 >= v5)
    {

      return 0x73696C6863746157;
    }

    v4 = *(v1 + 8 * v30);
    ++v7;
    if (v4)
    {
      v7 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAC62418()
{
  v1 = 0xD000000000000015;
  sub_1DAB1BC70();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v0;
  v34 = 0xD000000000000015;
  v35 = 0x80000001DACF09A0;
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v30 = *(v10 + 56);
    v31 = v11;
    v13 = (v10 + 72);
    v14 = *MEMORY[0x1E69D6590];
    v28 = *MEMORY[0x1E69D6598];
    v29 = v14;
    v27 = *MEMORY[0x1E69D6588];
    v25 = (v10 - 8);
    v15 = (v10 + 80);
    v11(v7, v12, v3);
    while (1)
    {
      v19 = (*v13)(v7, v3);
      if (v19 == v29)
      {
        break;
      }

      if (v19 == v28)
      {
        (*v15)(v7, v3);
        v16 = *v7;
        v17 = v7[1];
        strcpy(v33, "[Removed: ");
        BYTE3(v33[1]) = 0;
        HIDWORD(v33[1]) = -369098752;
        goto LABEL_4;
      }

      if (v19 == v27)
      {
        (*v15)(v7, v3);
        v20 = v10;
        v21 = *v7;
        v22 = v7[1];
        v26 = v7[2];
        v33[0] = 0;
        v33[1] = 0xE000000000000000;
        sub_1DACB9C94();

        strcpy(v33, "[Reordered: ");
        BYTE5(v33[1]) = 0;
        HIWORD(v33[1]) = -5120;
        MEMORY[0x1E1276F20](v21, v22);
        v10 = v20;

        MEMORY[0x1E1276F20](0x7865646E496F7420, 0xEA0000000000203ALL);
        v32 = v26;
        v16 = sub_1DACBA114();
        goto LABEL_5;
      }

      (*v25)(v7, v3);
LABEL_6:
      v12 += v30;
      if (!--v9)
      {
        return v34;
      }

      v31(v7, v12, v3);
    }

    (*v15)(v7, v3);
    v16 = *v7;
    v17 = v7[1];
    strcpy(v33, "[Added: ");
    BYTE1(v33[1]) = 0;
    WORD1(v33[1]) = 0;
    HIDWORD(v33[1]) = -402653184;
LABEL_4:
    v18 = v17;
LABEL_5:
    MEMORY[0x1E1276F20](v16, v18);

    MEMORY[0x1E1276F20](2653, 0xE200000000000000);
    MEMORY[0x1E1276F20](v33[0], v33[1]);

    goto LABEL_6;
  }

  return v1;
}

uint64_t sub_1DAC62790()
{
  sub_1DAAFBEA8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC627F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return a5(v9, a2, v5, v7, v8);
}

uint64_t sub_1DAC62860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v10;
    (*(v11 + 8))(v15, &v14, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DAC6292C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v10;
    (*(v11 + 16))(v15, &v14, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DAC629F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v7;
  v13 = *(a1 + 128);
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v9 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v9;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  result = (*(v5 + 8))(v12, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DAC62A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 144);
  v3 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v3;
  v4 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v4;
  v5 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v5;
  return sub_1DAA806E4(v1 + 16, v7);
}

void sub_1DAC62ADC()
{
  if (!qword_1EE11FFF0)
  {
    sub_1DAADD07C();
    v0 = sub_1DACB84A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFF0);
    }
  }
}

void sub_1DAC62B38()
{
  if (!qword_1EE11F7B0)
  {
    sub_1DAB0AAC8();
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F7B0);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAC62D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1DAC62DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC62EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_1DACB7A14();
    v18 = sub_1DACB7A74();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v13, v8);
    result = (v21)(v15, v8);
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t sub_1DAC63144@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_1DACB7A14();
    v18 = sub_1DACB7A74();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v13, v8);
    result = (v21)(v15, v8);
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t sub_1DAC63394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA5EF58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_1DACB7A14();
    v18 = sub_1DACB7A74();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v13, v8);
    result = (v21)(v15, v8);
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t sub_1DAC635E0()
{
  v0 = sub_1DACB8EC4();
  __swift_allocate_value_buffer(v0, qword_1EE11D2C8);
  v1 = __swift_project_value_buffer(v0, qword_1EE11D2C8);
  v2 = *MEMORY[0x1E69D62A0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1DAC6368C()
{
  v0 = sub_1DACB8EC4();
  __swift_allocate_value_buffer(v0, qword_1EE11D2A8);
  *__swift_project_value_buffer(v0, qword_1EE11D2A8) = 0;
  v1 = *MEMORY[0x1E69D6298];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1DAC6373C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DACB8EC4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1DAC637D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  result = sub_1DAC64258(v6, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1DAC63810()
{
  v0 = sub_1DACB7AB4();
  __swift_allocate_value_buffer(v0, qword_1ECBE9718);
  __swift_project_value_buffer(v0, qword_1ECBE9718);
  v1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v2 = sub_1DACB9644();
  if (!v2[2])
  {
    goto LABEL_7;
  }

  if (!v2[2])
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  v3 = v2[4];
  v4 = v2[5];
  sub_1DACB71E4();

  sub_1DACB79D4();
}

uint64_t sub_1DAC638EC()
{
  v0 = sub_1DACB7AB4();
  __swift_allocate_value_buffer(v0, qword_1ECBE9730);
  v1 = __swift_project_value_buffer(v0, qword_1ECBE9730);
  return sub_1DAC63938(v1);
}

uint64_t sub_1DAC63938@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1DACB79B4();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7AB4();
  v31 = *(v5 - 8);
  v6 = v31[8];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1DACB92F4();
  v17 = [v15 containerURLForSecurityApplicationGroupIdentifier_];

  if (v17)
  {
    sub_1DACB7A44();

    v18 = v31[4];
    v28 = v14;
    v18(v14, v12, v5);
    v32 = 0x7972617262694CLL;
    v33 = 0xE700000000000000;
    v19 = *MEMORY[0x1E6968F58];
    v20 = v29;
    v21 = *(v29 + 104);
    v21(v4, v19, v1);
    sub_1DAA642D8();
    sub_1DACB7AA4();
    v22 = *(v20 + 8);
    v22(v4, v1);
    v32 = 0x736568636143;
    v33 = 0xE600000000000000;
    v21(v4, v19, v1);
    sub_1DACB7AA4();
    v22(v4, v1);
    v23 = v31[1];
    ++v31;
    v23(v9, v5);
    return (v23)(v28, v5);
  }

  else
  {
    if (qword_1ECBE5BE0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_1ECBE9718);
    v26 = v30;
    v27 = v31[2];

    return v27(v26, v25, v5);
  }
}

uint64_t sub_1DAC63D20()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9718);
  sub_1DACB7A14();
  v5 = sub_1DACB7A74();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EE120168 = v5;
  unk_1EE120170 = v7;
  return result;
}

uint64_t sub_1DAC63EA8()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9730);
  sub_1DACB7A14();
  v5 = sub_1DACB7A74();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EE120180 = v5;
  *algn_1EE120188 = v7;
  return result;
}

uint64_t sub_1DAC64030()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBE5BE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1ECBE9730);
  sub_1DACB7A14();
  v5 = sub_1DACB7A74();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EE120198 = v5;
  unk_1EE1201A0 = v7;
  return result;
}

uint64_t sub_1DAC6419C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;
  sub_1DACB71E4();
  return v3;
}

uint64_t sub_1DAC64258(uint64_t *a1, void (*a2)(void, void, void))
{
  v66 = a2;
  v3 = sub_1DACB8E64();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v61[13] = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = v61 - v8;
  v9 = sub_1DACB8EC4();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61[12] = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = v61 - v13;
  v68 = sub_1DACB8E74();
  v14 = *(v68 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v68);
  v61[11] = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = v61 - v18;
  v67 = sub_1DACB8E84();
  v19 = *(v67 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v67);
  v61[9] = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = v61 - v23;
  v24 = sub_1DACB8DF4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v61[8] = v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v61 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v61 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v61 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = sub_1DACB8EA4();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v61[6] = v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (v61 - v42);
  v44 = *a1;
  v45 = a1[1];
  *v43 = v44;
  v43[1] = v45;
  v46 = *MEMORY[0x1E69D6280];
  v48 = *(v47 + 104);
  v61[5] = v49;
  v61[4] = v47 + 104;
  v61[3] = v48;
  v48(v61 - v42, v46);
  sub_1DACB71E4();
  sub_1DACB8DD4();
  sub_1DACB8DE4();
  sub_1DAA5E2DC(&unk_1EE125568);
  sub_1DACB9594();
  sub_1DAA5E2DC(&qword_1EE125558);
  sub_1DACBA354();
  (*(v25 + 16))(v31, v34, v24);
  v61[2] = sub_1DAA5E2DC(&qword_1EE125560);
  sub_1DACB9B94();
  v50 = *(v25 + 8);
  v50(v34, v24);
  v50(v37, v24);
  v51 = *MEMORY[0x1E69D6270];
  v52 = *(v19 + 104);
  v61[7] = v19 + 104;
  v61[1] = v52;
  v52(v62, v51, v67);
  v53 = *MEMORY[0x1E69D6268];
  v54 = *(v14 + 104);
  v61[10] = v14 + 104;
  v61[0] = v54;
  v54(v63, v53, v68);
  (*(v69 + 16))(v64, v66, v70);
  v55 = *(v72 + 104);
  v56 = *MEMORY[0x1E69D6258];
  v72 += 104;
  v66 = v55;
  v55(v65, v56, v71);
  v57 = sub_1DACB8ED4();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  LOBYTE(v73) = 1;
  return sub_1DACB8EB4();
}

uint64_t sub_1DAC64AD8()
{
  result = sub_1DACB92F4();
  qword_1EE11D090 = result;
  return result;
}

id sub_1DAC64B10()
{
  if (qword_1EE11D088 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE11D090;

  return v1;
}

uint64_t sub_1DAC64B74(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v13 = sub_1DACB7CC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  sub_1DACB7CB4();
  v18 = (*(a7 + 8))(a1, a2, &v21, a4, v17, a5, v20, a7);
  (*(v14 + 8))(v17, v13);
  return v18;
}

uint64_t sub_1DAC64D14(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v34 = a1;
  v38 = sub_1DACB81D4();
  v35 = *(v38 - 8);
  v36 = v35;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB86E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8174();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  *(v2 + 64) = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE120030, 255, MEMORY[0x1E69D6388]);
  v10 = MEMORY[0x1E69D6388];
  v31 = MEMORY[0x1E69E62F8];
  sub_1DAC67CAC(0, &qword_1EE11FA88, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1DAC68064(&qword_1EE11FA80, &qword_1EE11FA88, v10);
  sub_1DACB9BB4();
  v11 = sub_1DACB8194();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DACB8184();
  v15 = v32;
  *(v32 + 72) = v14;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
  v16 = MEMORY[0x1E69D67A0];
  v17 = v31;
  sub_1DAC67CAC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], v31);
  sub_1DAC68064(&qword_1EE125508, &qword_1EE125510, v16);
  sub_1DACB9BB4();
  sub_1DAA5FDC0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v15 + 80) = sub_1DACB8354();
  v21 = v34;
  sub_1DAA4D678(v34, v15 + 16);
  v22 = MEMORY[0x1E69D6420];
  sub_1DAC67CAC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v23 = *(v35 + 72);
  v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v40 = v25;
  sub_1DAA5ED78(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAC67CAC(0, &qword_1EE125540, v22, v17);
  sub_1DAC68064(&qword_1EE125530, &qword_1EE125540, v22);
  sub_1DACB9BB4();
  sub_1DAC67CAC(0, &qword_1EE11D478, sub_1DAC67D18, MEMORY[0x1E69D6A80]);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v15 + 56) = v29;
  return v15;
}

uint64_t sub_1DAC651F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAC67D84();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();
  v6 = sub_1DACB8D74();
  a1[3] = v3;
  result = sub_1DAA5ED78(&qword_1ECBE9758, 255, sub_1DAC67D84);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1DAC652CC(uint64_t a1)
{
  v34 = a1;
  v38 = sub_1DACB81D4();
  v35 = *(v38 - 8);
  v36 = v35;
  v2 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB86E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33[1] = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB8174();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE120030, 255, MEMORY[0x1E69D6388]);
  v9 = MEMORY[0x1E69D6388];
  v10 = MEMORY[0x1E69E62F8];
  sub_1DAC67CAC(0, &qword_1EE11FA88, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1DAC68064(&qword_1EE11FA80, &qword_1EE11FA88, v9);
  sub_1DACB9BB4();
  v11 = sub_1DACB8194();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DACB8184();
  v15 = v33[0];
  *(v33[0] + 72) = v14;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
  v16 = MEMORY[0x1E69D67A0];
  v17 = v10;
  sub_1DAC67CAC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], v10);
  sub_1DAC68064(&qword_1EE125508, &qword_1EE125510, v16);
  sub_1DACB9BB4();
  sub_1DAA5FDC0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v15;
  *(v15 + 80) = sub_1DACB8354();
  v22 = v15 + 16;
  v23 = v34;
  sub_1DAA4D678(v34, v22);
  v24 = MEMORY[0x1E69D6420];
  sub_1DAC67CAC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v25 = *(v35 + 72);
  v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v39 = v27;
  sub_1DAA5ED78(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAC67CAC(0, &qword_1EE125540, v24, v17);
  sub_1DAC68064(&qword_1EE125530, &qword_1EE125540, v24);
  sub_1DACB9BB4();
  sub_1DAC67CAC(0, &qword_1EE11D478, sub_1DAC67D18, MEMORY[0x1E69D6A80]);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v23);
  *(v21 + 56) = v31;
  return v21;
}

unint64_t sub_1DAC657A8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAA5FD50(0, &qword_1EE11D468, MEMORY[0x1E69D6AA8]);
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();
  v6 = sub_1DACB8964();
  a1[3] = v3;
  result = sub_1DAC67ED0();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1DAC65820()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC6589C(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v92 = a6;
  v85[0] = a4;
  v108 = a1;
  v109 = a2;
  v105 = v7;
  v106 = *v7;
  v10 = sub_1DACB8344();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1DACB8204();
  v91 = *(v93 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = v14;
  v89 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB81B4();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v101 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DACB7CC4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v100 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v85 - v23;
  v25 = sub_1DACB7D04();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a3;
  sub_1DACB6D04();
  v107 = sub_1DACB7CE4();
  v31 = v30;
  (*(v26 + 8))(v29, v25);
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v32 = sub_1DACB8C94();
  __swift_project_value_buffer(v32, qword_1EE13E2B8);
  v33 = *(v19 + 16);
  v87 = v19 + 16;
  v86 = v33;
  v33(v24, a5, v18);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v34 = sub_1DACB8C74();
  v35 = sub_1DACB9914();

  v36 = os_log_type_enabled(v34, v35);
  v102 = v31;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v98 = a5;
    v38 = v37;
    v39 = swift_slowAlloc();
    v111 = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_1DAA7ABE4(v108, v109, &v111);
    *(v38 + 12) = 2080;
    v40 = sub_1DACB7C94();
    v42 = v41;
    (*(v19 + 8))(v24, v18);
    v43 = sub_1DAA7ABE4(v40, v42, &v111);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_1DAA7ABE4(v107, v31, &v111);
    _os_log_impl(&dword_1DAA3F000, v34, v35, "Preparing stock chart request for symbol: %s, earliestBeginDate: %s, requestID: %s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v39, -1, -1);
    v44 = v38;
    a5 = v98;
    MEMORY[0x1E1278C00](v44, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v24, v18);
  }

  v45 = v103;
  v46 = v101;
  v47 = v18;
  v48 = v19;
  v111 = 0;
  v112 = 0xE000000000000000;
  MEMORY[0x1E1276F20](v108, v109);
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  v110 = v99;
  sub_1DACB9DD4();
  v49 = v111;
  v50 = v112;
  sub_1DAAF9E14();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1DACC1D20;
  v98 = v49;
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  v85[1] = v51;
  v52 = qword_1EE11D698;
  v97 = v50;
  sub_1DACB71E4();
  v54 = v104;
  if (v52 != -1)
  {
    swift_once();
  }

  sub_1DAA5ED78(&qword_1EE11F068, v53, type metadata accessor for ChartManager);
  sub_1DACB7F84();
  if (v111 == 1)
  {
    (*(v45 + 104))(v46, *MEMORY[0x1E69D63D0], v54);
  }

  else
  {
    (*(v45 + 16))(v46, v85[0], v54);
  }

  sub_1DAA5FD50(0, &qword_1EE11FEC0, MEMORY[0x1E69D6B00]);
  v85[0] = v55;
  v86(v100, a5, v18);
  v56 = v91;
  v57 = v89;
  v58 = v93;
  (*(v91 + 16))(v89, v92, v93);
  v59 = (*(v48 + 80) + 57) & ~*(v48 + 80);
  v60 = (v88 + *(v56 + 80) + v59) & ~*(v56 + 80);
  v61 = v47;
  v62 = (v90 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v107;
  *(v63 + 24) = v64;
  v65 = v105;
  v67 = v108;
  v66 = v109;
  *(v63 + 32) = v105;
  *(v63 + 40) = v67;
  *(v63 + 48) = v66;
  *(v63 + 56) = v99;
  (*(v48 + 32))(v63 + v59, v100, v61);
  (*(v56 + 32))(v63 + v60, v57, v58);
  v68 = (v63 + v62);
  v69 = v97;
  *v68 = v98;
  v68[1] = v69;
  v100 = v65[10];
  v111 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED78(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528]);
  v70 = MEMORY[0x1E69D6528];
  sub_1DAC67CAC(0, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
  v71 = v109;
  sub_1DAC68064(&qword_1EE125518, &unk_1EE125520, v70);
  swift_retain_n();
  v72 = v102;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v73 = v94;
  v74 = v96;
  sub_1DACB9BB4();
  v75 = v72;
  v76 = v107;
  v77 = v101;
  sub_1DACB89F4();

  (*(v95 + 8))(v73, v74);
  (*(v103 + 8))(v77, v104);
  v78 = swift_allocObject();
  v78[2] = v76;
  v78[3] = v75;
  v79 = v97;
  v78[4] = v98;
  v78[5] = v79;
  v78[6] = v108;
  v78[7] = v71;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v80 = sub_1DACB89D4();
  type metadata accessor for Chart(0);
  sub_1DACB8A74();

  v81 = swift_allocObject();
  *(v81 + 16) = v76;
  *(v81 + 24) = v75;
  v82 = sub_1DACB89D4();
  v83 = sub_1DACB8AA4();

  return v83;
}

uint64_t sub_1DAC6638C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v17 = a10;
  v16 = a11;
  v18 = sub_1DACB8C94();
  __swift_project_value_buffer(v18, qword_1EE13E2B8);
  sub_1DACB71E4();
  v19 = sub_1DACB8C74();
  v20 = sub_1DACB9914();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a6;
    v23 = a8;
    v24 = swift_slowAlloc();
    v36 = v24;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DAA7ABE4(a2, a3, &v36);
    _os_log_impl(&dword_1DAA3F000, v19, v20, "Performing chart fetch with requestID: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    a8 = v23;
    a6 = v22;
    v17 = a10;
    v16 = a11;
    MEMORY[0x1E1278C00](v25, -1, -1);
    MEMORY[0x1E1278C00](v21, -1, -1);
  }

  v26 = a4[5];
  v27 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v26);
  v37 = a7;
  (*(v27 + 8))(a5, a6, &v37, a8, a9, v26, v27);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = v17;
  v28[5] = v16;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v29 = sub_1DACB89D4();
  sub_1DAA5FD50(0, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  sub_1DACB71E4();
  v31 = sub_1DACB89D4();
  v32 = sub_1DACB8AA4();

  return v32;
}

uint64_t sub_1DAC66670(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v10 = sub_1DACB8C94();
  __swift_project_value_buffer(v10, qword_1EE13E2B8);
  sub_1DACB71E4();
  v11 = sub_1DACB8C74();
  v12 = sub_1DACB9914();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DAA7ABE4(a2, a3, &v27);
    _os_log_impl(&dword_1DAA3F000, v11, v12, "Chart fetch with ID: %s returned success", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E1278C00](v14, -1, -1);
    MEMORY[0x1E1278C00](v13, -1, -1);
  }

  sub_1DAC67CAC(0, &qword_1EE11CEB8, sub_1DAA85EA0, MEMORY[0x1E69E6F90]);
  sub_1DAA85EA0();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 72);
  v18 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DACC1D20;
  v20 = (v19 + v18);
  v21 = *(v16 + 56);
  *v20 = a4;
  v20[1] = a5;
  sub_1DAAE642C(a1, v20 + v21);
  sub_1DACB71E4();
  v22 = sub_1DAB681FC(v19);
  swift_setDeallocating();
  sub_1DAA864F0(v20, sub_1DAA85EA0);
  swift_deallocClassInstance();
  v27 = v22;
  sub_1DABCFE94();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC6692C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE13E2B8);
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DAA7ABE4(v9, v10, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Reading charts from cache for symbols: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = *(v2 + 56);
  sub_1DACB88F4();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1DACB85B4();
  v13 = sub_1DACB89D4();
  sub_1DAA5FD50(0, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
  v14 = sub_1DACB8A64();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_1DAC66B44()
{
  v1 = v0;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE13E2B8);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    type metadata accessor for Chart(0);
    v7 = sub_1DACB9164();
    v9 = sub_1DAA7ABE4(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Writing charts to cache: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v10 = *(v1 + 56);
  sub_1DACB88F4();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v11 = sub_1DACB85A4();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_1DAC66D00(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v48 = a5;
  v49 = a6;
  v45 = a2;
  v12 = type metadata accessor for Chart(0);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v43 - v17;
  v19 = *a1;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v20 = sub_1DACB8C94();
  __swift_project_value_buffer(v20, qword_1EE13E2B8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v21 = sub_1DACB8C74();
  v22 = sub_1DACB9914();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43[0] = v16;
    v24 = v23;
    v25 = swift_slowAlloc();
    v43[1] = v8;
    v26 = v25;
    v50 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1DAA7ABE4(a3, a4, &v50);
    *(v24 + 12) = 2080;
    v27 = sub_1DACB9134();
    v29 = sub_1DAA7ABE4(v27, v28, &v50);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1DAA3F000, v21, v22, "Chart request with ID: %s completed with results: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v26, -1, -1);
    v30 = v24;
    v16 = v43[0];
    MEMORY[0x1E1278C00](v30, -1, -1);
  }

  if (!*(v19 + 16))
  {
    goto LABEL_10;
  }

  v31 = sub_1DAA4BF3C(v48, v49);
  if (v32)
  {
    sub_1DAAE642C(*(v19 + 56) + *(v44 + 72) * v31, v18);
    sub_1DAC670E8(v46, v47, v18);
    sub_1DAAE642C(v18, v16);
    sub_1DAC67CAC(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_1DACB8AE4();
    sub_1DAA864F0(v18, type metadata accessor for Chart);
    return v36;
  }

  if (*(v19 + 16))
  {
    sub_1DAC68110();
    swift_allocError();
    *v38 = 0;
  }

  else
  {
LABEL_10:
    sub_1DAC68110();
    swift_allocError();
    *v39 = 1;
  }

  sub_1DAC67CAC(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  return sub_1DACB8AD4();
}

uint64_t sub_1DAC670E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 72);
  sub_1DACB8144();
  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16) && (v9 = sub_1DAA4BF3C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    sub_1DACB71E4();
  }

  else
  {
    swift_endAccess();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
LABEL_20:
    v12 = sub_1DACB9E14();
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_7:
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v13, v11);
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v17 = v25;
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v14 = *(v11 + 8 * v13 + 32);
          sub_1DACB71F4();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_17;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          v16 = *(v25 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v13;
        if (v15 == v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_22:

  result = sub_1DACB8154();
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      goto LABEL_25;
    }
  }

  result = sub_1DACB9E14();
  v19 = result;
  if (!result)
  {
  }

LABEL_25:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1E12777A0](i, v17);
      }

      else
      {
        v21 = *(v17 + 8 * i + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 24);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(v4, &off_1F5690D78, a3, ObjectType, v22);
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1DAC67388(void *a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v8 = sub_1DACB8C94();
  __swift_project_value_buffer(v8, qword_1EE13E2B8);
  sub_1DACB71E4();
  v9 = a1;
  oslog = sub_1DACB8C74();
  v10 = sub_1DACB9904();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DAA7ABE4(a2, a3, &v17);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DACBA224();
    v15 = sub_1DAA7ABE4(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAA3F000, oslog, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DAC67570(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = *(v4 + 72);
  sub_1DACB8144();
  swift_beginAccess();
  v9 = *(v4 + 64);
  if (*(v9 + 16) && (v10 = sub_1DAA4BF3C(a3, a4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_endAccess();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
LABEL_20:
    v13 = sub_1DACB9E14();
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_7:
      v24 = a3;
      v25 = a4;
      v14 = 0;
      a4 = v12 & 0xC000000000000001;
      while (1)
      {
        if (a4)
        {
          MEMORY[0x1E12777A0](v14, v12);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v17 = v28;
            a4 = v25;
            a3 = v24;
            goto LABEL_22;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v14 + 32);
          sub_1DACB71F4();
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_17;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          a3 = *(v28 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_bridgeObjectRelease_n();
  v29 = v17;
  type metadata accessor for ChartManagerObserverProxy();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 24) = a2;
  v19 = swift_unknownObjectWeakAssign();
  MEMORY[0x1E12770F0](v19);
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_beginAccess();
  sub_1DACB71E4();
  v20 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_1DACA60C8(v29, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v27;
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAC6784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 72);
  sub_1DACB8144();
  swift_beginAccess();
  v10 = *(v4 + 64);
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a3, a4), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    sub_1DACB71E4();
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v27 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
LABEL_21:
    v14 = sub_1DACB9E14();
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_7:
      v23 = a3;
      v24 = a4;
      v25 = v5;
      v15 = 0;
      a4 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v15, v13);
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v19 = v27;
            v5 = v25;
            a3 = v23;
            a4 = v24;
            goto LABEL_23;
          }
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v16 = *(v13 + 8 * v15 + 32);
          sub_1DACB71F4();
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_18;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v18 = Strong, swift_unknownObjectRelease(), v18 == a1))
        {
        }

        else
        {
          sub_1DACB9D34();
          a3 = *(v27 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        ++v15;
        if (v5 == v14)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_23:

  swift_beginAccess();
  sub_1DACB71E4();
  v20 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_1DACA60C8(v19, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v26;
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAC67A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE11FD88 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE13E2B8);
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for Chart(0);
    v9 = sub_1DACB9164();
    v11 = sub_1DAA7ABE4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Found charts in cache for symbols: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  *a2 = v3;
  return sub_1DACB71E4();
}

uint64_t sub_1DAC67C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1DAC681A8(a1, a3, v3, ObjectType, a2);
}

void sub_1DAC67CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAC67D18()
{
  result = qword_1EE11D498;
  if (!qword_1EE11D498)
  {
    type metadata accessor for Chart(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11D498);
  }

  return result;
}

void sub_1DAC67D84()
{
  if (!qword_1ECBE9748)
  {
    type metadata accessor for Chart(255);
    sub_1DAC67E7C();
    sub_1DAA5ED78(&qword_1EE1203B0, 255, type metadata accessor for Chart);
    sub_1DAA5ED78(&qword_1EE1203B8, 255, type metadata accessor for Chart);
    v0 = sub_1DACB8D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9748);
    }
  }
}

unint64_t sub_1DAC67E7C()
{
  result = qword_1ECBE9750;
  if (!qword_1ECBE9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9750);
  }

  return result;
}

unint64_t sub_1DAC67ED0()
{
  result = qword_1EE11D470;
  if (!qword_1EE11D470)
  {
    sub_1DAA5FD50(255, &qword_1EE11D468, MEMORY[0x1E69D6AA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D470);
  }

  return result;
}

uint64_t sub_1DAC67F44(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DAC6638C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8));
}

uint64_t sub_1DAC68064(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC67CAC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC68110()
{
  result = qword_1EE11F070;
  if (!qword_1EE11F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F070);
  }

  return result;
}

uint64_t sub_1DAC681A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a1, a5, a2, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1DAC68270()
{
  result = qword_1ECBE9760;
  if (!qword_1ECBE9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9760);
  }

  return result;
}

unint64_t sub_1DAC682D4()
{
  v1 = *v0;
  v2 = 0x73696C6863746177;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F74732D706F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DAC68388()
{
  result = qword_1ECBE9768;
  if (!qword_1ECBE9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9768);
  }

  return result;
}

uint64_t sub_1DAC683DC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v11 = sub_1DACB8204();
  (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  sub_1DAA4D460(a3, v9 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  return v9;
}

uint64_t sub_1DAC68480(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v7 = sub_1DACB8204();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  sub_1DAA4D460(a3, v3 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  return v3;
}

uint64_t sub_1DAC6850C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1DAC6B1F0(0, &qword_1EE11FEB0, MEMORY[0x1E6967EC8], MEMORY[0x1E69D6B18]);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB8A44();
  v6 = sub_1DACB89D4();
  sub_1DACB8A74();

  v7 = sub_1DACB89D4();
  sub_1DAC05A04();
  v8 = sub_1DACB8A64();

  return v8;
}

uint64_t sub_1DAC68684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1DACB7AB4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAC68754, 0, 0);
}

uint64_t sub_1DAC68754()
{
  v35 = v0;
  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE11FDB0);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E1277130](v6, v5);
    v11 = sub_1DAA7ABE4(v9, v10, &v34);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "SDSAuthTokenService will fetch auth tokens for URLs: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[4];
  v17 = *(v0[5] + 16);
  sub_1DACB8BD4();
  sub_1DACB7A24();
  v18 = *(v15 + 8);
  v0[10] = v18;
  v0[11] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  sub_1DAC6A9C4(v16);
  v19 = v0[4];
  v20 = sub_1DACB75A4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1DACB7594();
  v0[2] = v19;
  sub_1DAC6B6F0();
  v23 = sub_1DACB7584();
  v0[12] = v23;
  v0[13] = v24;
  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[3];
  v30 = v23;
  v31 = v24;

  (*(v28 + 16))(v26, v25, v27);
  sub_1DACB7484();
  sub_1DACB7464();
  sub_1DAB0B080(v30, v31);
  sub_1DACB74B4();
  sub_1DACB74A4();
  v32 = swift_task_alloc();
  v0[14] = v32;
  *v32 = v0;
  v32[1] = sub_1DAC68C14;

  return sub_1DAC6AB18(v30, v31);
}

uint64_t sub_1DAC68C14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_1DAC68E34;
  }

  else
  {
    v6 = sub_1DAC68D2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAC68D2C()
{
  if (v0[16])
  {
    v1 = v0[15];
    v3 = v0[12];
    v2 = v0[13];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[16];
    sub_1DACB74A4();

    sub_1DAA563C0(v3, v2);
    v5(v6, v7);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    (v0[10])(v0[9], v0[6]);
    sub_1DAA563C0(v10, v11);
  }

  v14 = v0[8];
  v13 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DAC68E34()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[3];
  sub_1DAA563C0(v0[12], v0[13]);
  v6 = sub_1DACB74D4();
  (*(*(v6 - 8) + 8))(v5, v6);
  v2(v3, v4);
  v7 = v0[17];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAC68F0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DAC68684(a1, v5, v4);
}

uint64_t sub_1DAC68FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB8204();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB74D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6B508();
  (*(v10 + 16))(v13, a1, v9);
  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy, v4);
  v14 = sub_1DACB8504();
  sub_1DACB71F4();
  sub_1DACB84C4();
  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1DACB8C94();
  __swift_project_value_buffer(v15, qword_1EE11FDB0);
  v16 = v14;
  v17 = sub_1DACB8C74();
  v18 = sub_1DACB9914();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    v21 = sub_1DACB8314();
    v23 = sub_1DAA7ABE4(v21, v22, &v27);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DAA3F000, v17, v18, "SDSAuthTokenService will enqueue network operation: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E1278C00](v20, -1, -1);
    MEMORY[0x1E1278C00](v19, -1, -1);
  }

  sub_1DACB82E4();
  v24 = sub_1DACB82B4();

  return v24;
}

uint64_t sub_1DAC692BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
  v9 = *(a2 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor + 24);
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = sub_1DACB8754();
  (*(*(v11 - 8) + 16))(v7, a1, v11);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 16))(v7, v9, v10);
  return sub_1DAC6B690(v7, type metadata accessor for NetworkEvent);
}

uint64_t sub_1DAC693E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  sub_1DAC6B1F0(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v72 - v7;
  v97 = sub_1DACB7CC4();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v97);
  v76 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v72 - v14;
  v88 = type metadata accessor for SDSAuthToken();
  v86 = *(v88 - 8);
  v15 = *(v86 + 64);
  v16 = MEMORY[0x1EEE9AC00](v88);
  v96 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v72 - v18;
  v100 = sub_1DACB7AB4();
  v19 = *(v100 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v100);
  v98 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v72 - v23;
  v24 = type metadata accessor for SDSSignResponse.Item(0);
  v25 = *(*(v24 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v85 = *(*a1 + 16);
  if (!v85)
  {
    v32 = MEMORY[0x1E69E7CC8];
LABEL_23:
    *v72 = v32;
    return result;
  }

  v31 = 0;
  v84 = &v29[*(result + 20)];
  v83 = v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v93 = (v19 + 16);
  v82 = (v8 + 56);
  v90 = (v8 + 32);
  v75 = (v8 + 8);
  v74 = (v8 + 48);
  v81 = (v19 + 32);
  v73 = v19;
  v79 = (v19 + 8);
  v32 = MEMORY[0x1E69E7CC8];
  v78 = v28;
  v80 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v30;
  while (v31 < *(v30 + 16))
  {
    sub_1DAC6B440(v83 + *(v28 + 72) * v31, v29);
    v33 = *v93;
    v34 = v100;
    (*v93)(v102, v29, v100);
    sub_1DACB7CB4();
    v92 = v33;
    v35 = (v33)(v98, v29, v34);
    v36 = *v84;
    v37 = v84[1];
    v101[0] = 95;
    v101[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v35);
    *(&v72 - 2) = v101;
    swift_bridgeObjectRetain_n();
    v94 = v36;
    v39 = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88710, (&v72 - 4), v36, v37, v38);
    v95 = v3;
    if (v39[2])
    {
      v40 = v39[4];
      v41 = v39[5];
      v43 = v39[6];
      v42 = v39[7];
      sub_1DACB71E4();

      sub_1DACB97E4();
      if ((v44 & 1) == 0)
      {
        v45 = v91;
        sub_1DACB7C44();
        v46 = v97;
        (*v82)(v45, 0, 1, v97);
        v47 = v89;
        (*v90)(v89, v45, v46);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v48 = v91;
    v49 = v97;
    (*v82)(v91, 1, 1, v97);
    v50 = v76;
    sub_1DACB7CB4();
    v47 = v89;
    sub_1DACB7BF4();
    (*v75)(v50, v49);
    if ((*v74)(v48, 1, v49) != 1)
    {
      sub_1DAA89EAC(v91, &qword_1EE125280, MEMORY[0x1E6969530]);
    }

LABEL_12:
    v51 = *v90;
    v52 = v87;
    v53 = v97;
    (*v90)(v87, v99, v97);
    v54 = v88;
    (*v81)(v52 + *(v88 + 20), v98, v100);
    v55 = (v52 + *(v54 + 24));
    *v55 = v94;
    v55[1] = v37;
    v51((v52 + *(v54 + 28)), v47, v53);
    sub_1DAC21DBC(v52, v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v32;
    v57 = sub_1DAB0979C(v102);
    v59 = v32[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    v3 = v95;
    if (v61)
    {
      goto LABEL_25;
    }

    v63 = v58;
    if (v32[3] < v62)
    {
      sub_1DAB6382C(v62, isUniquelyReferenced_nonNull_native);
      v57 = sub_1DAB0979C(v102);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      v32 = v101[0];
      if (v63)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v71 = v57;
    sub_1DAB67770();
    v57 = v71;
    v32 = v101[0];
    if (v63)
    {
LABEL_3:
      sub_1DAC6B4A4(v96, v32[7] + *(v86 + 72) * v57);
      (*v79)(v102, v100);
      v29 = v80;
      result = sub_1DAC6B690(v80, type metadata accessor for SDSSignResponse.Item);
      goto LABEL_4;
    }

LABEL_18:
    v32[(v57 >> 6) + 8] |= 1 << v57;
    v65 = v73;
    v66 = v57;
    v67 = v102;
    v68 = v100;
    v92(v32[6] + *(v73 + 72) * v57, v102, v100);
    sub_1DAC21DBC(v96, v32[7] + *(v86 + 72) * v66);
    (*(v65 + 8))(v67, v68);
    v29 = v80;
    result = sub_1DAC6B690(v80, type metadata accessor for SDSSignResponse.Item);
    v69 = v32[2];
    v61 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v61)
    {
      goto LABEL_26;
    }

    v32[2] = v70;
LABEL_4:
    ++v31;
    v28 = v78;
    v30 = v77;
    if (v85 == v31)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC69CC4()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v3 = sub_1DACB8204();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor));
  return v0;
}

uint64_t sub_1DAC69D3C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy;
  v3 = sub_1DACB8204();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC69DF0(uint64_t a1)
{
  v3 = *v1;
  sub_1DAC6B1F0(0, &qword_1EE11FEB0, MEMORY[0x1E6967EC8], MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB8A44();
  v5 = sub_1DACB89D4();
  sub_1DACB8A74();

  v6 = sub_1DACB89D4();
  sub_1DAC05A04();
  v7 = sub_1DACB8A64();

  return v7;
}

uint64_t sub_1DAC69FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1DABDBA24();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1DACB9324();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1DAC6A070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1DACB7AB4();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6BA28(0, &qword_1EE11F638, sub_1DAC6B9D4, &type metadata for SDSSignResponse.Item.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SDSSignResponse.Item(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6B9D4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v34 = 0;
  sub_1DAC6B34C(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
  v18 = v30;
  sub_1DACB9FE4();
  v19 = v26;
  (*(v17 + 32))(v26, v31, v18);
  v33 = 1;
  v20 = sub_1DACB9FA4();
  v22 = v21;
  (*(v16 + 8))(v10, v32);
  v23 = (v19 + *(v11 + 20));
  *v23 = v20;
  v23[1] = v22;
  sub_1DAC6B440(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAC6B690(v19, type metadata accessor for SDSSignResponse.Item);
}

uint64_t sub_1DAC6A3E8(void *a1, uint64_t a2)
{
  sub_1DAC6BA28(0, &qword_1EE11F568, sub_1DAC6BA90, &type metadata for SDSSignRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6BA90();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAC6B1F0(0, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1DAC6BAE4();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAC6A598()
{
  if (*v0)
  {
    result = 0x654B737365636361;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC6A5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAC6A6B4(uint64_t a1)
{
  v2 = sub_1DAC6B9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A6F0(uint64_t a1)
{
  v2 = sub_1DAC6B9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC6A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DACF0BE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DACBA174();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DAC6A7F4(uint64_t a1)
{
  v2 = sub_1DAC6B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A830(uint64_t a1)
{
  v2 = sub_1DAC6B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC6A86C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC6AFA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC6A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936487029 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC6A930(uint64_t a1)
{
  v2 = sub_1DAC6BA90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC6A96C(uint64_t a1)
{
  v2 = sub_1DAC6BA90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC6A9C4(uint64_t a1)
{
  v2 = sub_1DACB7A54();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
  }

  v7 = *(sub_1DACB7AB4() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = sub_1DACB7A54();
    v12 = v11 ? v10 : 0;
    v13 = v11 ? v11 : 0xE000000000000000;
    v14 = v12 == v4 && v13 == v5;
    if (!v14 && (sub_1DACBA174() & 1) == 0)
    {
      break;
    }

    v8 += v9;
    if (!--v6)
    {
    }
  }

  sub_1DAC6B7AC();
  swift_allocError();
  *v15 = v4;
  v15[1] = v5;
  v15[2] = v12;
  v15[3] = v13;
  return swift_willThrow();
}

uint64_t sub_1DAC6AB18(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC6AB38, 0, 0);
}

uint64_t sub_1DAC6AB38()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = objc_opt_self();
  v4 = sub_1DACB7B44();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DAC6AC78;
  v5 = swift_continuation_init();
  sub_1DAC6B744();
  v0[17] = v6;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DAC69FA8;
  v0[13] = &block_descriptor_37;
  v0[14] = v5;
  [v3 signatureFromData:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DAC6AC78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1DAC6ADF8;
  }

  else
  {
    v3 = sub_1DAC6AD88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC6AD88()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1DAC6ADF8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_1EE11FDA8 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE11FDB0);
  v5 = v3;
  v6 = sub_1DACB8C74();
  v7 = sub_1DACB9904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "SDSAuthTokenService failed to generate mescal signature with error: %@", v9, 0xCu);
    sub_1DAA89EAC(v10, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v13 = v0[23];

  swift_willThrow();
  v14 = v0[1];
  v15 = v0[23];

  return v14();
}

void *sub_1DAC6AFA8(uint64_t *a1)
{
  sub_1DAC6BA28(0, &qword_1EE11F640, sub_1DAC6B19C, &type metadata for SDSSignResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC6B19C();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC6B1F0(0, &qword_1EE11FB58, type metadata accessor for SDSSignResponse.Item, MEMORY[0x1E69E62F8]);
    sub_1DAC6B274();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAC6B19C()
{
  result = qword_1EE122F48[0];
  if (!qword_1EE122F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE122F48);
  }

  return result;
}

void sub_1DAC6B1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAC6B274()
{
  result = qword_1EE11FB50;
  if (!qword_1EE11FB50)
  {
    sub_1DAC6B1F0(255, &qword_1EE11FB58, type metadata accessor for SDSSignResponse.Item, MEMORY[0x1E69E62F8]);
    sub_1DAC6B34C(&qword_1EE122F18, type metadata accessor for SDSSignResponse.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FB50);
  }

  return result;
}

uint64_t sub_1DAC6B34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAC6B394(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return sub_1DAC68684(a1, v5, v4);
}

uint64_t sub_1DAC6B440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSSignResponse.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC6B4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DAC6B508()
{
  if (!qword_1EE11FFA8)
  {
    sub_1DAC6BA28(255, &qword_1EE11FFC8, sub_1DAC6B5A4, &type metadata for SDSSignResponse, MEMORY[0x1E69D65B0]);
    sub_1DAC6B5F8();
    v0 = sub_1DACB8514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFA8);
    }
  }
}

unint64_t sub_1DAC6B5A4()
{
  result = qword_1EE122E80[0];
  if (!qword_1EE122E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE122E80);
  }

  return result;
}

unint64_t sub_1DAC6B5F8()
{
  result = qword_1EE11FFD0;
  if (!qword_1EE11FFD0)
  {
    sub_1DAC6BA28(255, &qword_1EE11FFC8, sub_1DAC6B5A4, &type metadata for SDSSignResponse, MEMORY[0x1E69D65B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FFD0);
  }

  return result;
}

uint64_t sub_1DAC6B690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC6B6F0()
{
  result = qword_1EE123238;
  if (!qword_1EE123238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123238);
  }

  return result;
}

void sub_1DAC6B744()
{
  if (!qword_1EE11D118)
  {
    sub_1DABDBA24();
    v0 = sub_1DACB97C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D118);
    }
  }
}

unint64_t sub_1DAC6B7AC()
{
  result = qword_1ECBE9770;
  if (!qword_1ECBE9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9770);
  }

  return result;
}

uint64_t sub_1DAC6B858()
{
  result = sub_1DACB7AB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAC6B8D0()
{
  result = qword_1ECBE9778;
  if (!qword_1ECBE9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9778);
  }

  return result;
}

unint64_t sub_1DAC6B928()
{
  result = qword_1EE122F38;
  if (!qword_1EE122F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F38);
  }

  return result;
}

unint64_t sub_1DAC6B980()
{
  result = qword_1EE122F40;
  if (!qword_1EE122F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F40);
  }

  return result;
}

unint64_t sub_1DAC6B9D4()
{
  result = qword_1EE122F30;
  if (!qword_1EE122F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F30);
  }

  return result;
}

void sub_1DAC6BA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC6BA90()
{
  result = qword_1EE123250[0];
  if (!qword_1EE123250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE123250);
  }

  return result;
}

unint64_t sub_1DAC6BAE4()
{
  result = qword_1EE11FBC0;
  if (!qword_1EE11FBC0)
  {
    sub_1DAC6B1F0(255, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1DAC6B34C(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FBC0);
  }

  return result;
}

unint64_t sub_1DAC6BBE0()
{
  result = qword_1ECBE9780;
  if (!qword_1ECBE9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9780);
  }

  return result;
}

unint64_t sub_1DAC6BC38()
{
  result = qword_1ECBE9788;
  if (!qword_1ECBE9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9788);
  }

  return result;
}

unint64_t sub_1DAC6BC90()
{
  result = qword_1EE123240;
  if (!qword_1EE123240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123240);
  }

  return result;
}

unint64_t sub_1DAC6BCE8()
{
  result = qword_1EE123248;
  if (!qword_1EE123248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123248);
  }

  return result;
}

unint64_t sub_1DAC6BD40()
{
  result = qword_1EE122F20;
  if (!qword_1EE122F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F20);
  }

  return result;
}

unint64_t sub_1DAC6BD98()
{
  result = qword_1EE122F28;
  if (!qword_1EE122F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122F28);
  }

  return result;
}

void sub_1DAC6BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1DAA73914;
  v11[5] = v10;
  v13[4] = sub_1DAC6BF90;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DABB2DB4;
  v13[3] = &block_descriptor_38;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 syncWithCompletion_];
  _Block_release(v12);
}

void sub_1DAC6BF18(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    a5();
  }
}

StocksCore::QuoteSource_optional __swiftcall QuoteSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QuoteSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44636972656E6567;
  v3 = 0x52636972656E6567;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x52544B4D6573796ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x655271616473616ELL;
  if (v1 != 1)
  {
    v5 = 0x6C6165526573796ELL;
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

unint64_t sub_1DAC6C114()
{
  result = qword_1ECBE9790[0];
  if (!qword_1ECBE9790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE9790);
  }

  return result;
}

uint64_t sub_1DAC6C174()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

void sub_1DAC6C2D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646579616C65;
  v4 = 0x44636972656E6567;
  v5 = 0x52636972656E6567;
  v6 = 0xEF656D69746C6165;
  if (v2 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0x80000001DACE2C10;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x52544B4D6573796ELL;
    v7 = 0xEF656D69746C6165;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE00656D69746C61;
  v10 = 0x655271616473616ELL;
  if (v2 != 1)
  {
    v10 = 0x6C6165526573796ELL;
    v9 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DAC6C4BC()
{
  result = qword_1EE1237D0;
  if (!qword_1EE1237D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237D0);
  }

  return result;
}

uint64_t sub_1DAC6C514()
{
  result = sub_1DACB7AB4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1DACB7CC4();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1DACB8204();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1DAC6C668(uint64_t a1)
{
  v48 = sub_1DACB7664();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DACB7684();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v38[1] = v1;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1DAB25DF8(0, v10, 0);
    v51 = v55;
    v12 = a1 + 64;
    v13 = -1 << *(a1 + 32);
    result = sub_1DACB9BC4();
    v14 = result;
    v15 = 0;
    v52 = *(a1 + 36);
    v43 = v6 + 32;
    v44 = (v3 + 8);
    v39 = a1 + 72;
    v40 = v10;
    v45 = v6;
    v41 = a1 + 64;
    v42 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v52 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v49 = v15;
      v19 = *(a1 + 56);
      v20 = (*(a1 + 48) + 16 * v14);
      v21 = v20[1];
      v50 = *v20;
      v22 = (v19 + 16 * v14);
      v23 = v22[1];
      v53 = *v22;
      v54 = v23;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v24 = v9;
      v25 = v47;
      sub_1DACB75C4();
      sub_1DAA642D8();
      sub_1DACB9B44();
      v26 = v25;
      v9 = v24;
      (*v44)(v26, v48);
      sub_1DACB7674();

      v27 = v51;
      v55 = v51;
      v29 = *(v51 + 16);
      v28 = *(v51 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DAB25DF8(v28 > 1, v29 + 1, 1);
        v27 = v55;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v51 = v27;
      result = (*(v45 + 32))(v27 + v30 + *(v45 + 72) * v29, v24, v46);
      a1 = v42;
      v16 = 1 << *(v42 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v12 = v41;
      v31 = *(v41 + 8 * v18);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v52 != *(v42 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v16 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v40;
      }

      else
      {
        v33 = v18 << 6;
        v34 = v18 + 1;
        v17 = v40;
        v35 = (v39 + 8 * v18);
        while (v34 < (v16 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_1DAAA2C74(v14, v52, 0);
            v16 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_1DAAA2C74(v14, v52, 0);
      }

LABEL_4:
      v15 = v49 + 1;
      v14 = v16;
      if (v49 + 1 == v17)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1DAC6CA94(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  v7 = v2;
  v8 = sub_1DACB8C74();
  v9 = sub_1DACB9914();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v5;
    v10 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = sub_1DACB8314();
    v15 = sub_1DAA7ABE4(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DAA3F000, v8, v9, "SDSBaseOperation %s will issue request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    v16 = v11;
    a1 = v10;
    v5 = v26;
    MEMORY[0x1E1278C00](v16, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v5 + qword_1EE13E480);
  v19 = *(v5 + qword_1EE13E480 + 8);
  type metadata accessor for SDSBaseOperationResponse();
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v7;
  v20 = v7;
  v21 = sub_1DACB89D4();
  sub_1DACB8B24();

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DACB71F4();
  v23 = sub_1DACB89D4();
  sub_1DACB8A84();

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  sub_1DACB71F4();
  v25 = sub_1DACB89D4();
  sub_1DACB8AB4();
}

uint64_t sub_1DAC6CE00()
{
  swift_getObjectType();
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  type metadata accessor for SDSAuthToken();
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  v3 = sub_1DACB89D4();
  v4 = *(v1 + qword_1EE13E480);
  v5 = *(v1 + qword_1EE13E480 + 8);
  type metadata accessor for SDSBaseOperationResponse();
  v6 = sub_1DACB8A74();

  return v6;
}

uint64_t sub_1DAC6CF38(void *a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *a2;
  v8 = *(v7 + qword_1EE13E480);
  v9 = *(v7 + qword_1EE13E480 + 8);
  type metadata accessor for SDSBaseOperationResponse();
  v10 = sub_1DACB89E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v45 - v13);
  if (sub_1DAC6FB8C(a1))
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v15 = a1;
    sub_1DAC6D430(v14);
    (*(v11 + 8))(v14, v10);
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v16 = sub_1DACB8C94();
    __swift_project_value_buffer(v16, qword_1EE124090);
    v17 = a3;
    v18 = sub_1DACB8C74();
    v19 = sub_1DACB9914();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315138;
      v22 = sub_1DACB8314();
      v24 = sub_1DAA7ABE4(v22, v23, &v46);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DAA3F000, v18, v19, "SDSBaseOperation %s will discard auth token and retry", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E1278C00](v21, -1, -1);
      MEMORY[0x1E1278C00](v20, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v25);
    v45[-2] = a2;
    sub_1DACB7AB4();
    sub_1DACB8BB4();
    *(swift_allocObject() + 16) = a2;
    v26 = a2;
    v27 = sub_1DACB89D4();
    v28 = sub_1DACB8A54();

    return v28;
  }

  else
  {
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v30 = sub_1DACB8C94();
    __swift_project_value_buffer(v30, qword_1EE124090);
    v31 = a1;
    v32 = a3;
    v33 = sub_1DACB8C74();
    v34 = sub_1DACB9914();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[1] = v3;
      v37 = v36;
      v38 = swift_slowAlloc();
      v46 = v38;
      *v35 = 136315394;
      v39 = sub_1DACB8314();
      v41 = sub_1DAA7ABE4(v39, v40, &v46);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      v42 = a1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v43;
      *v37 = v43;
      _os_log_impl(&dword_1DAA3F000, v33, v34, "SDSBaseOperation %s failed with error: %@", v35, 0x16u);
      sub_1DAC6FD90(v37, &qword_1EE11F790, sub_1DAAF0DE4);
      MEMORY[0x1E1278C00](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E1278C00](v38, -1, -1);
      MEMORY[0x1E1278C00](v35, -1, -1);
    }

    sub_1DACB8B74();
    v44 = a1;
    return sub_1DACB8AC4();
  }
}

uint64_t sub_1DAC6D430(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*MEMORY[0x1E69E7D40] & *v2) + qword_1EE13E480;
  v11 = v2 + *(v10 + 16);
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 1);
    v14 = *(v10 + 88);
    swift_beginAccess();
    v15 = *(v2 + v14);
    sub_1DAA4F924(v12);
    sub_1DACB71E4();
    v23 = v13;
    v16 = v12(a1, v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE13E480 + 64));
      v19 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      do
      {
        sub_1DABE418C(v19, v9);
        v21 = v18[3];
        v22 = v18[4];
        __swift_project_boxed_opaque_existential_1(v18, v21);
        (*(v22 + 16))(v9, v21, v22);
        sub_1DAB36234(v9);
        v19 += v20;
        --v17;
      }

      while (v17);
    }

    return sub_1DAA4F910(v12);
  }

  return result;
}

uint64_t sub_1DAC6D65C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = &a1[*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 56)];
  v4 = *(v3 + 3);
  v5 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 24))(&a1[*((*v2 & *a1) + qword_1EE13E480 + 32)], v4, v5);
}

uint64_t sub_1DAC6D748(uint64_t a1, void *a2, void (*a3)(char *))
{
  v5 = *MEMORY[0x1E69E7D40] & *a2;
  v6 = *(v5 + qword_1EE13E480);
  v7 = *(v5 + qword_1EE13E480 + 8);
  v8 = type metadata accessor for SDSBaseOperationResponse();
  v9 = sub_1DACB89E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(*(v8 - 8) + 16))(v15 - v12, a1, v8);
  swift_storeEnumTagMultiPayload();
  sub_1DAC6D430(v13);
  a3(v13);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DAC6D8DC(void *a1, void *a2, void (*a3)(char *))
{
  v5 = *MEMORY[0x1E69E7D40] & *a2;
  v6 = *(v5 + qword_1EE13E480);
  v7 = *(v5 + qword_1EE13E480 + 8);
  type metadata accessor for SDSBaseOperationResponse();
  v8 = sub_1DACB89E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  *(&v15 - v11) = a1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  sub_1DAC6D430(v12);
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAC6DA34(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 56));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return sub_1DAC1F2A0(a1 + *((*v2 & *a1) + qword_1EE13E480 + 32), v4, v5);
}

uint64_t sub_1DAC6DB10(uint64_t a1, void *a2, uint64_t a3)
{
  v148 = a3;
  v153 = a1;
  v162 = *MEMORY[0x1E69E7D40] & *a2;
  v147 = sub_1DACB7CC4();
  v146 = *(v147 - 8);
  v4 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1DACB8204();
  v142 = *(v143 - 8);
  v6 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1DACB7D04();
  v139 = *(v140 - 8);
  v8 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB74D4();
  v157 = *(v10 - 8);
  v158 = v10;
  v11 = *(v157 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v134 - v14;
  v15 = MEMORY[0x1E69E6720];
  sub_1DAC6FE90(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v154 = &v134 - v18;
  v19 = sub_1DACB7AB4();
  v159 = *(v19 - 8);
  v160 = v19;
  v20 = *(v159 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v137 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v134 - v23;
  v152 = sub_1DACB7684();
  v165 = *(v152 - 8);
  v24 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC6FE90(0, &qword_1EE1252C0, MEMORY[0x1E69681B8], v15);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v134 - v28;
  v30 = sub_1DACB7724();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v161 = v29;
  v34 = sub_1DACB8C94();
  v35 = __swift_project_value_buffer(v34, qword_1EE124090);
  v36 = a2;
  v164 = v35;
  v37 = sub_1DACB8C74();
  v38 = sub_1DACB9914();

  v39 = os_log_type_enabled(v37, v38);
  v168 = v30;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v167 = v41;
    *v40 = 136315138;
    v42 = sub_1DACB8314();
    v44 = sub_1DAA7ABE4(v42, v43, &v167);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DAA3F000, v37, v38, "SDSBaseOperation %s did fetch auth token", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E1278C00](v41, -1, -1);
    MEMORY[0x1E1278C00](v40, -1, -1);
  }

  sub_1DAC6FE90(0, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  v45 = *(v165 + 72);
  v46 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1DACC1D40;
  v149 = v46;
  v48 = MEMORY[0x1E69E7D40];
  v49 = a2;
  v50 = (v36 + *((*MEMORY[0x1E69E7D40] & *v36) + qword_1EE13E480 + 48));
  v51 = *v50;
  v52 = v50[1];
  sub_1DACB7674();
  v53 = v50[2];
  v54 = v50[3];
  v150 = v45;
  sub_1DACB7674();
  v55 = v163;
  v56 = sub_1DAC6C668(*(v36 + *((*v48 & *v36) + qword_1EE13E480 + 40)));
  v163 = v55;
  v167 = v47;
  sub_1DAC28A94(v56);
  v57 = v36 + *((*v48 & *v36) + qword_1EE13E480 + 32);
  v58 = v161;
  sub_1DACB76C4();
  v59 = v168;
  if ((*(v31 + 48))(v58, 1, v168) == 1)
  {

    sub_1DAC6FD90(v58, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
    v60 = v36;
    v61 = sub_1DACB8C74();
    v62 = sub_1DACB9914();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v167 = v64;
      *v63 = 136315138;
      v65 = sub_1DACB8314();
      v67 = sub_1DAA7ABE4(v65, v66, &v167);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1DAA3F000, v61, v62, "SDSBaseOperation %s failed to construct URL", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1E1278C00](v64, -1, -1);
      MEMORY[0x1E1278C00](v63, -1, -1);
    }

    v68 = *(v162 + qword_1EE13E480);
    v69 = *(v162 + qword_1EE13E480 + 8);
    type metadata accessor for SDSBaseOperationResponse();
    sub_1DACB8B74();
    type metadata accessor for SDSBaseOperation.OperationError();
    swift_getWitnessTable();
    swift_allocError();
    return sub_1DACB8AC4();
  }

  else
  {
    v71 = v31;
    v135 = v36;
    v136 = v49;
    (*(v31 + 32))(v166, v58, v59);
    sub_1DACB76B4();
    v73 = sub_1DACB76A4();
    if (*v72)
    {
      v74 = v72;
      v75 = (v153 + *(type metadata accessor for SDSAuthToken() + 24));
      v76 = *v75;
      v77 = v75[1];
      v78 = v151;
      sub_1DACB7674();
      v79 = *v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v74 = v79;
      v81 = v154;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = sub_1DAADC7E8(0, v79[2] + 1, 1, v79);
        *v74 = v79;
      }

      v83 = v79[2];
      v82 = v79[3];
      if (v83 >= v82 >> 1)
      {
        v79 = sub_1DAADC7E8(v82 > 1, v83 + 1, 1, v79);
        *v74 = v79;
      }

      v79[2] = v83 + 1;
      (*(v165 + 32))(v79 + v149 + v83 * v150, v78, v152);
      v73(&v167, 0);
      v59 = v168;
    }

    else
    {
      v73(&v167, 0);
      v81 = v154;
    }

    sub_1DACB76D4();
    v85 = v159;
    v84 = v160;
    if ((*(v159 + 48))(v81, 1, v160) == 1)
    {
      sub_1DAC6FD90(v81, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      v86 = v135;
      v87 = sub_1DACB8C74();
      v88 = sub_1DACB9914();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = v71;
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v167 = v91;
        *v90 = 136315138;
        v92 = sub_1DACB8314();
        v94 = sub_1DAA7ABE4(v92, v93, &v167);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_1DAA3F000, v87, v88, "SDSBaseOperation %s failed to construct URL", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x1E1278C00](v91, -1, -1);
        v71 = v89;
        MEMORY[0x1E1278C00](v90, -1, -1);
      }

      v95 = *(v162 + qword_1EE13E480);
      v96 = *(v162 + qword_1EE13E480 + 8);
      type metadata accessor for SDSBaseOperationResponse();
      sub_1DACB8B74();
      type metadata accessor for SDSBaseOperation.OperationError();
      swift_getWitnessTable();
      swift_allocError();
      v97 = sub_1DACB8AC4();
      (*(v71 + 8))(v166, v59);
    }

    else
    {
      v165 = v71;
      v98 = v155;
      (*(v85 + 32))(v155, v81, v84);
      (*(v85 + 16))(v137, v98, v84);
      v99 = v156;
      sub_1DACB7484();
      v100 = v138;
      sub_1DACB6D04();
      v101 = sub_1DACB7CE4();
      v103 = v102;
      (*(v139 + 8))(v100, v140);
      v154 = v101;
      sub_1DACB74A4();
      v104 = *(v162 + qword_1EE13E480);
      v161 = *(v162 + qword_1EE13E480 + 8);
      v162 = v104;
      sub_1DACB84B4();
      swift_getWitnessTable();
      sub_1DACB8834();
      (*(v157 + 16))(v141, v99, v158);
      v105 = v135;
      v106 = MEMORY[0x1E69E7D40];
      (*(v142 + 16))(v144, &v135[*((*MEMORY[0x1E69E7D40] & *v135) + qword_1EE13E480 + 80)], v143);
      (*(v146 + 16))(v145, &v105[*((*v106 & *v105) + qword_1EE13E480 + 72)], v147);
      v107 = sub_1DACB8824();
      v108 = v105;
      v109 = v107;
      v110 = sub_1DACB8C74();
      v111 = sub_1DACB9914();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v167 = v113;
        *v112 = 136315394;
        v114 = sub_1DACB8314();
        v116 = sub_1DAA7ABE4(v114, v115, &v167);

        *(v112 + 4) = v116;
        *(v112 + 12) = 2082;
        v117 = sub_1DACB8804();
        v119 = sub_1DAA7ABE4(v117, v118, &v167);

        *(v112 + 14) = v119;
        _os_log_impl(&dword_1DAA3F000, v110, v111, "SDSBaseOperation %s will issue network operation %{public}s", v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1278C00](v113, -1, -1);
        MEMORY[0x1E1278C00](v112, -1, -1);
      }

      v120 = v109;
      sub_1DACB71E4();
      v121 = sub_1DACB8C74();
      v122 = sub_1DACB9914();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v167 = v124;
        *v123 = 136446466;
        v125 = sub_1DACB8804();
        v127 = sub_1DAA7ABE4(v125, v126, &v167);

        *(v123 + 4) = v127;
        *(v123 + 12) = 2082;
        v128 = sub_1DAA7ABE4(v154, v103, &v167);

        *(v123 + 14) = v128;
        _os_log_impl(&dword_1DAA3F000, v121, v122, "Network operation %{public}s will use request UUID: %{public}s", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1278C00](v124, -1, -1);
        MEMORY[0x1E1278C00](v123, -1, -1);
      }

      else
      {
      }

      v129 = v168;
      v130 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v131 = swift_allocObject();
      v132 = v161;
      v131[2] = v162;
      v131[3] = v132;
      v131[4] = v130;
      sub_1DACB71F4();
      sub_1DACB8814();

      type metadata accessor for SDSBaseOperationResponse();
      v133 = sub_1DACB8B74();
      MEMORY[0x1EEE9AC00](v133);
      *(&v134 - 2) = v120;
      v97 = sub_1DACB8B34();

      (*(v157 + 8))(v156, v158);
      (*(v159 + 8))(v155, v160);
      (*(v165 + 8))(v166, v129);
    }

    return v97;
  }
}

void sub_1DAC6EDE0(uint64_t a1)
{
  v2 = sub_1DACB8754();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v3 + 16))(v6, a1, v2);
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + qword_1EE13E480 + 88);
    swift_beginAccess();
    v10 = *(v8 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1DAADC74C(0, v10[2] + 1, 1, v10);
      *(v8 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1DAADC74C(v12 > 1, v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6, v2);
    *(v8 + v9) = v10;
    swift_endAccess();
  }
}

id sub_1DAC6EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x1E69E7D40] & *a5;
  v11 = swift_allocObject();
  v12 = (*(v10 + *MEMORY[0x1E69D6900]) + *MEMORY[0x1E69D65B8]);
  v11[2] = *v12;
  v11[3] = v12[1];
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8304();

  return [a5 start];
}

void sub_1DAC6F0FC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v28 = a3;
  v29 = a2;
  v6 = type metadata accessor for SDSBaseOperationResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = sub_1DACB87B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = sub_1DACB89E4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v26 - v21);
  (*(v23 + 16))(&v26 - v21, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v22;
    v27(v24);
  }

  else
  {
    v25 = *(v12 + 32);
    v25(v18, v22, v11);
    (*(v12 + 16))(v16, v18, v11);
    v25(v10, v16, v11);
    v29(v10);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v18, v11);
  }
}

void sub_1DAC6F3C8(void *a1)
{
  v1 = *MEMORY[0x1E69E7D40] & *a1;
  v2 = *(v1 + qword_1EE13E480);
  v3 = *(v1 + qword_1EE13E480 + 8);
  sub_1DAC6FEF4();
}

uint64_t sub_1DAC6F410()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = &v0[*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE13E480 + 16)];
  v3 = v2[1];
  sub_1DAA4F910(*v2);
  v4 = *((*v1 & *v0) + qword_1EE13E480 + 32);
  v5 = sub_1DACB7AB4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[*((*v1 & *v0) + qword_1EE13E480 + 40)];

  v7 = &v0[*((*v1 & *v0) + qword_1EE13E480 + 48)];
  v8 = *(v7 + 1);
  v9 = *(v7 + 3);

  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E480 + 56)]);
  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E480 + 64)]);
  v10 = *((*v1 & *v0) + qword_1EE13E480 + 72);
  v11 = sub_1DACB7CC4();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  v12 = *((*v1 & *v0) + qword_1EE13E480 + 80);
  v13 = sub_1DACB8204();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = *&v0[*((*v1 & *v0) + qword_1EE13E480 + 88)];
}

uint64_t sub_1DAC6F730(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = &a1[*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 16)];
  v4 = v3[1];
  sub_1DAA4F910(*v3);
  v5 = *((*v2 & *a1) + qword_1EE13E480 + 32);
  v6 = sub_1DACB7AB4();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[*((*v2 & *a1) + qword_1EE13E480 + 40)];

  v8 = &a1[*((*v2 & *a1) + qword_1EE13E480 + 48)];
  v9 = *(v8 + 1);
  v10 = *(v8 + 3);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E480 + 56)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E480 + 64)]);
  v11 = *((*v2 & *a1) + qword_1EE13E480 + 72);
  v12 = sub_1DACB7CC4();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);
  v13 = *((*v2 & *a1) + qword_1EE13E480 + 80);
  v14 = sub_1DACB8204();
  (*(*(v14 - 8) + 8))(&a1[v13], v14);
  v15 = *&a1[*((*v2 & *a1) + qword_1EE13E480 + 88)];
}

uint64_t sub_1DAC6FA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DACB87B4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1DAC6FB8C(void *a1)
{
  sub_1DAC6FE90(0, &qword_1EE11FF80, MEMORY[0x1E69D6950], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v15 - v4);
  v15[1] = a1;
  v6 = a1;
  sub_1DABDBA24();
  v7 = sub_1DACB88A4();
  v8 = swift_dynamicCast();
  v9 = *(*(v7 - 8) + 56);
  if (!v8)
  {
    v9(v5, 1, 1, v7);
    sub_1DAC6FD90(v5, &qword_1EE11FF80, MEMORY[0x1E69D6950]);
    return 0;
  }

  v10 = *(v7 - 8);
  v9(v5, 0, 1, v7);
  if ((*(v10 + 88))(v5, v7) != *MEMORY[0x1E69D6948])
  {
    (*(v10 + 8))(v5, v7);
    return 0;
  }

  (*(v10 + 96))(v5, v7);
  v11 = *v5;
  v12 = [v11 statusCode];

  return v12 == 401 || v12 == 410;
}

uint64_t sub_1DAC6FD90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC6FE90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAC6FE6C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1DAC6EDE0(a1);
}

void sub_1DAC6FE80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DAC6F0FC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

void sub_1DAC6FE90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC6FF64(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  v4 = __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  sub_1DACB9C94();

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EE1242C0;
  v6 = qword_1EE1242C8;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v5, v6);

  v7 = *v4;
  v8 = sub_1DABBCF20(0xD000000000000013, 0x80000001DACF0CD0, 0xD00000000000001ALL, 0x80000001DACF0CF0, 0xD000000000000015, 0x80000001DACF0D10);

  v9 = (*(v3 + 8))(v8, v2, v3);

  return v9;
}

uint64_t sub_1DAC70104(uint64_t *a1, uint64_t a2)
{
  v61 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v53 - v7;
  v8 = sub_1DACB9DF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = *a1;
  v58 = a1[1];
  v59 = v16;
  v18 = a1[2];
  v17 = a1[3];
  v19 = sub_1DACB7554();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v56 = v18;
  sub_1DACB71E4();
  v57 = v17;
  sub_1DACB71E4();
  v60 = sub_1DACB7544();
  if (qword_1EE123D90 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v8, qword_1EE123D98);
  v23 = *(v9 + 16);
  v54 = v15;
  v55 = v23;
  v23(v15, v22, v8);
  v24 = __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1DACB9C94();

  v64 = 0xD000000000000015;
  v65 = 0x80000001DACF0D10;
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_1EE1242C0;
  v26 = qword_1EE1242C8;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v25, v26);

  v27 = *v24;
  v28 = sub_1DABBCF20(0xD000000000000013, 0x80000001DACF0CD0, 0xD00000000000001ALL, 0x80000001DACF0CF0, v64, v65);

  v29 = [v28 storefrontID];

  v30 = sub_1DACB9324();
  v32 = v31;

  if (v30 == qword_1EE1242C0 && v32 == qword_1EE1242C8)
  {

    v33 = 0;
  }

  else
  {
    v34 = sub_1DACBA174();

    v33 = v34 ^ 1;
  }

  v35 = v55;
  v66 = MEMORY[0x1E69E6370];
  LOBYTE(v64) = v33 & 1;
  v36 = sub_1DACB7534();
  sub_1DAB59BA4(&v64, v54);
  v36(v63, 0);
  if (qword_1EE123D68 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v8, qword_1EE123D70);
  v35(v13, v37, v8);
  sub_1DAA488A4(0, &qword_1EE123E50);
  v66 = v38;
  v64 = v56;
  v39 = sub_1DACB7534();
  sub_1DAB59BA4(&v64, v13);
  v39(v63, 0);
  if (qword_1EE123D40 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v8, qword_1EE123D48);
  v35(v13, v40, v8);
  sub_1DAA488A4(0, &qword_1EE123E68);
  v66 = v41;
  v64 = v57;
  v42 = sub_1DACB7534();
  sub_1DAB59BA4(&v64, v13);
  v42(v63, 0);
  sub_1DAC707C4();
  v43 = v67;
  v44 = v62;
  sub_1DACB7524();
  if (v44)
  {

    sub_1DAC7081C();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA55824(v43, v53);
    sub_1DAC7081C();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = sub_1DACB8AE4();

    sub_1DAA640AC(v43);
    return v52;
  }
}

uint64_t sub_1DAC706E4()
{
  v1 = *v0;
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v2 = sub_1DACB89D4();
  type metadata accessor for AppConfiguration(0);
  v3 = sub_1DACB8A54();

  return v3;
}

unint64_t sub_1DAC707C4()
{
  result = qword_1EE124E20;
  if (!qword_1EE124E20)
  {
    type metadata accessor for AppConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E20);
  }

  return result;
}

void sub_1DAC7081C()
{
  if (!qword_1EE1240B0)
  {
    type metadata accessor for AppConfiguration(255);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1240B0);
    }
  }
}

uint64_t sub_1DAC70874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DAAF9E14();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC1D20;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = *(a7 + 8);
  sub_1DACB71E4();
  v15(v14, a3, a4, a5, a6, a7);

  v16 = sub_1DACB89D4();
  type metadata accessor for QuoteDetail();
  v17 = sub_1DACB8A54();

  return v17;
}

uint64_t sub_1DAC7097C(uint64_t *a1)
{
  sub_1DAC71174(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for QuoteDetail();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  sub_1DAB85AFC(*a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAC72D10(v5, sub_1DAC71174);
    sub_1DAC72CBC();
    swift_allocError();
    sub_1DAA6B87C(0, &qword_1EE11FEA8, type metadata accessor for QuoteDetail, MEMORY[0x1E69D6B18]);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAC2FF24(v5, v13);
    sub_1DAAE3F58(v13, v11);
    sub_1DAA6B87C(0, &qword_1EE11FEA8, type metadata accessor for QuoteDetail, MEMORY[0x1E69D6B18]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1DACB8AE4();
    sub_1DAC72D10(v13, type metadata accessor for QuoteDetail);
    return v21;
  }
}

uint64_t sub_1DAC70BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC70C20, 0, 0);
}

uint64_t sub_1DAC70C20()
{
  v1 = v0[10];
  v0[11] = sub_1DAC70874(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC70CD4;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1DAC70CD4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAB88094, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC70E10()
{
  sub_1DAA6B87C(0, &qword_1EE11D430, sub_1DAC71174, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAC70EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v29 = a5;
  v30 = a1;
  v12 = sub_1DACB8204();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7CB4();
  (*(v13 + 104))(v16, *MEMORY[0x1E69D6490], v12);
  sub_1DAC70874(a6, v27, v28, v21, v16, a9, a10);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  *(v22 + 24) = a2;
  sub_1DACB71F4();
  v24 = sub_1DACB89D4();
  sub_1DACB8A64();

  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = a2;
  sub_1DACB71F4();
  v26 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC711BC(uint64_t a1, void (*a2)(char *))
{
  sub_1DAC71174(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAE3F58(a1, v7);
  v8 = type metadata accessor for QuoteDetail();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_1DAC72D10(v7, sub_1DAC71174);
}

uint64_t sub_1DAC712B8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAC71174(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for QuoteDetail();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_1DAC72D10(v6, sub_1DAC71174);
}

uint64_t sub_1DAC713CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA6B9F0(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC7146C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v111 = a4;
  v95 = a2;
  v120 = a1;
  v109 = *v4;
  v98 = sub_1DACB8344();
  v97 = *(v98 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC72940(0);
  v121 = v8;
  v113 = *(v8 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v114 = v10;
  v100 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6B87C(0, &qword_1EE11FD60, sub_1DAC72940, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v93 - v15;
  v16 = sub_1DACB8204();
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = v107[8];
  MEMORY[0x1EEE9AC00](v16);
  v105 = v18;
  v106 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB81B4();
  v117 = *(v19 - 8);
  v118 = v19;
  v20 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB7CC4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - v27;
  v29 = sub_1DACB7D04();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v34 = sub_1DACB7CE4();
  v36 = v35;
  (*(v30 + 8))(v33, v29);
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v37 = sub_1DACB8C94();
  __swift_project_value_buffer(v37, qword_1EE13E2E8);
  v38 = *(v23 + 16);
  v110 = a3;
  v101 = v38;
  v38(v28, a3, v22);
  v39 = v120;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v40 = sub_1DACB8C74();
  v41 = sub_1DACB9914();

  v42 = os_log_type_enabled(v40, v41);
  v122 = v34;
  v116 = v36;
  v104 = v23;
  if (v42)
  {
    v43 = v39;
    v44 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v123[0] = v94;
    *v44 = 136315650;
    v45 = MEMORY[0x1E1277130](v43, MEMORY[0x1E69E6158]);
    v47 = v22;
    v48 = sub_1DAA7ABE4(v45, v46, v123);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = sub_1DACB7C94();
    v51 = v50;
    (*(v23 + 8))(v28, v47);
    v52 = sub_1DAA7ABE4(v49, v51, v123);
    v22 = v47;

    *(v44 + 14) = v52;
    *(v44 + 22) = 2080;
    *(v44 + 24) = sub_1DAA7ABE4(v122, v36, v123);
    _os_log_impl(&dword_1DAA3F000, v40, v41, "Preparing stock quote detail request for symbols: %s, earliestBeginDate: %s, requestID: %s", v44, 0x20u);
    v53 = v94;
    swift_arrayDestroy();
    v54 = v53;
    v55 = v119;
    MEMORY[0x1E1278C00](v54, -1, -1);
    MEMORY[0x1E1278C00](v44, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v28, v22);
    v55 = v119;
  }

  if (qword_1EE1200D8 != -1)
  {
    swift_once();
  }

  sub_1DAA5CD48(&qword_1EE121E88, v56, type metadata accessor for QuoteDetailManager);
  sub_1DACB7F84();
  v57 = v55;
  if (LOBYTE(v123[0]) == 1)
  {
    (*(v117 + 104))(v115, *MEMORY[0x1E69D63D0], v118);
  }

  else
  {
    (*(v117 + 16))(v115, v95, v118);
  }

  v58 = v103;
  v101(v103, v110, v22);
  v110 = v22;
  v60 = v106;
  v59 = v107;
  v61 = v108;
  (v107[2])(v106, v111, v108);
  v62 = v104;
  v63 = (*(v104 + 80) + 40) & ~*(v104 + 80);
  v64 = (v102 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = swift_allocObject();
  v66 = v116;
  *(v65 + 2) = v122;
  *(v65 + 3) = v66;
  *(v65 + 4) = v57;
  (*(v62 + 32))(&v65[v63], v58, v110);
  v67 = v59[4];
  v110 = v65;
  v67(&v65[v64], v60, v61);
  v68 = *(v57 + 64);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v111 = v68;
  sub_1DACB88F4();
  v69 = v112;
  sub_1DACB8D84();

  v70 = v113;
  v71 = *(v113 + 48);
  v72 = v121;
  result = v71(v69, 1, v121);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v74 = v100;
    v108 = *(v70 + 16);
    v108(v100, v69, v72);
    v75 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v76 = swift_allocObject();
    v77 = *(v70 + 32);
    v109 = v76;
    v107 = v77;
    (v77)(v76 + v75, v74, v72);
    v113 = *(v70 + 8);
    (v113)(v69, v72);
    sub_1DACB88F4();
    v78 = v99;
    sub_1DACB8D84();
    v79 = v121;

    result = v71(v78, 1, v79);
    if (result != 1)
    {
      sub_1DAA6B80C(0, &qword_1EE11FEC8, MEMORY[0x1E69D6B00]);
      v112 = v80;
      v108(v74, v78, v79);
      v81 = swift_allocObject();
      (v107)(v81 + v75, v74, v79);
      (v113)(v78, v79);
      v82 = *(v119 + 56);
      v123[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5CD48(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528]);
      sub_1DAA7A378(0);
      sub_1DAA5CD48(&qword_1EE125518, 255, sub_1DAA7A378);
      v83 = v96;
      v84 = v98;
      sub_1DACB9BB4();
      v85 = v115;
      sub_1DACB89F4();

      (*(v97 + 8))(v83, v84);
      (*(v117 + 8))(v85, v118);
      v86 = swift_allocObject();
      v87 = v122;
      v88 = v116;
      *(v86 + 16) = v122;
      *(v86 + 24) = v88;
      sub_1DACB71E4();
      v89 = sub_1DACB89D4();
      sub_1DAA6B80C(0, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
      sub_1DACB8A54();

      v90 = swift_allocObject();
      *(v90 + 16) = v87;
      *(v90 + 24) = v88;
      v91 = sub_1DACB89D4();
      v92 = sub_1DACB8AA4();

      return v92;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC72118(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DACB8C94();
  __swift_project_value_buffer(v12, qword_1EE13E2E8);
  sub_1DACB71E4();
  v13 = sub_1DACB8C74();
  v14 = sub_1DACB9914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DAA7ABE4(a2, a3, &v25);
    _os_log_impl(&dword_1DAA3F000, v13, v14, "Performing quote detail fetch with requestID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E1278C00](v16, -1, -1);
    MEMORY[0x1E1278C00](v15, -1, -1);
  }

  v17 = a4[5];
  v18 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v17);
  (*(v18 + 8))(a1, a5, a6, v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1DACB71E4();
  v20 = sub_1DACB89D4();
  sub_1DAA6B80C(0, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  sub_1DACB71E4();
  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8AA4();

  return v23;
}

uint64_t sub_1DAC723B4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE13E2E8);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v15);
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote detail fetch with ID: %s returned success", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v15 = v5;
  sub_1DAC72BE4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC7253C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE13E2E8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v18);
    *(v9 + 12) = 2080;
    type metadata accessor for QuoteDetail();
    v11 = sub_1DACB9134();
    v13 = sub_1DAA7ABE4(v11, v12, &v18);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote detail request with ID: %s completed with results: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v18 = v5;
  sub_1DAC72BE4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAC7272C(void *a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_1EE11FDA0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DACB8C94();
  __swift_project_value_buffer(v8, qword_1EE13E2E8);
  sub_1DACB71E4();
  v9 = a1;
  oslog = sub_1DACB8C74();
  v10 = sub_1DACB9904();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DAA7ABE4(a2, a3, &v17);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DACBA224();
    v15 = sub_1DAA7ABE4(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAA3F000, oslog, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DAC72960(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAC72118(a1, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1DAC72A3C()
{
  sub_1DAC72940(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1DACB8D34();
}

uint64_t objectdestroy_5Tm()
{
  sub_1DAC72940(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAC72B3C()
{
  sub_1DAC72940(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1DACB8D44();
}

void sub_1DAC72BE4()
{
  if (!qword_1EE11FE78)
  {
    sub_1DAA6B80C(255, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE78);
    }
  }
}

unint64_t sub_1DAC72CBC()
{
  result = qword_1EE11DF90;
  if (!qword_1EE11DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF90);
  }

  return result;
}

uint64_t sub_1DAC72D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC72D84()
{
  result = qword_1ECBE9818;
  if (!qword_1ECBE9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9818);
  }

  return result;
}

uint64_t sub_1DAC72DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7CC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v4 + 16, v29);
  (*(v13 + 16))(v16, a3, v12);
  (*(v8 + 16))(v11, a4, v7);
  v17 = v30;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v29[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = sub_1DACB71E4();
  v25 = sub_1DAC73094(v24, v23, v16, v11);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_1DACB82E4();
  sub_1DACB8294();
  v26 = sub_1DACB82A4();

  return v26;
}

id sub_1DAC73094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v27[3] = v8;
  v27[4] = &off_1F5690858;
  v27[0] = a2;
  v9 = type metadata accessor for SDSStockMetadataOperation();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v26[3] = v8;
  v26[4] = &off_1F5690858;
  v26[0] = v16;
  *&v10[qword_1EE11DD68] = a1;
  sub_1DAA4D678(v26, &v10[qword_1EE11DD80]);
  v17 = qword_1EE11DD70;
  v18 = sub_1DACB7CC4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a3, v18);
  v20 = qword_1EE11DD78;
  v21 = sub_1DACB8204();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v10[v20], a4, v21);
  v25.receiver = v10;
  v25.super_class = v9;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  (*(v22 + 8))(a4, v21);
  (*(v19 + 8))(a3, v18);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

BOOL sub_1DAC732EC@<W0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20)
{
  v21 = a20;
  v22 = a18;
  v25 = a16;
  v27 = a14;
  v29 = a11;
  if (!a2)
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  if (!a4)
  {
    a3 = 0;
    a4 = 0xE000000000000000;
  }

  if (!a6)
  {
    a5 = 0;
    a6 = 0xE000000000000000;
  }

  if (!a8)
  {
    a7 = 0;
    a8 = 0xE000000000000000;
  }

  if (!a11)
  {
    a10 = 0;
    v29 = 0xE000000000000000;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  if (!a14)
  {
    a13 = 0;
    v27 = 0xE000000000000000;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (!a16)
  {
    a15 = 0;
    v25 = 0xE000000000000000;
  }

  if (!a18)
  {
    a17 = 0x46464646464623;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  if (!a18)
  {
    v22 = 0xE700000000000000;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  if (!a20)
  {
    a19 = 0x30303030303023;
    v21 = 0xE700000000000000;
  }

  *(a9 + 64) = a10;
  *(a9 + 72) = v29;
  result = a12 == 2;
  *(a9 + 80) = (a12 == 2) | a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = v27;
  *(a9 + 104) = a15;
  *(a9 + 112) = v25;
  *(a9 + 120) = a17;
  *(a9 + 128) = v22;
  *(a9 + 136) = a19;
  *(a9 + 144) = v21;
  return result;
}

unint64_t sub_1DAC733E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6372755074736F70;
    v6 = 0x6F436E6F74747562;
    if (a1 != 8)
    {
      v6 = 0x65546E6F74747562;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7865546C61697274;
    v2 = 0x6C616972546E6F6ELL;
    v3 = 0x7954746567726174;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC73564(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC733E0(*a1);
  v5 = v4;
  if (v3 == sub_1DAC733E0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC735EC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC733E0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC73650()
{
  sub_1DAC733E0(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAC736A4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC733E0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC73704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC75048();
  *a2 = result;
  return result;
}

unint64_t sub_1DAC73734@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC733E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC7377C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC75048();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC737A4(uint64_t a1)
{
  v2 = sub_1DAC747F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC737E0(uint64_t a1)
{
  v2 = sub_1DAC747F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC7381C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAC74DDC(0, &qword_1EE123C80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v93 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC747F0();
  sub_1DACBA2F4();
  if (!v2)
  {
    v121 = MEMORY[0x1E69E7CC0];
    v120 = 0;
    sub_1DACB9F84();
    v12 = v119;
    v115 = v118;
    if (v119)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v114 = 0;
      v14 = a2;
      swift_beginAccess();
      v15 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      v13 = v15;
      if (v17 >= v16 >> 1)
      {
        v13 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v15);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = 0xD000000000000016;
      *(v18 + 5) = 0x80000001DACE2C50;
      v121 = v13;
      swift_endAccess();
      a2 = v14;
      v12 = v114;
    }

    v120 = 1;
    sub_1DACB9F84();
    v19 = v119;
    v111 = v118;
    if (!v119)
    {
      v112 = a2;
      v113 = 0;
      swift_beginAccess();
      v20 = v13;
      v21 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DAA9A3B0(0, *(v20 + 2) + 1, 1, v20);
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1DAA9A3B0((v22 > 1), v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = &v20[16 * v23];
      *(v24 + 4) = 0x7865546C61697274;
      *(v24 + 5) = 0xE900000000000074;
      v121 = v20;
      swift_endAccess();
      v12 = v21;
      v13 = v20;
      a2 = v112;
      v19 = v113;
    }

    v120 = 2;
    sub_1DACB9F84();
    v108 = v118;
    v110 = v119;
    if (!v119)
    {
      v112 = a2;
      v113 = v19;
      v109 = 0;
      swift_beginAccess();
      v25 = v13;
      v26 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1DAA9A3B0((v27 > 1), v28 + 1, 1, v25);
      }

      v13 = v25;
      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      strcpy(v29 + 32, "nonTrialText");
      v29[45] = 0;
      *(v29 + 23) = -5120;
      v121 = v25;
      swift_endAccess();
      v2 = v109;
      v12 = v26;
      a2 = v112;
      v19 = v113;
    }

    v120 = 3;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);
LABEL_46:

      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v106 = v118;
    v107 = v119;
    if (!v119)
    {
      v112 = a2;
      v113 = v19;
      v109 = 0;
      swift_beginAccess();
      v30 = v13;
      v31 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v30);
      }

      v13 = v30;
      *(v30 + 2) = v33 + 1;
      v34 = &v30[16 * v33];
      *(v34 + 4) = 0x7954746567726174;
      *(v34 + 5) = 0xEA00000000006570;
      v121 = v30;
      swift_endAccess();
      v2 = v109;
      v12 = v31;
      a2 = v112;
      v19 = v113;
    }

    v120 = 4;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);
LABEL_45:

      goto LABEL_46;
    }

    v104 = v118;
    v105 = v119;
    if (!v119)
    {
      v113 = v19;
      v109 = 0;
      swift_beginAccess();
      v35 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v37 = *(v13 + 2);
      v36 = *(v13 + 3);
      if (v37 >= v36 >> 1)
      {
        v13 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v13);
      }

      *(v13 + 2) = v37 + 1;
      v38 = &v13[16 * v37];
      *(v38 + 4) = 0xD000000000000014;
      *(v38 + 5) = 0x80000001DACE2C90;
      v121 = v13;
      swift_endAccess();
      v2 = v109;
      a2 = v35;
      v19 = v113;
    }

    LOBYTE(v118) = 5;
    sub_1DACB9F84();
    if (v2)
    {
      goto LABEL_43;
    }

    LODWORD(v103) = v120;
    if (v120 == 2)
    {
      v113 = v19;
      v109 = 0;
      swift_beginAccess();
      v39 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v41 = *(v13 + 2);
      v40 = *(v13 + 3);
      if (v41 >= v40 >> 1)
      {
        v13 = sub_1DAA9A3B0((v40 > 1), v41 + 1, 1, v13);
      }

      *(v13 + 2) = v41 + 1;
      v42 = &v13[16 * v41];
      *(v42 + 4) = 0xD00000000000001ELL;
      *(v42 + 5) = 0x80000001DACE2CB0;
      v121 = v13;
      swift_endAccess();
      v2 = v109;
      a2 = v39;
      v19 = v113;
    }

    v120 = 6;
    sub_1DACB9F84();
    if (v2)
    {
LABEL_43:
      (*(v7 + 8))(v10, v6);
LABEL_44:

      goto LABEL_45;
    }

    v101 = v118;
    v102 = v119;
    if (!v119)
    {
      v113 = v19;
      v109 = 0;
      swift_beginAccess();
      v44 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v46 = *(v13 + 2);
      v45 = *(v13 + 3);
      if (v46 >= v45 >> 1)
      {
        v13 = sub_1DAA9A3B0((v45 > 1), v46 + 1, 1, v13);
      }

      *(v13 + 2) = v46 + 1;
      v47 = &v13[16 * v46];
      *(v47 + 4) = 0xD000000000000016;
      *(v47 + 5) = 0x80000001DACE2CD0;
      v121 = v13;
      swift_endAccess();
      v2 = v109;
      a2 = v44;
      v19 = v113;
    }

    v120 = 7;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);

      goto LABEL_44;
    }

    v112 = a2;
    v113 = v19;
    v99 = v118;
    v109 = v119;
    v114 = v12;
    if (!v119)
    {
      swift_beginAccess();
      v48 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1DAA9A3B0((v49 > 1), v50 + 1, 1, v48);
      }

      v13 = v48;
      *(v48 + 2) = v50 + 1;
      v51 = &v48[16 * v50];
      *(v51 + 4) = 0x6372755074736F70;
      *(v51 + 5) = 0xEF4C525565736168;
      v121 = v48;
      swift_endAccess();
    }

    v120 = 8;
    sub_1DACB9F84();
    v100 = v13;
    v52 = v119;
    v98 = v118;
    if (!v119)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1DAA9A3B0(0, *(v100 + 2) + 1, 1, v100);
      }

      v54 = *(v100 + 2);
      v53 = *(v100 + 3);
      if (v54 >= v53 >> 1)
      {
        v100 = sub_1DAA9A3B0((v53 > 1), v54 + 1, 1, v100);
      }

      v55 = v100;
      *(v100 + 2) = v54 + 1;
      v56 = &v55[16 * v54];
      *(v56 + 4) = 0x6F436E6F74747562;
      *(v56 + 5) = 0xEB00000000726F6CLL;
      v121 = v55;
      swift_endAccess();
    }

    LOBYTE(v118) = 9;
    sub_1DACB9F84();
    v57 = v117;
    if (v117)
    {
      v97 = v116;
      v58 = *(v100 + 2) == 0;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1DAA9A3B0(0, *(v100 + 2) + 1, 1, v100);
      }

      v60 = *(v100 + 2);
      v59 = *(v100 + 3);
      if (v60 >= v59 >> 1)
      {
        v100 = sub_1DAA9A3B0((v59 > 1), v60 + 1, 1, v100);
      }

      v58 = 0;
      v61 = v100;
      *(v100 + 2) = v60 + 1;
      v62 = &v61[16 * v60];
      *(v62 + 4) = 0x65546E6F74747562;
      *(v62 + 5) = 0xEF726F6C6F437478;
      v97 = 0x30303030303023;
    }

    v63 = v115;
    if (!v114)
    {
      v63 = 0;
    }

    v115 = v63;
    if (v114)
    {
      v64 = v114;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v114 = v64;
    v65 = v113;
    if (v113)
    {
      v66 = v111;
    }

    else
    {
      v66 = 0;
    }

    if (!v113)
    {
      v65 = 0xE000000000000000;
    }

    v113 = v65;
    v67 = v110;
    if (v110)
    {
      v68 = v108;
    }

    else
    {
      v68 = 0;
    }

    if (!v110)
    {
      v67 = 0xE000000000000000;
    }

    v110 = v67;
    v111 = v66;
    v70 = v106;
    v69 = v107;
    if (!v107)
    {
      v70 = 0;
    }

    v106 = v70;
    if (!v107)
    {
      v69 = 0xE000000000000000;
    }

    v107 = v69;
    v108 = v68;
    v72 = v104;
    v71 = v105;
    if (!v105)
    {
      v72 = 0;
    }

    v96 = v72;
    if (!v105)
    {
      v71 = 0xE000000000000000;
    }

    v95 = v71;
    v94 = (v103 == 2) | v103 & 1;
    v74 = v101;
    v73 = v102;
    if (!v102)
    {
      v74 = 0;
      v73 = 0xE000000000000000;
    }

    v104 = v73;
    v105 = v74;
    v75 = v109;
    v76 = v99;
    if (!v109)
    {
      v76 = 0;
    }

    v103 = v76;
    if (!v109)
    {
      v75 = 0xE000000000000000;
    }

    v109 = v75;
    v77 = 0x46464646464623;
    if (v52)
    {
      v77 = v98;
    }

    v102 = v77;
    v78 = 0xE700000000000000;
    if (v52)
    {
      v79 = v52;
    }

    else
    {
      v79 = 0xE700000000000000;
    }

    v99 = v79;
    if (v57)
    {
      v78 = v57;
    }

    v101 = v78;
    if (v58)
    {
      sub_1DAA41DCC();
      v80 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41D64();
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v81 + 56) = v82;
      *(v81 + 64) = sub_1DAAF691C();
      *(v81 + 32) = v100;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v80 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    (*(v7 + 8))(v10, v6);

    v83 = v112;
    v84 = v114;
    *v112 = v115;
    v83[1] = v84;
    v85 = v113;
    v83[2] = v111;
    v83[3] = v85;
    v86 = v110;
    v83[4] = v108;
    v83[5] = v86;
    v87 = v107;
    v83[6] = v106;
    v83[7] = v87;
    v88 = v95;
    v83[8] = v96;
    v83[9] = v88;
    *(v83 + 80) = v94;
    *(v83 + 81) = v116;
    *(v83 + 21) = *(&v116 + 3);
    v89 = v104;
    v83[11] = v105;
    v83[12] = v89;
    v90 = v109;
    v83[13] = v103;
    v83[14] = v90;
    v91 = v99;
    v83[15] = v102;
    v83[16] = v91;
    v92 = v101;
    v83[17] = v97;
    v83[18] = v92;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC747F0()
{
  result = qword_1EE124598[0];
  if (!qword_1EE124598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124598);
  }

  return result;
}

uint64_t sub_1DAC74848(void *a1)
{
  sub_1DAC74DDC(0, &qword_1EE123BC8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v30 = v1[3];
  v31 = v11;
  v12 = v1[4];
  v28 = v1[5];
  v29 = v12;
  v13 = v1[6];
  v26 = v1[7];
  v27 = v13;
  v14 = v1[8];
  v24 = v1[9];
  v25 = v14;
  v23 = *(v1 + 80);
  v15 = v1[12];
  v22[7] = v1[11];
  v22[8] = v15;
  v16 = v1[14];
  v22[5] = v1[13];
  v22[6] = v16;
  v17 = v1[16];
  v22[3] = v1[15];
  v22[4] = v17;
  v18 = v1[18];
  v22[1] = v1[17];
  v22[2] = v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC747F0();
  sub_1DACBA304();
  v42 = 0;
  v20 = v32;
  sub_1DACBA094();
  if (!v20)
  {
    v41 = 1;
    sub_1DACBA094();
    v40 = 2;
    sub_1DACBA094();
    v39 = 3;
    sub_1DACBA094();
    v38 = 4;
    sub_1DACBA094();
    v37 = 5;
    sub_1DACBA0A4();
    v36 = 6;
    sub_1DACBA094();
    v35 = 7;
    sub_1DACBA094();
    v34 = 8;
    sub_1DACBA094();
    v33 = 9;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAC74B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v36 = *(a1 + 56);
  v37 = *(a1 + 48);
  v34 = *(a1 + 72);
  v35 = *(a1 + 64);
  v31 = *(a1 + 80);
  v28 = *(a1 + 96);
  v29 = *(a1 + 88);
  v24 = *(a1 + 112);
  v25 = *(a1 + 104);
  v20 = *(a1 + 128);
  v21 = *(a1 + 120);
  v16 = *(a1 + 144);
  v17 = *(a1 + 136);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v33 = *(a2 + 64);
  v32 = *(a2 + 72);
  v30 = *(a2 + 80);
  v26 = *(a2 + 96);
  v27 = *(a2 + 88);
  v22 = *(a2 + 112);
  v23 = *(a2 + 104);
  v18 = *(a2 + 128);
  v19 = *(a2 + 120);
  v14 = *(a2 + 144);
  v15 = *(a2 + 136);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0 || (v37 != v10 || v36 != v11) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v35 == v33 && v34 == v32)
  {
    if (v31 != v30)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1DACBA174();
    result = 0;
    if (v12 & 1) == 0 || ((v31 ^ v30))
    {
      return result;
    }
  }

  if ((v29 != v27 || v28 != v26) && (sub_1DACBA174() & 1) == 0 || (v25 != v23 || v24 != v22) && (sub_1DACBA174() & 1) == 0 || (v21 != v19 || v20 != v18) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAC74DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC747F0();
    v7 = a3(a1, &type metadata for SubscriptionButtonConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DAC74E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1DAC74EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAC74F44()
{
  result = qword_1ECBE9820;
  if (!qword_1ECBE9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9820);
  }

  return result;
}

unint64_t sub_1DAC74F9C()
{
  result = qword_1EE124588;
  if (!qword_1EE124588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124588);
  }

  return result;
}

unint64_t sub_1DAC74FF4()
{
  result = qword_1EE124590;
  if (!qword_1EE124590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124590);
  }

  return result;
}

uint64_t sub_1DAC75048()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC75094(void *a1, uint64_t a2)
{
  sub_1DAC78258(0, &qword_1ECBE9888, sub_1DAC77F50, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC77F50();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAA46020(0, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
  sub_1DAC77FF8(&qword_1ECBE9890, sub_1DAC78088);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAC75268(uint64_t a1)
{
  v2 = sub_1DAC78204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC752A4(uint64_t a1)
{
  v2 = sub_1DAC78204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC752E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DAC78258(0, &qword_1ECBE98B8, sub_1DAC78204, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC78204();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DAC75490(void *a1)
{
  sub_1DAC78258(0, &qword_1ECBE98C8, sub_1DAC78204, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC78204();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAC755F8(uint64_t a1)
{
  v2 = sub_1DAC77F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC75634(uint64_t a1)
{
  v2 = sub_1DAC77F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC75670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC76660(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC756B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ForYouConfigRecord(0);
  sub_1DAC77E84();
  sub_1DACB83F4();
  v3 = *(a1 + 24);
  sub_1DAC77EDC();
  sub_1DACB83F4();
  v4 = sub_1DACB89D4();
  sub_1DACB89C4();

  v5 = sub_1DACB89D4();
  v6 = sub_1DACB8AA4();

  return v6;
}

void sub_1DAC757A0()
{
  sub_1DACB9904();
  sub_1DAA4DD68(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v1 = sub_1DACB9AD4();
  sub_1DACB8C64();
}

void *sub_1DAC758C8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = (&v53 - v9);
  v10 = sub_1DACB9364();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v4;
  v15 = (a1 + *(v4 + 28));
  v16 = *v15;
  v17 = v15[1];
  sub_1DACB9354();
  v57 = sub_1DACB9334();
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  v65 = v19;
  if (v19 >> 60 != 15)
  {
    v54 = v8;
    v22 = *(a2 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v63[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v22, 0);
      v23 = v63[0];
      v24 = (a2 + 40);
      do
      {
        v26 = *(v24 - 1);
        v25 = *v24;
        v63[0] = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        sub_1DACB71E4();
        if (v28 >= v27 >> 1)
        {
          sub_1DAA5859C((v27 > 1), v28 + 1, 1);
          v23 = v63[0];
        }

        *(v23 + 16) = v28 + 1;
        v29 = v23 + 16 * v28;
        *(v29 + 32) = v26;
        *(v29 + 40) = v25;
        v24 += 2;
        --v22;
      }

      while (v22);
    }

    v30 = v56;
    v31 = v57;
    v32 = v65;
    v33 = sub_1DAC76878(v57, v65, v23);
    if (v30)
    {

      v35 = v58;
      sub_1DAC77CE4(a1, v58);
LABEL_19:
      sub_1DAC77CE4(v35, v54);
      sub_1DAC77D48();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v20 = sub_1DACB8AE4();
      sub_1DAB4D534(v31, v32);
      sub_1DAC77DA0(v35);
      return v20;
    }

    v36 = v33;
    v37 = v34;

    v38 = a1[1];
    v53 = *a1;
    sub_1DACB71E4();
    sub_1DAB0B080(v36, v37);
    v39 = sub_1DAC764B4(v36, v37);
    v35 = v58;
    v56 = v38;
    if (!v40)
    {
      v61 = v36;
      v62 = v37;
      sub_1DAB0B080(v36, v37);
      sub_1DAA4436C(0, &qword_1ECBE9838);
      if (swift_dynamicCast())
      {
        sub_1DAA4D460(v59, v63);
        __swift_project_boxed_opaque_existential_1(v63, v64);
        if (sub_1DACB9EE4())
        {
          sub_1DAA563C0(v36, v37);
          __swift_project_boxed_opaque_existential_1(v63, v64);
          sub_1DACB9ED4();
          v42 = *(&v59[0] + 1);
          v41 = *&v59[0];
          __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_18:
          v43 = v55;
          v44 = (v35 + v55[5]);
          v45 = v44 + *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
          sub_1DACB7CB4();
          sub_1DAA563C0(v36, v37);
          v46 = MEMORY[0x1E69E7CC0];
          *v44 = MEMORY[0x1E69E7CC0];
          v47 = v56;
          *v35 = v53;
          v35[1] = v47;
          *(v35 + v43[6]) = v46;
          v48 = (v35 + v43[7]);
          *v48 = v41;
          v48[1] = v42;
          *(v35 + v43[8]) = v46;
          v32 = v65;
          goto LABEL_19;
        }

        __swift_destroy_boxed_opaque_existential_1(v63);
      }

      else
      {
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        sub_1DAC77DFC(v59);
      }

      v39 = sub_1DAC76290(v36, v37);
    }

    v41 = v39;
    v42 = v40;
    sub_1DAA563C0(v36, v37);
    goto LABEL_18;
  }

  sub_1DACB9904();
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v20 = sub_1DACB9AD4();
  sub_1DACB8C64();

  sub_1DAC7623C();
  swift_allocError();
  *v21 = v16;
  v21[1] = v17;
  swift_willThrow();
  sub_1DACB71E4();
  return v20;
}

double sub_1DAC75DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1DAA7C694(a1, &v11);
  sub_1DAA420F4(0, &qword_1ECBE8A28, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    sub_1DACB71E4();
    v7 = [v10 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1DACB9B74();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    result = *&v11;
    v9 = v12;
    *a4 = v11;
    a4[1] = v9;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAC75EF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC75F54()
{
  sub_1DAC78258(0, &qword_1ECBE72D8, sub_1DAB32748, &type metadata for StockTestDataLocator, MEMORY[0x1E69D6548]);
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1DACB8414();
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1DACB8414();
  return v0;
}

uint64_t sub_1DAC76074()
{
  v1 = *v0;
  sub_1DAC76168();
  sub_1DACB8BB4();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DAC761D0;
  *(v2 + 24) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB89D4();
  type metadata accessor for ForYouConfigRecord(0);
  v4 = sub_1DACB8A54();

  return v4;
}

void sub_1DAC76168()
{
  if (!qword_1ECBE9828)
  {
    type metadata accessor for ForYouConfigRecord(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE9828);
    }
  }
}

uint64_t sub_1DAC761EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DAC76168();
  return v4(a1, *(a1 + *(v5 + 48)));
}

unint64_t sub_1DAC7623C()
{
  result = qword_1ECBE9830;
  if (!qword_1ECBE9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9830);
  }

  return result;
}

uint64_t sub_1DAC76290(uint64_t a1, unint64_t a2)
{
  sub_1DAB0B080(a1, a2);
  v4 = *(sub_1DAC76338(a1, a2) + 16);
  v5 = sub_1DACB93E4();

  return v5;
}

uint64_t sub_1DAC762FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB93E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAC76338(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DACB7B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1DAA563C0(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1DAA7BC40(v11, 0);
      v15 = sub_1DACB7AE4();
      sub_1DAA563C0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1DAC764B4(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1DACB7754();
  if (a1)
  {
    a1 = sub_1DACB7784();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1DACB7754() || !__OFSUB__(v5, sub_1DACB7784()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1DACB7774();
LABEL_16:
  result = sub_1DACB93E4();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1DAC76660(uint64_t *a1)
{
  sub_1DAC78258(0, &qword_1ECBE9860, sub_1DAC77F50, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC77F50();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA46020(0, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC77FF8(&qword_1ECBE9878, sub_1DAC77FA4);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DAC76878(void *a1, unint64_t a2, char *a3)
{
  v124[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1DACB7964();
  v7 = *(v6 - 8);
  v98 = v6;
  v99 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v78 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v96 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v78 - v16;
  v18 = objc_opt_self();
  v19 = sub_1DACB7B44();
  *&v122 = 0;
  v97 = v18;
  v20 = [v18 JSONObjectWithData:v19 options:3 error:&v122];

  v21 = v122;
  if (!v20)
  {
    a1 = v21;
    sub_1DACB78C4();

    swift_willThrow();
LABEL_129:
    v74 = *MEMORY[0x1E69E9840];
    return a1;
  }

  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAC75DE8(v124, 0x6565467961646F74, 0xEF6769666E6F4364, &v122);
  if (!*(&v123 + 1))
  {
    goto LABEL_127;
  }

  sub_1DAA420F4(0, &qword_1ECBE8A28, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_128:
    __swift_destroy_boxed_opaque_existential_1(v124);
    sub_1DAB0B080(a1, a2);
    goto LABEL_129;
  }

  v93 = a3;
  v22 = v120;
  *&v120 = 0x7370756F7267;
  *(&v120 + 1) = 0xE600000000000000;
  v23 = sub_1DACBA1D4();
  v94 = v22;
  v24 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v122 = v120;
  v123 = v121;
  if (!*(&v121 + 1))
  {

LABEL_127:
    sub_1DAADFA60(&v122);
    goto LABEL_128;
  }

  v25 = sub_1DAA420F4(0, &qword_1ECBE9848, 0x1E695DEC8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_128;
  }

  v91 = v25;
  v92 = v118;
  sub_1DACB9A64();
  sub_1DACB7954();
  if (!*(&v123 + 1))
  {
LABEL_131:
    (*(v99 + 8))(v17, v98);
    __swift_project_boxed_opaque_existential_1(v124, v124[3]);
    v75 = sub_1DACBA154();
    *&v122 = 0;
    v76 = [v97 dataWithJSONObject:v75 options:0 error:&v122];
    swift_unknownObjectRelease();
    v77 = v122;
    if (v76)
    {
      a1 = sub_1DACB7B64();
    }

    else
    {
      a1 = v77;
      sub_1DACB78C4();

      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
    goto LABEL_129;
  }

  v90 = (v99 + 8);
  while (1)
  {
    sub_1DAA5616C(&v122, &v120);
    sub_1DAA7C694(&v120, &v116);
    if (!swift_dynamicCast())
    {
LABEL_24:
      v118 = 0u;
      v119 = 0u;
LABEL_25:
      sub_1DAADFA60(&v118);
      goto LABEL_26;
    }

    v26 = v114;
    *&v116 = 1701869940;
    *(&v116 + 1) = 0xE400000000000000;
    v27 = [v114 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v27)
    {
      sub_1DACB9B74();

      swift_unknownObjectRelease();
    }

    else
    {

      v116 = 0u;
      v117 = 0u;
    }

    v118 = v116;
    v119 = v117;
    if (!*(&v117 + 1))
    {
      goto LABEL_25;
    }

    if (swift_dynamicCast())
    {
      if (v116 == __PAIR128__(0xE700000000000000, 0x64657461727563))
      {
      }

      else
      {
        v28 = sub_1DACBA174();

        if ((v28 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_1DAA7C694(&v120, &v116);
      if (!swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v29 = v114;
      *&v116 = 0x65707974627573;
      *(&v116 + 1) = 0xE700000000000000;
      v30 = [v114 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v30)
      {
        sub_1DACB9B74();

        swift_unknownObjectRelease();
      }

      else
      {

        v116 = 0u;
        v117 = 0u;
      }

      v118 = v116;
      v119 = v117;
      if (!*(&v117 + 1))
      {
        goto LABEL_25;
      }

      if (swift_dynamicCast())
      {
        if (v116 == __PAIR128__(0xEA00000000007365, 0x69726F7453706F74))
        {
        }

        else
        {
          v31 = sub_1DACBA174();

          if ((v31 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_1DAA7C694(&v120, &v116);
        if (!swift_dynamicCast())
        {
          v118 = 0u;
          v119 = 0u;
LABEL_44:
          __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_45:
          sub_1DAADFA60(&v118);
          goto LABEL_27;
        }

        v32 = v114;
        *&v116 = 0x746E65746E6F63;
        *(&v116 + 1) = 0xE700000000000000;
        v33 = [v114 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v33)
        {
          sub_1DACB9B74();

          swift_unknownObjectRelease();
        }

        else
        {

          v116 = 0u;
          v117 = 0u;
        }

        v118 = v116;
        v119 = v117;
        if (!*(&v117 + 1))
        {
          goto LABEL_44;
        }

        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_27:
    sub_1DACB7954();
    if (!*(&v123 + 1))
    {
      goto LABEL_131;
    }
  }

  v34 = v116;
  *&v116 = 0x70756F7267627573;
  *(&v116 + 1) = 0xE900000000000073;
  v35 = sub_1DACBA1D4();
  v88 = v34;
  v36 = [v34 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v116 = 0u;
    v117 = 0u;
  }

  v118 = v116;
  v119 = v117;
  if (!*(&v117 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v120);

    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v120);

    goto LABEL_27;
  }

  v83 = v114;
  sub_1DACB9A64();
  while (1)
  {
    while (1)
    {
      sub_1DACB7954();
      if (!*(&v119 + 1))
      {

        (*v90)(v96, v98);
        goto LABEL_26;
      }

      sub_1DAA5616C(&v118, &v116);
      sub_1DAA7C694(&v116, &v112);
      if (!swift_dynamicCast())
      {
        v114 = 0u;
        v115 = 0u;
        goto LABEL_121;
      }

      v37 = v110;
      *&v112 = 0x73746E65746E6F63;
      *(&v112 + 1) = 0xE800000000000000;
      v38 = [v110 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v38)
      {
        sub_1DACB9B74();

        swift_unknownObjectRelease();
      }

      else
      {

        v112 = 0u;
        v113 = 0u;
      }

      v114 = v112;
      v115 = v113;
      if (*(&v113 + 1))
      {
        break;
      }

LABEL_121:
      __swift_destroy_boxed_opaque_existential_1(&v116);
      sub_1DAADFA60(&v114);
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_51:
    __swift_destroy_boxed_opaque_existential_1(&v116);
  }

  v87 = v112;
  sub_1DACB9A64();
  while (2)
  {
    while (2)
    {
      while (2)
      {
        sub_1DACB7954();
        if (!*(&v115 + 1))
        {

          (*v90)(v13, v98);
          goto LABEL_51;
        }

        sub_1DAA5616C(&v114, &v112);
        sub_1DAA7C694(&v112, &v108);
        if (!swift_dynamicCast())
        {
          v110 = 0u;
          v111 = 0u;
LABEL_62:
          sub_1DAADFA60(&v110);
          goto LABEL_63;
        }

        v39 = v106;
        *&v108 = 1953459315;
        *(&v108 + 1) = 0xE400000000000000;
        v40 = [v106 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v40)
        {
          sub_1DACB9B74();

          swift_unknownObjectRelease();
        }

        else
        {

          v108 = 0u;
          v109 = 0u;
        }

        v110 = v108;
        v111 = v109;
        if (!*(&v109 + 1))
        {
          goto LABEL_62;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v108 == __PAIR128__(0xEA0000000000302DLL, 0x73656C6369747261))
        {
        }

        else
        {
          v41 = sub_1DACBA174();

          if ((v41 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        sub_1DAA7C694(&v112, &v110);
        v42 = sub_1DAA420F4(0, &qword_1ECBE9850, 0x1E695DF90);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_63:
          __swift_destroy_boxed_opaque_existential_1(&v112);
          continue;
        }

        break;
      }

      v86 = v42;
      v43 = v108;
      *&v108 = 0x736D657469;
      *(&v108 + 1) = 0xE500000000000000;
      v44 = sub_1DACBA1D4();
      v89 = v43;
      v45 = [v43 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v45)
      {
        sub_1DACB9B74();
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0u;
        v109 = 0u;
      }

      v110 = v108;
      v111 = v109;
      if (!*(&v109 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v112);

        sub_1DAADFA60(&v110);
        continue;
      }

      break;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v112);

      continue;
    }

    break;
  }

  v46 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  sub_1DACB71E4();
  v85 = [v46 init];
  *&v110 = 0x736D657469;
  *(&v110 + 1) = 0xE500000000000000;
  v47 = [v89 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v47)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
    sub_1DAA5616C(&v108, &v110);
    swift_dynamicCast();
    v49 = v106;
    v50 = v95;
    sub_1DACB9A64();

    sub_1DACB7954();
    if (*(&v111 + 1))
    {
      v51 = v93;
      while (1)
      {
        v84 = v51;
        while (1)
        {
          sub_1DAA5616C(&v110, &v108);
          sub_1DAA7C694(&v108, &v106);
          if (swift_dynamicCast())
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1(&v108);
          sub_1DACB7954();
          if (!*(&v111 + 1))
          {
            goto LABEL_120;
          }
        }

        sub_1DAA7C694(&v108, &v106);
        swift_dynamicCast();
        v52 = v104;
        *&v104 = 1635017060;
        *(&v104 + 1) = 0xE400000000000000;
        v53 = sub_1DACBA1D4();
        v82 = v52;
        v54 = [v52 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v54)
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v104 = 0u;
          v105 = 0u;
        }

        v106 = v104;
        v107 = v105;
        v50 = v95;
        if (!*(&v105 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_105;
        }

        v55 = v101;
        *&v106 = 0x696669746E656469;
        *(&v106 + 1) = 0xEA00000000007265;
        v56 = sub_1DACBA1D4();
        v81 = v55;
        v57 = [v55 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v57)
        {

          v106 = 0u;
          v107 = 0u;
          sub_1DAADFA60(&v106);
          v50 = v95;
          goto LABEL_105;
        }

        sub_1DACB9B74();
        swift_unknownObjectRelease();
        sub_1DAADFA60(&v106);
        *&v104 = 1701869940;
        *(&v104 + 1) = 0xE400000000000000;
        v58 = [v82 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v58)
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v104 = 0u;
          v105 = 0u;
        }

        v106 = v104;
        v107 = v105;
        if (!*(&v105 + 1))
        {
          sub_1DAADFA60(&v106);
LABEL_104:

          v50 = v95;
LABEL_105:
          v59 = v82;
          [v85 addObject_];

          __swift_destroy_boxed_opaque_existential_1(&v108);
          goto LABEL_106;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_104;
        }

        if (v101 == 0x656C6369747261 && v102 == 0xE700000000000000)
        {
        }

        else
        {
          v60 = sub_1DACBA174();

          if ((v60 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        if (*(v84 + 2))
        {
          v61 = sub_1DACB98D4();
          *&v106 = 1635017060;
          *(&v106 + 1) = 0xE400000000000000;
          v62 = sub_1DACBA1D4();
          v80 = v61;
          v63 = [v61 __swift_objectForKeyedSubscript_];
          result = swift_unknownObjectRelease();
          if (!v63)
          {
            goto LABEL_137;
          }

          sub_1DACB9B74();
          swift_unknownObjectRelease();
          sub_1DAA5616C(&v104, &v106);
          result = swift_dynamicCast();
          v64 = *(v84 + 2);
          if (!v64)
          {
            __break(1u);
            goto LABEL_136;
          }

          v65 = v84;
          v66 = *(v84 + 5);
          v78 = *(v84 + 4);
          v79 = v100;
          sub_1DACB71E4();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v65;
          if (!isUniquelyReferenced_nonNull_native || (v64 - 1) > *(v84 + 3) >> 1)
          {
            v84 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v64, 1, v84);
            v103 = v84;
          }

          sub_1DACA6F3C(0, 1, 0);
          v68 = sub_1DACB92F4();

          v101 = 0x696669746E656469;
          v102 = 0xEA00000000007265;
          v69 = sub_1DACBA1D4();
          v70 = v79;
          [v79 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          v71 = v80;
          [v85 addObject_];

          __swift_destroy_boxed_opaque_existential_1(&v108);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v108);
        }

        v50 = v95;
LABEL_106:
        sub_1DACB7954();
        v51 = v84;
        if (!*(&v111 + 1))
        {
          goto LABEL_120;
        }
      }

      sub_1DAADFA60(&v106);
      goto LABEL_105;
    }

LABEL_120:
    (*v90)(v50, v98);

    v72 = v85;
    v73 = sub_1DACB92F4();
    [v89 setValue:v72 forKey:v73];

    goto LABEL_63;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1DAC77CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAC77D48()
{
  if (!qword_1EE11D420)
  {
    type metadata accessor for ForYouConfigRecord(255);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D420);
    }
  }
}

uint64_t sub_1DAC77DA0(uint64_t a1)
{
  v2 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC77DFC(uint64_t a1)
{
  sub_1DAA4DD68(0, &qword_1ECBE9840, &qword_1ECBE9838, MEMORY[0x1E69E6EE0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAC77E84()
{
  result = qword_1EE11E810;
  if (!qword_1EE11E810)
  {
    type metadata accessor for ForYouConfigRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E810);
  }

  return result;
}

unint64_t sub_1DAC77EDC()
{
  result = qword_1ECBE9858;
  if (!qword_1ECBE9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9858);
  }

  return result;
}

unint64_t sub_1DAC77F50()
{
  result = qword_1ECBE9868;
  if (!qword_1ECBE9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9868);
  }

  return result;
}

unint64_t sub_1DAC77FA4()
{
  result = qword_1ECBE9880;
  if (!qword_1ECBE9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9880);
  }

  return result;
}

uint64_t sub_1DAC77FF8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA46020(255, &qword_1ECBE9870, &type metadata for TestForYouConfigRecordService.TopStoriesOverlayData.Article, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC78088()
{
  result = qword_1ECBE9898;
  if (!qword_1ECBE9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9898);
  }

  return result;
}

unint64_t sub_1DAC78100()
{
  result = qword_1ECBE98A0;
  if (!qword_1ECBE98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98A0);
  }

  return result;
}

unint64_t sub_1DAC78158()
{
  result = qword_1ECBE98A8;
  if (!qword_1ECBE98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98A8);
  }

  return result;
}

unint64_t sub_1DAC781B0()
{
  result = qword_1ECBE98B0;
  if (!qword_1ECBE98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98B0);
  }

  return result;
}

unint64_t sub_1DAC78204()
{
  result = qword_1ECBE98C0;
  if (!qword_1ECBE98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98C0);
  }

  return result;
}

void sub_1DAC78258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC782D4()
{
  result = qword_1ECBE98D0;
  if (!qword_1ECBE98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98D0);
  }

  return result;
}

unint64_t sub_1DAC7832C()
{
  result = qword_1ECBE98D8;
  if (!qword_1ECBE98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98D8);
  }

  return result;
}

unint64_t sub_1DAC78384()
{
  result = qword_1ECBE98E0;
  if (!qword_1ECBE98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98E0);
  }

  return result;
}

BOOL (*sub_1DAC783D8())(__int128 *a1)
{
  sub_1DAAD4C70(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return sub_1DAC797B4;
}

uint64_t sub_1DAC78448(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_1DACB71E4();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DAC784F4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 80);
      v10 = *(v7 + 112);
      v43 = *(v7 + 96);
      v44 = v10;
      v11 = *(v7 + 16);
      v12 = *(v7 + 48);
      v39 = *(v7 + 32);
      v40 = v12;
      v13 = *(v7 + 48);
      v14 = *(v7 + 80);
      v41 = *(v7 + 64);
      v42 = v14;
      v15 = *(v7 + 16);
      v38[0] = *v7;
      v38[1] = v15;
      v16 = *(v7 + 112);
      v35 = v43;
      v36 = v16;
      v31 = v39;
      v32 = v13;
      v33 = v41;
      v34 = v9;
      v45 = *(v7 + 128);
      v37 = *(v7 + 128);
      v29 = v38[0];
      v30 = v11;
      sub_1DAA806E4(v38, &v20);
      v17 = a1(&v29);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_1DAA9B1C8(&v20);
      v18 = v8-- == 0;
      v7 += 136;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v35;
    v27 = v36;
    v28 = v37;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_1DAA9B1C8(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1DAC78658(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v143 - v13;
  v15 = type metadata accessor for AppConfiguration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[7];
  v188 = a1[6];
  v189 = v19;
  v190 = a1[8];
  v20 = a1[3];
  v184 = a1[2];
  v185 = v20;
  v21 = a1[5];
  v186 = a1[4];
  v187 = v21;
  v22 = a1[1];
  v182 = *a1;
  v183 = v22;
  sub_1DAAD4C70(v2, &v176);
  v23 = v176;
  v24 = *&v176;
  if (v181 <= 4u)
  {
    if (v181 > 1u)
    {
      if (v181 == 2)
      {
        sub_1DAA4D460(&v176, &v158);
        v56 = *(&v159 + 1);
        v57 = v160;
        __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
        v58 = a1[7];
        v173 = a1[6];
        v174 = v58;
        v175 = a1[8];
        v59 = a1[3];
        v169 = a1[2];
        v170 = v59;
        v60 = a1[5];
        v171 = a1[4];
        v172 = v60;
        v61 = a1[1];
        v167 = *a1;
        v168 = v61;
        LOBYTE(v9) = (*(v57 + 16))(&v167, v56, v57);
        __swift_destroy_boxed_opaque_existential_1(&v158);
        return v9 & 1;
      }

      if (v181 == 3)
      {
        v25 = a1[7];
        v173 = a1[6];
        v174 = v25;
        v175 = a1[8];
        v26 = a1[3];
        v169 = a1[2];
        v170 = v26;
        v27 = a1[5];
        v171 = a1[4];
        v172 = v27;
        v28 = a1[1];
        v167 = *a1;
        v168 = v28;
        sub_1DAA9B6F0(&v167);
        v29 = [*sub_1DAA9B6E0(&v167) sourceChannelID];
        if (v29)
        {
          v9 = v29;
          v30 = sub_1DACB9324();
          v32 = v31;

          *&v158 = v30;
          *(&v158 + 1) = v32;
          MEMORY[0x1EEE9AC00](v33);
          *(&v143 - 2) = &v158;
          LOBYTE(v9) = sub_1DAC78448(sub_1DAA88730, (&v143 - 4), v23);

          return v9 & 1;
        }

        goto LABEL_26;
      }

      v66 = a1[7];
      v173 = a1[6];
      v174 = v66;
      v175 = a1[8];
      v67 = a1[3];
      v169 = a1[2];
      v170 = v67;
      v68 = a1[5];
      v171 = a1[4];
      v172 = v68;
      v69 = a1[1];
      v167 = *a1;
      v168 = v69;
      v70 = sub_1DAA9B6F0(&v167);
      v71 = sub_1DAA9B6E0(&v167);
      if (v70 != 1)
      {
        LOBYTE(v9) = *(v71 + 72) <= v24;
        return v9 & 1;
      }

      goto LABEL_100;
    }

    if (v181)
    {
      v77 = a1[7];
      v173 = a1[6];
      v174 = v77;
      v175 = a1[8];
      v78 = a1[3];
      v169 = a1[2];
      v170 = v78;
      v79 = a1[5];
      v171 = a1[4];
      v172 = v79;
      v80 = a1[1];
      v167 = *a1;
      v168 = v80;
      sub_1DAA9B6F0(&v167);
      v81 = *sub_1DAA9B6E0(&v167);
      if (([v81 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_42;
      }

      v82 = [v81 isBundlePaid];
      v83 = a1[7];
      v164 = a1[6];
      v165 = v83;
      v166 = a1[8];
      v84 = a1[3];
      v160 = a1[2];
      v161 = v84;
      v85 = a1[5];
      v162 = a1[4];
      v163 = v85;
      v86 = a1[1];
      v158 = *a1;
      v159 = v86;
      sub_1DAA9B6F0(&v158);
      v87 = [*sub_1DAA9B6E0(&v158) sourceChannel];
      if (v87)
      {
        if (v82)
        {
          LOBYTE(v9) = [v23 canGetBundleSubscriptionToChannel_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v9 & 1;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
LABEL_42:
        swift_unknownObjectRelease();
      }

      goto LABEL_100;
    }

    sub_1DAA4D460((&v176 + 8), v155);
    v39 = a1[7];
    v173 = a1[6];
    v174 = v39;
    v175 = a1[8];
    v40 = a1[3];
    v169 = a1[2];
    v170 = v40;
    v41 = a1[5];
    v171 = a1[4];
    v172 = v41;
    v42 = a1[1];
    v167 = *a1;
    v168 = v42;
    sub_1DAA9B6F0(&v167);
    v43 = *sub_1DAA9B6E0(&v167);
    v44 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v45 = [swift_unknownObjectRetain() isPaid];
    if ([v43 respondsToSelector_])
    {
      v46 = [v43 isBundlePaid];
    }

    else
    {
      v46 = 0;
    }

    v92 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    v93 = [v43 sourceChannel];
    if (v93)
    {
      v94 = [v93 identifier];
      swift_unknownObjectRelease();
      v144 = sub_1DACB9324();
      v96 = v95;

      if (v45)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v144 = 0;
      v96 = 0;
      if (v45)
      {
LABEL_46:
        v97 = [v23 purchaseProvider];
        if (v96)
        {
          v98 = [v97 purchasedTagIDs];
          v99 = sub_1DACB9804();

          LOBYTE(v98) = sub_1DAA65964(v144, v96, v99);
          v44 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;

          swift_unknownObjectRelease();
          if (v98)
          {

            swift_unknownObjectRelease();
LABEL_98:
            swift_unknownObjectRelease();
            goto LABEL_99;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v46)
        {
          swift_unknownObjectRelease();

          goto LABEL_89;
        }

LABEL_59:
        if (!v96)
        {
          swift_unknownObjectRelease();
          goto LABEL_89;
        }

        v110 = [objc_msgSend(v23 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v110, v110 + 1))
        {
          sub_1DACB9B74();
          swift_unknownObjectRelease();
        }

        else
        {
          v146 = 0u;
          v147 = 0u;
        }

        v158 = v146;
        v159 = v147;
        if (*(&v147 + 1))
        {
          sub_1DAB0AAC8();
          if (swift_dynamicCast())
          {
            v115 = *&v145[0];
            v116 = [*&v145[0] integerValue];
            if (v116 == -1)
            {

              goto LABEL_88;
            }

            v117 = v116;
LABEL_75:
            if (objc_getAssociatedObject(v110, ~v117))
            {
              sub_1DACB9B74();
              swift_unknownObjectRelease();
            }

            else
            {
              v146 = 0u;
              v147 = 0u;
            }

            v158 = v146;
            v159 = v147;
            if (*(&v147 + 1))
            {
              sub_1DAB0AAC8();
              if (swift_dynamicCast())
              {
                v118 = *&v145[0];
                v119 = [v118 integerValue];

                v44 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                if ((v119 ^ v117))
                {
LABEL_88:
                  v124 = [objc_msgSend(v23 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v125 = [v124 bundleChannelIDs];

                  v126 = sub_1DACB92F4();
                  LODWORD(v124) = [v125 containsObject_];

                  swift_unknownObjectRelease();
                  v92 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                  if (v124)
                  {
                    goto LABEL_98;
                  }

LABEL_89:
                  v164 = v188;
                  v165 = v189;
                  v166 = v190;
                  v160 = v184;
                  v161 = v185;
                  v162 = v186;
                  v163 = v187;
                  v158 = v182;
                  v159 = v183;
                  sub_1DAA9B6F0(&v158);
                  if (![*sub_1DAA9B6E0(&v158) v44[101]])
                  {
                    goto LABEL_98;
                  }

                  v127 = [v23 purchaseProvider];
                  v152 = v188;
                  v153 = v189;
                  v154 = v190;
                  v148 = v184;
                  v149 = v185;
                  v150 = v186;
                  v151 = v187;
                  v146 = v182;
                  v147 = v183;
                  sub_1DAA9B6F0(&v146);
                  v128 = [*sub_1DAA9B6E0(&v146) v92[103]];
                  if (!v128)
                  {
                    v130 = v92;
                    swift_unknownObjectRelease();
                    goto LABEL_102;
                  }

                  v129 = v128;
                  v130 = v92;
                  if ([swift_unknownObjectRetain() tagType] == 3)
                  {
                    v131 = [v129 asSection];
                    if (!v131 || (v132 = [v131 parentID], swift_unknownObjectRelease(), !v132))
                    {
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease_n();
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v132 = [v129 identifier];
                  }

                  v133 = sub_1DACB9324();
                  v135 = v134;

                  v136 = [v127 purchasedTagIDs];
                  v137 = sub_1DACB9804();

                  LOBYTE(v136) = sub_1DAA65964(v133, v135, v137);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease_n();
                  if (v136)
                  {
                    goto LABEL_98;
                  }

LABEL_102:
                  v138 = v156;
                  v139 = v157;
                  __swift_project_boxed_opaque_existential_1(v155, v156);
                  (*(v139 + 8))(v138, v139);
                  LODWORD(v9) = v18[3984];
                  sub_1DAA4D15C(v18, type metadata accessor for AppConfiguration);
                  if (v9 == 1)
                  {
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v140 = v156;
                    v141 = v157;
                    __swift_project_boxed_opaque_existential_1(v155, v156);
                    (*(v141 + 8))(v140, v141);
                    LODWORD(v9) = v18[3985];
                    sub_1DAA4D15C(v18, type metadata accessor for AppConfiguration);
                    v145[6] = v188;
                    v145[7] = v189;
                    v145[8] = v190;
                    v145[2] = v184;
                    v145[3] = v185;
                    v145[4] = v186;
                    v145[5] = v187;
                    v145[0] = v182;
                    v145[1] = v183;
                    sub_1DAA9B6F0(v145);
                    v142 = [v23 canGetBundleSubscriptionToChannel_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    LOBYTE(v9) = v142 ^ 1;
                  }

                  __swift_destroy_boxed_opaque_existential_1(v155);
                  return v9 & 1;
                }

LABEL_84:

                swift_unknownObjectRelease();
                v92 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                goto LABEL_89;
              }
            }

            else
            {
              sub_1DAA4D15C(&v158, sub_1DAADFABC);
            }

            if (v117)
            {
              goto LABEL_88;
            }

            goto LABEL_84;
          }
        }

        else
        {
          sub_1DAA4D15C(&v158, sub_1DAADFABC);
        }

        v115 = 0;
        v117 = 0;
        goto LABEL_75;
      }
    }

    if ((v46 & 1) == 0)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_99:
      __swift_destroy_boxed_opaque_existential_1(v155);
      goto LABEL_100;
    }

    goto LABEL_59;
  }

  if (v181 <= 6u)
  {
    if (v181 != 5)
    {
      result = v176 + 32;
      v88 = -*(v176 + 16);
      v89 = -1;
      while (v88 + v89 != -1)
      {
        if (++v89 >= v23[2])
        {
LABEL_108:
          __break(1u);
          return result;
        }

        v90 = result + 56;
        sub_1DAAD4C70(result, &v167);
        v91 = sub_1DAC78658(a1);
        sub_1DAAD4D7C(&v167);
        result = v90;
        if (v91)
        {
          goto LABEL_41;
        }
      }

LABEL_26:

      goto LABEL_100;
    }

    v47 = a1[7];
    v173 = a1[6];
    v174 = v47;
    v175 = a1[8];
    v48 = a1[3];
    v169 = a1[2];
    v170 = v48;
    v49 = a1[5];
    v171 = a1[4];
    v172 = v49;
    v50 = a1[1];
    v167 = *a1;
    v168 = v50;
    sub_1DAA9B6F0(&v167);
    v51 = [*sub_1DAA9B6E0(&v167) publishDate];
    if (v51)
    {
      v52 = v51;
      sub_1DACB7C74();

      (*(v5 + 32))(v14, v12, v4);
      sub_1DACB7CB4();
      sub_1DACB7B84();
      v54 = v53;
      v55 = *(v5 + 8);
      v55(v9, v4);
      v55(v14, v4);
      LOBYTE(v9) = v54 > v24;
      return v9 & 1;
    }

LABEL_100:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (v181 == 7)
  {
    result = v176 + 32;
    v62 = -*(v176 + 16);
    v63 = -1;
    while (v62 + v63 != -1)
    {
      if (++v63 >= v23[2])
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v64 = result + 56;
      sub_1DAAD4C70(result, &v167);
      v65 = sub_1DAC78658(a1);
      sub_1DAAD4D7C(&v167);
      result = v64;
      if ((v65 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_41;
  }

  if (v181 == 8)
  {
    result = v176 + 32;
    v35 = -*(v176 + 16);
    v36 = -1;
    while (v35 + v36 != -1)
    {
      if (++v36 >= v23[2])
      {
        goto LABEL_107;
      }

      v37 = result + 56;
      sub_1DAAD4C70(result, &v167);
      v38 = sub_1DAC78658(a1);
      sub_1DAAD4D7C(&v167);
      result = v37;
      if (v38)
      {
        goto LABEL_26;
      }
    }

LABEL_41:

    LOBYTE(v9) = 1;
    return v9 & 1;
  }

  if (!(v179 | v180 | v176 | v178 | v177 | *(&v176 + 1)))
  {
    v9 = [objc_opt_self() sharedInstance];
    if (v9)
    {
      v100 = a1[7];
      v173 = a1[6];
      v174 = v100;
      v175 = a1[8];
      v101 = a1[3];
      v169 = a1[2];
      v170 = v101;
      v102 = a1[5];
      v171 = a1[4];
      v172 = v102;
      v103 = a1[1];
      v167 = *a1;
      v168 = v103;
      sub_1DAA9B6F0(&v167);
      v104 = [v9 isNewsVersionAllowed_];

      LOBYTE(v9) = v104 ^ 1;
    }

    return v9 & 1;
  }

  v72 = v179 | v180 | v178 | v177 | *(&v176 + 1);
  if (v176 != 1 || v72)
  {
    if (v176 != 2 || v72)
    {
      if (v176 == 3 && !v72)
      {
        v111 = a1[7];
        v173 = a1[6];
        v174 = v111;
        v175 = a1[8];
        v112 = a1[3];
        v169 = a1[2];
        v170 = v112;
        v113 = a1[5];
        v171 = a1[4];
        v172 = v113;
        v114 = a1[1];
        v167 = *a1;
        v168 = v114;
        sub_1DAA9B6F0(&v167);
        LOBYTE(v9) = [*sub_1DAA9B6E0(&v167) contentType] != 2;
        return v9 & 1;
      }

      v120 = a1[7];
      v173 = a1[6];
      v174 = v120;
      v175 = a1[8];
      v121 = a1[3];
      v169 = a1[2];
      v170 = v121;
      v122 = a1[5];
      v171 = a1[4];
      v172 = v122;
      v123 = a1[1];
      v167 = *a1;
      v168 = v123;
      sub_1DAA9B6F0(&v167);
      v109 = [*sub_1DAA9B6E0(&v167) isPressRelease];
    }

    else
    {
      v105 = a1[7];
      v173 = a1[6];
      v174 = v105;
      v175 = a1[8];
      v106 = a1[3];
      v169 = a1[2];
      v170 = v106;
      v107 = a1[5];
      v171 = a1[4];
      v172 = v107;
      v108 = a1[1];
      v167 = *a1;
      v168 = v108;
      sub_1DAA9B6F0(&v167);
      v109 = [*sub_1DAA9B6E0(&v167) isAIGenerated];
    }

    LOBYTE(v9) = v109;
    return v9 & 1;
  }

  v73 = a1[7];
  v173 = a1[6];
  v174 = v73;
  v175 = a1[8];
  v74 = a1[3];
  v169 = a1[2];
  v170 = v74;
  v75 = a1[5];
  v171 = a1[4];
  v172 = v75;
  v76 = a1[1];
  v167 = *a1;
  v168 = v76;
  sub_1DAA9B6F0(&v167);
  LOBYTE(v9) = [*sub_1DAA9B6E0(&v167) hasThumbnail] ^ 1;
  return v9 & 1;
}