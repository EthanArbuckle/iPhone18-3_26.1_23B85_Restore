uint64_t sub_222CEF750(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 328);
  *(v1 + 328) = a1;
}

uint64_t sub_222CEF7A8(char a1)
{
  OUTLINED_FUNCTION_67();
  *(v1 + 16) = a1;
}

uint64_t sub_222CEF7E4(uint64_t *a1)
{
  v2 = sub_222D521AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222D5250C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_222D526BC();
  (*(*v12 + 992))(v13 & 1);

  v14 = sub_222D5268C();
  (*(*v12 + 1000))(v14 & 1);

  v15 = sub_222D5265C();
  (*(*v12 + 1008))(v15 & 1);

  v16 = sub_222D5269C();
  (*(*v12 + 1016))(v16 & 1);

  v17 = sub_222D5267C();
  (*(*v12 + 1024))(v17 & 1);

  v18 = sub_222D5266C();
  (*(*v12 + 1032))(v18 & 1);

  v19 = sub_222D526CC();
  (*(*v12 + 1040))(v19 & 1);

  v20 = sub_222D526AC();
  v21 = (*(*v12 + 1048))(v20 & 1);
  v22 = sub_222D525EC();
  v23 = (*(*v21 + 1056))(v22 & 1);

  v24 = sub_222D5263C();
  v25 = (*(*v23 + 1072))(v24 & 1);

  v26 = sub_222D5262C();
  v27 = (*(*v25 + 1080))(v26 & 1);

  v28 = sub_222D5262C();
  v29 = (*(*v27 + 1088))((v28 & 1) == 0);

  v30 = sub_222D5264C();
  v31 = (*(*v29 + 1104))(v30 & 1);

  sub_222D525FC();
  v32 = sub_222CE31E0(v11);
  v34 = v33;
  (*(v8 + 8))(v11, v7);
  v52 = v32;
  v53 = v34;
  v54 = v32;
  v55 = v34;
  v35 = *(*v31 + 1176);

  v36 = v35(&v52);

  sub_222CE2920(v52, v53);
  v52 = sub_222CF0540();
  v53 = v37;
  v54 = v52;
  v55 = v37;
  v38 = *(*v36 + 1208);

  v39 = v38(&v52);

  sub_222CE2920(v52, v53);
  sub_222D525BC();
  v40 = sub_222D5217C();
  v42 = v41;
  (*(v3 + 8))(v6, v2);
  v52 = v40;
  v53 = v42;
  v54 = v40;
  v55 = v42;
  v43 = *(*v39 + 1240);

  v44 = v43(&v52);

  sub_222CE2920(v52, v53);
  v45 = sub_222D5260C();
  v47 = 0xE000000000000000;
  if (v46)
  {
    v47 = v46;
    v48 = v45;
  }

  else
  {
    v48 = 0;
  }

  v52 = v48;
  v53 = v47;
  v54 = v48;
  v55 = v47;
  v49 = *(*v44 + 1256);

  v49(&v52);

  return sub_222CE2920(v52, v53);
}

uint64_t DialogPerson.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_2();
  v2 = swift_allocObject();
  DialogPerson.init(builder:)(a1);
  return v2;
}

void sub_222CEFFE4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v1[10] = v0;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0068()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v1[14] = v0;
  v1[15] = v2;
  v1[16] = v3;
  v1[17] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0104()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[23];
  v7 = v1[24];
  v8 = v1[25];
  v9 = v1[26];
  v1[23] = v0;
  v1[24] = v2;
  v1[25] = v3;
  v1[26] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t DialogPerson.__deallocating_deinit()
{
  DialogPerson.deinit();
  v0 = OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogPersonHandle.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_222CE2920(*(v0 + 88), *(v0 + 96));
  return v0;
}

void sub_222CF01F8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v1[2] = v0;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0250()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v1[6] = v0;
  v1[7] = v2;
  v1[8] = v3;
  v1[9] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t DialogPerson.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_222CE2920(*(v0 + 88), *(v0 + 96));
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  sub_222CE2920(*(v0 + 120), *(v0 + 128));
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  sub_222CE2920(*(v0 + 152), *(v0 + 160));
  v11 = *(v0 + 184);

  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  sub_222CE2920(*(v0 + 192), *(v0 + 200));
  v14 = *(v0 + 232);

  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  sub_222CE2920(*(v0 + 248), *(v0 + 256));
  return v0;
}

uint64_t DialogPersonHandle.__deallocating_deinit()
{
  DialogPersonHandle.deinit();
  v0 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *sub_222CF03B0()
{
  v0 = objc_allocWithZone(type metadata accessor for CATGlobals(0));

  return CATGlobals.init(builder:)(v1);
}

uint64_t sub_222CF0418(void *a1)
{
  type metadata accessor for SirikitDeviceRestrictions.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5234C())
  {
    v4 = 1;
  }

  else
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = sub_222D5223C();
  }

  swift_beginAccess();
  *(inited + 16) = v4 & 1;
  type metadata accessor for SirikitDeviceRestrictions();
  swift_allocObject();
  return SirikitDeviceRestrictions.init(builder:)(inited);
}

uint64_t sub_222CF0540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5C8, &qword_222D57958);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v28 - v2;
  v4 = sub_222D5251C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_222D5253C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_222D525DC();
  (*(v11 + 104))(v15, *MEMORY[0x277D61BE8], v10);
  v18 = sub_222D5252C();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    return 0x79616C705F726163;
  }

  sub_222D525CC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v20 = 0x746375646F7270;
    sub_222CDD130(v3, &qword_27D03C5C8, &qword_222D57958);
  }

  else
  {
    v21 = v29;
    (*(v29 + 32))(v9, v3, v4);
    v22 = v28;
    (*(v21 + 16))(v28, v9, v4);
    v23 = (*(v21 + 88))(v22, v4);
    if (v23 == *MEMORY[0x277D61BA8])
    {
      (*(v21 + 8))(v9, v4);
      return 0x656E6F687069;
    }

    else
    {
      v24 = v23;
      if (v23 == *MEMORY[0x277D61B98])
      {
        (*(v21 + 8))(v9, v4);
        return 1684107369;
      }

      else if (v23 == *MEMORY[0x277D61BB8])
      {
        (*(v21 + 8))(v9, v4);
        return 0x646F70656D6F68;
      }

      else if (v23 == *MEMORY[0x277D61BB0])
      {
        (*(v21 + 8))(v9, v4);
        return 0x76745F656C707061;
      }

      else if (v23 == *MEMORY[0x277D61B90])
      {
        (*(v21 + 8))(v9, v4);
        return 6513005;
      }

      else if (v23 == *MEMORY[0x277D61BA0])
      {
        (*(v21 + 8))(v9, v4);
        return 0x61775F656C707061;
      }

      else
      {
        v25 = *MEMORY[0x277D61BC0];
        v26 = *(v21 + 8);
        v26(v9, v4);
        if (v24 == v25)
        {
          return 0x5F7974696C616572;
        }

        else
        {
          v20 = 0x746375646F7270;
          v26(v22, v4);
        }
      }
    }
  }

  return v20;
}

void sub_222CF0A4C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[37];
  v7 = v1[38];
  v8 = v1[39];
  v9 = v1[40];
  v1[37] = v0;
  v1[38] = v2;
  v1[39] = v3;
  v1[40] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

unint64_t sub_222CF0AA4()
{
  result = qword_280D3B150;
  if (!qword_280D3B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C390, &qword_222D56718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B150);
  }

  return result;
}

unint64_t sub_222CF0B08()
{
  result = qword_280D3B158;
  if (!qword_280D3B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B158);
  }

  return result;
}

uint64_t sub_222CF0B5C(char a1)
{
  OUTLINED_FUNCTION_67();
  *(v1 + 33) = a1;
}

uint64_t SirikitDeviceState.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v2 = swift_allocObject();
  SirikitDeviceState.init(builder:)(a1);
  return v2;
}

uint64_t sub_222CF0BD0()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_2_20();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v5 = v4;

  OUTLINED_FUNCTION_10_10();

  return v6(v0);
}

uint64_t SirikitDeviceState.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25();
  *(v1 + 24) = *(a1 + 16);
  OUTLINED_FUNCTION_25();
  *(v1 + 25) = *(a1 + 17);
  OUTLINED_FUNCTION_25();
  *(v1 + 26) = *(a1 + 18);
  OUTLINED_FUNCTION_25();
  *(v1 + 27) = *(a1 + 19);
  OUTLINED_FUNCTION_25();
  *(v1 + 28) = *(a1 + 20);
  OUTLINED_FUNCTION_25();
  *(v1 + 29) = *(a1 + 21);
  OUTLINED_FUNCTION_25();
  *(v1 + 30) = *(a1 + 22);
  OUTLINED_FUNCTION_25();
  *(v1 + 31) = *(a1 + 23);
  OUTLINED_FUNCTION_25();
  *(v1 + 32) = *(a1 + 24);
  OUTLINED_FUNCTION_25();
  *(v1 + 33) = *(a1 + 25);
  OUTLINED_FUNCTION_25();
  *(v1 + 34) = *(a1 + 26);
  OUTLINED_FUNCTION_25();
  *(v1 + 35) = *(a1 + 27);
  OUTLINED_FUNCTION_25();
  *(v1 + 36) = *(a1 + 28);
  OUTLINED_FUNCTION_25();
  *(v1 + 37) = *(a1 + 29);
  OUTLINED_FUNCTION_25();
  *(v1 + 38) = *(a1 + 30);
  OUTLINED_FUNCTION_25();
  *(v1 + 39) = *(a1 + 31);
  OUTLINED_FUNCTION_25();
  *(v1 + 40) = *(a1 + 32);
  OUTLINED_FUNCTION_25();
  *(v1 + 41) = *(a1 + 33);
  OUTLINED_FUNCTION_25();
  v39 = *(a1 + 48);
  v40 = *(a1 + 40);
  v3 = *(a1 + 64);
  v38 = *(a1 + 56);
  *(v1 + 48) = v40;
  *(v1 + 56) = v39;
  *(v1 + 64) = v38;
  *(v1 + 72) = v3;
  OUTLINED_FUNCTION_25();
  v36 = *(a1 + 80);
  v37 = *(a1 + 72);
  v4 = *(a1 + 96);
  v35 = *(a1 + 88);
  *(v1 + 80) = v37;
  *(v1 + 88) = v36;
  *(v1 + 96) = v35;
  *(v1 + 104) = v4;
  OUTLINED_FUNCTION_25();
  v33 = *(a1 + 112);
  v34 = *(a1 + 104);
  v5 = *(a1 + 128);
  v32 = *(a1 + 120);
  *(v1 + 112) = v34;
  *(v1 + 120) = v33;
  *(v1 + 128) = v32;
  *(v1 + 136) = v5;
  OUTLINED_FUNCTION_25();
  v30 = *(a1 + 144);
  v31 = *(a1 + 136);
  v6 = *(a1 + 160);
  v29 = *(a1 + 152);
  *(v1 + 144) = v31;
  *(v1 + 152) = v30;
  *(v1 + 160) = v29;
  *(v1 + 168) = v6;
  OUTLINED_FUNCTION_25();
  v27 = *(a1 + 176);
  v28 = *(a1 + 168);
  v7 = *(a1 + 192);
  v26 = *(a1 + 184);
  *(v1 + 176) = v28;
  *(v1 + 184) = v27;
  *(v1 + 192) = v26;
  *(v1 + 200) = v7;
  OUTLINED_FUNCTION_25();
  v24 = *(a1 + 208);
  v25 = *(a1 + 200);
  v8 = *(a1 + 224);
  v23 = *(a1 + 216);
  *(v1 + 208) = v25;
  *(v1 + 216) = v24;
  *(v1 + 224) = v23;
  *(v1 + 232) = v8;
  OUTLINED_FUNCTION_25();
  v21 = *(a1 + 240);
  v22 = *(a1 + 232);
  v9 = *(a1 + 256);
  v20 = *(a1 + 248);
  *(v1 + 240) = v22;
  *(v1 + 248) = v21;
  *(v1 + 256) = v20;
  *(v1 + 264) = v9;
  OUTLINED_FUNCTION_25();
  v10 = *(a1 + 272);
  v19 = *(a1 + 264);
  v11 = *(a1 + 280);
  v12 = *(a1 + 288);
  *(v1 + 272) = v19;
  *(v1 + 280) = v10;
  *(v1 + 288) = v11;
  *(v1 + 296) = v12;
  OUTLINED_FUNCTION_25();
  v13 = *(a1 + 296);
  v14 = *(a1 + 304);
  v15 = *(a1 + 312);
  v16 = *(a1 + 320);
  *(v1 + 304) = v13;
  *(v1 + 312) = v14;
  *(v1 + 320) = v15;
  *(v1 + 328) = v16;
  OUTLINED_FUNCTION_25();
  v17 = *(a1 + 328);
  sub_222CE3060(v40, v39);
  sub_222CE3060(v37, v36);
  sub_222CE3060(v34, v33);
  sub_222CE3060(v31, v30);
  sub_222CE3060(v28, v27);
  sub_222CE3060(v25, v24);
  sub_222CE3060(v22, v21);
  sub_222CE3060(v19, v10);
  sub_222CE3060(v13, v14);

  *(v1 + 336) = v17;
  return v1;
}

uint64_t *SirikitDeviceState.Builder.deinit()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_222CE2920(v0[5], v0[6]);
  v3 = v0[11];
  v4 = v0[12];
  sub_222CE2920(v0[9], v0[10]);
  v5 = v0[15];
  v6 = v0[16];
  sub_222CE2920(v0[13], v0[14]);
  v7 = v0[19];
  v8 = v0[20];
  sub_222CE2920(v0[17], v0[18]);
  v9 = v0[23];
  v10 = v0[24];
  sub_222CE2920(v0[21], v0[22]);
  v11 = v0[27];
  v12 = v0[28];
  sub_222CE2920(v0[25], v0[26]);
  v13 = v0[31];
  v14 = v0[32];
  sub_222CE2920(v0[29], v0[30]);
  v15 = v0[35];
  v16 = v0[36];
  sub_222CE2920(v0[33], v0[34]);
  v17 = v0[39];
  v18 = v0[40];
  sub_222CE2920(v0[37], v0[38]);
  v19 = v0[41];

  return v0;
}

unint64_t sub_222CF10F4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_222D52B0C();
  v3 = sub_222CF12D0();
  v4 = sub_222CF1244(v8, v9, v3);
  v6 = v5;

  if (!v6)
  {
    if (AFIsInternalInstall())
    {
      sub_222D52DBC();

      sub_222D52B0C();
      MEMORY[0x223DCB4F0]();

      MEMORY[0x223DCB4F0](15965, 0xE200000000000000);
      return 0xD000000000000017;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_222CF1244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222CE1050(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t SirikitDeviceState.Builder.__deallocating_deinit()
{
  SirikitDeviceState.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 336, 7);
}

uint64_t sub_222CF12D0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_222CF1308()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = OUTLINED_FUNCTION_36();
  v1 = *MEMORY[0x277D85DE8];

  return sub_222CF1394(v0, qword_280D3B688, type metadata accessor for SirikitDeviceState);
}

uint64_t sub_222CF1394(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = sub_222D51F2C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222D51F1C();
  a1(0);
  sub_222CF1670(a2, 255, a3);
  sub_222D51F0C();

  v11 = objc_opt_self();
  OUTLINED_FUNCTION_112();
  v12 = sub_222D5212C();
  v25[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v25];

  if (v13)
  {
    v14 = v25[0];
    sub_222D52D6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    if (swift_dynamicCast())
    {
      v15 = OUTLINED_FUNCTION_112();
      sub_222CE6210(v15, v16);
      v17 = v24;
    }

    else
    {
      v17 = sub_222D528BC();
      v22 = OUTLINED_FUNCTION_112();
      sub_222CE6210(v22, v23);
    }
  }

  else
  {
    v18 = v25[0];
    v19 = sub_222D5207C();

    swift_willThrow();
    v20 = OUTLINED_FUNCTION_112();
    sub_222CE6210(v20, v21);
    v17 = sub_222D528BC();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t LabelExecutionResult.__deallocating_deinit()
{
  LabelExecutionResult.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double OUTLINED_FUNCTION_37_1()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t LabelExecutionResult.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_222CF1670(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222CF1704(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF88, &qword_222D54290);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v53 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF1BB4();
  sub_222D531AC();
  v14 = *(v3 + 24);
  LOBYTE(v55) = 0;
  sub_222D52FEC();
  if (!v2)
  {
    v15 = *(v3 + 25);
    OUTLINED_FUNCTION_4_2(1);
    v16 = *(v3 + 26);
    OUTLINED_FUNCTION_4_2(2);
    v17 = *(v3 + 27);
    OUTLINED_FUNCTION_4_2(3);
    v18 = *(v3 + 28);
    OUTLINED_FUNCTION_4_2(4);
    v19 = *(v3 + 29);
    OUTLINED_FUNCTION_4_2(5);
    v20 = *(v3 + 30);
    OUTLINED_FUNCTION_4_2(6);
    v21 = *(v3 + 31);
    OUTLINED_FUNCTION_4_2(7);
    v22 = *(v3 + 32);
    OUTLINED_FUNCTION_4_2(8);
    v23 = *(v3 + 33);
    OUTLINED_FUNCTION_4_2(9);
    v24 = *(v3 + 34);
    OUTLINED_FUNCTION_4_2(10);
    v25 = *(v3 + 35);
    OUTLINED_FUNCTION_4_2(11);
    v26 = *(v3 + 36);
    OUTLINED_FUNCTION_4_2(12);
    v27 = *(v3 + 37);
    OUTLINED_FUNCTION_4_2(13);
    v28 = *(v3 + 38);
    OUTLINED_FUNCTION_4_2(14);
    v29 = *(v3 + 39);
    OUTLINED_FUNCTION_4_2(15);
    v30 = *(v3 + 40);
    OUTLINED_FUNCTION_4_2(16);
    v31 = *(v3 + 41);
    OUTLINED_FUNCTION_4_2(17);
    v32 = OUTLINED_FUNCTION_24_0(*(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
    v54 = 18;
    sub_222CE3060(v32, v33);
    sub_222CF2084();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v34 = OUTLINED_FUNCTION_24_0(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
    v54 = 19;
    sub_222CE3060(v34, v35);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v36 = OUTLINED_FUNCTION_24_0(*(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136));
    v54 = 20;
    sub_222CE3060(v36, v37);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v38 = OUTLINED_FUNCTION_24_0(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168));
    v54 = 21;
    sub_222CE3060(v38, v39);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v40 = OUTLINED_FUNCTION_24_0(*(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200));
    v54 = 22;
    sub_222CE3060(v40, v41);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v42 = OUTLINED_FUNCTION_24_0(*(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232));
    v54 = 23;
    sub_222CE3060(v42, v43);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v44 = OUTLINED_FUNCTION_24_0(*(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264));
    v54 = 24;
    sub_222CE3060(v44, v45);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v47 = OUTLINED_FUNCTION_24_0(*(v3 + 272), *(v3 + 280), *(v3 + 288), *(v3 + 296));
    v54 = 25;
    sub_222CE3060(v47, v48);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v49 = OUTLINED_FUNCTION_24_0(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328));
    v54 = 26;
    sub_222CE3060(v49, v50);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_26();
    v55 = *(v3 + 336);
    v54 = 27;
    type metadata accessor for SirikitDeviceRestrictions();
    OUTLINED_FUNCTION_21_0();
    sub_222CF2384(v51, 255, v52);
    sub_222D52FBC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222CF1BB4()
{
  result = qword_280D3BBF0;
  if (!qword_280D3BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3BBF0);
  }

  return result;
}

void sub_222CF1C08(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 14:
    case 16:
    case 21:
    case 23:
    case 25:
      return;
    case 7:
      OUTLINED_FUNCTION_32_0();
      break;
    case 13:
      OUTLINED_FUNCTION_36_0();
      break;
    case 18:
      OUTLINED_FUNCTION_31_0();
      break;
    case 19:
      OUTLINED_FUNCTION_37_0();
      break;
    case 20:
      OUTLINED_FUNCTION_34_1();
      break;
    case 24:
      OUTLINED_FUNCTION_33_0();
      break;
    case 27:
      OUTLINED_FUNCTION_35_0();
      break;
    default:
      OUTLINED_FUNCTION_105();
      break;
  }
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

void OUTLINED_FUNCTION_36_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_222CF2084()
{
  result = qword_280D3BDE0;
  if (!qword_280D3BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3BDE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SirikitDeviceState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
        JUMPOUT(0x222CF21A4);
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SirikitDeviceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SpeakableString.encode(to:)(void *a1)
{
  v6 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D5319C();
  sub_222CEC474();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_222D530BC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
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

uint64_t sub_222CF2384(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222CF23CC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C098, &qword_222D54DB0);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF2534();
  sub_222D531AC();
  v13 = *(v2 + 24);
  sub_222D52FEC();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_222CF2534()
{
  result = qword_280D3B3F0[0];
  if (!qword_280D3B3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D3B3F0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_38_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256) | 0x8000000000000000;

  return sub_222CE1050(0xD000000000000011, v2);
}

uint64_t static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  return OUTLINED_FUNCTION_0_27();
}

uint64_t sub_222CF266C()
{
  OUTLINED_FUNCTION_15_10();
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  sub_222CF279C();
  *v8 = v0;
  v8[1] = sub_222CEF388;
  OUTLINED_FUNCTION_4_26();

  return MEMORY[0x2822008A0]();
}

unint64_t sub_222CF279C()
{
  result = qword_27D03C9A0;
  if (!qword_27D03C9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D03C9A0);
  }

  return result;
}

uint64_t sub_222CF27E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v27 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v28 = objc_opt_self();
  v30 = sub_222D520CC();
  v29 = sub_222D528FC();
  sub_222CEEA8C(a5);
  v15 = sub_222D5288C();

  v16 = a8;
  sub_222CE829C();
  v17 = sub_222D5288C();

  result = sub_222CF2BBC(v31);
  if (a8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a8 <= 0x7FFFFFFF)
  {
    v19 = result;
    (*(v11 + 16))(v14, v27, v10);
    v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v20, v14, v10);
    aBlock[4] = sub_222CEE21C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222CEE190;
    aBlock[3] = &block_descriptor_38;
    v22 = _Block_copy(aBlock);

    LODWORD(v25) = v16;
    v23 = v29;
    v24 = v30;
    [v28 execute:0 templateDir:v30 patternId:v29 parameters:v15 globals:v17 callback:v19 options:v25 completion:v22];
    _Block_release(v22);

    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_222CF2AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
  OUTLINED_FUNCTION_3_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222CF2B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C020, &unk_222D54A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222CF2BBC(uint64_t a1)
{
  sub_222CF2B4C(a1, &v6);
  if (!v7)
  {
    sub_222CDD130(&v6, &qword_27D03C020, &unk_222D54A80);
    v3 = 0u;
    v4 = 0u;
    v5 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C148, &qword_222D59880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C150, &qword_222D55080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    goto LABEL_7;
  }

  if (!*(&v4 + 1))
  {
LABEL_7:
    sub_222CDD130(&v3, &qword_27D03C140, &qword_222D55068);
    return 0;
  }

  sub_222CE2D34(&v3, &v6);
  sub_222CE2D34(&v6, &v3);
  type metadata accessor for CATComputableWrapper();
  v1 = swift_allocObject();
  sub_222CE2D34(&v3, v1 + 16);
  return v1;
}

uint64_t sub_222CF2CFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF2D7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222CF8164();
  *a2 = result;
  return result;
}

uint64_t sub_222CF2DFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF2E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01C2C();
  *a2 = result;
  return result;
}

void *sub_222CF2E6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF2EC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF2F04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D0303C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_222CF2F34(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_222D03070();
}

uint64_t sub_222CF2F84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF2FC4(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D03DE0();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3010(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D03E3C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF305C(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D03EDC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF30A8(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D03F7C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF30F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0401C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3140(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D040BC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF318C(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0415C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF31D8(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D041FC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3224(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0429C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3270(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0433C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF32BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D043DC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3308(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0447C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3354(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0451C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF33A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D045BC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF33EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0465C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3438(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D046FC();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3484(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D0479C();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF34D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D047F8();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF3834(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  result = sub_222D05064();
  *v1 = result;
  return result;
}

void *sub_222CF3860(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  result = sub_222D01EAC();
  *v1 = result;
  return result;
}

uint64_t sub_222CF388C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF39D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF3A9C()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_222D51FCC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_222CF3AF0()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_222D5200C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_222CF3B44()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_222D51FEC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_222CF3B98()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_222D5203C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_222CF3BEC()
{
  v1 = sub_222D5284C();
  OUTLINED_FUNCTION_3_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_222CF3C94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v5 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_222CF3CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222CF3D34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
  OUTLINED_FUNCTION_3_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222CF3DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF3E08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D11108();
  *a2 = result;
  return result;
}

void *sub_222CF3E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF3E90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D03DE0();
  *a2 = result & 1;
  return result;
}

void *sub_222CF3EE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF3F40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF3F80()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222CF3FC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222CF3FF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4038()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4268(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  result = sub_222D15ABC();
  *v1 = result;
  return result;
}

uint64_t sub_222CF42EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D15C30();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF4338(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D15CD0();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF4384(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  result = sub_222D15D9C();
  *v1 = result;
  return result;
}

uint64_t sub_222CF43B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D15E48();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF43FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D15EA4();
  return OUTLINED_FUNCTION_18_0(v1);
}

uint64_t sub_222CF44A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  v1 = sub_222D16098();
  return OUTLINED_FUNCTION_18_0(v1);
}

void *sub_222CF44EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_0(a1);
  result = sub_222D01EAC();
  *v1 = result;
  return result;
}

uint64_t sub_222CF4540()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF4630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF4688()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF46C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4708()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_222D1BBFC();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_222CF4788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF47E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4870@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D1D14C();
  *a2 = result;
  return result;
}

void *sub_222CF48A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF48F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF49E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF4A40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4A80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4AC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D22F08();
  *a2 = result & 1;
  return result;
}

uint64_t sub_222CF4B38(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_222D22F30();
}

void *sub_222CF4B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF4CDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4D1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4D5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF4E08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF4E60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_222D1BBFC();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_222CF4ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF4F58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF4F98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5048()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222CF50B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF51A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF51F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5238()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF5328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF5380()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF53C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_222CF5850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF58A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF58E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_222D1BBFC();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_222CF5928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF59B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5A08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01C2C();
  *a2 = result;
  return result;
}

void *sub_222CF5A38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF5A90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5AD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_222D1BBFC();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void *sub_222CF5BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF5D78()
{
  if (*(v0 + 16) >= 0x11uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222CF5DB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222CF5E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D484FC();
  *a2 = result;
  return result;
}

void *sub_222CF5EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D01EAC();
  *a2 = result;
  return result;
}

uint64_t sub_222CF613C(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = sub_222D52D0C();
  if (__OFSUB__(result, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_222D52CEC();
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7 >> 14 >= a2 >> 14)
  {
    v8 = sub_222D52D2C();

    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_222CF6224(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = a5 >> 1;
  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_222CF78D4(a4, v10 & ~(v10 >> 63), a5 >> 1);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = result;
  }

  if (v14 >= a4)
  {
    v15 = sub_222CF7858(a4, v14, a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return v15;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_222CF62F8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_222D529EC();
    if (!__OFSUB__(result, v1))
    {
      sub_222D52A0C();
      v2 = sub_222D52AEC();

      return v2;
    }
  }

  __break(1u);
  return result;
}

double sub_222CF63E8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = sub_222CEA060(a2, a3);
  if (v7)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 72))(v17, v10, v11, v14, v15);

    sub_222CEA47C(v17, v12, v13 & 1, a4);
    sub_222CDC53C(v17, &qword_27D03BDA8, &unk_222D55070);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27D03BD78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D03BD78);
    }
  }
}

uint64_t sub_222CF6520(uint64_t a1, id *a2)
{
  result = sub_222D5290C();
  *a2 = 0;
  return result;
}

uint64_t sub_222CF6598(uint64_t a1, id *a2)
{
  v3 = sub_222D5291C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_222CF6628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222CF7920();
  *a1 = result;
  return result;
}

uint64_t sub_222CF6650@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222D528FC();

  *a2 = v5;
  return result;
}

uint64_t sub_222CF6698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222CF66C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222CF66C8(uint64_t a1)
{
  v2 = sub_222CF7958(&qword_27D03BD98);
  v3 = sub_222CF7958(&qword_27D03BDA0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_222CF67C8()
{
  v0 = sub_222D5292C();
  v1 = MEMORY[0x223DCB590](v0);

  return v1;
}

uint64_t sub_222CF6800()
{
  sub_222D5292C();
  sub_222D529DC();
}

uint64_t sub_222CF6854()
{
  sub_222D5292C();
  sub_222D5313C();
  sub_222D529DC();
  v0 = sub_222D5315C();

  return v0;
}

uint64_t sub_222CF68E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_222D49404();
}

unsigned __int8 *sub_222CF6920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_222CF79E4();

  result = sub_222D52ADC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_222CF6EB4();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_222D52E2C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_222CF6EB4()
{
  v0 = sub_222CF6F20();
  v4 = sub_222CF6F54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_222CF6F54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_222D529CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_222D52CFC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_222CE56B4(v9, 0);
  v12 = sub_222CF70B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_222D529CC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_222D52E2C();
LABEL_4:

  return sub_222D529CC();
}

unint64_t sub_222CF70B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_222CF72C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_222D52A7C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_222D52E2C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_222CF72C4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_222D52A4C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222CF72C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_222D52A8C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DCB530](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_222CF7340(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_222D52E2C();
  }

  result = sub_222CF741C(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_222CF741C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_222CF72C4(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_222D52A6C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_222CF72C4(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_222CF72C4(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_222D52A6C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_222CF7858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_222CF78D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_222CF7920()
{
  sub_222D5292C();
  v0 = sub_222D528FC();

  return v0;
}

uint64_t sub_222CF7958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_222CF79E4()
{
  result = qword_27D03BDB8;
  if (!qword_27D03BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BDB8);
  }

  return result;
}

uint64_t sub_222CF7A38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_222CF7AA0();
}

uint64_t sub_222CF7A6C()
{
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_222CF7AA0()
{
  OUTLINED_FUNCTION_115();
  result = OUTLINED_FUNCTION_67();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0 & 1;
  return result;
}

uint64_t sub_222CF7B28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_222CF7B90();
}

uint64_t sub_222CF7B5C()
{
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_222CF7B90()
{
  OUTLINED_FUNCTION_115();
  result = OUTLINED_FUNCTION_67();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0 & 1;
  return result;
}

double sub_222CF7C18@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_222CF7CA0(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_222CF7C54(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  sub_222CE3060(v7, v2);
  return sub_222CF7CE8(&v7);
}

uint64_t sub_222CF7CA0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_114();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t sub_222CF7CE8(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = OUTLINED_FUNCTION_114();
  v4 = a1[1];
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  return sub_222CE2920(v3, v5);
}

double DialogCalendarRange.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

double DialogCalendarRange.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t DialogCalendarRange.Builder.__allocating_init(endSecs:)(double a1)
{
  v2 = swift_allocObject();
  DialogCalendarRange.Builder.init(endSecs:)(a1);
  return v2;
}

uint64_t DialogCalendarRange.Builder.init(endSecs:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  swift_beginAccess();
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  return v1;
}

uint64_t sub_222CF7E88()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0 & 1;
}

uint64_t sub_222CF7ED4()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0 & 1;
}

void sub_222CF7F20()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67();
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_222CE3060(v2, v3);
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF7F8C()
{
  OUTLINED_FUNCTION_116();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (!v7)
  {

    v2 = v6;
    v8 = v4;
  }

  OUTLINED_FUNCTION_67();
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[9];
  v0[6] = v6;
  v0[7] = v4;
  v0[8] = v2;
  v0[9] = v8;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222CF8014()
{
  type metadata accessor for DialogCalendarRange();
  v0 = swift_allocObject();

  DialogCalendarRange.init(builder:)(v1);
  return v0;
}

uint64_t DialogCalendarRange.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogCalendarRange.init(builder:)(a1);
  return v2;
}

uint64_t DialogCalendarRange.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_114();
  sub_222CE2920(v1, v2);
  return v0;
}

uint64_t DialogCalendarRange.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_114();
  sub_222CE2920(v1, v2);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_222CF8134(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_222CF81A4(v2);
}

void *sub_222CF8164()
{
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_222CF81A4(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t DialogCalendarRange.startSecs.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogCalendarRange.endSecs.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t DialogCalendarRange.timeZone.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t DialogCalendarRange.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(v1 + 56) = *(a1 + 48);
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  OUTLINED_FUNCTION_96();
  v9 = *(v8 + 160);
  v12 = sub_222CE3060(v10, v11);
  if ((v9(v12) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v13 = OUTLINED_FUNCTION_3_0();
    *(v13 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDF0, &qword_222D53BE8);
    v14 = sub_222D5297C();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_222CDDCB0();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    OUTLINED_FUNCTION_85();
  }

  return v1;
}

void sub_222CF8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_116();
  a23 = v26;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  v33 = v29 == 0x6365537472617473 && v27 == 0xE900000000000073;
  if (v33 || (v34 = v27, (OUTLINED_FUNCTION_49() & 1) != 0))
  {
    if (*(v24 + 32))
    {
LABEL_7:
      *v32 = 0u;
      *(v32 + 16) = 0u;
LABEL_10:
      OUTLINED_FUNCTION_94();
      return;
    }

    v35 = *(v24 + 24);
LABEL_9:
    *(v32 + 24) = MEMORY[0x277D839F8];
    *v32 = v35;
    goto LABEL_10;
  }

  v36 = v30 == 0x73636553646E65 && v34 == 0xE700000000000000;
  if (v36 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v24 + 48))
    {
      goto LABEL_7;
    }

    v35 = *(v24 + 40);
    goto LABEL_9;
  }

  v37 = v30 == 0x656E6F5A656D6974 && v34 == 0xE800000000000000;
  if (!v37 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    OUTLINED_FUNCTION_98();
    v44 = v30 == 0xD000000000000012 && v25 == v34;
    if (v44 || (OUTLINED_FUNCTION_48() & 1) != 0)
    {
      v45 = &a9;
      v46 = 0xD000000000000012;
LABEL_33:
      v47 = v25;
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_98();
    v53 = v30 == 0xD000000000000011 && v25 == v34;
    if (v53 || (OUTLINED_FUNCTION_48() & 1) != 0)
    {
      v45 = &a9;
      v46 = 0xD000000000000011;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_98();
    v54 = 0xD000000000000013;
    v55 = v30 == 0xD000000000000013 && v25 == v34;
    if (v55 || (OUTLINED_FUNCTION_48() & 1) != 0)
    {
LABEL_47:
      v45 = &a9;
      v46 = v54;
      goto LABEL_33;
    }

    v25 = 0xEE0074726F685365;
    v56 = v30 == 0x676E615265746164 && v34 == 0xEE0074726F685365;
    if (v56 || (OUTLINED_FUNCTION_48() & 1) != 0)
    {
      v45 = &a9;
      v46 = 0x676E615265746164;
      goto LABEL_33;
    }

    v57 = v30 == 0x676E615265746164 && v34 == 0xED0000676E6F4C65;
    if (v57 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v45 = &a9;
      v46 = 0x676E615265746164;
LABEL_60:
      v47 = 0xED0000676E6F4C65;
      goto LABEL_34;
    }

    if (v30 != 0x676E615265746164 || v34 != 0xEF6F546D6F724665)
    {
      OUTLINED_FUNCTION_110();
      if ((OUTLINED_FUNCTION_49() & 1) == 0)
      {
        v59 = v30 == 0x676E6152656D6974 && v34 == 0xEE0074726F685365;
        if (v59 || (OUTLINED_FUNCTION_48() & 1) != 0)
        {
          v45 = &a9;
          v46 = 0x676E6152656D6974;
          goto LABEL_33;
        }

        v60 = v30 == 0x676E6152656D6974 && v34 == 0xED0000676E6F4C65;
        if (v60 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          v45 = &a9;
          v46 = 0x676E6152656D6974;
          goto LABEL_60;
        }

        if (v30 != 0x676E6152656D6974 || v34 != 0xEF6F546D6F724665)
        {
          OUTLINED_FUNCTION_110();
          if ((OUTLINED_FUNCTION_49() & 1) == 0)
          {
            OUTLINED_FUNCTION_98();
            OUTLINED_FUNCTION_99();
            v54 = v62 + 7;
            v63 = v30 == v62 + 7 && v34 == 0xEE0074726F685365;
            if (!v63 && (OUTLINED_FUNCTION_48() & 1) == 0)
            {
              OUTLINED_FUNCTION_98();
              OUTLINED_FUNCTION_99();
              v54 = v64 + 3;
              v65 = v30 == v64 + 3 && v34 == 0xEE0074726F685365;
              if (!v65 && (OUTLINED_FUNCTION_48() & 1) == 0)
              {
                v66 = v30 == 0x7472617473 && v34 == 0xE500000000000000;
                if (v66 || (OUTLINED_FUNCTION_49() & 1) != 0)
                {
                  v67 = 0x7472617473;
                  v68 = 0xE500000000000000;
                }

                else
                {
                  v69 = v30 == 6581861 && v34 == 0xE300000000000000;
                  if (!v69 && (OUTLINED_FUNCTION_49() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_109();
                    v73 = v30 == (OUTLINED_FUNCTION_78() & 0xFFFFFFFFFFFFLL | 0x5365000000000000) && v34 == v72;
                    if (v73 || (OUTLINED_FUNCTION_49() & 1) != 0)
                    {
                      v74 = sub_222CFFE8C();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_105();
                      OUTLINED_FUNCTION_99();
                      v77 = v30 == v76 && v75 == v34;
                      if (v77 || (OUTLINED_FUNCTION_49() & 1) != 0)
                      {
                        v74 = sub_222CFFEB4();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_108();
                        v79 = v30 == (OUTLINED_FUNCTION_78() & 0xFFFFFFFFFFFFLL | 0x5765000000000000) && v34 == v78;
                        if (v79 || (OUTLINED_FUNCTION_49() & 1) != 0)
                        {
                          v74 = sub_222CFFEE4();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_105();
                          OUTLINED_FUNCTION_99();
                          v82 = v30 == v81 + 8 && v80 == v34;
                          if (v82 || (OUTLINED_FUNCTION_49() & 1) != 0)
                          {
                            v74 = sub_222CFFF0C();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_105();
                            if (v30 != 0xD000000000000012 || v83 != v34)
                            {
                              OUTLINED_FUNCTION_99();
                              if ((OUTLINED_FUNCTION_49() & 1) == 0)
                              {
                                goto LABEL_7;
                              }
                            }

                            v74 = sub_222CFFF3C();
                          }
                        }
                      }
                    }

                    *(v32 + 24) = MEMORY[0x277D839B0];
                    *v32 = v74 & 1;
                    goto LABEL_10;
                  }

                  v67 = 6581861;
                  v68 = 0xE300000000000000;
                }

                v70 = sub_222CF95EC(v67, v68);
                if (v70)
                {
                  v71 = v70;
                  *(v32 + 24) = type metadata accessor for DialogCalendar();
                  *v32 = v71;
                  goto LABEL_10;
                }

                goto LABEL_7;
              }
            }

            goto LABEL_47;
          }
        }
      }
    }

    v46 = OUTLINED_FUNCTION_110();
LABEL_34:
    sub_222CF90AC(v46, v47, v45);
    v48 = a10;
    if (a10)
    {
      v50 = a11;
      v49 = a12;
      v51 = a9;
      *(v32 + 24) = &type metadata for SpeakableString;
      v52 = swift_allocObject();
      *v32 = v52;
      v52[2] = v51;
      v52[3] = v48;
      v52[4] = v50;
      v52[5] = v49;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v38 = *(v24 + 64);
  if (!v38)
  {
    goto LABEL_7;
  }

  v40 = *(v24 + 72);
  v39 = *(v24 + 80);
  v41 = *(v24 + 56);
  *(v32 + 24) = &type metadata for SpeakableString;
  v42 = swift_allocObject();
  *v32 = v42;
  v42[2] = v41;
  v42[3] = v38;
  v42[4] = v40;
  v42[5] = v39;

  OUTLINED_FUNCTION_94();
}

void sub_222CF899C()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 104))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogPhoneNumber, &qword_27D03BEC8, type metadata accessor for DialogPhoneNumber);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CF8D24()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 112))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogPersonHandle, qword_280D3D7B0, type metadata accessor for DialogPersonHandle);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

double sub_222CF90AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  v11 = sub_222D013F4();
  v12 = (v11 + 40);
  v13 = -*(v11 + 16);
  v14 = -1;
  do
  {
    if (v13 + v14 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_222D53980;
        v25 = (*(*v4 + 112))();
        v27 = v26;
        *(v24 + 56) = MEMORY[0x277D837D0];
        *(v24 + 64) = sub_222CDDCB0();
        *(v24 + 32) = v25;
        *(v24 + 40) = v27;
        sub_222D5280C();

LABEL_14:
        v32 = 0uLL;
        v36 = v44;
LABEL_15:
        *v36 = v32;
        v36[1] = v32;
        return *&v32;
      }

LABEL_22:
      swift_once();
      goto LABEL_8;
    }

    if (++v14 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v15 = v12 + 2;
    v16 = *(v12 - 1);
    v17 = *v12;
    v18 = (*(*v12 + 40))(v16, *v12);
    v12 = v15;
  }

  while ((v18 & 1) == 0);

  v19 = (*(v17 + 32))(v16, v17);
  v21 = v20;
  swift_beginAccess();
  v22 = v4[2];
  if (v22)
  {
    v23 = v4[2];
  }

  else
  {
    v23 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v28 = v22;
  v29 = sub_222D00570();
  *(&v46 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v45._countAndFlagsBits = v29;
  v30 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v30);
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v10, v19, v21, a1, a2, &v45, v23, &v47);

  sub_222CDC53C(v10, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45._countAndFlagsBits);
  if (!v49)
  {

    sub_222CDC53C(&v47, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  sub_222CE0BC0(&v47, v50);
  sub_222CE4EC0(v50, &v47);
  v31 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    SpeakableString.init(serializedValue:)(v45);

    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    *&v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v44;
    *v44 = v47;
    *(v35 + 2) = v33;
    *(v35 + 3) = v34;
    return *&v32;
  }

  sub_222CE4EC0(v50, &v47);
  if (!swift_dynamicCast())
  {
    v45 = 0;
    v46 = 0u;
    sub_222CE2920(0, 0);
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_222D53970;
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_222D52E3C();
    v40 = v47;
    *(v39 + 56) = v31;
    v41 = sub_222CDDCB0();
    *(v39 + 32) = v40;
    *(v39 + 96) = v31;
    *(v39 + 104) = v41;
    *(v39 + 64) = v41;
    *(v39 + 72) = 0x6C62616B61657053;
    *(v39 + 80) = 0xEF676E6972745365;
    sub_222D5280C();

    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v36 = v44;
    v32 = 0uLL;
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v50);

  *&v32 = v45._countAndFlagsBits;
  v37 = v46;
  v38 = v44;
  *v44 = v45;
  v38[1] = v37;
  return *&v32;
}

uint64_t sub_222CF95EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36[-1] - v8;
  v10 = sub_222D013F4();
  v11 = (v10 + 40);
  v12 = -*(v10 + 16);
  v13 = -1;
  do
  {
    if (v12 + v13 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_222D53980;
        v24 = (*(*v3 + 112))();
        v26 = v25;
        *(v23 + 56) = MEMORY[0x277D837D0];
        *(v23 + 64) = sub_222CDDCB0();
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        sub_222D5280C();

        return 0;
      }

LABEL_21:
      swift_once();
      goto LABEL_8;
    }

    if (++v13 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v14 = v11 + 2;
    v15 = *(v11 - 1);
    v16 = *v11;
    v17 = (*(*v11 + 40))(v15, *v11);
    v11 = v14;
  }

  while ((v17 & 1) == 0);

  v18 = (*(v16 + 32))(v15, v16);
  v20 = v19;
  swift_beginAccess();
  v21 = v3[2];
  if (v21)
  {
    v22 = v3[2];
  }

  else
  {
    v22 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v27 = v21;
  v28 = sub_222D00570();
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v36[0] = v28;
  v29 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v29);
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v9, v18, v20, a1, a2, v36, v22, &v37);

  sub_222CDC53C(v9, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  if (v38)
  {
    sub_222CE0BC0(&v37, v39);
    sub_222CE4EC0(v39, &v37);
    v30 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
    }

    sub_222CE4EC0(v39, &v37);
    type metadata accessor for DialogCalendar();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v39);

      return v36[0];
    }

    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_222D53970;
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_222D52E3C();
    v33 = v37;
    *(v32 + 56) = v30;
    v34 = sub_222CDDCB0();
    *(v32 + 32) = v33;
    *(v32 + 96) = v30;
    *(v32 + 104) = v34;
    *(v32 + 64) = v34;
    strcpy((v32 + 72), "DialogCalendar");
    *(v32 + 87) = -18;
    sub_222D5280C();

    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {

    sub_222CDC53C(&v37, &qword_27D03BDA8, &unk_222D55070);
  }

  return 0;
}

uint64_t sub_222CF9AD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37[-1] - v8;
  v10 = sub_222D013F4();
  v11 = (v10 + 40);
  v12 = -*(v10 + 16);
  v13 = -1;
  do
  {
    if (v12 + v13 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_222D53980;
        v24 = (*(*v3 + 112))();
        v26 = v25;
        *(v23 + 56) = MEMORY[0x277D837D0];
        *(v23 + 64) = sub_222CDDCB0();
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v27 = 2;
        sub_222D5280C();

        return v27;
      }

LABEL_21:
      swift_once();
      goto LABEL_8;
    }

    if (++v13 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v14 = v11 + 2;
    v15 = *(v11 - 1);
    v16 = *v11;
    v17 = (*(*v11 + 40))(v15, *v11);
    v11 = v14;
  }

  while ((v17 & 1) == 0);

  v18 = (*(v16 + 32))(v15, v16);
  v20 = v19;
  swift_beginAccess();
  v21 = v3[2];
  if (v21)
  {
    v22 = v3[2];
  }

  else
  {
    v22 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v28 = v21;
  v29 = sub_222D00570();
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v37[0] = v29;
  v30 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v30);
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v9, v18, v20, a1, a2, v37, v22, &v38);

  sub_222CDC53C(v9, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  if (v39)
  {
    sub_222CE0BC0(&v38, v40);
    sub_222CE4EC0(v40, &v38);
    v31 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
    }

    sub_222CE4EC0(v40, &v38);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v40);

      return LOBYTE(v37[0]);
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        swift_once();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_222D53970;
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      sub_222D52E3C();
      v33 = v38;
      *(v32 + 56) = v31;
      v34 = sub_222CDDCB0();
      *(v32 + 32) = v33;
      *(v32 + 96) = v31;
      *(v32 + 104) = v34;
      *(v32 + 64) = v34;
      *(v32 + 72) = 1819242306;
      *(v32 + 80) = 0xE400000000000000;
      v27 = 2;
      sub_222D5280C();

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }
  }

  else
  {

    sub_222CDC53C(&v38, &qword_27D03BDA8, &unk_222D55070);
    return 2;
  }

  return v27;
}

void sub_222CF9FA8()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 184))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogLocationAddress, &qword_27D03BE68, type metadata accessor for DialogLocationAddress);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFA4D0()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 104))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  sub_222CF1394(type metadata accessor for DialogCurrency, &qword_27D03BEB0, type metadata accessor for DialogCurrency);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v22 = OUTLINED_FUNCTION_55(v21);
  OUTLINED_FUNCTION_2_3(v22);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v23)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v24 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v24, v25);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_111();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v26 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v26, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v27 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_43(v27);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  else
  {

    sub_222CDC53C(&v28, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFA884()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_58(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28();
  v10 = sub_222D013F4();
  OUTLINED_FUNCTION_25_0(v10);
  v12 = -v11;
  do
  {
    if (!v12)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v21 = OUTLINED_FUNCTION_3_0();
        v22 = OUTLINED_FUNCTION_31(v21, xmmword_222D53980);
        v24 = v23;
        (*(v23 + 104))(v22);
        OUTLINED_FUNCTION_62();
        v21[3].n128_u64[1] = MEMORY[0x277D837D0];
        v21[4].n128_u64[0] = sub_222CDDCB0();
        v21[2].n128_u64[0] = v24;
        v21[2].n128_u64[1] = v0;
        OUTLINED_FUNCTION_24();
        sub_222D5280C();

LABEL_14:
        *&v32 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v31 = v32;
        v31[1] = v32;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_93();
    if (v14)
    {
      __break(1u);
      goto LABEL_23;
    }

    v15 = OUTLINED_FUNCTION_34_0(v13);
  }

  while ((v16(v15) & 1) == 0);

  v17 = OUTLINED_FUNCTION_44();
  v18(v17);
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v19 = *(v0 + 16);
  if (v19)
  {
    v20 = *(v0 + 16);
  }

  else
  {
    v20 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v25 = v19;
  OUTLINED_FUNCTION_79();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v27 = OUTLINED_FUNCTION_56(v26);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_53();

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40._countAndFlagsBits);
  if (!v43)
  {

    sub_222CDC53C(&v41, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  sub_222CE0BC0(&v41, v44);
  v28 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v28, v29);
  v30 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_51();
  if (OUTLINED_FUNCTION_84())
  {
    SpeakableString.init(serializedValue:)(v40);

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_33(v42, v41);
    goto LABEL_16;
  }

  v33 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v33, v34);
  OUTLINED_FUNCTION_51();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v35 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_91(v35, xmmword_222D53970);
    OUTLINED_FUNCTION_77();
    sub_222D52E3C();
    v35[3].n128_u64[1] = v30;
    v36 = sub_222CDDCB0();
    OUTLINED_FUNCTION_107(v36);
    OUTLINED_FUNCTION_11_0();
    v35[4].n128_u64[0] = v37;
    v35[4].n128_u64[1] = v38;
    OUTLINED_FUNCTION_10();
    v35[5].n128_u64[0] = v39;
    OUTLINED_FUNCTION_42();
    sub_222D5280C();

    *&v32 = OUTLINED_FUNCTION_120();
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);

  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFAC9C()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v7);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_39(v17, xmmword_222D53980);
        (*(v19 + 112))(v18);
        OUTLINED_FUNCTION_66();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v20);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v10)
    {
      __break(1u);
      goto LABEL_21;
    }

    v11 = OUTLINED_FUNCTION_4_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_14();
  v14(v13);
  OUTLINED_FUNCTION_17();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogTemperature, &qword_27D03BE50, type metadata accessor for DialogTemperature);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_55(v22);
  OUTLINED_FUNCTION_2_3(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v24)
  {
    OUTLINED_FUNCTION_20_0();
    v25 = MEMORY[0x277D84F70];
    v26 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v27 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v27, v28);
    type metadata accessor for DialogPreciseTemperature();
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v29 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v30 = OUTLINED_FUNCTION_88();
      v29[2].n128_u64[0] = v25;
      v29[2].n128_u64[1] = v2;
      v29[6].n128_u64[0] = v26;
      v29[6].n128_u64[1] = v30;
      v29[4].n128_u64[0] = v30;
      v29[4].n128_u64[1] = 0xD000000000000018;
      v29[5].n128_u64[0] = 0x8000000222D5A230;
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }
  }

  else
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFB0A8()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v7);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_39(v17, xmmword_222D53980);
        (*(v19 + 112))(v18);
        OUTLINED_FUNCTION_66();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v20);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v10)
    {
      __break(1u);
      goto LABEL_21;
    }

    v11 = OUTLINED_FUNCTION_4_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_14();
  v14(v13);
  OUTLINED_FUNCTION_17();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogPreciseTemperature, &qword_27D03BEA8, type metadata accessor for DialogPreciseTemperature);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_55(v22);
  OUTLINED_FUNCTION_2_3(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v24)
  {
    OUTLINED_FUNCTION_20_0();
    v25 = MEMORY[0x277D84F70];
    v26 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v27 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v27, v28);
    type metadata accessor for DialogTemperature();
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v29 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v30 = OUTLINED_FUNCTION_88();
      v29[2].n128_u64[0] = v25;
      v29[2].n128_u64[1] = v2;
      v29[6].n128_u64[0] = v26;
      v29[6].n128_u64[1] = v30;
      v29[4].n128_u64[0] = v30;
      v29[4].n128_u64[1] = 0xD000000000000011;
      v29[5].n128_u64[0] = 0x8000000222D5A250;
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }
  }

  else
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFB480()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 200))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  sub_222CF1394(type metadata accessor for DialogUser, &qword_27D03BEB8, type metadata accessor for DialogUser);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v22 = OUTLINED_FUNCTION_55(v21);
  OUTLINED_FUNCTION_2_3(v22);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v23)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v24 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v24, v25);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v26 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v26, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v27 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_27(v27);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  else
  {

    sub_222CDC53C(&v28, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_74();
}

void sub_222CFB838()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_58(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28();
  v10 = sub_222D013F4();
  OUTLINED_FUNCTION_25_0(v10);
  v12 = -v11;
  do
  {
    if (!v12)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v21 = OUTLINED_FUNCTION_3_0();
        v22 = OUTLINED_FUNCTION_31(v21, xmmword_222D53980);
        v24 = v23;
        (*(v23 + 200))(v22);
        OUTLINED_FUNCTION_62();
        v21[3].n128_u64[1] = MEMORY[0x277D837D0];
        v21[4].n128_u64[0] = sub_222CDDCB0();
        v21[2].n128_u64[0] = v24;
        v21[2].n128_u64[1] = v0;
        OUTLINED_FUNCTION_24();
        sub_222D5280C();

LABEL_14:
        *&v32 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v31 = v32;
        v31[1] = v32;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_93();
    if (v14)
    {
      __break(1u);
      goto LABEL_23;
    }

    v15 = OUTLINED_FUNCTION_34_0(v13);
  }

  while ((v16(v15) & 1) == 0);

  v17 = OUTLINED_FUNCTION_44();
  v18(v17);
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v19 = *(v0 + 16);
  if (v19)
  {
    v20 = *(v0 + 16);
  }

  else
  {
    v20 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v25 = v19;
  OUTLINED_FUNCTION_79();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v27 = OUTLINED_FUNCTION_56(v26);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_53();

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40._countAndFlagsBits);
  if (!v43)
  {

    sub_222CDC53C(&v41, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  sub_222CE0BC0(&v41, v44);
  v28 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v28, v29);
  v30 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_51();
  if (OUTLINED_FUNCTION_84())
  {
    SpeakableString.init(serializedValue:)(v40);

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_33(v42, v41);
    goto LABEL_16;
  }

  v33 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v33, v34);
  OUTLINED_FUNCTION_51();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v35 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_91(v35, xmmword_222D53970);
    OUTLINED_FUNCTION_77();
    sub_222D52E3C();
    v35[3].n128_u64[1] = v30;
    v36 = sub_222CDDCB0();
    OUTLINED_FUNCTION_107(v36);
    OUTLINED_FUNCTION_11_0();
    v35[4].n128_u64[0] = v37;
    v35[4].n128_u64[1] = v38;
    OUTLINED_FUNCTION_10();
    v35[5].n128_u64[0] = v39;
    OUTLINED_FUNCTION_42();
    sub_222D5280C();

    *&v32 = OUTLINED_FUNCTION_120();
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);

  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFBC1C()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 104))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogPronoun, qword_280D3C778, type metadata accessor for DialogPronoun);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFBFA4()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 120))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  v21 = OUTLINED_FUNCTION_13_0();
  sub_222CF1394(v21, v22, type metadata accessor for DialogCalendar);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v24 = OUTLINED_FUNCTION_55(v23);
  OUTLINED_FUNCTION_2_3(v24);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v25)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v26 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v26, v27);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v28 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v28, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_27(v29);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    }
  }

  else
  {

    sub_222CDC53C(&v30, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_74();
}

void sub_222CFC318()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 120))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  v21 = OUTLINED_FUNCTION_13_0();
  sub_222CF1394(v21, v22, type metadata accessor for DialogCalendar);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v24 = OUTLINED_FUNCTION_55(v23);
  OUTLINED_FUNCTION_2_3(v24);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v25)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v26 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v26, v27);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_111();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v28 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v28, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_43(v29);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    }
  }

  else
  {

    sub_222CDC53C(&v30, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFC688()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 120))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v28 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v27 = v28;
        v27[1] = v28;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  v22 = OUTLINED_FUNCTION_13_0();
  sub_222CF1394(v22, v23, type metadata accessor for DialogCalendar);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v25 = OUTLINED_FUNCTION_56(v24);
  OUTLINED_FUNCTION_3_1(v25);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v26)
  {

    sub_222CDC53C(&v33, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v29, v30);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v31 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v31, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v32 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v32);
    OUTLINED_FUNCTION_30();

    *&v28 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFCA34()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 120))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v28 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v27 = v28;
        v27[1] = v28;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  v22 = OUTLINED_FUNCTION_70();
  sub_222CF1394(v22, v23, type metadata accessor for DialogDateTime);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v25 = OUTLINED_FUNCTION_56(v24);
  OUTLINED_FUNCTION_3_1(v25);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v26)
  {

    sub_222CDC53C(&v33, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v29, v30);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v31 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v31, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v32 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v32);
    OUTLINED_FUNCTION_30();

    *&v28 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFCDE0()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 96))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v28 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v27 = v28;
        v27[1] = v28;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  v22 = OUTLINED_FUNCTION_69();
  sub_222CF1394(v22, v23, type metadata accessor for DialogDuration);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v25 = OUTLINED_FUNCTION_56(v24);
  OUTLINED_FUNCTION_3_1(v25);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v26)
  {

    sub_222CDC53C(&v33, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v29, v30);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v31 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v31, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v32 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v32);
    OUTLINED_FUNCTION_30();

    *&v28 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFD158()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 96))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  v21 = OUTLINED_FUNCTION_69();
  sub_222CF1394(v21, v22, type metadata accessor for DialogDuration);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v24 = OUTLINED_FUNCTION_55(v23);
  OUTLINED_FUNCTION_2_3(v24);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v25)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v26 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v26, v27);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_111();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v28 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v28, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_43(v29);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    }
  }

  else
  {

    sub_222CDC53C(&v30, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFD4C8()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 96))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogLocation, &qword_27D03BEF0, type metadata accessor for DialogLocation);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFD850()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 104))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v26 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v25 = v26;
        v25[1] = v26;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  sub_222CF1394(type metadata accessor for DialogTimeZone, &qword_27D03BE60, type metadata accessor for DialogTimeZone);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v23 = OUTLINED_FUNCTION_56(v22);
  OUTLINED_FUNCTION_3_1(v23);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v24)
  {

    sub_222CDC53C(&v31, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v27 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v27, v28);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v29, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v30 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v30);
    OUTLINED_FUNCTION_30();

    *&v26 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFDBD8()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_15(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28();
  v7 = sub_222D013F4();
  OUTLINED_FUNCTION_8_0(v7);
  do
  {
    OUTLINED_FUNCTION_76();
    if (v8)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v17 = OUTLINED_FUNCTION_3_0();
        v18 = OUTLINED_FUNCTION_31(v17, xmmword_222D53980);
        (*(v19 + 104))(v18);
        OUTLINED_FUNCTION_62();
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v20 = sub_222CDDCB0();
        OUTLINED_FUNCTION_75(v20);
        OUTLINED_FUNCTION_29();

LABEL_14:
        *&v28 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v27 = v28;
        v27[1] = v28;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40_0();
    if (v10)
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = OUTLINED_FUNCTION_5_0(v9);
  }

  while ((v12(v11) & 1) == 0);

  v13 = OUTLINED_FUNCTION_16_1();
  v14(v13);
  OUTLINED_FUNCTION_19();
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v21 = v15;
  v22 = OUTLINED_FUNCTION_68();
  sub_222CF1394(v22, v23, type metadata accessor for SirikitApp);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v25 = OUTLINED_FUNCTION_56(v24);
  OUTLINED_FUNCTION_3_1(v25);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_54();
  if (!v26)
  {

    sub_222CDC53C(&v33, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_0();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_90();

    OUTLINED_FUNCTION_6_1();
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_46();
  sub_222CE4EC0(v29, v30);
  OUTLINED_FUNCTION_22_0();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v31 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_21(v31, xmmword_222D53970);
    OUTLINED_FUNCTION_46();
    sub_222D52E3C();
    v32 = OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_1_3(v32);
    OUTLINED_FUNCTION_30();

    *&v28 = OUTLINED_FUNCTION_35();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFDF50()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 104))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  v21 = OUTLINED_FUNCTION_68();
  sub_222CF1394(v21, v22, type metadata accessor for SirikitApp);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v24 = OUTLINED_FUNCTION_55(v23);
  OUTLINED_FUNCTION_2_3(v24);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v25)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v26 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v26, v27);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v28 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v28, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v29 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_27(v29);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    }
  }

  else
  {

    sub_222CDC53C(&v30, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_74();
}

void sub_222CFE2C4()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        *(v16 + 16) = xmmword_222D53980;
        (*(*v0 + 312))();
        OUTLINED_FUNCTION_66();
        *(v16 + 56) = MEMORY[0x277D837D0];
        v17 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v17);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = v0[2];
  if (v14)
  {
    v15 = v0[2];
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v18 = v14;
  v19 = OUTLINED_FUNCTION_36();
  sub_222CF1394(v19, v20, type metadata accessor for SirikitDeviceState);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v22 = OUTLINED_FUNCTION_55(v21);
  OUTLINED_FUNCTION_2_3(v22);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v23)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v24 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v24, v25);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v26 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v26, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v27 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_27(v27);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  else
  {

    sub_222CDC53C(&v28, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_74();
}

void sub_222CFE640()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        *(v16 + 16) = xmmword_222D53980;
        (*(*v0 + 312))();
        OUTLINED_FUNCTION_66();
        *(v16 + 56) = MEMORY[0x277D837D0];
        v17 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v17);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = v0[2];
  if (v14)
  {
    v15 = v0[2];
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v18 = v14;
  v19 = OUTLINED_FUNCTION_36();
  sub_222CF1394(v19, v20, type metadata accessor for SirikitDeviceState);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v22 = OUTLINED_FUNCTION_55(v21);
  OUTLINED_FUNCTION_2_3(v22);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v23)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v24 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v24, v25);
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v26 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v26, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v27 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_64(v27);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  else
  {

    sub_222CDC53C(&v28, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFE9B8()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_37();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_7_1(v6);
  do
  {
    OUTLINED_FUNCTION_71();
    if (v7)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v16 = OUTLINED_FUNCTION_3_0();
        v17 = OUTLINED_FUNCTION_39(v16, xmmword_222D53980);
        (*(v18 + 200))(v17);
        OUTLINED_FUNCTION_66();
        v16[3].n128_u64[1] = MEMORY[0x277D837D0];
        v19 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v19);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_38();
    if (v9)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = OUTLINED_FUNCTION_4_0(v8);
  }

  while ((v11(v10) & 1) == 0);

  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  OUTLINED_FUNCTION_17();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v20 = v14;
  sub_222CF1394(type metadata accessor for DialogPerson, qword_280D3CB40, type metadata accessor for DialogPerson);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v22 = OUTLINED_FUNCTION_55(v21);
  OUTLINED_FUNCTION_2_3(v22);

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v23)
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v24 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v24, v25);
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_101();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v26 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v26, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v27 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_64(v27);
      OUTLINED_FUNCTION_26_0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  else
  {

    sub_222CDC53C(&v28, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFED6C()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_97(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v13 = sub_222D013F4();
  OUTLINED_FUNCTION_25_0(v13);
  v16 = -v15;
  v17 = -1;
  do
  {
    if (v16 + v17 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v26 = OUTLINED_FUNCTION_3_0();
        *(v26 + 16) = xmmword_222D53980;
        v27 = (*(*v1 + 120))();
        v29 = v28;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_222CDDCB0();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        OUTLINED_FUNCTION_24();
        sub_222D5280C();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    if (++v17 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v18 = v14 + 16;
    v19 = OUTLINED_FUNCTION_34_0(v14);
    v21 = v20(v19);
    v14 = v18;
  }

  while ((v21 & 1) == 0);

  v22 = OUTLINED_FUNCTION_44();
  v23(v22);
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v24 = v1[2];
  if (v24)
  {
    v25 = v1[2];
  }

  else
  {
    v25 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v30 = v24;
  v31 = OUTLINED_FUNCTION_13_0();
  sub_222CF1394(v31, v32, type metadata accessor for DialogCalendar);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v34 = OUTLINED_FUNCTION_55(v33);
  OUTLINED_FUNCTION_9_0(v12, v35, v36, v34);
  OUTLINED_FUNCTION_86(v37, v38);

  sub_222CDC53C(v12, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v39)
  {
    OUTLINED_FUNCTION_20_0();
    v40 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v41 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v41, v42);
    (v45[2])(0);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v43 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v43, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v43[3].n128_u64[1] = v40;
      v44 = sub_222CDDCB0();
      OUTLINED_FUNCTION_95(v44);
      OUTLINED_FUNCTION_104();

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }
  }

  else
  {

    sub_222CDC53C(&v46, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFF184()
{
  OUTLINED_FUNCTION_73();
  v44 = v4;
  v45 = v3;
  v5 = v1;
  v46 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_0(v11);
  v14 = -v13;
  v15 = -1;
  do
  {
    if (v14 + v15 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v25 = OUTLINED_FUNCTION_3_0();
        v26 = OUTLINED_FUNCTION_39(v25, xmmword_222D53980);
        (*(v27 + 112))(v26);
        OUTLINED_FUNCTION_66();
        v25[3].n128_u64[1] = MEMORY[0x277D837D0];
        v28 = sub_222CDDCB0();
        OUTLINED_FUNCTION_65(v28);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_85();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    if (++v15 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = v12 + 2;
    v17 = *(v12 - 1);
    v18 = *v12;
    v19 = (*(*v12 + 40))(v17, *v12);
    v12 = v16;
  }

  while ((v19 & 1) == 0);

  v20 = (*(v18 + 32))(v17, v18);
  v22 = v21;
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v23 = *(v5 + 16);
  if (v23)
  {
    v24 = *(v5 + 16);
  }

  else
  {
    v24 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v29 = v23;
  OUTLINED_FUNCTION_72();
  v30 = OUTLINED_FUNCTION_110();
  sub_222CF1394(v30, v31, v44);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v33 = OUTLINED_FUNCTION_55(v32);
  OUTLINED_FUNCTION_9_0(v2, v34, v35, v33);
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v2, v20, v22, v45, v46, v36, v24, v37);

  sub_222CDC53C(v2, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v38)
  {
    OUTLINED_FUNCTION_20_0();
    v39 = MEMORY[0x277D837D0];
    if (OUTLINED_FUNCTION_84())
    {
    }

    v40 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v40, v41);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v48);

      OUTLINED_FUNCTION_111();
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v42 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v42, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v42[3].n128_u64[1] = v39;
      v43 = sub_222CDDCB0();
      v42[4].n128_u64[0] = OUTLINED_FUNCTION_107(v43);
      v42[4].n128_u64[1] = 0x656C62756F44;
      v42[5].n128_u64[0] = 0xE600000000000000;
      OUTLINED_FUNCTION_42();
      sub_222D5280C();

      __swift_destroy_boxed_opaque_existential_1Tm(v48);
    }
  }

  else
  {

    sub_222CDC53C(&v47, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

void sub_222CFF5C0()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_58(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28();
  v12 = sub_222D013F4();
  OUTLINED_FUNCTION_25_0(v12);
  v14 = -v13;
  do
  {
    if (!v14)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v23 = OUTLINED_FUNCTION_3_0();
        v24 = OUTLINED_FUNCTION_31(v23, xmmword_222D53980);
        v26 = v25;
        (*(v25 + 112))(v24);
        OUTLINED_FUNCTION_62();
        v23[3].n128_u64[1] = MEMORY[0x277D837D0];
        v23[4].n128_u64[0] = sub_222CDDCB0();
        v23[2].n128_u64[0] = v26;
        v23[2].n128_u64[1] = v0;
        OUTLINED_FUNCTION_24();
        sub_222D5280C();

LABEL_14:
        *&v34 = OUTLINED_FUNCTION_63();
LABEL_15:
        *v33 = v34;
        v33[1] = v34;
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_93();
    if (v16)
    {
      __break(1u);
      goto LABEL_23;
    }

    v17 = OUTLINED_FUNCTION_34_0(v15);
  }

  while ((v18(v17) & 1) == 0);

  v19 = OUTLINED_FUNCTION_44();
  v20(v19);
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v21 = *(v0 + 16);
  if (v21)
  {
    v22 = *(v0 + 16);
  }

  else
  {
    v22 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v27 = v21;
  OUTLINED_FUNCTION_72();
  sub_222CF1394(v3, v2, v42);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v29 = OUTLINED_FUNCTION_56(v28);
  OUTLINED_FUNCTION_41(v29);
  OUTLINED_FUNCTION_53();

  sub_222CDC53C(v1, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43._countAndFlagsBits);
  if (!v46)
  {

    sub_222CDC53C(&v44, &qword_27D03BDA8, &unk_222D55070);
    goto LABEL_14;
  }

  sub_222CE0BC0(&v44, v47);
  v30 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v30, v31);
  v32 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_51();
  if (OUTLINED_FUNCTION_84())
  {
    SpeakableString.init(serializedValue:)(v43);

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_33(v45, v44);
    goto LABEL_16;
  }

  v35 = OUTLINED_FUNCTION_77();
  sub_222CE4EC0(v35, v36);
  OUTLINED_FUNCTION_51();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v37 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_91(v37, xmmword_222D53970);
    OUTLINED_FUNCTION_77();
    sub_222D52E3C();
    v37[3].n128_u64[1] = v32;
    v38 = sub_222CDDCB0();
    OUTLINED_FUNCTION_107(v38);
    OUTLINED_FUNCTION_11_0();
    v37[4].n128_u64[0] = v39;
    v37[4].n128_u64[1] = v40;
    OUTLINED_FUNCTION_10();
    v37[5].n128_u64[0] = v41;
    OUTLINED_FUNCTION_42();
    sub_222D5280C();

    *&v34 = OUTLINED_FUNCTION_120();
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);

  OUTLINED_FUNCTION_32();
LABEL_16:
  OUTLINED_FUNCTION_74();
}

void sub_222CFF9DC()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_97(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_52(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v13 = sub_222D013F4();
  OUTLINED_FUNCTION_25_0(v13);
  v16 = -v15;
  v17 = -1;
  do
  {
    if (v16 + v17 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
LABEL_8:
        sub_222D52C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
        v26 = OUTLINED_FUNCTION_3_0();
        *(v26 + 16) = xmmword_222D53980;
        v27 = (*(*v1 + 120))();
        v29 = v28;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_222CDDCB0();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        OUTLINED_FUNCTION_24();
        sub_222D5280C();

        goto LABEL_19;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_8;
    }

    if (++v17 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v18 = v14 + 16;
    v19 = OUTLINED_FUNCTION_34_0(v14);
    v21 = v20(v19);
    v14 = v18;
  }

  while ((v21 & 1) == 0);

  v22 = OUTLINED_FUNCTION_44();
  v23(v22);
  OUTLINED_FUNCTION_47();
  swift_beginAccess();
  v24 = v1[2];
  if (v24)
  {
    v25 = v1[2];
  }

  else
  {
    v25 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  type metadata accessor for CATEvaluator();
  v30 = v24;
  v31 = OUTLINED_FUNCTION_70();
  sub_222CF1394(v31, v32, type metadata accessor for DialogDateTime);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v34 = OUTLINED_FUNCTION_55(v33);
  OUTLINED_FUNCTION_9_0(v12, v35, v36, v34);
  OUTLINED_FUNCTION_86(v37, v38);

  sub_222CDC53C(v12, &qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_45_0();
  if (v39)
  {
    OUTLINED_FUNCTION_20_0();
    v40 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_18();
    if (OUTLINED_FUNCTION_84())
    {
    }

    v41 = OUTLINED_FUNCTION_46();
    sub_222CE4EC0(v41, v42);
    (v45[2])(0);
    OUTLINED_FUNCTION_18();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_222D52C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v43 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_21(v43, xmmword_222D53970);
      OUTLINED_FUNCTION_46();
      sub_222D52E3C();
      v43[3].n128_u64[1] = v40;
      v44 = sub_222CDDCB0();
      OUTLINED_FUNCTION_95(v44);
      OUTLINED_FUNCTION_104();

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }
  }

  else
  {

    sub_222CDC53C(&v46, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_19:
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222CFFE8C()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_109();
  return sub_222CF9AD0(v0, v1) & 1;
}

uint64_t sub_222CFFEE4()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_108();
  return sub_222CF9AD0(v0, v1) & 1;
}

uint64_t sub_222CFFF6C()
{
  v0 = sub_222D52ECC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222CFFFB8(char a1)
{
  if (!a1)
  {
    return 0x6365537472617473;
  }

  if (a1 == 1)
  {
    return 0x73636553646E65;
  }

  return 0x656E6F5A656D6974;
}

uint64_t sub_222D00038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222CFFF6C();
  *a2 = result;
  return result;
}

uint64_t sub_222D00068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222CFFFB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D0009C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222CFFF6C();
  *a1 = result;
  return result;
}

uint64_t sub_222D000DC(uint64_t a1)
{
  v2 = sub_222D00948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D00118(uint64_t a1)
{
  v2 = sub_222D00948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogCalendarRange.deinit()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t DialogCalendarRange.__deallocating_deinit()
{
  DialogCalendarRange.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D001AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDF8, &qword_222D53BF0);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D00948();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_119();
  if (!v2)
  {
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_119();
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v23 = *(v3 + 56);
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v22[15] = 2;
    sub_222CE3060(v23, v18);
    sub_222CF2084();
    sub_222D52FBC();
    sub_222CE2920(v23, v24);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t DialogCalendarRange.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogCalendarRange.init(from:)(a1);
  return v2;
}

uint64_t DialogCalendarRange.init(from:)(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE08, &qword_222D53BF8);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28();
  *(v1 + 16) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D00948();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogCalendarRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 24) = OUTLINED_FUNCTION_118();
    *(v1 + 32) = v12 & 1;
    LOBYTE(v15) = 1;
    *(v1 + 40) = OUTLINED_FUNCTION_118();
    *(v1 + 48) = v13 & 1;
    sub_222D0099C();
    sub_222D52F1C();
    (*(v7 + 8))(v3, v5);
    *(v1 + 56) = v15;
    *(v1 + 72) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D00570()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v0 = sub_222D51F2C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_222D51F1C();
  type metadata accessor for DialogCalendarRange();
  sub_222CF1670(&qword_27D03BE20, v3, type metadata accessor for DialogCalendarRange);
  v4 = sub_222D51F0C();
  v6 = v5;

  v9 = objc_opt_self();
  v10 = sub_222D5212C();
  v17[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v17];

  if (v11)
  {
    v12 = v17[0];
    sub_222D52D6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    if (swift_dynamicCast())
    {
      sub_222CE6210(v4, v6);
      v13 = v16;
    }

    else
    {
      v13 = sub_222D528BC();
      sub_222CE6210(v4, v6);
    }
  }

  else
  {
    v14 = v17[0];
    v15 = sub_222D5207C();

    swift_willThrow();
    sub_222CE6210(v4, v6);
    v13 = sub_222D528BC();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t (*sub_222D00828())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_222D008C0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 328))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_222D00948()
{
  result = qword_27D03BE00;
  if (!qword_27D03BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BE00);
  }

  return result;
}

unint64_t sub_222D0099C()
{
  result = qword_27D03BE10;
  if (!qword_27D03BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BE10);
  }

  return result;
}

uint64_t sub_222D009F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222CF1670(&qword_27D03BE18, a2, type metadata accessor for DialogCalendarRange);
  result = sub_222CF1670(&qword_27D03BE20, v3, type metadata accessor for DialogCalendarRange);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for DialogCalendarRange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogCalendarRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D012F0()
{
  result = qword_27D03BE28;
  if (!qword_27D03BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BE28);
  }

  return result;
}

unint64_t sub_222D01348()
{
  result = qword_27D03BE30;
  if (!qword_27D03BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BE30);
  }

  return result;
}

unint64_t sub_222D013A0()
{
  result = qword_27D03BE38;
  if (!qword_27D03BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BE38);
  }

  return result;
}

uint64_t sub_222D013F4()
{
  ObjCClassMetadata = *v0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
    if (!v3)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v2 + 16);
      sub_222D28284();
      v2 = v11;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      sub_222D28284();
      v2 = v12;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    if (!dynamic_cast_existential_0_class_conditional(v5))
    {
      break;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!class_getSuperclass(ObjCClassFromMetadata))
    {
      break;
    }

    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  return v2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 *OUTLINED_FUNCTION_39(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *v2;
  return result;
}

void OUTLINED_FUNCTION_53()
{
  v6 = *(v4 - 232);
  v7 = *(v4 - 224);

  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v2, v0, v1, v6, v7, (v4 - 208), v3, v4 - 176);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{
  *(v2 - 184) = a1;
  *(v2 - 208) = v1;

  return sub_222D5210C();
}

uint64_t OUTLINED_FUNCTION_64(uint64_t result)
{
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(v2 + 96) = v1;
  *(v2 + 104) = result;
  *(v2 + 64) = result;
  strcpy((v2 + 72), "DialogPronoun");
  *(v2 + 86) = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_75(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_79()
{
  v4 = *(v2 - 240);

  return sub_222CF1394(v1, v0, v4);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_222D5280C();
}

void OUTLINED_FUNCTION_86(void *a1@<X5>, uint64_t a2@<X8>)
{

  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v6, v2, v7, v5, v4, a1, v3, a2);
}

unint64_t OUTLINED_FUNCTION_88()
{
  v4 = *(v2 - 168);
  v5 = *(v2 - 160);
  *(v1 + 56) = v0;

  return sub_222CDDCB0();
}

unint64_t OUTLINED_FUNCTION_89()
{
  v4 = *(v2 - 168);
  v5 = *(v2 - 160);
  *(v1 + 56) = v0;

  return sub_222CDDCB0();
}

__n128 *OUTLINED_FUNCTION_91(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 176) = 0;
  *(v2 - 168) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_95(uint64_t result)
{
  v2[4] = v3;
  v2[5] = v4;
  v2[12] = v1;
  v2[13] = result;
  v7 = *(v5 - 224);
  v6 = *(v5 - 216);
  v2[8] = result;
  v2[9] = v7;
  v2[10] = v6;
  return result;
}

void OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 224) = a4;
  *(v5 - 216) = a5;
  *(v5 - 208) = a3;
}

void OUTLINED_FUNCTION_101()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 - 136));
}

void OUTLINED_FUNCTION_103()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 - 136));
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_222D5280C();
}

uint64_t OUTLINED_FUNCTION_107(uint64_t result)
{
  v2[4] = v3;
  v2[5] = v4;
  v2[12] = v1;
  v2[13] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_114()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  return result;
}

double OUTLINED_FUNCTION_120()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 144));
  v1 = *(v0 - 216);
  return 0.0;
}

uint64_t sub_222D01924()
{
  sub_222D01BBC();
  result = sub_222D52CAC();
  qword_280D3DB80 = result;
  return result;
}

id static Log.siriDialogEngine.getter()
{
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = qword_280D3DB80;

  return v1;
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Log(_BYTE *result, int a2, int a3)
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

uint64_t sub_222D01ADC()
{
  v0 = sub_222D5286C();
  __swift_allocate_value_buffer(v0, qword_280D3DDA8);
  __swift_project_value_buffer(v0, qword_280D3DDA8);
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = qword_280D3DB80;
  return sub_222D5287C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_222D01BBC()
{
  result = qword_280D3DAB8;
  if (!qword_280D3DAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3DAB8);
  }

  return result;
}

uint64_t sub_222D01C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D01C58();
}

uint64_t sub_222D01C2C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
}

uint64_t sub_222D01C58()
{
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t DialogLocation.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t DialogLocation.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222D01D0C()
{
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t sub_222D01D5C()
{
  type metadata accessor for DialogLocation();
  v0 = swift_allocObject();

  DialogLocation.init(builder:)(v1);
  return v0;
}

uint64_t DialogLocation.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocation.init(builder:)(a1);
  return v2;
}

uint64_t DialogLocation.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DialogLocation.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_222D01E7C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_222D01EE4();
}

void *sub_222D01EAC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_222D01EE4()
{
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t DialogLocation.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_8();
  v3 = *(a1 + 16);

  *(v1 + 24) = v3;
  return v1;
}

double sub_222D01FB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v10 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v10 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 1701667182 ? (v12 = a2 == 0xE400000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_49() & 1) != 0))
    {
LABEL_14:
      sub_222CFD4C8();
      if (v18)
      {
        *(a3 + 24) = &type metadata for SpeakableString;
        v11 = swift_allocObject();
        *a3 = v11;
        v11[2] = v17;
        v11[3] = v18;
        v11[4] = v19;
        v11[5] = v20;
        return result;
      }

      goto LABEL_44;
    }

    if (a1 != 0x636F4C74726F6873 || a2 != 0xED00006E6F697461)
    {
      OUTLINED_FUNCTION_10_0();
      if ((OUTLINED_FUNCTION_49() & 1) == 0 && (a1 != 0x61636F4C676E6F6CLL || a2 != 0xEC0000006E6F6974))
      {
        OUTLINED_FUNCTION_10_0();
        if ((OUTLINED_FUNCTION_49() & 1) == 0)
        {
          v15 = a1 == 0x7469736F70657270 && a2 == 0xEB000000006E6F69;
          if (v15 || (OUTLINED_FUNCTION_9_1(), (OUTLINED_FUNCTION_49() & 1) != 0))
          {
            OUTLINED_FUNCTION_9_1();
            goto LABEL_14;
          }

          if (a1 != 0x69736F7074736F70 || a2 != 0xEC0000006E6F6974)
          {
            OUTLINED_FUNCTION_10_0();
            if ((OUTLINED_FUNCTION_49() & 1) == 0)
            {
LABEL_44:
              result = 0.0;
              *a3 = 0u;
              *(a3 + 16) = 0u;
              return result;
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_10_0();
    goto LABEL_14;
  }

  v8 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BEF8, &qword_222D53EA0);
  *a3 = v8;

  return result;
}

BOOL sub_222D022B0()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D02308@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D022B0();
  *a2 = result;
  return result;
}

BOOL sub_222D02368@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D022B0();
  *a1 = result;
  return result;
}

uint64_t sub_222D023A0(uint64_t a1)
{
  v2 = sub_222D025F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D023DC(uint64_t a1)
{
  v2 = sub_222D025F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogLocation.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DialogLocation.__deallocating_deinit()
{
  DialogLocation.deinit();
  v0 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D0246C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF00, &qword_222D53EA8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D025F8();
  sub_222D531AC();
  v14[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BEF8, &qword_222D53EA0);
  sub_222D028C4(&qword_27D03BF10, &qword_27D03BF18);
  sub_222D5300C();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_222D025F8()
{
  result = qword_27D03BF08;
  if (!qword_27D03BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t DialogLocation.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogLocation.init(from:)(a1);
  return v2;
}

uint64_t DialogLocation.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF20, &qword_222D53EB0);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D025F8();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogLocation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BEF8, &qword_222D53EA0);
    sub_222D028C4(&qword_27D03BF28, &qword_27D03BF30);
    sub_222D52F6C();
    v12 = *(v7 + 8);
    v13 = OUTLINED_FUNCTION_9_1();
    v14(v13);
    *(v1 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D028C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03BEF8, &qword_222D53EA0);
    sub_222D02A8C(a2, 255, type metadata accessor for DialogLocationValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D02A08(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D02A8C(&qword_27D03BF38, a2, type metadata accessor for DialogLocation);
  result = sub_222D02A8C(&qword_27D03BEF0, v3, type metadata accessor for DialogLocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D02A8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D02AD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 216))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogLocation.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D02F38()
{
  result = qword_27D03BF40;
  if (!qword_27D03BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF40);
  }

  return result;
}

unint64_t sub_222D02F90()
{
  result = qword_27D03BF48;
  if (!qword_27D03BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF48);
  }

  return result;
}

unint64_t sub_222D02FE8()
{
  result = qword_27D03BF50;
  if (!qword_27D03BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03BF50);
  }

  return result;
}

uint64_t sub_222D03070()
{
  result = OUTLINED_FUNCTION_3_3();
  *(v1 + 64) = v0;
  return result;
}

uint64_t sub_222D0317C()
{
  OUTLINED_FUNCTION_3_3();
  *(v1 + 64) = v0;
}

uint64_t sub_222D031B0()
{
  type metadata accessor for DialogPersonHeight();
  OUTLINED_FUNCTION_4_1();
  swift_allocObject();

  return DialogPersonHeight.init(builder:)(v0);
}

uint64_t DialogPersonHeight.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_1();
  swift_allocObject();
  return DialogPersonHeight.init(builder:)(a1);
}

uint64_t *DialogPersonHeight.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogPersonHeight.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t DialogPersonHeight.init(builder:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = *(a1 + 64);
  return DialogAbstractMeasurement.init(builder:)(a1);
}

void sub_222D03318(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000017 && 0x8000000222D598A0 == a2;
  if (v6 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    v8 = *(v3 + 72);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v8;
  }

  else
  {
    v9 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v9 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6169766572626261 ? (v11 = a2 == 0xEB00000000646574) : (v11 = 0), v11 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x63696C6F626D7973 ? (v12 = a2 == 0xE800000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_49() & 1) != 0)))
    {
      sub_222CFA330();
      if (v14)
      {
        *(a3 + 24) = &type metadata for SpeakableString;
        v10 = swift_allocObject();
        *a3 = v10;
        v10[2] = v13;
        v10[3] = v14;
        v10[4] = v15;
        v10[5] = v16;
      }

      else
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }
    }

    else
    {

      sub_222D1C028(a1, a2, a3);
    }
  }
}

BOOL sub_222D03520()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D03590@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D03520();
  *a2 = result;
  return result;
}

unint64_t sub_222D035C4@<X0>(void *a1@<X8>)
{
  result = sub_222D03568();
  *a1 = 0xD000000000000017;
  a1[1] = v3;
  return result;
}

BOOL sub_222D03614@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D03520();
  *a1 = result;
  return result;
}

uint64_t sub_222D03640(uint64_t a1)
{
  v2 = sub_222D038C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D0367C(uint64_t a1)
{
  v2 = sub_222D038C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogPersonHeight.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1();
  swift_allocObject();
  return DialogPersonHeight.init(from:)(a1);
}

uint64_t DialogPersonHeight.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF58, &qword_222D540D0);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D038C4();
  sub_222D5318C();
  if (v2)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for DialogPersonHeight();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 72) = sub_222D52F5C() & 1;
    sub_222CE3120(a1, v13);
    v10 = DialogAbstractMeasurement.init(from:)(v13);
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v10;
}