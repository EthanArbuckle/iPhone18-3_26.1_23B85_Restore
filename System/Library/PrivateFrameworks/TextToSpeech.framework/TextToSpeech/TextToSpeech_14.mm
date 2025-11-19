uint64_t sub_1A9461038()
{
  v2 = *v1;
  v3 = *(*v1 + 2232);
  v8 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    v4 = v2[278];

    v5 = sub_1A94615C8;
  }

  else
  {
    v6 = v2[278];
    (*(v2[253] + 8))(v2[254], v2[252]);

    v5 = sub_1A946117C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A946117C()
{
  v38 = v0;
  sub_1A937B48C(v0 + 576);
  v1 = *(v0 + 2200) + 1;
  if (v1 == *(v0 + 2192))
  {
    v2 = *(v0 + 2144);

    v3 = *(v0 + 2088);
    v4 = *(v0 + 2080);
    v5 = *(v0 + 2072);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 2056);
    v8 = *(v0 + 2032);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 2200) = v1;
    v11 = *(v0 + 2168);
    v12 = *(v0 + 2160);
    v13 = *(v0 + 2152);
    v14 = *(v0 + 2064);
    v15 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 280 * v1 + 32), 0x118uLL);
    v16 = *(v0 + 576);
    *(v0 + 2208) = v16;
    v17 = *(v0 + 584);
    *(v0 + 2216) = v17;
    v12(v14, v13, v15);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v18 = sub_1A957BC68();
    v19 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2176);
    v22 = *(v0 + 2064);
    v23 = *(v0 + 2040);
    if (v20)
    {
      v35 = *(v0 + 2184);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;

      v26 = sub_1A937A5C0(v16, v17, &v37);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1A9324000, v18, v19, "Updating voice %s.", v24, 0xCu);
      sub_1A9378138(v25);
      MEMORY[0x1AC587CD0](v25, -1, -1);
      MEMORY[0x1AC587CD0](v24, -1, -1);

      v27 = v21(v22, v23);
    }

    else
    {

      v27 = v21(v22, v23);
    }

    v28 = *(v0 + 2104);
    v29 = *(v0 + 2008);
    v30 = (*(v0 + 2096))(v27);
    *(v0 + 2224) = v30;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v34 = (*v30 + 472);
    v36 = (*v34 + **v34);
    v31 = (*v34)[1];
    v32 = swift_task_alloc();
    *(v0 + 2232) = v32;
    *v32 = v0;
    v32[1] = sub_1A9461038;
    v33 = *(v0 + 2032);

    return v36(v33, v0 + 1416);
  }
}

uint64_t sub_1A9461518()
{
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[257];
  v6 = v0[254];

  v7 = v0[1];
  v8 = v0[267];

  return v7();
}

uint64_t sub_1A94615C8()
{
  v63 = v0;
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2168);
  (*(v0 + 2160))(*(v0 + 2056), *(v0 + 2152), *(v0 + 2040));
  sub_1A937B3DC(v0 + 576, v0 + 1696);
  v3 = v1;
  v4 = sub_1A957BC68();
  v5 = sub_1A957CA78();
  sub_1A937B48C(v0 + 576);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2240);
    v7 = *(v0 + 2216);
    v8 = *(v0 + 2208);
    v57 = *(v0 + 2176);
    v59 = *(v0 + 2184);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 2040);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v62 = v12;
    *v11 = 136315394;

    v13 = sub_1A937A5C0(v8, v7, &v62);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0 + 1976);
    v15 = *(v0 + 1984);
    v16 = *(v0 + 1992);
    v17 = sub_1A957D478();
    v19 = sub_1A937A5C0(v17, v18, &v62);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1A9324000, v4, v5, "Failed to upgrade voice %s with error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v12, -1, -1);
    MEMORY[0x1AC587CD0](v11, -1, -1);

    sub_1A937B48C(v0 + 576);
    v57(v9, v10);
  }

  else
  {
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2176);
    v22 = *(v0 + 2056);
    v23 = *(v0 + 2040);

    sub_1A937B48C(v0 + 576);
    v21(v22, v23);
  }

  v24 = *(v0 + 2200) + 1;
  if (v24 == *(v0 + 2192))
  {
    v25 = *(v0 + 2144);

    v26 = *(v0 + 2088);
    v27 = *(v0 + 2080);
    v28 = *(v0 + 2072);
    v29 = *(v0 + 2064);
    v30 = *(v0 + 2056);
    v31 = *(v0 + 2032);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    *(v0 + 2200) = v24;
    v34 = *(v0 + 2168);
    v35 = *(v0 + 2160);
    v36 = *(v0 + 2152);
    v37 = *(v0 + 2064);
    v38 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 280 * v24 + 32), 0x118uLL);
    v39 = *(v0 + 576);
    *(v0 + 2208) = v39;
    v40 = *(v0 + 584);
    *(v0 + 2216) = v40;
    v35(v37, v36, v38);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v41 = sub_1A957BC68();
    v42 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 2176);
    v45 = *(v0 + 2064);
    v46 = *(v0 + 2040);
    if (v43)
    {
      v60 = *(v0 + 2184);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;

      v49 = sub_1A937A5C0(v39, v40, &v62);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_1A9324000, v41, v42, "Updating voice %s.", v47, 0xCu);
      sub_1A9378138(v48);
      MEMORY[0x1AC587CD0](v48, -1, -1);
      MEMORY[0x1AC587CD0](v47, -1, -1);
    }

    v50 = v44(v45, v46);
    v51 = *(v0 + 2104);
    v52 = *(v0 + 2008);
    v53 = (*(v0 + 2096))(v50);
    *(v0 + 2224) = v53;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v58 = (*v53 + 472);
    v61 = (*v58 + **v58);
    v54 = (*v58)[1];
    v55 = swift_task_alloc();
    *(v0 + 2232) = v55;
    *v55 = v0;
    v55[1] = sub_1A9461038;
    v56 = *(v0 + 2032);

    return v61(v56, v0 + 1416);
  }
}

void sub_1A9461B30()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A957C0C8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1A957C0C8();
    [v2 removeObjectForKey_];
  }
}

void *VoiceDatabaseDaemon.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1A945BAB0(v0[5]);
  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  return v0;
}

uint64_t VoiceDatabaseDaemon.__deallocating_deinit()
{
  VoiceDatabaseDaemon.deinit();

  return swift_deallocClassInstance();
}

char *sub_1A9461C94(char *a1, int64_t a2, char a3)
{
  result = sub_1A94275AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t dispatch thunk of VoiceDatabaseDaemon.initialize()()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A9461FB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A93836DC;

  return sub_1A945C7C8(v5, a2, v2);
}

uint64_t sub_1A9462050()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945C9F0(v3, v4, v5, v2);
}

uint64_t sub_1A94620E4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945DB70(v3, v4, v5, v2);
}

uint64_t sub_1A9462178(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A945E068(a1, v5, v6, v4);
}

uint64_t sub_1A9462218()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945CF3C(v3, v4, v5, v2);
}

uint64_t sub_1A94622AC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945D4E8(v3, v4, v5, v2);
}

uint64_t sub_1A9462340()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A945F59C();
}

uint64_t TTSSSEParamCustomUnit.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A957D158();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A9462440()
{
  sub_1A957D4F8();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A946249C()
{
  sub_1A957D4F8();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A94624E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A957D158();

  *a2 = v5 != 0;
  return result;
}

uint64_t TTSExtendedParameterInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTSExtendedParameterInfo.footerText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

TextToSpeech::TTSExtendedParameterInfo __swiftcall TTSExtendedParameterInfo.init(name:footerText:)(Swift::String name, Swift::String_optional footerText)
{
  v2->value = name;
  v2[1] = footerText;
  result.footerText = footerText;
  result.name = name;
  return result;
}

uint64_t sub_1A94625B8()
{
  if (*v0)
  {
    result = 0x65547265746F6F66;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1A94625F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94626D4(uint64_t a1)
{
  v2 = sub_1A94628E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9462710(uint64_t a1)
{
  v2 = sub_1A94628E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSExtendedParameterInfo.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3877B0, &qword_1A958F488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94628E0();
  sub_1A957D598();
  v17 = 0;
  v13 = v15[3];
  sub_1A957D2E8();
  if (!v13)
  {
    v16 = 1;
    sub_1A957D298();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1A94628E0()
{
  result = qword_1EB3894E0;
  if (!qword_1EB3894E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894E0);
  }

  return result;
}

uint64_t TTSExtendedParameterInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3877B8, &qword_1A958F490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94628E0();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v22 = 0;
  v12 = sub_1A957D1E8();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_1A957D198();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  sub_1A9378138(a1);
}

__n128 AUParameter.ttsExtendedInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A957C168();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 displayName];
  sub_1A957C0F8();

  sub_1A957C158();
  v11 = sub_1A957C108();
  v13 = v12;

  (*(v5 + 8))(v9, v4);
  if (v13 >> 60 == 15)
  {
    v17 = [v2 displayName];
    v18 = sub_1A957C0F8();
    v20 = v19;

    a1->n128_u64[0] = v18;
    a1->n128_u64[1] = v20;
    a1[1].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
  }

  else
  {
    v14 = sub_1A957AD98();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1A957AD88();
    sub_1A9462D64();
    sub_1A957AD78();
    sub_1A945093C(v11, v13);

    v21 = v23[3];
    result = v24;
    a1->n128_u64[0] = v23[2];
    a1->n128_u64[1] = v21;
    a1[1] = result;
  }

  return result;
}

unint64_t sub_1A9462D64()
{
  result = qword_1EB3877C0;
  if (!qword_1EB3877C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3877C0);
  }

  return result;
}

id static AUParameterTree.ttsCreateParameter(withIdentifier:name:address:min:max:unit:unitName:valueStrings:dependentParameters:footerText:)(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  v15 = sub_1A957C168();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = sub_1A957ADF8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_1A957ADE8();
  sub_1A9463028();
  v21 = sub_1A957ADD8();
  v23 = v22;

  sub_1A957C158();
  sub_1A957C118();
  v25 = v24;
  sub_1A9442638(v21, v23);
  if (!v25)
  {
  }

  v26 = a11;
  v27 = sub_1A957C0C8();
  v28 = sub_1A957C0C8();

  if (a10)
  {
    a10 = sub_1A957C0C8();
  }

  v29 = a12;
  if (a11)
  {
    v26 = sub_1A957C4B8();
  }

  if (a12)
  {
    sub_1A93B1EF4();
    v29 = sub_1A957C4B8();
  }

  v30 = objc_opt_self();
  *&v31 = a1;
  *&v32 = a2;
  v33 = [v30 createParameterWithIdentifier:v27 name:v28 address:a7 min:a8 max:a10 unit:0 unitName:v31 flags:v32 valueStrings:v26 dependentParameters:v29];

  return v33;
}

unint64_t sub_1A9463028()
{
  result = qword_1EB385FF0;
  if (!qword_1EB385FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385FF0);
  }

  return result;
}

unint64_t sub_1A9463080()
{
  result = qword_1EB3877C8;
  if (!qword_1EB3877C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3877C8);
  }

  return result;
}

uint64_t sub_1A94630E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A946312C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A9463190()
{
  result = qword_1EB39A3B0[0];
  if (!qword_1EB39A3B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39A3B0);
  }

  return result;
}

unint64_t sub_1A94631E8()
{
  result = qword_1EB3894D0;
  if (!qword_1EB3894D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894D0);
  }

  return result;
}

unint64_t sub_1A9463240()
{
  result = qword_1EB3894D8;
  if (!qword_1EB3894D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894D8);
  }

  return result;
}

uint64_t TTSSpeechEvent.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = v2;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  v4 = *(v0 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(v0 + 64);
  v11 = *(v0 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1A946330C(v12, v6);
  return sub_1A957C198();
}

uint64_t sub_1A9463348(uint64_t a1)
{
  v2 = sub_1A946C46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463384(uint64_t a1)
{
  v2 = sub_1A946C46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A94633C0(char a1)
{
  result = 0x696F506B63656863;
  switch(a1)
  {
    case 1:
      result = 0x65756575716E65;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72776552656C7572;
      break;
    case 4:
      result = 0x776552726568746FLL;
      break;
    case 5:
      result = 0x7472617473;
      break;
    case 6:
      result = 0x696C537472617473;
      break;
    case 7:
      result = 0x7245686365657073;
      break;
    case 8:
      result = 0x6573756170;
      break;
    case 9:
      result = 0x656D75736572;
      break;
    case 10:
      result = 1886352499;
      break;
    case 11:
      result = 0x64656873696E6966;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
    case 15:
      result = 0x6465766965636572;
      break;
    case 16:
      result = 0x655272656B72616DLL;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A94635CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A946C53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9463600(uint64_t a1)
{
  v2 = sub_1A946BE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946363C(uint64_t a1)
{
  v2 = sub_1A946BE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463678(uint64_t a1)
{
  v2 = sub_1A946C418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94636B4(uint64_t a1)
{
  v2 = sub_1A946C418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6673736563637573 && a2 == 0xEC000000796C6C75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A946379C(uint64_t a1)
{
  v2 = sub_1A946C0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94637D8(uint64_t a1)
{
  v2 = sub_1A946C0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463814()
{
  if (*v0)
  {
    result = 28532;
  }

  else
  {
    result = 1836020326;
  }

  *v0;
  return result;
}

uint64_t sub_1A9463840(uint64_t a1)
{
  v2 = sub_1A946BED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946387C(uint64_t a1)
{
  v2 = sub_1A946BED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94638B8(uint64_t a1)
{
  v2 = sub_1A946BF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94638F4(uint64_t a1)
{
  v2 = sub_1A946BF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9463A04(uint64_t a1)
{
  v2 = sub_1A946C3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463A40(uint64_t a1)
{
  v2 = sub_1A946C3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463A7C()
{
  v1 = 1836020326;
  if (*v0 != 1)
  {
    v1 = 28532;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7956599;
  }
}

uint64_t sub_1A9463ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A946CAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9463AE4(uint64_t a1)
{
  v2 = sub_1A946C31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463B20(uint64_t a1)
{
  v2 = sub_1A946C31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463B5C(uint64_t a1)
{
  v2 = sub_1A946C1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463B98(uint64_t a1)
{
  v2 = sub_1A946C1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463BD4(uint64_t a1)
{
  v2 = sub_1A946C028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463C10(uint64_t a1)
{
  v2 = sub_1A946C028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463C4C(uint64_t a1)
{
  v2 = sub_1A946C07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463C88(uint64_t a1)
{
  v2 = sub_1A946C07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463CC4(uint64_t a1)
{
  v2 = sub_1A946BFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463D00(uint64_t a1)
{
  v2 = sub_1A946BFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463D3C(uint64_t a1)
{
  v2 = sub_1A946BF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463D78(uint64_t a1)
{
  v2 = sub_1A946BF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463DB4(uint64_t a1)
{
  v2 = sub_1A946C178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463DF0(uint64_t a1)
{
  v2 = sub_1A946C178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463E2C()
{
  v1 = 0x6C616E696769726FLL;
  v2 = 0x65676E6172;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6D6563616C706572;
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

uint64_t sub_1A9463EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A946CBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9463ED8(uint64_t a1)
{
  v2 = sub_1A946C370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463F14(uint64_t a1)
{
  v2 = sub_1A946C370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463F54(uint64_t a1)
{
  v2 = sub_1A946C220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463F90(uint64_t a1)
{
  v2 = sub_1A946C220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9464064(uint64_t a1)
{
  v2 = sub_1A946C2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94640A0(uint64_t a1)
{
  v2 = sub_1A946C2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94640DC()
{
  if (*v0)
  {
    return 0x6563696F76;
  }

  else
  {
    return 0x6563696C73;
  }
}

uint64_t sub_1A9464100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6563696C73 && a2 == 0xE500000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563696F76 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94641D0(uint64_t a1)
{
  v2 = sub_1A946C274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946420C(uint64_t a1)
{
  v2 = sub_1A946C274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9464248(uint64_t a1)
{
  v2 = sub_1A946C124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9464284(uint64_t a1)
{
  v2 = sub_1A946C124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSSpeechEvent.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3877D0, &qword_1A958F720);
  v165 = *(v3 - 8);
  v166 = v3;
  v4 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v164 = &v121 - v6;
  v163 = sub_1A937829C(&qword_1EB3877D8, &qword_1A958F728);
  v151 = *(v163 - 8);
  v7 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v163, v8);
  v162 = &v121 - v9;
  v126 = sub_1A937829C(&qword_1EB3877E0, &qword_1A958F730);
  v125 = *(v126 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126, v11);
  v124 = &v121 - v12;
  v123 = sub_1A937829C(&qword_1EB3877E8, &qword_1A958F738);
  v122 = *(v123 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123, v14);
  v121 = &v121 - v15;
  v129 = sub_1A937829C(&qword_1EB3877F0, &qword_1A958F740);
  v128 = *(v129 - 8);
  v16 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129, v17);
  v127 = &v121 - v18;
  v132 = sub_1A937829C(&qword_1EB3877F8, &qword_1A958F748);
  v131 = *(v132 - 8);
  v19 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132, v20);
  v130 = &v121 - v21;
  v161 = sub_1A937829C(&qword_1EB387800, &qword_1A958F750);
  v150 = *(v161 - 8);
  v22 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v161, v23);
  v160 = &v121 - v24;
  v135 = sub_1A937829C(&qword_1EB387808, &qword_1A958F758);
  v134 = *(v135 - 8);
  v25 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135, v26);
  v133 = &v121 - v27;
  v138 = sub_1A937829C(&qword_1EB387810, &qword_1A958F760);
  v137 = *(v138 - 8);
  v28 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138, v29);
  v136 = &v121 - v30;
  v141 = sub_1A937829C(&qword_1EB387818, &qword_1A958F768);
  v140 = *(v141 - 8);
  v31 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141, v32);
  v139 = &v121 - v33;
  v158 = sub_1A937829C(&qword_1EB387820, &qword_1A958F770);
  v149 = *(v158 - 8);
  v34 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v158, v35);
  v155 = &v121 - v36;
  v159 = sub_1A937829C(&qword_1EB387828, &qword_1A958F778);
  v157 = *(v159 - 8);
  v37 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159, v38);
  v156 = &v121 - v39;
  v178 = sub_1A937829C(&qword_1EB387830, &qword_1A958F780);
  v146 = *(v178 - 8);
  v40 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v178, v41);
  v177 = &v121 - v42;
  v154 = sub_1A937829C(&qword_1EB387838, &qword_1A958F788);
  v148 = *(v154 - 8);
  v43 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v154, v44);
  v176 = &v121 - v45;
  v175 = sub_1A937829C(&qword_1EB387840, &qword_1A958F790);
  v147 = *(v175 - 8);
  v46 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v175, v47);
  v174 = &v121 - v48;
  v153 = sub_1A937829C(&qword_1EB387848, &qword_1A958F798);
  v145 = *(v153 - 8);
  v49 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v153, v50);
  v173 = &v121 - v51;
  v144 = sub_1A937829C(&qword_1EB387850, &qword_1A958F7A0);
  v143 = *(v144 - 8);
  v52 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144, v53);
  v142 = &v121 - v54;
  v55 = sub_1A937829C(&qword_1EB387858, &qword_1A958F7A8);
  v152 = *(v55 - 8);
  v56 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v121 - v58;
  v182 = sub_1A937829C(&qword_1EB387860, &qword_1A958F7B0);
  v180 = *(v182 - 8);
  v60 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v182, v61);
  v63 = &v121 - v62;
  v64 = *v1;
  v65 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v66 = *(v1 + 2);
  v179 = *(v1 + 1);
  v67 = *(v1 + 3);
  v68 = *(v1 + 4);
  v171 = v66;
  v172 = v67;
  v69 = *(v1 + 5);
  v70 = *(v1 + 6);
  v169 = v68;
  v170 = v69;
  v71 = *(v1 + 7);
  v167 = v70;
  v168 = v71;
  v72 = v1[64];
  v73 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A946BE84();
  v181 = v63;
  v74 = v64;
  sub_1A957D598();
  v75 = v64 | (v65 << 8);
  if (v72 > 4)
  {
    if (v72 <= 7)
    {
      v76 = v181;
      if (v72 == 5)
      {
        LOBYTE(v184) = 6;
        sub_1A946C274();
        v78 = v156;
        v77 = v182;
        sub_1A957D288();
        LOBYTE(v184) = 0;
        v79 = v159;
        v102 = v183;
        sub_1A957D2E8();
        if (!v102)
        {
          LOBYTE(v184) = 1;
          sub_1A957D298();
        }

        v80 = &v187;
      }

      else
      {
        v77 = v182;
        if (v72 == 6)
        {
          LOBYTE(v184) = 7;
          sub_1A946C220();
          v78 = v155;
          sub_1A957D288();
          v79 = v158;
          sub_1A957D2E8();
          v80 = &v181;
        }

        else
        {
          LOBYTE(v184) = 11;
          sub_1A946C0D0();
          v78 = v160;
          sub_1A957D288();
          v79 = v161;
          sub_1A957D2F8();
          v80 = &v182;
        }
      }

      (*(*(v80 - 32) + 8))(v78, v79);
      v109 = *(v180 + 8);
      v110 = v76;
      return v109(v110, v77);
    }

    v93 = v181;
    if (v72 == 8)
    {
      LOBYTE(v184) = 16;
      sub_1A946BF2C();
      v103 = v162;
      v104 = v182;
      sub_1A957D288();
      LOBYTE(v184) = v74;
      HIBYTE(v184) = BYTE6(v65);
      *(&v184 + 5) = WORD2(v65);
      *(&v184 + 1) = v65;
      v185 = v179;
      type metadata accessor for _NSRange(0);
      sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange);
      v105 = v163;
      sub_1A957D338();
      (*(v151 + 8))(v103, v105);
      return (*(v180 + 8))(v93, v104);
    }

    if (v72 != 9)
    {
      v111 = v171 | v179 | v172;
      if (v111 | v169 | v170 | v167 | v168 | v75)
      {
        v112 = v111 | v169 | v170 | v167 | v168;
        if (v75 != 1 || v112)
        {
          v77 = v182;
          if (v75 != 2 || v112)
          {
            if (v75 != 3 || v112)
            {
              if (v75 != 4 || v112)
              {
                if (v75 != 5 || v112)
                {
                  if (v75 != 6 || v112)
                  {
                    LOBYTE(v184) = 15;
                    sub_1A946BF80();
                    v120 = v124;
                    sub_1A957D288();
                    (*(v125 + 8))(v120, v126);
                  }

                  else
                  {
                    LOBYTE(v184) = 14;
                    sub_1A946BFD4();
                    v119 = v121;
                    sub_1A957D288();
                    (*(v122 + 8))(v119, v123);
                  }
                }

                else
                {
                  LOBYTE(v184) = 13;
                  sub_1A946C028();
                  v118 = v127;
                  sub_1A957D288();
                  (*(v128 + 8))(v118, v129);
                }
              }

              else
              {
                LOBYTE(v184) = 12;
                sub_1A946C07C();
                v117 = v130;
                sub_1A957D288();
                (*(v131 + 8))(v117, v132);
              }
            }

            else
            {
              LOBYTE(v184) = 10;
              sub_1A946C124();
              v116 = v133;
              sub_1A957D288();
              (*(v134 + 8))(v116, v135);
            }
          }

          else
          {
            LOBYTE(v184) = 9;
            sub_1A946C178();
            v115 = v136;
            sub_1A957D288();
            (*(v137 + 8))(v115, v138);
          }
        }

        else
        {
          LOBYTE(v184) = 8;
          sub_1A946C1CC();
          v113 = v139;
          v77 = v182;
          sub_1A957D288();
          (*(v140 + 8))(v113, v141);
        }
      }

      else
      {
        LOBYTE(v184) = 1;
        sub_1A946C418();
        v114 = v142;
        v77 = v182;
        sub_1A957D288();
        (*(v143 + 8))(v114, v144);
      }

      v109 = *(v180 + 8);
      v110 = v93;
      return v109(v110, v77);
    }

    LOBYTE(v184) = 17;
    sub_1A946BED8();
    v94 = v164;
    v95 = v182;
    sub_1A957D288();
    LOBYTE(v184) = v64;
    HIBYTE(v184) = BYTE6(v65);
    *(&v184 + 5) = WORD2(v65);
    *(&v184 + 1) = v65;
    v185 = v179;
    v186 = 0;
    type metadata accessor for _NSRange(0);
    sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange);
    v96 = v166;
    v97 = v183;
    sub_1A957D338();
    if (!v97)
    {
      v184 = v171;
      v185 = v172;
      v186 = 1;
      sub_1A957D338();
    }

    (*(v165 + 8))(v94, v96);
    return (*(v180 + 8))(v93, v95);
  }

  v82 = v173;
  v81 = v174;
  v84 = v177;
  v83 = v178;
  v166 = v75;
  v86 = v175;
  v85 = v176;
  if (v72 <= 1)
  {
    v98 = v182;
    if (v72)
    {
      LOBYTE(v184) = 2;
      sub_1A946C3C4();
      v99 = v181;
      sub_1A957D288();
      LOBYTE(v184) = 0;
      v107 = v153;
      v108 = v183;
      sub_1A957D2E8();
      if (!v108)
      {
        LOBYTE(v184) = 1;
        sub_1A957D2E8();
      }

      (*(v145 + 8))(v82, v107);
    }

    else
    {
      LOBYTE(v184) = 0;
      sub_1A946C46C();
      v99 = v181;
      sub_1A957D288();
      sub_1A957D2E8();
      (*(v152 + 8))(v59, v55);
    }

    return (*(v180 + 8))(v99, v98);
  }

  else
  {
    v87 = v182;
    if (v72 == 2)
    {
      LOBYTE(v184) = 3;
      sub_1A946C370();
      v95 = v87;
      v93 = v181;
      sub_1A957D288();
      LOBYTE(v184) = 0;
      v100 = v183;
      sub_1A957D2E8();
      if (v100)
      {
        v101 = v147;
      }

      else
      {
        LOBYTE(v184) = 1;
        sub_1A957D2E8();
        v101 = v147;
        v184 = v169;
        v185 = v170;
        v186 = 2;
        type metadata accessor for _NSRange(0);
        sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange);
        sub_1A957D338();
        LOBYTE(v184) = 3;
        sub_1A957D2E8();
      }

      (*(v101 + 8))(v81, v86);
      return (*(v180 + 8))(v93, v95);
    }

    v88 = v181;
    if (v72 == 3)
    {
      LOBYTE(v184) = 4;
      sub_1A946C31C();
      v89 = v85;
      sub_1A957D288();
      LOBYTE(v184) = 0;
      v90 = v154;
      v91 = v183;
      sub_1A957D2E8();
      if (v91)
      {
        v92 = v148;
      }

      else
      {
        LOBYTE(v184) = 1;
        sub_1A957D2E8();
        v92 = v148;
        LOBYTE(v184) = 2;
        sub_1A957D2E8();
      }

      (*(v92 + 8))(v89, v90);
    }

    else
    {
      LOBYTE(v184) = 5;
      sub_1A946C2C8();
      sub_1A957D288();
      sub_1A957D2E8();
      (*(v146 + 8))(v84, v83);
    }

    return (*(v180 + 8))(v88, v87);
  }
}

uint64_t TTSSpeechEvent.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = v0[64];
  v8 = (*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | *v0;
  if (v7 <= 4)
  {
    if (v0[64] <= 1u)
    {
      if (v0[64])
      {
        v13 = *(v0 + 2);
        MEMORY[0x1AC5863C0](2);
        sub_1A957C228();
        goto LABEL_22;
      }

      v9 = 0;
      goto LABEL_20;
    }

    if (v7 == 2)
    {
      MEMORY[0x1AC5863C0](3);
      sub_1A957C228();
      sub_1A957C228();
      MEMORY[0x1AC5863C0](v3);
      MEMORY[0x1AC5863C0](v4);
    }

    else
    {
      if (v7 != 3)
      {
        v9 = 5;
LABEL_20:
        MEMORY[0x1AC5863C0](v9);
        goto LABEL_22;
      }

      MEMORY[0x1AC5863C0](4);
      sub_1A957C228();
      sub_1A957C228();
    }

LABEL_22:

    return sub_1A957C228();
  }

  if (v0[64] <= 7u)
  {
    if (v7 == 5)
    {
      v12 = *(v0 + 2);
      MEMORY[0x1AC5863C0](6);
      sub_1A957C228();
      if (!v2)
      {
        return sub_1A957D518();
      }

      sub_1A957D518();
      goto LABEL_22;
    }

    if (v7 != 6)
    {
      MEMORY[0x1AC5863C0](11);
      return sub_1A957D518();
    }

    v9 = 7;
    goto LABEL_20;
  }

  if (v7 == 8)
  {
    MEMORY[0x1AC5863C0](16);
    MEMORY[0x1AC5863C0](v8);
    v11 = v1;
  }

  else if (v7 == 9)
  {
    v10 = *(v0 + 2);
    MEMORY[0x1AC5863C0](17);
    MEMORY[0x1AC5863C0](v8);
    MEMORY[0x1AC5863C0](v1);
    MEMORY[0x1AC5863C0](v10);
    v11 = v2;
  }

  else
  {
    v15 = *(v0 + 2) | v1 | v2;
    if (v15 | v3 | v4 | v5 | v8 | v6)
    {
      v16 = v15 | v3 | v4 | v5 | v6;
      if (v8 == 1 && v16 == 0)
      {
        v11 = 8;
      }

      else if (v8 != 2 || v16)
      {
        if (v8 != 3 || v16)
        {
          if (v8 != 4 || v16)
          {
            if (v8 != 5 || v16)
            {
              if (v8 != 6 || v16)
              {
                v11 = 15;
              }

              else
              {
                v11 = 14;
              }
            }

            else
            {
              v11 = 13;
            }
          }

          else
          {
            v11 = 12;
          }
        }

        else
        {
          v11 = 10;
        }
      }

      else
      {
        v11 = 9;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return MEMORY[0x1AC5863C0](v11);
}

uint64_t TTSSpeechEvent.hashValue.getter()
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)();
  return sub_1A957D548();
}

uint64_t TTSSpeechEvent.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v232 = a2;
  v238 = sub_1A937829C(&qword_1EB387870, &qword_1A958F7B8);
  v218 = *(v238 - 8);
  v3 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v238, v4);
  v231 = v181 - v5;
  v217 = sub_1A937829C(&qword_1EB387878, &qword_1A958F7C0);
  v237 = *(v217 - 8);
  v6 = *(v237 + 8);
  MEMORY[0x1EEE9AC00](v217, v7);
  v230 = v181 - v8;
  v233 = sub_1A937829C(&qword_1EB387880, &qword_1A958F7C8);
  v216 = *(v233 - 8);
  v9 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v233, v10);
  v229 = v181 - v11;
  v215 = sub_1A937829C(&qword_1EB387888, &qword_1A958F7D0);
  v214 = *(v215 - 8);
  v12 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215, v13);
  v228 = v181 - v14;
  v213 = sub_1A937829C(&qword_1EB387890, &qword_1A958F7D8);
  v212 = *(v213 - 8);
  v15 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213, v16);
  v227 = v181 - v17;
  v211 = sub_1A937829C(&qword_1EB387898, &qword_1A958F7E0);
  v210 = *(v211 - 8);
  v18 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211, v19);
  v226 = v181 - v20;
  v209 = sub_1A937829C(&qword_1EB3878A0, &qword_1A958F7E8);
  v208 = *(v209 - 8);
  v21 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209, v22);
  v225 = v181 - v23;
  v207 = sub_1A937829C(&qword_1EB3878A8, &qword_1A958F7F0);
  v206 = *(v207 - 8);
  v24 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207, v25);
  v224 = v181 - v26;
  v205 = sub_1A937829C(&qword_1EB3878B0, &qword_1A958F7F8);
  v204 = *(v205 - 8);
  v27 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205, v28);
  v223 = v181 - v29;
  v202 = sub_1A937829C(&qword_1EB3878B8, &qword_1A958F800);
  v200 = *(v202 - 8);
  v30 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v202, v31);
  v222 = v181 - v32;
  v201 = sub_1A937829C(&qword_1EB3878C0, &qword_1A958F808);
  v199 = *(v201 - 8);
  v33 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v201, v34);
  v221 = v181 - v35;
  v198 = sub_1A937829C(&qword_1EB3878C8, &qword_1A958F810);
  v195 = *(v198 - 8);
  v36 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v198, v37);
  v236 = v181 - v38;
  v194 = sub_1A937829C(&qword_1EB3878D0, &qword_1A958F818);
  v193 = *(v194 - 8);
  v39 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194, v40);
  v219 = v181 - v41;
  v197 = sub_1A937829C(&qword_1EB3878D8, &qword_1A958F820);
  v196 = *(v197 - 8);
  v42 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197, v43);
  v220 = v181 - v44;
  v191 = sub_1A937829C(&qword_1EB3878E0, &qword_1A958F828);
  v203 = *(v191 - 8);
  v45 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v191, v46);
  v235 = v181 - v47;
  v192 = sub_1A937829C(&qword_1EB3878E8, &qword_1A958F830);
  v190 = *(v192 - 8);
  v48 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v192, v49);
  v234 = v181 - v50;
  v189 = sub_1A937829C(&qword_1EB3878F0, &qword_1A958F838);
  v188 = *(v189 - 8);
  v51 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189, v52);
  v54 = v181 - v53;
  v55 = sub_1A937829C(&qword_1EB3878F8, &qword_1A958F840);
  v187 = *(v55 - 8);
  v56 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = v181 - v58;
  v60 = sub_1A937829C(&qword_1EB387900, &unk_1A958F848);
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60, v63);
  v65 = v181 - v64;
  v67 = a1[3];
  v66 = a1[4];
  v239 = a1;
  sub_1A93780F4(a1, v67);
  sub_1A946BE84();
  v68 = v240;
  sub_1A957D588();
  if (v68)
  {
LABEL_43:
    v138 = v239;
    return sub_1A9378138(v138);
  }

  v183 = v59;
  v184 = v54;
  v182 = v55;
  v70 = v234;
  v69 = v235;
  v71 = v236;
  v72 = v237;
  v185 = 0;
  v73 = v238;
  v186 = v61;
  v240 = v60;
  v74 = sub_1A957D268();
  if (*(v74 + 16) != 1 || (v75 = *(v74 + 32), v75 == 18))
  {
    v80 = sub_1A957CF58();
    swift_allocError();
    v82 = v81;
    v83 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v82 = &type metadata for TTSSpeechEvent;
    v84 = v240;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x1E69E6AF8], v80);
    swift_willThrow();
    (*(v186 + 8))(v65, v84);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v181[1] = v74;
  v76 = v233;
  switch(v75)
  {
    case 1:
      LOBYTE(v243) = 1;
      sub_1A946C418();
      v119 = v184;
      v92 = v240;
      v120 = v185;
      sub_1A957D178();
      if (v120)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v188 + 8))(v119, v189);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v147 = 0;
      v149 = 0;
      v150 = 10;
      v94 = v239;
      goto LABEL_53;
    case 2:
      LOBYTE(v243) = 2;
      sub_1A946C3C4();
      v92 = v240;
      v108 = v185;
      sub_1A957D178();
      if (v108)
      {
        goto LABEL_41;
      }

      LOBYTE(v243) = 0;
      v76 = v192;
      v109 = sub_1A957D1E8();
      v102 = v239;
      v237 = v154;
      v145 = v109;
      LOBYTE(v243) = 1;
      v155 = sub_1A957D1E8();
      v156 = v70;
      v85 = (v190 + 8);
      v88 = v186 + 8;
      v185 = 0;
      v78 = v155;
      v72 = v174;
      (*(v190 + 8))(v156, v76);
      (*v88)(v65, v240);
      swift_unknownObjectRelease();
      v147 = v145;
      v149 = v145 & 0xFFFFFFFFFFFFFF00;
      v150 = 1;
      goto LABEL_51;
    case 3:
      LOBYTE(v243) = 3;
      sub_1A946C370();
      v76 = v240;
      v112 = v185;
      sub_1A957D178();
      if (v112)
      {
        goto LABEL_37;
      }

      LOBYTE(v243) = 0;
      v113 = v191;
      v114 = sub_1A957D1E8();
      v102 = v239;
      v237 = v157;
      v238 = v65;
      v234 = v114;
      LOBYTE(v243) = 1;
      v158 = v69;
      v159 = v113;
      v78 = sub_1A957D1E8();
      v72 = v175;
      type metadata accessor for _NSRange(0);
      LOBYTE(v241) = 2;
      sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange);
      sub_1A957D238();
      v76 = v243;
      v85 = v244;
      LOBYTE(v241) = 3;
      v179 = sub_1A957D1E8();
      v185 = 0;
      v145 = v179;
      v88 = v180;
      (*(v203 + 8))(v158, v159);
      (*(v186 + 8))(v238, v240);
      swift_unknownObjectRelease();
      v147 = v234;
      v149 = v234 & 0xFFFFFFFFFFFFFF00;
      v150 = 2;
      goto LABEL_51;
    case 4:
      LOBYTE(v243) = 4;
      sub_1A946C31C();
      v98 = v220;
      v76 = v240;
      v99 = v185;
      sub_1A957D178();
      if (v99)
      {
        goto LABEL_37;
      }

      v145 = v65;
      LOBYTE(v243) = 0;
      v100 = v197;
      v101 = sub_1A957D1E8();
      v102 = v239;
      v103 = v186;
      v237 = v152;
      v234 = v101;
      LOBYTE(v243) = 1;
      v88 = v98;
      v153 = v100;
      v78 = sub_1A957D1E8();
      v72 = v172;
      LOBYTE(v243) = 2;
      v173 = sub_1A957D1E8();
      v185 = 0;
      v76 = v173;
      v85 = v178;
      (*(v196 + 8))(v88, v153);
      (*(v103 + 8))(v145, v240);
      swift_unknownObjectRelease();
      v147 = v234;
      v149 = v234 & 0xFFFFFFFFFFFFFF00;
      v150 = 3;
      goto LABEL_51;
    case 5:
      LOBYTE(v243) = 5;
      sub_1A946C2C8();
      v124 = v219;
      v85 = v240;
      v125 = v185;
      sub_1A957D178();
      if (v125)
      {
        goto LABEL_33;
      }

      v72 = v194;
      v139 = sub_1A957D1E8();
      v89 = v239;
      v140 = v186;
      v185 = 0;
      v145 = v139;
      v166 = v124;
      v78 = v167;
      (*(v193 + 8))(v166, v72);
      v168 = *(v140 + 8);
      v88 = v140 + 8;
      v168(v65, v85);
      swift_unknownObjectRelease();
      v148 = v78;
      v147 = v145;
      v149 = v145 & 0xFFFFFFFFFFFFFF00;
      v150 = 4;
      goto LABEL_50;
    case 6:
      LOBYTE(v243) = 6;
      sub_1A946C274();
      v128 = v71;
      v76 = v240;
      v129 = v185;
      sub_1A957D178();
      if (v129)
      {
LABEL_37:
        (*(v186 + 8))(v65, v76);
        goto LABEL_42;
      }

      v145 = v65;
      LOBYTE(v243) = 0;
      v141 = v198;
      v142 = sub_1A957D1E8();
      v102 = v239;
      v143 = v186;
      v237 = v169;
      v234 = v142;
      LOBYTE(v243) = 1;
      v78 = sub_1A957D198();
      v170 = v128;
      v171 = v141;
      v85 = (v195 + 8);
      v88 = v143 + 8;
      v185 = 0;
      v72 = v176;
      (*(v195 + 8))(v170, v171);
      (*(v143 + 8))(v145, v76);
      swift_unknownObjectRelease();
      v147 = v234;
      v149 = v234 & 0xFFFFFFFFFFFFFF00;
      v150 = 5;
LABEL_51:
      v94 = v102;
      goto LABEL_52;
    case 7:
      LOBYTE(v243) = 7;
      sub_1A946C220();
      v115 = v221;
      v85 = v240;
      v116 = v185;
      sub_1A957D178();
      if (v116)
      {
        goto LABEL_33;
      }

      v72 = v201;
      v117 = sub_1A957D1E8();
      v89 = v239;
      v118 = v186;
      v185 = 0;
      v145 = v117;
      v160 = v115;
      v78 = v161;
      (*(v199 + 8))(v160, v72);
      v162 = *(v118 + 8);
      v88 = v118 + 8;
      v162(v65, v85);
      swift_unknownObjectRelease();
      v148 = v78;
      v147 = v145;
      v149 = v145 & 0xFFFFFFFFFFFFFF00;
      v150 = 6;
      goto LABEL_50;
    case 8:
      LOBYTE(v243) = 8;
      sub_1A946C1CC();
      v132 = v222;
      v92 = v240;
      v133 = v185;
      sub_1A957D178();
      if (v133)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v200 + 8))(v132, v202);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 1;
      v94 = v239;
      goto LABEL_53;
    case 9:
      LOBYTE(v243) = 9;
      sub_1A946C178();
      v106 = v223;
      v92 = v240;
      v107 = v185;
      sub_1A957D178();
      if (v107)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v204 + 8))(v106, v205);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 2;
      v94 = v239;
      goto LABEL_53;
    case 10:
      LOBYTE(v243) = 10;
      sub_1A946C124();
      v130 = v224;
      v92 = v240;
      v131 = v185;
      sub_1A957D178();
      if (v131)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v206 + 8))(v130, v207);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 3;
      v94 = v239;
      goto LABEL_53;
    case 11:
      LOBYTE(v243) = 11;
      sub_1A946C0D0();
      v72 = v225;
      v85 = v240;
      v95 = v185;
      sub_1A957D178();
      if (v95)
      {
        goto LABEL_33;
      }

      v78 = v209;
      v96 = sub_1A957D1F8();
      v89 = v239;
      v97 = v186;
      v145 = v96;
      v185 = 0;
      (*(v208 + 8))(v72, v78);
      v151 = *(v97 + 8);
      v88 = v97 + 8;
      v151(v65, v85);
      swift_unknownObjectRelease();
      v149 = 0;
      v147 = v145 & 1;
      v150 = 7;
      goto LABEL_50;
    case 12:
      LOBYTE(v243) = 12;
      sub_1A946C07C();
      v104 = v226;
      v92 = v240;
      v105 = v185;
      sub_1A957D178();
      if (v105)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v210 + 8))(v104, v211);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 4;
      v94 = v239;
      goto LABEL_53;
    case 13:
      LOBYTE(v243) = 13;
      sub_1A946C028();
      v126 = v227;
      v92 = v240;
      v127 = v185;
      sub_1A957D178();
      if (v127)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v212 + 8))(v126, v213);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 5;
      v94 = v239;
      goto LABEL_53;
    case 14:
      LOBYTE(v243) = 14;
      sub_1A946BFD4();
      v91 = v228;
      v92 = v240;
      v93 = v185;
      sub_1A957D178();
      if (v93)
      {
        goto LABEL_41;
      }

      v185 = 0;
      (*(v214 + 8))(v91, v215);
      (*(v186 + 8))(v65, v92);
      swift_unknownObjectRelease();
      v148 = 0;
      v78 = 0;
      v72 = 0;
      v76 = 0;
      v85 = 0;
      v145 = 0;
      v88 = 0;
      v149 = 0;
      v150 = 10;
      v147 = 6;
      v94 = v239;
      goto LABEL_53;
    case 15:
      LOBYTE(v243) = 15;
      sub_1A946BF80();
      v110 = v229;
      v92 = v240;
      v111 = v185;
      sub_1A957D178();
      if (!v111)
      {
        v185 = 0;
        (*(v216 + 8))(v110, v76);
        (*(v186 + 8))(v65, v92);
        swift_unknownObjectRelease();
        v148 = 0;
        v78 = 0;
        v72 = 0;
        v76 = 0;
        v85 = 0;
        v145 = 0;
        v88 = 0;
        v149 = 0;
        v150 = 10;
        v147 = 7;
        v94 = v239;
        goto LABEL_53;
      }

LABEL_41:
      (*(v186 + 8))(v65, v92);
      goto LABEL_42;
    case 16:
      LOBYTE(v243) = 16;
      sub_1A946BF2C();
      v78 = v230;
      v85 = v240;
      v86 = v185;
      sub_1A957D178();
      if (!v86)
      {
        type metadata accessor for _NSRange(0);
        sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange);
        v87 = v217;
        sub_1A957D238();
        v88 = 0;
        v89 = v239;
        v90 = v186;
        v185 = 0;
        v144 = *(v72 + 1);
        v72 += 8;
        v144(v78, v87);
        v146 = *(v90 + 8);
        v145 = v90 + 8;
        v146(v65, v85);
        swift_unknownObjectRelease();
        v147 = v243;
        v148 = v244;
        v149 = v243 & 0xFFFFFFFFFFFFFF00;
        v150 = 8;
        goto LABEL_50;
      }

LABEL_33:
      (*(v186 + 8))(v65, v85);
      goto LABEL_42;
    case 17:
      v121 = v73;
      LOBYTE(v243) = 17;
      sub_1A946BED8();
      v122 = v231;
      v76 = v240;
      v123 = v185;
      sub_1A957D178();
      if (v123)
      {
        (*(v186 + 8))(v65, v76);
        swift_unknownObjectRelease();
        v138 = v239;
        return sub_1A9378138(v138);
      }

      v85 = v65;
      type metadata accessor for _NSRange(0);
      LOBYTE(v241) = 0;
      sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange);
      sub_1A957D238();
      v137 = v186;
      v234 = v243;
      v237 = v244;
      v245 = 1;
      v88 = v122;
      sub_1A957D238();
      v145 = 0;
      v185 = 0;
      (*(v218 + 8))(v122, v121);
      (*(v137 + 8))(v85, v76);
      swift_unknownObjectRelease();
      v78 = v241;
      v72 = v242;
      v147 = v234;
      v149 = v234 & 0xFFFFFFFFFFFFFF00;
      v150 = 9;
      v94 = v239;
LABEL_52:
      v148 = v237;
      goto LABEL_53;
    default:
      LOBYTE(v243) = 0;
      sub_1A946C46C();
      v77 = v183;
      v78 = v240;
      v79 = v185;
      sub_1A957D178();
      if (v79)
      {
        (*(v186 + 8))(v65, v78);
        goto LABEL_42;
      }

      v85 = v182;
      v135 = sub_1A957D1E8();
      v89 = v239;
      v136 = v186;
      v185 = 0;
      v88 = v135;
      v163 = v77;
      v145 = v164;
      (*(v187 + 8))(v163, v85);
      v165 = *(v136 + 8);
      v76 = v136 + 8;
      v165(v65, v78);
      swift_unknownObjectRelease();
      v148 = v145;
      v147 = v88;
      v150 = 0;
      v149 = v88 & 0xFFFFFFFFFFFFFF00;
LABEL_50:
      v94 = v89;
LABEL_53:
      v177 = v232;
      *v232 = v149 | v147;
      v177[1] = v148;
      v177[2] = v78;
      v177[3] = v72;
      v177[4] = v76;
      v177[5] = v85;
      v177[6] = v145;
      v177[7] = v88;
      *(v177 + 64) = v150;
      result = sub_1A9378138(v94);
      break;
  }

  return result;
}

uint64_t sub_1A946806C()
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A94680B0()
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)();
  return sub_1A957D548();
}

double TTSSpeechEvent.markup.getter@<D0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 64) == 5)
  {
    v5 = v1;
    v3 = *v1;
    v4 = v5[1];

    TTSMarkup.SpeechDocument.init(ssml:)(a1);
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t TTSSpeechEvent.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v14 = *(v1 + 32);
  v15 = v2;
  v16 = *(v1 + 64);
  v3 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v3;
  if (v16 > 2u)
  {
    if (v16 == 3)
    {
      v11 = *(&v13[0] + 1);
      *a1 = *&v13[0];
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0xE000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0xE000000000000000;
      v6 = 3;
      goto LABEL_13;
    }

    if (v16 != 4)
    {
LABEL_8:
      v8 = *(v1 + 48);
      *(a1 + 32) = *(v1 + 32);
      *(a1 + 48) = v8;
      *(a1 + 64) = *(v1 + 64);
      v9 = *(v1 + 16);
      *a1 = *v1;
      *(a1 + 16) = v9;
      return sub_1A946330C(v13, v12);
    }

    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    v7 = 4;
LABEL_10:
    *(a1 + 64) = v7;
    return result;
  }

  if (v16 == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v7 = 1;
    goto LABEL_10;
  }

  if (v16 != 2)
  {
    goto LABEL_8;
  }

  v4 = *(&v15 + 1);
  v5 = v15;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = v14;
  *(a1 + 48) = __PAIR128__(v4, v5);
  v6 = 2;
LABEL_13:
  *(a1 + 64) = v6;
}

Swift::Void __swiftcall TTSSpeechEvent.emit(forJob:)(Swift::String forJob)
{
  object = forJob._object;
  countAndFlagsBits = forJob._countAndFlagsBits;
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 48);
  v6[2] = *(v1 + 32);
  v6[3] = v4;
  v7 = *(v1 + 64);
  v5 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v5;
  (*((*MEMORY[0x1E69E7D40] & *qword_1EB39A4C8) + 0x128))(v6, countAndFlagsBits, object);
}

uint64_t TTSSpeechEvent.logLevel.getter()
{
  v1 = v0[4].u8[0];
  if (v1 == 4 || v1 == 7)
  {
    return sub_1A957CA98();
  }

  if (v1 != 10)
  {
    return sub_1A957CA68();
  }

  v4 = vorrq_s8(v0[2], v0[3]);
  v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v0[1].i64[1] | v0[1].i64[0] | v0->i64[1];
  if ((v0->i64[0] - 1) <= 2 && v5 == 0)
  {
    return sub_1A957CA98();
  }

  if (v0->i64[0] != 4 || v5 != 0)
  {
    return sub_1A957CA68();
  }

  return sub_1A957CA58();
}

uint64_t TTSLoggedSpeechEvent.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTSLoggedSpeechEvent.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTSLoggedSpeechEvent.event.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1A946330C(v8, v7);
}

__n128 TTSLoggedSpeechEvent.event.setter(uint64_t a1)
{
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v8 = *(v1 + 80);
  v4 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v4;
  sub_1A946C4C0(v7);
  v5 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v5;
  *(v1 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t TTSLoggedSpeechEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTSLoggedSpeechEvent() + 24);
  v4 = sub_1A957B078();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTSLoggedSpeechEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSLoggedSpeechEvent() + 24);
  v4 = sub_1A957B078();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTSLoggedSpeechEvent.pid.setter(int a1)
{
  result = type metadata accessor for TTSLoggedSpeechEvent();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TTSLoggedSpeechEvent.processName.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSLoggedSpeechEvent() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSLoggedSpeechEvent.processName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTSLoggedSpeechEvent() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A94687B8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6D617473656D6974;
  v4 = 6580592;
  if (v1 != 3)
  {
    v4 = 0x4E737365636F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
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

uint64_t sub_1A9468858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A946EA84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A946888C(uint64_t a1)
{
  v2 = sub_1A946CF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94688C8(uint64_t a1)
{
  v2 = sub_1A946CF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSLoggedSpeechEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387910, &qword_1A958F858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A946CF18();
  sub_1A957D598();
  v12 = *v3;
  v13 = v3[1];
  v38 = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    v14 = *(v3 + 2);
    v15 = *(v3 + 4);
    v35 = *(v3 + 3);
    v36 = v15;
    v16 = *(v3 + 2);
    v34[0] = *(v3 + 1);
    v34[1] = v16;
    v30 = v14;
    v31 = v35;
    v32 = *(v3 + 4);
    v37 = *(v3 + 80);
    v33 = *(v3 + 80);
    v29 = v34[0];
    v28 = 1;
    sub_1A946330C(v34, v26);
    sub_1A946CF6C();
    sub_1A957D338();
    v26[2] = v31;
    v26[3] = v32;
    v27 = v33;
    v26[1] = v30;
    v26[0] = v29;
    sub_1A946C4C0(v26);
    v17 = type metadata accessor for TTSLoggedSpeechEvent();
    v18 = v17[6];
    v25 = 2;
    sub_1A957B078();
    sub_1A946ECA8(&qword_1EB386370, MEMORY[0x1E6969530]);
    sub_1A957D338();
    v19 = *(v3 + v17[7]);
    v25 = 3;
    sub_1A957D348();
    v20 = (v3 + v17[8]);
    v21 = *v20;
    v22 = v20[1];
    v25 = 4;
    sub_1A957D2E8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t TTSLoggedSpeechEvent.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1A957C228();
  v13 = *(v0 + 3);
  v14 = *(v0 + 4);
  v15 = *(v0 + 80);
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  TTSSpeechEvent.hash(into:)();
  v4 = type metadata accessor for TTSLoggedSpeechEvent();
  v5 = v4[6];
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530]);
  sub_1A957C068();
  v6 = *(v1 + v4[7]);
  sub_1A957D528();
  v7 = (v1 + v4[8]);
  v8 = *v7;
  v9 = v7[1];

  return sub_1A957C228();
}

uint64_t TTSLoggedSpeechEvent.hashValue.getter()
{
  v1 = v0;
  sub_1A957D4F8();
  v2 = *v0;
  v3 = v0[1];
  sub_1A957C228();
  v13 = *(v0 + 3);
  v14 = *(v0 + 4);
  v15 = *(v0 + 80);
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  TTSSpeechEvent.hash(into:)();
  v4 = type metadata accessor for TTSLoggedSpeechEvent();
  v5 = v4[6];
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530]);
  sub_1A957C068();
  v6 = *(v1 + v4[7]);
  sub_1A957D528();
  v7 = (v1 + v4[8]);
  v8 = *v7;
  v9 = v7[1];
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t TTSLoggedSpeechEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A957B078();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A937829C(&qword_1EB387928, &unk_1A958F860);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for TTSLoggedSpeechEvent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A946CF18();
  v39 = v11;
  v18 = v41;
  sub_1A957D588();
  if (v18)
  {
    return sub_1A9378138(a1);
  }

  v19 = v7;
  v20 = v38;
  v21 = v12;
  LOBYTE(v42) = 0;
  v22 = v16;
  *v16 = sub_1A957D1E8();
  *(v16 + 1) = v23;
  v41 = v23;
  v48 = 1;
  sub_1A946CFC0();
  sub_1A957D238();
  v24 = v45;
  *(v16 + 3) = v44;
  *(v16 + 4) = v24;
  v16[80] = v46;
  v25 = v43;
  *(v16 + 1) = v42;
  *(v16 + 2) = v25;
  v47 = 2;
  sub_1A946ECA8(&qword_1EB386368, MEMORY[0x1E6969530]);
  v26 = v19;
  v35[1] = 0;
  sub_1A957D238();
  v27 = a1;
  (*(v37 + 32))(&v22[*(v21 + 24)], v26, v3);
  v47 = 3;
  *&v22[*(v21 + 28)] = sub_1A957D248();
  v47 = 4;
  v28 = v21;
  v29 = v22;
  v30 = sub_1A957D1E8();
  v32 = v31;
  (*(v20 + 8))(v39, v40);
  v33 = (v29 + *(v28 + 32));
  *v33 = v30;
  v33[1] = v32;
  sub_1A946D014(v29, v36);
  sub_1A9378138(v27);
  return sub_1A946D078(v29);
}

uint64_t sub_1A94692F8(int *a1)
{
  v3 = v1;
  sub_1A957D4F8();
  v4 = *v1;
  v5 = v1[1];
  sub_1A957C228();
  v14 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *(v1 + 80);
  v12 = *(v1 + 1);
  v13 = *(v1 + 2);
  TTSSpeechEvent.hash(into:)();
  v6 = a1[6];
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530]);
  sub_1A957C068();
  v7 = *(v3 + a1[7]);
  sub_1A957D528();
  v8 = (v3 + a1[8]);
  v9 = *v8;
  v10 = v8[1];
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A94693EC(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_1A957C228();
  v15 = *(v2 + 3);
  v16 = *(v2 + 4);
  v17 = *(v2 + 80);
  v13 = *(v2 + 1);
  v14 = *(v2 + 2);
  TTSSpeechEvent.hash(into:)();
  v7 = a2[6];
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530]);
  sub_1A957C068();
  v8 = *(v4 + a2[7]);
  sub_1A957D528();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];

  return sub_1A957C228();
}

uint64_t sub_1A94694E0(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1A957D4F8();
  v5 = *v2;
  v6 = v2[1];
  sub_1A957C228();
  v15 = *(v2 + 3);
  v16 = *(v2 + 4);
  v17 = *(v2 + 80);
  v13 = *(v2 + 1);
  v14 = *(v2 + 2);
  TTSSpeechEvent.hash(into:)();
  v7 = a2[6];
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530]);
  sub_1A957C068();
  v8 = *(v4 + a2[7]);
  sub_1A957D528();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  sub_1A957C228();
  return sub_1A957D548();
}

id sub_1A94695D4()
{
  result = [objc_allocWithZone(type metadata accessor for TTSSpeechTracer()) init];
  qword_1EB39A4C8 = result;
  return result;
}

id TTSSpeechTracer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TTSSpeechTracer.shared.getter()
{
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB39A4C8;

  return v1;
}

uint64_t sub_1A94696F0()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid);
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid + 4) != 1)
  {
    return *v1;
  }

  result = getpid();
  *v1 = result;
  v1[4] = 0;
  return result;
}

uint64_t sub_1A9469738()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName);
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName + 8);
  }

  else
  {
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 processName];

    v2 = sub_1A957C0F8();
    v7 = v6;

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

id sub_1A94697F8()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB39A4D8);
  sub_1A937731C(v0, qword_1EB39A4D8);
  result = TTSRosebudLogger();
  if (result)
  {
    return sub_1A957BC98();
  }

  __break(1u);
  return result;
}

uint64_t static TTSSpeechTracer.eventLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB39A4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A957BC88();
  v3 = sub_1A937731C(v2, qword_1EB39A4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id TTSSpeechTracer.init()()
{
  v26 = sub_1A957CAD8();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v26, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957CAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1A957BF48();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = &v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName];
  *v13 = 0;
  *(v13 + 1) = 0;
  v25 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_operationQueue;
  v24 = sub_1A93F8778();
  sub_1A957BF28();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A946ECA8(&qword_1ED96FE98, MEMORY[0x1E69E8030]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v26);
  *&v0[v25] = sub_1A957CB08();
  v14 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_encoder;
  v15 = sub_1A957ADF8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v0[v14] = sub_1A957ADE8();
  *&v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventBufferSize] = 1000;
  v18 = type metadata accessor for TTSSpeechTracer();
  v27.receiver = v0;
  v27.super_class = v18;
  v19 = objc_msgSendSuper2(&v27, sel_init);
  if (TTSIsInternalBuild())
  {
    v20 = sub_1A957C0C8();
    v21 = CFNotificationCenterGetDarwinNotifyCenter();
    v22 = v20;
    CFNotificationCenterAddObserver(v21, 0, sub_1A9469C80, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v19;
}

uint64_t sub_1A9469CB0(uint64_t result)
{
  if (result < 0)
  {
    goto LABEL_20;
  }

  v1 = result;
  if (!result)
  {
    v3 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v12 = v3;
    sub_1A937829C(&qword_1EB387968, &unk_1A958F870);
    sub_1A946D250(&qword_1EB387970, &qword_1EB387968, &unk_1A958F870);
    return sub_1A957C398();
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (("com.apple.ax.dumpspeech" & 0x2F00000000000000) == 0x2000000000000000)
    {
      goto LABEL_5;
    }

    result = sub_1A957C238();
    if (result < 0)
    {
      break;
    }

    v5 = result;
    if (!result)
    {
      goto LABEL_19;
    }

    v12 = 0;
    MEMORY[0x1AC587CF0](&v12, 8);
    if (v5 > v12 * v5)
    {
      v6 = -v5 % v5;
      while (v6 > v12 * v5)
      {
        v12 = 0;
        MEMORY[0x1AC587CF0](&v12, 8);
      }
    }

    sub_1A957C268();
    v7 = sub_1A957C388();
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A946B4DC(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_1A946B4DC((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v4 = &v3[16 * v11];
    *(v4 + 4) = v7;
    *(v4 + 5) = v9;
LABEL_5:
    if (++v2 == v1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A9469EF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v8);
  (*((*v6 & *v3) + 0x128))(v8, a2, a3);
  v10[2] = v8[2];
  v10[3] = v8[3];
  v11 = v9;
  v10[0] = v8[0];
  v10[1] = v8[1];
  return sub_1A946C4C0(v10);
}

uint64_t sub_1A946A10C(__int128 *a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v5 = sub_1A957BF18();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A957BF48();
  v44 = *(v45 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A957B078();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v38 - v20;
  v22 = a1[2];
  v23 = a1[3];
  v24 = *a1;
  v50 = a1[1];
  v51 = v22;
  v52 = v23;
  v53 = *(a1 + 64);
  v49 = v24;
  result = TTSIsInternalBuild();
  if (result)
  {
    if (v53 == 3)
    {
      if (v50 == v51)
      {
        return result;
      }
    }

    else
    {
      if (v53 != 1)
      {
LABEL_8:
        sub_1A957B068();
        v38 = *&v3[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_operationQueue];
        (*(v14 + 16))(v18, v21, v13);
        v26 = (*(v14 + 80) + 97) & ~*(v14 + 80);
        v39 = v5;
        v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        v29 = v13;
        v40 = v13;
        v30 = v42;
        *(v28 + 16) = v41;
        *(v28 + 24) = v30;
        v31 = v50;
        v32 = v52;
        *(v28 + 64) = v51;
        *(v28 + 80) = v32;
        *(v28 + 96) = v53;
        *(v28 + 32) = v49;
        *(v28 + 48) = v31;
        (*(v14 + 32))(v28 + v26, v18, v29);
        *(v28 + v27) = v3;
        aBlock[4] = sub_1A946D1A4;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A93C80E8;
        aBlock[3] = &unk_1F1CED770;
        v33 = _Block_copy(aBlock);
        v41 = v38;

        sub_1A946330C(&v49, v47);
        v34 = v3;
        sub_1A957BF28();
        v47[0] = MEMORY[0x1E69E7CC0];
        sub_1A946ECA8(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
        sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
        sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
        v35 = v43;
        v36 = v39;
        sub_1A957CE08();
        v37 = v41;
        MEMORY[0x1AC5859B0](0, v12, v35, v33);
        _Block_release(v33);

        (*(v46 + 8))(v35, v36);
        (*(v44 + 8))(v12, v45);
        (*(v14 + 8))(v21, v40);
      }

      result = v49;
      if (v49 == v50)
      {
        return result;
      }
    }

    result = sub_1A957D3E8();
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A946A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A957C168();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v57[1] = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTSLoggedSpeechEvent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = v57 - v23;
  v25 = *(v22 + 24);
  v26 = sub_1A957B078();
  (*(*(v26 - 8) + 16))(&v24[v25], a4, v26);

  sub_1A946330C(a3, v58);
  LODWORD(v25) = sub_1A94696F0();
  v27 = sub_1A9469738();
  *v24 = a1;
  *(v24 + 1) = a2;
  v28 = *(a3 + 48);
  *(v24 + 3) = *(a3 + 32);
  *(v24 + 4) = v28;
  v24[80] = *(a3 + 64);
  v29 = *(a3 + 16);
  *(v24 + 1) = *a3;
  *(v24 + 2) = v29;
  *&v24[*(v14 + 28)] = v25;
  v30 = &v24[*(v14 + 32)];
  *v30 = v27;
  v30[1] = v31;
  v32 = *(a5 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventBufferSize);
  v33 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue;
  swift_beginAccess();
  sub_1A946D014(v24, v20);
  v34 = *(a5 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + v33) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1A946B5E8(0, v34[2] + 1, 1, v34);
    *(a5 + v33) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1A946B5E8(v36 > 1, v37 + 1, 1, v34);
  }

  v34[2] = v37 + 1;
  sub_1A946EC44(v20, v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v37);
  *(a5 + v33) = v34;
  if (v32 <= v37)
  {
    sub_1A946F144(0, 1);
  }

  swift_endAccess();
  if (TTSIsBaseSystem())
  {
    return sub_1A946D078(v24);
  }

  v38 = *(**sub_1A94CF400() + 216);

  v40 = v38(v39);

  v41 = *(v40 + 16);

  if (!v41 && ([objc_opt_self() shouldLogSensitiveSpeech] & 1) == 0)
  {
    return sub_1A946D078(v24);
  }

  v42 = *(a5 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_encoder);
  sub_1A946ECA8(&qword_1EB387990, type metadata accessor for TTSLoggedSpeechEvent);

  v44 = sub_1A957ADD8();
  v46 = v45;

  sub_1A957C158();
  v47 = sub_1A957C118();
  if (v48)
  {
    v49 = v48;
    v50 = v47;
    if (qword_1EB39A4D0 != -1)
    {
      swift_once();
    }

    v51 = sub_1A957BC88();
    sub_1A937731C(v51, qword_1EB39A4D8);
    v52 = sub_1A957CA98();

    v53 = sub_1A957BC68();

    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58[0] = v55;
      *v54 = 136315138;
      v56 = sub_1A937A5C0(v50, v49, v58);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1A9324000, v53, v52, "%s", v54, 0xCu);
      sub_1A9378138(v55);
      MEMORY[0x1AC587CD0](v55, -1, -1);
      MEMORY[0x1AC587CD0](v54, -1, -1);
      sub_1A9442638(v44, v46);
    }

    else
    {
      sub_1A9442638(v44, v46);
    }

    return sub_1A946D078(v24);
  }

  sub_1A946D078(v24);
  return sub_1A9442638(v44, v46);
}

uint64_t sub_1A946AB60(uint64_t a1)
{
  v2 = sub_1A957C168();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSLoggedSpeechEvent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue;
  swift_beginAccess();
  result = *(a1 + v13);
  v42 = *(result + 16);
  if (v42)
  {
    v40 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v41 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_encoder;

    v15 = 0;
    *&v16 = 136315138;
    v33 = v16;
    v34 = v6;
    v35 = a1;
    v37 = v8;
    v38 = v7;
    v36 = v12;
    v39 = result;
    while (v15 < *(result + 16))
    {
      sub_1A946D014(v40 + *(v8 + 72) * v15, v12);
      v17 = *(a1 + v41);
      sub_1A946ECA8(&qword_1EB387990, type metadata accessor for TTSLoggedSpeechEvent);

      v18 = v12;
      v19 = sub_1A957ADD8();
      v21 = v20;
      sub_1A946D078(v18);

      sub_1A957C158();
      v22 = sub_1A957C118();
      if (!v23)
      {
        sub_1A9442638(v19, v21);
      }

      v24 = v22;
      v25 = v23;
      if (qword_1EB39A4D0 != -1)
      {
        swift_once();
      }

      v26 = sub_1A957BC88();
      sub_1A937731C(v26, qword_1EB39A4D8);
      v27 = sub_1A957CA98();

      v28 = sub_1A957BC68();

      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v43 = v30;
        *v29 = v33;
        v31 = sub_1A937A5C0(v24, v25, &v43);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_1A9324000, v28, v27, "%s", v29, 0xCu);
        sub_1A9378138(v30);
        MEMORY[0x1AC587CD0](v30, -1, -1);
        v32 = v29;
        a1 = v35;
        MEMORY[0x1AC587CD0](v32, -1, -1);
        sub_1A9442638(v19, v21);
      }

      else
      {
        sub_1A9442638(v19, v21);
      }

      v8 = v37;
      v12 = v36;
      result = v39;
      if (v42 == ++v15)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A946AFB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_1A946330C(v10, &v9);
}

uint64_t sub_1A946B030(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v10 = *(v3 + 64);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1A946C4C0(v9);
}

id sub_1A946B110(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v6;
  v4[64] = *(a1 + 64);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static TTSSpeechEventObjc.make(otherRewrite:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for TTSSpeechEventObjc();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  *(v14 + 5) = a6;
  v14[64] = 3;
  v16.receiver = v13;
  v16.super_class = v12;

  return objc_msgSendSuper2(&v16, sel_init);
}

id static TTSSpeechEventObjc.make(start:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechEventObjc();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[64] = 4;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1A946B460(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1A946B4DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3879A0, &qword_1A9590FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1A946B5E8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB387998, &qword_1A9590FB8);
  v10 = *(type metadata accessor for TTSLoggedSpeechEvent() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TTSLoggedSpeechEvent() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s12TextToSpeech14TTSSpeechEventO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v31 = a2[2];
  v32 = v6;
  v7 = a2[1];
  v29 = *a2;
  v30 = v7;
  v8 = a1[3];
  v34[2] = v26;
  v34[3] = v8;
  v34[0] = v24;
  v34[1] = v2;
  v37 = v5;
  v38 = v31;
  v39 = a2[3];
  v28 = *(a1 + 64);
  v33 = a2[4].i8[0];
  v35 = *(a1 + 64);
  v40 = a2[4].i8[0];
  v36 = v29;
  v9 = (*(&v24 + 1) << 8) | ((*(&v24 + 5) | (BYTE7(v24) << 16)) << 40) | v24;
  if (v28 > 4u)
  {
    if (v28 > 7u)
    {
      if (v28 == 8)
      {
        if (v33 == 8)
        {
          sub_1A946F20C(v34);
          v10 = v9 == v29.i64[0] && *(&v24 + 1) == v29.i64[1];
          return v10 & 1;
        }

        goto LABEL_65;
      }

      if (v28 == 9)
      {
        if (v33 == 9)
        {
          sub_1A946F20C(v34);
          v10 = 0;
          if (__PAIR128__(*(&v24 + 1), v9) == *&v29)
          {
            v10 = v25 == v30.i64[0] && *(&v25 + 1) == v30.i64[1];
          }

          return v10 & 1;
        }

        goto LABEL_65;
      }

      v17 = v25 | *(&v24 + 1) | *(&v25 + 1);
      if (!(v17 | v26 | *(&v26 + 1) | v27 | v9 | *(&v27 + 1)))
      {
        if (v33 == 10)
        {
          v19 = vorrq_s8(vorrq_s8(v29, v31), vorrq_s8(v30, v32));
          if (!*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))
          {
            goto LABEL_62;
          }
        }

        goto LABEL_65;
      }

      v18 = v17 | v26 | *(&v26 + 1) | v27 | *(&v27 + 1);
      if (v9 != 1 || v18)
      {
        if (v9 != 2 || v18)
        {
          if (v9 != 3 || v18)
          {
            if (v9 != 4 || v18)
            {
              if (v9 != 5 || v18)
              {
                if (v9 != 6 || v18)
                {
                  if (v33 != 10 || v29.i64[0] != 7)
                  {
                    goto LABEL_65;
                  }
                }

                else if (v33 != 10 || v29.i64[0] != 6)
                {
                  goto LABEL_65;
                }
              }

              else if (v33 != 10 || v29.i64[0] != 5)
              {
                goto LABEL_65;
              }
            }

            else if (v33 != 10 || v29.i64[0] != 4)
            {
              goto LABEL_65;
            }
          }

          else if (v33 != 10 || v29.i64[0] != 3)
          {
            goto LABEL_65;
          }
        }

        else if (v33 != 10 || v29.i64[0] != 2)
        {
          goto LABEL_65;
        }
      }

      else if (v33 != 10 || v29.i64[0] != 1)
      {
        goto LABEL_65;
      }

      v21 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v30.i64[1] | v30.i64[0] | v29.i64[1]))
      {
        goto LABEL_62;
      }

      goto LABEL_65;
    }

    if (v28 != 5)
    {
      if (v28 != 6)
      {
        if (v33 == 7)
        {
          sub_1A946F20C(v34);
          v10 = v24 ^ v29.i8[0] ^ 1;
          return v10 & 1;
        }

        goto LABEL_65;
      }

      if (v33 == 6)
      {
LABEL_55:
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29)
        {
          goto LABEL_86;
        }

        goto LABEL_61;
      }

      goto LABEL_64;
    }

    if (v33 == 5)
    {
      v12 = v30.i64[1];
      if (__PAIR128__(*(&v24 + 1), v9) == *&v29 || (sub_1A957D3E8() & 1) != 0)
      {
        if (!*(&v25 + 1))
        {
          sub_1A946330C(&v29, v23);
          sub_1A946330C(&v24, v23);

          sub_1A946F20C(v34);
          if (v12)
          {

            goto LABEL_67;
          }

          goto LABEL_94;
        }

        if (v30.i64[1])
        {
          if (v25 != *&v30)
          {
            v13 = sub_1A957D3E8();
            sub_1A946330C(&v29, v23);
            sub_1A946330C(&v24, v23);
            sub_1A946F20C(v34);
            if ((v13 & 1) == 0)
            {
LABEL_67:
              v10 = 0;
              return v10 & 1;
            }

LABEL_94:
            v10 = 1;
            return v10 & 1;
          }

LABEL_61:
          sub_1A946330C(&v29, v23);
          sub_1A946330C(&v24, v23);
LABEL_62:
          sub_1A946F20C(v34);
          v10 = 1;
          return v10 & 1;
        }
      }

LABEL_77:
      sub_1A946330C(&v29, v23);
      v15 = &v24;
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  if (v28 > 1u)
  {
    if (v28 == 2)
    {
      if (v33 == 2)
      {
        *&v22 = v32.i64[1];
        *(&v22 + 1) = v32.i64[0];
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0 || v25 != *&v30 && (sub_1A957D3E8() & 1) == 0 || v26 != *&v31)
        {
          goto LABEL_77;
        }

        if (__PAIR128__(v27, *(&v27 + 1)) == v22)
        {
          goto LABEL_61;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (v28 != 3)
      {
        if (v33 == 4)
        {
          goto LABEL_55;
        }

        goto LABEL_64;
      }

      if (v33 == 3)
      {
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0 || v25 != *&v30 && (sub_1A957D3E8() & 1) == 0)
        {
          goto LABEL_77;
        }

        if (v26 == *&v31)
        {
          goto LABEL_61;
        }

        goto LABEL_86;
      }
    }

LABEL_63:

LABEL_64:

LABEL_65:
    v15 = &v29;
LABEL_66:
    sub_1A946330C(v15, v23);
    sub_1A946F20C(v34);
    goto LABEL_67;
  }

  if (!v28)
  {
    if (!v33)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

  if (v33 != 1)
  {
    goto LABEL_63;
  }

  if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0)
  {
    goto LABEL_77;
  }

  if (v25 == *&v30)
  {
    goto LABEL_61;
  }

LABEL_86:
  v20 = sub_1A957D3E8();
  sub_1A946330C(&v29, v23);
  sub_1A946330C(&v24, v23);
  sub_1A946F20C(v34);
  return v20 & 1;
}

unint64_t sub_1A946BE84()
{
  result = qword_1EB39A4F0;
  if (!qword_1EB39A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A4F0);
  }

  return result;
}

unint64_t sub_1A946BED8()
{
  result = qword_1EB39A4F8;
  if (!qword_1EB39A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A4F8);
  }

  return result;
}

unint64_t sub_1A946BF2C()
{
  result = qword_1EB39A500;
  if (!qword_1EB39A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A500);
  }

  return result;
}

unint64_t sub_1A946BF80()
{
  result = qword_1EB39A508;
  if (!qword_1EB39A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A508);
  }

  return result;
}

unint64_t sub_1A946BFD4()
{
  result = qword_1EB39A510;
  if (!qword_1EB39A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A510);
  }

  return result;
}

unint64_t sub_1A946C028()
{
  result = qword_1EB39A518;
  if (!qword_1EB39A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A518);
  }

  return result;
}

unint64_t sub_1A946C07C()
{
  result = qword_1EB39A520;
  if (!qword_1EB39A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A520);
  }

  return result;
}

unint64_t sub_1A946C0D0()
{
  result = qword_1EB39A528;
  if (!qword_1EB39A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A528);
  }

  return result;
}

unint64_t sub_1A946C124()
{
  result = qword_1EB39A530;
  if (!qword_1EB39A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A530);
  }

  return result;
}

unint64_t sub_1A946C178()
{
  result = qword_1EB39A538;
  if (!qword_1EB39A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A538);
  }

  return result;
}

unint64_t sub_1A946C1CC()
{
  result = qword_1EB39A540;
  if (!qword_1EB39A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A540);
  }

  return result;
}

unint64_t sub_1A946C220()
{
  result = qword_1EB39A548;
  if (!qword_1EB39A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A548);
  }

  return result;
}

unint64_t sub_1A946C274()
{
  result = qword_1EB39A550;
  if (!qword_1EB39A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A550);
  }

  return result;
}

unint64_t sub_1A946C2C8()
{
  result = qword_1EB39A558;
  if (!qword_1EB39A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A558);
  }

  return result;
}

unint64_t sub_1A946C31C()
{
  result = qword_1EB39A560;
  if (!qword_1EB39A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A560);
  }

  return result;
}

unint64_t sub_1A946C370()
{
  result = qword_1EB39A568;
  if (!qword_1EB39A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A568);
  }

  return result;
}

unint64_t sub_1A946C3C4()
{
  result = qword_1EB39A570;
  if (!qword_1EB39A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A570);
  }

  return result;
}

unint64_t sub_1A946C418()
{
  result = qword_1EB39A578;
  if (!qword_1EB39A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A578);
  }

  return result;
}

unint64_t sub_1A946C46C()
{
  result = qword_1EB39A580;
  if (!qword_1EB39A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A580);
  }

  return result;
}

uint64_t type metadata accessor for TTSLoggedSpeechEvent()
{
  result = qword_1EB39A990;
  if (!qword_1EB39A990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A946C53C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696F506B63656863 && a2 == 0xEA0000000000746ELL || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756575716E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C34C0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72776552656C7572 && a2 == 0xEB00000000657469 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776552726568746FLL && a2 == 0xEC00000065746972 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C537472617473 && a2 == 0xEA00000000006563 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7245686365657073 && a2 == 0xEB00000000726F72 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A95C34E0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C3500 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xED00007472617453 || (sub_1A957D3E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xEC000000706F7453 || (sub_1A957D3E8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x655272656B72616DLL && a2 == 0xEE00646576656963 || (sub_1A957D3E8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C3520 == a2)
  {

    return 17;
  }

  else
  {
    v5 = sub_1A957D3E8();

    if (v5)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1A946CAEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7956599 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A946CBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s12TextToSpeech09TTSLoggedC5EventV2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v4 = *a1 == a2->i64[0] && *(a1 + 8) == a2->i64[1];
  if (v4 || (v5 = sub_1A957D3E8(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v37 = *(a1 + 48);
    v38 = v8;
    v39 = *(a1 + 80);
    v9 = *(a1 + 32);
    v36[0] = *(a1 + 16);
    v36[1] = v9;
    v10 = *(a1 + 64);
    v33 = v37;
    v34 = v10;
    v35 = *(a1 + 80);
    v31 = v36[0];
    v32 = v7;
    v11 = a2[1];
    v12 = a2[2];
    v41 = a2[5].i8[0];
    v13 = a2[4];
    v40[2] = a2[3];
    v40[3] = v13;
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[1];
    v40[0] = v11;
    v40[1] = v14;
    v17 = a2[4];
    v28 = v15;
    v29 = v17;
    v30 = a2[5].i8[0];
    v26 = v16;
    v27 = v12;
    sub_1A946330C(v36, v25);
    sub_1A946330C(v40, v25);
    v18 = _s12TextToSpeech14TTSSpeechEventO2eeoiySbAC_ACtFZ_0(&v31, &v26);
    v42[2] = v28;
    v42[3] = v29;
    v43 = v30;
    v42[0] = v26;
    v42[1] = v27;
    sub_1A946C4C0(v42);
    v44[2] = v33;
    v44[3] = v34;
    v45 = v35;
    v44[0] = v31;
    v44[1] = v32;
    sub_1A946C4C0(v44);
    result = 0;
    if (v18)
    {
      v19 = type metadata accessor for TTSLoggedSpeechEvent();
      v20 = v19[6];
      if ((sub_1A957B058() & 1) != 0 && *(a1 + v19[7]) == *(a2->i32 + v19[7]))
      {
        v21 = v19[8];
        v22 = *(a1 + v21);
        v23 = *(a1 + v21 + 8);
        v24 = (a2->i64 + v21);
        if (v22 == *v24 && v23 == v24[1])
        {
          return 1;
        }

        if (sub_1A957D3E8())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1A946CF18()
{
  result = qword_1EB39A588[0];
  if (!qword_1EB39A588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39A588);
  }

  return result;
}

unint64_t sub_1A946CF6C()
{
  result = qword_1EB387918;
  if (!qword_1EB387918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387918);
  }

  return result;
}

unint64_t sub_1A946CFC0()
{
  result = qword_1EB387930;
  if (!qword_1EB387930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387930);
  }

  return result;
}

uint64_t sub_1A946D014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSLoggedSpeechEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A946D078(uint64_t a1)
{
  v2 = type metadata accessor for TTSLoggedSpeechEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A946D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a2;
  if (a9 > 2u)
  {
    if (a9 > 4u)
    {
      if (a9 != 5)
      {
        if (a9 != 6)
        {
          return result;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (a9 != 3)
    {
      if (a9 != 4)
      {
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a9)
  {
    if (a9 == 1)
    {
LABEL_14:

      goto LABEL_15;
    }

    if (a9 != 2)
    {
      return result;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_1A946D1A4()
{
  v1 = *(sub_1A957B078() - 8);
  v2 = (*(v1 + 80) + 97) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1A946A62C(v4, v5, v0 + 32, v0 + v2, v3);
}

uint64_t sub_1A946D238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A946D250(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A946D2CC()
{
  result = qword_1EB387980;
  if (!qword_1EB387980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387980);
  }

  return result;
}

uint64_t sub_1A946D368(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 9)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 sub_1A946D384(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A946D3A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A946D3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A946D448(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_1A946D4AC()
{
  result = sub_1A957B078();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of TTSSpeechTracer.emit(event:forIdentifier:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

uint64_t getEnumTagSinglePayload for TTSSpeechEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSpeechEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A946D8A8()
{
  result = qword_1EB39AAA0[0];
  if (!qword_1EB39AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39AAA0);
  }

  return result;
}

unint64_t sub_1A946D900()
{
  result = qword_1EB39ACB0[0];
  if (!qword_1EB39ACB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39ACB0);
  }

  return result;
}

unint64_t sub_1A946D958()
{
  result = qword_1EB39B2C0[0];
  if (!qword_1EB39B2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B2C0);
  }

  return result;
}

unint64_t sub_1A946D9B0()
{
  result = qword_1EB39B7D0[0];
  if (!qword_1EB39B7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B7D0);
  }

  return result;
}

unint64_t sub_1A946DA08()
{
  result = qword_1EB39B9E0[0];
  if (!qword_1EB39B9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B9E0);
  }

  return result;
}

unint64_t sub_1A946DA60()
{
  result = qword_1EB39BBF0[0];
  if (!qword_1EB39BBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39BBF0);
  }

  return result;
}

unint64_t sub_1A946DAB8()
{
  result = qword_1EB39BE00[0];
  if (!qword_1EB39BE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39BE00);
  }

  return result;
}

unint64_t sub_1A946DB10()
{
  result = qword_1EB39C010[0];
  if (!qword_1EB39C010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C010);
  }

  return result;
}

unint64_t sub_1A946DB68()
{
  result = qword_1EB39C220[0];
  if (!qword_1EB39C220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C220);
  }

  return result;
}

unint64_t sub_1A946DBC0()
{
  result = qword_1EB39C530[0];
  if (!qword_1EB39C530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C530);
  }

  return result;
}

unint64_t sub_1A946DC18()
{
  result = qword_1EB39C740[0];
  if (!qword_1EB39C740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C740);
  }

  return result;
}

unint64_t sub_1A946DC70()
{
  result = qword_1EB39C950[0];
  if (!qword_1EB39C950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C950);
  }

  return result;
}

unint64_t sub_1A946DCC8()
{
  result = qword_1EB39CA60;
  if (!qword_1EB39CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CA60);
  }

  return result;
}

unint64_t sub_1A946DD20()
{
  result = qword_1EB39CA68[0];
  if (!qword_1EB39CA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CA68);
  }

  return result;
}

unint64_t sub_1A946DD78()
{
  result = qword_1EB39CAF0;
  if (!qword_1EB39CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CAF0);
  }

  return result;
}

unint64_t sub_1A946DDD0()
{
  result = qword_1EB39CAF8[0];
  if (!qword_1EB39CAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CAF8);
  }

  return result;
}

unint64_t sub_1A946DE28()
{
  result = qword_1EB39CB80;
  if (!qword_1EB39CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CB80);
  }

  return result;
}

unint64_t sub_1A946DE80()
{
  result = qword_1EB39CB88[0];
  if (!qword_1EB39CB88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CB88);
  }

  return result;
}

unint64_t sub_1A946DED8()
{
  result = qword_1EB39CC10;
  if (!qword_1EB39CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CC10);
  }

  return result;
}

unint64_t sub_1A946DF30()
{
  result = qword_1EB39CC18[0];
  if (!qword_1EB39CC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CC18);
  }

  return result;
}

unint64_t sub_1A946DF88()
{
  result = qword_1EB39CCA0;
  if (!qword_1EB39CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CCA0);
  }

  return result;
}

unint64_t sub_1A946DFE0()
{
  result = qword_1EB39CCA8[0];
  if (!qword_1EB39CCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CCA8);
  }

  return result;
}

unint64_t sub_1A946E038()
{
  result = qword_1EB39CD30;
  if (!qword_1EB39CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CD30);
  }

  return result;
}

unint64_t sub_1A946E090()
{
  result = qword_1EB39CD38[0];
  if (!qword_1EB39CD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CD38);
  }

  return result;
}

unint64_t sub_1A946E0E8()
{
  result = qword_1EB39CDC0;
  if (!qword_1EB39CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CDC0);
  }

  return result;
}

unint64_t sub_1A946E140()
{
  result = qword_1EB39CDC8[0];
  if (!qword_1EB39CDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CDC8);
  }

  return result;
}

unint64_t sub_1A946E198()
{
  result = qword_1EB39CE50;
  if (!qword_1EB39CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CE50);
  }

  return result;
}

unint64_t sub_1A946E1F0()
{
  result = qword_1EB39CE58[0];
  if (!qword_1EB39CE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CE58);
  }

  return result;
}

unint64_t sub_1A946E248()
{
  result = qword_1EB39CEE0;
  if (!qword_1EB39CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CEE0);
  }

  return result;
}

unint64_t sub_1A946E2A0()
{
  result = qword_1EB39CEE8[0];
  if (!qword_1EB39CEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39CEE8);
  }

  return result;
}

unint64_t sub_1A946E2F8()
{
  result = qword_1EB39CF70;
  if (!qword_1EB39CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CF70);
  }

  return result;
}

unint64_t sub_1A946E350()
{
  result = qword_1EB39CF78;
  if (!qword_1EB39CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39CF78);
  }

  return result;
}

unint64_t sub_1A946E3A8()
{
  result = qword_1EB39D000;
  if (!qword_1EB39D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D000);
  }

  return result;
}

unint64_t sub_1A946E400()
{
  result = qword_1EB39D008[0];
  if (!qword_1EB39D008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D008);
  }

  return result;
}

unint64_t sub_1A946E458()
{
  result = qword_1EB39D090;
  if (!qword_1EB39D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D090);
  }

  return result;
}

unint64_t sub_1A946E4B0()
{
  result = qword_1EB39D098[0];
  if (!qword_1EB39D098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D098);
  }

  return result;
}

unint64_t sub_1A946E508()
{
  result = qword_1EB39D120;
  if (!qword_1EB39D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D120);
  }

  return result;
}

unint64_t sub_1A946E560()
{
  result = qword_1EB39D128[0];
  if (!qword_1EB39D128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D128);
  }

  return result;
}

unint64_t sub_1A946E5B8()
{
  result = qword_1EB39D1B0;
  if (!qword_1EB39D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D1B0);
  }

  return result;
}

unint64_t sub_1A946E610()
{
  result = qword_1EB39D1B8[0];
  if (!qword_1EB39D1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D1B8);
  }

  return result;
}

unint64_t sub_1A946E668()
{
  result = qword_1EB39D240;
  if (!qword_1EB39D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D240);
  }

  return result;
}

unint64_t sub_1A946E6C0()
{
  result = qword_1EB39D248[0];
  if (!qword_1EB39D248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D248);
  }

  return result;
}

unint64_t sub_1A946E718()
{
  result = qword_1EB39D2D0;
  if (!qword_1EB39D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D2D0);
  }

  return result;
}

unint64_t sub_1A946E770()
{
  result = qword_1EB39D2D8[0];
  if (!qword_1EB39D2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D2D8);
  }

  return result;
}

unint64_t sub_1A946E7C8()
{
  result = qword_1EB39D360;
  if (!qword_1EB39D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D360);
  }

  return result;
}

unint64_t sub_1A946E820()
{
  result = qword_1EB39D368[0];
  if (!qword_1EB39D368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D368);
  }

  return result;
}

unint64_t sub_1A946E878()
{
  result = qword_1EB39D3F0;
  if (!qword_1EB39D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D3F0);
  }

  return result;
}

unint64_t sub_1A946E8D0()
{
  result = qword_1EB39D3F8[0];
  if (!qword_1EB39D3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D3F8);
  }

  return result;
}

unint64_t sub_1A946E928()
{
  result = qword_1EB39D480;
  if (!qword_1EB39D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D480);
  }

  return result;
}

unint64_t sub_1A946E980()
{
  result = qword_1EB39D488[0];
  if (!qword_1EB39D488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D488);
  }

  return result;
}

unint64_t sub_1A946E9D8()
{
  result = qword_1EB39D510;
  if (!qword_1EB39D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39D510);
  }

  return result;
}

unint64_t sub_1A946EA30()
{
  result = qword_1EB39D518[0];
  if (!qword_1EB39D518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39D518);
  }

  return result;
}

uint64_t sub_1A946EA84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A946EC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSLoggedSpeechEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A946ECA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A946ECF0()
{
  v0 = sub_1A957BF18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957BF48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB39A4C8;
  result = TTSIsInternalBuild();
  if (result)
  {
    v20 = v1;
    v21 = v6;
    v14 = *&v12[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_operationQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    aBlock[4] = sub_1A946F204;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A93C80E8;
    aBlock[3] = &unk_1F1CF6CF0;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    v18 = v12;
    sub_1A957BF28();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1A946ECA8(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
    sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
    sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
    sub_1A957CE08();
    MEMORY[0x1AC5859B0](0, v11, v5, v16);
    _Block_release(v16);

    (*(v20 + 8))(v5, v0);
    (*(v7 + 8))(v11, v21);
  }

  return result;
}

unint64_t sub_1A946EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TTSLoggedSpeechEvent();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A946F144(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A946B5E8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1A946EFFC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A946F20C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3879A8, &qword_1A9590FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTSMarkup.SpeechDocument.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.SpeechDocument.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(v3);
}

{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.SpeechDocument.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v25, 0, v25, &v22);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v15 = a1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1A93D1250(&v17);

      if (v18)
      {
        sub_1A932D070(&v17, &v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = v13 + 1;
        sub_1A932D070(&v19, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A937B960(&v17, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v20 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v21 = &protocol witness table for <A> [A];

  *&v19 = v8;
  sub_1A93A38D8(&v19, v23);
  sub_1A93A3948(&v22, a2);
  return sub_1A9377B5C(&v22);
}

uint64_t TTSMarkup.SpeechDocument.init(_:)@<X0>(void (*a1)(void *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = SpeechContext.init<each A>(_:)(v7, 0, v7, a2);
  *(v3 + 8) = 0u;
  v3 += 8;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0u;
  a1(v6, v4);
  return sub_1A93A38D8(v6, v3);
}

void TTSMarkup.SpeechDocument.init(ssml:)(uint64_t a1@<X8>)
{
  SpeechContext.init<each A>(_:)(v18, 0, v18, a1);
  type metadata accessor for SSMLParser();
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v3 = static SSMLParser.parseRootElement(ssml:)();
  if (v1)
  {
    sub_1A9377B5C(a1);

    return;
  }

  v4 = v3;

  sub_1A93D1250(v10);
  if (v11)
  {
    sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
    if (swift_dynamicCast())
    {
      if (v12)
      {
        sub_1A9377B5C(a1);

        v6 = v13;
        v5 = v14;
        v16 = v13;
        v17 = v14;
        v15 = v12;
        *a1 = v12;
        *(a1 + 16) = v6;
        *(a1 + 32) = v5;
        return;
      }
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1A937B960(v10, &qword_1EB3868E8, &unk_1A958F280);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  sub_1A937B960(&v12, &qword_1EB386A48, &qword_1A9587E80);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v15 = 0xD000000000000026;
  *(&v15 + 1) = 0x80000001A95C3120;
  LOBYTE(v12) = 0;
  v7 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v7);

  v8 = v15;
  sub_1A938189C();
  swift_allocError();
  *v9 = v8;
  swift_willThrow();

  sub_1A9377B5C(a1);
}

Swift::String __swiftcall TTSMarkup.SpeechDocument.asSwiftSpeech()()
{
  type metadata accessor for StringStream();
  v0 = StringStream.__allocating_init()();
  v1 = (*(*v0 + 88))(v0);
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String __swiftcall TTSMarkup.SpeechDocument.asPlainTalk(normalSpeakingRate:minSpeakingRate:maxSpeakingRate:defaultVoiceMidiPitch:)(Swift::Float normalSpeakingRate, Swift::Float minSpeakingRate, Swift::Float maxSpeakingRate, Swift::Float defaultVoiceMidiPitch)
{
  static MacinTalkMarkup.writer(minSpeakingRate:normalSpeakingRate:maxSpeakingRate:)(v12, LODWORD(minSpeakingRate), LODWORD(normalSpeakingRate), maxSpeakingRate);
  v10[3] = &type metadata for TTSMarkup.SpeechDocument;
  v10[4] = &protocol witness table for TTSMarkup.SpeechDocument;
  v10[0] = swift_allocObject();
  sub_1A93A3948(v4, v10[0] + 16);
  ImperativeMarkupWriter.process(markup:)(v10, v11);
  sub_1A945B4E0(v12);
  sub_1A9378138(v10);
  v5 = v11[2];
  v6 = v11[3];

  v7 = v5;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1A946FA94()
{
  v0 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  sub_1A9377618(v0, qword_1EB39D5A8);
  sub_1A937731C(v0, qword_1EB39D5A8);
  sub_1A937829C(&qword_1EB3879B8, &unk_1A9591070);
  return sub_1A957BAA8();
}

uint64_t static TTSMarkup.SpeechDocument.vocalizerEndingMarkupRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB39D5A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  v3 = sub_1A937731C(v2, qword_1EB39D5A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TTSMarkup.SpeechDocument.vocalizerEndingMarkupRegex.setter(uint64_t a1)
{
  if (qword_1EB39D5A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  v3 = sub_1A937731C(v2, qword_1EB39D5A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TTSMarkup.SpeechDocument.vocalizerEndingMarkupRegex.modify())()
{
  if (qword_1EB39D5A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  sub_1A937731C(v0, qword_1EB39D5A8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A946FD90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB39D5A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  v3 = sub_1A937731C(v2, qword_1EB39D5A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A946FE5C(uint64_t a1)
{
  if (qword_1EB39D5A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A937829C(&qword_1EB3879B0, &qword_1A9590FD8);
  v3 = sub_1A937731C(v2, qword_1EB39D5A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

Swift::String __swiftcall TTSMarkup.SpeechDocument.asVocalizerMarkup(normalVoiceMidi:defaultRate:defaultPitch:defaultVolume:language:)(Swift::Float normalVoiceMidi, Swift::Int defaultRate, Swift::Int defaultPitch, Swift::Int defaultVolume, Swift::String language)
{
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v6 = *(sub_1A957B308() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9587160;

  sub_1A957B108();
  sub_1A937BA74(v17);
  LOBYTE(v18[0]) = v17[0];
  v10 = sub_1A93ADEC0();
  static VocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)(v9, v18, v10, v11, v19);

  v17[3] = &type metadata for TTSMarkup.SpeechDocument;
  v17[4] = &protocol witness table for TTSMarkup.SpeechDocument;
  v17[0] = swift_allocObject();
  sub_1A93A3948(v5, v17[0] + 16);
  ImperativeMarkupWriter.process(markup:)(v17, v18);
  sub_1A945B4E0(v19);
  sub_1A9378138(v17);
  v12 = v18[2];
  v13 = v18[3];

  v14 = v12;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String __swiftcall TTSMarkup.SpeechDocument.asVocalizerMarkup(normalVoiceMidi:defaultRate:defaultPitch:defaultVolume:language:languageMarkupStyle:)(Swift::Float normalVoiceMidi, Swift::Int defaultRate, Swift::Int defaultPitch, Swift::Int defaultVolume, Swift::String language, TextToSpeech::VocalizerLanguageMarkupStyle languageMarkupStyle)
{
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v7 = *(sub_1A957B308() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A9587160;

  sub_1A957B108();
  sub_1A937BA74(v18);
  LOBYTE(v19[0]) = v18[0];
  v11 = sub_1A93ADEC0();
  static VocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)(v10, v19, v11, v12, v20);

  v18[3] = &type metadata for TTSMarkup.SpeechDocument;
  v18[4] = &protocol witness table for TTSMarkup.SpeechDocument;
  v18[0] = swift_allocObject();
  sub_1A93A3948(v6, v18[0] + 16);
  ImperativeMarkupWriter.process(markup:)(v18, v19);
  sub_1A945B4E0(v20);
  sub_1A9378138(v18);
  v13 = v19[2];
  v14 = v19[3];

  v15 = v13;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_1A9470280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.SpeechDocument.accept<A>(_:)(a1, a2, a3);
}

void sub_1A9470340()
{
  v0 = sub_1A957AFD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957AD98();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1A957AD88();
  type metadata accessor for TTSPronunciationUtils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1A957C0C8();
  v12 = sub_1A957C0C8();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1A957AF98();

    sub_1A957AFA8();
    (*(v1 + 8))(v5, v0);
    v14 = objc_allocWithZone(TTSStreamingZipReader);
    v15 = sub_1A957C0C8();

    v16 = sub_1A957C0C8();
    [v14 initWithPath:v15 andPassword:v16];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A9470564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a8;
  v57 = a7;
  v54 = a4;
  v55 = a3;
  v12 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v52 - v19;
  sub_1A957AFB8();
  v21 = sub_1A957AFD8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    return sub_1A937B960(v20, &unk_1EB387B80, qword_1A9587740);
  }

  v58 = a5;
  v59 = a6;
  v25 = sub_1A957AF28();
  v26 = *(v22 + 8);
  v26(v20, v21);
  if (!v25[2])
  {
  }

  v27 = v25[5];
  v53 = v25[4];

  sub_1A957AFB8();
  if (v23(v17, 1, v21) == 1)
  {

    return sub_1A937B960(v17, &unk_1EB387B80, qword_1A9587740);
  }

  v28 = v27;
  v29 = sub_1A957AF28();
  v26(v17, v21);
  v30 = *(v29 + 16);
  if (!v30)
  {
  }

  v31 = (v29 + 16 + 16 * v30);
  v33 = *v31;
  v32 = v31[1];

  if (v53 == v58 && v28 == v59)
  {
  }

  else
  {
    v35 = sub_1A957D3E8();

    if ((v35 & 1) == 0)
    {
    }
  }

  if (v33 == 0x6C75722E69726973 && v32 == 0xEB00000000626465)
  {
  }

  else
  {
    v37 = sub_1A957D3E8();

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  v62 = v55(result);
  v63 = v38;
  v39 = (*(*v56 + 104))(&v62, a9, a10);
  v40 = v57;
  swift_beginAccess();
  v41 = *(v40 + 16);
  *(v40 + 16) = v39;

  if (v39)
  {
    if (v39 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
    {

      if (!i)
      {
        break;
      }

      v43 = 0;
      v57 = v39 & 0xC000000000000001;
      while (1)
      {
        if (v57)
        {
          v44 = MEMORY[0x1AC585DE0](v43, v39);
        }

        else
        {
          if (v43 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v44 = *(v39 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v60 = 0x5F69726973;
        v61 = 0xE500000000000000;
        MEMORY[0x1AC585140](v58, v59);
        MEMORY[0x1AC585140](95, 0xE100000000000000);
        v47 = [v45 identifier];
        v48 = sub_1A957C0F8();
        v50 = v49;

        MEMORY[0x1AC585140](v48, v50);

        v51 = sub_1A957C0C8();

        [v45 setIdentifier_];

        ++v43;
        if (v46 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_35:
  }

  return sub_1A9442638(v62, v63);
}

uint64_t sub_1A9470A24(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1A957C0F8();
  v8 = v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v5(v6, v8, sub_1A9471540, v10);
}

uint64_t sub_1A9470AE4(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_1A957AFF8();

  return v2;
}

uint64_t sub_1A9470B38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = v8;
  v14[4] = sub_1A9471508;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A9470A24;
  v14[3] = &unk_1F1CED798;
  v10 = _Block_copy(v14);

  v11 = a4;

  [v11 enumerateFiles_];
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v8 + 16);

  return v12;
}

uint64_t sub_1A9470CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a3;
  v53 = a7;
  v51 = a4;
  v9 = sub_1A937829C(&qword_1EB3879C0, &unk_1A95910E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for PronunciationRuleSet();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v50 = &v47 - v20;
  v21 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v47 - v24;
  sub_1A957AFB8();
  v26 = sub_1A957AFD8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return sub_1A937B960(v25, &unk_1EB387B80, qword_1A9587740);
  }

  v48 = a8;
  v29 = sub_1A957AF28();
  (*(v27 + 8))(v25, v26);
  if (!v29[2])
  {
  }

  v31 = v29[4];
  v30 = v29[5];

  sub_1A957C1A8();
  sub_1A957C1A8();
  v32 = sub_1A957C348();

  if (v32)
  {

    v33 = v48;
  }

  else
  {
    v34 = v31 == 42 && v30 == 0xE100000000000000;
    v33 = v48;
    if (v34)
    {
    }

    else
    {
      v35 = sub_1A957D3E8();

      if ((v35 & 1) == 0)
      {
        return result;
      }
    }
  }

  result = sub_1A957C358();
  if (result)
  {
    v36 = v52();
    v38 = v37;
    sub_1A9471548();
    sub_1A957AD78();
    v39 = v54;
    (*(v54 + 56))(v13, 0, 1, v14);
    v40 = v13;
    v41 = v50;
    sub_1A93B5FF0(v40, v50);
    if (*(v41 + *(v14 + 44)) == 1)
    {
      v42 = v49;
      sub_1A93B59D0(v41, v49);
      swift_beginAccess();
      v43 = *(v33 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 16) = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_1A94711AC(0, v43[2] + 1, 1, v43);
        *(v33 + 16) = v43;
      }

      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        v43 = sub_1A94711AC(v45 > 1, v46 + 1, 1, v43);
      }

      v43[2] = v46 + 1;
      sub_1A93B5FF0(v42, v43 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v46);
      *(v48 + 16) = v43;
      swift_endAccess();
      sub_1A9442638(v36, v38);
      return sub_1A93B5F94(v41);
    }

    else
    {
      sub_1A93B5F94(v41);
      return sub_1A9442638(v36, v38);
    }
  }

  return result;
}

size_t sub_1A94711AC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386BD0, &qword_1A9588998);
  v10 = *(type metadata accessor for PronunciationRuleSet() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PronunciationRuleSet() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A9471384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for TTSSQLiteReader();
  v10 = sub_1A94B7D68();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  v12[5] = v10;
  v12[6] = a3;
  v12[7] = a4;
  v16[4] = sub_1A94715A0;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A9470A24;
  v16[3] = &unk_1F1CED608;
  v13 = _Block_copy(v16);

  [a5 enumerateFiles_];

  _Block_release(v13);
  swift_beginAccess();
  v14 = *(v11 + 16);

  return v14;
}

uint64_t sub_1A9471518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A9471548()
{
  result = qword_1EB3879C8;
  if (!qword_1EB3879C8)
  {
    type metadata accessor for PronunciationRuleSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3879C8);
  }

  return result;
}

uint64_t SpeechContext.init<each A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v37 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    v4 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v29 = a4;
    v30 = result;
    v31 = a2;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = *v4;
      v34 = v4 + 1;
      v35 = v7;
      v9 = *v5++;
      v8 = v9;
      sub_1A957D038();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v36 = &v28;
      v11 = *(TupleTypeMetadata2 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v13);
      v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *(v11 + 16);
      v16 = v15(v14, v8, TupleTypeMetadata2);
      v32 = &v28;
      v17 = *v14;
      v33 = *(TupleTypeMetadata2 + 48);
      MEMORY[0x1EEE9AC00](v16, v18);
      v15(v14, v8, TupleTypeMetadata2);
      v19 = *v14;

      v20 = *(TupleTypeMetadata2 + 48);
      swift_setAtWritableKeyPath();

      (*(*(v35 - 8) + 8))(&v14[v33]);
      v4 = v34;
      --v6;
    }

    while (v6);
    *v29 = v37;
    v21 = v28 - 8;
    v22 = v31;
    v23 = v30 - 8;
    do
    {
      v24 = v22 - 1;
      v25 = *(v21 + 8 * v22);
      v26 = *(v23 + 8 * v22);
      sub_1A957D038();
      v27 = swift_getTupleTypeMetadata2();
      result = (*(*(v27 - 8) + 8))(v26, v27);
      v22 = v24;
    }

    while (v24);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t SpeechContext.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A957CC58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v23 - v14;
  v16 = *v4;
  if (*(v16 + 16) && (v17 = sub_1A94722D4(a1), (v18 & 1) != 0))
  {
    sub_1A937BA14(*(v16 + 56) + 32 * v17, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  sub_1A937829C(&qword_1EB3869D0, &qword_1A9587A10);
  v19 = swift_dynamicCast();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 56);
  if (v19)
  {
    v21(v15, 0, 1, AssociatedTypeWitness);
    return (*(v20 + 32))(a4, v15, AssociatedTypeWitness);
  }

  else
  {
    v21(v15, 1, 1, AssociatedTypeWitness);
    (*(a3 + 24))(a2, a3);
    result = (*(v20 + 48))(v15, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 8))(v15, v10);
    }
  }

  return result;
}

uint64_t SpeechContext.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1A94729A8(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

_OWORD *sub_1A9471B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1A93981D4(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1A9472700(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1A93929C4(a1);
    v8 = *v2;
    v9 = sub_1A94722D4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1A947282C();
        v14 = v16;
      }

      sub_1A93981D4((*(v14 + 56) + 32 * v11), v17);
      sub_1A9472590(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1A93929C4(v17);
  }

  return result;
}

void (*SpeechContext.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  SpeechContext.subscript.getter(a2, a3, a4, v15);
  return sub_1A9471D5C;
}

void sub_1A9471D5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1A94729A8(v3, v10);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1A94729A8((*a1)[7], v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A9471E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v4, a2, a3);
  swift_getAtKeyPath();
}

uint64_t sub_1A9471F0C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;

  sub_1A9472A48(a1, v7, v5, v6);
}

uint64_t TTSMarkupSpeech.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_1A9472A48(a1, a2, a3, a4);

  v6 = *(*(*(v5 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v6(a1);
}

void (*TTSMarkupSpeech.subscript.modify(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a4;
  v10[4] = v4;
  v10[1] = a2;
  v10[2] = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v10[5] = v12;
  v13 = *(v12 - 8);
  v10[6] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[7] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v14);
    v15 = malloc(v14);
  }

  v11[8] = v15;
  (*(a4 + 24))(a3, a4);
  swift_getAtKeyPath();
  v16 = *v11;

  return sub_1A94721AC;
}

void sub_1A94721AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v9 = *(*a1 + 8);
  v10 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 56), v4, v5);

    sub_1A9472A48(v3, v9, v10, v8);

    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    v12 = *(*a1 + 8);

    sub_1A9472A48(v4, v9, v10, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_1A94722D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1A957D4E8();

  return sub_1A93D8E58(a1, v4);
}

uint64_t sub_1A9472318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3879D0, &qword_1A9591158);
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1A93981D4(v22, v33);
      }

      else
      {
        sub_1A937BA14(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_1A957D4E8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1A93981D4(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A9472590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_1A957D4E8();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1A9472700(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A94722D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1A947282C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1A9472318(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1A94722D4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1A957D438();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_1A9378138(v21);

    return sub_1A93981D4(a1, v21);
  }

  else
  {

    return sub_1A93D8DF0(v9, a2, a1, v20);
  }
}

void *sub_1A947282C()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3879D0, &qword_1A9591158);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A937BA14(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1A93981D4(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_OWORD *sub_1A94729A8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v5 = sub_1A93981E4(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(v5, a1, AssociatedTypeWitness);
  return sub_1A9471B24(v7, a2);
}

uint64_t sub_1A9472A48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*(*(*a2 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v8 + 16))(&v11[-v7]);
  v9 = (*(a4 + 40))(v11, a3, a4);
  swift_setAtWritableKeyPath();
  return v9(v11, 0);
}

uint64_t static EloquenceMarkup.writer(supportedLocales:normalRate:normalPitch:normalVolume:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[3] = &type metadata for EloquenceMarkup;
  v16[4] = &off_1F1CF6FC0;
  v10 = swift_allocObject();
  v16[0] = v10;
  *(v10 + 16) = xmmword_1A9591160;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;

  LOBYTE(a4) = sub_1A93775FC();
  v11 = sub_1A93ADEC0();
  v13 = v12;
  v14 = sub_1A93775FC();
  return sub_1A94A50A4(v16, 0, a1, a4 & 1, v11, v13, v14 & 1, a5);
}

void sub_1A9472D74(double a1)
{
  v1 = a1 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    v2 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v2);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A9472E44(char *a1)
{
  v1 = *a1;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v3 = sub_1A957D3E8();

  if (v3)
  {
    return 0x203273746020;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v5 = sub_1A957D3E8();

  if (v5)
  {
    return 0x203273746020;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
LABEL_8:

    return 0x203273746020;
  }

  v6 = sub_1A957D3E8();

  if (v6)
  {
    return 0x203273746020;
  }

  return 0;
}

uint64_t sub_1A9473040(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = objc_opt_self();
  v6 = sub_1A957C0C8();
  sub_1A957B1A8();
  v7 = sub_1A957C0C8();

  v8 = [v5 eloquencePhonemesFromIPA:v6 language:v7];

  if (v8)
  {
    v9 = sub_1A957C0F8();
    v11 = v10;

    MEMORY[0x1AC585140](v9, v11);

    MEMORY[0x1AC585140](8285, 0xE200000000000000);
    return 5988384;
  }

  else if (v4)
  {
  }

  return v3;
}

void sub_1A9473150(uint64_t a1, float a2)
{
  v2 = 100.0;
  v3 = (a2 + -1.0) * 100.0;
  v4 = a1;
  if (v3 < 0.0)
  {
    v5 = sub_1A94CF2F0(-100.0, 0.0, 40.0, v4, v3);
    if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = -9.2234e18;
    if (v5 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v5 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v6 = sub_1A94CF2F0(0.0, v2, v4, v2, v3);
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

void sub_1A9473234(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = a4;
  v5 = 1.0;
  if (v4 < 1.0)
  {
    v5 = sub_1A94CF2F0(0.0, 1.0, a2, a1, v4);
    if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v5 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v5 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v6 = sub_1A94CF2F0(v5, 4.0, a1, a3, v4);
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

void sub_1A9473300(float a1)
{
  v2 = a1 * *(v1 + 32);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v3);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A94733E8(float a1)
{
  sub_1A9473150(*(v1 + 24), a1);
  v2 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v2);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  return 1651925024;
}

uint64_t sub_1A9473468(float a1)
{
  sub_1A9473234(v1[2], *v1, v1[1], a1);
  v2 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v2);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  return 1937137696;
}

uint64_t TTSMarkup.SpeechText.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

double TTSMarkup.SpeechText.init(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  SpeechContext.init<each A>(_:)(v10, 0, v10, a3);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  TransformableString.init(_:)(v6);
  *(a3 + 8) = v8;
  result = *&v9;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_1A9473844()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A9473874()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  return TransformableString.originalString.getter();
}

uint64_t TTSMarkup.SpeechText.ssml.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  v3 = sub_1A957C0C8();

  v4 = [v3 xmlEscaped];

  v5 = sub_1A957C0F8();
  return v5;
}

uint64_t TTSMarkup.SpeechText.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 16);
  return (*(a3 + 32))(v6);
}

{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.SpeechText.range(rangeInText:inSSML:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = v4[1];
  v11 = v4[2];
  v10 = v4[3];
  v23 = *v4;
  v12 = sub_1A9450BAC();
  if (v13)
  {
    return 0;
  }

  v15 = v12;
  v16 = sub_1A9387E88(a1, a2, v9, v11);
  v18 = v17;

  v19 = TransformableString.translate(_:)(v16, v18);
  v21 = v20;

  result = v19 + v15;
  if (__OFADD__(v19, v15))
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21 + v15;
  if (__OFADD__(v21, v15))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v22 < result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_1A93883DC(result, v22, a3, a4);
}

void TTSMarkup.SpeechText.handle(event:ssml:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v86 = a3;
  v89 = a2;
  v5 = sub_1A957BC88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v90 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v87 = v11;
  v88 = v13;
  v85 = v12;
  v14 = *v3;
  v15 = v3[1];
  v17 = v3[2];
  v16 = v3[3];
  KeyPath = swift_getKeyPath();
  v97.n128_u64[0] = v14;
  v97.n128_u64[1] = v15;
  v98 = v17;
  v99 = v16;
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if ((v96 & 1) == 0)
  {
    v19 = v95;
    v84 = v94;
    v20 = swift_getKeyPath();
    v93.n128_u64[0] = v14;
    v93.n128_u64[1] = v15;
    v94 = v17;
    v95 = v16;
    TTSMarkupSpeech.subscript.getter(v20, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

    v21 = *(v97.n128_u64[0] + 16);

    if (v21)
    {
      v22 = v88;
      if (v88 >> 61 != 1)
      {
        v23 = v87;
        v24 = v90;
        v25 = v85;
        sub_1A9410FB8(v87, v90, v88);
        v26 = v86;
        goto LABEL_7;
      }

      v23 = v87;
      if (v88)
      {
        v24 = v90;
        sub_1A9410FE0(v87, v90, v88);
        v25 = v85;
        v26 = v86;
LABEL_7:
        v93.n128_u64[0] = v14;
        v93.n128_u64[1] = v15;
        v94 = v17;
        v95 = v16;
        v97.n128_u64[0] = v23;
        v97.n128_u64[1] = v24;
        v98 = v22;
        v99 = v25;
        sub_1A9410FB8(v23, v24, v22);
        TTSMarkupSpeech.handleEventTaps(event:ssml:)(&v97, v89, v26, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
        sub_1A9410F60(v23, v24, v22);
        sub_1A9410F60(v97.n128_u64[0], v97.n128_i64[1], v98);
        return;
      }

      if (v87 >> 14 < v84 >> 14)
      {
        sub_1A9410FE0(v87, v90, 0);
        v27 = sub_1A93772F8();
        (*(v6 + 16))(v10, v27, v5);
        v28 = sub_1A957BC68();
        v83 = sub_1A957CA88();
        if (os_log_type_enabled(v28, v83))
        {
          v29 = swift_slowAlloc();
          v81 = v29;
          v82 = swift_slowAlloc();
          v97.n128_u64[0] = v82;
          *v29 = 136315138;
          v91 = v19;
          v92 = v84;
          v93.n128_u64[0] = 0;
          v93.n128_u64[1] = 0xE000000000000000;
          sub_1A957D058();
          v30 = v28;
          v80 = v28;
          MEMORY[0x1AC585140](3943982, 0xE300000000000000);
          sub_1A957D058();
          v31 = sub_1A937A5C0(v93.n128_i64[0], v93.n128_u64[1], &v97);

          v32 = v81;
          *(v81 + 1) = v31;
          v23 = v87;
          _os_log_impl(&dword_1A9324000, v30, v83, "Out of range marker breadcrumb: %s", v32, 0xCu);
          v33 = v82;
          sub_1A9378138(v82);
          MEMORY[0x1AC587CD0](v33, -1, -1);
          MEMORY[0x1AC587CD0](v32, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v10, v5);
        v25 = v85;
        v26 = v86;
        v24 = v90;
        v22 = v88;
        goto LABEL_7;
      }

      v34 = swift_getKeyPath();
      v93.n128_u64[0] = v14;
      v93.n128_u64[1] = v15;
      v94 = v17;
      v95 = v16;
      v35 = v90;
      sub_1A9410FE0(v23, v90, 0);
      TTSMarkupSpeech.subscript.getter(v34, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

      if (v97.n128_u8[8])
      {
        v26 = v86;
        v36 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v36);

        v37 = sub_1A957C0C8();

        v38 = [v37 xmlDeEscaped];

        v39 = sub_1A957C0F8();
        v41 = v40;

        if ((v41 & 0x1000000000000000) != 0)
        {
          v42 = sub_1A957C2B8();
        }

        else
        {

          if ((v41 & 0x2000000000000000) != 0)
          {
            v42 = HIBYTE(v41) & 0xF;
          }

          else
          {
            v42 = v39 & 0xFFFFFFFFFFFFLL;
          }
        }

        v43 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v43);

        v44 = sub_1A957C0C8();

        v45 = [v44 xmlDeEscaped];

        v46 = sub_1A957C0F8();
        v48 = v47;

        if ((v48 & 0x1000000000000000) != 0)
        {
          v49 = sub_1A957C2B8();
        }

        else
        {

          if ((v48 & 0x2000000000000000) != 0)
          {
            v49 = HIBYTE(v48) & 0xF;
          }

          else
          {
            v49 = v46 & 0xFFFFFFFFFFFFLL;
          }
        }

        v35 = v87;
        v60 = v42 + v49;
        if (!__OFADD__(v42, v49))
        {
          v93.n128_u64[0] = v15;
          v93.n128_u64[1] = v17;
          v94 = v16;
          if ((v17 & 0x1000000000000000) != 0)
          {
            v62 = MEMORY[0x1AC5851A0](15, v42, v15, v17);
            v63 = MEMORY[0x1AC5851A0](15, v60, v15, v17);
LABEL_42:
            if (v63 >> 14 >= v62 >> 14)
            {

              v64 = TransformableString.translate(_:)(v62, v63);
              v66 = v65;

LABEL_70:
              v97.n128_u64[0] = v64;
              v97.n128_u64[1] = v66;
              LOBYTE(v98) = 0;
              sub_1A9474C48(&v97, v85, &v93);
              sub_1A9410F60(v35, v90, v88);
              v24 = v93.n128_i64[1];
              v23 = v93.n128_u64[0];
              v25 = v95;
              v22 = v94 | 0x2000000000000000;
              goto LABEL_7;
            }

            goto LABEL_79;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v61 = v15 & 0xFFFFFFFFFFFFLL;
            }

            if (v61 >= v42)
            {
              if ((v60 & 0x8000000000000000) == 0)
              {
                if (v61 < v60)
                {
LABEL_81:
                  __break(1u);
                  goto LABEL_82;
                }

                v62 = (v42 << 16) | 4;
                v63 = (v60 << 16) | 4;
                goto LABEL_42;
              }

              goto LABEL_77;
            }

            goto LABEL_75;
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        __break(1u);
        goto LABEL_54;
      }

      v93.n128_u64[0] = v15;
      v93.n128_u64[1] = v17;
      v94 = v16;

      v50 = sub_1A9381740(&unk_1F1CF7160);
      sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
      v51 = swift_arrayDestroy();
      MEMORY[0x1EEE9AC00](v51, v52);
      *(&v79 - 2) = v50;
      TransformableString.withTransformation<A>(_:)(sub_1A9474934);

      v26 = v86;
      v53 = (v89 >> 59) & 1;
      if ((v86 & 0x1000000000000000) == 0)
      {
        LOBYTE(v53) = 1;
      }

      v54 = v84;
      v55 = v84 & 0xC;
      v56 = 4 << v53;
      if (v55 == 4 << v53)
      {
        v54 = sub_1A938156C(v84, v89, v86);
      }

      v57 = v23;
      if ((v23 & 0xC) == v56)
      {
        v57 = sub_1A938156C(v23, v89, v26);
        if ((v26 & 0x1000000000000000) == 0)
        {
LABEL_28:
          v42 = (v57 >> 16) - (v54 >> 16);
          if (v55 != v56)
          {
            goto LABEL_29;
          }

          goto LABEL_52;
        }
      }

      else if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_28;
      }

      v67 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v67 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v67 < v54 >> 16)
      {
        goto LABEL_85;
      }

      if (v67 < v57 >> 16)
      {
LABEL_86:
        __break(1u);
        return;
      }

      v26 = v86;
      v42 = sub_1A957C2F8();
      v35 = v90;
      if (v55 != v56)
      {
LABEL_29:
        v58 = v35;
        if ((v35 & 0xC) != v56)
        {
          if ((v26 & 0x1000000000000000) != 0)
          {
LABEL_55:
            v68 = HIBYTE(v26) & 0xF;
            if ((v26 & 0x2000000000000000) == 0)
            {
              v68 = v89 & 0xFFFFFFFFFFFFLL;
            }

            if (v68 < v84 >> 16)
            {
              goto LABEL_83;
            }

            if (v68 < v58 >> 16)
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v59 = sub_1A957C2F8();
LABEL_60:
            v70 = v93.n128_u64[1];
            v69 = v93.n128_u64[0];
            if ((v93.n128_u64[1] & 0x1000000000000000) != 0)
            {
              v75 = v59;
              v76 = v42;
              v77 = v93.n128_u64[0];
              v72 = MEMORY[0x1AC5851A0](15, v76, v93.n128_u64[0], v93.n128_u64[1]);
              v78 = MEMORY[0x1AC5851A0](15, v75, v77, v70);
              v69 = v77;
              v73 = v78;
            }

            else
            {
              if ((v42 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              v71 = HIBYTE(v93.n128_u64[1]) & 0xF;
              if ((v93.n128_u64[1] & 0x2000000000000000) == 0)
              {
                v71 = v93.n128_u64[0] & 0xFFFFFFFFFFFFLL;
              }

              if (v71 < v42)
              {
                goto LABEL_76;
              }

              if ((v59 & 0x8000000000000000) != 0)
              {
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

              if (v71 < v59)
              {
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

              v72 = (v42 << 16) | 4;
              v73 = (v59 << 16) | 4;
            }

            if (v73 >> 14 >= v72 >> 14)
            {
              v97.n128_u64[0] = v69;
              v97.n128_u64[1] = v70;
              v98 = v94;

              v64 = TransformableString.translate(_:)(v72, v73);
              v66 = v74;

              v35 = v87;
              goto LABEL_70;
            }

            goto LABEL_80;
          }

LABEL_31:
          v59 = (v58 >> 16) - (v84 >> 16);
          goto LABEL_60;
        }

LABEL_54:
        v58 = sub_1A938156C(v35, v89, v26);
        if ((v26 & 0x1000000000000000) != 0)
        {
          goto LABEL_55;
        }

        goto LABEL_31;
      }

LABEL_52:
      v84 = sub_1A938156C(v84, v89, v26);
      goto LABEL_29;
    }
  }
}

uint64_t sub_1A94745D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  v3 = sub_1A957C0C8();

  v4 = [v3 xmlEscaped];

  v5 = sub_1A957C0F8();
  return v5;
}

uint64_t sub_1A9474658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.SpeechText.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A947470C(uint64_t a1, uint64_t a2, void (*a3)(void, void, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = a5 + 64;
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v22 = v10;
  v23 = v6;
  while (v9)
  {
LABEL_10:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(a5 + 48) + v14);
    v16 = (*(a5 + 56) + v14);
    v18 = *v16;
    v17 = v16[1];
    v25 = *v15;
    v26 = v15[1];
    sub_1A9389700();

    v19 = sub_1A957C968();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 40);
      do
      {
        a3(*(v21 - 1), *v21, v18, v17);
        v21 += 2;
        --v20;
      }

      while (v20);
    }

    v9 &= v9 - 1;

    v10 = v22;
    v6 = v23;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A947489C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A94748E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A9474938()
{
  sub_1A957C578();
  swift_getWitnessTable();
  return sub_1A957C9C8();
}

uint64_t sub_1A94749A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
  sub_1A957C578();
  return sub_1A957C548();
}

void sub_1A9474A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1A957C578();
  swift_getWitnessTable();
  swift_getWitnessTable();

  JUMPOUT(0x1AC5858B0);
}

uint64_t sub_1A9474B0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1A9474938();
}

uint64_t sub_1A9474B3C()
{
  v0._countAndFlagsBits = sub_1A93D18C8();
  Array.printByIndex(delimiter:)(v0);

  sub_1A957D058();
  return 0;
}

uint64_t sub_1A9474BC0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1A9474B3C();
}

uint64_t sub_1A9474BD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CoreSynthesizer.Marker.mark.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1A9410FE0(v2, v3, v4);
}

__n128 sub_1A9474C48@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t sub_1A9474C60@<X0>(id a1@<X2>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v8 = v2[4];
  v7 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  if (v2[3])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [a1 translateRangeInTransformedString_];
  }

  result = sub_1A957CA08();
  if (v5 <= 1)
  {
    if (!v5)
    {
      *a2 = v10;
      a2[1] = v9;
      a2[2] = 4;
      a2[3] = v4;
      goto LABEL_20;
    }

    if (v5 == 1 && (v14 & 1) == 0)
    {
      *a2 = result;
      a2[1] = v13;
      a2[2] = 0;
      a2[3] = v4;
      return result;
    }

LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    *(a2 + 1) = xmmword_1A95913D0;
    return result;
  }

  if (v5 == 2)
  {
    if (v14)
    {
      goto LABEL_18;
    }

    *a2 = result;
    a2[1] = v13;
    v15 = 1;
LABEL_24:
    a2[2] = v15;
    a2[3] = v4;
    return result;
  }

  if (v5 == 3)
  {
    if (v14)
    {
      goto LABEL_18;
    }

    *a2 = result;
    a2[1] = v13;
    v15 = 2;
    goto LABEL_24;
  }

  if (v5 != 4)
  {
    goto LABEL_18;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = 3;
  a2[3] = v4;
LABEL_20:
}

uint64_t sub_1A9474DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 32))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A9474DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A9474E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A9474E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_1A9474EF0()
{
  v0 = sub_1A957C0C8();
  v1 = TTSLocString(v0);

  if (!v1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = sub_1A957C0F8();
  v167 = v3;

  sub_1A937829C(&qword_1EB386808, &qword_1A9587190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 30049;
  *(inited + 40) = 0xE200000000000000;
  v170[0] = xmmword_1A9587170;
  v170[1] = xmmword_1A9591550;
  v171 = sub_1A95038D4();
  v172 = v5;
  v173 = 0;
  v6 = sub_1A937BF94(&unk_1F1CF7440, &qword_1EB386838, &qword_1A95871C0, sub_1A937C310);
  sub_1A937829C(&qword_1EB386810, &qword_1A9587198);
  swift_arrayDestroy();
  v7 = sub_1A937BF94(MEMORY[0x1E69E7CC0], &qword_1EB386830, &qword_1A95871B8, sub_1A937C310);
  sub_1A9504F44(v170, v6, v7, &unk_1F1CF7760, &unk_1F1CF7790, v168);
  v8 = v168[3];
  *(inited + 80) = v168[2];
  *(inited + 96) = v8;
  *(inited + 112) = v168[4];
  *(inited + 128) = v169;
  v9 = v168[1];
  *(inited + 48) = v168[0];
  *(inited + 64) = v9;
  v166 = sub_1A937C104(inited);
  swift_setDeallocating();
  sub_1A9476120(inited + 32);
  sub_1A937829C(&qword_1EB386820, &qword_1A95871A8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A958BF10;
  v11 = swift_allocObject();
  strcpy((v11 + 16), "ultraLowGain");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  v12 = sub_1A957C0C8();
  v13 = TTSLocString(v12);

  if (!v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v14 = sub_1A957C0F8();
  v16 = v15;

  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  __asm { FMOV            V0.2S, #-20.0 }

  v22 = -_D0;
  *(v11 + 48) = -_D0;
  *(v11 + 56) = 1056964608;
  *(v11 + 64) = xmmword_1A9591560;
  *(v10 + 32) = v11 | 0xC000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x6E696147776F6CLL;
  *(v23 + 24) = 0xE700000000000000;
  v24 = sub_1A957C0C8();
  v25 = TTSLocString(v24);

  if (!v25)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = sub_1A957C0F8();
  v28 = v27;

  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  *(v23 + 48) = v22;
  *(v23 + 56) = 1056964608;
  *(v23 + 64) = xmmword_1A9591560;
  *(v10 + 40) = v23 | 0xC000000000000000;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x6E69614764696DLL;
  *(v29 + 24) = 0xE700000000000000;
  v30 = sub_1A957C0C8();
  v31 = TTSLocString(v30);

  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = sub_1A957C0F8();
  v34 = v33;

  *(v29 + 32) = v32;
  *(v29 + 40) = v34;
  *(v29 + 48) = v22;
  *(v29 + 56) = 1056964608;
  *(v29 + 64) = xmmword_1A9591560;
  *(v10 + 48) = v29 | 0xC000000000000000;
  v35 = swift_allocObject();
  *(v35 + 16) = 0x6E69614768676968;
  *(v35 + 24) = 0xE800000000000000;
  v36 = sub_1A957C0C8();
  v37 = TTSLocString(v36);

  if (!v37)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v38 = sub_1A957C0F8();
  v40 = v39;

  *(v35 + 32) = v38;
  *(v35 + 40) = v40;
  *(v35 + 48) = v22;
  *(v35 + 56) = 1056964608;
  *(v35 + 64) = xmmword_1A9591560;
  *(v10 + 56) = v35 | 0xC000000000000000;
  if (TTSIsInternalBuild())
  {
    v41 = sub_1A957C0C8();
    v42 = TTSLocString(v41);

    if (v42)
    {
      v43 = swift_allocObject();
      v44 = sub_1A957C0F8();
      v46 = v45;

      *(v43 + 16) = v44;
      *(v43 + 24) = v46;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1A9587160;
      v48 = sub_1A957C0C8();
      v49 = TTSLocString(v48);

      v162 = v47;
      v163 = v43;
      if (v49)
      {
        v50 = sub_1A957C0F8();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      v164 = v2;
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      *(v55 + 24) = v52;
      v161 = v55;
      v165 = swift_allocObject();
      *(v165 + 16) = xmmword_1A958BF10;
      v56 = sub_1A957C0C8();
      v57 = TTSLocString(v56);

      if (v57)
      {
        v58 = swift_allocObject();
        v59 = sub_1A957C0F8();
        v61 = v60;

        *(v58 + 16) = v59;
        *(v58 + 24) = v61;
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1A9588500;
        v63 = swift_allocObject();
        strcpy((v63 + 16), "ultraLowFreq");
        *(v63 + 29) = 0;
        *(v63 + 30) = -5120;
        v64 = sub_1A957C0C8();
        v65 = TTSLocString(v64);

        if (v65)
        {
          v66 = sub_1A957C0F8();
          v68 = v67;

          *(v63 + 32) = v66;
          *(v63 + 40) = v68;
          *(v63 + 48) = 0x437A000041200000;
          *(v63 + 56) = 1065353216;
          *(v63 + 64) = xmmword_1A9591570;
          *(v62 + 32) = v63 | 0xC000000000000000;
          v69 = swift_allocObject();
          *(v69 + 16) = 0x776F4C6172746C75;
          *(v69 + 24) = 0xEA00000000005742;
          v70 = sub_1A957C0C8();
          v71 = TTSLocString(v70);

          if (v71)
          {
            v72 = sub_1A957C0F8();
            v74 = v73;

            *(v69 + 32) = v72;
            *(v69 + 40) = v74;
            *(v69 + 48) = 0x408000003F000000;
            *(v69 + 56) = 1056964608;
            *(v69 + 64) = xmmword_1A9591580;
            *(v62 + 40) = v69 | 0xC000000000000000;
            v75 = swift_allocObject();
            strcpy((v75 + 16), "ultraLowBypass");
            *(v75 + 31) = -18;
            v76 = sub_1A957C0C8();
            v77 = TTSLocString(v76);

            if (v77)
            {
              v78 = sub_1A957C0F8();
              v80 = v79;

              *(v75 + 32) = v78;
              *(v75 + 40) = v80;
              *(v62 + 48) = v75 | 0x8000000000000000;
              *(v58 + 32) = v62;
              *(v165 + 32) = v58 | 0x4000000000000000;
              v81 = sub_1A957C0C8();
              v82 = TTSLocString(v81);

              if (v82)
              {
                v83 = swift_allocObject();
                v84 = sub_1A957C0F8();
                v86 = v85;

                *(v83 + 16) = v84;
                *(v83 + 24) = v86;
                v87 = swift_allocObject();
                *(v87 + 16) = xmmword_1A9588500;
                v88 = swift_allocObject();
                *(v88 + 16) = 0x71657246776F6CLL;
                *(v88 + 24) = 0xE700000000000000;
                v89 = sub_1A957C0C8();
                v90 = TTSLocString(v89);

                if (v90)
                {
                  v91 = sub_1A957C0F8();
                  v93 = v92;

                  *(v88 + 32) = v91;
                  *(v88 + 40) = v93;
                  *(v88 + 48) = 0x44BB8000437A0000;
                  *(v88 + 56) = 1065353216;
                  *(v88 + 64) = xmmword_1A9591570;
                  *(v87 + 32) = v88 | 0xC000000000000000;
                  v94 = swift_allocObject();
                  *(v94 + 16) = 0x5742776F6CLL;
                  *(v94 + 24) = 0xE500000000000000;
                  v95 = sub_1A957C0C8();
                  v96 = TTSLocString(v95);

                  if (v96)
                  {
                    v97 = sub_1A957C0F8();
                    v99 = v98;

                    *(v94 + 32) = v97;
                    *(v94 + 40) = v99;
                    *(v94 + 48) = 0x408000003F000000;
                    *(v94 + 56) = 1056964608;
                    *(v94 + 64) = xmmword_1A9591580;
                    *(v87 + 40) = v94 | 0xC000000000000000;
                    v100 = swift_allocObject();
                    *(v100 + 16) = 0x7361707942776F6CLL;
                    *(v100 + 24) = 0xE900000000000073;
                    v101 = sub_1A957C0C8();
                    v102 = TTSLocString(v101);

                    if (v102)
                    {
                      v103 = sub_1A957C0F8();
                      v105 = v104;

                      *(v100 + 32) = v103;
                      *(v100 + 40) = v105;
                      *(v87 + 48) = v100 | 0x8000000000000000;
                      *(v83 + 32) = v87;
                      *(v165 + 40) = v83 | 0x4000000000000000;
                      v106 = sub_1A957C0C8();
                      v107 = TTSLocString(v106);

                      if (v107)
                      {
                        v108 = swift_allocObject();
                        v109 = sub_1A957C0F8();
                        v111 = v110;

                        *(v108 + 16) = v109;
                        *(v108 + 24) = v111;
                        v112 = swift_allocObject();
                        *(v112 + 16) = xmmword_1A9588500;
                        v113 = swift_allocObject();
                        *(v113 + 16) = 0x7165724664696DLL;
                        *(v113 + 24) = 0xE700000000000000;
                        v114 = sub_1A957C0C8();
                        v115 = TTSLocString(v114);

                        if (v115)
                        {
                          v116 = sub_1A957C0F8();
                          v118 = v117;

                          *(v113 + 32) = v116;
                          *(v113 + 40) = v118;
                          *(v113 + 48) = 0x457A000044BB8000;
                          *(v113 + 56) = 1065353216;
                          *(v113 + 64) = xmmword_1A9591570;
                          *(v112 + 32) = v113 | 0xC000000000000000;
                          v119 = swift_allocObject();
                          *(v119 + 16) = 0x574264696DLL;
                          *(v119 + 24) = 0xE500000000000000;
                          v120 = sub_1A957C0C8();
                          v121 = TTSLocString(v120);

                          if (v121)
                          {
                            v122 = sub_1A957C0F8();
                            v124 = v123;

                            *(v119 + 32) = v122;
                            *(v119 + 40) = v124;
                            *(v119 + 48) = 1056964608;
                            *(v119 + 52) = 0x3F00000040800000;
                            *(v119 + 64) = xmmword_1A9591580;
                            *(v112 + 40) = v119 | 0xC000000000000000;
                            v125 = swift_allocObject();
                            *(v125 + 16) = 0x736170794264696DLL;
                            *(v125 + 24) = 0xE900000000000073;
                            v126 = sub_1A957C0C8();
                            v127 = TTSLocString(v126);

                            if (v127)
                            {
                              v128 = sub_1A957C0F8();
                              v130 = v129;

                              *(v125 + 32) = v128;
                              *(v125 + 40) = v130;
                              *(v112 + 48) = v125 | 0x8000000000000000;
                              *(v108 + 32) = v112;
                              *(v165 + 48) = v108 | 0x4000000000000000;
                              v131 = sub_1A957C0C8();
                              v132 = TTSLocString(v131);

                              if (v132)
                              {
                                v133 = swift_allocObject();
                                v134 = sub_1A957C0F8();
                                v136 = v135;

                                *(v133 + 16) = v134;
                                *(v133 + 24) = v136;
                                v137 = swift_allocObject();
                                *(v137 + 16) = xmmword_1A9588500;
                                v138 = swift_allocObject();
                                *(v138 + 16) = 0x7165724668676968;
                                *(v138 + 24) = 0xE800000000000000;
                                v139 = sub_1A957C0C8();
                                v140 = TTSLocString(v139);

                                v2 = v164;
                                if (v140)
                                {
                                  v141 = sub_1A957C0F8();
                                  v143 = v142;

                                  *(v138 + 32) = v141;
                                  *(v138 + 40) = v143;
                                  *(v138 + 48) = 0x461C4000457A0000;
                                  *(v138 + 56) = 1065353216;
                                  *(v138 + 64) = xmmword_1A9591570;
                                  *(v137 + 32) = v138 | 0xC000000000000000;
                                  v144 = swift_allocObject();
                                  *(v144 + 16) = 0x574268676968;
                                  *(v144 + 24) = 0xE600000000000000;
                                  v145 = sub_1A957C0C8();
                                  v146 = TTSLocString(v145);

                                  if (v146)
                                  {
                                    v147 = sub_1A957C0F8();
                                    v149 = v148;

                                    *(v144 + 32) = v147;
                                    *(v144 + 40) = v149;
                                    *(v144 + 48) = 1056964608;
                                    *(v144 + 52) = 0x3F00000040800000;
                                    *(v144 + 64) = xmmword_1A9591580;
                                    *(v137 + 40) = v144 | 0xC000000000000000;
                                    v150 = swift_allocObject();
                                    *(v150 + 16) = 0x6170794268676968;
                                    *(v150 + 24) = 0xEA00000000007373;
                                    v151 = sub_1A957C0C8();
                                    v152 = TTSLocString(v151);

                                    if (v152)
                                    {
                                      v153 = sub_1A957C0F8();
                                      v155 = v154;

                                      *(v150 + 32) = v153;
                                      *(v150 + 40) = v155;
                                      *(v137 + 48) = v150 | 0x8000000000000000;
                                      *(v133 + 32) = v137;
                                      *(v165 + 56) = v133 | 0x4000000000000000;
                                      *(v161 + 32) = v165;
                                      *(v162 + 32) = v161;
                                      *(v163 + 32) = v162;
                                      v10 = sub_1A9476014(1, 5, 1, v10);
                                      *(v10 + 16) = 5;
                                      *(v10 + 64) = v163 | 0x4000000000000000;
                                      v54 = v166;
                                      v53 = v167;
                                      goto LABEL_29;
                                    }

LABEL_54:
                                    __break(1u);
                                    return;
                                  }

LABEL_53:
                                  __break(1u);
                                  goto LABEL_54;
                                }

LABEL_52:
                                __break(1u);
                                goto LABEL_53;
                              }

LABEL_51:
                              __break(1u);
                              goto LABEL_52;
                            }

LABEL_50:
                            __break(1u);
                            goto LABEL_51;
                          }

LABEL_49:
                          __break(1u);
                          goto LABEL_50;
                        }

LABEL_48:
                        __break(1u);
                        goto LABEL_49;
                      }

LABEL_47:
                      __break(1u);
                      goto LABEL_48;
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v54 = v166;
  v53 = v167;
LABEL_29:
  v156 = sub_1A957C0C8();
  v157 = TTSLocString(v156);

  if (v157)
  {
    v158 = sub_1A957C0F8();
    v160 = v159;
  }

  else
  {
    v158 = 0;
    v160 = 0;
  }

  sub_1A950AA6C(v2, v53, v54, v10, 0xD000000000000011, 0x80000001A95C3610, v158, v160, &xmmword_1EB39D868, 1);
}

__int128 *sub_1A9475F20()
{
  if (qword_1EB39D860 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB39D868;
}

uint64_t static TTSAudioEffect.SimpleEQ.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB39D860 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EB39D888;
  v2 = xmmword_1EB39D8A8;
  v9[3] = unk_1EB39D898;
  v9[4] = xmmword_1EB39D8A8;
  v3 = qword_1EB39D8B8;
  v10 = qword_1EB39D8B8;
  v4 = xmmword_1EB39D868;
  v5 = unk_1EB39D878;
  v9[0] = xmmword_1EB39D868;
  v9[1] = unk_1EB39D878;
  v9[2] = xmmword_1EB39D888;
  *(a1 + 48) = unk_1EB39D898;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return sub_1A937BE84(v9, v8);
}

char *sub_1A9476014(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386820, &qword_1A95871A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}