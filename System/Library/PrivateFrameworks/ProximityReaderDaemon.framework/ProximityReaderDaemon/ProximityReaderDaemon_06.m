uint64_t sub_2612CAFEC(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    return 10;
  }

  if (a2 >> 6 != 1)
  {
    return qword_2613AA408[a1];
  }

  if (a1 == 1 && (a2 & 0x3F) == 2)
  {
    return 11;
  }

  else
  {
    return 17;
  }
}

uint64_t sub_2612CB040()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReaderEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612CD17C(v1, v12, type metadata accessor for ReaderEvent);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  v14 = (*(*(v13 - 8) + 48))(v12, 10, v13);
  if (v14 <= 4)
  {
    if (v14 <= 1)
    {
      if (v14)
      {
        return 0x7964616572;
      }

      else
      {
        sub_2612CD008(v12, v8);
        sub_26125A870(v8, v6, &qword_27FE9FC30, &unk_2613A9E80);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = *v6;
          v17 = v6[8];
          v20 = 0;
          v21 = 0xE000000000000000;
          sub_2613A211C();

          v20 = 0xD000000000000018;
          v21 = 0x80000002613BA750;
          v18 = sub_2612CABB0(v16, v17);
          MEMORY[0x2666FFEA0](v18);

          MEMORY[0x2666FFEA0](93, 0xE100000000000000);
          v19 = v20;
          sub_26124C718(v8, &qword_27FE9FC30, &unk_2613A9E80);
          return v19;
        }

        else
        {
          sub_26124C718(v8, &qword_27FE9FC30, &unk_2613A9E80);
          sub_26124C718(v6, &qword_27FE9FC30, &unk_2613A9E80);
          return 0xD000000000000016;
        }
      }
    }

    else if (v14 == 2)
    {
      return 0x6465746365746564;
    }

    else if (v14 == 3)
    {
      return 0x656C6C65636E6163;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

  else if (v14 > 7)
  {
    if (v14 == 8)
    {
      return 0x726143726568746FLL;
    }

    else if (v14 == 9)
    {
      return 0x656E6F6850656573;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (v14 == 5)
  {
    return 0x65766F6D6572;
  }

  else if (v14 == 6)
  {
    return 0x7261655464726163;
  }

  else
  {
    return 0x6E69616741797274;
  }
}

uint64_t sub_2612CB3E8(unsigned __int8 a1)
{
  v1 = 0x4D5643206F4ELL;
  v2 = 0x5020656E696C6E4FLL;
  v3 = 0x6C70704120746F4ELL;
  if (a1 != 4)
  {
    v3 = 0x7974706D45;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x727574616E676953;
  if (a1 != 1)
  {
    v4 = 0x4D5643444FLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2612CB4BC()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612CB5C8()
{
  *v0;
  *v0;
  *v0;
  sub_2613A19DC();
}

uint64_t sub_2612CB6BC()
{
  sub_2613A19DC();
}

uint64_t sub_2612CB824()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612CB92C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612CD078();
  *a2 = result;
  return result;
}

void sub_2612CB95C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4D5643206F4ELL;
  v5 = 0xEA00000000004E49;
  v6 = 0x5020656E696C6E4FLL;
  v7 = 0xEE00656C62616369;
  v8 = 0x6C70704120746F4ELL;
  if (v2 != 4)
  {
    v8 = 0x7974706D45;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x727574616E676953;
  if (v2 != 1)
  {
    v10 = 0x4D5643444FLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2612CBA20(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974706D65;
    v6 = 0x64656E696C636564;
    if (a1 != 2)
    {
      v6 = 0x6552656E696C6E6FLL;
    }

    if (a1)
    {
      v5 = 0x6465766F72707061;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x6E69616741797274;
    if (a1 != 7)
    {
      v2 = 16718;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696C707041646E65;
    if (a1 != 4)
    {
      v3 = 0x654E7463656C6573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612CBB58()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612CB6BC();
  return sub_2613A25CC();
}

uint64_t sub_2612CBBA8()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612CB6BC();
  return sub_2613A25CC();
}

uint64_t sub_2612CBBEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612CD0C4();
  *a2 = result;
  return result;
}

unint64_t sub_2612CBC1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612CBA20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612CBC48(char a1)
{
  if (!a1)
  {
    return 7561558;
  }

  if (a1 == 1)
  {
    return 0x20646E6120736156;
  }

  return 0x746E656D796150;
}

uint64_t sub_2612CBCA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x20646E6120736156;
  v4 = 0xEF746E656D796150;
  if (v2 != 1)
  {
    v3 = 0x746E656D796150;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7561558;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x20646E6120736156;
  v8 = 0xEF746E656D796150;
  if (*a2 != 1)
  {
    v7 = 0x746E656D796150;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7561558;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2613A241C();
  }

  return v11 & 1;
}

uint64_t sub_2612CBDB8()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612CBE60()
{
  *v0;
  *v0;
  sub_2613A19DC();
}

uint64_t sub_2612CBEF4()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612CBF98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612CD110();
  *a2 = result;
  return result;
}

void sub_2612CBFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEF746E656D796150;
  v5 = 0x20646E6120736156;
  if (v2 != 1)
  {
    v5 = 0x746E656D796150;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7561558;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2612CC02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, char a26, char a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45)
{
  v47 = type metadata accessor for TransactionData(0);
  *(a9 + v47[24]) = 0;
  v48 = a9 + v47[25];
  *v48 = 0;
  *(v48 + 8) = -4;
  v49 = sub_26139F13C();
  result = (*(*(v49 - 8) + 32))(a9, a1, v49);
  v51 = (a9 + v47[5]);
  *v51 = a2;
  v51[1] = a3;
  *(a9 + v47[6]) = a4;
  v52 = (a9 + v47[7]);
  *v52 = a5;
  v52[1] = a6;
  *(a9 + v47[8]) = a7;
  v53 = (a9 + v47[9]);
  *v53 = a8;
  v53[1] = a10;
  v54 = (a9 + v47[10]);
  *v54 = a11;
  v54[1] = a12;
  v55 = (a9 + v47[11]);
  *v55 = a13;
  v55[1] = a14;
  v56 = (a9 + v47[12]);
  *v56 = a15;
  v56[1] = a16;
  v57 = (a9 + v47[13]);
  *v57 = a17;
  v57[1] = a18;
  v58 = (a9 + v47[14]);
  *v58 = a19;
  v58[1] = a20;
  v59 = (a9 + v47[15]);
  *v59 = a21;
  v59[1] = a22;
  v60 = (a9 + v47[16]);
  *v60 = a23;
  v60[1] = a24;
  *(a9 + v47[17]) = a25;
  *(a9 + v47[18]) = a26;
  *(a9 + v47[19]) = a27;
  *(a9 + v47[20]) = a28;
  *(a9 + v47[21]) = a29;
  *(a9 + v47[22]) = a30;
  v61 = (a9 + v47[23]);
  *v61 = a31;
  v61[1] = a32;
  *(a9 + v47[26]) = a33;
  v62 = (a9 + v47[27]);
  *v62 = a34;
  v62[1] = a35;
  *(a9 + v47[28]) = a36;
  v63 = (a9 + v47[29]);
  *v63 = a37;
  v63[1] = a38;
  v64 = a9 + v47[30];
  *v64 = a39;
  *(v64 + 8) = a40 & 1;
  v65 = a9 + v47[31];
  *v65 = a41;
  *(v65 + 8) = a42 & 1;
  v66 = (a9 + v47[32]);
  *v66 = a43;
  v66[1] = a44;
  *(a9 + v47[33]) = a45;
  return result;
}

unint64_t sub_2612CC368(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TransactionData(0);
  v6 = 0;
  v7 = 0;
  if (*(v2 + v5[22]) == 1)
  {
    v8 = (v2 + v5[23]);
    v6 = *v8;
    v9 = v8[1];
  }

  v54 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4350;
  v11 = *MEMORY[0x277D640A8];
  *(inited + 32) = sub_2613A18CC();
  v12 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v13;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v14 = *MEMORY[0x277D640B8];
  *(inited + 80) = sub_2613A18CC();
  *(inited + 88) = v15;

  v16 = sub_26139F0FC();
  *(inited + 120) = v12;
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  v18 = *MEMORY[0x277D64058];
  *(inited + 128) = sub_2613A18CC();
  *(inited + 136) = v19;
  v20 = (v2 + v5[13]);
  v21 = *v20;
  v22 = v20[1];
  *(inited + 168) = v12;
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v23 = *MEMORY[0x277D640A0];
  *(inited + 176) = sub_2613A18CC();
  *(inited + 184) = v24;
  v25 = (v2 + v5[12]);
  v26 = *v25;
  v27 = v25[1];
  *(inited + 216) = v12;
  *(inited + 192) = v26;
  *(inited + 200) = v27;
  v28 = *MEMORY[0x277D64080];
  *(inited + 224) = sub_2613A18CC();
  *(inited + 232) = v29;
  v30 = (v2 + v5[14]);
  v31 = *v30;
  v32 = v30[1];
  *(inited + 264) = v12;
  *(inited + 240) = v31;
  *(inited + 248) = v32;
  v33 = *MEMORY[0x277D640B0];
  *(inited + 272) = sub_2613A18CC();
  *(inited + 280) = v34;
  v35 = (v2 + v5[9]);
  v36 = *v35;
  v37 = v35[1];
  *(inited + 312) = v12;
  *(inited + 288) = v36;
  *(inited + 296) = v37;
  v38 = *MEMORY[0x277D640C0];
  *(inited + 320) = sub_2613A18CC();
  *(inited + 328) = v39;
  v40 = (v2 + v5[10]);
  v41 = *v40;
  v42 = v40[1];
  *(inited + 360) = v12;
  *(inited + 336) = v41;
  *(inited + 344) = v42;
  v43 = *MEMORY[0x277D64078];
  *(inited + 368) = sub_2613A18CC();
  *(inited + 376) = v44;
  v45 = *(v2 + v5[19]);
  v46 = MEMORY[0x277D839B0];
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = v45;
  v47 = *MEMORY[0x277D64060];
  *(inited + 416) = sub_2613A18CC();
  *(inited + 424) = v48;
  *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBA0, &qword_2613A9B30);
  *(inited + 432) = v6;
  *(inited + 440) = v54;
  v49 = *MEMORY[0x277D64070];
  *(inited + 464) = sub_2613A18CC();
  *(inited + 472) = v50;
  v51 = *(v2 + v5[20]);
  *(inited + 504) = v46;
  *(inited + 480) = v51;

  v52 = sub_261259E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  return v52;
}

unint64_t sub_2612CC61C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for TransactionData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57[-v13];
  v15 = *(v3 + *(v7 + 96));
  if (v15 && ((*(v3 + *(v7 + 72)) & 1) != 0 || (a3 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A9E70;
    v24 = *MEMORY[0x277D640A8];
    *(inited + 32) = sub_2613A18CC();
    v25 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v26;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    v27 = *MEMORY[0x277D640B8];
    *(inited + 80) = sub_2613A18CC();
    *(inited + 88) = v28;
    v29 = v15;

    v30 = sub_26139F0FC();
    *(inited + 120) = v25;
    *(inited + 96) = v30;
    *(inited + 104) = v31;
    v32 = *MEMORY[0x277D64058];
    *(inited + 128) = sub_2613A18CC();
    *(inited + 136) = v33;
    v34 = sub_2613A029C();
    *(inited + 168) = v25;
    *(inited + 144) = v34;
    *(inited + 152) = v35;
    v36 = *MEMORY[0x277D640A0];
    *(inited + 176) = sub_2613A18CC();
    *(inited + 184) = v37;
    v38 = sub_2613A02BC();
    *(inited + 216) = v25;
    *(inited + 192) = v38;
    *(inited + 200) = v39;
    v40 = *MEMORY[0x277D64090];
    *(inited + 224) = sub_2613A18CC();
    *(inited + 232) = v41;
    v42 = sub_2613A02CC();
    *(inited + 264) = v25;
    *(inited + 240) = v42;
    *(inited + 248) = v43;
    v44 = *MEMORY[0x277D64068];
    *(inited + 272) = sub_2613A18CC();
    *(inited + 280) = v45;
    v46 = sub_2613A027C();
    *(inited + 312) = MEMORY[0x277D839B0];
    *(inited + 288) = v46 & 1;
    v47 = *MEMORY[0x277D64088];
    *(inited + 320) = sub_2613A18CC();
    *(inited + 328) = v48;
    v49 = sub_2613A02AC();
    *(inited + 360) = v25;
    *(inited + 336) = v49;
    *(inited + 344) = v50;
    v51 = *MEMORY[0x277D64098];
    *(inited + 368) = sub_2613A18CC();
    *(inited + 376) = v52;
    v53 = sub_2613A028C();
    *(inited + 408) = v25;
    *(inited + 384) = v53;
    *(inited + 392) = v54;
    v55 = sub_261259E78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
    swift_arrayDestroy();

    return v55;
  }

  else
  {
    v16 = sub_26129B780();
    sub_26125A870(v16, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      sub_2612CD17C(v3, v10, type metadata accessor for TransactionData);
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        v22 = v10[*(v7 + 72)];
        sub_26125D0E4(v10);
        *(v21 + 4) = v22;
        _os_log_impl(&dword_261243000, v19, v20, "txnData.pinData is nil or pinRequired %{BOOL}d", v21, 8u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      else
      {
        sub_26125D0E4(v10);
      }

      (*(v18 + 8))(v14, v17);
    }

    return 0;
  }
}

uint64_t sub_2612CCA28()
{
  v1 = type metadata accessor for TransactionData(0);
  v2 = *(v0 + *(v1 + 104));
  if (!v2)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v20 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_2613A221C();
    if (v3)
    {
LABEL_4:
      v19 = v0;
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2667005C0](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v0 = v5;
        if (sub_26139F7DC() == 36864)
        {
          sub_2613A217C();
          v8 = *(v20 + 16);
          sub_2613A21AC();
          sub_2613A21BC();
          v0 = &v20;
          sub_2613A218C();
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != v3);
      v0 = v19;
      v9 = v20;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_31:
    v11 = sub_2613A221C();
    goto LABEL_23;
  }

LABEL_21:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v11 = *(v9 + 16);
LABEL_23:

  v10 = v11 != 0;
LABEL_24:
  v12 = (v0 + *(v1 + 36));
  v14 = *v12;
  v13 = v12[1];
  v15 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 != 0;
  if (v10)
  {
    return v17;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2612CCBD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

BOOL sub_2612CCBEC(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      if ((a4 & 0xC0) == 0x40)
      {
        v4 = a4 & 0x3F;
        if ((a2 & 0x3F) != 0)
        {
          if ((a2 & 0x3F) == 1)
          {
            if (v4 == 1 && a1 == a3)
            {
              return 1;
            }
          }

          else if (a1 > 1)
          {
            if (a1 == 2)
            {
              if (v4 == 2 && a3 == 2)
              {
                return 1;
              }
            }

            else if (v4 == 2 && a3 == 3)
            {
              return 1;
            }
          }

          else if (a1)
          {
            if (v4 == 2 && a3 == 1)
            {
              return 1;
            }
          }

          else if (v4 == 2 && !a3)
          {
            return 1;
          }
        }

        else if ((a4 & 0x3F) == 0 && a1 == a3)
        {
          return 1;
        }
      }
    }

    else if (__PAIR128__(-128, 5) < __PAIR128__(a2, a1))
    {
      if (__PAIR128__(-128, 8) < __PAIR128__(a2, a1))
      {
        if (a2 == 128 && a1 == 9)
        {
          if ((a4 & 0xC0) == 0x80 && a3 == 9 && a4 == 128)
          {
            return 1;
          }
        }

        else
        {
          v16 = a4 & 0xC0;
          if (a2 == 128 && a1 == 10)
          {
            if (v16 == 128 && a3 == 10 && a4 == 128)
            {
              return 1;
            }
          }

          else if (v16 == 128 && a3 == 11 && a4 == 128)
          {
            return 1;
          }
        }
      }

      else if (a2 == 128 && a1 == 6)
      {
        if ((a4 & 0xC0) == 0x80 && a3 == 6 && a4 == 128)
        {
          return 1;
        }
      }

      else
      {
        v10 = a4 & 0xC0;
        if (a2 == 128 && a1 == 7)
        {
          if (v10 == 128 && a3 == 7 && a4 == 128)
          {
            return 1;
          }
        }

        else if (v10 == 128 && a3 == 8 && a4 == 128)
        {
          return 1;
        }
      }
    }

    else if (__PAIR128__(-128, 2) < __PAIR128__(a2, a1))
    {
      if (a2 == 128 && a1 == 3)
      {
        if ((a4 & 0xC0) == 0x80 && a3 == 3 && a4 == 128)
        {
          return 1;
        }
      }

      else
      {
        v13 = a4 & 0xC0;
        if (a2 == 128 && a1 == 4)
        {
          if (v13 == 128 && a3 == 4 && a4 == 128)
          {
            return 1;
          }
        }

        else if (v13 == 128 && a3 == 5 && a4 == 128)
        {
          return 1;
        }
      }
    }

    else if (a1 | a2 ^ 0x80)
    {
      v7 = a4 & 0xC0;
      if (a2 == 128 && a1 == 1)
      {
        if (v7 == 128 && a3 == 1 && a4 == 128)
        {
          return 1;
        }
      }

      else if (v7 == 128 && a3 == 2 && a4 == 128)
      {
        return 1;
      }
    }

    else if ((a4 & 0xC0) == 0x80 && !a3 && a4 == 128)
    {
      return 1;
    }
  }

  else if (a4 <= 0x3Fu)
  {
    v6 = sub_26139FAFC();
    return v6 == sub_26139FAFC();
  }

  return 0;
}

uint64_t sub_2612CCF48(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a1)
  {
    if (a4 != 2 || a3 != 1)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2612CD008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612CD078()
{
  v0 = sub_2613A228C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2612CD0C4()
{
  v0 = sub_2613A228C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2612CD110()
{
  v0 = sub_2613A228C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2612CD17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2612CD1E8()
{
  result = qword_27FE9FC38;
  if (!qword_27FE9FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC38);
  }

  return result;
}

unint64_t sub_2612CD240()
{
  result = qword_27FE9FC40;
  if (!qword_27FE9FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC40);
  }

  return result;
}

unint64_t sub_2612CD298()
{
  result = qword_27FE9FC48;
  if (!qword_27FE9FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardReaderAdapterError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CardReaderAdapterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_2612CD390(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2612CD3C0(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_2612CD434()
{
  sub_2612CD48C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2612CD48C()
{
  if (!qword_27FE9FC50)
  {
    sub_2612CD4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FC50);
    }
  }
}

void sub_2612CD4D4()
{
  if (!qword_27FE9FC58)
  {
    type metadata accessor for TransactionData(255);
    sub_2612B48D8();
    v0 = sub_2613A25DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FC58);
    }
  }
}

void sub_2612CD568()
{
  sub_26139F13C();
  if (v0 <= 0x3F)
  {
    sub_2612CD6E4();
    if (v1 <= 0x3F)
    {
      sub_2612CD7A0(319, &qword_27FE9FC68);
      if (v2 <= 0x3F)
      {
        sub_2612CD73C();
        if (v3 <= 0x3F)
        {
          sub_2612CD7A0(319, &qword_27FE9FC80);
          if (v4 <= 0x3F)
          {
            sub_2612CD7A0(319, &qword_27FE9FC88);
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

void sub_2612CD6E4()
{
  if (!qword_27FE9FC60)
  {
    sub_2613A02DC();
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FC60);
    }
  }
}

void sub_2612CD73C()
{
  if (!qword_27FE9FC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FC78, &qword_2613AA1A8);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FC70);
    }
  }
}

void sub_2612CD7A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2613A1F8C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2612CD81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2612CD870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
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

uint64_t sub_2612CD8EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2612CD934(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_2612CD9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2612CDD78();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2612CDA60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
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

void *sub_2612CDBA8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_2612CDD78()
{
  result = qword_27FE9FC90;
  if (!qword_27FE9FC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FC90);
  }

  return result;
}

unint64_t sub_2612CDDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2612CDD78();
    if (v4 <= 0x3F)
    {
      result = sub_26139EC9C();
      if (v5 <= 0x3F)
      {
        result = sub_26139ECEC();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2612CDE94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
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

void *sub_2612CDFEC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

double sub_2612CE1E8@<D0>(uint64_t a1@<X8>)
{
  sub_2612A7DB0(0x302E31206D6973, 0xE700000000000000, 1, 1, 0, 0, 0, 0, v4, 0, 0xE000000000000000);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2612CE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[3] = a7;
  v8[4] = v7;
  v8[2] = a6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v8[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612CE334);
}

uint64_t sub_2612CE334()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  *(v0[4] + 32) = 0;
  v4 = sub_2613A1C1C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  sub_261266800(0, 0, v1, &unk_2613AA4F8, v5);

  v6 = sub_2613A0C5C();
  sub_2613A0C6C();
  v8 = v7;

  v9 = v0[1];
  v10.n128_u64[0] = v8;

  return v9(v6, v10);
}

uint64_t sub_2612CE460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_2613A171C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_2613A175C();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = sub_2613A170C();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = sub_2613A177C();
  v5[20] = v15;
  v16 = *(v15 - 8);
  v5[21] = v16;
  v17 = *(v16 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v18 = sub_2613A172C();
  v5[24] = v18;
  v19 = *(v18 - 8);
  v5[25] = v19;
  v20 = *(v19 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612CE69C);
}

uint64_t sub_2612CE69C()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  sub_261259BE0(0, &qword_281451968, 0x277D85C78);
  v31 = (v1 + 8);
  v32 = *(v1 + 104);
  v29 = (v3 + 8);
  v30 = (v3 + 104);
  v27 = *MEMORY[0x277D85188];
  v28 = *MEMORY[0x277D851C8];
  v26 = (v2 + 8);
  v24 = (v4 + 8);
  v25 = (v5 + 8);
  for (i = 1; i != 11; ++i)
  {
    v7 = v0[26];
    v8 = v0[24];
    v35 = v0[23];
    v9 = v0[22];
    v10 = v0[19];
    v41 = v0[20];
    v11 = v0[17];
    v34 = v0[16];
    v38 = v0[13];
    v12 = v0[10];
    v39 = v0[11];
    v40 = v0[14];
    v33 = v0[9];
    v32(v7, v28, v8);
    v37 = sub_2613A1E3C();
    (*v31)(v7, v8);
    sub_2613A176C();
    *v10 = 1;
    (*v30)(v10, v27, v11);
    MEMORY[0x2666FFC30](v9, v10);
    (*v29)(v10, v11);
    v36 = *v26;
    (*v26)(v9, v41);
    v13 = swift_allocObject();
    v13[2] = v33;
    v13[3] = v12;
    v13[4] = i;
    v0[6] = sub_2612D4104;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_261276D54;
    v0[5] = &block_descriptor_4;
    v14 = _Block_copy(v0 + 2);

    sub_2613A173C();
    v0[8] = MEMORY[0x277D84F90];
    sub_2612D4168(&qword_27FE9F4B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
    sub_2612D41B0(&qword_27FE9F4B8, &unk_27FE9F640, &unk_2613AA600);
    sub_2613A203C();
    MEMORY[0x266700260](v35, v34, v38, v14);
    _Block_release(v14);

    (*v25)(v38, v39);
    (*v24)(v34, v40);
    v36(v35, v41);
    v15 = v0[7];
  }

  v16 = v0[26];
  v17 = v0[22];
  v18 = v0[23];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2612CEAB8(uint64_t a1, unsigned int a2)
{
  v2 = (a2 >> 4) & 3;
  if (v2 <= 1)
  {
    if (!v2)
    {
      v8 = 0x6E6964616F4C6E6FLL;
LABEL_8:
      sub_2612D3CE8();
      v4 = sub_2613A23EC();
      MEMORY[0x2666FFEA0](v4);

      return v8;
    }

    v3 = 0x20706154657270;
LABEL_7:
    v8 = v3;
    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v3 = 0x2070615474736F70;
    goto LABEL_7;
  }

  v6 = a2 == 48 && a1 == 1;
  v7 = 0x73736563637573;
  if (!v6)
  {
    v7 = 0x4870757472617473;
  }

  if (a1 | a2 ^ 0x30)
  {
    return v7;
  }

  else
  {
    return 0x7061546F6ELL;
  }
}

uint64_t sub_2612CEC1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26139F1CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_26139F14C();
  v10 = sub_26139F16C();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  [v9 setGeneratesDecimalNumbers_];
  [v9 setMinimumFractionDigits_];
  [v9 setMaximumFractionDigits_];
  v11 = [v9 stringFromNumber_];
  if (!v11)
  {

    return 1;
  }

  v12 = v11;
  v13 = sub_2613A18CC();
  v15 = v14;

  if (v13 == 0x31302E3833 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  if (v13 == 0x32302E3833 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v13 == 0x33302E3833 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 10;
  }

  if (v13 == 0x35302E3833 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {
LABEL_11:

    return 3;
  }

  if (v13 == 0x36302E3833 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  if (v13 == 0x34302E3733 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  if (v13 == 0x35302E3733 && v15 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  v17 = sub_2613A0C2C();
  v18 = v17();

  if ((v18 & 1) == 0)
  {

    return 1;
  }

  v19 = (*(*v2 + 288))(v13, v15);

  return v19;
}

uint64_t sub_2612CF070(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x31302E3633 && a2 == 0xE500000000000000)
  {
    return 2;
  }

  if (sub_2613A241C())
  {
    return 2;
  }

  return 1;
}

uint64_t sub_2612CF0D8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;

  sub_26124A228(v11);
  v13 = sub_2613A1C1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v3;
  v15 = a1[1];
  *(v14 + 40) = *a1;
  *(v14 + 56) = v15;
  v16 = a1[3];
  *(v14 + 72) = a1[2];
  *(v14 + 88) = v16;
  *(v14 + 104) = a2;
  *(v14 + 112) = a3;

  sub_2612B3E28(a1, v18);
  sub_2612D16D8(0, 0, v10, &unk_2613AA508, v14);
}

uint64_t sub_2612CF24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_2613A21CC();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ReaderEvent(0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = sub_2613A21DC();
  v7[16] = v12;
  v13 = *(v12 - 8);
  v7[17] = v13;
  v14 = *(v13 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612CF430);
}

uint64_t sub_2612CF430()
{
  v27 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 56);
  *(v0 + 216) = *(*(v0 + 64) + 56);
  v3 = sub_26139FD0C();
  v4 = (*(*v2 + 280))();
  v6 = v5;

  *(v0 + 224) = v4;
  *(v0 + 33) = v6;
  v7 = sub_26129B780();
  *(v0 + 232) = v7;
  sub_26125A870(v7, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  *(v0 + 240) = v8;
  v9 = *(v8 - 8);
  *(v0 + 248) = v9;
  v10 = *(v9 + 48);
  *(v0 + 256) = v10;
  *(v0 + 264) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v1, 1, v8) == 1)
  {
    sub_26124C718(*(v0 + 208), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = *(v0 + 208);
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v16 = sub_2612CEAB8(v4, v6);
      v18 = sub_26124C11C(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261243000, v12, v13, "mockAction - %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v9 + 8))(*(v0 + 208), v8);
  }

  v19 = *(v0 + 176);
  v20 = sub_2613A263C();
  v22 = v21;
  sub_2613A24CC();
  v23 = swift_task_alloc();
  *(v0 + 272) = v23;
  *v23 = v0;
  v23[1] = sub_2612CF720;
  v24 = *(v0 + 176);

  return sub_2612D3284(v20, v22, 0, 0, 1);
}

uint64_t sub_2612CF720()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v10 = *v1;
  v2[35] = v0;

  v7 = *(v5 + 8);
  v2[36] = v7;
  v2[37] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_2612CFFA8;
  }

  else
  {
    v8 = sub_2612CF8A4;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2612CF8A4()
{
  v1 = *(v0 + 33);
  v2 = (v1 >> 4) & 3;
  if (v2 - 1 >= 2)
  {
    if (!v2)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 120);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      v21 = *(v0 + 56);
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      sub_26124A228(v22);
      *v18 = v17;
      *(v18 + 8) = v1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      (*(*(v73 - 8) + 56))(v18, 0, 10, v73);
      v20(v18);
LABEL_37:
      sub_2612D3EC4(v18);
      goto LABEL_38;
    }

    if (!(*(v0 + 224) & 0xFFFFFFFFFFFFFFFELL | v1 ^ 0x30))
    {
      goto LABEL_2;
    }

    v24 = *(v0 + 56);
    v25 = v24[4];
    if (v25 <= 1)
    {
      if (!v25)
      {
        v18 = *(v0 + 120);
        v20 = *(v0 + 72);
        v70 = *(v0 + 80);
        v71 = v24[2];
        v72 = v24[3];
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = 1;
        sub_26124A228(v71);
        *v18 = 0;
        v29 = 66;
        goto LABEL_35;
      }

      if (v25 != 1)
      {
        goto LABEL_41;
      }

      v18 = *(v0 + 120);
      v20 = *(v0 + 72);
      v62 = *(v0 + 80);
      v63 = 2;
    }

    else
    {
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          v18 = *(v0 + 120);
          v20 = *(v0 + 72);
          v67 = *(v0 + 80);
          v68 = v24[2];
          v69 = v24[3];
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = 4;
          sub_26124A228(v68);
          *v18 = 4;
          v29 = 0x80;
          goto LABEL_35;
        }

        if (v25 == 4)
        {
          v18 = *(v0 + 120);
          v20 = *(v0 + 72);
          v26 = *(v0 + 80);
          v27 = v24[2];
          v28 = v24[3];
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = 5;
          sub_26124A228(v27);
          *v18 = 666;
          v29 = 64;
LABEL_35:
          *(v18 + 8) = v29;
          goto LABEL_36;
        }

LABEL_41:
        v24[4] = 0;
        goto LABEL_2;
      }

      v18 = *(v0 + 120);
      v20 = *(v0 + 72);
      v64 = *(v0 + 80);
      v63 = 3;
    }

    v65 = v24[2];
    v66 = v24[3];
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v63;
    sub_26124A228(v65);
    *v18 = 4;
    v29 = 0x80;
    goto LABEL_35;
  }

LABEL_2:
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  *(v0 + 304) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 312) = v8;
  *(v0 + 320) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v3, 1, 10, v6);
  v5(v3);
  sub_2612D3EC4(v3);
  if (v2 == 1)
  {
    if (sub_2612CA6AC(*(v0 + 224), *(v0 + 33) & 0xCF, 6, 128))
    {
      v30 = *(v0 + 168);
      sub_2613A24CC();
      v31 = swift_task_alloc();
      *(v0 + 336) = v31;
      *v31 = v0;
      v31[1] = sub_2612D00A8;
      v32 = *(v0 + 168);
      v16 = 5000000000000000000;
      goto LABEL_17;
    }

    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    v43 = *(v0 + 304);
    v44 = *(v0 + 224);
    v18 = *(v0 + 120);
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);
    v47 = *(v0 + 56);
    v48 = *(v0 + 33) & 0xCF;
    v49 = *(v47 + 16);
    v50 = *(v47 + 24);
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    sub_26124A228(v49);
    *v18 = v44;
    *(v18 + 8) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v42(v18, 0, 10, v43);
    v46(v18);
    goto LABEL_37;
  }

  if (v2 == 2 || *(v0 + 224) | *(v0 + 33) ^ 0x30)
  {
    *(v0 + 328) = type metadata accessor for Mock();
    if ((sub_26129B0F4(43) & 1) == 0)
    {
      v36 = *(v0 + 256);
      v35 = *(v0 + 264);
      v38 = *(v0 + 232);
      v37 = *(v0 + 240);
      v39 = *(v0 + 200);
      v40 = sub_26129B284(35);
      sub_26125A870(v38, v39, &qword_27FE9F560, &qword_2613A3CB0);
      if (v36(v39, 1, v37) == 1)
      {
        sub_26124C718(*(v0 + 200), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v51 = *(v0 + 200);
        v52 = sub_2613A122C();
        v53 = sub_2613A1D9C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 134217984;
          *(v54 + 4) = v40;
          _os_log_impl(&dword_261243000, v52, v53, "mockTapDelay %ld", v54, 0xCu);
          MEMORY[0x266701350](v54, -1, -1);
        }

        v55 = *(v0 + 240);
        v56 = *(v0 + 248);
        v57 = *(v0 + 200);

        (*(v56 + 8))(v57, v55);
      }

      v58 = *(v0 + 160);
      sub_2613A24CC();
      v59 = swift_task_alloc();
      *(v0 + 352) = v59;
      *v59 = v0;
      v59[1] = sub_2612D04A0;
      v60 = *(v0 + 160);
      v34 = ((v40 >> 63) & 0xF21F494C589C0000) + ((v40 * 0xDE0B6B3A7640000uLL) >> 64);
      v33 = 1000000000000000000 * v40;
      goto LABEL_25;
    }

    v9 = *(v0 + 320);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    (*(v0 + 312))(v11, 2, 10, *(v0 + 304));
    v13(v11);
    sub_2612D3EC4(v11);
    sub_2613A24CC();
    v14 = swift_task_alloc();
    *(v0 + 368) = v14;
    *v14 = v0;
    v14[1] = sub_2612D0830;
    v15 = *(v0 + 152);
    v16 = 2000000000000000000;
LABEL_17:
    v33 = v16;
    v34 = 0;
LABEL_25:

    return sub_2612D3284(v33, v34, 0, 0, 1);
  }

LABEL_38:
  v75 = *(v0 + 200);
  v74 = *(v0 + 208);
  v77 = *(v0 + 184);
  v76 = *(v0 + 192);
  v79 = *(v0 + 168);
  v78 = *(v0 + 176);
  v81 = *(v0 + 152);
  v80 = *(v0 + 160);
  v82 = *(v0 + 144);
  v83 = *(v0 + 120);
  v85 = *(v0 + 112);
  v86 = *(v0 + 104);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_2612CFFA8()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[35];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2612D00A8()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 344) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_2612D03A0;
  }

  else
  {
    v7 = sub_2612D0228;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2612D0228()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 224);
  v5 = *(v0 + 120);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 33) & 0xCF;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_26124A228(v10);
  *v5 = v4;
  *(v5 + 8) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v2(v5, 0, 10, v3);
  v7(v5);
  sub_2612D3EC4(v5);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v24 = *(v0 + 112);
  v25 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2612D03A0()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[43];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2612D04A0()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 360) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_2612D0730;
  }

  else
  {
    v7 = sub_2612D0620;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2612D0620()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v0 + 312))(v3, 2, 10, *(v0 + 304));
  v5(v3);
  sub_2612D3EC4(v3);
  sub_2613A24CC();
  v6 = swift_task_alloc();
  *(v0 + 368) = v6;
  *v6 = v0;
  v6[1] = sub_2612D0830;
  v7 = *(v0 + 152);

  return (sub_2612D3284)(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2612D0730()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[45];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2612D0830()
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 376) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_2612D0F4C;
  }

  else
  {
    v7 = sub_2612D09B0;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2612D09B0()
{
  v1 = *(v0 + 33);
  if ((v1 & 0x30) == 0x20)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    v5 = *(v0 + 224);
    v6 = *(v0 + 120);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = v1 & 0xCF;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_26124A228(v11);
    *v6 = v5;
    *(v6 + 8) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v3(v6, 0, 10, v4);
    v8(v6);
    sub_2612D3EC4(v6);
LABEL_20:
    v64 = *(v0 + 200);
    v63 = *(v0 + 208);
    v66 = *(v0 + 184);
    v65 = *(v0 + 192);
    v68 = *(v0 + 168);
    v67 = *(v0 + 176);
    v70 = *(v0 + 152);
    v69 = *(v0 + 160);
    v71 = *(v0 + 144);
    v72 = *(v0 + 120);
    v75 = *(v0 + 112);
    v76 = *(v0 + 104);

    v73 = *(v0 + 8);

    return v73();
  }

  v13 = *(v0 + 328);
  if ((sub_26129B0F4(43) & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 192);
  sub_26125A870(*(v0 + 232), v17, &qword_27FE9F560, &qword_2613A3CB0);
  if (v15(v17, 1, v16) == 1)
  {
    sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = *(v0 + 192);
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "waiting for prox tap", v21, 2u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    v24 = *(v0 + 192);

    (*(v23 + 8))(v24, v22);
  }

  v25 = *(v0 + 56);
  if ((*(v25 + 40) & 1) != 0 || *(v25 + 48) > 999)
  {
LABEL_14:
    v43 = *(v0 + 256);
    v42 = *(v0 + 264);
    v44 = *(v0 + 240);
    v45 = *(v0 + 184);
    sub_26125A870(*(v0 + 232), v45, &qword_27FE9F560, &qword_2613A3CB0);
    if (v43(v45, 1, v44) == 1)
    {
      sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v46 = *(v0 + 184);
      v47 = sub_2613A122C();
      v48 = sub_2613A1D9C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_261243000, v47, v48, ".completed - success", v49, 2u);
        MEMORY[0x266701350](v49, -1, -1);
      }

      v50 = *(v0 + 240);
      v51 = *(v0 + 248);
      v52 = *(v0 + 184);

      (*(v51 + 8))(v52, v50);
    }

    v54 = *(v0 + 312);
    v53 = *(v0 + 320);
    v55 = *(v0 + 304);
    v56 = *(v0 + 216);
    v57 = *(v0 + 120);
    v59 = *(v0 + 72);
    v58 = *(v0 + 80);
    v60 = *(v0 + 56);
    sub_2612D2138(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v54(v57, 0, 10, v55);
    v59(v57);
    sub_2612D3EC4(v57);
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    sub_26124A228(v61);
    goto LABEL_20;
  }

  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 112);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v32 = sub_2613A263C();
  v34 = v33;
  sub_2613A24CC();
  *(v0 + 40) = v32;
  *(v0 + 48) = v34;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v35 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928]);
  sub_2613A24AC();
  sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8]);
  sub_2613A21EC();
  v36 = *(v31 + 8);
  *(v0 + 384) = v36;
  *(v0 + 392) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v28, v30);
  v37 = *(MEMORY[0x277D85A58] + 4);
  v38 = swift_task_alloc();
  *(v0 + 400) = v38;
  *v38 = v0;
  v38[1] = sub_2612D104C;
  v39 = *(v0 + 144);
  v40 = *(v0 + 128);
  v41 = *(v0 + 112);

  return MEMORY[0x2822008C8](v41, v0 + 16, v40, v35);
}

uint64_t sub_2612D0F4C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[47];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2612D104C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v11 = *v1;
  *(*v1 + 408) = v0;

  v4 = *(v2 + 392);
  if (v0)
  {
    (*(v2 + 384))(*(v2 + 112), *(v2 + 88));
    v5 = sub_2612D15C8;
  }

  else
  {
    v7 = *(v2 + 288);
    v6 = *(v2 + 296);
    v8 = *(v2 + 144);
    v9 = *(v2 + 128);
    (*(v2 + 384))(*(v2 + 112), *(v2 + 88));
    v7(v8, v9);
    v5 = sub_2612D11A8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2612D11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  v6 = *(v5 + 48);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  *(v5 + 48) = v8;
  if ((*(v5 + 40) & 1) == 0 && v8 < 1000)
  {
    v9 = *(v4 + 144);
    v10 = *(v4 + 128);
    v11 = *(v4 + 104);
    v12 = *(v4 + 112);
    v13 = *(v4 + 88);
    v14 = *(v4 + 96);
    v15 = sub_2613A263C();
    v17 = v16;
    sub_2613A24CC();
    *(v4 + 40) = v15;
    *(v4 + 48) = v17;
    *(v4 + 24) = 0;
    *(v4 + 16) = 0;
    *(v4 + 32) = 1;
    v18 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928]);
    sub_2613A24AC();
    sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8]);
    sub_2613A21EC();
    v19 = *(v14 + 8);
    *(v4 + 384) = v19;
    *(v4 + 392) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v11, v13);
    v20 = *(MEMORY[0x277D85A58] + 4);
    v21 = swift_task_alloc();
    *(v4 + 400) = v21;
    *v21 = v4;
    v21[1] = sub_2612D104C;
    v22 = *(v4 + 144);
    a3 = *(v4 + 128);
    a1 = *(v4 + 112);
    a2 = v4 + 16;
    a4 = v18;

    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  v24 = *(v4 + 256);
  v23 = *(v4 + 264);
  v25 = *(v4 + 240);
  v26 = *(v4 + 184);
  sub_26125A870(*(v4 + 232), v26, &qword_27FE9F560, &qword_2613A3CB0);
  if (v24(v26, 1, v25) == 1)
  {
    sub_26124C718(*(v4 + 184), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = *(v4 + 184);
    v28 = sub_2613A122C();
    v29 = sub_2613A1D9C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261243000, v28, v29, ".completed - success", v30, 2u);
      MEMORY[0x266701350](v30, -1, -1);
    }

    v31 = *(v4 + 240);
    v32 = *(v4 + 248);
    v33 = *(v4 + 184);

    (*(v32 + 8))(v33, v31);
  }

  v35 = *(v4 + 312);
  v34 = *(v4 + 320);
  v36 = *(v4 + 304);
  v37 = *(v4 + 216);
  v38 = *(v4 + 120);
  v40 = *(v4 + 72);
  v39 = *(v4 + 80);
  v41 = *(v4 + 56);
  sub_2612D2138(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v35(v38, 0, 10, v36);
  v40(v38);
  sub_2612D3EC4(v38);
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  v42 = *(v41 + 16);
  v43 = *(v41 + 24);
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  sub_26124A228(v42);
  v45 = *(v4 + 200);
  v44 = *(v4 + 208);
  v47 = *(v4 + 184);
  v46 = *(v4 + 192);
  v49 = *(v4 + 168);
  v48 = *(v4 + 176);
  v51 = *(v4 + 152);
  v50 = *(v4 + 160);
  v52 = *(v4 + 144);
  v53 = *(v4 + 120);
  v56 = *(v4 + 112);
  v57 = *(v4 + 104);

  v54 = *(v4 + 8);

  return v54();
}

uint64_t sub_2612D15C8()
{
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 144), *(v0 + 128));
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v14 = *(v0 + 112);
  v15 = *(v0 + 104);
  v16 = *(v0 + 408);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2612D16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26125A870(a3, v24 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2613A1BCC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2613A198C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

BOOL sub_2612D1984(uint64_t a1)
{
  v3 = type metadata accessor for ReaderEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v1 + 24);
    *v6 = a1;
    v6[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
    (*(*(v9 - 8) + 56))(v6, 0, 10, v9);

    v7(v6);
    sub_26124A228(v7);
    sub_2612D3EC4(v6);
  }

  return v7 != 0;
}

uint64_t sub_2612D1AC4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBF8, "(N");
  if (swift_dynamicCast())
  {
    sub_2612CA6A8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_26139ED6C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26124C718(__src, &qword_27FE9FC00, &unk_2613A9DC0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2613A216C();
  }

  sub_2612C8CE0(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2612CA52C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2612D373C(sub_2612D407C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26139EFDC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26124F2C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2613A1A4C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2613A1A8C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2613A216C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26124F2C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2613A1A5C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_26139EFEC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_26139EFEC();
    sub_26124A168(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_26124A168(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26124C778(*&__src[0], *(&__src[0] + 1));

  sub_26124C6C4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2612D1FF4()
{
  v0 = sub_2612D1AC4(0xD000000000000017, 0x80000002613BA810);
  v2 = v1;
  sub_2612D1AC4(0x444979656BLL, 0xE500000000000000);
  return nullsub_1(v0, v2);
}

double sub_2612D206C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2612D1AC4(0xD000000000000011, 0x80000002613BA830);
  v4 = v3;
  v5 = sub_2612D1AC4(0x444979656BLL, 0xE500000000000000);
  sub_2612CCBD8(v2, v4, v5, v6, &unk_2873BA6E8, 0x747265436661656CLL, 0xEF65746163696669, v9);
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = *&v10;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  return result;
}

uint64_t sub_2612D2138@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_26139F13C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  v5 = sub_26129B0F4(7);
  v6 = sub_26139FD0C();
  sub_261259BE0(0, &qword_27FE9FCA8, 0x277CCABB0);
  v7 = sub_2613A1F2C();
  v8 = [v6 compare_];

  v9 = sub_26129B1A8(23);
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = v9;
  }

  else
  {

    v13 = 0;
    v11 = 0xE000000000000000;
  }

  v55 = (v8 == 1) | v5;
  sub_26139FCEC();
  v14 = sub_2612C9FF8(&unk_2873BA6C0);
  v16 = v15;
  v17 = sub_26139F00C();
  v56 = v18;
  v57 = v17;
  sub_26124C6C4(v14, v16);
  v19 = sub_2612E62B0(0x617461642D6D6973, 0xE800000000000000);
  v53 = v20;
  v54 = v19;
  v21 = sub_2612E62B0(0x617461642D6D6973, 0xE800000000000000);
  v51 = v22;
  v52 = v21;
  v23 = sub_2612D1AC4(0x6463672D6D6973, 0xE700000000000000);
  v49 = v24;
  v50 = v23;
  v25 = sub_2612E62B0(0x657474612D6D6973, 0xEA00000000007473);
  v47 = v26;
  v48 = v25;
  v27 = sub_2612D1AC4(0x647361632D6D6973, 0xE800000000000000);
  v29 = v28;
  v30 = sub_2612E67CC();
  v46 = v4;
  v32 = sub_2612E67DC(v30, v31, v27, v29);
  v34 = v33;

  sub_26124C6C4(v27, v29);
  v35 = sub_26139FD0C();
  v36 = [v35 stringValue];

  v37 = sub_2613A18CC();
  v39 = v38;

  v40 = sub_26139FC6C();
  v42 = v41;
  LOBYTE(v35) = sub_26139FCCC();
  v43 = sub_26125A798();
  return sub_2612CC02C(v46, 1634953558, 0xE400000000000000, 0, v57, v56, 0, v54, v58, v53, v52, v51, v50, v49, v48, v47, v32, v34, 0x6B656B2D6D6973, 0xE700000000000000, v37, v39, v40, v42, v35 & 1, v55 & 1, 1, 1, 1, 0, 0x3030303030303030, 0xEC00000030303030, 0, v13, v11, 0, 0x676E69662D6D6973, 0xEF746E6972707265, 0, 1, 0, 1, 0x417961702D6D6973, 0xEA00000000007070, v43 & 1);
}

uint64_t sub_2612D2510(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  v8 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1 + 1, v8);
  v9 = sub_26124A620(v8);
  v11 = v10;
  v21 = a1;
  sub_2612D2A90(sub_2612D3F20, v20, v9, v10);
  sub_26124A168(v9, v11);
  v26 = *a1;
  v25 = 0;
  sub_2612C10DC();
  sub_2613A1B1C();
  result = sub_2613A1B1C();
  if (v24[0] == v22)
  {
    sub_2612B5A20((a1 + 8), v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FCA0, qword_2613AA518);
    result = swift_dynamicCast();
    if (result)
    {
      if (v22 == 0x7061742D786F7270 && v23 == 0xE800000000000000)
      {
      }

      else
      {
        v13 = sub_2613A241C();

        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      v14 = sub_26129B780();
      sub_26125A870(v14, v7, &qword_27FE9F560, &qword_2613A3CB0);
      v15 = sub_2613A124C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v7, 1, v15) == 1)
      {
        result = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v17 = sub_2613A122C();
        v18 = sub_2613A1D9C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_261243000, v17, v18, "prox tap done", v19, 2u);
          MEMORY[0x266701350](v19, -1, -1);
        }

        result = (*(v16 + 8))(v7, v15);
      }

      *(v2 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_2612D2810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = sub_26129B780();
  sub_26125A870(v12, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v9, 1, v13);
  if (v15 == 1)
  {
    result = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_2612B44CC(a2, v30);
    sub_26124C778(v10, v11);
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    sub_26124C6C4(v10, v11);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v19 = 33554946;
      v20 = sub_2612B5D04(v30[0]);
      v28 = a3;
      v21 = v20;
      sub_2612A0E50(v30);
      *(v19 + 4) = v21;
      *(v19 + 6) = 2080;
      v22 = sub_2612E6894(v10, v11);
      v24 = sub_26124C11C(v22, v23, &v29);
      a3 = v28;

      *(v19 + 8) = v24;
      _os_log_impl(&dword_261243000, v17, v18, "Monitor Event Type: [%hu] Data: [%s]", v19, 0x10u);
      v25 = v27;
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x266701350](v25, -1, -1);
      MEMORY[0x266701350](v19, -1, -1);
    }

    else
    {
      sub_2612A0E50(v30);
    }

    result = (*(v14 + 8))(v9, v13);
  }

  *a3 = v15 == 1;
  return result;
}

uint64_t sub_2612D2A90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
    v6 = 0;
    return v6 | ((v5 > 0xE) << 8);
  }

  v9 = a3;
  v10 = a4;
  sub_26124C778(a3, a4);
  a1(&v11, &v9);
  if (!v4)
  {
    sub_26124C6C4(v9, v10);
    v6 = v11;
    return v6 | ((v5 > 0xE) << 8);
  }

  result = sub_26124C6C4(v9, v10);
  __break(1u);
  return result;
}

uint64_t sub_2612D2B30(uint64_t a1)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_2612B44CC(v4, v6);
      (*(*v1 + 360))(v6);
      sub_2612A0E50(v6);
      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2612D2BCC()
{
  v1 = *(v0 + 24);
  sub_26124A228(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2612D2C04()
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_2612D2CC4@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 232))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2612D2E08()
{
  result = (*(**v0 + 264))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2612D2E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(**v7 + 272);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_2612C55B0;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2612D3110()
{
  result = (*(**v0 + 336))();
  if (v1)
  {
    return v3;
  }

  return result;
}

double sub_2612D3170@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 344))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2612D3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2613A21CC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2612D3384);
}

uint64_t sub_2612D3384()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2613A21DC();
  v7 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928]);
  sub_2613A24AC();
  sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8]);
  sub_2613A21EC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2612D3514;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2612D3514()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2612D36D0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2612D36D0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_2612D373C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26124C6C4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26124C6C4(v6, v5);
    *v3 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26139ED1C() && __OFSUB__(v6, sub_26139ED4C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26139ED5C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26139ECFC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2612D3B4C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26124C6C4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    sub_26139EF9C();
    result = sub_2612D3B4C(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2612D3AE0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2612D3B4C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26139ED1C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26139ED4C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26139ED3C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2612D3C00@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_2613A212C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2612D3C50()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612CE460(v4, v5, v6, v2, v3);
}

unint64_t sub_2612D3CE8()
{
  result = qword_27FE9FC98;
  if (!qword_27FE9FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC98);
  }

  return result;
}

uint64_t sub_2612D3D3C(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v4 = (a2 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if ((a4 & 0x30) == 0x20)
      {
        return sub_2612CA6AC();
      }
    }

    else
    {
      v6 = a4 & 0x30;
      if (a1 | a2 ^ 0x30)
      {
        if (a2 == 48 && a1 == 1)
        {
          if (v6 == 48 && a3 == 1 && a4 == 48)
          {
            return 1;
          }
        }

        else if (v6 == 48 && a3 == 2 && a4 == 48)
        {
          return 1;
        }
      }

      else if (v6 == 48 && !a3 && a4 == 48)
      {
        return 1;
      }
    }
  }

  else if (v4)
  {
    if ((a4 & 0x30) == 0x10)
    {
      return sub_2612CA6AC();
    }
  }

  else if ((a4 & 0x30) == 0)
  {
    return sub_2612CA6AC();
  }

  return 0;
}

uint64_t sub_2612D3E18()
{
  v2 = v0[4];
  v3 = v0[13];
  v4 = v0[14];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612CF24C(v5, v6, v7, v2, (v0 + 5), v3, v4);
}

uint64_t sub_2612D3EC4(uint64_t a1)
{
  v2 = type metadata accessor for ReaderEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SimulatedCardReader.MockAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 9))
  {
    return (*a1 + 13);
  }

  v3 = (*(a1 + 8) & 0xC | (*(a1 + 8) >> 4) & 3) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SimulatedCardReader.MockAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t sub_2612D4014(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 4) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2612D4040(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0xC3 | (16 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 48;
  }

  return result;
}

void *sub_2612D407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2612D3AE0(sub_2612D40E4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2612D4104()
{
  v1 = *(v0 + 32);
  result = 10 * v1;
  if ((v1 * 10) >> 64 == (10 * v1) >> 63)
  {
    v3 = *(v0 + 24);
    return (*(v0 + 16))();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612D4168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612D41B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2612D41F8(char a1)
{
  result = 0x726F6D654D727073;
  switch(a1)
  {
    case 1:
    case 23:
    case 43:
    case 46:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
    case 42:
    case 50:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x4970696B53727073;
      break;
    case 5:
    case 34:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4D49556C61636F6CLL;
      break;
    case 7:
      result = 0x6F46726564616572;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x474D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x4C79636176697270;
      break;
    case 12:
      result = 0x4149556563726F66;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x6E41656C62616E65;
      break;
    case 16:
    case 33:
    case 39:
      v3 = 5;
      goto LABEL_33;
    case 17:
    case 27:
    case 28:
    case 51:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x6556534F6B636F6DLL;
      break;
    case 19:
      result = 0x6F676F4C6B636F6DLL;
      break;
    case 20:
      result = 0x4E424D6B636F6DLL;
      break;
    case 21:
      result = 0x43434D6B636F6DLL;
      break;
    case 22:
      result = 0x6E756F436B636F6DLL;
      break;
    case 24:
    case 40:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
    case 37:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 31:
      result = 0x6378454244666173;
      break;
    case 32:
      result = 0x726F434244666173;
      break;
    case 35:
      result = 0x447061546B636F6DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x504F434A6B636F6DLL;
      break;
    case 41:
      result = 0xD000000000000012;
      break;
    case 44:
      result = 0x54656C6261736964;
      break;
    case 45:
      result = 0x616C6544656E6F64;
      break;
    case 47:
    case 48:
      v3 = 9;
LABEL_33:
      result = v3 | 0xD000000000000012;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 52:
      result = 0xD000000000000012;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
      result = 0x73726556534F656DLL;
      break;
    case 55:
      result = 0x656369766544656DLL;
      break;
    case 56:
      result = 0x4E49506563726F66;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2612D47C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2612D41F8(*a1);
  v5 = v4;
  if (v3 == sub_2612D41F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_2612D484C()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612D41F8(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612D48B0()
{
  sub_2612D41F8(*v0);
  sub_2613A19DC();
}

uint64_t sub_2612D4904()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612D41F8(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612D4964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612D4ADC();
  *a2 = result;
  return result;
}

unint64_t sub_2612D4994@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612D41F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612D49C0()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612D4A24()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612D4A70@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2613A228C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2612D4ADC()
{
  v0 = sub_2613A246C();

  if (v0 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2612D4B34()
{
  result = qword_27FE9FCC0;
  if (!qword_27FE9FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FCC0);
  }

  return result;
}

unint64_t sub_2612D4B8C()
{
  result = qword_27FE9FCC8;
  if (!qword_27FE9FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FCC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonPrefKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonPrefKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2612D4D40(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2612D4D74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a4;
  *(v8 + 176) = a3;
  *(v8 + 24) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_26139F64C();
  *(v8 + 104) = v10;
  v11 = *(v10 - 8);
  *(v8 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D4E94);
}

uint64_t sub_2612D4E94()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_26139F43C();
  sub_26139F5DC();
  v7 = *(v2 + 8);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  type metadata accessor for SPRInstallDelegate();
  v8 = swift_allocObject();
  *(v0 + 144) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = *(**(v5 + 16) + 232);

  v18 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_2612D5038;
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 176);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);

  return v18(v16, v15, v14, v12, v13, v8);
}

uint64_t sub_2612D5038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_2612D59A8;
  }

  else
  {
    v5 = sub_2612D514C;
  }

  return MEMORY[0x2822009F8](v5);
}

void sub_2612D514C()
{
  v90 = v0;
  v1 = *(v0 + 160);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000020, 0x80000002613BAE50);
  v2 = [v1 kernelsInstalled];
  v3 = MEMORY[0x277D837D0];
  v4 = sub_2613A1B7C();

  v5 = MEMORY[0x266700000](v4, v3);
  v7 = v6;

  MEMORY[0x2666FFEA0](v5, v7);

  MEMORY[0x2666FFEA0](0x72746E756F63202CLL, 0xEF203A65646F4379);
  v8 = [v1 countryCode];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2613A18CC();
    v12 = v11;
  }

  else
  {
    v12 = 0xE500000000000000;
    v10 = 0x7974706D65;
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  MEMORY[0x2666FFEA0](v10, v12);

  MEMORY[0x2666FFEA0](0xD000000000000019, 0x80000002613BAE80);
  v15 = &off_279AD5000;
  *(v0 + 16) = [v13 safStorageDuration];
  v16 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v16);

  v18 = v88;
  v17 = v89;
  v87 = sub_26129B780();
  sub_26124AA44(v87, v14);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  v86 = *(v20 + 48);
  v21 = v86(v14, 1, v19);
  v22 = *(v0 + 96);
  if (v21 == 1)
  {

    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v19;
      v27 = swift_slowAlloc();
      v88 = v27;
      *v25 = 136315138;
      v28 = sub_26124C11C(v18, v17, &v88);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_261243000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v29 = v27;
      v19 = v26;
      MEMORY[0x266701350](v29, -1, -1);
      v30 = v25;
      v15 = 0x279AD5000;
      MEMORY[0x266701350](v30, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(*(v0 + 96), v19);
  }

  v31 = *(v0 + 160);
  v32 = sub_2613A0C5C();
  v33 = [v31 countryCode];
  if (v33)
  {
    v34 = v33;
    v35 = sub_2613A18CC();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    v39 = v35 & 0xFFFFFFFFFFFFLL;
    if ((v37 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v37) & 0xF;
    }

    else
    {
      v40 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
      goto LABEL_85;
    }

    if ((v37 & 0x1000000000000000) != 0)
    {
      v43 = sub_26124E93C(v35, v37, 10);
      v61 = v84;
LABEL_73:

      if ((v61 & 1) == 0)
      {
        v32 = v43;
      }

      goto LABEL_75;
    }

    if ((v37 & 0x2000000000000000) != 0)
    {
      v88 = v35;
      v89 = v37 & 0xFFFFFFFFFFFFFFLL;
      if (v35 == 43)
      {
        if (v38)
        {
          if (--v38)
          {
            v43 = 0;
            v53 = &v88 + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                break;
              }

              v55 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                break;
              }

              v43 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                break;
              }

              ++v53;
              if (!--v38)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_91:
        __break(1u);
        return;
      }

      if (v35 != 45)
      {
        if (v38)
        {
          v43 = 0;
          v58 = &v88;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            v58 = (v58 + 1);
            if (!--v38)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v38)
      {
        if (--v38)
        {
          v43 = 0;
          v47 = &v88 + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v49 - v48;
            if (__OFSUB__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v38)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        v41 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v41 = sub_2613A216C();
      }

      v42 = *v41;
      if (v42 == 43)
      {
        if (v39 >= 1)
        {
          v38 = v39 - 1;
          if (v39 != 1)
          {
            v43 = 0;
            if (v41)
            {
              v50 = v41 + 1;
              while (1)
              {
                v51 = *v50 - 48;
                if (v51 > 9)
                {
                  goto LABEL_71;
                }

                v52 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  goto LABEL_71;
                }

                v43 = v52 + v51;
                if (__OFADD__(v52, v51))
                {
                  goto LABEL_71;
                }

                ++v50;
                if (!--v38)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_90;
      }

      if (v42 != 45)
      {
        if (v39)
        {
          v43 = 0;
          if (v41)
          {
            while (1)
            {
              v56 = *v41 - 48;
              if (v56 > 9)
              {
                goto LABEL_71;
              }

              v57 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_71;
              }

              v43 = v57 + v56;
              if (__OFADD__(v57, v56))
              {
                goto LABEL_71;
              }

              ++v41;
              if (!--v39)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v43 = 0;
        LOBYTE(v38) = 1;
        goto LABEL_72;
      }

      if (v39 >= 1)
      {
        v38 = v39 - 1;
        if (v39 != 1)
        {
          v43 = 0;
          if (v41)
          {
            v44 = v41 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_71;
              }

              v46 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_71;
              }

              v43 = v46 - v45;
              if (__OFSUB__(v46, v45))
              {
                goto LABEL_71;
              }

              ++v44;
              if (!--v38)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v38) = 0;
LABEL_72:
          v61 = v38;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_75:
  while (1)
  {
    v62 = [*(v0 + 160) *(v15 + 1920)];
    v15 = 3600 * v62;
    if ((v62 * 3600) >> 64 == (3600 * v62) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_85:
  }

  v85 = v20;
  v63 = v19;
  v64 = *(v0 + 128);
  v65 = *(v0 + 136);
  v66 = *(v0 + 120);
  v67 = *(v0 + 104);
  v68 = *(v0 + 88);
  sub_26139F43C();
  sub_26139F5BC();
  v64(v66, v67);
  sub_26124AA44(v87, v68);
  if (v86(v68, 1, v63) == 1)
  {
    v69 = *(v0 + 144);
    v70 = *(v0 + 88);

    sub_26124C718(v70, &qword_27FE9F560, &qword_2613A3CB0);
    v71 = v32;
  }

  else
  {
    v72 = *(v0 + 88);
    v73 = sub_2613A122C();
    v74 = sub_2613A1D9C();
    v71 = v32;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_261243000, v73, v74, "Kernels installed successfully", v75, 2u);
      MEMORY[0x266701350](v75, -1, -1);
    }

    v76 = *(v0 + 144);
    v77 = *(v0 + 88);

    (*(v85 + 8))(v77, v63);
  }

  v78 = *(v0 + 120);
  v79 = *(v0 + 88);
  v80 = *(v0 + 96);
  v81 = *(v0 + 80);

  v83 = *(v0 + 8);

  v82.n128_f64[0] = v15;
  v83(v71, v82);
}

uint64_t sub_2612D59A8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  sub_26139F43C();
  sub_26139F5BC();
  v2(v3, v4);
  v6 = sub_26129B780();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = v0[21];
    v10 = v0[10];
    v11 = v9;
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[21];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_261243000, v12, v13, "Kernels install failed with error: [ %@ ]", v15, 0xCu);
      sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v16, -1, -1);
      MEMORY[0x266701350](v15, -1, -1);
    }

    v19 = v0[10];

    (*(v8 + 8))(v19, v7);
  }

  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v24 = v0[11];
  v23 = v0[12];
  v25 = v0[10];
  type metadata accessor for SPRErrorsUtils();
  v26 = sub_2613778B4(v20);
  sub_26139F2CC();
  sub_2612C5960();
  swift_allocError();
  *v27 = v26;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_2612D5C5C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2612D5CC4(uint64_t result, uint64_t a2)
{
  if (result == 3)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    return v3(a2);
  }

  return result;
}

uint64_t sub_2612D5D58()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2612D5DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  result = MEMORY[0x2666FFEA0](a1, a2);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_2612D5E48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - v11;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v57 = *(State - 8);
  v58 = State;
  v13 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](State);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v48 - v17;
  swift_beginAccess();
  v48 = v0;
  v18 = *(v0 + 112);
  v19 = v16;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v59 = v18;

  v26 = 0;
  v55 = v10;
  v50 = v6;
  v52 = v19;
  while (v23)
  {
LABEL_10:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v56;
    sub_2612DC97C(*(v59 + 56) + *(v57 + 72) * (v29 | (v26 << 6)), v56, type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612DC9E4(v30, v19, type metadata accessor for IdentityAnalyticsManager.LoadState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v19;
      v32 = v54;
      sub_2612D6730(v31, v54);
      sub_26125A870(v32, v10, &qword_27FE9FD30, "HM");
      v33 = type metadata accessor for IdentityAnalyticsReporter(0);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        sub_26124C718(v32, &qword_27FE9FD30, "HM");
        result = sub_26124C718(v10, &qword_27FE9FD30, "HM");
        v19 = v52;
      }

      else
      {
        v34 = *v10;
        v35 = v49;
        v51 = v10[1];

        sub_2612DC91C(v10, type metadata accessor for IdentityAnalyticsReporter);
        v36 = sub_2613A1C1C();
        v37 = *(v36 - 8);
        v38 = v53;
        (*(v37 + 56))(v53, 1, 1, v36);
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v39[4] = v34;
        v39[5] = v51;
        sub_26125A870(v38, v35, &unk_27FE9F580, &qword_2613A5480);
        LODWORD(v38) = (*(v37 + 48))(v35, 1, v36);

        if (v38 == 1)
        {
          sub_26124C718(v35, &unk_27FE9F580, &qword_2613A5480);
        }

        else
        {
          sub_2613A1C0C();
          (*(v37 + 8))(v35, v36);
        }

        v40 = v39[2];
        v41 = v39[3];
        swift_unknownObjectRetain();

        if (v40)
        {
          swift_getObjectType();
          v42 = sub_2613A1BCC();
          v44 = v43;
          swift_unknownObjectRelease();
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        sub_26124C718(v53, &unk_27FE9F580, &qword_2613A5480);
        v45 = swift_allocObject();
        *(v45 + 16) = &unk_2613AA828;
        *(v45 + 24) = v39;
        if (v44 | v42)
        {
          v60 = 0;
          v61 = 0;
          v62 = v42;
          v63 = v44;
        }

        v10 = v55;
        v19 = v52;
        swift_task_create();

        result = sub_26124C718(v54, &qword_27FE9FD30, "HM");
      }
    }

    else
    {
      v27 = *v19;
      sub_2613A1C9C();
      v10 = v55;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      v46 = v48;
      v47 = *(v48 + 112);

      swift_defaultActor_destroy();
      return v46;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612D6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139FA0C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D6514);
}

uint64_t sub_2612D6514()
{
  v1 = v0[6];
  sub_26139F9FC();
  v2 = *(MEMORY[0x277D437C0] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2612D65B8;
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2821A5178](v6, v5);
}

uint64_t sub_2612D65B8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2612D6730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612D67C0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2612D6454(v4, v5, v6, v2, v3);
}

uint64_t sub_2612D6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26125A870(a3, v27 - v11, &unk_27FE9F580, &qword_2613A5480);
  v13 = sub_2613A1C1C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26124C718(v12, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2613A1BCC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2613A198C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2612D6B6C()
{
  sub_2612D5E48();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2612D6B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD38, &qword_2613AA848) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v4[17] = State;
  v8 = *(State - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D6CE4);
}

uint64_t sub_2612D6CE4()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v4 = v0[12];
  v3 = v0[13];
  v5 = *(v1 + 112);

  v6 = sub_26124E5EC(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    v26 = v0[12];
    v25 = v0[13];
    v27 = sub_2613A1C1C();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v28[5] = v25;

    v29 = sub_2612D6858(0, 0, v24, &unk_2613AA858, v28);
    v0[24] = v29;
    *v23 = v29;
    swift_storeEnumTagMultiPayload();
    v30 = *(v22 + 56);
    v0[25] = v30;
    v0[26] = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v30(v23, 0, 1, v21);
    swift_beginAccess();

    sub_2612D7DB0(v23, v26, v25);
    swift_endAccess();
    v31 = *(MEMORY[0x277D857E0] + 4);
    v32 = swift_task_alloc();
    v0[27] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
    *v32 = v0;
    v32[1] = sub_2612D727C;
    v34 = v0[11];
    v35 = v29;
    goto LABEL_9;
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v11 = v0[17];
  sub_2612DC97C(*(v2 + 56) + *(v0[18] + 72) * v6, v9, type metadata accessor for IdentityAnalyticsManager.LoadState);

  sub_2612DC9E4(v9, v8, type metadata accessor for IdentityAnalyticsManager.LoadState);
  sub_2612DC97C(v8, v10, type metadata accessor for IdentityAnalyticsManager.LoadState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v0[19];
    v13 = v0[11];
    sub_2612DC91C(v0[21], type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612D6730(v12, v13);
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    v18 = v0[15];
    v17 = v0[16];

    v19 = v0[1];

    return v19();
  }

  v36 = *v0[19];
  v0[22] = v36;
  v37 = *(MEMORY[0x277D857E0] + 4);
  v38 = swift_task_alloc();
  v0[23] = v38;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  *v38 = v0;
  v38[1] = sub_2612D70B8;
  v34 = v0[11];
  v35 = v36;
LABEL_9:

  return MEMORY[0x282200460](v34, v35, v33);
}

uint64_t sub_2612D70B8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612D71C8);
}

uint64_t sub_2612D71C8()
{
  v2 = v0[21];
  v1 = v0[22];

  sub_2612DC91C(v2, type metadata accessor for IdentityAnalyticsManager.LoadState);
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2612D727C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612D738C);
}

uint64_t sub_2612D738C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  sub_26125A870(v0[11], v5, &qword_27FE9FD30, "HM");
  swift_storeEnumTagMultiPayload();
  v2(v5, 0, 1, v4);
  swift_beginAccess();

  sub_2612D7DB0(v5, v7, v6);
  swift_endAccess();

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2612D74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_26139FA0C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D75D4);
}

uint64_t sub_2612D75D4()
{
  v21 = v0;
  v1 = v0[10];
  v2 = sub_26129B858();
  v0[11] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[12] = v3;
  v4 = *(v3 - 8);
  v0[13] = v4;
  v5 = *(v4 + 48);
  v0[14] = v5;
  v0[15] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[4];

    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[3];
      v9 = v0[4];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_26124C11C(v10, v9, &v20);
      _os_log_impl(&dword_261243000, v7, v8, "Creating identity analytics reporter for [%s]", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v4 + 8))(v0[10], v3);
  }

  v13 = v0[7];
  sub_26139F9FC();
  v14 = *(MEMORY[0x277D437B0] + 4);
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_2612D7838;
  v16 = v0[7];
  v18 = v0[3];
  v17 = v0[4];

  return MEMORY[0x2821A5168](v18, v17, 0, 0);
}

uint64_t sub_2612D7838(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v6 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_2612D7938);
}

uint64_t sub_2612D7938()
{
  v49 = v0;
  if (v0[18])
  {
    v47 = v0[18];
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[12];
    v4 = v0[8];
    sub_26125A870(v0[11], v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v2(v4, 1, v3) == 1)
    {
      sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = v0[4];

      v12 = sub_2613A122C();
      v13 = sub_2613A1D7C();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[3];
        v14 = v0[4];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v48 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_26124C11C(v15, v14, &v48);
        _os_log_impl(&dword_261243000, v12, v13, "Returning identity analytics reporter for [%s]", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x266701350](v17, -1, -1);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v0[13] + 8))(v0[8], v0[12]);
    }

    v46 = v0[17];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[2];
    v23 = v0[3];
    v24 = type metadata accessor for IdentityAnalyticsReporter(0);
    (*(v19 + 16))(&v22[*(v24 + 24)], v18, v21);
    v25 = *(v24 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    v26 = sub_26139F8BC();
    (*(v19 + 8))(v18, v21);
    *&v22[v25] = v26;
    *(v22 + 2) = v23;
    *(v22 + 3) = v20;
    *v22 = v46;
    *(v22 + 1) = v47;
    (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[12];
    v8 = v0[9];
    sub_26125A870(v0[11], v8, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = v6(v8, 1, v7);
    v10 = v0[9];
    if (v9 == 1)
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = v0[4];

      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();

      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[6];
      v31 = v0[7];
      v33 = v0[5];
      if (v30)
      {
        v35 = v0[3];
        v34 = v0[4];
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v48 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_26124C11C(v35, v34, &v48);
        _os_log_impl(&dword_261243000, v28, v29, "Could not create identity analytics reporter for [%s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x266701350](v37, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      (*(v0[13] + 8))(v0[9], v0[12]);
    }

    v38 = v0[2];
    v39 = type metadata accessor for IdentityAnalyticsReporter(0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  v41 = v0[9];
  v40 = v0[10];
  v43 = v0[7];
  v42 = v0[8];

  v44 = v0[1];

  return v44();
}

uint64_t sub_2612D7DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD38, &qword_2613AA848);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v12 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_26124C718(a1, &qword_27FE9FD38, &qword_2613AA848);
    sub_2612DCB4C(a2, a3, v10);

    return sub_26124C718(v10, &qword_27FE9FD38, &qword_2613AA848);
  }

  else
  {
    sub_2612DC9E4(a1, v14, type metadata accessor for IdentityAnalyticsManager.LoadState);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2612DD21C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2612D7F84()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2612D7FC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdentityAnalyticsReporter(0);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v6;
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_2613A087C();
  if (*(a1 + 16))
  {
    v17 = sub_26124E5EC(v15, v16);
    v19 = v18;

    if (v19)
    {
      sub_26124C994(*(a1 + 56) + 32 * v17, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v20 = v52;
        v46 = v51;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v20 = 0xE700000000000000;
  v46 = 0x6E776F6E6B6E75;
LABEL_7:
  v21 = sub_2613A065C();
  if (*(a1 + 16))
  {
    v23 = sub_26124E5EC(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_26124C994(*(a1 + 56) + 32 * v23, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v26 = v52;
        v47 = v51;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v47 = 0x6E776F6E6B6E75;
  v26 = 0xE700000000000000;
LABEL_13:
  v27 = sub_26129B858();
  sub_26125A870(v27, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v28 = sub_2613A124C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v14, 1, v28) == 1)
  {

    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v45 = v2;

    v30 = sub_2613A122C();
    v31 = sub_2613A1D9C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v32 = 136315394;
      v33 = sub_26124C11C(v46, v20, v53);
      v46 = v7;
      v34 = v33;

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      v35 = sub_26124C11C(v47, v26, v53);

      *(v32 + 14) = v35;
      v7 = v46;
      _os_log_impl(&dword_261243000, v30, v31, "Sending identity analytics event [ %s ] with hierarchyToken [ %s ]", v32, 0x16u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x266701350](v36, -1, -1);
      MEMORY[0x266701350](v32, -1, -1);
    }

    else
    {
    }

    v2 = v45;
    (*(v29 + 8))(v14, v28);
  }

  v37 = sub_2613A1C1C();
  v38 = v50;
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  sub_2612DC97C(v2, v7, type metadata accessor for IdentityAnalyticsReporter);
  v39 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v40 = (v49 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  sub_2612DC9E4(v7, v41 + v39, type metadata accessor for IdentityAnalyticsReporter);
  *(v41 + v40) = a1;

  sub_261266800(0, 0, v38, &unk_2613AA868, v41);
}

uint64_t sub_2612D8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for IdentityAnalyticsReporter(0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D860C);
}

uint64_t sub_2612D860C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = *(v4 + *(v0[4] + 28));
  sub_2612DC97C(v4, v1, type metadata accessor for IdentityAnalyticsReporter);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  sub_2612DC9E4(v1, v8 + v6, type metadata accessor for IdentityAnalyticsReporter);
  *(v8 + v7) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_2612D41B0(&qword_27FE9F420, &qword_27FE9F400, &unk_2613A4A90);
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_2612D876C);
}

uint64_t sub_2612D876C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2612D8800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2612D8820);
}

uint64_t sub_2612D8820()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for IdentityAnalyticsReporter(0) + 24);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(MEMORY[0x277D437D8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_261266708;
  v7 = v0[3];

  return MEMORY[0x2821A5190](v3, v4, v7, 0);
}

double sub_2612D88E0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v6 = sub_26139F1CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = sub_26139F13C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v34 = *a1;
  v35 = v20;
  v36 = a1[2];
  sub_26139F12C();
  v21 = sub_26139F0DC();
  v23 = v22;
  (*(v16 + 8))(v19, v15);
  sub_26139F1BC();
  sub_26139F1AC();
  (*(v7 + 8))(v10, v6);
  v24 = sub_26139F19C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F3B8, &qword_2613A4828);
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = sub_26139F17C();
    v27 = v28;
    (*(v25 + 8))(v14, v24);
  }

  v29 = v35;
  *a4 = v34;
  *(a4 + 16) = v29;
  result = *&v36;
  *(a4 + 32) = v36;
  v31 = v33;
  *(a4 + 48) = v32;
  *(a4 + 56) = v31;
  *(a4 + 64) = v21;
  *(a4 + 72) = v23;
  *(a4 + 80) = v26;
  *(a4 + 88) = v27;
  return result;
}

uint64_t sub_2612D8B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD40, &qword_2613AA880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v7;
  *(inited + 48) = sub_2613A0A4C();
  *(inited + 56) = v8;
  *(inited + 64) = sub_2613A082C();
  *(inited + 72) = v9;
  *(inited + 80) = sub_2613A08DC();
  *(inited + 88) = v10;
  *(inited + 96) = sub_2613A086C();
  *(inited + 104) = v11;
  *(inited + 112) = a2;
  *(inited + 120) = a3;

  *(inited + 128) = sub_2613A05FC();
  *(inited + 136) = v12;
  *(inited + 144) = sub_2613A036C();
  *(inited + 152) = v13;
  *(inited + 160) = sub_2613A065C();
  *(inited + 168) = v14;
  v15 = *(v3 + 72);
  *(inited + 176) = *(v3 + 64);
  *(inited + 184) = v15;

  *(inited + 192) = sub_2613A07EC();
  *(inited + 200) = v16;
  v21 = *(v3 + 80);
  *(inited + 208) = v21;
  sub_2612DDE08(&v21, &v20);
  v17 = sub_2612BEECC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD48, qword_2613AA888);
  swift_arrayDestroy();
  v18 = sub_2612D8CF0(v17);

  sub_2612D7FC8(v18);
}

unint64_t sub_2612D8CF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
    v2 = sub_2613A224C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
        swift_dynamicCast();
        sub_26125A7B0(&v27, v29);
        sub_26125A7B0(v29, v30);
        sub_26125A7B0(v30, &v28);
        result = sub_26124E5EC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_26125A7B0(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_26125A7B0(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2612D8F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v39 = a2;
  v40 = a4;
  v13 = sub_26139F13C();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IdentityAnalyticsReporter(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v7;
  v49 = v7[1];
  v50 = v25;
  v48 = v7[2];
  sub_2612DC97C(a1, v24, type metadata accessor for IdentityAnalyticsReporter);
  sub_2612DC97C(a6, v20, type metadata accessor for IdentityAnalyticsRequestInformation);
  v26 = v7[2];
  v27 = v7[3];
  v28 = v7[5];
  v46 = v7[4];
  v47 = v27;
  v45 = v28;
  v29 = v7[1];
  *a7 = *v7;
  a7[1] = v29;
  a7[2] = v26;
  v30 = type metadata accessor for IdentityAnalyticsTransaction(0);
  sub_2612DC97C(v24, a7 + v30[5], type metadata accessor for IdentityAnalyticsReporter);
  v31 = (a7 + v30[7]);
  v32 = v40;
  *v31 = v39;
  v31[1] = a3;
  v31[2] = v32;
  v31[3] = a5;
  sub_2612DC97C(v20, a7 + v30[6], type metadata accessor for IdentityAnalyticsRequestInformation);
  v33 = v46;
  *(a7 + v30[8]) = v47;
  v44 = v33;
  sub_2612DDE08(&v50, v43);
  sub_2612DDE08(&v49, v43);
  sub_2612DDE08(&v48, v43);
  sub_2612DDE08(&v47, v43);
  sub_2612DDE08(&v46, v43);
  sub_2612DDE08(&v45, v43);

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  sub_26139F12C();
  v34 = sub_26139F0DC();
  v36 = v35;
  (*(v41 + 8))(v16, v42);
  MEMORY[0x2666FFEA0](v34, v36);

  v37 = v44;
  sub_2612DC91C(v20, type metadata accessor for IdentityAnalyticsRequestInformation);
  sub_2612DC91C(v24, type metadata accessor for IdentityAnalyticsReporter);
  *(a7 + v30[9]) = v37;
  *(a7 + v30[10]) = v45;
  return (*(*(v30 - 1) + 56))(a7, 0, 1, v30);
}

uint64_t sub_2612D92B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for IdentityAnalyticsRequestInformation(0) + 24);
  v7 = sub_2613A006C();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t sub_2612D933C(uint64_t a1)
{

  v3 = sub_2613A065C();
  v5 = v4;
  v6 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v7 = (v1 + *(v6 + 36));
  v8 = *v7;
  v9 = v7[1];
  v23 = MEMORY[0x277D837D0];
  *&v22 = v8;
  *(&v22 + 1) = v9;
  sub_26125A7B0(&v22, v20);

  LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
  v19 = a1;
  v10 = v21;
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v20, v21);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_261267EDC(*v14, v14[1], v3, v5, v9, &v19);

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  v16 = v1 + *(v6 + 20);
  sub_2612D7FC8(v19);
}

uint64_t sub_2612D94B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v121 - v3;
  v5 = sub_2613A006C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v121 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v121 - v14;
  v16 = (v0 + *(type metadata accessor for IdentityAnalyticsTransaction(0) + 24));
  v17 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  v18 = *(v6 + 16);
  v18(v15, &v16[*(v17 + 24)], v5);
  v18(v13, v15, v5);
  v19 = (*(v6 + 88))(v13, v5);
  if (v19 == *MEMORY[0x277D43B18])
  {
    v20 = sub_2613A06DC();
    v22 = v21;
    v23 = sub_2613A052C();
    v24 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v23;
    *(&v131 + 1) = v25;
    sub_26125A7B0(&v131, &v129);
    v26 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v26;
    v28 = v130;
    v29 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v30 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v29);
    v127 = v15;
    v32 = v16;
    v33 = (&v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    sub_261267EDC(*v33, v33[1], v20, v22, isUniquelyReferenced_nonNull_native, &v128);

    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    v35 = v128;
    v36 = sub_2613A076C();
    v38 = v37;
    v132 = v24;
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    sub_26125A7B0(&v131, &v129);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v35;
    v40 = v130;
    v41 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v42 = *(*(v40 - 8) + 64);
    MEMORY[0x28223BE20](v41);
    v44 = (&v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    sub_261267EDC(*v44, v44[1], v36, v38, v39, &v128);

    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    v46 = v128;
    v47 = sub_2613A05BC();
    v49 = v48;
    v50 = *v32;
    v132 = MEMORY[0x277D839B0];
    LOBYTE(v131) = v50;
    sub_26125A7B0(&v131, &v129);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v46;
    v52 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    sub_2612814D0(*v52, v47, v49, v51, &v128);

    (*(v6 + 8))(v127, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    return v128;
  }

  if (v19 == *MEMORY[0x277D43B28])
  {
    v53 = sub_2613A06DC();
    v55 = v54;
    v56 = sub_2613A050C();
    v57 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v56;
    *(&v131 + 1) = v58;
    sub_26125A7B0(&v131, &v129);
    v59 = MEMORY[0x277D84F98];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v59;
    v61 = v130;
    v62 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v63 = *(*(v61 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    v127 = v16;
    v65 = (&v121 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    sub_261267EDC(*v65, v65[1], v53, v55, v60, &v128);

    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    v67 = v128;
    v68 = sub_2613A076C();
    v70 = v69;
    v71 = sub_2613A04FC();
LABEL_7:
    v132 = v57;
    *&v131 = v71;
    *(&v131 + 1) = v72;
    sub_26125A7B0(&v131, &v129);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v67;
    v88 = v130;
    v89 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v90 = *(*(v88 - 8) + 64);
    MEMORY[0x28223BE20](v89);
    v92 = (&v121 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    sub_261267EDC(*v92, v92[1], v68, v70, v87, &v128);

    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    v94 = v128;
    v95 = sub_2613A061C();
    v97 = v96;
    sub_2612DA050(*(v127 + 1));
    v99 = v98;
    v101 = v100;

    v132 = v57;
    *&v131 = v99;
    *(&v131 + 1) = v101;
    sub_26125A7B0(&v131, &v129);
    LOBYTE(v99) = swift_isUniquelyReferenced_nonNull_native();
    v128 = v94;
    v102 = v130;
    v103 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v104 = *(*(v102 - 8) + 64);
    MEMORY[0x28223BE20](v103);
    v106 = (&v121 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v107 + 16))(v106);
    sub_261267EDC(*v106, v106[1], v95, v97, v99, &v128);

    (*(v6 + 8))(v15, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    return v128;
  }

  if (v19 == *MEMORY[0x277D43B20])
  {
    v73 = sub_2613A06DC();
    v75 = v74;
    v76 = sub_2613A050C();
    v57 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v76;
    *(&v131 + 1) = v77;
    sub_26125A7B0(&v131, &v129);
    v78 = MEMORY[0x277D84F98];
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v78;
    v80 = v130;
    v81 = __swift_mutable_project_boxed_opaque_existential_0(&v129, v130);
    v82 = *(*(v80 - 8) + 64);
    MEMORY[0x28223BE20](v81);
    v127 = v16;
    v84 = (&v121 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    sub_261267EDC(*v84, v84[1], v73, v75, v79, &v128);

    __swift_destroy_boxed_opaque_existential_0Tm(&v129);
    v67 = v128;
    v68 = sub_2613A076C();
    v70 = v86;
    v71 = sub_2613A051C();
    goto LABEL_7;
  }

  v109 = sub_26129B858();
  sub_26125A870(v109, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v110 = sub_2613A124C();
  v111 = *(v110 - 8);
  if ((*(v111 + 48))(v4, 1, v110) == 1)
  {
    v112 = *(v6 + 8);
    v112(v15, v5);
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18(v10, v15, v5);
    v113 = sub_2613A122C();
    LODWORD(v127) = sub_2613A1D8C();
    if (os_log_type_enabled(v113, v127))
    {
      v114 = swift_slowAlloc();
      v126 = v114;
      v125 = swift_slowAlloc();
      *&v131 = v125;
      *v114 = 136315138;
      sub_2612DE868(&qword_27FE9FD98, MEMORY[0x277D43B30]);
      v123 = v113;
      v122 = sub_2613A23EC();
      v116 = v115;
      v112 = *(v6 + 8);
      v124 = v6 + 8;
      v112(v10, v5);
      v117 = sub_26124C11C(v122, v116, &v131);

      v118 = v126;
      *(v126 + 1) = v117;
      v119 = v123;
      _os_log_impl(&dword_261243000, v123, v127, "Unknown Identity analytics data transfer type: [ %s ]", v118, 0xCu);
      v120 = v125;
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      MEMORY[0x266701350](v120, -1, -1);
      MEMORY[0x266701350](v126, -1, -1);
    }

    else
    {

      v112 = *(v6 + 8);
      v112(v10, v5);
    }

    v112(v15, v5);
    (*(v111 + 8))(v4, v110);
  }

  v112(v13, v5);
  return MEMORY[0x277D84F98];
}

uint64_t sub_2612DA050(uint64_t a1)
{
  swift_getKeyPath();
  v46 = MEMORY[0x277D84F90];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v48 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));

      swift_getAtKeyPath();

      result = sub_2612DD778(v49);
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_39;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v43 = sub_2612BEFE0(v46);

  v47 = MEMORY[0x277D84F90];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v44 = a1;
LABEL_16:
  if (v13)
  {
    v16 = v15;
LABEL_21:
    v17 = *(*(a1 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
    v13 &= v13 - 1;
    v18 = 1 << *(v17 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    if (!v20)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_25:
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = v24 | (v22 << 6);
        if (*(*(v17 + 56) + v25))
        {
          break;
        }

        if (!v20)
        {
          goto LABEL_27;
        }
      }

      v27 = (*(v17 + 48) + 16 * v25);
      v41 = *v27;
      v42 = v27[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2612DC724(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v40 = v29 + 1;
        v32 = v23;
        v33 = *(v23 + 16);
        result = sub_2612DC724((v28 > 1), v29 + 1, 1, v32);
        v30 = v40;
        v29 = v33;
        v23 = result;
      }

      *(v23 + 16) = v30;
      v31 = v23 + 16 * v29;
      *(v31 + 32) = v41;
      *(v31 + 40) = v42;
    }

    while (v20);
LABEL_27:
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v21)
      {

        result = sub_2612DD684(v23);
        v15 = v16;
        a1 = v44;
        goto LABEL_16;
      }

      v20 = *(v17 + 64 + 8 * v26);
      ++v22;
      if (v20)
      {
        v22 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v45 = sub_2612BEFE0(v47);

      sub_2612DA514(v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD78, &qword_2613AAA70);
      sub_2612D41B0(&qword_27FE9FD80, &qword_27FE9FD78, &qword_2613AAA70);
      sub_2612DE814();
      v34 = sub_2613A1B0C();
      v36 = v35;

      MEMORY[0x2666FFEA0](v34, v36);

      MEMORY[0x2666FFEA0](125, 0xE100000000000000);

      sub_2612DA514(v45);
      v37 = sub_2613A1B0C();
      v39 = v38;

      MEMORY[0x2666FFEA0](v37, v39);

      MEMORY[0x2666FFEA0](125, 0xE100000000000000);

      return 123;
    }

    v13 = *(v2 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2612DA514(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v44 = MEMORY[0x277D84F90];
    v4 = v2;
    sub_2612DDA34(0, v2, 0);
    v43 = v44;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    v7 = sub_2613A204C();
    v8 = 0;
    v36 = v1 + 64;
    v37 = v1 + 56;
    v38 = v1;
    v35 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_35;
      }

      v42 = v7 >> 6;
      v40 = v8;
      v41 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v12 = v11[1];
      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v13 = *v11 & 0xFFFFFFFFFFFFLL;
      }

      swift_bridgeObjectRetain_n();
      if (v13)
      {
        while (sub_2613A1ACC() != 40 || v14 != 0xE100000000000000)
        {
          v15 = sub_2613A241C();

          if ((v15 & 1) != 0 || 4 * v13 == sub_2613A19FC() >> 14)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_19:
      v16 = v4;
      v17 = sub_2613A1AEC();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if (v39)
      {
        goto LABEL_39;
      }

      v24 = v43;
      v26 = *(v43 + 16);
      v25 = *(v43 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2612DDA34((v25 > 1), v26 + 1, 1);
        v24 = v43;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (v24 + 32 * v26);
      v27[4] = v17;
      v27[5] = v19;
      v27[6] = v21;
      v27[7] = v23;
      v1 = v38;
      v9 = 1 << *(v38 + 32);
      if (v7 >= v9)
      {
        goto LABEL_36;
      }

      v5 = v37;
      v28 = *(v37 + 8 * v42);
      if ((v28 & (1 << v7)) == 0)
      {
        goto LABEL_37;
      }

      v43 = v24;
      if (v41 != *(v38 + 36))
      {
        goto LABEL_38;
      }

      v29 = v28 & (-2 << (v7 & 0x3F));
      if (v29)
      {
        v9 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v40;
      }

      else
      {
        v30 = v42 << 6;
        v31 = v42 + 1;
        v32 = (v36 + 8 * v42);
        v10 = v40;
        while (v31 < (v9 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_26124A218(v7, v41, 0);
            v9 = __clz(__rbit64(v33)) + v30;
            goto LABEL_31;
          }
        }

        sub_26124A218(v7, v41, 0);
LABEL_31:
        v16 = v35;
      }

      v8 = v10 + 1;
      v7 = v9;
      v4 = v16;
      if (v8 == v16)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    __break(1u);
  }

  return result;
}

uint64_t sub_2612DA84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_26139FD9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D43928])
  {
    v12 = sub_2613A03BC();
LABEL_3:
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    return v13;
  }

  if (v11 == *MEMORY[0x277D43920])
  {
    return sub_2613A03CC();
  }

  if (v11 != *MEMORY[0x277D43930])
  {
    v15 = sub_26129B858();
    sub_26125A870(v15, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
      v12 = sub_2613A03CC();
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "Unknown Identity analytics documentSubType", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v17 + 8))(v5, v16);
      v12 = sub_2613A03CC();
    }

    goto LABEL_3;
  }

  return sub_2613A03DC();
}

uint64_t sub_2612DAB2C()
{
  v1 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2612D94B4();
  v7 = sub_2613A05FC();
  v9 = v8;
  v10 = sub_2613A036C();
  v129 = MEMORY[0x277D837D0];
  *&v128 = v10;
  *(&v128 + 1) = v11;
  sub_26125A7B0(&v128, &v126);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v6;
  v13 = v127;
  v14 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_261267EDC(*v17, v17[1], v7, v9, isUniquelyReferenced_nonNull_native, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v19 = v125;
  v20 = sub_2613A067C();
  v22 = v21;
  v23 = *(v0 + v2[8] + 8);
  sub_2612DC97C(v0, v5, type metadata accessor for IdentityAnalyticsTransaction);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  sub_2612DC9E4(v5, v25 + v24, type metadata accessor for IdentityAnalyticsTransaction);

  v27 = sub_2612DE4D8(v26, sub_2612DE49C, v25);

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  *&v128 = v27;
  sub_26125A7B0(&v128, &v126);
  LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v19;
  v28 = v127;
  v29 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_2612DDB60(*v32, v20, v22, v27, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v34 = v125;
  v35 = sub_2613A068C();
  v37 = v36;
  v38 = (v0 + v2[9]);
  v39 = *v38;
  v40 = v38[1];
  v41 = MEMORY[0x277D837D0];
  v129 = MEMORY[0x277D837D0];
  *&v128 = v39;
  *(&v128 + 1) = v40;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v34;
  v42 = v127;
  v43 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  sub_261267EDC(*v46, v46[1], v35, v37, v40, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v48 = v125;
  v49 = sub_2613A06FC();
  v51 = v50;
  v52 = v38[2];
  v53 = v38[3];
  v129 = v41;
  *&v128 = v52;
  *(&v128 + 1) = v53;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v53) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v48;
  v54 = v127;
  v55 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v56 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = (&v124 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  sub_261267EDC(*v58, v58[1], v49, v51, v53, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v60 = v125;
  v61 = sub_2613A07BC();
  v63 = v62;
  v64 = v0[4];
  v65 = v0[5];
  v129 = v41;
  *&v128 = v64;
  *(&v128 + 1) = v65;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v60;
  v66 = v127;
  v67 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v124 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_261267EDC(*v70, v70[1], v61, v63, v65, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v72 = v125;
  v73 = sub_2613A080C();
  v75 = v74;
  v76 = (v0 + v2[10]);
  v77 = *v76;
  v78 = v76[1];
  v129 = v41;
  *&v128 = v77;
  *(&v128 + 1) = v78;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v78) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v72;
  v79 = v127;
  v80 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v81 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = (&v124 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  sub_261267EDC(*v83, v83[1], v73, v75, v78, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v85 = v125;
  v86 = sub_2613A07FC();
  v88 = v87;
  v89 = v0[2];
  v90 = v0[3];
  v129 = v41;
  *&v128 = v89;
  *(&v128 + 1) = v90;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v90) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v85;
  v91 = v127;
  v92 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v93 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v95 = (&v124 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95);
  sub_261267EDC(*v95, v95[1], v86, v88, v90, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v97 = v125;
  v98 = sub_2613A069C();
  v100 = v99;
  v101 = sub_2612DA050(v23);
  v103 = v102;

  v129 = v41;
  *&v128 = v101;
  *(&v128 + 1) = v103;
  sub_26125A7B0(&v128, &v126);
  LOBYTE(v101) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v97;
  v104 = v127;
  v105 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v106 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v108 = (&v124 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108);
  sub_261267EDC(*v108, v108[1], v98, v100, v101, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  v110 = v125;
  v111 = sub_2613A07EC();
  v113 = v112;
  v114 = (v0 + v2[12]);
  v115 = *v114;
  v116 = v114[1];
  v129 = v41;
  *&v128 = v115;
  *(&v128 + 1) = v116;
  sub_26125A7B0(&v128, &v126);

  LOBYTE(v116) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v110;
  v117 = v127;
  v118 = __swift_mutable_project_boxed_opaque_existential_0(&v126, v127);
  v119 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v121 = (&v124 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v122 + 16))(v121);
  sub_261267EDC(*v121, v121[1], v111, v113, v116, &v125);

  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  return v125;
}

uint64_t sub_2612DB5CC@<X0>(void *a1@<X8>)
{
  v3 = sub_26139F13C();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IdentityAnalyticsReporter(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[3];
  v72 = v1[2];
  v73 = v14;
  v17 = v1[5];
  v71 = v1[4];
  v80 = v17;
  v81 = v16;
  v18 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v19 = v1 + v18[5];
  v75 = v13;
  sub_2612DC97C(v19, v13, type metadata accessor for IdentityAnalyticsReporter);
  v20 = v18[6];
  v21 = (v1 + v18[7]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[3];
  v67 = v21[2];
  v68 = v22;
  v77 = v9;
  sub_2612DC97C(v1 + v20, v9, type metadata accessor for IdentityAnalyticsRequestInformation);
  v25 = v18[9];
  v26 = (v1 + v18[8]);
  v27 = v26[1];
  v65 = *v26;
  v28 = *(v1 + v25 + 8);
  if ((v28 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v29 = *(v1 + v25) & 0xFFFFFFFFFFFFLL;
  }

  v74 = v15;

  v70 = v23;

  v69 = v24;

  v66 = v27;

  if (v29)
  {
    v30 = 4 * v29;
    while (sub_2613A1ACC() != 46 || v31 != 0xE100000000000000)
    {
      v32 = sub_2613A241C();

      if ((v32 & 1) != 0 || v30 == sub_2613A19FC() >> 14)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v33 = sub_2613A1AEC();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = MEMORY[0x2666FFE20](v33, v35, v37, v39);
  v42 = v41;

  v43 = (v1 + v18[10]);
  v45 = *v43;
  v44 = v43[1];
  v46 = v74;
  *a1 = v73;
  a1[1] = v46;
  v47 = v81;
  a1[2] = v72;
  a1[3] = v47;
  v48 = v80;
  a1[4] = v71;
  a1[5] = v48;
  v49 = v75;
  sub_2612DC97C(v75, a1 + v18[5], type metadata accessor for IdentityAnalyticsReporter);
  v50 = (a1 + v18[7]);
  v51 = v70;
  *v50 = v68;
  v50[1] = v51;
  v52 = v69;
  v50[2] = v67;
  v50[3] = v52;
  v53 = v77;
  sub_2612DC97C(v77, a1 + v18[6], type metadata accessor for IdentityAnalyticsRequestInformation);
  v54 = (a1 + v18[8]);
  v55 = v66;
  *v54 = v65;
  v54[1] = v55;
  v82 = v40;
  v83 = v42;

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  v56 = v76;
  sub_26139F12C();
  v57 = sub_26139F0DC();
  v59 = v58;
  (*(v78 + 8))(v56, v79);
  MEMORY[0x2666FFEA0](v57, v59);

  v60 = v82;
  v61 = v83;
  sub_2612DC91C(v53, type metadata accessor for IdentityAnalyticsRequestInformation);
  result = sub_2612DC91C(v49, type metadata accessor for IdentityAnalyticsReporter);
  v63 = (a1 + v18[9]);
  *v63 = v60;
  v63[1] = v61;
  v64 = (a1 + v18[10]);
  *v64 = v45;
  v64[1] = v44;
  return result;
}

uint64_t sub_2612DBA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612DAB2C();
  v5 = sub_2613A087C();
  v7 = v6;
  v8 = sub_2613A0A4C();
  v9 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D837D0];
  *&v46 = v8;
  *(&v46 + 1) = v10;
  sub_26125A7B0(&v46, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v4;
  v12 = v45;
  v13 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  sub_261267EDC(*v16, v16[1], v5, v7, isUniquelyReferenced_nonNull_native, &v43);

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v18 = v43;
  v19 = sub_2613A082C();
  v21 = v20;
  v22 = sub_2613A08DC();
  v47 = v9;
  *&v46 = v22;
  *(&v46 + 1) = v23;
  sub_26125A7B0(&v46, v44);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v18;
  v25 = v45;
  v26 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_261267EDC(*v29, v29[1], v19, v21, v24, &v43);

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v31 = v43;
  v32 = sub_2613A086C();
  v34 = v33;
  v47 = v9;
  *&v46 = a1;
  *(&v46 + 1) = a2;
  sub_26125A7B0(&v46, v44);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v43 = v31;
  v35 = v45;
  v36 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  sub_261267EDC(*v39, v39[1], v32, v34, a2, &v43);

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_2612D933C(v43);
}

uint64_t sub_2612DBD9C()
{
  v0 = sub_2612DAB2C();
  v1 = sub_2613A087C();
  v3 = v2;
  v4 = sub_2613A0A9C();
  v5 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  *&v32 = v4;
  *(&v32 + 1) = v6;
  sub_26125A7B0(&v32, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v0;
  v8 = v31;
  v9 = __swift_mutable_project_boxed_opaque_existential_0(v30, v31);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  sub_261267EDC(*v12, v12[1], v1, v3, isUniquelyReferenced_nonNull_native, &v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v14 = v29;
  v15 = sub_2613A082C();
  v17 = v16;
  v18 = sub_2613A08BC();
  v33 = v5;
  *&v32 = v18;
  *(&v32 + 1) = v19;
  sub_26125A7B0(&v32, v30);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v14;
  v21 = v31;
  v22 = __swift_mutable_project_boxed_opaque_existential_0(v30, v31);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_261267EDC(*v25, v25[1], v15, v17, v20, &v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  sub_2612D933C(v29);
}

uint64_t sub_2612DBFE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4D40;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v5;
  v6 = sub_2613A0A9C();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_2613A05FC();
  *(inited + 88) = v9;
  v10 = sub_2613A036C();
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_2613A082C();
  *(inited + 136) = v12;
  v13 = sub_2613A08CC();
  *(inited + 168) = v7;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  *(inited + 176) = sub_2613A07DC();
  *(inited + 184) = v15;
  *(inited + 216) = v7;
  *(inited + 192) = a1;
  *(inited + 200) = a2;

  v16 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v16);
}

uint64_t sub_2612DC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v9;
  v10 = sub_2613A0BAC();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v13;
  *(inited + 120) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  *(inited + 128) = sub_2613A084C();
  *(inited + 136) = v14;
  *(inited + 168) = v11;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v15 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v15);
}

uint64_t sub_2612DC210(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v7;
  v8 = sub_2613A08BC();
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  v10 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v10);
}

uint64_t sub_2612DC2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v11;
  v12 = sub_2613A08BC();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_2613A086C();
  *(inited + 136) = v14;
  *(inited + 168) = v9;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v15 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v15);
}

uint64_t sub_2612DC410(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v5;
  v6 = sub_2613A0A5C();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v9;
  v10 = sub_2613A08BC();
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_2613A07DC();
  *(inited + 136) = v12;
  *(inited + 168) = v7;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v13 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v13);
}

uint64_t sub_2612DC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v11;
  v12 = sub_2613A08CC();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  v14 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (a4)
  {

    v15 = sub_2613A084C();
    v17 = v16;
    v31 = v9;
    *&v30 = a3;
    *(&v30 + 1) = a4;
    sub_26125A7B0(&v30, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v14;
    v19 = v29;
    v20 = __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = (&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_261267EDC(*v23, v23[1], v15, v17, isUniquelyReferenced_nonNull_native, &v27);

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v14 = v27;
  }

  sub_2612D933C(v14);
}

char *sub_2612DC724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612DC870(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261262AA4;

  return sub_2612D74C0(a1, v6, v7, v5, v4);
}

uint64_t sub_2612DC91C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2612DC97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612DC9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612DCA4C()
{
  v2 = *(type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2612D8544(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_2612DCB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26124E5EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2612DD42C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
    v22 = *(State - 8);
    sub_2612DC9E4(v14 + *(v22 + 72) * v9, a3, type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612DD030(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = State;
  }

  else
  {
    v20 = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2612DCCB8(uint64_t a1, int a2)
{
  v3 = v2;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v43 = *(State - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](State - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDA0, &qword_2613AAA90);
  v44 = a2;
  result = sub_2613A223C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2612DC9E4(v31, v45, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      else
      {
        sub_2612DC97C(v31, v45, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      v32 = *(v12 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2612DC9E4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for IdentityAnalyticsManager.LoadState);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_2612DD030(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2613A256C();

      sub_2613A19DC();
      v13 = sub_2613A25CC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for IdentityAnalyticsManager.LoadState(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2612DD21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26124E5EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2612DD42C();
      goto LABEL_7;
    }

    sub_2612DCCB8(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_26124E5EC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for IdentityAnalyticsManager.LoadState(0) - 8) + 72) * v12;

    return sub_2612DE9B0(a1, v20);
  }

LABEL_13:
  sub_2612DD380(v12, a2, a3, a1, v18);
}

uint64_t sub_2612DD380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  result = sub_2612DC9E4(a4, v9 + *(*(State - 8) + 72) * a1, type metadata accessor for IdentityAnalyticsManager.LoadState);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2612DD42C()
{
  v1 = v0;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v32 = *(State - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](State - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDA0, &qword_2613AAA90);
  v5 = *v0;
  v6 = sub_2613A222C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2612DC97C(*(v5 + 56) + v27, v31, type metadata accessor for IdentityAnalyticsManager.LoadState);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2612DC9E4(v26, *(v28 + 56) + v27, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_2612DD684(uint64_t result)
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
  v7 = *v1;
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

  result = sub_2612DC724(result, v11, 1, v3);
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

uint64_t sub_2612DD778(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2612DC724(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_2612BC628(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_2612DC724((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_2612BF078();
  *v1 = v4;
  return result;
}

char *sub_2612DDA34(char *a1, int64_t a2, char a3)
{
  result = sub_2612DDA54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2612DDA54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD90, &qword_2613AAA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_2612DDB60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  v31 = v10;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_26124E5EC(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_26125A7B0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_26124E5EC(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2612DDD58(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v30);
}

_OWORD *sub_2612DDD58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_26125A7B0(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_2612DDEF0()
{
  sub_26139FA0C();
  if (v0 <= 0x3F)
  {
    sub_261268658();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2612DDFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2612DDFE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void sub_2612DE138()
{
  sub_2612DE1CC();
  if (v0 <= 0x3F)
  {
    sub_2613A006C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2612DE1CC()
{
  if (!qword_27FE9FD50)
  {
    sub_26139FD9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FD58, &qword_2613AA9F8);
    sub_2612DE868(&qword_27FE9FD60, MEMORY[0x277D43938]);
    v0 = sub_2613A181C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FD50);
    }
  }
}

uint64_t sub_2612DE2AC()
{
  result = type metadata accessor for IdentityAnalyticsReporter(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IdentityAnalyticsRequestInformation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}