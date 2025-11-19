uint64_t sub_26BF038B0()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2136);
  v9 = *v1;
  *(*v1 + 2144) = v0;

  if (v0)
  {
    v4 = *(v2 + 2048);

    v5 = sub_26BF03D74;
  }

  else
  {
    v5 = sub_26BF03A00;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF03A00()
{
  v13 = v0;
  v12[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26BE328C0(*(v1 + 16), 0);
    v4 = sub_26BE33804(v12, v3 + 2, v2, v1);

    sub_26BE2DA4C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 2152) = v3;
  v5 = *(**(v0 + 2120) + 472);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 2160) = v7;
  *v7 = v0;
  v7[1] = sub_26BF03BEC;
  v8 = *(v0 + 2120);
  v9 = *MEMORY[0x277D85DE8];

  return (v11)(v0 + 1616, v3);
}

uint64_t sub_26BF03BEC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2160);
  v4 = *v1;
  v2[271] = v0;

  v5 = v2[269];
  if (v0)
  {
    v6 = v2[256];

    v7 = sub_26BF04530;
  }

  else
  {
    v8 = v2[266];

    v7 = sub_26BF03E44;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF03D74()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[266];

  v2 = v0[268];
  v3 = v0[256];
  sub_26BE00258(v0[263], v0[264]);

  v4 = v0[253];
  v5 = v0[252];
  v6 = v0[251];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26BF03E44()
{
  v50 = v0;
  v49[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2048);

  v2 = *(v0 + 1616);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1656);
  v47 = *(v0 + 1664);
  v48 = *(v0 + 1648);
  v7 = *(v0 + 1672);
  v46 = *(v0 + 1680);
  v8 = *(v0 + 1688);
  *(v0 + 2224) = v5;
  *(v0 + 2216) = v4;
  *(v0 + 2208) = v3;
  *(v0 + 2200) = v2;
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  v9 = *(v0 + 1992);
  swift_beginAccess();
  if (*(v9 + 32) == 1)
  {
    v44 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D837D0];
    *(v10 + 16) = xmmword_26C011280;
    *(v10 + 56) = v11;
    *(v10 + 32) = 123;
    *(v10 + 40) = 0xE100000000000000;
    sub_26BE00608(v2, v3);
    sub_26BE2BAE8(v4, v5);
    sub_26C00B03C();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v49[0] = 0xD000000000000011;
    v49[1] = 0x800000026C02C970;
    v13 = sub_26C0090EC();
    v45 = v6;
    MEMORY[0x26D699090](v13);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    *(v12 + 56) = v11;
    *(v12 + 32) = v49[0];
    *(v12 + 40) = v49[1];
    sub_26C00B03C();

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    strcpy(v49, "  welcome: ");
    HIBYTE(v49[1]) = -18;
    v15 = sub_26C0090EC();
    MEMORY[0x26D699090](v15);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v16 = v49[0];
    v17 = v49[1];
    *(v14 + 56) = v11;
    *(v14 + 32) = v16;
    *(v14 + 40) = v17;
    sub_26C00B03C();

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v49[0] = 0xD000000000000010;
    v49[1] = 0x800000026C02C990;
    if (v6 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v20 = sub_26C0090EC();
      v19 = v21;
    }

    MEMORY[0x26D699090](v20, v19);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v22 = v49[0];
    v23 = v49[1];
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = v22;
    *(v18 + 40) = v23;
    sub_26C00B03C();

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v49[0] = 0xD000000000000019;
    v49[1] = 0x800000026C02C9B0;
    if (v44 >> 60 == 15)
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v26 = sub_26C0090EC();
      v25 = v27;
    }

    MEMORY[0x26D699090](v26, v25);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v28 = v49[0];
    v29 = v49[1];
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v28;
    *(v24 + 40) = v29;
    sub_26C00B03C();

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v49[0] = 0xD000000000000012;
    v49[1] = 0x800000026C02C9D0;
    if (v8 >> 60 == 15)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v32 = sub_26C0090EC();
      v31 = v33;
    }

    MEMORY[0x26D699090](v32, v31);

    MEMORY[0x26D699090](34, 0xE100000000000000);
    v34 = v49[0];
    v35 = v49[1];
    v36 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = v34;
    *(v30 + 40) = v35;
    sub_26C00B03C();

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26C011280;
    *(v37 + 56) = v36;
    *(v37 + 32) = 125;
    *(v37 + 40) = 0xE100000000000000;
    sub_26C00B03C();

    v7 = v44;
    v6 = v45;
  }

  else
  {
    sub_26BE00608(v2, v3);
    sub_26BE2BAE8(v4, v5);
  }

  *(v0 + 1536) = v2;
  *(v0 + 1544) = v3;
  *(v0 + 1552) = v4;
  *(v0 + 1560) = v5;
  *(v0 + 1568) = v48;
  *(v0 + 1576) = v6;
  *(v0 + 1584) = v47;
  *(v0 + 1592) = v7;
  *(v0 + 1600) = v46;
  *(v0 + 1608) = v8;
  *(v0 + 1952) = v2;
  *(v0 + 1960) = v3;
  *(v0 + 1448) = 0;
  *(v0 + 1320) = 0u;
  *(v0 + 1336) = 0u;
  *(v0 + 1352) = 0u;
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = 0u;
  *(v0 + 1432) = 0u;
  *(v0 + 1936) = xmmword_26C00DA60;
  v38 = swift_task_alloc();
  *(v0 + 2232) = v38;
  *v38 = v0;
  v38[1] = sub_26BF04E6C;
  v39 = *(v0 + 2040);
  v40 = *(v0 + 2032);
  v41 = *(v0 + 1992);
  v42 = *MEMORY[0x277D85DE8];

  return sub_26BEFDA68((v0 + 1952), v40, v39, v0 + 1320, 0, 0, (v0 + 1936), 0);
}

uint64_t sub_26BF04530()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[266];

  v2 = v0[271];
  v3 = v0[256];
  sub_26BE00258(v0[263], v0[264]);

  v4 = v0[253];
  v5 = v0[252];
  v6 = v0[251];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26BF04600()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2184);
  v4 = *v1;
  *(*v1 + 2192) = v0;

  v5 = *(v2 + 2176);
  swift_setDeallocating();
  v6 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v7 = sub_26BF05A28;
  }

  else
  {
    v7 = sub_26BF04788;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF04788()
{
  v49 = v0;
  v48[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1496);
  v46 = *(v0 + 1504);
  v47 = *(v0 + 1488);
  v6 = *(v0 + 1512);
  v45 = *(v0 + 1520);
  v7 = *(v0 + 1528);
  *(v0 + 2224) = v4;
  *(v0 + 2216) = v3;
  *(v0 + 2208) = v2;
  *(v0 + 2200) = v1;
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  v8 = *(v0 + 1992);
  swift_beginAccess();
  if (*(v8 + 32) == 1)
  {
    v43 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 16) = xmmword_26C011280;
    *(v9 + 56) = v10;
    *(v9 + 32) = 123;
    *(v9 + 40) = 0xE100000000000000;
    sub_26BE00608(v1, v2);
    sub_26BE2BAE8(v3, v4);
    sub_26C00B03C();

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v48[0] = 0xD000000000000011;
    v48[1] = 0x800000026C02C970;
    v12 = sub_26C0090EC();
    v44 = v5;
    MEMORY[0x26D699090](v12);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    *(v11 + 56) = v10;
    *(v11 + 32) = v48[0];
    *(v11 + 40) = v48[1];
    sub_26C00B03C();

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    strcpy(v48, "  welcome: ");
    HIBYTE(v48[1]) = -18;
    v14 = sub_26C0090EC();
    MEMORY[0x26D699090](v14);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v15 = v48[0];
    v16 = v48[1];
    *(v13 + 56) = v10;
    *(v13 + 32) = v15;
    *(v13 + 40) = v16;
    sub_26C00B03C();

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v48[0] = 0xD000000000000010;
    v48[1] = 0x800000026C02C990;
    if (v5 >> 60 == 15)
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v19 = sub_26C0090EC();
      v18 = v20;
    }

    MEMORY[0x26D699090](v19, v18);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v21 = v48[0];
    v22 = v48[1];
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 32) = v21;
    *(v17 + 40) = v22;
    sub_26C00B03C();

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v48[0] = 0xD000000000000019;
    v48[1] = 0x800000026C02C9B0;
    if (v43 >> 60 == 15)
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v25 = sub_26C0090EC();
      v24 = v26;
    }

    MEMORY[0x26D699090](v25, v24);

    MEMORY[0x26D699090](11298, 0xE200000000000000);
    v27 = v48[0];
    v28 = v48[1];
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = v27;
    *(v23 + 40) = v28;
    sub_26C00B03C();

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v48[0] = 0xD000000000000012;
    v48[1] = 0x800000026C02C9D0;
    if (v7 >> 60 == 15)
    {
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v31 = sub_26C0090EC();
      v30 = v32;
    }

    MEMORY[0x26D699090](v31, v30);

    MEMORY[0x26D699090](34, 0xE100000000000000);
    v33 = v48[0];
    v34 = v48[1];
    v35 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 32) = v33;
    *(v29 + 40) = v34;
    sub_26C00B03C();

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26C011280;
    *(v36 + 56) = v35;
    *(v36 + 32) = 125;
    *(v36 + 40) = 0xE100000000000000;
    sub_26C00B03C();

    v6 = v43;
    v5 = v44;
  }

  else
  {
    sub_26BE00608(v1, v2);
    sub_26BE2BAE8(v3, v4);
  }

  *(v0 + 1536) = v1;
  *(v0 + 1544) = v2;
  *(v0 + 1552) = v3;
  *(v0 + 1560) = v4;
  *(v0 + 1568) = v47;
  *(v0 + 1576) = v5;
  *(v0 + 1584) = v46;
  *(v0 + 1592) = v6;
  *(v0 + 1600) = v45;
  *(v0 + 1608) = v7;
  *(v0 + 1952) = v1;
  *(v0 + 1960) = v2;
  *(v0 + 1448) = 0;
  *(v0 + 1320) = 0u;
  *(v0 + 1336) = 0u;
  *(v0 + 1352) = 0u;
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = 0u;
  *(v0 + 1432) = 0u;
  *(v0 + 1936) = xmmword_26C00DA60;
  v37 = swift_task_alloc();
  *(v0 + 2232) = v37;
  *v37 = v0;
  v37[1] = sub_26BF04E6C;
  v38 = *(v0 + 2040);
  v39 = *(v0 + 2032);
  v40 = *(v0 + 1992);
  v41 = *MEMORY[0x277D85DE8];

  return sub_26BEFDA68((v0 + 1952), v39, v38, v0 + 1320, 0, 0, (v0 + 1936), 0);
}

uint64_t sub_26BF04E6C()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2232);
  v8 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    sub_26BE2E258(v2 + 1320, &qword_28045FA40, &qword_26C01D898);
    v4 = sub_26BF05AF0;
  }

  else
  {

    sub_26BE2E258(v2 + 1320, &qword_28045FA40, &qword_26C01D898);
    v4 = sub_26BF04FF0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF04FF0()
{
  v38 = *MEMORY[0x277D85DE8];
  if (v0[257])
  {
    v1 = v0[278];
    v2 = v0[277];
    v3 = v0[276];
    v4 = v0[275];
    v5 = v0[256];
    sub_26BE00258(v0[263], v0[264]);

    sub_26BE132D4(v2, v1);
    sub_26BE00258(v4, v3);
    v6 = v0[253];
    v7 = v0[252];
    v8 = v0[251];
    sub_26BF26EB4((v0 + 192));

    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];
LABEL_10:

    return v9();
  }

  v11 = v0[249];
  swift_beginAccess();
  v12 = *(v11 + 40);
  if (!*(v12 + 16))
  {
LABEL_9:
    v26 = v0[278];
    v27 = v0[277];
    v28 = v0[276];
    v29 = v0[275];
    v30 = v0[264];
    v31 = v0[263];
    v32 = v0[256];
    sub_26BE773C4();
    swift_allocError();
    *v33 = xmmword_26C01D5C0;
    swift_willThrow();
    sub_26BE00258(v31, v30);

    sub_26BE132D4(v27, v26);
    sub_26BE00258(v29, v28);
    sub_26BF26EB4((v0 + 192));
    v34 = v0[253];
    v35 = v0[252];
    v36 = v0[251];

    v9 = v0[1];
    v37 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v13 = v0[248];
  v14 = *(v13 + 32);
  v0[281] = v14;
  v15 = *(v13 + 40);
  v0[282] = v15;
  swift_bridgeObjectRetain_n();

  v16 = sub_26BEBB618(v14, v15);
  if ((v17 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_9;
  }

  v18 = v0[278];
  v19 = v0[277];
  v20 = *(*(v12 + 56) + 8 * v16);
  v0[283] = v20;

  sub_26BE2BAE8(v19, v18);

  v21 = swift_task_alloc();
  v0[284] = v21;
  *v21 = v0;
  v21[1] = sub_26BF05334;
  v22 = v0[278];
  v23 = v0[277];
  v24 = *MEMORY[0x277D85DE8];

  return sub_26BEAD328(v20, v20, v23, v22, 0, 0xF000000000000000);
}

uint64_t sub_26BF05334(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 2272);
  v10 = *v2;
  v3[285] = a1;
  v3[286] = v1;

  if (v1)
  {
    v5 = v3[282];
    sub_26BE132D4(v3[277], v3[278]);
    swift_bridgeObjectRelease_n();
    v6 = sub_26BF05914;
  }

  else
  {
    sub_26BE132D4(v3[277], v3[278]);
    v6 = sub_26BF054A8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF054A8()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = v0[282];
  v3 = v0[281];
  v4 = v0[255];
  v5 = v0[249];
  swift_beginAccess();

  v6 = *(v5 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + 48);
  v61 = v8;
  *(v5 + 48) = 0x8000000000000000;
  v10 = sub_26BEBB618(v3, v2);
  v11 = *(v8 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v9;
  if (*(v8 + 3) >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_26BE6F250();
      if ((v14 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v15 = v0[282];
    v16 = v0[281];
    sub_26BE6C1E0(v13, isUniquelyReferenced_nonNull_native);
    v17 = sub_26BEBB618(v16, v15);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_14:
      v38 = *MEMORY[0x277D85DE8];

      return sub_26C00AF8C();
    }

    v10 = v17;
    if ((v14 & 1) == 0)
    {
LABEL_32:
      __break(1u);
    }
  }

  v19 = v0[285];
  v20 = v0[255];
  v21 = v0[254];
  v22 = *(*(v8 + 7) + 8 * v10);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v62[0] = v22;
  sub_26BE57AE8(v19, v21, v20, v23);

  v24 = v0[282];
  if (v22)
  {

    *(*(v61 + 7) + 8 * v10) = v22;
  }

  else
  {

    sub_26BF25CA8(*(v61 + 6) + 16 * v10);
    sub_26C006458(v10, v61);
  }

  v25 = v0[255];
  v26 = v0[254];
  v1 = v0[249];
  *(v1 + 48) = v61;
  swift_endAccess();
  swift_beginAccess();
  v27 = *(v1 + 56);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v62[0] = *(v1 + 56);
  v8 = v62[0];
  *(v1 + 56) = 0x8000000000000000;
  v10 = sub_26BEBB618(v26, v25);
  v30 = *(v8 + 2);
  v31 = (v29 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_28;
  }

  v33 = v29;
  if (*(v8 + 3) >= v32)
  {
    if ((v28 & 1) == 0)
    {
      v8 = v62;
      sub_26BE6F3EC();
    }
  }

  else
  {
    v34 = v0[255];
    v35 = v0[254];
    sub_26BE6C4BC(v32, v28);
    v8 = v62[0];
    v36 = sub_26BEBB618(v35, v34);
    if ((v33 & 1) != (v37 & 1))
    {
      goto LABEL_14;
    }

    v10 = v36;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

  v8 = *(*(v62[0] + 56) + 8 * v10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    v8 = sub_26BEEDAF4(0, *(v8 + 2) + 1, 1, v8);
  }

  v41 = *(v8 + 2);
  v40 = *(v8 + 3);
  v60 = v10;
  if (v41 >= v40 >> 1)
  {
    v8 = sub_26BEEDAF4((v40 > 1), v41 + 1, 1, v8);
  }

  v42 = v0[285];
  v43 = v0[282];
  v44 = v0[281];
  v56 = v0[278];
  v45 = v0[277];
  v58 = v0[276];
  v59 = v0[283];
  v57 = v0[275];
  v46 = v0[264];
  v47 = v0[263];
  v48 = v0[256];
  *(v8 + 2) = v41 + 1;
  v49 = &v8[16 * v41];
  *(v49 + 4) = v44;
  *(v49 + 5) = v43;
  v50 = v62[0];
  *(*(v62[0] + 56) + 8 * v60) = v8;
  *(v1 + 56) = v50;
  swift_endAccess();
  sub_26BE00258(v47, v46);

  sub_26BE132D4(v45, v56);
  sub_26BE00258(v57, v58);

  v51 = v0[253];
  v52 = v0[252];
  v53 = v0[251];
  sub_26BF26EB4((v0 + 192));

  v54 = v0[1];
  v55 = *MEMORY[0x277D85DE8];

  return v54();
}

uint64_t sub_26BF05914()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[283];
  v2 = v0[276];
  v3 = v0[275];
  v4 = v0[264];
  v5 = v0[263];
  v6 = v0[256];
  sub_26BE132D4(v0[277], v0[278]);
  sub_26BE00258(v5, v4);

  sub_26BE00258(v3, v2);

  sub_26BF26EB4((v0 + 192));
  v7 = v0[286];
  v8 = v0[253];
  v9 = v0[252];
  v10 = v0[251];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_26BF05A28()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[256];
  sub_26BE00258(v0[263], v0[264]);

  v2 = v0[274];
  v3 = v0[253];
  v4 = v0[252];
  v5 = v0[251];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_26BF05AF0()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[278];
  v2 = v0[277];
  v3 = v0[276];
  v4 = v0[275];
  v5 = v0[256];
  sub_26BE00258(v0[263], v0[264]);

  sub_26BE132D4(v2, v1);
  sub_26BF26EB4((v0 + 192));
  sub_26BE00258(v4, v3);
  v6 = v0[280];
  v7 = v0[253];
  v8 = v0[252];
  v9 = v0[251];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_26BF05BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_26BEFCF5C();
  v11 = sub_26BF00490(v31, a1, a2);
  v29 = a3;
  if (*v12)
  {
    v13 = a3;
    v14 = a4;
    sub_26C000338(v13, a4);
  }

  else
  {
    v14 = a4;
  }

  (v11)(v31, 0);
  (v10)(v32, 0);
  swift_beginAccess();
  v15 = *(v4 + 56);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = *(v4 + 56);

  v17 = sub_26BEBB618(v29, v14);
  if ((v18 & 1) == 0 || (v19 = *(*(v15 + 56) + 8 * v17), , , v33 = v19, (v20 = *(v19 + 16)) == 0))
  {
LABEL_14:

LABEL_15:
    sub_26BE773C4();
    swift_allocError();
    *v24 = 0xD000000000000022;
    v24[1] = 0x800000026C02C940;
    return swift_willThrow();
  }

  v21 = 0;
  v22 = (v19 + 40);
  while (1)
  {
    v23 = *(v22 - 1) == a1 && *v22 == a2;
    if (v23 || (sub_26C00AF2C() & 1) != 0)
    {
      break;
    }

    ++v21;
    v22 += 2;
    if (v20 == v21)
    {
      goto LABEL_14;
    }
  }

  sub_26BFA74A8(v21);

  v26 = v33;
  swift_beginAccess();

  v27 = *(v5 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + 56);
  *(v5 + 56) = 0x8000000000000000;
  sub_26BE57AA8(v26, v29, v14, isUniquelyReferenced_nonNull_native);

  *(v5 + 56) = v30;
  return swift_endAccess();
}

uint64_t sub_26BF05E40(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 1392) = v1;
  *(v2 + 1384) = a1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF05ED4, 0, 0);
}

uint64_t sub_26BF05ED4()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v0[175] = v5;
  v6 = v2[3];
  v0[176] = v6;
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  if (!*(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v11 = *(*(v7 + 56) + 8 * v8);

  v12 = sub_26BEBB618(v5, v6);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(*(v10 + 56) + 8 * v12);
  v0[177] = v15;

  v16 = swift_task_alloc();
  v0[178] = v16;
  *v16 = v0;
  v16[1] = sub_26BF06084;
  v17 = *MEMORY[0x277D85DE8];

  return sub_26BE96744((v0 + 108), v15, v15);
}

uint64_t sub_26BF06084()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1424);
  v7 = *v1;
  *(*v1 + 1432) = v0;

  if (v0)
  {
    v3 = sub_26BF0645C;
  }

  else
  {
    v3 = sub_26BF061C4;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF061C4()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 880);
  *(v0 + 808) = *(v0 + 864);
  *(v0 + 824) = v2;
  *(v0 + 840) = *(v0 + 896);
  *(v0 + 856) = *(v0 + 912);
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 1384);
    v5 = *(v4 + 32);
    *(v0 + 1440) = v5;
    v6 = *(v4 + 40);
    *(v0 + 1448) = v6;

    v7 = sub_26BEBB618(v5, v6);
    if (v8)
    {
      v9 = *(v0 + 1416);
      *(v0 + 1456) = *(*(v3 + 56) + 8 * v7);

      v10 = (*v9 + 368);
      v20 = (*v10 + **v10);
      v11 = (*v10)[1];
      v12 = swift_task_alloc();
      *(v0 + 1464) = v12;
      *v12 = v0;
      v12[1] = sub_26BF064E8;
      v13 = *(v0 + 1416);
      v14 = *MEMORY[0x277D85DE8];
      v15 = v20;

      return v15();
    }
  }

  v16 = *(v0 + 1416);
  sub_26BE773C4();
  swift_allocError();
  *v17 = xmmword_26C01D5C0;
  swift_willThrow();

  sub_26BE2DAF8(v0 + 808);
  v15 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_26BF0645C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1432);
  v2 = *MEMORY[0x277D85DE8];

  return swift_unexpectedError();
}

uint64_t sub_26BF064E8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1464);
  v10 = *v2;
  v3[184] = a1;
  v3[185] = v1;

  if (v1)
  {
    v5 = v3[181];

    v6 = sub_26BF07C44;
  }

  else
  {
    v6 = sub_26BF0663C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF0663C()
{
  v62 = v0;
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1472);
  v59 = *(v1 + 16);
  if (!v59)
  {
LABEL_67:
    v30 = *(v0 + 1456);
    v31 = *(v0 + 1448);
    v32 = *(v0 + 1416);

    sub_26BE773C4();
    swift_allocError();
    *v33 = xmmword_26C01D5D0;
    swift_willThrow();

    sub_26BE2DAF8(v0 + 808);
    v34 = *(v0 + 8);
    v35 = *MEMORY[0x277D85DE8];

    return v34();
  }

  v2 = v0 + 920;
  v3 = v0 + 976;
  v4 = *(v0 + 1456);
  v5 = v1 + 32;
  swift_beginAccess();
  v6 = 0;
  v55 = *(v0 + 1480);
  v56 = (v0 + 976);
  v57 = v1;
  while (1)
  {
    if (v6 >= *(v1 + 16))
    {
      __break(1u);
LABEL_79:
      sub_26BE04890(0, 0xC000000000000000);
      sub_26BE2958C(0, 0xC000000000000000);
      sub_26BE2958C(0, 0xC000000000000000);
      sub_26BE0489C(0, 0xC000000000000000);
      sub_26BE0489C(0, 0xC000000000000000);
      v7 = 0;
      goto LABEL_80;
    }

    sub_26BE2DA9C(v5, v3);
    v7 = *(v0 + 976);
    v1 = *(v0 + 984);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    v10 = v9 & 0x3000000000000000;
    if ((~v1 & 0x3000000000000000) != 0)
    {
      break;
    }

    if (v10 == 0x3000000000000000)
    {
      v36 = *(v0 + 1472);
      sub_26BE04890(*(v0 + 976), *(v0 + 984));
      sub_26BE2958C(v8, v9);
      goto LABEL_71;
    }

LABEL_4:
    sub_26BE04890(*(v0 + 976), *(v0 + 984));
    sub_26BE2958C(v8, v9);
    sub_26BE2DAF8(v3);
    sub_26BE2962C(v7, v1);
    sub_26BE2962C(v8, v9);
LABEL_5:
    ++v6;
    v5 += 56;
    v1 = v57;
    if (v59 == v6)
    {
      v29 = *(v0 + 1472);
      goto LABEL_67;
    }
  }

  if (v10 == 0x3000000000000000)
  {
    goto LABEL_4;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_43;
    }

    sub_26BE04890(*(v0 + 976), *(v0 + 984));
    sub_26BE2958C(v8, v9);
    sub_26BE04890(v7, v1);
    sub_26BE2958C(v8, v9);
    sub_26BE2958C(v7, v1);
    sub_26BE2958C(v8, v9);
    v14 = sub_26BFB0104(v7, v8);
    sub_26BE2962C(v8, v9);
    sub_26BE2962C(v8, v9);
    sub_26BE0489C(v7, v1);
    sub_26BE0489C(v7, v1);
    sub_26BE0489C(v8, v9);
    if ((v14 & 1) == 0)
    {
      goto LABEL_44;
    }

    v48 = *(v0 + 1472);
LABEL_71:

    sub_26BE2962C(v7, v1);
    goto LABEL_72;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v11 = v1 >> 62;
  v12 = v9 >> 62;
  if (v1 >> 62 == 3)
  {
    v13 = 0;
    if (!v7 && v1 == 0xC000000000000000 && v9 >> 62 == 3)
    {
      v13 = 0;
      if (!v8 && v9 == 0xC000000000000000)
      {
        goto LABEL_79;
      }
    }

LABEL_30:
    if (v12 <= 1)
    {
      goto LABEL_31;
    }

LABEL_24:
    if (v12 == 2)
    {
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_82;
      }

LABEL_33:
      if (v13 == v18)
      {
        goto LABEL_39;
      }
    }

    else if (!v13)
    {
      goto LABEL_75;
    }

LABEL_43:
    sub_26BE04890(*(v0 + 976), *(v0 + 984));
    sub_26BE2958C(v8, v9);
    sub_26BE2958C(v7, v1);
    sub_26BE0489C(v7, v1);
    sub_26BE0489C(v8, v9);
LABEL_44:
    sub_26BE2962C(v7, v1);
    v3 = v0 + 976;
    sub_26BE2DAF8(v56);
    goto LABEL_5;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      LODWORD(v13) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_83;
      }

      v13 = v13;
      if (v12 <= 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v13 = BYTE6(v1);
      if (v12 <= 1)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_24;
  }

  if (v11 == 2)
  {
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    v17 = __OFSUB__(v19, v20);
    v13 = v19 - v20;
    if (v17)
    {
      goto LABEL_84;
    }

    goto LABEL_30;
  }

  v13 = 0;
  if (v12 > 1)
  {
    goto LABEL_24;
  }

LABEL_31:
  if (!v12)
  {
    v18 = BYTE6(v9);
    goto LABEL_33;
  }

  if (__OFSUB__(HIDWORD(v8), v8))
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

  if (v13 != HIDWORD(v8) - v8)
  {
    goto LABEL_43;
  }

LABEL_39:
  if (v13 >= 1)
  {
    v54 = v2;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v52 = *(v7 + 24);
        v53 = *(v7 + 16);
        sub_26BE04890(v7, v1);
        sub_26BE2958C(v8, v9);
        sub_26BE04890(v7, v1);
        sub_26BE2958C(v8, v9);
        sub_26BE2958C(v7, v1);
        sub_26BE2958C(v8, v9);
        v22 = sub_26C008E9C();
        if (v22)
        {
          v23 = v22;
          v24 = sub_26C008ECC();
          v25 = v53;
          if (__OFSUB__(v53, v24))
          {
            goto LABEL_87;
          }

          v51 = v53 - v24 + v23;
        }

        else
        {
          v51 = 0;
          v25 = v53;
        }

        if (__OFSUB__(v52, v25))
        {
          goto LABEL_86;
        }

        sub_26C008EBC();
        v21 = v51;
      }

      else
      {
        *(v0 + 165) = 0;
        *(v0 + 159) = 0;
        sub_26BE04890(v7, v1);
        sub_26BE2958C(v8, v9);
        sub_26BE04890(v7, v1);
        sub_26BE2958C(v8, v9);
        sub_26BE2958C(v7, v1);
        sub_26BE2958C(v8, v9);
        v21 = v0 + 159;
      }
    }

    else if (v11)
    {
      if (v7 >> 32 < v7)
      {
        goto LABEL_85;
      }

      sub_26BE04890(v7, v1);
      sub_26BE2958C(v8, v9);
      sub_26BE04890(v7, v1);
      sub_26BE2958C(v8, v9);
      sub_26BE2958C(v7, v1);
      sub_26BE2958C(v8, v9);
      v26 = sub_26C008E9C();
      if (v26)
      {
        v27 = sub_26C008ECC();
        if (__OFSUB__(v7, v27))
        {
          goto LABEL_88;
        }

        v26 += v7 - v27;
      }

      sub_26C008EBC();
      v21 = v26;
    }

    else
    {
      *(v0 + 145) = v7;
      *(v0 + 153) = v1;
      *(v0 + 155) = BYTE2(v1);
      *(v0 + 156) = BYTE3(v1);
      *(v0 + 157) = BYTE4(v1);
      *(v0 + 158) = BYTE5(v1);
      sub_26BE04890(v7, v1);
      sub_26BE2958C(v8, v9);
      sub_26BE04890(v7, v1);
      sub_26BE2958C(v8, v9);
      sub_26BE2958C(v7, v1);
      sub_26BE2958C(v8, v9);
      v21 = v0 + 145;
    }

    result = sub_26BE567B0(v21, v8, v9, &v60);
    if (v55)
    {
      v49 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_26BE2962C(v8, v9);
    sub_26BE2962C(v8, v9);
    sub_26BE0489C(v7, v1);
    sub_26BE0489C(v7, v1);
    sub_26BE0489C(v8, v9);
    if (v60)
    {
      v2 = v54;
      goto LABEL_80;
    }

    v55 = 0;
    v2 = v54;
    goto LABEL_44;
  }

LABEL_75:
  sub_26BE04890(*(v0 + 976), *(v0 + 984));
  sub_26BE2958C(v8, v9);
  sub_26BE2958C(v7, v1);
  sub_26BE0489C(v7, v1);
  sub_26BE0489C(v8, v9);
LABEL_80:
  v50 = *(v0 + 1472);
  sub_26BE2962C(v7, v1);

LABEL_72:
  v37 = *(v0 + 1416);
  v38 = *(v0 + 1384);
  v39 = *(v0 + 992);
  *v2 = *v56;
  *(v2 + 16) = v39;
  *(v2 + 32) = *(v0 + 1008);
  *(v2 + 48) = *(v0 + 1024);
  v40 = v2;
  v41 = *(v38 + 48);
  *(v0 + 173) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2B0, &unk_26C0245D0);
  v42 = swift_allocObject();
  *(v0 + 1488) = v42;
  *(v42 + 16) = xmmword_26C011280;
  sub_26BE2DB68(v40, v42 + 32);
  v43 = (*v37 + 480);
  v58 = (*v43 + **v43);
  v44 = (*v43)[1];
  v45 = swift_task_alloc();
  *(v0 + 1496) = v45;
  *v45 = v0;
  v45[1] = sub_26BF0700C;
  v46 = *(v0 + 1416);
  v47 = *MEMORY[0x277D85DE8];

  return (v58)(v0 + 648, v42, v41 & 1);
}

uint64_t sub_26BF0700C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v11 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v4 = *(v2 + 1488);
    v5 = *(v2 + 1448);

    v6 = sub_26BF07CE8;
  }

  else
  {
    v7 = *(v2 + 1488);

    v6 = sub_26BF07170;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF07170()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 664);
  *(v0 + 728) = *(v0 + 648);
  *(v0 + 744) = v3;
  v4 = *(v0 + 696);
  *(v0 + 760) = *(v0 + 680);
  *(v0 + 776) = v4;
  *(v0 + 792) = *(v0 + 712);
  v5 = *(v0 + 728);
  *(v0 + 1512) = v5;
  v6 = *(v0 + 736);
  *(v0 + 1520) = v6;
  sub_26BE2DA9C(v0 + 808, v0 + 416);
  sub_26BE2DA9C(v0 + 808, v0 + 472);
  *(v0 + 528) = 21;
  *(v0 + 1360) = v5;
  *(v0 + 1368) = v6;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_26BE2DC18(v0 + 416, v0 + 32);
  *(v0 + 1328) = xmmword_26C00DA60;
  sub_26BE00608(v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 1528) = v7;
  *v7 = v0;
  v7[1] = sub_26BF072F0;
  v8 = *(v0 + 1408);
  v9 = *(v0 + 1400);
  v10 = *(v0 + 1392);
  v11 = *MEMORY[0x277D85DE8];

  return sub_26BEFDA68((v0 + 1360), v9, v8, v0 + 16, 0, 0, (v0 + 1328), 0);
}

uint64_t sub_26BF072F0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1528);
  v9 = *v2;
  *(v3 + 1536) = a1;
  *(v3 + 1544) = v1;

  sub_26BE2E258(v3 + 16, &qword_28045FA40, &qword_26C01D898);
  if (v1)
  {
    v5 = sub_26BF07D94;
  }

  else
  {
    v5 = sub_26BF07458;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF07458()
{
  v56 = v0;
  v55[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1536);
  if (!*(v1 + 16))
  {
    __break(1u);
  }

  sub_26BF26CF0(v1 + 32, v0 + 176);

  sub_26BF26CF0(v0 + 176, v0 + 296);
  if (*(v0 + 409) != 3)
  {
    sub_26BF26D4C(v0 + 296);
    goto LABEL_13;
  }

  v2 = *(v0 + 296);
  if (!v2)
  {
LABEL_13:
    v5 = *(v0 + 1520);
    v6 = *(v0 + 1512);
    v7 = *(v0 + 1456);
    v8 = *(v0 + 1416);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_26C00AC1C();
    *(v0 + 1344) = 0;
    *(v0 + 1352) = v55[1];
    MEMORY[0x26D699090](0xD000000000000023, 0x800000026C02C9F0);
    sub_26C00AD4C();
    v9 = *(v0 + 1344);
    v10 = *(v0 + 1352);
    sub_26BE773C4();
    swift_allocError();
    *v11 = v9;
    v11[1] = v10;
LABEL_14:
    swift_willThrow();
    v12 = v6;
    v13 = v5;
LABEL_40:
    sub_26BE00258(v12, v13);

    sub_26BF26EB4(v0 + 728);

    sub_26BF26D4C(v0 + 176);
    sub_26BE2DC9C(v0 + 416);
    sub_26BE2DAF8(v0 + 920);
    sub_26BE2DAF8(v0 + 808);
LABEL_41:
    v36 = *(v0 + 8);
    v37 = *MEMORY[0x277D85DE8];
    goto LABEL_42;
  }

  v51 = *(v0 + 320);
  v52 = *(v0 + 328);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  if (*(v0 + 173))
  {
    v3 = *(v0 + 304);
  }

  else
  {
    v3 = *(v0 + 312);
  }

  if (*(v0 + 173))
  {
    v4 = *(v0 + 312);
  }

  else
  {
    v4 = *(v0 + 304);
  }

  if (*(v4 + 16))
  {
    sub_26BE2DA9C(v4 + 32, v0 + 1144);
  }

  else
  {
    *(v0 + 1192) = 0;
    *(v0 + 1160) = 0u;
    *(v0 + 1176) = 0u;
    *(v0 + 1144) = 0u;
  }

  sub_26BE2DA9C(v0 + 920, v0 + 1200);
  sub_26BE2E1F0(v0 + 1144, v0 + 536, &qword_28045EAA8, &unk_26C014260);
  sub_26BE2E1F0(v0 + 1200, v0 + 592, &qword_28045EAA8, &unk_26C014260);
  if (!*(v0 + 576))
  {

    sub_26BE2E258(v0 + 1200, &qword_28045EAA8, &unk_26C014260);
    sub_26BE2E258(v0 + 1144, &qword_28045EAA8, &unk_26C014260);
    if (!*(v0 + 632))
    {
      sub_26BE2E258(v0 + 536, &qword_28045EAA8, &unk_26C014260);
      goto LABEL_22;
    }

LABEL_32:
    sub_26BE2E258(v0 + 536, &qword_28045EC50, &unk_26C015A70);
    goto LABEL_33;
  }

  sub_26BE2E1F0(v0 + 536, v0 + 1088, &qword_28045EAA8, &unk_26C014260);
  if (!*(v0 + 632))
  {

    sub_26BE2E258(v0 + 1200, &qword_28045EAA8, &unk_26C014260);
    sub_26BE2E258(v0 + 1144, &qword_28045EAA8, &unk_26C014260);
    sub_26BE2DAF8(v0 + 1088);
    goto LABEL_32;
  }

  v14 = *(v0 + 608);
  *(v0 + 1032) = *(v0 + 592);
  *(v0 + 1048) = v14;
  *(v0 + 1064) = *(v0 + 624);
  *(v0 + 1080) = *(v0 + 640);

  v15 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0((v0 + 1088), (v0 + 1032));
  sub_26BE2DAF8(v0 + 1032);
  sub_26BE2E258(v0 + 1200, &qword_28045EAA8, &unk_26C014260);
  sub_26BE2E258(v0 + 1144, &qword_28045EAA8, &unk_26C014260);
  sub_26BE2DAF8(v0 + 1088);
  sub_26BE2E258(v0 + 536, &qword_28045EAA8, &unk_26C014260);
  if ((v15 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (*(v4 + 16) != 1)
  {
LABEL_33:
    v50 = *(v0 + 1520);
    v26 = *(v0 + 1512);
    v27 = *(v0 + 173);
    v28 = *(v0 + 1456);
    v29 = *(v0 + 1416);
    sub_26BF26F5C(v2);

    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_26C00AC1C();
    MEMORY[0x26D699090](0x6465746365707845, 0xED00002065687420);
    if (v27)
    {
      v30 = 0x6552726576726573;
    }

    else
    {
      v30 = 0x6465766F6D6572;
    }

    if (v27)
    {
      v31 = 0xED00006465766F6DLL;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    MEMORY[0x26D699090](v30, v31);

    MEMORY[0x26D699090](0xD000000000000052, 0x800000026C02CA20);
    v32 = *(v4 + 16);

    *(v0 + 1376) = v32;
    v33 = sub_26C00AEFC();
    MEMORY[0x26D699090](v33);

    MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02CA80);
    v34 = v55[1];
    sub_26BE773C4();
    swift_allocError();
    *v35 = v55[0];
    v35[1] = v34;
    swift_willThrow();
    v12 = v26;
    v13 = v50;
    goto LABEL_40;
  }

  v16 = *(v3 + 16);

  if (v16)
  {
    v17 = *(v0 + 1520);
    v18 = *(v0 + 1512);
    v19 = *(v0 + 173);
    v20 = *(v0 + 1456);
    v21 = *(v0 + 1416);
    sub_26BF26F5C(v2);
    sub_26C00AC1C();

    strcpy(v55, "Expected the ");
    HIWORD(v55[1]) = -4864;
    if (v19)
    {
      v22 = 0x6465766F6D6572;
    }

    else
    {
      v22 = 0x6552726576726573;
    }

    if (v19)
    {
      v23 = 0xE700000000000000;
    }

    else
    {
      v23 = 0xED00006465766F6DLL;
    }

    MEMORY[0x26D699090](v22, v23);

    MEMORY[0x26D699090](0xD000000000000021, 0x800000026C02CAA0);
    v24 = v55[1];
    sub_26BE773C4();
    swift_allocError();
    *v25 = v55[0];
    v25[1] = v24;
    swift_willThrow();
    v12 = v18;
    v13 = v17;
    goto LABEL_40;
  }

  sub_26BF26F5C(v39);
  v40 = *(v2 + 16);

  if (v40)
  {
    v5 = *(v0 + 1520);
    v6 = *(v0 + 1512);
    v41 = *(v0 + 1456);
    v42 = *(v0 + 1416);
    sub_26BE773C4();
    swift_allocError();
    *v43 = 0xD000000000000033;
    v43[1] = 0x800000026C02CAD0;
    goto LABEL_14;
  }

  v44 = *(v0 + 1544);
  v45 = *(v0 + 1392);
  sub_26BF05BF0(*(v0 + 1440), *(v0 + 1448), *(v0 + 1400), *(v0 + 1408));
  v46 = v44;
  v47 = *(v0 + 1456);
  v48 = *(v0 + 1416);
  sub_26BE00258(*(v0 + 1512), *(v0 + 1520));

  sub_26BF26EB4(v0 + 728);

  sub_26BF26D4C(v0 + 176);
  sub_26BE2DC9C(v0 + 416);
  sub_26BE2DAF8(v0 + 920);
  sub_26BE2DAF8(v0 + 808);
  if (v46)
  {
    goto LABEL_41;
  }

  v36 = *(v0 + 8);
  v49 = *MEMORY[0x277D85DE8];
LABEL_42:

  return v36();
}

uint64_t sub_26BF07C44()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[182];
  v2 = v0[177];

  sub_26BE2DAF8((v0 + 101));
  v3 = v0[185];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26BF07CE8()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[182];
  v2 = v0[177];

  sub_26BE2DAF8((v0 + 115));
  sub_26BE2DAF8((v0 + 101));
  v3 = v0[188];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26BF07D94()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[190];
  v2 = v0[189];
  v3 = v0[182];
  v4 = v0[177];

  sub_26BF26EB4((v0 + 91));

  sub_26BE2DC9C((v0 + 52));
  sub_26BE2DAF8((v0 + 115));
  sub_26BE2DAF8((v0 + 101));
  sub_26BE00258(v2, v1);
  v5 = v0[193];
  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_26BF07E6C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26BF07E90, 0, 0);
}

uint64_t sub_26BF07E90()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (!*(v2 + 16))
  {
    goto LABEL_13;
  }

  v4 = v0[10];
  v3 = v0[11];

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_13:
    sub_26BE773C4();
    swift_allocError();
    *v32 = xmmword_26C01D5E0;
    swift_willThrow();
    goto LABEL_14;
  }

  v7 = v0[12];
  v8 = *(*(v2 + 56) + 8 * v5);
  v0[13] = v8;

  v9 = *(v8 + 16);
  v0[14] = v9;
  result = swift_beginAccess();
  if (v9)
  {
    v0[15] = 0;
    v11 = v0[13];
    if (v11[2])
    {
      v12 = v0[12];
      v14 = v11[4];
      v13 = v11[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_26C011280;
      v0[8] = 0x2720746E65696C43;
      v0[9] = 0xE800000000000000;

      MEMORY[0x26D699090](v14, v13);
      MEMORY[0x26D699090](14887, 0xE200000000000000);
      v16 = v0[8];
      v17 = v0[9];
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      sub_26C00B03C();

      v18 = *(v12 + 48);
      if (*(v18 + 16))
      {
        v19 = *(v12 + 48);

        result = sub_26BEBB618(v14, v13);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * result);
          if (*(v21 + 16))
          {
            v23 = v0[10];
            v22 = v0[11];
            v24 = *(*(v18 + 56) + 8 * result);

            v25 = sub_26BEBB618(v23, v22);
            LOBYTE(v23) = v26;

            if (v23)
            {
              v27 = v0[11];
              v28 = *(*(v21 + 56) + 8 * v25);
              v0[16] = v28;

              v29 = swift_task_alloc();
              v0[17] = v29;
              *v29 = v0;
              v29[1] = sub_26BF08198;
              v30 = v0[12];
              v31 = v0[10];

              return sub_26BF08528(v28, v31, v27);
            }

LABEL_22:
            __break(1u);
            return result;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v34 = v0[13];

LABEL_14:
  v33 = v0[1];

  return v33();
}

uint64_t sub_26BF08198()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26BF08294, 0, 0);
}

uint64_t sub_26BF08294()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15] + 1;
  sub_26C00B03C();

  if (v3 == v2)
  {
    v5 = v0[13];

    v6 = v0[1];

    return v6();
  }

  v7 = v0[15] + 1;
  v0[15] = v7;
  v8 = v0[13];
  if (v7 >= *(v8 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v0[12];
  v10 = v8 + 16 * v7;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C011280;
  v0[8] = 0x2720746E65696C43;
  v0[9] = 0xE800000000000000;

  MEMORY[0x26D699090](v12, v11);
  MEMORY[0x26D699090](14887, 0xE200000000000000);
  v14 = v0[8];
  v15 = v0[9];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_26C00B03C();

  v16 = *(v9 + 48);
  if (!*(v16 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v9 + 48);

  result = sub_26BEBB618(v12, v11);
  if ((v18 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = *(*(v16 + 56) + 8 * result);
  if (!*(v19 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v0[10];
  v20 = v0[11];
  v22 = *(*(v16 + 56) + 8 * result);

  v23 = sub_26BEBB618(v21, v20);
  LOBYTE(v21) = v24;

  if ((v21 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v25 = v0[11];
  v26 = *(*(v19 + 56) + 8 * v23);
  v0[16] = v26;

  v27 = swift_task_alloc();
  v0[17] = v27;
  *v27 = v0;
  v27[1] = sub_26BF08198;
  v28 = v0[12];
  v29 = v0[10];

  return sub_26BF08528(v26, v29, v25);
}

uint64_t sub_26BF08528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF085C8, 0, 0);
}

uint64_t sub_26BF085C8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C011280;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v2 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x26D699090](v2, v5);

  MEMORY[0x26D699090](58, 0xE100000000000000);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0x2070756F7247;
  *(v4 + 40) = 0xE600000000000000;
  sub_26C00B03C();

  v6 = swift_allocObject();
  v0[25] = v6;
  *(v6 + 16) = xmmword_26C011280;
  sub_26C00AC1C();

  v0[8] = 0xD000000000000011;
  v0[9] = 0x800000026C02C8E0;
  v11 = (*v3 + 368);
  v12 = (*v11 + **v11);
  v7 = (*v11)[1];
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_26BF08824;
  v9 = v0[19];

  return v12();
}

uint64_t sub_26BF08824(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_26BF08B7C;
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = sub_26BF08950;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF08950()
{
  v1 = *(v0[27] + 16);

  v0[16] = v1;
  v2 = v0[25];
  v3 = v0[22];
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  v5 = v0[8];
  v6 = v0[9];
  v2[7] = MEMORY[0x277D837D0];
  v2[4] = v5;
  v2[5] = v6;
  sub_26C00B03C();

  LODWORD(v1) = *(v3 + 64);
  v7 = v0[24];
  v8 = swift_allocObject();
  if (v1 == 1)
  {
    v0[28] = v8;
    *(v8 + 16) = xmmword_26C011280;
    v0[14] = 0x203A6172652020;
    v0[15] = 0xE700000000000000;
    v14 = sub_26BEAF004;
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_26BF08DA0;
    v10 = v0[19];
    v11 = &unk_26C00EE48;
  }

  else
  {
    v0[31] = v8;
    *(v8 + 16) = xmmword_26C011280;
    v0[10] = 0x4968636F70652020;
    v0[11] = 0xEB00000000203A44;
    v14 = sub_26BEAE7D0;
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_26BF09054;
    v10 = v0[19];
    v11 = &unk_26C00ED10;
  }

  return (v14)(v10, v11);
}

uint64_t sub_26BF08B7C()
{
  v0[16] = -1;
  v1 = v0[25];
  v2 = v0[22];
  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  v4 = v0[8];
  v5 = v0[9];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v4;
  v1[5] = v5;
  sub_26C00B03C();

  v6 = *(v2 + 64);
  v7 = v0[24];
  v8 = swift_allocObject();
  if (v6 == 1)
  {
    v0[28] = v8;
    *(v8 + 16) = xmmword_26C011280;
    v0[14] = 0x203A6172652020;
    v0[15] = 0xE700000000000000;
    v14 = sub_26BEAF004;
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_26BF08DA0;
    v10 = v0[19];
    v11 = &unk_26C00EE48;
  }

  else
  {
    v0[31] = v8;
    *(v8 + 16) = xmmword_26C011280;
    v0[10] = 0x4968636F70652020;
    v0[11] = 0xEB00000000203A44;
    v14 = sub_26BEAE7D0;
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_26BF09054;
    v10 = v0[19];
    v11 = &unk_26C00ED10;
  }

  return (v14)(v10, v11);
}

uint64_t sub_26BF08DA0(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_26BF09038;
  }

  else
  {
    *(v4 + 308) = a1;
    v7 = sub_26BF08EC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF08EC8()
{
  v1 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 308);
  v2 = sub_26C00AEFC();
  MEMORY[0x26D699090](v2);

  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v3;
  v1[5] = v4;
  sub_26C00B03C();

  v5 = *(v0 + 192);
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  *(v6 + 16) = xmmword_26C011280;
  *(v0 + 80) = 0x4968636F70652020;
  *(v0 + 88) = 0xEB00000000203A44;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_26BF09054;
  v8 = *(v0 + 152);

  return sub_26BEAE7D0(v8, &unk_26C00ED10, v8);
}

uint64_t sub_26BF09054(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v7 = sub_26BF09798;
  }

  else
  {
    *(v4 + 272) = a1;
    v7 = sub_26BF0917C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF0917C()
{
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[19];
  v0[17] = v0[34];
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  v5 = v0[10];
  v6 = v0[11];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v5;
  v1[5] = v6;
  sub_26C00B03C();

  v7 = swift_allocObject();
  v0[35] = v7;
  *(v7 + 16) = xmmword_26C011280;
  sub_26C00AC1C();

  v0[12] = 0xD000000000000016;
  v0[13] = 0x800000026C02C900;
  v12 = (*v3 + 264);
  v13 = (*v12 + **v12);
  v8 = (*v12)[1];
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_26BF09380;
  v10 = v0[19];

  return v13();
}

uint64_t sub_26BF09380(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[36];
  v7 = *v2;
  v4[37] = a2;

  return MEMORY[0x2822009F8](sub_26BF09488, 0, 0);
}

void sub_26BF09488()
{
  v1 = v0[37];
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[6];
    v3 = v0[35];
    v4 = v0[33];
    v24 = v0[19];
    v0[18] = sub_26BF87240(v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v5 = sub_26C00A3EC();
    v7 = v6;
    sub_26BE132D4(v2, v1);

    MEMORY[0x26D699090](v5, v7);

    v8 = v0[12];
    v9 = v0[13];
    v10 = MEMORY[0x277D837D0];
    v3[7] = MEMORY[0x277D837D0];
    v3[4] = v8;
    v3[5] = v9;
    sub_26C00B03C();

    type metadata accessor for MLS.Group.PureSwiftGroup();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v14 = v0[23];
      v13 = v0[24];
      v15 = v0[19];
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26C011280;

      sub_26C00AC1C();

      v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
      swift_beginAccess();
      sub_26BE2E1F0(v12 + v17, v14, &qword_28045FA38, &qword_26C01D890);
      v18 = type metadata accessor for FileInfoAndSender();
      v19 = (*(*(v18 - 8) + 48))(v14, 1, v18);
      sub_26BE2E258(v14, &qword_28045FA38, &qword_26C01D890);
      if (v19 == 1)
      {
        v20 = 0x65736C6166;
      }

      else
      {
        v20 = 1702195828;
      }

      if (v19 == 1)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      MEMORY[0x26D699090](v20, v21);

      *(v16 + 56) = v10;
      *(v16 + 32) = 0xD000000000000013;
      *(v16 + 40) = 0x800000026C02C920;
      sub_26C00B03C();
    }

    v22 = v0[23];

    v23 = v0[1];

    v23();
  }
}

uint64_t sub_26BF097B4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[81] = v1;
  v2[80] = a1;
  v3 = sub_26C00A4EC();
  v2[82] = v3;
  v4 = *(v3 - 8);
  v2[83] = v4;
  v5 = *(v4 + 64) + 15;
  v2[84] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF098A4, 0, 0);
}

uint64_t sub_26BF098A4()
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = v0[81];
  v2 = v0[80];
  v3 = *v2;
  v0[85] = *v2;
  v4 = v2[1];
  v0[86] = v4;
  v5 = v2[2];
  v0[87] = v5;
  v6 = v2[3];
  v0[88] = v6;
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (*(v7 + 16))
  {

    v8 = sub_26BEBB618(v3, v4);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (*(v10 + 16))
      {
        v11 = sub_26BEBB618(v5, v6);
        if (v12)
        {
          v13 = v0[84];
          v14 = v0[83];
          v15 = v0[82];
          v16 = v0[80];
          v17 = *(*(v10 + 56) + 8 * v11);
          v0[89] = v17;

          v18 = *(v16 + 32);
          v19 = *(v16 + 40);
          sub_26C00A4CC();
          v20 = sub_26C00A49C();
          v22 = v21;
          v0[90] = v20;
          v0[91] = v21;
          result = (*(v14 + 8))(v13, v15);
          if (v22 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {
            v31 = (*(*v17 + 504) + **(*v17 + 504));
            v24 = *(*(*v17 + 504) + 4);
            v25 = swift_task_alloc();
            v0[92] = v25;
            *v25 = v0;
            v25[1] = sub_26BF09BC0;
            v26 = *MEMORY[0x277D85DE8];

            return v31(v0 + 75, v20, v22);
          }

          return result;
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v27 = xmmword_26C01D5C0;
  swift_willThrow();
  v28 = v0[84];

  v29 = v0[1];
  v30 = *MEMORY[0x277D85DE8];

  return v29();
}

uint64_t sub_26BF09BC0()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_26BF0ACA0;
  }

  else
  {
    v3 = sub_26BF09D00;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF09D00()
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 648);
  v5 = *(v0 + 600);
  *(v0 + 752) = v5;
  v6 = *(v0 + 608);
  *(v0 + 760) = v6;
  swift_beginAccess();
  v7 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 48);
  v51 = v9;
  *(v4 + 48) = 0x8000000000000000;
  v11 = sub_26BEBB618(v3, v2);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v3) = v10;
  if (*(v9 + 24) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_23;
    }

    if ((v10 & 1) == 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v50 = v14;
      sub_26BE6F278();
      v14 = v50;
      if ((v3 & 1) == 0)
      {
LABEL_26:
        __break(1u);
      }

      goto LABEL_16;
    }

LABEL_8:
    while (1)
    {
      v3 = *(v0 + 704);
      v18 = *(v0 + 696);
      v1 = v51;
      v19 = *(*(v51 + 56) + 8 * v11);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v19;
      v14 = sub_26BEBB618(v18, v3);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (!v24)
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      v14 = sub_26BE6F250();
      if ((v3 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    LOBYTE(v3) = v21;
    if (*(v19 + 24) >= v25)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = *(v0 + 704);
      v27 = *(v0 + 696);
      sub_26BE6C208(v25, v20);
      v14 = sub_26BEBB618(v27, v26);
      if ((v3 & 1) != (v28 & 1))
      {
        goto LABEL_11;
      }
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    v31 = *(v0 + 712);
    v32 = *(v0 + 648);
    v33 = *(*(v52 + 56) + 8 * v14);
    v34 = v14;

    *(*(v52 + 56) + 8 * v34) = v31;
    *(*(v1 + 56) + 8 * v11) = v52;
    *(v32 + 48) = v1;
    swift_endAccess();
    swift_beginAccess();
    if (*(v32 + 32))
    {
      v35 = *(v0 + 744);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_26C011280;
      sub_26C00AC1C();

      sub_26BE00608(v5, v6);
      *(v0 + 632) = sub_26BF87240(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
      v37 = sub_26C00A3EC();
      v39 = v38;
      sub_26BE00258(v5, v6);

      MEMORY[0x26D699090](v37, v39);

      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 32) = 0xD00000000000001DLL;
      *(v36 + 40) = 0x800000026C02CB10;
      sub_26C00B03C();
    }

    v40 = *(v0 + 640);
    *(v0 + 616) = v5;
    *(v0 + 624) = v6;
    v42 = *(v40 + 48);
    v41 = *(v40 + 56);
    v43 = swift_task_alloc();
    *(v0 + 768) = v43;
    *v43 = v0;
    v43[1] = sub_26BF0A19C;
    v44 = *(v0 + 704);
    v45 = *(v0 + 696);
    v46 = *(v0 + 688);
    v47 = *(v0 + 680);
    v48 = *(v0 + 648);
    v49 = *MEMORY[0x277D85DE8];

    return sub_26BF00564((v0 + 616), v45, v44, v47, v46, v42, v41);
  }

  v15 = *(v0 + 688);
  v16 = *(v0 + 680);
  sub_26BE6C1E0(v14, isUniquelyReferenced_nonNull_native);
  v14 = sub_26BEBB618(v16, v15);
  if ((v3 & 1) == (v17 & 1))
  {
    v11 = v14;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];

  return sub_26C00AF8C();
}

uint64_t sub_26BF0A19C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 768);
  v9 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {
    v5 = sub_26BF0AD54;
  }

  else
  {
    v5 = sub_26BF0A2E0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0A2E0()
{
  v119 = v0;
  v118 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 776);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 728);
    v5 = *(v0 + 720);
    v6 = v1 + 32;
    v8 = v4 != 0xC000000000000000 || v5 != 0;
    v9 = v4 >> 62;
    v115 = BYTE6(v4);
    v116 = *(v0 + 784);
    v113 = *(v0 + 720);
    v114 = v4 >> 62;
    v10 = __OFSUB__(HIDWORD(v5), v5);
    v112 = v10;
    v110 = *(v1 + 16);
    v111 = HIDWORD(v5) - v5;
    v109 = v8;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
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
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
      }

      sub_26BF26CF0(v6, v0 + 16);
      sub_26BF26CF0(v0 + 16, v0 + 144);
      if (!*(v0 + 257))
      {
        v22 = *(v0 + 200);
        v21 = *(v0 + 208);
        sub_26BE2E258(v0 + 144, &qword_28045E698, &unk_26C0204F0);
        v23 = v21 >> 62;
        if (v21 >> 62 == 3)
        {
          if (v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = v21 == 0xC000000000000000;
          }

          v26 = !v24 || v9 < 3;
          if (((v26 | v8) & 1) == 0)
          {
            v27 = 0;
            v28 = 0xC000000000000000;
            goto LABEL_90;
          }

LABEL_77:
          v30 = 0;
          if (v9 > 1)
          {
            goto LABEL_78;
          }

LABEL_74:
          v50 = v115;
          if (v9)
          {
            v50 = v111;
            if (v112)
            {
              goto LABEL_141;
            }
          }

LABEL_80:
          if (v30 != v50)
          {
            goto LABEL_129;
          }

          if (v30 >= 1)
          {
            if (v23 > 1)
            {
              if (v23 == 2)
              {
                v108 = v1;
                v56 = *(v22 + 16);
                v57 = *(v22 + 24);
                v58 = sub_26C008E9C();
                if (v58)
                {
                  v59 = sub_26C008ECC();
                  if (__OFSUB__(v56, v59))
                  {
                    goto LABEL_151;
                  }

                  v58 += v56 - v59;
                }

                if (__OFSUB__(v57, v56))
                {
                  goto LABEL_150;
                }

                v60 = *(v0 + 728);
                v61 = *(v0 + 720);
                sub_26C008EBC();
                v62 = v58;
                v63 = v61;
                v64 = v60;
                goto LABEL_117;
              }

              v53 = *(v0 + 728);
              v54 = *(v0 + 720);
              v55 = v0 + 513;
              *(v0 + 513) = 0;
              *(v0 + 519) = 0;
LABEL_120:
              result = sub_26BE567B0(v55, v54, v53, v117);
              if (v116)
              {
                goto LABEL_135;
              }

              v74 = v117[0];
            }

            else
            {
              if (!v23)
              {
                v53 = *(v0 + 728);
                v54 = *(v0 + 720);
                *(v0 + 386) = v22;
                *(v0 + 394) = v21;
                *(v0 + 396) = BYTE2(v21);
                *(v0 + 397) = BYTE3(v21);
                *(v0 + 398) = BYTE4(v21);
                v55 = v0 + 386;
                *(v0 + 399) = BYTE5(v21);
                goto LABEL_120;
              }

              v108 = v1;
              if (v22 >> 32 < v22)
              {
                goto LABEL_149;
              }

              v70 = sub_26C008E9C();
              if (v70)
              {
                v71 = sub_26C008ECC();
                if (__OFSUB__(v22, v71))
                {
                  goto LABEL_152;
                }

                v70 += v22 - v71;
              }

              v72 = *(v0 + 728);
              v73 = *(v0 + 720);
              sub_26C008EBC();
              v62 = v70;
              v63 = v73;
              v64 = v72;
LABEL_117:
              result = sub_26BE567B0(v62, v63, v64, v117);
              if (v116)
              {
                goto LABEL_135;
              }

              v74 = v117[0];
              v1 = v108;
              v2 = v110;
              v8 = v109;
            }

            v9 = v114;
            if (!v74)
            {
LABEL_129:
              v98 = *(v0 + 776);
              v99 = *(v0 + 760);
              v100 = *(v0 + 752);
              v101 = *(v0 + 728);
              v102 = *(v0 + 720);
              v103 = *(v0 + 712);

              sub_26BE773C4();
              swift_allocError();
              *v104 = xmmword_26C01D5F0;
              swift_willThrow();
              sub_26BE132D4(v102, v101);
              sub_26BE00258(v22, v21);
              sub_26BE00258(v100, v99);
              goto LABEL_130;
            }

            sub_26BE00258(v22, v21);
            v116 = 0;
LABEL_124:
            sub_26BF26D4C(v0 + 16);
            goto LABEL_14;
          }
        }

        else
        {
          if (v23 <= 1)
          {
            if (v23)
            {
              LODWORD(v30) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                goto LABEL_145;
              }

              v30 = v30;
              if (v9 > 1)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v30 = BYTE6(v21);
              if (v9 > 1)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_74;
          }

          if (v23 != 2)
          {
            goto LABEL_77;
          }

          v49 = *(v22 + 16);
          v48 = *(v22 + 24);
          v33 = __OFSUB__(v48, v49);
          v30 = v48 - v49;
          if (v33)
          {
            goto LABEL_146;
          }

          if (v9 <= 1)
          {
            goto LABEL_74;
          }

LABEL_78:
          if (v9 == 2)
          {
            v52 = *(v113 + 16);
            v51 = *(v113 + 24);
            v33 = __OFSUB__(v51, v52);
            v50 = v51 - v52;
            if (v33)
            {
              goto LABEL_142;
            }

            goto LABEL_80;
          }

          if (v30)
          {
            goto LABEL_129;
          }
        }

        v27 = v22;
        v28 = v21;
LABEL_90:
        sub_26BE00258(v27, v28);
        goto LABEL_124;
      }

      sub_26BF26D4C(v0 + 144);
      sub_26BF26CF0(v0 + 16, v0 + 272);
      if (*(v0 + 385) != 1)
      {
        v91 = *(v0 + 776);
        v92 = *(v0 + 760);
        v93 = *(v0 + 752);
        v94 = *(v0 + 728);
        v95 = *(v0 + 720);
        v96 = *(v0 + 712);

        sub_26BF26D4C(v0 + 272);
        sub_26BE773C4();
        swift_allocError();
        *v97 = xmmword_26C01D5F0;
        swift_willThrow();
        sub_26BE132D4(v95, v94);
        sub_26BE00258(v93, v92);
LABEL_130:

        sub_26BF26D4C(v0 + 16);
        goto LABEL_131;
      }

      *(v0 + 512) = *(v0 + 384);
      v11 = *(v0 + 368);
      *(v0 + 480) = *(v0 + 352);
      *(v0 + 496) = v11;
      v12 = *(v0 + 336);
      v13 = *(v0 + 288);
      *(v0 + 400) = *(v0 + 272);
      *(v0 + 416) = v13;
      v14 = *(v0 + 304);
      *(v0 + 448) = *(v0 + 320);
      *(v0 + 464) = v12;
      *(v0 + 432) = v14;
      v15 = *(v0 + 456);
      v16 = *(v0 + 464);
      v17 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_56;
        }

        v32 = *(v15 + 16);
        v31 = *(v15 + 24);
        v33 = __OFSUB__(v31, v32);
        v29 = v31 - v32;
        if (v33)
        {
          goto LABEL_139;
        }

        if (v9 <= 1)
        {
          goto LABEL_53;
        }
      }

      else if (v17)
      {
        LODWORD(v29) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_140;
        }

        v29 = v29;
        if (v9 <= 1)
        {
LABEL_53:
          v34 = v115;
          if (v9)
          {
            v34 = v111;
            if (v112)
            {
              goto LABEL_138;
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        v29 = BYTE6(v16);
        if (v9 <= 1)
        {
          goto LABEL_53;
        }
      }

LABEL_57:
      if (v9 != 2)
      {
        if (v29)
        {
          goto LABEL_127;
        }

        goto LABEL_13;
      }

      v36 = *(v113 + 16);
      v35 = *(v113 + 24);
      v33 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v33)
      {
        goto LABEL_137;
      }

LABEL_59:
      if (v29 != v34)
      {
        goto LABEL_127;
      }

      if (v29 < 1)
      {
        goto LABEL_13;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          v37 = *(v0 + 728);
          v38 = *(v0 + 720);
          v39 = v0 + 258;
          *(v0 + 258) = 0;
          *(v0 + 264) = 0;
LABEL_106:
          result = sub_26BE567B0(v39, v38, v37, v117);
          if (v116)
          {
            goto LABEL_135;
          }

          v9 = v114;
          if (!v117[0])
          {
LABEL_127:
            v84 = *(v0 + 776);
            v85 = *(v0 + 760);
            v86 = *(v0 + 752);
            v87 = *(v0 + 728);
            v88 = *(v0 + 720);
            v89 = *(v0 + 712);

            sub_26BE773C4();
            swift_allocError();
            *v90 = xmmword_26C01D5F0;
            swift_willThrow();
            sub_26BE132D4(v88, v87);
            sub_26BE00258(v86, v85);

            sub_26BF26D4C(v0 + 16);
            sub_26BF26FBC(v0 + 400);
LABEL_131:
            v105 = *(v0 + 672);

            v82 = *(v0 + 8);
            v106 = *MEMORY[0x277D85DE8];
            goto LABEL_132;
          }

          goto LABEL_108;
        }

        v40 = *(v15 + 16);
        v41 = *(v15 + 24);
        v42 = sub_26C008E9C();
        if (v42)
        {
          v43 = sub_26C008ECC();
          if (__OFSUB__(v40, v43))
          {
            goto LABEL_147;
          }

          v42 += v40 - v43;
        }

        if (__OFSUB__(v41, v40))
        {
          goto LABEL_144;
        }

        v44 = *(v0 + 728);
        v45 = *(v0 + 720);
        sub_26C008EBC();
        result = sub_26BE567B0(v42, v45, v44, v117);
        if (v116)
        {
          goto LABEL_135;
        }

        v47 = v117[0];
      }

      else
      {
        if (!v17)
        {
          v37 = *(v0 + 728);
          v38 = *(v0 + 720);
          *(v0 + 130) = v15;
          *(v0 + 138) = v16;
          *(v0 + 140) = BYTE2(v16);
          *(v0 + 141) = BYTE3(v16);
          *(v0 + 142) = BYTE4(v16);
          v39 = v0 + 130;
          *(v0 + 143) = BYTE5(v16);
          goto LABEL_106;
        }

        v65 = v15;
        if (v15 >> 32 < v15)
        {
          goto LABEL_143;
        }

        v66 = sub_26C008E9C();
        if (v66)
        {
          v67 = sub_26C008ECC();
          if (__OFSUB__(v65, v67))
          {
            goto LABEL_148;
          }

          v66 += v65 - v67;
        }

        v68 = *(v0 + 728);
        v69 = *(v0 + 720);
        sub_26C008EBC();
        result = sub_26BE567B0(v66, v69, v68, v117);
        if (v116)
        {
LABEL_135:
          v107 = *MEMORY[0x277D85DE8];
          return result;
        }

        v47 = v117[0];
      }

      v2 = v110;
      v8 = v109;
      v9 = v114;
      if (!v47)
      {
        goto LABEL_127;
      }

LABEL_108:
      v116 = 0;
LABEL_13:
      sub_26BF26D4C(v0 + 16);
      sub_26BF26FBC(v0 + 400);
LABEL_14:
      ++v3;
      v6 += 120;
      if (v2 == v3)
      {
        v75 = *(v0 + 776);
        goto LABEL_126;
      }
    }

    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16 == 0xC000000000000000;
    }

    v20 = !v18 || v9 < 3;
    if (((v20 | v8) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_56:
    v29 = 0;
    if (v9 <= 1)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

LABEL_126:
  v76 = *(v0 + 760);
  v77 = *(v0 + 752);
  v78 = *(v0 + 728);
  v79 = *(v0 + 720);
  v80 = *(v0 + 712);
  v81 = *(v0 + 672);

  sub_26BE132D4(v79, v78);
  sub_26BE00258(v77, v76);

  v82 = *(v0 + 8);
  v83 = *MEMORY[0x277D85DE8];
LABEL_132:

  return v82();
}

uint64_t sub_26BF0ACA0()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];

  sub_26BE132D4(v2, v1);
  v4 = v0[93];
  v5 = v0[84];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_26BF0AD54()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];

  sub_26BE132D4(v4, v3);
  sub_26BE00258(v2, v1);
  v6 = v0[98];
  v7 = v0[84];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_26BF0AE24(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 520) = v3;
  *(v4 + 371) = a3;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  *(v4 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0AEC8, 0, 0);
}

uint64_t sub_26BF0AEC8()
{
  v1 = v0[65];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (*(v2 + 16))
  {
    v4 = v0[63];
    v3 = v0[64];

    v5 = sub_26BEBB618(v4, v3);
    if (v6)
    {
      v7 = v0[65];
      v0[67] = *(*(v2 + 56) + 8 * v5);

      v0[68] = *(v7 + 72);
      v9 = *(v7 + 80);
      v0[69] = v9;
      if (v9)
      {
        v10 = v0[65];
        if (*(v10 + 65))
        {
          swift_beginAccess();
          if (*(v10 + 32) == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_26C011280;
            *(v11 + 56) = MEMORY[0x277D837D0];
            *(v11 + 32) = 0xD00000000000003BLL;
            *(v11 + 40) = 0x800000026C02CC00;

            sub_26C00B03C();
          }

          else
          {
          }

          v31 = swift_task_alloc();
          v0[70] = v31;
          *v31 = v0;
          v31[1] = sub_26BF0B280;
          v32 = v0[65];

          return sub_26BF820B8();
        }
      }

      v15 = v0[67];
      v16 = v15[2];
      v0[76] = v16;
      if (v16)
      {
        v17 = v0[65];
        v18 = v15[4];
        v19 = v15[5];
        result = swift_beginAccess();
        v20 = *(v17 + 48);
        if (*(v20 + 16))
        {

          v21 = sub_26BEBB618(v18, v19);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(v20 + 56) + 8 * v21);
            if (*(v24 + 16))
            {
              v26 = v0[63];
              v25 = v0[64];

              v27 = sub_26BEBB618(v26, v25);
              LOBYTE(v26) = v28;

              if (v26)
              {
                v29 = *(*(v24 + 56) + 8 * v27);
                v0[77] = v29;

                v30 = swift_task_alloc();
                v0[78] = v30;
                *v30 = v0;
                v30[1] = sub_26BF0B848;

                return sub_26BEAE7D0(v29, &unk_26C01D8C8, v29);
              }

LABEL_27:
              __break(1u);
              return result;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v12 = xmmword_26C01D5E0;
  swift_willThrow();
  v13 = v0[66];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BF0B280(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 560);
  v8 = *v3;
  v4[71] = a1;
  v4[72] = a2;
  v4[73] = v2;

  if (v2)
  {
    v6 = sub_26BF0D4F0;
  }

  else
  {
    v6 = sub_26BF0B39C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF0B39C()
{
  v1 = v0[73];
  v2 = v0[65];
  sub_26BF0DAD4(v0[68], v0[69], 0, 0, v0 + 2);
  if (v1)
  {
    v3 = v0[69];
    v4 = v0[67];
    sub_26BE00258(v0[71], v0[72]);

    v5 = v0[66];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[69];

    v9 = swift_task_alloc();
    v0[74] = v9;
    *v9 = v0;
    v9[1] = sub_26BF0B4D4;
    v10 = v0[72];
    v11 = v0[71];
    v12 = v0[65];

    return sub_26BF832D8((v0 + 2), v11, v10);
  }
}

uint64_t sub_26BF0B4D4()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v7 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);

    v5 = sub_26BF0D568;
  }

  else
  {
    v5 = sub_26BF0B5F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0B5F0()
{
  v1 = v0[72];
  v2 = v0[71];
  if (*(v0[65] + 32) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C011280;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000002BLL;
    *(v3 + 40) = 0x800000026C02CBD0;
    sub_26C00B03C();

    sub_26BE00258(v2, v1);
    result = sub_26BE29710((v0 + 2));
  }

  else
  {
    sub_26BE29710((v0 + 2));
    result = sub_26BE00258(v2, v1);
  }

  v5 = v0[67];
  v6 = v5[2];
  v0[76] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v0[65];
  v8 = v5[4];
  v9 = v5[5];
  result = swift_beginAccess();
  v10 = *(v7 + 48);
  if (!*(v10 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = sub_26BEBB618(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v11);
  if (!*(v14 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v0[63];
  v15 = v0[64];

  v17 = sub_26BEBB618(v16, v15);
  LOBYTE(v16) = v18;

  if ((v16 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v19 = *(*(v14 + 56) + 8 * v17);
  v0[77] = v19;

  v20 = swift_task_alloc();
  v0[78] = v20;
  *v20 = v0;
  v20[1] = sub_26BF0B848;

  return sub_26BEAE7D0(v19, &unk_26C01D8C8, v19);
}

uint64_t sub_26BF0B848(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 624);
  v7 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {
    v5 = sub_26BF0BAE4;
  }

  else
  {
    v5 = sub_26BF0B960;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_26BF0B960()
{
  v1 = v0[65];
  v0[81] = 0;
  v2 = v0[67];
  if (!v2[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2[4];
  v0[82] = v3;
  v4 = v2[5];
  v0[83] = v4;
  v5 = *(v1 + 48);
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_26BEBB618(v3, v4);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (!*(v8 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v0[63];
  v9 = v0[64];
  v11 = *(*(v5 + 56) + 8 * v6);

  v12 = sub_26BEBB618(v10, v9);
  LOBYTE(v10) = v13;

  if ((v10 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v0[84] = *(*(v8 + 56) + 8 * v12);

  v14 = swift_task_alloc();
  v0[85] = v14;
  *v14 = v0;
  v14[1] = sub_26BF0BB00;
  v15 = v0[77];

  (sub_26BEAE7D0)(v15, &unk_26C01D8D0);
}

uint64_t sub_26BF0BB00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v7 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v5 = sub_26BF0BDFC;
  }

  else
  {
    v5 = sub_26BF0BC18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0BC18()
{
  v1 = swift_task_alloc();
  *(v0 + 704) = v1;
  *v1 = v0;
  v1[1] = sub_26BF0BCD4;
  v2 = *(v0 + 672);

  return sub_26BEAE7D0(v2, &unk_26C01D8D8, v2);
}

uint64_t sub_26BF0BCD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v7 = sub_26BF0C0A8;
  }

  else
  {
    *(v4 + 720) = a1;
    v7 = sub_26BF0BE18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF0BE18()
{
  if (v0[86] == v0[90])
  {
    if (*(v0[65] + 64) == 1)
    {
      v1 = swift_task_alloc();
      v0[91] = v1;
      *v1 = v0;
      v1[1] = sub_26BF0C0C4;
      v2 = v0[77];

      return sub_26BEAF004(v2, &unk_26C01D8E0, v2);
    }

    else
    {
      v11 = *(*v0[77] + 264);
      v15 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[95] = v13;
      *v13 = v0;
      v13[1] = sub_26BF0C77C;
      v14 = v0[77];

      return v15();
    }
  }

  else
  {
    v4 = v0[84];
    v5 = v0[83];
    v6 = v0[77];
    v7 = v0[67];

    sub_26BE773C4();
    swift_allocError();
    *v8 = xmmword_26C01D600;
    swift_willThrow();

    v9 = v0[66];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_26BF0C0C4(int a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v7 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v5 = sub_26BF0C3C0;
  }

  else
  {
    v5 = sub_26BF0C1DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0C1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  *v1 = v0;
  v1[1] = sub_26BF0C298;
  v2 = *(v0 + 672);

  return sub_26BEAF004(v2, &unk_26C01D8E8, v2);
}

uint64_t sub_26BF0C298(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 744);
  v6 = *v2;
  *(*v2 + 752) = v1;

  if (v1)
  {
    v7 = sub_26BF0C760;
  }

  else
  {
    *(v4 + 836) = a1;
    v7 = sub_26BF0C3DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF0C3DC()
{
  v1 = *(v0 + 836);
  v2 = *(v0 + 832);
  if (v2 == v1)
  {
    v3 = *(**(v0 + 616) + 264);
    v20 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_26BF0C77C;
    v6 = *(v0 + 616);

    return v20();
  }

  else
  {
    v8 = *(v0 + 664);
    v9 = *(v0 + 656);
    v19 = *(v0 + 616);
    v21 = *(v0 + 672);
    v10 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v12 = *(v10 + 32);
    v13 = *(v10 + 40);

    MEMORY[0x26D699090](v12, v13);

    MEMORY[0x26D699090](0x6172652073616820, 0xE900000000000020);
    *(v0 + 372) = v2;
    v14 = sub_26C00AEFC();
    MEMORY[0x26D699090](v14);

    MEMORY[0x26D699090](0x20747562202CLL, 0xE600000000000000);
    MEMORY[0x26D699090](v9, v8);

    MEMORY[0x26D699090](0x6172652073616820, 0xE900000000000020);
    *(v0 + 824) = v1;
    v15 = sub_26C00AEFC();
    MEMORY[0x26D699090](v15);

    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 0x6F662070756F7247;
    *(v11 + 40) = 0xEA00000000002072;
    sub_26C00B03C();

    sub_26BE773C4();
    swift_allocError();
    *v16 = xmmword_26C01D600;
    swift_willThrow();

    v17 = *(v0 + 528);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_26BF0C77C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v5 = *(*v2 + 672);
  v12 = *v2;
  v3[96] = a1;
  v3[97] = a2;

  v10 = (*v5 + 264);
  v11 = (*v10 + **v10);
  v6 = (*v10)[1];
  v7 = swift_task_alloc();
  v3[98] = v7;
  *v7 = v12;
  v7[1] = sub_26BF0C968;
  v8 = v3[84];

  return v11();
}

uint64_t sub_26BF0C968(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 784);
  v6 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = a2;

  return MEMORY[0x2822009F8](sub_26BF0CA6C, 0, 0);
}

uint64_t sub_26BF0CA6C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 792);
    v4 = *(v0 + 768);
    if (v1 >> 60 != 15)
    {
      sub_26BE2BAE8(*(v0 + 768), *(v0 + 776));
      sub_26BE2BAE8(v3, v1);
      v17 = sub_26BE02DEC(v4, v2, v3, v1);
      sub_26BE132D4(v3, v1);
      sub_26BE132D4(v4, v2);
      sub_26BE132D4(v3, v1);
      sub_26BE132D4(v4, v2);
      if (v17)
      {
        goto LABEL_14;
      }

      v54 = *(v0 + 664);
      v55 = *(v0 + 536);

LABEL_8:
      v11 = *(v0 + 672);
      v12 = *(v0 + 616);
      sub_26BE773C4();
      swift_allocError();
      *v13 = xmmword_26C01D600;
      swift_willThrow();
LABEL_9:

      v14 = *(v0 + 528);

      v15 = *(v0 + 8);
LABEL_10:

      return v15();
    }

    v5 = *(v0 + 664);
    v6 = *(v0 + 536);
    sub_26BE2BAE8(*(v0 + 768), *(v0 + 776));
    sub_26BE2BAE8(v3, v1);

    sub_26BE132D4(v3, v1);
    sub_26BE132D4(v4, v2);
LABEL_7:
    v9 = *(v0 + 800);
    v10 = *(v0 + 792);
    sub_26BE132D4(*(v0 + 768), *(v0 + 776));
    sub_26BE132D4(v10, v9);
    goto LABEL_8;
  }

  if (v1 >> 60 != 15)
  {
    v7 = *(v0 + 664);
    v8 = *(v0 + 536);

    goto LABEL_7;
  }

  sub_26BE132D4(*(v0 + 768), *(v0 + 776));
LABEL_14:
  v18 = *(v0 + 371);
  if (v18 == 2 || (v18 & 1) == 0)
  {
    v31 = *(v0 + 664);
  }

  else
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 528);
    type metadata accessor for MLS.Group.PureSwiftGroup();
    v21 = swift_dynamicCastClassUnconditional();
    v22 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;

    swift_beginAccess();
    sub_26BE2E1F0(v21 + v22, v20, &qword_28045FA38, &qword_26C01D890);
    v23 = type metadata accessor for FileInfoAndSender();
    LODWORD(v21) = (*(*(v23 - 8) + 48))(v20, 1, v23);
    sub_26BE2E258(v20, &qword_28045FA38, &qword_26C01D890);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    if (v21 == 1)
    {
      v26 = *(v0 + 656);
      v27 = *(v0 + 616);
      v28 = *(v0 + 536);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_26C011280;
      sub_26C00AC1C();
      MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02CB30);
      MEMORY[0x26D699090](v26, v25);

      MEMORY[0x26D699090](0xD000000000000028, 0x800000026C02CB50);
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 32) = 0;
      *(v29 + 40) = 0xE000000000000000;
      sub_26C00B03C();

      sub_26BE773C4();
      swift_allocError();
      *v30 = xmmword_26C01D600;
      swift_willThrow();

      goto LABEL_9;
    }

    v58 = *(v0 + 672);
  }

  v32 = *(v0 + 672);
  v33 = *(v0 + 648);
  v34 = *(v0 + 608);

  if (v33 + 1 != v34)
  {
    v39 = *(v0 + 648) + 1;
    *(v0 + 648) = v39;
    v40 = *(v0 + 536);
    if (v39 >= *(v40 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = *(v0 + 520);
      v42 = v40 + 16 * v39;
      v43 = *(v42 + 32);
      *(v0 + 656) = v43;
      v44 = *(v42 + 40);
      *(v0 + 664) = v44;
      v45 = *(v41 + 48);
      if (*(v45 + 16))
      {

        result = sub_26BEBB618(v43, v44);
        if (v46)
        {
          v47 = *(*(v45 + 56) + 8 * result);
          if (*(v47 + 16))
          {
            v49 = *(v0 + 504);
            v48 = *(v0 + 512);
            v50 = *(*(v45 + 56) + 8 * result);

            v51 = sub_26BEBB618(v49, v48);
            LOBYTE(v49) = v52;

            if (v49)
            {
              *(v0 + 672) = *(*(v47 + 56) + 8 * v51);

              v63 = sub_26BEAE7D0;
              v53 = swift_task_alloc();
              *(v0 + 680) = v53;
              *v53 = v0;
              v53[1] = sub_26BF0BB00;
              v37 = *(v0 + 616);
              v38 = &unk_26C01D8D0;
              goto LABEL_29;
            }

LABEL_41:
            __break(1u);
            return result;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v35 = *(v0 + 520);
  swift_beginAccess();
  if (*(v35 + 32) != 1)
  {
    v56 = *(v0 + 616);
    v57 = *(v0 + 536);

LABEL_36:
    v62 = *(v0 + 528);

    v15 = *(v0 + 8);
    goto LABEL_10;
  }

  if (*(*(v0 + 520) + 64) != 1)
  {
    v59 = *(v0 + 536);

    v60 = *(v0 + 616);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_26C011280;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 32) = 0xD000000000000042;
    *(v61 + 40) = 0x800000026C02CB80;
    sub_26C00B03C();

    goto LABEL_36;
  }

  v63 = sub_26BEAF004;
  v36 = swift_task_alloc();
  *(v0 + 808) = v36;
  *v36 = v0;
  v36[1] = sub_26BF0D17C;
  v37 = *(v0 + 616);
  v38 = &unk_26C01D8F0;
LABEL_29:

  return v63(v37, v38, v37);
}

uint64_t sub_26BF0D17C(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 808);
  v6 = *v2;
  *(*v2 + 816) = v1;

  if (v1)
  {
    v7 = sub_26BF0D4D4;
  }

  else
  {
    v8 = *(v4 + 536);

    *(v4 + 840) = a1;
    v7 = sub_26BF0D2AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF0D2AC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C011280;
  sub_26C00AC1C();

  *(v0 + 828) = v1;
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](0x2068636F7065202CLL, 0xE800000000000000);
  *(v0 + 496) = v2;
  v5 = sub_26C00AEFC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](46, 0xE100000000000000);
  v6 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x65206E6F206C6C41;
  *(v3 + 40) = 0xEB00000000206172;
  sub_26C00B03C();

  v7 = *(v0 + 616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C011280;
  *(v8 + 56) = v6;
  *(v8 + 32) = 0xD000000000000042;
  *(v8 + 40) = 0x800000026C02CB80;
  sub_26C00B03C();

  v9 = *(v0 + 528);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26BF0D4F0()
{
  v1 = v0[69];
  v2 = v0[67];

  v3 = v0[73];
  v4 = v0[66];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF0D568()
{
  sub_26BE00258(v0[71], v0[72]);
  sub_26BE29710((v0 + 2));
  v1 = v0[75];
  v2 = v0[66];

  v3 = v0[1];

  return v3();
}

uint64_t static Runner.getSMALikeRCSConfiguration(anchors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = a1;
  v2 = sub_26C009F3C();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26C009EDC();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_26C009EAC();
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v37);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC5450], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CC5438], v38);
  (*(v39 + 104))(v5, *MEMORY[0x277CC5460], v40);
  sub_26C009E7C();
  v19 = type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v18, v37);
  *(v22 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  LOWORD(v59) = 257;
  *(&v59 + 2) = v43;
  *(&v59 + 6) = WORD2(v43);
  BYTE10(v59) = 0;
  *(&v59 + 11) = v57;
  HIBYTE(v59) = v58;
  v60 = xmmword_26C00DA40;
  v61[0] = 1;
  *&v61[1] = v48[0];
  *&v61[4] = *(v48 + 3);
  *&v61[8] = xmmword_26C00CDC0;
  *&v61[24] = 16;
  v62 = v22;
  v23 = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84F90];
  *(v24 + 16) = sub_26C001A78(MEMORY[0x277D84F90]);
  *(v24 + 24) = sub_26C001A90(v25);
  v50 = v23;
  v51 = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
  v49 = v24;
  v26 = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26C001A78(v25);
  *(v27 + 24) = sub_26C001BDC(v25);
  *(&v44 + 1) = v26;
  *&v45 = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
  *&v43 = v27;
  v28 = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26C001D40(v25);
  v55 = v28;
  v56 = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
  LOBYTE(v48[0]) = 0;
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v54 = v29;
  sub_26BE2E258(v52, &qword_28045FA20, &qword_26C029070);
  v30 = v41;
  sub_26BE03890(&v43, v52);
  v31 = v63;
  static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)(v42, 2, 2, v30);
  if (v31)
  {
    sub_26BE29538(v48);
    return sub_26BE14F98(&v59);
  }

  else
  {
    v33 = *(v30 + 48);
    v45 = *(v30 + 32);
    v46 = v33;
    v47 = *(v30 + 64);
    v34 = *(v30 + 16);
    v43 = *v30;
    v44 = v34;
    sub_26BE14F98(&v43);
    v35 = v60;
    v36 = *&v61[16];
    *(v30 + 32) = *v61;
    *(v30 + 48) = v36;
    *(v30 + 64) = v62;
    *v30 = v59;
    *(v30 + 16) = v35;
    result = sub_26BE15058(v48, v30 + 72);
    *(v30 + 272) = 1;
    *(v30 + 10) = 1;
  }

  return result;
}

void sub_26BF0DAD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static MockRoot.getAnchors(anchorFilepaths:)(inited);
  v14 = v13;
  swift_setDeallocating();
  sub_26BF25CA8(inited + 32);
  if (!v6)
  {
    v17 = v14;
    if (a4)
    {
      sub_26BE77560(a3, a4);
      if (!v14)
      {
        __break(1u);
        return;
      }

      sub_26BF9F008(v15);
      v14 = v17;
    }

    static Runner.getSMALikeRCSConfiguration(anchors:)(v14, v16);
    LOBYTE(v16[136]) = *(v5 + 64);
    v16[176] = *(v5 + 34);
    LOBYTE(v16[177]) = 1;
    memcpy(a5, v16, 0x163uLL);
  }
}

uint64_t sub_26BF0DC34(uint64_t a1)
{
  v2[105] = v1;
  v2[104] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0) - 8) + 64) + 15;
  v2[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0DCD4, 0, 0);
}

uint64_t sub_26BF0DCD4()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = *v2;
  v0[107] = *v2;
  v4 = v2[1];
  v0[108] = v4;
  swift_beginAccess();
  v5 = *(*(v1 + 40) + 16);
  swift_bridgeObjectRetain_n();
  if (v5 && (, sub_26BEBB618(v3, v4), v7 = v6, , (v7 & 1) != 0))
  {
    swift_bridgeObjectRelease_n();
    sub_26C00AC1C();

    MEMORY[0x26D699090](v3, v4);
    MEMORY[0x26D699090](0x79646165726C6120, 0xEF73747369786520);
    sub_26BE773C4();
    swift_allocError();
    *v8 = 0x20746E65696C43;
    v8[1] = 0xE700000000000000;
    swift_willThrow();
    v15 = v0[106];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v9 = v0[105];
    v10 = v0[104];
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[4];
    v14 = v10[5];

    sub_26BF0DAD4(v12, v11, v13, v14, v0 + 2);
    v18 = v0[106];
    v19 = v0[105];
    v20 = *(v19 + 80);
    *(v19 + 72) = v12;
    *(v19 + 80) = v11;

    type metadata accessor for MLS.RCSClient();
    sub_26BE295A0((v0 + 2), (v0 + 47));
    v21 = sub_26C00928C();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    v22 = swift_task_alloc();
    v0[109] = v22;
    *v22 = v0;
    v22[1] = sub_26BF0DFA0;
    v23 = v0[106];

    return MLS.Client.Client.__allocating_init(configuration:withClientUUID:)((v0 + 47), v23);
  }
}

uint64_t sub_26BF0DFA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 872);
  v6 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v7 = *(v4 + 864);
    swift_bridgeObjectRelease_n();
    v8 = sub_26BF0E270;
  }

  else
  {
    *(v4 + 888) = a1;
    v8 = sub_26BF0E0D4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF0E0D4()
{
  v1 = v0[111];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = *(v5 + 33);
  v7 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  *(v1 + v7) = v6;
  swift_beginAccess();

  v8 = *(v5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_26BE57A68(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  *(v5 + 40) = v15;
  swift_endAccess();
  v10 = sub_26C005CAC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v11 = *(v5 + 48);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_26BE57A28(v10, v3, v2, v12);

  *(v5 + 48) = v16;
  swift_endAccess();

  sub_26BE29710((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BF0E270()
{
  sub_26BE29710((v0 + 2));
  v1 = v0[110];
  v2 = v0[106];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF0E2DC(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_26C008FDC();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0E39C, 0, 0);
}

uint64_t sub_26BF0E39C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = *v1;
  v0[41] = *v1;
  v4 = v1[1];
  v0[42] = v4;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    v6 = *(v2 + 40);

    v7 = sub_26BEBB618(v3, v4);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      type metadata accessor for MLS.RCSClient();
      v10 = swift_dynamicCastClass();

      if (v10)
      {
        v12 = *(v2 + 40);
        if (*(v12 + 16))
        {
          v13 = *(v2 + 40);

          result = sub_26BEBB618(v3, v4);
          if (v14)
          {
            v15 = v0[36];
            v0[43] = *(*(v12 + 56) + 8 * result);

            v16 = swift_dynamicCastClassUnconditional();
            v17 = *(v15 + 16);
            v18 = *(v15 + 24);

            v19 = swift_task_alloc();
            v0[44] = v19;
            *v19 = v0;
            v19[1] = sub_26BF0E658;

            return sub_26BE9A008((v0 + 2), v16, v17, v18, v16);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  sub_26C00AC1C();

  MEMORY[0x26D699090](v3, v4);
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02CD70);
  sub_26BE773C4();
  swift_allocError();
  *v20 = 0x20746E65696C43;
  v20[1] = 0xE700000000000000;
  swift_willThrow();
  v21 = v0[40];

  v22 = v0[1];

  return v22();
}

uint64_t sub_26BF0E658()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_26BF0E9C8;
  }

  else
  {
    v3 = sub_26BF0E76C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF0E76C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 80) = v3;
  *(v0 + 96) = v2;
  v4 = *(v0 + 64);
  *(v0 + 112) = v1;
  *(v0 + 128) = v4;
  *(v0 + 208) = v3;
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 48);
  v5 = *(v0 + 120);
  *(v0 + 272) = v4;
  if (v5)
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 288);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = sub_26C008DEC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_26C008DDC();
    v13 = *(v0 + 224);
    *(v0 + 144) = *(v0 + 208);
    *(v0 + 160) = v13;
    *(v0 + 176) = *(v0 + 240);
    *(v0 + 184) = v5;
    *(v0 + 192) = *(v0 + 272);
    sub_26BE774C0();
    v14 = sub_26C008DCC();
    if (!v6)
    {
      v21 = *(v0 + 320);
      v22 = v14;
      v23 = v15;
      sub_26C008F9C();
      sub_26C00912C();
      v24 = *(v0 + 344);
      v26 = *(v0 + 312);
      v25 = *(v0 + 320);
      v27 = *(v0 + 304);

      sub_26BE00258(v22, v23);
      sub_26BE2E258(v0 + 80, &qword_28045FA80, &qword_26C01D910);
      (*(v26 + 8))(v25, v27);
      goto LABEL_7;
    }

    v16 = *(v0 + 344);

    sub_26BE2E258(v0 + 80, &qword_28045FA80, &qword_26C01D910);
  }

  else
  {
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v19 = *(v0 + 328);
    sub_26C00AC1C();

    MEMORY[0x26D699090](v19, v18);
    sub_26BE773C4();
    swift_allocError();
    *v20 = 0xD00000000000002ELL;
    v20[1] = 0x800000026C02CD90;
    swift_willThrow();
  }

  v28 = *(v0 + 320);
LABEL_7:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_26BF0E9C8()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[40];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF0EA34(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_26C00A4EC() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0EAC4, 0, 0);
}

uint64_t sub_26BF0EAC4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = *v1;
  v0[11] = *v1;
  v4 = v1[1];
  v0[12] = v4;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    v6 = *(v2 + 40);

    v7 = sub_26BEBB618(v3, v4);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      type metadata accessor for MLS.RCSClient();
      v10 = swift_dynamicCastClass();

      if (v10)
      {
        v12 = *(v2 + 40);
        if (*(v12 + 16))
        {
          v13 = *(v2 + 40);

          result = sub_26BEBB618(v3, v4);
          if (v14)
          {
            v15 = v0[10];
            v16 = v0[8];
            v0[13] = *(*(v12 + 56) + 8 * result);

            v17 = swift_dynamicCastClassUnconditional();
            v0[14] = v17;
            v18 = *(v16 + 32);
            v19 = *(v16 + 40);
            sub_26C00A4CC();
            v20 = sub_26C00A44C();
            sub_26BE77560(v20, v21);
            v0[15] = v22;
            v26 = v0[8];
            v27 = v22;

            v28 = *(v26 + 16);
            v0[16] = v28;
            v29 = *(v26 + 24);
            v0[17] = v29;
            v30 = swift_task_alloc();
            v0[18] = v30;
            v30[2] = v28;
            v30[3] = v29;
            v30[4] = v17;
            v30[5] = v27;
            v30[6] = 0x2000000000000000;
            v31 = swift_task_alloc();
            v0[19] = v31;
            *v31 = v0;
            v31[1] = sub_26BF0EE08;

            return sub_26BE1A744(sub_26BE1A744, &unk_26C01D918, v30);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  sub_26C00AC1C();

  MEMORY[0x26D699090](v3, v4);
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02CD70);
  sub_26BE773C4();
  swift_allocError();
  *v23 = 0x20746E65696C43;
  v23[1] = 0xE700000000000000;
  swift_willThrow();
  v24 = v0[10];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26BF0EE08()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_26BF0F128;
  }

  else
  {
    v6 = sub_26BF0EF3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF0EF3C()
{
  v2 = v0[14];
  v1 = v0[15];

  swift_beginAccess();
  if ((~*(v2 + 32) & 0x3000000000000000) != 0)
  {
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    MLS.Identity.Credential.telURI.getter();
    if (v3)
    {
      if (v3[2])
      {
        v5 = v0[16];
        v4 = v0[17];
        v6 = v3[4];
        v7 = v3[5];

        if (v6 == v5 && v7 == v4)
        {
          v8 = v0[13];

LABEL_10:

          v13 = v0[10];

          v14 = v0[1];
          goto LABEL_12;
        }

        v9 = v0[16];
        v10 = v0[17];
        v11 = sub_26C00AF2C();

        if (v11)
        {
          v12 = v0[13];
          goto LABEL_10;
        }
      }

      else
      {
      }
    }
  }

  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0x20746E65696C43, 0xE700000000000000);
  MEMORY[0x26D699090](v17, v16);
  MEMORY[0x26D699090](0xD000000000000035, 0x800000026C02CDC0);
  sub_26BE773C4();
  swift_allocError();
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  swift_willThrow();

  v19 = v0[10];

  v14 = v0[1];
LABEL_12:

  return v14();
}

uint64_t sub_26BF0F128()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[20];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF0F1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[88] = v4;
  v5[87] = a4;
  v5[86] = a3;
  v5[85] = a2;
  v5[84] = a1;
  return MEMORY[0x2822009F8](sub_26BF0F1D0, 0, 0);
}

uint64_t sub_26BF0F1D0()
{
  v1 = v0[88];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = v0[85];
  v4 = v0[84];

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {
    v22 = v0[85];

LABEL_11:
    sub_26BE773C4();
    swift_allocError();
    *v23 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_17;
  }

  v7 = v0[88];
  v0[89] = *(*(v2 + 56) + 8 * v5);

  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = v0[85];
  if (*(v8 + 16))
  {
    v10 = v0[84];

    v11 = sub_26BEBB618(v10, v9);
    if (v12)
    {
      v13 = *(*(v8 + 56) + 8 * v11);

      if (*(v13 + 16))
      {
        v14 = v0[87];
        v15 = v0[86];

        v16 = sub_26BEBB618(v15, v14);
        if (v17)
        {
          v18 = *(*(v13 + 56) + 8 * v16);
          v0[90] = v18;

          v30 = (*v18 + 368);
          v31 = (*v30 + **v30);
          v19 = (*v30)[1];
          v20 = swift_task_alloc();
          v0[91] = v20;
          *v20 = v0;
          v20[1] = sub_26BF0F4FC;

          return v31();
        }

        v26 = v0[87];
        v27 = v0[85];
      }

      else
      {
        v25 = v0[85];
      }
    }

    else
    {
      v24 = v0[85];
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v28 = xmmword_26C01D5E0;
  swift_willThrow();

LABEL_17:
  v29 = v0[1];

  return v29();
}

uint64_t sub_26BF0F4FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 728);
  v6 = *v2;
  *(*v2 + 736) = v1;

  if (v1)
  {
    v7 = v4[87];
    v8 = v4[85];

    v9 = sub_26BF11F10;
  }

  else
  {
    v4[93] = a1;
    v9 = sub_26BF0F638;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF0F638()
{
  v0[94] = *(v0[93] + 16);

  v1 = swift_task_alloc();
  v0[95] = v1;
  *v1 = v0;
  v1[1] = sub_26BF0F704;
  v2 = v0[90];

  return sub_26BEAE7D0(v2, &unk_26C01D8F8, v2);
}

uint64_t sub_26BF0F704(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v7 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v5 = sub_26BF0FC60;
  }

  else
  {
    v5 = sub_26BF0F81C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0F81C()
{
  v1 = v0[88];
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_36;
  }

  v4 = v0[87];
  v5 = v0[86];

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  v0[98] = v7;

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = (v7 + 40);
  while (1)
  {
    v10 = v0[85];
    v11 = v0[84];
    v13 = *(v9 - 1);
    v12 = *v9;
    v0[99] = *v9;
    v14 = v13 == v11 && v12 == v10;
    if (!v14 && (sub_26C00AF2C() & 1) == 0)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_25;
    }
  }

  v15 = *(v0[88] + 40);
  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = sub_26BEBB618(v13, v12);
    if (v18)
    {
      v19 = v0[88];
      v0[100] = *(*(v15 + 56) + 8 * v17);

      v20 = *(v19 + 48);
      if (*(v20 + 16))
      {

        v21 = sub_26BEBB618(v13, v12);
        if (v22)
        {
          v23 = *(*(v20 + 56) + 8 * v21);

          if (*(v23 + 16))
          {
            v24 = sub_26BEBB618(v0[86], v0[87]);
            if (v25)
            {
              v0[101] = *(*(v23 + 56) + 8 * v24);

              type metadata accessor for MLS.Group.PureSwiftGroup();
              v26 = swift_dynamicCastClass();
              v0[102] = v26;
              if (v26)
              {

                v27 = swift_task_alloc();
                v0[103] = v27;
                *v27 = v0;
                v27[1] = sub_26BF0FC7C;

                return sub_26BF5D2E0((v0 + 66));
              }

              v44 = v0[90];
              v45 = v0[89];
              v46 = v0[87];
              v47 = v0[85];

              sub_26BE773C4();
              swift_allocError();
              *v48 = 0xD000000000000031;
              v48[1] = 0x800000026C02CC40;
              swift_willThrow();

              goto LABEL_30;
            }

            v38 = v0[87];
            v39 = v0[85];
            goto LABEL_28;
          }

LABEL_26:
          v37 = v0[85];
LABEL_28:

          goto LABEL_29;
        }

        v35 = v0[87];
        v36 = v0[85];
      }

      else
      {
        v33 = v0[87];
        v34 = v0[85];
      }

LABEL_29:

      v40 = v0[90];
      v41 = v0[89];
      sub_26BE773C4();
      swift_allocError();
      *v42 = xmmword_26C01D5E0;
      swift_willThrow();
LABEL_30:

      goto LABEL_31;
    }
  }

  v28 = v0[90];
  v29 = v0[89];
  v30 = v0[87];
  v31 = v0[85];

  sub_26BE773C4();
  swift_allocError();
  *v32 = xmmword_26C01D5C0;
  swift_willThrow();
LABEL_31:

  v43 = v0[1];

  return v43();
}

uint64_t sub_26BF0FC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v11 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v4 = v2[101];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[87];
    v8 = v2[85];

    v9 = sub_26BF11F80;
  }

  else
  {
    v9 = sub_26BF0FDD0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF0FDD0()
{
  v1 = *(v0 + 808);
  *(v0 + 840) = *(v0 + 528);

  v2 = swift_task_alloc();
  *(v0 + 856) = v2;
  *v2 = v0;
  v2[1] = sub_26BF0FE98;
  v3 = *(v0 + 816);

  return sub_26BE9F40C(v0 + 544, v3, v3);
}

uint64_t sub_26BF0FE98()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v10 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = v2[99];
    v5 = v2[98];
    v6 = v2[87];
    v7 = v2[85];

    v8 = sub_26BF101FC;
  }

  else
  {
    v8 = sub_26BF0FFE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF0FFE0()
{
  v1 = *(v0 + 712);
  *(v0 + 872) = *(v0 + 544);

  v2 = swift_task_alloc();
  *(v0 + 888) = v2;
  *v2 = v0;
  v2[1] = sub_26BF100A8;
  v3 = *(v0 + 712);

  return sub_26BE8E304(v0 + 560, v3, v3);
}

uint64_t sub_26BF100A8()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v11 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = v2[101];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[87];
    v8 = v2[85];

    v9 = sub_26BF10548;
  }

  else
  {
    v9 = sub_26BF102A0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF101FC()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[90];
  v4 = v0[89];
  sub_26BE00258(v0[105], v0[106]);

  v5 = v0[108];
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF102A0()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v5 = *(v0 + 712);
  v6 = *(v0 + 560);
  *(v0 + 904) = v6;
  v7 = *(v0 + 568);
  *(v0 + 912) = v7;
  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v2, v1);
  sub_26BE00608(v6, v7);
  sub_26BE132D4(0, 0xF000000000000000);
  *&v8 = v4;
  *(&v8 + 1) = v3;
  *&v9 = v2;
  *(&v9 + 1) = v1;
  *(v0 + 272) = v8;
  *(v0 + 288) = v9;
  *(v0 + 304) = v6;
  *(v0 + 312) = v7;
  *(v0 + 320) = 1;

  sub_26BF270AC(v0 + 272, v0 + 328);
  v10 = swift_task_alloc();
  *(v0 + 920) = v10;
  *v10 = v0;
  v10[1] = sub_26BF103F4;
  v11 = *(v0 + 712);

  return sub_26BEA202C(v0 + 456, v11, v11, v0 + 272);
}

uint64_t sub_26BF103F4()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v11 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = v2[101];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[87];
    v8 = v2[85];

    v9 = sub_26BF10A48;
  }

  else
  {
    v9 = sub_26BF10604;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF10548()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[90];
  v6 = v0[89];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v2, v1);

  v7 = v0[112];
  v8 = v0[1];

  return v8();
}

int64_t sub_26BF10604()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  *(v0 + 936) = v4;
  *(v0 + 944) = v5;
  v6 = *(v0 + 472);
  *(v0 + 952) = v6;
  swift_beginAccess();

  sub_26BE00608(v4, v5);
  v7 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  v10 = sub_26BEBB618(v3, v2);
  v11 = v27[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  if (v27[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_26BE6F250();
    }
  }

  else
  {
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v16, v15);
    if ((v14 & 1) != (v17 & 1))
    {

      return sub_26C00AF8C();
    }

    v10 = result;
  }

  if ((v14 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v27[7] + 8 * v10);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_26BE57AE8(v6, v19, v18, v21);

  v22 = *(v0 + 680);
  if (v20)
  {

    *(v27[7] + 8 * v10) = v20;
  }

  else
  {

    sub_26BF25CA8(v27[6] + 16 * v10);
    sub_26C006458(v10, v27);
  }

  *(*(v0 + 704) + 48) = v27;
  swift_endAccess();
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 592) = xmmword_26C00DA60;
  v23 = swift_task_alloc();
  *(v0 + 960) = v23;
  *v23 = v0;
  v23[1] = sub_26BF108D8;
  v24 = *(v0 + 704);
  v25 = *(v0 + 696);
  v26 = *(v0 + 688);

  return sub_26BEFDA68((v0 + 576), v26, v25, v0 + 16, 0, 0, (v0 + 592), 0);
}

uint64_t sub_26BF108D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 960);
  v10 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  if (v1)
  {
    v5 = v3[101];
    v6 = v3[99];
    v7 = v3[98];

    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
    v8 = sub_26BF12010;
  }

  else
  {
    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
    v8 = sub_26BF10B28;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF10A48()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[90];
  v8 = v0[89];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v4, v3);
  sub_26BE00258(v2, v1);

  sub_26BEAFA4C((v0 + 34));
  v9 = v0[116];
  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF10B28()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 712);
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  if (!v3)
  {
LABEL_14:
    v18 = *(v0 + 968);
    v19 = *(v0 + 952);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);

    v55 = *v19 + 368;
    v22 = *v55;
    *(v0 + 984) = *v55;
    *(v0 + 992) = v55 & 0xFFFFFFFFFFFFLL | 0x5DEC000000000000;
    v58 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 1000) = v24;
    *v24 = v0;
    v24[1] = sub_26BF11030;
    v25 = *(v0 + 952);

    return v58();
  }

  v5 = 0;
  v6 = *(v0 + 712);
  v7 = *(v0 + 968) + 32;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    sub_26BF26CF0(v7, v0 + 152);
    if (*(v0 + 265) != 3)
    {
      v26 = *(v0 + 968);
      v27 = *(v0 + 952);
      v28 = *(v0 + 944);
      v29 = *(v0 + 936);
      v51 = *(v0 + 904);
      v52 = *(v0 + 912);
      v49 = *(v0 + 872);
      v50 = *(v0 + 880);
      v30 = *(v0 + 848);
      v31 = *(v0 + 840);
      v32 = *(v0 + 808);
      v33 = *(v0 + 792);
      v34 = *(v0 + 784);
      v59 = *(v0 + 720);
      v53 = *(v0 + 800);
      v56 = *(v0 + 712);

      sub_26BF26D4C(v0 + 152);
      sub_26BE01654();
      swift_allocError();
      *v35 = 1;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0u;
      *(v35 + 72) = 0u;
      *(v35 + 88) = 0u;
      *(v35 + 104) = 0;
      *(v35 + 112) = 23;
      swift_willThrow();
      sub_26BE00258(v31, v30);
      v36 = v49;
      goto LABEL_20;
    }

    result = *(v0 + 152);
    if (!result)
    {
      goto LABEL_25;
    }

    v8 = *(v6 + 32);
    if ((~v8 & 0x3000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v9 = *(v0 + 168);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    if ((v8 & 0x2000000000000000) == 0)
    {
      result = sub_26BF26F5C(result);
      goto LABEL_4;
    }

    if (*(*(v0 + 176) + 16) != 1 || *(*(v0 + 160) + 16))
    {
      break;
    }

    v13 = *(result + 16);
    result = sub_26BF26F5C(result);
    if (v13)
    {
      v14 = *(v0 + 968);
      v15 = *(v0 + 808);
      v16 = *(v0 + 792);
      v17 = *(v0 + 784);

      goto LABEL_19;
    }

LABEL_4:
    ++v5;
    v7 += 120;
    if (v3 == v5)
    {
      goto LABEL_14;
    }
  }

  v37 = *(v0 + 968);
  v38 = *(v0 + 808);
  v39 = *(v0 + 792);
  v40 = *(v0 + 784);
  v41 = *(v0 + 152);
  v60 = *(v0 + 200);

  sub_26BF26F5C(v41);
LABEL_19:

  v42 = *(v0 + 952);
  v28 = *(v0 + 944);
  v29 = *(v0 + 936);
  v51 = *(v0 + 904);
  v52 = *(v0 + 912);
  v50 = *(v0 + 880);
  v43 = *(v0 + 872);
  v44 = *(v0 + 848);
  v45 = *(v0 + 840);
  v46 = *(v0 + 808);
  v61 = *(v0 + 720);
  v54 = *(v0 + 800);
  v57 = *(v0 + 712);
  sub_26BE01654();
  swift_allocError();
  *v47 = 1;
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0;
  *(v47 + 112) = 23;
  swift_willThrow();
  sub_26BE00258(v45, v44);
  v36 = v43;
LABEL_20:
  sub_26BE132D4(v36, v50);
  sub_26BE00258(v51, v52);
  sub_26BE00258(v29, v28);
  sub_26BEAFA4C(v0 + 272);

  sub_26BE00258(v29, v28);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_26BF11030(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1000);
  v6 = *v2;
  *(*v2 + 1008) = v1;

  if (v1)
  {
    v7 = sub_26BF12130;
  }

  else
  {
    *(v4 + 1016) = a1;
    v7 = sub_26BF11158;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF11158()
{
  v20 = v0;
  v1 = *(v0 + 752);
  v2 = *(*(v0 + 1016) + 16);

  if (v2 == v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 1056) = v3;
    *v3 = v0;
    v3[1] = sub_26BF117A4;
    v4 = *(v0 + 952);

    return sub_26BEAE7D0(v4, &unk_26C01D900, v4);
  }

  else
  {
    v6 = *(v0 + 992);
    v7 = *(v0 + 984);
    v8 = *(v0 + 752);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    strcpy(v19, "Old group had ");
    HIBYTE(v19[1]) = -18;
    *(v0 + 640) = v8;
    v10 = sub_26C00AEFC();
    MEMORY[0x26D699090](v10);

    MEMORY[0x26D699090](0x737265626D656D20, 0xE800000000000000);
    v11 = v19[0];
    v12 = v19[1];
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v11;
    *(v9 + 40) = v12;
    sub_26C00B03C();

    v13 = swift_allocObject();
    *(v0 + 1024) = v13;
    *(v13 + 16) = xmmword_26C011280;
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy((v0 + 608), "New group has ");
    *(v0 + 623) = -18;
    v18 = (v7 + *v7);
    v14 = v7[1];
    v15 = swift_task_alloc();
    *(v0 + 1032) = v15;
    *v15 = v0;
    v15[1] = sub_26BF1146C;
    v16 = *(v0 + 992);
    v17 = *(v0 + 952);

    return v18();
  }
}

uint64_t sub_26BF1146C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v7 = *(v4 + 808);

    v8 = sub_26BF12260;
  }

  else
  {
    *(v4 + 1048) = a1;
    v8 = sub_26BF1159C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF1159C()
{
  v1 = v0[128];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[109];
  v15 = v0[110];
  v16 = v0[105];
  v17 = v0[106];
  v18 = v0[101];
  v19 = v0[100];
  v20 = v0[90];
  v21 = v0[89];
  v8 = *(v0[131] + 16);

  v0[81] = v8;
  v9 = sub_26C00AEFC();
  MEMORY[0x26D699090](v9);

  MEMORY[0x26D699090](0x737265626D656D20, 0xE800000000000000);
  v10 = v0[76];
  v11 = v0[77];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v10;
  v1[5] = v11;
  sub_26C00B03C();

  sub_26BE773C4();
  swift_allocError();
  *v12 = 0xD000000000000036;
  v12[1] = 0x800000026C02CC80;
  swift_willThrow();
  sub_26BE00258(v4, v3);

  sub_26BE00258(v4, v3);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v6, v5);
  sub_26BE132D4(v7, v15);
  sub_26BE00258(v16, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BF117A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1056);
  v7 = *v2;
  *(v3 + 1064) = a1;
  *(v3 + 1072) = v1;

  if (v1)
  {
    v5 = sub_26BF11BCC;
  }

  else
  {
    v5 = sub_26BF118BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_26BF118BC()
{
  v1 = v0[96];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else if (v0[133] == v1 + 1)
  {
    v2 = v0[119];
    v3 = v0[118];
    v4 = v0[117];
    v5 = v0[114];
    v6 = v0[113];
    v7 = v0[110];
    v8 = v0[109];
    v9 = v0[106];
    v10 = v0[105];
    v17 = v0[101];
    v18 = v0[100];
    v19 = v0[90];
    v20 = v0[89];
    sub_26BE00258(v4, v3);

    sub_26BE00258(v4, v3);

    sub_26BEAFA4C((v0 + 34));
    sub_26BE00258(v6, v5);
    sub_26BE132D4(v8, v7);
    sub_26BE00258(v10, v9);

    v11 = v0[1];

    v11();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v0[82] = v1;
    v13 = sub_26C00AEFC();
    MEMORY[0x26D699090](v13);

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = 0xD000000000000013;
    *(v12 + 40) = 0x800000026C02CCC0;
    sub_26C00B03C();

    v14 = swift_allocObject();
    v0[135] = v14;
    *(v14 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v0[78] = 0xD000000000000013;
    v0[79] = 0x800000026C02CCE0;
    v15 = swift_task_alloc();
    v0[136] = v15;
    *v15 = v0;
    v15[1] = sub_26BF11BE8;
    v16 = v0[119];

    sub_26BEAE7D0(v16, &unk_26C01D908, v16);
  }
}

uint64_t sub_26BF11BE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *v2;
  *(*v2 + 1096) = v1;

  if (v1)
  {
    v7 = sub_26BF11EF4;
  }

  else
  {
    *(v4 + 1104) = a1;
    v7 = sub_26BF11D10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF11D10()
{
  v1 = v0[135];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[109];
  v14 = v0[110];
  v15 = v0[105];
  v16 = v0[106];
  v17 = v0[101];
  v18 = v0[100];
  v19 = v0[90];
  v20 = v0[89];
  v0[83] = v0[138];
  v8 = sub_26C00AEFC();
  MEMORY[0x26D699090](v8);

  v9 = v0[78];
  v10 = v0[79];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v9;
  v1[5] = v10;
  sub_26C00B03C();

  sub_26BE773C4();
  swift_allocError();
  *v11 = 0xD00000000000002CLL;
  v11[1] = 0x800000026C02CD00;
  swift_willThrow();
  sub_26BE00258(v4, v3);

  sub_26BE00258(v4, v3);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v6, v5);
  sub_26BE132D4(v7, v14);
  sub_26BE00258(v15, v16);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF11F10()
{
  v1 = v0[90];
  v2 = v0[89];

  v3 = v0[92];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF11F80()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[90];
  v4 = v0[89];

  v5 = v0[104];
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF12010()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[100];
  v13 = v0[101];
  v14 = v0[90];
  v9 = v0[89];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v7, v6);
  sub_26BE00258(v5, v4);
  sub_26BEAFA4C((v0 + 34));

  sub_26BE00258(v3, v2);

  sub_26BE00258(v3, v2);
  v10 = v0[122];
  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF12130()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[106];
  v9 = v0[105];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[90];
  v16 = v0[89];
  sub_26BE00258(v3, v2);

  sub_26BE00258(v3, v2);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v5, v4);
  sub_26BE132D4(v7, v6);
  sub_26BE00258(v9, v8);

  v10 = v0[126];
  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF12260()
{
  v1 = v0[128];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[117];
  v16 = v0[113];
  v17 = v0[114];
  v5 = v0[110];
  v6 = v0[109];
  v14 = v0[105];
  v15 = v0[106];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[90];
  v10 = v0[89];

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v4, v3);

  sub_26BE00258(v4, v3);

  sub_26BE132D4(v6, v5);
  sub_26BE00258(v14, v15);
  sub_26BE00258(v16, v17);
  *(v1 + 16) = 0;

  v11 = v0[130];
  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF1238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[49] = a4;
  v5[50] = v4;
  v5[47] = a2;
  v5[48] = a3;
  v5[46] = a1;
  return MEMORY[0x2822009F8](sub_26BF123B4, 0, 0);
}

uint64_t sub_26BF123B4()
{
  v1 = v0[50];
  result = swift_beginAccess();
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v0[46];
  v4 = v0[47];

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  if (!*(v7 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v0[48];
  v8 = v0[49];
  v10 = *(*(v3 + 56) + 8 * result);

  v11 = sub_26BEBB618(v9, v8);
  LOBYTE(v9) = v12;

  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = *(*(v7 + 56) + 8 * v11);
  v0[51] = v13;

  v16 = (*v13 + 512);
  v17 = (*v16 + **v16);
  v14 = (*v16)[1];
  v15 = swift_task_alloc();
  v0[52] = v15;
  *v15 = v0;
  v15[1] = sub_26BF125A0;

  return v17(v0 + 19);
}

uint64_t sub_26BF125A0()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_26BF1299C;
  }

  else
  {
    v3 = sub_26BF126B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF126B4()
{
  *(v0 + 232) = *(v0 + 152);
  *(v0 + 248) = *(v0 + 168);
  v1 = *(v0 + 200);
  *(v0 + 264) = *(v0 + 184);
  *(v0 + 280) = v1;
  *(v0 + 296) = *(v0 + 216);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 352) = xmmword_26C00DA60;
  sub_26BE00608(v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 432) = v4;
  *v4 = v0;
  v4[1] = sub_26BF127C4;
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);

  return sub_26BEFDA68((v0 + 336), v7, v5, v0 + 16, 0, 0, (v0 + 352), 0);
}

uint64_t sub_26BF127C4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v6 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 336), *(v2 + 344));
    v4 = sub_26BF12A00;
  }

  else
  {

    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 336), *(v2 + 344));
    v4 = sub_26BF1292C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1292C()
{
  v1 = *(v0 + 408);
  sub_26BF26EB4(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF1299C()
{
  v1 = v0[51];

  v2 = v0[53];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF12A00()
{
  v1 = v0[51];

  sub_26BF26EB4((v0 + 29));
  v2 = v0[55];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF12A6C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 584) = v1;
  *(v2 + 576) = a1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF12B00, 0, 0);
}

uint64_t sub_26BF12B00()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (*(v7 + 16))
  {

    v8 = sub_26BEBB618(v3, v4);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (*(v10 + 16))
      {
        v11 = sub_26BEBB618(v5, v6);
        if (v12)
        {
          v13 = *(v0 + 576);
          *(v0 + 592) = *(*(v10 + 56) + 8 * v11);

          v14 = *(v13 + 32);
          v15 = *(v13 + 40);

          result = sub_26BF26234(v14, v15);
          *(v0 + 600) = result;
          *(v0 + 608) = v17;
          if (v17 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {
            *(v0 + 544) = result;
            *(v0 + 552) = v17;
            v18 = swift_task_alloc();
            *(v0 + 616) = v18;
            *v18 = v0;
            v18[1] = sub_26BF12D4C;
            v19 = *(v0 + 584);
            v20 = *MEMORY[0x277D85DE8];

            return sub_26BF00564((v0 + 544), v5, v6, 0, 0xE000000000000000, 0, 0);
          }

          return result;
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v21 = xmmword_26C01D5C0;
  swift_willThrow();
  v22 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_26BF12D4C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 616);
  v9 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v5 = sub_26BF13970;
  }

  else
  {
    v5 = sub_26BF12E90;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF12E90()
{
  v99 = v0;
  v98 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v64 = *(v0 + 624);
    goto LABEL_95;
  }

  v3 = v0 + 376;
  v80 = (v0 + 560);
  v76 = (v0 + 568);
  v4 = *(v0 + 584);
  v5 = v1 + 32;
  swift_beginAccess();
  v6 = 0;
  v77 = v1;
  v78 = v0;
  v79 = v2;
  v83 = v4;
  v84 = v0 + 376;
  v82 = v1 + 32;
  while (2)
  {
    if (v6 >= *(v1 + 16))
    {
      goto LABEL_108;
    }

    sub_26BF26CF0(v5 + 120 * v6, v0 + 16);
    sub_26BF26CF0(v0 + 16, v0 + 136);
    if (!*(v0 + 249))
    {
      v88 = v6;
      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      sub_26BE2E258(v0 + 136, &qword_28045E698, &unk_26C0204F0);
      if (*(v4 + 32) != 1)
      {
        sub_26BF26D4C(v0 + 16);
        sub_26BE00258(v18, v19);
        v6 = v88;
        goto LABEL_6;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26C011280;
      sub_26C00AC1C();

      v21 = v19 >> 62;
      v81 = v20;
      if ((v19 >> 62) > 1)
      {
        if (v21 != 2)
        {
          v29 = MEMORY[0x277D84F90];
          goto LABEL_92;
        }

        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        v22 = v27 - v28;
        if (__OFSUB__(v27, v28))
        {
          goto LABEL_121;
        }

        if (!v22)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (!v21)
        {
          v22 = BYTE6(v19);
          if (!BYTE6(v19))
          {
            goto LABEL_64;
          }

          goto LABEL_30;
        }

        v46 = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_120;
        }

        v22 = v46;
        if (!v46)
        {
LABEL_64:
          v29 = MEMORY[0x277D84F90];
          goto LABEL_91;
        }
      }

LABEL_30:
      v90 = MEMORY[0x277D84F90];
      sub_26BECB834(0, v22 & ~(v22 >> 63), 0);
      v29 = v90;
      if (v21 == 2)
      {
        v30 = *(v18 + 16);
LABEL_67:
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_118;
      }

      if (v21 == 1)
      {
        v30 = v18;
        goto LABEL_67;
      }

      if (v22 < 0)
      {
        goto LABEL_122;
      }

      v30 = 0;
      while (1)
      {
LABEL_71:
        if (!v22)
        {
          goto LABEL_101;
        }

        if (v21 == 2)
        {
          if (v30 < *(v18 + 16))
          {
            goto LABEL_109;
          }

          if (v30 >= *(v18 + 24))
          {
            goto LABEL_112;
          }

          v51 = sub_26C008E9C();
          if (!v51)
          {
            goto LABEL_126;
          }

          v48 = v51;
          v52 = sub_26C008ECC();
          v50 = v30 - v52;
          if (__OFSUB__(v30, v52))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v21 != 1)
          {
            if (v30 >= BYTE6(v19))
            {
              goto LABEL_110;
            }

            v92 = v18;
            v93 = v19;
            v94 = BYTE2(v19);
            v95 = BYTE3(v19);
            v96 = BYTE4(v19);
            v97 = BYTE5(v19);
            v53 = *(&v92 + v30);
            goto LABEL_87;
          }

          if (v30 < v18 || v30 >= v18 >> 32)
          {
            goto LABEL_111;
          }

          v47 = sub_26C008E9C();
          if (!v47)
          {
            goto LABEL_125;
          }

          v48 = v47;
          v49 = sub_26C008ECC();
          v50 = v30 - v49;
          if (__OFSUB__(v30, v49))
          {
            goto LABEL_113;
          }
        }

        v53 = *(v48 + v50);
LABEL_87:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_26C011280;
        *(v54 + 56) = MEMORY[0x277D84B78];
        *(v54 + 64) = MEMORY[0x277D84BC0];
        *(v54 + 32) = v53;
        v55 = sub_26C00A4BC();
        v57 = v56;
        v59 = *(v90 + 16);
        v58 = *(v90 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_26BECB834((v58 > 1), v59 + 1, 1);
        }

        *(v90 + 16) = v59 + 1;
        v60 = v90 + 16 * v59;
        *(v60 + 32) = v55;
        *(v60 + 40) = v57;
        ++v30;
        --v22;
        LODWORD(v21) = v19 >> 62;
        if (!v22)
        {
          v1 = v77;
          v0 = v78;
LABEL_91:
          v2 = v79;
LABEL_92:
          *v76 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
          v61 = sub_26C00A3EC();
          v63 = v62;

          MEMORY[0x26D699090](v61, v63);

          v81[7] = MEMORY[0x277D837D0];
          v81[4] = 0xD000000000000012;
          v81[5] = 0x800000026C02CD50;
          sub_26C00B03C();

          sub_26BE00258(v18, v19);
          sub_26BF26D4C(v0 + 16);
          v4 = v83;
          v3 = v84;
          v5 = v82;
          v6 = v88;
          goto LABEL_6;
        }
      }
    }

    sub_26BF26D4C(v0 + 136);
    sub_26BF26CF0(v0 + 16, v0 + 256);
    if (*(v0 + 369) != 1)
    {
      v69 = *(v0 + 624);
      v70 = *(v0 + 608);
      v71 = *(v0 + 600);
      v72 = *(v0 + 592);

      sub_26BF26D4C(v0 + 256);
      sub_26BE773C4();
      swift_allocError();
      *v73 = xmmword_26C01D5F0;
      swift_willThrow();
      sub_26BE132D4(v71, v70);

      sub_26BF26D4C(v78 + 16);
      v67 = *(v78 + 8);
      v74 = *MEMORY[0x277D85DE8];
      goto LABEL_97;
    }

    v10 = *(v0 + 272);
    *v3 = *(v0 + 256);
    *(v3 + 16) = v10;
    v11 = *(v0 + 304);
    *(v3 + 32) = *(v0 + 288);
    *(v3 + 48) = v11;
    *(v3 + 112) = *(v0 + 368);
    v12 = *(v0 + 352);
    *(v3 + 80) = *(v0 + 336);
    *(v3 + 96) = v12;
    *(v3 + 64) = *(v0 + 320);
    if (*(v4 + 32) != 1)
    {
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    v16 = v15 >> 62;
    v86 = v13;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v25 = MEMORY[0x277D84F90];
        goto LABEL_4;
      }

      v87 = v6;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v17 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_116;
      }

      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v87 = v6;
      if (v16)
      {
        v31 = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_117;
        }

        v17 = v31;
        if (!v31)
        {
LABEL_35:
          v25 = MEMORY[0x277D84F90];
          goto LABEL_3;
        }
      }

      else
      {
        v17 = BYTE6(v15);
        if (!BYTE6(v15))
        {
          goto LABEL_35;
        }
      }
    }

    v89 = MEMORY[0x277D84F90];
    sub_26BECB834(0, v17 & ~(v17 >> 63), 0);
    v25 = v89;
    if (v16 == 2)
    {
      v26 = *(v14 + 16);
      goto LABEL_38;
    }

    if (v16 == 1)
    {
      v26 = v14;
LABEL_38:
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

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
    }

    if (v17 < 0)
    {
      goto LABEL_119;
    }

    v26 = 0;
    do
    {
LABEL_42:
      if (!v17)
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      if (v16 == 2)
      {
        if (v26 < *(v14 + 16))
        {
          goto LABEL_102;
        }

        if (v26 >= *(v14 + 24))
        {
          goto LABEL_105;
        }

        v36 = sub_26C008E9C();
        if (!v36)
        {
          goto LABEL_124;
        }

        v33 = v36;
        v37 = sub_26C008ECC();
        v35 = v26 - v37;
        if (__OFSUB__(v26, v37))
        {
          goto LABEL_107;
        }

        goto LABEL_55;
      }

      if (v16 == 1)
      {
        if (v26 < v14 || v26 >= v14 >> 32)
        {
          goto LABEL_104;
        }

        v32 = sub_26C008E9C();
        if (!v32)
        {
          goto LABEL_123;
        }

        v33 = v32;
        v34 = sub_26C008ECC();
        v35 = v26 - v34;
        if (__OFSUB__(v26, v34))
        {
          goto LABEL_106;
        }

LABEL_55:
        v38 = *(v33 + v35);
        goto LABEL_58;
      }

      if (v26 >= BYTE6(v15))
      {
        goto LABEL_103;
      }

      v92 = v14;
      v93 = v15;
      v94 = BYTE2(v15);
      v95 = BYTE3(v15);
      v96 = BYTE4(v15);
      v97 = BYTE5(v15);
      v38 = *(&v92 + v26);
LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26C011280;
      *(v39 + 56) = MEMORY[0x277D84B78];
      *(v39 + 64) = MEMORY[0x277D84BC0];
      *(v39 + 32) = v38;
      v40 = sub_26C00A4BC();
      v91 = v25;
      v43 = *(v25 + 16);
      v42 = *(v25 + 24);
      if (v43 >= v42 >> 1)
      {
        v85 = v40;
        v45 = v41;
        sub_26BECB834((v42 > 1), v43 + 1, 1);
        v41 = v45;
        v40 = v85;
        v25 = v91;
      }

      *(v25 + 16) = v43 + 1;
      v44 = v25 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      ++v26;
      --v17;
    }

    while (v17);
    v1 = v77;
    v0 = v78;
    v2 = v79;
LABEL_3:
    v6 = v87;
LABEL_4:
    *v80 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    v7 = sub_26C00A3EC();
    v9 = v8;

    MEMORY[0x26D699090](v7, v9);

    v86[7] = MEMORY[0x277D837D0];
    v86[4] = 0xD000000000000012;
    v86[5] = 0x800000026C02CD50;
    sub_26C00B03C();

    v4 = v83;
    v3 = v84;
    v5 = v82;
LABEL_5:
    sub_26BF26D4C(v0 + 16);
    sub_26BF26FBC(v3);
LABEL_6:
    if (++v6 != v2)
    {
      continue;
    }

    break;
  }

  v65 = *(v0 + 624);
LABEL_95:

  v66 = *(v0 + 592);
  sub_26BE132D4(*(v0 + 600), *(v0 + 608));

  v67 = *(v0 + 8);
  v68 = *MEMORY[0x277D85DE8];
LABEL_97:

  return v67();
}

uint64_t sub_26BF13970()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];

  sub_26BE132D4(v2, v1);
  v4 = v0[79];
  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_26BF13A1C(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  return MEMORY[0x2822009F8](sub_26BF13A40, 0, 0);
}

uint64_t sub_26BF13A40()
{
  v1 = v0[69];
  swift_beginAccess();
  v2 = *(v1 + 48);
  if (*(v2 + 16))
  {
    v3 = v0[68];
    v4 = *(v3 + 16);
    v0[70] = v4;
    v5 = *(v3 + 24);
    v0[71] = v5;

    v6 = sub_26BEBB618(v4, v5);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);

      if (*(v8 + 16))
      {
        v9 = v0[68];
        v10 = *(v9 + 32);
        v0[72] = v10;
        v11 = *(v9 + 40);
        v0[73] = v11;
        v12 = sub_26BEBB618(v10, v11);
        if (v13)
        {
          v14 = v0[68];
          v15 = *(*(v8 + 56) + 8 * v12);
          v0[74] = v15;

          v16 = *v14;
          v0[75] = *v14;
          v17 = v14[1];
          v0[76] = v17;
          v0[54] = v16;
          v0[55] = v17;
          v18 = *(*v15 + 600);

          v24 = (v18 + *v18);
          v19 = v18[1];
          v20 = swift_task_alloc();
          v0[77] = v20;
          *v20 = v0;
          v20[1] = sub_26BF13CB8;

          return (v24)(v0 + 19, v0 + 54);
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v22 = xmmword_26C01D5E0;
  swift_willThrow();
  v23 = v0[1];

  return v23();
}

uint64_t sub_26BF13CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v7 = *v1;
  *(*v1 + 624) = v0;

  v4 = *(v2 + 440);

  if (v0)
  {
    v5 = sub_26BF15624;
  }

  else
  {
    v5 = sub_26BF13DDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF13DDC()
{
  *(v0 + 232) = *(v0 + 152);
  v1 = *(v0 + 216);
  *(v0 + 280) = *(v0 + 200);
  *(v0 + 296) = v1;
  *(v0 + 248) = *(v0 + 168);
  *(v0 + 264) = *(v0 + 184);
  v2 = *(v0 + 232);
  v10 = *(v0 + 280);
  *(v0 + 632) = v2;
  *(v0 + 648) = v10;
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  *(v0 + 664) = v3;
  *(v0 + 672) = v4;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 448) = v2;
  *(v0 + 464) = xmmword_26C00DA60;
  sub_26BE00608(v2, *(&v2 + 1));
  sub_26BE00608(v10, *(&v10 + 1));
  sub_26BE00608(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 680) = v5;
  *v5 = v0;
  v5[1] = sub_26BF13F3C;
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v8 = *(v0 + 552);

  return sub_26BEFDA68((v0 + 448), v7, v6, v0 + 16, 0, 0, (v0 + 464), 0);
}

uint64_t sub_26BF13F3C()
{
  v2 = *(*v1 + 680);
  v3 = *v1;
  v3[86] = v0;

  if (v0)
  {
    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);

    return MEMORY[0x2822009F8](sub_26BF15688, 0, 0);
  }

  else
  {
    v4 = v3[74];

    sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
    v9 = (*v4 + 624);
    v10 = (*v9 + **v9);
    v5 = (*v9)[1];
    v6 = swift_task_alloc();
    v3[87] = v6;
    *v6 = v3;
    v6[1] = sub_26BF1418C;
    v7 = v3[74];

    return v10();
  }
}

uint64_t sub_26BF1418C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v7 = sub_26BF1573C;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    v7 = sub_26BF142B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF142B8()
{
  if (*(v0 + 145) == 1)
  {
    v1 = *(v0 + 552);
    swift_beginAccess();
    v2 = *(v1 + 56);
    v3 = *(v2 + 16);

    if (v3 && (v4 = sub_26BEBB618(*(v0 + 576), *(v0 + 584)), (v5 & 1) != 0))
    {
      v6 = *(*(v2 + 56) + 8 * v4);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v17 = *(v6 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = -v17;
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = (v6 + 40 + 16 * v18++);
        while (1)
        {
          if ((v18 - 1) >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v22 = *(v21 - 1);
          v23 = *v21;
          if (v22 != *(v0 + 560) || v23 != *(v0 + 568))
          {
            v25 = *(v21 - 1);
            v26 = *v21;
            result = sub_26C00AF2C();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          ++v18;
          v21 += 2;
          if (v19 + v18 == 1)
          {
            goto LABEL_24;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26BECB834(0, *(v20 + 16) + 1, 1);
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          result = sub_26BECB834((v27 > 1), v28 + 1, 1);
          v29 = v28 + 1;
        }

        *(v20 + 16) = v29;
        v30 = v20 + 16 * v28;
        *(v30 + 32) = v22;
        *(v30 + 40) = v23;
      }

      while (v19 + v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_24:
    *(v0 + 712) = v20;

    v31 = *(v20 + 16);
    *(v0 + 720) = v31;
    if (v31)
    {
      *(v0 + 728) = 0;
      v32 = *(v0 + 712);
      if (v32[2])
      {
        v33 = *(v0 + 552);
        v34 = v32[4];
        *(v0 + 744) = v34;
        v35 = v32[5];
        *(v0 + 752) = v35;
        v36 = *(v33 + 48);
        if (*(v36 + 16))
        {

          result = sub_26BEBB618(v34, v35);
          if (v37)
          {
            v38 = *(*(v36 + 56) + 8 * result);
            if (*(v38 + 16))
            {
              v39 = *(v0 + 584);
              v40 = *(v0 + 576);
              v41 = *(*(v36 + 56) + 8 * result);

              v42 = sub_26BEBB618(v40, v39);
              LOBYTE(v40) = v43;

              if (v40)
              {
                v44 = *(v0 + 656);
                v45 = *(v0 + 648);
                v46 = *(*(v38 + 56) + 8 * v42);
                *(v0 + 760) = v46;

                *(v0 + 480) = v45;
                *(v0 + 488) = v44;
                v47 = *(*v46 + 608);
                sub_26BE00608(v45, v44);
                v58 = (v47 + *v47);
                v48 = v47[1];
                v49 = swift_task_alloc();
                *(v0 + 768) = v49;
                *v49 = v0;
                v49[1] = sub_26BF147A0;

                return v58();
              }

LABEL_42:
              __break(1u);
              return result;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

    v50 = *(v0 + 712);
    v51 = *(v0 + 672);
    v52 = *(v0 + 664);
    v53 = *(v0 + 656);
    v54 = *(v0 + 648);
    v55 = *(v0 + 640);
    v56 = *(v0 + 632);
    v57 = *(v0 + 592);

    sub_26BE00258(v54, v53);
    sub_26BE00258(v52, v51);
    sub_26BE00258(v56, v55);

    sub_26BF271D0(v0 + 232);
    v15 = *(v0 + 8);
  }

  else
  {
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 592);
    sub_26BE01654();
    swift_allocError();
    *v14 = 8;
    v14[112] = 9;
    swift_willThrow();
    sub_26BE00258(v8, v7);
    sub_26BE00258(v10, v9);
    sub_26BE00258(v12, v11);
    sub_26BF271D0(v0 + 232);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_26BF147A0()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v8 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = v2[94];
    v5 = v2[89];
    sub_26BE00258(v2[60], v2[61]);

    v6 = sub_26BF157F0;
  }

  else
  {
    sub_26BE00258(v2[60], v2[61]);
    v6 = sub_26BF148E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF148E4()
{
  v1 = *(**(v0 + 760) + 624);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 784) = v3;
  *v3 = v0;
  v3[1] = sub_26BF14A04;
  v4 = *(v0 + 760);

  return v6();
}

uint64_t sub_26BF14A04(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 784);
  v6 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {
    v7 = *(v4 + 752);
    v8 = *(v4 + 712);

    v9 = sub_26BF158B0;
  }

  else
  {
    *(v4 + 146) = a1 & 1;
    v9 = sub_26BF14B44;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF14B44()
{
  if (*(v0 + 146) == 1)
  {
    v1 = (v0 + 664);
    v2 = *(v0 + 544);
    v3 = *(v2 + 56);
    if (!v3 || ((result = *(v2 + 48), result == *(v0 + 744)) ? (v5 = v3 == *(v0 + 752)) : (v5 = 0), !v5 && (result = sub_26C00AF2C(), (result & 1) == 0)))
    {
      sub_26BE00608(*(v0 + 664), *(v0 + 672));
      v20 = *(v0 + 736);
      v21 = *v1;
LABEL_30:
      *(v0 + 808) = v21;
      *(v0 + 800) = v20;
      v37 = *(v0 + 760);
      *(v0 + 496) = v21;
      v38 = *(*v37 + 616);
      sub_26BE00608(v21, *(&v21 + 1));
      v42 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 824) = v40;
      *v40 = v0;
      v40[1] = sub_26BF14F38;
      v41 = *(v0 + 760);

      return v42(v0 + 312, v0 + 496);
    }

    v6 = *(v0 + 672);
    v7 = v6 >> 62;
    if ((v6 >> 62) <= 1)
    {
      if (!v7)
      {
        v8 = BYTE6(v6);
        if (!BYTE6(v6))
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      v32 = *(v0 + 668);
      v33 = v32 - *v1;
      if (!__OFSUB__(v32, *v1))
      {
        v8 = v33;
        if (!v33)
        {
          goto LABEL_24;
        }

LABEL_19:
        if (v8 > 14)
        {
          v24 = *v1;
          v25 = *(v0 + 672);
          v26 = sub_26C008EEC();
          v27 = *(v26 + 48);
          v28 = *(v26 + 52);
          swift_allocObject();
          sub_26BE00608(v24, v25);
          v29 = sub_26C008EAC();
          if (v8 >= 0x7FFFFFFF)
          {
            sub_26C00904C();
            v30 = swift_allocObject();
            *(v30 + 16) = 0;
            *(v30 + 24) = v8;
            v31 = v29 | 0x8000000000000000;
          }

          else
          {
            v30 = v8 << 32;
            v31 = v29 | 0x4000000000000000;
          }

          v20 = *(v0 + 736);
          goto LABEL_29;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          v20 = *(v0 + 736) & 0xF00000000000000 | (v8 << 48);
          sub_26BE00608(*(v0 + 664), v6);
          v30 = 0;
          v31 = v20;
          goto LABEL_29;
        }

LABEL_35:
        __break(1u);
        return result;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 == 2)
    {
      v22 = *(*v1 + 16);
      v23 = *(*v1 + 24);
      v8 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    sub_26BE00608(*(v0 + 664), v6);
    v30 = 0;
    v20 = *(v0 + 736);
    v31 = 0xC000000000000000;
LABEL_29:
    v34 = *(v0 + 792);
    v35 = *(v0 + 672);
    v36 = *(v0 + 664);
    *(v0 + 528) = v30;
    *(v0 + 536) = v31;
    sub_26BFA5C8C((v0 + 528), 255);
    sub_26BE00258(v36, v35);
    v21 = *(v0 + 528);
    goto LABEL_30;
  }

  v43 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 712);
  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 592);

  sub_26BE01654();
  swift_allocError();
  *v18 = 8;
  v18[112] = 9;
  swift_willThrow();
  sub_26BE00258(v14, v13);
  sub_26BE00258(v12, v11);
  sub_26BE00258(v16, v15);

  sub_26BF271D0(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26BF14F38()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v8 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v4 = v2[94];
    v5 = v2[89];
    sub_26BE00258(v2[62], v2[63]);

    v6 = sub_26BF15970;
  }

  else
  {
    sub_26BE00258(v2[62], v2[63]);
    v6 = sub_26BF1507C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1507C()
{
  v2 = v0[39];
  v1 = v0[40];
  if (!v1)
  {
    goto LABEL_18;
  }

  if (v2 != v0[75] || v1 != v0[76])
  {
    v4 = v0[39];
    v5 = v0[40];
    if ((sub_26C00AF2C() & 1) == 0)
    {

LABEL_18:
      v42 = v0[94];
      v43 = v0[93];
      v44 = v0[89];
      v55 = v0[101];
      v56 = v0[84];
      v53 = v0[95];
      v54 = v0[83];
      v59 = v0[102];
      v60 = v0[82];
      v57 = v0[81];
      v45 = v0[79];
      v46 = v0[76];
      v47 = v0[75];
      v51 = v0[74];
      v52 = v0[80];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_26C011280;
      sub_26C00AC1C();

      MEMORY[0x26D699090](v47, v46);
      MEMORY[0x26D699090](0x20746F67202CLL, 0xE600000000000000);
      v0[64] = v2;
      v0[65] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
      v49 = sub_26C00A4FC();
      MEMORY[0x26D699090](v49);

      MEMORY[0x26D699090](0x6C6320726F66202CLL, 0xED000020746E6569);
      MEMORY[0x26D699090](v43, v42);

      MEMORY[0x26D699090](41, 0xE100000000000000);
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 32) = 0xD000000000000018;
      *(v48 + 40) = 0x800000026C02CE00;
      sub_26C00B03C();

      sub_26BE01654();
      swift_allocError();
      *v50 = 8;
      v50[112] = 9;
      swift_willThrow();

      sub_26BE00258(v45, v52);

      sub_26BF271D0((v0 + 29));
      sub_26BE00258(v55, v59);
      sub_26BE00258(v54, v56);
      sub_26BE00258(v57, v60);
      sub_26BF27224((v0 + 39));
      v21 = v0[1];
      goto LABEL_19;
    }
  }

  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[90];
  v11 = v0[91] + 1;

  sub_26BF27224((v0 + 39));
  sub_26BE00258(v7, v6);

  if (v11 == v10)
  {
    v13 = v0[89];
    v14 = v0[84];
    v15 = v0[83];
    v16 = v0[82];
    v17 = v0[81];
    v18 = v0[80];
    v19 = v0[79];
    v20 = v0[74];

    sub_26BE00258(v17, v16);
    sub_26BE00258(v15, v14);
    sub_26BE00258(v19, v18);

    sub_26BF271D0((v0 + 29));
    v21 = v0[1];
LABEL_19:

    return v21();
  }

  v22 = v0[91] + 1;
  v0[92] = v0[100];
  v0[91] = v22;
  v23 = v0[89];
  if (v22 >= *(v23 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v24 = v0[69];
  v25 = v23 + 16 * v22;
  v26 = *(v25 + 32);
  v0[93] = v26;
  v27 = *(v25 + 40);
  v0[94] = v27;
  v28 = *(v24 + 48);
  if (!*(v28 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_26BEBB618(v26, v27);
  if ((v29 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = *(*(v28 + 56) + 8 * result);
  if (!*(v30 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v0[73];
  v32 = v0[72];
  v33 = *(*(v28 + 56) + 8 * result);

  v34 = sub_26BEBB618(v32, v31);
  LOBYTE(v32) = v35;

  if ((v32 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v36 = v0[82];
  v37 = v0[81];
  v38 = *(*(v30 + 56) + 8 * v34);
  v0[95] = v38;

  v0[60] = v37;
  v0[61] = v36;
  v39 = *(*v38 + 608);
  sub_26BE00608(v37, v36);
  v58 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  v0[96] = v41;
  *v41 = v0;
  v41[1] = sub_26BF147A0;

  return v58();
}

uint64_t sub_26BF15624()
{
  v1 = v0[74];

  v2 = v0[78];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF15688()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[74];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v2, v1);

  sub_26BF271D0((v0 + 29));
  sub_26BE00258(v4, v3);
  v6 = v0[86];
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF1573C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[74];
  sub_26BE00258(v0[83], v0[84]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BF271D0((v0 + 29));

  v6 = v0[88];
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF157F0()
{
  v1 = v0[95];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[74];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v3, v2);

  sub_26BE00258(v5, v4);

  sub_26BF271D0((v0 + 29));
  v7 = v0[97];
  v8 = v0[1];

  return v8();
}

uint64_t sub_26BF158B0()
{
  v1 = v0[95];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[74];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v3, v2);
  sub_26BE00258(v5, v4);

  sub_26BF271D0((v0 + 29));

  v7 = v0[99];
  v8 = v0[1];

  return v8();
}

uint64_t sub_26BF15970()
{
  v1 = v0[95];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[74];
  sub_26BE00258(v0[101], v0[102]);
  sub_26BE00258(v5, v4);
  sub_26BE00258(v3, v2);

  sub_26BE00258(v7, v6);

  sub_26BF271D0((v0 + 29));
  v9 = v0[104];
  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF15A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_26BF15A74, 0, 0);
}

uint64_t sub_26BF15A74()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = v0[8];
  v3 = v0[9];

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_7:
    sub_26BE773C4();
    swift_allocError();
    *v13 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = *(*(v2 + 56) + 8 * v5);

  swift_beginAccess();
  v16 = *(v9 + 280);
  v17 = *(v9 + 288);

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);

  v10 = sub_26BF806E8(v16, v17, v8, v7);
  v11 = v0[11];

  if (v10)
  {

    v12 = v0[1];
    goto LABEL_11;
  }

  sub_26BE01654();
  swift_allocError();
  *v14 = 12;
  v14[112] = 9;
  swift_willThrow();

LABEL_10:
  v12 = v0[1];
LABEL_11:

  return v12();
}

uint64_t sub_26BF15C60(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_26BF15C80, 0, 0);
}

uint64_t sub_26BF15C80()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 112);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_26BEBB618(v4, v5);
  if ((v7 & 1) == 0)
  {

LABEL_11:
    sub_26BE773C4();
    swift_allocError();
    *v24 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_14;
  }

  v8 = *(v0 + 120);
  *(v0 + 128) = *(*(v2 + 56) + 8 * v6);

  swift_beginAccess();
  v9 = *(v8 + 48);
  if (*(v9 + 16))
  {
    v10 = *(v8 + 48);

    v11 = sub_26BEBB618(v4, v5);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);

      if (*(v13 + 16))
      {
        v14 = sub_26BEBB618(*(*(v0 + 112) + 16), *(*(v0 + 112) + 24));
        if (v15)
        {
          v16 = *(v0 + 112);
          v17 = *(*(v13 + 56) + 8 * v14);
          *(v0 + 136) = v17;

          v18 = *(v16 + 56);
          v19 = *(v16 + 40);
          *(v0 + 16) = *(v16 + 32);
          *(v0 + 24) = v19;
          *(v0 + 40) = v18;
          v20 = *(*v17 + 680);

          v27 = (v20 + *v20);
          v21 = v20[1];
          v22 = swift_task_alloc();
          *(v0 + 144) = v22;
          *v22 = v0;
          v22[1] = sub_26BF15F94;

          return v27(v0 + 160, v0 + 16);
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v25 = xmmword_26C01D5E0;
  swift_willThrow();

LABEL_14:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26BF15F94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  v4 = *(v2 + 40);

  if (v0)
  {
    v5 = sub_26BF162C8;
  }

  else
  {
    v5 = sub_26BF160B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF160B8()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 112) + 64);
  if (v1 == (v2 & 1))
  {
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);

    v11 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26C011280;
    sub_26C00AC1C();
    *(v0 + 96) = 0;
    *(v0 + 104) = 0xE000000000000000;
    MEMORY[0x26D699090](0xD00000000000002ELL, 0x800000026C02CE20);
    if (v2)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x26D699090](v6, v7);

    MEMORY[0x26D699090](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 161) = v1;
    sub_26C00AD4C();
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_26C00B03C();

    sub_26BE01654();
    swift_allocError();
    *v10 = 12;
    v10[112] = 9;
    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_26BF162C8()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[19];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF16334(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
  return MEMORY[0x2822009F8](sub_26BF16354, 0, 0);
}

uint64_t sub_26BF16354()
{
  v1 = v0[46];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = v0[45];
    v4 = *v3;
    v0[47] = *v3;
    v5 = v3[1];
    v0[48] = v5;
    swift_bridgeObjectRetain_n();

    v6 = sub_26BEBB618(v4, v5);
    if (v7)
    {
      v8 = v0[45];
      v9 = v0[46];
      v0[49] = *(*(v2 + 56) + 8 * v6);

      v10 = *(v8 + 16);
      v0[50] = v10;
      v11 = *(v8 + 24);
      v0[51] = v11;
      swift_beginAccess();
      v12 = *(v9 + 48);
      if (*(v12 + 16))
      {

        v2 = v12;
        v13 = sub_26BEBB618(v4, v5);
        if (v14)
        {
          v2 = *(*(v12 + 56) + 8 * v13);
          if (*(v2 + 16))
          {
            v15 = *(*(v12 + 56) + 8 * v13);

            v16 = sub_26BEBB618(v10, v11);
            v18 = v17;

            if (v18)
            {
              v19 = v0[45];
              v0[52] = *(*(v2 + 56) + 8 * v16);

              v2 = *(v19 + 32);
              v0[53] = v2;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v21 = v2;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_8;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            v21 = sub_26BEEDAF4(0, *(v2 + 16) + 1, 1, v2);
LABEL_8:
            v23 = *(v21 + 2);
            v22 = *(v21 + 3);
            v24 = v23 + 1;
            if (v23 >= v22 >> 1)
            {
              v21 = sub_26BEEDAF4((v22 > 1), v23 + 1, 1, v21);
            }

            v0[54] = v21;
            *(v21 + 2) = v24;
            v25 = &v21[16 * v23];
            *(v25 + 4) = v4;
            *(v25 + 5) = v5;
            v26 = sub_26C005DBC(MEMORY[0x277D84F90]);
            v27 = *(v2 + 16);
            v0[55] = v27;
            if (!v27)
            {
              v0[63] = v26;
              v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
              v50 = swift_allocObject();
              v0[65] = v50;
              *(v50 + 16) = xmmword_26C0125B0;
              *(v50 + 56) = MEMORY[0x277D837D0];
              *(v50 + 32) = 6648432;
              *(v50 + 40) = 0xE300000000000000;
              v51 = swift_task_alloc();
              v0[66] = v51;
              *v51 = v0;
              v51[1] = sub_26BF16E90;
              v46 = v0[52];
              v45 = &unk_26C01D920;
              v44 = v46;
              v47 = sub_26BEAE7D0;

              return v47(v44, v45, v46);
            }

            v0[56] = v26;
            v0[57] = 0;
            v28 = *(v0[46] + 40);
            if (*(v28 + 16))
            {
              v29 = v0[53];
              v31 = *(v29 + 32);
              v30 = *(v29 + 40);

              v32 = v31;
              v2 = v28;
              v33 = sub_26BEBB618(v32, v30);
              if (v34)
              {
                v2 = *(*(v28 + 56) + 8 * v33);
                v0[58] = v2;

                result = swift_beginAccess();
                v28 = *(v2 + 32);
                if ((~v28 & 0x3000000000000000) == 0 || (v28 & 0x2000000000000000) == 0)
                {
                  goto LABEL_43;
                }

                v24 = *(v2 + 24);
                if ((v24 & 0xC000000000000001) == 0)
                {
                  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_41;
                  }

                  v36 = *(v24 + 32);
                  sub_26BE2958C(*(v2 + 24), *(v2 + 32));
                  v37 = v36;
LABEL_18:
                  v38 = v37;
                  v39 = SecCertificateCopyURIs();
                  if (v39)
                  {
                    v40 = v39;

                    v41 = v40;
                    sub_26BE2962C(v24, v28);

                    v0[41] = v41;
                    type metadata accessor for CFArray(0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
                    result = swift_dynamicCast();
                    if (!result)
                    {
                      goto LABEL_43;
                    }

                    v42 = v0[42];
                    if (!v42)
                    {
                      goto LABEL_43;
                    }

                    if (v42[2])
                    {
                      v0[59] = v42[4];
                      v0[60] = v42[5];

                      v43 = swift_task_alloc();
                      v0[61] = v43;
                      *v43 = v0;
                      v43[1] = sub_26BF168F0;
                      v44 = (v0 + 37);
                      v45 = v2;
                      v46 = v2;
                      v47 = sub_26BE8E304;

                      return v47(v44, v45, v46);
                    }

LABEL_42:

LABEL_43:
                    __break(1u);
                    return result;
                  }

LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

LABEL_39:
                sub_26BE04890(v24, v28);
                v37 = MEMORY[0x26D6996F0](0, v24);
                goto LABEL_18;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_39;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    swift_bridgeObjectRelease_n();
  }

  sub_26BE773C4();
  swift_allocError();
  *v48 = xmmword_26C01D5C0;
  swift_willThrow();
  v49 = v0[1];

  return v49();
}

uint64_t sub_26BF168F0()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v9 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = v2[60];
    v5 = v2[51];
    v6 = v2[48];

    v7 = sub_26BF16A24;
  }

  else
  {
    v7 = sub_26BF16AC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF16A24()
{
  v1 = v0[58];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[49];

  v6 = v0[62];
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF16AC0()
{
  v36 = v0;
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[57] + 1;
  v7 = v0[37];
  v8 = v0[38];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v4;
  v10 = &v35;
  sub_26BE57F90(v7, v8, v2, v1, isUniquelyReferenced_nonNull_native);

  if (v6 == v5)
  {
    v0[63] = v35;
    v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v11 = swift_allocObject();
    v0[65] = v11;
    *(v11 + 16) = xmmword_26C0125B0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 6648432;
    *(v11 + 40) = 0xE300000000000000;
    v12 = swift_task_alloc();
    v0[66] = v12;
    *v12 = v0;
    v12[1] = sub_26BF16E90;
    v13 = v0[52];
    v14 = &unk_26C01D920;
    v15 = v13;
    v16 = sub_26BEAE7D0;

    return v16(v15, v14, v13);
  }

  v18 = v0[57] + 1;
  v0[56] = v35;
  v0[57] = v18;
  v19 = *(v0[46] + 40);
  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = v0[53] + 16 * v18;
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);

  v23 = v22;
  v10 = v19;
  v24 = sub_26BEBB618(v23, v21);
  if ((v25 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_26BE04890(v3, v19);
    v28 = MEMORY[0x26D6996F0](0, v3);
    goto LABEL_14;
  }

  v10 = *(*(v19 + 56) + 8 * v24);
  v0[58] = v10;

  result = swift_beginAccess();
  v19 = v10[4];
  if ((~v19 & 0x3000000000000000) == 0 || (v19 & 0x2000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v3 = v10[3];
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(v3 + 32);
  sub_26BE2958C(v10[3], v10[4]);
  v28 = v27;
LABEL_14:
  v29 = v28;
  v30 = SecCertificateCopyURIs();
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;

  v32 = v31;
  sub_26BE2962C(v3, v19);

  v0[41] = v32;
  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_27;
  }

  v33 = v0[42];
  if (!v33)
  {
    goto LABEL_27;
  }

  if (v33[2])
  {
    v0[59] = v33[4];
    v0[60] = v33[5];

    v34 = swift_task_alloc();
    v0[61] = v34;
    *v34 = v0;
    v34[1] = sub_26BF168F0;
    v15 = (v0 + 37);
    v14 = v10;
    v13 = v10;
    v16 = sub_26BE8E304;

    return v16(v15, v14, v13);
  }

LABEL_26:

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26BF16E90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v7 = sub_26BF1729C;
  }

  else
  {
    *(v4 + 544) = a1;
    v7 = sub_26BF16FB8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF16FB8()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[52];
  *(v2 + 88) = MEMORY[0x277D84A28];
  *(v2 + 64) = v1;
  sub_26C00B03C();

  v0[43] = v3;
  v5 = *(*v4 + 664);

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[69] = v7;
  *v7 = v0;
  v7[1] = sub_26BF17144;
  v8 = v0[52];

  return (v10)(v0 + 2, v0 + 43);
}

uint64_t sub_26BF17144()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v12 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = v2[63];
    v5 = v2[54];
    v6 = v2[51];
    v7 = v2[48];

    v8 = v2[43];

    v9 = sub_26BF18960;
  }

  else
  {
    v10 = v2[43];

    v9 = sub_26BF172B8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF172B8()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v2;
  *(v0 + 160) = *(v0 + 80);
  v3 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v3;
  v4 = swift_allocObject();
  *(v0 + 568) = v4;
  *(v4 + 16) = xmmword_26C0125B0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 1953722224;
  *(v4 + 40) = 0xE400000000000000;
  v5 = swift_task_alloc();
  *(v0 + 576) = v5;
  *v5 = v0;
  v5[1] = sub_26BF173C8;
  v6 = *(v0 + 416);

  return sub_26BEAE7D0(v6, &unk_26C01D928, v6);
}

uint64_t sub_26BF173C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v7 = sub_26BF17694;
  }

  else
  {
    *(v4 + 592) = a1;
    v7 = sub_26BF174F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF174F0()
{
  v1 = v0[74];
  v2 = v0[71];
  *(v2 + 88) = MEMORY[0x277D84A28];
  *(v2 + 64) = v1;
  sub_26C00B03C();

  v4 = v0[12];
  v3 = v0[13];
  v0[75] = v4;
  v0[76] = v3;
  result = v0[14];
  v6 = v0[15];
  v0[77] = result;
  v0[78] = v6;
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[52];
    v0[39] = v4;
    v0[40] = v3;
    v8 = *(*v7 + 448);
    sub_26BE2BAE8(result, v6);
    sub_26BE00608(v4, v3);
    v12 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[79] = v10;
    *v10 = v0;
    v10[1] = sub_26BF176B0;
    v11 = v0[52];

    return v12(v0 + 39);
  }

  return result;
}

uint64_t sub_26BF176B0()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v10 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = v2[63];
    v5 = v2[54];
    v6 = v2[51];
    v7 = v2[48];

    v8 = sub_26BF189D0;
  }

  else
  {

    v8 = sub_26BF17804;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BF17804()
{
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  swift_beginAccess();
  v5 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 48);
  v65 = v7;
  *(v4 + 48) = 0x8000000000000000;
  v9 = sub_26BEBB618(v3, v2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v3) = v8;
  if (*(v7 + 24) < result)
  {
    v14 = v0[47];
    v13 = v0[48];
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v14, v13);
    if ((v3 & 1) == (v15 & 1))
    {
      v9 = result;
      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_11:

    return sub_26C00AF8C();
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v8)
  {
LABEL_8:
    while (1)
    {
      v16 = v0[50];
      v3 = v0[51];
      v1 = v65;
      v17 = *(*(v65 + 56) + 8 * v9);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v17;
      result = sub_26BEBB618(v16, v3);
      v20 = *(v17 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (!v22)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_26BE6F250();
      if ((v3 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    LOBYTE(v3) = v19;
    if (*(v17 + 24) >= v23)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = v0[50];
      v24 = v0[51];
      sub_26BE6C208(v23, v18);
      result = sub_26BEBB618(v25, v24);
      if ((v3 & 1) != (v26 & 1))
      {
        goto LABEL_11;
      }
    }

    if ((v3 & 1) == 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_16;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v63 = result;
  sub_26BE6F278();
  result = v63;
  if ((v3 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  v64 = v0[55];
  v28 = v0[51];
  v27 = v0[52];
  v29 = v0[48];
  v30 = v0[46];
  v31 = *(*(v66 + 56) + 8 * result);
  v32 = result;
  swift_retain_n();

  *(*(v66 + 56) + 8 * v32) = v27;

  *(*(v1 + 56) + 8 * v9) = v66;

  *(v30 + 48) = v1;
  result = swift_endAccess();
  if (v64)
  {
    v33 = v0[53];
    v0[81] = 0;
    v34 = v0[46];
    v35 = *(v33 + 32);
    v0[82] = v35;
    v36 = *(v33 + 40);
    v0[83] = v36;
    v37 = *(v34 + 40);
    if (!*(v37 + 16))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    result = sub_26BEBB618(v35, v36);
    if ((v38 & 1) == 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = v0[46];
    v40 = *(*(v37 + 56) + 8 * result);
    v0[84] = v40;

    v41 = *(v39 + 48);
    if (!*(v41 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_26BEBB618(v35, v36);
    if ((v42 & 1) == 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v43 = *(*(v41 + 56) + 8 * result);
    if (!*(v43 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v45 = v0[50];
    v44 = v0[51];
    v46 = *(*(v41 + 56) + 8 * result);

    v47 = sub_26BEBB618(v45, v44);
    LOBYTE(v45) = v48;

    if ((v45 & 1) == 0)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v49 = v0[78];
    v50 = v0[77];
    v0[85] = *(*(v43 + 56) + 8 * v47);

    sub_26BE2BAE8(v50, v49);

    v51 = swift_task_alloc();
    v0[86] = v51;
    *v51 = v0;
    v51[1] = sub_26BF17CC0;
    v52 = v0[78];
    v53 = v0[77];

    return sub_26BEAD328(v40, v40, v53, v52, 0, 0xF000000000000000);
  }

  else
  {
    v54 = v0[78];
    v55 = v0[77];
    v56 = v0[76];
    v57 = v0[75];
    v58 = v0[63];
    v59 = v0[54];
    v60 = v0[52];
    v61 = v0[49];

    sub_26BE00258(v57, v56);
    sub_26BE132D4(v55, v54);

    sub_26BE415F8((v0 + 12));

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_26BF17CC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v8 = *v2;
  v3[87] = a1;
  v3[88] = v1;

  if (v1)
  {
    v5 = v3[83];
    sub_26BE132D4(v3[77], v3[78]);

    v6 = sub_26BF17FD0;
  }

  else
  {
    sub_26BE132D4(v3[77], v3[78]);
    v6 = sub_26BF17DFC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF17DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_26BF17EB8;
  v2 = *(v0 + 680);

  return sub_26BEAF004(v2, &unk_26C01D930, v2);
}

uint64_t sub_26BF17EB8(int a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v7 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 720) = v1;

  if (v1)
  {
    v5 = sub_26BF182A4;
  }

  else
  {
    v5 = sub_26BF180C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF17FD0()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[63];
  v8 = v0[54];
  v9 = v0[52];
  v10 = v0[49];

  sub_26BE415F8((v0 + 12));
  sub_26BE00258(v6, v5);

  sub_26BE132D4(v4, v3);
  v11 = v0[88];
  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF180C0()
{
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_26BF1817C;
  v2 = *(v0 + 696);

  return sub_26BEAF004(v2, &unk_26C01D938, v2);
}

uint64_t sub_26BF1817C(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 728);
  v6 = *v2;
  *(*v2 + 736) = v1;

  if (v1)
  {
    v7 = sub_26BF2730C;
  }

  else
  {
    *(v4 + 756) = a1;
    v7 = sub_26BF182C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF182C0()
{
  v1 = *(v0 + 756);
  v2 = *(v0 + 752);
  if (v2 >= v1)
  {
    v79 = *(v0 + 696);
    v80 = *(v0 + 680);
    v81 = *(v0 + 672);
    v20 = *(v0 + 664);
    v21 = *(v0 + 656);
    v76 = *(v0 + 616);
    v77 = *(v0 + 624);
    v22 = *(v0 + 608);
    v23 = *(v0 + 600);
    v24 = *(v0 + 504);
    v25 = *(v0 + 432);
    v26 = *(v0 + 408);
    v78 = *(v0 + 416);
    v27 = *(v0 + 400);
    v75 = *(v0 + 392);

    sub_26C00AC1C();
    MEMORY[0x26D699090](0x2070756F7247, 0xE600000000000000);
    MEMORY[0x26D699090](v27, v26);
    MEMORY[0x26D699090](0x696C6320726F6620, 0xEC00000020746E65);
    MEMORY[0x26D699090](v21, v20);

    MEMORY[0x26D699090](0xD00000000000001DLL, 0x800000026C02CE50);
    *(v0 + 744) = v2;
    v28 = sub_26C00AEFC();
    MEMORY[0x26D699090](v28);

    MEMORY[0x26D699090](0x203A77656E202CLL, 0xE700000000000000);
    *(v0 + 748) = v1;
    v29 = sub_26C00AEFC();
    MEMORY[0x26D699090](v29);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE773C4();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    swift_willThrow();
    sub_26BE415F8(v0 + 96);
    sub_26BE00258(v23, v22);
    sub_26BE132D4(v76, v77);

    v31 = *(v0 + 8);
LABEL_18:

    return v31();
  }

  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 408);
  v6 = *(v0 + 368);
  swift_beginAccess();

  v7 = *(v6 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + 48);
  *(v0 + 352) = v9;
  *(v6 + 48) = 0x8000000000000000;
  v11 = sub_26BEBB618(v4, v3);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  result = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v10;
  if (*(v9 + 24) >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_26BE6F250();
    }
  }

  else
  {
    v16 = *(v0 + 664);
    v17 = *(v0 + 656);
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    v18 = *(v0 + 352);
    result = sub_26BEBB618(v17, v16);
    if ((v15 & 1) != (v19 & 1))
    {

      return sub_26C00AF8C();
    }

    v11 = result;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_31;
  }

  v32 = *(v0 + 696);
  v34 = *(v0 + 400);
  v33 = *(v0 + 408);
  v35 = *(*(*(v0 + 352) + 56) + 8 * v11);

  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_26BE57AE8(v32, v34, v33, v36);

  v37 = v35;
  v38 = *(v0 + 664);
  if (v37)
  {

    v39 = *(v0 + 352);
    *(*(v39 + 56) + 8 * v11) = v37;
  }

  else
  {

    v39 = *(v0 + 352);
    sub_26BF25CA8(*(v39 + 48) + 16 * v11);
    sub_26C006458(v11, v39);
  }

  v40 = *(v0 + 696);
  v41 = *(v0 + 680);
  v42 = *(v0 + 672);
  v43 = *(v0 + 440);
  v44 = *(v0 + 648) + 1;
  *(*(v0 + 368) + 48) = v39;
  swift_endAccess();

  if (v44 == v43)
  {
    v45 = *(v0 + 624);
    v46 = *(v0 + 616);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    v49 = *(v0 + 504);
    v50 = *(v0 + 432);
    v51 = *(v0 + 416);
    v52 = *(v0 + 392);

    sub_26BE00258(v48, v47);
    sub_26BE132D4(v46, v45);

    sub_26BE415F8(v0 + 96);

    v31 = *(v0 + 8);
    goto LABEL_18;
  }

  v53 = *(v0 + 648) + 1;
  *(v0 + 648) = v53;
  v54 = *(v0 + 368);
  v55 = *(v0 + 424) + 16 * v53;
  v56 = *(v55 + 32);
  *(v0 + 656) = v56;
  v57 = *(v55 + 40);
  *(v0 + 664) = v57;
  v58 = *(v54 + 40);
  if (!*(v58 + 16))
  {
    goto LABEL_32;
  }

  result = sub_26BEBB618(v56, v57);
  if ((v59 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60 = *(v0 + 368);
  v61 = *(*(v58 + 56) + 8 * result);
  *(v0 + 672) = v61;

  v62 = *(v60 + 48);
  if (!*(v62 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_26BEBB618(v56, v57);
  if ((v63 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v64 = *(*(v62 + 56) + 8 * result);
  if (!*(v64 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v66 = *(v0 + 400);
  v65 = *(v0 + 408);
  v67 = *(*(v62 + 56) + 8 * result);

  v68 = sub_26BEBB618(v66, v65);
  LOBYTE(v66) = v69;

  if ((v66 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v70 = *(v0 + 624);
  v71 = *(v0 + 616);
  *(v0 + 680) = *(*(v64 + 56) + 8 * v68);

  sub_26BE2BAE8(v71, v70);

  v72 = swift_task_alloc();
  *(v0 + 688) = v72;
  *v72 = v0;
  v72[1] = sub_26BF17CC0;
  v73 = *(v0 + 624);
  v74 = *(v0 + 616);

  return sub_26BEAD328(v61, v61, v74, v73, 0, 0xF000000000000000);
}