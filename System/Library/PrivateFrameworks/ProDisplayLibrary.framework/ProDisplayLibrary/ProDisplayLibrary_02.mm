uint64_t sub_25F7745A0()
{
  if (qword_27FDAFAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_27FDC1340;
  v1 = qword_27FDAFAA8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_25F774648(v2, v0);
  qword_27FDBF6C0 = result;
  return result;
}

uint64_t sub_25F774648(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_25F7BA450(&v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F774728()
{
  result = sub_25F792BB0(&unk_2871C3C68);
  qword_27FDBF6C8 = result;
  return result;
}

double sub_25F774750()
{
  v0 = sub_25F792BD8(&unk_2871C4A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C4B30);
  xmmword_27FDBF6D0 = xmmword_25F824940;
  qword_27FDBF6E0 = v0;
  unk_27FDBF6E8 = v2;
  xmmword_27FDBF6F0 = xmmword_25F824950;
  xmmword_27FDBF700 = xmmword_25F824960;
  *&xmmword_27FDBF710 = v3;
  *(&xmmword_27FDBF710 + 8) = xmmword_25F824970;
  *(&xmmword_27FDBF720 + 8) = xmmword_25F824980;
  qword_27FDBF738 = 0;
  LOBYTE(xmmword_27FDBF740) = 0;
  *(&xmmword_27FDBF740 + 8) = xmmword_25F824990;
  *&result = 48;
  *(&xmmword_27FDBF750 + 8) = xmmword_25F8249A0;
  byte_27FDBF768 = 0;
  *&xmmword_27FDBF770 = 1000;
  WORD4(xmmword_27FDBF770) = 0;
  qword_27FDBF780 = 0;
  return result;
}

int64x2_t sub_25F774884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDBF788);
  v41 = __swift_project_value_buffer(v7, qword_27FDBF788);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C4B58);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0x3F40624DD2F1A9FCLL;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 1;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F774E38(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25F774E9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF840 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDBF740;
  v13[8] = xmmword_27FDBF750;
  v13[9] = unk_27FDBF760;
  v2 = unk_27FDBF760;
  v13[10] = xmmword_27FDBF770;
  v3 = xmmword_27FDBF710;
  v4 = xmmword_27FDBF700;
  v13[4] = xmmword_27FDBF710;
  v13[5] = xmmword_27FDBF720;
  v5 = xmmword_27FDBF720;
  v6 = unk_27FDBF730;
  v13[6] = unk_27FDBF730;
  v13[7] = xmmword_27FDBF740;
  v13[0] = xmmword_27FDBF6D0;
  v13[1] = *&qword_27FDBF6E0;
  v8 = xmmword_27FDBF6D0;
  v7 = *&qword_27FDBF6E0;
  v9 = xmmword_27FDBF6F0;
  v13[2] = xmmword_27FDBF6F0;
  v13[3] = xmmword_27FDBF700;
  *(a1 + 128) = xmmword_27FDBF750;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDBF770;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDBF780;
  *(a1 + 176) = qword_27FDBF780;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F774F88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF848 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDBF788);

  return sub_25F77511C(v3, a1);
}

double sub_25F775030@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_25F824920;
  *(a1 + 16) = 1;
  return result;
}

double sub_25F775048@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

double sub_25F775060@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_25F8249C0;
  *(a1 + 24) = xmmword_25F8249D0;
  *(a1 + 40) = xmmword_25F8249E0;
  *(a1 + 56) = xmmword_25F8249F0;
  *(a1 + 72) = xmmword_25F8249F0;
  result = 0.9;
  *(a1 + 88) = xmmword_25F824A00;
  return result;
}

uint64_t sub_25F7750B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset.Info(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F77511C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F7751F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F82217C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F7752C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F82217C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HIDPresetData()
{
  result = qword_27FDB00A0;
  if (!qword_27FDB00A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F7753CC()
{
  sub_25F82217C();
  if (v0 <= 0x3F)
  {
    sub_25F77547C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F77547C()
{
  if (!qword_27FDB00B0)
  {
    v0 = sub_25F82279C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB00B0);
    }
  }
}

uint64_t sub_25F7754CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v102 - v8;
  memset(v114 + 4, 0, 60);
  LODWORD(v114[0]) = 17170808;
  v10 = type metadata accessor for Preset(0);
  v12 = a1 + *(v10 + 24);
  HIDWORD(v114[0]) = *v12;
  v13 = *(v12 + 48);
  v14 = *(v12 + 56);
  BYTE4(v114[3]) = *(v12 + 56);
  BYTE2(v114[5]) = 0;
  LODWORD(v16) = 2143289344;
  if (*(v12 + 72))
  {
    *&v11 = NAN;
  }

  else
  {
    v15 = *(v12 + 64);
    *&v11 = v15;
  }

  if (!*(v12 + 88))
  {
    v17 = *(v12 + 80);
    *&v16 = v17;
  }

  v18 = v13;
  if (v14)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = v18;
  }

  *(&v114[4] + 1) = v19;
  v114[1] = __PAIR64__(v16, v11);
  v20 = *(v12 + 96);
  v114[2] = vcvt_f32_f64(v20);
  v21 = *(v12 + 112);
  *&v114[3] = v21;
  v113 = a3;
  v111 = v16;
  v112 = v11;
  v110 = v20;
  if (a2 == 4376 || a2 == 4372)
  {
    if ((*(v12 + 121) & 1) == 0 || *(a1 + *(v10 + 20) + 168) > 500.0)
    {
      goto LABEL_13;
    }
  }

  else if ((*(v12 + 121) & 1) == 0)
  {
LABEL_13:
    v22 = 0;
    BYTE5(v114[4]) = 0;
    v23 = 1140457472;
    *(&v114[4] + 6) = 1140457472;
    *(&v114[3] + 5) = 0;
    goto LABEL_16;
  }

  BYTE5(v114[4]) = 1;
  v24 = a1 + *(v10 + 20);
  v25 = *(v24 + 160);
  v26 = *(v24 + 168);
  *&v27 = v25;
  *(&v114[4] + 6) = v27;
  *&v25 = v25 / v26;
  *(&v114[3] + 5) = LODWORD(v25);
  v22 = LODWORD(v25);
  v23 = v27;
LABEL_16:
  memset(v131, 0, sizeof(v131));
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  memset(v126, 0, sizeof(v126));
  v125 = 0u;
  v124 = 0u;
  v123 = 17039737;
  v28 = a1 + *(v10 + 20);
  v29 = *(v28 + 48);
  v30 = *(v28 + 16);
  v116 = *v28;
  v117 = v30;
  v118 = *(v28 + 32);
  LOBYTE(v119) = v29;
  v31 = sub_25F7777B8(&v116);
  if (v3)
  {
    return sub_25F777D4C(a1, type metadata accessor for Preset);
  }

  *&v124 = v31;
  *(&v124 + 1) = v32;
  *&v125 = v33;
  v34 = *(v28 + 128);
  v121 = *(v28 + 112);
  v122 = v34;
  v35 = sub_25F777948(&v121);
  *(&v125 + 1) = v35;
  v37 = *(v28 + 160);
  v38 = *(v28 + 168);
  *(&v127 + 3) = v37;
  *(&v128 + 1) = v38;
  v39 = *(v28 + 176);
  *(&v128 + 3) = v39;
  v40 = *(v28 + 184);
  MEMORY[0x28223BE20](v35);
  *(&v102 - 2) = a1;
  sub_25F7941DC(sub_25F777ACC, v40, v115);
  v116 = v115[0];
  v117 = v115[1];
  v118 = v115[2];
  v119 = v115[3];
  v120 = v115[4];
  if (*(&v115[4] + 1) == 1)
  {
    sub_25F777B1C();
    swift_allocError();
    *v41 = 0xD00000000000004BLL;
    v41[1] = 0x800000025F82D5A0;
    swift_willThrow();
    return sub_25F777D4C(a1, type metadata accessor for Preset);
  }

  v42 = v116;
  v132 = v116;
  v134 = *(&v115[1] + 1);
  v135 = *(&v115[2] + 1);
  *v136 = *(&v115[3] + 1);
  v133 = *(v115 + 1);
  *&v136[15] = v115[4];
  if (v116 == 6)
  {
    sub_25F777B70(&v116);
    sub_25F7DE2A4(&v126[3]);
    v43 = 1074580685;
    goto LABEL_27;
  }

  if (v116 == 1)
  {
    sub_25F777B70(&v116);
    sub_25F7DE254(&v126[3], LODWORD(v38));
    v43 = 1075419546;
LABEL_27:
    v126[1] = v43;
    goto LABEL_28;
  }

  if (v116)
  {
    *&v115[0] = 0;
    *(&v115[0] + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v115[0] = 0xD000000000000028;
    *(&v115[0] + 1) = 0x800000025F82D5F0;
    if (v42 > 3)
    {
      v51 = 0xE300000000000000;
      if (v42 == 4)
      {
        v52 = 4672584;
      }

      else
      {
        v52 = 5391432;
      }
    }

    else if (v42 == 2)
    {
      v51 = 0xE200000000000000;
      v52 = 20816;
    }

    else
    {
      v51 = 0xE300000000000000;
      v52 = 5328961;
    }

    MEMORY[0x25F8E7510](v52, v51);

    v100 = v115[0];
    sub_25F777B1C();
    swift_allocError();
    *v101 = v100;
    swift_willThrow();
    sub_25F777B70(&v116);
    return sub_25F777D4C(a1, type metadata accessor for Preset);
  }

  sub_25F775E24(&v132, &v123);
  sub_25F777B70(&v116);
LABEL_28:
  v44 = vcvt_hight_f32_f64(__PAIR64__(v111, v112), v110);
  v45 = *(v40 + 16);
  v46 = (v40 + 32);
  v47 = v45 + 1;
  v48 = (v40 + 32);
  while (--v47)
  {
    v49 = *v48;
    v48 += 80;
    if (v49 == 2)
    {
      v50 = 1;
      BYTE4(v129) = 1;
      if (*(v28 + 208) == 1)
      {
        BYTE6(v129) = 1;
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  BYTE4(v129) = v42 == 2;
  if (*(v28 + 208))
  {
    v50 = 0;
    BYTE6(v129) = 1;
    goto LABEL_40;
  }

  v50 = 0;
LABEL_39:
  BYTE6(v129) = 0;
LABEL_40:
  BYTE8(v129) = v50;
  BYTE10(v129) = 0;
  v53 = v45 + 1;
  while (--v53)
  {
    v54 = *v46;
    v46 += 80;
    if (v54 == 5)
    {
      v55 = 1;
      goto LABEL_45;
    }
  }

  v55 = 0;
LABEL_45:
  BYTE12(v129) = v55;
  v61 = *(v28 + 48) == 1 && (v56 = *(v28 + 24), v57 = *v28, v58 = *(v28 + 32) | *(v28 + 40), v59 = *(v28 + 16) | *(v28 + 8), v58 | *v28 | v56 | v59) && ((v60 = v58 | v56 | v59, v57 != 1) || v60) && v57 == 2 && !v60;
  BYTE14(v129) = v61;
  if (*(v28 + 243))
  {
    v62 = 1;
  }

  else
  {
    v62 = 3;
  }

  LOBYTE(v130) = v62;
  *&v114[1] = vrev32q_s8(v44);
  LODWORD(v114[3]) = bswap32(LODWORD(v21));
  *(&v114[3] + 5) = bswap32(v22);
  *(&v114[4] + 1) = bswap32(LODWORD(v19));
  *(&v114[4] + 6) = bswap32(v23);
  sub_25F7DE064(&v123);
  v63 = sub_25F777BD8(v114, 63);
  v65 = v64;
  v66 = sub_25F7F489C(v63, v64);
  sub_25F76D178(v63, v65);
  HIBYTE(v114[7]) = v66;
  v67 = sub_25F777BD8(&v123, 191);
  v69 = v68;
  v70 = sub_25F7F489C(v67, v68);
  sub_25F76D178(v67, v69);
  v131[27] = v70;
  sub_25F777C88(a1, v9);
  v71 = sub_25F82217C();
  *&v112 = &v102;
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v102 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v72 + 32);
  v103 = v71;
  v75(v74, v9, v71);
  v76 = type metadata accessor for Preset.Info(0);
  v77 = v76[6];
  v78 = (a1 + v76[5]);
  v79 = v78[1];
  v102 = *v78;
  v80 = a1 + v77;
  v81 = *(a1 + v77);
  v104 = *(v80 + 8);
  v105 = v81;
  LODWORD(v111) = *(a1 + v76[7]) == 1;
  v82 = sub_25F777BD8(v114, 64);
  v109 = v83;
  *&v110.f64[0] = v82;
  v84 = sub_25F777BD8(&v123, 192);
  v107 = v85;
  v108 = v84;
  v86 = type metadata accessor for HIDPresetData();
  v87 = v113;
  v106 = (v113 + v86[11]);
  (*(v72 + 16))(v113, v74, v71);
  *&v115[0] = v102;
  *(&v115[0] + 1) = v79;

  v88 = sub_25F8224CC();
  v89 = (v87 + v86[5]);
  *v89 = v88;
  v89[1] = v90;
  *&v115[0] = v105;
  *(&v115[0] + 1) = v104;

  v91 = sub_25F8224CC();
  v93 = v92;
  (*(v72 + 8))(v74, v103);
  v94 = (v87 + v86[6]);
  *v94 = v91;
  v94[1] = v93;
  *(v87 + v86[7]) = 1;
  *(v87 + v86[8]) = v111;
  v95 = v87 + v86[9];
  v96 = v109;
  *v95 = v110.f64[0];
  *(v95 + 8) = v96;
  v97 = (v87 + v86[10]);
  v98 = v107;
  *v97 = v108;
  v97[1] = v98;
  v99 = v106;
  *v106 = 0;
  *(v99 + 8) = 1;
  return sub_25F777D4C(a1, type metadata accessor for Preset);
}

unint64_t sub_25F775E24(double *a1, uint64_t a2)
{
  if (a1[8])
  {
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    sub_25F82292C();
    v19 = v14;
    MEMORY[0x25F8E7510](0xD000000000000027, 0x800000025F82D620);
    v3 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v3;
    v18 = *(a1 + 4);
    v4 = *(a1 + 1);
    v14 = *a1;
    v15 = v4;
    sub_25F8229FC();
    v6 = *(&v19 + 1);
    v5 = v19;
LABEL_6:
    sub_25F777B1C();
    swift_allocError();
    *v10 = v5;
    v10[1] = v6;
    return swift_willThrow();
  }

  v8 = a1[7];
  result = sub_25F772CEC(2uLL, 30, &v14, v8);
  if (BYTE8(v15))
  {
    __break(1u);
  }

  else
  {
    if ((v14 + 1503238553) <= 0xCCCCCCCB)
    {
      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000014, 0x800000025F82D650);
      sub_25F8225FC();
      v6 = *(&v14 + 1);
      v5 = v14;
      goto LABEL_6;
    }

    result = sub_25F7DE1D8(v20, v8);
    v11 = v20[1];
    *(a2 + 48) = v20[0];
    *(a2 + 64) = v11;
    v12 = v20[3];
    *(a2 + 80) = v20[2];
    *(a2 + 96) = v12;
    v13 = v8;
    *(a2 + 40) = v13;
  }

  return result;
}

unint64_t sub_25F775FE8(double a1, double a2)
{
  *&v2 = a1;
  v3 = v2;
  v4 = a2;
  if ((v3 - 1051797226) >= 0xFFE7EF9D && (LODWORD(v4) - 1052233434) >= 0xFFE8F5C2)
  {
    return v3 | (LODWORD(v4) << 32);
  }

  sub_25F82292C();

  v6 = WhitePoint.description.getter();
  MEMORY[0x25F8E7510](v6);

  MEMORY[0x25F8E7510](0xD000000000000011, 0x800000025F82D6C0);
  sub_25F777B1C();
  swift_allocError();
  *v7 = 0xD000000000000012;
  v7[1] = 0x800000025F82D6A0;
  return swift_willThrow();
}

uint64_t sub_25F776128@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v165 - v8;
  v10 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Preset(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v192 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HIDPresetData();
  if (*(a1 + v16[7]) != 1)
  {
    sub_25F777D4C(a1, type metadata accessor for HIDPresetData);
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  v190 = v14;
  v191 = v13;
  v17 = (a1 + v16[9]);
  v19 = *v17;
  v18 = v17[1];
  v20 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_16;
    }

    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    _VF = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!_VF)
    {
      if (v25 == 64)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v20)
  {
    v25 = (HIDWORD(v19) - v19);
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      if (v25 == 64)
      {
        goto LABEL_10;
      }

LABEL_16:
      v12 = v18;
      v10 = 0xD000000000000011;
      *&v207[0] = 0;
      *(&v207[0] + 1) = 0xE000000000000000;
      sub_25F82292C();
      a2 = v207;
      v16 = MEMORY[0x25F8E7510](0xD000000000000011, 0x800000025F82D710);
      if (v20 <= 1)
      {
        if (!v20)
        {
          v25 = BYTE6(v12);
LABEL_35:
          *&v222[0] = v25;
          v35 = sub_25F822C7C();
          MEMORY[0x25F8E7510](v35);

          MEMORY[0x25F8E7510](v10 + 15, 0x800000025F82D730);
          v36 = 64;
LABEL_50:
          LODWORD(v222[0]) = v36;
          v41 = sub_25F822C7C();
          MEMORY[0x25F8E7510](v41);

          v42 = v207[0];
          sub_25F777CF8();
          swift_allocError();
          *v43 = v42;
          swift_willThrow();
          return sub_25F777D4C(a1, type metadata accessor for HIDPresetData);
        }

        goto LABEL_33;
      }

      v25 = 0;
      if (v20 != 2)
      {
        goto LABEL_35;
      }

      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      _VF = __OFSUB__(v27, v28);
      v25 = v27 - v28;
      if (!_VF)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_130;
  }

  if (BYTE6(v18) != 64)
  {
    goto LABEL_16;
  }

LABEL_10:
  v186 = v2;
  v26 = (a1 + v16[10]);
  v4 = *v26;
  v188 = v26[1];
  v189 = a1;
  a1 = v188 >> 62;
  if ((v188 >> 62) <= 1)
  {
    if (a1)
    {
      v25 = (HIDWORD(v4) - v4);
      if (__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      if (v25 == 192)
      {
        goto LABEL_26;
      }
    }

    else if (BYTE6(v188) == 192)
    {
      goto LABEL_26;
    }

LABEL_38:
    LOBYTE(v20) = 17;
    *&v207[0] = 0;
    *(&v207[0] + 1) = 0xE000000000000000;
    sub_25F82292C();
    a2 = v207;
    MEMORY[0x25F8E7510](0xD000000000000011, 0x800000025F82D760);
    if (a1 > 1)
    {
      v25 = 0;
      _ZF = a1 == 2;
      a1 = v189;
      if (!_ZF)
      {
        goto LABEL_49;
      }

      v39 = *(v4 + 16);
      v38 = *(v4 + 24);
      _VF = __OFSUB__(v38, v39);
      v25 = v38 - v39;
      if (!_VF)
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    else if (!a1)
    {
      v25 = BYTE6(v188);
LABEL_48:
      a1 = v189;
LABEL_49:
      *&v222[0] = v25;
      v40 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v40);

      MEMORY[0x25F8E7510](0xD000000000000020, 0x800000025F82D730);
      v36 = 192;
      goto LABEL_50;
    }

    v25 = (HIDWORD(v4) - v4);
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v25 = v25;
    goto LABEL_48;
  }

LABEL_23:
  if (a1 != 2)
  {
    goto LABEL_38;
  }

  v30 = *(v4 + 16);
  v29 = *(v4 + 24);
  _VF = __OFSUB__(v29, v30);
  v25 = v29 - v30;
  if (_VF)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v25 != 192)
  {
    goto LABEL_38;
  }

LABEL_26:
  v184 = v16;
  v175 = a2;
  if (v20 == 2)
  {
    v44 = *(v19 + 16);
    v187 = *&v18;
    v45 = sub_25F821E4C();
    if (v45)
    {
      v46 = v45;
      v47 = sub_25F821E7C();
      if (__OFSUB__(v44, v47))
      {
        goto LABEL_137;
      }

      v20 = v44 - v47 + v46;
      sub_25F821E6C();
      if (v20)
      {
LABEL_55:
        v34.i32[0] = *(v20 + 4);
        v174 = vmovl_u8(v34);
        v18 = *(v20 + 8);
        v48 = *(v20 + 12);
        v3 = *(v20 + 16);
        v49 = *(v20 + 24);
        v166 = *(v20 + 33);
        v167 = v49;
        v170 = v18 >> 8;
        v50 = *(v20 + 37);
        v169 = WORD1(v18);
        v168 = v48 >> 8;
        v172 = v48;
        v171 = v48 & 0xFFFF0000;
        goto LABEL_57;
      }
    }

    else
    {
      sub_25F821E6C();
    }

    __break(1u);
    goto LABEL_145;
  }

  if (v20 == 1)
  {
    v31 = v19;
    if (v19 <= v19 >> 32)
    {
      v187 = *&v18;
      v32 = sub_25F821E4C();
      if (v32)
      {
        v19 = v32;
        v33 = sub_25F821E7C();
        if (!__OFSUB__(v31, v33))
        {
          v20 = v31 - v33 + v19;
          a2 = (*&v187 & 0x3FFFFFFFFFFFFFFFLL);
          sub_25F821E6C();
          if (!v20)
          {
            __break(1u);
LABEL_33:
            v25 = (HIDWORD(v19) - v19);
            if (!__OFSUB__(HIDWORD(v19), v19))
            {
              v25 = v25;
              goto LABEL_35;
            }

            goto LABEL_131;
          }

          goto LABEL_55;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_145:
      sub_25F821E6C();
      __break(1u);
      goto LABEL_146;
    }

    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v171 = 0;
  v50 = 0;
  v51 = vdupq_n_s64(v19);
  v52 = vuzp1q_s32(vshlq_u64(v51, xmmword_25F824A60), vshlq_u64(v51, xmmword_25F824A50));
  v169 = v18 >> 16;
  v170 = v18 >> 8;
  *v52.i8 = vmovn_s32(v52);
  v174 = v52;
  v172 = HIDWORD(v18);
  v168 = v18 >> 40;
LABEL_57:
  v185 = v12;
  v187 = *&v18;
  v173 = v50;
  if (a1 == 2)
  {
    goto LABEL_64;
  }

  if (a1 == 1)
  {
    v53 = v189;
    if (v4 <= v4 >> 32)
    {
      v54 = sub_25F821E4C();
      if (!v54)
      {
LABEL_148:
        result = sub_25F821E6C();
        __break(1u);
        return result;
      }

      v55 = v54;
      v56 = sub_25F821E7C();
      if (__OFSUB__(v4, v56))
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v4 = v4 - v56 + v55;
      sub_25F821E6C();
      if (v4)
      {
LABEL_67:
        v229 = *(v4 + 128);
        v230 = *(v4 + 144);
        v231 = *(v4 + 160);
        v232 = *(v4 + 176);
        v225 = *(v4 + 64);
        v226 = *(v4 + 80);
        v227 = *(v4 + 96);
        v228 = *(v4 + 112);
        v222[0] = *v4;
        v222[1] = *(v4 + 16);
        v223 = *(v4 + 32);
        v224 = *(v4 + 48);
        goto LABEL_69;
      }

      __break(1u);
LABEL_64:
      v57 = *(v4 + 16);
      v58 = sub_25F821E4C();
      if (v58)
      {
        v59 = v58;
        v60 = sub_25F821E7C();
        v53 = v189;
        if (!__OFSUB__(v57, v60))
        {
          v4 = v57 - v60 + v59;
          sub_25F821E6C();
          if (v4)
          {
            goto LABEL_67;
          }

          goto LABEL_147;
        }

        goto LABEL_140;
      }

LABEL_146:
      sub_25F821E6C();
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v53 = v189;
  *&v222[0] = v4;
  DWORD2(v222[0]) = v188;
  WORD6(v222[0]) = WORD2(v188);
LABEL_69:
  sub_25F7DE064(v222);
  v61 = (v53 + v184[5]);
  v62 = *v61;
  v63 = v61[1];
  v64 = (v53 + v184[6]);
  v65 = *v64;
  v66 = *(v64 + 1);
  v182 = v62;
  v183.f64[0] = v65;
  v176 = v63;
  v177 = v66;
  LODWORD(v188) = *(v53 + v184[8]);
  v67 = sub_25F82217C();
  v68 = v185;
  (*(*(v67 - 8) + 16))(v185, v53, v67);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v69 = *(v179 - 8);
  v178 = *(v69 + 56);
  v180 = v69 + 56;
  v178(v9, 1, 1, v179);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v181 = &v165;
  MEMORY[0x28223BE20](v70 - 8);
  v72 = &v165 - v71;

  sub_25F8220FC();
  v73 = sub_25F82210C();
  v74 = *(*(v73 - 8) + 56);
  v74(v72, 0, 1, v73);
  v75 = v10[8];
  v74((v68 + v75), 1, 1, v73);
  v76 = v10[9];
  v178((v68 + v76), 1, 1, v179);
  v77 = (v68 + v10[5]);
  v78 = v176;
  *v77 = v182;
  v77[1] = v78;
  v79 = (v68 + v10[6]);
  v80 = v177;
  *v79 = *&v183.f64[0];
  v79[1] = v80;
  *(v68 + v10[7]) = v188;
  sub_25F760E58(v72, v68 + v75, &qword_27FDAFC20);
  sub_25F760E58(v9, v68 + v76, &qword_27FDAFC10);
  if (BYTE4(v227) != 2)
  {
    if (BYTE4(v227) != 1)
    {
      if (BYTE4(v227))
      {
        v94 = DWORD1(v227);
        *&v207[0] = 0;
        *(&v207[0] + 1) = 0xE000000000000000;
        sub_25F82292C();

        *&v207[0] = 0xD000000000000018;
        *(&v207[0] + 1) = 0x800000025F82D780;
        LOBYTE(v193) = v94;
        v95 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v95);

        v96 = v207[0];
        sub_25F777CF8();
        swift_allocError();
        *v97 = v96;
        swift_willThrow();
        v98 = v68;
LABEL_111:
        sub_25F777D4C(v98, type metadata accessor for Preset.Info);
        a1 = v189;
        return sub_25F777D4C(a1, type metadata accessor for HIDPresetData);
      }

      LOBYTE(v207[0]) = 1;
      LOBYTE(v193) = 1;
      LOBYTE(v202) = 1;
      LOBYTE(v200) = 0;
      LOBYTE(v217) = 0;
      *(&v217 + 1) = 0;
      LOBYTE(v218) = 1;
      *(&v218 + 1) = 0;
      LOBYTE(v219) = 1;
      *(&v219 + 1) = 0;
      LOBYTE(v220) = 1;
      *(&v220 + 1) = vcvtd_n_f64_u64(DWORD1(v226), 0x1EuLL);
      LOBYTE(v221) = 0;
      goto LABEL_76;
    }

    if (qword_27FDAFB28 == -1)
    {
LABEL_74:
      v207[2] = xmmword_27FDB1408;
      v208[0] = *&byte_27FDB1418;
      v208[1] = xmmword_27FDB1428;
      v207[0] = xmmword_27FDB13E8;
      v207[1] = *&byte_27FDB13F8;
      sub_25F777DAC(v207, &v193);
      v219 = v207[2];
      v220 = v208[0];
      v221 = v208[1];
      v217 = v207[0];
      v218 = v207[1];
      goto LABEL_77;
    }

LABEL_142:
    swift_once();
    goto LABEL_74;
  }

  LOBYTE(v207[0]) = 0;
  LOBYTE(v193) = 0;
  LOBYTE(v202) = 1;
  LOBYTE(v200) = 1;
  LOBYTE(v217) = 1;
  *(&v217 + 1) = *(&v228 + 2);
  LOBYTE(v218) = 0;
  *(&v218 + 1) = 0;
  LOBYTE(v219) = 0;
  *(&v219 + 1) = 0;
  LOBYTE(v220) = 1;
  *(&v220 + 1) = 0;
  LOBYTE(v221) = 1;
LABEL_76:
  *(&v221 + 1) = 0;
LABEL_77:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  a2 = swift_allocObject();
  v81 = v219;
  v82 = v220;
  v83 = v217;
  a2[3] = v218;
  a2[4] = v81;
  v19 = v207;
  v84 = v221;
  a2[5] = v82;
  a2[6] = v84;
  a2[1] = xmmword_25F8249B0;
  a2[2] = v83;
  if (BYTE12(v229) == 1)
  {
    LOBYTE(v207[0]) = 1;
    LOBYTE(v193) = 1;
    LOBYTE(v202) = 1;
    LOBYTE(v200) = 1;
    sub_25F777DAC(&v217, v207);
    a2 = sub_25F75BE3C(1, 2, 1, a2);
    *(a2 + 2) = 2;
    *(a2 + 112) = 2;
    *(a2 + 15) = 0;
    *(a2 + 128) = 1;
    *(a2 + 17) = 0;
    *(a2 + 144) = 1;
    *(a2 + 19) = 0;
    *(a2 + 160) = 1;
    *(a2 + 21) = 0;
    *(a2 + 176) = 1;
    *(a2 + 23) = 0;
  }

  else
  {
    sub_25F777DAC(&v217, v207);
  }

  v4 = v222;
  if (v230 == 1)
  {
    LOBYTE(v20) = 1;
    LOBYTE(v207[0]) = 1;
    LOBYTE(v193) = 1;
    LOBYTE(v202) = 1;
    LOBYTE(v200) = 1;
    a1 = *(a2 + 2);
    v25 = *(a2 + 3);
    v10 = (a1 + 1);
    if (a1 < v25 >> 1)
    {
LABEL_82:
      *(a2 + 2) = v10;
      v85 = &a2[5 * a1];
      *(v85 + 32) = 5;
      v86 = *(v19 + 3);
      *(v85 + 33) = v207[0];
      *(v85 + 9) = v86;
      *(v85 + 5) = 0;
      *(v85 + 48) = v20;
      v87 = *(&v193 + 3);
      *(v85 + 49) = v193;
      *(v85 + 13) = v87;
      *(v85 + 7) = 0;
      *(v85 + 64) = v20;
      v88 = v202;
      *(v85 + 17) = *(&v202 + 3);
      *(v85 + 65) = v88;
      *(v85 + 9) = 0;
      *(v85 + 80) = v20;
      v89 = *(&v200 + 3);
      *(v85 + 81) = v200;
      *(v85 + 21) = v89;
      *(v85 + 11) = 0;
      *(v85 + 96) = v20;
      v90 = *&v198[3];
      *(v85 + 97) = *v198;
      *(v85 + 25) = v90;
      *(v85 + 13) = 0;
      goto LABEL_83;
    }

LABEL_135:
    a2 = sub_25F75BE3C((v25 > 1), v10, 1, a2);
    goto LABEL_82;
  }

LABEL_83:
  sub_25F777590(*(v4 + 4), *(v4 + 12), *(v4 + 20), &v193);
  v91 = v193;
  v92 = v197;
  if (v197 == 1 && *(&v195 + 1) | v196 | v193 | v195 | *(&v194 + 1) | v194)
  {
    v93 = *(&v195 + 1) | v196 | v195 | *(&v194 + 1) | v194;
    if (v193 != 1 || v93)
    {
      if (v193 != 2 || v93)
      {
        if (v93)
        {
          _CF = 1;
        }

        else
        {
          _CF = (v193 - 3) >= 2;
        }

        if (_CF)
        {
          v91 = 5;
        }
      }

      else if (BYTE2(v230))
      {
        v91 = 2;
      }

      else
      {
        v91 = 1;
        v193 = 1;
        v194 = 0u;
        v195 = 0u;
        v196 = 0;
        v197 = 1;
      }
    }

    else
    {
      v91 = 1;
    }
  }

  v100 = BYTE4(v230);
  if (BYTE4(v230) == 3)
  {
    LODWORD(v183.f64[0]) = 0;
    goto LABEL_104;
  }

  if (BYTE4(v230) != 1)
  {

    sub_25F777E08(&v217);
    *&v207[0] = 0;
    *(&v207[0] + 1) = 0xE000000000000000;
    sub_25F82292C();

    *&v207[0] = 0xD00000000000001ALL;
    *(&v207[0] + 1) = 0x800000025F82D7A0;
    LOBYTE(v202) = v100;
    v121 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v121);

    v122 = v207[0];
    sub_25F777CF8();
    swift_allocError();
    *v123 = v122;
    swift_willThrow();
    v98 = v185;
    goto LABEL_111;
  }

  LODWORD(v183.f64[0]) = 1;
LABEL_104:
  v182 = v196;
  v198[0] = 1;
  sub_25F777724(*(v4 + 28), &v202);
  v101 = v202;
  v181 = v203;
  v102 = v204;
  v103 = *&v228;
  v104 = *(&v228 + 2);
  v105 = *&v229;
  v106 = v217;
  v107 = *(&v223 + 2);
  v108 = BYTE10(v229) != 0;
  v109 = sub_25F792BC4(&unk_2871C41A0);
  sub_25F777E08(&v217);
  LOBYTE(v200) = v92;
  v206 = v102;
  v205 = 1;
  *(&v207[1] + 8) = v195;
  *(v207 + 8) = v194;
  *&v207[0] = v91;
  *(&v207[2] + 1) = v182;
  LOBYTE(v208[0]) = v92;
  *(v208 + 8) = 0u;
  *(&v208[1] + 8) = 0u;
  *(&v208[2] + 8) = 0u;
  BYTE8(v208[3]) = 0;
  BYTE9(v208[3]) = v198[0];
  *&v209 = v101;
  *(&v209 + 1) = v181;
  LOBYTE(v210) = v102;
  *(&v210 + 1) = 0;
  *&v211 = 0;
  WORD4(v211) = 256;
  *&v212 = v103;
  *(&v212 + 1) = v104;
  *&v213 = v105;
  *(&v213 + 1) = a2;
  LOBYTE(v214) = v106;
  *(&v214 + 1) = v107;
  LOWORD(v215[0]) = v108;
  __asm { FMOV            V0.2D, #1.0 }

  *(v215 + 8) = _Q0;
  *(&v215[1] + 1) = v109;
  LOWORD(v216) = 256;
  BYTE2(v216) = 1;
  HIBYTE(v216) = LOBYTE(v183.f64[0]);
  a1 = v189;
  v112 = v189 + v184[11];
  v113 = *v112;
  v114 = *(v112 + 8);
  if (v114)
  {
LABEL_105:
    sub_25F777E5C(v207);
    v202 = 0;
    v203 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000034, 0x800000025F82D7C0);
    v200 = v113;
    v201 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB00D0);
    v115 = sub_25F8223EC();
    MEMORY[0x25F8E7510](v115);

    MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F82D800);
    v116 = v202;
    v117 = v203;
    sub_25F777CF8();
    swift_allocError();
    *v118 = v116;
    v118[1] = v117;
    swift_willThrow();
    sub_25F777D4C(v185, type metadata accessor for Preset.Info);
    return sub_25F777D4C(a1, type metadata accessor for HIDPresetData);
  }

  if (v113 == 4372 || v113 == 4376)
  {
    v120 = 2.0;
    v119 = 2.0;
  }

  else
  {
    if (v113 != 37443)
    {
      goto LABEL_105;
    }

    v119 = 16.0;
    v120 = 5.0;
  }

  v124 = COERCE_FLOAT(bswap32(LODWORD(v187) & 0xFF0000FF | (v170 << 8) | (v169 << 16)));
  *&v125 = COERCE_FLOAT(bswap32(v171 | v172 | (v168 << 8)));
  v126 = COERCE_FLOAT(bswap32(v167));
  v127 = COERCE_FLOAT(bswap32(v166));
  v128 = vrev32_s8(v3);
  if (v104 >= v103)
  {
    v129 = v120;
  }

  else
  {
    v129 = v119;
  }

  v130 = v173 == 1;
  v131 = v124;
  v132 = (~LODWORD(v124) & 0x7F800000) == 0 && (LODWORD(v124) & 0x7FFFFF) != 0;
  if (v132)
  {
    v133 = 0.0;
  }

  else
  {
    v133 = v131;
  }

  v187 = v133;
  v134 = (~v125 & 0x7F800000) == 0;
  _ZF = (v125 & 0x7FFFFF) == 0;
  v135 = *&v125;
  v136 = v130 | v188;
  v137 = !_ZF;
  v138 = v135;
  v139 = v134 & v137;
  if (v139)
  {
    v140 = 0.0;
  }

  else
  {
    v140 = v138;
  }

  v188 = *&v140;
  v141.i16[0] = v174.u8[0];
  v141.i16[1] = v174.u8[2];
  v141.i16[2] = v174.u8[4];
  v141.i16[3] = v174.u8[6];
  v142 = vceqz_s16(v141);
  v143 = v127;
  LODWORD(v184) = v173 == 0;
  v144 = vtst_s16(v141, v141).i8[4] & 1;
  LOBYTE(v202) = v144;
  v145 = v126;
  LOBYTE(v200) = 0;
  v146 = (v136 & 1) == 0;
  v206 = 0;
  v147 = v132;
  v205 = v132;
  v148 = v139 & 1;
  v199 = v139 & 1;
  v149 = vcvtq_f64_f32(v128);
  v183 = v149;
  if (v144)
  {
    v150 = 0.0;
  }

  else
  {
    v150 = v149.f64[1];
  }

  v151 = v192;
  sub_25F777EB0(v185, v192, type metadata accessor for Preset.Info);
  v152 = v191;
  v153 = v151 + *(v191 + 20);
  v154 = v215[0];
  *(v153 + 192) = v214;
  *(v153 + 208) = v154;
  *(v153 + 224) = v215[1];
  *(v153 + 240) = v216;
  v155 = v211;
  *(v153 + 128) = v210;
  *(v153 + 144) = v155;
  v156 = v213;
  *(v153 + 160) = v212;
  *(v153 + 176) = v156;
  v157 = v208[2];
  *(v153 + 64) = v208[1];
  *(v153 + 80) = v157;
  v158 = v209;
  *(v153 + 96) = v208[3];
  *(v153 + 112) = v158;
  v159 = v207[1];
  *v153 = v207[0];
  *(v153 + 16) = v159;
  v160 = v208[0];
  *(v153 + 32) = v207[2];
  *(v153 + 48) = v160;
  v161 = v151 + *(v152 + 24);
  v162 = vbic_s8(0x1000100010001, v142);
  *v161 = vuzp1_s8(v162, v162).u32[0];
  *(v161 + 16) = v144;
  *(v161 + 17) = v130;
  *(v161 + 24) = v129;
  *(v161 + 32) = 0;
  *(v161 + 33) = v146;
  *(v161 + 40) = 0;
  *(v161 + 48) = v143;
  *(v161 + 56) = 0;
  v163 = v188;
  *(v161 + 64) = v187;
  *(v161 + 72) = v147;
  *(v161 + 80) = v163;
  *(v161 + 88) = v148;
  *(v161 + 8) = v150;
  *(v161 + 96) = v183;
  *(v161 + 112) = v145;
  *(v161 + 120) = v184;
  *(v161 + 121) = v130;
  *(v161 + 122) = 1;
  *(v161 + 123) = v130;
  v164 = v175;
  sub_25F777EB0(v151, v175, type metadata accessor for Preset);
  (*(v190 + 56))(v164, 0, 1, v152);
  return sub_25F777D4C(v189, type metadata accessor for HIDPresetData);
}

double sub_25F777590@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 == 1059984507 && HIDWORD(a1) == 1050924810 && a2 == 1049079316 && HIDWORD(a2) == 1060152279 && a3 == 1041865114 && HIDWORD(a3) == 1031127695)
  {
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
LABEL_40:
    *(a4 + 48) = 1;
    return result;
  }

  if (a1 == 1059313418 && HIDWORD(a1) == 1051260355 && a2 == 1050253722 && HIDWORD(a2) == 1058642330 && a3 == 1041865114 && HIDWORD(a3) == 1031127695)
  {
    v14 = 2;
    goto LABEL_39;
  }

  if (a1 == 0x3EAE147B3F2147AELL && a2 == 0x3F1851EC3E9EB852 && a3 == 0x3D8F5C293E1EB852)
  {
    v14 = 3;
LABEL_39:
    *a4 = v14;
    result = 0.0;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0;
    goto LABEL_40;
  }

  if (a1 == 0x3EA8F5C33F23D70ALL && a2 == 0x3F19999A3E947AE1 && a3 == 0x3D75C28F3E19999ALL)
  {
    v14 = 4;
    goto LABEL_39;
  }

  *a4 = *&a1;
  *(a4 + 8) = *(&a1 + 1);
  *(a4 + 16) = *&a2;
  *(a4 + 24) = *(&a2 + 1);
  result = *(&a3 + 1);
  *(a4 + 32) = *&a3;
  *(a4 + 40) = *(&a3 + 1);
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_25F777724@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 1051786153 && HIDWORD(result) == 1052216656)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    if (result == 1050679863 && HIDWORD(result) == 1051226800)
    {
      v5 = xmmword_25F824920;
    }

    else
    {
      if (result != 1050723484 || HIDWORD(result) != 1051964998)
      {
        *a2 = *&result;
        *(a2 + 8) = *(&result + 1);
        *(a2 + 16) = 0;
        return result;
      }

      v5 = xmmword_25F824930;
    }

    *a2 = v5;
  }

  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_25F7777B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  if (*(a1 + 48) == 1)
  {
    if (!(v3 | v2 | v1 | v4 | v5 | v6))
    {
      v9 = &qword_25F827F54;
      return *v9;
    }

    v7 = v3 | v2 | v4 | v5 | v6;
    if ((v1 - 1) <= 1 && v7 == 0)
    {
      v9 = &qword_25F827F6C;
      return *v9;
    }

    if (v1 == 3 && !v7)
    {
      v9 = &qword_25F827F84;
      return *v9;
    }

    if (v1 == 4 && !v7)
    {
      v9 = &qword_25F827F9C;
      return *v9;
    }
  }

  sub_25F82292C();

  v12 = ColorSpace.description.getter(v11);
  MEMORY[0x25F8E7510](v12);

  MEMORY[0x25F8E7510](0xD000000000000024, 0x800000025F82D6E0);
  sub_25F777B1C();
  swift_allocError();
  *v13 = 0x617073726F6C6F63;
  v13[1] = 0xEB00000000206563;
  return swift_willThrow();
}

unint64_t sub_25F777948(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 > 2uLL)
    {
      if (__PAIR128__((*&v2 >= 4uLL) + v3 - 1, *&v2 - 4) >= 2)
      {
        v4 = &dword_25F827FC4;
        goto LABEL_13;
      }
    }

    else
    {
      if (!(*&v2 | v3))
      {
        v4 = &dword_25F827FB4;
        goto LABEL_13;
      }

      if (*&v2 ^ 1 | v3)
      {
        v4 = &dword_25F827FBC;
LABEL_13:
        LODWORD(result) = *v4;
        v6 = v4[1];
        return result | (v6 << 32);
      }
    }

    sub_25F82292C();

    v7 = WhitePoint.description.getter();
    MEMORY[0x25F8E7510](v7);

    MEMORY[0x25F8E7510](0xD000000000000023, 0x800000025F82D670);
    sub_25F777B1C();
    swift_allocError();
    *v8 = 0x696F706574696877;
    v8[1] = 0xEB0000000020746ELL;
    return swift_willThrow();
  }

  else
  {
    result = sub_25F775FE8(*a1, *(a1 + 8));
    if (!v1)
    {
      v6 = HIDWORD(result);
      return result | (v6 << 32);
    }
  }

  return result;
}

BOOL sub_25F777ACC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v3 == *(v2 + *(type metadata accessor for Preset(0) + 20) + 192);
}

unint64_t sub_25F777B1C()
{
  result = qword_27FDB00B8;
  if (!qword_27FDB00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB00B8);
  }

  return result;
}

uint64_t sub_25F777B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB00C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F777BD8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_25F820AD0(a1, &a1[a2]);
  }

  sub_25F821E8C();
  swift_allocObject();
  sub_25F821E3C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_25F821F9C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_25F777C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F777CF8()
{
  result = qword_27FDB00C8;
  if (!qword_27FDB00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB00C8);
  }

  return result;
}

uint64_t sub_25F777D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F777EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F777F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F777F8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F778034()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F7780A0()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t CTA861.CTAExtendedTag.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656D69726F6C6F43;
  }
}

ProDisplayLibrary::CTA861::CTAExtendedTag_optional __swiftcall CTA861.CTAExtendedTag.init(rawValue:)(ProDisplayLibrary::CTA861::CTAExtendedTag_optional rawValue)
{
  if (rawValue.value == 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t CTA861.CTAExtendedTag.rawValue.getter()
{
  if (*v0)
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_25F77819C()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F778224()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

unsigned __int8 *sub_25F778270@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_25F778290(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  *a1 = v2;
}

uint64_t sub_25F7782A8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656D69726F6C6F43;
  }
}

uint64_t CTA861.DataBlock.tag.getter@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = (*(a1 + 40))();
  *a2 = result != 7;
  return result;
}

uint64_t CTA861.DataBlock.rawTag.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))();
  v4 = v3;
  v5 = sub_25F821FDC();
  sub_25F76D178(v2, v4);
  return v5 >> 5;
}

unint64_t CTA861.DataBlock.size.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))();
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      sub_25F76D178(result, v3);
      return v5;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    sub_25F76D178(result, v3);
    return 0;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  sub_25F76D178(result, v3);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    v8 = HIDWORD(result);
    v9 = result;
    result = sub_25F76D178(result, v3);
    if (__OFSUB__(v8, v9))
    {
      __break(1u);
    }

    else
    {
      return v8 - v9;
    }
  }

  return result;
}

uint64_t CTA861.UnknownDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  sub_25F779394(a1, a2);
  if (v2)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5;
}

uint64_t CTA861.UnknownDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25F779394(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return v2;
}

uint64_t sub_25F77857C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = sub_25F779394(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_25F778648()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F821FDC();
  sub_25F76D178(v2, v3);
  if (v4 <= 0xDF)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x6465646E65747845;
  }

  if (v4 <= 0xDF)
  {
    v6 = 0x800000025F82D840;
  }

  else
  {
    v6 = 0xEC00000067615420;
  }

  MEMORY[0x25F8E7510](v5, v6);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  sub_25F76E658(v8, v7);
  sub_25F821FDC();
  sub_25F76D178(v8, v7);
  sub_25F773C70();
  v9 = sub_25F8224AC();
  v11 = v10;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_25F82249C();
    MEMORY[0x25F8E7510](v13);

    MEMORY[0x25F8E7510](v9, v11);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    MEMORY[0x25F8E7510](10537, 0xE200000000000000);
    return 0;
  }

  return result;
}

uint64_t CTA861.DataBlock.description.getter(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0xE000000000000000;
  (*(a2 + 32))(&v11);
  if (v11)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x6465646E65747845;
  }

  if (v11)
  {
    v5 = 0x800000025F82D840;
  }

  else
  {
    v5 = 0xEC00000067615420;
  }

  MEMORY[0x25F8E7510](v4, v5);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  LOBYTE(v11) = (*(a2 + 40))(a1, a2);
  sub_25F773C70();
  v6 = sub_25F8224AC();
  v8 = v7;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_25F82249C();
    v11 = 30768;
    v12 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v10);

    MEMORY[0x25F8E7510](v6, v8);

    MEMORY[0x25F8E7510](v11, v12);

    MEMORY[0x25F8E7510](10537, 0xE200000000000000);
    return v13;
  }

  return result;
}

uint64_t sub_25F7789E0@<X0>(void *a1@<X8>)
{
  v2 = sub_25F778648();
  v4 = MEMORY[0x277D84F90];

  return sub_25F802E24(v2, v3, v4, a1);
}

uint64_t CTA861.DataBlock.hierarchicalDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_25F822C7C();
  v4 = MEMORY[0x277D84F90];

  return sub_25F802E24(v2, v3, v4, a1);
}

uint64_t sub_25F778A6C@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v4, v3);
  v5 = sub_25F821FDC();
  result = sub_25F76D178(v4, v3);
  if (v5 == 6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5 == 5)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t CTA861.ExtendedDataBlock.extendedTag.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 24))();
  if (result == 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (result == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t CTA861.ExtendedDataBlock.rawExtendedTag.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 48))();
  v4 = v3;
  v5 = sub_25F821FDC();
  sub_25F76D178(v2, v4);
  return v5;
}

uint64_t _s17ProDisplayLibrary6CTA861C16UnknownDataBlockC4data10Foundation0F0Vvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t CTA861.UnknownExtendedDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  result = sub_25F779394(a1, a2);
  if (v2)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v5 + 16) = a1;
        *(v5 + 24) = a2;
        return v5;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v5;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CTA861.UnknownExtendedDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_25F779394(a1, a2);
  if (v3)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v2 + 16) = a1;
        *(v2 + 24) = a2;
        return v2;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v2;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s17ProDisplayLibrary6CTA861C16UnknownDataBlockCfD_0()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F778EE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CTA861.UnknownExtendedDataBlock.init(_:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t CTA861.ExtendedDataBlock.description.getter(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  (*(a2 + 16))(&v13);
  v4 = 0x800000025F82D820;
  v5 = 0x656D69726F6C6F43;
  if (v13)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xEB00000000797274;
  }

  if (v13 == 2)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = v5;
  }

  if (v13 == 2)
  {
    v7 = 0x800000025F82D8A0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x25F8E7510](v6, v7);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  LOBYTE(v13) = (*(a2 + 24))(a1, a2);
  sub_25F773C70();
  v8 = sub_25F8224AC();
  v10 = v9;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_25F82249C();
    v13 = 30768;
    v14 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v12);

    MEMORY[0x25F8E7510](v8, v10);

    MEMORY[0x25F8E7510](v13, v14);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    return v15;
  }

  return result;
}

uint64_t sub_25F77913C@<X0>(void *a1@<X8>)
{
  v2 = sub_25F7A4A38();
  v4 = MEMORY[0x277D84F90];

  return sub_25F802E24(v2, v3, v4, a1);
}

uint64_t sub_25F779198()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F821FDC();
  sub_25F76D178(v2, v3);
  return v4;
}

uint64_t sub_25F779210@<X0>(BOOL *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_25F76E658(v4, v5);
  v6 = sub_25F821FDC();
  result = sub_25F76D178(v4, v5);
  *a1 = v6 < 0xE0;
  return result;
}

uint64_t sub_25F779294()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F821FDC();
  sub_25F76D178(v2, v3);
  return v4 >> 5;
}

uint64_t sub_25F77930C()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      return BYTE6(v4);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v5 == 2)
  {
    v7 = v3 + 16;
    v3 = *(v3 + 16);
    v6 = *(v7 + 8);
    result = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_8:
      v8 = __OFSUB__(HIDWORD(v3), v3);
      v9 = HIDWORD(v3) - v3;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_25F779394(uint64_t result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_14;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 > 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v4)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_14;
    }

LABEL_8:
    result = sub_25F821FDC();
    if (v4 == 2)
    {
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      v7 = __OFSUB__(v13, v14);
      v9 = v13 - v14;
      if (!v7)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (v4 == 1)
    {
      LODWORD(v9) = HIDWORD(v3) - v3;
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v9 = v9;
LABEL_19:
        if (v9 == (result & 0x1F) + 1)
        {
          return result;
        }

        sub_25F82292C();
        MEMORY[0x25F8E7510](0xD000000000000023, 0x800000025F82D960);
        v15 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v15);

        result = MEMORY[0x25F8E7510](0x6420656C69687720, 0xEF20736920617461);
        if (v4 == 2)
        {
          if (__OFSUB__(*(v3 + 24), *(v3 + 16)))
          {
            __break(1u);
          }

          goto LABEL_27;
        }

        if (v4 != 1 || !__OFSUB__(HIDWORD(v3), v3))
        {
LABEL_27:
          v16 = sub_25F822C7C();
          MEMORY[0x25F8E7510](v16);

          v12 = 0;
          v10 = 0xE000000000000000;
          sub_25F779604();
          swift_allocError();
          goto LABEL_28;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = v2;
    goto LABEL_19;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_31;
  }

  if (HIDWORD(result) - result > 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v10 = 0x800000025F82D990;
  sub_25F779604();
  swift_allocError();
  v12 = 0xD000000000000036;
LABEL_28:
  *v11 = v12;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_25F779604()
{
  result = qword_27FDB00D8;
  if (!qword_27FDB00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB00D8);
  }

  return result;
}

unint64_t sub_25F77965C()
{
  result = qword_27FDB00E0;
  if (!qword_27FDB00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB00E0);
  }

  return result;
}

unint64_t sub_25F7796B4()
{
  result = qword_27FDB00E8;
  if (!qword_27FDB00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB00E8);
  }

  return result;
}

uint64_t sub_25F779708(uint64_t a1)
{
  result = sub_25F779858(&qword_27FDB00F0, type metadata accessor for CTA861.UnknownDataBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F779784(uint64_t a1)
{
  result = sub_25F779858(&qword_27FDB00F8, type metadata accessor for CTA861.UnknownExtendedDataBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F779800(uint64_t a1)
{
  result = sub_25F779858(&qword_27FDB0100, type metadata accessor for CTA861.UnknownExtendedDataBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F779858(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CTA861.CTATag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CTA861.CTATag(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F779B08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F779B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t FileDataStore.init(file:defaultPreset:userPresetCapacity:applePresetCapacity:appleBuiltInPresets:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Preset(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v51 = &v46 - v18;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v19 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v21 = &v46 - v20;
  if (a6 == 1)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = sub_25F821F4C();
    v47 = *(v22 - 8);
    v23 = *(v47 + 16);
    v50 = a1;
    v48 = v22;
    v23(a7, a1);
    v24 = type metadata accessor for FileDataStore(0);
    *(a7 + v24[5]) = a6;
    v25 = a7 + v24[6];
    v49 = a2;
    sub_25F76183C(a2, v25, &qword_27FDAFBB0);
    *(a7 + v24[7]) = a3;
    v54 = a7;
    v55 = v24;
    *(a7 + v24[8]) = a4;
    v26 = *(a5 + 16);
    v27 = MEMORY[0x277D84F90];
    v53 = a5;
    if (v26)
    {
      v58 = MEMORY[0x277D84F90];
      sub_25F817C68(0, v26, 0);
      v28 = v58;
      v29 = a5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v46 = v15;
      v30 = *(v15 + 72);
      v31 = v26;
      do
      {
        v32 = *(v56 + 48);
        sub_25F781F64(v29, &v21[v32], type metadata accessor for Preset);
        sub_25F76183C(&v21[v32], v21, &qword_27FDAFBB0);
        v58 = v28;
        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_25F817C68(v33 > 1, v34 + 1, 1);
          v28 = v58;
        }

        *(v28 + 16) = v34 + 1;
        sub_25F760FA4(v21, v28 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v34, &qword_27FDAFBA8);
        v29 += v30;
        --v31;
      }

      while (v31);
      v15 = v46;
      v27 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v35 = v51;
    v36 = v52;
    if (*(v28 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
      v37 = sub_25F822A8C();
    }

    else
    {
      v37 = MEMORY[0x277D84F98];
    }

    v38 = v54;
    v58 = v37;

    sub_25F75D184(v39, 1, &v58);

    *(v38 + v55[9]) = v58;
    if (v26)
    {
      v58 = v27;
      sub_25F817C48(0, v26, 0);
      v40 = v58;
      v41 = v53 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v42 = *(v15 + 72);
      do
      {
        sub_25F781F64(v41, v36, type metadata accessor for Preset);
        sub_25F76183C(v36, v35, &qword_27FDAFBB0);
        sub_25F781FCC(v36, type metadata accessor for Preset);
        v58 = v40;
        v44 = *(v40 + 16);
        v43 = *(v40 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_25F817C48(v43 > 1, v44 + 1, 1);
          v40 = v58;
        }

        *(v40 + 16) = v44 + 1;
        sub_25F760FA4(v35, v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, &qword_27FDAFBB0);
        v41 += v42;
        --v26;
      }

      while (v26);

      sub_25F760F44(v49, &qword_27FDAFBB0);
      result = (*(v47 + 8))(v50, v48);
      v38 = v54;
    }

    else
    {

      sub_25F760F44(v49, &qword_27FDAFBB0);
      result = (*(v47 + 8))(v50, v48);
      v40 = MEMORY[0x277D84F90];
    }

    *(v38 + v55[10]) = v40;
  }

  return result;
}

uint64_t FileDataStore.store(data:)(uint64_t a1)
{
  v3 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  type metadata accessor for FileDataStore(0);
  sub_25F821ECC();
  sub_25F77E284(a1, v5);
  v6 = sub_25F7AF590(v5, 2, 0);
  v8 = v7;
  sub_25F781FCC(v5, type metadata accessor for ProDataOnDisk);
  if (!v1)
  {
    sub_25F82203C();
    sub_25F76D178(v6, v8);
  }
}

uint64_t sub_25F77A310@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v56 - v6;
  v7 = type metadata accessor for Preset(0);
  v70 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v68 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v63 = type metadata accessor for ProDataOnDisk();
  v14 = MEMORY[0x28223BE20](v63);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = [objc_opt_self() defaultManager];
  sub_25F821F1C();
  v20 = sub_25F82235C();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    result = sub_25F821F6C();
    if (!v2)
    {
      v24 = result;
      v25 = v23;
      sub_25F821EBC();
      swift_allocObject();
      sub_25F821EAC();
      sub_25F7AF2AC(v16);

      sub_25F76D178(v24, v25);
      sub_25F781E8C(v16, v18, type metadata accessor for ProDataOnDisk);
LABEL_17:
      sub_25F77E08C(v18, a1);
      return sub_25F781FCC(v18, type metadata accessor for ProDataOnDisk);
    }
  }

  else
  {
    v58 = v18;
    v59 = a1;
    v61 = v2;
    v26 = type metadata accessor for FileDataStore(0);
    v27 = v3 + *(v26 + 24);
    v62 = v13;
    sub_25F76183C(v27, v13, &qword_27FDAFBB0);
    v28 = MEMORY[0x277D84F90];
    v57 = sub_25F7CA6A0(MEMORY[0x277D84F90]);
    v56 = sub_25F7C9F08(v28);
    v29 = *(v26 + 36);
    v60 = v3;
    v30 = *(v3 + v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0138);
    v31 = sub_25F822A6C();
    v32 = v31;
    v33 = 0;
    v35 = v30 + 64;
    v34 = *(v30 + 64);
    v65 = v30;
    v66 = v31;
    v36 = 1 << *(v30 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v34;
    v39 = (v36 + 63) >> 6;
    v64 = v31 + 64;
    if ((v37 & v34) != 0)
    {
      while (1)
      {
        v40 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
LABEL_13:
        v43 = v40 | (v33 << 6);
        v44 = v65;
        v45 = v67;
        v46 = *(v68 + 72) * v43;
        sub_25F76183C(*(v65 + 48) + v46, v67, &qword_27FDAFBB0);
        v47 = *(v44 + 56);
        v48 = v69;
        sub_25F781F64(v47 + *(v70 + 72) * v43, v69, type metadata accessor for Preset);
        v49 = type metadata accessor for Preset.Info(0);
        v50 = v71;
        sub_25F76183C(v48 + *(v49 + 36), v71, &qword_27FDAFC10);
        sub_25F781FCC(v48, type metadata accessor for Preset);
        *(v64 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        v32 = v66;
        sub_25F760FA4(v45, *(v66 + 48) + v46, &qword_27FDAFBB0);
        result = sub_25F760FA4(v50, *(v32 + 56) + *(v72 + 72) * v43, &qword_27FDAFC10);
        v51 = *(v32 + 16);
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          break;
        }

        *(v32 + 16) = v53;
        if (!v38)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v41 = v33;
      result = v62;
      while (1)
      {
        v33 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v33 >= v39)
        {
          v18 = v58;
          sub_25F760FA4(v62, v58, &qword_27FDAFBB0);
          v54 = v63;
          v55 = v56;
          *&v18[*(v63 + 20)] = v57;
          *&v18[*(v54 + 24)] = v55;
          *&v18[*(v54 + 28)] = v32;
          a1 = v59;
          goto LABEL_17;
        }

        v42 = *(v35 + 8 * v33);
        ++v41;
        if (v42)
        {
          v40 = __clz(__rbit64(v42));
          v38 = (v42 - 1) & v42;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t FileDataStore.addPreset(_:)(uint64_t a1)
{
  v4 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v98 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v84 - v12;
  v99 = type metadata accessor for Preset(0);
  v104 = *(v99 - 8);
  v14 = MEMORY[0x28223BE20](v99);
  v97 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v84 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  v102 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v102);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Preset.Info(0);
  if (*(a1 + *(v103 + 28)))
  {
    v96 = *(v103 + 28);
    result = sub_25F77A310(v24);
    if (!v2)
    {
      v26 = v102[7];
      v27 = *&v24[v26];
      v94 = a1;
      v95 = v24;
      v88 = v6;
      v89 = v1;
      v92 = v27;
      v93 = 0;
      v91 = v13;
      v87 = v26;
      if (v27)
      {
        v28 = v27;
        v29 = v27;
      }

      else
      {
        v29 = (*&v24[v102[10]])(result);
        v28 = 0;
      }

      v31 = 1 << *(v29 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;
      v90 = v28;

      v35 = 0;
      v36 = MEMORY[0x277D84F90];
LABEL_10:
      v37 = v35;
      if (!v33)
      {
        goto LABEL_12;
      }

      do
      {
        v35 = v37;
LABEL_15:
        v38 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v39 = *(v104 + 72);
        sub_25F781F64(*(v29 + 56) + v39 * (v38 | (v35 << 6)), v20, type metadata accessor for Preset);
        sub_25F781E8C(v20, v22, type metadata accessor for Preset);
        if (v22[*(v103 + 28)])
        {
          sub_25F781E8C(v22, v101, type metadata accessor for Preset);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25F817D08(0, *(v36 + 16) + 1, 1);
            v36 = v105;
          }

          v42 = *(v36 + 16);
          v41 = *(v36 + 24);
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v86 = v42 + 1;
            v85 = v42;
            sub_25F817D08(v41 > 1, v42 + 1, 1);
            v43 = v86;
            v42 = v85;
            v36 = v105;
          }

          *(v36 + 16) = v43;
          result = sub_25F781E8C(v101, v36 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + v42 * v39, type metadata accessor for Preset);
          goto LABEL_10;
        }

        result = sub_25F781FCC(v22, type metadata accessor for Preset);
        v37 = v35;
      }

      while (v33);
LABEL_12:
      while (1)
      {
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v35 >= v34)
        {

          v44 = *(v36 + 16);

          v46 = v102;
          v47 = v95;
          v48 = &v95[v102[8]];
          if (v48[8])
          {
            v45 = (*&v95[v102[11]])(v45);
            v49 = v45;
          }

          else
          {
            v49 = *v48;
          }

          v50 = v93;
          if (v44 >= v49)
          {
            type metadata accessor for FileDataStore.FileDataStoreError(0);
            sub_25F7819C8();
            swift_allocError();
            v57 = v59;
            v105 = 0;
            v106 = 0xE000000000000000;
            sub_25F82292C();
            MEMORY[0x25F8E7510](0xD000000000000019, 0x800000025F82D9D0);
            v107 = v44;
            v60 = sub_25F822C7C();
            MEMORY[0x25F8E7510](v60);

            MEMORY[0x25F8E7510](0xD000000000000011, 0x800000025F82D9F0);
            v107 = v49;
            v61 = sub_25F822C7C();
            MEMORY[0x25F8E7510](v61);

            MEMORY[0x25F8E7510](0x797420726F662029, 0xEB00000000206570);
            v62 = 0xEA00000000006D6FLL;
            v63 = 0x7473754372657355;
            if (*(v94 + v96) != 1)
            {
              v63 = 0xD000000000000011;
              v62 = 0x800000025F82DA10;
            }

            if (*(v94 + v96))
            {
              v64 = v63;
            }

            else
            {
              v64 = 0x697542656C707041;
            }

            if (*(v94 + v96))
            {
              v65 = v62;
            }

            else
            {
              v65 = 0xEC0000006E49746CLL;
            }

            MEMORY[0x25F8E7510](v64, v65);

            MEMORY[0x25F8E7510](46, 0xE100000000000000);
LABEL_40:
            v66 = v106;
            *v57 = v105;
            v57[1] = v66;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
          }

          else
          {
            v51 = v90;
            v52 = v90;
            v53 = v94;
            if (!v92)
            {
              v45 = (*(v47 + v46[10]))();
              v52 = v45;
            }

            MEMORY[0x28223BE20](v45);
            *(&v84 - 2) = v53;

            v54 = sub_25F75AB8C(sub_25F78202C, (&v84 - 4), v52);

            v55 = v104;
            if (v54)
            {
              type metadata accessor for FileDataStore.FileDataStoreError(0);
              sub_25F7819C8();
              swift_allocError();
              v57 = v56;
              v105 = 0;
              v106 = 0xE000000000000000;
              sub_25F82292C();

              v105 = 0xD000000000000019;
              v106 = 0x800000025F82DA30;
              v58 = sub_25F82212C();
              MEMORY[0x25F8E7510](v58);

              goto LABEL_40;
            }

            sub_25F76183C(v53, v91, &qword_27FDAFBB0);
            v67 = v53;
            v68 = v100;
            sub_25F781F64(v67, v100, type metadata accessor for Preset);
            v69 = v99;
            v70 = (*(v55 + 56))(v68, 0, 1, v99);
            v71 = v51;
            if (!v92)
            {
              v71 = (*(v47 + v46[10]))(v70);
            }

            v105 = v71;
            if ((*(v55 + 48))(v68, 1, v69) == 1)
            {

              sub_25F760F44(v68, &qword_27FDAFBE0);
              v72 = v98;
              v73 = v91;
              sub_25F761908(v91);
              sub_25F760F44(v72, &qword_27FDAFBE0);
              sub_25F760F44(v73, &qword_27FDAFBB0);

              v74 = v105;
            }

            else
            {
              v75 = v97;
              sub_25F781E8C(v68, v97, type metadata accessor for Preset);

              v76 = swift_isUniquelyReferenced_nonNull_native();
              v107 = v71;
              v77 = v75;
              v78 = v91;
              sub_25F76074C(v77, v91, v76);
              sub_25F760F44(v78, &qword_27FDAFBB0);

              v74 = v107;
            }

            *(v47 + v87) = v74;
            sub_25F821EFC();
            swift_allocObject();
            sub_25F821EEC();
            type metadata accessor for FileDataStore(0);
            sub_25F821ECC();
            v79 = v88;
            sub_25F77E284(v47, v88);
            v80 = sub_25F7AF590(v79, 2, 0);
            if (v50)
            {
              sub_25F781FCC(v79, type metadata accessor for ProDataOnDisk);
            }

            else
            {
              v82 = v80;
              v83 = v81;
              sub_25F781FCC(v79, type metadata accessor for ProDataOnDisk);
              sub_25F82203C();
              sub_25F76D178(v82, v83);
            }
          }

          return sub_25F781FCC(v47, type metadata accessor for ProData);
        }

        v33 = *(v29 + 64 + 8 * v35);
        ++v37;
        if (v33)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {
    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7819C8();
    swift_allocError();
    *v30 = 0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t FileDataStore.removePreset(_:)(uint64_t a1)
{
  v46 = a1;
  v1 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for Preset(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v47;
  sub_25F77A310(v16);
  if (v17)
  {
    return v3 & 1;
  }

  v44 = v13;
  v45 = v8;
  v47 = v6;
  v43 = 0;
  v18 = v46;
  if (sub_25F82213C())
  {
    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7819C8();
    swift_allocError();
    *v19 = 0xD000000000000026;
    v19[1] = 0x800000025F82DA50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v20 = v16;
LABEL_17:
    sub_25F781FCC(v20, type metadata accessor for ProData);
    return v3 & 1;
  }

  v21 = *(v14 + 28);
  v40 = v7;
  v41 = v21;
  v22 = *&v16[v21];
  v42 = v16;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = (*&v16[*(v14 + 40)])();
  }

  v24 = v3;
  v25 = *(v23 + 16);

  if (!v25 || (v26 = sub_25F75D8B4(v18), (v27 & 1) == 0))
  {

    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7819C8();
    swift_allocError();
    sub_25F76183C(v18, v34, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_16:
    v20 = v42;
    goto LABEL_17;
  }

  sub_25F781F64(*(v23 + 56) + *(v45 + 72) * v26, v11, type metadata accessor for Preset);

  v28 = v44;
  sub_25F781E8C(v11, v44, type metadata accessor for Preset);
  if (!*(v28 + *(type metadata accessor for Preset.Info(0) + 28)))
  {
    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7819C8();
    swift_allocError();
    *v36 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25F781FCC(v28, type metadata accessor for Preset);
    goto LABEL_16;
  }

  if (!v22)
  {
    v22 = (*&v42[*(v14 + 40)])();
  }

  v48 = v22;
  sub_25F761908(v18);
  v29 = v42;
  *&v42[v41] = v48;
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  type metadata accessor for FileDataStore(0);
  sub_25F821ECC();
  v30 = v3;
  LOBYTE(v3) = v29;
  sub_25F77E284(v29, v30);
  v31 = v43;
  v32 = sub_25F7AF590(v24, 2, 0);
  if (v31)
  {

    sub_25F781FCC(v24, type metadata accessor for ProDataOnDisk);
    sub_25F781FCC(v28, type metadata accessor for Preset);
    v39 = v47;
    sub_25F781FCC(v29, type metadata accessor for ProData);
  }

  else
  {
    v37 = v32;
    v38 = v33;
    sub_25F781FCC(v24, type metadata accessor for ProDataOnDisk);
    sub_25F82203C();
    sub_25F781FCC(v28, type metadata accessor for Preset);
    sub_25F76D178(v37, v38);

    sub_25F781FCC(v29, type metadata accessor for ProData);
    v39 = v47;
    LOBYTE(v3) = (*(v45 + 48))(v47, 1, v40) != 1;
  }

  sub_25F760F44(v39, &qword_27FDAFBE0);
  return v3 & 1;
}

uint64_t FileDataStore.presetOrder()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v88 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v89 = &v85 - v2;
  v96 = sub_25F8221EC();
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Preset(0);
  v103 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v85 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v85 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v85 - v20);
  v22 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v104;
  sub_25F77A310(v24);
  if (!v25)
  {
    v101 = v21;
    v104 = v19;
    v98 = v16;
    v99 = v10;
    v90 = 0;
    v86 = *(v0 + *(type metadata accessor for FileDataStore(0) + 40));
    v26 = *&v24[*(v22 + 28)];
    v100 = v7;
    v87 = v24;
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = (*&v24[*(v22 + 40)])();
    }

    v28 = 1 << *(v27 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v27 + 64);
    v31 = (v28 + 63) >> 6;

    v32 = 0;
    v102 = MEMORY[0x277D84F90];
    v33 = v103;
LABEL_8:
    v34 = v32;
    if (!v30)
    {
      goto LABEL_10;
    }

    do
    {
      v32 = v34;
LABEL_13:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v33[9];
      v37 = v104;
      sub_25F781F64(*(v27 + 56) + v36 * (v35 | (v32 << 6)), v104, type metadata accessor for Preset);
      v38 = v37;
      v39 = v101;
      sub_25F781E8C(v38, v101, type metadata accessor for Preset);
      if (*(v39 + *(type metadata accessor for Preset.Info(0) + 28)))
      {
        sub_25F781E8C(v39, v98, type metadata accessor for Preset);
        v40 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817D08(0, v40[2] + 1, 1);
          v33 = v103;
          v40 = v105;
        }

        v43 = v40[2];
        v42 = v40[3];
        v44 = v43 + 1;
        v45 = v98;
        if (v43 >= v42 >> 1)
        {
          v47 = v43 + 1;
          v102 = v43;
          sub_25F817D08(v42 > 1, v43 + 1, 1);
          v44 = v47;
          v43 = v102;
          v33 = v103;
          v45 = v98;
          v40 = v105;
        }

        v40[2] = v44;
        v46 = *(v33 + 80);
        v102 = v40;
        sub_25F781E8C(v45, v40 + ((v46 + 32) & ~v46) + v43 * v36, type metadata accessor for Preset);
        goto LABEL_8;
      }

      sub_25F781FCC(v39, type metadata accessor for Preset);
      v34 = v32;
    }

    while (v30);
    while (1)
    {
LABEL_10:
      v32 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v32 >= v31)
      {
        break;
      }

      v30 = *(v27 + 64 + 8 * v32);
      ++v34;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v49 = v102;
    v98 = v102[2];
    if (v98)
    {
      v50 = 0;
      v94 = "urrently active preset";
      v95 = "";
      ++v92;
      v93 = "Failed to order preset '";
      v101 = MEMORY[0x277D84F90];
      *&v48 = 136315138;
      v91 = v48;
      while (v50 < v49[2])
      {
        v51 = v33[9];
        v104 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        sub_25F781F64(v49 + v104 + v51 * v50, v13, type metadata accessor for Preset);
        v52 = type metadata accessor for Preset.Info(0);
        v53 = *(v52 + 32);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
        MEMORY[0x28223BE20](v54 - 8);
        v56 = &v85 - v55;
        sub_25F76183C(&v13[v53], &v85 - v55, &qword_27FDAFC20);
        v57 = sub_25F82210C();
        LODWORD(v53) = (*(*(v57 - 8) + 48))(v56, 1, v57);
        sub_25F760F44(v56, &qword_27FDAFC20);
        if (v53 == 1)
        {
          v105 = 0;
          v106 = 0xE000000000000000;
          sub_25F82292C();
          MEMORY[0x25F8E7510](0xD000000000000018, v94 | 0x8000000000000000);
          MEMORY[0x25F8E7510](*&v13[*(v52 + 20)], *&v13[*(v52 + 20) + 8]);
          MEMORY[0x25F8E7510](0x5520687469772027, 0xED00002720444955);
          v58 = sub_25F82212C();
          MEMORY[0x25F8E7510](v58);

          MEMORY[0x25F8E7510](0xD000000000000021, v93 | 0x8000000000000000);
          v60 = v105;
          v59 = v106;
          v61 = v97;
          sub_25F8221DC();

          v62 = sub_25F8221CC();
          v63 = sub_25F8226AC();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v105 = v65;
            *v64 = v91;
            *(v64 + 4) = sub_25F75CA94(v60, v59, &v105);
            _os_log_impl(&dword_25F74E000, v62, v63, "%s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v65);
            MEMORY[0x25F8E88D0](v65, -1, -1);
            MEMORY[0x25F8E88D0](v64, -1, -1);

            (*v92)(v97, v96);
          }

          else
          {

            (*v92)(v61, v96);
          }

          v49 = v102;
          sub_25F781FCC(v13, type metadata accessor for Preset);
          v33 = v103;
        }

        else
        {
          sub_25F781E8C(v13, v99, type metadata accessor for Preset);
          v66 = v101;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v107 = v66;
          if ((v67 & 1) == 0)
          {
            sub_25F817D08(0, v66[2] + 1, 1);
            v66 = v107;
          }

          v49 = v102;
          v33 = v103;
          v68 = v104;
          v70 = v66[2];
          v69 = v66[3];
          v71 = v66;
          v72 = v99;
          if (v70 >= v69 >> 1)
          {
            sub_25F817D08(v69 > 1, v70 + 1, 1);
            v72 = v99;
            v33 = v103;
            v71 = v107;
          }

          v71[2] = v70 + 1;
          v101 = v71;
          sub_25F781E8C(v72, v71 + v68 + v70 * v51, type metadata accessor for Preset);
        }

        if (v98 == ++v50)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:

      __break(1u);
      return result;
    }

    v101 = MEMORY[0x277D84F90];
LABEL_36:

    v105 = v101;

    v73 = v90;
    sub_25F77EE78(&v105);
    v90 = v73;
    if (v73)
    {
      goto LABEL_48;
    }

    v74 = v105;
    v75 = v105[2];
    v76 = v89;
    if (v75)
    {
      v105 = MEMORY[0x277D84F90];
      sub_25F817C48(0, v75, 0);
      v77 = v105;
      v78 = v74 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v79 = v33[9];
      v103 = v74;
      v104 = v79;
      v80 = v88;
      do
      {
        v81 = v100;
        sub_25F781F64(v78, v100, type metadata accessor for Preset);
        sub_25F76183C(v81, v76, &qword_27FDAFBB0);
        sub_25F781FCC(v81, type metadata accessor for Preset);
        v105 = v77;
        v83 = v77[2];
        v82 = v77[3];
        if (v83 >= v82 >> 1)
        {
          sub_25F817C48(v82 > 1, v83 + 1, 1);
          v80 = v88;
          v77 = v105;
        }

        v77[2] = v83 + 1;
        sub_25F760FA4(v76, v77 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v83, &qword_27FDAFBB0);
        v78 += v104;
        --v75;
      }

      while (v75);
    }

    else
    {

      v77 = MEMORY[0x277D84F90];
    }

    v105 = v86;

    sub_25F77ED20(v77);
    v21 = v105;
    sub_25F781FCC(v87, type metadata accessor for ProData);
  }

  return v21;
}

uint64_t FileDataStore.addUA(_:to:live:)(uint64_t a1, uint64_t a2, char a3)
{
  v102 = a2;
  v100 = a1;
  v6 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserAdjustment();
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = &v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v97 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v94 = type metadata accessor for Preset(0);
  v99 = *(v94 - 8);
  v27 = MEMORY[0x28223BE20](v94);
  v91 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v29);
  v101 = &v82 - v32;
  v33 = type metadata accessor for ProData();
  result = MEMORY[0x28223BE20](v33);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v89 = v3;
    v37 = v36;
    result = sub_25F77A310(v36);
    if (!v4)
    {
      v86 = v33[7];
      v38 = *(v37 + v86);
      v88 = v37;
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = (*(v37 + v33[10]))();
        v38 = 0;
      }

      v40 = *(v39 + 16);
      v87 = v38;

      if (v40 && (v41 = sub_25F75D8B4(v102), (v42 & 1) != 0))
      {
        sub_25F781F64(*(v39 + 56) + *(v99 + 72) * v41, v31, type metadata accessor for Preset);

        v43 = sub_25F781E8C(v31, v101, type metadata accessor for Preset);
        v85 = v33[6];
        v44 = *(v88 + v85);
        MEMORY[0x28223BE20](v43);
        *(&v82 - 2) = v100;

        v45 = sub_25F75ABB8(sub_25F760F14, (&v82 - 4), v44);

        if (v45)
        {
          type metadata accessor for FileDataStore.FileDataStoreError(0);
          sub_25F7819C8();
          swift_allocError();
          v47 = v46;
          v103 = 0;
          v104 = 0xE000000000000000;
          sub_25F82292C();

          v103 = 0xD000000000000022;
          v104 = 0x800000025F82DAD0;
          v48 = sub_25F82212C();
          MEMORY[0x25F8E7510](v48);

          v49 = v104;
          *v47 = v103;
          v47[1] = v49;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_25F781FCC(v88, type metadata accessor for ProData);
          v50 = type metadata accessor for Preset;
          v51 = v101;
        }

        else
        {
          v83 = type metadata accessor for Preset.Info(0);
          v53 = *(v83 + 36);
          sub_25F76183C(v101 + v53, v23, &qword_27FDAFC10);
          v54 = (*(v97 + 48))(v23, 1, v24);
          v84 = 0;
          if (v54 == 1)
          {
            v55 = &qword_27FDAFC10;
            v56 = v23;
          }

          else
          {
            sub_25F760FA4(v23, v26, &qword_27FDAFC18);
            sub_25F754174(v26, v20);
            sub_25F760F44(v20, &qword_27FDAFC28);
            v56 = v26;
            v55 = &qword_27FDAFC18;
          }

          sub_25F760F44(v56, v55);
          v57 = v93;
          v58 = v101;
          sub_25F760F44(v101 + v53, &qword_27FDAFC10);
          v59 = v100;
          sub_25F76183C(v100, v58 + v53, &qword_27FDAFC18);
          (*(v97 + 56))(v58 + v53, 0, 1, v24);
          sub_25F76183C(v102, v98, &qword_27FDAFBB0);
          sub_25F781F64(v58, v57, type metadata accessor for Preset);
          v60 = v99;
          v61 = v94;
          v97 = *(v99 + 56);
          v62 = (v97)(v57, 0, 1, v94);
          v63 = v87;
          if (!v87)
          {
            v63 = (*(v88 + v33[10]))(v62);
          }

          v103 = v63;
          if ((*(v60 + 48))(v57, 1, v61) == 1)
          {

            sub_25F760F44(v57, &qword_27FDAFBE0);
            v64 = v92;
            v65 = v98;
            sub_25F761908(v98);
            v59 = v100;
            sub_25F760F44(v64, &qword_27FDAFBE0);
            sub_25F760F44(v65, &qword_27FDAFBB0);

            v66 = v103;
          }

          else
          {
            v67 = v91;
            sub_25F781E8C(v57, v91, type metadata accessor for Preset);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v63;
            v69 = v98;
            sub_25F76074C(v67, v98, isUniquelyReferenced_nonNull_native);
            sub_25F760F44(v69, &qword_27FDAFBB0);

            v66 = v105;
          }

          v70 = v88;
          *(v88 + v86) = v66;
          v71 = v95;
          sub_25F781F64(v59, v95, type metadata accessor for UserAdjustment);
          v72 = v85;
          v73 = swift_isUniquelyReferenced_nonNull_native();
          v103 = *(v70 + v72);
          sub_25F760544(v71, v59, v73);
          *(v70 + v72) = v103;
          if (!*(v58 + *(v83 + 28)))
          {
            v74 = v90;
            sub_25F76183C(v102, v90, &qword_27FDAFBB0);
            v75 = v92;
            sub_25F781F64(v58, v92, type metadata accessor for Preset);
            (v97)(v75, 0, 1, v61);
            type metadata accessor for FileDataStore(0);
            sub_25F7535C0(v75, v74);
          }

          sub_25F821EFC();
          swift_allocObject();
          sub_25F821EEC();
          type metadata accessor for FileDataStore(0);
          sub_25F821ECC();
          v76 = v96;
          sub_25F77E284(v70, v96);
          v77 = v84;
          v78 = sub_25F7AF590(v76, 2, 0);
          if (v77)
          {
            sub_25F781FCC(v76, type metadata accessor for ProDataOnDisk);
          }

          else
          {
            v80 = v78;
            v81 = v79;
            sub_25F781FCC(v76, type metadata accessor for ProDataOnDisk);
            sub_25F82203C();
            sub_25F76D178(v80, v81);
          }

          sub_25F781FCC(v88, type metadata accessor for ProData);
          v50 = type metadata accessor for Preset;
          v51 = v58;
        }
      }

      else
      {

        type metadata accessor for FileDataStore.FileDataStoreError(0);
        sub_25F7819C8();
        swift_allocError();
        sub_25F76183C(v102, v52, &qword_27FDAFBB0);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v50 = type metadata accessor for ProData;
        v51 = v88;
      }

      return sub_25F781FCC(v51, v50);
    }
  }

  return result;
}

uint64_t FileDataStore.removeUA(from:live:)(uint64_t a1, char a2)
{
  v96 = a1;
  v5 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v84 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v90 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v92 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v88 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v86 = &v77 - v25;
  MEMORY[0x28223BE20](v24);
  v95 = &v77 - v26;
  v89 = type metadata accessor for Preset(0);
  v94 = *(v89 - 8);
  v27 = MEMORY[0x28223BE20](v89);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v77 - v31;
  MEMORY[0x28223BE20](v30);
  v93 = &v77 - v33;
  v34 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v34);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v83 = v2;
    v37 = v36;
    sub_25F77A310(v36);
    if (v3)
    {
      return v29 & 1;
    }

    v81 = 0;
    v82 = v37;
    v38 = *(v34 + 28);
    v39 = *(v37 + v38);
    if (v39)
    {
      v40 = *(v37 + v38);
    }

    else
    {
      v40 = (*(v37 + *(v34 + 40)))();
      v39 = 0;
    }

    v41 = *(v40 + 16);
    v80 = v39;

    if (v41 && (v42 = sub_25F75D8B4(v96), (v43 & 1) != 0))
    {
      sub_25F781F64(*(v40 + 56) + *(v94 + 72) * v42, v32, type metadata accessor for Preset);

      v44 = v32;
      v45 = v93;
      sub_25F781E8C(v44, v93, type metadata accessor for Preset);
      v46 = type metadata accessor for UserAdjustment();
      v78 = *(v46 - 8);
      v79 = v46;
      (*(v78 + 56))(v95, 1, 1);
      v77 = type metadata accessor for Preset.Info(0);
      v47 = *(v77 + 36);
      sub_25F76183C(v45 + v47, v18, &qword_27FDAFC10);
      v48 = v90;
      if ((*(v90 + 48))(v18, 1, v19) == 1)
      {
        sub_25F781FCC(v82, type metadata accessor for ProData);
        sub_25F760F44(v18, &qword_27FDAFC10);
        v49 = v45;
LABEL_11:
        v50 = v88;
        sub_25F760FA4(v95, v88, &qword_27FDAFC28);
        LOBYTE(v29) = (*(v78 + 48))(v50, 1, v79) != 1;
        sub_25F760F44(v50, &qword_27FDAFC28);
        sub_25F781FCC(v49, type metadata accessor for Preset);
        return v29 & 1;
      }

      sub_25F760FA4(v18, v92, &qword_27FDAFC18);
      sub_25F760F44(v45 + v47, &qword_27FDAFC10);
      (*(v48 + 56))(v45 + v47, 1, 1, v19);
      sub_25F76183C(v96, v91, &qword_27FDAFBB0);
      sub_25F781F64(v45, v11, type metadata accessor for Preset);
      v55 = v94;
      v56 = *(v94 + 56);
      v57 = v89;
      v58 = v56(v11, 0, 1, v89);
      v59 = v80;
      v60 = v55;
      if (!v80)
      {
        v61 = (*(v82 + *(v34 + 40)))(v58);
        v60 = v94;
        v59 = v61;
      }

      v98 = v59;
      if ((*(v60 + 48))(v11, 1, v57) == 1)
      {

        sub_25F760F44(v11, &qword_27FDAFBE0);
        v62 = v85;
        v63 = v91;
        sub_25F761908(v91);
        sub_25F760F44(v62, &qword_27FDAFBE0);
        sub_25F760F44(v63, &qword_27FDAFBB0);

        v64 = v98;
      }

      else
      {
        sub_25F781E8C(v11, v29, type metadata accessor for Preset);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v59;
        v66 = v91;
        sub_25F76074C(v29, v91, isUniquelyReferenced_nonNull_native);
        sub_25F760F44(v66, &qword_27FDAFBB0);

        v64 = v97;
      }

      v67 = v82;
      *(v82 + v38) = v64;
      v49 = v93;
      if (!*(v93 + *(v77 + 28)))
      {
        v68 = v84;
        sub_25F76183C(v96, v84, &qword_27FDAFBB0);
        v69 = v85;
        sub_25F781F64(v49, v85, type metadata accessor for Preset);
        v56(v69, 0, 1, v89);
        type metadata accessor for FileDataStore(0);
        sub_25F7535C0(v69, v68);
      }

      v70 = v86;
      sub_25F754174(v92, v86);
      v29 = v95;
      sub_25F760F44(v95, &qword_27FDAFC28);
      sub_25F760FA4(v70, v29, &qword_27FDAFC28);
      sub_25F821EFC();
      swift_allocObject();
      sub_25F821EEC();
      type metadata accessor for FileDataStore(0);
      LOBYTE(v29) = v83;
      sub_25F821ECC();
      v71 = v87;
      sub_25F77E284(v67, v87);
      v72 = v81;
      v73 = sub_25F7AF590(v71, 2, 0);
      if (!v72)
      {
        v75 = v73;
        v76 = v74;
        sub_25F781FCC(v71, type metadata accessor for ProDataOnDisk);
        sub_25F82203C();
        sub_25F760F44(v92, &qword_27FDAFC18);
        sub_25F76D178(v75, v76);

        sub_25F781FCC(v67, type metadata accessor for ProData);
        goto LABEL_11;
      }

      sub_25F781FCC(v71, type metadata accessor for ProDataOnDisk);
      sub_25F760F44(v92, &qword_27FDAFC18);
      sub_25F760F44(v95, &qword_27FDAFC28);
      sub_25F781FCC(v67, type metadata accessor for ProData);
      v52 = type metadata accessor for Preset;
      v53 = v49;
    }

    else
    {

      type metadata accessor for FileDataStore.FileDataStoreError(0);
      sub_25F7819C8();
      swift_allocError();
      sub_25F76183C(v96, v51, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v52 = type metadata accessor for ProData;
      v53 = v82;
    }

    sub_25F781FCC(v53, v52);
    return v29 & 1;
  }

  LOBYTE(v29) = 0;
  return v29 & 1;
}

uint64_t sub_25F77DCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25F77A310(v5);
  if (!v1)
  {
    v7 = v3[7];
    if (*&v5[v7])
    {
      v8 = *&v5[v7];
    }

    else
    {
      v8 = (*&v5[v3[10]])(result);
    }

    v9 = v3[5];
    v10 = *(v8 + 16);

    if (v10 && (v11 = sub_25F75D8B4(&v5[v9]), (v12 & 1) != 0))
    {
      v13 = v11;
      v14 = *(v8 + 56);
      v15 = type metadata accessor for Preset(0);
      sub_25F781F64(v14 + *(*(v15 - 8) + 72) * v13, a1, type metadata accessor for Preset);

      return sub_25F781FCC(v5, type metadata accessor for ProData);
    }

    else
    {

      type metadata accessor for FileDataStore.FileDataStoreError(0);
      sub_25F7819C8();
      swift_allocError();
      sub_25F76183C(&v5[v9], v16, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_25F781FCC(v5, type metadata accessor for ProData);
    }
  }

  return result;
}

uint64_t sub_25F77DEB8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25F77A310(v5);
  if (!v1)
  {
    v7 = *(v3 + 28);
    if (*&v5[v7])
    {
      v8 = *&v5[v7];
    }

    else
    {
      v8 = (*&v5[*(v3 + 40)])(result);
    }

    v9 = *(v8 + 16);

    if (v9 && (v10 = sub_25F75D8B4(v5), (v11 & 1) != 0))
    {
      v12 = v10;
      v13 = *(v8 + 56);
      v14 = type metadata accessor for Preset(0);
      sub_25F781F64(v13 + *(*(v14 - 8) + 72) * v12, a1, type metadata accessor for Preset);

      return sub_25F781FCC(v5, type metadata accessor for ProData);
    }

    else
    {

      type metadata accessor for FileDataStore.FileDataStoreError(0);
      sub_25F7819C8();
      swift_allocError();
      sub_25F76183C(v5, v15, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_25F781FCC(v5, type metadata accessor for ProData);
    }
  }

  return result;
}

uint64_t sub_25F77E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FileDataStore(0);
  v6 = *(v2 + v5[9]);
  v7 = type metadata accessor for ProDataOnDisk();
  v8 = *(a1 + v7[5]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  sub_25F781288(v8, sub_25F78A1CC, 0, isUniquelyReferenced_nonNull_native, &v24);

  sub_25F77E744(*(a1 + v7[7]), &v24);
  sub_25F76183C(v2 + v5[6], a2, &qword_27FDAFBB0);
  v10 = type metadata accessor for ProData();
  sub_25F76183C(a1, a2 + v10[5], &qword_27FDAFBB0);
  v11 = *(a1 + v7[6]);
  v12 = v24;
  v13 = v5[8];
  v14 = *(v2 + v5[7]);
  v15 = *(v2 + v13);
  v16 = v10[6];

  sub_25F7C9F08(MEMORY[0x277D84F90]);

  v17 = v10[7];
  *(a2 + v17) = 0;
  v18 = a2 + v10[8];
  v19 = a2 + v10[9];
  *(a2 + v16) = v11;
  v20 = (a2 + v10[10]);
  *v20 = sub_25F7CAA30;
  v20[1] = 0;
  v21 = (a2 + v10[11]);
  *v21 = sub_25F7C7A4C;
  v21[1] = 0;

  v23 = (a2 + v10[12]);
  *v23 = sub_25F7C7A4C;
  v23[1] = 0;
  *v18 = v14;
  *(v18 + 8) = 0;
  *v19 = v15;
  *(v19 + 8) = 0;
  *(a2 + v17) = v12;
  return result;
}

int *sub_25F77E284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v45 - v5;
  v6 = type metadata accessor for Preset(0);
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v53 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for ProData();
  v14 = sub_25F76183C(a1 + v13[5], v12, &qword_27FDAFBB0);
  v15 = *(a1 + v13[7]);
  v49 = a2;
  if (v15)
  {
    v16 = v15;
    v17 = v15;
  }

  else
  {
    v17 = (*(a1 + v13[10]))(v14);
    v16 = 0;
  }

  swift_bridgeObjectRetain_n();
  v18 = sub_25F780C54(v17);

  v19 = *(a1 + v13[6]);
  v47 = v18;
  v48 = v12;
  v46 = v19;
  if (v15)
  {
  }

  else
  {
    v20 = *(a1 + v13[10]);

    v16 = v20(v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0138);
  result = sub_25F822A6C();
  v23 = result;
  v24 = 0;
  v25 = v16 + 64;
  v26 = 1 << *(v16 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v16 + 64);
  v29 = (v26 + 63) >> 6;
  v50 = result + 16;
  v51 = result;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_16:
      v33 = v30 | (v24 << 6);
      v34 = v52;
      v35 = *(v53 + 72) * v33;
      sub_25F76183C(*(v16 + 48) + v35, v52, &qword_27FDAFBB0);
      v36 = v16;
      v37 = v54;
      sub_25F781F64(*(v16 + 56) + *(v55 + 72) * v33, v54, type metadata accessor for Preset);
      v38 = type metadata accessor for Preset.Info(0);
      v39 = v56;
      sub_25F76183C(v37 + *(v38 + 36), v56, &qword_27FDAFC10);
      sub_25F781FCC(v37, type metadata accessor for Preset);
      v23 = v51;
      *(v50 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      sub_25F760FA4(v34, *(v23 + 6) + v35, &qword_27FDAFBB0);
      result = sub_25F760FA4(v39, *(v23 + 7) + *(v57 + 72) * v33, &qword_27FDAFC10);
      v40 = *(v23 + 2);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v23 + 2) = v42;
      v16 = v36;
      if (!v28)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v29)
      {

        v43 = v49;
        sub_25F760FA4(v48, v49, &qword_27FDAFBB0);
        result = type metadata accessor for ProDataOnDisk();
        v44 = v46;
        *(v43 + result[5]) = v47;
        *(v43 + result[6]) = v44;
        *(v43 + result[7]) = v23;
        return result;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F77E744(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0140);
  v4 = MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = *(a1 + 64);
  v36 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v40 = a1;

  v16 = 0;
  v38 = v3;
  while (v13)
  {
LABEL_11:
    v22 = __clz(__rbit64(v13)) | (v16 << 6);
    v23 = v40;
    v24 = *(v40 + 48);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
    sub_25F76183C(v24 + *(*(v25 - 8) + 72) * v22, v9, &qword_27FDAFBB0);
    v26 = *(v23 + 56);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
    v28 = v38;
    sub_25F76183C(v26 + *(*(v27 - 8) + 72) * v22, &v9[*(v38 + 48)], &qword_27FDAFC10);
    v29 = v42;
    sub_25F76183C(v9, v42, &qword_27FDB0140);
    v30 = sub_25F7826B8(v41, v29);
    v32 = v31;
    v33 = type metadata accessor for Preset(0);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      (v30)(v41, 0);
    }

    else
    {
      v37 = v30;
      v17 = v35;
      sub_25F76183C(v9, v35, &qword_27FDB0140);
      v18 = *(v28 + 48);
      v19 = type metadata accessor for Preset.Info(0);
      sub_25F781EF4(v17 + v18, v32 + *(v19 + 36));
      sub_25F760F44(v17, &qword_27FDAFBB0);
      v37(v41, 0);
    }

    v13 &= v13 - 1;
    v20 = v42;
    sub_25F760F44(v42 + *(v28 + 48), &qword_27FDAFC10);
    sub_25F760F44(v20, &qword_27FDAFBB0);
    result = sub_25F760F44(v9, &qword_27FDB0140);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
    }

    v13 = *(v36 + 8 * v21);
    ++v16;
    if (v13)
    {
      v16 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F77EB64()
{
  type metadata accessor for FileDataStore.FileDataStoreError(0);
  sub_25F7819C8();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_25F77EC28(uint64_t result)
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

  result = sub_25F75BC28(result, v10, 1, v3);
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

uint64_t sub_25F77ED20(uint64_t result)
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

  v3 = sub_25F75C164(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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

uint64_t sub_25F77EE78(void **a1)
{
  v2 = *(type metadata accessor for Preset(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F76D214(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25F77EF20(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25F77EF20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F822C6C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Preset(0);
        v6 = sub_25F82253C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Preset(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25F77F470(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F77F04C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F77F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = type metadata accessor for Preset(0);
  v8 = MEMORY[0x28223BE20](v50);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v47 = -v18;
    v48 = v17;
    v20 = a1 - a3;
    v41 = v18;
    v21 = v17 + v18 * a3;
    v51 = &v40 - v15;
    v52 = v12;
LABEL_5:
    v45 = v19;
    v46 = a3;
    v43 = v21;
    v44 = v20;
    v22 = v20;
    v58 = v19;
    while (1)
    {
      v55 = v22;
      v56 = v21;
      sub_25F781F64(v21, v16, type metadata accessor for Preset);
      sub_25F781F64(v58, v12, type metadata accessor for Preset);
      v57 = type metadata accessor for Preset.Info(0);
      v23 = *(v57 + 32);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
      v54 = &v40;
      v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v24 - 8);
      v26 = &v40 - v25;
      sub_25F76183C(&v16[v23], &v40 - v25, &qword_27FDAFC20);
      v27 = sub_25F82210C();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      result = v29(&v40 - v25, 1, v27);
      if (result == 1)
      {
        break;
      }

      v53 = &v40;
      MEMORY[0x28223BE20](result);
      v30 = &v40 - v25;
      v31 = v52;
      sub_25F76183C(&v52[v32], v30, &qword_27FDAFC20);
      result = v29(v30, 1, v27);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v12 = v31;
      v33 = sub_25F8220BC();
      v34 = *(v28 + 8);
      v34(v30, v27);
      v34(v26, v27);
      sub_25F781FCC(v31, type metadata accessor for Preset);
      v16 = v51;
      result = sub_25F781FCC(v51, type metadata accessor for Preset);
      v36 = v55;
      v35 = v56;
      if (v33)
      {
        if (!v48)
        {
          goto LABEL_15;
        }

        v37 = v49;
        sub_25F781E8C(v56, v49, type metadata accessor for Preset);
        v38 = v58;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_25F781E8C(v37, v38, type metadata accessor for Preset);
        v58 = v38 + v47;
        v21 = v35 + v47;
        v39 = __CFADD__(v36, 1);
        v22 = v36 + 1;
        if (!v39)
        {
          continue;
        }
      }

      a3 = v46 + 1;
      v19 = v45 + v41;
      v20 = v44 - 1;
      v21 = v43 + v41;
      if (v46 + 1 == v42)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F77F470(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v150 = a4;
  v146 = a1;
  v165 = type metadata accessor for Preset(0);
  v158 = *(v165 - 8);
  v8 = MEMORY[0x28223BE20](v165);
  v152 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v164 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v144 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v172 = &v144 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v144 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v159 = &v144 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v21);
  v145 = &v144 - v24;
  v25 = a3[1];
  if (v25 >= 1)
  {
    v147 = v23;
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v166 = v14;
    v149 = a3;
    while (1)
    {
      v28 = v26;
      v153 = v27;
      if (v26 + 1 >= v25)
      {
        v51 = v26 + 1;
        v65 = v150;
      }

      else
      {
        v161 = v25;
        v144 = v6;
        v29 = *a3;
        v30 = *(v158 + 72);
        v171 = (*a3 + v30 * (v26 + 1));
        v31 = v145;
        sub_25F781F64(v171, v145, type metadata accessor for Preset);
        v148 = v26;
        v163 = v30;
        v170 = v29;
        sub_25F781F64(v29 + v30 * v26, v147, type metadata accessor for Preset);
        v32 = type metadata accessor for Preset.Info(0);
        v33 = *(v32 + 32);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
        v169 = &v144;
        v35 = *(*(v34 - 8) + 64);
        v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v34 - 8);
        v37 = &v144 - v36;
        sub_25F76183C(v31 + v33, &v144 - v36, &qword_27FDAFC20);
        v38 = sub_25F82210C();
        v162 = *(v38 - 8);
        v40 = v162 + 48;
        v39 = *(v162 + 48);
        result = v39(&v144 - v36, 1, v38);
        if (result == 1)
        {
          goto LABEL_143;
        }

        v156 = v32;
        v168 = v35;
        MEMORY[0x28223BE20](result);
        v41 = &v144 - v36;
        sub_25F76183C(v147 + v42, v41, &qword_27FDAFC20);
        v43 = v40;
        result = v39(v41, 1, v38);
        if (result == 1)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v44 = v39;
        LODWORD(v157) = sub_25F8220BC();
        v45 = v162 + 8;
        v46 = *(v162 + 8);
        v46(v41, v38);
        v154 = v46;
        v155 = v38;
        v162 = v45;
        v46(v37, v38);
        v4 = type metadata accessor for Preset;
        sub_25F781FCC(v147, type metadata accessor for Preset);
        sub_25F781FCC(v145, type metadata accessor for Preset);
        v47 = (v148 + 2);
        v48 = v171;
        result = v170 + v163 * (v148 + 2);
        v49 = v168;
        v50 = v43;
        while (1)
        {
          v51 = v161;
          if (v161 == v47)
          {
            break;
          }

          v169 = result;
          v170 = v47;
          v52 = v159;
          sub_25F781F64(result, v159, type metadata accessor for Preset);
          v171 = v48;
          v53 = sub_25F781F64(v48, v160, type metadata accessor for Preset);
          v168 = &v144;
          v54 = v50;
          MEMORY[0x28223BE20](v53);
          v55 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
          v56 = &v144 - v55;
          sub_25F76183C(v52 + v57, &v144 - v55, &qword_27FDAFC20);
          v58 = v155;
          result = v44(&v144 - v55, 1, v155);
          if (result == 1)
          {
            goto LABEL_138;
          }

          MEMORY[0x28223BE20](result);
          v59 = &v144 - v55;
          v60 = v160;
          sub_25F76183C(v160 + v61, v59, &qword_27FDAFC20);
          v62 = v44;
          result = v44(v59, 1, v58);
          if (result == 1)
          {
            goto LABEL_137;
          }

          v63 = v60;
          v50 = v54;
          LOBYTE(v167) = sub_25F8220BC() & 1;
          LODWORD(v167) = v167;
          v64 = v154;
          v154(v59, v58);
          v64(v56, v58);
          v4 = type metadata accessor for Preset;
          sub_25F781FCC(v63, type metadata accessor for Preset);
          sub_25F781FCC(v159, type metadata accessor for Preset);
          v47 = (v170 + 1);
          result = v169 + v163;
          v48 = v171 + v163;
          v14 = v166;
          v44 = v62;
          if ((v157 & 1) != v167)
          {
            v51 = v170;
            break;
          }
        }

        v6 = v144;
        a3 = v149;
        v65 = v150;
        v28 = v148;
        if (v157)
        {
          if (v51 < v148)
          {
            goto LABEL_130;
          }

          if (v148 < v51)
          {
            v4 = v163 * (v51 - 1);
            v66 = v51 * v163;
            v67 = v51;
            v68 = v148;
            v69 = v148 * v163;
            do
            {
              if (v68 != --v51)
              {
                v70 = *v149;
                if (!*v149)
                {
                  goto LABEL_140;
                }

                sub_25F781E8C(v70 + v69, v152, type metadata accessor for Preset);
                if (v69 < v4 || v70 + v69 >= (v70 + v66))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v69 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_25F781E8C(v152, v70 + v4, type metadata accessor for Preset);
                v65 = v150;
              }

              ++v68;
              v4 -= v163;
              v66 -= v163;
              v69 += v163;
            }

            while (v68 < v51);
            a3 = v149;
            v14 = v166;
            v28 = v148;
            v51 = v67;
          }
        }
      }

      v71 = a3[1];
      if (v51 >= v71)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v51, v28))
      {
        goto LABEL_129;
      }

      if (v51 - v28 >= v65)
      {
        goto LABEL_35;
      }

      if (__OFADD__(v28, v65))
      {
        goto LABEL_131;
      }

      if (v28 + v65 < v71)
      {
        v71 = (v28 + v65);
      }

      if (v71 < v28)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v154 = v71;
      if (v51 == v71)
      {
LABEL_35:
        v26 = v51;
        if (v51 < v28)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v144 = v6;
        v117 = *a3;
        v118 = *(v158 + 72);
        v119 = *a3 + v118 * (v51 - 1);
        v162 = -v118;
        v148 = v28;
        v120 = (v28 - v51);
        v163 = v117;
        v151 = v118;
        v121 = v117 + v51 * v118;
        do
        {
          v161 = v51;
          v155 = v121;
          v156 = v120;
          v122 = v120;
          v157 = v119;
          do
          {
            v168 = v121;
            v169 = v122;
            v123 = v172;
            sub_25F781F64(v121, v172, type metadata accessor for Preset);
            v167 = v119;
            sub_25F781F64(v119, v14, type metadata accessor for Preset);
            v124 = *(type metadata accessor for Preset.Info(0) + 32);
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
            v171 = &v144;
            v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v125 - 8);
            v127 = &v144 - v126;
            sub_25F76183C(v123 + v124, &v144 - v126, &qword_27FDAFC20);
            v128 = sub_25F82210C();
            v129 = *(v128 - 8);
            v130 = *(v129 + 48);
            result = v130(&v144 - v126, 1, v128);
            if (result == 1)
            {
              goto LABEL_135;
            }

            v170 = &v144;
            MEMORY[0x28223BE20](result);
            v131 = &v144 - v126;
            v14 = v166;
            sub_25F76183C(&v166[v132], v131, &qword_27FDAFC20);
            result = v130(v131, 1, v128);
            if (result == 1)
            {
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
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            v133 = sub_25F8220BC();
            v134 = *(v129 + 8);
            v134(v131, v128);
            v134(v127, v128);
            v4 = type metadata accessor for Preset;
            sub_25F781FCC(v14, type metadata accessor for Preset);
            result = sub_25F781FCC(v172, type metadata accessor for Preset);
            if ((v133 & 1) == 0)
            {
              break;
            }

            v135 = v169;
            if (!v163)
            {
              goto LABEL_136;
            }

            v4 = type metadata accessor for Preset;
            v136 = v168;
            v137 = v164;
            sub_25F781E8C(v168, v164, type metadata accessor for Preset);
            v138 = v167;
            swift_arrayInitWithTakeFrontToBack();
            sub_25F781E8C(v137, v138, type metadata accessor for Preset);
            v119 = v138 + v162;
            v121 = v136 + v162;
            v139 = __CFADD__(v135, 1);
            v122 = (v135 + 1);
          }

          while (!v139);
          v51 = v161 + 1;
          v119 = v157 + v151;
          v120 = (v156 - 1);
          v121 = v155 + v151;
        }

        while ((v161 + 1) != v154);
        v6 = v144;
        a3 = v149;
        v26 = v154;
        v28 = v148;
        if (v154 < v148)
        {
          goto LABEL_128;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = v153;
      }

      else
      {
        result = sub_25F75C060(0, *(v153 + 2) + 1, 1, v153);
        v27 = result;
      }

      v4 = *(v27 + 2);
      v72 = *(v27 + 3);
      v73 = v4 + 1;
      if (v4 >= v72 >> 1)
      {
        result = sub_25F75C060((v72 > 1), v4 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 2) = v73;
      v74 = &v27[16 * v4];
      *(v74 + 4) = v28;
      *(v74 + 5) = v26;
      v28 = *v146;
      if (!*v146)
      {
        goto LABEL_142;
      }

      if (v4)
      {
        while (1)
        {
          v75 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v76 = *(v27 + 4);
            v77 = *(v27 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_55:
            if (v79)
            {
              goto LABEL_117;
            }

            v92 = &v27[16 * v73];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_120;
            }

            v98 = &v27[16 * v75 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_124;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v73 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v102 = &v27[16 * v73];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_69:
          if (v97)
          {
            goto LABEL_119;
          }

          v105 = &v27[16 * v75];
          v107 = *(v105 + 4);
          v106 = *(v105 + 5);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_122;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_76:
          v4 = v75 - 1;
          if (v75 - 1 >= v73)
          {
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
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v113 = v27;
          v114 = *&v27[16 * v4 + 32];
          v115 = *&v27[16 * v75 + 40];
          sub_25F780374(*a3 + *(v158 + 72) * v114, *a3 + *(v158 + 72) * *&v27[16 * v75 + 32], (*a3 + *(v158 + 72) * v115), v28);
          if (v6)
          {
          }

          if (v115 < v114)
          {
            goto LABEL_113;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_25F76CF90(v113);
          }

          if (v4 >= *(v113 + 2))
          {
            goto LABEL_114;
          }

          v116 = &v113[16 * v4];
          *(v116 + 4) = v114;
          *(v116 + 5) = v115;
          v173 = v113;
          v4 = &v173;
          result = sub_25F76CF04(v75);
          v27 = v173;
          v73 = *(v173 + 16);
          v14 = v166;
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v80 = &v27[16 * v73 + 32];
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_115;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_116;
        }

        v87 = &v27[16 * v73];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_118;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_121;
        }

        if (v91 >= v83)
        {
          v109 = &v27[16 * v75 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_125;
          }

          if (v78 < v112)
          {
            v75 = v73 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v25 = a3[1];
      if (v26 >= v25)
      {
        goto LABEL_100;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_100:
  v28 = *v146;
  if (*v146)
  {
    v4 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_133:
      result = sub_25F76CF90(v4);
    }

    v173 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v140 = *(result + 16 * v4);
        v141 = result;
        v142 = *(result + 16 * (v4 - 1) + 40);
        sub_25F780374(*a3 + *(v158 + 72) * v140, *a3 + *(v158 + 72) * *(result + 16 * (v4 - 1) + 32), (*a3 + *(v158 + 72) * v142), v28);
        if (v6)
        {
        }

        if (v142 < v140)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_25F76CF90(v141);
        }

        if (v4 - 2 >= *(v141 + 2))
        {
          goto LABEL_127;
        }

        v143 = &v141[16 * v4];
        *v143 = v140;
        *(v143 + 1) = v142;
        v173 = v141;
        sub_25F76CF04(v4 - 1);
        result = v173;
        v4 = *(v173 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  else
  {
LABEL_145:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F780374(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v76 = type metadata accessor for Preset(0);
  v8 = MEMORY[0x28223BE20](v76);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  result = MEMORY[0x28223BE20](v14);
  v80 = &v67 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v21 = a3 - a2;
  if ((a3 - a2) != 0x8000000000000000 || v20 != -1)
  {
    v22 = (a2 - a1) / v20;
    v86 = a1;
    v85 = a4;
    if (v22 >= v21 / v20)
    {
      v25 = v21 / v20 * v20;
      if (a4 < a2 || a2 + v25 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v48 = a4 + v25;
      if (v25 >= 1)
      {
        v80 = v10;
        v81 = a4;
        v49 = -v20;
        v50 = (a4 + v25);
        v82 = a1;
        v70 = v13;
        v79 = -v20;
        do
        {
          v68 = v48;
          v51 = a2;
          a2 += v49;
          v83 = a2;
          v71 = v51;
          while (1)
          {
            if (v51 <= a1)
            {
              v86 = v51;
              v84 = v68;
              goto LABEL_63;
            }

            v75 = a3;
            v69 = v48;
            v77 = v50;
            v72 = v50 + v49;
            sub_25F781F64(v50 + v49, v13, type metadata accessor for Preset);
            sub_25F781F64(a2, v80, type metadata accessor for Preset);
            v78 = type metadata accessor for Preset.Info(0);
            v52 = *(v78 + 8);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
            v74 = &v67;
            v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v53 - 8);
            v55 = &v67 - v54;
            sub_25F76183C(&v13[v52], &v67 - v54, &qword_27FDAFC20);
            v56 = sub_25F82210C();
            v57 = *(v56 - 8);
            v58 = *(v57 + 48);
            result = v58(&v67 - v54, 1, v56);
            if (result == 1)
            {
              goto LABEL_69;
            }

            v73 = &v67;
            MEMORY[0x28223BE20](result);
            v59 = &v67 - v54;
            sub_25F76183C(&v80[v60], &v67 - v54, &qword_27FDAFC20);
            result = v58(&v67 - v54, 1, v56);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v61 = v75;
            a3 = (v75 + v79);
            v62 = sub_25F8220BC();
            v63 = *(v57 + 8);
            v63(v59, v56);
            v63(v55, v56);
            sub_25F781FCC(v80, type metadata accessor for Preset);
            v13 = v70;
            sub_25F781FCC(v70, type metadata accessor for Preset);
            a1 = v82;
            a2 = v83;
            v64 = v81;
            if (v62)
            {
              break;
            }

            v65 = v72;
            v48 = v72;
            if (v61 < v77 || a3 >= v77)
            {
              swift_arrayInitWithTakeFrontToBack();
              v49 = v79;
            }

            else
            {
              v66 = v61 == v77;
              v49 = v79;
              if (!v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v48;
            v51 = v71;
            if (v65 <= v64)
            {
              a2 = v71;
              goto LABEL_62;
            }
          }

          if (v61 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v69;
            v49 = v79;
          }

          else
          {
            v66 = v61 == v71;
            v48 = v69;
            v49 = v79;
            if (!v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v77;
        }

        while (v77 > v64);
      }

LABEL_62:
      v86 = a2;
      v84 = v48;
    }

    else
    {
      v23 = v22 * v20;
      if (a4 < a1 || a1 + v23 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v24 = v16;
      }

      else
      {
        v24 = v16;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = a4 + v23;
      v84 = a4 + v23;
      if (v23 >= 1 && a2 < a3)
      {
        v27 = &qword_27FDAFC20;
        v73 = v20;
        v74 = a3;
        v79 = v24;
        do
        {
          v82 = a1;
          v83 = a2;
          v28 = v80;
          sub_25F781F64(a2, v80, type metadata accessor for Preset);
          v81 = a4;
          sub_25F781F64(a4, v24, type metadata accessor for Preset);
          v29 = *(type metadata accessor for Preset.Info(0) + 32);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
          v78 = &v67;
          v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v30 - 8);
          v32 = &v67 - v31;
          sub_25F76183C(v28 + v29, &v67 - v31, v27);
          v33 = sub_25F82210C();
          v34 = *(v33 - 8);
          v35 = *(v34 + 48);
          result = v35(&v67 - v31, 1, v33);
          if (result == 1)
          {
            goto LABEL_67;
          }

          v77 = &v67;
          MEMORY[0x28223BE20](result);
          v36 = &v67 - v31;
          v38 = &v67 - v31;
          v40 = v39;
          sub_25F76183C(v79 + v37, v38, v39);
          result = v35(v36, 1, v33);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v41 = sub_25F8220BC();
          v42 = *(v34 + 8);
          v42(v36, v33);
          v42(v32, v33);
          v24 = v79;
          sub_25F781FCC(v79, type metadata accessor for Preset);
          sub_25F781FCC(v80, type metadata accessor for Preset);
          v43 = v82;
          a2 = v83;
          a4 = v81;
          v44 = v74;
          if (v41)
          {
            v45 = v73;
            v27 = v40;
            if (v82 < v83 || v82 >= v73 + v83)
            {
              swift_arrayInitWithTakeFrontToBack();
              a2 += v45;
              v46 = v44;
            }

            else
            {
              v46 = v74;
              if (v82 == v83)
              {
                a2 = v73 + v83;
              }

              else
              {
                swift_arrayInitWithTakeBackToFront();
                a2 += v45;
              }
            }
          }

          else
          {
            v45 = v73;
            v47 = v73 + v81;
            v27 = v40;
            if (v82 < v81 || v82 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v44;
            }

            else
            {
              v46 = v74;
              if (v82 != v81)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v85 = v47;
            a4 += v45;
          }

          a1 = v45 + v43;
          v86 = a1;
        }

        while (a4 < v75 && a2 < v46);
      }
    }

LABEL_63:
    sub_25F76D094(&v86, &v85, &v84);
    return 1;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_25F780C54(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_25F780DB4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_25F781210(v8, v4, v2);
  result = MEMORY[0x25F8E88D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_25F780DB4(unint64_t *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v39 = a1;
  v50 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
  v5 = MEMORY[0x28223BE20](v48);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - v7;
  v8 = type metadata accessor for Preset(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v43 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v37 - v12;
  v40 = 0;
  v13 = 0;
  v51 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v51;
    v26 = v42;
    sub_25F76183C(v51[6] + *(v43 + 72) * v24, v42, &qword_27FDAFBB0);
    v27 = v25[7];
    v28 = *(v46 + 72);
    v41 = v24;
    v29 = v27 + v28 * v24;
    v30 = v45;
    sub_25F781F64(v29, v45, type metadata accessor for Preset);
    v31 = v47;
    sub_25F76183C(v26, v47, &qword_27FDAFBB0);
    v32 = v48;
    sub_25F781F64(v30, v31 + *(v48 + 48), type metadata accessor for Preset);
    v33 = v44;
    sub_25F760FA4(v31, v44, &qword_27FDB0150);
    v34 = *(v32 + 48);
    v35 = v49;
    sub_25F781F64(v33 + v34, v49, type metadata accessor for Preset.Info);
    sub_25F781FCC(v33 + v34, type metadata accessor for Preset);
    LODWORD(v34) = *(v35 + *(v50 + 28));
    sub_25F781FCC(v35, type metadata accessor for Preset.Info);
    sub_25F760F44(v33, &qword_27FDAFBB0);
    sub_25F781FCC(v30, type metadata accessor for Preset);
    result = sub_25F760F44(v26, &qword_27FDAFBB0);
    v19 = v52;
    if (v34)
    {
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_25F78A89C(v39, v38, v40, v51);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_25F78A89C(v39, v38, v40, v51);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v52 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25F781210(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_25F780DB4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_25F781288(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for Preset(0);
  v55 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - v13;
  v15 = &qword_27FDAFBB0;
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v46 = *(v45[0] - 8);
  MEMORY[0x28223BE20](v45[0]);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0148);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v48 = a1;
  v49 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v50 = v22;
  v51 = 0;
  v52 = v25 & v23;
  v53 = a2;
  v54 = a3;

  v45[1] = a3;

  while (1)
  {
    sub_25F78B6B8(v20);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
    if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
    {
      sub_25F76E0F0();
    }

    v29 = *(v28 + 48);
    v30 = v15;
    sub_25F760FA4(v20, v17, v15);
    sub_25F781E8C(&v20[v29], v14, type metadata accessor for Preset);
    v31 = *a5;
    v33 = sub_25F75D8B4(v17);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25F75DC88();
        v40 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = *(v55 + 72) * v33;
      v27 = v47;
      sub_25F781F64(v40[7] + v26, v47, type metadata accessor for Preset);
      sub_25F781FCC(v14, type metadata accessor for Preset);
      v15 = v30;
      sub_25F760F44(v17, v30);
      sub_25F781E28(v27, v40[7] + v26);
      a4 = 1;
    }

    else
    {
      sub_25F75E660(v36, a4 & 1);
      v38 = sub_25F75D8B4(v17);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v33 = v38;
      v40 = *a5;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v33 >> 6) + 8] |= 1 << v33;
      v15 = v30;
      sub_25F760FA4(v17, v40[6] + *(v46 + 72) * v33, v30);
      sub_25F781E8C(v14, v40[7] + *(v55 + 72) * v33, type metadata accessor for Preset);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_25F822D2C();
  __break(1u);
  return result;
}

uint64_t sub_25F7816FC(uint64_t a1)
{
  v3 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25F77A310(v8);
  if (!v1)
  {
    v10 = v6[7];
    if (*&v8[v10])
    {
      v11 = *&v8[v10];
    }

    else
    {
      v11 = (*&v8[v6[10]])(result);
    }

    v12 = *(v11 + 16);

    if (v12)
    {
      sub_25F75D8B4(a1);
      v14 = v13;

      if (v14)
      {
        sub_25F75D978(a1, &v8[v6[5]]);
        sub_25F821EFC();
        swift_allocObject();
        sub_25F821EEC();
        type metadata accessor for FileDataStore(0);
        sub_25F821ECC();
        sub_25F77E284(v8, v5);
        v15 = sub_25F7AF590(v5, 2, 0);
        v17 = v16;
        sub_25F781FCC(v5, type metadata accessor for ProDataOnDisk);
        sub_25F82203C();
        sub_25F76D178(v15, v17);

        return sub_25F781FCC(v8, type metadata accessor for ProData);
      }
    }

    else
    {
    }

    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7819C8();
    swift_allocError();
    sub_25F76183C(a1, v18, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_25F781FCC(v8, type metadata accessor for ProData);
  }

  return result;
}

unint64_t sub_25F7819C8()
{
  result = qword_27FDB0108;
  if (!qword_27FDB0108)
  {
    type metadata accessor for FileDataStore.FileDataStoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0108);
  }

  return result;
}

uint64_t sub_25F781A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F821F4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F781B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F821F4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F781C74()
{
  sub_25F821F4C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PropertyListFormat(319);
    if (v1 <= 0x3F)
    {
      sub_25F761BC0();
      if (v2 <= 0x3F)
      {
        sub_25F761C18();
        if (v3 <= 0x3F)
        {
          sub_25F781D50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F781D50()
{
  if (!qword_27FDB0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFBB0);
    v0 = sub_25F82256C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB0120);
    }
  }
}

void sub_25F781DB4()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_25F781E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F781E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F781EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F781F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F781FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PrefsDataStore.init(defaultPreset:userPresetCapacity:applePresetCapacity:appleBuiltInPresets:doAsRoot:testing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v54 = a6;
  v53 = a5;
  v51 = a3;
  v11 = type metadata accessor for Preset(0);
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v50 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v15 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v17 = &v50 - v16;
  v18 = type metadata accessor for PrefsDataStore(0);
  v19 = v18[9];
  v50 = sub_25F82235C();
  *(a7 + v19) = v50;
  v20 = *MEMORY[0x277CBF030];
  *(a7 + v18[12]) = *MEMORY[0x277CBF030];
  v21 = a4;
  sub_25F76183C(a1, a7, &qword_27FDAFBB0);
  *(a7 + v18[5]) = a2;
  *(a7 + v18[6]) = v51;
  v22 = *(a4 + 16);
  v56 = v21;
  v57 = a1;
  v55 = v18;
  if (v22)
  {
    v51 = a7;
    v62 = MEMORY[0x277D84F90];
    v23 = v20;
    sub_25F817C68(0, v22, 0);
    v24 = v62;
    v25 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v26 = *(v58 + 72);
    v27 = v22;
    do
    {
      v28 = *(v59 + 48);
      sub_25F78C1F0(v25, &v17[v28], type metadata accessor for Preset);
      sub_25F76183C(&v17[v28], v17, &qword_27FDAFBB0);
      v62 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_25F817C68(v29 > 1, v30 + 1, 1);
        v24 = v62;
      }

      *(v24 + 16) = v30 + 1;
      sub_25F760FA4(v17, v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30, &qword_27FDAFBA8);
      v25 += v26;
      --v27;
    }

    while (v27);
    a7 = v51;
    v21 = v56;
    v31 = v57;
    v18 = v55;
  }

  else
  {
    v32 = v20;
    v24 = MEMORY[0x277D84F90];
    v31 = a1;
  }

  v33 = v52;
  v34 = v58;
  if (*(v24 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
    v35 = sub_25F822A8C();
  }

  else
  {
    v35 = MEMORY[0x277D84F98];
  }

  v62 = v35;

  sub_25F75D184(v36, 1, &v62);

  *(a7 + v18[7]) = v62;
  if (v22)
  {
    v62 = MEMORY[0x277D84F90];
    sub_25F817C48(0, v22, 0);
    v37 = v62;
    v38 = v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v39 = *(v34 + 72);
    do
    {
      v40 = v61;
      sub_25F78C1F0(v38, v61, type metadata accessor for Preset);
      sub_25F76183C(v40, v33, &qword_27FDAFBB0);
      sub_25F78CBE8(v40, type metadata accessor for Preset);
      v62 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_25F817C48(v41 > 1, v42 + 1, 1);
        v37 = v62;
      }

      *(v37 + 16) = v42 + 1;
      sub_25F760FA4(v33, v37 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v42, &qword_27FDAFBB0);
      v38 += v39;
      --v22;
    }

    while (v22);

    v18 = v55;
    v31 = v57;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *(a7 + v18[8]) = v37;
  *(a7 + v18[13]) = v53;
  if (v54)
  {
    v43 = *MEMORY[0x277CBF040];
    *(a7 + v18[11]) = *MEMORY[0x277CBF040];
    v44 = qword_27FDAF850;
    v45 = v43;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = qword_27FDBF7A0;
    result = sub_25F760F44(v31, &qword_27FDAFBB0);
    *(a7 + v18[10]) = v46;
  }

  else
  {
    v48 = *MEMORY[0x277CBF020];
    sub_25F760F44(v31, &qword_27FDAFBB0);
    *(a7 + v18[11]) = v48;
    v49 = v50;
    *(a7 + v18[10]) = v50;

    return v49;
  }

  return result;
}

void (*sub_25F7826B8(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_25F76183C(a2, v8, &qword_27FDAFBB0);
  v6[5] = sub_25F78AF30(v6, v9);
  return sub_25F78279C;
}

void sub_25F78279C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_25F760F44(v2, &qword_27FDAFBB0);
  free(v2);

  free(v1);
}

uint64_t sub_25F782808(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0140);
  v4 = MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = *(a1 + 64);
  v36 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v40 = a1;

  v16 = 0;
  v38 = v3;
  while (v13)
  {
LABEL_11:
    v22 = __clz(__rbit64(v13)) | (v16 << 6);
    v23 = v40;
    v24 = *(v40 + 48);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
    sub_25F76183C(v24 + *(*(v25 - 8) + 72) * v22, v9, &qword_27FDAFBB0);
    v26 = *(v23 + 56);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
    v28 = v38;
    sub_25F76183C(v26 + *(*(v27 - 8) + 72) * v22, &v9[*(v38 + 48)], &qword_27FDAFC10);
    v29 = v42;
    sub_25F76183C(v9, v42, &qword_27FDB0140);
    v30 = sub_25F7826B8(v41, v29);
    v32 = v31;
    v33 = type metadata accessor for Preset(0);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      (v30)(v41, 0);
    }

    else
    {
      v37 = v30;
      v17 = v35;
      sub_25F76183C(v9, v35, &qword_27FDB0140);
      v18 = *(v28 + 48);
      v19 = type metadata accessor for Preset.Info(0);
      sub_25F781EF4(v17 + v18, v32 + *(v19 + 36));
      sub_25F760F44(v17, &qword_27FDAFBB0);
      v37(v41, 0);
    }

    v13 &= v13 - 1;
    v20 = v42;
    sub_25F760F44(v42 + *(v28 + 48), &qword_27FDAFC10);
    sub_25F760F44(v20, &qword_27FDAFBB0);
    result = sub_25F760F44(v9, &qword_27FDB0140);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
    }

    v13 = *(v36 + 8 * v21);
    ++v16;
    if (v13)
    {
      v16 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F782BC4(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for PrefsDataStore(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0188);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F821EFC();
  swift_allocObject();
  v11 = sub_25F821EEC();
  sub_25F821ECC();
  v41 = v1;
  sub_25F78713C(a1, v10);
  v12 = v42;
  v13 = sub_25F7AF590(v10, 2, 0);
  v15 = v14;
  sub_25F78CBE8(v10, type metadata accessor for ProDataOnDisk);
  if (v12)
  {
  }

  v37 = v3;
  v38 = v11;
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = v13;
  v19 = v17;
  v39 = v18;
  v42 = v15;
  v20 = sub_25F82200C();
  v43 = 0;
  v21 = [v19 propertyListWithData:v20 options:0 format:0 error:&v43];

  v22 = v43;
  if (!v21)
  {
    v32 = v22;
    sub_25F821F0C();

    swift_willThrow();
    sub_25F76D178(v39, v42);
  }

  sub_25F82285C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0190);
  swift_dynamicCast();
  v35 = v43;
  v23 = sub_25F8225BC();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v34 = type metadata accessor for PrefsDataStore;
  v24 = v41;
  v25 = v36;
  sub_25F78C1F0(v41, v36, type metadata accessor for PrefsDataStore);
  v26 = *(v40 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_25F78C4E8(v25, v27 + ((v26 + 32) & ~v26), type metadata accessor for PrefsDataStore);
  sub_25F787D50(0, 0, v7, &unk_25F8250A8, v27);

  sub_25F760F44(v7, &qword_27FDB0188);
  v28 = *(v24 + *(v37 + 52));
  sub_25F78C1F0(v24, v25, v34);
  v29 = swift_allocObject();
  *(v29 + 16) = v35;
  sub_25F78C4E8(v25, v29 + ((v26 + 24) & ~v26), type metadata accessor for PrefsDataStore);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25F78C98C;
  *(v30 + 24) = v29;
  aBlock[4] = sub_25F78CA00;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F788098;
  aBlock[3] = &block_descriptor;
  v31 = _Block_copy(aBlock);

  v28(v31);
  sub_25F76D178(v39, v42);

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  return result;
}

void sub_25F783140(uint64_t a1@<X8>)
{
  v82 = a1;
  v95[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v77 - v4;
  v5 = type metadata accessor for Preset(0);
  v94 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v93 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v77 - v12;
  v14 = sub_25F8221EC();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = type metadata accessor for ProDataOnDisk();
  v21 = MEMORY[0x28223BE20](v20);
  v91 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v77 - v23;
  v24 = type metadata accessor for PrefsDataStore(0);
  v25 = *(v1 + v24[10]);
  v26 = *(v1 + v24[11]);
  v27 = v24[12];
  v84 = v1;
  v88 = CFPreferencesCopyMultiple(0, v25, v26, *(v1 + v27));
  if (![(__CFDictionary *)v88 count])
  {
    v79 = v20;
    v80 = v13;
    v91 = v11;
    v86 = v7;
    sub_25F8221DC();
    v42 = sub_25F8221CC();
    v43 = sub_25F8226AC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v95[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_25F75CA94(0xD000000000000017, 0x800000025F82DB20, v95);
      _os_log_impl(&dword_25F74E000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x25F8E88D0](v45, -1, -1);
      MEMORY[0x25F8E88D0](v44, -1, -1);
    }

    (*(v89 + 8))(v17, v90);
    v46 = v84;
    sub_25F76183C(v84, v80, &qword_27FDAFBB0);
    v47 = MEMORY[0x277D84F90];
    v78 = sub_25F7CA6A0(MEMORY[0x277D84F90]);
    v77 = sub_25F7C9F08(v47);
    v48 = *(v46 + v24[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0138);
    v49 = sub_25F822A6C();
    v50 = v49;
    v51 = 0;
    v53 = v48 + 64;
    v52 = *(v48 + 64);
    v89 = v49;
    v90 = v48;
    v54 = 1 << *(v48 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & v52;
    v57 = (v54 + 63) >> 6;
    v85 = v49 + 64;
    v58 = v91;
    v87 = v3;
    v59 = v93;
    v60 = v94;
    if ((v55 & v52) != 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    v62 = v51;
    v63 = v79;
    while (1)
    {
      v51 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v51 >= v57)
      {
        break;
      }

      v64 = *(v53 + 8 * v51);
      ++v62;
      if (v64)
      {
        v61 = __clz(__rbit64(v64));
        v56 = (v64 - 1) & v64;
        while (2)
        {
          v65 = v61 | (v51 << 6);
          v66 = v90;
          v67 = *(v59 + 72) * v65;
          sub_25F76183C(*(v90 + 48) + v67, v58, &qword_27FDAFBB0);
          v68 = v86;
          sub_25F78C1F0(*(v66 + 56) + *(v60 + 72) * v65, v86, type metadata accessor for Preset);
          v69 = type metadata accessor for Preset.Info(0);
          v70 = v92;
          sub_25F76183C(v68 + *(v69 + 36), v92, &qword_27FDAFC10);
          v71 = v68;
          v58 = v91;
          sub_25F78CBE8(v71, type metadata accessor for Preset);
          *(v85 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
          v50 = v89;
          sub_25F760FA4(v58, *(v89 + 48) + v67, &qword_27FDAFBB0);
          sub_25F760FA4(v70, *(v50 + 56) + *(v87 + 72) * v65, &qword_27FDAFC10);
          v72 = *(v50 + 16);
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (!v73)
          {
            *(v50 + 16) = v74;
            v59 = v93;
            v60 = v94;
            if (!v56)
            {
              goto LABEL_13;
            }

LABEL_12:
            v61 = __clz(__rbit64(v56));
            v56 &= v56 - 1;
            continue;
          }

          break;
        }

LABEL_26:
        __break(1u);
      }
    }

    v41 = v81;
    sub_25F760FA4(v80, v81, &qword_27FDAFBB0);
    v75 = v77;
    *(v41 + v63[5]) = v78;
    *(v41 + v63[6]) = v75;
    *(v41 + v63[7]) = v50;
    v32 = v88;
    goto LABEL_22;
  }

  sub_25F8221DC();
  v28 = sub_25F8221CC();
  v29 = sub_25F8226AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v95[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_25F75CA94(0xD00000000000001BLL, 0x800000025F82DB00, v95);
    _os_log_impl(&dword_25F74E000, v28, v29, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x25F8E88D0](v31, -1, -1);
    MEMORY[0x25F8E88D0](v30, -1, -1);
  }

  (*(v89 + 8))(v19, v90);
  v32 = v88;
  v33 = v91;
  v34 = objc_opt_self();
  v95[0] = 0;
  v35 = [v34 dataWithPropertyList:v32 format:200 options:0 error:v95];
  v36 = v95[0];
  if (v35)
  {
    v37 = sub_25F82202C();
    v39 = v38;

    sub_25F821EBC();
    swift_allocObject();
    sub_25F821EAC();
    v40 = v83;
    sub_25F7AF2AC(v33);

    sub_25F76D178(v37, v39);
    if (!v40)
    {
      v41 = v81;
      sub_25F78C4E8(v33, v81, type metadata accessor for ProDataOnDisk);
LABEL_22:
      sub_25F786F48(v41, v82);

      sub_25F78CBE8(v41, type metadata accessor for ProDataOnDisk);
      return;
    }
  }

  else
  {
    v76 = v36;
    sub_25F821F0C();

    swift_willThrow();
  }
}

void PrefsDataStore.addPreset(_:)(int64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v84 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v98 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v100 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v97 = &v84 - v15;
  v103 = type metadata accessor for Preset(0);
  v106 = *(v103 - 8);
  v16 = MEMORY[0x28223BE20](v103);
  v99 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v102 = &v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - v23;
  v104 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v104);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Preset.Info(0);
  if (*(a1 + *(v105 + 28)))
  {
    v96 = *(v105 + 28);
    sub_25F783140(v26);
    if (!v2)
    {
      v27 = v104[7];
      v28 = *(v26 + v27);
      v93 = a1;
      v94 = v26;
      v89 = v1;
      v91 = v12;
      v87 = v8;
      v88 = v27;
      v90 = 0;
      v92 = v28;
      if (v28)
      {
        v29 = v28;
        v30 = v28;
      }

      else
      {
        v30 = (*(v26 + v104[10]))();
        v29 = 0;
      }

      v32 = (v30 + 64);
      v33 = 1 << *(v30 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v30 + 64);
      v36 = (v33 + 63) >> 6;
      v95 = v29;

      v37 = 0;
      v38 = MEMORY[0x277D84F90];
LABEL_10:
      v39 = v37;
      if (!v35)
      {
        goto LABEL_12;
      }

      do
      {
        v37 = v39;
LABEL_15:
        v40 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v26 = *(v106 + 72);
        sub_25F78C1F0(*(v30 + 56) + v26 * (v40 | (v37 << 6)), v22, type metadata accessor for Preset);
        sub_25F78C4E8(v22, v24, type metadata accessor for Preset);
        if (v24[*(v105 + 28)])
        {
          sub_25F78C4E8(v24, v102, type metadata accessor for Preset);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25F817D08(0, *(v38 + 16) + 1, 1);
            v38 = v107;
          }

          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            v86 = v43 + 1;
            v85 = v43;
            sub_25F817D08(v42 > 1, v43 + 1, 1);
            v44 = v86;
            v43 = v85;
            v38 = v107;
          }

          *(v38 + 16) = v44;
          sub_25F78C4E8(v102, v38 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + v43 * v26, type metadata accessor for Preset);
          goto LABEL_10;
        }

        sub_25F78CBE8(v24, type metadata accessor for Preset);
        v39 = v37;
      }

      while (v35);
      while (1)
      {
LABEL_12:
        v37 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_53:
          v32 = sub_25F75C164(0, v32[2] + 1, 1, v32);
LABEL_43:
          v72 = v32[2];
          v71 = v32[3];
          v47 = v104;
          if (v72 >= v71 >> 1)
          {
            v32 = sub_25F75C164(v71 > 1, v72 + 1, 1, v32);
          }

          v32[2] = v72 + 1;
          sub_25F760FA4(v100, v32 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v72, &qword_27FDAFBB0);
          *(v89 + v26) = v32;
LABEL_46:
          sub_25F76183C(v36, v91, &qword_27FDAFBB0);
          v73 = v101;
          sub_25F78C1F0(v36, v101, type metadata accessor for Preset);
          v74 = v106;
          v75 = v103;
          v76 = (*(v106 + 56))(v73, 0, 1, v103);
          v77 = v95;
          if (!v92)
          {
            v77 = (*(v35 + v47[10]))(v76);
          }

          v107 = v77;
          if ((*(v74 + 48))(v73, 1, v75) == 1)
          {

            sub_25F760F44(v73, &qword_27FDAFBE0);
            v78 = v87;
            v79 = v91;
            sub_25F761908(v91);
            sub_25F760F44(v78, &qword_27FDAFBE0);
            sub_25F760F44(v79, &qword_27FDAFBB0);

            v80 = v107;
          }

          else
          {
            v81 = v99;
            sub_25F78C4E8(v73, v99, type metadata accessor for Preset);

            v82 = swift_isUniquelyReferenced_nonNull_native();
            v109 = v77;
            v83 = v91;
            sub_25F76074C(v81, v91, v82);
            sub_25F760F44(v83, &qword_27FDAFBB0);

            v80 = v109;
          }

          *(v35 + v88) = v80;
          sub_25F782BC4(v35);
          sub_25F78CBE8(v35, type metadata accessor for ProData);
          return;
        }

        if (v37 >= v36)
        {
          break;
        }

        v35 = v32[v37];
        ++v39;
        if (v35)
        {
          goto LABEL_15;
        }
      }

      v45 = *(v38 + 16);

      v47 = v104;
      v35 = v94;
      v48 = v94 + v104[8];
      if (*(v48 + 8))
      {
        v49 = (*(v94 + v104[11]))(v46);
      }

      else
      {
        v49 = *v48;
      }

      v50 = v95;
      if (v45 < v49)
      {
        v51 = v95;
        if (!v92)
        {
          v52 = v95;
          v51 = (*(v35 + v47[10]))();
          v50 = v52;
        }

        MEMORY[0x28223BE20](v50);
        v36 = v93;
        *(&v84 - 2) = v93;

        v53 = sub_25F75AB8C(sub_25F78202C, (&v84 - 4), v51);

        if (v53)
        {
          type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
          sub_25F78C198();
          swift_allocError();
          v55 = v54;
          v107 = 0;
          v108 = 0xE000000000000000;
          sub_25F82292C();

          v107 = 0xD000000000000022;
          v108 = 0x800000025F82DAD0;
          v56 = sub_25F82212C();
          MEMORY[0x25F8E7510](v56);

          v57 = v108;
          *v55 = v107;
          v55[1] = v57;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_25F78CBE8(v35, type metadata accessor for ProData);
          return;
        }

        if (!*(v36 + v96))
        {
          v67 = v97;
          sub_25F76183C(v36, v97, &qword_27FDAFBB0);
          v68 = v87;
          sub_25F78C1F0(v36, v87, type metadata accessor for Preset);
          (*(v106 + 56))(v68, 0, 1, v103);
          v69 = type metadata accessor for PrefsDataStore(0);
          v70 = v89;
          sub_25F7535C0(v68, v67);
          sub_25F76183C(v36, v100, &qword_27FDAFBB0);
          v26 = *(v69 + 32);
          v32 = *(v70 + v26);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_43;
          }

          goto LABEL_53;
        }

        goto LABEL_46;
      }

      type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      v59 = v58;
      v107 = 0;
      v108 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000019, 0x800000025F82D9D0);
      v109 = v45;
      v60 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v60);

      MEMORY[0x25F8E7510](0xD000000000000011, 0x800000025F82D9F0);
      v109 = v49;
      v61 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v61);

      MEMORY[0x25F8E7510](0x797420726F662029, 0xEB00000000206570);
      v62 = 0xEA00000000006D6FLL;
      v63 = 0x7473754372657355;
      if (*(v93 + v96) != 1)
      {
        v63 = 0xD000000000000011;
        v62 = 0x800000025F82DA10;
      }

      if (*(v93 + v96))
      {
        v64 = v63;
      }

      else
      {
        v64 = 0x697542656C707041;
      }

      if (*(v93 + v96))
      {
        v65 = v62;
      }

      else
      {
        v65 = 0xEC0000006E49746CLL;
      }

      MEMORY[0x25F8E7510](v64, v65);

      MEMORY[0x25F8E7510](46, 0xE100000000000000);
      v66 = v108;
      *v59 = v107;
      v59[1] = v66;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25F78CBE8(v35, type metadata accessor for ProData);
    }
  }

  else
  {
    type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
    sub_25F78C198();
    swift_allocError();
    *v31 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t PrefsDataStore.removePreset(_:)(uint64_t a1)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Preset(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F783140(v15);
  if (!v2)
  {
    v32 = v12;
    v33 = v7;
    v30 = v5;
    v31 = 0;
    if (sub_25F82213C())
    {
      LOBYTE(v1) = type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      *v16 = 0xD000000000000026;
      v16[1] = 0x800000025F82DA50;
LABEL_16:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_17:
      sub_25F78CBE8(v15, type metadata accessor for ProData);
      return v1 & 1;
    }

    v17 = *(v13 + 28);
    v18 = *&v15[v17];
    if (v18)
    {
      v19 = *&v15[v17];
    }

    else
    {
      v19 = (*&v15[*(v13 + 40)])();
    }

    v20 = *(v19 + 16);

    if (!v20 || (v21 = sub_25F75D8B4(v34), (v22 & 1) == 0))
    {

      LOBYTE(v1) = type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      sub_25F76183C(v34, v26, &qword_27FDAFBB0);
      goto LABEL_16;
    }

    sub_25F78C1F0(*(v19 + 56) + *(v33 + 72) * v21, v10, type metadata accessor for Preset);

    v23 = v32;
    sub_25F78C4E8(v10, v32, type metadata accessor for Preset);
    if (!*(v23 + *(type metadata accessor for Preset.Info(0) + 28)))
    {
      LOBYTE(v1) = type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      *v28 = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25F78CBE8(v23, type metadata accessor for Preset);
      goto LABEL_17;
    }

    if (!v18)
    {
      v18 = (*&v15[*(v13 + 40)])();
    }

    v35 = v18;
    v24 = v30;
    sub_25F761908(v34);
    *&v15[v17] = v35;
    v25 = v31;
    sub_25F782BC4(v15);
    LOBYTE(v1) = v25;
    sub_25F78CBE8(v23, type metadata accessor for Preset);
    sub_25F78CBE8(v15, type metadata accessor for ProData);
    if (!v25)
    {
      v1 = (*(v33 + 48))(v24, 1, v6) != 1;
    }

    sub_25F760F44(v24, &qword_27FDAFBE0);
  }

  return v1 & 1;
}

uint64_t PrefsDataStore.presetOrder()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v88 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v89 = &v85 - v2;
  v96 = sub_25F8221EC();
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Preset(0);
  v103 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v85 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v85 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v85 - v20);
  v22 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v104;
  sub_25F783140(v24);
  if (!v25)
  {
    v101 = v21;
    v104 = v19;
    v98 = v16;
    v99 = v10;
    v90 = 0;
    v86 = *(v0 + *(type metadata accessor for PrefsDataStore(0) + 32));
    v26 = *&v24[*(v22 + 28)];
    v100 = v7;
    v87 = v24;
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = (*&v24[*(v22 + 40)])();
    }

    v28 = 1 << *(v27 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v27 + 64);
    v31 = (v28 + 63) >> 6;

    v32 = 0;
    v102 = MEMORY[0x277D84F90];
    v33 = v103;
LABEL_8:
    v34 = v32;
    if (!v30)
    {
      goto LABEL_10;
    }

    do
    {
      v32 = v34;
LABEL_13:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v33[9];
      v37 = v104;
      sub_25F78C1F0(*(v27 + 56) + v36 * (v35 | (v32 << 6)), v104, type metadata accessor for Preset);
      v38 = v37;
      v39 = v101;
      sub_25F78C4E8(v38, v101, type metadata accessor for Preset);
      if (*(v39 + *(type metadata accessor for Preset.Info(0) + 28)) == 1)
      {
        sub_25F78C4E8(v39, v98, type metadata accessor for Preset);
        v40 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817D08(0, v40[2] + 1, 1);
          v33 = v103;
          v40 = v105;
        }

        v43 = v40[2];
        v42 = v40[3];
        v44 = v43 + 1;
        v45 = v98;
        if (v43 >= v42 >> 1)
        {
          v47 = v43 + 1;
          v102 = v43;
          sub_25F817D08(v42 > 1, v43 + 1, 1);
          v44 = v47;
          v43 = v102;
          v33 = v103;
          v45 = v98;
          v40 = v105;
        }

        v40[2] = v44;
        v46 = *(v33 + 80);
        v102 = v40;
        sub_25F78C4E8(v45, v40 + ((v46 + 32) & ~v46) + v43 * v36, type metadata accessor for Preset);
        goto LABEL_8;
      }

      sub_25F78CBE8(v39, type metadata accessor for Preset);
      v34 = v32;
    }

    while (v30);
    while (1)
    {
LABEL_10:
      v32 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v32 >= v31)
      {
        break;
      }

      v30 = *(v27 + 64 + 8 * v32);
      ++v34;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v49 = v102;
    v98 = v102[2];
    if (v98)
    {
      v50 = 0;
      v94 = "urrently active preset";
      v95 = "";
      ++v92;
      v93 = "Failed to order preset '";
      v101 = MEMORY[0x277D84F90];
      *&v48 = 136315138;
      v91 = v48;
      while (v50 < v49[2])
      {
        v51 = v33[9];
        v104 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        sub_25F78C1F0(v49 + v104 + v51 * v50, v13, type metadata accessor for Preset);
        v52 = type metadata accessor for Preset.Info(0);
        v53 = *(v52 + 32);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
        MEMORY[0x28223BE20](v54 - 8);
        v56 = &v85 - v55;
        sub_25F76183C(&v13[v53], &v85 - v55, &qword_27FDAFC20);
        v57 = sub_25F82210C();
        LODWORD(v53) = (*(*(v57 - 8) + 48))(v56, 1, v57);
        sub_25F760F44(v56, &qword_27FDAFC20);
        if (v53 == 1)
        {
          v105 = 0;
          v106 = 0xE000000000000000;
          sub_25F82292C();
          MEMORY[0x25F8E7510](0xD000000000000018, v94 | 0x8000000000000000);
          MEMORY[0x25F8E7510](*&v13[*(v52 + 20)], *&v13[*(v52 + 20) + 8]);
          MEMORY[0x25F8E7510](0x5520687469772027, 0xED00002720444955);
          v58 = sub_25F82212C();
          MEMORY[0x25F8E7510](v58);

          MEMORY[0x25F8E7510](0xD000000000000021, v93 | 0x8000000000000000);
          v60 = v105;
          v59 = v106;
          v61 = v97;
          sub_25F8221DC();

          v62 = sub_25F8221CC();
          v63 = sub_25F8226AC();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v105 = v65;
            *v64 = v91;
            *(v64 + 4) = sub_25F75CA94(v60, v59, &v105);
            _os_log_impl(&dword_25F74E000, v62, v63, "%s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v65);
            MEMORY[0x25F8E88D0](v65, -1, -1);
            MEMORY[0x25F8E88D0](v64, -1, -1);

            (*v92)(v97, v96);
          }

          else
          {

            (*v92)(v61, v96);
          }

          v49 = v102;
          sub_25F78CBE8(v13, type metadata accessor for Preset);
          v33 = v103;
        }

        else
        {
          sub_25F78C4E8(v13, v99, type metadata accessor for Preset);
          v66 = v101;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v107 = v66;
          if ((v67 & 1) == 0)
          {
            sub_25F817D08(0, v66[2] + 1, 1);
            v66 = v107;
          }

          v49 = v102;
          v33 = v103;
          v68 = v104;
          v70 = v66[2];
          v69 = v66[3];
          v71 = v66;
          v72 = v99;
          if (v70 >= v69 >> 1)
          {
            sub_25F817D08(v69 > 1, v70 + 1, 1);
            v72 = v99;
            v33 = v103;
            v71 = v107;
          }

          v71[2] = v70 + 1;
          v101 = v71;
          sub_25F78C4E8(v72, v71 + v68 + v70 * v51, type metadata accessor for Preset);
        }

        if (v98 == ++v50)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:

      __break(1u);
      return result;
    }

    v101 = MEMORY[0x277D84F90];
LABEL_36:

    v105 = v101;

    v73 = v90;
    sub_25F7883F0(&v105);
    v90 = v73;
    if (v73)
    {
      goto LABEL_48;
    }

    v74 = v105;
    v75 = v105[2];
    v76 = v89;
    if (v75)
    {
      v105 = MEMORY[0x277D84F90];
      sub_25F817C48(0, v75, 0);
      v77 = v105;
      v78 = v74 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v79 = v33[9];
      v103 = v74;
      v104 = v79;
      v80 = v88;
      do
      {
        v81 = v100;
        sub_25F78C1F0(v78, v100, type metadata accessor for Preset);
        sub_25F76183C(v81, v76, &qword_27FDAFBB0);
        sub_25F78CBE8(v81, type metadata accessor for Preset);
        v105 = v77;
        v83 = v77[2];
        v82 = v77[3];
        if (v83 >= v82 >> 1)
        {
          sub_25F817C48(v82 > 1, v83 + 1, 1);
          v80 = v88;
          v77 = v105;
        }

        v77[2] = v83 + 1;
        sub_25F760FA4(v76, v77 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v83, &qword_27FDAFBB0);
        v78 += v104;
        --v75;
      }

      while (v75);
    }

    else
    {

      v77 = MEMORY[0x277D84F90];
    }

    v105 = v86;

    sub_25F77ED20(v77);
    v21 = v105;
    sub_25F78CBE8(v87, type metadata accessor for ProData);
  }

  return v21;
}

void PrefsDataStore.addUA(_:to:live:)(uint64_t a1, uint64_t a2, char a3)
{
  v93 = a2;
  v91 = a1;
  v6 = type metadata accessor for UserAdjustment();
  MEMORY[0x28223BE20](v6 - 8);
  v85 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v84 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v82 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v88 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v76 - v23;
  v87 = type metadata accessor for Preset(0);
  v90 = *(v87 - 8);
  v25 = MEMORY[0x28223BE20](v87);
  v83 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v76 - v28;
  MEMORY[0x28223BE20](v27);
  v92 = v76 - v30;
  v31 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v31);
  v33 = v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v81 = v3;
    v34 = v33;
    sub_25F783140(v33);
    if (!v4)
    {
      v78 = v31[7];
      v35 = *(v34 + v78);
      v80 = v34;
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = (*(v34 + v31[10]))();
        v35 = 0;
      }

      v37 = v93;
      v38 = *(v36 + 16);
      v79 = v35;

      if (v38 && (v39 = sub_25F75D8B4(v37), (v40 & 1) != 0))
      {
        sub_25F78C1F0(*(v36 + 56) + *(v90 + 72) * v39, v29, type metadata accessor for Preset);

        v41 = sub_25F78C4E8(v29, v92, type metadata accessor for Preset);
        v77 = v31[6];
        v42 = *(v80 + v77);
        MEMORY[0x28223BE20](v41);
        v76[-2] = v91;

        v43 = sub_25F75ABB8(sub_25F760F14, &v76[-4], v42);
        v76[1] = 0;

        if (v43)
        {
          type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
          sub_25F78C198();
          swift_allocError();
          v45 = v44;
          v94 = 0;
          v95 = 0xE000000000000000;
          sub_25F82292C();

          v94 = 0xD000000000000022;
          v95 = 0x800000025F82DAD0;
          v46 = sub_25F82212C();
          MEMORY[0x25F8E7510](v46);

          v47 = v95;
          *v45 = v94;
          v45[1] = v47;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_25F78CBE8(v80, type metadata accessor for ProData);
          v48 = type metadata accessor for Preset;
          v49 = v92;
        }

        else
        {
          v76[0] = type metadata accessor for Preset.Info(0);
          v51 = *(v76[0] + 36);
          sub_25F76183C(v92 + v51, v21, &qword_27FDAFC10);
          if ((*(v88 + 48))(v21, 1, v22) == 1)
          {
            v52 = &qword_27FDAFC10;
            v53 = v21;
          }

          else
          {
            sub_25F760FA4(v21, v24, &qword_27FDAFC18);
            sub_25F754174(v24, v18);
            sub_25F760F44(v18, &qword_27FDAFC28);
            v53 = v24;
            v52 = &qword_27FDAFC18;
          }

          sub_25F760F44(v53, v52);
          v54 = v90;
          v55 = v91;
          v57 = v92;
          v56 = v93;
          v58 = v86;
          sub_25F760F44(v92 + v51, &qword_27FDAFC10);
          sub_25F76183C(v55, v57 + v51, &qword_27FDAFC18);
          (*(v88 + 56))(v57 + v51, 0, 1, v22);
          sub_25F76183C(v56, v89, &qword_27FDAFBB0);
          sub_25F78C1F0(v57, v58, type metadata accessor for Preset);
          v59 = *(v54 + 56);
          v60 = v87;
          v61 = v59(v58, 0, 1, v87);
          v62 = v79;
          if (!v79)
          {
            v63 = (*(v80 + v31[10]))(v61);
            v58 = v86;
            v62 = v63;
          }

          v94 = v62;
          if ((*(v54 + 48))(v58, 1, v60) == 1)
          {

            sub_25F760F44(v58, &qword_27FDAFBE0);
            v64 = v84;
            v65 = v89;
            sub_25F761908(v89);
            v57 = v92;
            sub_25F760F44(v64, &qword_27FDAFBE0);
            sub_25F760F44(v65, &qword_27FDAFBB0);

            v66 = v94;
          }

          else
          {
            v67 = v83;
            sub_25F78C4E8(v58, v83, type metadata accessor for Preset);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v96 = v62;
            v69 = v89;
            sub_25F76074C(v67, v89, isUniquelyReferenced_nonNull_native);
            sub_25F760F44(v69, &qword_27FDAFBB0);

            v66 = v96;
          }

          v70 = v80;
          *(v80 + v78) = v66;
          v71 = v85;
          sub_25F78C1F0(v55, v85, type metadata accessor for UserAdjustment);
          v72 = v77;
          v73 = swift_isUniquelyReferenced_nonNull_native();
          v94 = *(v70 + v72);
          sub_25F760544(v71, v55, v73);
          *(v70 + v72) = v94;
          if (!*(v57 + *(v76[0] + 28)))
          {
            v74 = v82;
            sub_25F76183C(v93, v82, &qword_27FDAFBB0);
            v75 = v84;
            sub_25F78C1F0(v57, v84, type metadata accessor for Preset);
            v59(v75, 0, 1, v87);
            type metadata accessor for PrefsDataStore(0);
            sub_25F7535C0(v75, v74);
            v70 = v80;
          }

          sub_25F782BC4(v70);
          sub_25F78CBE8(v70, type metadata accessor for ProData);
          v48 = type metadata accessor for Preset;
          v49 = v57;
        }
      }

      else
      {

        type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
        sub_25F78C198();
        swift_allocError();
        sub_25F76183C(v37, v50, &qword_27FDAFBB0);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v48 = type metadata accessor for ProData;
        v49 = v80;
      }

      sub_25F78CBE8(v49, v48);
    }
  }
}

uint64_t PrefsDataStore.removeUA(from:live:)(uint64_t a1, char a2)
{
  v86 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v81 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v83 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v78 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v85 = &v67 - v23;
  v79 = type metadata accessor for Preset(0);
  v24 = *(v79 - 8);
  v25 = MEMORY[0x28223BE20](v79);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v67 - v29;
  MEMORY[0x28223BE20](v28);
  v84 = &v67 - v31;
  v32 = type metadata accessor for ProData();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v73 = v2;
    v74 = v33;
    sub_25F783140(&v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v3)
    {
      v36 = *(v74 + 28);
      v71 = v36;
      v37 = *&v35[v36];
      if (v37)
      {
        v38 = *&v35[v36];
      }

      else
      {
        v38 = (*&v35[*(v74 + 40)])();
        v37 = 0;
      }

      v39 = *(v38 + 16);
      v72 = v37;

      if (v39 && (v40 = sub_25F75D8B4(v86), (v41 & 1) != 0))
      {
        sub_25F78C1F0(*(v38 + 56) + *(v24 + 72) * v40, v30, type metadata accessor for Preset);

        v42 = v30;
        v43 = v84;
        sub_25F78C4E8(v42, v84, type metadata accessor for Preset);
        v44 = type metadata accessor for UserAdjustment();
        v69 = *(v44 - 8);
        v70 = v44;
        (*(v69 + 56))(v85, 1, 1);
        v68 = type metadata accessor for Preset.Info(0);
        v45 = *(v68 + 36);
        sub_25F76183C(v43 + v45, v15, &qword_27FDAFC10);
        v46 = v81;
        if ((*(v81 + 48))(v15, 1, v16) == 1)
        {
          sub_25F78CBE8(v35, type metadata accessor for ProData);
          sub_25F760F44(v15, &qword_27FDAFC10);
          v47 = v43;
          v48 = v85;
        }

        else
        {
          sub_25F760FA4(v15, v83, &qword_27FDAFC18);
          sub_25F760F44(v43 + v45, &qword_27FDAFC10);
          (*(v46 + 56))(v43 + v45, 1, 1, v16);
          sub_25F76183C(v86, v82, &qword_27FDAFBB0);
          v51 = v77;
          sub_25F78C1F0(v43, v77, type metadata accessor for Preset);
          v52 = *(v24 + 56);
          v53 = v79;
          v54 = v52(v51, 0, 1, v79);
          v55 = v72;
          if (!v72)
          {
            v55 = (*&v35[*(v74 + 40)])(v54);
          }

          v88 = v55;
          if ((*(v24 + 48))(v51, 1, v53) == 1)
          {

            sub_25F760F44(v51, &qword_27FDAFBE0);
            v56 = v76;
            v57 = v82;
            sub_25F761908(v82);
            sub_25F760F44(v56, &qword_27FDAFBE0);
            sub_25F760F44(v57, &qword_27FDAFBB0);

            v58 = v88;
          }

          else
          {
            sub_25F78C4E8(v51, v27, type metadata accessor for Preset);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v55;
            v60 = v82;
            sub_25F76074C(v27, v82, isUniquelyReferenced_nonNull_native);
            sub_25F760F44(v60, &qword_27FDAFBB0);

            v58 = v87;
          }

          *&v35[v71] = v58;
          v47 = v84;
          if (!*(v84 + *(v68 + 28)))
          {
            v61 = v75;
            sub_25F76183C(v86, v75, &qword_27FDAFBB0);
            v62 = v76;
            sub_25F78C1F0(v47, v76, type metadata accessor for Preset);
            v52(v62, 0, 1, v79);
            type metadata accessor for PrefsDataStore(0);
            sub_25F7535C0(v62, v61);
          }

          v63 = v78;
          v64 = v83;
          sub_25F754174(v83, v78);
          v48 = v85;
          sub_25F760F44(v85, &qword_27FDAFC28);
          sub_25F760FA4(v63, v48, &qword_27FDAFC28);
          sub_25F782BC4(v35);
          sub_25F760F44(v64, &qword_27FDAFC18);
          sub_25F78CBE8(v35, type metadata accessor for ProData);
        }

        v65 = v48;
        v66 = v80;
        sub_25F760FA4(v65, v80, &qword_27FDAFC28);
        LOBYTE(v16) = (*(v69 + 48))(v66, 1, v70) != 1;
        sub_25F760F44(v66, &qword_27FDAFC28);
        sub_25F78CBE8(v47, type metadata accessor for Preset);
      }

      else
      {

        type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
        sub_25F78C198();
        swift_allocError();
        LOBYTE(v16) = v49;
        sub_25F76183C(v86, v49, &qword_27FDAFBB0);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_25F78CBE8(v35, type metadata accessor for ProData);
      }
    }
  }

  return v16 & 1;
}

void sub_25F786B5C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F783140(v5);
  if (!v1)
  {
    v6 = v3[7];
    if (*&v5[v6])
    {
      v7 = *&v5[v6];
    }

    else
    {
      v7 = (*&v5[v3[10]])();
    }

    v8 = v3[5];
    v9 = *(v7 + 16);

    if (v9 && (v10 = sub_25F75D8B4(&v5[v8]), (v11 & 1) != 0))
    {
      v12 = v10;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for Preset(0);
      sub_25F78C1F0(v13 + *(*(v14 - 8) + 72) * v12, a1, type metadata accessor for Preset);

      sub_25F78CBE8(v5, type metadata accessor for ProData);
    }

    else
    {

      type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      sub_25F76183C(&v5[v8], v15, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25F78CBE8(v5, type metadata accessor for ProData);
    }
  }
}

void sub_25F786D3C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F783140(v5);
  if (!v1)
  {
    v6 = *(v3 + 28);
    if (*&v5[v6])
    {
      v7 = *&v5[v6];
    }

    else
    {
      v7 = (*&v5[*(v3 + 40)])();
    }

    v8 = *(v7 + 16);

    if (v8 && (v9 = sub_25F75D8B4(v5), (v10 & 1) != 0))
    {
      v11 = v9;
      v12 = *(v7 + 56);
      v13 = type metadata accessor for Preset(0);
      sub_25F78C1F0(v12 + *(*(v13 - 8) + 72) * v11, a1, type metadata accessor for Preset);

      sub_25F78CBE8(v5, type metadata accessor for ProData);
    }

    else
    {

      type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
      sub_25F78C198();
      swift_allocError();
      sub_25F76183C(v5, v14, &qword_27FDAFBB0);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25F78CBE8(v5, type metadata accessor for ProData);
    }
  }
}

uint64_t sub_25F786F10()
{
  result = sub_25F82235C();
  qword_27FDBF7A0 = result;
  return result;
}

uint64_t sub_25F786F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrefsDataStore(0);
  v6 = *(v2 + v5[7]);
  v7 = type metadata accessor for ProDataOnDisk();
  v8 = *(a1 + v7[5]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  sub_25F78BB38(v8, sub_25F78A1CC, 0, isUniquelyReferenced_nonNull_native, &v24);

  sub_25F782808(*(a1 + v7[7]), &v24);
  sub_25F76183C(v2, a2, &qword_27FDAFBB0);
  v10 = type metadata accessor for ProData();
  sub_25F76183C(a1, a2 + v10[5], &qword_27FDAFBB0);
  v11 = *(a1 + v7[6]);
  v12 = v24;
  v13 = v5[6];
  v14 = *(v2 + v5[5]);
  v15 = *(v2 + v13);
  v16 = v10[6];

  sub_25F7C9F08(MEMORY[0x277D84F90]);

  v17 = v10[7];
  *(a2 + v17) = 0;
  v18 = a2 + v10[8];
  v19 = a2 + v10[9];
  *(a2 + v16) = v11;
  v20 = (a2 + v10[10]);
  *v20 = sub_25F7CAA30;
  v20[1] = 0;
  v21 = (a2 + v10[11]);
  *v21 = sub_25F7C7A4C;
  v21[1] = 0;

  v23 = (a2 + v10[12]);
  *v23 = sub_25F7C7A4C;
  v23[1] = 0;
  *v18 = v14;
  *(v18 + 8) = 0;
  *v19 = v15;
  *(v19 + 8) = 0;
  *(a2 + v17) = v12;
  return result;
}

int *sub_25F78713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v45 - v5;
  v6 = type metadata accessor for Preset(0);
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v53 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for ProData();
  v14 = sub_25F76183C(a1 + v13[5], v12, &qword_27FDAFBB0);
  v15 = *(a1 + v13[7]);
  v49 = a2;
  if (v15)
  {
    v16 = v15;
    v17 = v15;
  }

  else
  {
    v17 = (*(a1 + v13[10]))(v14);
    v16 = 0;
  }

  swift_bridgeObjectRetain_n();
  v18 = sub_25F78A264(v17);

  v19 = *(a1 + v13[6]);
  v47 = v18;
  v48 = v12;
  v46 = v19;
  if (v15)
  {
  }

  else
  {
    v20 = *(a1 + v13[10]);

    v16 = v20(v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0138);
  result = sub_25F822A6C();
  v23 = result;
  v24 = 0;
  v25 = v16 + 64;
  v26 = 1 << *(v16 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v16 + 64);
  v29 = (v26 + 63) >> 6;
  v50 = result + 16;
  v51 = result;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_16:
      v33 = v30 | (v24 << 6);
      v34 = v52;
      v35 = *(v53 + 72) * v33;
      sub_25F76183C(*(v16 + 48) + v35, v52, &qword_27FDAFBB0);
      v36 = v16;
      v37 = v54;
      sub_25F78C1F0(*(v16 + 56) + *(v55 + 72) * v33, v54, type metadata accessor for Preset);
      v38 = type metadata accessor for Preset.Info(0);
      v39 = v56;
      sub_25F76183C(v37 + *(v38 + 36), v56, &qword_27FDAFC10);
      sub_25F78CBE8(v37, type metadata accessor for Preset);
      v23 = v51;
      *(v50 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      sub_25F760FA4(v34, *(v23 + 6) + v35, &qword_27FDAFBB0);
      result = sub_25F760FA4(v39, *(v23 + 7) + *(v57 + 72) * v33, &qword_27FDAFC10);
      v40 = *(v23 + 2);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v23 + 2) = v42;
      v16 = v36;
      if (!v28)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v29)
      {

        v43 = v49;
        sub_25F760FA4(v48, v49, &qword_27FDAFBB0);
        result = type metadata accessor for ProDataOnDisk();
        v44 = v46;
        *(v43 + result[5]) = v47;
        *(v43 + result[6]) = v44;
        *(v43 + result[7]) = v23;
        return result;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7875FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25F8221EC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F7876BC, 0, 0);
}

uint64_t sub_25F7876BC()
{
  v1 = sub_25F821F4C();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[8] = v2;
  sub_25F821F2C();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_25F7877DC;

  return sub_25F78CC98(v2, 0xA055690D9DB80000, 1);
}

uint64_t sub_25F7877DC(char a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25F7878DC, 0, 0);
}

uint64_t sub_25F7878DC()
{
  v16 = v0;
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + *(type metadata accessor for PrefsDataStore(0) + 52));
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_25F787BD0;

    return sub_25F78E680(v2);
  }

  else
  {
    sub_25F82292C();

    v15[0] = 0xD000000000000022;
    v15[1] = 0x800000025F82DB80;
    sub_25F78CC48(&qword_27FDB0198, MEMORY[0x28220BDE8]);
    v5 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v5);

    sub_25F8221DC();

    v6 = sub_25F8221CC();
    v7 = sub_25F82268C();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_25F75CA94(0xD000000000000022, 0x800000025F82DB80, v15);
      _os_log_impl(&dword_25F74E000, v6, v7, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x25F8E88D0](v13, -1, -1);
      MEMORY[0x25F8E88D0](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_25F787BD0()
{

  return MEMORY[0x2822009F8](sub_25F787CCC, 0, 0);
}

uint64_t sub_25F787CCC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F787D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0188);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F76183C(a3, v25 - v10, &qword_27FDB0188);
  v12 = sub_25F8225BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F760F44(v11, &qword_27FDB0188);
  }

  else
  {
    sub_25F8225AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F82258C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F82240C() + 32;
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

void sub_25F788010(uint64_t a1, uint64_t a2)
{
  keysToSet = sub_25F82228C();
  v3 = type metadata accessor for PrefsDataStore(0);
  CFPreferencesSetMultiple(keysToSet, 0, *(a2 + v3[10]), *(a2 + v3[11]), *(a2 + v3[12]));
}

uint64_t sub_25F78813C()
{
  type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
  sub_25F78C198();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_25F788200(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F7882F8;

  return v6(a1);
}

uint64_t sub_25F7882F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F7883F0(void **a1)
{
  v2 = *(type metadata accessor for Preset(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F76D214(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25F788498(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25F788498(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F822C6C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Preset(0);
        v6 = sub_25F82253C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Preset(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25F7889E8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F7885C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F7885C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = type metadata accessor for Preset(0);
  v8 = MEMORY[0x28223BE20](v50);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v47 = -v18;
    v48 = v17;
    v20 = a1 - a3;
    v41 = v18;
    v21 = v17 + v18 * a3;
    v51 = &v40 - v15;
    v52 = v12;
LABEL_5:
    v45 = v19;
    v46 = a3;
    v43 = v21;
    v44 = v20;
    v22 = v20;
    v58 = v19;
    while (1)
    {
      v55 = v22;
      v56 = v21;
      sub_25F78C1F0(v21, v16, type metadata accessor for Preset);
      sub_25F78C1F0(v58, v12, type metadata accessor for Preset);
      v57 = type metadata accessor for Preset.Info(0);
      v23 = *(v57 + 32);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
      v54 = &v40;
      v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v24 - 8);
      v26 = &v40 - v25;
      sub_25F76183C(&v16[v23], &v40 - v25, &qword_27FDAFC20);
      v27 = sub_25F82210C();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      result = v29(&v40 - v25, 1, v27);
      if (result == 1)
      {
        break;
      }

      v53 = &v40;
      MEMORY[0x28223BE20](result);
      v30 = &v40 - v25;
      v31 = v52;
      sub_25F76183C(&v52[v32], v30, &qword_27FDAFC20);
      result = v29(v30, 1, v27);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v12 = v31;
      v33 = sub_25F8220BC();
      v34 = *(v28 + 8);
      v34(v30, v27);
      v34(v26, v27);
      sub_25F78CBE8(v31, type metadata accessor for Preset);
      v16 = v51;
      result = sub_25F78CBE8(v51, type metadata accessor for Preset);
      v36 = v55;
      v35 = v56;
      if (v33)
      {
        if (!v48)
        {
          goto LABEL_15;
        }

        v37 = v49;
        sub_25F78C4E8(v56, v49, type metadata accessor for Preset);
        v38 = v58;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_25F78C4E8(v37, v38, type metadata accessor for Preset);
        v58 = v38 + v47;
        v21 = v35 + v47;
        v39 = __CFADD__(v36, 1);
        v22 = v36 + 1;
        if (!v39)
        {
          continue;
        }
      }

      a3 = v46 + 1;
      v19 = v45 + v41;
      v20 = v44 - 1;
      v21 = v43 + v41;
      if (v46 + 1 == v42)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F7889E8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v150 = a4;
  v146 = a1;
  v165 = type metadata accessor for Preset(0);
  v158 = *(v165 - 8);
  v8 = MEMORY[0x28223BE20](v165);
  v152 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v164 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v144 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v172 = &v144 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v144 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v159 = &v144 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v21);
  v145 = &v144 - v24;
  v25 = a3[1];
  if (v25 >= 1)
  {
    v147 = v23;
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v166 = v14;
    v149 = a3;
    while (1)
    {
      v28 = v26;
      v153 = v27;
      if (v26 + 1 >= v25)
      {
        v51 = v26 + 1;
        v65 = v150;
      }

      else
      {
        v161 = v25;
        v144 = v6;
        v29 = *a3;
        v30 = *(v158 + 72);
        v171 = (*a3 + v30 * (v26 + 1));
        v31 = v145;
        sub_25F78C1F0(v171, v145, type metadata accessor for Preset);
        v148 = v26;
        v163 = v30;
        v170 = v29;
        sub_25F78C1F0(v29 + v30 * v26, v147, type metadata accessor for Preset);
        v32 = type metadata accessor for Preset.Info(0);
        v33 = *(v32 + 32);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
        v169 = &v144;
        v35 = *(*(v34 - 8) + 64);
        v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v34 - 8);
        v37 = &v144 - v36;
        sub_25F76183C(v31 + v33, &v144 - v36, &qword_27FDAFC20);
        v38 = sub_25F82210C();
        v162 = *(v38 - 8);
        v40 = v162 + 48;
        v39 = *(v162 + 48);
        result = v39(&v144 - v36, 1, v38);
        if (result == 1)
        {
          goto LABEL_143;
        }

        v156 = v32;
        v168 = v35;
        MEMORY[0x28223BE20](result);
        v41 = &v144 - v36;
        sub_25F76183C(v147 + v42, v41, &qword_27FDAFC20);
        v43 = v40;
        result = v39(v41, 1, v38);
        if (result == 1)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v44 = v39;
        LODWORD(v157) = sub_25F8220BC();
        v45 = v162 + 8;
        v46 = *(v162 + 8);
        v46(v41, v38);
        v154 = v46;
        v155 = v38;
        v162 = v45;
        v46(v37, v38);
        v4 = type metadata accessor for Preset;
        sub_25F78CBE8(v147, type metadata accessor for Preset);
        sub_25F78CBE8(v145, type metadata accessor for Preset);
        v47 = (v148 + 2);
        v48 = v171;
        result = v170 + v163 * (v148 + 2);
        v49 = v168;
        v50 = v43;
        while (1)
        {
          v51 = v161;
          if (v161 == v47)
          {
            break;
          }

          v169 = result;
          v170 = v47;
          v52 = v159;
          sub_25F78C1F0(result, v159, type metadata accessor for Preset);
          v171 = v48;
          v53 = sub_25F78C1F0(v48, v160, type metadata accessor for Preset);
          v168 = &v144;
          v54 = v50;
          MEMORY[0x28223BE20](v53);
          v55 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
          v56 = &v144 - v55;
          sub_25F76183C(v52 + v57, &v144 - v55, &qword_27FDAFC20);
          v58 = v155;
          result = v44(&v144 - v55, 1, v155);
          if (result == 1)
          {
            goto LABEL_138;
          }

          MEMORY[0x28223BE20](result);
          v59 = &v144 - v55;
          v60 = v160;
          sub_25F76183C(v160 + v61, v59, &qword_27FDAFC20);
          v62 = v44;
          result = v44(v59, 1, v58);
          if (result == 1)
          {
            goto LABEL_137;
          }

          v63 = v60;
          v50 = v54;
          LOBYTE(v167) = sub_25F8220BC() & 1;
          LODWORD(v167) = v167;
          v64 = v154;
          v154(v59, v58);
          v64(v56, v58);
          v4 = type metadata accessor for Preset;
          sub_25F78CBE8(v63, type metadata accessor for Preset);
          sub_25F78CBE8(v159, type metadata accessor for Preset);
          v47 = (v170 + 1);
          result = v169 + v163;
          v48 = v171 + v163;
          v14 = v166;
          v44 = v62;
          if ((v157 & 1) != v167)
          {
            v51 = v170;
            break;
          }
        }

        v6 = v144;
        a3 = v149;
        v65 = v150;
        v28 = v148;
        if (v157)
        {
          if (v51 < v148)
          {
            goto LABEL_130;
          }

          if (v148 < v51)
          {
            v4 = v163 * (v51 - 1);
            v66 = v51 * v163;
            v67 = v51;
            v68 = v148;
            v69 = v148 * v163;
            do
            {
              if (v68 != --v51)
              {
                v70 = *v149;
                if (!*v149)
                {
                  goto LABEL_140;
                }

                sub_25F78C4E8(v70 + v69, v152, type metadata accessor for Preset);
                if (v69 < v4 || v70 + v69 >= (v70 + v66))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v69 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_25F78C4E8(v152, v70 + v4, type metadata accessor for Preset);
                v65 = v150;
              }

              ++v68;
              v4 -= v163;
              v66 -= v163;
              v69 += v163;
            }

            while (v68 < v51);
            a3 = v149;
            v14 = v166;
            v28 = v148;
            v51 = v67;
          }
        }
      }

      v71 = a3[1];
      if (v51 >= v71)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v51, v28))
      {
        goto LABEL_129;
      }

      if (v51 - v28 >= v65)
      {
        goto LABEL_35;
      }

      if (__OFADD__(v28, v65))
      {
        goto LABEL_131;
      }

      if (v28 + v65 < v71)
      {
        v71 = (v28 + v65);
      }

      if (v71 < v28)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v154 = v71;
      if (v51 == v71)
      {
LABEL_35:
        v26 = v51;
        if (v51 < v28)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v144 = v6;
        v117 = *a3;
        v118 = *(v158 + 72);
        v119 = *a3 + v118 * (v51 - 1);
        v162 = -v118;
        v148 = v28;
        v120 = (v28 - v51);
        v163 = v117;
        v151 = v118;
        v121 = v117 + v51 * v118;
        do
        {
          v161 = v51;
          v155 = v121;
          v156 = v120;
          v122 = v120;
          v157 = v119;
          do
          {
            v168 = v121;
            v169 = v122;
            v123 = v172;
            sub_25F78C1F0(v121, v172, type metadata accessor for Preset);
            v167 = v119;
            sub_25F78C1F0(v119, v14, type metadata accessor for Preset);
            v124 = *(type metadata accessor for Preset.Info(0) + 32);
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
            v171 = &v144;
            v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v125 - 8);
            v127 = &v144 - v126;
            sub_25F76183C(v123 + v124, &v144 - v126, &qword_27FDAFC20);
            v128 = sub_25F82210C();
            v129 = *(v128 - 8);
            v130 = *(v129 + 48);
            result = v130(&v144 - v126, 1, v128);
            if (result == 1)
            {
              goto LABEL_135;
            }

            v170 = &v144;
            MEMORY[0x28223BE20](result);
            v131 = &v144 - v126;
            v14 = v166;
            sub_25F76183C(&v166[v132], v131, &qword_27FDAFC20);
            result = v130(v131, 1, v128);
            if (result == 1)
            {
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
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            v133 = sub_25F8220BC();
            v134 = *(v129 + 8);
            v134(v131, v128);
            v134(v127, v128);
            v4 = type metadata accessor for Preset;
            sub_25F78CBE8(v14, type metadata accessor for Preset);
            result = sub_25F78CBE8(v172, type metadata accessor for Preset);
            if ((v133 & 1) == 0)
            {
              break;
            }

            v135 = v169;
            if (!v163)
            {
              goto LABEL_136;
            }

            v4 = type metadata accessor for Preset;
            v136 = v168;
            v137 = v164;
            sub_25F78C4E8(v168, v164, type metadata accessor for Preset);
            v138 = v167;
            swift_arrayInitWithTakeFrontToBack();
            sub_25F78C4E8(v137, v138, type metadata accessor for Preset);
            v119 = v138 + v162;
            v121 = v136 + v162;
            v139 = __CFADD__(v135, 1);
            v122 = (v135 + 1);
          }

          while (!v139);
          v51 = v161 + 1;
          v119 = v157 + v151;
          v120 = (v156 - 1);
          v121 = v155 + v151;
        }

        while ((v161 + 1) != v154);
        v6 = v144;
        a3 = v149;
        v26 = v154;
        v28 = v148;
        if (v154 < v148)
        {
          goto LABEL_128;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = v153;
      }

      else
      {
        result = sub_25F75C060(0, *(v153 + 2) + 1, 1, v153);
        v27 = result;
      }

      v4 = *(v27 + 2);
      v72 = *(v27 + 3);
      v73 = v4 + 1;
      if (v4 >= v72 >> 1)
      {
        result = sub_25F75C060((v72 > 1), v4 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 2) = v73;
      v74 = &v27[16 * v4];
      *(v74 + 4) = v28;
      *(v74 + 5) = v26;
      v28 = *v146;
      if (!*v146)
      {
        goto LABEL_142;
      }

      if (v4)
      {
        while (1)
        {
          v75 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v76 = *(v27 + 4);
            v77 = *(v27 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_55:
            if (v79)
            {
              goto LABEL_117;
            }

            v92 = &v27[16 * v73];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_120;
            }

            v98 = &v27[16 * v75 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_124;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v73 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v102 = &v27[16 * v73];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_69:
          if (v97)
          {
            goto LABEL_119;
          }

          v105 = &v27[16 * v75];
          v107 = *(v105 + 4);
          v106 = *(v105 + 5);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_122;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_76:
          v4 = v75 - 1;
          if (v75 - 1 >= v73)
          {
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
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v113 = v27;
          v114 = *&v27[16 * v4 + 32];
          v115 = *&v27[16 * v75 + 40];
          sub_25F7898EC(*a3 + *(v158 + 72) * v114, *a3 + *(v158 + 72) * *&v27[16 * v75 + 32], (*a3 + *(v158 + 72) * v115), v28);
          if (v6)
          {
          }

          if (v115 < v114)
          {
            goto LABEL_113;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_25F76CF90(v113);
          }

          if (v4 >= *(v113 + 2))
          {
            goto LABEL_114;
          }

          v116 = &v113[16 * v4];
          *(v116 + 4) = v114;
          *(v116 + 5) = v115;
          v173 = v113;
          v4 = &v173;
          result = sub_25F76CF04(v75);
          v27 = v173;
          v73 = *(v173 + 16);
          v14 = v166;
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v80 = &v27[16 * v73 + 32];
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_115;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_116;
        }

        v87 = &v27[16 * v73];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_118;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_121;
        }

        if (v91 >= v83)
        {
          v109 = &v27[16 * v75 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_125;
          }

          if (v78 < v112)
          {
            v75 = v73 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v25 = a3[1];
      if (v26 >= v25)
      {
        goto LABEL_100;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_100:
  v28 = *v146;
  if (*v146)
  {
    v4 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_133:
      result = sub_25F76CF90(v4);
    }

    v173 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v140 = *(result + 16 * v4);
        v141 = result;
        v142 = *(result + 16 * (v4 - 1) + 40);
        sub_25F7898EC(*a3 + *(v158 + 72) * v140, *a3 + *(v158 + 72) * *(result + 16 * (v4 - 1) + 32), (*a3 + *(v158 + 72) * v142), v28);
        if (v6)
        {
        }

        if (v142 < v140)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_25F76CF90(v141);
        }

        if (v4 - 2 >= *(v141 + 2))
        {
          goto LABEL_127;
        }

        v143 = &v141[16 * v4];
        *v143 = v140;
        *(v143 + 1) = v142;
        v173 = v141;
        sub_25F76CF04(v4 - 1);
        result = v173;
        v4 = *(v173 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  else
  {
LABEL_145:
    __break(1u);
  }

  return result;
}