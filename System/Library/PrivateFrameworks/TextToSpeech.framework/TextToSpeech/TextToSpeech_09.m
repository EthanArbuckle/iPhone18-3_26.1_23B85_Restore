unint64_t sub_1A93F4C14()
{
  result = qword_1EB3948D0[0];
  if (!qword_1EB3948D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3948D0);
  }

  return result;
}

unint64_t sub_1A93F4C6C()
{
  result = qword_1EB38D950;
  if (!qword_1EB38D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D950);
  }

  return result;
}

unint64_t sub_1A93F4CC4()
{
  result = qword_1EB38D958;
  if (!qword_1EB38D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D958);
  }

  return result;
}

unint64_t sub_1A93F4D1C()
{
  result = qword_1EB38DAF0;
  if (!qword_1EB38DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DAF0);
  }

  return result;
}

unint64_t sub_1A93F4D74()
{
  result = qword_1EB38DAF8[0];
  if (!qword_1EB38DAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38DAF8);
  }

  return result;
}

unint64_t sub_1A93F4DCC()
{
  result = qword_1EB38DC80;
  if (!qword_1EB38DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DC80);
  }

  return result;
}

unint64_t sub_1A93F4E24()
{
  result = qword_1EB38DC88[0];
  if (!qword_1EB38DC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38DC88);
  }

  return result;
}

unint64_t sub_1A93F4E7C()
{
  result = qword_1EB38DE10;
  if (!qword_1EB38DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE10);
  }

  return result;
}

unint64_t sub_1A93F4ED4()
{
  result = qword_1EB38DE18;
  if (!qword_1EB38DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE18);
  }

  return result;
}

uint64_t sub_1A93F4F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C69626176696CLL && a2 == 0xEA00000000007974 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
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

uint64_t sub_1A93F5050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[3] = &type metadata for PlainStringMarkup;
  v10[4] = &off_1F1CF4998;

  v4 = sub_1A93775FC();
  v5 = sub_1A93ADEC0();
  v7 = v6;
  v8 = sub_1A93775FC();
  return sub_1A94A50A4(v10, 1, a1, v4 & 1, v5, v7, v8 & 1, a2);
}

uint64_t sub_1A93F513C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v17 - v9;
  sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
  swift_allocObject();
  v11 = sub_1A957BC38();
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v14 = sub_1A93F81F8(&qword_1EB386FC0, v13, type metadata accessor for AudioRenderer);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = v11;
  swift_retain_n();

  sub_1A938A404(0, 0, v10, &unk_1A958AD58, v15);

  return v11;
}

uint64_t sub_1A93F52E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v9 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v10 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v7[16] = v10;
  v11 = *(v10 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F53E8, a4, 0);
}

uint64_t sub_1A93F53E8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v1 + 112);

    v6 = sub_1A937A490(v4, v3);
    if (v7)
    {
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = (*(v2 + 56) + 16 * v6);
      v11 = *v10;
      *(v0 + 176) = *v10;
      *(v0 + 184) = v10[1];

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      sub_1A957C748();
      swift_beginAccess();

      sub_1A93F6188(0, 0, v9, v8);
      swift_endAccess();
      v12 = *(v11 + 16);
      *(v0 + 192) = v12;
      if (v12)
      {
        v13 = *(v0 + 128);
        v14 = *(v13 + 80);
        *(v0 + 256) = v14;
        v15 = (v14 + 32) & ~v14;
        *(v0 + 200) = *(v13 + 72);
        *(v0 + 208) = 0;
        v16 = *(v0 + 176);
        v17 = *(v0 + 144);

        sub_1A93F8058(v16 + v15, v17);
        v18 = *(MEMORY[0x1E698D2F0] + 4);
        v19 = swift_task_alloc();
        *(v0 + 216) = v19;
        *v19 = v0;
        v19[1] = sub_1A93F5968;
        v20 = *(v0 + 144);
        v21 = *(v0 + 112);

        return MEMORY[0x1EEDEE810](v20);
      }

      else
      {
        v27 = *(v0 + 176);
        v26 = *(v0 + 184);
        v28 = *(v0 + 112);
        v29 = *(v0 + 120);
        v31 = *(v0 + 96);
        v30 = *(v0 + 104);
        v32 = *(v0 + 88);
        sub_1A957BC18();
        v33 = sub_1A957C688();
        (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
        v35 = sub_1A93F81F8(&qword_1EB386FC0, v34, type metadata accessor for AudioRenderer);
        v36 = swift_allocObject();
        v36[2] = v32;
        v36[3] = v35;
        v36[4] = v32;
        v36[5] = v31;
        v36[6] = v30;
        swift_retain_n();

        v37 = sub_1A93C4B70(0, 0, v29, &unk_1A958AF58, v36);
        swift_beginAccess();

        v38 = *(v32 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v32 + 112);
        *(v32 + 112) = 0x8000000000000000;
        sub_1A93F76B8(v27, v37, v31, v30, isUniquelyReferenced_nonNull_native);

        *(v32 + 112) = v45;
        swift_endAccess();

        v41 = *(v0 + 136);
        v40 = *(v0 + 144);
        v42 = *(v0 + 120);

        v43 = *(v0 + 8);

        return v43();
      }
    }
  }

  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_1A93F5834;
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v25 = *(v0 + 88);

  return sub_1A93F6298(v24, v23);
}

uint64_t sub_1A93F5834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_1A93F60FC;
  }

  else
  {
    v8 = sub_1A93F5D70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A93F5968()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 88);
  v5 = *v0;

  sub_1A93D0B8C(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A93F5A94, v3, 0);
}

uint64_t sub_1A93F5A94()
{
  v1 = *(v0 + 208) + 1;
  if (v1 == *(v0 + 192))
  {
    v2 = *(v0 + 176);

    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 88);
    sub_1A957BC18();
    v10 = sub_1A957C688();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v12 = sub_1A93F81F8(&qword_1EB386FC0, v11, type metadata accessor for AudioRenderer);
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    v13[5] = v8;
    v13[6] = v7;
    swift_retain_n();

    v14 = sub_1A93C4B70(0, 0, v6, &unk_1A958AF58, v13);
    swift_beginAccess();

    v15 = *(v9 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v9 + 112);
    *(v9 + 112) = 0x8000000000000000;
    sub_1A93F76B8(v4, v14, v8, v7, isUniquelyReferenced_nonNull_native);

    *(v9 + 112) = v26;
    swift_endAccess();

    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 120);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 208) = v1;
    sub_1A93F8058(*(v0 + 176) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 200) * v1, *(v0 + 144));
    v22 = *(MEMORY[0x1E698D2F0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 216) = v23;
    *v23 = v0;
    v23[1] = sub_1A93F5968;
    v24 = *(v0 + 144);
    v25 = *(v0 + 112);

    return MEMORY[0x1EEDEE810](v24);
  }
}

uint64_t sub_1A93F5D70()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v4 + 80);
    *(v0 + 260) = v5;
    *(v0 + 232) = *(v4 + 72);
    *(v0 + 240) = 0;
    sub_1A93F8058(v1 + ((v5 + 32) & ~v5), v3);
    v6 = *(MEMORY[0x1E698D2F0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 248) = v7;
    *v7 = v0;
    v7[1] = sub_1A93F5E9C;
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);

    return MEMORY[0x1EEDEE810](v8);
  }

  else
  {

    v10 = *(v0 + 112);
    sub_1A957BC18();
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1A93F5E9C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 88);
  v5 = *v0;

  sub_1A93D0B8C(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A93F5FC8, v3, 0);
}

uint64_t sub_1A93F5FC8()
{
  v1 = *(v0 + 240) + 1;
  if (v1 == *(v0 + 224))
  {
    v2 = *(v0 + 160);

    v3 = *(v0 + 112);
    sub_1A957BC18();
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 120);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 240) = v1;
    sub_1A93F8058(*(v0 + 160) + ((*(v0 + 260) + 32) & ~*(v0 + 260)) + *(v0 + 232) * v1, *(v0 + 136));
    v9 = *(MEMORY[0x1E698D2F0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 248) = v10;
    *v10 = v0;
    v10[1] = sub_1A93F5E9C;
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);

    return MEMORY[0x1EEDEE810](v11);
  }
}

uint64_t sub_1A93F60FC()
{
  v1 = v0[21];
  v2 = v0[14];
  sub_1A957BBF8();

  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A93F6188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    sub_1A93F76B8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v23;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1A937A490(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v24 = *v5;
      if (!v17)
      {
        sub_1A93F7848();
        v18 = v24;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = (*(v18 + 56) + 16 * v14);
      v22 = *v20;
      v21 = v20[1];

      result = sub_1A93CEB8C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1A93F6298(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = *(*(sub_1A957B0B8() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = sub_1A957AFD8();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93F6464, v2, 0);
}

uint64_t sub_1A93F6464()
{
  v72 = *MEMORY[0x1E69E9840];
  v1 = v0[17];
  v2 = v0[6];
  v3 = v0[7];
  sub_1A957AF38();
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1A957C0C8();
  LODWORD(v2) = [v4 fileExistsAtPath_];

  if (!v2)
  {
    v9 = v0[6];
    v8 = v0[7];
    sub_1A93F7DA8();
    swift_allocError();
    *v10 = v9;
    v10[1] = v8;
    v10[2] = 0;
    swift_willThrow();

LABEL_4:
    v11 = v0[16];
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[9];
    v14 = v0[10];
    (*(v0[15] + 8))(v0[17], v0[14]);

    v16 = v0[1];
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  v6 = v0[16];
  (*(v0[15] + 16))(v6, v0[17], v0[14]);
  v7 = objc_allocWithZone(MEMORY[0x1E6958410]);
  v19 = sub_1A93F72A8(v6);
  v20 = [v19 processingFormat];
  v21 = [objc_allocWithZone(MEMORY[0x1E6958438]) initWithPCMFormat:v20 frameCapacity:4096];
  if (!v21)
  {
    sub_1A93F7DA8();
    swift_allocError();
    *v41 = 0;
    v41[1] = 0;
    v41[2] = 0xC000000000000000;
    swift_willThrow();

    goto LABEL_4;
  }

  v22 = v21;
  v68 = v20;
  if ([v19 length] >= 1)
  {
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    v69 = v0[11];
    v25 = &selRef_taskRequestForIdentifier_;
    while (1)
    {
      [v19 setFramePosition_];
      v0[5] = 0;
      v26 = [v19 readIntoBuffer:v22 error:v0 + 5];
      v27 = v0[5];
      if (!v26)
      {
        v56 = v0[6];
        v55 = v0[7];
        v57 = v27;

        v58 = sub_1A957AEF8();

        swift_willThrow();
        sub_1A93F7DA8();
        swift_allocError();
        *v59 = v56;
        v59[1] = v55;
        v59[2] = v58 | 0x8000000000000000;
        swift_willThrow();

        v60 = v58;

        goto LABEL_27;
      }

      v28 = v27;
      if (![v22 v25[363]])
      {
        goto LABEL_22;
      }

      v29 = [objc_allocWithZone(TTSAudioBuffer) initWithAVBuffer_];
      if (!v29)
      {
        break;
      }

      if (HIDWORD(v23))
      {
        __break(1u);
      }

      v30 = v19;
      v31 = v25;
      v33 = v0[12];
      v32 = v0[13];
      v34 = v0[10];
      v35 = v29;
      sub_1A93D1228();
      sub_1A93C77FC(v34, v23, v35, MEMORY[0x1E69E7CC0], v32);
      sub_1A93F8058(v32, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1A93F79D4(0, v24[2] + 1, 1, v24);
      }

      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        v24 = sub_1A93F79D4(v36 > 1, v37 + 1, 1, v24);
      }

      v38 = v0[12];
      v39 = v0[13];
      v24[2] = v37 + 1;
      sub_1A93F80BC(v38, v24 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v37);
      v25 = v31;
      v40 = [v22 v31 + 350];

      sub_1A93D0B8C(v39);
      v23 += v40;
      v19 = v30;
      if (v23 >= [v30 length])
      {
        goto LABEL_22;
      }
    }

    sub_1A93F7DA8();
    swift_allocError();
    *v61 = xmmword_1A958AD30;
    *(v61 + 16) = 0xC000000000000000;
    swift_willThrow();

LABEL_27:
    goto LABEL_4;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v64 = v0[17];
  v65 = v0[16];
  v62 = v0[15];
  v63 = v0[14];
  v66 = v0[13];
  v67 = v0[12];
  v42 = v0[9];
  v70 = v0[10];
  v44 = v0[7];
  v43 = v0[8];
  v45 = v0[6];
  v46 = sub_1A957C688();
  (*(*(v46 - 8) + 56))(v42, 1, 1, v46);
  v48 = sub_1A93F81F8(&qword_1EB386FC0, v47, type metadata accessor for AudioRenderer);
  v49 = swift_allocObject();
  v49[2] = v43;
  v49[3] = v48;
  v49[4] = v43;
  v49[5] = v45;
  v49[6] = v44;
  swift_retain_n();

  v50 = sub_1A93C4B70(0, 0, v42, &unk_1A958AF38, v49);
  swift_beginAccess();

  v51 = *(v43 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v43 + 112);
  *(v43 + 112) = 0x8000000000000000;
  sub_1A93F76B8(v24, v50, v45, v44, isUniquelyReferenced_nonNull_native);

  *(v43 + 112) = v71;
  swift_endAccess();

  (*(v62 + 8))(v64, v63);

  v53 = v0[1];
  v54 = *MEMORY[0x1E69E9840];

  return v53(v24);
}

uint64_t sub_1A93F6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_1A957D018();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F6CA4, a4, 0);
}

uint64_t sub_1A93F6CA4()
{
  v1 = *(v0 + 80);
  sub_1A957D468();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1A93F6D70;
  v3 = *(v0 + 80);

  return sub_1A93CC26C(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_1A93F6D70()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 40);
  if (v0)
  {
    v9 = sub_1A93F6FAC;
  }

  else
  {
    v9 = sub_1A93F6EF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1A93F6EF8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  swift_beginAccess();

  sub_1A93F6188(0, 0, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A93F6FAC()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1A93F7010()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A93F7048()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_1A93F7BAC(MEMORY[0x1E69E7CC0]);
  *(v0 + 120) = 60000;
  return v0;
}

unint64_t sub_1A93F7094(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_1A957CF08();

      v8 = 0xD00000000000001ELL;
      MEMORY[0x1AC585140](a1, a2);
      return v8;
    }

    sub_1A957CF08();

    v8 = 0xD000000000000020;
    MEMORY[0x1AC585140](a1, a2);
    MEMORY[0x1AC585140](0x3A726F727245202ELL, 0xE900000000000020);
    swift_getErrorValue();
LABEL_7:
    v6 = sub_1A957D478();
    MEMORY[0x1AC585140](v6);

    return v8;
  }

  if (v5 == 2)
  {
    sub_1A957CF08();

    v8 = 0xD000000000000025;
    MEMORY[0x1AC585140](a1, a2);
    MEMORY[0x1AC585140](0x3A726F727245202ELL, 0xE900000000000020);
    swift_getErrorValue();
    goto LABEL_7;
  }

  if (a2 | a1 || a3 != 0xC000000000000000)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD000000000000028;
  }
}

id sub_1A93F72A8(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A957AF58();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1A957AFD8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1A957AEF8();

    swift_willThrow();
    v11 = sub_1A957AFD8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A93F73F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
  v36 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A93F76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A937A490(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A93F73F4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1A937A490(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A93F7848();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v27 = *v25;
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

void *sub_1A93F7848()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

size_t sub_1A93F79D4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v10 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
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
  v15 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
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

unint64_t sub_1A93F7BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1A937A490(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1A93F7CF8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A93F52E0(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1A93F7DA8()
{
  result = qword_1EB386FC8;
  if (!qword_1EB386FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386FC8);
  }

  return result;
}

uint64_t sub_1A93F7DFC(uint64_t a1)
{
  v1 = *(a1 + 16) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A93F7E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A93F7E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A93F7EDC(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = xmmword_1A958AD40;
  }

  return result;
}

uint64_t sub_1A93F7F1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A93F7F64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A93F7FB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A93F6BDC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A93F8058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F80BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F8120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F8190(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93F81F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A93F8240()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A93F8288()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A93F6BDC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A93F8330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93F837C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t sub_1A93F83E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A93F8430(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t StringStream.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t StringStream.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A93F8510(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 104))(v7);
  MEMORY[0x1AC585140](a1, a2);
  return v5(v7, 0);
}

uint64_t StringStream.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t StringStream.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1A93F8778()
{
  result = qword_1ED96FE90;
  if (!qword_1ED96FE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FE90);
  }

  return result;
}

uint64_t sub_1A93F87C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1A93F881C(a1, a2, a3);
  return v9;
}

uint64_t sub_1A93F881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v50 = a1;
  v51 = a2;
  v61 = sub_1A937829C(&qword_1EB386FF0, &qword_1A958AFE8);
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61, v6);
  v58 = &v47 - v7;
  v62 = sub_1A937829C(&qword_1EB386FE0, &unk_1A958AFD0);
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62, v9);
  v57 = &v47 - v10;
  v11 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v48 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v54 = &v47 - v20;
  v55 = sub_1A957CAD8();
  v21 = *(v55 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v55, v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A957CAC8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v29 = sub_1A957BF48();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v53 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue;
  v52 = sub_1A93F8778();
  sub_1A957BF38();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1A93FA040(&qword_1ED96FE98, MEMORY[0x1E69E8030]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A93B744C(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  v32 = v54;
  sub_1A957CE08();
  (*(v21 + 104))(v25, *MEMORY[0x1E69E8090], v55);
  *(v3 + v53) = sub_1A957CB08();
  v33 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  v34 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v36(v4 + v33, 1, 1, v34);
  *(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 1;
  v36(v32, 1, 1, v34);
  v63 = v32;
  sub_1A937829C(&qword_1EB387000, &qword_1A958AFF8);
  (*(v59 + 104))(v58, *MEMORY[0x1E69E8650], v61);
  v37 = v57;
  v38 = v56;
  sub_1A957C718();
  (*(v60 + 32))(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_stream, v37, v62);
  sub_1A93F8F9C(v32, v38);
  result = (*(v35 + 48))(v38, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v48;
    (*(v35 + 32))(v48, v38, v34);
    v36(v40, 0, 1, v34);
    swift_beginAccess();
    sub_1A93F900C(v40, v4 + v33);
    swift_endAccess();
    v41 = objc_allocWithZone(MEMORY[0x1E6977A90]);
    v42 = [v41 initWithUnit_];
    *(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizer) = v42;
    v43 = (v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string);
    v44 = v51;
    *v43 = v50;
    v43[1] = v44;
    v45 = v42;

    v46 = sub_1A957C0C8();

    [v45 setString_];

    sub_1A93F94E4();
    sub_1A937B960(v32, &qword_1EB386FF8, &qword_1A958AFF0);
    return v4;
  }

  return result;
}

uint64_t sub_1A93F8EC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A937B960(v3, &qword_1EB386FF8, &qword_1A958AFF0);
  v4 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_1A93F8F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F900C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StreamingTokenizer.deinit()
{
  *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 0;
  v1 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue;
  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue);
  v9[4] = nullsub_23;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A93F921C;
  v9[3] = &unk_1F1CED6F8;
  v3 = _Block_copy(v9);
  v4 = v2;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_stream;
    v7 = sub_1A937829C(&qword_1EB386FE0, &unk_1A958AFD0);
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation, &qword_1EB386FF8, &qword_1A958AFF0);
    v8 = *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string + 8);

    return v0;
  }

  return result;
}

uint64_t StreamingTokenizer.__deallocating_deinit()
{
  StreamingTokenizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A93F929C()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19[-v6];
  v8 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v19[-v15];
  *(v1 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 0;
  v17 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  swift_beginAccess();
  sub_1A93F8F9C(v1 + v17, v16);
  if ((*(v3 + 48))(v16, 1, v2))
  {
    sub_1A937B960(v16, &qword_1EB386FF8, &qword_1A958AFF0);
  }

  else
  {
    (*(v3 + 16))(v7, v16, v2);
    sub_1A937B960(v16, &qword_1EB386FF8, &qword_1A958AFF0);
    sub_1A957C6C8();
    (*(v3 + 8))(v7, v2);
  }

  (*(v3 + 56))(v13, 1, 1, v2);
  swift_beginAccess();
  sub_1A93F900C(v13, v1 + v17);
  return swift_endAccess();
}

uint64_t sub_1A93F94E4()
{
  v1 = sub_1A957BF18();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A957BF48();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v15, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A93FA038;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF4BB8;
  v12 = _Block_copy(aBlock);

  sub_1A957BF28();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A93FA040(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v10, v5, v12);
  _Block_release(v12);
  (*(v16 + 8))(v5, v1);
  (*(v6 + 8))(v10, v15);
}

uint64_t sub_1A93F97D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A93F9830()
{
  v0 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v16[-v4];
  v6 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v16[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if ((*(result + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string + 8) & 0x2000000000000000) == 0)
    {
      v13 = *(result + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string);
    }

    *(result + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string);
    v14 = *(result + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizer);
    sub_1A957CA28();

    v15 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
    swift_beginAccess();
    sub_1A93F8F9C(v12 + v15, v10);
    if ((*(v1 + 48))(v10, 1, v0))
    {

      return sub_1A937B960(v10, &qword_1EB386FF8, &qword_1A958AFF0);
    }

    else
    {
      (*(v1 + 16))(v5, v10, v0);
      sub_1A937B960(v10, &qword_1EB386FF8, &qword_1A958AFF0);
      sub_1A957C6C8();

      return (*(v1 + 8))(v5, v0);
    }
  }

  return result;
}

uint64_t sub_1A93F9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v32 - v10;
  v12 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v32 - v15;
  v17 = sub_1A937829C(&qword_1EB387028, &qword_1A958B0B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v32 - v20;
  v22 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  swift_beginAccess();
  sub_1A93F8F9C(a3 + v22, v16);
  if ((*(v7 + 48))(v16, 1, v6))
  {
    sub_1A937B960(v16, &qword_1EB386FF8, &qword_1A958AFF0);
    v23 = 1;
  }

  else
  {
    (*(v7 + 16))(v11, v16, v6);
    sub_1A937B960(v16, &qword_1EB386FF8, &qword_1A958AFF0);
    v24 = *(a3 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string);
    v25 = *(a3 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string + 8);
    v26 = sub_1A957C3B8();
    v32[1] = a1;
    v32[2] = a2;
    v32[3] = v26;
    v32[4] = v27;
    v32[5] = v28;
    v32[6] = v29;
    sub_1A957C6B8();
    (*(v7 + 8))(v11, v6);
    v23 = 0;
  }

  v30 = sub_1A937829C(&qword_1EB387030, &unk_1A958B0B8);
  (*(*(v30 - 8) + 56))(v21, v23, 1, v30);
  sub_1A937B960(v21, &qword_1EB387028, &qword_1A958B0B0);
  return *(a3 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue);
}

uint64_t sub_1A93F9D84()
{
  (*(**v0 + 128))();
}

uint64_t type metadata accessor for StreamingTokenizer()
{
  result = qword_1EB394C90;
  if (!qword_1EB394C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A93F9E30()
{
  sub_1A93F9FD4(319, &qword_1EB387018, &qword_1EB387000, &qword_1A958AFF8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A93F9FD4(319, &qword_1EB387020, &qword_1EB386FE8, &qword_1A958AFE0, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A93F9FD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A93A7B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A93FA040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A93FA0D4(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1A93FA1E8(int a1)
{
  v3 = swift_beginAccess();
  v1[12] = a1;
  result = (*(*v1 + 144))(v3);
  if (result)
  {
    v5 = v1[12];
    result = (*(*v1 + 120))();
    if (v5 < result)
    {
      swift_continuation_throwingResume();
      return (*(*v1 + 152))(0);
    }
  }

  return result;
}

uint64_t (*sub_1A93FA2BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A93FA310;
}

uint64_t sub_1A93FA310(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = (*(**(a1 + 24) + 144))(result);
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = v5[12];
      result = (*(*v5 + 120))();
      if (v6 < result)
      {
        v7 = *(a1 + 24);
        swift_continuation_throwingResume();
        return (*(*v7 + 152))(0);
      }
    }
  }

  return result;
}

uint64_t sub_1A93FA3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  type metadata accessor for BufferedAudioQueue();
  v4[16] = sub_1A93FB68C(&qword_1EB387038, v5, type metadata accessor for BufferedAudioQueue);
  v7 = sub_1A957C5A8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A93FA4A4, v7, v6);
}

uint64_t sub_1A93FA4A4()
{
  v1 = v0[15];
  v2 = (*(*v1 + 168))();
  if (v2 >= (*(*v1 + 120))())
  {
    v25 = v0[16];
    v26 = swift_task_alloc();
    v0[19] = v26;
    *(v26 + 16) = *(v0 + 13);
    v27 = *(MEMORY[0x1E69E88F0] + 4);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    *(v5 + 8) = sub_1A93FA780;
    v7 = v0[15];
    v6 = &unk_1A958B0D0;
    v8 = sub_1A93FAD70;
    v12 = MEMORY[0x1E69E7CA8] + 8;
    v9 = v26;
    v10 = v1;
    v11 = v25;

    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v3 = v0[15];
  v4 = [v0[12] frameLength];
  v5 = (*(*v3 + 184))(v0 + 8);
  v13 = *v6 + v4;
  if (__CFADD__(*v6, v4))
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[12];
  v17 = v0[13];
  *v6 = v13;
  (v5)(v0 + 8, 0);
  v18 = *(v14 + 24);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v15;
  v19[4] = v14;
  v19[5] = v16;
  v0[6] = sub_1A93FB020;
  v0[7] = v19;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A93FB164;
  v0[5] = &unk_1F1CED720;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  v22 = v16;

  [v18 playBuffer:v22 completionHandler:v20];
  _Block_release(v20);
  v23 = v0[1];

  return v23();
}

void sub_1A93FA780()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[19];

    v6 = v2[17];
    v7 = v2[18];

    MEMORY[0x1EEE6DFA0](sub_1A93FA8B8, v6, v7);
  }
}

void (*sub_1A93FA8B8())(void *, void)
{
  v1 = v0[15];
  v2 = [v0[12] frameLength];
  result = (*(*v1 + 184))(v0 + 8);
  v5 = *v4 + v2;
  if (__CFADD__(*v4, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    *v4 = v5;
    result(v0 + 8, 0);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v7;
    v11[4] = v6;
    v11[5] = v8;
    v0[6] = sub_1A93FB020;
    v0[7] = v11;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A93FB164;
    v0[5] = &unk_1F1CED720;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];

    v14 = v8;

    [v10 playBuffer:v14 completionHandler:v12];
    _Block_release(v12);
    v15 = v0[1];

    return v15();
  }

  return result;
}

uint64_t sub_1A93FAA8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  sub_1A93FB68C(&qword_1EB387038, a2, type metadata accessor for BufferedAudioQueue);
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_1A957C5A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A93FAB50, v4, v6);
}

uint64_t sub_1A93FAB50()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1A93FAC04;
  v2 = swift_continuation_init();
  (*(*v1 + 152))(v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A93FAC04()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_1A93FACE0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return sub_1A93FAA8C(v2, v0);
}

uint64_t sub_1A93FAD70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1A93FAD9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v27 - v16;
  a2(a1);
  v18 = *(a4 + 16);
  v19 = sub_1A957C688();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v17, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  sub_1A93F8120(v17, v14);
  v22 = (*(v20 + 48))(v14, 1, v19);

  v23 = a5;
  if (v22 == 1)
  {
    sub_1A93F8190(v14);
  }

  else
  {
    sub_1A957C678();
    (*(v20 + 8))(v14, v19);
  }

  v24 = sub_1A93FB68C(&qword_1ED96FE68, 255, type metadata accessor for TTSExecutor);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1A958B190;
  *(v25 + 24) = v21;
  v27[0] = 6;
  v27[1] = 0;
  v27[2] = v18;
  v27[3] = v24;
  swift_unknownObjectRetain();
  swift_task_create();

  return sub_1A93F8190(v17);
}

uint64_t sub_1A93FB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = (*a2 + 200) & 0xFFFFFFFFFFFFLL | 0xB017000000000000;
  v3[4] = *(*a2 + 200);
  v3[5] = v4;
  type metadata accessor for BufferedAudioQueue();
  sub_1A93FB68C(&qword_1EB387038, v5, type metadata accessor for BufferedAudioQueue);
  v7 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A93FB100, v7, v6);
}

uint64_t sub_1A93FB100()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  (*(v0 + 32))(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A93FB164(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1A93FB1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_1A93FB1D0(void *a1))(_BYTE *, void)
{
  v2 = [a1 frameLength];
  result = (*(*v1 + 184))(v5);
  if (*v4 < v2)
  {
    __break(1u);
  }

  else
  {
    *v4 -= v2;
    return result(v5, 0);
  }

  return result;
}

uint64_t BufferedAudioQueue.__allocating_init(queue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v3 = TTSExecutor.__allocating_init()();
  *(v2 + 32) = 441000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t BufferedAudioQueue.init(queue:)(uint64_t a1)
{
  type metadata accessor for TTSExecutor();
  v3 = TTSExecutor.__allocating_init()();
  *(v1 + 32) = 441000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t BufferedAudioQueue.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1A93FB368()
{
  v0 = type metadata accessor for BufferedAudioQueue();
  v2 = sub_1A93FB68C(&qword_1EB387040, v1, type metadata accessor for BufferedAudioQueue);

  return TTSActor.unownedExecutor.getter(v0, v2);
}

uint64_t sub_1A93FB3D8(uint64_t a1, uint64_t a2)
{
  result = sub_1A93FB68C(&qword_1EB387038, a2, type metadata accessor for BufferedAudioQueue);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of BufferedAudioQueue.play(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A9382328;

  return v12(a1, a2, a3);
}

uint64_t sub_1A93FB594(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);

  return a2(v2, a1, 7);
}

uint64_t sub_1A93FB5F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A93FB02C(v4, v2, v3);
}

uint64_t sub_1A93FB68C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A93FB6D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938F98C(a1, v5);
}

uint64_t Sequence<>.filtered(axCriteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, a2);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v23 = sub_1A957C3F8();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  swift_getAssociatedTypeWitness();
  sub_1A957C578();
  swift_getWitnessTable();
  v12 = sub_1A957C418();

  return v12;
}

uint64_t sub_1A93FB938(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A957B2E8();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v72 = &v69 - v15;
  v16 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v76 = &v69 - v19;
  v20 = sub_1A957B308();
  v77 = *(v20 - 8);
  v78 = v20;
  v21 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v73 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v24 = (a2 + *(Criteria + 28));
  if (v24[1])
  {
    v25 = *v24;
    v26 = sub_1A957C1A8();
    v27 = a1;
    v29 = v28;
    v30 = *(a5 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = v27;
    v30(AssociatedTypeWitness, a5);
    v33 = sub_1A957C1A8();
    v35 = v34;

    if (v33 == v26 && v35 == v29)
    {

LABEL_7:

      a1 = v32;
      goto LABEL_8;
    }

    v36 = sub_1A957D3E8();

    if (v36)
    {
      goto LABEL_7;
    }

    v51 = *(a5 + 32);
    v74 = AssociatedTypeWitness;
    v52 = v51(AssociatedTypeWitness, a5);
    v80[0] = v26;
    v80[1] = v29;
    MEMORY[0x1EEE9AC00](v52, v53);
    *(&v69 - 2) = v80;
    v54 = v79;
    v55 = sub_1A93FC564(sub_1A9394148, (&v69 - 4), v52);

    if ((v55 & 1) == 0)
    {
      v43 = 0;
      return v43 & 1;
    }

    v79 = v54;
    a1 = v32;
    AssociatedTypeWitness = v74;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

LABEL_8:
  v37 = *a2;
  v38 = *(a5 + 8);
  v74 = a1;
  v38(&v84, AssociatedTypeWitness, a5);
  v83 = v37;
  sub_1A93FC780();
  sub_1A957C438();
  sub_1A93FC7D4();
  sub_1A957D5D8();
  sub_1A9387410();
  sub_1A957CDA8();
  v84 = v80[0];
  sub_1A957CDF8();
  sub_1A93B1F40();
  if (sub_1A957C098() & 1) != 0 && ((v80[0] = a2[1], sub_1A957CDF8(), (sub_1A957C098()) || (v38(&v84, AssociatedTypeWitness, a5), v80[0] = a2[1], (sub_1A957CD88())))
  {
    v39 = a2 + *(Criteria + 24);
    v40 = v76;
    sub_1A93B5960(v39, v76);
    v42 = v77;
    v41 = v78;
    if ((*(v77 + 48))(v40, 1, v78) != 1)
    {
      v45 = AssociatedTypeWitness;
      v46 = v73;
      (*(v42 + 32))(v73, v40, v41);
      v47 = v69;
      sub_1A957B2F8();
      v48 = v72;
      sub_1A957B2B8();
      (*(v70 + 8))(v47, v71);
      v49 = sub_1A957B188();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v48, 1, v49) == 1)
      {
        sub_1A937B960(v48, &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v56 = Locale.LanguageCode.childLanguages.getter();
        v57 = v48;
        v58 = v56;
        (*(v50 + 8))(v57, v49);
        if (*(v58 + 16))
        {
          (*(a5 + 16))(v80, v45, a5);
          v59 = v82;
          sub_1A93780F4(v80, v81);
          v60 = *(v59 + 8);
          v61 = sub_1A957C3D8();
          v62 = sub_1A93ACF58(v61);

          sub_1A9378138(v80);
          v63 = sub_1A93A5804(v58, v62);

          v64 = *(v63 + 16);

          v43 = v64 != 0;
          (*(v42 + 8))(v46, v41);
          return v43 & 1;
        }
      }

      (*(a5 + 16))(v80, v45, a5);
      v65 = v82;
      v66 = sub_1A93780F4(v80, v81);
      MEMORY[0x1EEE9AC00](v66, v67);
      *(&v69 - 2) = v46;
      v68 = *(v65 + 8);
      v43 = sub_1A957C428();
      sub_1A9378138(v80);
      (*(v42 + 8))(v46, v41);
      return v43 & 1;
    }

    sub_1A937B960(v40, &qword_1EB386988, &qword_1A9587830);
    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  return v43 & 1;
}

uint64_t sub_1A93FC148()
{
  v0 = sub_1A957B2E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B2F8();
  sub_1A957B2B8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1A93FC22C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_1A957B2E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v34 - v10;
  v12 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v34 - v19;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v21 = *(v3 + 8);
  v37 = v2;
  v21(v11, v2);
  v22 = sub_1A957B188();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v20, 1, v22) == 1)
  {
    sub_1A937B960(v20, &qword_1EB386A68, &qword_1A9587F40);
    v35 = 0;
    v25 = 0;
  }

  else
  {
    v35 = sub_1A957B148();
    v26 = v20;
    v25 = v27;
    (*(v23 + 8))(v26, v22);
  }

  sub_1A957B2F8();
  sub_1A957B2B8();
  v21(v8, v37);
  if (v24(v17, 1, v22) == 1)
  {
    sub_1A937B960(v17, &qword_1EB386A68, &qword_1A9587F40);
    if (!v25)
    {
      goto LABEL_17;
    }

LABEL_14:
    v32 = 0;
LABEL_19:

    return v32 & 1;
  }

  v28 = sub_1A957B148();
  v30 = v29;
  (*(v23 + 8))(v17, v22);
  if (v25)
  {
    if (v30)
    {
      if (v35 == v28 && v25 == v30)
      {

        v32 = 1;
      }

      else
      {
        v32 = sub_1A957D3E8();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v30)
  {
    v32 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1A93FC564(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1A93FC610()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = (v3 + *(type metadata accessor for VoiceQueryCriteria(0) + 28));
  if (v5[1])
  {
    v6 = *v5;
    v7 = sub_1A957C1A8();
    v9 = v8;
    v10 = *(v4 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10(AssociatedTypeWitness, v4);
    v12 = sub_1A957C1A8();
    v14 = v13;

    if (v12 == v7 && v14 == v9)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1A957D3E8();
    }
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

unint64_t sub_1A93FC780()
{
  result = qword_1ED96FFF8;
  if (!qword_1ED96FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFF8);
  }

  return result;
}

unint64_t sub_1A93FC7D4()
{
  result = qword_1ED96FFE0;
  if (!qword_1ED96FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFE0);
  }

  return result;
}

uint64_t sub_1A93FC8CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FC930(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v3(v4);
}

void (*sub_1A93FC9E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FC858();
  return sub_1A93FCB44;
}

uint64_t type metadata accessor for CoreSynthesizer()
{
  result = qword_1EB390800;
  if (!qword_1EB390800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93FCBFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FCC60(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);

  return v3(v4);
}

void (*sub_1A93FCD28(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FCB9C();
  return sub_1A93FCE88;
}

uint64_t sub_1A93FD12C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FD190(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);

  return v3(v4);
}

void (*sub_1A93FD21C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FCF58();
  return sub_1A93FD37C;
}

uint64_t sub_1A93FD3E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FD44C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);

  return v3(v4);
}

uint64_t sub_1A93FD4CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voices;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1A940FE38(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12 = v1;
    v13 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v11, sub_1A940FF78);
  }
}

void (*sub_1A93FD60C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FD388();
  return sub_1A93FD76C;
}

void sub_1A93FD908(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A9387478(0, &qword_1EB387070, off_1E787F320);
  v6 = v5;
  v7 = sub_1A957CC18();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12 = v2;
    v13 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v11, sub_1A940FF98);
  }
}

uint64_t sub_1A93FDA64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  return result;
}

void (*sub_1A93FDB34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FD824();
  return sub_1A93FDC94;
}

uint64_t sub_1A93FDD00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FDD64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x230);

  return v3(v4);
}

void (*sub_1A93FDE0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FDCA0();
  return sub_1A93FDF6C;
}

uint64_t sub_1A93FDFEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE050(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);

  return v3(v4);
}

void (*sub_1A93FE0E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FDF78();
  return sub_1A93FE244;
}

uint64_t sub_1A93FE2C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE328(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x290);

  return v3(v4);
}

void (*sub_1A93FE3BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FE250();
  return sub_1A93FE51C;
}

uint64_t sub_1A93FE594()
{
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1A93FE648(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain) = a1;
}

uint64_t sub_1A93FE660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE6C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2A8);

  return v3(v4);
}

uint64_t (*sub_1A93FE730(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A93FE594();
  return sub_1A93FE778;
}

uint64_t sub_1A93FE778(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain) = v2;
}

uint64_t sub_1A93FE9FC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1A93FEB28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_1A957D3E8())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  v12 = MEMORY[0x1EEE9AC00](KeyPath, v11);
  v13 = v2;
  v14 = a1;
  v15 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v12, sub_1A9410064);
}

uint64_t sub_1A93FEC88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93FECEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);

  return v4(v2, v3);
}

void (*sub_1A93FED6C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FE898();
  return sub_1A93FEECC;
}

uint64_t sub_1A93FEF38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FEF9C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x308);

  return v3(v4);
}

void (*sub_1A93FF03C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FEED8();
  return sub_1A93FF19C;
}

double sub_1A93FF294@<D0>(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x300))();
  if (*(v3 + 16) && (v4 = sub_1A94105F4(0x746C7561666564, 0xE700000000000000, sub_1A937A508), (v5 & 1) != 0) && (v6 = *(*(v3 + 56) + 8 * v4), , , *(v6 + 16)))
  {
    sub_1A9379534(v6 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A93FF3A0(uint64_t a1)
{
  sub_1A9391BAC(a1, &v12, &qword_1EB386A28, &qword_1A9587E50);
  if (v13)
  {
    sub_1A932D070(&v12, v14);
    sub_1A937829C(&qword_1EB3870A8, &qword_1A958B3F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A9587160;
    sub_1A9379534(v14, v3 + 32);
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x310))(&v12);
    v6 = v5;
    v7 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v6;
    *v6 = 0x8000000000000000;
    sub_1A940F9D0(v3, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    *v6 = v11;
    v4(&v12, 0);
    sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
    return sub_1A9378138(v14);
  }

  else
  {
    sub_1A937B960(&v12, &qword_1EB386A28, &qword_1A9587E50);
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x310))(v14);
    sub_1A93FF5CC(0, 0x746C7561666564, 0xE700000000000000);
    v10(v14, 0);
    return sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
  }
}

uint64_t sub_1A93FF5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1A940F9D0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1A94105F4(a2, a3, sub_1A937A508);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1A940FB74();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1A939748C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void (*sub_1A93FF6D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1A93FF294(v3);
  return sub_1A93FF750;
}

void sub_1A93FF750(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1A9391BAC(*a1, v2 + 40, &qword_1EB386A28, &qword_1A9587E50);
    sub_1A93FF3A0(v2 + 40);
    sub_1A937B960(v2, &qword_1EB386A28, &qword_1A9587E50);
  }

  else
  {
    sub_1A93FF3A0(*a1);
  }

  free(v2);
}

uint64_t sub_1A93FF854(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1A93FF8F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x348))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FF954(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x350);

  return v3(v4);
}

uint64_t sub_1A93FF9E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  if (*(v4 + v7) == a1)
  {
  }

  KeyPath = swift_getKeyPath();
  v10 = MEMORY[0x1EEE9AC00](KeyPath, v9);
  v12 = v4;
  v13 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x6A0))(v10, a4);
}

void (*sub_1A93FFAF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FF7E0();
  return sub_1A93FFC58;
}

uint64_t sub_1A93FFE64()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x348))();
  v0[3] = v3;
  v0[4] = (*((*v2 & *v1) + 0x378))();
  v4 = (*v3 + 152) & 0xFFFFFFFFFFFFLL | 0x881C000000000000;
  v0[5] = *(*v3 + 152);
  v0[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A93FFF74, v3, 0);
}

uint64_t sub_1A93FFF74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 40))(*(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

void (*sub_1A93FFFEC(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_1A94000B8;
}

void sub_1A94000B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = sub_1A957C688();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v8 = v5;
    sub_1A938A404(0, 0, v4, &unk_1A958BEF0, v7);
  }

  free(v4);

  free(v3);
}

uint64_t sub_1A9400320(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v11 = sub_1A94100D8(v10, a1);

  if (v11)
  {
    v12 = *(v1 + v8);
    *(v1 + v8) = a1;

    v13 = sub_1A957C688();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;
    v15 = v1;
    sub_1A938A404(0, 0, v7, &unk_1A958B460, v14);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v19 = MEMORY[0x1EEE9AC00](KeyPath, v18);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v19, sub_1A9410838);
  }
}

uint64_t sub_1A940053C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94005A0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x380);

  return v3(v4);
}

uint64_t sub_1A940060C(char *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  v10 = *&a1[v9];
  *&a1[v9] = a2;

  v11 = sub_1A957C688();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  sub_1A938A404(0, 0, v8, &unk_1A958BF00, v12);
}

void (*sub_1A9400758(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FFFEC(v4);
  return sub_1A94008B8;
}

uint64_t sub_1A9400924@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9400988(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);

  return v3(v4);
}

uint64_t sub_1A9400A08(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1A9400AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x6A0))(KeyPath, a3, &v8, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A9400B80(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A94008C4();
  return sub_1A9400CE0;
}

uint64_t sub_1A9400CEC(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3A8))();
  v4 = sub_1A9499920(a1, v3);

  return v4;
}

void (*sub_1A9400ED8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9400F3C;
}

void sub_1A9400F3C(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1F8))(v4);
    v7 = (*((*v6 & *v5) + 0x410))();
    [v8 setAudioSession_];
  }
}

void sub_1A94010B8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A9387478(0, &qword_1EB385F30, 0x1E6958468);
  v6 = v5;
  v7 = sub_1A957CC18();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;

    v10 = MEMORY[0x1E69E7D40];
    v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
    v12 = (*((*v10 & *v2) + 0x410))();
    [v11 setAudioSession_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x1EEE9AC00](KeyPath, v14);
    v16 = v2;
    v17 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v15, sub_1A9410A78);
  }
}

uint64_t sub_1A94012D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E0))();
  *a2 = result;
  return result;
}

void (*sub_1A94013A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A9400ED8(v4);
  return sub_1A9401500;
}

uint64_t sub_1A94015F0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8))();
  v2 = [v1 channels];

  sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v3 = sub_1A957C4C8();

  return v3;
}

void sub_1A9401750()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8))();
  sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v2 = sub_1A957C4B8();

  [v1 setChannels_];
}

uint64_t sub_1A9401814@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9401878(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x400);

  return v3(v4);
}

void (*sub_1A94018E4(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
  v6 = ((*MEMORY[0x1E69E7D40] & *v1) + 504) & 0xFFFFFFFFFFFFLL | 0xF4A0000000000000;
  v3[2] = v5;
  v3[3] = v6;
  v7 = v5();
  v8 = [v7 channels];

  v4[4] = sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v9 = sub_1A957C4C8();

  *v4 = v9;
  return sub_1A94019F0;
}

void sub_1A94019F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = **a1;

    v10 = (v6)(v9);
    v11 = sub_1A957C4B8();

    [v10 setChannels_];

    v12 = *v2;
  }

  else
  {
    v13 = v6();
    v14 = sub_1A957C4B8();

    [v13 setChannels_];
  }

  free(v2);
}

uint64_t sub_1A9401AD0()
{
  swift_getKeyPath();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x3E0))(v2);
    v3 = 0;
  }

  v5 = v3;
  return v4;
}

id sub_1A9401C2C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8))();
  v2 = [v1 audioQueueFlags];

  return v2;
}

void sub_1A9401D44(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  [v3 setAudioQueueFlags_];
}

uint64_t sub_1A9401DD0@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))();
  *a2 = result;
  return result;
}

void (*sub_1A9401E94(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
  v4 = ((*MEMORY[0x1E69E7D40] & *v1) + 504) & 0xFFFFFFFFFFFFLL | 0xF4A0000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3();
  v6 = [v5 audioQueueFlags];

  *(a1 + 24) = v6;
  return sub_1A9401F40;
}

void sub_1A9401F40(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = (a1[1])();
  [v4 setAudioQueueFlags_];
}

void *CoreSynthesizer.init(voiceResolver:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A957C688();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTSExecutor();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__executor] = TTSExecutor.__allocating_init()();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A952BDD0();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__queue] = TTSSpeechQueue.__allocating_init(priority:)(v8);
  v9 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voices] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer_schedulingQueue;
  sub_1A957B878();
  *&v1[v10] = sub_1A957B868();
  v11 = [objc_allocWithZone(TTSWrappedAudioQueue) init];
  v12 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue] = v11;
  type metadata accessor for TTSAURenderer();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechRenderer] = TTSAURenderer.__allocating_init()();
  type metadata accessor for AudioRenderer();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioRenderer] = sub_1A93F7048();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain] = 0;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_1A957C0F8();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = &v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier];
  *v18 = v15;
  v18[1] = v17;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__selectionProviders] = sub_1A9410678(v9);
  _s7ManagerCMa();
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effectManager] = sub_1A944B4CC(v9);
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects] = v9;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__substitutions] = sub_1A94108F8(v9);
  v19 = [objc_opt_self() sharedInstance];
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession] = v19;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver] = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask] = 0;
  v20 = &v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock];
  v21 = MEMORY[0x1E6958098];
  *v20 = 0;
  v20[1] = 0;
  v22 = *v21;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory] = *v21;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions] = 3;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy] = 0;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking] = 0;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession] = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession] = 0;
  v23 = v22;
  sub_1A957B358();
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voiceResolver] = a1;
  v24 = objc_allocWithZone(TTSWrappedAudioQueue);

  v25 = [v24 init];
  objc_storeStrong(&v2[v12], v25);
  type metadata accessor for BufferedAudioQueue();
  v26 = v25;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bufferedAudioQueue] = BufferedAudioQueue.__allocating_init(queue:)(v26);
  v27 = type metadata accessor for CoreSynthesizer();
  v38.receiver = v2;
  v38.super_class = v27;
  v28 = objc_msgSendSuper2(&v38, sel_init);
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x1F8);
  v31 = v28;
  v32 = v30();
  v33 = (*((*v29 & *v31) + 0x410))();
  [v32 setAudioSession_];

  v34 = *((*((*v29 & *v31) + 0x168))() + 24);

  v37[1] = v34;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A937829C(&qword_1EB387128, &qword_1A958B510);
  sub_1A93B744C(&qword_1EB3862A0, &qword_1EB387128, &qword_1A958B510);
  v35 = sub_1A957BEF8();

  sub_1A9402530(v35);

  return v31;
}

uint64_t sub_1A9402530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver;
  if (!*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath, v7);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v8, sub_1A941397C);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver);
  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A957BE38();
  sub_1A9412F70(&qword_1EB3871E8, MEMORY[0x1E695BF10]);

  v4 = sub_1A957C098();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1A94026D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask;
  if (!*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath, v8);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v9, sub_1A9413B5C);
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask);

  v5 = sub_1A957C728();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1A9402848(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(KeyPath, sub_1A9410BF0, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A93CF5C8(a1);
}

void sub_1A9402920(void *a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1A957C0F8();
  v7 = v6;
  if (v5 == sub_1A957C0F8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1A957D3E8();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      v13 = MEMORY[0x1EEE9AC00](KeyPath, v12);
      v16 = v1;
      v17 = a1;
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v13, sub_1A9410C74);

      return;
    }
  }

  v14 = *(v1 + v3);
  *(v1 + v3) = a1;
  v15 = a1;

  sub_1A940B330();
}

void sub_1A9402AB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    sub_1A940BA24();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath, v5);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v6, sub_1A9410CE8);
  }
}

void sub_1A9402BC8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    sub_1A940C0C0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath, v5);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v6, sub_1A9410D48);
  }
}

uint64_t sub_1A9402CE0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath, v6);
    v8 = v1;
    v9 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v7, sub_1A9410DAC);
  }

  return result;
}

uint64_t sub_1A9402DF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath, v3);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v4, sub_1A9413B40);
  }

  return result;
}

void sub_1A9402EF4(void *a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession;
  v4 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath, v10);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v11, sub_1A9413540);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A9387478(0, &qword_1EB385F30, 0x1E6958468);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A957CC18();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v12 = v6;

  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  v15 = (*((*v13 & *v1) + 0x410))();
  [v14 setAudioSession_];
}

uint64_t CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = *a4;
  v15 = *a2;
  v8 = sub_1A9493C84();
  sub_1A93B0A74(v14, *v8);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(a1, v14);
  v12 = v7;
  v13 = v6;
  v9 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v14, &v15, &v13, &v12);
  v10 = (*(v4 + 1072))(v9);
  sub_1A9378138(a1);
  return v10;
}

uint64_t CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:sortMode:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1A9396054(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_1A9410458(v12, a2, a3, v3, v7, v8);
  sub_1A9378138(a1);
  return v14;
}

uint64_t CoreSynthesizer.__allocating_init(requiredTraits:sortMode:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  type metadata accessor for VoiceDatabaseClient();
  v5 = sub_1A938983C();
  v6 = VoiceDatabaseClient.__allocating_init(readOnly:)(v5 & 1);

  return sub_1A94102EC(v6, v3, v4, v2);
}

id CoreSynthesizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CoreSynthesizer.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  type metadata accessor for VoiceDatabaseClient();
  v3 = sub_1A938983C();
  v4 = VoiceDatabaseClient.__allocating_init(readOnly:)(v3 & 1);
  v5 = sub_1A94102EC(v4, v9, 1, ObjectType);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

void *CoreSynthesizer.__allocating_init(voiceResolver:defaultSelectionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 1072);

  v6 = v4(v5);
  sub_1A9391BAC(a2, v10, &qword_1EB386A28, &qword_1A9587E50);
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x320);
  v8 = v6;
  v7(v10);

  sub_1A937B960(a2, &qword_1EB386A28, &qword_1A9587E50);
  return v8;
}

void *CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:defaultSelectionProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  sub_1A9379534(a1, v22);
  v21 = v9;
  v12 = sub_1A9493C84();
  sub_1A93B0A74(v20, *v12);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v22, v20);
  v18 = v11;
  v19 = v10;
  v13 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v20, &v21, &v19, &v18);
  v14 = (*(v6 + 1072))(v13);
  sub_1A9378138(v22);
  sub_1A9391BAC(a5, v22, &qword_1EB386A28, &qword_1A9587E50);
  v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x320);
  v16 = v14;
  v15(v22);

  sub_1A937B960(a5, &qword_1EB386A28, &qword_1A9587E50);
  sub_1A9378138(a1);
  return v16;
}

void *CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:sortMode:defaultSelectionProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *a3;
  sub_1A9379534(a1, v23);
  v21 = v8;
  v22 = v7;
  v9 = v24;
  v10 = v25;
  v11 = sub_1A9396054(v23, v24);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_1A9410458(v14, &v22, &v21, v4, v9, v10);
  sub_1A9378138(v23);
  sub_1A9391BAC(a4, v23, &qword_1EB386A28, &qword_1A9587E50);
  v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x320);
  v18 = v16;
  v17(v23);

  sub_1A937B960(a4, &qword_1EB386A28, &qword_1A9587E50);
  sub_1A9378138(a1);
  return v18;
}

void *CoreSynthesizer.__allocating_init(requiredTraits:sortMode:defaultSelectionProvider:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  type metadata accessor for VoiceDatabaseClient();
  v7 = sub_1A938983C();
  v8 = VoiceDatabaseClient.__allocating_init(readOnly:)(v7 & 1);
  v9 = sub_1A94102EC(v8, v5, v6, v3);
  sub_1A9391BAC(a3, v13, &qword_1EB386A28, &qword_1A9587E50);
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x320);
  v11 = v9;
  v10(v13);

  sub_1A937B960(a3, &qword_1EB386A28, &qword_1A9587E50);
  return v11;
}

void *CoreSynthesizer.__allocating_init(defaultSelectionProvider:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_1A9391BAC(a1, v7, &qword_1EB386A28, &qword_1A9587E50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x320);
  v5 = v3;
  v4(v7);

  sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
  return v5;
}

uint64_t sub_1A9403C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1A9402530(v4);
}

uint64_t sub_1A9403C70(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *(v2 + *a2);
}

uint64_t sub_1A9403D10@<X0>(void **a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x698))();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1A9403DAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1A94026D4(v4);
}

uint64_t sub_1A9403DD8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v52 = &v47 - v7;
  v8 = sub_1A957BC88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = MEMORY[0x1E69E7D40];
  v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x608);
  result = (v17)(v12);
  if (result)
  {
    v19 = sub_1A9391D1C();
    (*(v9 + 16))(v14, v19, v8);
    v20 = v2;
    v21 = sub_1A957BC68();
    v50 = sub_1A957CA98();
    v22 = os_log_type_enabled(v21, v50);
    v51 = v15;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v23 = 136315650;
      v53 = v15;
      v24 = sub_1A957C198();
      v48 = v21;
      v26 = sub_1A937A5C0(v24, v25, &v54);

      *(v23 + 4) = v26;
      *(v23 + 12) = 1024;
      v28 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x680))(v27);

      *(v23 + 14) = v28 & 1;
      *(v23 + 18) = 1024;
      v29 = v17();

      *(v23 + 20) = v29 & 1;
      v30 = v48;
      _os_log_impl(&dword_1A9324000, v48, v50, "Handle state change: %s. useAuxiliarySession=%{BOOL}d audioSessionAutomaticallyDeactivatesAfterSpeaking=%{BOOL}d", v23, 0x18u);
      v31 = v49;
      sub_1A9378138(v49);
      MEMORY[0x1AC587CD0](v31, -1, -1);
      v32 = v23;
      v16 = MEMORY[0x1E69E7D40];
      MEMORY[0x1AC587CD0](v32, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
    KeyPath = swift_getKeyPath();
    (*((*v16 & *v20) + 0x698))(KeyPath);

    v34 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask;
    if (*(v20 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask))
    {
      v35 = *(v20 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask);

      sub_1A957C748();
    }

    if (v51 > 1)
    {
      if (v51 != 2)
      {
        return result;
      }
    }

    else if (v51)
    {
      return result;
    }

    v36 = sub_1A957C688();
    v37 = v52;
    (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v20;
    v39 = v20;
    v40 = sub_1A938A404(0, 0, v37, &unk_1A958BDA8, v38);
    if (*(v20 + v34) && (v41 = *(v20 + v34), , v42 = sub_1A957C728(), , (v42 & 1) != 0))
    {
      v43 = *(v20 + v34);
      *(v20 + v34) = v40;
    }

    else
    {
      v44 = swift_getKeyPath();
      v46 = MEMORY[0x1EEE9AC00](v44, v45);
      *(&v47 - 2) = v39;
      *(&v47 - 1) = v40;
      (*((*v16 & *v39) + 0x6A0))(v46, sub_1A94131FC);
    }
  }

  return result;
}

uint64_t sub_1A940437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4[3] = a4;
  v5 = sub_1A957BC88();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v8 = sub_1A957D018();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A94044D0, 0, 0);
}

uint64_t sub_1A94044D0()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = sub_1A957C778();
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[6];
    v4 = v0[7];

    v5 = v0[1];
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  else
  {
    v8 = v0[10];
    sub_1A957D468();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1A940463C;
    v10 = v0[10];
    v11 = *MEMORY[0x1E69E9840];

    return sub_1A93CC26C(2000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1A940463C()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1A9413AC8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1A9404800;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A9404800()
{
  v35 = *MEMORY[0x1E69E9840];
  if ((sub_1A957C778() & 1) == 0)
  {
    v1 = v0[7];
    v2 = v0[4];
    v3 = v0[5];
    v4 = sub_1A9391DC0();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);
    v6 = sub_1A957BC68();
    v7 = sub_1A957CA98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A9324000, v6, v7, "Will deactivate audio session after auto timeout", v8, 2u);
      MEMORY[0x1AC587CD0](v8, -1, -1);
    }

    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    v13 = *(v11 + 8);
    v14 = v13(v9, v10);
    v15 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x410))(v14);
    v0[2] = 0;
    LODWORD(v9) = [v15 setActive:0 error:v0 + 2];

    v16 = v0[2];
    if (v9)
    {
      v17 = v16;
    }

    else
    {
      v18 = v0[6];
      v19 = v0[4];
      v20 = v16;
      v21 = sub_1A957AEF8();

      swift_willThrow();
      v5(v18, v4, v19);
      v22 = sub_1A957BC68();
      v23 = sub_1A957CA78();
      v24 = os_log_type_enabled(v22, v23);
      v26 = v0[5];
      v25 = v0[6];
      v27 = v0[4];
      if (v24)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A9324000, v22, v23, "Could not deactivate audio session after auto timeout", v28, 2u);
        MEMORY[0x1AC587CD0](v28, -1, -1);
      }

      v13(v25, v27);
    }
  }

  v29 = v0[10];
  v30 = v0[6];
  v31 = v0[7];

  v32 = v0[1];
  v33 = *MEMORY[0x1E69E9840];

  return v32();
}

uint64_t sub_1A9404ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9404B00, 0, 0);
}

uint64_t sub_1A9404B00()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x198))();
  *(v0 + 48) = v1;
  v8 = (*v1 + 360);
  v9 = (*v8 + **v8);
  v2 = (*v8)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1A9404C78;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return v9(v6, v4, v5);
}

uint64_t sub_1A9404C78()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A9404F10(int a1, void *aBlock, void *a3)
{
  v3[107] = a3;
  v3[108] = _Block_copy(aBlock);
  v3[109] = sub_1A957C0F8();
  v3[110] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A9404FA0, 0, 0);
}

uint64_t sub_1A9404FA0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 856)) + 0x198))();
  *(v0 + 888) = v1;
  v7 = (*v1 + 360);
  v8 = (*v7 + **v7);
  v2 = (*v7)[1];
  v3 = swift_task_alloc();
  *(v0 + 896) = v3;
  *v3 = v0;
  v3[1] = sub_1A940511C;
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);

  return v8(v0 + 576, v5, v4);
}

uint64_t sub_1A940511C()
{
  v14 = v0;
  v14 = *v0;
  v1 = v14;
  v2 = v14[112];
  v3 = v14[111];
  v4 = v14[110];
  v5 = v14[107];
  v6 = *v0;
  v14 = *v0;

  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v7 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v8);
    v7 = v9;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v10 = v1[108];
  (v10)[2](v10, v7);

  _Block_release(v10);
  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_1A940530C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9405330, 0, 0);
}

uint64_t sub_1A9405330()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x198))();
  *(v0 + 40) = v1;
  v7 = (*v1 + 416);
  v8 = (*v7 + **v7);
  v2 = (*v7)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1A94054A4;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return v8(v4, v5);
}

uint64_t sub_1A94054A4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A940573C(uint64_t a1, const void *a2, void *a3)
{
  v3[107] = a3;
  v6 = sub_1A957B308();
  v3[108] = v6;
  v7 = *(v6 - 8);
  v3[109] = v7;
  v8 = *(v7 + 64) + 15;
  v3[110] = swift_task_alloc();
  v3[111] = _Block_copy(a2);
  sub_1A957B1F8();
  v9 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A9405834, 0, 0);
}

uint64_t sub_1A9405834()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 856)) + 0x198))();
  *(v0 + 896) = v1;
  v6 = (*v1 + 416);
  v7 = (*v6 + **v6);
  v2 = (*v6)[1];
  v3 = swift_task_alloc();
  *(v0 + 904) = v3;
  *v3 = v0;
  v3[1] = sub_1A94059AC;
  v4 = *(v0 + 880);

  return v7(v0 + 576, v4);
}

uint64_t sub_1A94059AC()
{
  v17 = v0;
  v17 = *v0;
  v1 = v17;
  v2 = v17[113];
  v3 = v17[112];
  v4 = v17[110];
  v5 = v17[109];
  v6 = v17[108];
  v7 = v17[107];
  v8 = *v0;
  v17 = *v0;

  (*(v5 + 8))(v4, v6);
  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v9 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v10);
    v9 = v11;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v12 = v1[111];
  v13 = v1[110];
  (v12)[2](v12, v9);

  _Block_release(v12);

  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1A9405BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A9391D1C();
  (*(v7 + 16))(v11, v12, v6);
  sub_1A9410E08(a1, v32);
  v13 = sub_1A957BC68();
  v14 = sub_1A957CA68();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v31 = v17;
    *v16 = 136380675;
    sub_1A9410EB8();
    v19 = sub_1A957D3A8();
    v30 = a2;
    v20 = v3;
    v22 = v21;
    sub_1A9410E64(v32);
    v23 = sub_1A937A5C0(v19, v22, &v31);
    v3 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1A9324000, v13, v14, "Enqueue utterance: %{private}s", v16, 0xCu);
    sub_1A9378138(v18);
    MEMORY[0x1AC587CD0](v18, -1, -1);
    v24 = v16;
    a1 = v29;
    MEMORY[0x1AC587CD0](v24, -1, -1);

    (*(v7 + 8))(v11, v28);
  }

  else
  {

    sub_1A9410E64(v32);
    (*(v7 + 8))(v11, v6);
  }

  sub_1A937829C(&qword_1EB387130, &qword_1A958B6A8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A9587160;
  sub_1A9410E08(a1, v25 + 32);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B8))(v25);
}

uint64_t sub_1A9405EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v33 - v8;
  v10 = sub_1A957BC88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A9391D1C();
  v17 = *(v11 + 16);
  v36 = v10;
  v17(v15, v16, v10);

  v18 = sub_1A957BC68();
  v19 = sub_1A957CA68();

  v20 = os_log_type_enabled(v18, v19);
  v37 = a2;
  v34 = v5;
  v35 = v4;
  v33 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43[0]._countAndFlagsBits = v22;
    *v21 = 136380675;
    v23 = MEMORY[0x1AC585390](a1, &type metadata for CoreSynthesizer.Utterance);
    v25 = sub_1A937A5C0(v23, v24, &v43[0]._countAndFlagsBits);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1A9324000, v18, v19, "Enqueue utterances: %{private}s", v21, 0xCu);
    sub_1A9378138(v22);
    MEMORY[0x1AC587CD0](v22, -1, -1);
    MEMORY[0x1AC587CD0](v21, -1, -1);
  }

  (*(v11 + 8))(v15, v36);
  v26 = sub_1A9409FC8(a1);
  v28 = v26;
  v29 = *(a1 + 16);
  if (v29)
  {
    v30 = a1 + 32;
    do
    {
      sub_1A9410E08(v30, v43);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v42 = 10;
      TTSSpeechEvent.emit(forJob:)(v43[0]);
      v26 = sub_1A9410E64(v43);
      v30 += 384;
      --v29;
    }

    while (v29);
  }

  if (*(v28 + 16) == 1)
  {
    v31 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
    (*(*(v31 - 8) + 16))(v37, v28 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)), v31);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v33 - 2) = v28;
    (*(v34 + 104))(v33, *MEMORY[0x1E69E8790], v35);
    sub_1A957C878();
  }
}

uint64_t sub_1A9406280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957BC88();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9406344, 0, 0);
}

uint64_t sub_1A9406344()
{
  v30 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v5, v3);
  swift_unknownObjectRetain();
  v6 = sub_1A957BC68();
  v7 = sub_1A957CA68();
  swift_unknownObjectRelease();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    ObjectType = swift_getObjectType();
    v17 = (*(v13 + 32))(ObjectType, v13);
    v19 = sub_1A937A5C0(v17, v18, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1A9324000, v6, v7, "Enqueue queueable: %s", v14, 0xCu);
    sub_1A9378138(v15);
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  v20 = (*(v10 + 8))(v9, v11);
  v27 = *(v0 + 24);
  v21 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x168))(v20);
  *(v0 + 72) = v21;
  sub_1A937829C(&qword_1EB387150, &qword_1A958B6C8);
  v22 = swift_allocObject();
  *(v0 + 80) = v22;
  *(v22 + 16) = xmmword_1A9587160;
  *(v22 + 32) = v27;
  v23 = *(*v21 + 328);
  swift_unknownObjectRetain();
  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 88) = v25;
  *v25 = v0;
  v25[1] = sub_1A9406664;

  return v28(v22, 1);
}

uint64_t sub_1A9406664(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A94067A0, 0, 0);
}

uint64_t sub_1A94067A0()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[8];
    v3 = v0[2];
    v4 = sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0);
    (*(*(v4 - 8) + 16))(v3, v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12];

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9406884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A9391D1C();
  (*(v7 + 16))(v11, v12, v6);
  sub_1A9410E08(a1, v32);
  v13 = sub_1A957BC68();
  v14 = sub_1A957CA68();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v31 = v17;
    *v16 = 136380675;
    sub_1A9410EB8();
    v19 = sub_1A957D3A8();
    v30 = a2;
    v20 = v3;
    v22 = v21;
    sub_1A9410E64(v32);
    v23 = sub_1A937A5C0(v19, v22, &v31);
    v3 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1A9324000, v13, v14, "Buffers for utterance: %{private}s", v16, 0xCu);
    sub_1A9378138(v18);
    MEMORY[0x1AC587CD0](v18, -1, -1);
    v24 = v16;
    a1 = v29;
    MEMORY[0x1AC587CD0](v24, -1, -1);

    (*(v7 + 8))(v11, v28);
  }

  else
  {

    sub_1A9410E64(v32);
    (*(v7 + 8))(v11, v6);
  }

  sub_1A937829C(&qword_1EB387130, &qword_1A958B6A8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A9587160;
  sub_1A9410E08(a1, v25 + 32);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4D0))(v25);
}

uint64_t sub_1A9406B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v35 - v9;
  v11 = sub_1A957BC88();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A9391D1C();
  (*(v12 + 16))(v16, v17, v11);

  v18 = sub_1A957BC68();
  v19 = sub_1A957CA68();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v3;
    v23 = v22;
    v42 = v22;
    *v21 = 136380675;
    v24 = MEMORY[0x1AC585390](a1, &type metadata for CoreSynthesizer.Utterance);
    v40 = v6;
    v37 = v5;
    v26 = sub_1A937A5C0(v24, v25, &v42);
    v36 = v11;
    v27 = a1;
    v28 = v26;
    v5 = v37;
    v6 = v40;

    *(v21 + 4) = v28;
    a1 = v27;
    _os_log_impl(&dword_1A9324000, v18, v19, "Buffers for utterances: %{private}s", v21, 0xCu);
    sub_1A9378138(v23);
    MEMORY[0x1AC587CD0](v23, -1, -1);
    v29 = v21;
    v10 = v39;
    MEMORY[0x1AC587CD0](v29, -1, -1);

    (*(v12 + 8))(v16, v36);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v30 = sub_1A94097C0(a1);
  v32 = v30;
  if (v30[2] == 1)
  {
    v33 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
    (*(*(v33 - 8) + 16))(v41, v32 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), v33);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v35 - 2) = v32;
    (*(v6 + 104))(v10, *MEMORY[0x1E69E8790], v5);
    sub_1A957C878();
  }
}

uint64_t sub_1A9406EF8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v3[30] = v7;
  v8 = *(v7 - 8);
  v3[31] = v8;
  v9 = *(v8 + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A940705C, 0, 0);
}

uint64_t sub_1A940705C()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 208)) + 0x4C8))(*(v0 + 192));
  sub_1A957C6F8();
  (*(v3 + 8))(v2, v4);
  v5 = *MEMORY[0x1E69582F8];
  *(v0 + 264) = *MEMORY[0x1E69582C0];
  *(v0 + 272) = v5;
  *(v0 + 280) = *MEMORY[0x1E69582E0];
  *(v0 + 288) = 0;
  v6 = *(MEMORY[0x1E69E87A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1A94071E8;
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DB90](v0 + 112, 0, 0, v9, v0 + 176);
}

uint64_t sub_1A94071E8()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1A9407AE8;
  }

  else
  {
    v3 = sub_1A9407328;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9407328()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = v0[14];
  v2 = v0[16];
  if (v2 >> 3 == 0xFFFFFFFF)
  {
    v3 = v0[36];
    v4 = v0[29];
    (*(v0[31] + 8))(v0[32], v0[30]);
    [v3 close];

    v5 = v0[1];
    v6 = *MEMORY[0x1E69E9840];
LABEL_3:

    return v5();
  }

  v8 = v0[15];
  v9 = v0[17];
  if (v2 >> 61 != 2 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1A9410F4C(v1, v8, v2);
    goto LABEL_13;
  }

  v11 = v10;
  sub_1A9410FA4(v1, v8, v2);
  sub_1A9410FB8(v1, v8, v2);
  if (![v11 frameLength])
  {
    sub_1A9410F4C(v1, v8, v2);
    sub_1A9410F4C(v1, v8, v2);
    sub_1A9410F60(v1, v8, v2);
    goto LABEL_13;
  }

  v12 = v0[36];
  if (v12)
  {
    goto LABEL_10;
  }

  v25 = v0[33];
  v70 = v11;
  v26 = [v11 format];
  v27 = [v26 settings];

  v28 = sub_1A957C038();
  v29 = sub_1A957C0F8();
  if (*(v28 + 16))
  {
    v31 = sub_1A94105F4(v29, v30, sub_1A937A508);
    v33 = v32;

    if (v33)
    {
      sub_1A937BA14(*(v28 + 56) + 32 * v31, (v0 + 2));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v34 = v0[21];
        v69 = [v34 integerValue];

        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v69 = 0;
LABEL_24:
  v35 = v0[34];
  v36 = sub_1A957C0F8();
  if (*(v28 + 16))
  {
    v38 = sub_1A94105F4(v36, v37, sub_1A937A508);
    v40 = v39;

    if (v40)
    {
      sub_1A937BA14(*(v28 + 56) + 32 * v38, (v0 + 6));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v41 = v0[20];
        v42 = [v41 BOOLValue];

        v43 = v42 ^ 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v43 = 1;
LABEL_30:
  v68 = v43;
  v44 = v0[35];
  v45 = sub_1A957C0F8();
  v72 = v28;
  if (*(v28 + 16))
  {
    v47 = sub_1A94105F4(v45, v46, sub_1A937A508);
    v49 = v48;

    if (v49)
    {
      sub_1A937BA14(*(v72 + 56) + 32 * v47, (v0 + 10));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v50 = v0[19];
        v51 = [v50 BOOLValue];

        if (v51)
        {
          v52 = 4;
          if (v69 == 64)
          {
            v52 = 2;
          }

          if (v69 == 32)
          {
            v53 = 1;
          }

          else
          {
            v53 = v52;
          }

          goto LABEL_43;
        }
      }
    }
  }

  else
  {
  }

  if (v69 == 16)
  {
    v53 = 3;
  }

  else
  {
    v53 = 4;
  }

LABEL_43:
  v54 = v0[25];
  v55 = objc_allocWithZone(MEMORY[0x1E6958410]);
  v56 = sub_1A957AF58();
  v57 = sub_1A957C018();
  v0[18] = 0;
  v12 = [v55 initForWriting:v56 settings:v57 commonFormat:v53 interleaved:v68 error:v0 + 18];

  v58 = v0[18];
  if (v12)
  {
    v59 = v0[38];
    v60 = v58;
  }

  else
  {
    v61 = v58;
    v59 = sub_1A957AEF8();

    swift_willThrow();
  }

  v11 = v70;
  if (v59)
  {
    v63 = v0[31];
    v62 = v0[32];
    v64 = v0[30];
    sub_1A9410F4C(v1, v8, v2);
    sub_1A9410F4C(v1, v8, v2);

    sub_1A9410F4C(v1, v8, v2);
    (*(v63 + 8))(v62, v64);
    goto LABEL_48;
  }

LABEL_10:
  v0[23] = 0;
  v13 = v12;
  v14 = [v13 writeFromBuffer:v11 error:v0 + 23];
  v15 = v0[23];
  if (!v14)
  {
    v22 = v0[31];
    v71 = v0[32];
    v23 = v0[30];
    v24 = v15;
    sub_1A957AEF8();

    swift_willThrow();
    sub_1A9410F4C(v1, v8, v2);
    sub_1A9410F4C(v1, v8, v2);
    sub_1A9410F60(v1, v8, v2);
    (*(v22 + 8))(v71, v23);
    [v13 close];

LABEL_48:
    v65 = v0[32];
    v66 = v0[29];

    v5 = v0[1];
    v67 = *MEMORY[0x1E69E9840];
    goto LABEL_3;
  }

  v16 = v15;
  sub_1A9410F4C(v1, v8, v2);

  sub_1A9410F4C(v1, v8, v2);
  sub_1A9410F4C(v1, v8, v2);
  v0[36] = v12;
LABEL_13:
  v17 = *(MEMORY[0x1E69E87A8] + 4);
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_1A94071E8;
  v19 = v0[32];
  v20 = v0[30];
  v21 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DB90](v0 + 14, 0, 0, v20, v0 + 22);
}

uint64_t sub_1A9407AE8()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[36];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v2 = v0[22];
  if (v1)
  {
    v3 = v0[36];
    [v3 close];
  }

  v4 = v0[32];
  v5 = v0[29];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1A9407BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[89] = v4;
  v5[88] = a4;
  v5[87] = a3;
  v5[86] = a2;
  v5[85] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9407BF4, 0, 0);
}

uint64_t sub_1A9407BF4()
{
  v27 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  *(v0 + 396) = 1;
  *(v0 + 736) = 1;
  *(v0 + 740) = 1;
  v13[0] = v3;
  v13[1] = v2;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  sub_1A93847E0(v0 + 400);
  memcpy(__dst, (v0 + 400), 0x118uLL);

  v4 = sub_1A937838C();
  sub_1A937BA74(&v22);
  v23 = v22;
  sub_1A937BA74(&v24);
  v25 = v24;
  sub_1A937BA78(&v26);
  CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v13, v4, &v23, &v25, &v26, v0 + 16);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x4D8);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 720) = v7;
  *v7 = v0;
  v7[1] = sub_1A9407DF8;
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);

  return v12(v0 + 16, v10, v9);
}

uint64_t sub_1A9407DF8()
{
  v2 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_1A9407F70;
  }

  else
  {
    v3 = sub_1A9407F0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9407F0C()
{
  sub_1A9410E64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9407F70()
{
  sub_1A9410E64(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 728);

  return v1();
}

uint64_t sub_1A9408178(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_1A957AFD8();
  v5[3] = v8;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  v5[6] = _Block_copy(a4);
  v12 = sub_1A957C0F8();
  v14 = v13;
  v5[7] = v13;
  sub_1A957AF98();
  v15 = sub_1A957C038();
  v5[8] = v15;
  a5;
  v16 = swift_task_alloc();
  v5[9] = v16;
  *v16 = v5;
  v16[1] = sub_1A9408300;

  return sub_1A9407BC4(v12, v14, v11, v15);
}

uint64_t sub_1A9408300()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v18 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  (*(v8 + 8))(v7, v9);

  v12 = *(v3 + 48);
  if (v2)
  {
    v13 = sub_1A957AEE8();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 48), 0);
  }

  v15 = v4 + 40;
  v14 = *(v4 + 40);
  _Block_release(*(v15 + 8));

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_1A9408530()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94085F0, 0, 0);
}

uint64_t sub_1A94085F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Stop speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v17 = (*v13 + 360);
  v18 = (*v17 + **v17);
  v14 = (*v17)[1];
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1A940882C;

  return v18();
}

uint64_t sub_1A940882C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A9408ACC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A9408B74;

  return sub_1A9408530();
}

uint64_t sub_1A9408B74()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A9408CAC()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9408D6C, 0, 0);
}

uint64_t sub_1A9408D6C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Pause speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v17 = (*v13 + 352);
  v18 = (*v17 + **v17);
  v14 = (*v17)[1];
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1A9413B58;

  return v18();
}

uint64_t sub_1A9408FA8()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9409068, 0, 0);
}

uint64_t sub_1A9409068()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Resume speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v17 = (*v13 + 344);
  v18 = (*v17 + **v17);
  v14 = (*v17)[1];
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1A9413B58;

  return v18();
}

uint64_t sub_1A94092A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A957BC88();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9409368, 0, 0);
}

uint64_t sub_1A9409368()
{
  v34 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v5, v3);
  swift_unknownObjectRetain();
  v6 = sub_1A957BC68();
  v7 = sub_1A957CA68();
  swift_unknownObjectRelease();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  if (v8)
  {
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    ObjectType = swift_getObjectType();
    v17 = (*(v13 + 32))(ObjectType, v13);
    v19 = sub_1A937A5C0(v17, v18, &v33);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1A9324000, v6, v7, "Cancel queued %s", v14, 0xCu);
    sub_1A9378138(v15);
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  v20 = (*(v10 + 8))(v9, v11);
  v21 = *(v0 + 24);
  v22 = *(v0 + 16);
  v23 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x168))(v20);
  *(v0 + 64) = v23;
  v24 = swift_getObjectType();
  v25 = (*(v21 + 32))(v24, v21);
  v27 = v26;
  *(v0 + 72) = v26;
  v31 = (*v23 + 336);
  v32 = (*v31 + **v31);
  v28 = (*v31)[1];
  v29 = swift_task_alloc();
  *(v0 + 80) = v29;
  *v29 = v0;
  v29[1] = sub_1A9409670;

  return v32(v25, v27);
}

uint64_t sub_1A9409670()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

void *sub_1A94097C0(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v71 = v57 - v9;
  v68 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v10 = *(v68 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v68, v12);
  v67 = v57 - v13;
  v14 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v72 = v57 - v22;
  v23 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v66 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v57 - v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v57[0] = v7;
  v61 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v32 = a1 + 32;
  v60 = (v10 + 104);
  v59 = *MEMORY[0x1E69E8790];
  v57[2] = v15 + 8;
  v58 = (v15 + 16);
  v57[1] = v15 + 32;
  v73 = MEMORY[0x1E69E7CC0];
  v64 = v15;
  v65 = v14;
  v62 = v30;
  v63 = v20;
  do
  {
    v70 = v31;
    v33 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    v34 = (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    MEMORY[0x1EEE9AC00](v34, v35);
    v57[-2] = v30;
    (*v60)(v67, v59, v68);
    sub_1A957C878();
    sub_1A9410E08(v32, v78);
    v36 = v66;
    sub_1A9391BAC(v30, v66, &qword_1EB3871A8, &qword_1A958BE88);
    v37 = sub_1A94EBD90(v69, v78, 1, v36);
    v38 = sub_1A957C688();
    v39 = *(v38 - 8);
    v40 = v71;
    (*(v39 + 56))(v71, 1, 1, v38);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v37;
    v42 = v57[0];
    sub_1A9391BAC(v40, v57[0], &qword_1EB388000, &qword_1A9587710);
    LODWORD(v40) = (*(v39 + 48))(v42, 1, v38);

    if (v40 == 1)
    {
      sub_1A937B960(v42, &qword_1EB388000, &qword_1A9587710);
    }

    else
    {
      sub_1A957C678();
      (*(v39 + 8))(v42, v38);
    }

    v43 = v41[2];
    v44 = v41[3];
    swift_unknownObjectRetain();

    v45 = v70;
    if (v43)
    {
      swift_getObjectType();
      v46 = sub_1A957C5A8();
      v48 = v47;
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    sub_1A937B960(v71, &qword_1EB388000, &qword_1A9587710);
    if (v48 | v46)
    {
      v74 = 0;
      v75 = 0;
      v76 = v46;
      v77 = v48;
    }

    swift_task_create();

    v49 = v63;
    v50 = v65;
    (*v58)(v63, v72, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = sub_1A940F3E8(0, v73[2] + 1, 1, v73);
    }

    v54 = v73[2];
    v53 = v73[3];
    if (v54 >= v53 >> 1)
    {
      v73 = sub_1A940F3E8(v53 > 1, v54 + 1, 1, v73);
    }

    (*(v52 + 8))(v72, v50);
    v55 = v73;
    v73[2] = v54 + 1;
    (*(v52 + 32))(v55 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v54, v49, v50);
    v30 = v62;
    sub_1A937B960(v62, &qword_1EB3871A8, &qword_1A958BE88);
    v32 += 384;
    v31 = v45 - 1;
  }

  while (v31);
  return v73;
}

uint64_t sub_1A9409EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 264);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9();
}

void *sub_1A9409FC8(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v55 = &v41 - v5;
  v54 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v54, v8);
  v53 = &v41 - v9;
  v10 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v41 - v14;
  v16 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v57 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v41 - v23;
  v61 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v50 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
    v26 = a1 + 32;
    v49 = *MEMORY[0x1E69E8790];
    v47 = (v6 + 8);
    v48 = (v6 + 104);
    v45 = v17 + 32;
    v46 = (v17 + 16);
    v43 = (v11 + 56);
    v44 = (v11 + 16);
    v41 = (v17 + 8);
    v42 = (v11 + 8);
    v58 = MEMORY[0x1E69E7CC0];
    v51 = v24;
    v52 = v17;
    do
    {
      sub_1A9410E08(v26, v60);
      v28 = v53;
      v27 = v54;
      (*v48)(v53, v49, v54);
      sub_1A957C7E8();
      (*v47)(v28, v27);
      (*v46)(v57, v24, v16);
      v29 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1A940F3E8(0, v29[2] + 1, 1, v29);
      }

      v31 = v29[2];
      v30 = v29[3];
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1A940F3E8(v30 > 1, v31 + 1, 1, v29);
      }

      v29[2] = v31 + 1;
      v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v58 = v29;
      (*(v17 + 32))(v29 + v32 + *(v17 + 72) * v31, v57, v16);
      memcpy(v59, v60, 0x179uLL);
      v33 = v55;
      (*v44)(v55, v15, v10);
      (*v43)(v33, 0, 1, v10);
      sub_1A94EBD90(v56, v59, 0, v33);
      MEMORY[0x1AC585360]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      sub_1A957C538();
      (*v42)(v15, v10);
      v24 = v51;
      (*v41)(v51, v16);
      v26 += 384;
      --v25;
      v17 = v52;
    }

    while (v25);
    v34 = v61;
    v35 = v58;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = v56;
  v37 = *&v56[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer_schedulingQueue];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v34;
  v39 = v36;
  sub_1A957B858();

  return v35;
}

uint64_t sub_1A940A538(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A940A558, 0, 0);
}

uint64_t sub_1A940A558()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x168))();
  *(v0 + 32) = v2;
  v3 = sub_1A940A824(v1);
  *(v0 + 40) = v3;
  v7 = (*v2 + 328);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1A940A6E4;

  return (v8)(v3, 1);
}

uint64_t sub_1A940A6E4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void *sub_1A940A824(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A957CE48();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A940FCE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1AC585DE0](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A940FCE4((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_1A9412F70(&qword_1EB3871D8, type metadata accessor for CoreSynthesizer.UtteranceRunner);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1A940FCE4((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_1A9412F70(&qword_1EB3871D8, type metadata accessor for CoreSynthesizer.UtteranceRunner);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A940AA74()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1A932D0E4(v3);
  return v3;
}

uint64_t sub_1A940AB24@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x530))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A9413954;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A940ABCC(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A941392C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x538);
  sub_1A932D0E4(v3);
  return v7(v6, v5);
}

void (*sub_1A940AC9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940AA14();
  return sub_1A940ADFC;
}

uint64_t sub_1A940AFC4(char a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x418))();
  v5 = *((*v3 & *v1) + 0x420);
  if (a1)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return v5(v4 & 0xFFFFFEFF | v6);
}

uint64_t sub_1A940B088@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x548))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A940B150(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x418);
  v3 = ((*MEMORY[0x1E69E7D40] & *v1) + 1048) & 0xFFFFFFFFFFFFLL | 0x2E0F000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = (v2() >> 8) & 1;
  return sub_1A940B1E0;
}

uint64_t sub_1A940B1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = (*(a1 + 8))();
  v5 = (*MEMORY[0x1E69E7D40] & *v2) + 1056;
  if (v3)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x420))(v4 & 0xFFFFFEFF | v6);
}

void sub_1A940B330()
{
  v13[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *((*v2 & *v0) + 0x578);
  v5 = v3;
  v6 = v4();
  v13[0] = 0;
  LODWORD(v4) = [v5 setCategory:v6 error:v13];

  v7 = v13[0];
  if (!v4)
  {
    v10 = v13[0];
    v11 = sub_1A957AEF8();

    swift_willThrow();
LABEL_7:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  v9 = v7;
}

uint64_t (*sub_1A940B4D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940B534;
}

void *sub_1A940B560(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x698);
  v8 = a1;
  v7(KeyPath);

  v9 = *a4;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = v10;

  return v10;
}

id sub_1A940B638(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);

  return v5;
}

uint64_t sub_1A940B73C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x578))();
  *a2 = result;
  return result;
}

void (*sub_1A940B80C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940B4D0(v4);
  return sub_1A940B96C;
}

void sub_1A940BA24()
{
  v13[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *((*v2 & *v0) + 0x5A8);
  v5 = v3;
  v13[0] = 0;
  v6 = [v5 setCategoryOptions:v4() error:v13];

  v7 = v13[0];
  if (!v6)
  {
    v10 = v13[0];
    v11 = sub_1A957AEF8();

    swift_willThrow();
LABEL_7:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  v9 = v7;
}

uint64_t (*sub_1A940BBBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940BC20;
}

uint64_t sub_1A940BCF8()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A940BDE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A8))();
  *a2 = result;
  return result;
}

void (*sub_1A940BEA8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940BBBC(v4);
  return sub_1A940C008;
}

void sub_1A940C0C0()
{
  v13[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *((*v2 & *v0) + 0x5D8);
  v5 = v3;
  v13[0] = 0;
  v6 = [v5 setParticipatesInNowPlayingAppPolicy:v4() & 1 error:v13];

  v7 = v13[0];
  if (!v6)
  {
    v10 = v13[0];
    v11 = sub_1A957AEF8();

    swift_willThrow();
LABEL_7:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  v9 = v7;
}

uint64_t (*sub_1A940C258(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940C2BC;
}

uint64_t sub_1A940C2D4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_1A940C394@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A940C45C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940C258(v4);
  return sub_1A940C5BC;
}

uint64_t sub_1A940C6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x698);
  v8 = a1;
  v7(KeyPath);

  v9 = *a4;
  swift_beginAccess();
  v10 = *(v8 + v9);

  return v10;
}

uint64_t sub_1A940C7A8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A940C894@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x608))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A940C95C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940C664();
  return sub_1A940CABC;
}

void sub_1A940CAC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A957B338();

  free(v1);
}

uint64_t sub_1A940CB5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x698))(KeyPath);

  *a2 = *(v3 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
  return result;
}

void *sub_1A940CE08()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  v2 = v1;
  return v1;
}

id sub_1A940CEE8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x698))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  *a2 = v5;

  return v5;
}

void sub_1A940CF94(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1A9402EF4(v2);
}

uint64_t sub_1A940D06C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  return *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
}

void sub_1A940D13C(char a1)
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    swift_getKeyPath();
    v2 = MEMORY[0x1E69E7D40];
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x698);
    v3();

    v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession;
    if ((*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) & 1) == 0)
    {
      v5 = [objc_opt_self() auxiliarySession];
      sub_1A9402EF4(v5);
      swift_getKeyPath();
      v3();

      v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession;
      v7 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
      if (v7)
      {
        v8 = *((*v2 & *v1) + 0x578);
        v9 = v7;
        v10 = v8();
        v36[0] = 0;
        v11 = [v9 setCategory:v10 error:v36];

        if (v11)
        {
          v12 = v36[0];
        }

        else
        {
          v16 = v36[0];
          v17 = sub_1A957AEF8();

          swift_willThrow();
        }
      }

      swift_getKeyPath();
      v3();

      v18 = *(v1 + v6);
      if (v18)
      {
        v19 = *((*v2 & *v1) + 0x5A8);
        v20 = v18;
        v21 = v19();
        v36[0] = 0;
        LODWORD(v19) = [v20 setCategoryOptions:v21 error:v36];

        if (v19)
        {
          v22 = v36[0];
        }

        else
        {
          v23 = v36[0];
          v24 = sub_1A957AEF8();

          swift_willThrow();
        }
      }

      swift_getKeyPath();
      v3();

      v25 = *(v1 + v6);
      if (v25)
      {
        v26 = *((*v2 & *v1) + 0x5D8);
        v27 = v25;
        v28 = v26();
        v36[0] = 0;
        LODWORD(v26) = [v27 setParticipatesInNowPlayingAppPolicy:v28 & 1 error:v36];

        if (v26)
        {
          v29 = v36[0];
        }

        else
        {
          v30 = v36[0];
          v31 = sub_1A957AEF8();

          swift_willThrow();
        }
      }

      if (*(v1 + v4) == 1)
      {
        *(v1 + v4) = 1;
        goto LABEL_22;
      }

      KeyPath = swift_getKeyPath();
      v34 = MEMORY[0x1EEE9AC00](KeyPath, v33);
      (*((*v2 & *v1) + 0x6A0))(v34, sub_1A9413B40);
LABEL_21:
    }
  }

  else
  {
    sub_1A9402EF4(0);
    if (*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession))
    {
      v13 = swift_getKeyPath();
      v15 = MEMORY[0x1EEE9AC00](v13, v14);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v15, sub_1A9410FFC);
      goto LABEL_21;
    }

    *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) = 0;
  }

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A940D618@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A940D6E0(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
  return sub_1A940D798;
}

id CoreSynthesizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A940DAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1A957C688();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v5 + 16))(v9, a1, v4);
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v5 + 32))(&v17[v16], v9, v4);

  sub_1A938A404(0, 0, v14, &unk_1A958BEB8, v17);
}

uint64_t sub_1A940DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v11 = *(v10 + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_1A937829C(&qword_1EB3871C8, &qword_1A958BEC8);
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = *(*(sub_1A937829C(&qword_1EB3871D0, &qword_1A958BED0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A940DF30, 0, 0);
}

uint64_t sub_1A940DF30()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[21];
  v4 = *(v3 + 16);
  v0[37] = v4;
  if (v4)
  {
    v6 = v0[34];
    v5 = v0[35];
    v7 = *(v2 + 16);
    v8 = v0[29];
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = *(v1 + 48);
    *v6 = 0;
    v7(&v6[v10], v3 + v9, v8);
    sub_1A93A7460(v6, v5, &qword_1EB3871C8, &qword_1A958BEC8);
    v11 = 0;
    v1 = v0[32];
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v0[38] = v12;
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[33];
  (*(v15 + 56))(v14, v11, 1, v1);
  sub_1A93A7460(v14, v13, &qword_1EB3871D0, &qword_1A958BED0);
  v16 = (*(v15 + 48))(v13, 1, v1);
  v17 = v0[31];
  if (v16 == 1)
  {
    v19 = v0[35];
    v18 = v0[36];
    v20 = v0[34];
    v21 = v0[28];
    v22 = v0[25];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[36];
    v26 = v0[32];
    v28 = v0[29];
    v27 = v0[30];
    v29 = v0[28];
    v0[39] = *v25;
    (*(v27 + 32))(v17, &v25[*(v26 + 48)], v28);
    sub_1A957C6F8();
    v30 = *(MEMORY[0x1E69E87A8] + 4);
    v31 = swift_task_alloc();
    v0[40] = v31;
    *v31 = v0;
    v31[1] = sub_1A940E194;
    v32 = v0[28];
    v33 = v0[26];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v33, v0 + 18);
  }
}

uint64_t sub_1A940E194()
{
  v2 = *(*v1 + 320);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1A940E6A0;
  }

  else
  {
    v3 = sub_1A940E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A940E2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v14 = *(v0 + 24);
    v15 = *(v0 + 40);
    if (v2 >> 61 == 3)
    {
      if (*(v0 + 312) == *(v0 + 296) - 1)
      {
        v48 = *(v0 + 192);
        v47 = *(v0 + 200);
        v49 = *(v0 + 176);
        v50 = *(v0 + 184);
        *(v0 + 80) = v1;
        *(v0 + 88) = v14;
        *(v0 + 96) = v2;
        *(v0 + 104) = v15;
        sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
        sub_1A957C818();
        (*(v48 + 8))(v47, v50);
        *(v0 + 160) = 0;
        sub_1A957C828();
      }

      goto LABEL_25;
    }

    if (v2 >> 61 == 4 && v2 == 0x8000000000000000 && (v14 | v1 | v15) == 0)
    {
      if (*(v0 + 312))
      {
LABEL_25:
        v51 = *(MEMORY[0x1E69E87A8] + 4);
        v52 = swift_task_alloc();
        *(v0 + 320) = v52;
        *v52 = v0;
        v52[1] = sub_1A940E194;
        v53 = *(v0 + 224);
        v9 = *(v0 + 208);
        v10 = v0 + 144;
        v6 = v0 + 16;
        v7 = 0;
        v8 = 0;

        return MEMORY[0x1EEE6DB90](v6, v7, v8, v9, v10);
      }

      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v54 = *(v0 + 176);
      v21 = *(v0 + 184);
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = xmmword_1A958B1E0;
      sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    }

    else
    {
      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v20 = *(v0 + 176);
      v21 = *(v0 + 184);
      *(v0 + 48) = v1;
      *(v0 + 56) = v14;
      *(v0 + 64) = v2;
      *(v0 + 72) = v15;
      sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    }

    sub_1A957C818();
    (*(v19 + 8))(v18, v21);
    goto LABEL_25;
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v6 = (*(v4 + 8))(v3, v5);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v11 == v12)
  {
    v13 = 1;
    goto LABEL_17;
  }

  if (v11 >= v12)
  {
    __break(1u);
    goto LABEL_30;
  }

  v22 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_30:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v6, v7, v8, v9, v10);
  }

  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v25 = *(v0 + 232);
  v26 = *(v0 + 240);
  v27 = *(v26 + 16);
  v28 = *(v0 + 168) + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v11;
  v29 = *(*(v0 + 256) + 48);
  *v24 = v11;
  v27(v24 + v29, v28, v25);
  sub_1A93A7460(v24, v23, &qword_1EB3871C8, &qword_1A958BEC8);
  v13 = 0;
  v11 = v22;
LABEL_17:
  *(v0 + 304) = v11;
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v32 = *(v0 + 256);
  v33 = *(v0 + 264);
  (*(v33 + 56))(v31, v13, 1, v32);
  sub_1A93A7460(v31, v30, &qword_1EB3871D0, &qword_1A958BED0);
  v34 = (*(v33 + 48))(v30, 1, v32);
  v35 = *(v0 + 288);
  v36 = *(v0 + 224);
  if (v34 != 1)
  {
    v44 = *(v0 + 248);
    v43 = *(v0 + 256);
    v46 = *(v0 + 232);
    v45 = *(v0 + 240);
    *(v0 + 312) = *v35;
    (*(v45 + 32))(v44, &v35[*(v43 + 48)], v46);
    sub_1A957C6F8();
    goto LABEL_25;
  }

  v38 = *(v0 + 272);
  v37 = *(v0 + 280);
  v39 = *(v0 + 248);
  v40 = *(v0 + 200);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1A940E6A0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[22];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v0[19] = v0[18];
  sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  sub_1A957C828();
  v5 = (*(v2 + 8))(v1, v3);
  v11 = v0[37];
  v10 = v0[38];
  if (v10 == v11)
  {
    v12 = 1;
    goto LABEL_6;
  }

  if (v10 >= v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v5, v6, v7, v8, v9);
  }

  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[29];
  v17 = v0[30];
  v18 = *(v17 + 16);
  v19 = v0[21] + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v10;
  v20 = *(v0[32] + 48);
  *v15 = v10;
  v18(v15 + v20, v19, v16);
  sub_1A93A7460(v15, v14, &qword_1EB3871C8, &qword_1A958BEC8);
  v12 = 0;
  v10 = v13;
LABEL_6:
  v0[38] = v10;
  v22 = v0[35];
  v21 = v0[36];
  v23 = v0[32];
  v24 = v0[33];
  (*(v24 + 56))(v22, v12, 1, v23);
  sub_1A93A7460(v22, v21, &qword_1EB3871D0, &qword_1A958BED0);
  v25 = (*(v24 + 48))(v21, 1, v23);
  v26 = v0[36];
  v27 = v0[28];
  if (v25 != 1)
  {
    v35 = v0[31];
    v34 = v0[32];
    v37 = v0[29];
    v36 = v0[30];
    v0[39] = *v26;
    (*(v36 + 32))(v35, &v26[*(v34 + 48)], v37);
    sub_1A957C6F8();
    v38 = *(MEMORY[0x1E69E87A8] + 4);
    v39 = swift_task_alloc();
    v0[40] = v39;
    *v39 = v0;
    v39[1] = sub_1A940E194;
    v40 = v0[28];
    v8 = v0[26];
    v5 = (v0 + 2);
    v6 = 0;
    v7 = 0;
    v9 = v0 + 18;

    return MEMORY[0x1EEE6DB90](v5, v6, v7, v8, v9);
  }

  v29 = v0[34];
  v28 = v0[35];
  v30 = v0[31];
  v31 = v0[25];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1A940E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A940EA20, 0, 0);
}

uint64_t sub_1A940EA20()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[12] = v3;
      sub_1A9379534(v1 + 40 * v3 + 32, (v0 + 2));
      v4 = v0[5];
      v5 = v0[6];
      sub_1A93780F4(v0 + 2, v4);
      if ((*(v5 + 8))(v4, v5))
      {
        break;
      }

      v6 = v0[11];
      v7 = v0[12] + 1;
      sub_1A9378138(v0 + 2);
      if (v7 == v6)
      {
        goto LABEL_6;
      }

      v3 = v0[12] + 1;
      v1 = v0[9];
    }

    v13 = v0[5];
    v14 = v0[6];
    sub_1A93780F4(v0 + 2, v13);
    v15 = *(v14 + 16);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1A940EC64;
    v18 = v0[10];
    v19 = v0[8];

    return v20(v18, v19, v13, v14);
  }

  else
  {
LABEL_6:
    v8 = v0[7];
    v9 = sub_1A957B8C8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A940EC64()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A940ED60, 0, 0);
}

uint64_t sub_1A940ED60()
{
  v1 = v0[10];
  v2 = sub_1A957B8C8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1A937B960(v1, &qword_1EB386A18, &qword_1A9587E40);
    do
    {
      v4 = v0[11];
      v5 = v0[12] + 1;
      sub_1A9378138(v0 + 2);
      if (v5 == v4)
      {
        (*(v3 + 56))(v0[7], 1, 1, v2);
        goto LABEL_10;
      }

      v6 = v0[12];
      v0[12] = v6 + 1;
      sub_1A9379534(v0[9] + 40 * v6 + 72, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      sub_1A93780F4(v0 + 2, v7);
    }

    while (((*(v8 + 8))(v7, v8) & 1) == 0);
    v9 = v0[5];
    v10 = v0[6];
    sub_1A93780F4(v0 + 2, v9);
    v11 = *(v10 + 16);
    v20 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_1A940EC64;
    v14 = v0[10];
    v15 = v0[8];

    return v20(v14, v15, v9, v10);
  }

  else
  {
    v17 = v0[7];
    (*(v3 + 32))(v17, v1, v2);
    (*(v3 + 56))(v17, 0, 1, v2);
    sub_1A9378138(v0 + 2);
LABEL_10:
    v18 = v0[10];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A940F054(uint64_t a1, id *a2)
{
  v3 = sub_1A957C0E8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A940F0D4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A957C0F8();
  v2 = sub_1A957C0C8();

  *a1 = v2;
  return result;
}

uint64_t sub_1A940F118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1A957C0F8();
  v6 = v5;
  if (v4 == sub_1A957C0F8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();
  }

  return v9 & 1;
}

uint64_t sub_1A940F1A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A957C0C8();

  *a2 = v5;
  return result;
}

uint64_t sub_1A940F1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A9410F14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A940F228(uint64_t a1)
{
  v2 = sub_1A9412F70(&qword_1EB387198, type metadata accessor for Category);
  v3 = sub_1A9412F70(&qword_1EB3871A0, type metadata accessor for Category);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A940F2E4()
{
  v1 = *v0;
  v2 = sub_1A957C0F8();
  v3 = MEMORY[0x1AC585220](v2);

  return v3;
}

uint64_t sub_1A940F320()
{
  v1 = *v0;
  sub_1A957C0F8();
  sub_1A957C228();
}

uint64_t sub_1A940F374()
{
  v1 = *v0;
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v2 = sub_1A957D548();

  return v2;
}

size_t sub_1A940F3E8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB3871B8, &qword_1A958BEA8);
  v10 = *(sub_1A937829C(&qword_1EB387148, &qword_1A95958D0) - 8);
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
  v15 = *(sub_1A937829C(&qword_1EB387148, &qword_1A95958D0) - 8);
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

unint64_t sub_1A940F5D8(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1A94139E0();
  v3 = sub_1A957C058();
  return sub_1A940F640(a1, v3);
}

unint64_t sub_1A940F640(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A9413A34();
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);

      v6 = sub_1A957C098();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A940F728(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
  v38 = a2;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v8 + 32);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A940F9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A94105F4(a2, a3, sub_1A937A508);
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
      sub_1A940F728(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1A94105F4(a2, a3, sub_1A937A508);
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
      sub_1A940FB74();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_1A940FB74()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_1A940FCE4(void *a1, int64_t a2, char a3)
{
  result = sub_1A940FD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A940FD04(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387150, &qword_1A958B6C8);
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
    sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A940FE38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_1A937B3DC(__dst, v10);
    sub_1A937B3DC(v14, v10);
    sub_1A937B9C0();
    v8 = sub_1A957C098();
    memcpy(v15, __src, sizeof(v15));
    sub_1A937B48C(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_1A937B48C(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 280;
    v5 += 280;
  }

  return 1;
}

void sub_1A940FF98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t sub_1A9410064()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A94100D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957BA58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v10, v17, v4);
    sub_1A9412F70(&qword_1EB387200, MEMORY[0x1E6988298]);
    v24 = sub_1A957C098();
    v25 = *v20;
    (*v20)(v10, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94102EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = type metadata accessor for VoiceDatabaseClient();
  v18[4] = &protocol witness table for VoiceDatabaseClient;
  v18[0] = a1;
  sub_1A9379534(v18, v17);
  v15[0] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v8 = v16[1];
  v16[0] = a2;
  v9 = sub_1A9493C84();
  sub_1A93B0A74(v15, *v9);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v17, v15);
  v13 = a3;
  v14 = v8;
  v10 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v15, v16, &v14, &v13);
  v11 = (*(a4 + 1072))(v10);
  sub_1A9378138(v17);
  sub_1A9378138(v18);
  return v11;
}

uint64_t sub_1A9410458(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[3] = a5;
  v24[4] = a6;
  v11 = sub_1A93981E4(v24);
  (*(*(a5 - 8) + 32))(v11, a1, a5);
  v12 = *a2;
  v13 = *a3;
  sub_1A9379534(v24, v23);
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v14 = v22[1];
  v22[0] = v12;
  v15 = sub_1A9493C84();
  sub_1A93B0A74(v21, *v15);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v23, v21);
  v19 = v13;
  v20 = v14;
  v16 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v21, v22, &v20, &v19);
  v17 = (*(a4 + 1072))(v16);
  sub_1A9378138(v23);
  sub_1A9378138(v24);
  return v17;
}

uint64_t sub_1A94105F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  v7 = sub_1A957D548();

  return a3(a1, a2, v7);
}

unint64_t sub_1A9410678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A94105F4(v5, v6, sub_1A937A508);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1A94107D0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1A9410864()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93FFE44(v3, v4, v5, v2);
}

unint64_t sub_1A94108F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1A940F5D8(v6);
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

uint64_t sub_1A9410A10(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void sub_1A9410A78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
  v8 = (*((*v6 & *v2) + 0x410))();
  [v7 setAudioSession_];
}

void sub_1A9410B94(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1A9403DD8(&v4);
  }
}

uint64_t sub_1A9410BF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A932D0E4(v2);
  return sub_1A93CF5C8(v5);
}

void sub_1A9410C74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  sub_1A940B330();
}

void sub_1A9410CE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
  sub_1A940BA24();
}

void sub_1A9410D48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_1A940C0C0();
}

uint64_t sub_1A9410DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1A9410EB8()
{
  result = qword_1EB387138;
  if (!qword_1EB387138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387138);
  }

  return result;
}

uint64_t sub_1A9410F14(uint64_t a1)
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

void sub_1A9410F4C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 3 != 0xFFFFFFFF)
  {
    sub_1A9410F60(a1, a2, a3);
  }
}

void sub_1A9410F60(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if (a3 >> 61 == 2)
  {
  }

  else if (v3 == 1)
  {
    sub_1A9410F88(a1, a2, a3);
  }

  else if (!v3)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A9410F88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
  }

  return result;
}

id sub_1A9410FA4(id result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 3 != 0xFFFFFFFF)
  {
    return sub_1A9410FB8(result, a2, a3);
  }

  return result;
}

id sub_1A9410FB8(id result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if (a3 >> 61 == 2)
  {
    return result;
  }

  if (v3 == 1)
  {
    return sub_1A9410FE0(result, a2, a3);
  }

  if (!v3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1A9410FE0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
  }

  return result;
}

uint64_t sub_1A941101C()
{
  result = sub_1A957B368();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of CoreSynthesizer.voice(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4A0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93836DC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.voice(locale:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4A8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesizer.enqueue(queueable:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4C0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93836DC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.buffers(forSpeech:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4C8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4D0))();
}

uint64_t dispatch thunk of CoreSynthesizer.write(utterance:toAudioFile:withAudioSettings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4D8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93836DC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.write(speechPhrase:toAudioFile:withAudioSettings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x4E0);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1A93836DC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CoreSynthesizer.stop()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4E8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of CoreSynthesizer.pause()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4F0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of CoreSynthesizer.resume()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of CoreSynthesizer.cancel(queueable:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x500);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

unint64_t sub_1A9412BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1A9412BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A9412C1C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1A9412C74(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1A958B1F0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1A9412CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9412D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of VoiceSelectionProvider.selection(forLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1A93836DC;

  return v13(a1, a2, a3, a4);
}

void sub_1A9412EDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A9412F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A9413168()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A940437C(v3, v4, v5, v2);
}

uint64_t sub_1A941321C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9408ACC(v2, v3);
}

uint64_t sub_1A94132C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A9408178(v2, v3, v4, v5, v6);
}

uint64_t sub_1A9413390()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A940573C(v2, v3, v4);
}

uint64_t sub_1A9413444()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A941348C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9404F10(v2, v3, v4);
}

void sub_1A9413540()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  *(v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession) = v1;
  v4 = v1;

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
  v7 = (*((*v5 & *v2) + 0x410))();
  [v6 setAudioSession_];
}

uint64_t sub_1A9413640(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A937B960(v3, &qword_1EB3871A8, &qword_1A958BE88);
  v4 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_1A941371C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A9409EAC(v3, v4, v5, v2);
}

uint64_t sub_1A94137B0()
{
  v2 = *(sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A940DCE8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A9413894()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A940A538(v2, v3);
}

uint64_t sub_1A941392C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A9413954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A941399C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

unint64_t sub_1A94139E0()
{
  result = qword_1EB3871F8;
  if (!qword_1EB3871F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3871F8);
  }

  return result;
}

unint64_t sub_1A9413A34()
{
  result = qword_1EB3860F8;
  if (!qword_1EB3860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860F8);
  }

  return result;
}

uint64_t sub_1A9413A88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9413AC8()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A9404800();
}

uint64_t VoiceQueryCriteria.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceQueryCriteria(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1A9413C38()
{
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  return sub_1A957CE08();
}

uint64_t VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  result = sub_1A93A7460(a3, a6 + *(Criteria + 24), &qword_1EB386988, &qword_1A9587830);
  *a6 = v10;
  a6[1] = v11;
  v14 = (a6 + *(Criteria + 28));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t sub_1A9413D7C()
{
  v1 = 0x6564646962726F66;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6465726975716572;
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

uint64_t sub_1A9413E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A942C484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9413E38(uint64_t a1)
{
  v2 = sub_1A942C2EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9413E74(uint64_t a1)
{
  v2 = sub_1A942C2EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceQueryCriteria.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387210, &qword_1A958BF30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A942C2EC();
  sub_1A957D598();
  v19 = *v3;
  HIBYTE(v18) = 0;
  sub_1A942C340();
  sub_1A957D338();
  if (!v2)
  {
    v19 = v3[1];
    HIBYTE(v18) = 1;
    sub_1A957D338();
    Criteria = type metadata accessor for VoiceQueryCriteria(0);
    v14 = *(Criteria + 24);
    LOBYTE(v19) = 2;
    sub_1A957B308();
    sub_1A942C3E8(&qword_1EB386420, MEMORY[0x1E6969770]);
    sub_1A957D2B8();
    v15 = (v3 + *(Criteria + 28));
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v19) = 3;
    sub_1A957D298();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t VoiceQueryCriteria.hash(into:)()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v16 - v10;
  v17 = *v0;
  sub_1A942C394();
  sub_1A957C068();
  v17 = v0[1];
  sub_1A957C068();
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  sub_1A9391BAC(v0 + *(Criteria + 24), v11, &qword_1EB386988, &qword_1A9587830);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1A957D518();
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    sub_1A957D518();
    sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
    sub_1A957C068();
    (*(v2 + 8))(v6, v1);
  }

  v13 = (v0 + *(Criteria + 28));
  if (!v13[1])
  {
    return sub_1A957D518();
  }

  v14 = *v13;
  sub_1A957D518();
  return sub_1A957C228();
}