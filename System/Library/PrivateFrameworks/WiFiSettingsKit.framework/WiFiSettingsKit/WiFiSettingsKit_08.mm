uint64_t sub_27415CCA4()
{
  v1 = *(v0 + 680);
  *(v0 + 776) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CD30, v3, v2);
}

uint64_t sub_27415CD30()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[84];

  sub_2741B8B0C(v3);

  return MEMORY[0x2822009F8](sub_27415CDB0, 0, 0);
}

uint64_t sub_27415CDB0()
{
  sub_27409D420(v0[84], &qword_280938570, &qword_2741D1630);
  sub_27409D420((v0 + 15), &qword_280938340, &qword_2741D1660);
  sub_27409D420((v0 + 2), &qword_280938340, &qword_2741D1660);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];

  v4 = v0[1];

  return v4();
}

uint64_t sub_27415CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2741C6AFC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415CF38, 0, 0);
}

uint64_t sub_27415CF38()
{
  v1 = [*(v0[2] + 16) wifiUIStateFlags];
  v0[6] = v1;
  if ((v1 & 2) != 0)
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = __swift_project_value_buffer(v12, qword_280945DD8);
    (*(v11 + 16))(v10, v13, v12);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD00000000000001CLL, 0x80000002741E2440);
    (*(v11 + 8))(v10, v12);
    v0[7] = sub_2741C80AC();
    v0[8] = sub_2741C809C();
    v15 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_27415D200, v15, v14);
  }

  else
  {
    v2 = v1;
    sub_2741C856C();

    v3 = CWFWiFiUIStateFlags.description.getter(v2);
    MEMORY[0x2743E5FB0](v3);

    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000017, 0x80000002741E2420);

    (*(v5 + 8))(v4, v6);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_27415D200()
{
  v1 = *(v0 + 64);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415D298, 0, 0);
}

uint64_t sub_27415D298()
{
  v1 = *(v0 + 56);
  *(v0 + 72) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415D324, v3, v2);
}

uint64_t sub_27415D324()
{
  v1 = *(v0 + 72);

  *(v0 + 80) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415D3A0, 0, 0);
}

uint64_t sub_27415D3A0()
{
  v1 = *(v0 + 56);
  *(v0 + 88) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415D42C, v3, v2);
}

uint64_t sub_27415D42C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  sub_2741BB460(1);

  return MEMORY[0x2822009F8](sub_27415D4A4, 0, 0);
}

uint64_t sub_27415D4A4()
{
  v1 = v0[6];
  sub_2741C856C();

  v2 = CWFWiFiUIStateFlags.description.getter(v1);
  MEMORY[0x2743E5FB0](v2);

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_project_value_buffer(v5, qword_280945DD8);
  (*(v4 + 16))(v3, v6, v5);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000017, 0x80000002741E2420);

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_27415D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[81] = a4;
  v5 = sub_2741C6AFC();
  v4[82] = v5;
  v6 = *(v5 - 8);
  v4[83] = v6;
  v7 = *(v6 + 64) + 15;
  v4[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415D6E4, 0, 0);
}

uint64_t sub_27415D6E4()
{
  v26 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 648);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  v2 = [*(v1 + 16) currentScanResult];
  if (v2)
  {
    v3 = (v0 + 448);
    v4 = v0 + 488;
    v5 = v2;
    sub_27409D85C(v5, v24);
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
    v6 = v24[5];
    *(v0 + 80) = v24[4];
    *(v0 + 96) = v6;
    *(v0 + 112) = v25;
    v7 = v24[1];
    *(v0 + 16) = v24[0];
    *(v0 + 32) = v7;
    v8 = v24[3];
    *(v0 + 48) = v24[2];
    *(v0 + 64) = v8;
    sub_2740A6D94(v0 + 16, v0 + 224, &qword_280938340, &qword_2741D1660);
    if (*(v0 + 232))
    {
      v9 = sub_2740F2248();
      v10 = swift_allocObject();
      v11 = *(v0 + 304);
      *(v10 + 80) = *(v0 + 288);
      *(v10 + 96) = v11;
      *(v10 + 112) = *(v0 + 320);
      v12 = *(v0 + 240);
      *(v10 + 16) = *(v0 + 224);
      *(v10 + 32) = v12;
      v13 = *(v0 + 272);
      *(v10 + 48) = *(v0 + 256);
      *(v10 + 64) = v13;
      v14 = &type metadata for ScannedNetwork;
    }

    else
    {
      sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
      v10 = 0;
      v14 = 0;
      v9 = 0;
      *(v0 + 456) = 0;
      *(v0 + 464) = 0;
    }

    v20 = *(v0 + 648);
    *(v0 + 448) = v10;
    *(v0 + 472) = v14;
    *(v0 + 480) = v9;
    swift_beginAccess();
    sub_2740A6D94(v20 + 48, v0 + 488, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 448, v20 + 48);
    swift_endAccess();
    sub_274158900(v0 + 488);
  }

  else
  {
    v3 = (v0 + 328);
    v4 = v0 + 368;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);
    v19 = __swift_project_value_buffer(v17, qword_280945DD8);
    (*(v16 + 16))(v15, v19, v17);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000012, 0x80000002741E2210);
    (*(v16 + 8))(v15, v17);
    *(v0 + 360) = 0;
    *v3 = 0u;
    *(v0 + 344) = 0u;
    swift_beginAccess();
    sub_2740A6D94(v18 + 48, v0 + 368, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 328, v18 + 48);
    swift_endAccess();
    sub_274158900(v0 + 368);
  }

  sub_27409D420(v4, &qword_2809395D8, &qword_2741CFF78);
  sub_27409D420(v3, &qword_2809395D8, &qword_2741CFF78);
  *(v0 + 680) = sub_2741C80AC();
  *(v0 + 688) = sub_2741C809C();
  v22 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DAA4, v22, v21);
}

uint64_t sub_27415DAA4()
{
  v1 = *(v0 + 688);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415DB3C, 0, 0);
}

uint64_t sub_27415DB3C()
{
  v1 = *(v0 + 680);
  *(v0 + 696) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DBC8, v3, v2);
}

uint64_t sub_27415DBC8()
{
  v1 = *(v0 + 696);

  *(v0 + 704) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415DC44, 0, 0);
}

uint64_t sub_27415DC44()
{
  v1 = *(v0 + 680);
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  *(v0 + 712) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DCF0, v3, v2);
}

uint64_t sub_27415DCF0()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  sub_2741B9380(v0 + 16, v0 + 120);

  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_27415DD88, 0, 0);
}

uint64_t sub_27415DD88()
{
  v1 = *(v0 + 680);
  *(v0 + 720) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DE14, v3, v2);
}

uint64_t sub_27415DE14()
{
  v1 = *(v0 + 720);

  return MEMORY[0x2822009F8](sub_27415DE7C, 0, 0);
}

uint64_t sub_27415DE7C()
{
  v1 = *(v0 + 680);
  *(v0 + 728) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DF08, v3, v2);
}

uint64_t sub_27415DF08()
{
  v1 = *(v0 + 728);

  *(v0 + 736) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415DF84, 0, 0);
}

uint64_t sub_27415DF84()
{
  v1 = *(v0 + 648);
  swift_beginAccess();
  sub_2740A6D94(v1 + 48, v0 + 408, &qword_2809395D8, &qword_2741CFF78);
  v2 = *(v0 + 432);
  sub_27409D420(v0 + 408, &qword_2809395D8, &qword_2741CFF78);
  if (v2)
  {
    v3 = *(*(v0 + 648) + 16);
    v4 = sub_2741BC2FC();
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 113) = v4 & 1;
  v5 = *(v0 + 680);
  *(v0 + 744) = sub_2741C809C();
  v7 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E09C, v7, v6);
}

uint64_t sub_27415E09C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 113);
  v3 = *(v0 + 736);

  sub_2741BB034(v2);

  return MEMORY[0x2822009F8](sub_27415E120, 0, 0);
}

uint64_t sub_27415E120()
{
  v1 = *(v0 + 672);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27415E19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_2741C6AFC();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415E25C, 0, 0);
}

uint64_t sub_27415E25C()
{
  v1 = [*(*(v0 + 208) + 16) userSettings];
  *(v0 + 240) = v1;
  if (!v1)
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 216);
    v13 = __swift_project_value_buffer(v12, qword_280945DD8);
    (*(v11 + 16))(v10, v13, v12);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000023, 0x80000002741E2460);
    (*(v11 + 8))(v10, v12);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_2740CD860([v1 askToJoinMode]);
  *(v0 + 305) = v3;
  if (v3 == 4)
  {
    v4 = "om CoreWiFi are nil";
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    v8 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v6 + 16))(v5, v8, v7);
    v9 = 0xD00000000000002CLL;
LABEL_13:
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v9, v4 | 0x8000000000000000);

    (*(v6 + 8))(v5, v7);
LABEL_14:
    v16 = *(v0 + 232);

    v17 = *(v0 + 8);

    return v17();
  }

  v14 = sub_2740CD860([v2 autoHotspotMode]);
  *(v0 + 306) = v14;
  if (v14 == 4)
  {
    v4 = "ing not mapped from CoreWiFi";
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    v15 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v6 + 16))(v5, v15, v7);
    v9 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v19 = [v2 OSSpecificAttributes];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v21 = sub_2741C7D6C();

  *(v0 + 176) = 0xD000000000000018;
  *(v0 + 184) = 0x80000002741E2510;
  sub_2741C850C();
  if (!*(v21 + 16) || (v22 = sub_274125164(v0 + 56), (v23 & 1) == 0))
  {

    sub_27409D2A4(v0 + 56);
LABEL_24:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_25;
  }

  sub_27409D308(*(v21 + 56) + 32 * v22, v0 + 96);
  sub_27409D2A4(v0 + 56);

  if (!*(v0 + 120))
  {
LABEL_25:
    sub_27409D420(v0 + 96, &qword_280937E28, &unk_2741CB3D0);
    v25 = 0;
    v26 = 0;
    goto LABEL_26;
  }

  v24 = swift_dynamicCast();
  v25 = *(v0 + 192);
  v26 = *(v0 + 200);
  if (!v24)
  {
    v25 = 0;
    v26 = 0;
  }

LABEL_26:
  *(v0 + 248) = v25;
  *(v0 + 256) = v26;
  v27 = [v2 OSSpecificAttributes];
  if (!v27)
  {
LABEL_33:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_34;
  }

  v28 = v27;
  v29 = sub_2741C7D6C();

  *(v0 + 160) = 0xD00000000000001ALL;
  *(v0 + 168) = 0x80000002741E24F0;
  sub_2741C850C();
  if (!*(v29 + 16) || (v30 = sub_274125164(v0 + 16), (v31 & 1) == 0))
  {

    sub_27409D2A4(v0 + 16);
    goto LABEL_33;
  }

  sub_27409D308(*(v29 + 56) + 32 * v30, v0 + 128);
  sub_27409D2A4(v0 + 16);

  if (*(v0 + 152))
  {
    v32 = swift_dynamicCast();
    v33 = *(v0 + 304);
    if (!v32)
    {
      v33 = 2;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_27409D420(v0 + 128, &qword_280937E28, &unk_2741CB3D0);
  v33 = 2;
LABEL_35:
  *(v0 + 307) = v33;
  *(v0 + 308) = [objc_opt_self() getPowerModificationState];
  *(v0 + 264) = sub_2741C80AC();
  *(v0 + 272) = sub_2741C809C();
  v35 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E810, v35, v34);
}

uint64_t sub_27415E810()
{
  v1 = *(v0 + 272);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415E8A8, 0, 0);
}

uint64_t sub_27415E8A8()
{
  v1 = *(v0 + 264);
  *(v0 + 280) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E934, v3, v2);
}

uint64_t sub_27415E934()
{
  v1 = *(v0 + 280);

  *(v0 + 288) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415E9B0, 0, 0);
}

uint64_t sub_27415E9B0()
{
  v1 = *(v0 + 264);
  *(v0 + 296) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415EA3C, v3, v2);
}

uint64_t sub_27415EA3C()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 308);
  v4 = *(v0 + 307);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 305);

  if (v3)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_2741BB848(v7, v6, v5, v8 | v4);

  return MEMORY[0x2822009F8](sub_27415EAF8, 0, 0);
}

uint64_t sub_27415EAF8()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27415EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for KnownNetwork() - 8);
  v4[3] = v5;
  v6 = *(v5 + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415EC1C, 0, 0);
}

uint64_t sub_27415EC1C()
{
  v1 = [*(v0[2] + 16) knownNetworkProfilesWithProperties_];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
    v4 = sub_2741C7FEC();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[2];
  v6 = *(v5 + 88);
  *(v5 + 88) = v4;

  if (v4 >> 62)
  {
    v7 = sub_2741C848C();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_16:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_6:
  v22 = v2;
  v8 = sub_27419897C(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v11 = 0;
  v12 = v0[3];
  v13 = v22;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2743E6600](v11, v4);
    }

    else
    {
      v14 = *(v4 + 8 * v11 + 32);
    }

    sub_274117670(v14, v0[4]);
    v16 = *(v22 + 16);
    v15 = *(v22 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_27419897C(v15 > 1, v16 + 1, 1);
    }

    v17 = v0[4];
    ++v11;
    *(v22 + 16) = v16 + 1;
    sub_27409D240(v17, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16);
  }

  while (v7 != v11);

LABEL_17:
  v0[5] = v13;
  v0[6] = sub_2741C80AC();
  v0[7] = sub_2741C809C();
  v18 = sub_2741C805C();
  v20 = v19;
  v8 = sub_27415EE60;
  v9 = v18;
  v10 = v20;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_27415EE60()
{
  v1 = *(v0 + 56);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415EEF8, 0, 0);
}

uint64_t sub_27415EEF8()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415EF84, v3, v2);
}

uint64_t sub_27415EF84()
{
  v1 = *(v0 + 64);

  *(v0 + 72) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F000, 0, 0);
}

uint64_t sub_27415F000()
{
  v1 = *(v0 + 48);
  *(v0 + 80) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F08C, v3, v2);
}

uint64_t sub_27415F08C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[4];
  v3 = v0[5];

  sub_2741BBB14();

  v5 = v0[1];

  return v5();
}

uint64_t sub_27415F134()
{
  *(v0 + 16) = sub_2741C80AC();
  *(v0 + 24) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F1CC, v2, v1);
}

uint64_t sub_27415F1CC()
{
  v1 = *(v0 + 24);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F264, 0, 0);
}

uint64_t sub_27415F264()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F2F0, v3, v2);
}

uint64_t sub_27415F2F0()
{
  v1 = *(v0 + 32);

  *(v0 + 40) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F36C, 0, 0);
}

uint64_t sub_27415F36C()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F3F8, v3, v2);
}

uint64_t sub_27415F3F8()
{
  v2 = v0[5];
  v1 = v0[6];

  sub_2741BB034(0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_27415F488()
{
  *(v0 + 24) = sub_2741C80AC();
  *(v0 + 32) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F520, v2, v1);
}

uint64_t sub_27415F520()
{
  v1 = *(v0 + 32);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F5B8, 0, 0);
}

uint64_t sub_27415F5B8()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F644, v3, v2);
}

uint64_t sub_27415F644()
{
  v1 = *(v0 + 40);

  *(v0 + 48) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F6C0, 0, 0);
}

uint64_t sub_27415F6C0()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = [*(v0 + 16) RSSI];
  *(v0 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F75C, v3, v2);
}

uint64_t sub_27415F75C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_2741BABF0(v2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27415F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_2741C6AFC();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415F898, 0, 0);
}

uint64_t sub_27415F898()
{
  *(v0 + 208) = sub_2741C80AC();
  *(v0 + 216) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F930, v2, v1);
}

uint64_t sub_27415F930()
{
  v1 = *(v0 + 216);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F9C8, 0, 0);
}

uint64_t sub_27415F9C8()
{
  v1 = *(v0 + 208);
  *(v0 + 224) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415FA54, v3, v2);
}

uint64_t sub_27415FA54()
{
  v1 = *(v0 + 224);

  *(v0 + 232) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415FAD0, 0, 0);
}

uint64_t sub_27415FAD0()
{
  v1 = *(v0 + 208);
  *(v0 + 240) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415FB5C, v3, v2);
}

uint64_t sub_27415FB5C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);

  sub_2741BAB64(2, v0 + 96);

  return MEMORY[0x2822009F8](sub_27415FBD8, 0, 0);
}

uint64_t sub_27415FBD8()
{
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_27409D118((v0 + 56), v0 + 16);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v1 = sub_2741613D0(&qword_28093A6D8, type metadata accessor for CurrentNetworkState);
        v2 = *(v1 + 184);
        v3 = type metadata accessor for CurrentNetworkState();
        if (v2(v3, v1))
        {
LABEL_27:
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          goto LABEL_22;
        }

        v4 = [*(v0 + 176) info];
        if (v4)
        {
          v5 = v4;
          v6 = sub_2741C7D6C();

          if (!*(v6 + 16) || (v7 = sub_2741251AC(0x6573736572646441, 0xE900000000000073), (v8 & 1) == 0))
          {
LABEL_25:

            goto LABEL_26;
          }

          sub_27409D308(*(v6 + 56) + 32 * v7, v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
          if (swift_dynamicCast())
          {
            v9 = *(v0 + 168);
            if (v9[2])
            {
              v10 = *(v0 + 176);
              v12 = v9[4];
              v11 = v9[5];

              if ([v10 type] == 19)
              {
                v13 = objc_opt_self();
                v14 = sub_2741C7E3C();
                LOBYTE(v13) = [v13 ISValidIPv4Address_];

                if (v13)
                {
                  goto LABEL_14;
                }
              }

              if ([*(v0 + 176) type] == 20)
              {
                v15 = objc_opt_self();
                v16 = sub_2741C7E3C();
                LODWORD(v15) = [v15 IsValidIPv6Address_];

                if (v15)
                {
LABEL_14:
                  sub_2741C856C();

                  MEMORY[0x2743E5FB0](v12, v11);

                  if (qword_280937360 != -1)
                  {
                    swift_once();
                  }

                  v18 = *(v0 + 200);
                  v17 = *(v0 + 208);
                  v19 = *(v0 + 184);
                  v20 = *(v0 + 192);
                  v21 = __swift_project_value_buffer(v19, qword_280945DD8);
                  (*(v20 + 16))(v18, v21, v19);
                  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000012, 0x80000002741E2670);

                  (*(v20 + 8))(v18, v19);
                  *(v0 + 248) = sub_2741C809C();
                  v23 = sub_2741C805C();

                  return MEMORY[0x2822009F8](sub_2741600E0, v23, v22);
                }
              }

              goto LABEL_27;
            }

            v26 = *(v0 + 168);
            goto LABEL_25;
          }
        }

LABEL_26:
        sub_2740CB660(0xD000000000000031, 0x80000002741E25A0, 0xD000000000000065, 0x80000002741E25E0, 0xD000000000000016, 0x80000002741E2650);
        goto LABEL_27;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 96, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  sub_27409D420(v0 + 56, &qword_28093A6C8, &unk_2741D6570);
LABEL_22:
  v24 = *(v0 + 200);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2741600E0()
{
  v1 = *(v0 + 248);

  return MEMORY[0x2822009F8](sub_274160148, 0, 0);
}

uint64_t sub_274160148()
{
  v1 = *(v0 + 208);
  *(v0 + 256) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741601D4, v3, v2);
}

uint64_t sub_2741601D4()
{
  v1 = *(v0 + 256);

  *(v0 + 264) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274160250, 0, 0);
}

uint64_t sub_274160250()
{
  v1 = *(v0 + 208);
  *(v0 + 272) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741602DC, v3, v2);
}

uint64_t sub_2741602DC()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);

  sub_2741BB034(1);

  return MEMORY[0x2822009F8](sub_274160354, 0, 0);
}

uint64_t sub_274160354()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[25];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2741603BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_27409D420(v0 + 48, &qword_2809395D8, &qword_2741CFF78);
  v4 = *(v0 + 88);
}

uint64_t sub_27416041C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_27409D420((v0 + 6), &qword_2809395D8, &qword_2741CFF78);
  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_2741604CC()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

void sub_274160514(char a1, char a2)
{
  v4 = 0xD000000000000013;
  v5 = sub_2741C6AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2741C856C();

  v16 = 0xD000000000000019;
  v17 = 0x80000002741E2250;
  if (a1)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v10, v11);

  MEMORY[0x2743E5FB0](0x6F73616572202D20, 0xEB00000000203A6ELL);
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v12 = "settings did become inactive";
    }

    else
    {
      v12 = "setting global auto join ";
    }
  }

  else
  {
    v12 = "association finished";
  }

  MEMORY[0x2743E5FB0](v4, v12 | 0x8000000000000000);

  v13 = v16;
  v14 = v17;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280945DD8);
  (*(v6 + 16))(v9, v15, v5);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v13, v14);

  (*(v6 + 8))(v9, v5);
  WiFiManagerSetAutoJoinEnabled(a1 & 1);
}

uint64_t sub_274160770()
{
  if (v0[3])
  {

    v1 = v0[5];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2741607BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27416080C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2740A7434;

  return sub_274159258(a1, v4, v5, v6, v7);
}

uint64_t sub_2741608D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415EB60(a1, v4, v5, v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2741609B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415F7D8(a1, v4, v5, v6);
}

uint64_t sub_274160A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27415E19C(a1, v4, v5, v6);
}

uint64_t sub_274160B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415CE78(a1, v4, v5, v6);
}

void sub_274160BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 info];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_2741C7D6C();

  v14 = *MEMORY[0x277D02A88];
  v15 = sub_2741C7E7C();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v17 = sub_2741251AC(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_27409D308(*(v13 + 56) + 32 * v17, v27);

  sub_2740BA268(0, &qword_28093A6B8, 0x277D02B20);
  if (swift_dynamicCast())
  {
    v20 = v26;
    if ([v26 isLinkDown])
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v7 + 16))(v10, v21, v6);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD00000000000001CLL, 0x80000002741E2400);
      (*(v7 + 8))(v10, v6);
      v22 = sub_2741C80DC();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      sub_2740CE980(0, 0, v5, &unk_2741D49B8, v23);
    }

    else
    {
    }

    return;
  }

LABEL_11:
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v24, v6);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000033, 0x80000002741E23C0);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_274160FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415BE18(a1, v4, v5, v6);
}

uint64_t sub_274161090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415AD1C(a1, v4, v5, v6);
}

uint64_t sub_274161144()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27416117C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2740A7434;

  return sub_27415F118();
}

uint64_t sub_274161228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415D624(a1, v4, v5, v6);
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27416131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415F468(a1, v4, v5, v6);
}

uint64_t sub_2741613D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274161418(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for HotspotError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HotspotError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2741614EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274161508(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_274161538(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_2741C856C();

    v2 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v2);

    MEMORY[0x2743E5FB0](0x74706D6574746120, 0xE900000000000073);
  }

  return 0xD00000000000001FLL;
}

unint64_t sub_274161610()
{
  if (*(v0 + 8))
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *(v0 + 8);
  return result;
}

unint64_t sub_274161658(uint64_t a1)
{
  result = sub_27411D4AC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27416168C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2741616E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_274161778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A708, &qword_2741D4BE8);
  sub_2740A6D24(&qword_28093A710, &qword_28093A708, &qword_2741D4BE8);
  return sub_2741C761C();
}

void sub_27416181C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A718, &qword_2741D4BF0);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v60 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A720, &qword_2741D4BF8);
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v69);
  v61 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v71 = a1;
  v19 = *(a1 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v20 = v76;
  v70 = v16;
  if (v76)
  {
    v62 = v17;
    v21 = *(sub_2741C6D0C() + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption);

    if (v21 == 3 || (v23 = *(sub_2741C6D0C() + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption), v22 = , v23 == 1))
    {
      MEMORY[0x28223BE20](v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A770, &qword_2741D4CA8);
      sub_274167AB0();
      v24 = v61;
      sub_2741C7B9C();

      v25 = v69;
      v16 = v70;
      (*(v8 + 32))(v70, v24, v69);
      v26 = 0;
    }

    else
    {

      v26 = 1;
      v25 = v69;
    }
  }

  else
  {
    v26 = 1;
    v25 = v69;
  }

  (*(v8 + 56))(v16, v26, 1, v25);
  if (qword_280937AF0 != -1)
  {
    swift_once();
  }

  v28 = qword_280946DC8;
  v27 = unk_280946DD0;

  sub_2741C6D1C();
  swift_getKeyPath();
  sub_2741C6E2C();

  v29 = v76;
  v30 = v77;
  v31 = v78;
  v76 = v28;
  v77 = v27;
  v78 = v29;
  v79 = v30;
  v80 = v31;
  v32 = v71;
  if (!sub_274164100())
  {
    v33 = 0;
    goto LABEL_16;
  }

  v33 = *(v32 + 40);
  if (!v33)
  {
LABEL_16:
    v46 = 0xE000000000000000;
    goto LABEL_17;
  }

  v34 = *(v32 + 32);
  v35 = qword_280937B10;
  v36 = *(v32 + 40);

  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_2741C7E3C();
  v38 = MGGetStringAnswer();

  if (v38)
  {
    v39 = MEMORY[0x277D837D0];
    v40 = sub_2741C7EAC();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2741CC090;
    *(v43 + 56) = v39;
    v44 = sub_27410D7BC();
    *(v43 + 32) = v34;
    *(v43 + 40) = v33;
    *(v43 + 96) = v39;
    *(v43 + 104) = v44;
    *(v43 + 64) = v44;
    *(v43 + 72) = v40;
    *(v43 + 80) = v42;
    v33 = sub_2741C7E4C();
    v46 = v45;

LABEL_17:
    v72 = v33;
    v73 = v46;
    sub_2740A6A74();
    v72 = sub_2741C76AC();
    v73 = v47;
    v74 = v48 & 1;
    v75 = v49;
    MEMORY[0x28223BE20](v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A730, &qword_2741D4C78);
    sub_274167814();
    sub_274167868();
    v50 = v64;
    sub_2741C7B8C();
    v51 = v70;
    v52 = v63;
    sub_2741679D0(v70, v63);
    v54 = v67;
    v53 = v68;
    v55 = *(v67 + 16);
    v56 = v65;
    v55(v65, v50, v68);
    v57 = v66;
    sub_2741679D0(v52, v66);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A768, &unk_2741D4C98);
    v55((v57 + *(v58 + 48)), v56, v53);
    v59 = *(v54 + 8);
    v59(v50, v53);
    sub_274167A40(v51);
    v59(v56, v53);
    sub_274167A40(v52);
    return;
  }

  __break(1u);
}

uint64_t sub_274161FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A0, qword_2741D4CC0);
  sub_2741620A4(a1, a2, a3 + *(v6 + 44));
  v7 = sub_2741C7C6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A770, &qword_2741D4CA8);
  v9 = a3 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = v10;
  return result;
}

uint64_t sub_2741620A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v111 = a3;
  v4 = sub_2741C717C();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A8, &qword_2741D4D20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v119 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B0, &qword_2741D4D28);
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v18 = *(v17 - 8);
  v107 = v17;
  v108 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v114 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v94 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7C0, &qword_2741D4D38);
  v23 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v94 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7C8, &qword_2741D4D40);
  v25 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v103 = &v94 - v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7D0, &unk_2741D4D48);
  v27 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v99 = &v94 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v98 = *(v100 - 8);
  v29 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v94 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7D8, &qword_2741D4D58);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v117 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v94 - v35;
  v37 = *(a1 + 8);
  v38 = *(a1 + 16);
  v112 = a1;
  v39 = *(a1 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v116 = v36;
  if (v126 == 1)
  {
    v40 = v101;
    sub_2741C6D3C();
    v41 = v98;
    v42 = v100;
    (*(v98 + 16))(v103, v40, v100);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    sub_274167C04();
    v43 = v99;
    sub_2741C72CC();
    sub_2740A6D94(v43, v104, &qword_28093A7D0, &unk_2741D4D48);
    swift_storeEnumTagMultiPayload();
    sub_274167CBC();
    sub_274167D74();
    v44 = v107;
    sub_2741C72CC();
    sub_27409D420(v43, &qword_28093A7D0, &unk_2741D4D48);
    (*(v41 + 8))(v101, v42);
  }

  else
  {
    v45 = v103;
    v46 = v104;
    sub_2741C6D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    if (v126)
    {

      v47 = v115;
      sub_2741630DC(v115);
      sub_2740A6D94(v47, v46, &qword_28093A7B8, &qword_2741D4D30);
      swift_storeEnumTagMultiPayload();
      sub_274167CBC();
      sub_274167D74();
      v36 = v116;
      v44 = v107;
      sub_2741C72CC();
      v48 = v47;
      v49 = &qword_28093A7B8;
      v50 = &qword_2741D4D30;
    }

    else
    {
      v51 = sub_2741C79CC();
      v52 = sub_2741C797C();
      KeyPath = swift_getKeyPath();
      *v45 = v51;
      v45[1] = KeyPath;
      v45[2] = v52;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
      sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
      sub_274167C04();
      v54 = v99;
      sub_2741C72CC();
      sub_2740A6D94(v54, v46, &qword_28093A7D0, &unk_2741D4D48);
      swift_storeEnumTagMultiPayload();
      sub_274167CBC();
      sub_274167D74();
      v55 = v116;
      v44 = v107;
      sub_2741C72CC();

      v36 = v55;

      v48 = v54;
      v49 = &qword_28093A7D0;
      v50 = &unk_2741D4D48;
    }

    sub_27409D420(v48, v49, v50);
  }

  v56 = sub_2741C71BC();
  v57 = 1;
  v140 = 1;
  v58 = v112;
  v59 = v113;
  sub_2741633A0(v113, v112, &v126);
  v143 = v128;
  v144 = v129;
  v145 = v130;
  v141 = v126;
  v142 = v127;
  v146[2] = v128;
  v146[3] = v129;
  v147 = v130;
  v146[0] = v126;
  v146[1] = v127;
  sub_2740A6D94(&v141, &v124, &qword_28093A800, &qword_2741D4E30);
  v60 = v58;
  sub_27409D420(v146, &qword_28093A800, &qword_2741D4E30);
  *(&v139[1] + 7) = v142;
  *(&v139[2] + 7) = v143;
  *(&v139[3] + 7) = v144;
  *(&v139[4] + 7) = v145;
  *(v139 + 7) = v141;
  LOBYTE(v58) = v140;
  v61 = *v60;
  sub_2741C7C1C();
  sub_2741C6F1C();
  v124 = v56;
  LOBYTE(v125[0]) = v58;
  *(&v125[1] + 1) = v139[1];
  *(&v125[2] + 1) = v139[2];
  *(&v125[3] + 1) = v139[3];
  v125[4] = *(&v139[3] + 15);
  *(v125 + 1) = v139[0];
  v62 = swift_allocObject();
  v63 = *(v60 + 16);
  *(v62 + 16) = *v60;
  *(v62 + 32) = v63;
  v64 = *(v60 + 48);
  *(v62 + 48) = *(v60 + 32);
  *(v62 + 64) = v64;
  *(v62 + 80) = v59;
  sub_27416698C(v60, &v126);
  v65 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A808, &qword_2741D4E38);
  sub_274167E40();
  sub_2741C773C();

  v136 = v125[9];
  v137 = v125[10];
  v138 = v125[11];
  v132 = v125[5];
  v133 = v125[6];
  v134 = v125[7];
  v135 = v125[8];
  v128 = v125[1];
  v129 = v125[2];
  v130 = v125[3];
  v131 = v125[4];
  v126 = v124;
  v127 = v125[0];
  sub_27409D420(&v126, &qword_28093A808, &qword_2741D4E38);
  v66 = *&v65[OBJC_IVAR___WiFiNetwork_Swift_securityType];
  if ((v66 & 0x200) == 0)
  {
    v57 = 1;
    if (v66)
    {
      if ((v66 & 0x100) == 0)
      {
        v67 = v44;
        v68 = sub_2741C79CC();
        v69 = sub_2741C799C();
        v70 = swift_getKeyPath();
        *&v124 = v68;
        *(&v124 + 1) = v70;
        *&v125[0] = v69;
        if (qword_280937B00 != -1)
        {
          swift_once();
        }

        v122 = qword_280946DE8;
        v123 = unk_280946DF0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
        sub_274167C04();
        sub_2740A6A74();
        v71 = v114;
        sub_2741C77BC();

        v72 = v95;
        sub_2741C716C();
        v73 = v115;
        sub_2741C6E5C();
        (*(v96 + 8))(v72, v97);
        v74 = v71;
        v44 = v67;
        sub_27409D420(v74, &qword_28093A7B8, &qword_2741D4D30);
        sub_2740A6C18(v73, v120, &qword_28093A7B8, &qword_2741D4D30);
        v57 = 0;
        v36 = v116;
      }
    }
  }

  v75 = v120;
  (*(v108 + 56))(v120, v57, 1, v44);
  v76 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  v77 = *&v65[v76];
  v78 = v77 + 77.5;
  v79 = fabsf(sqrtf((v78 * v78) + 450.0));
  v80 = v115;
  sub_274163E20(v115, ((v78 / (v79 + v79)) + 0.5));
  v81 = v117;
  sub_2740A6D94(v36, v117, &qword_28093A7D8, &qword_2741D4D58);
  v83 = v109;
  v82 = v110;
  v84 = *(v109 + 16);
  v85 = v118;
  v84(v118, v121, v110);
  sub_2740A6D94(v75, v119, &qword_28093A7A8, &qword_2741D4D20);
  v86 = v114;
  sub_2740A6D94(v80, v114, &qword_28093A7B8, &qword_2741D4D30);
  v87 = v81;
  v88 = v111;
  sub_2740A6D94(v87, v111, &qword_28093A7D8, &qword_2741D4D58);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A828, &qword_2741D4E48);
  v84((v88 + v89[12]), v85, v82);
  v90 = v88 + v89[16];
  *v90 = 0;
  *(v90 + 8) = 1;
  v91 = v119;
  sub_2740A6D94(v119, v88 + v89[20], &qword_28093A7A8, &qword_2741D4D20);
  sub_2740A6D94(v86, v88 + v89[24], &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v80, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v120, &qword_28093A7A8, &qword_2741D4D20);
  v92 = *(v83 + 8);
  v92(v121, v82);
  sub_27409D420(v116, &qword_28093A7D8, &qword_2741D4D58);
  sub_27409D420(v86, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v91, &qword_28093A7A8, &qword_2741D4D20);
  v92(v118, v82);
  return sub_27409D420(v117, &qword_28093A7D8, &qword_2741D4D58);
}

uint64_t sub_2741630DC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v19 = sub_2741C717C();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v5 = *(*(v18[0] - 8) + 64);
  MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - v6;
  if (qword_280937B08 != -1)
  {
    swift_once();
  }

  v8 = sub_2741C79BC();
  v9 = sub_2741C796C();
  KeyPath = swift_getKeyPath();
  v22 = v8;
  v23 = KeyPath;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_2741CB550;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = 0;
  v14 = sub_2741C7E4C();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
  sub_274167C04();
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v1 + 8))(v4, v19);
  return sub_27409D420(v7, &qword_28093A7B8, &qword_2741D4D30);
}

uint64_t sub_2741633A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v69 = a3;
  v4 = sub_2741C70DC();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v58 - v8;
  v9 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  *&v70 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name);
  *(&v70 + 1) = v9;
  v10 = sub_2740A6A74();

  v62 = v10;
  v11 = sub_2741C76AC();
  v13 = v12;
  v15 = v14;
  sub_2741C75EC();
  v16 = sub_2741C767C();
  v18 = v17;
  v20 = v19;

  sub_2740A6AC8(v11, v13, v15 & 1);

  LODWORD(v70) = sub_2741C736C();
  v21 = sub_2741C764C();
  v23 = v22;
  v68 = v24;
  v26 = v25;
  sub_2740A6AC8(v16, v18, v20 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v27 = v67;

  if ((v70 & 1) != 0 || (v70 = *(v27 + 48), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0), sub_2741C7A3C(), v71 == 1))
  {
    v70 = *(v27 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A3C();
    v60 = v21;
    v61 = v26;
    v59 = v23;
    if (v71 == 1)
    {
      v28 = (a1 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
      swift_beginAccess();
    }

    else
    {
      if (qword_280937AF8 != -1)
      {
        swift_once();
      }

      v28 = &qword_280946DD8;
    }

    v30 = *v28;
    v29 = v28[1];

    v71 = v30;
    v72 = v31;
    v32 = sub_2741C76AC();
    v34 = v33;
    v36 = v35;
    sub_2741C758C();
    v37 = sub_2741C767C();
    v39 = v38;
    v41 = v40;

    sub_2740A6AC8(v32, v34, v36 & 1);

    sub_2741C798C();
    v42 = sub_2741C763C();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_2740A6AC8(v37, v39, v41 & 1);

    v49 = v64;
    sub_2741C70CC();
    v51 = v65;
    v50 = v66;
    (*(v65 + 16))(v63, v49, v66);
    sub_274168064(&qword_28093A838, MEMORY[0x277CE0068]);
    v52 = sub_2741C6D9C();
    (*(v51 + 8))(v49, v50);
    v53 = v46 & 1;
    sub_27409861C(v42, v44, v46 & 1);

    v21 = v60;
    v26 = v61;
    v23 = v59;
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v53 = 0;
    v48 = 0;
    v52 = 0;
  }

  v54 = v68 & 1;
  LOBYTE(v71) = v68 & 1;
  sub_27409861C(v21, v23, v68 & 1);

  sub_274167FC4(v42, v44, v53, v48);
  sub_274168014(v42, v44, v53, v48);
  v55 = v71;
  v56 = v69;
  *v69 = v21;
  v56[1] = v23;
  *(v56 + 16) = v55;
  v56[3] = v26;
  v56[4] = v42;
  v56[5] = v44;
  v56[6] = v53;
  v56[7] = v48;
  v56[8] = v52;
  sub_274168014(v42, v44, v53, v48);
  sub_2740A6AC8(v21, v23, v54);
}

uint64_t sub_2741638E0(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6];
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2741C80AC();
  sub_27416698C(a1, v19);
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v13;
  sub_2740CE980(0, 0, v7, &unk_2741D4E58, v10);

  v14 = (a2 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
  result = swift_beginAccess();
  v16 = v14[1];
  v17 = *v14 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v16) & 0xF;
  }

  if (v17)
  {
    MEMORY[0x28223BE20](result);
    *&v18[-16] = a1;
    sub_2741C7C5C();
    sub_2741C6DCC();
  }

  return result;
}

uint64_t sub_274163AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274163B58, v6, v5);
}

uint64_t sub_274163B58()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2740CB960(0xD000000000000023, 0x80000002741E27E0);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  v6 = sub_27411FEBC();

  v7 = type metadata accessor for RemoteWiFiPickerEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 2;
  *(v8 + 24) = v6;
  if (qword_280937380 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v0[5] = v7;
  v0[6] = &off_288326FB8;
  v0[2] = v8;
  v9 = sub_2741C7E3C();
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_2740AD218();
  sub_274167644();
  v11 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_274163D4C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2[1] = *(a1 + 48);
  v4 = *(&v3 + 1);
  sub_2740A6D94(&v4, v2, &qword_28093A830, &unk_2741D4E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  v2[0] = v3;
  sub_2741C7A4C();
  return sub_27409D420(&v3, &qword_280937F20, &qword_2741CCFB0);
}

uint64_t sub_274163E20@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22[1] = a1;
  v23 = sub_2741C717C();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v7 = *(*(v22[0] - 8) + 64);
  MEMORY[0x28223BE20](v22[0]);
  v9 = v22 - v8;
  if (qword_280937B08 != -1)
  {
    swift_once();
  }

  v10 = 2;
  if (a2 > 0.5)
  {
    v10 = 3;
  }

  if (a2 < 0.5)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_2741C79BC();
  v13 = sub_2741C799C();
  KeyPath = swift_getKeyPath();
  v26 = v12;
  v27 = KeyPath;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D83B88];
  *(v15 + 16) = xmmword_2741CB550;
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = v11;
  v18 = sub_2741C7E4C();
  v20 = v19;

  v24 = v18;
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
  sub_274167C04();
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v3 + 8))(v6, v23);
  return sub_27409D420(v9, &qword_28093A7B8, &qword_2741D4D30);
}

BOOL sub_274164100()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v4 = v24;
  v25 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v20 = v4;
    while (1)
    {
      if (v22)
      {
        v7 = MEMORY[0x2743E6600](v6, v4);
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = *&v7[OBJC_IVAR___WiFiNetwork_Swift_name];
      v11 = *&v7[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      sub_2741C6D0C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      if (!v23)
      {

LABEL_18:
        sub_2741C859C();
        v16 = *(v25 + 16);
        sub_2741C85BC();
        sub_2741C85CC();
        sub_2741C85AC();
        goto LABEL_5;
      }

      v13 = *&v23[OBJC_IVAR___WiFiNetwork_Swift_name];
      v12 = *&v23[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      if (v10 == v13 && v11 == v12)
      {
      }

      else
      {
        v15 = sub_2741C86DC();

        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v6;
      v4 = v20;
      if (v9 == i)
      {
        v17 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_25:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v18 = sub_2741C848C();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  return v18 > 0;
}

uint64_t sub_27416447C(uint64_t KeyPath)
{
  sub_2741C856C();

  v30[0] = 0xD000000000000015;
  v30[1] = 0x80000002741E2810;
  v2 = *(KeyPath + 8);
  v3 = *(KeyPath + 16);
  v4 = *(KeyPath + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v5 = type metadata accessor for WiFiNetwork();
  v6 = MEMORY[0x2743E6080](v31, v5);
  v8 = v7;

  MEMORY[0x2743E5FB0](v6, v8);

  sub_2740CB960(0xD000000000000015, 0x80000002741E2810);

  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v9 = 0xD000000000000015;
  v30[0] = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = sub_2741C848C();
    if (!v21)
    {
      break;
    }

    v26 = KeyPath;
    v10 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v27 = v9;
    while (1)
    {
      if (v29)
      {
        v11 = MEMORY[0x2743E6600](v10, v9);
      }

      else
      {
        if (v10 >= *(v28 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v9 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = *&v11[OBJC_IVAR___WiFiNetwork_Swift_name];
      v14 = *&v11[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      sub_2741C6D0C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      if (!v31)
      {

LABEL_17:
        sub_2741C859C();
        v19 = *(v30[0] + 16);
        sub_2741C85BC();
        sub_2741C85CC();
        sub_2741C85AC();
        goto LABEL_4;
      }

      KeyPath = *&v31[OBJC_IVAR___WiFiNetwork_Swift_name];
      v16 = *&v31[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      if (v15 == KeyPath && v14 == v16)
      {
      }

      else
      {
        v18 = sub_2741C86DC();

        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      ++v10;
      v9 = v27;
      if (v13 == v21)
      {
        v20 = v30[0];
        KeyPath = v26;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  v20 = MEMORY[0x277D84F90];
LABEL_24:

  v31 = v20;
  swift_getKeyPath();
  v22 = swift_allocObject();
  v23 = *(KeyPath + 16);
  v22[1] = *KeyPath;
  v22[2] = v23;
  v24 = *(KeyPath + 48);
  v22[3] = *(KeyPath + 32);
  v22[4] = v24;
  sub_27416698C(KeyPath, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A750, &qword_2741D4C80);
  sub_2740A6D24(&qword_28093A840, &qword_2809399D8, &unk_2741D32B0);
  sub_2741678EC();
  return sub_2741C7B5C();
}

uint64_t sub_2741649CC@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_2741C856C();

  v15[0] = 0xD000000000000010;
  v15[1] = 0x80000002741E2830;
  v6 = [v5 description];
  v7 = sub_2741C7E7C();
  v9 = v8;

  MEMORY[0x2743E5FB0](v7, v9);

  sub_2740CB960(0xD000000000000010, 0x80000002741E2830);

  v10 = swift_allocObject();
  v11 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  v12 = a2[3];
  *(v10 + 48) = a2[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = v5;
  sub_27416698C(a2, v15);
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A848, &qword_2741D4EE8);
  sub_2740A6D24(&qword_28093A850, &qword_28093A848, &qword_2741D4EE8);
  sub_2741C7A7C();
  LODWORD(v6) = sub_2741C736C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A750, &qword_2741D4C80);
  *(a3 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_274164B88(_OWORD *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2741C80DC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_2741C80AC();
  sub_27416698C(a1, v21);
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  v14 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v14;
  sub_2740CE980(0, 0, v7, &unk_2741D4F08, v11);

  v9(v7, 1, 1, v8);
  sub_27416698C(a1, v21);
  v15 = a2;
  v16 = sub_2741C809C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  v18 = a1[1];
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  v19 = a1[3];
  *(v17 + 64) = a1[2];
  *(v17 + 80) = v19;
  *(v17 + 96) = v15;
  sub_2740CE980(0, 0, v7, &unk_2741D4F18, v17);
}

uint64_t sub_274164D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274164E08, v6, v5);
}

uint64_t sub_274164E08()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2740CB960(0xD00000000000001DLL, 0x80000002741E2850);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  v6 = sub_27411FEBC();

  v7 = type metadata accessor for RemoteWiFiPickerEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  *(v8 + 24) = v6;
  if (qword_280937380 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v0[5] = v7;
  v0[6] = &off_288326FB8;
  v0[2] = v8;
  v9 = sub_2741C7E3C();
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_2740AD218();
  sub_274167644();
  v11 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_274164FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2741C80AC();
  v5[4] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_274165094, v7, v6);
}

uint64_t sub_274165094()
{
  v1 = v0[2];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  v0[7] = sub_2741C6D0C();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_27416519C;
  v6 = v0[3];

  return sub_27411EE50(v6);
}

uint64_t sub_27416519C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2741310F0, v5, v4);
}

void sub_2741652E0(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A858, &qword_2741D4EF0);
  sub_274165348(a1, a2, (a3 + *(v6 + 44)));
}

void sub_274165348(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a3;
  v5 = sub_2741C717C();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A8, &qword_2741D4D20);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  v23 = sub_2741C6E1C();
  v25 = v23;
  v26 = v24;
  v27 = *&a1[OBJC_IVAR___WiFiNetwork_Swift_securityType];
  v54 = v19;
  if ((v27 & 0x200) == 0 && (v27 ? (v28 = (v27 & 0x100) == 0) : (v28 = 0), v28))
  {
    v46 = v24;
    v47 = v23;
    v45 = a1;
    v30 = a1;
    v31 = sub_2741C79CC();
    v32 = sub_2741C799C();
    KeyPath = swift_getKeyPath();
    v58 = v31;
    v59 = KeyPath;
    v60 = v32;
    if (qword_280937B00 != -1)
    {
      swift_once();
    }

    v56 = qword_280946DE8;
    v57 = unk_280946DF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_274167C04();
    sub_2740A6A74();
    v34 = v55;
    sub_2741C77BC();

    v35 = v48;
    sub_2741C716C();
    sub_2741C6E5C();
    (*(v49 + 8))(v35, v50);
    sub_27409D420(v34, &qword_28093A7B8, &qword_2741D4D30);
    v19 = v54;
    sub_2740A6C18(v13, v54, &qword_28093A7B8, &qword_2741D4D30);
    (*(v52 + 56))(v19, 0, 1, v8);
    a1 = v45;
    v26 = v46;
    v25 = v47;
  }

  else
  {
    (*(v52 + 56))(v19, 1, 1, v8);
    v29 = a1;
  }

  v36 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  v37 = *&a1[v36];
  v38 = v37 + 77.5;
  v39 = fabsf(sqrtf((v38 * v38) + 450.0));
  sub_274163E20(v13, ((v38 / (v39 + v39)) + 0.5));
  v40 = v53;
  sub_2740A6D94(v19, v53, &qword_28093A7A8, &qword_2741D4D20);
  v41 = v55;
  sub_2740A6D94(v13, v55, &qword_28093A7B8, &qword_2741D4D30);
  v42 = v51;
  *v51 = 0x4046800000000000;
  v42[1] = a1;
  v42[2] = v25;
  v42[3] = v26;
  v42[4] = 0;
  *(v42 + 40) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A860, &qword_2741D4EF8);
  sub_2740A6D94(v40, v42 + *(v43 + 64), &qword_28093A7A8, &qword_2741D4D20);
  sub_2740A6D94(v41, v42 + *(v43 + 80), &qword_28093A7B8, &qword_2741D4D30);
  v44 = a1;

  sub_27409D420(v13, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v54, &qword_28093A7A8, &qword_2741D4D20);
  sub_27409D420(v41, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v40, &qword_28093A7A8, &qword_2741D4D20);
}

uint64_t sub_274165914(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_2741C80DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_2741C80AC();
  sub_27416698C(a1, v18);
  v8 = sub_2741C809C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  v12 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v12;
  sub_2740CE980(0, 0, v5, &unk_2741D4BD0, v9);

  v7(v5, 1, 1, v6);
  sub_27416698C(a1, v18);
  v13 = sub_2741C809C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  v16 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v16;
  sub_2740CE980(0, 0, v5, &unk_2741D4BE0, v14);
}

uint64_t sub_274165AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274165B7C, v6, v5);
}

uint64_t sub_274165B7C()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2740CB960(0xD00000000000001ELL, 0x80000002741E2750);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  v6 = sub_27411FEBC();

  v7 = type metadata accessor for RemoteWiFiPickerEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v6;
  if (qword_280937380 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v0[5] = v7;
  v0[6] = &off_288326FB8;
  v0[2] = v8;
  v9 = sub_2741C7E3C();
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_2740AD218();
  sub_274167644();
  v11 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_274165D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_274165E04, v6, v5);
}

uint64_t sub_274165E04()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = *(v1 + 8);
  *(v0 + 64) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 72) = type metadata accessor for NetworksViewModel();
  *(v0 + 80) = sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  *(v0 + 88) = sub_2741C6D0C();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_274165F1C;

  return sub_27411E620();
}

uint64_t sub_274165F1C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_274166060, v5, v4);
}

uint64_t sub_274166060()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 104);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 32);

  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v7 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong wifiPickerViewDidAppear];
    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_274166184(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_2741C80DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_2741C80AC();
  sub_27416698C(a1, v18);
  v8 = sub_2741C809C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  v12 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v12;
  sub_2740CE980(0, 0, v5, &unk_2741D4B68, v9);

  v7(v5, 1, 1, v6);
  sub_27416698C(a1, v18);
  v13 = sub_2741C809C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  v16 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v16;
  sub_2740CEC80(0, 0, v5, &unk_2741D4B78, v14);
}

uint64_t sub_274166354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741663EC, v6, v5);
}

uint64_t sub_2741663EC()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2740CB960(0xD00000000000001FLL, 0x80000002741E2710);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  v6 = sub_27411FEBC();

  v7 = type metadata accessor for RemoteWiFiPickerEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v8 + 24) = v6;
  if (qword_280937380 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v0[5] = v7;
  v0[6] = &off_288326FB8;
  v0[2] = v8;
  v9 = sub_2741C7E3C();
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  sub_2740AD218();
  sub_274167644();
  v11 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = v0[1];

  return v12();
}

uint64_t sub_2741665E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2741C80AC();
  v4[5] = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274166678, v6, v5);
}

uint64_t sub_274166678()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworksViewModel();
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v6 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong wifiPickerViewDidDisappear];
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2741667E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = v1[3];
  v17 = v1[2];
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6E0, &qword_2741D4B40);
  sub_2740A6D24(&qword_28093A6E8, &qword_28093A6E0, &qword_2741D4B40);
  sub_2741C6E0C();
  v5 = swift_allocObject();
  v6 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v6;
  v7 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6F0, &qword_2741D4B48) + 36));
  *v8 = sub_27416697C;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v16;
  v9[1] = v15;
  v9[2] = v10;
  v11 = v18;
  v9[3] = v17;
  v9[4] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6F8, &unk_2741D4B50) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_274166984;
  v12[3] = v9;
  sub_27416698C(&v15, v14);
  return sub_27416698C(&v15, v14);
}

uint64_t sub_2741669C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274166354(a1, v4, v5, v1 + 32);
}

uint64_t sub_274166A74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_2741665E0(a1, v4, v5, v1 + 32);
}

uint64_t sub_274166B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = sub_2741C79CC();
  v24 = sub_2741C797C();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v36[0])
  {
    if (*(a2 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
    {
      if (*(v36[0] + OBJC_IVAR___WiFiNetwork_Swift_name) == *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name) && *(v36[0] + OBJC_IVAR___WiFiNetwork_Swift_name + 8) == *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8))
      {

        v8 = 1.0;
        goto LABEL_11;
      }

      v7 = sub_2741C86DC();

      v8 = 1.0;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v8 = 0.0;
LABEL_11:
  v9 = sub_2741C71BC();
  v50 = 1;
  sub_274166EC8(a1, v51);
  *&v49[7] = v51[0];
  *&v49[23] = v51[1];
  *&v49[39] = v51[2];
  *&v49[55] = v51[3];
  sub_2741C7C1C();
  sub_2741C6F1C();
  v34 = v9;
  v35[0] = 1;
  *&v35[17] = *&v49[16];
  *&v35[33] = *&v49[32];
  *&v35[49] = *&v49[48];
  *&v35[64] = *&v49[63];
  *&v35[1] = *v49;
  v10 = v29;
  *&v35[120] = v30;
  v11 = v30;
  *&v35[136] = v31;
  v12 = v31;
  *&v35[152] = v32;
  v13 = v32;
  *&v35[168] = v33;
  *&v35[72] = v27;
  v14 = v27;
  v15 = v28;
  *&v35[88] = v28;
  *&v35[104] = v29;
  *(a3 + 24) = v8;
  v16 = *&v35[96];
  *(a3 + 128) = *&v35[80];
  *(a3 + 144) = v16;
  v17 = *&v35[64];
  *(a3 + 96) = *&v35[48];
  *(a3 + 112) = v17;
  v18 = *&v35[32];
  *(a3 + 64) = *&v35[16];
  *(a3 + 80) = v18;
  v19 = *v35;
  *(a3 + 32) = v34;
  *(a3 + 48) = v19;
  v20 = *&v35[160];
  *(a3 + 192) = *&v35[144];
  *(a3 + 208) = v20;
  v21 = *&v35[128];
  *(a3 + 160) = *&v35[112];
  *(a3 + 176) = v21;
  v39 = *&v49[16];
  v40 = *&v49[32];
  *v41 = *&v49[48];
  v38 = *v49;
  v45 = v11;
  v46 = v12;
  v47 = v13;
  v48 = v33;
  v42 = v14;
  *a3 = v25;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v24;
  *(a3 + 224) = *&v35[176];
  v36[0] = v9;
  v36[1] = 0;
  v37 = 1;
  *&v41[15] = *&v49[63];
  v43 = v15;
  v44 = v10;

  sub_2740A6D94(&v34, v26, &qword_28093A8B0, &qword_2741D50D8);
  sub_27409D420(v36, &qword_28093A8B0, &qword_2741D50D8);
}

uint64_t sub_274166EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name);
  v34 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v33 == 1)
  {
    v30 = v7;
    v31 = v5;
    v32 = v9;
    if (qword_280937AF8 != -1)
    {
      swift_once();
    }

    v10 = sub_2741C76AC();
    v12 = v11;
    v14 = v13;
    sub_2741C758C();
    v15 = sub_2741C767C();
    v17 = v16;
    v19 = v18;

    sub_2740A6AC8(v10, v12, v14 & 1);

    sub_2741C798C();
    v20 = sub_2741C763C();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_2740A6AC8(v15, v17, v19 & 1);

    v27 = v24 & 1;
    sub_27409861C(v20, v22, v24 & 1);

    v9 = v32;
    v5 = v31;
    v7 = v30;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v27 = 0;
    v26 = 0;
  }

  v28 = v7 & 1;
  sub_27409861C(v3, v5, v28);

  sub_2740ACA00(v20, v22, v27, v26);
  sub_2740ACA44(v20, v22, v27, v26);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v28;
  *(a2 + 24) = v9;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  sub_2740ACA44(v20, v22, v27, v26);
  sub_2740A6AC8(v3, v5, v28);
}

uint64_t sub_274167180@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  return sub_274166B24(v1[1], v1[3], a1);
}

__n128 sub_274167190@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A888, &qword_2741D5060);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_2741C70EC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A890, &qword_2741D5068);
  sub_2741672F0(v1, &v6[*(v7 + 44)]);
  sub_2741C7C1C();
  sub_2741C6F1C();
  sub_2740A6C18(v6, a1, &qword_28093A888, &qword_2741D5060);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A898, &qword_2741D5070) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_2741672F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8A0, &unk_2741D5078);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(a1 + 8);
  *&v31 = *a1;
  *(&v31 + 1) = v16;
  sub_2740A6A74();

  v17 = sub_2741C76AC();
  v19 = v18;
  v29 = v20;
  v22 = v21;
  v31 = *(a1 + 16);
  v32 = *(a1 + 32);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  MEMORY[0x2743E5B70](&v30, v23);
  if (v30 == 1)
  {
    sub_2741C6D3C();
    (*(v5 + 32))(v15, v8, v4);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v5 + 56))(v15, v24, 1, v4);
  sub_2740A6D94(v15, v13, &qword_28093A8A0, &unk_2741D5078);
  *a2 = v17;
  *(a2 + 8) = v19;
  v25 = v29 & 1;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8A8, &qword_2741D5088);
  sub_2740A6D94(v13, a2 + *(v26 + 48), &qword_28093A8A0, &unk_2741D5078);
  sub_27409861C(v17, v19, v25);

  sub_27409D420(v15, &qword_28093A8A0, &unk_2741D5078);
  sub_27409D420(v13, &qword_28093A8A0, &unk_2741D5078);
  sub_2740A6AC8(v17, v19, v25);
}

double sub_2741675A8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  *&result = sub_274167190(a1).n128_u64[0];
  return result;
}

uint64_t sub_2741675EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C6F8C();
  *a1 = result;
  return result;
}

uint64_t sub_274167618(uint64_t *a1)
{
  v1 = *a1;

  return sub_2741C6F9C();
}

unint64_t sub_274167644()
{
  result = qword_28093A700;
  if (!qword_28093A700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28093A700);
  }

  return result;
}

uint64_t sub_274167694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274165AE4(a1, v4, v5, v1 + 32);
}

uint64_t sub_274167744(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274165D6C(a1, v4, v5, v1 + 32);
}

unint64_t sub_274167814()
{
  result = qword_28093A738;
  if (!qword_28093A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A738);
  }

  return result;
}

unint64_t sub_274167868()
{
  result = qword_28093A740;
  if (!qword_28093A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A730, &qword_2741D4C78);
    sub_2741678EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A740);
  }

  return result;
}

unint64_t sub_2741678EC()
{
  result = qword_28093A748;
  if (!qword_28093A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A750, &qword_2741D4C80);
    sub_2740A6D24(&qword_28093A758, &qword_28093A760, &qword_2741D4C88);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A748);
  }

  return result;
}

uint64_t sub_2741679D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274167A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274167AB0()
{
  result = qword_28093A778;
  if (!qword_28093A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A770, &qword_2741D4CA8);
    sub_2740A6D24(&qword_28093A780, &qword_28093A788, &qword_2741D4CB0);
    sub_2740A6D24(&qword_28093A790, &qword_28093A798, &qword_2741D4CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A778);
  }

  return result;
}

uint64_t sub_274167BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C6F8C();
  *a1 = result;
  return result;
}

uint64_t sub_274167BD8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2741C6F9C();
}

unint64_t sub_274167C04()
{
  result = qword_28093A7E8;
  if (!qword_28093A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_2740A6D24(&qword_280939E38, &qword_280939E40, &qword_2741D2C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7E8);
  }

  return result;
}

unint64_t sub_274167CBC()
{
  result = qword_28093A7F0;
  if (!qword_28093A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7D0, &unk_2741D4D48);
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    sub_274167C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7F0);
  }

  return result;
}

unint64_t sub_274167D74()
{
  result = qword_28093A7F8;
  if (!qword_28093A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7B8, &qword_2741D4D30);
    sub_274167C04();
    sub_274168064(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7F8);
  }

  return result;
}

unint64_t sub_274167E40()
{
  result = qword_28093A810;
  if (!qword_28093A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A808, &qword_2741D4E38);
    sub_2740A6D24(&qword_28093A818, &qword_28093A820, &qword_2741D4E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A810);
  }

  return result;
}

uint64_t sub_274167EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_274163AC0(a1, v4, v5, v1 + 32);
}

uint64_t sub_274167FC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27409861C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274168014(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2740A6AC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274168064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_274166974();
  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_274166974();
  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_274166974();
  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2741681C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274164D70(a1, v4, v5, v1 + 32);
}

uint64_t sub_274168274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_274166974();
  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2741682D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_274164FFC(a1, v4, v5, (v1 + 4), v6);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2741683B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2741683FC(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274168454()
{
  result = qword_28093A868;
  if (!qword_28093A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A6F8, &unk_2741D4B50);
    sub_2741684E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A868);
  }

  return result;
}

unint64_t sub_2741684E0()
{
  result = qword_28093A870;
  if (!qword_28093A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A6F0, &qword_2741D4B48);
    sub_2740A6D24(&qword_28093A878, &qword_28093A880, qword_2741D4FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A870);
  }

  return result;
}

unint64_t sub_2741685DC()
{
  result = qword_28093A8B8;
  if (!qword_28093A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A898, &qword_2741D5070);
    sub_2740A6D24(&qword_28093A8C0, &qword_28093A888, &qword_2741D5060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A8B8);
  }

  return result;
}

void sub_274168748()
{
  sub_274168824(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274168824(319, &qword_28093A8E8, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274168824(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2741688A4(void (*a1)(uint64_t *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for KnownNetwork();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2741C69CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2741C69DC();
  sub_27416A81C(&qword_28093A9B8, MEMORY[0x277CC9A28]);
  v12 = sub_2741C823C();
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v36 = MEMORY[0x277D84F90];
  v31 = v12;
  sub_27419897C(0, v12 & ~(v12 >> 63), 0);
  v13 = v36;
  v30 = v10;
  sub_2741C822C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v25 = v7;
    v26 = v6;
    for (i = 0; ; ++i)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v16 = sub_2741C825C();
      v34 = *v17;
      v16(v35, 0);
      v18 = v5;
      v19 = v33;
      v28(&v34);
      v33 = v19;
      if (v19)
      {
        goto LABEL_13;
      }

      v36 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_27419897C(v20 > 1, v21 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
      v5 = v18;
      sub_27416C394(v18, v22, type metadata accessor for KnownNetwork);
      v23 = v30;
      sub_2741C824C();
      if (v15 == v31)
      {
        (*(v25 + 8))(v23, v26);
        return v13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  (*(v25 + 8))(v30, v26);

  __break(1u);
  return result;
}

uint64_t sub_274168BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EditableKnownNetworkSection(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v26 - v9);
  v11 = (v1 + *(type metadata accessor for KnownNetworksSectionTable(0) + 20));
  v29 = *v11;
  v30 = *(v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F8, &qword_2741D51A0);
  sub_2741C7B1C();
  v12 = v27;
  v13 = type metadata accessor for KnownNetworksViewModel();
  v26 = v28;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = KnownNetworksViewModel.init()();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + *(v4 + 28);
  *v17 = v12;
  *(v17 + 8) = v26;
  v18 = (v10 + *(v4 + 32));
  v27 = v16;
  sub_2741C7A2C();
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = *(v13 + 48);
  v21 = *(v13 + 52);
  swift_allocObject();
  v27 = KnownNetworksViewModel.init()();
  sub_2741C7A2C();
  v22 = v29;
  v23 = v30;
  sub_27416A864(v10, v8, type metadata accessor for EditableKnownNetworkSection);
  sub_27416A864(v8, a1, type metadata accessor for EditableKnownNetworkSection);
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A900, &qword_2741D51E0) + 48));
  *v24 = v22;
  v24[1] = v23;

  sub_274169F38(v10);

  return sub_274169F38(v8);
}

uint64_t sub_274168E48@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_2741C743C();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditableKnownNetworkSection(0);
  v40[0] = *(v5 - 8);
  v6 = *(v40[0] + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40[1] = v7;
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A960, &qword_2741D5330);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A968, &qword_2741D5338);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = v40 - v13;
  v43 = v1;
  v51 = v1;
  if (qword_280937678 != -1)
  {
    swift_once();
  }

  v52 = qword_280946428;
  v53 = unk_280946430;
  sub_2740A6A74();

  v14 = sub_2741C76AC();
  v16 = v15;
  v18 = v17;
  v52 = sub_2741C7EDC();
  v53 = v19;
  v20 = sub_2741C765C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2740A6AC8(v14, v16, v18 & 1);

  v52 = v20;
  v53 = v22;
  v54 = v24 & 1;
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A970, &unk_2741D5340);
  sub_27416A8D4();
  sub_2741C7B7C();
  v27 = v43;
  v28 = v41;
  sub_27416A864(v43, v41, type metadata accessor for EditableKnownNetworkSection);
  v29 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
  v30 = swift_allocObject();
  sub_27416C394(v28, v30 + v29, type metadata accessor for EditableKnownNetworkSection);
  v31 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A980, &qword_2741D5358) + 36)];
  *v31 = sub_27416A990;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  sub_27416A864(v27, v28, type metadata accessor for EditableKnownNetworkSection);
  v32 = swift_allocObject();
  sub_27416C394(v28, v32 + v29, type metadata accessor for EditableKnownNetworkSection);
  v33 = v44;
  v34 = &v10[*(v44 + 36)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = sub_27416AB54;
  *(v34 + 3) = v32;
  v35 = v47;
  sub_2741C742C();
  v36 = sub_27416ABC4();
  v37 = v42;
  sub_2741C77DC();
  (*(v48 + 8))(v35, v49);
  sub_27409D420(v10, &qword_28093A960, &qword_2741D5330);
  sub_2741C7EDC();
  v52 = v33;
  v53 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_2741C780C();

  return (*(v45 + 8))(v37, v38);
}

uint64_t sub_274169368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditableKnownNetworkSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (a1 + *(MEMORY[0x28223BE20](v4 - 8) + 32));
  v8 = *v7;
  v15[1] = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  v15[0] = v16;
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v9 = *(v16 + 24);

  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  type metadata accessor for KnownNetworkRowView(0);
  sub_2740A6D24(&qword_28093A950, &qword_28093A8F0, &qword_2741D5148);
  sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView);
  sub_27416A81C(&qword_28093A958, type metadata accessor for KnownNetwork);
  sub_2741C7B6C();
  sub_27416A864(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditableKnownNetworkSection);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_27416C394(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for EditableKnownNetworkSection);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_27416AD10;
  *(v12 + 24) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A970, &unk_2741D5340);
  v14 = (a2 + *(result + 36));
  *v14 = sub_27416C220;
  v14[1] = v12;
  return result;
}

uint64_t sub_2741696B4()
{
  v19 = v0;
  v1 = sub_2741688A4(sub_27416C248, v18);
  v2 = type metadata accessor for EditableKnownNetworkSection(0);
  v3 = (v0 + *(v2 + 20));
  v5 = v3[1];
  v6 = v3[2];
  v24 = *v3;
  v4 = v24;
  v25 = v5;
  v26 = v6;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F8, &qword_2741D51A0);
  MEMORY[0x2743E5B70](v27);
  sub_27416C268(v1);
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v20 = v27[0];
  sub_2741C7AFC();

  v7 = (v0 + *(v2 + 24));
  v9 = *v7;
  v8 = v7[1];
  v24 = v9;
  v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  v10 = v21;
  swift_getKeyPath();
  v24 = v10;
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  v24 = v10;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  sub_2740A6D24(&qword_28093A9A8, &qword_28093A8F0, &qword_2741D5148);
  sub_2740A6D24(&qword_28093A9B0, &qword_28093A8F0, &qword_2741D5148);
  sub_2741C826C();
  swift_endAccess();
  v24 = v10;
  swift_getKeyPath();
  sub_2741C6A1C();

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2741C856C();

  v21 = 0xD000000000000022;
  v22 = 0x80000002741E2870;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  MEMORY[0x2743E5B70](v27, v17);
  v11 = v27[0];
  v12 = type metadata accessor for KnownNetwork();
  v13 = MEMORY[0x2743E6080](v11, v12);
  v15 = v14;

  MEMORY[0x2743E5FB0](v13, v15);

  sub_2740CB460(v21, v22);
}

uint64_t sub_274169A2C(uint64_t a1, unsigned int *a2)
{
  v29 = a2;
  v3 = sub_2741C7C0C();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2741C70AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - v18;
  sub_2740A6D94(a1, v15, &qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2740A6C18(v15, v19, &qword_280938680, &qword_2741D5140);
  }

  else
  {
    v20 = *v15;
    sub_2741C82AC();
    v21 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) == 1)
  {
    v23 = &qword_280938680;
    v24 = &qword_2741D5140;
  }

  else
  {
    (*(v27 + 104))(v6, *v29, v28);
    sub_2741C7AFC();
    v23 = &qword_280938710;
    v24 = &qword_2741D5350;
  }

  return sub_27409D420(v19, v23, v24);
}

uint64_t sub_274169D80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = (a2 + *(type metadata accessor for EditableKnownNetworkSection(0) + 24));
  v9 = *v5;
  v10 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v6 = *(v11 + 24);

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v6 + 16))
  {
    v8 = *(type metadata accessor for KnownNetwork() - 8);
    sub_27416A864(v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, a3, type metadata accessor for KnownNetwork);
  }

  __break(1u);
  return result;
}

uint64_t sub_274169F38(uint64_t a1)
{
  v2 = type metadata accessor for EditableKnownNetworkSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
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

void sub_27416A160()
{
  sub_274168824(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274168824(319, &qword_28093A8E8, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_27416C680(319, &qword_28093A918, type metadata accessor for KnownNetworksViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27416A304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  v0 = *(v2 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  type metadata accessor for KnownNetworkRowView(0);
  sub_2740A6D24(&qword_28093A950, &qword_28093A8F0, &qword_2741D5148);
  sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView);
  sub_27416A81C(&qword_28093A958, type metadata accessor for KnownNetwork);
  return sub_2741C7B6C();
}

uint64_t sub_27416A4F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_27416A864(a1, a3, type metadata accessor for KnownNetwork);
  type metadata accessor for CurrentNetworkModel();
  sub_27416A81C(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  v5 = sub_2741C6CEC();
  v7 = v6;
  v8 = type metadata accessor for KnownNetworkRowView(0);
  *(a3 + v8[5]) = a2;
  v9 = a3 + v8[6];
  result = sub_2741C7A2C();
  *v9 = v12;
  *(v9 + 8) = v13;
  v11 = a3 + v8[7];
  *v11 = v5;
  *(v11 + 8) = v7 & 1;
  return result;
}

uint64_t sub_27416A5FC()
{
  v2 = *v0;
  v3 = v0[1];
  if (qword_280937680 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  sub_2741C76AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A930, &qword_2741D52F8);
  sub_27416A708();
  return sub_2741C7B7C();
}

uint64_t sub_27416A700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_27416A304();
}

unint64_t sub_27416A708()
{
  result = qword_28093A938;
  if (!qword_28093A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A930, &qword_2741D52F8);
    sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A938);
  }

  return result;
}

uint64_t sub_27416A7DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27416A81C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27416A864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_27416A8D4()
{
  result = qword_28093A978;
  if (!qword_28093A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A970, &unk_2741D5340);
    sub_27416A708();
    sub_2740A6D24(&qword_280938840, &qword_280938848, &qword_2741CCA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A978);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for EditableKnownNetworkSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_2741C7C0C();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = &v5[*(v1 + 20)];
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(v12 + 2);

  v16 = &v5[*(v1 + 24)];
  v17 = *v16;

  v18 = *(v16 + 1);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_27416ABC4()
{
  result = qword_28093A988;
  if (!qword_28093A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A960, &qword_2741D5330);
    sub_27416AC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A988);
  }

  return result;
}

unint64_t sub_27416AC50()
{
  result = qword_28093A990;
  if (!qword_28093A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A980, &qword_2741D5358);
    sub_27416C728(&qword_28093A998, &qword_28093A9A0, &qword_2741D5360, sub_27416A8D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A990);
  }

  return result;
}

uint64_t sub_27416AD10()
{
  v1 = *(type metadata accessor for EditableKnownNetworkSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2741696B4();
}

uint64_t sub_27416AD74()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for KnownNetworkRowView(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_27416AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA00, &unk_2741D5410);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v79 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68 - v10;
  v12 = sub_2741C717C();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  v15 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA08, &qword_2741D5430);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v85 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - v26;
  if (*(a1 + *(type metadata accessor for KnownNetworkRowView(0) + 20)))
  {
    sub_27416C9A0(&v97);
  }

  else
  {
    sub_2741C7C1C();
    sub_2741C6F1C();
    *&v88[71] = v94;
    *&v88[55] = v93;
    *&v88[103] = v96;
    *&v88[87] = v95;
    *&v88[23] = v91;
    *&v88[7] = v90;
    *&v88[39] = v92;
    *(&v86[4] + 9) = *&v88[64];
    *(&v86[5] + 9) = *&v88[80];
    *(&v86[6] + 9) = *&v88[96];
    *(v86 + 9) = *v88;
    *(&v86[1] + 9) = *&v88[16];
    *(&v86[2] + 9) = *&v88[32];
    v89 = 1;
    *&v86[0] = 0;
    BYTE8(v86[0]) = 1;
    *(&v86[7] + 1) = *(&v96 + 1);
    *(&v86[3] + 9) = *&v88[48];
    sub_27416C8D0(v86);
    v103 = v86[6];
    v104 = v86[7];
    v105 = v87;
    v99 = v86[2];
    v100 = v86[3];
    v101 = v86[4];
    v102 = v86[5];
    v97 = v86[0];
    v98 = v86[1];
  }

  *&v86[0] = sub_27411741C();
  *(&v86[0] + 1) = v28;
  sub_2740A6A74();
  v29 = sub_2741C76AC();
  v82 = v30;
  v83 = v29;
  v76 = v31;
  v78 = v32;
  v33 = 1;
  if ((*(a1 + 48) & 1) == 0)
  {
    *&v86[0] = sub_2741C79CC();
    sub_2741C714C();
    v68 = v21;
    v69 = v12;
    v70 = a1;
    v34 = v72;
    sub_2741C77AC();

    v35 = v73;
    sub_2741C716C();
    v36 = v68;
    sub_2741C6E5C();
    (*(v75 + 8))(v35, v69);
    sub_27409D420(v34, &qword_2809381D8, &unk_2741D5420);
    v37 = sub_2741C75AC();
    (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
    v38 = sub_2741C75CC();
    sub_27409D420(v11, &qword_2809381D0, &qword_2741CF940);
    KeyPath = swift_getKeyPath();
    v40 = (v36 + *(v17 + 36));
    *v40 = KeyPath;
    v40[1] = v38;
    sub_2740A6C18(v36, v27, &qword_2809381E0, &qword_2741D42A0);
    v33 = 0;
  }

  v41 = (*(v18 + 56))(v27, v33, 1, v17);
  MEMORY[0x28223BE20](v41);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA10, &qword_2741D5468);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A600, &unk_2741D5470);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AA18, &qword_2741D6CD0);
  v44 = v27;
  v74 = v27;
  v45 = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A610, &unk_2741D5480);
  v47 = sub_2741C732C();
  v48 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480);
  v49 = sub_27416A81C(&qword_28093A620, MEMORY[0x277CDE0B8]);
  *&v86[0] = v46;
  *(&v86[0] + 1) = v47;
  *&v86[1] = v48;
  *(&v86[1] + 1) = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_27416C8E8();
  *&v86[0] = v42;
  *(&v86[0] + 1) = v45;
  *&v86[1] = OpaqueTypeConformance2;
  *(&v86[1] + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v84;
  sub_2741C6E8C();
  v86[6] = v103;
  v86[7] = v104;
  v87 = v105;
  v86[2] = v99;
  v86[3] = v100;
  v86[4] = v101;
  v86[5] = v102;
  v86[0] = v97;
  v86[1] = v98;
  sub_2740A6D94(v44, v85, &qword_28093AA08, &qword_2741D5430);
  v53 = v79;
  v54 = v80;
  v75 = *(v80 + 16);
  v55 = v81;
  (v75)(v79, v52, v81);
  v56 = v86[7];
  v57 = v77;
  *(v77 + 96) = v86[6];
  *(v57 + 112) = v56;
  *(v57 + 128) = v87;
  v58 = v86[3];
  *(v57 + 32) = v86[2];
  *(v57 + 48) = v58;
  v59 = v86[5];
  *(v57 + 64) = v86[4];
  *(v57 + 80) = v59;
  v60 = v86[1];
  *v57 = v86[0];
  *(v57 + 16) = v60;
  v61 = v82;
  v62 = v83;
  *(v57 + 136) = v83;
  *(v57 + 144) = v61;
  LOBYTE(v44) = v76 & 1;
  *(v57 + 152) = v76 & 1;
  *(v57 + 160) = v78;
  *(v57 + 168) = 0;
  *(v57 + 176) = 1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA28, &unk_2741D5490);
  sub_2740A6D94(v85, v57 + *(v63 + 80), &qword_28093AA08, &qword_2741D5430);
  (v75)(v57 + *(v63 + 96), v53, v55);
  v64 = v62;
  v65 = v82;
  sub_27409861C(v64, v82, v44);
  v66 = *(v54 + 8);

  v66(v84, v55);
  sub_27409D420(v74, &qword_28093AA08, &qword_2741D5430);
  v66(v53, v55);
  sub_27409D420(v85, &qword_28093AA08, &qword_2741D5430);
  sub_2740A6AC8(v83, v65, v44);
}

uint64_t sub_27416B818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v39 = a2;
  v3 = sub_2741C732C();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KnownNetworkRowView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A610, &unk_2741D5480);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A600, &unk_2741D5470);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v32 = &v32 - v19;
  sub_27416A864(a1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnownNetworkRowView);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_27416C394(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for KnownNetworkRowView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  sub_274149DA4();
  sub_2741C7A7C();
  sub_2741C731C();
  v22 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480);
  v23 = sub_27416A81C(&qword_28093A620, MEMORY[0x277CDE0B8]);
  v24 = v35;
  sub_2741C76FC();
  (*(v36 + 8))(v7, v24);
  (*(v34 + 8))(v15, v12);
  v25 = v33;
  v26 = v33 + *(v9 + 32);
  v27 = *v26;
  v28 = *(v26 + 8);
  v45 = v27;
  v46 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v40 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA18, &qword_2741D6CD0);
  v41 = v12;
  v42 = v24;
  v43 = v22;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  sub_27416C8E8();
  v29 = v37;
  v30 = v32;
  sub_2741C77FC();

  return (*(v38 + 8))(v30, v29);
}

uint64_t sub_27416BCD8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for KnownNetworkRowView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_27416BD4C@<X0>(uint64_t a1@<X0>, id (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for KnownNetworkRowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_27416A864(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnownNetworkRowView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_27416C394(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for KnownNetworkRowView);
  *a2 = sub_27416CC50;
  a2[1] = v8;
  a2[2] = sub_27416C0B8;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

id sub_27416BE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v28 - v6);
  v8 = type metadata accessor for KnownNetwork();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27416AD74();
  v13 = type metadata accessor for NetworkDetailsModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_27416A864(a1, v11, type metadata accessor for KnownNetwork);
  v17 = sub_2741930B8(v11, v12, v16);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_2740A6C18(v7, a2, &qword_280937E88, &qword_2741CB5A0);
    v21 = type metadata accessor for NetworkDetailsView();
    v22 = (a2 + v21[5]);
    v29 = v17;
    sub_2741C7A2C();
    v23 = v31;
    *v22 = v30;
    v22[1] = v23;
    v24 = a2 + v21[6];
    LOBYTE(v29) = 1;
    sub_2741C7A2C();
    v25 = v31;
    *v24 = v30;
    *(v24 + 8) = v25;
    v26 = a2 + v21[7];
    LOBYTE(v29) = 0;
    result = sub_2741C7A2C();
    v27 = v31;
    *v26 = v30;
    *(v26 + 8) = v27;
    *(a2 + v21[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27416C0B8()
{
  sub_2741C856C();
  type metadata accessor for KnownNetworkRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA30, &unk_2741D54A0);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD00000000000004FLL, 0x80000002741E28A0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27416C16C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2741C70EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A9F8, &qword_2741D5408);
  return sub_27416AEC4(v1, a1 + *(v3 + 44));
}

uint64_t sub_27416C1E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27416C220()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_27416C268(uint64_t result)
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_27417743C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for KnownNetwork();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27416C394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27416C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KnownNetwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_27416C4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for KnownNetwork();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_27416C5AC()
{
  type metadata accessor for KnownNetwork();
  if (v0 <= 0x3F)
  {
    sub_2740A5754();
    if (v1 <= 0x3F)
    {
      sub_27416C680(319, &qword_28093A9D0, type metadata accessor for CurrentNetworkModel, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27416C680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27416C728(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27416C7BC()
{
  result = qword_28093A9E8;
  if (!qword_28093A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A9F0, &qword_2741D53B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A960, &qword_2741D5330);
    sub_27416ABC4();
    swift_getOpaqueTypeConformance2();
    sub_27416A81C(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A9E8);
  }

  return result;
}

unint64_t sub_27416C8E8()
{
  result = qword_28093AA20;
  if (!qword_28093AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AA18, &qword_2741D6CD0);
    sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA20);
  }

  return result;
}

double sub_27416C9A0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_27416C9C4()
{
  v1 = *(type metadata accessor for KnownNetworkRowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27416BCD8(v2);
}

unint64_t sub_27416CA24()
{
  result = qword_28093A660;
  if (!qword_28093A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381F0, &unk_2741D4330);
    sub_2740A829C();
    sub_27416A81C(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A660);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for KnownNetworkRowView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 72));
  v8 = *(type metadata accessor for KnownNetwork() + 64);
  v9 = sub_2741C689C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = *(v5 + *(v1 + 24) + 8);

  v12 = *(v5 + *(v1 + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_27416CC50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KnownNetworkRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27416BE78(v4, a1);
}

uint64_t sub_27416CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2741C699C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_27416CE00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2741C699C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WFButton()
{
  result = qword_28093AA48;
  if (!qword_28093AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27416CF04()
{
  result = sub_2741C699C();
  if (v1 <= 0x3F)
  {
    result = sub_27416CF90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_27416CF90()
{
  result = qword_28093AA58;
  if (!qword_28093AA58)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28093AA58);
  }

  return result;
}

unint64_t sub_27416CFE4()
{
  result = qword_28093AA60;
  if (!qword_28093AA60)
  {
    sub_2741C699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA60);
  }

  return result;
}

uint64_t sub_27416D03C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C699C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_27416D0B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_27416D290(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_27416D0F8()
{
  result = qword_28093AA68;
  if (!qword_28093AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA68);
  }

  return result;
}

unint64_t sub_27416D150()
{
  result = qword_28093AA70;
  if (!qword_28093AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA70);
  }

  return result;
}

unint64_t sub_27416D1A8()
{
  result = qword_28093AA78;
  if (!qword_28093AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA78);
  }

  return result;
}

unint64_t sub_27416D200()
{
  result = qword_28093AA80;
  if (!qword_28093AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA80);
  }

  return result;
}

uint64_t sub_27416D254(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_27416D290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_27416D2CC()
{
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_27416D33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_27416D3B4(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27416D7EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_27416D48C(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_27416D5A0()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit9ScanState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanState()
{
  result = qword_28093AA90;
  if (!qword_28093AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27416D690()
{
  result = sub_2741C6A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27416D730()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  return *(v1 + 16);
}

unint64_t sub_27416D7C4(uint64_t a1)
{
  result = sub_27416D7EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27416D7EC()
{
  result = qword_28093AAA0;
  if (!qword_28093AAA0)
  {
    type metadata accessor for ScanState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAA0);
  }

  return result;
}

uint64_t sub_27416D88C()
{
  v1 = *v0;
  sub_2741C87DC();
  sub_2741C7F0C();

  return sub_2741C880C();
}

uint64_t sub_27416D960()
{
  *v0;
  *v0;
  sub_2741C7F0C();
}

uint64_t sub_27416DA20()
{
  v1 = *v0;
  sub_2741C87DC();
  sub_2741C7F0C();

  return sub_2741C880C();
}

uint64_t sub_27416DAF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27416DF54();
  *a2 = result;
  return result;
}

void sub_27416DB20(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x736C6961746564;
  v4 = 0xEB00000000736C61;
  v5 = 0x69746E6564657263;
  if (*v1 != 2)
  {
    v5 = 0x7265437473757274;
    v4 = 0xE900000000000074;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000002741D8900;
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

unint64_t sub_27416DBB4()
{
  result = qword_28093AAA8;
  if (!qword_28093AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAA8);
  }

  return result;
}

uint64_t sub_27416DC08(char *a1)
{
  v2 = sub_2741C689C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_27416DFA0();
  v7 = sub_2741C86CC();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = v7 == 0xD000000000000010 && 0x80000002741D8900 == v9;
  if (v11 || (sub_2741C86DC() & 1) != 0)
  {
    v10(a1, v2);

    return 0;
  }

  else
  {
    v13 = v7 == 0x446B726F7774654ELL && v9 == 0xEE00736C69617465;
    if (v13 || (sub_2741C86DC() & 1) != 0)
    {
      v10(a1, v2);

      return 1;
    }

    v14 = v7 == 0x69746E6564657243 && v9 == 0xEB00000000736C61;
    if (v14 || (sub_2741C86DC() & 1) != 0)
    {
      v10(a1, v2);

      return 2;
    }

    if (v7 == 0x746E457473757254 && v9 == 0xEF65736972707265)
    {
    }

    else
    {
      v16 = sub_2741C86DC();

      if ((v16 & 1) == 0)
      {
        v18 = 0;
        v19 = 0xE000000000000000;
        sub_2741C856C();

        v18 = 0xD000000000000020;
        v19 = 0x80000002741E2920;
        v17 = sub_2741C86CC();
        MEMORY[0x2743E5FB0](v17);

        sub_2740CB218(v18, v19, 0x6C72752874696E69, 0xEA0000000000293ALL);

        v10(a1, v2);
        return 4;
      }
    }

    v10(a1, v2);
    return 3;
  }
}

uint64_t sub_27416DF54()
{
  v0 = sub_2741C869C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_27416DFA0()
{
  result = qword_28093AAB0;
  if (!qword_28093AAB0)
  {
    sub_2741C689C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAB0);
  }

  return result;
}

uint64_t sub_27416DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v5 + 272) = a5;
  *(v5 + 40) = a4;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E08C, 0, 0);
}

uint64_t sub_27416E08C()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = sub_2741C80AC();
  *(v0 + 56) = sub_2741C809C();
  v1 = sub_2741C805C();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E158, v1, v2);
}

uint64_t sub_27416E158()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E21C, 0, 0);
}

uint64_t sub_27416E21C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E2DC, v2, v3);
}

uint64_t sub_27416E2DC()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);

  *(v0 + 72) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E384, 0, 0);
}

uint64_t sub_27416E384()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 80) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E444, v2, v3);
}

uint64_t sub_27416E444()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_2741BB460(2);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E4E8, 0, 0);
}

uint64_t sub_27416E4E8()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 16) = 0;
  v2 = [v1 setPower:*(v0 + 272) error:v0 + 16];
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  if (v2)
  {
    v5 = v3;
    *(v0 + 88) = sub_2741C809C();
    v6 = sub_2741C805C();
    v8 = sub_27416E6E0;
  }

  else
  {
    v9 = v3;
    v10 = sub_2741C681C();
    *(v0 + 224) = v10;

    swift_willThrow();
    sub_2741C856C();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001FLL, 0x80000002741E2950);
    *(v0 + 32) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(*(v0 + 16), *(v0 + 24), 0x65776F7028746573, 0xEB00000000293A72);

    *(v0 + 232) = sub_2741C809C();
    v6 = sub_2741C805C();
    v8 = sub_27416F920;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_27416E6E0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E774, 0, 0);
}

uint64_t sub_27416E774()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 96) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E834, v2, v3);
}

uint64_t sub_27416E834()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);

  *(v0 + 104) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E8DC, 0, 0);
}

uint64_t sub_27416E8DC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 112) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416E99C, v2, v3);
}

uint64_t sub_27416E99C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 272);

  sub_2741BB460(v3);

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EA4C, 0, 0);
}

uint64_t sub_27416EA4C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v0 + 272);
  *(v0 + 120) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2 == 1)
  {
    v5 = sub_27416EB24;
  }

  else
  {
    v5 = sub_27416EE7C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27416EB24()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EBB8, 0, 0);
}

uint64_t sub_27416EBB8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 128) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EC78, v2, v3);
}

uint64_t sub_27416EC78()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);

  *(v0 + 136) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416ED20, 0, 0);
}

uint64_t sub_27416ED20()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 144) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EDE0, v2, v3);
}

uint64_t sub_27416EDE0()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = v0[17];
  v1 = v0[18];

  sub_2741B8FB8(32);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_27416EE7C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EF10, 0, 0);
}

uint64_t sub_27416EF10()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 152) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416EFD0, v2, v3);
}

uint64_t sub_27416EFD0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);

  *(v0 + 160) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F078, 0, 0);
}

uint64_t sub_27416F078()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 168) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F138, v2, v3);
}

uint64_t sub_27416F138()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = v0[20];
  v1 = v0[21];

  sub_2741B8FB8(16);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_27416F1D4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F268, 0, 0);
}

uint64_t sub_27416F268()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 176) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F328, v2, v3);
}

uint64_t sub_27416F328()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);

  *(v0 + 184) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F3D0, 0, 0);
}

uint64_t sub_27416F3D0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 192) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F490, v2, v3);
}

uint64_t sub_27416F490()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);

  sub_2741B8FB8(32);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F534, 0, 0);
}

uint64_t sub_27416F534()
{
  v4 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

uint64_t sub_27416F5C0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F654, 0, 0);
}

uint64_t sub_27416F654()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 200) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F714, v2, v3);
}

uint64_t sub_27416F714()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);

  *(v0 + 208) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F7BC, 0, 0);
}

uint64_t sub_27416F7BC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 216) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F87C, v2, v3);
}

uint64_t sub_27416F87C()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  sub_2741B8FB8(16);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416FD64, 0, 0);
}

uint64_t sub_27416F920()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416F9B4, 0, 0);
}

uint64_t sub_27416F9B4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 240) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416FA74, v2, v3);
}

uint64_t sub_27416FA74()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);

  *(v0 + 248) = qword_280946F30;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416FB1C, 0, 0);
}

uint64_t sub_27416FB1C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  *(v0 + 256) = sub_2741C809C();
  v2 = sub_2741C805C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416FBDC, v2, v3);
}

uint64_t sub_27416FBDC()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 272);

  sub_2741BB460((v3 & 1) == 0);

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_27416FC90, 0, 0);
}

uint64_t sub_27416FC90()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v0 + 272);
  *(v0 + 264) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2)
  {
    v5 = sub_27416F5C0;
  }

  else
  {
    v5 = sub_27416F1D4;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27416FD64()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_27416F534();
}

uint64_t sub_27416FDE8(uint64_t a1)
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAB8, &qword_2741D58E8);
  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  MEMORY[0x2743E5FB0](0x3D6973737220, 0xE600000000000000);
  v3 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0x3D7372616220, 0xE600000000000000);
  v4 = a1 + 77.5;
  v5 = fabsf(sqrtf((v4 * v4) + 450.0));
  sub_2740CBBBC(((v4 / (v5 + v5)) + 0.5));
  v6 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_27416FF7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PasswordPromptSheet();
  sub_2740A6D94(v1 + *(v12 + 28), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2741C82AC();
    v16 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_274170184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PasswordPromptSheet();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *(v9 + 5) = sub_274175B8C(v10, &v50);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v9[48] = wapiCapability;
    v14 = v6[7];
    *&v9[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
    swift_storeEnumTagMultiPayload();
    v15 = &v9[v6[8]];
    type metadata accessor for AssociationModel();
    sub_274176A48(&qword_280937E70, type metadata accessor for AssociationModel);
    *v15 = sub_2741C6CEC();
    v15[8] = v16 & 1;
    v17 = &v9[v6[9]];
    LOBYTE(v48[0]) = 0;
    sub_2741C7A2C();
    v18 = *(&v50 + 1);
    *v17 = v50;
    *(v17 + 1) = v18;
    v19 = v6[10];
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_2740A6D94(&v50, v48, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
    sub_2741C7A2C();
    sub_27409D420(&v50, &qword_280937E78, &qword_2741D81E0);
    v20 = &v9[v6[11]];
    if (qword_280937480 != -1)
    {
      swift_once();
    }

    *v48 = xmmword_280946038;

    sub_2741C7A2C();
    v21 = v51;
    *v20 = v50;
    *(v20 + 2) = v21;
    v22 = &v9[v6[12]];
    v23 = type metadata accessor for AssociationCredentials();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v48[0] = sub_27410A05C();
    sub_2741C7A2C();
    v26 = v50;
    *v22 = v50;
    v27 = &v9[v6[13]];
    LOBYTE(v48[0]) = 0;
    sub_2741C7A2C();
    v28 = *(&v50 + 1);
    *v27 = v50;
    *(v27 + 1) = v28;
    v29 = &v9[v6[14]];
    sub_2740A5224();
    sub_2741C6CAC();
    v30 = *(&v50 + 1);
    v31 = v51;
    *v29 = v50;
    *(v29 + 1) = v30;
    v29[16] = v31;
    v32 = &v9[v6[15]];
    *(v32 + 32) = 0;
    *v32 = 0u;
    *(v32 + 16) = 0u;
    sub_27409D4E4(a1, v9);
    if (*(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160) == 1)
    {
      v50 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
      sub_2741C7A3C();
      v33 = v48[0];
      v34 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
      sub_2740ACAC8((v34 + 1), &v50);
      v35 = v53;
      if (*(v33 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == v53)
      {
        sub_274108F9C();

        sub_2740ACB2C(&v50);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v47 - 2) = v33;
        *(&v47 - 1) = v35;
        v48[0] = v33;
        sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials);
        sub_2741C69FC();

        sub_2740ACB2C(&v50);
      }
    }

    v37 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    sub_2740ACAC8((v37 + 1), &v50);
    v38 = v50;
    v39 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    sub_2740ACAC8((v39 + 1), v48);
    v40 = v49;
    v41 = objc_allocWithZone(MEMORY[0x277D54CB0]);

    v42 = [v41 init];
    v43 = type metadata accessor for WiFiPasswordSharingService();
    v44 = swift_allocObject();
    v45 = sub_274175DEC(v38, *(&v38 + 1), v40, v42, v44);
    sub_2740ACB2C(v48);
    sub_2740ACB2C(&v50);
    if (v45)
    {
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_2741C856C();
      *v48 = v50;
      MEMORY[0x2743E5FB0](0x2065636976726553, 0xE800000000000000);
      *&v50 = v45;
      sub_2741C862C();
      MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741E2970);
      v46 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
      sub_2740ACAC8((v46 + 1), &v50);
      MEMORY[0x2743E5FB0](v50, *(&v50 + 1));
      sub_2740ACB2C(&v50);
      sub_2740CB460(v48[0], v48[1]);

      *(&v51 + 1) = v43;
      v52 = &off_288329520;
      *&v50 = v45;
      sub_2740ACB2C(a2);
      sub_2741760E4(&v50, v32);
    }

    else
    {
      sub_2740ACB2C(a2);
    }

    sub_274176080(v9, a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_274176B04(v9, type metadata accessor for PasswordPromptSheet);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PasswordPromptSheet()
{
  result = qword_28093AAD8;
  if (!qword_28093AAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2741708A4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for PasswordPromptSheet();
  v45 = *(v2 - 8);
  v46 = v2 - 8;
  v44 = *(v45 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB00, &unk_2741D7EC0);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v40 - v10;
  v52 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB10, &qword_2741D5A08);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB18, &unk_2741D5A10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396F0, &qword_2741D03C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB20, &qword_2741D5A20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB28, &qword_2741D5A28);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939708, &qword_2741D03E0);
  v14 = sub_2740A6D24(&qword_28093AB30, &qword_28093AB28, &qword_2741D5A28);
  v15 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0);
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v11;
  v54 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
  v19 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8);
  v53 = v18;
  v54 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v53 = v42;
  v54 = v41;
  v55 = v17;
  v56 = v20;
  swift_getOpaqueTypeConformance2();
  v40 = v7;
  sub_2741C6E8C();
  v21 = v1;
  sub_274176080(v1, v4);
  v22 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v23 = swift_allocObject();
  v45 = type metadata accessor for PasswordPromptSheet;
  sub_274176A9C(v4, v23 + v22, type metadata accessor for PasswordPromptSheet);
  v24 = &v7[*(v50 + 36)];
  *v24 = sub_2741766C4;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = v21;
  v26 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  swift_getKeyPath();
  v53 = v26;
  sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState);

  sub_2741C6A0C();

  LOBYTE(v23) = *(v26 + 17);

  LOBYTE(v53) = v23;
  sub_274176080(v25, v4);
  v27 = swift_allocObject();
  v28 = v4;
  sub_274176A9C(v4, v27 + v22, type metadata accessor for PasswordPromptSheet);
  sub_274176764();
  v29 = v40;
  sub_2741C78CC();

  sub_27409D420(v29, &qword_28093AB00, &unk_2741D7EC0);
  v30 = v46;
  v31 = v25 + *(v46 + 44);
  v32 = *v31;
  v33 = *(v31 + 8);
  v57 = v32;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v34 = v53;
  v35 = v54;
  LODWORD(v18) = v55;
  v36 = *(v30 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_274176080(v25, v4);
  v37 = swift_allocObject();
  sub_274176A9C(v28, &v37[v22], v45);
  v38 = v51;
  sub_2741A42A0(v34, v35, v18, &v53, sub_27417681C, v37, v49);

  sub_27409D420(&v53, &qword_280937E78, &qword_2741D81E0);
  return (*(v47 + 8))(v38, v48);
}

uint64_t sub_274170F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2741C70BC();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB28, &qword_2741D5A28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB20, &qword_2741D5A20);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB18, &unk_2741D5A10);
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v32 = &v31 - v19;
  v31 = a1;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB50, &qword_2741D5A68);
  sub_2740A6D24(&qword_28093AB58, &qword_28093AB50, &qword_2741D5A68);
  sub_2741C761C();
  v40 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939708, &qword_2741D03E0);
  v21 = sub_2740A6D24(&qword_28093AB30, &qword_28093AB28, &qword_2741D5A28);
  v22 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0);
  sub_2741C78BC();
  (*(v8 + 8))(v11, v7);
  v24 = v34;
  v23 = v35;
  (*(v34 + 104))(v6, *MEMORY[0x277CDDDC0], v35);
  v42 = v7;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_2741C783C();
  (*(v24 + 8))(v6, v23);
  (*(v33 + 8))(v15, v12);
  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396F0, &qword_2741D03C8);
  v42 = v12;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
  v28 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8);
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_2741C78BC();
  return (*(v37 + 8))(v26, v29);
}

uint64_t sub_274171478@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939768, &qword_2741D04E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939770, &qword_2741D04E8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB60, &qword_2741D5B20);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v42 - v19;
  v48 = a1;
  v20 = *(__swift_project_boxed_opaque_existential_1(a1, *(a1 + 24)) + 160);
  v44 = v3;
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      if (qword_280937670 != -1)
      {
        swift_once();
      }

      v25 = &qword_280946418;
    }

    else
    {
      if (qword_280937668 != -1)
      {
        swift_once();
      }

      v25 = &qword_280946408;
    }

    v27 = *v25;
    v26 = v25[1];

    v49 = v27;
    v50 = v28;
    sub_2740A6A74();
    v21 = sub_2741C76AC();
    v23 = v29 & 1;
  }

  v49 = v21;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB68, &qword_2741D5B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740A6D24(&qword_28093AB70, &qword_28093AB68, &qword_2741D5B28);
  sub_2740A5EE4();
  sub_2741C7BAC();
  v30 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  if (v30[21] && *(v30 + 160) == 1)
  {
    MEMORY[0x28223BE20](v30);
    *(&v42 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397A8, &qword_2741D5B40);
    sub_2740A6D24(&qword_2809397B0, &qword_2809397A8, &qword_2741D5B40);
    v31 = v43;
    sub_2741C7B9C();
    v32 = v44;
    (*(v4 + 32))(v12, v31, v44);
    v33 = v32;
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v44;
  }

  (*(v4 + 56))(v12, v34, 1, v33);
  v35 = v14[2];
  v36 = v47;
  v35(v18, v47, v13);
  v37 = v45;
  sub_2740A6D94(v12, v45, &qword_280939770, &qword_2741D04E8);
  v38 = v46;
  v35(v46, v18, v13);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB78, &qword_2741D5B38);
  sub_2740A6D94(v37, &v38[*(v39 + 48)], &qword_280939770, &qword_2741D04E8);
  sub_27409D420(v12, &qword_280939770, &qword_2741D04E8);
  v40 = v14[1];
  v40(v36, v13);
  sub_27409D420(v37, &qword_280939770, &qword_2741D04E8);
  return (v40)(v18, v13);
}

uint64_t sub_2741719DC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397E0, &qword_2741D5B80);
  v4 = *(*(v64 - 1) + 8);
  MEMORY[0x28223BE20](v64);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB80, &qword_2741D5B88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v65 = (&v56 - v9);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB88, &unk_2741D5B90);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v12 = &v56 - v11;
  v61 = type metadata accessor for IdentitySelectionView();
  v13 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397F0, &qword_2741D0578);
  v63 = *(v68 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB90, &unk_2741D5BA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = &v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D0, &qword_2741CB850);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v67 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v56 - v32;
  if (*(__swift_project_boxed_opaque_existential_1(a1, *(a1 + 3)) + 160) == 1)
  {
    *v27 = sub_2741C70EC();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938108, &unk_2741CB880);
    sub_274172324(a1, &v27[*(v34 + 44)]);
    sub_2740FBB6C(v27, v33);
    (*(v24 + 56))(v33, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v33, 1, 1, v23);
  }

  v35 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3))[21];
  if (!v35)
  {
    goto LABEL_8;
  }

  v56 = v12;
  v57 = v21;
  v58 = v7;
  v59 = a2;
  v36 = &a1[*(type metadata accessor for PasswordPromptSheet() + 48)];
  v37 = *v36;
  v38 = *(v36 + 1);
  v70 = *v36;
  v71 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v39 = v73;
  swift_getKeyPath();
  v70 = v39;
  sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v40 = *(v39 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v40 != 2)
  {

    a2 = v59;
    v12 = v56;
    v21 = v57;
LABEL_8:
    *v6 = sub_2741C70EC();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939800, &qword_2741D0588);
    sub_2741733A0(a1, &v6[*(v51 + 44)]);
    sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80);
    v52 = v65;
    sub_2741C780C();
    sub_27409D420(v6, &qword_2809397E0, &qword_2741D5B80);
    sub_2740A6D94(v52, v12, &qword_28093AB80, &qword_2741D5B88);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578);
    sub_274176950();
    v50 = v69;
    sub_2741C72CC();
    sub_27409D420(v52, &qword_28093AB80, &qword_2741D5B88);
    goto LABEL_9;
  }

  v65 = &v56;
  MEMORY[0x28223BE20](v41);
  v64 = &v56 - 4;
  *(&v56 - 2) = a1;
  v73 = v37;
  v74 = v38;
  sub_2741C7A5C();
  v42 = v70;
  v43 = v71;
  v44 = v72;
  swift_getKeyPath();
  v70 = v42;
  v71 = v43;
  v72 = v44;
  v45 = *(v61 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  v46 = v60;
  sub_2741C7B0C();

  *v46 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939820, &unk_2741D05C0);
  sub_2740A6D24(&qword_280939828, &qword_280939820, &unk_2741D05C0);
  sub_274176A48(&qword_280939830, type metadata accessor for IdentitySelectionView);
  v47 = v62;
  sub_2741C6DDC();
  v48 = v63;
  v49 = v68;
  (*(v63 + 16))(v56, v47, v68);
  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578);
  sub_274176950();
  v50 = v69;
  sub_2741C72CC();
  (*(v48 + 8))(v47, v49);
  a2 = v59;
  v21 = v57;
LABEL_9:
  v53 = v67;
  sub_2740A6D94(v33, v67, &qword_2809380D0, &qword_2741CB850);
  sub_2740A6D94(v50, v21, &qword_28093AB90, &unk_2741D5BA0);
  sub_2740A6D94(v53, a2, &qword_2809380D0, &qword_2741CB850);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABA0, &qword_2741D5BB0);
  sub_2740A6D94(v21, a2 + *(v54 + 48), &qword_28093AB90, &unk_2741D5BA0);
  sub_27409D420(v50, &qword_28093AB90, &unk_2741D5BA0);
  sub_27409D420(v33, &qword_2809380D0, &qword_2741CB850);
  sub_27409D420(v21, &qword_28093AB90, &unk_2741D5BA0);
  return sub_27409D420(v53, &qword_2809380D0, &qword_2741CB850);
}

uint64_t sub_274172324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938110, &unk_2741D05D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = v68 - v5;
  v6 = sub_2741C6E4C();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  MEMORY[0x28223BE20](v6);
  v91 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PasswordPromptSheet();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = v11;
  v80 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v70 = *(v79 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v79);
  v69 = v68 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v82 = *(v83 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = v68 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938128, &unk_2741CB8A0);
  v81 = *(v86 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v86);
  v77 = v68 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938130, &unk_2741D05F0);
  v85 = *(v87 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938138, &qword_2741CB8B0);
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = *(v89 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v88 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = v68 - v24;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v97 = xmmword_280946078;
  sub_2740A6A74();

  v72 = sub_2741C76AC();
  v71 = v25;
  v73 = v26;
  v74 = v27;
  v68[3] = sub_2741C714C();
  v68[2] = v28;
  v68[1] = v29;
  v30 = (a1 + *(v9 + 48));
  v32 = *v30;
  v31 = v30[1];
  *&v100 = v32;
  *(&v100 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v33 = v97;
  v34 = v98;
  swift_getKeyPath();
  v100 = v33;
  v101 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v35 = v69;
  sub_2741C7C8C();
  v36 = a1 + *(v9 + 56);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v36) = *(v36 + 16);
  LOBYTE(v97) = v37;
  *(&v97 + 1) = v38;
  LOBYTE(v98) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v97 = v100;
  LOBYTE(v98) = v101;
  LOBYTE(v100) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v40 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890);
  v41 = sub_2740A58C0();
  v42 = v78;
  v43 = v79;
  sub_2741C789C();

  (*(v70 + 8))(v35, v43);
  v44 = v80;
  sub_274176080(a1, v80);
  v45 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v46 = swift_allocObject();
  sub_274176A9C(v44, v46 + v45, type metadata accessor for PasswordPromptSheet);
  v47 = v91;
  sub_2741C6E3C();
  *&v97 = v43;
  *(&v97 + 1) = v39;
  v98 = v40;
  v99 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v77;
  v50 = v83;
  sub_2741C78EC();

  (*(v92 + 8))(v47, v93);
  (*(v82 + 8))(v42, v50);
  *&v97 = v50;
  *(&v97 + 1) = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v84;
  v53 = v86;
  MEMORY[0x2743E5870](1, v86, v51);
  (*(v81 + 8))(v49, v53);
  v54 = v94;
  sub_2741C744C();
  v55 = sub_2741C745C();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  *&v97 = v53;
  *(&v97 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v56 = v96;
  v57 = v87;
  sub_2741C782C();
  sub_27409D420(v54, &qword_280938110, &unk_2741D05D0);
  (*(v85 + 8))(v52, v57);
  v59 = v88;
  v58 = v89;
  v60 = *(v89 + 16);
  v61 = v90;
  v60(v88, v56, v90);
  v62 = v95;
  v63 = v72;
  v64 = v71;
  *v95 = v72;
  v62[1] = v64;
  LOBYTE(v57) = v73 & 1;
  *(v62 + 16) = v73 & 1;
  v62[3] = v74;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938150, &qword_2741CB8E8);
  v60(v62 + *(v65 + 48), v59, v61);
  sub_27409861C(v63, v64, v57);
  v66 = *(v58 + 8);

  v66(v96, v61);
  v66(v59, v61);
  sub_2740A6AC8(v63, v64, v57);
}

uint64_t sub_274172D88()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = (v0 + *(type metadata accessor for PasswordPromptSheet() + 48));
  v4 = *v2;
  v3 = v2[1];
  v8[0] = v4;
  v8[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v9[3] = type metadata accessor for AssociationCredentials();
  v9[4] = &off_288329FD0;
  v6 = v1[16];
  v5 = v1[17];
  sub_27409D4E4(v9, v8);
  v6(v1 + 1, v1, v8);
  sub_27409D420(v8, &qword_280937FB8, &unk_2741D0410);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return sub_274175A48();
}

double sub_274172E60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v16 = 1;
  sub_274172F68(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2740A6D94(&v17, &v9, &qword_280939838, &qword_2741D3B50);
  sub_27409D420(v22, &qword_280939838, &qword_2741D3B50);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_274172F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for EnterpriseIdentity();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2809374B0 != -1)
  {
    swift_once();
  }

  v51 = qword_280946098;
  v52 = unk_2809460A0;
  sub_2740A6A74();

  v13 = sub_2741C76AC();
  v46 = v14;
  v47 = v13;
  v45 = v15;
  v17 = v16;
  v18 = (a1 + *(type metadata accessor for PasswordPromptSheet() + 48));
  v20 = *v18;
  v19 = v18[1];
  v51 = v20;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v21 = v48;
  swift_getKeyPath();
  v51 = v21;
  sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v22 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_2740A6D94(v21 + v22, v7, &qword_280937DA0, &qword_2741CB190);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27409D420(v7, &qword_280937DA0, &qword_2741CB190);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v43 = type metadata accessor for EnterpriseIdentity;
    sub_274176A9C(v7, v12, type metadata accessor for EnterpriseIdentity);
    v27 = v12[1];
    v48 = *v12;
    v49 = v27;

    v28 = sub_2741C76AC();
    v30 = v29;
    v32 = v31;
    v44 = v17;
    LODWORD(v48) = sub_2741C737C();
    v23 = sub_2741C764C();
    v24 = v33;
    v35 = v34;
    v26 = v36;
    sub_2740A6AC8(v28, v30, v32 & 1);
    v17 = v44;

    sub_274176B04(v12, v43);
    v25 = v35 & 1;
    sub_27409861C(v23, v24, v35 & 1);
  }

  v37 = v45 & 1;
  LOBYTE(v48) = v45 & 1;
  v50 = 1;
  v39 = v46;
  v38 = v47;
  sub_27409861C(v47, v46, v45 & 1);

  sub_2740ACA00(v23, v24, v25, v26);
  sub_2740ACA44(v23, v24, v25, v26);
  v40 = v48;
  v41 = v50;
  *a2 = v38;
  *(a2 + 8) = v39;
  *(a2 + 16) = v40;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = v41;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_2740ACA44(v23, v24, v25, v26);
  sub_2740A6AC8(v38, v39, v37);
}

uint64_t sub_2741733A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = sub_2741C6E4C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PasswordPromptSheet();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = v8;
  v66 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v61 = *(v65 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v65);
  v56 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = v55 - v18;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v77 = xmmword_280946088;
  sub_2740A6A74();

  v58 = sub_2741C76AC();
  v57 = v19;
  v59 = v20;
  v60 = v21;
  v55[2] = sub_2741C714C();
  v55[1] = v22;
  v55[0] = v23;
  v24 = (a1 + *(v6 + 48));
  v26 = *v24;
  v25 = v24[1];
  *&v80 = v26;
  *(&v80 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v27 = v77;
  v28 = v78;
  swift_getKeyPath();
  v80 = v27;
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v29 = v56;
  sub_2741C6CFC();
  v30 = a1;
  v31 = a1 + *(v6 + 56);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  LOBYTE(v77) = v32;
  *(&v77 + 1) = v33;
  LOBYTE(v78) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v77 = v80;
  LOBYTE(v78) = v81;
  LOBYTE(v80) = 2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v35 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0);
  v36 = sub_2740A58C0();
  v38 = v64;
  v37 = v65;
  sub_2741C789C();

  (*(v61 + 8))(v29, v37);
  v39 = v66;
  sub_274176080(v30, v66);
  v40 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v41 = swift_allocObject();
  sub_274176A9C(v39, v41 + v40, type metadata accessor for PasswordPromptSheet);
  v42 = v72;
  sub_2741C6E3C();
  *&v77 = v37;
  *(&v77 + 1) = v34;
  v78 = v35;
  v79 = v36;
  swift_getOpaqueTypeConformance2();
  v43 = v76;
  v44 = v68;
  sub_2741C78EC();

  (*(v73 + 8))(v42, v74);
  (*(v67 + 8))(v38, v44);
  v46 = v69;
  v45 = v70;
  v47 = *(v70 + 16);
  v48 = v71;
  v47(v69, v43, v71);
  v49 = v75;
  v50 = v58;
  v51 = v57;
  *v75 = v58;
  v49[1] = v51;
  LOBYTE(v44) = v59 & 1;
  *(v49 + 16) = v59 & 1;
  v49[3] = v60;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939840, &unk_2741D5C40);
  v47(v49 + *(v52 + 48), v46, v48);
  sub_27409861C(v50, v51, v44);
  v53 = *(v45 + 8);

  v53(v76, v48);
  v53(v46, v48);
  sub_2740A6AC8(v50, v51, v44);
}

uint64_t sub_274173B30(uint64_t a1)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  v2 = (a1 + *(type metadata accessor for PasswordPromptSheet() + 48));
  v4 = *v2;
  v5 = v2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397B8, &unk_2741D0550);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_2809397C8, &qword_2809397B8, &unk_2741D0550);
  sub_2740A6A74();
  return sub_2741C7ABC();
}

uint64_t sub_274173D08@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D0, &unk_2741D5B70);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  if (qword_280937480 != -1)
  {
    swift_once();
  }

  v26 = qword_280946038;
  v27 = unk_280946040;
  sub_2740A6A74();

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 16) = 257;
  if (qword_280937488 != -1)
  {
    swift_once();
  }

  v26 = qword_280946048;
  v27 = unk_280946050;

  *v13 = sub_2741C76AC();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 16) = 258;
  v22 = v3[2];
  v22(v10, v15, v2);
  v22(v7, v13, v2);
  v22(a1, v10, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D8, &unk_2741D0560);
  v22(&a1[*(v23 + 48)], v7, v2);
  v24 = v3[1];
  v24(v13, v2);
  v24(v15, v2);
  v24(v7, v2);
  return (v24)(v10, v2);
}

uint64_t sub_274173FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939760, &qword_2741D5AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = sub_2741C730C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_2741C72DC();
  v21[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  sub_2741C72EC();
  v21[4] = a1;
  sub_2741C6D2C();
  v17 = *(v3 + 48);
  v18 = v10[2];
  v18(v6, v16, v9);
  v18(&v6[v17], v14, v9);
  sub_2741C71EC();
  v19 = v10[1];
  v19(v14, v9);
  return (v19)(v16, v9);
}

uint64_t sub_274174284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_274176080(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_274176A9C(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PasswordPromptSheet);
  sub_2741C7A7C();
  v9 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  v14[1] = v9;
  sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState);

  sub_2741C6A0C();

  LOBYTE(v6) = *(v9 + 16);

  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_2740A7438;
  v13[2] = v11;
  return result;
}

uint64_t sub_2741744BC(void *a1)
{
  v2 = sub_2741C6DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v7[14];
  v9 = v7[15];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v8(v7 + 1, v7, v11);
  sub_27409D420(v11, &qword_280937FB8, &unk_2741D0410);
  sub_274175A48();
  sub_27416FF7C(v6);
  sub_2741C6DAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2741745E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  sub_274176080(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_274176A9C(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PasswordPromptSheet);
  sub_2741C7A7C();
  v15 = (a1 + *(v5 + 56));
  v17 = *v15;
  v16 = v15[1];
  v25 = v17;
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  LOBYTE(v6) = sub_274109704();

  if (v6)
  {
    v18 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getKeyPath();
    v25 = v18;
    sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState);

    sub_2741C6A0C();

    v19 = *(v18 + 16);
  }

  else
  {
    v19 = 1;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v9 + 32))(a2, v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_2740A6E2C;
  v23[2] = v21;
  return result;
}

uint64_t sub_27417491C(uint64_t a1)
{
  v2 = sub_2741C730C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939720, &qword_2741D03E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_2741C72FC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939740, &unk_2741D5A70);
  sub_2740A6D24(&qword_280939748, &qword_280939740, &unk_2741D5A70);
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

void *sub_274174B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C71AC();
  v10 = 1;
  sub_274174BE4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_2740A6D94(__dst, &v7, &qword_280939750, &qword_2741D0460);
  sub_27409D420(v12, &qword_280939750, &qword_2741D0460);
  memcpy(&v9[7], __dst, 0x120uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x127uLL);
}

uint64_t sub_274174BE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_2741C713C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2741C712C();
  sub_2741C711C();
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v5[18];
  v7 = v5[19];

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  v8 = sub_2741C768C();
  v10 = v9;
  v12 = v11;
  sub_2741C75DC();
  v46 = sub_2741C767C();
  v47 = v13;
  v54 = v14;
  v16 = v15;

  sub_2740A6AC8(v8, v10, v12 & 1);

  v53 = sub_2741C752C();
  sub_2741C6C6C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v49 = v16 & 1;
  LOBYTE(v81[0]) = v16 & 1;
  LOBYTE(v72) = 0;
  v52 = sub_2741C753C();
  sub_2741C6C6C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v92) = 0;
  KeyPath = swift_getKeyPath();
  v51 = sub_2741C736C();
  if (qword_280937660 != -1)
  {
    swift_once();
  }

  v92 = qword_2809463F8;
  v93 = unk_280946400;
  sub_2740A6A74();

  v33 = sub_2741C76AC();
  v35 = v34;
  v37 = v36;
  sub_2741C75EC();
  v38 = sub_2741C767C();
  v40 = v39;
  v42 = v41;
  v45 = v43;

  sub_2740A6AC8(v33, v35, v37 & 1);

  sub_2741C7C1C();
  sub_2741C6F1C();
  v119 = v42 & 1;
  *&v63 = v46;
  *(&v63 + 1) = v54;
  LOBYTE(v64) = v49;
  *(&v64 + 1) = *v121;
  DWORD1(v64) = *&v121[3];
  *(&v64 + 1) = v47;
  LOBYTE(v65) = v53;
  *(&v65 + 1) = *v120;
  DWORD1(v65) = *&v120[3];
  *(&v65 + 1) = v18;
  *&v66 = v20;
  *(&v66 + 1) = v22;
  *&v67 = v24;
  BYTE8(v67) = 0;
  HIDWORD(v67) = *&v123[3];
  *(&v67 + 9) = *v123;
  LOBYTE(v68) = v52;
  DWORD1(v68) = *&v122[3];
  *(&v68 + 1) = *v122;
  *(&v68 + 1) = v26;
  *&v69 = v28;
  *(&v69 + 1) = v30;
  *&v70 = v32;
  BYTE8(v70) = 0;
  HIDWORD(v70) = *&v124[3];
  *(&v70 + 9) = *v124;
  *&v71 = KeyPath;
  BYTE8(v71) = 1;
  *(&v71 + 9) = v125;
  BYTE11(v71) = v126;
  HIDWORD(v71) = v51;
  v55[2] = v65;
  v55[3] = v66;
  v55[0] = v63;
  v55[1] = v64;
  v55[6] = v69;
  v55[7] = v70;
  v55[4] = v67;
  v55[5] = v68;
  *&v72 = v38;
  *(&v72 + 1) = v40;
  LOBYTE(v73) = v42 & 1;
  *(&v73 + 1) = *v118;
  DWORD1(v73) = *&v118[3];
  *(&v73 + 1) = v45;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  v74 = v56;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v55[14] = v59;
  v55[15] = v60;
  v55[16] = v61;
  v55[17] = v62;
  v55[8] = v71;
  v55[9] = v72;
  v55[12] = v57;
  v55[13] = v58;
  v55[10] = v73;
  v55[11] = v56;
  memcpy(a2, v55, 0x120uLL);
  v81[0] = v38;
  v81[1] = v40;
  v82 = v42 & 1;
  *v83 = *v118;
  *&v83[3] = *&v118[3];
  v84 = v45;
  v89 = v60;
  v90 = v61;
  v91 = v62;
  v85 = v56;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  sub_2740A6D94(&v63, &v92, &qword_280939758, &unk_2741D5AB0);
  sub_2740A6D94(&v72, &v92, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v81, &qword_2809381B0, &qword_2741CB9D0);
  v92 = v46;
  v93 = v54;
  v94 = v49;
  *v95 = *v121;
  *&v95[3] = *&v121[3];
  v96 = v47;
  v97 = v53;
  *v98 = *v120;
  *&v98[3] = *&v120[3];
  v99 = v18;
  v100 = v20;
  v101 = v22;
  v102 = v24;
  v103 = 0;
  *&v104[3] = *&v123[3];
  *v104 = *v123;
  v105 = v52;
  *&v106[3] = *&v122[3];
  *v106 = *v122;
  v107 = v26;
  v108 = v28;
  v109 = v30;
  v110 = v32;
  v111 = 0;
  *v112 = *v124;
  *&v112[3] = *&v124[3];
  v113 = KeyPath;
  v114 = 1;
  v115 = v125;
  v116 = v126;
  v117 = v51;
  return sub_27409D420(&v92, &qword_280939758, &unk_2741D5AB0);
}

uint64_t sub_2741751F0(void *a1)
{
  v2 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160);
  v3 = a1 + *(type metadata accessor for PasswordPromptSheet() + 56);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v3) = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

void sub_274175294(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    v4 = a3 + *(type metadata accessor for PasswordPromptSheet() + 56);
    v7 = *v4;
    v8 = *(v4 + 1);
    v9 = v4[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
    sub_2741C6C7C();
    v5 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    if (*(*v5 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState);

      sub_2741C69FC();
    }

    else
    {
      *(*v5 + 17) = 0;
    }
  }
}

uint64_t sub_274175428(uint64_t a1)
{
  v2 = type metadata accessor for PasswordPromptSheet();
  v3 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
    if (swift_dynamicCast())
    {
      v5 = v24;
      v4 = v28;
      if (v37 > 5u)
      {
        if (v37 == 6)
        {
          sub_2741C856C();
          v38 = 0;
          v39 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          sub_2740CB460(0xD00000000000001ALL, 0x80000002741D8E90);
          WiFiDisableMISState();
          sub_274172D88();
          v6 = v24;
          v7 = v28;
          v8 = v32;
          v9 = v34;
          v10 = v35;
          v11 = v36;
          v12 = 6;
          goto LABEL_15;
        }

        if (v37 == 7)
        {
          sub_2741C856C();
          v38 = 0;
          v39 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);
          v13 = v24;
          v14 = v28;
          v15 = v32;
          v16 = v34;
          v17 = v35;
          v18 = v36;
          v19 = 7;
LABEL_12:
          sub_2740A66EC(v13, v14, v15, v16, v17, v18, v19);

          goto LABEL_16;
        }
      }

      else
      {
        if (v37 == 3)
        {
          sub_2741C856C();
          v38 = 0;
          v39 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          v20 = (a1 + v2[13]);
          v25 = *v20;
          v29 = *(v20 + 1);
          LOBYTE(v38) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
          sub_2741C7A4C();
          sub_274172D88();
          v6 = v5;
          v7 = v4;
          v8 = v32;
          v9 = v34;
          v10 = v35;
          v11 = v36;
          v12 = 3;
          goto LABEL_15;
        }

        if (v37 == 5)
        {
          sub_2741C856C();
          v38 = 0;
          v39 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          sub_274172D88();
          v6 = v24;
          v7 = v28;
          v8 = v32;
          v9 = v34;
          v10 = v35;
          v11 = v36;
          v12 = 5;
LABEL_15:
          sub_2740A66EC(v6, v7, v8, v9, v10, v11, v12);
          goto LABEL_16;
        }
      }

      sub_2741C856C();
      v38 = 0;
      v39 = 0xE000000000000000;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);
      v13 = v24;
      v14 = v28;
      v15 = v32;
      v16 = v34;
      v17 = v35;
      v18 = v36;
      v19 = v37;
      goto LABEL_12;
    }
  }

  else
  {
    sub_27409D420(&v38, &qword_280937E78, &qword_2741D81E0);
  }

LABEL_16:
  v21 = (a1 + v2[9]);
  v26 = *v21;
  v30 = *(v21 + 1);
  LOBYTE(v38) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v22 = (a1 + v2[14]);
  v27 = *v22;
  v31 = *(v22 + 1);
  v33 = v22[16];
  LOBYTE(v38) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_274175A48()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_2741C856C();

  *&v5 = 0xD000000000000023;
  *(&v5 + 1) = 0x80000002741E2A50;
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_2740ACAC8((v1 + 1), &v7);
  MEMORY[0x2743E5FB0](v7, v8);
  sub_2740ACB2C(&v7);
  sub_2740CB460(0xD000000000000023, 0x80000002741E2A50);

  v2 = type metadata accessor for PasswordPromptSheet();
  sub_2740A6D94(v0 + *(v2 + 60), &v5, &qword_28093AAC0, &unk_2741D5920);
  if (!v6)
  {
    return sub_27409D420(&v5, &qword_28093AAC0, &unk_2741D5920);
  }

  sub_27409D118(&v5, &v7);
  __swift_project_boxed_opaque_existential_1(&v7, v9);
  v3 = off_288329530;
  type metadata accessor for WiFiPasswordSharingService();
  v3();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v7);
}

uint64_t sub_274175B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  type metadata accessor for WiFiAssociator();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = &off_288329608;
  sub_2740A6D94(a2, &v18, &qword_28093A228, &unk_2741D4770);
  if (v19)
  {
    sub_27409D118(&v18, v21);
    v9 = v22;
    v10 = v23;
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v19 = v9;
    v20 = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    v13 = sub_2741C80DC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_27409D4E4(&v18, v17);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_27409D118(v17, v14 + 32);
    *(v14 + 72) = 1;

    sub_2740CE980(0, 0, v7, &unk_2741D5960, v14);

    sub_27409D420(a2, &qword_28093A228, &unk_2741D4770);
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_27409D420(a2, &qword_28093A228, &unk_2741D4770);
    sub_27409D420(&v18, &qword_28093A228, &unk_2741D4770);
  }

  return v8;
}

void *sub_274175DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29[3] = sub_27417615C();
  v29[4] = &off_28832C8F0;
  v29[0] = a4;
  a5[7] = 0;
  a5[8] = &unk_2883264F0;
  sub_27409D4E4(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAD0, &qword_2741D5958);
  if (swift_dynamicCast())
  {

    v10 = [objc_opt_self() passwordSharingAvailability];
    v11 = a5[8];
    v12 = *(v11 + 16);
    v13 = (v11 + 32);
    do
    {
      if (!v12)
      {
        v15 = ":securityType:service:)";
        v16 = 0xD000000000000030;
        goto LABEL_11;
      }

      v14 = *v13++;
      --v12;
    }

    while (v14 != a3);
    if (!v10)
    {
      goto LABEL_7;
    }

    v15 = " password for network: ";
    v16 = 0xD000000000000035;
LABEL_11:

    sub_2740CB218(v16, v15 | 0x8000000000000000, 0xD000000000000027, 0x80000002741E29E0);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v24 = a5[7];

    v25 = a5[8];

    type metadata accessor for WiFiPasswordSharingService();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
LABEL_7:
    sub_27409D4E4(v29, (a5 + 2));
    swift_beginAccess();
    v17 = a5[5];
    v18 = a5[6];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 2), v17);
    (*(v18 + 16))(a1, a2, v17, v18);
    swift_endAccess();
    if (qword_280937370 != -1)
    {
      swift_once();
    }

    v19 = unk_280939580;
    swift_beginAccess();
    v20 = a5[5];
    v21 = a5[6];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 2), v20);
    v22 = *(v21 + 40);
    v23 = swift_unknownObjectRetain();
    v22(v23, v19, v20, v21);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return a5;
}

uint64_t sub_274176080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasswordPromptSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741760E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAC0, &unk_2741D5920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_27417615C()
{
  result = qword_28093AAC8;
  if (!qword_28093AAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28093AAC8);
  }

  return result;
}

uint64_t sub_2741761A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2741761FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2741762CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27417637C()
{
  sub_2741765D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WiFiAssociator();
    if (v1 <= 0x3F)
    {
      sub_2740FB16C(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2740FB16C(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_274118100(319, &qword_280937EC8);
          if (v4 <= 0x3F)
          {
            sub_274176638(319, &qword_280937ED0, &qword_280937E78, &qword_2741D81E0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_274118100(319, &qword_280939450);
              if (v6 <= 0x3F)
              {
                sub_2740FB16C(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_2740A5850();
                  if (v8 <= 0x3F)
                  {
                    sub_274176638(319, &qword_28093AAF0, &qword_28093AAF8, &qword_2741D59A0, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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
}

unint64_t sub_2741765D4()
{
  result = qword_28093AAE8;
  if (!qword_28093AAE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28093AAE8);
  }

  return result;
}

void sub_274176638(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2741766E4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for PasswordPromptSheet() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_274175294(a1, a2, v6);
}

unint64_t sub_274176764()
{
  result = qword_28093AB38;
  if (!qword_28093AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    sub_2740A6D24(&qword_28093AB40, &qword_28093AB48, &unk_2741D5A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AB38);
  }

  return result;
}

uint64_t sub_2741768C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PasswordPromptSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274176950()
{
  result = qword_28093AB98;
  if (!qword_28093AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB80, &qword_2741D5B88);
    sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80);
    sub_274176A48(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AB98);
  }

  return result;
}

uint64_t sub_274176A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274176A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_274176B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for PasswordPromptSheet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  v6 = *(v0 + v3 + 40);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2741C6DBC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[8]);

  v11 = *(v5 + v1[9] + 8);

  v12 = v5 + v1[10];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[10]));
  }

  v13 = *(v12 + 40);

  v14 = v5 + v1[11];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = (v5 + v1[12]);
  v18 = *v17;

  v19 = v17[1];

  v20 = *(v5 + v1[13] + 8);

  v21 = *(v5 + v1[14] + 8);

  v22 = (v5 + v1[15]);
  if (v22[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274176D3C()
{
  v1 = *(type metadata accessor for PasswordPromptSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_274172D88();
}

uint64_t sub_274176D98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB08, &qword_2741D5A00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
  sub_274176764();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

char *sub_274176EC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABE8, &qword_2741D5CA0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_274176FC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
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

char *sub_2741770D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC10, &qword_2741D5CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2741771D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274177318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_274177464(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_274177640(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2741776D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_274177768(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2741777F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
    v3 = sub_2741C867C();
    for (i = a1 + 32; ; i += 48)
    {
      sub_2740A6D94(i, v11, &qword_28093ABD0, &qword_2741D5C88);
      v5 = v11[0];
      result = sub_274125ECC(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_27409D118(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABD8, &qword_2741D5C90);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v11, &qword_28093ABE0, &qword_2741D5C98);
      v5 = v11;
      result = sub_274125370(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_27409D2F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC28, &qword_2741D5CE0);
    v3 = sub_2741C867C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2741251AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v13, &qword_280938440, &qword_2741CC118);
      v5 = v13;
      v6 = v14;
      result = sub_2741251AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27409D2F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABC8, &qword_2741D5C80);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v11, &qword_28093ABB0, &qword_2741D5C68);
      v5 = v11;
      result = sub_274125404(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_27409D2F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC20, &qword_2741D5CD8);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, v15, &qword_2809384F0, &qword_2741CC4A8);
      result = sub_274125164(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC08, &qword_2741D5CC0);
    v3 = sub_2741C867C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2741251AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, v13, &qword_280939BE8, qword_2741D1A70);
      result = sub_274125164(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_27409D2F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}