uint64_t sub_23327625C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v2[59] = v0;

  v5 = v2[57];
  v6 = v2[56];
  v7 = v2[34];
  v8 = v2[33];
  v9 = *(v7 + 8);
  v10 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[74] = v9;
    v2[75] = v10;
    (v9)(v5, v8);

    v11 = sub_233276FD8;
  }

  else
  {
    v2[60] = v9;
    v2[61] = v10;
    v9();

    v11 = sub_23327641C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_23327641C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 320);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);

  (*(v7 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 488);
  v9 = *(v0 + 416);
  (*(v0 + 480))(*(v0 + 328), *(v0 + 264));

  v10 = *(v0 + 328);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_233276560()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_233277130;
  }

  else
  {
    v3 = sub_233276674;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233276674()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[40];
  v5 = v0[34];

  (*(v2 + 8))(v1, v3);
  v6 = v0[52];
  (*(v5 + 8))(v0[41], v0[33]);

  v7 = v0[41];
  v8 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[22];
  v15 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2332767A4()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 312);

  if (v0)
  {
    v7 = sub_233277258;
  }

  else
  {
    v7 = sub_2332768FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2332768FC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(*(v0 + 288) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 240);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

    sub_233121E04(v7, &qword_27DDE3AD0, &unk_2332A2070);
    v8 = *(v0 + 528);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 224);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 320);
    v21 = *(v0 + 296);
    v22 = *(v0 + 156);
    v23 = *(v0 + 168);
    v24 = *(v0 + 280) + 15;
    (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 240), *(v0 + 208));
    sub_23328D5CC();
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    *(v0 + 560) = v26;
    v27 = swift_task_alloc();
    *(v0 + 568) = v27;
    MEMORY[0x23839AF80]();
    v32 = (*v20 + 280);
    v33 = (*v32 + **v32);
    v28 = (*v32)[1];
    v29 = swift_task_alloc();
    *(v0 + 576) = v29;
    *v29 = v0;
    v29[1] = sub_233276C08;
    v30 = *(v0 + 528);
    v31 = *(v0 + 320);

    return v33(v30, v25, v26, v27);
  }
}

uint64_t sub_233276C08()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = v2[70];
  (*(v2[34] + 8))(v2[71], v2[33]);

  if (v0)
  {
    v6 = sub_233277340;
  }

  else
  {

    v6 = sub_233276DA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_233276DA0()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[40];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  v8 = v0[66];
  v9 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[22];
  v16 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_233276ECC()
{
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[33];
  v5 = v0[34];

  (*(v5 + 8))(v3, v4);

  v6 = v0[55];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[22];
  v14 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_233276FD8()
{
  v1 = v0[74];
  v23 = v0[75];
  v24 = v0[57];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[33];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];

  (*(v10 + 8))(v8, v9);
  (*(v3 + 8))(v2, v4);
  v1(v6, v7);

  v11 = v0[59];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[28];
  v18 = v0[24];
  v17 = v0[25];
  v20 = v0[22];
  v19 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_233277130()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[33];
  v7 = v0[34];

  (*(v2 + 8))(v1, v3);
  (*(v7 + 8))(v5, v6);

  v8 = v0[63];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[22];
  v16 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_233277258()
{
  v1 = v0[66];
  v2 = v0[40];

  v3 = v0[69];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[22];
  v11 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_233277340()
{
  v1 = v0[71];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[40];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);

  v9 = v0[73];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v16 = v0[24];
  v15 = v0[25];
  v18 = v0[22];
  v17 = v0[23];

  v19 = v0[1];

  return v19();
}

uint64_t sub_233277474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 121) = v13;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070) - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23327752C, 0, 0);
}

uint64_t sub_23327752C()
{
  v1 = *(v0 + 80);
  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  v3 = *(VoiceCommandVMa + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 120) == 1)
  {
    v4 = *(v0 + 121);
    v5 = sub_233237A1C();
    v6 = *v5;
    *(v0 + 96) = *v5;
    v7 = *(*v6 + 504);

    v35 = v7 + *v7;
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_2332778F4;
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    __asm { BRAA            X8, X16 }
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = sub_23328CC9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v24 = swift_task_alloc();
  v25 = *(VoiceCommandVMa + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  v26 = sub_23328D23C();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v19, 1, v26);
  v29 = *(v0 + 88);
  v30 = *(v0 + 16);
  if (v28 == 1)
  {
    sub_233121E04(*(v0 + 88), &qword_27DDE3AD0, &unk_2332A2070);

    (*(v21 + 56))(v30, 1, 1, v20);
  }

  else
  {
    MEMORY[0x23839AF80]();
    (*(v27 + 8))(v29, v26);
    v31 = *(v21 + 32);
    v31(v23, v24, v20);

    v31(v30, v23, v20);
    (*(v21 + 56))(v30, 0, 1, v20);
  }

  v32 = *(v0 + 88);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2332778F4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_233277AB8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_233277A10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233277A10()
{
  v1 = v0[2];
  v2 = sub_23328CC9C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_233277AB8()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_233277B24()
{
  v1 = v0;
  v2 = sub_23328D23C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v46 = &v44 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v44 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  v24 = VoiceCommandVMa[5];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  v53 = v24;
  v54 = v25;
  sub_23328D5CC();
  v50 = v3;
  v26 = 1;
  v55 = *(v3 + 48);
  LODWORD(v24) = v55(v22, 1, v2);
  sub_233121E04(v22, &qword_27DDE3AD0, &unk_2332A2070);
  if (v24 == 1)
  {
    v27 = v1 + VoiceCommandVMa[6];
    sub_23328D5CC();
    v26 = v55(v19, 1, v2) != 1;
    sub_233121E04(v19, &qword_27DDE3AD0, &unk_2332A2070);
  }

  v28 = VoiceCommandVMa[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v26 && v58)
  {
    goto LABEL_5;
  }

  v44 = VoiceCommandVMa;
  v30 = v1 + VoiceCommandVMa[12];
  sub_23328D54C();
  v31 = v2;
  v32 = v52;
  if (v57 == 1)
  {
    v33 = v48;
    sub_23328D5CC();
    v34 = v55(v33, 1, v2);
    sub_233121E04(v33, &qword_27DDE3AD0, &unk_2332A2070);
    if (v34 == 1)
    {
      sub_23328D54C();
      if ((v56 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v35 = v1 + v44[6];
    v36 = v46;
    sub_23328D5CC();
    v37 = v55(v36, 1, v2);
    sub_233121E04(v36, &qword_27DDE3AD0, &unk_2332A2070);
    if (v37 != 1)
    {
LABEL_5:
      sub_23328D4AC();
      sub_23327A558(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
      swift_allocError();
      sub_23328D4BC();
      return swift_willThrow();
    }
  }

  v38 = v49;
  sub_23328D5CC();
  if (v55(v38, 1, v31) == 1)
  {
    sub_233121E04(v38, &qword_27DDE3AD0, &unk_2332A2070);
    v39 = v50;
  }

  else
  {
    v39 = v50;
    (*(v50 + 32))(v32, v38, v31);
    v40 = v51;
    sub_23328D21C();
    if (v40)
    {
      return (*(v39 + 8))(v32, v31);
    }

    (*(v39 + 8))(v32, v31);
  }

  v41 = v1 + v44[6];
  v42 = v47;
  sub_23328D5CC();
  if (v55(v42, 1, v31) == 1)
  {
    return sub_233121E04(v42, &qword_27DDE3AD0, &unk_2332A2070);
  }

  v43 = v45;
  (*(v39 + 32))(v45, v42, v31);
  sub_23328D21C();
  return (*(v39 + 8))(v43, v31);
}

uint64_t sub_2332781F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F43657361726870;
    v6 = 0x6172547472617473;
    if (a1 != 8)
    {
      v6 = 0x676E696E69617274;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7954747069726373;
    if (a1 != 5)
    {
      v7 = 0x44496563696F76;
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
    v1 = 1701667182;
    v2 = 0x7461446C65646F6DLL;
    v3 = 0x4449656C61636F6CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E696E69617274;
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

uint64_t sub_233278360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23327AAC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233278394(uint64_t a1)
{
  v2 = sub_23327A0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332783D0(uint64_t a1)
{
  v2 = sub_23327A0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327840C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_23328D3AC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D53C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D4DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v47 - v16;
  sub_23328D3BC();
  v18 = sub_23328D3CC();
  v19 = *(v18 - 8);
  v57 = *(v19 + 56);
  v20 = v19 + 56;
  v54 = v18;
  v57(v17, 0, 1, v18);
  v21 = v20;
  v22 = sub_23328D42C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v26 = v22;
  v55 = v22;
  v24(v13, 1, 1);
  v56 = v24;
  sub_23328D4CC();
  v50 = v7;
  sub_23328D52C();
  sub_23328D5FC();
  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  v48 = VoiceCommandVMa[5];
  sub_23328D3BC();
  v57(v17, 0, 1, v18);
  v52 = v21;
  (v24)(v13, 1, 1, v26);
  v27 = v25;
  sub_23328D4CC();
  sub_23328D52C();
  v47[2] = sub_23328D23C();
  v47[1] = sub_23327A558(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  sub_23328D5DC();
  v28 = VoiceCommandVMa;
  v48 = VoiceCommandVMa[6];
  sub_23328D3BC();
  v29 = v54;
  v30 = v57;
  v57(v17, 0, 1, v54);
  v31 = v55;
  v32 = v56;
  v51 = v27;
  (v56)(v13, 1, 1, v55);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v48 = v28[7];
  sub_23328D3BC();
  v30(v17, 0, 1, v29);
  v32(v13, 1, 1, v31);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v33 = VoiceCommandVMa;
  v34 = VoiceCommandVMa[8];
  sub_23328D3BC();
  v35 = v54;
  v36 = v57;
  v57(v17, 0, 1, v54);
  sub_23328D4CC();
  sub_23328D58C();
  v48 = v33[9];
  v37 = v33;
  v59 = 0x746C7561666564;
  v60 = 0xE700000000000000;
  sub_23328D3BC();
  v36(v17, 0, 1, v35);
  v38 = v55;
  v39 = v56;
  (v56)(v13, 1, 1, v55);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v48 = v37[10];
  sub_23328D3BC();
  v40 = v54;
  v41 = v57;
  v57(v17, 0, 1, v54);
  v39(v13, 1, 1, v38);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  v42 = VoiceCommandVMa;
  v43 = VoiceCommandVMa[11];
  sub_23328D3BC();
  v41(v17, 0, 1, v40);
  (v56)(v13, 1, 1, v55);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v44 = v42[12];
  sub_23328D3BC();
  v41(v17, 0, 1, v40);
  sub_23328D4CC();
  sub_23328D58C();
  v45 = v42[13];
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa);
  return sub_23328D3EC();
}

uint64_t sub_233278C6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a1;
  v116 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v115 = *(v118 - 8);
  v2 = *(v115 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v115 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v120 = *(v123 - 8);
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v115 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v127 = *(v129 - 8);
  v6 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v115 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v130 = *(v133 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v133);
  v125 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v132 = &v115 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  v136 = *(v137 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = &v115 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v141 = *(v140 - 8);
  v18 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  v126 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v142 = &v115 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AE8, qword_2332A2090);
  v139 = *(v143 - 8);
  v22 = *(v139 + 64);
  MEMORY[0x28223BE20](v143);
  v151 = &v115 - v23;
  v24 = sub_23328D3AC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v148 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23328D53C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_23328D4DC();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v147 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v115 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v115 - v40;
  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  v43 = *(VoiceCommandVMa - 8);
  v159 = (VoiceCommandVMa - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](VoiceCommandVMa - 8);
  v162 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v157 = sub_23328D3CC();
  v46 = *(v157 - 8);
  v47 = *(v46 + 56);
  v158 = v46 + 56;
  (v47)(v41, 0, 1, v157);
  v155 = v47;
  v156 = sub_23328D42C();
  v48 = *(v156 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v49(v37, 1, 1, v156);
  v152 = v49;
  v153 = v50;
  sub_23328D4CC();
  v154 = v30;
  sub_23328D52C();
  sub_23328D5FC();
  v51 = v159[7];
  sub_23328D3BC();
  v52 = v157;
  (v47)(v41, 0, 1, v157);
  v53 = v156;
  v49(v37, 1, 1, v156);
  sub_23328D4CC();
  sub_23328D52C();
  v145 = sub_23328D23C();
  v144 = sub_23327A558(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  v134 = v51;
  v54 = v37;
  sub_23328D5DC();
  v55 = v159[8];
  v56 = v159;
  sub_23328D3BC();
  (v155)(v41, 0, 1, v52);
  v57 = v37;
  v58 = v152;
  v152(v57, 1, 1, v53);
  sub_23328D4CC();
  sub_23328D52C();
  v131 = v55;
  v59 = v54;
  sub_23328D5DC();
  v60 = v56[9];
  sub_23328D3BC();
  v61 = v155;
  (v155)(v41, 0, 1, v157);
  v146 = v59;
  v58(v59, 1, 1, v156);
  sub_23328D4CC();
  sub_23328D52C();
  v145 = v60;
  sub_23328D5DC();
  v62 = v159;
  v63 = v159[10];
  sub_23328D3BC();
  v64 = v157;
  (v61)(v41, 0, 1, v157);
  sub_23328D4CC();
  v144 = v63;
  sub_23328D58C();
  v65 = v62[11];
  v160 = 0x746C7561666564;
  v161 = 0xE700000000000000;
  sub_23328D3BC();
  (v61)(v41, 0, 1, v64);
  v66 = v146;
  v67 = v156;
  v68 = v152;
  v152(v146, 1, 1, v156);
  sub_23328D4CC();
  sub_23328D52C();
  v124 = v65;
  sub_23328D5EC();
  v69 = v159;
  v70 = v159[12];
  sub_23328D3BC();
  (v155)(v41, 0, 1, v157);
  v68(v66, 1, 1, v67);
  sub_23328D4CC();
  sub_23328D52C();
  v121 = v70;
  sub_23328D5BC();
  v71 = v69[13];
  sub_23328D3BC();
  v72 = v157;
  v73 = v155;
  (v155)(v41, 0, 1, v157);
  v152(v66, 1, 1, v156);
  sub_23328D4CC();
  sub_23328D52C();
  v156 = v71;
  sub_23328D5DC();
  v74 = v159;
  v75 = v159[14];
  sub_23328D3BC();
  v76 = v72;
  v77 = v75;
  (v73)(v41, 0, 1, v76);
  sub_23328D4CC();
  v78 = v162;
  v79 = v150;
  sub_23328D58C();
  v80 = v74[15];
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa);
  sub_23328D3EC();
  v81 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  sub_23327A0AC();
  v82 = v149;
  sub_23328E68C();
  if (v82)
  {
    __swift_destroy_boxed_opaque_existential_0(v79);
    v114 = v78;
  }

  else
  {
    v159 = v80;
    v83 = v138;
    v84 = v141;
    LOBYTE(v160) = 0;
    v85 = sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v86 = v140;
    sub_23328E41C();
    v87 = v86;
    v157 = v77;
    v158 = v85;
    v89 = v84 + 40;
    v88 = *(v84 + 40);
    v90 = v162;
    v88(v162, v142, v87);
    LOBYTE(v160) = 1;
    sub_23315246C(&qword_27DDE3AF0, &qword_27DDE3AC8, &qword_2332A2068);
    v91 = v137;
    sub_23328E41C();
    v155 = v88;
    v141 = v89;
    v93 = *(v136 + 40);
    v93(&v90[v134], v83, v91);
    LOBYTE(v160) = 2;
    v94 = v135;
    sub_23328E41C();
    v93(&v162[v131], v94, v91);
    LOBYTE(v160) = 3;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v95 = v132;
    v96 = v133;
    sub_23328E41C();
    v98 = v130 + 40;
    v97 = *(v130 + 40);
    v97(&v162[v145], v95, v96);
    LOBYTE(v160) = 4;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v99 = v128;
    v100 = v129;
    sub_23328E41C();
    v154 = v97;
    v130 = v98;
    v101 = *(v127 + 40);
    v101(&v162[v144], v99, v100);
    LOBYTE(v160) = 5;
    v102 = v126;
    v103 = v140;
    sub_23328E41C();
    v155(&v162[v124], v102, v103);
    LOBYTE(v160) = 6;
    v104 = v125;
    sub_23328E41C();
    v105 = v139;
    v154(&v162[v121], v104, v96);
    LOBYTE(v160) = 7;
    sub_23315246C(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80);
    v106 = v122;
    v107 = v123;
    sub_23328E41C();
    v108 = v150;
    (*(v120 + 40))(&v162[v156], v106, v107);
    LOBYTE(v160) = 8;
    v109 = v119;
    v110 = v129;
    sub_23328E41C();
    v111 = v162;
    v101(&v162[v157], v109, v110);
    LOBYTE(v160) = 9;
    sub_23315246C(&qword_27DDE3AF8, &qword_27DDE3AD8, &qword_2332A2080);
    v112 = v143;
    v113 = v151;
    sub_23328E41C();
    (*(v105 + 8))(v113, v112);
    (*(v115 + 40))(v159 + v111, v117, v118);
    sub_23327A160(v111, v116, _s18CreateVoiceCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v108);
    v114 = v111;
  }

  return sub_23327A100(v114, _s18CreateVoiceCommandVMa);
}

unint64_t sub_23327A0AC()
{
  result = qword_27DE04548[0];
  if (!qword_27DE04548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04548);
  }

  return result;
}

uint64_t sub_23327A100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23327A160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23327A258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233274728();
}

uint64_t sub_23327A32C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327A558(&qword_27DDE3B00, _s18CreateVoiceCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23327A450@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE04540 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CB0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327A558(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23327A5FC()
{
  sub_23327A78C(319, &qword_27DDE3458, MEMORY[0x277D837D0], MEMORY[0x277CEEA60]);
  if (v0 <= 0x3F)
  {
    sub_23322966C(319, &qword_27DDE3B28, &qword_27DDE3AD0, &unk_2332A2070);
    if (v1 <= 0x3F)
    {
      sub_23322966C(319, &qword_27DDE3460, &qword_27DDE1A90, &unk_233290970);
      if (v2 <= 0x3F)
      {
        sub_23327A78C(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
        if (v3 <= 0x3F)
        {
          sub_23322966C(319, &qword_27DDE3468, &qword_27DDE3470, &qword_2332A2200);
          if (v4 <= 0x3F)
          {
            sub_23327A7DC();
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

void sub_23327A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23327A7DC()
{
  if (!qword_27DDE3B30)
  {
    _s19TrainingOptionGroupVMa(255);
    sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa);
    v0 = sub_23328D3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3B30);
    }
  }
}

uint64_t _s18CreateVoiceCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18CreateVoiceCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23327A9C4()
{
  result = qword_27DE04960[0];
  if (!qword_27DE04960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04960);
  }

  return result;
}

unint64_t sub_23327AA1C()
{
  result = qword_27DE04A70;
  if (!qword_27DE04A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE04A70);
  }

  return result;
}

unint64_t sub_23327AA74()
{
  result = qword_27DE04A78;
  if (!qword_27DE04A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE04A78);
  }

  return result;
}

uint64_t sub_23327AAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000061746144 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446C65646F6DLL && a2 == 0xE900000000000061 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002332AF490 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570 || (sub_23328E54C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43657361726870 && a2 == 0xEB00000000746E75 || (sub_23328E54C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6172547472617473 && a2 == 0xED0000676E696E69 || (sub_23328E54C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEF736E6F6974704FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23327AE24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08CC8);
  __swift_project_value_buffer(v4, qword_27DE08CC8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s23ListTrainingDataCommandVMa()
{
  result = qword_27DE04E10;
  if (!qword_27DE04E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23327AFEC()
{
  sub_23328D20C();
  v1 = *(v0 + 16);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 24) = *v2;
  v4 = sub_23328CE8C();
  *(v0 + 32) = v4;
  v5 = *(v4 - 8);
  *(v0 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v8 = *(_s23ListTrainingDataCommandVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v9 = *(v0 + 72);
  v10 = *(*v3 + 248);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *v12 = v0;
  v12[1] = sub_23327B228;

  return v14(v7, v9);
}

uint64_t sub_23327B228()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  if (v0)
  {
    v5 = sub_23327B400;
  }

  else
  {

    v5 = sub_23327B39C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23327B39C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23327B400()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_23327B470()
{
  if (*v0)
  {
    result = 7762787;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_23327B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7762787 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23327B56C(uint64_t a1)
{
  v2 = sub_23327BF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327B5A8(uint64_t a1)
{
  v2 = sub_23327BF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327B5E4()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_23328D42C();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v15 = *(_s23ListTrainingDataCommandVMa() + 20);
  sub_23328D3BC();
  v13(v11, 0, 1, v12);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23327B894@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v43 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v42 = *(v45 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3B38, qword_2332A2328);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - v6;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = _s23ListTrainingDataCommandVMa();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v24 = sub_23328D3CC();
  v48 = *(*(v24 - 8) + 56);
  (v48)(v18, 0, 1, v24);
  v25 = sub_23328D42C();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v26 = *(v20 + 28);
  sub_23328D3BC();
  (v48)(v18, 0, 1, v24);
  v27 = v50;
  sub_23328D4CC();
  sub_23328D58C();
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_23327BF00();
  v29 = v49;
  v30 = v51;
  sub_23328E68C();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    v41 = v23;
  }

  else
  {
    v51 = v23;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v48 = &v42;
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x28223BE20](v31);
    v35 = &v42 - v34;
    v53 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v36 = v47;
    sub_23328E41C();
    (*(v32 + 40))(v51, v35, v31);
    v52 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v38 = v44;
    v37 = v45;
    sub_23328E41C();
    (*(v46 + 8))(v29, v36);
    v40 = v51;
    (*(v42 + 40))(&v51[v26], v38, v37);
    sub_23327BFB0(v40, v43);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v41 = v40;
  }

  return sub_23327BF54(v41);
}

unint64_t sub_23327BF00()
{
  result = qword_27DE04B08[0];
  if (!qword_27DE04B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04B08);
  }

  return result;
}

uint64_t sub_23327BF54(uint64_t a1)
{
  v2 = _s23ListTrainingDataCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327BFB0(uint64_t a1, uint64_t a2)
{
  v4 = _s23ListTrainingDataCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23327C07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23327AFCC();
}

uint64_t sub_23327C13C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327C32C(&qword_27DDE3B40);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23327C238@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE04B00 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327C32C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s23ListTrainingDataCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23327C3C8()
{
  result = qword_27DE04F20[0];
  if (!qword_27DE04F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04F20);
  }

  return result;
}

unint64_t sub_23327C420()
{
  result = qword_27DE05030;
  if (!qword_27DE05030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE05030);
  }

  return result;
}

unint64_t sub_23327C478()
{
  result = qword_27DE05038[0];
  if (!qword_27DE05038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05038);
  }

  return result;
}

uint64_t sub_23327C4CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08CE0);
  __swift_project_value_buffer(v4, qword_27DE08CE0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23327C644()
{
  sub_23328D20C();
  v1 = *(**sub_233237A1C() + 424);

  v1(v2);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_23327C71C()
{
  result = qword_27DDE3B68;
  if (!qword_27DDE3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B68);
  }

  return result;
}

unint64_t sub_23327C774()
{
  result = qword_27DDE3B70;
  if (!qword_27DDE3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B70);
  }

  return result;
}

unint64_t sub_23327C7CC()
{
  result = qword_27DDE3B78;
  if (!qword_27DDE3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B78);
  }

  return result;
}

uint64_t sub_23327C820(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327C71C();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_23327C8D0()
{
  result = qword_27DDE3B80;
  if (!qword_27DDE3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B80);
  }

  return result;
}

uint64_t sub_23327C924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE050C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CE0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23327C9E8()
{
  result = qword_27DDE3B88;
  if (!qword_27DDE3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B88);
  }

  return result;
}

uint64_t sub_23327CA4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08CF8);
  __swift_project_value_buffer(v4, qword_27DE08CF8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23327CBB0()
{
  sub_23328D20C();
  v1 = *(v0 + 16);
  v2 = *sub_233237A1C();
  v3 = sub_23328CE8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  (*(*v2 + 240))(v6);
  (*(v4 + 8))(v6, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23327CD2C(uint64_t a1)
{
  v2 = sub_23327D268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327CD68(uint64_t a1)
{
  v2 = sub_23327D268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327CDA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3B90, qword_2332A2708);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s11OpenCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23327D268();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_23327D318(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23327D2BC(v22);
}

uint64_t _s11OpenCommandVMa()
{
  result = qword_27DE056E0;
  if (!qword_27DE056E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23327D268()
{
  result = qword_27DE053D8[0];
  if (!qword_27DE053D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE053D8);
  }

  return result;
}

uint64_t sub_23327D2BC(uint64_t a1)
{
  v2 = _s11OpenCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327D318(uint64_t a1, uint64_t a2)
{
  v4 = _s11OpenCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23327D418(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327D608(&qword_27DDE3B98);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23327D514@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE053D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CF8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327D608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s11OpenCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23327D64C()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23327D8D4()
{
  result = qword_27DE057F0[0];
  if (!qword_27DE057F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE057F0);
  }

  return result;
}

unint64_t sub_23327D92C()
{
  result = qword_27DE05900;
  if (!qword_27DE05900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE05900);
  }

  return result;
}

unint64_t sub_23327D984()
{
  result = qword_27DE05908[0];
  if (!qword_27DE05908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05908);
  }

  return result;
}

uint64_t sub_23327D9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D10);
  __swift_project_value_buffer(v4, qword_27DE08D10);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23327DB5C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 376);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B0F0;

  return v7();
}

unint64_t sub_23327DCDC()
{
  result = qword_27DDE3BC0;
  if (!qword_27DDE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BC0);
  }

  return result;
}

unint64_t sub_23327DD34()
{
  result = qword_27DDE3BC8;
  if (!qword_27DDE3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BC8);
  }

  return result;
}

uint64_t sub_23327DDA4()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 376);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B474;

  return v7();
}

unint64_t sub_23327DF24()
{
  result = qword_27DDE3BD0;
  if (!qword_27DDE3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BD0);
  }

  return result;
}

uint64_t sub_23327DF78(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327DCDC();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_23327E028()
{
  result = qword_27DDE3BD8;
  if (!qword_27DDE3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BD8);
  }

  return result;
}

uint64_t sub_23327E07C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE05990 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23327E140()
{
  result = qword_27DDE3BE0;
  if (!qword_27DDE3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BE0);
  }

  return result;
}

uint64_t sub_23327E1A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D28);
  __swift_project_value_buffer(v4, qword_27DE08D28);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23327E2FC@<X0>(_BYTE *a1@<X8>)
{

  v2 = sub_23328E37C();

  if (v2 >= 4)
  {
    sub_23328E24C();

    v22 = MEMORY[0x277D84F90];
    sub_23312676C(0, 4, 0);
    v4 = v22;
    v6 = *(v22 + 16);
    v5 = *(v22 + 24);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      sub_23312676C((v5 > 1), v6 + 1, 1);
      v4 = v22;
    }

    *(v4 + 16) = v7;
    v8 = v4 + 16 * v6;
    *(v8 + 32) = 0x746C7561666564;
    *(v8 + 40) = 0xE700000000000000;
    v9 = *(v4 + 24);
    v10 = v6 + 2;
    if (v7 >= v9 >> 1)
    {
      sub_23312676C((v9 > 1), v10, 1);
    }

    *(v4 + 16) = v10;
    v11 = v4 + 16 * v7;
    *(v11 + 32) = 0x64696F6964726163;
    *(v11 + 40) = 0xE800000000000000;
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      sub_23312676C((v12 > 1), v13 + 1, 1);
    }

    *(v4 + 16) = v14;
    v15 = v4 + 16 * v13;
    *(v15 + 32) = 0x6964726163627573;
    *(v15 + 40) = 0xEB0000000064696FLL;
    v16 = *(v4 + 24);
    v17 = v13 + 2;
    if (v14 >= v16 >> 1)
    {
      sub_23312676C((v16 > 1), v17, 1);
    }

    *(v4 + 16) = v17;
    v18 = v4 + 16 * v14;
    *(v18 + 32) = 0x65726964696E6D6FLL;
    *(v18 + 40) = 0xEF6C616E6F697463;
    v19 = MEMORY[0x23839B960](v4, MEMORY[0x277D837D0]);
    v21 = v20;

    MEMORY[0x23839B7E0](v19, v21);

    sub_23328D4AC();
    sub_23327FF08(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  else
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_23327E5FC()
{
  sub_23328D20C();
  v1 = *(v0 + 16);
  v2 = *sub_233237A1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  sub_23328D35C();
  v3 = *(v0 + 24);
  if (*(v0 + 24) > 1u)
  {
    v4 = MEMORY[0x277CB8140];
    if (v3 != 2)
    {
      v4 = MEMORY[0x277CB8138];
    }
  }

  else
  {
    if (!*(v0 + 24))
    {
      goto LABEL_7;
    }

    v4 = MEMORY[0x277CB8130];
  }

  v3 = *v4;
  v5 = *v4;
LABEL_7:
  (*(*v2 + 488))(v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23327E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23327E7CC(uint64_t a1)
{
  v2 = sub_23327F9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327E808(uint64_t a1)
{
  v2 = sub_23327F9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327E844()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332AF720);
  v30 = MEMORY[0x277D84F90];
  sub_23312676C(0, 4, 0);
  v8 = v30;
  v10 = *(v30 + 16);
  v9 = *(v30 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    sub_23312676C((v9 > 1), v10 + 1, 1);
    v8 = v30;
  }

  *(v8 + 16) = v11;
  v12 = v8 + 16 * v10;
  *(v12 + 32) = 0x746C7561666564;
  *(v12 + 40) = 0xE700000000000000;
  v30 = v8;
  v13 = *(v8 + 24);
  v14 = v10 + 2;
  if (v11 >= v13 >> 1)
  {
    sub_23312676C((v13 > 1), v14, 1);
    v8 = v30;
  }

  *(v8 + 16) = v14;
  v15 = v8 + 16 * v11;
  *(v15 + 32) = 0x64696F6964726163;
  *(v15 + 40) = 0xE800000000000000;
  v30 = v8;
  v17 = *(v8 + 16);
  v16 = *(v8 + 24);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    sub_23312676C((v16 > 1), v17 + 1, 1);
    v8 = v30;
  }

  *(v8 + 16) = v18;
  v19 = v8 + 16 * v17;
  *(v19 + 32) = 0x6964726163627573;
  *(v19 + 40) = 0xEB0000000064696FLL;
  v30 = v8;
  v20 = *(v8 + 24);
  v21 = v17 + 2;
  if (v18 >= v20 >> 1)
  {
    sub_23312676C((v20 > 1), v21, 1);
    v8 = v30;
  }

  *(v8 + 16) = v21;
  v22 = v8 + 16 * v18;
  *(v22 + 32) = 0x65726964696E6D6FLL;
  *(v22 + 40) = 0xEF6C616E6F697463;
  v23 = MEMORY[0x23839B960](v8, MEMORY[0x277D837D0]);
  v25 = v24;

  MEMORY[0x23839B7E0](v23, v25);

  v26 = sub_23328D3CC();
  sub_23327FF08(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  sub_23328E57C();
  (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
  v27 = sub_23328D42C();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  return sub_23328D36C();
}

uint64_t sub_23327EC10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  v46 = *(v50 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BF0, qword_2332A2AF0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  v17 = _s19PolarPatternCommandVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332AF720);
  v54 = MEMORY[0x277D84F90];
  sub_23312676C(0, 4, 0);
  v21 = v54;
  v23 = *(v54 + 16);
  v22 = *(v54 + 24);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_23312676C((v22 > 1), v23 + 1, 1);
    v21 = v54;
  }

  *(v21 + 16) = v24;
  v25 = v21 + 16 * v23;
  *(v25 + 32) = 0x746C7561666564;
  *(v25 + 40) = 0xE700000000000000;
  v54 = v21;
  v26 = *(v21 + 24);
  v27 = v23 + 2;
  if (v24 >= v26 >> 1)
  {
    sub_23312676C((v26 > 1), v27, 1);
    v21 = v54;
  }

  *(v21 + 16) = v27;
  v28 = v21 + 16 * v24;
  *(v28 + 32) = 0x64696F6964726163;
  *(v28 + 40) = 0xE800000000000000;
  v54 = v21;
  v30 = *(v21 + 16);
  v29 = *(v21 + 24);
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    sub_23312676C((v29 > 1), v30 + 1, 1);
    v21 = v54;
  }

  *(v21 + 16) = v31;
  v32 = v21 + 16 * v30;
  *(v32 + 32) = 0x6964726163627573;
  *(v32 + 40) = 0xEB0000000064696FLL;
  v54 = v21;
  v33 = *(v21 + 24);
  v34 = v30 + 2;
  if (v31 >= v33 >> 1)
  {
    sub_23312676C((v33 > 1), v34, 1);
    v21 = v54;
  }

  *(v21 + 16) = v34;
  v35 = v21 + 16 * v31;
  *(v35 + 32) = 0x65726964696E6D6FLL;
  *(v35 + 40) = 0xEF6C616E6F697463;
  v36 = MEMORY[0x23839B960](v21, MEMORY[0x277D837D0]);
  v38 = v37;

  MEMORY[0x23839B7E0](v36, v38);

  v39 = sub_23328D3CC();
  sub_23327FF08(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  sub_23328E57C();
  (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
  v40 = sub_23328D42C();
  (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
  sub_23328D36C();
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23327F9E4();
  v42 = v51;
  sub_23328E68C();
  if (!v42)
  {
    sub_23315246C(&qword_27DDE3BF8, &qword_27DDE3BE8, &qword_2332A2AE0);
    v44 = v49;
    v43 = v50;
    sub_23328E41C();
    (*(v48 + 8))(v8, v5);
    (*(v46 + 40))(v20, v44, v43);
    sub_23327FA94(v20, v47);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23327FA38(v20);
}

uint64_t sub_23327F238()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23327E5DC();
}

uint64_t sub_23327F2C4(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327FF08(&qword_27DDE3C00, _s19PolarPatternCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23327F3A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE05CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D28);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327F49C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6964726163627573;
    }

    else
    {
      v4 = 0x65726964696E6D6FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xEB0000000064696FLL;
    }

    else
    {
      v5 = 0xEF6C616E6F697463;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64696F6964726163;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6964726163627573;
  v8 = 0xEB0000000064696FLL;
  if (a2 != 2)
  {
    v7 = 0x65726964696E6D6FLL;
    v8 = 0xEF6C616E6F697463;
  }

  if (a2)
  {
    v2 = 0x64696F6964726163;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_23327F608()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23327F6E0()
{
  *v0;
  *v0;
  *v0;
  sub_23328DA3C();
}

uint64_t sub_23327F7A4()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23327F878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23327F94C();
  *a2 = result;
  return result;
}

void sub_23327F8A8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEB0000000064696FLL;
  v5 = 0x6964726163627573;
  if (*v1 != 2)
  {
    v5 = 0x65726964696E6D6FLL;
    v4 = 0xEF6C616E6F697463;
  }

  if (*v1)
  {
    v3 = 0x64696F6964726163;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23327F94C()
{
  v0 = sub_23328E37C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _s19PolarPatternCommandVMa()
{
  result = qword_27DE061B0;
  if (!qword_27DE061B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23327F9E4()
{
  result = qword_27DE05CA8[0];
  if (!qword_27DE05CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05CA8);
  }

  return result;
}

uint64_t sub_23327FA38(uint64_t a1)
{
  v2 = _s19PolarPatternCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327FA94(uint64_t a1, uint64_t a2)
{
  v4 = _s19PolarPatternCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23327FC64()
{
  result = qword_27DDE3C28;
  if (!qword_27DDE3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3C28);
  }

  return result;
}

void sub_23327FD24()
{
  sub_23327FD90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23327FD90()
{
  if (!qword_27DDE3C40)
  {
    v0 = sub_23328D38C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3C40);
    }
  }
}

unint64_t sub_23327FE04()
{
  result = qword_27DE062C0[0];
  if (!qword_27DE062C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE062C0);
  }

  return result;
}

unint64_t sub_23327FE5C()
{
  result = qword_27DE063D0;
  if (!qword_27DE063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE063D0);
  }

  return result;
}

unint64_t sub_23327FEB4()
{
  result = qword_27DE063D8[0];
  if (!qword_27DE063D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE063D8);
  }

  return result;
}

uint64_t sub_23327FF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23327FF50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D40);
  __swift_project_value_buffer(v4, qword_27DE08D40);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s25ScriptMetadataPathCommandVMa()
{
  result = qword_27DE06770;
  if (!qword_27DE06770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233280118()
{
  sub_23328D20C();
  v1 = v0[6];
  v2 = sub_23328CC9C();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_233237A1C();
  v7 = *v6;
  v0[10] = *v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v8 = v0[2];
  v9 = v0[3];
  v0[11] = v9;
  v10 = v1 + *(_s25ScriptMetadataPathCommandVMa() + 20);
  sub_23328D5CC();
  v11 = v0[4];
  v12 = v0[5];
  v0[12] = v12;
  v16 = (*v7 + 384);
  v17 = (*v16 + **v16);
  v13 = (*v16)[1];
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_233280384;

  return v17(v5, v8, v9, v11, v12);
}

uint64_t sub_233280384()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23328057C;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    v4 = sub_2332804B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2332804B4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_23328D30C();
  sub_23328CC6C();
  sub_23328D27C();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23328057C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[14];
  v6 = v0[1];

  return v6();
}

uint64_t sub_233280604(uint64_t a1)
{
  v2 = sub_233280FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233280640(uint64_t a1)
{
  v2 = sub_233280FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23328067C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_23328D53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23328D4DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - v11;
  v19 = 0x53552D6E65;
  v20 = 0xE500000000000000;
  sub_23328D3BC();
  v13 = sub_23328D3CC();
  v18[0] = *(*(v13 - 8) + 56);
  (v18[0])(v12, 0, 1, v13);
  v14 = sub_23328D42C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v16 = *(_s25ScriptMetadataPathCommandVMa() + 20);
  v19 = 0x746C7561666564;
  v20 = 0xE700000000000000;
  sub_23328D3BC();
  (v18[0])(v12, 0, 1, v13);
  v15(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_2332809A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v42 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v48 = *(v46 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C48, qword_2332A2E70);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v42 - v8;
  v9 = sub_23328D53C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D4DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - v21;
  v23 = _s25ScriptMetadataPathCommandVMa();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0x53552D6E65;
  v57 = 0xE500000000000000;
  sub_23328D3BC();
  v28 = sub_23328D3CC();
  v29 = *(v28 - 8);
  v51 = *(v29 + 56);
  v52 = v29 + 56;
  v51(v22, 0, 1, v28);
  v30 = sub_23328D42C();
  v49 = *(*(v30 - 8) + 56);
  v49(v18, 1, 1, v30);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v31 = *(v24 + 28);
  v56 = 0x746C7561666564;
  v57 = 0xE700000000000000;
  sub_23328D3BC();
  v51(v22, 0, 1, v28);
  v32 = v30;
  v33 = v55;
  v49(v18, 1, 1, v32);
  sub_23328D4CC();
  sub_23328D52C();
  v52 = v31;
  sub_23328D5EC();
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_233280FBC();
  v35 = v54;
  v36 = v58;
  sub_23328E68C();
  if (!v36)
  {
    v37 = v48;
    LOBYTE(v56) = 0;
    sub_23326E610();
    v38 = v46;
    v39 = v45;
    sub_23328E41C();
    v40 = *(v37 + 40);
    v48 = v37 + 40;
    v58 = v40;
    v40(v27, v47, v38);
    LOBYTE(v56) = 1;
    sub_23328E41C();
    (*(v44 + 8))(v35, v39);
    v58(&v27[v52], v43, v38);
    sub_23328106C(v27, v42);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_233281010(v27);
}

unint64_t sub_233280FBC()
{
  result = qword_27DE06468[0];
  if (!qword_27DE06468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06468);
  }

  return result;
}

uint64_t sub_233281010(uint64_t a1)
{
  v2 = _s25ScriptMetadataPathCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23328106C(uint64_t a1, uint64_t a2)
{
  v4 = _s25ScriptMetadataPathCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233281138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2332800F8();
}

uint64_t sub_2332811F8(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2332813E8(&qword_27DDE3C50);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332812F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06460 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332813E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25ScriptMetadataPathCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_233281484()
{
  result = qword_27DE06880[0];
  if (!qword_27DE06880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06880);
  }

  return result;
}

unint64_t sub_2332814DC()
{
  result = qword_27DE06990;
  if (!qword_27DE06990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE06990);
  }

  return result;
}

unint64_t sub_233281534()
{
  result = qword_27DE06998[0];
  if (!qword_27DE06998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06998);
  }

  return result;
}

uint64_t sub_233281588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D58);
  __swift_project_value_buffer(v4, qword_27DE08D58);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233281704()
{
  sub_23328D20C();
  v1 = v0[3];
  v2 = *sub_233237A1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  sub_23328D5CC();
  (*(*v2 + 496))(v0[2]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_233281814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233281898(uint64_t a1)
{
  v2 = sub_233281DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332818D4(uint64_t a1)
{
  v2 = sub_233281DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233281910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C80, qword_2332A3100);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_23328D53C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_23328D4DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v22 = _s21SetPhraseCountCommandVMa();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v26 = sub_23328D3CC();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  v27 = sub_23328D42C();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233281DBC();
  v29 = v37;
  sub_23328E68C();
  if (!v29)
  {
    v30 = v33;
    v31 = v35;
    sub_233281E6C();
    sub_23328E41C();
    (*(v34 + 8))(v9, v6);
    (*(v30 + 40))(v25, v36, v3);
    sub_233281ED0(v25, v31);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233281E10(v25);
}

uint64_t _s21SetPhraseCountCommandVMa()
{
  result = qword_27DE06D30;
  if (!qword_27DE06D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233281DBC()
{
  result = qword_27DE06A28[0];
  if (!qword_27DE06A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06A28);
  }

  return result;
}

uint64_t sub_233281E10(uint64_t a1)
{
  v2 = _s21SetPhraseCountCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_233281E6C()
{
  result = qword_27DDE3C88;
  if (!qword_27DDE3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3C78, &unk_2332A30F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3C88);
  }

  return result;
}

uint64_t sub_233281ED0(uint64_t a1, uint64_t a2)
{
  v4 = _s21SetPhraseCountCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233281FD0(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2332821C0(&qword_27DDE3C90);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332820CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06A20 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332821C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s21SetPhraseCountCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233282204()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5FC();
}

void sub_233282470()
{
  sub_2332824DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2332824DC()
{
  if (!qword_27DDE3CB8)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3CB8);
    }
  }
}

unint64_t sub_233282540()
{
  result = qword_27DE06E40[0];
  if (!qword_27DE06E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06E40);
  }

  return result;
}

unint64_t sub_233282598()
{
  result = qword_27DE06F50;
  if (!qword_27DE06F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE06F50);
  }

  return result;
}

unint64_t sub_2332825F0()
{
  result = qword_27DE06F58[0];
  if (!qword_27DE06F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06F58);
  }

  return result;
}

uint64_t sub_233282648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v75 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE06FE8);
  __swift_project_value_buffer(v4, qword_27DE06FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38B8, &unk_2332A08A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2332A3380;
  v6 = sub_233270B78();
  *(v5 + 32) = &_s20AnalyzeAccessCommandVN;
  *(v5 + 40) = v6;
  v7 = sub_23327C7CC();
  *(v5 + 48) = &_s23AnalyzeDatastoreCommandVN;
  *(v5 + 56) = v7;
  v8 = _s25CancelTrainingTaskCommandVMa();
  v9 = sub_2332837F0(&qword_27DDE3618, _s25CancelTrainingTaskCommandVMa);
  *(v5 + 64) = v8;
  *(v5 + 72) = v9;
  v10 = _s16CloudSyncCommandVMa();
  v11 = sub_2332837F0(&qword_27DDE34B0, _s16CloudSyncCommandVMa);
  *(v5 + 80) = v10;
  *(v5 + 88) = v11;
  v12 = sub_2332703BC();
  *(v5 + 96) = &_s20ContainerPathCommandVN;
  *(v5 + 104) = v12;
  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  v14 = sub_2332837F0(&qword_27DDE3B10, _s18CreateVoiceCommandVMa);
  *(v5 + 112) = VoiceCommandVMa;
  *(v5 + 120) = v14;
  v15 = _s16DeleteAllCommandVMa();
  v16 = sub_2332837F0(&qword_27DDE34E8, _s16DeleteAllCommandVMa);
  *(v5 + 128) = v15;
  *(v5 + 136) = v16;
  v17 = _s18DeleteModelCommandVMa();
  v18 = sub_2332837F0(&qword_27DDE33E8, _s18DeleteModelCommandVMa);
  *(v5 + 144) = v17;
  *(v5 + 152) = v18;
  v19 = _s18DeleteVoiceCommandVMa();
  v20 = sub_2332837F0(&qword_27DDE3810, _s18DeleteVoiceCommandVMa);
  *(v5 + 160) = v19;
  *(v5 + 168) = v20;
  v21 = _s15DiagnoseCommandVMa(0);
  v22 = sub_2332837F0(&qword_27DDE3850, _s15DiagnoseCommandVMa);
  *(v5 + 176) = v21;
  *(v5 + 184) = v22;
  v23 = sub_23327DF24();
  *(v5 + 192) = &_s27DiscardTrainingTasksCommandVN;
  *(v5 + 200) = v23;
  v24 = _s25ExportTrainingDataCommandVMa();
  v25 = sub_2332837F0(&qword_27DDE3648, _s25ExportTrainingDataCommandVMa);
  *(v5 + 208) = v24;
  *(v5 + 216) = v25;
  v26 = _s25ExportVoicePackageCommandVMa();
  v27 = sub_2332837F0(&qword_27DDE3568, _s25ExportVoicePackageCommandVMa);
  *(v5 + 224) = v26;
  *(v5 + 232) = v27;
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  v29 = sub_2332837F0(&qword_27DDE3440, _s27GenerateTrainingDataCommandVMa);
  *(v5 + 240) = TrainingDataCommandVMa;
  *(v5 + 248) = v29;
  v30 = _s18ImportModelCommandVMa();
  v31 = sub_2332837F0(&qword_27DDE3A68, _s18ImportModelCommandVMa);
  *(v5 + 256) = v30;
  *(v5 + 264) = v31;
  v32 = _s25ImportTrainingDataCommandVMa();
  v33 = sub_2332837F0(&qword_27DDE3530, _s25ImportTrainingDataCommandVMa);
  *(v5 + 272) = v32;
  *(v5 + 280) = v33;
  v34 = _s25ImportVoicePackageCommandVMa();
  v35 = sub_2332837F0(&qword_27DDE3AA8, _s25ImportVoicePackageCommandVMa);
  *(v5 + 288) = v34;
  *(v5 + 296) = v35;
  v36 = sub_23328379C();
  *(v5 + 304) = &_s31InitializeCloudkitSchemaCommandVN;
  *(v5 + 312) = v36;
  v37 = sub_233266534();
  *(v5 + 320) = &_s18ListASRInfoCommandVN;
  *(v5 + 328) = v37;
  v38 = _s17ListModelsCommandVMa(0);
  v39 = sub_2332837F0(&qword_27DDE3938, _s17ListModelsCommandVMa);
  *(v5 + 336) = v38;
  *(v5 + 344) = v39;
  v40 = sub_23326D3E8();
  *(v5 + 352) = &_s26ListInstalledModelsCommandVN;
  *(v5 + 360) = v40;
  v41 = _s23ListTrainingDataCommandVMa();
  v42 = sub_2332837F0(&qword_27DDE3B50, _s23ListTrainingDataCommandVMa);
  *(v5 + 368) = v41;
  *(v5 + 376) = v42;
  v43 = _s17ListVoicesCommandVMa(0);
  v44 = sub_2332837F0(&qword_27DDE37C8, _s17ListVoicesCommandVMa);
  *(v5 + 384) = v43;
  *(v5 + 392) = v44;
  v45 = _s32ListVoicesForSystemSpeechCommandVMa();
  v46 = sub_2332837F0(&qword_27DDE1A50, _s32ListVoicesForSystemSpeechCommandVMa);
  *(v5 + 400) = v45;
  *(v5 + 408) = v46;
  v47 = _s19LongTermLogsCommandVMa();
  v48 = sub_2332837F0(&qword_27DDE2770, _s19LongTermLogsCommandVMa);
  *(v5 + 416) = v47;
  *(v5 + 424) = v48;
  v49 = _s11OpenCommandVMa();
  v50 = sub_2332837F0(&qword_27DDE3BA8, _s11OpenCommandVMa);
  *(v5 + 432) = v49;
  *(v5 + 440) = v50;
  v51 = _s19PolarPatternCommandVMa();
  v52 = sub_2332837F0(&qword_27DDE3C10, _s19PolarPatternCommandVMa);
  *(v5 + 448) = v51;
  *(v5 + 456) = v52;
  v53 = _s25ScriptMetadataPathCommandVMa();
  v54 = sub_2332837F0(&qword_27DDE3C60, _s25ScriptMetadataPathCommandVMa);
  *(v5 + 464) = v53;
  *(v5 + 472) = v54;
  v55 = _s21ScriptMetadataCommandVMa();
  v56 = sub_2332837F0(&qword_27DDE39B8, _s21ScriptMetadataCommandVMa);
  *(v5 + 480) = v55;
  *(v5 + 488) = v56;
  v57 = _s12SpeakCommandVMa();
  v58 = sub_2332837F0(&qword_27DDE35B8, _s12SpeakCommandVMa);
  *(v5 + 496) = v57;
  *(v5 + 504) = v58;
  v59 = _s22SupplementModelCommandVMa();
  v60 = sub_2332837F0(&qword_27DDE2D60, _s22SupplementModelCommandVMa);
  *(v5 + 512) = v59;
  *(v5 + 520) = v60;
  v61 = _s32SynthesizeAudioForSamplesCommandVMa();
  v62 = sub_2332837F0(&qword_27DDE39E8, _s32SynthesizeAudioForSamplesCommandVMa);
  *(v5 + 528) = v61;
  *(v5 + 536) = v62;
  v63 = _s23SyncModelFuturesCommandVMa();
  v64 = sub_2332837F0(&qword_27DDE35E8, _s23SyncModelFuturesCommandVMa);
  *(v5 + 544) = v63;
  *(v5 + 552) = v64;
  v65 = _s17TrainModelCommandVMa(0);
  v66 = sub_2332837F0(&qword_27DDE3CF8, _s17TrainModelCommandVMa);
  *(v5 + 560) = v65;
  *(v5 + 568) = v66;
  v67 = sub_23326B618();
  *(v5 + 576) = &_s13RepairCommandVN;
  *(v5 + 584) = v67;
  v68 = _s12ResetCommandVMa();
  v69 = sub_2332837F0(&qword_27DDE2700, _s12ResetCommandVMa);
  *(v5 + 592) = v68;
  *(v5 + 600) = v69;
  v70 = _s21SetPhraseCountCommandVMa();
  v71 = sub_2332837F0(&qword_27DDE3CA0, _s21SetPhraseCountCommandVMa);
  *(v5 + 608) = v70;
  *(v5 + 616) = v71;
  v72 = sub_2331BED3C();
  *(v5 + 624) = &_s31SendMockUserNotificationCommandVN;
  *(v5 + 632) = v72;
  v73 = sub_23328D4DC();
  (*(*(v73 - 8) + 56))(v3, 1, 1, v73);
  return sub_23328D50C();
}

uint64_t static VoiceBankingCommand.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static VoiceBankingCommand.configuration.setter(uint64_t a1)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static VoiceBankingCommand.configuration.modify())()
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_23328D51C();
  __swift_project_value_buffer(v0, qword_27DE06FE8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_233283278@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233283338(uint64_t a1)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

unint64_t sub_23328342C()
{
  result = qword_27DDE3CC0;
  if (!qword_27DDE3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CC0);
  }

  return result;
}

unint64_t sub_233283484()
{
  result = qword_27DDE3CC8;
  if (!qword_27DDE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CC8);
  }

  return result;
}

uint64_t sub_2332834D8(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE67E0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233283748();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821389A8](a1, v5);
}

unint64_t sub_233283588()
{
  result = qword_27DDE3CD0;
  if (!qword_27DDE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CD0);
  }

  return result;
}

uint64_t sub_2332835DC(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23328342C();
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_23328368C()
{
  result = qword_27DDE3CD8;
  if (!qword_27DDE3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CD8);
  }

  return result;
}

unint64_t sub_2332836E4()
{
  result = qword_27DDE3CE0;
  if (!qword_27DDE3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CE0);
  }

  return result;
}

unint64_t sub_233283748()
{
  result = qword_27DDE3CE8;
  if (!qword_27DDE3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CE8);
  }

  return result;
}

unint64_t sub_23328379C()
{
  result = qword_27DDE3CF0;
  if (!qword_27DDE3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CF0);
  }

  return result;
}

uint64_t sub_2332837F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233283838@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_2332838A8(char *a1)
{
  v2 = sub_23328D47C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v14 = *a1;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000005BLL, 0x80000002332AF910);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v11 + 7);
  v8 = VoiceBankingCommand.Helper.TrainingMode.rawValue.getter();
  MEMORY[0x23839B7E0](v8);

  v9 = sub_23328D3CC();
  sub_233284F84(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  sub_23328E57C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_23328D46C();
  sub_233283A9C();
  return sub_23328D57C();
}

unint64_t sub_233283A9C()
{
  result = qword_27DDE3D00;
  if (!qword_27DDE3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D00);
  }

  return result;
}

uint64_t sub_233283AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);

  return sub_23328D54C();
}

uint64_t sub_233283B38()
{
  v0 = *(_s19TrainingOptionGroupVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  return v2;
}

uint64_t sub_233283BAC()
{
  v0 = *(_s19TrainingOptionGroupVMa(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  return v2;
}

uint64_t sub_233283C00()
{
  v0 = *(_s19TrainingOptionGroupVMa(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  return v2;
}

unint64_t sub_233283C58()
{
  result = qword_27DDE3D10;
  if (!qword_27DDE3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D10);
  }

  return result;
}

unint64_t sub_233283CAC()
{
  v1 = 1701080941;
  v2 = 0x696C615670696B73;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_233283D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233286DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233283D88(uint64_t a1)
{
  v2 = sub_233284D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233283DC4(uint64_t a1)
{
  v2 = sub_233284D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233283E00()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v26 - v5;
  v6 = sub_23328D47C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D4DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v26 - v14;
  v16 = sub_23328D41C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v30);
  sub_2332838A8(&v30);
  v18 = _s19TrainingOptionGroupVMa(0);
  v19 = v18[5];
  sub_23328D40C();
  sub_23328D3BC();
  v20 = sub_23328D3CC();
  v21 = *(*(v20 - 8) + 56);
  v21(v15, 0, 1, v20);
  sub_23328D4CC();
  v26[2] = v9;
  sub_23328D45C();
  sub_23328D59C();
  v22 = v18[6];
  sub_23328D3BC();
  v21(v15, 0, 1, v20);
  sub_23328D4CC();
  sub_23328D58C();
  v26[1] = v18[7];
  sub_23328D3BC();
  v21(v15, 0, 1, v20);
  v23 = sub_23328D42C();
  (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v24 = v18[8];
  v29 = 0;
  v21(v15, 1, 1, v20);
  sub_23328D46C();
  sub_233283C58();
  return sub_23328D57C();
}

uint64_t sub_233284240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v66 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  v65 = *(v70 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v68 = *(v72 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v74 = *(v76 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v64 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D20, &qword_2332A3500);
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](v12);
  v86 = &v64 - v14;
  v15 = sub_23328D53C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = &v64 - v20;
  v21 = sub_23328D47C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v89 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23328D4DC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v64 - v28;
  v30 = sub_23328D41C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = _s19TrainingOptionGroupVMa(0);
  v33 = (v32 - 8);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v97);
  sub_2332838A8(&v97);
  v37 = v33[7];
  sub_23328D40C();
  sub_23328D3BC();
  v38 = sub_23328D3CC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v88 = (v39 + 56);
  v40(v29, 0, 1, v38);
  sub_23328D4CC();
  sub_23328D45C();
  v73 = v37;
  sub_23328D59C();
  v41 = v33[8];
  sub_23328D3BC();
  v40(v29, 0, 1, v38);
  sub_23328D4CC();
  v77 = v41;
  sub_23328D58C();
  v42 = v33[9];
  sub_23328D3BC();
  v40(v29, 0, 1, v38);
  v43 = sub_23328D42C();
  (*(*(v43 - 8) + 56))(v84, 1, 1, v43);
  sub_23328D4CC();
  sub_23328D52C();
  v67 = v42;
  sub_23328D5DC();
  v44 = v33[10];
  v96 = 0;
  v40(v29, 1, 1, v38);
  sub_23328D46C();
  sub_233283C58();
  sub_23328D57C();
  v45 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  sub_233284D84();
  v46 = v87;
  v47 = v86;
  sub_23328E68C();
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_0(v90);
    v63 = v36;
  }

  else
  {
    v49 = v77;
    v48 = v78;
    v89 = v44;
    v50 = v79;
    v95 = 0;
    sub_23315246C(&qword_27DDE3D28, &qword_27DDE3D08, &unk_2332A34E8);
    v51 = v80;
    sub_23328E41C();
    v52 = *(v48 + 40);
    v88 = v36;
    v52(v36, v83, v51);
    v94 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v53 = v76;
    sub_23328E41C();
    v54 = *(v74 + 40);
    v54(&v88[v73], v50, v53);
    v93 = 2;
    v55 = v75;
    sub_23328E41C();
    v54(&v88[v49], v55, v53);
    v92 = 3;
    sub_23315246C(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80);
    v57 = v71;
    v56 = v72;
    v58 = v82;
    sub_23328E41C();
    v60 = v88;
    (*(v68 + 40))(&v88[v67], v57, v56);
    v91 = 4;
    sub_23315246C(&qword_27DDE3D30, &qword_27DDE3D18, &qword_2332A34F8);
    v61 = v69;
    v62 = v70;
    sub_23328E41C();
    (*(v81 + 8))(v47, v58);
    (*(v65 + 40))(&v89[v60], v61, v62);
    sub_2332863C8(v60, v66, _s19TrainingOptionGroupVMa);
    __swift_destroy_boxed_opaque_existential_0(v90);
    v63 = v60;
  }

  return sub_233286368(v63, _s19TrainingOptionGroupVMa);
}

unint64_t sub_233284D84()
{
  result = qword_27DE07308;
  if (!qword_27DE07308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07308);
  }

  return result;
}

uint64_t sub_233284DF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D70);
  __swift_project_value_buffer(v4, qword_27DE08D70);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233284F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233284FCC()
{
  v1[4] = v0;
  v2 = _s19TrainingOptionGroupVMa(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233285090, 0, 0);
}

uint64_t sub_233285090()
{
  v1 = v0;
  sub_23328D20C();
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v25 = *(v1 + 64);
  v27 = *(v1 + 56);
  v4 = *(v1 + 40);
  v29 = *(v1 + 48);
  v5 = *(v1 + 32);
  v6 = sub_233237A1C();
  v7 = *v6;
  *(v1 + 88) = *v6;
  v8 = sub_23328CE8C();
  *(v1 + 96) = v8;
  v9 = *(v8 - 8);
  *(v1 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v1 + 112) = v11;
  v33 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v32 = v11;
  sub_23328D5CC();
  v12 = *(_s17TrainModelCommandVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  sub_23328D3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  sub_23328D54C();
  sub_233286368(v2, _s19TrainingOptionGroupVMa);
  *(v1 + 26) = *(v1 + 25);
  v31 = sub_233248BBC();
  sub_23328D3DC();
  v13 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  sub_233286368(v3, _s19TrainingOptionGroupVMa);
  v28 = *(v1 + 27);
  sub_23328D3DC();
  v14 = v25 + v4[6];
  sub_23328D54C();
  sub_233286368(v25, _s19TrainingOptionGroupVMa);
  v26 = *(v1 + 28);
  sub_23328D3DC();
  v15 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  sub_233286368(v27, _s19TrainingOptionGroupVMa);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  sub_23328D3DC();
  v18 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  sub_23328D54C();
  sub_233286368(v29, _s19TrainingOptionGroupVMa);
  if (*(v1 + 29))
  {
    v19 = 0x80000002332A7F50;
  }

  else
  {
    v19 = 0xEE0073676E696472;
  }

  if ((*(v1 + 29) & 1) != 0 || v19 != 0xEE0073676E696472)
  {
    *(v1 + 29);
    v20 = sub_23328E54C();
  }

  else
  {
    v20 = 1;
  }

  v21 = *(*v33 + 360);
  v30 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v1 + 120) = v23;
  *v23 = v1;
  v23[1] = sub_233285548;

  return (v30)(v32, v31, v28, v26, v16, v17, v20 & 1);
}

uint64_t sub_233285548()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[11];
    (*(v3[13] + 8))(v3[14], v3[12]);

    return MEMORY[0x2822009F8](sub_233285724, 0, 0);
  }

  else
  {
    v5 = v3[11];
    v7 = v3[9];
    v6 = v3[10];
    v9 = v3[7];
    v8 = v3[8];
    v10 = v3[6];
    (*(v3[13] + 8))(v3[14], v3[12]);

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_233285724()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2332857C8()
{
  if (*v0)
  {
    result = 0x676E696E69617274;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_233285804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEF736E6F6974704FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2332858E0(uint64_t a1)
{
  v2 = sub_233286314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23328591C(uint64_t a1)
{
  v2 = sub_233286314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233285958()
{
  v0 = sub_23328D3AC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D53C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23328D4DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  sub_23328D3BC();
  v14 = sub_23328D3CC();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = sub_23328D42C();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v16 = *(_s17TrainModelCommandVMa(0) + 20);
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_233284F84(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa);
  return sub_23328D3EC();
}

uint64_t sub_233285C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v44 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D38, &qword_2332A3510);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = sub_23328D3AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23328D53C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_23328D4DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  v22 = _s17TrainModelCommandVMa(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v27 = sub_23328D3CC();
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v28 = sub_23328D42C();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v29 = v50;
  sub_23328D5FC();
  v30 = *(v23 + 28);
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_233284F84(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa);
  sub_23328D3EC();
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_233286314();
  v32 = v7;
  v33 = v49;
  sub_23328E68C();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v49 = &v43;
    v35 = *(v34 - 8);
    v36 = *(v35 + 64);
    MEMORY[0x28223BE20](v34);
    v38 = &v43 - v37;
    v52 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v39 = v48;
    sub_23328E41C();
    (*(v35 + 40))(v26, v38, v34);
    v51 = 1;
    sub_23315246C(&qword_27DDE3AF8, &qword_27DDE3AD8, &qword_2332A2080);
    v41 = v45;
    v40 = v46;
    sub_23328E41C();
    (*(v47 + 8))(v32, v39);
    (*(v43 + 40))(&v26[v30], v41, v40);
    sub_2332863C8(v26, v44, _s17TrainModelCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  return sub_233286368(v26, _s17TrainModelCommandVMa);
}

unint64_t sub_233286314()
{
  result = qword_27DE07310[0];
  if (!qword_27DE07310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07310);
  }

  return result;
}

uint64_t sub_233286368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2332863C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_233286430()
{
  result = qword_27DDE3D40;
  if (!qword_27DDE3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D40);
  }

  return result;
}

unint64_t sub_233286488()
{
  result = qword_27DDE3D48;
  if (!qword_27DDE3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D48);
  }

  return result;
}

uint64_t sub_2332865FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233284FCC();
}

uint64_t sub_2332866D0(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233284F84(&qword_27DDE3D68, _s17TrainModelCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332867F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE07300 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

void sub_233286950()
{
  sub_233286A98(319, &qword_27DDE3D88);
  if (v0 <= 0x3F)
  {
    sub_233286A98(319, &qword_27DDE1A68);
    if (v1 <= 0x3F)
    {
      sub_233286A34();
      if (v2 <= 0x3F)
      {
        sub_233286A98(319, &qword_27DDE3D90);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_233286A34()
{
  if (!qword_27DDE3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3470, &qword_2332A2200);
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3468);
    }
  }
}

void sub_233286A98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23328D5AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_233286B0C()
{
  sub_2331D6598();
  if (v0 <= 0x3F)
  {
    sub_23327A7DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_233286BB4()
{
  result = qword_27DE07AC0[0];
  if (!qword_27DE07AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07AC0);
  }

  return result;
}

unint64_t sub_233286C0C()
{
  result = qword_27DE07CD0[0];
  if (!qword_27DE07CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07CD0);
  }

  return result;
}

unint64_t sub_233286C64()
{
  result = qword_27DE07DE0;
  if (!qword_27DE07DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07DE0);
  }

  return result;
}

unint64_t sub_233286CBC()
{
  result = qword_27DE07DE8[0];
  if (!qword_27DE07DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07DE8);
  }

  return result;
}

unint64_t sub_233286D14()
{
  result = qword_27DE07E70;
  if (!qword_27DE07E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07E70);
  }

  return result;
}

unint64_t sub_233286D6C()
{
  result = qword_27DE07E78;
  if (!qword_27DE07E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07E78);
  }

  return result;
}

uint64_t sub_233286DC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332AFAC0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C615670696B73 && a2 == 0xEE006E6F69746164 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332AFAE0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332AFB00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_233286F88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08D88);
  __swift_project_value_buffer(v4, qword_27DE08D88);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233287104()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 272);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B0F0;

  return v7();
}

unint64_t sub_233287284()
{
  result = qword_27DDE3D98;
  if (!qword_27DDE3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D98);
  }

  return result;
}

unint64_t sub_2332872DC()
{
  result = qword_27DDE3DA0;
  if (!qword_27DDE3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DA0);
  }

  return result;
}

uint64_t sub_23328734C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 272);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B474;

  return v7();
}

uint64_t sub_2332874CC(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233287284();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_23328757C()
{
  result = qword_27DDE3DA8;
  if (!qword_27DDE3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DA8);
  }

  return result;
}

uint64_t sub_2332875D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE07F00 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D88);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_233287694()
{
  result = qword_27DDE3DB0;
  if (!qword_27DDE3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DB0);
  }

  return result;
}

uint64_t TTSVBVoice.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for TTSVBVoice()
{
  result = qword_280D3AC60;
  if (!qword_280D3AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBVoice.localeID.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoice() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoice.init(name:voiceID:localeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for TTSVBVoice();
  v11 = *(v10 + 20);
  v12 = sub_23328CE8C();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t TTSVBVoice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3DB8, &qword_2332A3BC0);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for TTSVBVoice();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233287C2C();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = v8;
  v40 = 0;
  v13 = v4;
  *v11 = sub_23328E3CC();
  v11[1] = v15;
  v32 = v15;
  v16 = sub_23328CE8C();
  v33 = &v30;
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 1;
  sub_233288398(&qword_27DDE21D0);
  sub_23328E41C();
  v31 = v11;
  (*(v34 + 32))(v11 + *(v35 + 20), v19, v16);
  v38 = 2;
  v20 = sub_23328E3AC();
  v22 = v21;
  v23 = v13;
  v24 = v37;
  if (v21)
  {
    v25 = v20;
  }

  else
  {
    v26 = sub_2331222A4();
    v25 = *v26;
    v22 = *(v26 + 1);

    v24 = v37;
  }

  v27 = v36;
  v28 = v31;
  (*(v24 + 8))(v7, v23);
  v29 = (v28 + *(v35 + 24));
  *v29 = v25;
  v29[1] = v22;
  sub_233287C80(v28, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233287CE4(v28);
}

unint64_t sub_233287C2C()
{
  result = qword_27DE08210[0];
  if (!qword_27DE08210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE08210);
  }

  return result;
}

uint64_t sub_233287C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233287CE4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTSVBVoice.convertToData()()
{
  v0 = sub_23328C8BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBVoice();
  sub_2332886BC(&qword_27DDE1998);
  v3 = sub_23328C89C();

  return v3;
}

uint64_t TTSVBVoice.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_23328C85C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBVoice();
  sub_2332886BC(&qword_27DDE1990);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t TTSVBVoice.qualifiedVoiceIdentifier.getter()
{
  v1 = *MEMORY[0x277D70458];
  v5 = sub_23328D98C();
  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  v2 = v0 + *(type metadata accessor for TTSVBVoice() + 20);
  v3 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v3);

  return v5;
}

uint64_t static TTSVBVoice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TTSVBVoice();
  v6 = *(v5 + 20);
  if ((sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_23328E54C();
}

uint64_t sub_233288038()
{
  v1 = 0x44496563696F76;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23328808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233288A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2332880B4(uint64_t a1)
{
  v2 = sub_233287C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332880F0(uint64_t a1)
{
  v2 = sub_233287C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBVoice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3DC0, &qword_2332A3BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233287C2C();
  sub_23328E69C();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_23328E48C();
  if (!v2)
  {
    v13 = type metadata accessor for TTSVBVoice();
    v14 = *(v13 + 20);
    v19[14] = 1;
    sub_23328CE8C();
    sub_233288398(&qword_27DDE1F80);
    sub_23328E4DC();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_23328E48C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TTSVBVoice.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_23328DA3C();
  v4 = type metadata accessor for TTSVBVoice();
  v5 = *(v4 + 20);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98);
  sub_23328D8CC();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_23328DA3C();
}

uint64_t sub_233288398(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TTSVBVoice.hashValue.getter()
{
  v1 = v0;
  sub_23328E61C();
  v2 = *v0;
  v3 = v0[1];
  sub_23328DA3C();
  v4 = type metadata accessor for TTSVBVoice();
  v5 = *(v4 + 20);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98);
  sub_23328D8CC();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2332884B4(uint64_t a1)
{
  v3 = v1;
  sub_23328E61C();
  v4 = *v1;
  v5 = v1[1];
  sub_23328DA3C();
  v6 = *(a1 + 20);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98);
  sub_23328D8CC();
  v7 = (v3 + *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_233288554(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_23328DA3C();
  v7 = *(a2 + 20);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98);
  sub_23328D8CC();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];

  return sub_23328DA3C();
}

uint64_t sub_2332885EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23328E61C();
  v5 = *v2;
  v6 = v2[1];
  sub_23328DA3C();
  v7 = *(a2 + 20);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98);
  sub_23328D8CC();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2332886BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233288728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23328CE8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23328879C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_23328E54C();
}

uint64_t sub_23328887C()
{
  result = sub_23328CE8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23328890C()
{
  result = qword_27DE084A0[0];
  if (!qword_27DE084A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE084A0);
  }

  return result;
}

unint64_t sub_233288964()
{
  result = qword_27DE085B0;
  if (!qword_27DE085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE085B0);
  }

  return result;
}

unint64_t sub_2332889BC()
{
  result = qword_27DE085B8[0];
  if (!qword_27DE085B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE085B8);
  }

  return result;
}

uint64_t sub_233288A10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_233288B2C()
{
  v0 = sub_23328D66C();
  __swift_allocate_value_buffer(v0, qword_27DE08648);
  __swift_project_value_buffer(v0, qword_27DE08648);
  return sub_23328D65C();
}

uint64_t sub_233288BAC()
{
  if (qword_27DE08640 != -1)
  {
    swift_once();
  }

  v0 = sub_23328D66C();

  return __swift_project_value_buffer(v0, qword_27DE08648);
}

uint64_t static TTSVBSignposter.download.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE08640 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D66C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08648);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *TTSVBCommonVoiceSampleMO.trainingValidity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v6 = (*(a2 + 328))();
  v7 = (*(a2 + 352))(a1, a2);
  v8 = (*(a2 + 400))(a1, a2);
  v9 = (*(a2 + 376))(a1, a2);
  v10 = (*(a2 + 424))(a1, a2);

  return static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)(v6, a3, v7, v8, v9, v10);
}

uint64_t TTSVBCommonVoiceSampleMO.flags.getter@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = (*(a1 + 448))();

  return TTSVBVoiceSampleFlags.init(rawValue:)(v3, a2);
}

uint64_t sub_233288E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  result = TTSVBCommonVoiceSampleMO.flags.getter(*(a2 + a3 - 8), &v8);
  *a4 = v8;
  return result;
}

uint64_t sub_233288E7C(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v6 = *a2;
  v8 = *a1;
  return TTSVBCommonVoiceSampleMO.flags.setter(&v8, v5, v4);
}

uint64_t (*TTSVBCommonVoiceSampleMO.flags.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = (*(a3 + 448))(a2, a3);
  TTSVBVoiceSampleFlags.init(rawValue:)(v5, (a1 + 24));
  return sub_233288F40;
}

uint64_t TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328CC9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  TTSVBCommonVoiceSampleMO.url.getter(a1, a2, &v16 - v11);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_233121E04(v12, &qword_27DDE19A0, &unk_233290360);
    v13 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v17 = *sub_2331DEBE8();
    v14 = v17;
    v13 = _TTSVBFileManager.fileExists(_:)();

    (*(v5 + 8))(v8, v4);
  }

  return v13 & 1;
}

uint64_t TTSVBCommonVoiceSampleMO.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = sub_23328D6EC();
  v53 = *(v51 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTSVBPath();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - v19;
  (*(a2 + 472))(a1, a2);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_233121E04(v20, &qword_27DDE19B0, &qword_233290370);
    v21 = sub_23328CC9C();
    v22 = *(*(v21 - 8) + 56);
    v23 = a3;
  }

  else
  {
    v50 = a3;
    (*(v13 + 32))(v16, v20, v12);
    v24 = (*(a2 + 208))(a1, a2);
    if (v25)
    {
      v26 = v24;
      v27 = v25;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v29 = &v11[*(v28 + 48)];
      v30 = &v11[*(v28 + 64)];
      (*(v13 + 16))(v11, v16, v12);
      *v29 = v26;
      *(v29 + 1) = v27;
      v31 = sub_2331C464C();
      v32 = *(v31 + 1);
      *v30 = *v31;
      *(v30 + 1) = v32;
      swift_storeEnumTagMultiPayload();
      v33 = v32;
      v34 = v50;
      TTSVBPath.url.getter(v50);
      sub_23316B91C(v11);
      (*(v13 + 8))(v16, v12);
      v35 = sub_23328CC9C();
      return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    }

    v37 = sub_233225440();
    v39 = v52;
    v38 = v53;
    v40 = v51;
    (*(v53 + 16))(v52, v37, v51);
    v41 = sub_23328D6CC();
    v42 = sub_23328DE3C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      v45 = sub_23328E70C();
      v47 = sub_23311A8F4(v45, v46, &v54);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_233109000, v41, v42, "'sampleID' property on %s was unexpectedly nil", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23839CFD0](v44, -1, -1);
      MEMORY[0x23839CFD0](v43, -1, -1);

      (*(v53 + 8))(v52, v40);
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    (*(v13 + 8))(v16, v12);
    v48 = v50;
    v21 = sub_23328CC9C();
    v22 = *(*(v21 - 8) + 56);
    v23 = v48;
  }

  return v22(v23, 1, 1, v21);
}

uint64_t TTSVBCommonVoiceSampleMO.displayPhrase.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 160))();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t TTSVBCommonVoiceSampleMO.immutableSample()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = (*(a2 + 208))();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v42 - v12;
  TTSVBCommonVoiceSampleMO.url.getter(a1, a2, v42 - v12);
  v14 = (*(a2 + 184))(a1, a2);
  result = (*(a2 + 136))(a1, a2);
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = v15;
  result = (*(a2 + 160))(a1, a2);
  v54 = v18;
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  result = (*(a2 + 256))(a1, a2);
  v52 = v20;
  v53 = result;
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v50 = v19;
  v51 = v17;
  result = (*(a2 + 40))(a1, a2);
  v49 = result;
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v44 = v16;
  v45 = v13;
  v46 = v8;
  v47 = a3;
  v48 = v9;
  v23 = (*(a2 + 112))(a1, a2);
  v24 = (*(a2 + 232))(a1, a2);
  v25 = (*(a2 + 64))(a1, a2);
  result = (*(a2 + 88))(a1, a2);
  v43 = result;
  if (v26)
  {
    v27 = v26;
    v42[0] = v23;
    v28 = v24;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v42[1] = v42;
    v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v29 - 8);
    v32 = v42 - v31;
    (*(a2 + 304))(a1, a2);
    v33 = (*(a2 + 280))(a1, a2);
    v35 = v34;
    v36 = (*(a2 + 328))(a1, a2);
    v37 = (*(a2 + 352))(a1, a2);
    v38 = (*(a2 + 376))(a1, a2);
    v39 = (*(a2 + 400))(a1, a2);
    v40 = (*(a2 + 424))(a1, a2);
    v41 = (*(a2 + 448))(a1, a2);
    TTSVBVoiceSampleFlags.init(rawValue:)(v41, v55);
    return TTSVBVoiceSample.init(sampleID:url:recordingDuration:phonemes:phrase:transcript:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:recordingDate:userPhrase:userScore:spl:snr:splThreshold:snrThreshold:flags:)(v46, v48, v45, v44, v51, v50, v54, v53, v47, v14, v25, v37, v38, v39, v40, v52, v49, v22, v42[0], v28, v43, v27, v32, v33, v35, v36, v55);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 16))(ObjectType, a2);
  (*(a4 + 24))(v8, a3, a4);
  v9 = (*(a2 + 40))(ObjectType, a2);
  (*(a4 + 48))(v9);
  (*(a2 + 64))(ObjectType, a2);
  (*(a4 + 72))(a3, a4);
  v10 = (*(a2 + 88))(ObjectType, a2);
  (*(a4 + 96))(v10);
  v11 = (*(a2 + 112))(ObjectType, a2);
  (*(a4 + 120))(v11, a3, a4);
  v12 = (*(a2 + 136))(ObjectType, a2);
  (*(a4 + 144))(v12);
  v13 = (*(a2 + 160))(ObjectType, a2);
  (*(a4 + 168))(v13);
  (*(a2 + 184))(ObjectType, a2);
  (*(a4 + 192))(a3, a4);
  v14 = (*(a2 + 208))(ObjectType, a2);
  (*(a4 + 216))(v14);
  v15 = (*(a2 + 232))(ObjectType, a2);
  (*(a4 + 240))(v15, a3, a4);
  v16 = (*(a2 + 256))(ObjectType, a2);
  (*(a4 + 264))(v16);
  v17 = (*(a2 + 280))(ObjectType, a2);
  (*(a4 + 288))(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v25 - v20;
  (*(a2 + 304))(ObjectType, a2);
  (*(a4 + 312))(v21, a3, a4);
  v22 = (*(a2 + 328))(ObjectType, a2);
  (*(a4 + 336))(v22, a3, a4);
  (*(a2 + 352))(ObjectType, a2);
  (*(a4 + 360))(a3, a4);
  (*(a2 + 376))(ObjectType, a2);
  (*(a4 + 384))(a3, a4);
  (*(a2 + 400))(ObjectType, a2);
  (*(a4 + 408))(a3, a4);
  (*(a2 + 424))(ObjectType, a2);
  (*(a4 + 432))(a3, a4);
  v23 = (*(a2 + 448))(ObjectType, a2);
  return (*(a4 + 456))(v23, a3, a4);
}

void TTSVBCommonVoiceSampleMO.trainingScriptItem.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, TextToSpeechVoiceBankingSupport::TTSVBTrainingScriptItem *a3@<X8>)
{
  v6 = (*(a2 + 208))();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v10 = (*(a2 + 256))(a1, a2);
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  phrase = (*(a2 + 160))(a1, a2);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v37 = (*(a2 + 136))(a1, a2);
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  transcript = v12;
  transcript_8 = v8;
  v35 = a3;
  v36 = v9;
  v18 = (*(a2 + 40))(a1, a2);
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v18;
  v21 = v19;
  v22 = (*(a2 + 112))(a1, a2);
  v23 = (*(a2 + 232))(a1, a2);
  v24 = (*(a2 + 64))(a1, a2);
  v25 = (*(a2 + 88))(a1, a2);
  if (v26)
  {
    locale._countAndFlagsBits = v25;
    locale._object = v26;
    bookTitle._countAndFlagsBits = v20;
    bookTitle._object = v21;
    v27._countAndFlagsBits = transcript_8;
    v27._object = v36;
    v28._countAndFlagsBits = v37;
    v29._countAndFlagsBits = transcript;
    v29._object = v13;
    v30._countAndFlagsBits = phrase;
    v30._object = v15;
    v28._object = v17;
    TTSVBTrainingScriptItem.init(id:transcript:phrase:phonemes:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:)(v35, v27, v29, v30, v28, bookTitle, v22, v23, v24, locale);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t TTSVBVoiceTrainingStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x656E696665646E55;
    }

    if (a1 == 1)
    {
      return 0x65636F7270657250;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000017;
      case 3:
        return 0xD000000000000013;
      case 4:
        return 0x64656873696E6946;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t TTSVBVoiceTrainingStatus.localizedTitle.getter()
{
  v0 = sub_23328D95C();
  v1 = TTSVBSupportLocString(v0);

  v2 = sub_23328D98C();
  return v2;
}

uint64_t sub_23328A9D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoiceTrainingStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSVBCloudVoiceModelMO.findOrFetch(modelID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496C65646F6DLL;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBCloudVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBCloudVoiceModelMO);
  v8 = v7;

  return v8;
}

uint64_t static TTSVBCloudVoiceModelMO.requireModelWithID(_:moc:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297630;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2331527DC();
  *(v8 + 32) = 0x44496C65646F6DLL;
  *(v8 + 40) = 0xE700000000000000;
  v9 = sub_23328CE4C();
  *(v8 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v8 + 104) = sub_233152824();
  *(v8 + 72) = v9;
  v10 = sub_23328DDCC();
  v11 = type metadata accessor for TTSVBCloudVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v10, v11, &protocol witness table for TTSVBCloudVoiceModelMO);
  v13 = v12;

  if (!v13)
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 3;
    v14 = sub_23328CE8C();
    (*(*(v14 - 8) + 16))(v7, a1, v14);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for TTSVBError(0);
    sub_23328ADC8(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v18, v7, 0, v15);
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_23328ADC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_23328AE10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_23328AEC0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_233121D34(a1, &v12 - v6, &qword_27DDE19B0, &qword_233290370);
  v8 = *a2;
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CE4C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setModelID_];
}

void sub_23328B024(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_233121D34(a1, &v16 - v10, &qword_27DDE1A18, &unk_233297730);
  v12 = *a2;
  v13 = sub_23328CE1C();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_23328CD9C();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_23328B160()
{
  v1 = [v0 files];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 allObjects];

    v4 = sub_23328DBFC();
    v5 = sub_23328B204(v4);

    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23328B204(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23328E2DC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v6);
    type metadata accessor for TTSVBCloudVoiceModelFileMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    v4 = *(v7 + 16);
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_23328B2F0(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    goto LABEL_5;
  }

  v12 = [v2 voice];
  if (v12)
  {
    v11 = v12;
LABEL_5:
    v13 = a1;
    v14 = [v11 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_23328D98C();
      v18 = v17;

      v19 = [v11 voiceID];
      v20 = sub_23328CE8C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20](v20);
      v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v19)
      {
        sub_23328CE6C();

        v25 = type metadata accessor for TTSVBCloudVoiceModelMO();
        v27 = sub_23328ADC8(&qword_27DDE2358, v26, type metadata accessor for TTSVBCloudVoiceModelMO);
        TTSVBCommonVoiceModelMO.immutableModel(voiceName:voiceID:)(v16, v18, v25, v27, a2);

        (*(v21 + 8))(v24, v20);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v28 = sub_233225440();
  (*(v6 + 16))(v10, v28, v5);
  v29 = sub_23328D6CC();
  v30 = sub_23328DE3C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_233109000, v29, v30, "Cannot return immutableModel. no related voice was found.", v31, 2u);
    MEMORY[0x23839CFD0](v31, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  v32 = type metadata accessor for TTSVBVoiceModel();
  (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
}

id TTSVBCloudVoiceModelMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceModelMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceModelMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceModelMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBCloudVoiceModelMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23328B77C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBCloudVoiceModelMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t (*sub_23328B7F4(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328B864(v2);
  return sub_233154AEC;
}

void (*sub_23328B864(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 creationDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23328B9C4;
}

uint64_t (*sub_23328B9D0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FE88(v2);
  return sub_233153B3C;
}

uint64_t (*sub_23328BA40(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FFA4(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BAB0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332200C0(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BB20(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332201DC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BBC8(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328BC38(v2);
  return sub_233154AEC;
}

void (*sub_23328BC38(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 modelID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE19B0, &qword_233290370);
  return sub_23328BD98;
}

void sub_23328BD98(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v6, &qword_27DDE19B0, &qword_233290370);
    v7 = sub_23328CE8C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v9 = sub_23328CE4C();
      (*(v8 + 8))(v6, v7);
      v3 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    [*a1 setModelID_];

    free(v10);
    sub_233121E04(v3, &qword_27DDE19B0, &qword_233290370);
    free(v3);
  }

  else
  {
    v11 = sub_23328CE8C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_23328CE4C();
      (*(v12 + 8))(v3, v11);
      v3 = *(a1 + 16);
    }

    v14 = *(a1 + 24);
    [*a1 setModelID_];

    free(v14);

    free(v3);
  }
}

uint64_t (*sub_23328C024(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328C094(v2);
  return sub_233154AEC;
}

void (*sub_23328C094(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 trainingFinishedDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23328C1F4;
}

void sub_23328C200(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v5, v8, &qword_27DDE1A18, &unk_233297730);
    v9 = sub_23328CE1C();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v11 = sub_23328CD9C();
      (*(v10 + 8))(v8, v9);
      v5 = *(a1 + 16);
    }

    v12 = *(a1 + 24);
    [*a1 *a3];

    free(v12);
    sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
    free(v5);
  }

  else
  {
    v13 = sub_23328CE1C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_23328CD9C();
      (*(v14 + 8))(v5, v13);
      v5 = *(a1 + 16);
    }

    v16 = *(a1 + 24);
    [*a1 *a3];

    free(v16);

    free(v5);
  }
}

uint64_t (*sub_23328C450(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220F44(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328C4C0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233221190(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328C530(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332212AC(v2);
  return sub_233154AEC;
}

uint64_t sub_23328C5A0(uint64_t a1, uint64_t a2)
{
  result = sub_23328ADC8(&qword_27DDE2A38, a2, type metadata accessor for TTSVBCloudVoiceModelMO);
  *(a1 + 8) = result;
  return result;
}