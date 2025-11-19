uint64_t sub_1A93DDE04()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  (*(*v1 + 352))();
  v5 = *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);
  v6 = sub_1A957B078();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = *(*v5 + 200);

  v8 = v7(v0 + 11);
  sub_1A93DAC54(v2, v4, v3);
  v9 = v8(v0 + 11, 0);
  v10 = (*(*v1 + 184))(v9);
  sub_1A957CF08();

  MEMORY[0x1AC585140](v4, v3);
  MEMORY[0x1AC585140](0x6C616974696E495FLL, 0xEB00000000657A69);
  (*(*v10 + 96))(0xD000000000000012, 0x80000001A95C1B90);

  v11 = v0[21];
  v12 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A93DE0C4(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A93DE0E8, v1, 0);
}

uint64_t sub_1A93DE0E8()
{
  v1 = (*(**(v0 + 16) + 296))();
  if (*(v1 + 16) && (v2 = sub_1A93EB130(*(v0 + 24)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 16);
    v5 = *(*(v1 + 56) + 8 * v2);
    *(v0 + 32) = v5;

    sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x1E69E88A0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_1A93DE2B4;

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

void sub_1A93DE2B4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];

    MEMORY[0x1EEE6DFA0](sub_1A93DE3FC, v7, 0);
  }
}

uint64_t sub_1A93DE410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DE4B8, 0, 0);
}

uint64_t sub_1A93DE4B8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = &qword_1EB388000;
    do
    {
      v27 = v2;
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      v9 = swift_allocObject();
      v26 = v3;
      *(v9 + 16) = *v3;
      v10 = sub_1A957C688();
      v11 = v4;
      v12 = *(v10 - 8);
      (*(v12 + 56))(v8, 1, 1, v10);
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = 0;
      v13[4] = &unk_1A958A708;
      v13[5] = v9;
      sub_1A9391BAC(v8, v7, v11, &qword_1A9587710);
      LODWORD(v7) = (*(v12 + 48))(v7, 1, v10);

      v15 = *(v0 + 88);
      if (v7 == 1)
      {
        sub_1A937B960(*(v0 + 88), v11, &qword_1A9587710);
      }

      else
      {
        sub_1A957C678();
        (*(v12 + 8))(v15, v10);
      }

      v4 = v11;
      if (*v14)
      {
        v16 = v13[3];
        v17 = *v14;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1A957C5A8();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_1A937B960(v6, v11, &qword_1A9587710);
      v3 = v26 + 1;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A93DE7D4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return v5();
}

uint64_t sub_1A93DE8BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A93836DC;

  return v8();
}

uint64_t sub_1A93DE9A4()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DEA40, v0, 0);
}

uint64_t sub_1A93DEA40()
{
  v18 = v0;
  v1 = v0[2];
  v2 = (*(*v1 + 184))();
  (*(*v2 + 88))(v2);

  v4 = (*(*v1 + 232))(v3);
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_1A93EB008(*(v4 + 16), 0);
    v8 = sub_1A93ED8A0(&v17, (v7 + 4), v6, v5);
    sub_1A932D088();
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v9 = v0[2];
  sub_1A93DF6C4(v7);

  v10 = v0[3];
  v11 = v0[2];
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v11;
  swift_retain_n();
  sub_1A938A404(0, 0, v10, &unk_1A9589EE8, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A93DECC8()
{
  v16 = v0;
  v1 = *(v0 + 96);
  v2 = *(*v1 + 184);
  v3 = *(*v2() + 120);

  v3(0xD00000000000001DLL, 0x80000001A95C1D90, &unk_1A958A6D0, v1);

  v5 = (v2)(v4);
  static TTSTaskRunner.TaskConfiguration.TaskType.immediateWithStandardRetry.getter(v11);
  v12 = *sub_1A953C318();
  v13 = 0;
  v6 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(0xD00000000000001DLL, 0x80000001A95C1D90, v11, &v12, &v13, v14);
  (*(*v5 + 128))(v14, v6);

  v7 = v15[0];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v7;
  *(v0 + 73) = *(v15 + 9);
  v8 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v8;
  sub_1A93F03AC(v0 + 16);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A93DEE98()
{
  v1 = *(v0 + 16);
  sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1A93DEFA4;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58]();
}

void sub_1A93DEFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 16);

    MEMORY[0x1EEE6DFA0](sub_1A93DF0D8, v5, 0);
  }
}

uint64_t sub_1A93DF0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v5 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93DF19C, a3, 0);
}

uint64_t sub_1A93DF19C()
{
  v42 = v0;
  result = (*(**(v0 + 312) + 232))();
  v2 = 0;
  v3 = result + 64;
  v40 = result;
  v4 = -1;
  v5 = -1 << *(result + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(result + 64);
  v7 = (63 - v5) >> 6;
  v38 = v7;
  v39 = result + 64;
  while (v6)
  {
    v10 = v2;
LABEL_17:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v40 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1A9379534(*(v40 + 56) + 40 * v14, v0 + 128);
    *(v0 + 72) = v16;
    *(v0 + 80) = v17;
    sub_1A932D070((v0 + 128), v0 + 88);

LABEL_18:
    v18 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v18;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    if (!*(v0 + 24))
    {
      v36 = *(v0 + 320);
      v35 = *(v0 + 328);

      v37 = *(v0 + 8);

      return v37();
    }

    sub_1A932D070((v0 + 32), v0 + 168);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    sub_1A93780F4((v0 + 168), v19);
    (*(v20 + 24))(&v41, v19, v20);
    v21 = v41;
    *(v0 + 336) = *sub_1A953C318();
    *(v0 + 340) = v21;
    sub_1A93F079C();
    if (sub_1A957CD88())
    {
      v23 = *(v0 + 320);
      v22 = *(v0 + 328);
      v24 = *(v0 + 312);
      v25 = sub_1A957C688();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v22, 1, 1, v25);
      sub_1A9379534(v0 + 168, v0 + 208);
      v27 = swift_allocObject();
      v27[2] = 0;
      v28 = v27 + 2;
      v27[3] = 0;
      v27[4] = v24;
      sub_1A932D070((v0 + 208), (v27 + 5));
      sub_1A9391BAC(v22, v23, &qword_1EB388000, &qword_1A9587710);
      LODWORD(v22) = (*(v26 + 48))(v23, 1, v25);

      v29 = *(v0 + 320);
      if (v22 == 1)
      {
        sub_1A937B960(*(v0 + 320), &qword_1EB388000, &qword_1A9587710);
        if (*v28)
        {
          goto LABEL_22;
        }

LABEL_24:
        v31 = 0;
        v33 = 0;
      }

      else
      {
        sub_1A957C678();
        (*(v26 + 8))(v29, v25);
        if (!*v28)
        {
          goto LABEL_24;
        }

LABEL_22:
        v30 = v27[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_1A957C5A8();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      v3 = v39;
      v34 = **(v0 + 304);

      if (v33 | v31)
      {
        v8 = v0 + 248;
        *(v0 + 248) = 0;
        *(v0 + 256) = 0;
        *(v0 + 264) = v31;
        *(v0 + 272) = v33;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 328);
      *(v0 + 280) = 1;
      *(v0 + 288) = v8;
      *(v0 + 296) = v34;
      swift_task_create();

      sub_1A937B960(v9, &qword_1EB388000, &qword_1A9587710);
      v7 = v38;
    }

    result = sub_1A9378138((v0 + 168));
  }

  if (v7 <= v2 + 1)
  {
    v11 = v2 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      v2 = v12;
      *(v0 + 72) = 0u;
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v10);
    ++v2;
    if (v6)
    {
      v2 = v10;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93DF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A938FA84;

  return sub_1A93E0A40(a5);
}

uint64_t sub_1A93DF6C4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (*v1 + 184);
    v24 = *v4;
    v19[5] = v4;
    v5 = result + 32;
    do
    {
      v6 = sub_1A9379534(v5, v21);
      v7 = v24(v6);
      v8 = v22;
      v9 = v23;
      sub_1A93780F4(v21, v22);
      v10 = sub_1A93DF8D0(v8, v9);
      v12 = v11;
      sub_1A9379534(v21, v20);
      v13 = swift_allocObject();
      *(v13 + 16) = v3;
      sub_1A932D070(v20, v13 + 24);
      v14 = *(*v7 + 120);

      v14(v10, v12, &unk_1A958A768, v13);

      v15 = v22;
      v16 = v23;
      sub_1A93780F4(v21, v22);
      v17 = (*(v16 + 16))(v15, v16);
      MEMORY[0x1EEE9AC00](v17, v18);
      v19[2] = v3;
      v19[3] = v21;
      sub_1A93DFAC8(sub_1A93F0C24, v19, v17);

      result = sub_1A9378138(v21);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_1A93DF8D0(uint64_t a1, uint64_t a2)
{
  sub_1A957CF08();

  v4 = (*(a2 + 8))(a1, a2);
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](0x79727465722ELL, 0xE600000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1A93DF990(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return sub_1A93E0E30(a2);
}

uint64_t sub_1A93DFA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A9382328;

  return sub_1A93E0E30(a3);
}

uint64_t sub_1A93DFAC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v10 = v9;

      v5(&v10);

      if (v3)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1A93DFB48(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1A957BC88();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = (*v2 + 208) & 0xFFFFFFFFFFFFLL | 0x6651000000000000;
  v3[13] = *(*v2 + 208);
  v3[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A93DFC28, v2, 0);
}

uint64_t sub_1A93DFC28()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  *(v0 + 120) = (*(v0 + 104))();

  return MEMORY[0x1EEE6DFA0](sub_1A93DFC98, 0, 0);
}

uint64_t sub_1A93DFC98()
{
  v14 = v0;
  v1 = sub_1A93E0290(*(v0 + 56));
  v2 = v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = sub_1A93EB098(v1[2], 0);
    v5 = sub_1A93ED710(&v13, v4 + 32, v3, v2);
    sub_1A932D088();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *(v0 + 128) = v4;
  v6 = *(**(v0 + 120) + 152);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1A93DFE34;
  v9 = *(v0 + 120);
  v10 = *(v0 + 64);

  return v12(v4, v10);
}

uint64_t sub_1A93DFE34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1A93E0218;
  }

  else
  {
    v7 = v3[15];
    v6 = v3[16];

    v5 = sub_1A93DFF58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A93DFF58()
{
  v31 = v0;
  if (qword_1EB389260 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = sub_1A937731C(v3, qword_1EB389268);
  (*(v2 + 16))(v1, v6, v3);
  sub_1A9379534(v4, v0 + 16);

  v7 = sub_1A957BC68();
  v8 = sub_1A957CA98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 144);
    v10 = *(v0 + 88);
    v28 = *(v0 + 80);
    v29 = *(v0 + 96);
    v11 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 134218498;
    *(v12 + 4) = *(v11 + 16);

    *(v12 + 12) = 2080;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    sub_1A93780F4((v0 + 16), v14);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    sub_1A9378138((v0 + 16));
    v19 = sub_1A937A5C0(v16, v18, &v30);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v9;
    _os_log_impl(&dword_1A9324000, v7, v8, "Set %ld records for loader: %s updateCount: %ld", v12, 0x20u);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    v20 = (*(v10 + 8))(v29, v28);
  }

  else
  {
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);

    (*(v22 + 8))(v21, v23);
    v20 = sub_1A9378138((v0 + 16));
  }

  if (*(v0 + 144) >= 1)
  {
    (*(**(v0 + 72) + 352))(v20);
  }

  v25 = *(v0 + 96);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A93E0218()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

void *sub_1A93E0290(uint64_t a1)
{
  v2 = sub_1A93EE428(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = &type metadata for CoreSynthesizer.Voice.Trait;
    while (1)
    {
      memcpy(v60, v4, sizeof(v60));
      memcpy(__src, v4, sizeof(__src));
      sub_1A937B3DC(v60, __dst);
      memcpy(v98, __src, sizeof(v98));
      v10 = sub_1A957C1A8();
      if (!v2[2])
      {
        break;
      }

      v12 = sub_1A937A490(v10, v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }

      v52 = v3;
      v54 = v2;
      v15 = (v2[7] + 280 * v12);
      memcpy(v83, v15, sizeof(v83));
      v16 = v15[1];
      v94 = *v15;
      v95 = v16;
      v17 = v15[3];
      v96 = v15[2];
      v97 = v17;
      v18 = *(v15 + 168);
      v90 = *(v15 + 152);
      v91 = v18;
      v92 = *(v15 + 184);
      v93 = *(v15 + 25);
      v19 = *(v15 + 104);
      v86 = *(v15 + 88);
      v87 = v19;
      v20 = *(v15 + 136);
      v88 = *(v15 + 120);
      v89 = v20;
      v21 = *(v15 + 72);
      v22 = v83[8];
      v53 = v83[26];
      v84 = *(v15 + 216);
      v85 = v21;
      v23 = v83[29];
      v47 = v83[30];
      v48 = v83[32];
      v50 = v83[33];
      v55 = v83[34];
      v57 = v83[31];
      sub_1A937B3DC(v83, &v62);
      v24 = v5;
      v25 = sub_1A9493C84();
      *&v62 = *v25;
      v61[0] = v22;
      sub_1A9387410();
      v26 = sub_1A957CD88();
      *&v62 = *v25;
      v61[0] = v98[8];
      if (((v26 ^ sub_1A957CD88()) & 1) == 0)
      {
        v27 = v53;
        if (v53)
        {
          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

        v29 = v23;
        if (v98[26])
        {
          v5 = &type metadata for CoreSynthesizer.Voice.Trait;
          v3 = v52;
          if (v30 >= v98[29])
          {
            goto LABEL_34;
          }
        }

        else
        {
          v5 = &type metadata for CoreSynthesizer.Voice.Trait;
          v3 = v52;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }
        }

        v35 = sub_1A957C1A8();
        v37 = v36;
        sub_1A937B3DC(v98, v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61[0] = v2;
        sub_1A93ECBB8(v98, v35, v37, isUniquelyReferenced_nonNull_native);

        v62 = v94;
        v63 = v95;
        v64 = v96;
        v65 = v97;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v71 = v89;
        v39 = v84;
        v67 = v85;
        v75 = v93;
        v2 = v61[0];
        goto LABEL_35;
      }

      v27 = v53;
      *&v62 = *v25;
      v61[0] = v22;
      v5 = v24;
      if (sub_1A957CD88())
      {
        v100 = *&v98[25];
        v101 = *&v98[27];
        v102 = v98[29];
        if (v98[26])
        {
          v28 = v98[29];
        }

        else
        {
          v28 = 0;
        }

        v29 = v23;
        v3 = v52;
        if (v53)
        {
          if (v98[26] && v29 == v28 || v29 >= v28)
          {
            goto LABEL_34;
          }

          if (!v57)
          {
            goto LABEL_37;
          }

          if (!v98[26])
          {
            if (v55 <= 0)
            {
LABEL_37:
              sub_1A9391BAC(&v100, v61, &qword_1EB386F18, &qword_1A958A6B8);
              sub_1A93B10AC(v47, v57);
              v40 = *(&v100 + 1);
              v58 = *(&v100 + 1);
              v41 = v100;
              v42 = v101;
              v49 = v102;
              v51 = *(&v101 + 1);
              v56 = sub_1A957C1A8();
              v44 = v43;
              __dst[0] = v94;
              __dst[1] = v95;
              __dst[2] = v96;
              __dst[3] = v97;
              *(&__dst[9] + 8) = v90;
              *(&__dst[10] + 8) = v91;
              *(&__dst[11] + 8) = v92;
              *(&__dst[5] + 8) = v86;
              *(&__dst[6] + 8) = v87;
              *(&__dst[7] + 8) = v88;
              *(&__dst[8] + 8) = v89;
              *(&__dst[4] + 8) = v85;
              *(&__dst[12] + 1) = v93;
              *&__dst[4] = v22;
              *&__dst[13] = v53;
              *(&__dst[13] + 8) = v84;
              *(&__dst[14] + 1) = v29;
              __dst[15] = __PAIR128__(v40, v41);
              *&__dst[16] = v42;
              *(&__dst[16] + 1) = v51;
              *&__dst[17] = v49;
              sub_1A937B3DC(__dst, v61);
              v45 = swift_isUniquelyReferenced_nonNull_native();
              v61[0] = v54;
              sub_1A93ECBB8(__dst, v56, v44, v45);

              v62 = v94;
              v63 = v95;
              v64 = v96;
              v65 = v97;
              v72 = v90;
              v73 = v91;
              v74 = v92;
              v68 = v86;
              v69 = v87;
              v70 = v88;
              v71 = v89;
              v67 = v85;
              v75 = v93;
              v66 = v22;
              v76 = v53;
              v77 = v84;
              v78 = v29;
              v79 = __PAIR128__(v58, v41);
              v5 = &type metadata for CoreSynthesizer.Voice.Trait;
              v80 = v42;
              v2 = v61[0];
              v81 = v51;
              v82 = v49;
              goto LABEL_36;
            }

LABEL_34:
            v62 = v94;
            v63 = v95;
            v64 = v96;
            v65 = v97;
            v72 = v90;
            v73 = v91;
            v74 = v92;
            v68 = v86;
            v69 = v87;
            v70 = v88;
            v71 = v89;
            v39 = v84;
            v67 = v85;
            v75 = v93;
LABEL_35:
            v66 = v22;
            v76 = v27;
            v77 = v39;
            v78 = v29;
            *&v79 = v47;
            *(&v79 + 1) = v57;
            v80 = v48;
            v81 = v50;
            v82 = v55;
LABEL_36:
            sub_1A937B48C(&v62);
            goto LABEL_5;
          }
        }

        else
        {
          if (!v98[26] || v98[29] <= 0)
          {
            goto LABEL_34;
          }

          if (!v57)
          {
            goto LABEL_37;
          }
        }

        if (v98[29] >= v55)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v31 = sub_1A957C1A8();
      v33 = v32;
      sub_1A937B3DC(v98, v61);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v2;
      sub_1A93ECBB8(v98, v31, v33, v34);

      v62 = v94;
      v63 = v95;
      v64 = v96;
      v65 = v97;
      v72 = v90;
      v73 = v91;
      v74 = v92;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v67 = v85;
      v75 = v93;
      v2 = v61[0];
      v66 = v22;
      v76 = v53;
      v77 = v84;
      v78 = v23;
      *&v79 = v47;
      *(&v79 + 1) = v57;
      v80 = v48;
      v81 = v50;
      v82 = v55;
      sub_1A937B48C(&v62);
      v3 = v52;
LABEL_5:
      memcpy(__dst, __src, 0x118uLL);
      sub_1A937B48C(__dst);
      v4 += 280;
      if (!--v3)
      {
        return v2;
      }
    }

LABEL_4:
    v6 = sub_1A957C1A8();
    v8 = v7;
    sub_1A937B3DC(v98, v83);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v2;
    sub_1A93ECBB8(v98, v6, v8, v9);

    v2 = v83[0];
    goto LABEL_5;
  }

  return v2;
}

uint64_t sub_1A93E0A40(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_1A93E0AD8;

  return sub_1A93E0E30(a1);
}

uint64_t sub_1A93E0AD8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[13];
    v5 = (*v4 + 184) & 0xFFFFFFFFFFFFLL | 0xD1E5000000000000;
    v3[16] = *(*v4 + 184);
    v3[17] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1A93E0C28, v4, 0);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1A93E0C28()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  *(v0 + 144) = (*(v0 + 128))();

  return MEMORY[0x1EEE6DFA0](sub_1A93E0C98, 0, 0);
}

uint64_t sub_1A93E0C98()
{
  v25 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = v3[3];
  v5 = v3[4];
  sub_1A93780F4(v3, v4);
  v6 = sub_1A93DF8D0(v4, v5);
  v8 = v7;
  *(v0 + 89) = 1;
  v16 = 0x4014000000000000;
  v17 = xmmword_1A9589E40;
  v18 = xmmword_1A9589E50;
  v19 = 0;
  v20 = 1;
  v21 = 1;
  v9 = v3[3];
  v10 = v3[4];
  sub_1A93780F4(v3, v9);
  (*(v10 + 24))(&v22, v9, v10);
  HIBYTE(v22) = 0;
  v11 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(v6, v8, &v16, &v22, &v22 + 7, v23);
  (*(*v1 + 128))(v23, v11);

  v12 = v24[0];
  *(v0 + 48) = v23[2];
  *(v0 + 64) = v12;
  *(v0 + 73) = *(v24 + 9);
  v13 = v23[1];
  *(v0 + 16) = v23[0];
  *(v0 + 32) = v13;
  sub_1A93F03AC(v0 + 16);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A93E0E30(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = sub_1A957BC88();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93E0F34, 0, 0);
}

uint64_t sub_1A93E0F34()
{
  v32 = v0;
  if (qword_1EB389260 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = sub_1A937731C(v2, qword_1EB389268);
  v0[25] = v5;
  v6 = *(v3 + 16);
  v0[26] = v6;
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_1A9379534(v4, (v0 + 2));
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA98();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  if (v9)
  {
    v29 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    v15 = v0[5];
    v16 = v0[6];
    sub_1A93780F4(v0 + 2, v15);
    v17 = (*(v16 + 8))(v15, v16);
    v19 = v18;
    sub_1A9378138(v0 + 2);
    v20 = sub_1A937A5C0(v17, v19, &v31);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1A9324000, v7, v8, "Executing voice load for loader: %s", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);

    v21 = *(v11 + 8);
    v21(v29, v12);
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v12);
    sub_1A9378138(v0 + 2);
  }

  v0[28] = v21;
  v22 = v0[18];
  v23 = v22[3];
  v24 = v22[4];
  sub_1A93780F4(v22, v23);
  v25 = *(v24 + 56);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[29] = v27;
  *v27 = v0;
  v27[1] = sub_1A93E1244;

  return v30(v23, v24);
}

uint64_t sub_1A93E1244(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93E190C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[32] = v7;
    *v7 = v6;
    v7[1] = sub_1A93E13C8;
    v8 = v4[18];
    v9 = v4[19];

    return sub_1A93DFB48(a1, v8);
  }
}

uint64_t sub_1A93E13C8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1A93E1BFC;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_1A93E14E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A93E14E4()
{
  v1 = v0[18];
  v2 = v0[19];
  v0[34] = *(v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);
  v3 = v1[3];
  v4 = v1[4];
  sub_1A93780F4(v1, v3);
  v0[35] = (*(v4 + 8))(v3, v4);
  v0[36] = v5;
  v6 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0xCBB3000000000000;
  v0[37] = *(*v2 + 160);
  v0[38] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A93E15AC, v2, 0);
}

uint64_t sub_1A93E15AC()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  (*(v0 + 296))();

  return MEMORY[0x1EEE6DFA0](sub_1A93E1618, 0, 0);
}

uint64_t sub_1A93E1618()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = sub_1A957B078();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = (*(*v3 + 200))(v0 + 7);
  sub_1A93DAC54(v6, v2, v1);
  v8(v0 + 7, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A93E174C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1A93E1EF4;
  }

  else
  {
    v3 = sub_1A93E1860;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93E1860()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();
  v3 = v1;

  v4 = *(v0 + 312);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 160);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A93E190C()
{
  v36 = v0;
  v1 = *(v0 + 248);
  *(v0 + 128) = v1;
  v2 = v1;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A937829C(&qword_1EB386EF8, &unk_1A958A670);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 120);
    *(v0 + 312) = *(v0 + 112);
    *(v0 + 320) = v3;
    v4 = swift_task_alloc();
    *(v0 + 328) = v4;
    *v4 = v0;
    v4[1] = sub_1A93E174C;
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);

    return sub_1A93DFB48(v3, v5);
  }

  else
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);
    v12 = *(v0 + 168);

    v9(v11, v10, v12);
    v13 = v1;
    v14 = sub_1A957BC68();
    v15 = sub_1A957CA78();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = *(v0 + 168);
    if (v16)
    {
      v34 = *(v0 + 224);
      v33 = *(v0 + 184);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = *(v0 + 88);
      v23 = *(v0 + 96);
      v25 = *(v0 + 104);
      v26 = sub_1A957D478();
      v28 = sub_1A937A5C0(v26, v27, &v35);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_1A9324000, v14, v15, "Failed to execute load with error %s", v21, 0xCu);
      sub_1A9378138(v22);
      MEMORY[0x1AC587CD0](v22, -1, -1);
      MEMORY[0x1AC587CD0](v21, -1, -1);

      v34(v33, v20);
    }

    else
    {

      v17(v19, v20);
    }

    swift_willThrow();
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    v31 = *(v0 + 160);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1A93E1BFC()
{
  v37 = v0;
  v1 = *(v0 + 240);

  v2 = *(v0 + 264);
  *(v0 + 128) = v2;
  v3 = v2;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A937829C(&qword_1EB386EF8, &unk_1A958A670);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 120);
    *(v0 + 312) = *(v0 + 112);
    *(v0 + 320) = v4;
    v5 = swift_task_alloc();
    *(v0 + 328) = v5;
    *v5 = v0;
    v5[1] = sub_1A93E174C;
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);

    return sub_1A93DFB48(v4, v6);
  }

  else
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);

    v10(v12, v11, v13);
    v14 = v2;
    v15 = sub_1A957BC68();
    v16 = sub_1A957CA78();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 224);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    if (v17)
    {
      v35 = *(v0 + 224);
      v34 = *(v0 + 184);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 104);
      v27 = sub_1A957D478();
      v29 = sub_1A937A5C0(v27, v28, &v36);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1A9324000, v15, v16, "Failed to execute load with error %s", v22, 0xCu);
      sub_1A9378138(v23);
      MEMORY[0x1AC587CD0](v23, -1, -1);
      MEMORY[0x1AC587CD0](v22, -1, -1);

      v35(v34, v21);
    }

    else
    {

      v18(v20, v21);
    }

    swift_willThrow();
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 160);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1A93E1EF4()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 336);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A93E1F8C()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v52 - v6;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_context))
  {
    v8 = TTSIsRunningInLoginWindow();
    v9 = (*(*v0 + 232))();
    v7 = v9;
    v10 = *(v9 + 16);
    if (v8)
    {
      if (v10)
      {
        v11 = sub_1A93EB008(*(v9 + 16), 0);
        v12 = sub_1A93ED8A0(&v57, (v11 + 4), v10, v7);
        v5 = sub_1A932D088();
        if (v12 != v10)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }

      return v11;
    }

    if (v10)
    {
      v42 = sub_1A93EB008(*(v9 + 16), 0);
      v43 = sub_1A93ED8A0(&v57, (v42 + 4), v10, v7);
      result = sub_1A932D088();
      if (v43 != v10)
      {
        goto LABEL_48;
      }

      v44 = v42[2];
      if (v44)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
      v44 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v44)
      {
LABEL_27:
        v45 = 0;
        v46 = (v42 + 4);
        v11 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v45 >= v42[2])
          {
            goto LABEL_46;
          }

          sub_1A9379534(v46, &v57);
          v47 = v58;
          v48 = v59;
          sub_1A93780F4(&v57, v58);
          if ((*(v48 + 40))(v47, v48))
          {
            sub_1A932D070(&v57, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A93ED5A8(0, v11[2] + 1, 1);
              v11 = v56;
            }

            v51 = v11[2];
            v50 = v11[3];
            if (v51 >= v50 >> 1)
            {
              sub_1A93ED5A8((v50 > 1), v51 + 1, 1);
              v11 = v56;
            }

            v11[2] = v51 + 1;
            result = sub_1A932D070(v55, &v11[5 * v51 + 4]);
          }

          else
          {
            result = sub_1A9378138(&v57);
          }

          ++v45;
          v46 += 40;
        }

        while (v44 != v45);
        goto LABEL_43;
      }
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_43:

    return v11;
  }

LABEL_6:
  v13 = (*(*v1 + 232))(v5);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = sub_1A93EB008(*(v13 + 16), 0);
    v17 = sub_1A93ED8A0(&v57, (v16 + 4), v15, v14);
    result = sub_1A932D088();
    if (v17 != v15)
    {
      goto LABEL_47;
    }

    v19 = v16[2];
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v19)
  {
LABEL_38:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

LABEL_9:
  v20 = 0;
  v53 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;
  v11 = MEMORY[0x1E69E7CC0];
  v21 = (v16 + 4);
  v52 = v16;
  v54 = v19;
  while (v20 < v16[2])
  {
    sub_1A9379534(v21, &v57);
    v26 = v58;
    v27 = v59;
    sub_1A93780F4(&v57, v58);
    if ((*(v27 + 48))(v26, v27))
    {
      v28 = *(v1 + v53);
      v29 = v58;
      v30 = v59;
      sub_1A93780F4(&v57, v58);
      v31 = (*(v30 + 8))(v29, v30);
      v33 = v32;
      v34 = (*(*v28 + 184))();
      if (!*(v34 + 16))
      {

LABEL_19:

        v38 = sub_1A957B078();
        (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
        sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
        sub_1A932D070(&v57, v55);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v56 = v11;
        if ((v39 & 1) == 0)
        {
          sub_1A93ED5A8(0, v11[2] + 1, 1);
          v11 = v56;
        }

        v41 = v11[2];
        v40 = v11[3];
        if (v41 >= v40 >> 1)
        {
          sub_1A93ED5A8((v40 > 1), v41 + 1, 1);
          v11 = v56;
        }

        v11[2] = v41 + 1;
        result = sub_1A932D070(v55, &v11[5 * v41 + 4]);
        v19 = v54;
        goto LABEL_12;
      }

      v35 = sub_1A937A490(v31, v33);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }

      v22 = *(v34 + 56);
      v23 = sub_1A957B078();
      v24 = v1;
      v25 = *(v23 - 8);
      (*(v25 + 16))(v7, v22 + *(v25 + 72) * v35, v23);

      (*(v25 + 56))(v7, 0, 1, v23);
      v1 = v24;
      v16 = v52;
      sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
      v19 = v54;
    }

    result = sub_1A9378138(&v57);
LABEL_12:
    ++v20;
    v21 += 40;
    if (v19 == v20)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1A93E25DC()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v31 - v6;
  result = (*(*v0 + 376))(v5);
  v9 = result;
  v33 = *(result + 16);
  if (v33)
  {
    v10 = 0;
    v32 = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = result + 32;
    v31 = result;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1A9379534(v12, &v35);
      v17 = *(v1 + v32);
      v18 = v36;
      v19 = v37;
      sub_1A93780F4(&v35, v36);
      v20 = (*(v19 + 8))(v18, v19);
      v22 = v21;
      v23 = (*(*v17 + 184))();
      if (!*(v23 + 16))
      {
        break;
      }

      v24 = sub_1A937A490(v20, v22);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }

      v13 = *(v23 + 56);
      v14 = sub_1A957B078();
      v15 = v1;
      v16 = *(v14 - 8);
      (*(v16 + 16))(v7, v13 + *(v16 + 72) * v24, v14);

      (*(v16 + 56))(v7, 0, 1, v14);
      v1 = v15;
      v9 = v31;
      sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
      result = sub_1A9378138(&v35);
LABEL_4:
      ++v10;
      v12 += 40;
      if (v33 == v10)
      {
        goto LABEL_16;
      }
    }

LABEL_10:

    v27 = sub_1A957B078();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
    sub_1A932D070(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A93ED5A8(0, *(v11 + 16) + 1, 1);
      v11 = v38;
    }

    v30 = *(v11 + 16);
    v29 = *(v11 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1A93ED5A8((v29 > 1), v30 + 1, 1);
      v11 = v38;
    }

    *(v11 + 16) = v30 + 1;
    result = sub_1A932D070(v34, v11 + 40 * v30 + 32);
    goto LABEL_4;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:

  return v11;
}

uint64_t sub_1A93E2980(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E29A0, v1, 0);
}

uint64_t sub_1A93E29A0()
{
  v1 = (*(**(v0 + 72) + 208))();
  *(v0 + 80) = v1;
  v2 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0x5309000000000000;
  *(v0 + 88) = *(*v1 + 200);
  *(v0 + 96) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A93E2A48, v1, 0);
}

uint64_t sub_1A93E2A48()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 104) = (*(v0 + 88))(*(v0 + 64));
  *(v0 + 112) = 0;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1A93E2AEC, v4, 0);
}

uint64_t sub_1A93E2AEC()
{
  v1 = v0[9];
  v2 = sub_1A93E25DC();
  v0[15] = v2;
  v3 = *(v2 + 16);
  v0[16] = v3;
  if (v3)
  {
    v4 = *v0[9] + 408;
    v5 = *v4;
    v0[17] = *v4;
    v0[18] = v4 & 0xFFFFFFFFFFFFLL | 0x6C33000000000000;
    v6 = v0[13];
    v0[19] = 0;
    v0[20] = v6;
    sub_1A9379534(v2 + 32, (v0 + 2));
    v14 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_1A93E2C88;
    v9 = v0[18];
    v10 = v0[9];
    v11 = v0 + 2;
    v12 = v14;
  }

  else
  {

    v11 = v0[13];
    v12 = v0[1];
  }

  return v12(v11);
}

uint64_t sub_1A93E2C88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(v2 + 176) = a1;

  sub_1A9378138((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1A93E2DA8, v4, 0);
}

char *sub_1A93E2DA8()
{
  *(v0 + 56) = *(v0 + 176);
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = sub_1A937829C(&qword_1EB386E90, &unk_1A9589EF8);
  v4 = sub_1A93B744C(&qword_1EB386E98, &qword_1EB386E90, &unk_1A9589EF8);
  v5 = Sequence<>.filtered(axCriteria:)(v2, v3, v4, &protocol witness table for CoreSynthesizer.Voice);

  v7 = *(v5 + 16);
  v8 = *(v1 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 160);
  result = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 160);
  if (result && v9 <= *(v11 + 3) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v15 = v8 + v7;
  }

  else
  {
    v15 = v8;
  }

  result = sub_1A93A3558(result, v15, 1, *(v0 + 160));
  v11 = result;
  if (!*(v5 + 16))
  {
LABEL_13:

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_5:
  if ((*(v11 + 3) >> 1) - *(v11 + 2) < v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();

  if (v7)
  {
    v12 = *(v11 + 2);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v11 + 2) = v14;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_14:
  v16 = *(v0 + 152) + 1;
  if (v16 == *(v0 + 128))
  {
    v17 = *(v0 + 120);

    v18 = *(v0 + 8);
    v19 = v11;
  }

  else
  {
    *(v0 + 152) = v16;
    *(v0 + 160) = v11;
    v20 = *(v0 + 136);
    v21 = *(v0 + 144);
    sub_1A9379534(*(v0 + 120) + 40 * v16 + 32, v0 + 16);
    v26 = (v20 + *v20);
    v22 = v20[1];
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_1A93E2C88;
    v24 = *(v0 + 144);
    v25 = *(v0 + 72);
    v19 = (v0 + 16);
    v18 = v26;
  }

  return v18(v19);
}

uint64_t sub_1A93E3070()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void *sub_1A93E30D4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1A93EAD8C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A937829C(&qword_1EB388460, &qword_1A958A728);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A93E31DC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1A93EAED4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A937829C(&qword_1EB386F50, &qword_1A958A790);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A93E32E0(uint64_t a1)
{
  *(v2 + 728) = v1;
  *(v2 + 720) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E3304, v1, 0);
}

uint64_t sub_1A93E3304()
{
  v1 = (*(**(v0 + 728) + 208))();
  *(v0 + 736) = v1;
  v2 = *v1 + 208;
  *(v0 + 744) = *v2;
  *(v0 + 752) = v2 & 0xFFFFFFFFFFFFLL | 0x6DCA000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1A93E33B0, v1, 0);
}

uint64_t sub_1A93E33B0()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);
  v3 = (*(v0 + 744))(*(v0 + 720));
  *(v0 + 760) = 0;
  *(v0 + 768) = v3;
  *(v0 + 776) = v4;
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);

  return MEMORY[0x1EEE6DFA0](sub_1A93E3464, v6, 0);
}

uint64_t sub_1A93E3464()
{
  v1 = v0[91];
  result = sub_1A93E25DC();
  v0[98] = result;
  v3 = *(result + 16);
  v0[99] = v3;
  if (v3)
  {
    v4 = *v0[91] + 408;
    v5 = *v4;
    v0[100] = *v4;
    v0[101] = v4 & 0xFFFFFFFFFFFFLL | 0x6C33000000000000;
    v6 = v0[97];
    v7 = v0[96];
    v0[104] = 0;
    v0[103] = v7;
    v0[102] = v6;
    if (*(result + 16))
    {
      sub_1A9379534(result + 32, (v0 + 72));
      v15 = (v5 + *v5);
      v8 = v5[1];
      v9 = swift_task_alloc();
      v0[105] = v9;
      *v9 = v0;
      v9[1] = sub_1A93E3618;
      v10 = v0[101];
      v11 = v0[91];

      return v15(v0 + 72);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = v0[97];
    v13 = v0[96];
    v14 = v0[1];

    return v14(v13, v12);
  }

  return result;
}

uint64_t sub_1A93E3618(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *(*v1 + 728);
  v6 = *v1;
  *(v2 + 848) = a1;

  sub_1A9378138((v2 + 576));

  return MEMORY[0x1EEE6DFA0](sub_1A93E3738, v4, 0);
}

uint64_t sub_1A93E3738()
{
  v39 = v0;
  v1 = v0[45].i64[0];
  v0[43].i64[1] = v0[53].i64[0];
  v2 = sub_1A937829C(&qword_1EB386E90, &unk_1A9589EF8);
  v3 = sub_1A93B744C(&qword_1EB386E98, &qword_1EB386E90, &unk_1A9589EF8);
  v36 = v0[51];
  v4 = Sequence<>.filtered(axCriteria:)(v1, v2, v3, &protocol witness table for CoreSynthesizer.Voice);

  v0[44] = vextq_s8(v36, v36, 8uLL);
  v35 = *(v4 + 16);
  if (v35)
  {
    v6 = 0;
    v7 = (v0 + 712);
    v8 = (v4 + 32);
    v34 = v4;
    while (v6 < *(v4 + 16))
    {
      memcpy(&v0[1], v8, 0x118uLL);
      ++v6;
      memcpy(__dst, v8, sizeof(__dst));
      sub_1A937B3DC(v0[1].i64, &v0[18].i64[1]);
      CoreSynthesizer.Voice.primaryLocales.getter(&v0[38].i64[1]);
      v9 = v0[40].i64[0];
      v10 = v0[40].i64[1];
      sub_1A93780F4(&v0[38].i64[1], v9);
      v11 = *(v9 - 8);
      v12 = *(v11 + 64) + 15;
      swift_task_alloc();
      (*(v11 + 16))();
      sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
      v13 = *(v10 + 8);
      sub_1A957C918();

      sub_1A9378138(&v0[38].i64[1]);
      memcpy(__dst, &v0[1], sizeof(__dst));
      CoreSynthesizer.Voice.secondaryLocales.getter(v0[41].i64);
      v14 = v0[42].i64[1];
      v15 = v0[43].i64[0];
      sub_1A93780F4(v0[41].i64, v14);
      v16 = *(v14 - 8);
      v17 = *(v16 + 64) + 15;
      swift_task_alloc();
      (*(v16 + 16))();
      v18 = *(v15 + 8);
      sub_1A957C918();
      sub_1A937B48C(v0[1].i64);
      v4 = v34;

      result = sub_1A9378138(v0[41].i64);
      v8 += 280;
      if (v35 == v6)
      {
        v19 = v0 + 44;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v19 = (v0 + 824);
  v7 = v0 + 51;
LABEL_7:
  v20 = v19->i64[0];
  v21 = v7->i64[0];
  v22 = v0[52].i64[0];
  v23 = v0[49].i64[1];

  if (v22 + 1 == v23)
  {
    v24 = v0[49].i64[0];

    v25 = v0->i64[1];

    return v25(v20, v21);
  }

  else
  {
    v26 = v0[52].i64[0] + 1;
    v0[52].i64[0] = v26;
    v0[51].i64[1] = v20;
    v0[51].i64[0] = v21;
    v27 = v0[49].i64[0];
    if (v26 >= *(v27 + 16))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v28 = v0[50].i64[1];
    v29 = v0[50].i64[0];
    sub_1A9379534(v27 + 40 * v26 + 32, v0[36].i64);
    v37 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[52].i64[1] = v31;
    *v31 = v0;
    v31[1] = sub_1A93E3618;
    v32 = v0[50].i64[1];
    v33 = v0[45].i64[1];

    return v37(v0 + 36);
  }
}

uint64_t sub_1A93E3BB8()
{
  v1 = v0[92];

  v2 = v0[1];
  v3 = v0[95];

  return v2();
}

uint64_t sub_1A93E3C1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E3C3C, v1, 0);
}

uint64_t sub_1A93E3C3C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_1A93780F4(v1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1A93E3D60;

  return v8(v2, v3);
}

uint64_t sub_1A93E3D60(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {

    v9 = sub_1A93E3F18;
  }

  else
  {
    *(v5 + 40) = a1;
    v9 = sub_1A93E3EA4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1A93E3EA4()
{
  v1 = sub_1A93E0290(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A93E3F18()
{
  v1 = sub_1A93EE428(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A93E3F7C(uint64_t a1)
{
  *(v2 + 728) = v1;
  *(v2 + 720) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E3FA0, v1, 0);
}

uint64_t sub_1A93E3FA0()
{
  result = (*(**(v0 + 728) + 376))();
  *(v0 + 736) = result;
  v2 = *(result + 16);
  *(v0 + 744) = v2;
  if (v2)
  {
    v3 = **(v0 + 728) + 408;
    v4 = *v3;
    *(v0 + 752) = *v3;
    *(v0 + 760) = v3 & 0xFFFFFFFFFFFFLL | 0x6C33000000000000;
    *(v0 + 784) = 0;
    v5 = MEMORY[0x1E69E7CD0];
    *(v0 + 776) = MEMORY[0x1E69E7CD0];
    *(v0 + 768) = v5;
    if (*(result + 16))
    {
      sub_1A9379534(result + 32, v0 + 576);
      v13 = (v4 + *v4);
      v6 = v4[1];
      v7 = swift_task_alloc();
      *(v0 + 792) = v7;
      *v7 = v0;
      v7[1] = sub_1A93E417C;
      v8 = *(v0 + 760);
      v9 = *(v0 + 728);

      return v13(v0 + 576);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v10 = *(v0 + 8);
    v11 = MEMORY[0x1E69E7CD0];
    v12 = MEMORY[0x1E69E7CD0];

    return v10(v11, v12);
  }

  return result;
}

uint64_t sub_1A93E417C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *(*v1 + 728);
  v6 = *v1;
  *(v2 + 800) = a1;

  sub_1A9378138((v2 + 576));

  return MEMORY[0x1EEE6DFA0](sub_1A93E429C, v4, 0);
}

uint64_t sub_1A93E429C()
{
  v39 = v0;
  v1 = v0[45].i64[0];
  v0[43].i64[1] = v0[50].i64[0];
  v2 = sub_1A937829C(&qword_1EB386E90, &unk_1A9589EF8);
  v3 = sub_1A93B744C(&qword_1EB386E98, &qword_1EB386E90, &unk_1A9589EF8);
  v36 = v0[48];
  v4 = Sequence<>.filtered(axCriteria:)(v1, v2, v3, &protocol witness table for CoreSynthesizer.Voice);

  v0[44] = vextq_s8(v36, v36, 8uLL);
  v35 = *(v4 + 16);
  if (v35)
  {
    v6 = 0;
    v7 = (v0 + 712);
    v8 = (v4 + 32);
    v34 = v4;
    while (v6 < *(v4 + 16))
    {
      memcpy(&v0[1], v8, 0x118uLL);
      ++v6;
      memcpy(__dst, v8, sizeof(__dst));
      sub_1A937B3DC(v0[1].i64, &v0[18].i64[1]);
      CoreSynthesizer.Voice.primaryLocales.getter(&v0[38].i64[1]);
      v9 = v0[40].i64[0];
      v10 = v0[40].i64[1];
      sub_1A93780F4(&v0[38].i64[1], v9);
      v11 = *(v9 - 8);
      v12 = *(v11 + 64) + 15;
      swift_task_alloc();
      (*(v11 + 16))();
      sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
      v13 = *(v10 + 8);
      sub_1A957C918();

      sub_1A9378138(&v0[38].i64[1]);
      memcpy(__dst, &v0[1], sizeof(__dst));
      CoreSynthesizer.Voice.secondaryLocales.getter(v0[41].i64);
      v14 = v0[42].i64[1];
      v15 = v0[43].i64[0];
      sub_1A93780F4(v0[41].i64, v14);
      v16 = *(v14 - 8);
      v17 = *(v16 + 64) + 15;
      swift_task_alloc();
      (*(v16 + 16))();
      v18 = *(v15 + 8);
      sub_1A957C918();
      sub_1A937B48C(v0[1].i64);
      v4 = v34;

      result = sub_1A9378138(v0[41].i64);
      v8 += 280;
      if (v35 == v6)
      {
        v19 = v0 + 44;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v19 = (v0 + 776);
  v7 = v0 + 48;
LABEL_7:
  v20 = v19->i64[0];
  v21 = v7->i64[0];
  v22 = v0[49].i64[0];
  v23 = v0[46].i64[1];

  if (v22 + 1 == v23)
  {
    v24 = v0[46].i64[0];

    v25 = v0->i64[1];

    return v25(v20, v21);
  }

  else
  {
    v26 = v0[49].i64[0] + 1;
    v0[49].i64[0] = v26;
    v0[48].i64[1] = v20;
    v0[48].i64[0] = v21;
    v27 = v0[46].i64[0];
    if (v26 >= *(v27 + 16))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v28 = v0[47].i64[1];
    v29 = v0[47].i64[0];
    sub_1A9379534(v27 + 40 * v26 + 32, v0[36].i64);
    v37 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[49].i64[1] = v31;
    *v31 = v0;
    v31[1] = sub_1A93E417C;
    v32 = v0[47].i64[1];
    v33 = v0[45].i64[1];

    return v37(v0 + 36);
  }
}

uint64_t sub_1A93E4718(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E4738, v1, 0);
}

uint64_t sub_1A93E4738()
{
  v1 = (*(**(v0 + 72) + 376))();
  *(v0 + 80) = v1;
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = **(v0 + 72) + 408;
    v4 = *v3;
    *(v0 + 96) = *v3;
    *(v0 + 104) = v3 & 0xFFFFFFFFFFFFLL | 0x6C33000000000000;
    v5 = MEMORY[0x1E69E7CC0];
    *(v0 + 112) = 0;
    *(v0 + 120) = v5;
    sub_1A9379534(v1 + 32, v0 + 16);
    v13 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_1A93E4900;
    v8 = *(v0 + 104);
    v9 = *(v0 + 72);
    v10 = v0 + 16;
    v11 = v13;
  }

  else
  {

    v11 = *(v0 + 8);
    v10 = MEMORY[0x1E69E7CC0];
  }

  return v11(v10);
}

uint64_t sub_1A93E4900(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(v2 + 136) = a1;

  sub_1A9378138((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1A93E4A20, v4, 0);
}

char *sub_1A93E4A20()
{
  *(v0 + 56) = *(v0 + 136);
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = sub_1A937829C(&qword_1EB386E90, &unk_1A9589EF8);
  v4 = sub_1A93B744C(&qword_1EB386E98, &qword_1EB386E90, &unk_1A9589EF8);
  v5 = Sequence<>.filtered(axCriteria:)(v2, v3, v4, &protocol witness table for CoreSynthesizer.Voice);

  v7 = *(v5 + 16);
  v8 = *(v1 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 120);
  result = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 120);
  if (result && v9 <= *(v11 + 3) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v15 = v8 + v7;
  }

  else
  {
    v15 = v8;
  }

  result = sub_1A93A3558(result, v15, 1, *(v0 + 120));
  v11 = result;
  if (!*(v5 + 16))
  {
LABEL_13:

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_5:
  if ((*(v11 + 3) >> 1) - *(v11 + 2) < v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();

  if (v7)
  {
    v12 = *(v11 + 2);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v11 + 2) = v14;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_14:
  v16 = *(v0 + 112) + 1;
  if (v16 == *(v0 + 88))
  {
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);
    v19 = v11;
  }

  else
  {
    *(v0 + 112) = v16;
    *(v0 + 120) = v11;
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    sub_1A9379534(*(v0 + 80) + 40 * v16 + 32, v0 + 16);
    v26 = (v20 + *v20);
    v22 = v20[1];
    v23 = swift_task_alloc();
    *(v0 + 128) = v23;
    *v23 = v0;
    v23[1] = sub_1A93E4900;
    v24 = *(v0 + 104);
    v25 = *(v0 + 72);
    v19 = (v0 + 16);
    v18 = v26;
  }

  return v18(v19);
}

uint64_t sub_1A93E4CE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[79] = v4;
  v5[78] = a2;
  v5[77] = a1;
  v8 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v5[80] = swift_task_alloc();
  v9 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v5[81] = swift_task_alloc();
  v10 = a3[1];
  v5[82] = *a3;
  v5[83] = v10;
  v5[84] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1A93E4DE0, v4, 0);
}

uint64_t sub_1A93E4DE0()
{
  v18 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = sub_1A957B308();
  v8 = (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v16 = v1;
  sub_1A9431DA8(&v17, v8);
  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v3, v2, v5, &v17, &v16, v4);
  v14 = (*v6 + 392);
  v15 = (*v14 + **v14);
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_1A93E4FA8;
  v11 = v0[81];
  v12 = v0[79];

  return v15(v11);
}

uint64_t sub_1A93E4FA8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 680);
  v7 = *v2;

  v8 = v4[79];
  if (v1)
  {

    v9 = *(*v8 + 424);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v5[87] = v11;
    *v11 = v7;
    v11[1] = sub_1A93E5254;
    v12 = v5[79];
    v13 = v5[81];

    return v15(v13);
  }

  else
  {
    v5[86] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A93E51E0, v8, 0);
  }
}

uint64_t sub_1A93E51E0()
{
  v0[88] = v0[86];
  v1 = v0[79];
  sub_1A9391040(v0[81]);

  return MEMORY[0x1EEE6DFA0](sub_1A93E538C, v1, 0);
}

uint64_t sub_1A93E5254(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 696);
  v7 = *v1;

  v3[88] = a1;
  v5 = v3[79];
  sub_1A9391040(v3[81]);

  return MEMORY[0x1EEE6DFA0](sub_1A93E538C, v5, 0);
}

uint64_t sub_1A93E538C()
{
  v1 = *(v0 + 704);
  if (*(v1 + 16))
  {
    memcpy((v0 + 16), (v1 + 32), 0x118uLL);
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 248);
    sub_1A937B3DC(v0 + 16, v0 + 296);

    if (v2)
    {
      v7 = *(**(v0 + 632) + 232);

      v9 = v7(v8);
      if (*(v9 + 16))
      {
        v10 = sub_1A937A490(v3, v2);
        if (v11)
        {
          v12 = *(v0 + 648);
          v21 = *(v0 + 640);
          v13 = *(v0 + 624);
          v14 = *(v0 + 616);
          sub_1A9379534(*(v9 + 56) + 40 * v10, v0 + 576);
          sub_1A93B10AC(v3, v2);

          sub_1A932D070((v0 + 576), v13);
          memcpy(v14, (v0 + 16), 0x118uLL);

          v15 = *(v0 + 8);
          goto LABEL_10;
        }
      }

      sub_1A937B48C(v0 + 16);

      sub_1A93B10AC(v3, v2);
    }

    else
    {
      sub_1A937B48C(v0 + 16);
    }
  }

  else
  {
    v16 = *(v0 + 704);
  }

  v17 = *(v0 + 648);
  v18 = *(v0 + 640);
  sub_1A93D7B08();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();

  v15 = *(v0 + 8);
LABEL_10:

  return v15();
}

uint64_t sub_1A93E55A8(void *__src, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2544) = v3;
  *(v4 + 2536) = a2;
  memcpy((v4 + 296), __src, 0x118uLL);
  *(v4 + 2592) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1A93E5630, v3, 0);
}

uint64_t sub_1A93E5630()
{
  v1 = *(v0 + 2536);
  v2 = v1[3];
  v3 = v1[4];
  sub_1A93780F4(v1, v2);
  v4 = *(v3 + 72);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2552) = v6;
  *v6 = v0;
  v6[1] = sub_1A93E5760;

  return v8(v0 + 16, v0 + 296, v2, v3);
}

uint64_t sub_1A93E5760()
{
  v2 = *v1;
  v3 = *(*v1 + 2552);
  v7 = *v1;
  *(*v1 + 2560) = v0;

  v4 = *(v2 + 2544);
  if (v0)
  {
    v5 = sub_1A93E5C38;
  }

  else
  {
    v5 = sub_1A93E5878;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E5878()
{
  v2 = *(v0 + 2592);
  if (v2 != 4)
  {
    *(v0 + 209) = v2;
  }

  v3 = (*(**(v0 + 2544) + 208))();
  *(v0 + 2568) = v3;
  memcpy((v0 + 576), (v0 + 16), 0x118uLL);
  memcpy((v0 + 856), (v0 + 16), 0x118uLL);
  v4 = *(*v3 + 144);
  sub_1A937B3DC(v0 + 576, v0 + 1136);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2576) = v6;
  *v6 = v0;
  v6[1] = sub_1A93E5A08;
  v7 = *(v0 + 2536);

  return v9(v0 + 856, v7);
}

uint64_t sub_1A93E5A08()
{
  v2 = *v1;
  v3 = *(*v1 + 2576);
  v4 = *v1;
  v2[323] = v0;

  v5 = v2[321];
  v6 = v2[318];
  if (v0)
  {
    memcpy(v2 + 212, v2 + 107, 0x118uLL);
    sub_1A937B48C((v2 + 212));

    v7 = sub_1A93E5C50;
  }

  else
  {
    memcpy(v2 + 282, v2 + 107, 0x118uLL);
    sub_1A937B48C((v2 + 282));

    v7 = sub_1A93E5B94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A93E5B94()
{
  (*(**(v0 + 2544) + 352))();
  memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
  sub_1A937B48C(v0 + 1976);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E5C50()
{
  memcpy(v0 + 177, v0 + 2, 0x118uLL);
  sub_1A937B48C((v0 + 177));
  v1 = v0[323];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A93E5CC4(void *__src)
{
  *(v2 + 1480) = v1;
  memcpy((v2 + 296), __src, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E5D38, v1, 0);
}

uint64_t sub_1A93E5D38()
{
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9587160;
  *(v1 + 32) = *sub_1A9493C84();
  v0[183] = v1;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v0[184] = v0[182];
  v2 = swift_task_alloc();
  v0[186] = v2;
  *v2 = v0;
  v2[1] = sub_1A93E5EA0;
  v3 = v0[185];

  return sub_1A93E4CE4((v0 + 2), (v0 + 177), v0 + 37, v0 + 184);
}

uint64_t sub_1A93E5EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 1488);
  v7 = *v1;
  *(*v1 + 1496) = v0;

  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1A93F0EEC;
  }

  else
  {
    v5 = sub_1A93E5FB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E5FB8()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[180];
  v2 = v0[181];
  sub_1A93780F4(v0 + 177, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v3 = *(v2 + 96);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[188] = v5;
  *v5 = v0;
  v5[1] = sub_1A93E6108;

  return (v7)(v0 + 107, v1, v2);
}

uint64_t sub_1A93E6108()
{
  v2 = *(*v1 + 1504);
  v3 = *v1;
  *(v3 + 1512) = v0;

  if (v0)
  {
    v4 = *(v3 + 1480);

    return MEMORY[0x1EEE6DFA0](sub_1A93F0EF0, v4, 0);
  }

  else
  {
    memcpy((v3 + 1136), (v3 + 576), 0x118uLL);
    *(v3 + 1536) = 2;
    v5 = swift_task_alloc();
    *(v3 + 1520) = v5;
    *v5 = v3;
    v5[1] = sub_1A93E629C;
    v6 = *(v3 + 1480);

    return sub_1A93E55A8((v3 + 1136), v3 + 1416, (v3 + 1536));
  }
}

uint64_t sub_1A93E629C()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v7 = *v1;
  *(*v1 + 1528) = v0;

  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1A93F0F08;
  }

  else
  {
    v5 = sub_1A93F0EF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E63B4(void *__src)
{
  *(v2 + 1480) = v1;
  memcpy((v2 + 296), __src, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E6428, v1, 0);
}

uint64_t sub_1A93E6428()
{
  v0[183] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v0[184] = v0[182];
  v1 = swift_task_alloc();
  v0[186] = v1;
  *v1 = v0;
  v1[1] = sub_1A93E655C;
  v2 = v0[185];

  return sub_1A93E4CE4((v0 + 2), (v0 + 177), v0 + 37, v0 + 184);
}

uint64_t sub_1A93E655C()
{
  v2 = *v1;
  v3 = *(*v1 + 1488);
  v7 = *v1;
  *(*v1 + 1496) = v0;

  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1A93E6ADC;
  }

  else
  {
    v5 = sub_1A93E6674;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E6674()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[180];
  v2 = v0[181];
  sub_1A93780F4(v0 + 177, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v3 = *(v2 + 88);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[188] = v5;
  *v5 = v0;
  v5[1] = sub_1A93E67C4;

  return (v7)(v0 + 107, v1, v2);
}

uint64_t sub_1A93E67C4()
{
  v2 = *(*v1 + 1504);
  v3 = *v1;
  *(v3 + 1512) = v0;

  if (v0)
  {
    v4 = *(v3 + 1480);

    return MEMORY[0x1EEE6DFA0](sub_1A93E6AF4, v4, 0);
  }

  else
  {
    memcpy((v3 + 1136), (v3 + 576), 0x118uLL);
    *(v3 + 1536) = 2;
    v5 = swift_task_alloc();
    *(v3 + 1520) = v5;
    *v5 = v3;
    v5[1] = sub_1A93E6958;
    v6 = *(v3 + 1480);

    return sub_1A93E55A8((v3 + 1136), v3 + 1416, (v3 + 1536));
  }
}

uint64_t sub_1A93E6958()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v7 = *v1;
  *(*v1 + 1528) = v0;

  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1A93E6B60;
  }

  else
  {
    v5 = sub_1A93E6A70;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E6A70()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1416));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E6AF4()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 177);
  v1 = v0[189];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A93E6B60()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 177);
  v1 = v0[191];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A93E6BCC(uint64_t a1, const void *a2)
{
  v3[221] = v2;
  v3[220] = a1;
  v5 = sub_1A937829C(&qword_1EB386E08, &qword_1A9589BB0);
  v3[222] = v5;
  v6 = *(v5 - 8);
  v3[223] = v6;
  v7 = *(v6 + 64) + 15;
  v3[224] = swift_task_alloc();
  v8 = sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8);
  v3[225] = v8;
  v9 = *(v8 - 8);
  v3[226] = v9;
  v10 = *(v9 + 64) + 15;
  v3[227] = swift_task_alloc();
  memcpy(v3 + 37, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E6D18, v2, 0);
}

uint64_t sub_1A93E6D18()
{
  v0[218] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v0[219] = v0[217];
  v1 = swift_task_alloc();
  v0[228] = v1;
  *v1 = v0;
  v1[1] = sub_1A93E6E4C;
  v2 = v0[221];

  return sub_1A93E4CE4((v0 + 2), (v0 + 212), v0 + 37, v0 + 219);
}

uint64_t sub_1A93E6E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 1824);
  v7 = *v1;
  *(*v1 + 1832) = v0;

  v4 = *(v2 + 1768);
  if (v0)
  {
    v5 = sub_1A93E7768;
  }

  else
  {
    v5 = sub_1A93E6F64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E6F64()
{
  memcpy((v0 + 576), (v0 + 16), 0x118uLL);
  if ((*(v0 + 769) & 0xFE) != 2 && *(v0 + 824) == 0)
  {
    v8 = *(v0 + 1816);
    v9 = *(v0 + 1808);
    v10 = *(v0 + 1800);
    v11 = *(v0 + 1792);
    v12 = *(v0 + 1784);
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1760);
    (*(v12 + 104))(v11, *MEMORY[0x1E69E8650], v13);
    sub_1A957C698();
    (*(v12 + 8))(v11, v13);
    sub_1A957C6C8();
    sub_1A937B48C(v0 + 576);
    (*(v9 + 8))(v8, v10);
    v15 = *(v0 + 1816);
    v16 = *(v0 + 1792);
    sub_1A9378138((v0 + 1696));

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v2 = *(v0 + 1720);
    v3 = *(v0 + 1728);
    sub_1A93780F4((v0 + 1696), v2);
    memcpy((v0 + 856), (v0 + 576), 0x118uLL);
    v4 = *(v3 + 80);
    v18 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 1840) = v6;
    *v6 = v0;
    v6[1] = sub_1A93E71DC;

    return v18(v0 + 856, v2, v3);
  }
}

uint64_t sub_1A93E71DC()
{
  v2 = *(*v1 + 1840);
  v3 = *v1;
  *(v3 + 1848) = v0;

  if (v0)
  {
    v4 = *(v3 + 1768);

    return MEMORY[0x1EEE6DFA0](sub_1A93E77D8, v4, 0);
  }

  else
  {
    memcpy((v3 + 1136), (v3 + 576), 0x118uLL);
    *(v3 + 1888) = 3;
    v5 = swift_task_alloc();
    *(v3 + 1856) = v5;
    *v5 = v3;
    v5[1] = sub_1A93E7370;
    v6 = *(v3 + 1768);

    return sub_1A93E55A8((v3 + 1136), v3 + 1696, (v3 + 1888));
  }
}

uint64_t sub_1A93E7370()
{
  v2 = *v1;
  v3 = *(*v1 + 1856);
  v7 = *v1;
  *(*v1 + 1864) = v0;

  v4 = *(v2 + 1768);
  if (v0)
  {
    v5 = sub_1A93E7858;
  }

  else
  {
    v5 = sub_1A93E7488;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E7488()
{
  v1 = v0[215];
  v2 = v0[216];
  sub_1A93780F4(v0 + 212, v1);
  memcpy(v0 + 177, v0 + 72, 0x118uLL);
  v3 = *(v2 + 104);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[234] = v5;
  *v5 = v0;
  v5[1] = sub_1A93E75CC;
  v6 = v0[220];

  return (v8)(v6, v0 + 177, v1, v2);
}

uint64_t sub_1A93E75CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1872);
  v7 = *v1;
  *(*v1 + 1880) = v0;

  v4 = *(v2 + 1768);
  if (v0)
  {
    v5 = sub_1A93E78D8;
  }

  else
  {
    v5 = sub_1A93E76E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E76E4()
{
  sub_1A937B48C((v0 + 72));
  v1 = v0[227];
  v2 = v0[224];
  sub_1A9378138(v0 + 212);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A93E7768()
{
  v1 = v0[229];
  v2 = v0[227];
  v3 = v0[224];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93E77D8()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 212);
  v1 = v0[231];
  v2 = v0[227];
  v3 = v0[224];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93E7858()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 212);
  v1 = v0[233];
  v2 = v0[227];
  v3 = v0[224];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93E78D8()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 212);
  v1 = v0[235];
  v2 = v0[227];
  v3 = v0[224];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93E7958(uint64_t a1, const void *a2)
{
  v3[151] = v2;
  v3[150] = a1;
  memcpy(v3 + 37, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E79CC, v2, 0);
}

uint64_t sub_1A93E79CC()
{
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9587160;
  *(v1 + 32) = *sub_1A9493C84();
  v0[148] = v1;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v0[149] = v0[147];
  v2 = swift_task_alloc();
  v0[152] = v2;
  *v2 = v0;
  v2[1] = sub_1A93E7B34;
  v3 = v0[151];

  return sub_1A93E4CE4((v0 + 2), (v0 + 142), v0 + 37, v0 + 149);
}

uint64_t sub_1A93E7B34()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v7 = *v1;
  *(*v1 + 1224) = v0;

  v4 = *(v2 + 1208);
  if (v0)
  {
    v5 = sub_1A93E7F24;
  }

  else
  {
    v5 = sub_1A93E7C4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E7C4C()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[145];
  v2 = v0[146];
  sub_1A93780F4(v0 + 142, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v3 = *(v2 + 112);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[154] = v5;
  *v5 = v0;
  v5[1] = sub_1A93E7DA0;
  v6 = v0[150];

  return (v8)(v6, v0 + 107, v1, v2);
}

uint64_t sub_1A93E7DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 1232);
  v7 = *v1;
  *(*v1 + 1240) = v0;

  v4 = *(v2 + 1208);
  if (v0)
  {
    v5 = sub_1A93E7F3C;
  }

  else
  {
    v5 = sub_1A93E7EB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A93E7EB8()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7F3C()
{
  sub_1A937B48C((v0 + 72));
  sub_1A9378138(v0 + 142);
  v1 = v0[155];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A93E7FA8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1A957B078();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93E80AC, v1, 0);
}

uint64_t sub_1A93E80AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v1 + 32);
    *(v0 + 216) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -(-1 << v3));
    }

    v6 = v4 & *(v1 + 56);
    *(v0 + 120) = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;

    if (v6)
    {
      v8 = 0;
LABEL_12:
      *(v0 + 128) = v6;
      *(v0 + 136) = v8;
      v12 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v12;
      *(v0 + 144) = *v12;
      v14 = v12[1];
      *(v0 + 152) = v14;
      v15 = *(*v2 + 208);

      v17 = v15(v16);
      *(v0 + 160) = v17;
      v18 = *(*v17 + 136);
      v27 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_1A93E83C4;

      return v27(v13, v14);
    }

    else
    {
      v11 = 0;
      while (((63 - v5) >> 6) - 1 != v11)
      {
        v8 = v11 + 1;
        v6 = *(v7 + 8 * v11++ + 64);
        if (v6)
        {
          goto LABEL_12;
        }
      }

      v23 = *(v0 + 104);
      v22 = *(v0 + 112);
      v24 = *(v0 + 96);
      (*(**(v0 + 72) + 352))(v21);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v9 = (*(*v2 + 208))();
    *(v0 + 184) = v9;
    v10 = (*v9 + 120) & 0xFFFFFFFFFFFFLL | 0x8CB1000000000000;
    *(v0 + 192) = *(*v9 + 120);
    *(v0 + 200) = v10;

    return MEMORY[0x1EEE6DFA0](sub_1A93E8B04, v9, 0);
  }
}

uint64_t sub_1A93E83C4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    v6 = v2[19];
    v7 = v2[9];

    v8 = sub_1A93E8CA8;
    v9 = v7;
  }

  else
  {
    v10 = v2[9];

    v8 = sub_1A93E851C;
    v9 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1A93E851C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v2 + 56);
  v5 = *(*(v0 + 72) + *(v0 + 120));
  v4(v1, 1, 1, v3);
  v76 = (*(*v5 + 200))(v0 + 16);
  v7 = v6;
  v8 = (*(v2 + 48))(v1, 1, v3);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 112);
  if (v8 == 1)
  {
    sub_1A937B960(*(v0 + 112), &qword_1EB386E78, qword_1A9589E60);
    v12 = *v7;
    v13 = sub_1A937A490(v10, v9);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      v24 = 1;
      goto LABEL_12;
    }

    v16 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 48) = *v7;
    *v7 = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v18 = *(v0 + 104);
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v21 = *(v0 + 48);
      v22 = *(*(v21 + 48) + 16 * v13 + 8);

      (*(v19 + 32))(v18, *(v21 + 56) + *(v19 + 72) * v13, v20);
      sub_1A93EC54C(v13, v21);
      v23 = *v7;
      *v7 = v21;

      v24 = 0;
LABEL_12:
      v42 = *(v0 + 104);
      v4(v42, v24, 1, *(v0 + 80));
      sub_1A937B960(v42, &qword_1EB386E78, qword_1A9589E60);
      goto LABEL_22;
    }

LABEL_17:
    sub_1A93ECE64();
    goto LABEL_4;
  }

  v25 = *(v0 + 88);
  v27 = *(v25 + 32);
  v4 = (v25 + 32);
  v26 = v27;
  v27(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  v28 = *v7;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v7;
  *(v0 + 56) = *v7;
  *v7 = 0x8000000000000000;
  v30 = sub_1A937A490(v10, v9);
  v32 = *(v13 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_17;
  }

  v36 = v31;
  if (*(v13 + 24) >= v35)
  {
    if ((v29 & 1) == 0)
    {
      v49 = v30;
      sub_1A93ECE64();
      v30 = v49;
      v43 = *(v0 + 152);
      if (v36)
      {
        goto LABEL_15;
      }

LABEL_19:
      v50 = *(v0 + 144);
      v52 = *(v0 + 88);
      v51 = *(v0 + 96);
      v53 = *(v0 + 80);
      v48 = *(v0 + 56);
      v48[(v30 >> 6) + 8] |= 1 << v30;
      v54 = (v48[6] + 16 * v30);
      *v54 = v50;
      v54[1] = v43;
      result = v26(v48[7] + *(v52 + 72) * v30, v51, v53);
      v55 = v48[2];
      v34 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v34)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v48[2] = v56;
      goto LABEL_21;
    }
  }

  else
  {
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    sub_1A93EB520(v35, v29);
    v39 = *(v0 + 56);
    v30 = sub_1A937A490(v38, v37);
    if ((v36 & 1) != (v40 & 1))
    {

      return sub_1A957D438();
    }
  }

  v43 = *(v0 + 152);
  if ((v36 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v45 = *(v0 + 88);
  v44 = *(v0 + 96);
  v46 = *(v0 + 80);
  v47 = v30;

  v48 = *(v0 + 56);
  (*(v45 + 40))(v48[7] + *(v45 + 72) * v47, v44, v46);
LABEL_21:
  v57 = *v7;
  *v7 = v48;

LABEL_22:
  result = v76(v0 + 16, 0);
  v58 = *(v0 + 136);
  v59 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v59)
  {
    result = *(v0 + 64);
LABEL_28:
    *(v0 + 128) = v59;
    *(v0 + 136) = v58;
    v61 = *(v0 + 72);
    v62 = (*(result + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v59)))));
    v63 = *v62;
    *(v0 + 144) = *v62;
    v64 = v62[1];
    *(v0 + 152) = v64;
    v65 = *(*v61 + 208);

    v67 = v65(v66);
    *(v0 + 160) = v67;
    v68 = *(*v67 + 136);
    v77 = (v68 + *v68);
    v69 = v68[1];
    v70 = swift_task_alloc();
    *(v0 + 168) = v70;
    *v70 = v0;
    v70[1] = sub_1A93E83C4;

    return v77(v63, v64);
  }

  else
  {
    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      result = *(v0 + 64);
      if (v60 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v59 = *(result + 8 * v60 + 56);
      ++v58;
      if (v59)
      {
        v58 = v60;
        goto LABEL_28;
      }
    }

    v73 = *(v0 + 104);
    v72 = *(v0 + 112);
    v74 = *(v0 + 96);
    (*(**(v0 + 72) + 352))(v71);

    v75 = *(v0 + 8);

    return v75();
  }
}

uint64_t sub_1A93E8B04()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  (*(v0 + 192))();
  *(v0 + 208) = 0;
  v3 = *(v0 + 184);
  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A93E8BA8, v4, 0);
}

uint64_t sub_1A93E8BA8()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);
  v2 = sub_1A93EE5B4(MEMORY[0x1E69E7CC0]);
  v3 = (*(*v1 + 192))(v2);
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(*v0[9] + 352))(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A93E8CA8()
{
  v1 = v0[8];

  v2 = v0[22];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A93E8D30()
{
  v1 = v0[23];

  v2 = v0[26];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A93E8DB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E8DD8, v1, 0);
}

uint64_t sub_1A93E8DD8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = (*(**(v0 + 24) + 232))();
    v1 = sub_1A93E90A0(v2);
  }

  *(v0 + 32) = v1;
  v3 = *(v0 + 24);
  sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1A93E8F58;

  return MEMORY[0x1EEE6DD58]();
}

void sub_1A93E8F58()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[3];

    MEMORY[0x1EEE6DFA0](sub_1A93F0F04, v7, 0);
  }
}

uint64_t sub_1A93E90A0(uint64_t a1)
{
  result = MEMORY[0x1AC585770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A93AB260(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93E91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93E926C, a4, 0);
}

uint64_t sub_1A93E926C()
{
  v1 = *(v0 + 200);
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v41 = v1 + 56;
  v39 = v1;
  if (v5)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = (*(v1 + 48) + ((v8 << 10) | (16 * v10)));
        v13 = *v11;
        v12 = v11[1];
        v14 = *(**(v0 + 208) + 232);

        v16 = v14(v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_6:

        v2 = v41;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v17 = sub_1A937A490(v13, v12);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        goto LABEL_6;
      }

      v20 = *(v0 + 224);
      v40 = *(v0 + 216);
      v21 = *(v0 + 208);
      sub_1A9379534(*(v16 + 56) + 40 * v17, v0 + 56);

      sub_1A932D070((v0 + 56), v0 + 16);
      v22 = sub_1A957C688();
      v23 = *(v22 - 8);
      v24 = v20;
      (*(v23 + 56))(v20, 1, 1, v22);
      sub_1A9379534(v0 + 16, v0 + 96);
      v25 = swift_allocObject();
      v25[2] = 0;
      v26 = v25 + 2;
      v25[3] = 0;
      v25[4] = v21;
      sub_1A932D070((v0 + 96), (v25 + 5));
      sub_1A9391BAC(v24, v40, &qword_1EB388000, &qword_1A9587710);
      LODWORD(v24) = (*(v23 + 48))(v40, 1, v22);

      v27 = *(v0 + 216);
      if (v24 == 1)
      {
        sub_1A937B960(*(v0 + 216), &qword_1EB388000, &qword_1A9587710);
        if (!*v26)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1A957C678();
        (*(v23 + 8))(v27, v22);
        if (!*v26)
        {
LABEL_17:
          v29 = 0;
          v31 = 0;
          goto LABEL_18;
        }
      }

      v28 = v25[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_1A957C5A8();
      v31 = v30;
      swift_unknownObjectRelease();
LABEL_18:
      v32 = **(v0 + 192);

      if (v31 | v29)
      {
        v33 = v0 + 136;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = v29;
        *(v0 + 160) = v31;
      }

      else
      {
        v33 = 0;
      }

      v34 = *(v0 + 224);
      *(v0 + 168) = 1;
      *(v0 + 176) = v33;
      *(v0 + 184) = v32;
      swift_task_create();

      sub_1A937B960(v34, &qword_1EB388000, &qword_1A9587710);
      result = sub_1A9378138((v0 + 16));
      v1 = v39;
      v2 = v41;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
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
      goto LABEL_11;
    }
  }

  v35 = *(v0 + 216);
  v36 = *(v0 + 224);
  v37 = *(v0 + 200);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A93E968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A93836DC;

  return sub_1A93E0E30(a5);
}

uint64_t sub_1A93E9728()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5080(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A93E97A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);

    sub_1A957BA08();
    type metadata accessor for VoiceDatabase.Preferences();
    sub_1A93F0400();
    sub_1A93F04C0();
    sub_1A93F0AAC(&qword_1EB386328, v8, type metadata accessor for VoiceDatabase.Preferences);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 16);
    *(a1 + 16) = v7;
  }

  *a2 = v7;
}

unint64_t sub_1A93E9938@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A93EE5B4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A93E9968()
{

  sub_1A937829C(&qword_1EB386EA8, &qword_1A9589F90);
  sub_1A957BA88();
}

uint64_t sub_1A93E99DC()
{
  (*(*v0 + 168))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A93E9A3C()
{
  (*(*v0 + 168))();
  sub_1A957B8F8();
}

void (*sub_1A93E9AA0(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0x2002000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

void sub_1A93E9B5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = **a1;

    (v5)(v8);
    v2[1] = v3;
    sub_1A957B8F8();

    v9 = *v2;
  }

  else
  {
    v5();
    v2[1] = v3;
    sub_1A957B8F8();
  }

  free(v2);
}

uint64_t sub_1A93E9BFC()
{
  v1 = (*(*v0 + 168))();
  v16 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v17 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98);
  *&v15 = v1;
  sub_1A932D070(&v15, v13);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2;
  v4 = v14;
  v5 = sub_1A9396054(v13, v14);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1A93EDA0C(*v8, 0x616F4C7473616C24, 0xED00006E4F646564, isUniquelyReferenced_nonNull_native, &v12);
  sub_1A9378138(v13);
  return v12;
}

uint64_t sub_1A93E9DA4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_1A9378138(v0 + 6);

  return swift_deallocClassInstance();
}

void *sub_1A93E9DFC()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  v2 = sub_1A957B9B8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[4] = sub_1A957B9A8();
  v5 = sub_1A957B998();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[5] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

uint64_t sub_1A93E9E98()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A93E9F04()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A93E9F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A95C1D50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A957D3E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A93EA00C(uint64_t a1)
{
  v2 = sub_1A93EE940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93EA048(uint64_t a1)
{
  v2 = sub_1A93EE940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93EA084()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1A93EA0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE800000000000000)
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

uint64_t sub_1A93EA188(uint64_t a1)
{
  v2 = sub_1A93EE994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93EA1C4(uint64_t a1)
{
  v2 = sub_1A93EE994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceDatabase.Trigger.encode(to:)(void *a1)
{
  v22[0] = sub_1A937829C(&qword_1EB386EC0, &qword_1A9589FA0);
  v24 = *(v22[0] - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22[0], v4);
  v6 = v22 - v5;
  v7 = sub_1A937829C(&qword_1EB386EC8, &qword_1A9589FA8);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v22 - v10;
  v12 = *v1;
  v13 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A93EE940();
  sub_1A957D598();
  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  v16 = *(v12 + 32);
  v17 = *(v12 + 40);
  v18 = v7;
  v19 = v22[0];
  sub_1A93EE994();
  sub_1A957D288();
  v26 = 0;
  v20 = v22[1];
  sub_1A957D2E8();
  if (!v20)
  {
    v25 = 1;
    sub_1A957D2D8();
  }

  (*(v24 + 8))(v6, v19);
  return (*(v23 + 8))(v11, v18);
}

uint64_t VoiceDatabase.Trigger.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  if (v4 == 1)
  {
    return sub_1A957D518();
  }

  sub_1A957D518();
  return MEMORY[0x1AC5863F0](v3);
}

uint64_t VoiceDatabase.Trigger.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v5 != 1)
  {
    MEMORY[0x1AC5863F0](v4);
  }

  return sub_1A957D548();
}

uint64_t VoiceDatabase.Trigger.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = sub_1A937829C(&qword_1EB386ED0, &qword_1A9589FB0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v9 = sub_1A937829C(&qword_1EB386ED8, &qword_1A9589FB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v30 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  sub_1A93780F4(a1, v15);
  sub_1A93EE940();
  sub_1A957D588();
  if (!v2)
  {
    v17 = v10;
    if (*(sub_1A957D268() + 16) == 1)
    {
      sub_1A93EE994();
      v18 = v8;
      sub_1A957D178();
      v24 = swift_allocObject();
      v35 = 0;
      *(v24 + 16) = sub_1A957D1E8();
      *(v24 + 24) = v25;
      v34 = 1;
      v27 = sub_1A957D1D8();
      v28 = v18;
      LOBYTE(v18) = v29;
      (*(v32 + 8))(v28, v4);
      (*(v17 + 8))(v14, v9);
      swift_unknownObjectRelease();
      *(v24 + 32) = v27;
      *(v24 + 40) = v18 & 1;
      *v31 = v24;
    }

    else
    {
      v19 = sub_1A957CF58();
      swift_allocError();
      v20 = v9;
      v22 = v21;
      v23 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v22 = &type metadata for VoiceDatabase.Trigger;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v17 + 8))(v14, v20);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v33);
}

uint64_t sub_1A93EAA00()
{
  v1 = *v0;
  sub_1A957D4F8();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v5 != 1)
  {
    MEMORY[0x1AC5863F0](v4);
  }

  return sub_1A957D548();
}

uint64_t sub_1A93EAAA0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  if (v4 == 1)
  {
    return sub_1A957D518();
  }

  sub_1A957D518();
  return MEMORY[0x1AC5863F0](v3);
}

uint64_t sub_1A93EAB20()
{
  v1 = *v0;
  sub_1A957D4F8();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v5 != 1)
  {
    MEMORY[0x1AC5863F0](v4);
  }

  return sub_1A957D548();
}

uint64_t VoiceDatabase.deinit()
{
  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime, &qword_1EB386E78, qword_1A9589E60);
  v1 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_debouncer);

  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_executor);

  v4 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___scheduler);

  v5 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___store[0]);

  v6 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_loaderMap);

  v7 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_eventHandlers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabase.__deallocating_deinit()
{
  VoiceDatabase.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t CoreSynthesizer.Voice.has(_:)(uint64_t *a1)
{
  v3 = *(v1 + 64);
  v4 = *a1;
  sub_1A9387410();
  return sub_1A957CD88() & 1;
}

void *sub_1A93EAD8C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A937829C(&qword_1EB388460, &qword_1A958A728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93EAED4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386F40, &qword_1A958A770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386F50, &qword_1A958A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93EB008(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1A93EB098(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xEA0EA0EA0EA0EA1) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

unint64_t sub_1A93EB130(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A957D4F8();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v7 != 1)
  {
    MEMORY[0x1AC5863F0](v6);
  }

  v8 = sub_1A957D548();

  return sub_1A93EB1F4(a1, v8);
}

unint64_t sub_1A93EB1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    do
    {
      v13 = *(v7 + 8 * v5);
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
      if (v16 || (sub_1A957D3E8() & 1) != 0)
      {
        if (v15)
        {
          if (v11)
          {
            return v5;
          }
        }

        else
        {
          if (v14 == v10)
          {
            v12 = v11;
          }

          else
          {
            v12 = 1;
          }

          if ((v12 & 1) == 0)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1A93EB2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A937A490(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1A932D070((*(v12 + 56) + 40 * v9), a3);
    sub_1A93EC390(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A93EB3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A937A490(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A93ECE64();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1A957B078();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1A93EC54C(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1A957B078();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1A93EB520(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_1A957B078();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
  v47 = a2;
  result = sub_1A957D118();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1A93EB8A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
  v39 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    v38 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v39 & 1) == 0)
      {
      }

      v41 = v22;
      v23 = *(v8 + 40);
      sub_1A957D4F8();
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      sub_1A957D518();
      if (v27 != 1)
      {
        MEMORY[0x1AC5863F0](v26);
      }

      result = sub_1A957D548();
      v8 = v38;
      v28 = -1 << *(v38 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v38 + 48) + 8 * v16) = v21;
      *(*(v38 + 56) + 8 * v16) = v41;
      ++*(v38 + 16);
      v5 = v37;
      v13 = v40;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        v40 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1A93EBBA0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1A937829C(a3, a4);
  v39 = a2;
  result = sub_1A957D118();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_1A9379534(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_1A93EBE70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v38 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      if (v38)
      {
        v26 = *(v5 + 56) + 280 * v22;
        v41 = *(v26 + 8);
        v42 = *v26;
        v43 = *(v26 + 32);
        v46 = *(v26 + 40);
        v44 = *(v26 + 24);
        v45 = *(v26 + 48);
        v47 = *(v26 + 56);
        v51 = *(v26 + 80);
        v48 = *(v26 + 64);
        v54 = *(v26 + 104);
        v52 = *(v26 + 112);
        v49 = *(v26 + 120);
        v50 = *(v26 + 57);
        v56 = *(v26 + 128);
        v57 = *(v26 + 96);
        v53 = *(v26 + 136);
        v59 = *(v26 + 144);
        v55 = *(v26 + 152);
        v58 = *(v26 + 160);
        v27 = *(v26 + 176);
        v39 = *(v26 + 192);
        v40 = *(v26 + 184);
        v61 = *(v26 + 188);
        v62 = *(v26 + 193);
        v63 = *(v26 + 200);
        v64 = *(v26 + 248);
        v65 = *(v26 + 216);
        v60 = *(v26 + 232);
        v66 = *(v26 + 272);
        v67 = *(v26 + 264);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 280 * v22), 0x118uLL);
        v66 = *&__dst[17];
        v67 = *(&__dst[16] + 1);
        v63 = *(&__dst[12] + 8);
        v64 = *(&__dst[15] + 8);
        v65 = *(&__dst[13] + 8);
        v60 = *(&__dst[14] + 8);
        v61 = HIDWORD(__dst[11]);
        v62 = BYTE1(__dst[12]);
        v39 = __dst[12];
        v40 = BYTE8(__dst[11]);
        v58 = __dst[10];
        v27 = *&__dst[11];
        v55 = *(&__dst[9] + 1);
        v59 = *&__dst[9];
        v56 = *&__dst[8];
        v57 = *&__dst[6];
        v53 = *(&__dst[8] + 1);
        v54 = *(&__dst[6] + 1);
        v52 = *&__dst[7];
        v51 = __dst[5];
        v48 = __dst[4];
        v49 = BYTE8(__dst[7]);
        v50 = BYTE9(__dst[3]);
        v47 = BYTE8(__dst[3]);
        v45 = *&__dst[3];
        v46 = *(&__dst[2] + 1);
        v43 = *&__dst[2];
        v44 = *(&__dst[1] + 1);
        v42 = *&__dst[0];
        v41 = *(__dst + 8);

        sub_1A937B3DC(__dst, v68);
      }

      v28 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(__dst[0]) = v40;
      v68[0] = v39;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 280 * v16;
      *v18 = v42;
      *(v18 + 8) = v41;
      *(v18 + 24) = v44;
      *(v18 + 32) = v43;
      *(v18 + 40) = v46;
      *(v18 + 48) = v45;
      *(v18 + 56) = v47;
      *(v18 + 57) = v50;
      *(v18 + 64) = v48;
      *(v18 + 80) = v51;
      *(v18 + 96) = v57;
      *(v18 + 104) = v54;
      *(v18 + 112) = v52;
      *(v18 + 120) = v49;
      *(v18 + 128) = v56;
      *(v18 + 136) = v53;
      *(v18 + 144) = v59;
      *(v18 + 152) = v55;
      *(v18 + 160) = v58;
      *(v18 + 176) = v27;
      *(v18 + 184) = __dst[0];
      *(v18 + 188) = v61;
      *(v18 + 192) = v68[0];
      *(v18 + 193) = v62;
      *(v18 + 200) = v63;
      *(v18 + 216) = v65;
      *(v18 + 232) = v60;
      *(v18 + 248) = v64;
      *(v18 + 264) = v67;
      *(v18 + 272) = v66;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1A93EC390(uint64_t result, uint64_t a2)
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
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v15 = sub_1A957D548();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A93EC54C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v13 = sub_1A957D548();

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
      v19 = *(*(sub_1A957B078() - 8) + 72);
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

uint64_t sub_1A93EC738(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A93EBBA0(v16, a4 & 1, &qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
    v20 = *v5;
    v11 = sub_1A937A490(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A957D438();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_1A9378138(v23);

    return sub_1A932D070(a1, v23);
  }

  else
  {
    sub_1A93ECD44(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1A93EC8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A937A490(a2, a3);
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
      sub_1A93ECE64();
      goto LABEL_7;
    }

    sub_1A93EB520(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1A937A490(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1A957B078();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1A93ECDB4(v12, a2, a3, a1, v18);
}

uint64_t sub_1A93ECA58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A93EB130(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A93EB8A0(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1A93EB130(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A93ED0E4();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_1A93ECBB8(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A93EBE70(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A93ED3EC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 280 * v11;

    return sub_1A93F0618(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  memcpy((v22[7] + 280 * v11), a1, 0x118uLL);
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1A93ECD44(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A932D070(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1A93ECDB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1A957B078();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

char *sub_1A93ECE64()
{
  v1 = v0;
  v37 = sub_1A957B078();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
  v5 = *v0;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

void *sub_1A93ED0E4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1A93ED248(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_1A937829C(a1, a2);
  v5 = *v3;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1A9379534(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1A93ED3EC()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1A937B3DC(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 280 * v16;
      memcpy(__dst, (*(v2 + 56) + 280 * v16), 0x118uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x118uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A93ED5A8(void *a1, int64_t a2, char a3)
{
  result = sub_1A93ED5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A93ED5C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A937829C(&qword_1EB388460, &qword_1A958A728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93ED710(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 280 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x118uLL);
      memmove(v11, v18, 0x118uLL);
      if (v14 == v10)
      {
        sub_1A937B3DC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 280;
      sub_1A937B3DC(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1A93ED8A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1A9379534(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1A932D070(v20, v21);
      sub_1A932D070(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A93EDA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v32 = v10;
  v33 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98);
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_1A937A490(a2, a3);
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
      v20 = (v19[7] + 40 * v13);
      sub_1A9378138(v20);
      return sub_1A932D070(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1A93ED248(&qword_1EB386F00, &qword_1A958A680, sub_1A93F0F10);
    goto LABEL_7;
  }

  sub_1A93EBBA0(v16, a4 & 1, &qword_1EB386F00, &qword_1A958A680, sub_1A93F0F10);
  v22 = *a5;
  v23 = sub_1A937A490(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
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
  v25 = sub_1A9396054(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1A93EDC84(v13, a2, a3, *v28, v19);

  return sub_1A9378138(&v31);
}

uint64_t sub_1A93EDC84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v17 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1A932D070(&v15, a5[7] + 40 * a1);
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

uint64_t sub_1A93EDD74()
{
  v0 = sub_1A957BC88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389260 != -1)
  {
    swift_once();
  }

  v6 = sub_1A937731C(v0, qword_1EB389268);
  (*(v1 + 16))(v5, v6, v0);
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A9324000, v7, v8, "--------- VOICE CACHE UPDATE ---------", v9, 2u);
    MEMORY[0x1AC587CD0](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  v10 = sub_1A957C1C8();
  notify_post((v10 + 32));
}

unint64_t sub_1A93EDF30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1A93EB130(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A93EE028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386F58, &qword_1A958A798);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, &v13, &qword_1EB386F60, &qword_1A958A7A0);
      v5 = v13;
      v6 = v14;
      result = sub_1A937A490(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A932D070(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for VoiceDatabase()
{
  result = qword_1EB390D00;
  if (!qword_1EB390D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93EE1A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93DB8A8(v7, a2, v6, v5);
}

uint64_t sub_1A93EE250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93DD364(v7, a2, v6, v5);
}

uint64_t sub_1A93EE2F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return sub_1A93DE410(v6, a2, v5);
}

uint64_t sub_1A93EE394()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A93DECA8(v3, v4, v5, v2);
}

void *sub_1A93EE428(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v3 = sub_1A957D128();

  memcpy(__dst, a1 + 4, 0x128uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_1A9391BAC(__dst, v15, &qword_1EB386F28, &unk_1A958C770);
  v6 = sub_1A937A490(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 41);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 280 * v6), &__dst[2], 0x118uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x128uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1A9391BAC(__dst, v15, &qword_1EB386F28, &unk_1A958C770);
    v6 = sub_1A937A490(v4, v5);
    v8 += 296;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A93EE5B4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386F10, &unk_1A958A6A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
    v9 = sub_1A957D128();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v11, v7, &qword_1EB386F10, &unk_1A958A6A8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1A937A490(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1A957B078();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A93EE7A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93E91BC(v7, a2, v6, v5);
}

uint64_t sub_1A93EE874@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t _s12TextToSpeech13VoiceDatabaseC7TriggerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a2 + 32);
  v5 = *(*a2 + 40);
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (v6 || (v7 = sub_1A957D3E8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_1A93EE940()
{
  result = qword_1EB393ED0;
  if (!qword_1EB393ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB393ED0);
  }

  return result;
}

unint64_t sub_1A93EE994()
{
  result = qword_1EB393ED8[0];
  if (!qword_1EB393ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB393ED8);
  }

  return result;
}

unint64_t sub_1A93EE9EC()
{
  result = qword_1EB386EE8;
  if (!qword_1EB386EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386EE8);
  }

  return result;
}

unint64_t sub_1A93EEA44()
{
  result = qword_1EB386EF0;
  if (!qword_1EB386EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386EF0);
  }

  return result;
}

unint64_t sub_1A93EEA9C()
{
  result = qword_1EB386168;
  if (!qword_1EB386168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386168);
  }

  return result;
}

void sub_1A93EEBE0()
{
  sub_1A93F0104();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of VoiceDatabase.add(loaders:)(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.triggerLoaderFirstBoot(loaderIds:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.triggerLoaderFirstBootAll()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of VoiceDatabase.remove(loaderId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.handle(_:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.initialize()()
{
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of VoiceDatabase.voices(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 392);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93D7EAC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.locales(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93EF6A0;

  return v8(a1);
}

uint64_t sub_1A93EF6A0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.fallbackLocales(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 416);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93918CC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.fallbackVoices(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 424);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93916A8;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.purge(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 456);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.cancelDownload(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 464);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.download(voice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 472);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.contentUrl(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 480);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9382328;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.reset(loaderIds:)(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabase.load(loaderIds:)(uint64_t a1)
{
  v4 = *(*v1 + 496);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

void sub_1A93F0104()
{
  if (!qword_1EB3864A0)
  {
    sub_1A957B078();
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3864A0);
    }
  }
}

unint64_t sub_1A93F01A0()
{
  result = qword_1EB394360[0];
  if (!qword_1EB394360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394360);
  }

  return result;
}

unint64_t sub_1A93F01F8()
{
  result = qword_1EB394570[0];
  if (!qword_1EB394570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394570);
  }

  return result;
}

unint64_t sub_1A93F0250()
{
  result = qword_1EB394680;
  if (!qword_1EB394680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB394680);
  }

  return result;
}

unint64_t sub_1A93F02A8()
{
  result = qword_1EB394688[0];
  if (!qword_1EB394688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394688);
  }

  return result;
}

unint64_t sub_1A93F0300()
{
  result = qword_1EB394710;
  if (!qword_1EB394710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB394710);
  }

  return result;
}

unint64_t sub_1A93F0358()
{
  result = qword_1EB394718[0];
  if (!qword_1EB394718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394718);
  }

  return result;
}

unint64_t sub_1A93F0400()
{
  result = qword_1EB386288;
  if (!qword_1EB386288)
  {
    sub_1A93A7B68(&qword_1EB386EA8, &qword_1A9589F90);
    sub_1A93F0AAC(&qword_1EB386368, 255, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386288);
  }

  return result;
}

unint64_t sub_1A93F04C0()
{
  result = qword_1EB386290;
  if (!qword_1EB386290)
  {
    sub_1A93A7B68(&qword_1EB386EA8, &qword_1A9589F90);
    sub_1A93F0AAC(&qword_1EB386370, 255, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386290);
  }

  return result;
}

uint64_t sub_1A93F0580()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93E968C(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0674()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A93DEE78(v0);
}

uint64_t sub_1A93F0704(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A93836DC;

  return sub_1A93DF0F0(v5, a2, v2);
}

unint64_t sub_1A93F079C()
{
  result = qword_1EB386000;
  if (!qword_1EB386000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386000);
  }

  return result;
}

uint64_t sub_1A93F07F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1A9378138(v0 + 5);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A93F0838()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DF628(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F08D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A93DE7D4(v2);
}

uint64_t sub_1A93F097C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A93DE8BC(v4, v5, v6, v2);
}

uint64_t sub_1A93F0A14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DC3D4(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0AAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A93F0AF4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DC3D4(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0B8C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DF990(v2, v0 + 24);
}

uint64_t sub_1A93F0C24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(*v2 + 296);

  v7 = v5(v6);
  if (*(v7 + 16) && (v8 = sub_1A93EB130(v4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386F40, &qword_1A958A770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  sub_1A9379534(v3, v20);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_1A932D070(v20, v12 + 24);
  *(inited + 32) = &unk_1A958A780;
  *(inited + 40) = v12;
  *&v20[0] = v10;

  sub_1A93E31DC(inited);
  v13 = *&v20[0];
  v14 = (*(*v2 + 312))(v20);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v16;
  *v16 = 0x8000000000000000;
  sub_1A93ECA58(v13, v4, isUniquelyReferenced_nonNull_native);

  *v16 = v21;
  return v14(v20, 0);
}

uint64_t sub_1A93F0E14()
{
  v1 = *(v0 + 16);

  sub_1A9378138((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A93F0E54()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DFA2C(v3, v2, v0 + 24);
}

uint64_t sub_1A93F0F20()
{
  v0 = sub_1A9510DD0();
  swift_beginAccess();
  v1 = v0[1];
  qword_1EB3A7920 = *v0;
  *algn_1EB3A7928 = v1;
}

uint64_t sub_1A93F0F70()
{
  sub_1A957CF08();
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1EB3A7920;

  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  return v0;
}

uint64_t sub_1A93F1030()
{
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB3A7920;
  v1 = *algn_1EB3A7928;

  v2 = sub_1A938983C();
  v3 = sub_1A9547340();
  v5 = v4;
  v6 = sub_1A954735C();
  v8 = v7;
  v9 = sub_1A9547378();
  v11 = v10;
  sub_1A9547394();
  return MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v0, v1, v2, v3, v5, v6, v8, v9, &xmmword_1EB3A78D0, v11, &v13);
}

uint64_t static AXCatalogUpdater.updateCatalog()()
{
  *(v1 + 40) = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F1218, 0, 0);
}

uint64_t sub_1A93F1218()
{
  sub_1A93F1648();
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7920;
  v2 = *algn_1EB3A7928;
  v0[7] = qword_1EB3A7920;
  v0[8] = v2;
  sub_1A937829C(&qword_1EB386F68, &qword_1A958A7B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A95873F0;
  *(v3 + 32) = *sub_1A9459540();
  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(300, (v3 + 40));
  v0[3] = v3;
  sub_1A93F1694();
  sub_1A937829C(&qword_1EB386F70, &qword_1A958A7C0);
  sub_1A93F16E8();
  sub_1A957CE08();
  v0[4] = v0[2];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1A93F13B8;

  return static MAAsset.downloadCatalog(_:options:)(v1, v2, v0 + 4);
}

uint64_t sub_1A93F13B8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1A93CBF20;
  }

  else
  {
    v3 = sub_1A93F14CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93F14CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1A957CF08();

  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v5 = sub_1A957C1C8();

  notify_post((v5 + 32));

  v6 = sub_1A957C688();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_1A93C4B70(0, 0, v3, &unk_1A958A7D0, v7);

  v8 = v0[1];

  return v8();
}

unint64_t sub_1A93F1648()
{
  result = qword_1EB385EA8;
  if (!qword_1EB385EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB385EA8);
  }

  return result;
}

unint64_t sub_1A93F1694()
{
  result = qword_1EB386038;
  if (!qword_1EB386038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386038);
  }

  return result;
}

unint64_t sub_1A93F16E8()
{
  result = qword_1EB385F90;
  if (!qword_1EB385F90)
  {
    sub_1A93A7B68(&qword_1EB386F70, &qword_1A958A7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F90);
  }

  return result;
}

uint64_t sub_1A93F174C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return sub_1A93F3C3C();
}

uint64_t sub_1A93F17EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A93F174C();
}

uint64_t static AXCatalogUpdater.downloadSampleAsset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A93F3C3C();
}

uint64_t static AXCatalogUpdater.sampleUrl()(uint64_t a1)
{
  *(v1 + 416) = a1;
  v2 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  *(v1 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F19B4, 0, 0);
}

uint64_t sub_1A93F19B4()
{
  if (qword_1EB38A088 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB3A78D0;
  *(v0 + 16) = xmmword_1EB3A78D0;
  v3 = xmmword_1EB3A7900;
  v2 = xmmword_1EB3A7910;
  v4 = xmmword_1EB3A78F0;
  v5 = xmmword_1EB3A78E0;
  *(v0 + 32) = xmmword_1EB3A78E0;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 80) = v2;
  *(v0 + 96) = v1;
  *(v0 + 112) = v5;
  v6 = xmmword_1EB3A7900;
  *(v0 + 128) = xmmword_1EB3A78F0;
  *(v0 + 144) = v6;
  *(v0 + 160) = xmmword_1EB3A7910;
  sub_1A93F1120(v0 + 16, v0 + 176);
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_1A93F1ABC;

  return MobileAssetManager.sampleAsset()();
}

uint64_t sub_1A93F1ABC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v15 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {

    v5 = v3[6];
    v6 = v3[7];
    v7 = v3[8];
    v8 = v3[10];
    v3[19] = v3[9];
    v3[20] = v8;
    v3[17] = v6;
    v3[18] = v7;
    v3[16] = v5;
    sub_1A93F4788((v3 + 16));
    v9 = sub_1A93F1DE4;
  }

  else
  {
    v10 = v3[6];
    v11 = v3[7];
    v12 = v3[8];
    v13 = v3[10];
    v3[24] = v3[9];
    v3[25] = v13;
    v3[22] = v11;
    v3[23] = v12;
    v3[21] = v10;
    sub_1A93F4788((v3 + 21));
    v9 = sub_1A93F1C18;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A93F1C18()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    [*(v0 + 440) refreshState];
    if ([v1 state] == 2 || objc_msgSend(v1, sel_state) == 3)
    {
      v2 = [v1 getLocalUrl];
      if (v2)
      {
        v3 = *(v0 + 424);
        v4 = v2;
        sub_1A957AF98();

        v5 = 0;
      }

      else
      {
        v5 = 1;
      }

      v9 = *(v0 + 416);
      v8 = *(v0 + 424);

      v10 = sub_1A957AFD8();
      (*(*(v10 - 8) + 56))(v8, v5, 1, v10);
      sub_1A93F47DC(v8, v9);
    }

    else
    {
      v11 = *(v0 + 416);
      v12 = sub_1A957AFD8();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    }
  }

  else
  {
    v6 = *(v0 + 416);
    v7 = sub_1A957AFD8();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  v13 = *(v0 + 424);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A93F1DE4()
{
  v1 = v0[52];
  v2 = sub_1A957AFD8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[53];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93F1E88()
{
  v1 = sub_1A94A8B3C();
  swift_beginAccess();
  v2 = *v1;
  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;

  sub_1A957CF08();

  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1EB3A7920;
  v14[0] = xmmword_1EB3A7920;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v4 = v14[0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  (*(*v2 + 120))(v4, *(&v4 + 1), &unk_1A958A800, v5);

  swift_beginAccess();
  v6 = *v1;

  sub_1A957CF08();

  *(&v14[0] + 1) = *(&v3 + 1);
  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v13 = 0;
  *&v14[0] = 0x40D5180000000000;
  v15[1] = 0;
  v12 = *sub_1A953C330();
  v11 = 0;
  v7 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(v3, *(&v3 + 1), v14, &v12, &v11, v9);
  (*(*v6 + 128))(v9, v7);

  v14[2] = v9[2];
  *v15 = *v10;
  *&v15[9] = *&v10[9];
  v14[0] = v9[0];
  v14[1] = v9[1];
  return sub_1A93F03AC(v14);
}

uint64_t sub_1A93F2100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93F2190;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A93F2190()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93F22C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1A93F22C4()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1A93F2328(unint64_t *a1)
{
  v95[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v93 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v85 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v85 - v16;
  v18 = sub_1A957BC88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v85 - v30;
  v32 = a1[1];
  v94 = *a1;
  if (TTSIsInternalBuild())
  {
    v92 = v19;
    if (qword_1EB38A090 != -1)
    {
      swift_once();
    }

    v88 = *(&xmmword_1EB3A7920 + 1);
    v89 = xmmword_1EB3A7920;
    v33 = sub_1A957C0C8();
    v95[0] = 0;
    v34 = ASServerURLForAssetType();

    v35 = v95[0];
    v36 = v24;
    if (v34)
    {
      sub_1A957AF98();
      v37 = v35;

      v38 = sub_1A957AFD8();
      (*(*(v38 - 8) + 56))(v14, 0, 1, v38);
    }

    else
    {
      v44 = sub_1A957AFD8();
      (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
      v45 = v35;
    }

    v46 = v10;
    sub_1A93F47DC(v14, v17);
    v87 = v36;
    if (v35)
    {

      v47 = sub_1A93772F8();
      (*(v92 + 16))(v28, v47, v18);
      v48 = sub_1A957BC68();
      v49 = sub_1A957CA78();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v35;
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1A9324000, v48, v49, "Failed to retrieve asset server url.", v51, 2u);
        v52 = v51;
        v35 = v50;
        MEMORY[0x1AC587CD0](v52, -1, -1);
      }

      (*(v92 + 8))(v28, v18);
    }

    v90 = v35;
    v86 = v18;
    v53 = 0xD00000000000001ELL;
    v54 = 0x80000001A95C1DE0;
    v55 = v94;
    if (v32)
    {
      v53 = v94;
      v54 = v32;
    }

    if (v32 == 1)
    {
      v56 = 0xD000000000000024;
    }

    else
    {
      v56 = v53;
    }

    v57 = v32;
    if (v32 == 1)
    {
      v58 = 0x80000001A95C1DB0;
    }

    else
    {
      v58 = v54;
    }

    v91 = v17;
    sub_1A9391BAC(v17, v46, &unk_1EB387B80, qword_1A9587740);
    v59 = sub_1A957AFD8();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    v62 = v61(v46, 1, v59);
    sub_1A93F48E0(v55, v57);
    if (v62 == 1)
    {
      sub_1A937B960(v46, &unk_1EB387B80, qword_1A9587740);
LABEL_24:
      v63 = v93;
      sub_1A957AFB8();

      if (v61(v63, 1, v59) == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = sub_1A957AF58();
        (*(v60 + 8))(v63, v59);
      }

      v72 = v91;
      v73 = sub_1A957C0C8();
      ASSetAssetServerURLForAssetType();

      v74 = v72;
LABEL_36:
      sub_1A937B960(v74, &unk_1EB387B80, qword_1A9587740);

      goto LABEL_37;
    }

    v65 = v87;
    v66 = sub_1A957AF18();
    v68 = v67;
    (*(v60 + 8))(v46, v59);
    if (v66 == v56 && v58 == v68)
    {
      v69 = v56;

      v70 = v58;
      v71 = v65;
    }

    else
    {
      v69 = v56;
      v70 = v58;
      v75 = sub_1A957D3E8();

      v71 = v65;
      if ((v75 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v76 = sub_1A93772F8();
    v77 = v92;
    v78 = v86;
    (*(v92 + 16))(v71, v76, v86);

    v79 = sub_1A957BC68();
    v80 = sub_1A957CA58();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v95[0] = v82;
      *v81 = 136315138;
      v83 = sub_1A937A5C0(v69, v70, v95);

      *(v81 + 4) = v83;
      _os_log_impl(&dword_1A9324000, v79, v80, "Asset server url already set to %s", v81, 0xCu);
      sub_1A9378138(v82);
      MEMORY[0x1AC587CD0](v82, -1, -1);
      MEMORY[0x1AC587CD0](v81, -1, -1);
    }

    else
    {
    }

    (*(v77 + 8))(v71, v78);
    v74 = v91;
    goto LABEL_36;
  }

  v39 = sub_1A93772F8();
  (*(v19 + 16))(v31, v39, v18);
  v40 = sub_1A957BC68();
  v41 = sub_1A957CA78();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v18;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1A9324000, v40, v41, "Catalog server update is only supported in internal builds.", v43, 2u);
    MEMORY[0x1AC587CD0](v43, -1, -1);

    (*(v19 + 8))(v31, v42);
  }

  else
  {

    (*(v19 + 8))(v31, v18);
  }

LABEL_37:
  v84 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A93F2B70()
{
  v1 = 0x696C69626176696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1A93F2BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A93F4F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A93F2C00(uint64_t a1)
{
  v2 = sub_1A93F48F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2C3C(uint64_t a1)
{
  v2 = sub_1A93F48F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1A93F2D04(uint64_t a1)
{
  v2 = sub_1A93F4948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2D40(uint64_t a1)
{
  v2 = sub_1A93F4948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2D7C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A93F2DAC(uint64_t a1)
{
  v2 = sub_1A93F499C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2DE8(uint64_t a1)
{
  v2 = sub_1A93F499C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2E24(uint64_t a1)
{
  v2 = sub_1A93F49F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2E60(uint64_t a1)
{
  v2 = sub_1A93F49F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CatalogServer.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB386F78, &qword_1A958A808);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v34 = &v28 - v6;
  v7 = sub_1A937829C(&qword_1EB386F80, &qword_1A958A810);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v31 = &v28 - v10;
  v11 = sub_1A937829C(&qword_1EB386F88, &qword_1A958A818);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - v14;
  v16 = sub_1A937829C(&qword_1EB386F90, &qword_1A958A820);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v28 - v20;
  v22 = v1[1];
  v28 = *v1;
  v23 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A93F48F4();
  sub_1A957D598();
  if (!v22)
  {
    v37 = 0;
    sub_1A93F49F0();
    sub_1A957D288();
    (*(v29 + 8))(v15, v30);
    return (*(v17 + 8))(v21, v16);
  }

  if (v22 == 1)
  {
    v38 = 1;
    sub_1A93F499C();
    v24 = v31;
    sub_1A957D288();
    (*(v32 + 8))(v24, v33);
    return (*(v17 + 8))(v21, v16);
  }

  v39 = 2;
  sub_1A93F4948();
  v26 = v34;
  sub_1A957D288();
  v27 = v36;
  sub_1A957D2E8();
  (*(v35 + 8))(v26, v27);
  return (*(v17 + 8))(v21, v16);
}

uint64_t CatalogServer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v49 = sub_1A937829C(&qword_1EB386F98, &qword_1A958A828);
  v52 = *(v49 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49, v4);
  v54 = &v47 - v5;
  v6 = sub_1A937829C(&qword_1EB386FA0, &qword_1A958A830);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v47 - v10;
  v12 = sub_1A937829C(&qword_1EB386FA8, &qword_1A958A838);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v47 - v15;
  v17 = sub_1A937829C(&qword_1EB386FB0, &qword_1A958A840);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v47 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v56 = a1;
  sub_1A93780F4(a1, v23);
  sub_1A93F48F4();
  v25 = v55;
  sub_1A957D588();
  if (!v25)
  {
    v47 = 0;
    v55 = v18;
    v26 = sub_1A957D268();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
    {
      v30 = sub_1A957CF58();
      swift_allocError();
      v31 = v17;
      v33 = v32;
      v34 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v33 = &type metadata for CatalogServer;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v55 + 8))(v22, v31);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_1A9378138(v56);
    }

    if (!*(v26 + 32))
    {
      v57 = 0;
      sub_1A93F49F0();
      v36 = v22;
      v42 = v47;
      sub_1A957D178();
      if (!v42)
      {
        (*(v48 + 8))(v16, v12);
        (*(v55 + 8))(v22, v17);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = v53;
        goto LABEL_22;
      }

      v38 = v55;
      goto LABEL_17;
    }

    if (v28 == 1)
    {
      v58 = 1;
      sub_1A93F499C();
      v36 = v22;
      v37 = v47;
      sub_1A957D178();
      v38 = v55;
      if (!v37)
      {
        (*(v51 + 8))(v11, v50);
        (*(v38 + 8))(v22, v17);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 1;
        v41 = v53;
LABEL_22:
        *v41 = v39;
        v41[1] = v40;
        return sub_1A9378138(v56);
      }

LABEL_17:
      (*(v38 + 8))(v36, v17);
      goto LABEL_9;
    }

    v59 = 2;
    sub_1A93F4948();
    v43 = v47;
    sub_1A957D178();
    v41 = v53;
    v44 = v55;
    if (!v43)
    {
      v51 = v17;
      v45 = v49;
      v39 = sub_1A957D1E8();
      v40 = v46;
      (*(v52 + 8))(v54, v45);
      (*(v44 + 8))(v22, v51);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    (*(v55 + 8))(v22, v17);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v56);
}

uint64_t static VoiceDatabaseClient.sampleUrl.getter()
{
  v0 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v20 - v4;
  v6 = sub_1A937829C(&qword_1EB386FB8, &qword_1A958A848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v20 - v14;
  v16 = sub_1A9511040();
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1A957BA78();

  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  sub_1A957C6D8();
  (*(v1 + 8))(v5, v0);
  (*(v7 + 16))(v12, v15, v6);
  sub_1A957B938();
  return (*(v7 + 8))(v15, v6);
}

uint64_t sub_1A93F3B04(uint64_t a1)
{
  type metadata accessor for AXCatalogUpdater();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return static AXCatalogUpdater.sampleUrl()(a1);
}

uint64_t sub_1A93F3BA0(uint64_t a1)
{
  type metadata accessor for AXCatalogUpdater();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return static AXCatalogUpdater.sampleUrl()(a1);
}

uint64_t sub_1A93F3C3C()
{
  v1 = sub_1A957BC88();
  v0[53] = v1;
  v2 = *(v1 - 8);
  v0[54] = v2;
  v3 = *(v2 + 64) + 15;
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F3D10, 0, 0);
}

uint64_t sub_1A93F3D10()
{
  if (qword_1EB38A088 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB3A78D0;
  *(v0 + 16) = xmmword_1EB3A78D0;
  v3 = xmmword_1EB3A7900;
  v2 = xmmword_1EB3A7910;
  v4 = xmmword_1EB3A78F0;
  v5 = xmmword_1EB3A78E0;
  *(v0 + 32) = xmmword_1EB3A78E0;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 80) = v2;
  *(v0 + 96) = v1;
  *(v0 + 112) = v5;
  v6 = xmmword_1EB3A7900;
  *(v0 + 128) = xmmword_1EB3A78F0;
  *(v0 + 144) = v6;
  *(v0 + 160) = xmmword_1EB3A7910;
  sub_1A93F1120(v0 + 16, v0 + 176);
  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  *v7 = v0;
  v7[1] = sub_1A93F3E18;

  return MobileAssetManager.sampleAsset()();
}

uint64_t sub_1A93F3E18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v11 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 112);
  v7 = *(v3 + 128);
  v8 = *(v3 + 160);
  if (v1)
  {
    *(v3 + 304) = *(v3 + 144);
    *(v3 + 320) = v8;
    *(v3 + 272) = v6;
    *(v3 + 288) = v7;
    *(v3 + 256) = v5;
    sub_1A93F4788(v3 + 256);
    v9 = sub_1A93F44E0;
  }

  else
  {
    *(v3 + 384) = *(v3 + 144);
    *(v3 + 400) = v8;
    *(v3 + 352) = v6;
    *(v3 + 368) = v7;
    *(v3 + 336) = v5;
    sub_1A93F4788(v3 + 336);
    v9 = sub_1A93F3F6C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A93F3F6C()
{
  v1 = *(v0 + 472);
  if (!v1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    v19 = *(v0 + 432);
    v18 = *(v0 + 440);
    v20 = *(v0 + 424);
    v21 = sub_1A93772F8();
    (*(v19 + 16))(v18, v21, v20);
    v22 = sub_1A957BC68();
    v23 = sub_1A957CA78();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1A9324000, v22, v23, "Failed to download sample asset.", v24, 2u);
      MEMORY[0x1AC587CD0](v24, -1, -1);
    }

    v26 = *(v0 + 448);
    v25 = *(v0 + 456);
    v28 = *(v0 + 432);
    v27 = *(v0 + 440);
    v29 = *(v0 + 424);

    (*(v28 + 8))(v27, v29);
    swift_willThrow();

    v16 = *(v0 + 8);
    goto LABEL_10;
  }

  [*(v0 + 472) refreshState];
  if ([v1 state] == 2 || objc_msgSend(v1, sel_state) == 3)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    v5 = sub_1A93772F8();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_1A957BC68();
    v7 = sub_1A957CA78();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 448);
    v10 = *(v0 + 424);
    v11 = *(v0 + 432);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A9324000, v6, v7, "Sample asset already installed.", v12, 2u);
      MEMORY[0x1AC587CD0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v15 = *(v0 + 440);

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v31 = *(v0 + 456);
  v32 = *(v0 + 424);
  v33 = *(v0 + 432);
  v34 = sub_1A93772F8();
  (*(v33 + 16))(v31, v34, v32);
  v35 = sub_1A957BC68();
  v36 = sub_1A957CA78();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1A9324000, v35, v36, "Downloading samples asset...", v37, 2u);
    MEMORY[0x1AC587CD0](v37, -1, -1);
  }

  v38 = *(v0 + 456);
  v39 = *(v0 + 424);
  v40 = *(v0 + 432);

  v41 = (*(v40 + 8))(v38, v39);
  sub_1A954A228(v41);
  v42 = swift_task_alloc();
  *(v0 + 488) = v42;
  *v42 = v0;
  v42[1] = sub_1A93F434C;

  return MAAsset.download(options:)((v0 + 416));
}

uint64_t sub_1A93F434C()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1A93F4630;
  }

  else
  {
    v3 = sub_1A93F4460;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93F4460()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A93F44E0()
{
  v1 = v0[60];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = sub_1A93772F8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1A957BC68();
  v7 = sub_1A957CA78();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A9324000, v6, v7, "Failed to download sample asset.", v8, 2u);
    MEMORY[0x1AC587CD0](v8, -1, -1);
  }

  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[53];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A93F4630()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = sub_1A93772F8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1A957BC68();
  v7 = sub_1A957CA78();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A9324000, v6, v7, "Failed to download sample asset.", v8, 2u);
    MEMORY[0x1AC587CD0](v8, -1, -1);
  }

  v10 = *(v0 + 448);
  v9 = *(v0 + 456);
  v12 = *(v0 + 432);
  v11 = *(v0 + 440);
  v13 = *(v0 + 424);

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A93F47DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F484C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A93F2100();
}

uint64_t sub_1A93F48E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1A93F48F4()
{
  result = qword_1EB38DE20;
  if (!qword_1EB38DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE20);
  }

  return result;
}

unint64_t sub_1A93F4948()
{
  result = qword_1EB3947A8;
  if (!qword_1EB3947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3947A8);
  }

  return result;
}

unint64_t sub_1A93F499C()
{
  result = qword_1EB3947B0;
  if (!qword_1EB3947B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3947B0);
  }

  return result;
}

unint64_t sub_1A93F49F0()
{
  result = qword_1EB38D968[0];
  if (!qword_1EB38D968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D968);
  }

  return result;
}

uint64_t sub_1A93F4A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A93F4A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A93F4AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A93F4B48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A93F4BBC()
{
  result = qword_1EB3947C0[0];
  if (!qword_1EB3947C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3947C0);
  }

  return result;
}