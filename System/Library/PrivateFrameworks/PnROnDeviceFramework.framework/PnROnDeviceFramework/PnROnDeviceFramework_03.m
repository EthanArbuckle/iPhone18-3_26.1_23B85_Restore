void sub_25E9A39C0(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(void))
{
  v7 = *a3;

  v8 = sub_25E9D7F00();
  v9 = a4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25E9887EC(a1, a2, &v12);
    _os_log_impl(&dword_25E971000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F8C51A0](v11, -1, -1);
    MEMORY[0x25F8C51A0](v10, -1, -1);
  }

  v13 = v7;
  _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v13, a1, a2);
}

uint64_t sub_25E9A3AE8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_280F6FE78);
  __swift_project_value_buffer(v0, qword_280F6FE78);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3BA0()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_280F700F0);
  __swift_project_value_buffer(v0, qword_280F700F0);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3C58()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAB8);
  __swift_project_value_buffer(v0, qword_27FD0DAB8);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3D10()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAD0);
  __swift_project_value_buffer(v0, qword_27FD0DAD0);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3DC4()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAE8);
  __swift_project_value_buffer(v0, qword_27FD0DAE8);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3E78()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB00);
  __swift_project_value_buffer(v0, qword_27FD0DB00);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3F30()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB18);
  __swift_project_value_buffer(v0, qword_27FD0DB18);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3FE8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB30);
  __swift_project_value_buffer(v0, qword_27FD0DB30);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A40E8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB60);
  __swift_project_value_buffer(v0, qword_27FD0DB60);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A41A0()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB78);
  __swift_project_value_buffer(v0, qword_27FD0DB78);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A42CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A4380@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25E9D7F10();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_25E9A4428()
{
  result = qword_280F700E0;
  if (!qword_280F700E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F700E0);
  }

  return result;
}

uint64_t sub_25E9A4474()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9A45C0()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9A4718()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

unint64_t IEPlannerGrainMetricsRecord.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v9, v0, sizeof(v9));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v9);

  v4 = sub_25E9A9B34(v9[0], 1);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t IEPlannerGrainMetricsRecord.dictionary.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v6, v0, sizeof(v6));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v6);

  return v6[0];
}

unint64_t sub_25E9A49F8()
{
  v0 = IEPlannerGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

PnROnDeviceFramework::PlannerGrainStage_optional __swiftcall PlannerGrainStage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PlannerGrainStage.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4174736575716572;
  v3 = 0x6E776F6E6B6E75;
  if (v1 == 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x65526E6F69746361;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x64656D7265746E69;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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
    return v4;
  }
}

uint64_t sub_25E9A4BD8()
{
  *v0;
  *v0;
  *v0;
  sub_25E9D8010();
}

void sub_25E9A4D24(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0x4174736575716572;
  v5 = 0x800000025E9DCBE0;
  v6 = 0x6E776F6E6B6E75;
  if (v2 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0x800000025E9DCBB0;
  v8 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v8 = 0x65526E6F69746361;
    v7 = 0xEE0065736E6F7073;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xEC00000065746169;
  v10 = 0x64656D7265746E69;
  if (v2 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x800000025E9DCB90;
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
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25E9A4E2C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v44 = v0[6];
  v45 = v0[8];
  v56 = v0[9];
  v57 = v0[11];
  v58 = v0[7];
  v7 = *(v0 + 96);
  v46 = v0[10];
  v47 = v0[13];
  v48 = v0[14];
  v49 = v0[15];
  v50 = v0[16];
  v51 = v0[17];
  v52 = v0[18];
  v53 = v0[19];
  v8 = v0[22];
  v54 = v0[20];
  v55 = v0[21];
  v9 = v0[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E9DA800;
  *(v10 + 32) = 0x496E6F6973736573;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "rawSessionId");
  *(v10 + 93) = 0;
  *(v10 + 94) = -5120;
  *(v10 + 96) = v3;
  *(v10 + 104) = v4;
  *(v10 + 120) = v11;
  *(v10 + 128) = 0x6552746E65696C63;
  *(v10 + 136) = 0xEF64497473657571;
  *(v10 + 144) = v5;
  *(v10 + 152) = v6;
  *(v10 + 168) = v11;
  *(v10 + 176) = 0x6D45646C756F6873;
  v12 = MEMORY[0x277D839B0];
  *(v10 + 184) = 0xEA00000000007469;
  *(v10 + 192) = 1;
  *(v10 + 216) = v12;
  *(v10 + 224) = 0xD000000000000011;
  *(v10 + 232) = 0x800000025E9DE000;
  if (v7 > 2)
  {
    if (v7 <= 4)
    {
      v13 = v9;
      v14 = v55;
      v15 = v56;
      v17 = v53;
      v16 = v54;
      v19 = v51;
      v18 = v52;
      v21 = v49;
      v20 = v50;
      v23 = v47;
      v22 = v48;
      if (v7 == 3)
      {
        v24 = 0x800000025E9DCBB0;
        v25 = 0xD00000000000001ALL;
      }

      else
      {
        v24 = 0xEE0065736E6F7073;
        v25 = 0x65526E6F69746361;
      }

      goto LABEL_15;
    }

    v13 = v9;
    v14 = v55;
    v15 = v56;
    v17 = v53;
    v16 = v54;
    v19 = v51;
    v18 = v52;
    v21 = v49;
    v20 = v50;
    v23 = v47;
    v22 = v48;
    if (v7 != 5)
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    }

    v26 = "actionWithoutResponse";
    goto LABEL_12;
  }

  if (!v7)
  {
    v24 = 0xED00006E6F697463;
    v25 = 0x4174736575716572;
    v13 = v9;
    v15 = v56;
    v27 = v57;
    v28 = v58;
    v16 = v54;
    v14 = v55;
    v18 = v52;
    v17 = v53;
    v20 = v50;
    v19 = v51;
    v22 = v48;
    v21 = v49;
    v23 = v47;
    goto LABEL_16;
  }

  v13 = v9;
  v14 = v55;
  v15 = v56;
  v17 = v53;
  v16 = v54;
  v19 = v51;
  v18 = v52;
  v21 = v49;
  v20 = v50;
  v23 = v47;
  v22 = v48;
  if (v7 != 1)
  {
    v26 = "requestDisambiguation";
LABEL_12:
    v24 = (v26 - 32) | 0x8000000000000000;
    v25 = 0xD000000000000015;
    goto LABEL_15;
  }

  v24 = 0xEC00000065746169;
  v25 = 0x64656D7265746E69;
LABEL_15:
  v27 = v57;
  v28 = v58;
LABEL_16:
  *(v10 + 240) = v25;
  *(v10 + 248) = v24;
  *(v10 + 264) = v11;
  *(v10 + 272) = 0x65757165526D756ELL;
  v29 = MEMORY[0x277D83B88];
  *(v10 + 280) = 0xEA00000000007473;
  *(v10 + 288) = v23;
  *(v10 + 312) = v29;
  strcpy((v10 + 320), "numPlanCreated");
  *(v10 + 335) = -18;
  *(v10 + 336) = v22;
  *(v10 + 360) = v29;
  *(v10 + 368) = 0xD000000000000011;
  *(v10 + 376) = 0x800000025E9DD550;
  *(v10 + 384) = v21;
  *(v10 + 408) = v29;
  *(v10 + 416) = 0xD000000000000012;
  *(v10 + 424) = 0x800000025E9DD570;
  *(v10 + 432) = v20;
  *(v10 + 456) = v29;
  *(v10 + 464) = 0xD000000000000016;
  *(v10 + 472) = 0x800000025E9DE020;
  *(v10 + 480) = v19;
  *(v10 + 504) = v29;
  *(v10 + 512) = 0xD000000000000018;
  *(v10 + 520) = 0x800000025E9DE040;
  *(v10 + 552) = v29;
  *(v10 + 528) = v18;
  *(v10 + 560) = 0xD000000000000015;
  *(v10 + 568) = 0x800000025E9DE060;
  *(v10 + 600) = v29;
  *(v10 + 576) = v17;
  *(v10 + 608) = 0xD000000000000020;
  *(v10 + 616) = 0x800000025E9DE080;
  *(v10 + 648) = v29;
  *(v10 + 624) = v16;
  *(v10 + 656) = 0xD000000000000017;
  *(v10 + 664) = 0x800000025E9DE0B0;
  *(v10 + 696) = v29;
  *(v10 + 672) = v14;
  *(v10 + 704) = 0xD000000000000010;
  *(v10 + 712) = 0x800000025E9DD5B0;
  *(v10 + 744) = v29;
  *(v10 + 720) = v8;

  v30 = sub_25E980C94(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v28)
  {
    *(&v60 + 1) = v28;
    v31 = MEMORY[0x277D837D0];
    v32 = v44;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v31 = sub_25E9A1988();
  }

  v61 = v31;
  *&v60 = v32;
  sub_25E980EA8(&v60, v59);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
  if (v15)
  {
    *(&v60 + 1) = v15;
    v34 = MEMORY[0x277D837D0];
    v35 = v45;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v34 = sub_25E9A1988();
  }

  v61 = v34;
  *&v60 = v35;
  sub_25E980EA8(&v60, v59);

  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x7972657551776172, 0xEF6449746E657645, v36);
  if (v27)
  {
    *(&v60 + 1) = v27;
    v37 = MEMORY[0x277D837D0];
    v38 = v46;
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v37 = sub_25E9A1988();
  }

  v61 = v37;
  *&v60 = v38;
  sub_25E980EA8(&v60, v59);

  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x6E6576456E616C70, 0xEB00000000644974, v39);
  if (v13)
  {
    v40 = sub_25E9A89B8();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
  }

  else
  {
    v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v41 = sub_25E9A1988();
  }

  v61 = v41;
  *&v60 = v40;
  sub_25E980EA8(&v60, v59);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x496572756C696166, 0xEB000000006F666ELL, v42);
  return v30;
}

unint64_t sub_25E9A5524()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 264);
  v64 = *(v0 + 256);
  v65 = *(v0 + 272);
  v11 = *(v0 + 280);
  v12 = *(v0 + 296);
  v66 = *(v0 + 288);
  v67 = *(v0 + 304);
  v58 = *(v0 + 312);
  v59 = *(v0 + 328);
  v68 = *(v0 + 320);
  v69 = *(v0 + 336);
  v60 = *(v0 + 344);
  v61 = *(v0 + 360);
  v70 = *(v0 + 352);
  v71 = *(v0 + 368);
  v62 = *(v0 + 376);
  v63 = *(v0 + 392);
  v72 = *(v0 + 384);
  v73 = *(v0 + 400);
  v13 = sub_25E980C94(MEMORY[0x277D84F90]);
  v78 = v13;
  v14 = MEMORY[0x277D839F8];
  if (v2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_25E9A1988();
    v77 = v16;
    *&v76 = v15;
  }

  else
  {
    *(&v75 + 1) = MEMORY[0x277D839F8];
    *&v74 = v1;
    sub_25E980EA8(&v74, &v76);
    v16 = v77;
  }

  if (v16)
  {
    sub_25E980EA8(&v76, &v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000013, 0x800000025E9DA9B0, isUniquelyReferenced_nonNull_native);
    v78 = v13;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(&v75 + 1) = v14;
    *&v74 = v3;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_10;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000013, 0x800000025E9DA9B0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v74 = 0u;
  v75 = 0u;
  v18 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v18;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_10:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v19 = v78;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001CLL, 0x800000025E9DDED0, v20);
    v78 = v19;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_15:
    *(&v75 + 1) = v14;
    *&v74 = v5;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_16;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001CLL, 0x800000025E9DDED0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v74 = 0u;
  v75 = 0u;
  v21 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v21;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_16:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v22 = v78;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000020, 0x800000025E9DDEF0, v23);
    v78 = v22;
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_21:
    *(&v75 + 1) = v14;
    *&v74 = v7;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_22;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000020, 0x800000025E9DDEF0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v74 = 0u;
  v75 = 0u;
  v24 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v24;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_22:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v25 = v78;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000016, 0x800000025E9DA9F0, v26);
    v78 = v25;
    if (v64)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(&v75 + 1) = v14;
    *&v74 = v9;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_28;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000016, 0x800000025E9DA9F0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v64 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v74 = 0u;
  v75 = 0u;
  v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v27;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_28:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v28 = v78;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000023, 0x800000025E9DAA30, v29);
    v78 = v28;
    if (v65)
    {
      goto LABEL_30;
    }

LABEL_33:
    *(&v75 + 1) = v14;
    *&v74 = v10;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_34;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000023, 0x800000025E9DAA30, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v65 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v74 = 0u;
  v75 = 0u;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v30;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_34:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v31 = v78;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000028, 0x800000025E9DDF20, v32);
    v78 = v31;
    if (v66)
    {
      goto LABEL_36;
    }

LABEL_39:
    *(&v75 + 1) = v14;
    *&v74 = v11;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_40;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000028, 0x800000025E9DDF20, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v66 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v74 = 0u;
  v75 = 0u;
  v33 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v33;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_40:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v34 = v78;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000002CLL, 0x800000025E9DDF50, v35);
    v78 = v34;
    if (v67)
    {
      goto LABEL_42;
    }

LABEL_45:
    *(&v75 + 1) = v14;
    *&v74 = v12;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_46;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000002CLL, 0x800000025E9DDF50, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v67 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v74 = 0u;
  v75 = 0u;
  v36 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v36;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_46:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v37 = v78;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000022, 0x800000025E9DDF80, v38);
    v78 = v37;
    if (v68)
    {
      goto LABEL_48;
    }

LABEL_51:
    *(&v75 + 1) = v14;
    *&v74 = v58;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_52;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000022, 0x800000025E9DDF80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v68 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v74 = 0u;
  v75 = 0u;
  v39 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v39;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_52:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v40 = v78;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000026, 0x800000025E9DDFB0, v41);
    v78 = v40;
    if (v69)
    {
      goto LABEL_54;
    }

LABEL_57:
    *(&v75 + 1) = v14;
    *&v74 = v59;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_58;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000026, 0x800000025E9DDFB0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v69 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  v74 = 0u;
  v75 = 0u;
  v42 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v42;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_58:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v43 = v78;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000029, 0x800000025E9DAA80, v44);
    v78 = v43;
    if (v70)
    {
      goto LABEL_60;
    }

LABEL_63:
    *(&v75 + 1) = v14;
    *&v74 = v60;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_64;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000029, 0x800000025E9DAA80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v70 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v74 = 0u;
  v75 = 0u;
  v45 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v45;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_64:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v46 = v78;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001BLL, 0x800000025E9DAAE0, v47);
    v78 = v46;
    if (v71)
    {
      goto LABEL_66;
    }

LABEL_69:
    *(&v75 + 1) = v14;
    *&v74 = v61;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_70;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001BLL, 0x800000025E9DAAE0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v71 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v74 = 0u;
  v75 = 0u;
  v48 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v48;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_70:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v49 = v78;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000019, 0x800000025E9DAB80, v50);
    v78 = v49;
    if (v72)
    {
      goto LABEL_72;
    }

LABEL_75:
    *(&v75 + 1) = v14;
    *&v74 = v62;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_76;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000019, 0x800000025E9DAB80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v72 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  v74 = 0u;
  v75 = 0u;
  v51 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v51;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_76:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v52 = v78;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001CLL, 0x800000025E9DAB30, v53);
    v78 = v52;
    if (v73)
    {
      goto LABEL_78;
    }

LABEL_81:
    *(&v75 + 1) = v14;
    *&v74 = v63;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_82;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001CLL, 0x800000025E9DAB30, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v73 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_78:
  v74 = 0u;
  v75 = 0u;
  v54 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v54;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_82:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v55 = v78;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000016, 0x800000025E9DDFE0, v56);
    return v55;
  }

  else
  {
    sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000016, 0x800000025E9DDFE0, &v74);
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
    return v78;
  }
}

unint64_t sub_25E9A64AC()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v31, v0, sizeof(v31));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v31);

  v4 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBC8, &unk_25E9DA9C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E9DA810;
  *(v5 + 32) = swift_getKeyPath();
  if (*(v4 + 16) && (v6 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DA9B0), (v7 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v6, v31), swift_dynamicCast()))
  {
    v8 = __dst[0];
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 40) = v8;
  *(v5 + 48) = swift_getKeyPath();
  if (*(v4 + 16) && (v9 = sub_25E978F5C(0xD000000000000016, 0x800000025E9DA9F0), (v10 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v9, v31), swift_dynamicCast()))
  {
    v11 = __dst[0];
  }

  else
  {
    v11 = 0;
  }

  *(v5 + 56) = v11;
  *(v5 + 64) = swift_getKeyPath();
  if (*(v4 + 16) && (v12 = sub_25E978F5C(0xD000000000000023, 0x800000025E9DAA30), (v13 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v12, v31), swift_dynamicCast()))
  {
    v14 = __dst[0];
  }

  else
  {
    v14 = 0;
  }

  *(v5 + 72) = v14;
  *(v5 + 80) = swift_getKeyPath();
  if (*(v4 + 16) && (v15 = sub_25E978F5C(0xD000000000000029, 0x800000025E9DAA80), (v16 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v15, v31), swift_dynamicCast()))
  {
    v17 = __dst[0];
  }

  else
  {
    v17 = 0;
  }

  *(v5 + 88) = v17;
  *(v5 + 96) = swift_getKeyPath();
  if (*(v4 + 16) && (v18 = sub_25E978F5C(0xD00000000000001BLL, 0x800000025E9DAAE0), (v19 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v18, v31), swift_dynamicCast()))
  {
    v20 = __dst[0];
  }

  else
  {
    v20 = 0;
  }

  *(v5 + 104) = v20;
  *(v5 + 112) = swift_getKeyPath();
  if (*(v4 + 16) && (v21 = sub_25E978F5C(0xD00000000000001CLL, 0x800000025E9DAB30), (v22 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v21, v31), swift_dynamicCast()))
  {
    v23 = __dst[0];
  }

  else
  {
    v23 = 0;
  }

  *(v5 + 120) = v23;
  *(v5 + 128) = swift_getKeyPath();
  if (!*(v4 + 16) || (v24 = sub_25E978F5C(0xD000000000000019, 0x800000025E9DAB80), (v25 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_25E980E4C(*(v4 + 56) + 32 * v24, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v26 = __dst[0];
LABEL_37:
  *(v5 + 136) = v26;
  v27 = sub_25E980DC4(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBD0, &qword_25E9DABE8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = sub_25E9B8D0C(v27);

  return v28;
}

uint64_t IEPlannerGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

id IEPlannerGrainMetricsRecord.getSELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v96 - v3;
  v5 = sub_25E9D77F0();
  v100 = *(v5 - 8);
  v6 = *(v100 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v96 - v9;
  v10 = *(v0 + 32);
  v102 = *(v0 + 40);
  v103 = v10;
  v11 = *(v0 + 80);
  v105 = *(v0 + 88);
  v106 = v11;
  v12 = *(v0 + 120);
  v107 = *(v0 + 112);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v16 = *(v0 + 168);
  v104 = *(v0 + 408);
  v17 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v17)
  {
    goto LABEL_27;
  }

  v96 = v5;
  v101 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D59E70]) init];
  if (!v18)
  {

LABEL_27:
    if (qword_27FD0D590 != -1)
    {
LABEL_57:
      swift_once();
    }

    v47 = sub_25E9D7F10();
    __swift_project_value_buffer(v47, qword_27FD0DAE8);
    v48 = sub_25E9D7F00();
    v49 = sub_25E9D8120();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_25E971000, v48, v49, "PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary init failed!", v50, 2u);
      MEMORY[0x25F8C51A0](v50, -1, -1);
    }

    return 0;
  }

  v19 = v18;
  v139 = v18;
  v97 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v97)
  {
    if (qword_27FD0D590 != -1)
    {
      swift_once();
    }

    v55 = sub_25E9D7F10();
    __swift_project_value_buffer(v55, qword_27FD0DAE8);
    v56 = sub_25E9D7F00();
    v57 = sub_25E9D8120();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_25E971000, v56, v57, "PNRODSchemaPNRODClientEventMetadata init failed!", v58, 2u);
      MEMORY[0x25F8C51A0](v58, -1, -1);
    }

    return 0;
  }

  if ((v107 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v107))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v20 = v4;
  [v19 setNumPlansCreated_];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (HIDWORD(v12))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v19 setNumQueriesCreated_];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (HIDWORD(v13))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v19 setNumQueriesExecuted_];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (HIDWORD(v14))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v19 setNumClientActionsCreated_];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (HIDWORD(v15))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  [v19 setNumActionResolverRequests_];
  [v19 setNumStatementsEvaluatedFromPlanner_];
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (HIDWORD(v16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_44;
  }

  [v19 setNumSystemPromptsResolved_];
  v21 = *(v0 + 16);
  v108[0] = *v0;
  v108[1] = v21;
  v109 = v103;
  v110 = v102;
  v22 = *(v0 + 64);
  v111 = *(v0 + 48);
  v112 = v22;
  v113 = v106;
  v114 = v105;
  v115 = *(v0 + 96);
  v116 = v107;
  v117 = v12;
  v118 = v13;
  v119 = v14;
  v120 = v15;
  v121 = *(v0 + 152);
  v122 = v16;
  v23 = *(v0 + 192);
  v123 = *(v0 + 176);
  v124 = v23;
  v24 = *(v0 + 256);
  v127 = *(v0 + 240);
  v128 = v24;
  v25 = *(v0 + 224);
  v125 = *(v0 + 208);
  v126 = v25;
  v26 = *(v0 + 320);
  v131 = *(v0 + 304);
  v132 = v26;
  v27 = *(v0 + 288);
  v129 = *(v0 + 272);
  v130 = v27;
  v28 = *(v0 + 400);
  v29 = *(v0 + 384);
  v135 = *(v0 + 368);
  v136 = v29;
  v30 = *(v0 + 352);
  v133 = *(v0 + 336);
  v134 = v30;
  v137 = v28;
  v138 = v104;
  v31 = sub_25E9A64AC();
  v32 = v31;
  v33 = 0;
  v34 = v31 + 64;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v31 + 64);
  v38 = (v35 + 63) >> 6;
  if (v37)
  {
    while (1)
    {
      v39 = v33;
LABEL_23:
      v40 = (v39 << 9) | (8 * __clz(__rbit64(v37)));
      v41 = *(*(v32 + 48) + v40);
      v42 = *(*(v32 + 56) + v40);
      v43 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v44 = [v43 init];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v37 &= v37 - 1;
      [v44 setMetricValue_];
      *&v108[0] = v45;
      v46 = v45;
      swift_setAtWritableKeyPath();

      v33 = v39;
      if (!v37)
      {
        goto LABEL_20;
      }
    }

    if (qword_27FD0D590 != -1)
    {
      swift_once();
    }

    v92 = sub_25E9D7F10();
    __swift_project_value_buffer(v92, qword_27FD0DAE8);
    v93 = sub_25E9D7F00();
    v94 = sub_25E9D8120();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_25E971000, v93, v94, "PNRODSchemaPNRODMetricDurationMetric init failed!", v95, 2u);
      MEMORY[0x25F8C51A0](v95, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_20:
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_23;
    }
  }

  v15 = v139;
  sub_25E9D77B0();
  v52 = v100;
  v53 = v96;
  if ((*(v100 + 48))(v20, 1, v96) == 1)
  {
    sub_25E981210(v20, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v54 = 0;
  }

  else
  {
    v59 = v98;
    (*(v52 + 32))(v98, v20, v53);
    v60 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v61 = sub_25E9D77D0();
    v54 = [v60 initWithNSUUID_];

    (*(v52 + 8))(v59, v53);
  }

  v16 = v101;
  [v15 setClientRequestId_];

  v62 = v104;
  if (v104)
  {
    sub_25E9A8130();
    v62 = v63;
  }

  [v15 setFailureInfo_];

  v64 = toSISSchemaUUID(convertId:)();
  [v15 setPlanId_];

  v65 = v99;
  sub_25E9D77E0();
  v66 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v67 = sub_25E9D77D0();
  v68 = [v66 initWithNSUUID_];

  (*(v52 + 8))(v65, v53);
  v69 = v97;
  [v97 setPnrodId_];

  [v16 setEventMetadata_];
  [v16 setPnrodIntelligenceFlowPlannerGrainSummary_];
  if (qword_27FD0D590 != -1)
  {
    goto LABEL_70;
  }

LABEL_44:
  v70 = sub_25E9D7F10();
  __swift_project_value_buffer(v70, qword_27FD0DAE8);
  v71 = v16;
  v72 = sub_25E9D7F00();
  v73 = sub_25E9D8120();

  if (os_log_type_enabled(v72, v73))
  {
    v107 = v15;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v108[0] = v75;
    *v74 = 136315650;
    v76 = [v71 qualifiedMessageName];
    v77 = sub_25E9D7FB0();
    v79 = v78;

    v80 = sub_25E9887EC(v77, v79, v108);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2080;
    v81 = [v71 formattedJsonBody];
    if (v81)
    {
      v82 = v81;
      v83 = sub_25E9D7FB0();
      v85 = v84;
    }

    else
    {
      v85 = 0xE500000000000000;
      v83 = 0x3E4C494E3CLL;
    }

    v86 = sub_25E9887EC(v83, v85, v108);

    *(v74 + 14) = v86;
    *(v74 + 22) = 2080;
    v87 = [v71 description];
    v88 = sub_25E9D7FB0();
    v90 = v89;

    v91 = sub_25E9887EC(v88, v90, v108);

    *(v74 + 24) = v91;
    _os_log_impl(&dword_25E971000, v72, v73, "Creating %s\n%s\n%s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v75, -1, -1);
    MEMORY[0x25F8C51A0](v74, -1, -1);

    return v101;
  }

  else
  {
  }

  return v16;
}

uint64_t sub_25E9A74C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25E980E4C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_25E9A7514@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25E980E4C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_25E980EA8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_25E981210(v22, &qword_27FD0DBD8, &unk_25E9DABF0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25E9A7674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_25E9A7514(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_25E980EA8(v46, v44);
  v14 = *a5;
  result = sub_25E978F5C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_25E97C278(v20, a4 & 1);
    v22 = *a5;
    result = sub_25E978F5C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25E9D8330();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_25E97F080();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_25E980EA8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_25E980EA8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_25E9A7514(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_25E980EA8(v46, v44);
        v33 = *a5;
        result = sub_25E978F5C(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_25E97C278(v37, 1);
          v38 = *a5;
          result = sub_25E978F5C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_25E980EA8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_25E980EA8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_25E9A7514(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_25E9A7B4C();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25E9A7988()
{
  result = qword_27FD0DBC0;
  if (!qword_27FD0DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DBC0);
  }

  return result;
}

uint64_t sub_25E9A79E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
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

uint64_t sub_25E9A7A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E9A7BD4(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v8 = v5;
  v10 = *a2;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 40) = 22785;
  v11 = a3();
  v12 = *(v8 + 24);
  *(v8 + 16) = v11;
  *(v8 + 24) = v13;

  v15 = a4(v14);
  v16 = a5(0);
  (*(*(v16 - 8) + 8))(a1, v16);
  *(v8 + 32) = v15;
  *(v8 + 40) = 0;
  *(v8 + 41) = v10;
  return v8;
}

uint64_t sub_25E9A7C94()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 24);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v2, v3);

  MEMORY[0x25F8C4910](46, 0xE100000000000000);
  v4 = *(v0 + 32);
  *(v0 + 40);
  v5 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v5);

  return 0;
}

unint64_t sub_25E9A7D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D9690;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
    *(&v13 + 1) = MEMORY[0x277D837D0];
    *&v12 = v3;
    *(&v12 + 1) = v2;
    sub_25E980EA8(&v12, (inited + 48));
  }

  else
  {
    v13 = 0u;
    v4 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 72) = sub_25E98F558(0, &qword_27FD0DA78, 0x277CBEB68);
    *(inited + 48) = v4;
    if (*(&v13 + 1))
    {
      sub_25E98C2B8(&v12);
    }
  }

  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  if (*(v0 + 40) == 1)
  {
    *(inited + 120) = sub_25E98F558(0, &qword_27FD0D630, 0x277D82BB8);

LABEL_8:
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    goto LABEL_9;
  }

  v5 = *(v0 + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v7 = [v6 initWithLongLong_];
  v8 = sub_25E98F558(0, &qword_27FD0D630, 0x277D82BB8);
  v9 = v7;
  *(inited + 120) = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(inited + 96) = v9;
  v10 = sub_25E980C94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  return v10;
}

void *sub_25E9A7F44()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D59E30]) init];
  v2 = v1;
  if (v1)
  {
    if (*(v0 + 24))
    {
      v3 = *(v0 + 16);
      v4 = v1;

      v5 = sub_25E9D7FA0();
    }

    else
    {
      v6 = v1;
      v5 = 0;
    }

    [v2 setDomain_];
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    [v2 setCode_];
  }

  if (v2)
  {
    v7 = *(v0 + 41);
    if (v7 != 89)
    {
      [v2 setSource_];
    }
  }

  return v2;
}

uint64_t PNRError.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PNRError.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_25E9A8130()
{
  if (*(v0 + 16) == 63)
  {
    return;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D59E50]) init];
  v3 = v2;
  if (v2)
  {
    if (*(v0 + 24))
    {
      v4 = v2;

      v5 = sub_25E9A7F44();
    }

    else
    {
      v6 = v2;
      v5 = 0;
    }

    [v3 setError_];

    if (*(v1 + 32))
    {
      v7 = v3;

      v8 = sub_25E9A7F44();
    }

    else
    {
      v9 = v3;
      v8 = 0;
    }

    [v3 setUnderlyingError_];

    if (*(v1 + 40))
    {
      v10 = v3;

      v11 = sub_25E9A7F44();
    }

    else
    {
      v12 = v3;
      v11 = 0;
    }

    [v3 setUnderUnderlyingError_];

    v13 = *(v1 + 16);
    switch(*(v1 + 16))
    {
      case 1:
        v13 = 50;
        break;
      case 2:
        v13 = 51;
        break;
      case 3:
        v13 = 52;
        break;
      case 4:
        v13 = 53;
        break;
      case 5:
        v13 = 54;
        break;
      case 6:
        v13 = 55;
        break;
      case 7:
        v13 = 5201;
        break;
      case 8:
        v13 = 5202;
        break;
      case 9:
        v13 = 5203;
        break;
      case 0xA:
        v13 = 5204;
        break;
      case 0xB:
        v13 = 5205;
        break;
      case 0xC:
        v13 = 5206;
        break;
      case 0xD:
        v13 = 5207;
        break;
      case 0xE:
        v13 = 520101;
        break;
      case 0xF:
        v13 = 520102;
        break;
      case 0x10:
        v13 = 520103;
        break;
      case 0x11:
        v13 = 520201;
        break;
      case 0x12:
        v13 = 520202;
        break;
      case 0x13:
        v13 = 520301;
        break;
      case 0x14:
        v13 = 520302;
        break;
      case 0x15:
        v13 = 520303;
        break;
      case 0x16:
        v13 = 520304;
        break;
      case 0x17:
        v13 = 520401;
        break;
      case 0x18:
        v13 = 520402;
        break;
      case 0x19:
        v13 = 520501;
        break;
      case 0x1A:
        v13 = 520502;
        break;
      case 0x1B:
        v13 = 520503;
        break;
      case 0x1C:
        v13 = 520504;
        break;
      case 0x1D:
        v13 = 520505;
        break;
      case 0x1E:
        v13 = 520506;
        break;
      case 0x1F:
        v13 = 520507;
        break;
      case 0x20:
        v13 = 520508;
        break;
      case 0x21:
        v13 = 520601;
        break;
      case 0x22:
        v13 = 520602;
        break;
      case 0x23:
        v13 = 520603;
        break;
      case 0x24:
        v13 = 520701;
        break;
      case 0x25:
        v13 = 520702;
        break;
      case 0x26:
        v13 = 5401;
        break;
      case 0x27:
        v13 = 5402;
        break;
      case 0x28:
        v13 = 540101;
        break;
      case 0x29:
        v13 = 540102;
        break;
      case 0x2A:
        v13 = 540103;
        break;
      case 0x2B:
        v13 = 540104;
        break;
      case 0x2C:
        v13 = 5501;
        break;
      case 0x2D:
        v13 = 5502;
        break;
      case 0x2E:
        v13 = 5503;
        break;
      case 0x2F:
        v13 = 5504;
        break;
      case 0x30:
        v13 = 5511;
        break;
      case 0x31:
        v13 = 5512;
        break;
      case 0x32:
        v13 = 5521;
        break;
      case 0x33:
        v13 = 5522;
        break;
      case 0x34:
        v13 = 5531;
        break;
      case 0x35:
        v13 = 5532;
        break;
      case 0x36:
        v13 = 5533;
        break;
      case 0x37:
        v13 = 5534;
        break;
      case 0x38:
        v13 = 5535;
        break;
      case 0x39:
        v13 = 5536;
        break;
      case 0x3A:
        v13 = 5537;
        break;
      case 0x3B:
        v13 = 55101;
        break;
      case 0x3C:
        v13 = 55102;
        break;
      case 0x3D:
        v13 = 99994097;
        break;
      case 0x3E:
        v13 = 99994099;
        break;
      case 0x3F:
        goto LABEL_101;
      default:
        break;
    }

    [v3 setFailureType_];
    v14 = *(v1 + 17);
    if ((v14 - 1) < 0x3E)
    {
      [v3 setFailureSubType_];
      v15 = *(v1 + 18);
      if ((v15 - 1) < 0x3E)
      {
        [v3 setFailureSubType_];
LABEL_81:
        if (qword_280F700E8 != -1)
        {
          swift_once();
        }

        v16 = sub_25E9D7F10();
        __swift_project_value_buffer(v16, qword_280F700F0);
        v17 = v3;

        v18 = sub_25E9D7F00();
        v19 = sub_25E9D8120();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v38 = v21;
          *v20 = 136315394;
          v22 = sub_25E9A8CCC();
          v24 = sub_25E9887EC(v22, v23, &v38);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          if (v3)
          {
            goto LABEL_95;
          }

          goto LABEL_99;
        }

LABEL_96:

        goto LABEL_97;
      }

LABEL_91:
      if (qword_280F700E8 != -1)
      {
        swift_once();
      }

      v29 = sub_25E9D7F10();
      __swift_project_value_buffer(v29, qword_280F700F0);
      v17 = v3;

      v18 = sub_25E9D7F00();
      v19 = sub_25E9D8120();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136315394;
        v30 = sub_25E9A8CCC();
        v32 = sub_25E9887EC(v30, v31, &v38);

        *(v20 + 4) = v32;
        *(v20 + 12) = 2080;
        if (v3)
        {
LABEL_95:

          v33 = [v17 description];
          v34 = sub_25E9D7FB0();
          v36 = v35;

          v37 = sub_25E9887EC(v34, v36, &v38);

          *(v20 + 14) = v37;
          _os_log_impl(&dword_25E971000, v18, v19, "converting failureInfo to SELFMessage: %s %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8C51A0](v21, -1, -1);
          MEMORY[0x25F8C51A0](v20, -1, -1);
LABEL_97:

          return;
        }

        goto LABEL_100;
      }

      goto LABEL_96;
    }
  }

  else if (*(v0 + 17) - 1 < 0x3E)
  {
    if (*(v0 + 18) - 1 < 0x3E)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

  if (qword_280F700E8 != -1)
  {
    swift_once();
  }

  v25 = sub_25E9D7F10();
  __swift_project_value_buffer(v25, qword_280F700F0);
  v17 = v3;

  v18 = sub_25E9D7F00();
  v19 = sub_25E9D8120();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_96;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v38 = v21;
  *v20 = 136315394;
  v26 = sub_25E9A8CCC();
  v28 = sub_25E9887EC(v26, v27, &v38);

  *(v20 + 4) = v28;
  *(v20 + 12) = 2080;
  if (v3)
  {
    goto LABEL_95;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

unint64_t sub_25E9A89B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9DADD0;
  *(inited + 32) = 0x546572756C696166;
  *(inited + 40) = 0xEB00000000657079;
  if (*(v0 + 16) == 63)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v4 = sub_25E9A1988();
  }

  else
  {
    v20 = *(v0 + 16);
    v3 = sub_25E9D7FF0();
    *(inited + 56) = v5;
    v4 = MEMORY[0x277D837D0];
  }

  *(inited + 48) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "failureSubType");
  *(inited + 95) = -18;
  if (*(v1 + 17) == 63)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v7 = sub_25E9A1988();
  }

  else
  {
    v21 = *(v1 + 17);
    v6 = sub_25E9D7FF0();
    *(inited + 104) = v8;
    v7 = MEMORY[0x277D837D0];
  }

  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000025E9DE110;
  if (*(v1 + 18) == 63)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v10 = sub_25E9A1988();
  }

  else
  {
    v22 = *(v1 + 18);
    v9 = sub_25E9D7FF0();
    *(inited + 152) = v11;
    v10 = MEMORY[0x277D837D0];
  }

  *(inited + 144) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = 0x726F727265;
  *(inited + 184) = 0xE500000000000000;
  if (*(v1 + 24))
  {
    v12 = *(v1 + 24);

    v13 = sub_25E9A7D4C();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v14 = sub_25E9A1988();
  }

  *(inited + 192) = v13;
  *(inited + 216) = v14;
  *(inited + 224) = 0x666E496775626564;
  *(inited + 232) = 0xE90000000000006FLL;
  v15 = *(v1 + 56);
  if (v15)
  {
    v16 = *(v1 + 48);
    *(inited + 248) = v15;
    v17 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v17 = sub_25E9A1988();
  }

  *(inited + 264) = v17;
  *(inited + 240) = v16;

  v18 = sub_25E980C94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_25E9A8CCC()
{
  v1 = *(v0 + 16);
  v2 = 0xE000000000000000;
  if (v1 == 63)
  {
    v3 = 0;
  }

  else
  {
    sub_25E9D8240();

    strcpy(v19, "\nfailureType: ");
    HIBYTE(v19[1]) = -18;
    v16 = qword_25E9DB060[v1];
    v4 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v4);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    LOBYTE(v16) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBE0, &qword_25E9DADE8);
    v5 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v5);

    v3 = v19[0];
    v2 = v19[1];
  }

  v6 = *(v0 + 17);
  if (v6 != 63)
  {
    sub_25E9D8240();

    v19[0] = v3;
    v19[1] = v2;
    MEMORY[0x25F8C4910](0xD000000000000011, 0x800000025E9DE150);
    v17 = qword_25E9DB060[v6];
    v7 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v7);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    LOBYTE(v17) = *(v0 + 17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBE0, &qword_25E9DADE8);
    v8 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v8);
  }

  v9 = *(v0 + 18);
  if (v9 != 63)
  {
    sub_25E9D8240();

    v19[0] = v3;
    v19[1] = v2;
    MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DE130);
    v18 = qword_25E9DB060[v9];
    v10 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v10);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    v11 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v11);
  }

  if (*(v0 + 24))
  {
    v19[0] = v3;
    v19[1] = v2;

    MEMORY[0x25F8C4910](0x203A726F7272650ALL, 0xE800000000000000);
    v12 = sub_25E9A7C94();
    MEMORY[0x25F8C4910](v12);
  }

  v13 = *(v0 + 56);
  if (v13)
  {
    v14 = *(v0 + 48);
    v19[0] = v3;
    v19[1] = v2;

    MEMORY[0x25F8C4910](0x203A726F7272650ALL, 0xE800000000000000);
    MEMORY[0x25F8C4910](v14, v13);
  }

  return v3;
}

void *PNRFailureInfo.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t PNRFailureInfo.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

PnROnDeviceFramework::PNRFailureTypeEnum_optional __swiftcall PNRFailureTypeEnum.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue <= 55100)
  {
    if (rawValue <= 5205)
    {
      if (rawValue > 54)
      {
        if (rawValue <= 5202)
        {
          switch(rawValue)
          {
            case 55:
              *v1 = 6;
              return rawValue;
            case 5201:
              *v1 = 7;
              return rawValue;
            case 5202:
              *v1 = 8;
              return rawValue;
          }

          goto LABEL_91;
        }

        if (rawValue == 5203)
        {
          *v1 = 9;
        }

        else if (rawValue == 5204)
        {
          *v1 = 10;
        }

        else
        {
          *v1 = 11;
        }
      }

      else if (rawValue > 51)
      {
        if (rawValue == 52)
        {
          *v1 = 3;
        }

        else if (rawValue == 53)
        {
          *v1 = 4;
        }

        else
        {
          *v1 = 5;
        }
      }

      else
      {
        if (!rawValue)
        {
          *v1 = 0;
          return rawValue;
        }

        if (rawValue != 50)
        {
          if (rawValue == 51)
          {
            *v1 = 2;
            return rawValue;
          }

          goto LABEL_91;
        }

        v2 = 1;
LABEL_83:
        *v1 = v2;
      }
    }

    else
    {
      v2 = 45;
      switch(rawValue)
      {
        case 5401:
          *v1 = 38;
          return rawValue;
        case 5402:
          *v1 = 39;
          return rawValue;
        case 5403:
        case 5404:
        case 5405:
        case 5406:
        case 5407:
        case 5408:
        case 5409:
        case 5410:
        case 5411:
        case 5412:
        case 5413:
        case 5414:
        case 5415:
        case 5416:
        case 5417:
        case 5418:
        case 5419:
        case 5420:
        case 5421:
        case 5422:
        case 5423:
        case 5424:
        case 5425:
        case 5426:
        case 5427:
        case 5428:
        case 5429:
        case 5430:
        case 5431:
        case 5432:
        case 5433:
        case 5434:
        case 5435:
        case 5436:
        case 5437:
        case 5438:
        case 5439:
        case 5440:
        case 5441:
        case 5442:
        case 5443:
        case 5444:
        case 5445:
        case 5446:
        case 5447:
        case 5448:
        case 5449:
        case 5450:
        case 5451:
        case 5452:
        case 5453:
        case 5454:
        case 5455:
        case 5456:
        case 5457:
        case 5458:
        case 5459:
        case 5460:
        case 5461:
        case 5462:
        case 5463:
        case 5464:
        case 5465:
        case 5466:
        case 5467:
        case 5468:
        case 5469:
        case 5470:
        case 5471:
        case 5472:
        case 5473:
        case 5474:
        case 5475:
        case 5476:
        case 5477:
        case 5478:
        case 5479:
        case 5480:
        case 5481:
        case 5482:
        case 5483:
        case 5484:
        case 5485:
        case 5486:
        case 5487:
        case 5488:
        case 5489:
        case 5490:
        case 5491:
        case 5492:
        case 5493:
        case 5494:
        case 5495:
        case 5496:
        case 5497:
        case 5498:
        case 5499:
        case 5500:
        case 5505:
        case 5506:
        case 5507:
        case 5508:
        case 5509:
        case 5510:
        case 5513:
        case 5514:
        case 5515:
        case 5516:
        case 5517:
        case 5518:
        case 5519:
        case 5520:
        case 5523:
        case 5524:
        case 5525:
        case 5526:
        case 5527:
        case 5528:
        case 5529:
        case 5530:
          goto LABEL_91;
        case 5501:
          *v1 = 44;
          return rawValue;
        case 5502:
          goto LABEL_83;
        case 5503:
          *v1 = 46;
          return rawValue;
        case 5504:
          *v1 = 47;
          return rawValue;
        case 5511:
          *v1 = 48;
          return rawValue;
        case 5512:
          *v1 = 49;
          return rawValue;
        case 5521:
          *v1 = 50;
          return rawValue;
        case 5522:
          *v1 = 51;
          return rawValue;
        case 5531:
          *v1 = 52;
          return rawValue;
        case 5532:
          *v1 = 53;
          return rawValue;
        case 5533:
          *v1 = 54;
          return rawValue;
        case 5534:
          *v1 = 55;
          return rawValue;
        case 5535:
          *v1 = 56;
          return rawValue;
        case 5536:
          *v1 = 57;
          return rawValue;
        case 5537:
          *v1 = 58;
          return rawValue;
        default:
          if (rawValue == 5206)
          {
            *v1 = 12;
          }

          else
          {
            if (rawValue != 5207)
            {
              goto LABEL_91;
            }

            *v1 = 13;
          }

          break;
      }
    }
  }

  else if (rawValue > 520503)
  {
    if (rawValue > 520700)
    {
      if (rawValue > 540102)
      {
        if (rawValue > 99994096)
        {
          if (rawValue == 99994097)
          {
            *v1 = 61;
            return rawValue;
          }

          if (rawValue == 99994099)
          {
            *v1 = 62;
            return rawValue;
          }
        }

        else
        {
          if (rawValue == 540103)
          {
            *v1 = 42;
            return rawValue;
          }

          if (rawValue == 540104)
          {
            *v1 = 43;
            return rawValue;
          }
        }

        goto LABEL_91;
      }

      if (rawValue <= 540100)
      {
        if (rawValue == 520701)
        {
          *v1 = 36;
          return rawValue;
        }

        if (rawValue == 520702)
        {
          *v1 = 37;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 540101)
      {
        *v1 = 40;
      }

      else
      {
        *v1 = 41;
      }
    }

    else
    {
      if (rawValue > 520507)
      {
        if (rawValue > 520601)
        {
          if (rawValue == 520602)
          {
            *v1 = 34;
            return rawValue;
          }

          if (rawValue == 520603)
          {
            *v1 = 35;
            return rawValue;
          }
        }

        else
        {
          if (rawValue == 520508)
          {
            *v1 = 32;
            return rawValue;
          }

          if (rawValue == 520601)
          {
            *v1 = 33;
            return rawValue;
          }
        }

        goto LABEL_91;
      }

      if (rawValue > 520505)
      {
        if (rawValue == 520506)
        {
          *v1 = 30;
        }

        else
        {
          *v1 = 31;
        }
      }

      else if (rawValue == 520504)
      {
        *v1 = 28;
      }

      else
      {
        *v1 = 29;
      }
    }
  }

  else if (rawValue > 520301)
  {
    if (rawValue > 520401)
    {
      if (rawValue <= 520501)
      {
        if (rawValue == 520402)
        {
          *v1 = 24;
          return rawValue;
        }

        if (rawValue == 520501)
        {
          *v1 = 25;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 520502)
      {
        *v1 = 26;
      }

      else
      {
        *v1 = 27;
      }
    }

    else
    {
      if (rawValue > 520303)
      {
        if (rawValue == 520304)
        {
          *v1 = 22;
          return rawValue;
        }

        if (rawValue == 520401)
        {
          *v1 = 23;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 520302)
      {
        *v1 = 20;
      }

      else
      {
        *v1 = 21;
      }
    }
  }

  else
  {
    if (rawValue > 520102)
    {
      if (rawValue > 520201)
      {
        if (rawValue == 520202)
        {
          *v1 = 18;
          return rawValue;
        }

        if (rawValue == 520301)
        {
          *v1 = 19;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 520103)
        {
          *v1 = 16;
          return rawValue;
        }

        if (rawValue == 520201)
        {
          *v1 = 17;
          return rawValue;
        }
      }

      goto LABEL_91;
    }

    if (rawValue <= 520100)
    {
      if (rawValue == 55101)
      {
        *v1 = 59;
        return rawValue;
      }

      if (rawValue == 55102)
      {
        *v1 = 60;
        return rawValue;
      }

LABEL_91:
      *v1 = 63;
      return rawValue;
    }

    if (rawValue == 520101)
    {
      *v1 = 14;
    }

    else
    {
      *v1 = 15;
    }
  }

  return rawValue;
}

unint64_t sub_25E9A9874()
{
  result = qword_27FD0DBE8;
  if (!qword_27FD0DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DBE8);
  }

  return result;
}

uint64_t sub_25E9A98C8()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DB448[v1]);
  return sub_25E9D83C0();
}

uint64_t sub_25E9A9950()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DB448[v1]);
  return sub_25E9D83C0();
}

uint64_t getEnumTagSinglePayload for PNRFailureTypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC2)
  {
    goto LABEL_17;
  }

  if (a2 + 62 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 62) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 62;
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

      return (*a1 | (v4 << 8)) - 62;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 62;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3F;
  v8 = v6 - 63;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PNRFailureTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 62 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 62) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC2)
  {
    v4 = 0;
  }

  if (a2 > 0xC1)
  {
    v5 = ((a2 - 194) >> 8) + 1;
    *result = a2 + 62;
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
    *result = a2 + 62;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25E9A9B34(uint64_t a1, char a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = sub_25E9D7FE0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v5 = sub_25E9D7F10();
  __swift_project_value_buffer(v5, qword_280F6FE78);
  v6 = sub_25E9D7F00();
  v7 = sub_25E9D8120();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF0, &qword_25E9DB688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF8, &unk_25E9DB690);
    v10 = sub_25E9D7FF0();
    v12 = sub_25E9887EC(v10, v11, &v33);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25E971000, v6, v7, "Converting %s metrics dictionary to json string", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F8C51A0](v9, -1, -1);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  if (a2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = objc_opt_self();
  v15 = sub_25E9D7F30();
  v33 = 0;
  v16 = [v14 dataWithJSONObject:v15 options:v13 error:&v33];

  v17 = v33;
  if (v16)
  {
    v18 = sub_25E9D7750();
    v20 = v19;

    sub_25E9D7FD0();
    v21 = sub_25E9D7FC0();
    sub_25E9A9FB0(v18, v20);
  }

  else
  {
    v22 = v17;
    v23 = sub_25E9D7740();

    swift_willThrow();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_25E9D8240();
    MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DE1F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF0, &qword_25E9DB688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF8, &unk_25E9DB690);
    v24 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v24);

    MEMORY[0x25F8C4910](0xD000000000000022, 0x800000025E9DE210);
    v26 = v33;
    v25 = v34;

    v27 = sub_25E9D7F00();
    v28 = sub_25E9D8130();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_25E9887EC(v26, v25, &v33);
      _os_log_impl(&dword_25E971000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F8C51A0](v30, -1, -1);
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    LOBYTE(v33) = -127;
    _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v33, v26, v25);

    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_25E9A9FB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double SELFComponent.QD.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  return result;
}

uint64_t sub_25E9AA058(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_25E9D81F0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_25E9B63C0(v3, *(a1 + 36), 0, a1);

  return v5;
}

double SELFComponent.QD.init()()
{
  *(v0 + 208) = 0;
  result = 0.0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_25E9AA0FC()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
  v1 = v0;
  v2 = sub_25E9D7E80();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void sub_25E9AA1DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v155 - v2;
  v4 = MEMORY[0x277D84F90];
  v163 = sub_25E97F328(MEMORY[0x277D84F90]);
  v162 = sub_25E97F328(v4);
  v164 = sub_25E97FF50(v4);
  swift_beginAccess();
  v5 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B8 != -1)
    {
LABEL_98:
      swift_once();
    }

    v17 = sub_25E9D7F10();
    __swift_project_value_buffer(v17, qword_27FD0DB60);
    v18 = sub_25E9D7F00();
    v19 = sub_25E9D8120();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E971000, v18, v19, "QDSchemaQDClientEvent: Failed to init", v20, 2u);
      MEMORY[0x25F8C51A0](v20, -1, -1);
    }

    goto LABEL_92;
  }

  v159 = v3;
  sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
  v6 = v5;
  v7 = sub_25E9D7E80();

  if (qword_27FD0D5B8 != -1)
  {
LABEL_89:
    swift_once();
  }

  v8 = sub_25E9D7F10();
  v9 = __swift_project_value_buffer(v8, qword_27FD0DB60);

  v10 = sub_25E9D7F00();
  v11 = sub_25E9D8120();
  v12 = v7 >> 62;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (v12)
    {
      v154 = v13;
      v14 = sub_25E9D8290();
      v13 = v154;
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v14;
    v15 = v13;

    _os_log_impl(&dword_25E971000, v10, v11, "evaluateQDCollectionStartEnd length %ld", v15, 0xCu);
    MEMORY[0x25F8C51A0](v15, -1, -1);
  }

  else
  {
  }

  if (v12)
  {
    v21 = sub_25E9D8290();
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_91;
  }

  v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_91:

LABEL_92:
    v133 = v156;
    v134 = *(v156 + 16);
    *(v156 + 16) = v164;

    v135 = *(v133 + 24);
    *(v133 + 24) = v163;

    v136 = *(v133 + 32);
    *(v133 + 32) = v162;

    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v137 = sub_25E9D7F10();
    __swift_project_value_buffer(v137, qword_27FD0DB60);
    v138 = sub_25E9D7F00();
    v139 = sub_25E9D8120();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v176 = v174;
      *v140 = 136315650;
      type metadata accessor for QDSchemaQDCaller(0);

      v141 = sub_25E9D7F40();
      v143 = v142;

      v144 = sub_25E9887EC(v141, v143, &v176);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2080;

      v145 = sub_25E9D7F40();
      v147 = v146;

      v148 = sub_25E9887EC(v145, v147, &v176);

      *(v140 + 14) = v148;
      *(v140 + 22) = 2080;

      v149 = sub_25E9D7F40();
      v151 = v150;

      v152 = sub_25E9887EC(v149, v151, &v176);

      *(v140 + 24) = v152;
      _os_log_impl(&dword_25E971000, v138, v139, "QD CALLER HASHMAP QDSchemaQDCollectionContext: %s, QD START HASHMAP QDSchemaQDCollectionContext: %s, QD END HASHMAP QDSchemaQDCollectionContext: %s", v140, 0x20u);
      v153 = v174;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v153, -1, -1);
      MEMORY[0x25F8C51A0](v140, -1, -1);
    }

    return;
  }

LABEL_14:
  v22 = 0;
  v168 = v7 & 0xC000000000000001;
  v160 = v7 & 0xFFFFFFFFFFFFFF8;
  *&v16 = 136315138;
  v169 = v16;
  *&v16 = 136315906;
  v161 = v16;
  v155 = xmmword_25E9DB6C0;
  v171 = v9;
  v166 = v21;
  v167 = v7;
  while (1)
  {
    if (v168)
    {
      v23 = MEMORY[0x25F8C4B40](v22, v7);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v22 >= *(v160 + 16))
      {
        goto LABEL_88;
      }

      v23 = *(v7 + 8 * v22 + 32);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v173 = v24;
    v174 = v22;
    v25 = v23;
    v26 = sub_25E9D7F00();
    v27 = sub_25E9D8120();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v176 = v29;
      *v28 = v169;
      v30 = [v25 debugDescription];
      v31 = sub_25E9D7FB0();
      v33 = v32;

      v34 = sub_25E9887EC(v31, v33, &v176);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_25E971000, v26, v27, "evaluateQDCollectionStartEnd value %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F8C51A0](v29, -1, -1);
      MEMORY[0x25F8C51A0](v28, -1, -1);
    }

    v35 = sub_25E9D7840();
    if (v35)
    {
      v36 = v35;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (!v37)
      {
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = sub_25E9D7F00();
    v40 = sub_25E9D8120();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v176 = v42;
      *v41 = v169;
      v175 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC10, &qword_25E9DB6E8);
      v43 = sub_25E9D81B0();
      v45 = sub_25E9887EC(v43, v44, &v176);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_25E971000, v39, v40, "qdEvent Client Event value %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x25F8C51A0](v42, -1, -1);
      MEMORY[0x25F8C51A0](v41, -1, -1);
    }

    if (v37 && (v46 = [v38 eventMetadata]) != 0 && (v47 = v46, v48 = objc_msgSend(v46, sel_qdId), v47, v48))
    {
      v49 = v159;
      sub_25E9D8100();

      v50 = sub_25E9D77F0();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v49, 1, v50) == 1)
      {
        sub_25E9961C4(v49);
        v172 = 0;
        v52 = 0xE000000000000000;
      }

      else
      {
        v172 = sub_25E9D77C0();
        v54 = v53;
        v55 = v50;
        v52 = v54;
        (*(v51 + 8))(v49, v55);
      }
    }

    else
    {
      v172 = 0;
      v52 = 0xE000000000000000;
    }

    v56 = v25;
    v57 = v38;

    v58 = sub_25E9D7F00();
    v59 = sub_25E9D8120();

    if (!os_log_type_enabled(v58, v59))
    {

      if (!v37)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

    v60 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v176 = v165;
    *v60 = v161;
    v170 = v52;
    v61 = sub_25E9D8000();
    v63 = sub_25E9887EC(v61, v62, &v176);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    if (!v37)
    {
      v71 = 0xE000000000000000;
      v72 = sub_25E9887EC(0, 0xE000000000000000, &v176);

      v73 = 0;
      *(v60 + 14) = v72;
      *(v60 + 22) = 2080;
      goto LABEL_53;
    }

    v64 = [v57 collectionContext];
    if (!v64)
    {
      goto LABEL_48;
    }

    v65 = v64;
    v66 = [v64 startedOrChanged];

    if (!v66)
    {
      v64 = 0;
LABEL_48:
      v70 = 0xE000000000000000;
      goto LABEL_49;
    }

    v67 = [v66 debugDescription];

    v68 = sub_25E9D7FB0();
    v70 = v69;

    v64 = v68;
    v74 = sub_25E9887EC(v64, v70, &v176);

    *(v60 + 14) = v74;
    *(v60 + 22) = 2080;
    v75 = [v57 collectionContext];
    if (!v75)
    {
      goto LABEL_52;
    }

LABEL_49:
    v76 = v75;
    v77 = [v75 ended];

    if (v77)
    {
      v78 = [v77 debugDescription];

      v73 = sub_25E9D7FB0();
      v71 = v79;
    }

    else
    {
LABEL_52:
      v73 = 0;
      v71 = 0xE000000000000000;
    }

LABEL_53:
    v80 = sub_25E9887EC(v73, v71, &v176);

    *(v60 + 24) = v80;
    *(v60 + 32) = 2048;
    v81 = sub_25E9D7850();
    if (!v81)
    {
      break;
    }

    v82 = v81;
    v83 = sub_25E9D7870();

    *(v60 + 34) = v83;
    _os_log_impl(&dword_25E971000, v58, v59, "QDID value %s, QD SPAN STARTED value %s, QD SPAN ENDED value %s, QD SPAN TS value %llu", v60, 0x2Au);
    v84 = v165;
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v84, -1, -1);
    MEMORY[0x25F8C51A0](v60, -1, -1);

    v52 = v170;
    if (!v37)
    {
LABEL_15:

LABEL_16:

      goto LABEL_17;
    }

LABEL_55:
    v85 = [v57 collectionContext];
    if (v85)
    {
      v86 = v85;
      v87 = [v85 startedOrChanged];

      if (v87)
      {

        v88 = v57;
        v89 = sub_25E9D7F00();
        v90 = sub_25E9D8120();

        if (os_log_type_enabled(v89, v90))
        {
          v165 = v56;
          v170 = v52;
          v91 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v176 = v157;
          *v91 = v169;
          v158 = v88;
          v92 = [v88 collectionContext];
          if (v92 && (v93 = v92, v94 = [v92 startedOrChanged], v93, v94) && (v95 = objc_msgSend(v94, sel_callers), v94, v95))
          {
            v96 = sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
            v97 = sub_25E9D8080();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC08, &qword_25E9DB6E0);
            v97 = swift_allocObject();
            *(v97 + 16) = v155;
            v96 = sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
            *(v97 + 32) = sub_25E9D8190();
          }

          sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
          v112 = MEMORY[0x25F8C4980](v97, v96);
          v114 = v113;

          v115 = sub_25E9887EC(v112, v114, &v176);

          *(v91 + 4) = v115;
          _os_log_impl(&dword_25E971000, v89, v90, "qdCollectionContext: startedOrChanged, thisQDEvent Callers  value %s", v91, 0xCu);
          v116 = v157;
          __swift_destroy_boxed_opaque_existential_0(v157);
          MEMORY[0x25F8C51A0](v116, -1, -1);
          MEMORY[0x25F8C51A0](v91, -1, -1);

          v52 = v170;
          v56 = v165;
          v88 = v158;
        }

        else
        {
        }

        v117 = [v88 collectionContext];
        v118 = v172;
        if (!v117)
        {
          goto LABEL_83;
        }

        v119 = v117;
        v120 = [v117 startedOrChanged];

        if (!v120)
        {
          goto LABEL_83;
        }

        v121 = [v120 callers];

        if (v121)
        {
          sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
          v122 = sub_25E9D8080();

          if (v122 >> 62)
          {
            if (!sub_25E9D8290())
            {
              goto LABEL_82;
            }

LABEL_77:
            if ((v122 & 0xC000000000000001) != 0)
            {
              v123 = v52;
              v124 = MEMORY[0x25F8C4B40](0, v122);
            }

            else
            {
              if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_98;
              }

              v123 = v52;
              v124 = *(v122 + 32);
            }

            v125 = v124;

            v121 = [v125 intValue];

            v52 = v123;
          }

          else
          {
            if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

LABEL_82:

LABEL_83:
            v121 = 0;
          }
        }

        v126 = v164;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = v126;
        sub_25E994634(v121, v118, v52, isUniquelyReferenced_nonNull_native);
        v164 = v176;
        v128 = sub_25E9D7850();
        if (!v128)
        {
          goto LABEL_101;
        }

        v129 = v128;
        v130 = sub_25E9D7870();

        v131 = v163;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v176 = v131;
        sub_25E993FE0(13, v130, v118, v52, v132);

        v163 = v176;
        goto LABEL_17;
      }
    }

    v98 = [v57 collectionContext];
    if (!v98 || (v99 = v98, v100 = [v98 ended], v99, !v100))
    {

      goto LABEL_16;
    }

    v101 = sub_25E9D7F00();
    v102 = sub_25E9D8120();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = v52;
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_25E971000, v101, v102, "qdCollectionContext: ended", v104, 2u);
      v105 = v104;
      v52 = v103;
      MEMORY[0x25F8C51A0](v105, -1, -1);
    }

    v106 = sub_25E9D7850();
    v107 = v172;
    if (!v106)
    {
      goto LABEL_102;
    }

    v108 = v106;
    v109 = sub_25E9D7870();

    v110 = v162;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v110;
    sub_25E993FE0(14, v109, v107, v52, v111);

    v162 = v176;
LABEL_17:
    v22 = v174 + 1;
    v7 = v167;
    if (v173 == v166)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

void sub_25E9AB3D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v554 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v558 = &v554 - v5;
  v6 = MEMORY[0x277D84F90];
  v599 = sub_25E97FE4C(MEMORY[0x277D84F90]);
  v598 = sub_25E97FE4C(v6);
  v597 = sub_25E97FE4C(v6);
  v596 = sub_25E97FE4C(v6);
  v595 = sub_25E97FE4C(v6);
  v594 = sub_25E97FE4C(v6);
  v593 = sub_25E97FE4C(v6);
  v592 = sub_25E97FE4C(v6);
  v591 = sub_25E97FE4C(v6);
  v590 = sub_25E97FE4C(v6);
  v573 = sub_25E97FE4C(v6);
  v565 = sub_25E97FE4C(v6);
  v572 = sub_25E97FE4C(v6);
  v564 = sub_25E97FE4C(v6);
  v571 = sub_25E97FE4C(v6);
  v563 = sub_25E97FE4C(v6);
  v570 = sub_25E97FE4C(v6);
  v562 = sub_25E97FE4C(v6);
  v567 = sub_25E97FE4C(v6);
  v561 = sub_25E97FE4C(v6);
  swift_beginAccess();
  v7 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v17 = sub_25E9D7F10();
    __swift_project_value_buffer(v17, qword_27FD0DB60);
    v18 = sub_25E9D7F00();
    v19 = sub_25E9D8120();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E971000, v18, v19, "QDSchemaQDClientEvent: Failed to init", v20, 2u);
      MEMORY[0x25F8C51A0](v20, -1, -1);
    }

    goto LABEL_197;
  }

  v557 = v4;
  sub_25E98F558(0, &qword_27FD0DC18, 0x277D5A280);
  v8 = v7;
  v9 = sub_25E9D7E80();

  if (qword_27FD0D5B8 != -1)
  {
LABEL_194:
    swift_once();
  }

  v10 = sub_25E9D7F10();
  v11 = __swift_project_value_buffer(v10, qword_27FD0DB60);

  v585 = v11;
  v12 = sub_25E9D7F00();
  v13 = sub_25E9D8120();
  v14 = os_log_type_enabled(v12, v13);
  v555 = v9;
  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v9 >> 62)
    {
      v553 = sub_25E9D8290();
      v9 = v555;
      v16 = v553;
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    _os_log_impl(&dword_25E971000, v12, v13, "evaluateQDSpanStartEnd length %ld", v15, 0xCu);
    MEMORY[0x25F8C51A0](v15, -1, -1);
  }

  else
  {
  }

  v588[0] = v9;

  v21 = v556;
  sub_25E9B54B8(v588);
  v556 = v21;
  v23 = v588[0];
  if (v588[0] >> 62)
  {
    v24 = sub_25E9D8290();
    if (v24)
    {
      goto LABEL_15;
    }

    goto LABEL_196;
  }

  v24 = *((v588[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_196:

LABEL_197:
    v376 = v599;
    v377 = v566;
    v378 = v566[5];
    v566[5] = v599;

    v379 = v598;
    v380 = v377[6];
    v377[6] = v598;

    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v381 = sub_25E9D7F10();
    v585 = __swift_project_value_buffer(v381, qword_27FD0DB60);
    v382 = sub_25E9D7F00();
    v383 = sub_25E9D8120();
    if (os_log_type_enabled(v382, v383))
    {
      v384 = swift_slowAlloc();
      v385 = swift_slowAlloc();
      v588[0] = v385;
      *v384 = 136315394;
      swift_beginAccess();
      v386 = v599;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v387 = sub_25E9D7F40();
      v389 = v388;
      v584 = v386;

      v390 = sub_25E9887EC(v387, v389, v588);

      *(v384 + 4) = v390;
      *(v384 + 12) = 2080;
      swift_beginAccess();
      v391 = v598;

      v392 = sub_25E9D7F40();
      v394 = v393;
      v583 = v391;

      v395 = sub_25E9887EC(v392, v394, v588);

      *(v384 + 14) = v395;
      _os_log_impl(&dword_25E971000, v382, v383, "QD SUB START HASHMAP qdInputCollectionStart:Event %s, QD SUB END HASHMAP qdInputCollectionEnd:Event %s", v384, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v385, -1, -1);
      MEMORY[0x25F8C51A0](v384, -1, -1);
    }

    else
    {
      v583 = v379;
      v584 = v376;
    }

    v396 = v597;
    v397 = v566;
    v398 = v566[7];
    v566[7] = v597;

    v399 = v596;
    v400 = v397[8];
    v397[8] = v596;

    v401 = sub_25E9D7F00();
    v402 = sub_25E9D8120();
    if (os_log_type_enabled(v401, v402))
    {
      v403 = swift_slowAlloc();
      v404 = swift_slowAlloc();
      v588[0] = v404;
      *v403 = 136315394;
      swift_beginAccess();
      v405 = v597;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v406 = sub_25E9D7F40();
      v408 = v407;
      v582 = v405;

      v409 = sub_25E9887EC(v406, v408, v588);

      *(v403 + 4) = v409;
      *(v403 + 12) = 2080;
      swift_beginAccess();
      v410 = v596;

      v411 = sub_25E9D7F40();
      v413 = v412;
      v581 = v410;

      v414 = sub_25E9887EC(v411, v413, v588);

      *(v403 + 14) = v414;
      _os_log_impl(&dword_25E971000, v401, v402, "QD SUB START HASHMAP qdSpanRetrievalStart:Event %s, QD SUB END HASHMAP qdSpanRetrievalEnd:Event %s", v403, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v404, -1, -1);
      MEMORY[0x25F8C51A0](v403, -1, -1);
    }

    else
    {
      v581 = v399;
      v582 = v396;
    }

    v415 = v595;
    v416 = v566;
    v417 = v566[9];
    v566[9] = v595;

    v418 = v594;
    v419 = v416[10];
    v416[10] = v594;

    v420 = sub_25E9D7F00();
    v421 = sub_25E9D8120();
    if (os_log_type_enabled(v420, v421))
    {
      v422 = swift_slowAlloc();
      v423 = swift_slowAlloc();
      v588[0] = v423;
      *v422 = 136315394;
      swift_beginAccess();
      v424 = v595;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v425 = sub_25E9D7F40();
      v427 = v426;
      v580 = v424;

      v428 = sub_25E9887EC(v425, v427, v588);

      *(v422 + 4) = v428;
      *(v422 + 12) = 2080;
      swift_beginAccess();
      v429 = v594;

      v430 = sub_25E9D7F40();
      v432 = v431;
      v579 = v429;

      v433 = sub_25E9887EC(v430, v432, v588);

      *(v422 + 14) = v433;
      _os_log_impl(&dword_25E971000, v420, v421, "QD SUB START HASHMAP qdContextRetrievalStart:Event %s, QD SUB END HASHMAP qdContextRetrievalEnd:Event %s", v422, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v423, -1, -1);
      MEMORY[0x25F8C51A0](v422, -1, -1);
    }

    else
    {
      v579 = v418;
      v580 = v415;
    }

    v434 = v593;
    v435 = v566;
    v436 = v566[11];
    v566[11] = v593;

    v437 = v592;
    v438 = v435[12];
    v435[12] = v592;

    v439 = sub_25E9D7F00();
    v440 = sub_25E9D8120();
    if (os_log_type_enabled(v439, v440))
    {
      v441 = swift_slowAlloc();
      v442 = swift_slowAlloc();
      v588[0] = v442;
      *v441 = 136315394;
      swift_beginAccess();
      v443 = v593;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v444 = sub_25E9D7F40();
      v446 = v445;
      *&v578 = v443;

      v447 = sub_25E9887EC(v444, v446, v588);

      *(v441 + 4) = v447;
      *(v441 + 12) = 2080;
      swift_beginAccess();
      v448 = v592;

      v449 = sub_25E9D7F40();
      v451 = v450;
      v577 = v448;

      v452 = sub_25E9887EC(v449, v451, v588);

      *(v441 + 14) = v452;
      _os_log_impl(&dword_25E971000, v439, v440, "QD SUB START HASHMAP qdToolRetrievalContextStart:Event %s, QD SUB END HASHMAP qdToolRetrievalContextEnd:Event %s", v441, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v442, -1, -1);
      MEMORY[0x25F8C51A0](v441, -1, -1);
    }

    else
    {
      v577 = v437;
      *&v578 = v434;
    }

    v453 = v591;
    v454 = v566;
    v455 = v566[13];
    v566[13] = v591;

    v456 = v590;
    v457 = v454[14];
    v454[14] = v590;

    v458 = sub_25E9D7F00();
    v459 = sub_25E9D8120();
    if (os_log_type_enabled(v458, v459))
    {
      v460 = swift_slowAlloc();
      v461 = swift_slowAlloc();
      v589 = v461;
      *v460 = 136315394;
      swift_beginAccess();
      v462 = v591;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v463 = sub_25E9D7F40();
      v465 = v464;
      v576 = v462;

      v466 = sub_25E9887EC(v463, v465, &v589);

      *(v460 + 4) = v466;
      *(v460 + 12) = 2080;
      swift_beginAccess();
      v456 = v590;

      v467 = sub_25E9D7F40();
      v469 = v468;

      v470 = sub_25E9887EC(v467, v469, &v589);

      *(v460 + 14) = v470;
      _os_log_impl(&dword_25E971000, v458, v459, "QD SUB START HASHMAP qdToolRetrievalStart:Event %s, QD SUB END HASHMAP qdToolRetrievalEnd:Event %s", v460, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v461, -1, -1);
      MEMORY[0x25F8C51A0](v460, -1, -1);
    }

    else
    {
      v576 = v453;
    }

    v472 = v565;
    v471 = v566;
    v473 = v566[15];
    v566[15] = v573;

    v474 = v471[16];
    v471[16] = v472;

    v475 = sub_25E9D7F00();
    v476 = sub_25E9D8120();
    v477 = os_log_type_enabled(v475, v476);
    *&v575 = v456;
    if (v477)
    {
      v478 = swift_slowAlloc();
      v574 = swift_slowAlloc();
      v589 = v574;
      *v478 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v479 = sub_25E9D7F40();
      v481 = v480;

      v482 = sub_25E9887EC(v479, v481, &v589);

      *(v478 + 4) = v482;
      *(v478 + 12) = 2080;

      v483 = sub_25E9D7F40();
      v485 = v484;

      v486 = sub_25E9887EC(v483, v485, &v589);

      *(v478 + 14) = v486;
      _os_log_impl(&dword_25E971000, v475, v476, "QD SUB START HASHMAP qdRankingStart:Event %s, QD SUB END HASHMAP qdRankingEnd:Event %s", v478, 0x16u);
      v487 = v574;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v487, -1, -1);
      MEMORY[0x25F8C51A0](v478, -1, -1);
    }

    v488 = v564;
    v489 = v566;
    v490 = v566[17];
    v566[17] = v572;

    v491 = v489[18];
    v489[18] = v488;

    v492 = sub_25E9D7F00();
    v493 = sub_25E9D8120();
    if (os_log_type_enabled(v492, v493))
    {
      v494 = swift_slowAlloc();
      v574 = swift_slowAlloc();
      v589 = v574;
      *v494 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v495 = sub_25E9D7F40();
      v497 = v496;

      v498 = sub_25E9887EC(v495, v497, &v589);

      *(v494 + 4) = v498;
      *(v494 + 12) = 2080;

      v499 = sub_25E9D7F40();
      v501 = v500;

      v502 = sub_25E9887EC(v499, v501, &v589);

      *(v494 + 14) = v502;
      _os_log_impl(&dword_25E971000, v492, v493, "QD SUB START HASHMAP qdTupleBuildingStart:Event %s, QD SUB END HASHMAP qdTupleBuildingEnd:Event %s", v494, 0x16u);
      v503 = v574;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v503, -1, -1);
      MEMORY[0x25F8C51A0](v494, -1, -1);
    }

    v504 = v563;
    v505 = v566;
    v506 = v566[19];
    v566[19] = v571;

    v507 = v505[20];
    v505[20] = v504;

    v508 = sub_25E9D7F00();
    v509 = sub_25E9D8120();
    if (os_log_type_enabled(v508, v509))
    {
      v510 = swift_slowAlloc();
      v574 = swift_slowAlloc();
      v589 = v574;
      *v510 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v511 = sub_25E9D7F40();
      v513 = v512;

      v514 = sub_25E9887EC(v511, v513, &v589);

      *(v510 + 4) = v514;
      *(v510 + 12) = 2080;

      v515 = sub_25E9D7F40();
      v517 = v516;

      v518 = sub_25E9887EC(v515, v517, &v589);

      *(v510 + 14) = v518;
      _os_log_impl(&dword_25E971000, v508, v509, "QD SUB START HASHMAP qdTupleRankingStart:Event %s, QD SUB END HASHMAP qdTupleRankingEnd:Event %s", v510, 0x16u);
      v519 = v574;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v519, -1, -1);
      MEMORY[0x25F8C51A0](v510, -1, -1);
    }

    v520 = v562;
    v521 = v566;
    v522 = v566[21];
    v566[21] = v570;

    v523 = v521[22];
    v521[22] = v520;

    v524 = sub_25E9D7F00();
    v525 = sub_25E9D8120();
    if (os_log_type_enabled(v524, v525))
    {
      v526 = swift_slowAlloc();
      v574 = swift_slowAlloc();
      v589 = v574;
      *v526 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v527 = sub_25E9D7F40();
      v529 = v528;

      v530 = sub_25E9887EC(v527, v529, &v589);

      *(v526 + 4) = v530;
      *(v526 + 12) = 2080;

      v531 = sub_25E9D7F40();
      v533 = v532;

      v534 = sub_25E9887EC(v531, v533, &v589);

      *(v526 + 14) = v534;
      _os_log_impl(&dword_25E971000, v524, v525, "QD SUB START HASHMAP qdOutputBuildingStart:Event %s, QD SUB END HASHMAP qdOutputBuildingEnd:Event %s", v526, 0x16u);
      v535 = v574;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v535, -1, -1);
      MEMORY[0x25F8C51A0](v526, -1, -1);
    }

    v536 = v566;
    v537 = v566[25];
    v566[25] = v567;

    v538 = v536[26];
    v539 = v561;
    v536[26] = v561;

    v540 = sub_25E9D7F00();
    v541 = sub_25E9D8120();
    if (os_log_type_enabled(v540, v541))
    {
      v542 = swift_slowAlloc();
      v561 = v539;
      v543 = v542;
      v585 = swift_slowAlloc();
      v589 = v585;
      *v543 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v544 = sub_25E9D7F40();
      v546 = v545;

      v547 = sub_25E9887EC(v544, v546, &v589);

      *(v543 + 4) = v547;
      *(v543 + 12) = 2080;

      v548 = sub_25E9D7F40();
      v550 = v549;

      v551 = sub_25E9887EC(v548, v550, &v589);

      *(v543 + 14) = v551;
      _os_log_impl(&dword_25E971000, v540, v541, "QD SUB START HASHMAP qdFetchDynamicEnumerationEntitiesStart:Event %s, QD SUB END HASHMAP qdFetchDynamicEnumerationEntitiesEnd:Event %s", v543, 0x16u);
      v552 = v585;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v552, -1, -1);
      MEMORY[0x25F8C51A0](v543, -1, -1);
    }

    return;
  }

LABEL_15:
  v25 = 0;
  v569 = v23 & 0xC000000000000001;
  v559 = v23 & 0xFFFFFFFFFFFFFF8;
  *&v22 = 136315138;
  v578 = v22;
  *&v22 = 136315906;
  v560 = v22;
  v575 = xmmword_25E9D96A0;
  v574 = v24;
  v568 = v23;
  while (1)
  {
    if (v569)
    {
      v36 = v25;
      v37 = MEMORY[0x25F8C4B40](v25, v23);
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_192;
      }
    }

    else
    {
      if (v25 >= *(v559 + 16))
      {
        goto LABEL_193;
      }

      v36 = v25;
      v37 = *(v23 + 8 * v25 + 32);
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }
    }

    v576 = v38;
    v577 = v36;
    v39 = v37;
    v40 = sub_25E9D7F00();
    v41 = sub_25E9D8120();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v587[0] = v43;
      *v42 = v578;
      v44 = [v39 debugDescription];
      v45 = sub_25E9D7FB0();
      v47 = v46;

      v48 = sub_25E9887EC(v45, v47, v587);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_25E971000, v40, v41, "evaluateQDSpanStartEnd value %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F8C51A0](v43, -1, -1);
      MEMORY[0x25F8C51A0](v42, -1, -1);
    }

    v49 = sub_25E9D7840();
    if (v49)
    {
      v50 = v49;
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (!v51)
      {
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    v53 = sub_25E9D7F00();
    v54 = sub_25E9D8120();

    v55 = os_log_type_enabled(v53, v54);
    v582 = v39;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v587[0] = v57;
      *v56 = v578;
      v586 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC10, &qword_25E9DB6E8);
      v58 = sub_25E9D81B0();
      v60 = sub_25E9887EC(v58, v59, v587);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_25E971000, v53, v54, "qdSubEvent Client Event value %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x25F8C51A0](v57, -1, -1);
      MEMORY[0x25F8C51A0](v56, -1, -1);
    }

    if (!v51)
    {
      goto LABEL_39;
    }

    v61 = [v52 eventMetadata];
    if (!v61)
    {
      goto LABEL_39;
    }

    v62 = v61;
    v63 = [v61 qdId];

    if (!v63)
    {
      goto LABEL_39;
    }

    v64 = v558;
    sub_25E9D8100();

    v65 = v64;
    v66 = sub_25E9D77F0();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      sub_25E9961C4(v65);
LABEL_39:
      v583 = 0;
      v68 = 0xE000000000000000;
      goto LABEL_40;
    }

    v583 = sub_25E9D77C0();
    v68 = v109;
    (*(v67 + 8))(v65, v66);
LABEL_40:

    v69 = sub_25E9D7F00();
    v70 = sub_25E9D8120();

    v71 = os_log_type_enabled(v69, v70);
    v581 = v68;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v587[0] = v73;
      *v72 = v578;
      v74 = sub_25E9D8000();
      v76 = sub_25E9887EC(v74, v75, v587);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_25E971000, v69, v70, "QDID value %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x25F8C51A0](v73, -1, -1);
      MEMORY[0x25F8C51A0](v72, -1, -1);
    }

    if (!v51)
    {
      goto LABEL_47;
    }

    v77 = [v52 subComponentContext];
    if (!v77)
    {
      goto LABEL_47;
    }

    v78 = v77;
    v79 = [v77 traceId];

    if (!v79)
    {
      goto LABEL_47;
    }

    v80 = v557;
    sub_25E9D8100();

    v81 = sub_25E9D77F0();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1, v81) == 1)
    {
      sub_25E9961C4(v80);
LABEL_47:
      v83 = 0;
      v84 = 0xE000000000000000;
      goto LABEL_48;
    }

    v83 = sub_25E9D77C0();
    v84 = v110;
    (*(v82 + 8))(v80, v81);
LABEL_48:

    v85 = sub_25E9D7F00();
    v86 = sub_25E9D8120();

    v87 = os_log_type_enabled(v85, v86);
    v584 = v84;
    v579 = v83;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v587[0] = v89;
      *v88 = v578;
      v90 = sub_25E9D8000();
      v92 = sub_25E9887EC(v90, v91, v587);

      *(v88 + 4) = v92;
      v83 = v579;
      _os_log_impl(&dword_25E971000, v85, v86, "TRACEID value %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x25F8C51A0](v89, -1, -1);
      MEMORY[0x25F8C51A0](v88, -1, -1);
    }

    v93 = v582;
    v94 = v52;
    v95 = v93;
    v96 = sub_25E9D7F00();
    v97 = sub_25E9D8120();
    v580 = v94;

    v98 = os_log_type_enabled(v96, v97);
    v582 = v95;
    if (v98)
    {
      break;
    }

    v9 = v581;
    v35 = v574;
    if (!v51)
    {
      goto LABEL_101;
    }

LABEL_74:
    v130 = [v580 subComponentContext];
    if (v130)
    {
      v131 = v130;
      v132 = [v130 startedOrChanged];

      if (v132)
      {
        v133 = [v132 subComponent];

        if (v133 > 5)
        {
          if (v133 <= 7)
          {
            if (v133 == 6)
            {
              v316 = sub_25E9D7F00();
              v317 = sub_25E9D8120();
              if (os_log_type_enabled(v316, v317))
              {
                v318 = swift_slowAlloc();
                *v318 = 0;
                _os_log_impl(&dword_25E971000, v316, v317, "subComponentContext: QDSUBCOMPONENT_RANKING", v318, 2u);
                MEMORY[0x25F8C51A0](v318, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v319 = swift_allocObject();
              *(v319 + 16) = v575;
              *(v319 + 32) = v83;
              v9 = v319 + 32;
              *(v319 + 40) = v584;

              v320 = v582;
              v321 = sub_25E9D7850();
              if (!v321)
              {
                goto LABEL_241;
              }

              v322 = v321;

              v323 = sub_25E9D7870();

              *(v319 + 48) = 25;
              *(v319 + 56) = v323;
              v324 = sub_25E97F328(v319);
              swift_setDeallocating();
              v325 = *(v319 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v326 = v573;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v326;
              sub_25E9944EC(v324, v583, v581, isUniquelyReferenced_nonNull_native);

              v573 = v587[0];
            }

            else
            {
              v161 = sub_25E9D7F00();
              v162 = sub_25E9D8120();
              if (os_log_type_enabled(v161, v162))
              {
                v163 = swift_slowAlloc();
                *v163 = 0;
                _os_log_impl(&dword_25E971000, v161, v162, "subComponentContext: QDSUBCOMPONENT_TUPLE_BUILDING", v163, 2u);
                MEMORY[0x25F8C51A0](v163, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v164 = swift_allocObject();
              *(v164 + 16) = v575;
              *(v164 + 32) = v83;
              v9 = v164 + 32;
              *(v164 + 40) = v584;

              v165 = v582;
              v166 = sub_25E9D7850();
              if (!v166)
              {
                goto LABEL_240;
              }

              v167 = v166;

              v168 = sub_25E9D7870();

              *(v164 + 48) = 27;
              *(v164 + 56) = v168;
              v169 = sub_25E97F328(v164);
              swift_setDeallocating();
              v170 = *(v164 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v171 = v572;
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v171;
              sub_25E9944EC(v169, v583, v581, v172);

              v572 = v587[0];
            }

            goto LABEL_18;
          }

          switch(v133)
          {
            case 8:
              v340 = sub_25E9D7F00();
              v341 = sub_25E9D8120();
              if (os_log_type_enabled(v340, v341))
              {
                v342 = swift_slowAlloc();
                *v342 = 0;
                _os_log_impl(&dword_25E971000, v340, v341, "subComponentContext: QDSUBCOMPONENT_TUPLE_RANKING", v342, 2u);
                MEMORY[0x25F8C51A0](v342, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v343 = swift_allocObject();
              *(v343 + 16) = v575;
              *(v343 + 32) = v83;
              v9 = v343 + 32;
              *(v343 + 40) = v584;

              v344 = v582;
              v345 = sub_25E9D7850();
              if (!v345)
              {
                goto LABEL_239;
              }

              v346 = v345;

              v347 = sub_25E9D7870();

              *(v343 + 48) = 29;
              *(v343 + 56) = v347;
              v348 = sub_25E97F328(v343);
              swift_setDeallocating();
              v349 = *(v343 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v350 = v571;
              v351 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v350;
              sub_25E9944EC(v348, v583, v581, v351);

              v571 = v587[0];
              goto LABEL_18;
            case 9:
              v364 = sub_25E9D7F00();
              v365 = sub_25E9D8120();
              if (os_log_type_enabled(v364, v365))
              {
                v366 = swift_slowAlloc();
                *v366 = 0;
                _os_log_impl(&dword_25E971000, v364, v365, "subComponentContext: QDSUBCOMPONENT_OUTPUT_BUILDING", v366, 2u);
                MEMORY[0x25F8C51A0](v366, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v367 = swift_allocObject();
              *(v367 + 16) = v575;
              *(v367 + 32) = v83;
              v9 = v367 + 32;
              *(v367 + 40) = v584;

              v368 = v582;
              v369 = sub_25E9D7850();
              if (!v369)
              {
                goto LABEL_238;
              }

              v370 = v369;

              v371 = sub_25E9D7870();

              *(v367 + 48) = 31;
              *(v367 + 56) = v371;
              v372 = sub_25E97F328(v367);
              swift_setDeallocating();
              v373 = *(v367 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v374 = v570;
              v375 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v374;
              sub_25E9944EC(v372, v583, v581, v375);

              v570 = v587[0];
              goto LABEL_18;
            case 11:
              v146 = sub_25E9D7F00();
              v147 = sub_25E9D8120();
              if (os_log_type_enabled(v146, v147))
              {
                v148 = swift_slowAlloc();
                *v148 = 0;
                _os_log_impl(&dword_25E971000, v146, v147, "subComponentContext: QDSUBCOMPONENT_FETCH_DYNAMIC_ENUMERATION_ENTITIES", v148, 2u);
                MEMORY[0x25F8C51A0](v148, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v149 = swift_allocObject();
              *(v149 + 16) = v575;
              *(v149 + 32) = v83;
              v9 = v149 + 32;
              *(v149 + 40) = v584;

              v150 = v582;
              v151 = sub_25E9D7850();
              if (!v151)
              {
                goto LABEL_237;
              }

              v152 = v151;

              v153 = sub_25E9D7870();

              *(v149 + 48) = 35;
              *(v149 + 56) = v153;
              v154 = sub_25E97F328(v149);
              swift_setDeallocating();
              v155 = *(v149 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v156 = v567;
              v157 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v156;
              sub_25E9944EC(v154, v583, v581, v157);

              v567 = v587[0];
              goto LABEL_18;
          }
        }

        else
        {
          if (v133 > 2)
          {
            if (v133 == 3)
            {
              v328 = sub_25E9D7F00();
              v329 = sub_25E9D8120();
              if (os_log_type_enabled(v328, v329))
              {
                v330 = swift_slowAlloc();
                *v330 = 0;
                _os_log_impl(&dword_25E971000, v328, v329, "subComponentContext: QDSUBCOMPONENT_CONTEXT_RETRIEVAL", v330, 2u);
                MEMORY[0x25F8C51A0](v330, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v331 = swift_allocObject();
              *(v331 + 16) = v575;
              *(v331 + 32) = v83;
              v9 = v331 + 32;
              *(v331 + 40) = v584;

              v332 = v582;
              v333 = sub_25E9D7850();
              if (!v333)
              {
                goto LABEL_244;
              }

              v334 = v333;

              v335 = sub_25E9D7870();

              *(v331 + 48) = 19;
              *(v331 + 56) = v335;
              v336 = sub_25E97F328(v331);
              swift_setDeallocating();
              v337 = *(v331 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v338 = v595;
              v339 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v338;
              sub_25E9944EC(v336, v583, v581, v339);

              v595 = v587[0];
            }

            else if (v133 == 4)
            {
              v352 = sub_25E9D7F00();
              v353 = sub_25E9D8120();
              if (os_log_type_enabled(v352, v353))
              {
                v354 = swift_slowAlloc();
                *v354 = 0;
                _os_log_impl(&dword_25E971000, v352, v353, "subComponentContext: QDSUBCOMPONENT_TOOL_RETRIEVAL_CONTEXT", v354, 2u);
                MEMORY[0x25F8C51A0](v354, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v355 = swift_allocObject();
              *(v355 + 16) = v575;
              *(v355 + 32) = v83;
              v9 = v355 + 32;
              *(v355 + 40) = v584;

              v356 = v582;
              v357 = sub_25E9D7850();
              if (!v357)
              {
                goto LABEL_243;
              }

              v358 = v357;

              v359 = sub_25E9D7870();

              *(v355 + 48) = 21;
              *(v355 + 56) = v359;
              v360 = sub_25E97F328(v355);
              swift_setDeallocating();
              v361 = *(v355 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v362 = v593;
              v363 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v362;
              sub_25E9944EC(v360, v583, v581, v363);

              v593 = v587[0];
            }

            else
            {
              v134 = sub_25E9D7F00();
              v135 = sub_25E9D8120();
              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                *v136 = 0;
                _os_log_impl(&dword_25E971000, v134, v135, "subComponentContext: QDSUBCOMPONENT_TOOL_RETRIEVAL", v136, 2u);
                MEMORY[0x25F8C51A0](v136, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v137 = swift_allocObject();
              *(v137 + 16) = v575;
              *(v137 + 32) = v83;
              v9 = v137 + 32;
              *(v137 + 40) = v584;

              v138 = v582;
              v139 = sub_25E9D7850();
              if (!v139)
              {
                goto LABEL_242;
              }

              v140 = v139;

              v141 = sub_25E9D7870();

              *(v137 + 48) = 23;
              *(v137 + 56) = v141;
              v142 = sub_25E97F328(v137);
              swift_setDeallocating();
              v143 = *(v137 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v144 = v591;
              v145 = swift_isUniquelyReferenced_nonNull_native();
              v587[0] = v144;
              sub_25E9944EC(v142, v583, v581, v145);

              v591 = v587[0];
            }

            goto LABEL_18;
          }

          if (v133 == 1)
          {
            v304 = sub_25E9D7F00();
            v305 = sub_25E9D8120();
            if (os_log_type_enabled(v304, v305))
            {
              v306 = swift_slowAlloc();
              *v306 = 0;
              _os_log_impl(&dword_25E971000, v304, v305, "subComponentContext: QDSUBCOMPONENT_INPUT_COLLECTION", v306, 2u);
              MEMORY[0x25F8C51A0](v306, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
            v307 = swift_allocObject();
            *(v307 + 16) = v575;
            *(v307 + 32) = v83;
            v9 = v307 + 32;
            *(v307 + 40) = v584;

            v308 = v582;
            v309 = sub_25E9D7850();
            if (!v309)
            {
              goto LABEL_246;
            }

            v310 = v309;

            v311 = sub_25E9D7870();

            *(v307 + 48) = 15;
            *(v307 + 56) = v311;
            v312 = sub_25E97F328(v307);
            swift_setDeallocating();
            v313 = *(v307 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v314 = v599;
            v315 = swift_isUniquelyReferenced_nonNull_native();
            v587[0] = v314;
            sub_25E9944EC(v312, v583, v581, v315);

            v599 = v587[0];
LABEL_18:
            v35 = v574;
            goto LABEL_19;
          }

          if (v133 == 2)
          {
            v158 = sub_25E9D7F00();
            v159 = sub_25E9D8120();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              *v160 = 0;
              _os_log_impl(&dword_25E971000, v158, v159, "subComponentContext: QDSUBCOMPONENT_SPAN_RETRIEVAL", v160, 2u);
              MEMORY[0x25F8C51A0](v160, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
            v26 = swift_allocObject();
            *(v26 + 16) = v575;
            *(v26 + 32) = v83;
            v9 = v26 + 32;
            *(v26 + 40) = v584;

            v27 = v582;
            v28 = sub_25E9D7850();
            if (!v28)
            {
              goto LABEL_245;
            }

            v29 = v28;

            v30 = sub_25E9D7870();

            *(v26 + 48) = 17;
            *(v26 + 56) = v30;
            v31 = sub_25E97F328(v26);
            swift_setDeallocating();
            v32 = *(v26 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v33 = v597;
            v34 = swift_isUniquelyReferenced_nonNull_native();
            v587[0] = v33;
            sub_25E9944EC(v31, v583, v581, v34);

            v597 = v587[0];
            goto LABEL_18;
          }
        }
      }
    }

LABEL_101:
    v173 = sub_25E9D7F00();
    v174 = sub_25E9D8120();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_25E971000, v173, v174, "subComponentContext: default", v175, 2u);
      MEMORY[0x25F8C51A0](v175, -1, -1);
    }

    v176 = v583;
    v177 = sub_25E976F20(v583, v9, v599);
    if (v177)
    {
      if (*(v177 + 16))
      {
        sub_25E978F5C(v83, v584);
        v179 = v178;

        if (v179)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v180 = swift_allocObject();
          *(v180 + 16) = v575;
          *(v180 + 32) = v83;
          *(v180 + 40) = v584;

          v181 = sub_25E9D7850();
          if (!v181)
          {
            goto LABEL_235;
          }

          v182 = v181;
          v183 = sub_25E9D7870();

          *(v180 + 48) = 16;
          *(v180 + 56) = v183;
          v184 = sub_25E97F328(v180);
          swift_setDeallocating();
          v185 = *(v180 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v186 = v598;
          v187 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v186;
          v176 = v583;
          sub_25E9944EC(v184, v583, v9, v187);

          v598 = v587[0];
        }
      }

      else
      {
      }
    }

    v188 = sub_25E976F20(v176, v9, v597);
    if (v188)
    {
      if (*(v188 + 16))
      {
        sub_25E978F5C(v83, v584);
        v190 = v189;

        if (v190)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v191 = swift_allocObject();
          *(v191 + 16) = v575;
          *(v191 + 32) = v83;
          *(v191 + 40) = v584;

          v192 = sub_25E9D7850();
          if (!v192)
          {
            goto LABEL_236;
          }

          v193 = v192;
          v194 = sub_25E9D7870();

          *(v191 + 48) = 18;
          *(v191 + 56) = v194;
          v195 = sub_25E97F328(v191);
          swift_setDeallocating();
          v196 = *(v191 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v197 = v596;
          v198 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v197;
          v176 = v583;
          sub_25E9944EC(v195, v583, v9, v198);

          v596 = v587[0];
        }
      }

      else
      {
      }
    }

    v199 = sub_25E976F20(v176, v9, v595);
    if (v199)
    {
      if (*(v199 + 16))
      {
        sub_25E978F5C(v83, v584);
        v201 = v200;

        if (v201)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v202 = swift_allocObject();
          *(v202 + 16) = v575;
          *(v202 + 32) = v83;
          *(v202 + 40) = v584;

          v203 = sub_25E9D7850();
          if (!v203)
          {
            goto LABEL_227;
          }

          v204 = v203;
          v205 = sub_25E9D7870();

          *(v202 + 48) = 20;
          *(v202 + 56) = v205;
          v206 = sub_25E97F328(v202);
          swift_setDeallocating();
          v207 = *(v202 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v208 = v594;
          v209 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v208;
          v176 = v583;
          sub_25E9944EC(v206, v583, v9, v209);

          v594 = v587[0];
        }
      }

      else
      {
      }
    }

    v210 = sub_25E976F20(v176, v9, v593);
    if (v210)
    {
      if (*(v210 + 16))
      {
        sub_25E978F5C(v83, v584);
        v212 = v211;

        if (v212)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v213 = swift_allocObject();
          *(v213 + 16) = v575;
          *(v213 + 32) = v83;
          *(v213 + 40) = v584;

          v214 = sub_25E9D7850();
          if (!v214)
          {
            goto LABEL_228;
          }

          v215 = v214;
          v216 = sub_25E9D7870();

          *(v213 + 48) = 22;
          *(v213 + 56) = v216;
          v217 = sub_25E97F328(v213);
          swift_setDeallocating();
          v218 = *(v213 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v219 = v592;
          v220 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v219;
          v176 = v583;
          sub_25E9944EC(v217, v583, v9, v220);

          v592 = v587[0];
        }
      }

      else
      {
      }
    }

    v221 = sub_25E976F20(v176, v9, v591);
    if (v221)
    {
      if (*(v221 + 16))
      {
        sub_25E978F5C(v83, v584);
        v223 = v222;

        if (v223)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v224 = swift_allocObject();
          *(v224 + 16) = v575;
          *(v224 + 32) = v83;
          *(v224 + 40) = v584;

          v225 = sub_25E9D7850();
          if (!v225)
          {
            goto LABEL_229;
          }

          v226 = v225;
          v227 = sub_25E9D7870();

          *(v224 + 48) = 24;
          *(v224 + 56) = v227;
          v228 = sub_25E97F328(v224);
          swift_setDeallocating();
          v229 = *(v224 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v230 = v590;
          v231 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v230;
          v176 = v583;
          sub_25E9944EC(v228, v583, v9, v231);

          v590 = v587[0];
        }
      }

      else
      {
      }
    }

    v232 = sub_25E976F20(v176, v9, v573);
    if (v232)
    {
      if (*(v232 + 16))
      {
        v233 = v83;
        v234 = v83;
        v235 = v584;
        sub_25E978F5C(v233, v584);
        v237 = v236;

        if (v237)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v238 = swift_allocObject();
          *(v238 + 16) = v575;
          *(v238 + 32) = v234;
          *(v238 + 40) = v235;

          v239 = sub_25E9D7850();
          if (!v239)
          {
            goto LABEL_230;
          }

          v240 = v239;
          v241 = sub_25E9D7870();

          *(v238 + 48) = 26;
          *(v238 + 56) = v241;
          v242 = sub_25E97F328(v238);
          swift_setDeallocating();
          v243 = *(v238 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v244 = v565;
          v245 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v244;
          v176 = v583;
          sub_25E9944EC(v242, v583, v9, v245);

          v565 = v587[0];
          v83 = v579;
        }

        else
        {
          v83 = v234;
        }
      }

      else
      {
      }
    }

    v246 = sub_25E976F20(v176, v9, v572);
    if (v246)
    {
      if (*(v246 + 16))
      {
        v247 = v83;
        v248 = v83;
        v249 = v584;
        sub_25E978F5C(v247, v584);
        v251 = v250;

        if (v251)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v252 = swift_allocObject();
          *(v252 + 16) = v575;
          *(v252 + 32) = v248;
          *(v252 + 40) = v249;

          v253 = sub_25E9D7850();
          if (!v253)
          {
            goto LABEL_231;
          }

          v254 = v253;
          v255 = sub_25E9D7870();

          *(v252 + 48) = 28;
          *(v252 + 56) = v255;
          v256 = sub_25E97F328(v252);
          swift_setDeallocating();
          v257 = *(v252 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v258 = v564;
          v259 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v258;
          v176 = v583;
          sub_25E9944EC(v256, v583, v9, v259);

          v564 = v587[0];
          v83 = v579;
        }

        else
        {
          v83 = v248;
        }
      }

      else
      {
      }
    }

    v260 = sub_25E976F20(v176, v9, v571);
    if (v260)
    {
      if (*(v260 + 16))
      {
        v261 = v83;
        v262 = v83;
        v263 = v584;
        sub_25E978F5C(v261, v584);
        v265 = v264;

        if (v265)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v266 = swift_allocObject();
          *(v266 + 16) = v575;
          *(v266 + 32) = v262;
          *(v266 + 40) = v263;

          v267 = sub_25E9D7850();
          if (!v267)
          {
            goto LABEL_232;
          }

          v268 = v267;
          v269 = sub_25E9D7870();

          *(v266 + 48) = 30;
          *(v266 + 56) = v269;
          v270 = sub_25E97F328(v266);
          swift_setDeallocating();
          v271 = *(v266 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v272 = v563;
          v273 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v272;
          v176 = v583;
          sub_25E9944EC(v270, v583, v9, v273);

          v563 = v587[0];
          v83 = v579;
        }

        else
        {
          v83 = v262;
        }
      }

      else
      {
      }
    }

    v274 = sub_25E976F20(v176, v9, v570);
    if (v274)
    {
      if (*(v274 + 16))
      {
        v275 = v83;
        v276 = v83;
        v277 = v584;
        sub_25E978F5C(v275, v584);
        v279 = v278;

        if (v279)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v280 = swift_allocObject();
          *(v280 + 16) = v575;
          *(v280 + 32) = v276;
          *(v280 + 40) = v277;

          v281 = sub_25E9D7850();
          if (!v281)
          {
            goto LABEL_233;
          }

          v282 = v281;
          v283 = sub_25E9D7870();

          *(v280 + 48) = 32;
          *(v280 + 56) = v283;
          v284 = sub_25E97F328(v280);
          swift_setDeallocating();
          v285 = *(v280 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v9 = v581;

          v286 = v562;
          v287 = swift_isUniquelyReferenced_nonNull_native();
          v587[0] = v286;
          v176 = v583;
          sub_25E9944EC(v284, v583, v9, v287);

          v562 = v587[0];
          v83 = v579;
        }

        else
        {
          v83 = v276;
        }
      }

      else
      {
      }
    }

    v288 = sub_25E976F20(v176, v9, v567);
    if (!v288)
    {
      goto LABEL_167;
    }

    if (!*(v288 + 16))
    {

LABEL_167:

      goto LABEL_19;
    }

    v289 = v83;
    v290 = v83;
    v291 = v584;
    sub_25E978F5C(v289, v584);
    v293 = v292;

    if ((v293 & 1) == 0)
    {
      goto LABEL_167;
    }

    v294 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
    v295 = swift_allocObject();
    *(v295 + 16) = v575;
    *(v295 + 32) = v290;
    v9 = v295 + 32;
    *(v295 + 40) = v291;

    v296 = v582;
    v297 = sub_25E9D7850();
    if (!v297)
    {
      goto LABEL_234;
    }

    v298 = v297;

    v299 = sub_25E9D7870();

    *(v295 + 48) = 36;
    *(v295 + 56) = v299;
    v300 = sub_25E97F328(v295);
    swift_setDeallocating();
    v301 = *(v295 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v302 = v561;
    v303 = swift_isUniquelyReferenced_nonNull_native();
    v587[0] = v302;
    sub_25E9944EC(v300, v583, v581, v303);

    v561 = v587[0];
    v35 = v294;
LABEL_19:
    v25 = v577 + 1;
    v23 = v568;
    if (v576 == v35)
    {
      goto LABEL_196;
    }
  }

  v99 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v587[0] = v100;
  *v99 = v560;
  if (v51)
  {
    v101 = [v580 subComponentContext];
    if (v101)
    {
      v102 = v101;
      v103 = [v101 startedOrChanged];

      if (v103)
      {
        v104 = [v103 debugDescription];

        v105 = sub_25E9D7FB0();
        v107 = v106;

        v101 = v105;
        goto LABEL_62;
      }

      v101 = 0;
    }

    v107 = 0xE000000000000000;
LABEL_62:
    v111 = sub_25E9887EC(v101, v107, v587);

    *(v99 + 4) = v111;
    *(v99 + 12) = 2080;
    v112 = [v580 subComponentContext];
    if (v112)
    {
      v113 = v112;
      v114 = [v112 startedOrChanged];

      if (v114)
      {
        [v114 subComponent];
      }
    }
  }

  else
  {
    v108 = sub_25E9887EC(0, 0xE000000000000000, v587);

    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
  }

  v115 = sub_25E9D8150();
  v117 = sub_25E9887EC(v115, v116, v587);

  *(v99 + 14) = v117;
  *(v99 + 22) = 2080;
  if (v51)
  {
    v118 = [v580 subComponentContext];
    v119 = v582;
    if (v118)
    {
      v120 = v118;
      v121 = [v118 ended];

      if (v121)
      {
        v122 = [v121 debugDescription];

        v123 = sub_25E9D7FB0();
        v125 = v124;

        goto LABEL_71;
      }
    }

    v123 = 0;
    v125 = 0xE000000000000000;
  }

  else
  {
    v123 = 0;
    v125 = 0xE000000000000000;
LABEL_71:
    v119 = v582;
  }

  v126 = sub_25E9887EC(v123, v125, v587);

  *(v99 + 24) = v126;
  *(v99 + 32) = 2048;
  v127 = sub_25E9D7850();
  if (v127)
  {
    v128 = v127;
    v129 = sub_25E9D7870();

    *(v99 + 34) = v129;
    _os_log_impl(&dword_25E971000, v96, v97, "QD SPAN STARTED value %s, QD SPAN COMPONENT value %s, QD SPAN ENDED value %s, QD SPAN TS value %llu ", v99, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v100, -1, -1);
    MEMORY[0x25F8C51A0](v99, -1, -1);

    v9 = v581;
    v83 = v579;
    v35 = v574;
    if (!v51)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
}

void sub_25E9AF338(uint64_t a1)
{
  v3 = v1;
  v4 = MEMORY[0x28223BE20](a1);
  sub_25E9AB3D8();
  if (v2)
  {
    return;
  }

  sub_25E9AA1DC();
  if (qword_27FD0D5B8 != -1)
  {
    goto LABEL_339;
  }

  while (1)
  {
    v538 = v4;
    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_27FD0DB60);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_25E978EFC();
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Enter allQDMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    swift_retain_n();
    v558 = sub_25E9D7F00();
    log = sub_25E9D8120();
    v9 = swift_allocObject();
    *(v9 + 16) = 32;
    v10 = swift_allocObject();
    *(v10 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_25E9B60B4;
    *(v11 + 24) = v3;
    v12 = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_25E9B614C;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_25E9B60FC;
    *(v16 + 24) = v12;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_25E9B6474;
    *(v17 + 24) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC38, &qword_25E9DB708);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25E9DA580;
    *(v18 + 32) = sub_25E9B6144;
    *(v18 + 40) = v9;
    *(v18 + 48) = sub_25E9B647C;
    *(v18 + 56) = v10;
    *(v18 + 64) = sub_25E9B6154;
    *(v18 + 72) = v13;
    *(v18 + 80) = sub_25E9B647C;
    *(v18 + 88) = v14;
    *(v18 + 96) = sub_25E9B647C;
    *(v18 + 104) = v15;
    *(v18 + 112) = sub_25E9B646C;
    *(v18 + 120) = v17;
    v539 = v12;
    swift_retain_n();

    if (os_log_type_enabled(v558, log))
    {
      v19 = sub_25E978EFC();
      v540 = swift_slowAlloc();
      *v556 = v540;
      *v19 = 514;
      *(v19 + 2) = 32;

      *(v19 + 3) = 8;

      *&v555[0] = v12[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
      v20 = sub_25E9D81B0();
      v22 = sub_25E9887EC(v20, v21, v556);

      *(v19 + 4) = v22;

      *(v19 + 12) = 32;

      *(v19 + 13) = 8;

      *&v555[0] = v12[4];
      v23 = sub_25E9D81B0();
      v25 = sub_25E9887EC(v23, v24, v556);

      *(v19 + 14) = v25;

      v26 = v558;
      _os_log_impl(&dword_25E971000, v558, log, "Compute Metrics QDCollectionStart: %s, Compute Metrics QDCollectionEnd: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v540, -1, -1);
      MEMORY[0x25F8C51A0](v19, -1, -1);

      v4 = v539;
    }

    else
    {

      v4 = v12;
    }

    if (*(v4 + 24))
    {
      v27 = *(v4 + 24);
    }

    else
    {
      v27 = sub_25E97F328(MEMORY[0x277D84F90]);
    }

    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    v3 = &unk_2870ABC00;
    v525 = v32;
    v526 = v27 + 64;
    v534 = v27;
    if (v31)
    {
      break;
    }

LABEL_14:
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        v472 = *v538;

        return;
      }

      v31 = *(v28 + 8 * v34);
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_339:
    swift_once();
  }

  while (1)
  {
LABEL_18:
    v532 = v31;
    v533 = v33;
    v35 = (v33 << 10) | (16 * __clz(__rbit64(v31)));
    v36 = *(v27 + 48) + v35;
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = (*(v27 + 56) + v35);
    v527 = *(v39 + 1);
    v528 = *v39;
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v37;
    swift_bridgeObjectRetain_n();
    v41 = sub_25E9D7F00();
    v42 = sub_25E9D8120();
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_25E9B6470;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_25E9B6474;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_25E9D8990;
    *(v47 + 32) = sub_25E9B647C;
    *(v47 + 40) = v43;
    *(v47 + 48) = sub_25E9B647C;
    *(v47 + 56) = v44;
    *(v47 + 64) = sub_25E9B646C;
    *(v47 + 72) = v46;

    v536 = v42;
    v48 = os_log_type_enabled(v41, v42);
    v558 = v38;
    if (v48)
    {
      v49 = sub_25E978EFC();
      v50 = swift_slowAlloc();
      *v556 = v50;
      *v49 = 258;
      *(v49 + 2) = 32;

      *(v49 + 3) = 8;

      v51 = sub_25E9887EC(v558, v37, v556);

      *(v49 + 4) = v51;

      _os_log_impl(&dword_25E971000, v41, v536, "Current QDID: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x25F8C51A0](v50, -1, -1);
      v52 = v49;
      v38 = v558;
      MEMORY[0x25F8C51A0](v52, -1, -1);
    }

    else
    {
    }

    v53 = v37;
    v54 = v539;
    if (!v539[2])
    {

      v473 = sub_25E9D7F00();
      v474 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v474))
      {
        goto LABEL_336;
      }

      v475 = sub_25E978EFC();
      *v475 = 0;
      v476 = "qdCaller failed!";
LABEL_280:
      _os_log_impl(&dword_25E971000, v473, v474, v476, v475, 2u);
      MEMORY[0x25F8C51A0](v475, -1, -1);
      goto LABEL_336;
    }

    v55 = v539[4];
    if (!v55)
    {

      v473 = sub_25E9D7F00();
      v474 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v474))
      {
        goto LABEL_336;
      }

      v475 = sub_25E978EFC();
      *v475 = 0;
      v476 = "qdCollectionContextEnd failed!";
      goto LABEL_280;
    }

    v537 = v539[2];

    sub_25E976E14(v38, v37, v55, v556);
    v523 = *&v556[8];
    v524 = *v556;
    v56 = swift_allocObject();
    v56[2] = v539;
    v56[3] = v38;
    v56[4] = v37;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v57 = sub_25E9D7F00();
    v58 = sub_25E9D8120();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_25E9B615C;
    *(v61 + 24) = v56;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_25E9B6474;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_25E9D8990;
    *(v63 + 32) = sub_25E9B647C;
    *(v63 + 40) = v59;
    *(v63 + 48) = sub_25E9B647C;
    *(v63 + 56) = v60;
    *(v63 + 64) = sub_25E9B646C;
    *(v63 + 72) = v62;

    v529 = v58;
    loga = v53;
    if (!os_log_type_enabled(v57, v58))
    {

      goto LABEL_32;
    }

    v64 = sub_25E978EFC();
    v65 = swift_slowAlloc();
    *v556 = v65;
    *v64 = 258;
    *(v64 + 2) = 32;

    *(v64 + 3) = 8;

    v66 = v539[5];
    if (!v66)
    {
      __break(1u);
      return;
    }

    v67 = v558;
    if (!*(v66 + 16))
    {
      goto LABEL_30;
    }

    v68 = v539[5];

    v69 = sub_25E978F5C(v67, loga);
    if ((v70 & 1) == 0)
    {

LABEL_30:
      v71 = 0;
      goto LABEL_31;
    }

    v71 = *(*(v66 + 56) + 8 * v69);

LABEL_31:
    *&v555[0] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v72 = sub_25E9D81B0();
    v74 = v73;

    v75 = sub_25E9887EC(v72, v74, v556);

    *(v64 + 4) = v75;

    v54 = v539;

    _os_log_impl(&dword_25E971000, v57, v529, "This qdInputCollectionStart: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x25F8C51A0](v65, -1, -1);
    v76 = v64;
    v53 = loga;
    MEMORY[0x25F8C51A0](v76, -1, -1);
LABEL_32:

    v77 = v54[5];
    v78 = v558;
    if (!v77)
    {
      v91 = xmmword_25E9DB6D0;
LABEL_42:
      v522 = v91;
      goto LABEL_43;
    }

    v79 = v54[5];

    v80 = sub_25E976F20(v78, v53, v77);

    if (!v80)
    {
      v91 = xmmword_25E9DB6D0;
      goto LABEL_42;
    }

    v81 = v54[5];
    if (!v81 || (v82 = v54[5], , v83 = sub_25E976F20(v78, v53, v81), , !v83))
    {

      v473 = sub_25E9D7F00();
      v474 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v474))
      {
        goto LABEL_336;
      }

      v475 = sub_25E978EFC();
      *v475 = 0;
      v476 = "qdInputCollectionEventStartTrace failed!";
      goto LABEL_280;
    }

    v84 = v54[6];
    if (!v84 || (v85 = v54[6], , v86 = sub_25E976F20(v78, v53, v84), , !v86))
    {

      v473 = sub_25E9D7F00();
      v474 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v474))
      {
        goto LABEL_336;
      }

      v475 = sub_25E978EFC();
      *v475 = 0;
      v476 = "qdInputCollectionEventEndTrace failed!";
      goto LABEL_280;
    }

    v88 = sub_25E9AA058(v87);
    v90 = v89;

    if (!v90)
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v477))
      {
        goto LABEL_336;
      }

      v478 = sub_25E978EFC();
      *v478 = 0;
      v479 = "traceID:qdInputCollectionEventStartTrace failed!";
      goto LABEL_335;
    }

    sub_25E976E14(v88, v90, v83, v556);

    v522 = *v556;
    sub_25E976E14(v88, v90, v86, v555);

    v91 = v555[0];
LABEL_43:
    v521 = v91;
    v92 = swift_allocObject();
    v92[2] = v54;
    v92[3] = v78;
    v92[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v93 = sub_25E9D7F00();
    v94 = sub_25E9D8120();
    v95 = swift_allocObject();
    *(v95 + 16) = 32;
    v96 = swift_allocObject();
    *(v96 + 16) = 8;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_25E9B6168;
    *(v97 + 24) = v92;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_25E9B6474;
    *(v98 + 24) = v97;
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_25E9D8990;
    *(v99 + 32) = sub_25E9B647C;
    *(v99 + 40) = v95;
    *(v99 + 48) = sub_25E9B647C;
    *(v99 + 56) = v96;
    *(v99 + 64) = sub_25E9B646C;
    *(v99 + 72) = v98;

    if (!os_log_type_enabled(v93, v94))
    {

      v108 = v558;
      goto LABEL_54;
    }

    oslog = v93;
    v100 = sub_25E978EFC();
    v101 = swift_slowAlloc();
    *v556 = v101;
    *v100 = 258;
    *(v100 + 2) = 32;

    *(v100 + 3) = 8;

    v102 = v54[7];
    if (v102)
    {
      v103 = v558;
      if (*(v102 + 16))
      {
        v104 = v54[7];

        v105 = sub_25E978F5C(v103, loga);
        if (v106)
        {
          v107 = *(*(v102 + 56) + 8 * v105);

LABEL_52:
          *&v555[0] = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
          v109 = sub_25E9D81B0();
          v110 = v111;

          goto LABEL_53;
        }
      }

      v107 = 0;
      goto LABEL_52;
    }

    v109 = 0;
    v110 = 0xE000000000000000;
LABEL_53:
    v108 = v558;
    v112 = sub_25E9887EC(v109, v110, v556);

    *(v100 + 4) = v112;

    v54 = v539;

    _os_log_impl(&dword_25E971000, oslog, v94, "This qdSpanRetrievalStart: %s ", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    v113 = v101;
    v53 = loga;
    MEMORY[0x25F8C51A0](v113, -1, -1);
    MEMORY[0x25F8C51A0](v100, -1, -1);

LABEL_54:
    v114 = v54[7];
    if (!v114)
    {
      v130 = xmmword_25E9DB6D0;
LABEL_60:
      v513 = v130;
      *osloga = v130;
      goto LABEL_74;
    }

    v115 = v54[7];

    v116 = sub_25E976F20(v108, v53, v114);

    if (!v116)
    {
      v130 = xmmword_25E9DB6D0;
      goto LABEL_60;
    }

    v117 = swift_allocObject();
    *(v117 + 16) = v108;
    *(v117 + 24) = v53;
    swift_bridgeObjectRetain_n();
    v118 = sub_25E9D7F00();
    v119 = sub_25E9D8120();
    v120 = v53;
    v121 = swift_allocObject();
    *(v121 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v123 = swift_allocObject();
    *(v123 + 16) = sub_25E9B6470;
    *(v123 + 24) = v117;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_25E9B6474;
    *(v124 + 24) = v123;
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_25E9D8990;
    *(v125 + 32) = sub_25E9B647C;
    *(v125 + 40) = v121;
    *(v125 + 48) = sub_25E9B647C;
    *(v125 + 56) = v122;
    *(v125 + 64) = sub_25E9B646C;
    *(v125 + 72) = v124;

    if (os_log_type_enabled(v118, v119))
    {
      v126 = sub_25E978EFC();
      osloge = v118;
      v127 = swift_slowAlloc();
      *v556 = v127;
      *v126 = 258;
      *(v126 + 2) = 32;

      *(v126 + 3) = 8;

      v128 = sub_25E9887EC(v558, v120, v556);

      *(v126 + 4) = v128;

      _os_log_impl(&dword_25E971000, osloge, v119, "Enter Span Retrieval for QDID %s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x25F8C51A0](v127, -1, -1);
      v129 = v126;
      v108 = v558;
      MEMORY[0x25F8C51A0](v129, -1, -1);
    }

    else
    {
    }

    v53 = v120;
    v131 = v539[7];
    if (!v131 || (v132 = v539[7], , v133 = sub_25E976F20(v108, v53, v131), , !v133))
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (os_log_type_enabled(v473, v477))
      {
        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdSpanRetrievalEventStart failed!";
        goto LABEL_335;
      }

      goto LABEL_336;
    }

    v134 = swift_allocObject();
    *(v134 + 16) = v108;
    *(v134 + 24) = v53;
    v135 = swift_allocObject();
    *(v135 + 16) = v133;
    v136 = v135;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v530 = v133;
    oslogb = sub_25E9D7F00();
    v510 = sub_25E9D8120();
    v499 = swift_allocObject();
    *(v499 + 16) = 32;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_25E9B6470;
    *(v138 + 24) = v134;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_25E9B6474;
    *(v139 + 24) = v138;
    v140 = swift_allocObject();
    *(v140 + 16) = 32;
    v141 = swift_allocObject();
    *(v141 + 16) = 8;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_25E9B6478;
    *(v142 + 24) = v136;
    v143 = swift_allocObject();
    *(v143 + 16) = sub_25E9B6474;
    *(v143 + 24) = v142;
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_25E9DA580;
    *(v144 + 32) = sub_25E9B647C;
    *(v144 + 40) = v499;
    *(v144 + 48) = sub_25E9B647C;
    *(v144 + 56) = v137;
    *(v144 + 64) = sub_25E9B646C;
    *(v144 + 72) = v139;
    *(v144 + 80) = sub_25E9B647C;
    *(v144 + 88) = v140;
    *(v144 + 96) = sub_25E9B647C;
    *(v144 + 104) = v141;
    *(v144 + 112) = sub_25E9B646C;
    *(v144 + 120) = v143;

    if (os_log_type_enabled(oslogb, v510))
    {
      v145 = sub_25E978EFC();
      v496 = swift_slowAlloc();
      *v556 = v496;
      *v145 = 514;
      *(v145 + 2) = 32;

      *(v145 + 3) = 8;

      v146 = sub_25E9887EC(v558, loga, v556);

      *(v145 + 4) = v146;

      *(v145 + 12) = 32;

      *(v145 + 13) = 8;

      v147 = sub_25E9D7F50();
      v149 = sub_25E9887EC(v147, v148, v556);

      *(v145 + 14) = v149;

      _os_log_impl(&dword_25E971000, oslogb, v510, "qdSpanRetrievalEventStartTrace for QDID %s: %s", v145, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v496, -1, -1);
      sub_25E978F50();
    }

    v150 = v558;
    v151 = v539[8];
    if (!v151)
    {
      break;
    }

    v152 = v539[8];

    v153 = sub_25E976F20(v150, v53, v151);

    if (!v153)
    {
      break;
    }

    v154 = swift_allocObject();
    *(v154 + 16) = v150;
    *(v154 + 24) = v53;
    v155 = swift_allocObject();
    *(v155 + 16) = v153;
    v156 = v155;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v514 = v153;
    oslogc = sub_25E9D7F00();
    v507 = sub_25E9D8120();
    v497 = swift_allocObject();
    *(v497 + 16) = 32;
    v157 = swift_allocObject();
    *(v157 + 16) = 8;
    v158 = swift_allocObject();
    *(v158 + 16) = sub_25E9B6470;
    *(v158 + 24) = v154;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_25E9B6474;
    *(v159 + 24) = v158;
    v160 = swift_allocObject();
    *(v160 + 16) = 32;
    v161 = swift_allocObject();
    *(v161 + 16) = 8;
    v162 = swift_allocObject();
    *(v162 + 16) = sub_25E9B6214;
    *(v162 + 24) = v156;
    v163 = swift_allocObject();
    *(v163 + 16) = sub_25E9B6474;
    *(v163 + 24) = v162;
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_25E9DA580;
    *(v164 + 32) = sub_25E9B647C;
    *(v164 + 40) = v497;
    *(v164 + 48) = sub_25E9B647C;
    *(v164 + 56) = v157;
    *(v164 + 64) = sub_25E9B646C;
    *(v164 + 72) = v159;
    *(v164 + 80) = sub_25E9B647C;
    *(v164 + 88) = v160;
    *(v164 + 96) = sub_25E9B647C;
    *(v164 + 104) = v161;
    *(v164 + 112) = sub_25E9B646C;
    *(v164 + 120) = v163;

    v165 = os_log_type_enabled(oslogc, v507);
    v166 = v558;
    if (v165)
    {
      v167 = sub_25E978EFC();
      v493 = swift_slowAlloc();
      *v556 = v493;
      *v167 = 514;
      *(v167 + 2) = 32;

      *(v167 + 3) = 8;

      v168 = sub_25E9887EC(v166, loga, v556);

      *(v167 + 4) = v168;

      *(v167 + 12) = 32;

      *(v167 + 13) = 8;

      v169 = sub_25E9D7F50();
      v171 = sub_25E9887EC(v169, v170, v556);

      *(v167 + 14) = v171;

      _os_log_impl(&dword_25E971000, oslogc, v507, "qdSpanRetrievalEventEndTrace for QDID %s: %s", v167, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v493, -1, -1);
      sub_25E978F50();
    }

    v173 = sub_25E9AA058(v172);
    v175 = v174;

    if (!v175)
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v477))
      {
        goto LABEL_336;
      }

      v478 = sub_25E978EFC();
      *v478 = 0;
      v479 = "traceID:qdSpanRetrievalEventStartTrace failed!";
      goto LABEL_335;
    }

    v176 = swift_allocObject();
    *(v176 + 16) = v558;
    *(v176 + 24) = v53;
    v177 = swift_allocObject();
    *(v177 + 16) = v173;
    *(v177 + 24) = v175;
    v178 = v177;
    swift_bridgeObjectRetain_n();
    v500 = v175;
    swift_bridgeObjectRetain_n();
    v504 = v173;
    oslogd = sub_25E9D7F00();
    v508 = sub_25E9D8120();
    v179 = swift_allocObject();
    *(v179 + 16) = 32;
    v180 = v179;
    v491 = swift_allocObject();
    *(v491 + 16) = 8;
    v181 = swift_allocObject();
    *(v181 + 16) = sub_25E9B6234;
    *(v181 + 24) = v176;
    v182 = swift_allocObject();
    *(v182 + 16) = sub_25E9B6474;
    *(v182 + 24) = v181;
    v183 = swift_allocObject();
    *(v183 + 16) = 32;
    v184 = swift_allocObject();
    *(v184 + 16) = 8;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_25E9B6470;
    *(v185 + 24) = v178;
    v186 = swift_allocObject();
    *(v186 + 16) = sub_25E9B6474;
    *(v186 + 24) = v185;
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_25E9DA580;
    *(v187 + 32) = sub_25E9B647C;
    *(v187 + 40) = v180;
    *(v187 + 48) = sub_25E9B647C;
    *(v187 + 56) = v491;
    *(v187 + 64) = sub_25E9B646C;
    *(v187 + 72) = v182;
    *(v187 + 80) = sub_25E9B647C;
    *(v187 + 88) = v183;
    *(v187 + 96) = sub_25E9B647C;
    *(v187 + 104) = v184;
    *(v187 + 112) = sub_25E9B646C;
    *(v187 + 120) = v186;

    if (os_log_type_enabled(oslogd, v508))
    {
      v188 = sub_25E978EFC();
      v488 = swift_slowAlloc();
      *v556 = v488;
      *v188 = 514;
      *(v188 + 2) = 32;

      *(v188 + 3) = 8;

      v189 = sub_25E9887EC(v558, loga, v556);

      *(v188 + 4) = v189;

      *(v188 + 12) = 32;

      *(v188 + 13) = 8;

      v190 = sub_25E9887EC(v504, v500, v556);

      *(v188 + 14) = v190;

      _os_log_impl(&dword_25E971000, oslogd, v508, "qdSpanRetrievalEventStartTrace for QDID:TraceID %s: %s", v188, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v488, -1, -1);
      sub_25E978F50();
    }

    v108 = v558;
    sub_25E976E14(v504, v500, v530, v556);

    *osloga = *v556;
    sub_25E976E14(v504, v500, v514, v555);

    v513 = v555[0];
    v54 = v539;
LABEL_74:
    v191 = swift_allocObject();
    v191[2] = v54;
    v191[3] = v108;
    v191[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v192 = sub_25E9D7F00();
    v193 = sub_25E9D8120();
    v194 = swift_allocObject();
    *(v194 + 16) = 32;
    v195 = swift_allocObject();
    *(v195 + 16) = 8;
    v196 = swift_allocObject();
    *(v196 + 16) = sub_25E9B6174;
    *(v196 + 24) = v191;
    v197 = swift_allocObject();
    *(v197 + 16) = sub_25E9B6474;
    *(v197 + 24) = v196;
    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_25E9D8990;
    *(v198 + 32) = sub_25E9B647C;
    *(v198 + 40) = v194;
    *(v198 + 48) = sub_25E9B647C;
    *(v198 + 56) = v195;
    *(v198 + 64) = sub_25E9B646C;
    *(v198 + 72) = v197;

    if (!os_log_type_enabled(v192, v193))
    {

      v207 = v558;
      v208 = v54[9];
      if (!v208)
      {
        goto LABEL_93;
      }

      goto LABEL_80;
    }

    v511 = v192;
    v199 = sub_25E978EFC();
    v200 = swift_slowAlloc();
    *v556 = v200;
    *v199 = 258;
    *(v199 + 2) = 32;

    *(v199 + 3) = 8;

    v201 = v54[9];
    if (!v201)
    {
      v221 = 0;
      v222 = 0xE000000000000000;
      goto LABEL_92;
    }

    v202 = v558;
    if (!*(v201 + 16))
    {
      goto LABEL_90;
    }

    v203 = v54[9];

    v204 = sub_25E978F5C(v202, loga);
    if ((v205 & 1) == 0)
    {

LABEL_90:
      v206 = 0;
      goto LABEL_91;
    }

    v206 = *(*(v201 + 56) + 8 * v204);

LABEL_91:
    *&v555[0] = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v221 = sub_25E9D81B0();
    v222 = v223;

LABEL_92:
    v207 = v558;
    v224 = sub_25E9887EC(v221, v222, v556);

    *(v199 + 4) = v224;

    v54 = v539;

    _os_log_impl(&dword_25E971000, v511, v193, "This qdContextRetrievalStart: %s", v199, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v200);
    v225 = v200;
    v53 = loga;
    MEMORY[0x25F8C51A0](v225, -1, -1);
    MEMORY[0x25F8C51A0](v199, -1, -1);

    v208 = v539[9];
    if (!v208)
    {
LABEL_93:
      v220 = xmmword_25E9DB6D0;
      goto LABEL_94;
    }

LABEL_80:

    v209 = sub_25E976F20(v207, v53, v208);

    if (!v209)
    {
      v220 = xmmword_25E9DB6D0;
LABEL_94:
      *v512 = v220;
      goto LABEL_95;
    }

    v210 = v54[9];
    if (!v210 || (v211 = v54[9], , v212 = sub_25E976F20(v207, v53, v210), , !v212))
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (os_log_type_enabled(v473, v477))
      {
        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdContextRetrievalEventStart failed!";
        goto LABEL_335;
      }

      goto LABEL_336;
    }

    v213 = v54[10];
    if (!v213 || (v214 = v54[10], , v215 = sub_25E976F20(v207, v53, v213), , !v215))
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v477))
      {
        goto LABEL_336;
      }

      v478 = sub_25E978EFC();
      *v478 = 0;
      v479 = "qdContextRetrievalEventEnd failed!";
      goto LABEL_335;
    }

    v217 = sub_25E9AA058(v216);
    v219 = v218;

    if (!v219)
    {

      v473 = sub_25E9D7F00();
      v477 = sub_25E9D8120();
      if (!os_log_type_enabled(v473, v477))
      {
        goto LABEL_336;
      }

      v478 = sub_25E978EFC();
      *v478 = 0;
      v479 = "traceID:qdContextRetrievalEventStartTrace failed!";
      goto LABEL_335;
    }

    sub_25E976E14(v217, v219, v212, v556);

    *v512 = *v556;
    sub_25E976E14(v217, v219, v215, v555);

    v220 = v555[0];
LABEL_95:
    v509 = v220;
    v226 = swift_allocObject();
    v226[2] = v54;
    v226[3] = v207;
    v226[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v227 = sub_25E9D7F00();
    v228 = sub_25E9D8120();
    v229 = swift_allocObject();
    *(v229 + 16) = 32;
    v230 = swift_allocObject();
    *(v230 + 16) = 8;
    v231 = swift_allocObject();
    *(v231 + 16) = sub_25E9B6180;
    *(v231 + 24) = v226;
    v232 = swift_allocObject();
    *(v232 + 16) = sub_25E9B6474;
    *(v232 + 24) = v231;
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_25E9D8990;
    *(v233 + 32) = sub_25E9B647C;
    *(v233 + 40) = v229;
    *(v233 + 48) = sub_25E9B647C;
    *(v233 + 56) = v230;
    *(v233 + 64) = sub_25E9B646C;
    *(v233 + 72) = v232;

    if (os_log_type_enabled(v227, v228))
    {
      v505 = v227;
      v234 = sub_25E978EFC();
      v235 = swift_slowAlloc();
      *v556 = v235;
      *v234 = 258;
      *(v234 + 2) = 32;

      *(v234 + 3) = 8;

      v236 = v54[13];
      if (!v236)
      {
        v241 = 0;
        v242 = 0xE000000000000000;
LABEL_105:
        v244 = sub_25E9887EC(v241, v242, v556);

        *(v234 + 4) = v244;

        v54 = v539;

        _os_log_impl(&dword_25E971000, v505, v228, "This qdToolRetrievalStart: %s", v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v235);
        v245 = v235;
        v53 = loga;
        MEMORY[0x25F8C51A0](v245, -1, -1);
        MEMORY[0x25F8C51A0](v234, -1, -1);

        goto LABEL_106;
      }

      if (*(v236 + 16))
      {
        v237 = v54[13];

        v238 = sub_25E978F5C(v558, loga);
        if (v239)
        {
          v240 = *(*(v236 + 56) + 8 * v238);

LABEL_104:
          *&v555[0] = v240;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
          v241 = sub_25E9D81B0();
          v242 = v243;

          goto LABEL_105;
        }
      }

      v240 = 0;
      goto LABEL_104;
    }

LABEL_106:
    v246 = v558;
    v247 = v54[13];
    if (v247 && (v248 = v54[13], , v249 = sub_25E976F20(v246, v53, v247), , v249))
    {

      v250 = v54[13];
      if (!v250 || (v251 = v54[13], , v252 = sub_25E976F20(v246, v53, v250), , !v252))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdToolRetrievalEventStart failed!";
        goto LABEL_335;
      }

      v253 = v54[14];
      if (!v253 || (v254 = v54[14], , v255 = sub_25E976F20(v246, v53, v253), , !v255))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdToolRetrievalEventEnd failed!";
        goto LABEL_335;
      }

      v257 = sub_25E9AA058(v256);
      v259 = v258;

      if (!v259)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdToolRetrievalEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v257, v259, v252, v556);

      v506 = *v556;
      sub_25E976E14(v257, v259, v255, v555);

      v260 = v555[0];
    }

    else
    {
      v260 = xmmword_25E9DB6D0;
      v506 = xmmword_25E9DB6D0;
    }

    v503 = v260;
    v261 = swift_allocObject();
    v261[2] = v54;
    v261[3] = v246;
    v261[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v262 = sub_25E9D7F00();
    v263 = sub_25E9D8120();
    v264 = swift_allocObject();
    *(v264 + 16) = 32;
    v265 = swift_allocObject();
    *(v265 + 16) = 8;
    v266 = swift_allocObject();
    *(v266 + 16) = sub_25E9B618C;
    *(v266 + 24) = v261;
    v267 = swift_allocObject();
    *(v267 + 16) = sub_25E9B6474;
    *(v267 + 24) = v266;
    v268 = swift_allocObject();
    *(v268 + 16) = xmmword_25E9D8990;
    *(v268 + 32) = sub_25E9B647C;
    *(v268 + 40) = v264;
    *(v268 + 48) = sub_25E9B647C;
    *(v268 + 56) = v265;
    *(v268 + 64) = sub_25E9B646C;
    *(v268 + 72) = v267;

    if (os_log_type_enabled(v262, v263))
    {
      v501 = v262;
      v269 = sub_25E978EFC();
      v270 = swift_slowAlloc();
      *v556 = v270;
      *v269 = 258;
      *(v269 + 2) = 32;

      *(v269 + 3) = 8;

      v271 = v54[15];
      if (v271)
      {
        v272 = v558;
        if (*(v271 + 16))
        {
          v273 = v54[15];

          v274 = sub_25E978F5C(v272, loga);
          if (v275)
          {
            v276 = *(*(v271 + 56) + 8 * v274);

            goto LABEL_125;
          }
        }

        v276 = 0;
LABEL_125:
        *&v555[0] = v276;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v279 = sub_25E9D81B0();
        v280 = v281;
      }

      else
      {
        v279 = 0;
        v280 = 0xE000000000000000;
      }

      v282 = sub_25E9887EC(v279, v280, v556);

      *(v269 + 4) = v282;

      _os_log_impl(&dword_25E971000, v501, v263, "This qdRankingStart: %s", v269, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v270);
      MEMORY[0x25F8C51A0](v270, -1, -1);
      sub_25E978F50();
    }

    v277 = v558;
    v278 = v54[15];
    if (v278 && (v283 = v54[15], , v284 = sub_25E976F20(v277, v53, v278), , v284))
    {

      v285 = v54[15];
      if (!v285 || (v286 = v54[15], , v287 = sub_25E976F20(v277, v53, v285), , !v287))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdRankingEventStart failed!";
        goto LABEL_335;
      }

      v288 = v54[16];
      if (!v288 || (v289 = v54[16], , v290 = sub_25E976F20(v277, v53, v288), , !v290))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdRankingEventEnd failed!";
        goto LABEL_335;
      }

      v292 = sub_25E9AA058(v291);
      v294 = v293;

      if (!v294)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdRankingEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v292, v294, v287, v556);

      *v502 = *v556;
      sub_25E976E14(v292, v294, v290, v555);

      v295 = v555[0];
    }

    else
    {
      v295 = xmmword_25E9DB6D0;
      *v502 = xmmword_25E9DB6D0;
    }

    v498 = v295;
    v296 = swift_allocObject();
    v296[2] = v54;
    v296[3] = v277;
    v296[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v297 = sub_25E9D7F00();
    v298 = sub_25E9D8120();
    v299 = swift_allocObject();
    *(v299 + 16) = 32;
    v300 = swift_allocObject();
    *(v300 + 16) = 8;
    v301 = swift_allocObject();
    *(v301 + 16) = sub_25E9B6198;
    *(v301 + 24) = v296;
    v302 = swift_allocObject();
    *(v302 + 16) = sub_25E9B6474;
    *(v302 + 24) = v301;
    v303 = swift_allocObject();
    *(v303 + 16) = xmmword_25E9D8990;
    *(v303 + 32) = sub_25E9B647C;
    *(v303 + 40) = v299;
    *(v303 + 48) = sub_25E9B647C;
    *(v303 + 56) = v300;
    *(v303 + 64) = sub_25E9B646C;
    *(v303 + 72) = v302;

    if (os_log_type_enabled(v297, v298))
    {
      v494 = v297;
      v304 = sub_25E978EFC();
      v305 = swift_slowAlloc();
      *v556 = v305;
      *v304 = 258;
      *(v304 + 2) = 32;

      *(v304 + 3) = 8;

      v306 = v54[21];
      if (v306)
      {
        v307 = v558;
        if (*(v306 + 16))
        {
          v308 = v54[21];

          v309 = sub_25E978F5C(v307, loga);
          if (v310)
          {
            v311 = *(*(v306 + 56) + 8 * v309);

            goto LABEL_145;
          }
        }

        v311 = 0;
LABEL_145:
        *&v555[0] = v311;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v314 = sub_25E9D81B0();
        v315 = v316;
      }

      else
      {
        v314 = 0;
        v315 = 0xE000000000000000;
      }

      v317 = sub_25E9887EC(v314, v315, v556);

      *(v304 + 4) = v317;

      _os_log_impl(&dword_25E971000, v494, v298, "This qdOutputBuildingStart: %s", v304, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v305);
      MEMORY[0x25F8C51A0](v305, -1, -1);
      sub_25E978F50();
    }

    v312 = v558;
    v313 = v54[21];
    if (v313 && (v318 = v54[21], , v319 = sub_25E976F20(v312, v53, v313), , v319))
    {

      v320 = v54[21];
      if (!v320 || (v321 = v54[21], , v322 = sub_25E976F20(v312, v53, v320), , !v322))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdOutputEventStart failed!";
        goto LABEL_335;
      }

      v323 = v54[22];
      if (!v323 || (v324 = v54[22], , v325 = sub_25E976F20(v312, v53, v323), , !v325))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdOutputEventEnd failed!";
        goto LABEL_335;
      }

      v327 = sub_25E9AA058(v326);
      v329 = v328;

      if (!v329)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdOutputEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v327, v329, v322, v556);

      *v495 = *v556;
      sub_25E976E14(v327, v329, v325, v555);

      v330 = v555[0];
    }

    else
    {
      v330 = xmmword_25E9DB6D0;
      *v495 = xmmword_25E9DB6D0;
    }

    v492 = v330;
    v331 = swift_allocObject();
    v331[2] = v54;
    v331[3] = v312;
    v331[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v332 = sub_25E9D7F00();
    v333 = sub_25E9D8120();
    v334 = swift_allocObject();
    *(v334 + 16) = 32;
    v335 = swift_allocObject();
    *(v335 + 16) = 8;
    v336 = swift_allocObject();
    *(v336 + 16) = sub_25E9B61A4;
    *(v336 + 24) = v331;
    v337 = swift_allocObject();
    *(v337 + 16) = sub_25E9B6474;
    *(v337 + 24) = v336;
    v338 = swift_allocObject();
    *(v338 + 16) = xmmword_25E9D8990;
    *(v338 + 32) = sub_25E9B647C;
    *(v338 + 40) = v334;
    *(v338 + 48) = sub_25E9B647C;
    *(v338 + 56) = v335;
    *(v338 + 64) = sub_25E9B646C;
    *(v338 + 72) = v337;

    if (os_log_type_enabled(v332, v333))
    {
      v489 = v332;
      v339 = sub_25E978EFC();
      v340 = swift_slowAlloc();
      *v556 = v340;
      *v339 = 258;
      *(v339 + 2) = 32;

      *(v339 + 3) = 8;

      v341 = v54[17];
      if (v341)
      {
        v342 = v558;
        if (*(v341 + 16))
        {
          v343 = v54[17];

          v344 = sub_25E978F5C(v342, loga);
          if (v345)
          {
            v346 = *(*(v341 + 56) + 8 * v344);

            goto LABEL_165;
          }
        }

        v346 = 0;
LABEL_165:
        *&v555[0] = v346;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v349 = sub_25E9D81B0();
        v350 = v351;
      }

      else
      {
        v349 = 0;
        v350 = 0xE000000000000000;
      }

      v352 = sub_25E9887EC(v349, v350, v556);

      *(v339 + 4) = v352;

      _os_log_impl(&dword_25E971000, v489, v333, "This qdTupleBuildingStart: %s", v339, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v340);
      MEMORY[0x25F8C51A0](v340, -1, -1);
      sub_25E978F50();
    }

    v347 = v558;
    v348 = v54[17];
    if (v348 && (v353 = v54[17], , v354 = sub_25E976F20(v347, v53, v348), , v354))
    {

      v355 = v54[17];
      if (!v355 || (v356 = v54[17], , v357 = sub_25E976F20(v347, v53, v355), , !v357))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdTupleEventStart failed!";
        goto LABEL_335;
      }

      v358 = v54[18];
      if (!v358 || (v359 = v54[18], , v360 = sub_25E976F20(v347, v53, v358), , !v360))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdTupleEventEnd failed!";
        goto LABEL_335;
      }

      v362 = sub_25E9AA058(v361);
      v364 = v363;

      if (!v364)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdTupleEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v362, v364, v357, v556);

      *v490 = *v556;
      sub_25E976E14(v362, v364, v360, v555);

      v365 = v555[0];
    }

    else
    {
      v365 = xmmword_25E9DB6D0;
      *v490 = xmmword_25E9DB6D0;
    }

    v487 = v365;
    v366 = swift_allocObject();
    v366[2] = v54;
    v366[3] = v347;
    v366[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v367 = sub_25E9D7F00();
    v368 = sub_25E9D8120();
    v369 = swift_allocObject();
    *(v369 + 16) = 32;
    v370 = swift_allocObject();
    *(v370 + 16) = 8;
    v371 = swift_allocObject();
    *(v371 + 16) = sub_25E9B61B0;
    *(v371 + 24) = v366;
    v372 = swift_allocObject();
    *(v372 + 16) = sub_25E9B6474;
    *(v372 + 24) = v371;
    v373 = swift_allocObject();
    *(v373 + 16) = xmmword_25E9D8990;
    *(v373 + 32) = sub_25E9B647C;
    *(v373 + 40) = v369;
    *(v373 + 48) = sub_25E9B647C;
    *(v373 + 56) = v370;
    *(v373 + 64) = sub_25E9B646C;
    *(v373 + 72) = v372;

    if (os_log_type_enabled(v367, v368))
    {
      v485 = v367;
      v374 = sub_25E978EFC();
      v375 = swift_slowAlloc();
      *v556 = v375;
      *v374 = 258;
      *(v374 + 2) = 32;

      *(v374 + 3) = 8;

      v376 = v54[19];
      if (v376)
      {
        if (*(v376 + 16))
        {
          v377 = v54[19];

          v378 = sub_25E978F5C(v558, loga);
          if (v379)
          {
            v380 = *(*(v376 + 56) + 8 * v378);

            goto LABEL_185;
          }
        }

        v380 = 0;
LABEL_185:
        *&v555[0] = v380;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v383 = sub_25E9D81B0();
        v384 = v385;
      }

      else
      {
        v383 = 0;
        v384 = 0xE000000000000000;
      }

      v386 = sub_25E9887EC(v383, v384, v556);

      *(v374 + 4) = v386;

      _os_log_impl(&dword_25E971000, v485, v368, "This qdTupleRankingStart: %s", v374, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v375);
      MEMORY[0x25F8C51A0](v375, -1, -1);
      sub_25E978F50();
    }

    v381 = v558;
    v382 = v54[19];
    if (v382 && (v387 = v54[19], , v388 = sub_25E976F20(v381, v53, v382), , v388))
    {

      v389 = v54[19];
      if (!v389 || (v390 = v54[19], , v391 = sub_25E976F20(v381, v53, v389), , !v391))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdTupleRankingEventStart failed!";
        goto LABEL_335;
      }

      v392 = v54[20];
      if (!v392 || (v393 = v54[20], , v394 = sub_25E976F20(v381, v53, v392), , !v394))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdTupleRankingEventEnd failed!";
        goto LABEL_335;
      }

      v396 = sub_25E9AA058(v395);
      v398 = v397;

      if (!v398)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdTupleRankingEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v396, v398, v391, v556);

      v486 = *v556;
      sub_25E976E14(v396, v398, v394, v555);

      v399 = v555[0];
    }

    else
    {
      v399 = xmmword_25E9DB6D0;
      v486 = xmmword_25E9DB6D0;
    }

    v484 = v399;
    v400 = swift_allocObject();
    v400[2] = v54;
    v400[3] = v381;
    v400[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v401 = sub_25E9D7F00();
    v402 = sub_25E9D8120();
    v403 = swift_allocObject();
    *(v403 + 16) = 32;
    v404 = swift_allocObject();
    *(v404 + 16) = 8;
    v405 = swift_allocObject();
    *(v405 + 16) = sub_25E9B61BC;
    *(v405 + 24) = v400;
    v406 = swift_allocObject();
    *(v406 + 16) = sub_25E9B6474;
    *(v406 + 24) = v405;
    v407 = swift_allocObject();
    *(v407 + 16) = xmmword_25E9D8990;
    *(v407 + 32) = sub_25E9B647C;
    *(v407 + 40) = v403;
    *(v407 + 48) = sub_25E9B647C;
    *(v407 + 56) = v404;
    *(v407 + 64) = sub_25E9B646C;
    *(v407 + 72) = v406;

    if (os_log_type_enabled(v401, v402))
    {
      v482 = v401;
      v408 = sub_25E978EFC();
      v409 = swift_slowAlloc();
      *v556 = v409;
      *v408 = 258;
      *(v408 + 2) = 32;

      *(v408 + 3) = 8;

      v410 = v54[11];
      if (v410)
      {
        v411 = v558;
        if (*(v410 + 16))
        {
          v412 = v54[11];

          v413 = sub_25E978F5C(v411, loga);
          if (v414)
          {
            v415 = *(*(v410 + 56) + 8 * v413);

            goto LABEL_205;
          }
        }

        v415 = 0;
LABEL_205:
        *&v555[0] = v415;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v418 = sub_25E9D81B0();
        v419 = v420;
      }

      else
      {
        v418 = 0;
        v419 = 0xE000000000000000;
      }

      v421 = sub_25E9887EC(v418, v419, v556);

      *(v408 + 4) = v421;

      _os_log_impl(&dword_25E971000, v482, v402, "This qdToolRetrievalContextStart: %s", v408, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v409);
      MEMORY[0x25F8C51A0](v409, -1, -1);
      sub_25E978F50();
    }

    v416 = v558;
    v417 = v54[11];
    if (v417 && (v422 = v54[11], , v423 = sub_25E976F20(v416, v53, v417), , v423))
    {

      v424 = v54[11];
      if (!v424 || (v425 = v54[11], , v426 = sub_25E976F20(v416, v53, v424), , !v426))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdToolRetrievalContextStart failed!";
        goto LABEL_335;
      }

      v427 = v54[12];
      if (!v427 || (v428 = v54[12], , v429 = sub_25E976F20(v416, v53, v427), , !v429))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdToolRetrievalContextEnd failed!";
        goto LABEL_335;
      }

      v431 = sub_25E9AA058(v430);
      v433 = v432;

      if (!v433)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdToolRetrievalContextEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v431, v433, v426, v556);

      v531 = *v556;
      sub_25E976E14(v431, v433, v429, v555);

      *v483 = v555[0];
    }

    else
    {
      v531 = xmmword_25E9DB6D0;
      *v483 = xmmword_25E9DB6D0;
    }

    v434 = swift_allocObject();
    v434[2] = v54;
    v434[3] = v416;
    v434[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v435 = sub_25E9D7F00();
    v436 = sub_25E9D8120();
    v437 = swift_allocObject();
    *(v437 + 16) = 32;
    v438 = swift_allocObject();
    *(v438 + 16) = 8;
    v439 = v435;
    v440 = swift_allocObject();
    *(v440 + 16) = sub_25E9B6208;
    *(v440 + 24) = v434;
    v441 = swift_allocObject();
    *(v441 + 16) = sub_25E9B6474;
    *(v441 + 24) = v440;
    v442 = swift_allocObject();
    *(v442 + 16) = xmmword_25E9D8990;
    *(v442 + 32) = sub_25E9B647C;
    *(v442 + 40) = v437;
    *(v442 + 48) = sub_25E9B647C;
    *(v442 + 56) = v438;
    *(v442 + 64) = sub_25E9B646C;
    *(v442 + 72) = v441;

    if (os_log_type_enabled(v439, v436))
    {
      v480 = v436;
      v443 = sub_25E978EFC();
      v444 = v54;
      v445 = swift_slowAlloc();
      *v556 = v445;
      *v443 = 258;
      *(v443 + 2) = 32;

      *(v443 + 3) = 8;

      v446 = v444[25];
      if (v446)
      {
        if (*(v446 + 16))
        {
          v447 = v444[25];

          v448 = sub_25E978F5C(v558, loga);
          if (v449)
          {
            v450 = *(*(v446 + 56) + 8 * v448);

            goto LABEL_224;
          }
        }

        v450 = 0;
LABEL_224:
        *&v555[0] = v450;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v451 = sub_25E9D81B0();
        v452 = v453;
      }

      else
      {
        v451 = 0;
        v452 = 0xE000000000000000;
      }

      v454 = sub_25E9887EC(v451, v452, v556);

      *(v443 + 4) = v454;

      _os_log_impl(&dword_25E971000, v439, v480, "This qdFetchDynamicEnumerationEntitiesStart: %s", v443, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v445);
      MEMORY[0x25F8C51A0](v445, -1, -1);
      sub_25E978F50();
    }

    v455 = v54[25];
    v456 = v558;
    if (v455 && (v457 = v54[25], , v458 = sub_25E976F20(v456, loga, v455), , v458))
    {

      v459 = v54[25];
      if (!v459 || (v460 = v54[25], , v461 = sub_25E976F20(v456, loga, v459), , !v461))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdFetchDynamicEnumerationEntitiesStart failed!";
        goto LABEL_335;
      }

      v462 = v54[26];
      if (!v462 || (v463 = v54[26], , v464 = sub_25E976F20(v456, loga, v462), , !v464))
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "qdFetchDynamicEnumerationEntitiesEnd failed!";
        goto LABEL_335;
      }

      v466 = sub_25E9AA058(v465);
      v468 = v467;

      if (!v468)
      {

        v473 = sub_25E9D7F00();
        v477 = sub_25E9D8120();
        if (!os_log_type_enabled(v473, v477))
        {
          goto LABEL_336;
        }

        v478 = sub_25E978EFC();
        *v478 = 0;
        v479 = "traceID:qdDynamicEnumerationEventStartTrace failed!";
LABEL_335:
        _os_log_impl(&dword_25E971000, v473, v477, v479, v478, 2u);
        sub_25E978F50();
      }

      sub_25E976E14(v466, v468, v461, v556);

      v535 = *v556;
      sub_25E976E14(v466, v468, v464, v555);

      v469 = v555[0];
    }

    else
    {
      v469 = xmmword_25E9DB6D0;
      v535 = xmmword_25E9DB6D0;
    }

    v481 = v469;
    sub_25E976F70(v456, loga, *v538, v555);
    memcpy(v556, v555, sizeof(v556));
    v28 = v526;
    v3 = &unk_2870ABC00;
    if (sub_25E994EC4(v556) == 1)
    {
      v553[0] = 0;
      LODWORD(v554[0]) = 0;
      BYTE4(v554[0]) = 0;
      memset(&v554[2], 0, 24);
      v554[1] = 90;
      v554[5] = 90;
      memset(&v554[6], 0, 24);
      memset(&v554[10], 0, 24);
      v554[9] = 90;
      v554[13] = 90;
      memset(&v554[14], 0, 24);
      memset(&v554[18], 0, 24);
      v554[17] = 90;
      v554[21] = 90;
      memset(&v554[22], 0, 24);
      memset(&v554[26], 0, 24);
      v554[25] = 90;
      v554[29] = 90;
      memset(&v554[30], 0, 24);
      memset(&v554[34], 0, 24);
      v554[33] = 90;
      v554[37] = 90;
      memset(&v554[38], 0, 24);
      v554[41] = 90;
      memset(&v554[42], 0, 24);
      nullsub_1(v554);
      memcpy(v555, v554, 0x168uLL);
    }

    v4 = sub_25E981270(v456, loga, v537);

    memcpy(v554, v555, sizeof(v554));
    if (sub_25E994EC4(v554) != 1)
    {
      if ((v4 - 1) < 4 && (v4 & 0x100000000) == 0)
      {
        v471 = v4;
      }

      else
      {
        v471 = 0;
      }

      LODWORD(v555[0]) = v471;
      BYTE4(v555[0]) = 0;
    }

    memcpy(v553, v555, sizeof(v553));
    if (sub_25E994EC4(v553) != 1)
    {
      *(&v555[0] + 1) = v528;
      *&v555[1] = v527;
      *(&v555[1] + 1) = v524;
      *&v555[2] = v523;
    }

    memcpy(__dst, v555, sizeof(__dst));
    if (sub_25E994EC4(__dst) != 1)
    {
      *(&v555[2] + 8) = *osloga;
      *(&v555[3] + 8) = v513;
    }

    memcpy(v551, v555, sizeof(v551));
    if (sub_25E994EC4(v551) != 1)
    {
      *(&v555[4] + 8) = *v512;
      *(&v555[5] + 8) = v509;
    }

    memcpy(v550, v555, sizeof(v550));
    if (sub_25E994EC4(v550) != 1)
    {
      *(&v555[6] + 8) = v506;
      *(&v555[7] + 8) = v503;
    }

    memcpy(v549, v555, sizeof(v549));
    if (sub_25E994EC4(v549) != 1)
    {
      *(&v555[8] + 8) = *v502;
      *(&v555[9] + 8) = v498;
    }

    memcpy(v548, v555, sizeof(v548));
    if (sub_25E994EC4(v548) != 1)
    {
      *(&v555[10] + 8) = *v495;
      *(&v555[11] + 8) = v492;
    }

    memcpy(v547, v555, sizeof(v547));
    if (sub_25E994EC4(v547) != 1)
    {
      *(&v555[12] + 8) = *v490;
      *(&v555[13] + 8) = v487;
    }

    memcpy(v546, v555, sizeof(v546));
    if (sub_25E994EC4(v546) != 1)
    {
      *(&v555[14] + 8) = v486;
      *(&v555[15] + 8) = v484;
    }

    memcpy(v545, v555, sizeof(v545));
    if (sub_25E994EC4(v545) != 1)
    {
      *(&v555[16] + 8) = v522;
      *(&v555[17] + 8) = v521;
    }

    memcpy(v544, v555, sizeof(v544));
    if (sub_25E994EC4(v544) != 1)
    {
      *(&v555[18] + 8) = v531;
      *(&v555[19] + 8) = *v483;
    }

    memcpy(v543, v555, sizeof(v543));
    if (sub_25E994EC4(v543) != 1)
    {
      *(&v555[20] + 8) = v535;
      *(&v555[21] + 8) = v481;
    }

    v31 = (v532 - 1) & v532;
    memcpy(v557, v555, 0x168uLL);
    sub_25E98F93C(v557, v456, loga);
    v27 = v534;
    v32 = v525;
    v33 = v533;
    if (!v31)
    {
      goto LABEL_14;
    }
  }

  v473 = sub_25E9D7F00();
  v477 = sub_25E9D8120();
  if (os_log_type_enabled(v473, v477))
  {
    v478 = sub_25E978EFC();
    *v478 = 0;
    v479 = "qdSpanRetrievalEventEnd failed!";
    goto LABEL_335;
  }

LABEL_336:
}

uint64_t sub_25E9B4C00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(result + 40);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v10 = sub_25E9D81B0();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E9B4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 56);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 72);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 104);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 120);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 168);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B5094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 136);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B5158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 152);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 88);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v6 = *(a1 + 200);

      v7 = sub_25E978F5C(a2, a3);
      if (v8)
      {
        v9 = *(*(v3 + 56) + 8 * v7);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

void *SELFComponent.QD.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = v0[21];

  v21 = v0[22];

  v22 = v0[23];

  v23 = v0[24];

  v24 = v0[25];

  v25 = v0[26];

  return v0;
}

uint64_t SELFComponent.QD.__deallocating_deinit()
{
  SELFComponent.QD.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25E9B54B8(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25E9B6050(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_25E9B5530(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25E9B5530(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25E9D82E0();
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
        sub_25E9D7860();
        v6 = sub_25E9D80B0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25E9B571C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_25E9B5634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25E9B5634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_25E9D7860();
    sub_25E9B6414();
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
LABEL_5:
    v10 = *(v7 + 8 * v4);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v15 = *v12;
      result = sub_25E9D7F70();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v13 = *v12;
      *v12 = v12[1];
      v12[1] = v13;
      --v12;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25E9B571C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_25E9B603C(v9);
      v9 = result;
    }

    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v84 - 1);
        v86 = *&v9[16 * v84];
        v87 = *&v9[16 * v84 + 24];
        sub_25E9B5D3C((v85 + 8 * v86), (v85 + 8 * *&v9[16 * v84 + 16]), (v85 + 8 * v87), v7);
        if (v5)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E9B603C(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v88 = &v9[16 * v84];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_25E9B5FB0(v6);
        v84 = *(v9 + 2);
        v6 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = v6;
      v6 = v5;
      v12 = *v11;
      v13 = *(v12 + 8 * v8);
      v14 = 8 * v10;
      v15 = (v12 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      sub_25E9D7860();
      sub_25E9B6414();
      result = sub_25E9D7F70();
      v18 = v10;
      v19 = result;
      v91 = v18;
      v20 = (v18 + 2);
      while (v7 != v20)
      {
        v95 = *(v16 - 1);
        v97 = *v16;
        result = sub_25E9D7F70();
        ++v20;
        ++v16;
        if ((v19 & 1) != (result & 1))
        {
          v7 = (v20 - 1);
          break;
        }
      }

      v5 = v6;
      if (v19)
      {
        v10 = v91;
        if (v7 < v91)
        {
          goto LABEL_121;
        }

        v6 = a3;
        if (v91 < v7)
        {
          v21 = 8 * v7 - 8;
          v22 = v7;
          v23 = v91;
          do
          {
            if (v23 != --v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = *(v25 + v14);
              *(v25 + v14) = *(v25 + v21);
              *(v25 + v21) = v24;
            }

            ++v23;
            v21 -= 8;
            v14 += 8;
          }

          while (v23 < v22);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v6 = a3;
        v10 = v91;
      }
    }

    v26 = v6[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v37 = v5;
    if ((result & 1) == 0)
    {
      result = sub_25E983B70(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_25E983B70((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *v92;
    if (!*v92)
    {
      goto LABEL_129;
    }

    if (v39)
    {
      v5 = v37;
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_61:
          if (v47)
          {
            goto LABEL_108;
          }

          v60 = &v9[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_111;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_115;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v70 = &v9[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_75:
        if (v65)
        {
          goto LABEL_110;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_4;
        }

LABEL_82:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v82 = *&v9[16 * v81 + 32];
        v7 = *&v9[16 * v43 + 40];
        sub_25E9B5D3C((*v6 + 8 * v82), (*v6 + 8 * *&v9[16 * v43 + 32]), (*v6 + 8 * v7), v42);
        if (v5)
        {
        }

        if (v7 < v82)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E9B603C(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v83 = &v9[16 * v81];
        *(v83 + 4) = v82;
        *(v83 + 5) = v7;
        result = sub_25E9B5FB0(v43);
        v40 = *(v9 + 2);
        if (v40 <= 1)
        {
          goto LABEL_4;
        }
      }

      v48 = &v9[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v9[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v37;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v27 = v8;
  if (v10 + a4 >= v26)
  {
    v28 = v6[1];
  }

  else
  {
    v28 = v10 + a4;
  }

  if (v28 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v27 == v28)
  {
    v8 = v27;
    goto LABEL_40;
  }

  v89 = v5;
  v29 = *v6;
  sub_25E9D7860();
  sub_25E9B6414();
  v30 = v29 + 8 * v27 - 8;
  v7 = v10 - v27;
  v94 = v28;
LABEL_33:
  v31 = v27;
  v32 = *(v29 + 8 * v27);
  v33 = v7;
  v34 = v30;
  while (1)
  {
    v96 = *v34;
    result = sub_25E9D7F70();
    if ((result & 1) == 0)
    {
LABEL_32:
      v27 = v31 + 1;
      v30 += 8;
      --v7;
      v8 = v94;
      if (v27 != v94)
      {
        goto LABEL_33;
      }

      v5 = v89;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    *v34 = v34[1];
    v34[1] = v35;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_25E9B5D3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_25E9D7860();
      sub_25E9B6414();
LABEL_27:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v20 = *(v18 - 1);
        v18 -= 8;
        v23 = *v17;
        if (sub_25E9D7F70())
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_25E9D7860();
      sub_25E9B6414();
      while (1)
      {
        v24 = *v6;
        v22 = *v4;
        if ((sub_25E9D7F70() & 1) == 0)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v15;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}